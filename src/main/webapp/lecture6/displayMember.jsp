<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String user = request.getParameter("user");
String pwd = request.getParameter("pwd");
String cat = (String) request.getAttribute("cat");
%>
<body>
	<h1>pract3-part-3-displayMember.jsp</h1>
	<p>
		<%=user%>
	<p>
	<p>
		<%=pwd%>
	</p>
	<p>
		<%=cat%>
	</p>
	<a href='login.jsp'>
		<button>Home</button>
	</a>
</body>
</html>