<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 모든 정보</title>
</head>
<body>
	<h2>모든 세션 정보 확인하기</h2>
	<hr>
	
	<%
		Enumeration sessionEnum = session.getAttributeNames(); // 세션의 모든 정보를 반환 -> 열거형으로 반환
		
		while(sessionEnum.hasMoreElements()) { // 열거형 요소 빼는 방법
			String sName =sessionEnum.nextElement().toString(); //
			String sValue =session.getAttribute(sName).toString();
			
			out.println(sName + " : " + sValue + "<br>"); // 1회전 sessionFlah 2회전 memberid
		}
		
		String session_id = session.getId();
		// 접속한 브라우저 별로 매칭되는 유니크한 아이디 값 
		out.println("session의 고유 id 값 : " + session_id );

	%>
	<hr>
	<a href ="loginUser.jsp">로그인 유저 페이지로 이동</a>
</body>
</html>