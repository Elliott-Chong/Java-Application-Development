package myServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import models.User;

/**
 * Servlet implementation class createUser
 */
@WebServlet("/createUser")
public class createUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public createUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Client client = ClientBuilder.newClient();
		String userId = request.getParameter("userid");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		if (userId == null || gender == null || age == null) {
			request.setAttribute("error", "invalid input");
			String url = "pract8/testweb.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}
		String restUrl = "http://localhost:8081/user-ws/createUser";
		WebTarget target = client.target(restUrl);
		Invocation.Builder invocationBuilder = target.request(MediaType.APPLICATION_JSON);
		User user = new User();
		user.setAge(Integer.parseInt(age));
		user.setGender(gender);
		user.setUserid(userId);
		Response resp = invocationBuilder.post(Entity.json(user));
		System.out.println("Status: " + resp.getStatus());
		if (resp.getStatus() == Response.Status.OK.getStatusCode()) {
			System.out.println("Success");

			Integer records_affected = resp.readEntity(Integer.class);
			if (records_affected == null) {
				request.setAttribute("error", "not found");
				String url = "pract8/testweb.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(url);
				rd.forward(request, response);

			}

			request.setAttribute("records_affected", records_affected);
			String url = "pract8/testweb.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		} else {
			System.out.println("failed");
			String url = "pract8/testweb.jsp";
			request.setAttribute("error", "not found");
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
