<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String buttonpressed = request.getParameter("submit");
String text1 = request.getParameter("text1");
String textarea1 = request.getParameter("textarea1");
%>
<html>
<head>
<title>UI TextArea</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
	<div class='absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2'>
		Submit Button pressed is:
		<%=buttonpressed%>
		<br> text1 is:
		<%=text1%>
		<br> textarea1 is:
		<p><%=textarea1%></p>
	</div>
</body>
</html>