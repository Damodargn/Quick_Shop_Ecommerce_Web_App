package Buy;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/callingsignup")
public class signupservlet extends HttpServlet{

	@SuppressWarnings("unused")
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String username = req.getParameter("Username");
		String email = req.getParameter("Email");
		String password = req.getParameter("Password");
		String phonenumber = req.getParameter("Phonenumber");
		String address = req.getParameter("Address");
		
		signup si = new signup(username, email, password, phonenumber, address);
		
		signupdaoimpl dao = new signupdaoimpl();
		
		String sign = dao.addSignup(si);
		
		resp.sendRedirect("home.jsp");
		
		PrintWriter out = resp.getWriter();
		
		out.println();
	}
}
