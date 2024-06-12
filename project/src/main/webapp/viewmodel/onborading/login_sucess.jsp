<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function goToMain() {
		window.location.href = '../main.jsp';
	}
</script>
</head>
<body>
	<p>회원가입을 성공했습니다.<input type="button" value="메인으로 이동" onclick="goToMain()"></p>
</body>
</html>
