<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="books.Book"%>
<%@ page import="java.util.ArrayList"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ol>
	<%
	ArrayList<Book> books = new ArrayList<Book>();
	books.add(new Book("123", "Book 1", "Elliott", "Reluvate.co", 3, "5.55"));
	books.add(new Book("124", "Book 2", "Elliott", "Reluvate.co", 5, "3.55"));
	books.add(new Book("125", "Book 3", "Elliott", "Reluvate.co", 3, "31.55"));
	books.add(new Book("126", "Book 4", "Elliott", "Reluvate.co", 9, "33.55"));
	books.add(new Book("127", "Book 5", "Elliott", "Reluvate.co", 10, "8.55"));
	for (int i = 0; i < books.size(); i++) {
	%>
	<li>
		<div>
		isbn: <%=books.get(i).getISBN() %>
		title: <%=books.get(i).getTitle() %>
		author: <%=books.get(i).getAuthor() %>
		publisher: <%=books.get(i).getPublisher() %>
		quantity: <%=books.get(i).getQuantity() %>
		price: <%=books.get(i).getPrice() %>
		</div>	
		</li>
	<%
}
%>
</ol>
</body>
</html>