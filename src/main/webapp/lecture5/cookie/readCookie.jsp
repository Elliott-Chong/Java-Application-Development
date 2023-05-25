
<%
Cookie[] mycookies = request.getCookies();
%>
<html>
<head>
<title>Cookie Test 2</title>
</head>
<body>
	<table border="1">
		<%
		for (int i = 0; i < mycookies.length; i++) {
		%>
		<tr>
			<td><%=mycookies[i].getName()%></td>
			<td><%=mycookies[i].getValue()%></td>
			<td><%=mycookies[i].getMaxAge()%></td>
			<td><%=mycookies[i].getPath()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>