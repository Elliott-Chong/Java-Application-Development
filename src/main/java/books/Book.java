package books;

public class Book {
	private String ISBN;
	private String title;
	private String author;
	private String publisher;
	private Integer quantity;
	private String price;

	public Book(String isbn, String title, String author, String publisher, Integer quantity, String price) {
		this.ISBN = isbn;
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.quantity = quantity;
		this.price = price;
	}

	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
}
