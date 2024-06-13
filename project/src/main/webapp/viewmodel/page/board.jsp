<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/viewmodel/header/headerAfterLogin2.jsp" %>
<%@ page import="java.sql.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<style>
    .container {
        margin-top: 10%;
        width: 80%;
        padding: 20px;
        border: 1px solid #ccc;
        background-color: #f9f9f9;
    }
    table {
        width: 100%;
        margin-top: 20px;
    }
    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <h1>게시판 목록</h1>
    <button type="button" class="btn btn-primary" onclick="location.href='writePost.jsp'">글 작성하기</button>
    <hr>

    <table class="table table-striped">
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
            </tr>
        </thead>
        <tbody>
            <% 
                // 데이터베이스에서 글 목록을 불러오는 부분
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/seongDB", "root", "12rhtmdqja");
                    stmt = conn.createStatement();
                    String sql = "SELECT num, subject, name, regist_day FROM board";
                    rs = stmt.executeQuery(sql);
                    
                    while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt("num") %></td>
              <td><a href="<%= request.getContextPath() %>/viewmodel/page/viewPost.jsp?num=<%= rs.getInt("num") %>"><%= rs.getString("subject") %></a></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("regist_day") %></td>
            </tr>
            <% 
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                    if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                    if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
                }
            %>
        </tbody>
    </table>
</div>

<%@ include file="/viewmodel/bottom/footer.jsp" %>

</body>
</html>
