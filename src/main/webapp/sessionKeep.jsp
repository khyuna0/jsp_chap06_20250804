<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 유지시간 확인</title>
</head>
<body>
	<%
		String session_id = session.getId();
		long lastTime = session.getLastAccessedTime(); // 마지막 세션 접근 시간 (밀리세컨드 단위)
		long startTime = session.getCreationTime(); // 세션이 생성된 시간 (밀리세컨드 단위)
		long keepTime = (lastTime - startTime) / 1000; // 초 단위로 출력 
	
		long currentTime = System.currentTimeMillis(); // 현재시간
		long keepTime2 = (currentTime - startTime) / 1000;
		
		long loginTime = (Long) session.getAttribute("currentTime");
		long keepTime3 = (currentTime - loginTime) / 1000; // 로그인 성공 후 경과시간
		
		out.println("세션 아이디 : " + session_id + "<br>");
		out.println("세션 활동 시간 : " + keepTime + "초" + "<br>");
		out.println("세션 지속 시간 : " + keepTime2+ "초" + "<br>");
		out.println("로그인 성공 후 경과 시간 : " + keepTime3 + "초");
		
		
		
	%>
</body>
</html>