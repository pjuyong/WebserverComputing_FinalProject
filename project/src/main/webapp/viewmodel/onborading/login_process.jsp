<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function goToMain() {
		window.location.href = '../main.jsp';
	}
</script>
</head>
<body>
<%@ include file="dbconn_login2.jsp" %>

<%
	boolean login = false;

	request.setCharacterEncoding("UTF-8");
	
	String username2 = request.getParameter("username");
	String passwd2 = request.getParameter("passwd");
	
	try {
		String sql = "SELECT * FROM loginuser WHERE username = ? AND passwd = ?";
	    loginPstmt = loginConn.prepareStatement(sql);
	    loginPstmt.setString(1, username2);
	    loginPstmt.setString(2, passwd2);
	    loginRs = loginPstmt.executeQuery();
	    
	    if(loginRs.next()) {
	    	login = true;
	    }
	} catch (SQLException e) {
		out.println("예외가 발생하였습니다.<br>");
        out.println("SQLException : " + e.getMessage());
	} finally {
		if(loginRs!=null) {
			loginRs.close();
		}
		if(loginPstmt!=null) {
			loginPstmt.close();
		}
		if(loginConn!=null) {
			loginConn.close();
		}
	}
	
	if(login) {
%>
<p>로그인에 성공했습니다.<input type="button" value="메인으로 이동" onclick="goToMain()"></p>
<%
	} else {
%>
<p>아이디 또는 비밀번호가 올바르지 않습니다.<input type="button" value="메인으로 이동" onclick="goToMain()"></p>
<%
	}
%>
</body>
</html>