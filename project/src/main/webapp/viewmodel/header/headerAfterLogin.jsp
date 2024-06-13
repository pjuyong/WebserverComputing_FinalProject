<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Fc last played</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
.carousel-item img {
  max-height: 400px; /* 원하는 높이로 설정 */
  width: auto; /* 너비는 자동 조정 */
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
  <a class="navbar-brand" href="#">FC last play</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="./main.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  href="./page/introduce_page.jsp">동아리 소개</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./page/matchvideo_page.jsp">경기영상</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./page/ticket_page.jsp">일정예매</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./page/mypage.jsp">예매확인</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./other_page.jsp">게시판</a>
      </li>
      
    </ul>
    <form class="form-inline my-2 my-lg-0 mr-auto">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    <ul class="navbar-nav">
    <%
    	String username = (String) session.getAttribute("username");
    	if(username!=null) {
    %>
      <li class="nav-item">
        <a class="nav-link" href="./page/mypage.jsp">환영합니다, <%=username %> 님!</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./onborading/logout.jsp">Logout</a>
      </li>
      <%
      	} else {
      		response.sendRedirect("./onborading/login.jsp");
      	}
      %>
    </ul>
  </div>
</nav>

<div id="carouselExampleIndicators" class="carousel slide mt-5" data-ride="carousel" data-interval="2000">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100"   src="https://cdn.pixabay.com/photo/2016/11/29/02/05/audience-1866738_1280.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_1280.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://cdn.pixabay.com/photo/2019/03/03/16/32/sport-4032242_1280.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
