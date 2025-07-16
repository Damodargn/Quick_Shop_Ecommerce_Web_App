package Buy;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/callingloginservlet")
public class loginservlet extends HttpServlet{

	@SuppressWarnings("unused")
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		 String email = req.getParameter("email");
	        String password = req.getParameter("password");

	        logindaoimpl dao = new logindaoimpl();
	        boolean loginSuccess = dao.loginCheck(email, password);

	        if (loginSuccess) {
	            HttpSession session = req.getSession();
	            session.setAttribute("userEmail", email);
	            resp.sendRedirect("home.jsp");  
	        } else {
	            resp.sendRedirect("signup.jsp?msg=invalid");  
	        }
	    }
}
