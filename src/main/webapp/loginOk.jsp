<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<% 
	request.setCharacterEncoding("utf-8");
	
	String mid = request.getParameter("id");
	String mpw = request.getParameter("pw");

	if ( mid.equals("tiger") && mpw.equals("12345")) { // 참이면 로그인 성공
		session.setAttribute("sessionFlag", "yes"); // 로그인 상태인지 아닌지만 판별
		session.setAttribute("memberid", mid); // 로그인 정보를 메모리에 저장함
		// (arg0,arg1) arg0 = 세션 이름 (작명해야 함) arg1 = 세션에 저장할 로그인한 유저의 아이디 값
		long currentTime = System.currentTimeMillis();
		session.setAttribute("currentTime", currentTime); // 로그인한 시간을 세션에 저장
		response.sendRedirect("loginSuccess.jsp"); // 페이지 강제 이동. () 안은 강제 이동시킬 페이지 -> 로그인 성공 시 성공 페이지로 이동
	} else {
			System.out.println("로그인 실패");
			response.sendRedirect("login.jsp"); // 로그인 실패 시 로그인 페이지로 강제 이동
		}
	 // 로그인에 성공하면 서버 메모리에 memberid 값이 저장된 세션이 사용자 개수 만큼 생성된다. 랜덤한 세션 id 를 부여. 로그아웃하거나 전원 꺼지면 없어짐 (웹브라우저 자체를 끄지 않으면 세션 살아있음)
	
	
	
	
	%>	
</body>
</html>