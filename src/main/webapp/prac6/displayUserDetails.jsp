<%@page import="dbaccess.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display User Details</title>
</head>
<body>
	<h1>User Details</h1>
	<%
	User user = (User) request.getAttribute("userData");

	if (user != null) {
	%>
	UserID =
	<%=user.getUserid()%>
	Gender =
	<%=user.getGender()%>
	Age =
	<%=user.getAge()%>
	<%
	}
	%>

</body>
</html>