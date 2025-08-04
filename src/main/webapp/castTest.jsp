<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다운캐스팅이 안 되는 경우 예시</title>
</head>
<body>
	<%	// 가능
		Object objString = "hello";
		String str = (String) objString; // 다운캐스팅
		out.println(str);
		
		
		// 불가능 - 객체 안에 문자열이 있는 경우
		// 객체를 통채로 문자열로 바꾸려고 함
		Object objString2 = new Integer(123);
		String str2 = (String) objString2;
		out.println(str2); // ClassCastException 오류 발생
		
		// toString() 으로 해결 -> 객체 안의 문자열만 빼기
		
	%>
</body>
</html>