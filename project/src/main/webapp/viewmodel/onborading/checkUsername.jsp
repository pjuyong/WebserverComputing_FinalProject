<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ include file="dbconn_login.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
<script>
    function checkUsername(result) {
        if (result === "exists") {

            window.history.back();
        } else {
            alert("사용 가능한 아이디입니다.");
            window.history.back();
        }
    }
</script>
</head>
<body>

<%
    String username = request.getParameter("username");
    String result = "notExists"; // 기본값은 중복이 아님
    
    PreparedStatement checkPstmt = null;

    try {
        String sql = "SELECT username FROM LoginUser WHERE username = ?";
        checkPstmt = conn.prepareStatement(sql);
        checkPstmt.setString(1, username);
        rs = checkPstmt.executeQuery();

        if (rs.next()) {
            // 중복된 아이디가 존재
            result = "exists";
        }
    } catch(SQLException e) {
        out.println("예외가 발생하였습니다.<br>");
        out.println("SQLException : " + e.getMessage());
    } finally {
        if(rs != null) {
            try {
                rs.close();
            } catch(SQLException e) {
            	out.println("예외가 발생하였습니다.<br>");
                out.println("SQLException : " + e.getMessage());
            }
        }
        if (checkPstmt != null){
            try {
                checkPstmt.close();
            } catch(SQLException e) {
            	out.println("예외가 발생하였습니다.<br>");
                out.println("SQLException : " + e.getMessage());
            }
        }
    }
%>

<script>
    var result = "<%= result %>";
    checkUsername(result);
</script>

</body>
</html>
