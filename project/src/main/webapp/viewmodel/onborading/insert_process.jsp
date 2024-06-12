<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<%@ include file="dbconn_login.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
    String username = request.getParameter("username");
    String passwd = request.getParameter("passwd");
    String name = request.getParameter("name");
    String phone1 = request.getParameter("phone1");
    String phone2 = request.getParameter("phone2");
    String phone3 = request.getParameter("phone3");
    String phone = phone1 + "-" + phone2 + "-" + phone3;
    String sex = request.getParameter("sex");

    try{
    	String sql = "INSERT INTO LoginUser(username, passwd, name, phone, sex) VALUES (?, ?, ?, ?, ?)";
    	
    	pstmt = conn.prepareStatement(sql);
    	
    	pstmt.setString(1,username);
    	pstmt.setString(2,passwd);
    	pstmt.setString(3,name);
    	pstmt.setString(4,phone);
    	pstmt.setString(5,sex);
    	
    	pstmt.executeUpdate();
    	
    	response.sendRedirect("login_sucess.jsp");
    	
    } catch (SQLException e) {
 		out.println("예외가 발생하였습니다.<br>");
 		out.println("SQLException : " + e.getMessage());
 	} finally{
 		try {
            if(pstmt!=null){
            	pstmt.close();
            }
            if(conn!=null){
            	conn.close();
            }
        } catch(SQLException ex) {
            out.println("SQLException : " + ex.getMessage());
        }
 	}
%>
</body>
</html>