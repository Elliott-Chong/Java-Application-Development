<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="Utils.Database"%>
<%
Integer user_id;
try {
	user_id = Integer.parseInt(request.getParameter("user_id"));
} catch (Exception e) {
	response.sendRedirect("listMembers.jsp");
	return;
}
if (user_id == null || user_id.equals("")) {
	response.sendRedirect("listMembers.jsp");
	return;
}
Connection conn = Database.connect();
PreparedStatement ps = conn.prepareStatement("SELECT * from member WHERE id=?");
ps.setInt(1, user_id);
ResultSet rs = Database.executeSQL(ps);
String name;
if (rs.next()) {
	name = rs.getString("name");
} else {
	response.sendRedirect("listMembers.jsp");
	return;
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="header.html"%>
	<p>
		id:
		<%=user_id.toString()%>
		name:
		<%=name%>
	</p>

	<h1>Edit Member Form</h1>
	<form action="updateMember.jsp" method="POST">
		<label for="id">id</label> <input type='text' readonly
			value='<%=user_id%>' name='uid' id='id' /> <label for="name">new
			name</label> <input type='text' name='name' id='name' />
		<button type='submit'>Submit</button>
	</form>

	<%@include file="footer.html"%>
</body>
</html>