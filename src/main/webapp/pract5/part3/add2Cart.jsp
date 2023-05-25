<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ page import="books.Book" %>
<%@ page import="java.util.ArrayList" %>
<body>
	<%
	try {
		String isbn = request.getParameter("isbn");
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		Integer quantity = Integer.parseInt(request.getParameter("quantity"));
		String price = request.getParameter("price");

		Boolean valid_inputs = isbn != null && title != null && author != null && publisher != null && quantity != null
		&& price != null;
		if (!valid_inputs) {
			response.sendRedirect("/buybook.jsp?err=invalid_inputs");
			return;
		}
		Book new_book = new Book(isbn, title, author, publisher, quantity, price);
		ArrayList<Book> current_books = (ArrayList<Book>) session.getAttribute("books");
		if (current_books == null) {
			current_books = new ArrayList<Book>();
		}
		current_books.add(new_book);
		session.setAttribute("books", current_books);
		response.sendRedirect("displayCart.jsp");
		
	} catch (Exception e) {
		response.sendRedirect("buybook.jsp?err=" + e);
		return;
	}
	%>
</body>
</html>