<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/viewmodel/header/headerAfterLogin2.jsp" %>
<%@ page import="java.sql.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<style>
    .container {
        margin-top: 10%;
        width: 80%;
        padding: 20px;
        border: 1px solid #ccc;
        background-color: #f9f9f9;
    }
    .post-content {
        padding: 20px;
        border: 1px solid #ddd;
        background-color: #fff;
    }
    .post-title {
        font-size: 24px;
        font-weight: bold;
    }
    .post-meta {
        margin-bottom: 20px;
        color: #666;
    }
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <h1>게시글 상세보기</h1>
    <hr>

    <div class="post-content">
        <% 
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            int num = Integer.parseInt(request.getParameter("num"));

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/seongDB", "root", "12rhtmdqja");
                String sql = "SELECT num, subject, name, regist_day, content, hit FROM board WHERE num = ?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setInt(1, num);
                rs = pstmt.executeQuery();

                if (rs.next()) {
        %>
        <div class="post-title"><%= rs.getString("subject") %></div>
        <div class="post-meta">
            작성자: <%= rs.getString("name") %> | 작성일: <%= rs.getString("regist_day") %> | 조회수: <%= rs.getInt("hit") %>
        </div>
        <div class="post-body">
            <%= rs.getString("content") %>
        </div>
        <% 
                } else {
        %>
        <p>해당 게시글을 찾을 수 없습니다.</p>
        <% 
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
            }
        %>
    </div>
</div>

<%@ include file="/viewmodel/bottom/footer.jsp" %>

</body>
</html>
