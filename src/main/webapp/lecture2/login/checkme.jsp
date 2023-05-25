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
	String user = request.getParameter("user");
	String pwd = request.getParameter("pwd");
	if ( user.equals("me") && pwd.equals("secret") ) {
		response.sendRedirect("login_okay.jsp"); // Brings user to another webpage
	} else {
		response.sendRedirect("login_bad.jsp"); // Brings user to another webpage
	}
%>
</body>
</html>