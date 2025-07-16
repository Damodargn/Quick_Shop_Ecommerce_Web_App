package Buy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/callingfoodservlet")
public class foodservlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private static final Map<String, cartitem> productCatalog = new HashMap<>();
	
	static {
		productCatalog.put("Panasonic Owen", new cartitem("Panasonic Owen", 150.99, "https://m.media-amazon.com/images/I/71u+P-c8jFL._AC_UL480_FMwebp_QL65_.jpg"));
		productCatalog.put("Godrej Washing Machine", new cartitem("Godrej Washing Machine", 110.58, "https://m.media-amazon.com/images/I/71Qoc6bju1L._AC_UL480_FMwebp_QL65_.jpg"));
		productCatalog.put("Sony PS 5", new cartitem("Sony PS 5", 229.59, "https://m.media-amazon.com/images/I/614hWI0OETL._SX679_.jpg"));
		productCatalog.put("Boult Watch", new cartitem("Boult Watch", 19.49, "https://m.media-amazon.com/images/I/81QfS8C3u9L._AC_UF480,480_SR480,480_.jpg"));
		productCatalog.put("Sen", new cartitem("Sen", 9.09, "https://m.media-amazon.com/images/I/71qJNrZhd1L._SY879_.jpg"));
		productCatalog.put("IQ Z100Lite", new cartitem("IQ Z100Lite", 15.99, "https://m.media-amazon.com/images/G/31/img22/Wireless/devjyoti/BAU/iQOO/Z10Lite/Sale/V1/iQOO_Z10_Lite_580x740.png"));
		productCatalog.put("Cargo Pant", new cartitem("Cargo Pant", 29.99, "https://m.media-amazon.com/images/I/61JmT1iY3CL._SY879_.jpg"));
		productCatalog.put("B Natural Juice", new cartitem("B Natural Juice", 2.99, "https://images-eu.ssl-images-amazon.com/images/I/618WK4bZBcL.AC_SL240_.jpg"));
		productCatalog.put("Asus Laptop", new cartitem("Asus Laptop", 190.99, "https://m.media-amazon.com/images/G/31/img24hp/med/lap/2_536x695._CB789020315_.png"));
		productCatalog.put("Sony Alpha Camera", new cartitem("Sony Alpha Camera", 299.99, "https://m.media-amazon.com/images/G/31/img24hp/med/camera/Variant_2_536x695._CB789015339_.png"));
		productCatalog.put("Gimbal", new cartitem("Gimbal", 29.99, "https://m.media-amazon.com/images/G/31/img24hp/med/camera/Variant_6_536x695._CB789015339_.png"));
		productCatalog.put("Whirl Pool", new cartitem("Whirl Pool", 299.99, "https://m.media-amazon.com/images/G/31/AUTO_2021/Accessories/kiosk1/kiosk-978x1288.jpg"));
		productCatalog.put("Gear Bike Riding", new cartitem("Gear Bike Riding", 29.99, "https://m.media-amazon.com/images/G/31/AUTO_2021/Accessories/kiosk2/kiosk-ls-riding-978x1288.jpg"));
		productCatalog.put("Gloves Bike Riding", new cartitem("Gloves Bike Riding", 29.99, "https://m.media-amazon.com/images/G/31/AUTO_2021/Accessories/kiosk2/kiosk-ls-bike-978x1288.jpg"));
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			String name = req.getParameter("name");

			if (name != null && productCatalog.containsKey(name)) {
				HttpSession session = req.getSession();
				@SuppressWarnings("unchecked")
				List<cartitem> cart = (List<cartitem>) session.getAttribute("cart");
				if (cart == null) {
					cart = new ArrayList<>();
				}

				cart.add(productCatalog.get(name));
				session.setAttribute("cart", cart);
			}

			resp.sendRedirect("cart.jsp");

	}
}
