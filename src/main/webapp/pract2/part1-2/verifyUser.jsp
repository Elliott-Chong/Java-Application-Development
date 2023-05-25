<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Author: Elliott Chong Zhi Sheng
Class: DIT/2B/21
Student Id: 22115545
-->

<%
String loginid = request.getParameter("loginid");
String password = request.getParameter("password");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= loginid %>
	<%= password %>
</body>
</html>