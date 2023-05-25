<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%--

  - Author(s): Elliott Chong Zhi Sheng
  - Class: DIT/FT/2B/21
  --%>
<body>
	<h1>pract3-part5-display date</h1>
	<p>
		The date now is:
		<%=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(new Date())%></p>
</body>
</html>