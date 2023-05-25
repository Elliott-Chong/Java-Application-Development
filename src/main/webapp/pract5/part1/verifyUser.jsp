<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="Utils.Database"%>
<%@page import="java.sql.*"%>

<!--
Author: Elliott Chong Zhi Sheng
Class: DIT/2B/21
Student Id: 22115545
-->

<%
String loginid = request.getParameter("loginid");
String password = request.getParameter("password");
boolean valid_input = loginid != null && password != null;
if (!valid_input) {
	response.sendRedirect("login.jsp?errCode=invalidLogin");
	return;
}
Connection conn = Database.connect();
String nameQuery = "Select * from member where name like ? LIMIT 1";
PreparedStatement myStmt = conn.prepareStatement(nameQuery);
myStmt.setString(1, loginid);
System.out.println(myStmt.toString());
ResultSet rs = myStmt.executeQuery();

String userRole = "adminUser";
if (rs.next()) {
    String passwordFromDB = rs.getString("password");
    String name = rs.getString("name");;

    if (passwordFromDB.equals(password)) {
    	session.setAttribute("sessUserID", loginid);
    	session.setAttribute("sessUserRole", userRole);
		response.sendRedirect(String.format("displayMember.jsp?user_id=%s&user_role=%s", loginid, userRole));
        return;
    } else {
        response.sendRedirect("login.jsp?errCode=invalidLogin");
        return;
    }
} else {
	System.out.println("NOOO");
    response.sendRedirect("login.jsp?errCode=invalidLogin");
}

%>
<html>
<head>
<script src="https://cdn.tailwindcss.com"></script>
<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css"
	rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div
		class='absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2'>
		<table>
			<%
			for (int i = 1; i <= 5; i++) {
			%>
			<tr class='border-2'>
				<td class='border-2 p-2'><%=i%> x 5</td>
				<td class='border-2 p-2'><%=i * 5%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
</body>
</html>