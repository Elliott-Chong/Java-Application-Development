<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>L03 > callRoutine.jsp</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%
	try {
		// Step1: Load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver"); // Step 2: Define Connection URL String
		String connURL = "jdbc:mysql://localhost:3306/school?user=root&password=password&serverTimezone=UTC";
		// Step 3: Establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);
		String simpleProc = "{ call showOne(?) }";
		CallableStatement cs = conn.prepareCall(simpleProc);

		int id = 1;
		cs.setInt(1, id);
		cs.execute();
		ResultSet rs = cs.getResultSet();

		int current_id = 0;
		String name = "";
		String password = "";

		while (rs.next()) {
			id = rs.getInt("id");
		}
	%>

	<%
	// Step 7: Close connection
	conn.close();

	System.out.println("Woots");

	} catch (Exception e) {
	System.err.println("Error :" + e);
	}
	%>
</body>
</html>