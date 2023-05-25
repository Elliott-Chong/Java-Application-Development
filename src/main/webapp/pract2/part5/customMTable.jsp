<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Author: Elliott Chong Zhi Sheng
Class: DIT/2B/21
Student Id: 22115545
-->

<%
String errCode = request.getParameter("errCode");
if (errCode == null) {
	errCode = "";
}
if (errCode.equals("invalidInput")) {
	errCode = "You have entered an invalid invalid input";
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css"
	rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
	<div
		class='absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 flex flex-col gap-2'>
		<p class='text-red-600 text-xl'><%=errCode %></p>
		<form method='post' action='displayMTable.jsp'
			class='flex flex-col gap-2'>
			<p class='text-2xl'>This is a tool to display multiplication tables</p>
			<input id='multiplication' type="number" required
				name='multiplication' placeholder='Multiplication number' />
				<button class='btn' type='submit'>Go!</button>
		</form>
	</div>
</body>
</html>