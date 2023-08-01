<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pract 6</title>
</head>
<body>
	<h2>Get User Details</h2>

	<form action="<%=request.getContextPath()%>/ObtainUserDetailsServlet">
		Enter userid: <input type="text" name="userid" /> <input
			type="submit" value="Get User Details" />
	</form>
</body>
</html>