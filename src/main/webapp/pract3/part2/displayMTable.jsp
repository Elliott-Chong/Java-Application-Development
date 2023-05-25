<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
/*
Author: Elliott Chong Zhi Sheng
class: DIT/FT/2B/21
id: p2211545
*/
Integer multiplication;
Integer rows;
try {
	multiplication = Integer.parseInt(request.getParameter("multiplication"));
	rows = Integer.parseInt(request.getParameter("rows"));
} catch (Exception e) {
	response.sendRedirect("customMTable.jsp?errCode=invalidInput");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css"
	rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
	<div
		class='absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2'>
		<table>
			<tr>
				<td>
					<h1>Using out.println</h1>
					<table>
						<%
						for (int i = 1; i <= rows; i++) {
							out.println(String.format(
							"<tr class='botder-2'><td class='border-2 p-2'>%s x %s</td><td class='border-2 p-2'>%s</td></tr>", i,
							multiplication, multiplication * i));
						}
						%>
					</table>
				</td>
				<td>
					<h1>Using JSP expression tags</h1>
					<table>
						<%
						for (int i = 1; i <= rows; i++) {
						%>
						<tr class='border-2'>
							<td class='border-2 p-2'><%=i%> x <%=multiplication%></td>
							<td class='border-2 p-2'><%=i * multiplication%></td>
						</tr>
						<%
						}
						%>
					</table>
				</td>
			</tr>
		</table>
		<a href='customMTable.jsp'>Go back</a>
	</div>
</body>
</html>