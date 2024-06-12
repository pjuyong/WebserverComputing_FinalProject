	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	</head>
	<body>
	<h2>회원가입</h2>
	<form action="insert_process.jsp" name="member" method="post">
	  <p>아이디 : <input type="text" name="username"> <input type="button" value="아이디 중복 검사" onclick="checkUsername()"></p>
	  <p>비밀번호 : <input type="password" name="passwd"></p>
	  <p>이름 : <input type="text" name="name"></p>
	  <p>연락처 : 
	    <input type="text" maxlength="4" size="4" name="phone1"> -
	    <input type="text" maxlength="4" size="4" name="phone2"> -
	    <input type="text" maxlength="4" size="4" name="phone3">
	  </p>
	  <p>성별 : 
	    <input type="radio" name="sex" value="남성" checked>남성
	    <input type="radio" name="sex" value="여성">여성
	  </p>
	   
	   
	  <p><input type="submit" value="가입하기"> 
	    <input type="reset" value="다시 쓰기">
	  </p>
	</form>
	
	<script>
		function checkUsername() {
			var username = document.member.username.value;
			window.location.href = "checkUsername.jsp?username=" + username;
		}
	</script>
	
	</body>
	</html>