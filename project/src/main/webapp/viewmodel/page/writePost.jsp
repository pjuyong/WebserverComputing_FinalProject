<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/viewmodel/header/headerAfterLogin2.jsp" %>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="java.io.StringWriter, java.io.PrintWriter" %>

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
    <h1>게시판 페이지에 온 것을 환영합니다</h1>
    <p>이 페이지에서는 글을 작성할 수 있습니다.</p>

    <% 
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String subject = request.getParameter("subject");
            String content = request.getParameter("content");
            String email = request.getParameter("email"); // 이메일 필드 추가
            String ip = request.getRemoteAddr();
            String registDay = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date());

            Connection conn = null;
            PreparedStatement pstmt = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/seongDB", "root", "12rhtmdqja");

                String sql = "INSERT INTO board (id, name, subject, content, regist_day, ip) VALUES (?, ?, ?, ?, ?, ?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, id);
                pstmt.setString(2, name);
                pstmt.setString(3, subject);
                pstmt.setString(4, content);
                pstmt.setString(5, registDay);
                pstmt.setString(6, ip);

                pstmt.executeUpdate();
                
                // 글 작성 완료 후 목록 페이지로 리디렉션
                response.sendRedirect(request.getContextPath() + "/viewmodel/page/board.jsp");
            } catch (Exception e) {
                StringWriter sw = new StringWriter();
                PrintWriter pw = new PrintWriter(sw);
                e.printStackTrace(pw);
                out.println("<p>Error: " + e.getMessage() + "</p>");
                out.println("<pre>" + sw.toString() + "</pre>");
            } finally {
                try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { 
                    out.println("<p>SQLException: " + e.getMessage() + "</p>");
                }
                try { if (conn != null) conn.close(); } catch (SQLException e) { 
                    out.println("<p>SQLException: " + e.getMessage() + "</p>");
                }
            }
        }
    %>

    <!-- 글 작성 폼 추가 -->
    <form action="<%= request.getRequestURI() %>" method="post">
        <div class="form-group">
            <label for="id">아이디:</label>
            <input type="text" class="form-control" id="id" name="id" required>
        </div>
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
 
</div>

<%@ include file="/viewmodel/bottom/footer.jsp" %>

</body>
</html>
