<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<form action="loginOk.jsp">
	  	아이디 : <input type="text" name ="id"> <br><br>
		비밀번호 : <input type="password" name = "pw"> <br><br>
		<input type="submit" value ="로그인">
	</form>
	<hr>
	<a href = "loginUser.jsp">로그인한 유저 페이지</a>
	<!-- 서버 끄거나 로그아웃 하면 세션 id 지워짐  -->
	
	
</body>
</html>