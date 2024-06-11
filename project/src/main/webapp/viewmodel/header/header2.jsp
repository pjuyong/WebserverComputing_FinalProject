<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        <a class="nav-link" href="../main.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  href="introduce_page.jsp">동아리 소개</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="matchvideo_page.jsp">경기영상</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ticket_page.jsp">일정예매</a>
      </li>
      
        <li class="nav-item">
        <a class="nav-link" href="other_page.jsp">게시판</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0 mr-auto">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="./onborading/login.jsp">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./onborading/insert.jsp">Sign Up</a>
      </li>
    </ul>
  </div>
</nav>
</body>
</html>