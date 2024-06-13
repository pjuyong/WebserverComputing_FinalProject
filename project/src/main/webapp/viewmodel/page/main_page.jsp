<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    
<!DOCTYPE html>
<html>
<head>
  
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
    .container {
        width: 100%;
        margin: 0 auto;
    }
    .main-image {
        display: flex;
        justify-content: center;
        margin-bottom: 20px;
    }
    .main-image img {
        max-width: 80%; /* 이미지의 최대 너비를 50%로 설정 */
        height: auto; /* 이미지의 높이를 자동으로 맞춤 */
        margin: 0 auto; /* 가로 중앙 정렬 */
    }
    .sub-images {
        display: flex;
        justify-content: space-between;
        height: 100%;
    }
    .sub-images img {
        width: 32%;
        height: auto;
    }
    .head {
    	display: flex;
    	justify-content: center;
    }
</style>
</head>
<body>
<h1 class="head"> 저희 동아리페이지에 오신걸 환영합니다!</h1>
<div class="container">
    <div class="main-image">
    
    	 <img src="${pageContext.request.contextPath}/images/photo1.jpeg" alt="풋살 동아리 이미지">
        </div>
    <div class="sub-images">
          <img src="${pageContext.request.contextPath}/images/photo2.jpeg" alt="풋살 동아리 이미지">
           <img src="${pageContext.request.contextPath}/images/photo3.jpeg" alt="풋살 동아리 이미지">
            <img src="${pageContext.request.contextPath}/images/photo4.jpeg" alt="풋살 동아리 이미지">
       </div>
</div>
</body>
   
</html>