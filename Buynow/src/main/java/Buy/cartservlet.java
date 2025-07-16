package Buy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/callingcartservlet")
public class cartservlet extends HttpServlet{

	@SuppressWarnings("unchecked")
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 HttpSession session = req.getSession();

	        List<cartitem> cart = (List<cartitem>) session.getAttribute("cart");
	        if (cart == null) {
	            cart = new ArrayList<>();
	        }

	        String name = req.getParameter("name");
	        String priceStr = req.getParameter("price");
	        String imageUrl = req.getParameter("image");

	        if (name != null && priceStr != null && imageUrl != null) {
	            double price = Double.parseDouble(priceStr);

	  
	            cartitem item = new cartitem(name, price, imageUrl);
	            cart.add(item);
	        }
	        
	        session.setAttribute("cart", cart);
	        
	        resp.sendRedirect("cart.jsp");

	    }

@WebServlet("/callingremovecart")
public class removeservlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
        @SuppressWarnings("unchecked")
		List<cartitem> cart = (List<cartitem>) session.getAttribute("cart");

        if (cart != null) {
            int index = Integer.parseInt(req.getParameter("index"));
            if (index >= 0 && index < cart.size()) {
                cart.remove(index);
            }
            session.setAttribute("cart", cart);
        }

        resp.sendRedirect("cart.jsp");

	    }
	@WebServlet("/callingupdateservlet")
	public class updateservlet extends HttpServlet{

		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			   HttpSession session = req.getSession();
		        @SuppressWarnings("unchecked")
				List<cartitem> cart = (List<cartitem>) session.getAttribute("cart");

		        if (cart != null) {
		            int index = Integer.parseInt(req.getParameter("index"));
		            int newQuantity = Integer.parseInt(req.getParameter("quantity"));

		            if (index >= 0 && index < cart.size()) {
		                cartitem item = cart.get(index);

		                req.setAttribute("message", "Quantity updated for: " + item.getItemName());

		                cart.remove(index);
		                for (int i = 0; i < newQuantity; i++) {
		                    cart.add(new cartitem(item.getItemName(), item.getPrice(), item.getImageUrl()));
		                }
		            }

		            session.setAttribute("cart", cart);
		        }

		        resp.sendRedirect("cart.jsp");
		}
	}

	}
}
