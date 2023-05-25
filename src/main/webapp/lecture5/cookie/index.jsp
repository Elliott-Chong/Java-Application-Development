<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
Cookie cookie1 = new Cookie("color", "black");
//Set life span of cookie is 1 day.
cookie1.setMaxAge(60 * 60 * 24);
//Add cookie to response headers
response.addCookie(cookie1);%>
</body>
</html>