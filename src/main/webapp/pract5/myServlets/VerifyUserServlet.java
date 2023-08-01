package myServlets;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Utils.Database;

/**
 * Servlet implementation class VerifyUserServlet
 */
@WebServlet("/VerifyUserServlet")
public class VerifyUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VerifyUserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {

			String loginid = request.getParameter("loginid");
			String password = request.getParameter("password");
			boolean valid_input = loginid != null && password != null;
			if (!valid_input) {
				RequestDispatcher login_rd = request.getRequestDispatcher("/pract5/part4/login.jsp?errCode=invalidLogin");  
				login_rd.forward(request, response);
				return;
			}
			Connection conn = Database.connect();
			String nameQuery = "Select * from member where name like ? LIMIT 1";
			PreparedStatement myStmt = conn.prepareStatement(nameQuery);
			myStmt.setString(1, loginid);
			System.out.println(myStmt.toString());
			ResultSet rs = myStmt.executeQuery();
			RequestDispatcher rd = request.getRequestDispatcher("/pract5/part4/displayMember.jsp");  

			String userRole = "adminUser";
			if (rs.next()) {
				String passwordFromDB = rs.getString("password");
				String name = rs.getString("name");

				if (passwordFromDB.equals(password)) {
					HttpSession session = request.getSession();
					session.setAttribute("sessUserID", loginid);
					session.setAttribute("sessUserRole", userRole);
					rd.forward(request, response);
					return;
				} else {
					RequestDispatcher login_rd = request.getRequestDispatcher("/pract5/part4/login.jsp?errCode=invalidLogin");  
					login_rd.forward(request, response);
					return;
				}
			} else {
				System.out.println("NOOO");
			RequestDispatcher login_rd = request.getRequestDispatcher("/pract5/part4/login.jsp?errCode=invalidLogin");  
				login_rd.forward(request, response);
				return;
			}
		} catch (Exception e) {
			System.out.println(e);
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
