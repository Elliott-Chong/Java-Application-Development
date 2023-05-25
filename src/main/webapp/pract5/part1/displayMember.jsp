<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String user_id = (String) session.getAttribute("sessUserID");
String user_role = (String) session.getAttribute("sessUserRole");

boolean is_valid = user_id != null && user_role != null;
if (!is_valid) {
	response.sendRedirect("login.jsp?errCode=invalidLogin");
	return;
}
%>
<body>
<%@include file="header.html"%>
	<h1>pract3-part-3-displayMember.jsp</h1>
	<p>
		Welcome!..<%=user_id%></p>
	<p>
		Your user role is:<%=user_role%></p>
	<a href='login.jsp'>
		<button>Home</button>
	</a>
<%@include file="footer.html"%>
</body>
</html>