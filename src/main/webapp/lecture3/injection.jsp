<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%@page import="java.sql.*" %>
    <%
    String username = request.getParameter("user");
    String pwd = request.getParameter("pwd");
    
    // sanity check
    out.print("<div>username: " + username + "</div>");
    out.print("<div>password: " + pwd + "</div>");
    
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
        // SELECT * FROM member WHERE name='u111           '  AND password='p111'
        // SELECT * FROM member WHERE name=' ???           '  AND password=' ??? '
        //                                                                   u111' or '1=1                   p111' or '1=1
        // SELECT * FROM member WHERE name=' u111' or '1=1'   AND password=' ??? '
        //                      
        String sqlStr = "SELECT * FROM member WHERE name='" + username + 
                                            "' AND password='" + pwd + "'";
        ResultSet rs = stmt.executeQuery(sqlStr);
        
        int id = 0;
        String name = "";
        String password = "";
        boolean memberFound = false;
        // Step 6: Process Result
        while (rs.next()) {
            memberFound = true;
            
            id = rs.getInt("id");
            name = rs.getString("name");
            password = rs.getString("password");
%>
            <div style="border:1px solid red; padding:1em; margin:1em 0;">
                <div>ID: <%=id %></div>
                <div>Name: <%=name %></div>
                <div>Password: <%=password %></div>
            </div>
<%          
            //out.println("ID:" + id + ", Name:" + name + ", Password:" + password);
            //System.out.println("ID:" + id + ", Name:" + name + ", Password:" + password);
        }
%>
<%
        if (memberFound) {
%>
            <h2>Welcome!! Redirecting you to your profile page...</h2>
<%
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