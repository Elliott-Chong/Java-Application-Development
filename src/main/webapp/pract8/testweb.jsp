<%@page import="models.User"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h5><%=request.getRequestURI()%></h5>

	<h2>List All Users</h2>
	<form action="<%=request.getContextPath()%>/getUserList">
		<input type="submit" name="id" value="List All Users" />
	</form>

	<%
	String error = (String) request.getAttribute("error");
	if (error != null && error.equals("not found")) {
	%>
	<h1 style="color: red;">Error: User not found!</h1>
	<%
	}

	@SuppressWarnings("unchecked")
	ArrayList<User> uAL = (ArrayList<User>) request.getAttribute("userArray");

	if (uAL != null) {
	for (User u : uAL) {
	%>
	<br>UserID:
	<%=u.getUserid()%>
	<br>Gender:
	<%=u.getGender()%>
	<br>Age:
	<%=u.getAge()%><br>
	<%
	}
	}
	%>

	<h2>Get User by User ID</h2>
	<form action="<%=request.getContextPath()%>/getUser">
		<input type="text" name="id" id="id" placeholder="Enter User ID" />
		<button type="submit">Submit</button>
	</form>

	<%
	@SuppressWarnings("unchecked")
	User user = (User) request.getAttribute("user");
	if (user != null) {
	%>
	<%=user.getUserid()%>
	<%=user.getAge()%>
	<%=user.getGender()%>
	<%
	}
	%>

	<h2>Create New User</h2>
	<form method="POST" action="<%=request.getContextPath()%>/createUser">
		<input required type="text" name="userid" placeholder="enter userid" /> <input
			type="text" name="age" placeholder="enter age" required /> <input type="text" required
			name="gender" placeholder="enter gender" />
		<button type="submit">Submit</button>
	</form>
	<%
	if (request.getAttribute("records_affected") != null) {
	%>
	records affected:
	<%=request.getAttribute("records_affected")%>
	<%
	}
	%>
</body>
</html>