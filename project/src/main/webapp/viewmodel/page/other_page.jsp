<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/viewmodel/header/headerAfterLogin2.jsp" %>
<%@ page import="java.sql.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 페이지</title>
<style>
    .container {
        margin-top: 10%;
        width: 50%;
        padding: 20px;
        border: 1px solid #ccc;
        background-color: #f9f9f9;
    }
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <h1>게시판 페이지에 온것을 환영합니다</h1>
    <p>이 페이지에서는 서로의 글을 볼 수 있습니다.</p>

    <!-- 글 작성 폼 추가 -->
    <form action="addPost" method="post">
        <div class="form-group">
            <label for="name">이름:</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="pwd">비밀번호:</label>
            <input type="password" class="form-control" id="pwd" name="pwd" required>
        </div>
        <div class="form-group">
            <label for="email">이메일:</label>
            <input type="email" class="form-control" id="email" name="email">
        </div>
        <div class="form-group">
            <label for="subject">제목:</label>
            <input type="text" class="form-control" id="subject" name="subject" required>
        </div>
        <div class="form-group">
            <label for="content">내용:</label>
            <textarea class="form-control" id="content" name="content" rows="5" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">작성</button>
    </form>

    <hr>

    <!-- 게시글 목록 출력 -->
    <%
        String url = "jdbc:mysql://localhost:3306/ProjectDB"; // 데이터베이스 URL
        String user = "root"; // 데이터베이스 사용자명
        String password = "1234"; // 데이터베이스 비밀번호
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            stmt = conn.createStatement();
            String sql = "SELECT NUM, NAME, SUBJECT, CONTENT, CREATED FROM BOARD";
            rs = stmt.executeQuery(sql);

            out.println("<table class='table table-bordered'>");
            out.println("<thead><tr><th>번호</th><th>이름</th><th>제목</th><th>내용</th><th>작성일</th></tr></thead>");
            out.println("<tbody>");
            while (rs.next()) {
                int num = rs.getInt("NUM");
                String name = rs.getString("NAME");
                String subject = rs.getString("SUBJECT");
                String content = rs.getString("CONTENT");
                java.sql.Date created = rs.getDate("CREATED"); // 명시적으로 java.sql.Date 사용

                out.println("<tr>");
                out.println("<td>" + num + "</td>");
                out.println("<td>" + name + "</td>");
                out.println("<td>" + subject + "</td>");
                out.println("<td>" + content + "</td>");
                out.println("<td>" + created + "</td>");
                out.println("</tr>");
            }
            out.println("</tbody></table>");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>데이터를 불러오는 중 오류가 발생했습니다.</p>");
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    %>
</div>

<%@ include file="/viewmodel/bottom/footer.jsp" %>

</body>
</html>
