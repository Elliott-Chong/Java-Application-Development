<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String[] selectedModules = request.getParameterValues("modules");
%>
<body>
 <%-- Display the selected modules using an HTML unordered list (ul) --%>
  <% if (selectedModules != null) { %>
    <h2>You have selected:</h2>
    <ul>
      <% for (String module : selectedModules) { %>
        <li><%= module %></li>
      <% } %>
    </ul>
  <% } else { %>
    <h4>You have no modules this semester.</h4>
  <% } %>
</body>
</html>