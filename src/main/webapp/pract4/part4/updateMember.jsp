<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="Utils.Database"%>
<%@ page import="java.sql.*"%>
<%
Integer user_id;
String new_name;
Integer rows_affected;
Connection conn = Database.connect();
System.out.println("DSDF");
System.out.println(request.getParameter("uid"));
System.out.println(request.getParameter("name"));
try {
	user_id = Integer.parseInt(request.getParameter("uid"));
	new_name = request.getParameter("name");
	if ( user_id == null || new_name == null) {
		response.sendRedirect("listMembers.jsp");
		return;
	}
	PreparedStatement ps = conn.prepareStatement("UPDATE member SET name=? WHERE id=?");
	ps.setString(1, new_name);
	ps.setInt(2, user_id);
	Integer rs = ps.executeUpdate();
	rows_affected = rs;
} catch (Exception e) {
	System.out.println(e);
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

	user_id is
	<%=user_id%>... user name is
	<%=new_name%>
	<br />
	Number of row(s) affected:
	<%=rows_affected%>
	<br />
	<a href="listMembers.jsp">
		<button>Back to list members</button>
	</a>
	<%@include file="footer.html"%>
</body>
</html>