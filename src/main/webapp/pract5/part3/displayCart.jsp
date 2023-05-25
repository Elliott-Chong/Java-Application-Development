<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="books.Book"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ol>
		<%
		ArrayList<Book> books = (ArrayList<Book>) session.getAttribute("books");
		if (books == null) {
			books = new ArrayList<Book>();
		}
		if (books.size() == 0) {
		%>
		<h1>No books</h1>
		<%
		} else {

		for (int i = 0; i < books.size(); i++) {
		%>
		<li style="margin-top: 1rem">
			<div>
				<ul>
				<li>
					isbn:
					<%=books.get(i).getISBN()%>
					</li>
					<li>
					title:
					<%=books.get(i).getTitle()%>
					</li>
					<li>
					author:
					<%=books.get(i).getAuthor()%>
					</li>
					<li>
					publisher:
					<%=books.get(i).getPublisher()%>
					</li>
					<li>
					quantity:
					<%=books.get(i).getQuantity()%>
					</li>
					<li>
					price:
					<%=books.get(i).getPrice()%>
					</li>
				</ul>
			</div>
		</li>
		
		<%
		}
		}
		%>
	</ol>
	<a href="buybook.jsp">Go back :)</a>
</body>
</html>