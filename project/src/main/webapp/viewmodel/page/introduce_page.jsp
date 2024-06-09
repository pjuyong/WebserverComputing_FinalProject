<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "/viewmodel/header/header2.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
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
            margin-top: 80px;
        }
        .white-container2 {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 80px;
            width: 100%;
            height: 70%;
        }
</style>
</head>
<body>
<h1>동아리 소개 페이지</h1>
<div class="container">
        <div class="white-container">
            <h1>인사말</h1>
            <p>This is an example of a white container using custom CSS.</p>
            
        </div>	
         <div class="white-container2">
            <h1>동아리 소개</h1>
            <p>내용</p>
            
        </div>
        <div class="white-container2">
            <h1>동아리 규칙</h1>
            <p>내용</p>
            
        </div>
    </div>
</body>
</html>