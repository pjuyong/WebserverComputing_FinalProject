<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "/viewmodel/header/headerAfterLogin2.jsp" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
.container {
	 margin-top: 10%;
}
.carousel-item img {
  max-height: 400px; /* 원하는 높이로 설정 */
  width: auto; /* 너비는 자동 조정 */
}
 .white-container {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 10%;
        }
        .white-container2 {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 40px;
            margin-bottom : 40px;
            
            width: 100%;
            height: 70%;
        }
</style>
</head>
<body>

<div class="container">
<h1>동아리 소개 페이지</h1>
<%
        String url = "jdbc:mysql://localhost:3306/seongDB";
        String user = "root";
        String password = "12rhtmdqja";

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            stmt = conn.createStatement();
            String sql = "SELECT category, content FROM club_info";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String category = rs.getString("category");
                String content = rs.getString("content");

                if (category.equals("인사말")) {
    %>
        
         <div class="white-container">
                        <h1><%= category %></h1>
                        <p><%= content %></p>
                    </div>
    <%
                } else if (category.equals("동아리소개")) {
    %>
                    <div class="white-container2">
                        <h1><%= category %></h1>
                        <p><%= content %></p>
                    </div>
    <%
                } else if (category.equals("동아리규칙")) {
    %>
                    <div class="white-container2">
                        <h1><%= category %></h1>
                        <p><%= content %></p>
                    </div>
    <%
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    %>
    
    </div>
         <%@ include file="/viewmodel/bottom/footer.jsp" %>
</body>
</html>