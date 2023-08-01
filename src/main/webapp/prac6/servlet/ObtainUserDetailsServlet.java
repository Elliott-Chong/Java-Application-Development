package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbaccess.User;
import dbaccess.UserDAO;

@WebServlet("/ObtainUserDetailsServlet")
public class ObtainUserDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User uBean = null;
		PrintWriter out = response.getWriter();

		try {
			String userid = request.getParameter("userid");
			UserDAO udatabase = new UserDAO();
			uBean = udatabase.getUserDetails(userid);

			request.setAttribute("userData", uBean);
			out.print("all is well.. userid=" + userid);
			String url = "pract6/displayUserDetails.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		} catch (Exception e) {

		} finally {

	 	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
