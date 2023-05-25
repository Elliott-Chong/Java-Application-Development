<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Http Session > setColor.jsp</title>
</head>
<body>
    <%@page import="myPackage.MyColor" %>
    <%
        String color = request.getParameter("color");
    
        if (color == null || color.equals("")) {
            response.sendRedirect("index.jsp?errCode=invalidInputs");
        }
        else {
    
            // let's create a MyColor object
            MyColor mycolorObj = new MyColor();
            mycolorObj.setColorText(color);
        
            session.setAttribute("favColor", color);
            session.setAttribute("favColorObj", mycolorObj);
            
            response.sendRedirect("displayColor.jsp");
        }       
    %>
</body>
</html>