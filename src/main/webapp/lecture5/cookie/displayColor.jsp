<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%@page import="myPackage.MyColor" %>
    
    <%
        String color = (String)session.getAttribute("favColor");
        MyColor colorObj = (MyColor)session.getAttribute("favColorObj");
        
        if (color == null || colorObj == null) {
            response.sendRedirect("index.jsp?errCode=invalidInputs");
        }
        else {      
    %>
            <h1>Color: <%=color %></h1>
            <h1>Color: <%=colorObj.getColorText() %></h1>
    <%
        }
    %>
</body>
</html>