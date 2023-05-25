<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table, tr, td, th {
	border: 1px solid black;
}
</style>
<body>
	<%@page import="java.sql.*"%>
	<%
	try {
		// Step1: Load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");
		// Step 2: Define Connection URL
		String connURL = "jdbc:mysql://localhost:3306/school?user=root&password=password&serverTimezone=UTC";
		// Step 3: Establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);
		// Step 4: Create Statement object
		Statement stmt = conn.createStatement();
		// Step 5: Execute SQL Command
		String sqlStr = "SELECT * FROM member";
		ResultSet rs = stmt.executeQuery(sqlStr);

		int id = 0;
		String name = "";
		String password = "";
		// Step 6: Process Result
		while (rs.next()) {
			id = rs.getInt("id");
			name = rs.getString("name");
	%>
		<div>
			id:
			<%=id%>, name:
			<%=name%>
		</div>
	<%
	}
	// Step 7: Close connection
	conn.close();

	System.out.println("Woots");

	} catch (Exception e) {
	System.err.println("Error :" + e);
	}
	%>
</body>
</html>