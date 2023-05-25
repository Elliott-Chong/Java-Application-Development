<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!--
Author: Elliott Chong Zhi Sheng
Class: DIT/2B/21
Student Id: 22115545
-->

<!DOCTYPE html>
<%
String displayMsg = "";
if (request.getParameter("displayMsg") != null) {
	displayMsg = request.getParameter("displayMsg");
}
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>pract1</title>
</head>
<body>
	<script>
		let currentHour = new Date().getHours();
		let message;
		if (currentHour < 12)
			message = "Good Morning";
		else if (currentHour < 18)
			message = "Good Afternoon";
		else
			message = "Good Evening";

		let id = prompt("Enter your Student ID:");
		let name = prompt("Enter your Name:");
		let displayMsg = message + "!.. " + name + " (" + id + ")";
		alert(displayMsg);

		const xhttp = new XMLHttpRequest();
		xhttp.open("POST", "HelloWorld_fromPract1PartE.jsp", true);
		xhttp.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded");
		xhttp.send("displayMsg=" + displayMsg);
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				const newPage = xhttp.responseText;
				document.body.innerHTML = newPage;
			}
		};
	</script>
	<span> <%
 out.println(displayMsg);
 %>
	</span>
</body>
</html>