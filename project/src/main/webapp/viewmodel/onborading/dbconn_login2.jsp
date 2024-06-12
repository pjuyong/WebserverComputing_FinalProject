<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Connection loginConn = null;
	PreparedStatement loginPstmt = null;
	ResultSet loginRs = null;
	
	try {
		String url = "jdbc:mysql://localhost:3306/seongDB";
		String user = "root";
		String password = "12rhtmdqja";
		
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	loginConn = DriverManager.getConnection(url, user, password);
    	//out.println("데이터베이스 연동 성공!<br>");
    	
	} catch (SQLException e) {
    	out.println("데이터베이스 연동실패.<br>");
	} 
%>
