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
    <h1>게시판 페이지에 온 것을 환영합니다</h1>
    <p>이 페이지에서는 글을 작성할 수 있습니다. </p>

   
    <form action="<%= request.getContextPath() %>/project/addPost" method="post">
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
