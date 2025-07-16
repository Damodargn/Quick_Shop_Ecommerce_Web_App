<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Buy.cartitem" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart - Quick Shop</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://img.pikbest.com/wp/202347/online-shopping-cart-icon-3d-modern-on-a-blue-background-representation-of-or-buy-now_9746434.jpg!sw800') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 20px;
        }

        h2, h3 {
            text-align: center;
            color: #fff;
            text-shadow: 1px 1px 2px #000;
        }

        .cart-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            padding: 20px 0;
        }

        .product {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.3);
            padding: 15px;
            width: 200px;
            text-align: center;
            transition: transform 0.3s ease;
        }

        .product:hover {
            transform: scale(1.05);
        }

        .product img {
            width: 100%;
            height: 140px;
            object-fit: contain;
            border-radius: 5px;
        }

        .product-name {
            font-weight: bold;
            margin: 10px 0 5px;
            font-size: 1.1em;
            color: #333;
        }

        .product-price {
            margin-bottom: 10px;
            color: #555;
        }

        button {
            background-color: #e91e63;
            color: white;
            border: none;
            padding: 8px 15px;
            font-weight: bold;
            cursor: pointer;
            border-radius: 5px;
            transition: background 0.3s ease;
        }

        button:hover {
            background-color: #c2185b;
        }

        .total {
            text-align: center;
            font-size: 1.3em;
            font-weight: bold;
            color: #fff;
            text-shadow: 1px 1px 2px #000;
            margin-top: 30px;
        }

        .checkout-btn, .home-btn {
            background-color: #4caf50;
            margin: 10px auto;
            padding: 10px 20px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            color: white;
            display: block;
        }

        .checkout-btn:hover, .home-btn:hover {
            background-color: #388e3c;
        }

        .home-btn {
            background-color: #007bff;
        }

        .home-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<%
    session = request.getSession();
    List<cartitem> cart = (List<cartitem>) session.getAttribute("cart");

    if (cart == null) {
        cart = new ArrayList<>();
        session.setAttribute("cart", cart);
    }

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String name = request.getParameter("name");
        String priceStr = request.getParameter("price");
        String image = request.getParameter("image");
        String action = request.getParameter("action");

        if ("add".equals(action) && name != null && priceStr != null && image != null) {
            try {
                double price = Double.parseDouble(priceStr);
                cart.add(new cartitem(name, price, image));
            } catch (NumberFormatException e) {
                out.println("<p style='color:red;'>Invalid price format.</p>");
            }
        }

        if ("remove".equals(action)) {
            String indexStr = request.getParameter("index");
            if (indexStr != null) {
                int index = Integer.parseInt(indexStr);
                if (index >= 0 && index < cart.size()) {
                    cart.remove(index);
                }
            }
        }

        if ("update".equals(action)) {
            String indexStr = request.getParameter("index");
            String quantityStr = request.getParameter("quantity");
            if (indexStr != null && quantityStr != null) {
                int index = Integer.parseInt(indexStr);
                int newQuantity = Integer.parseInt(quantityStr);
                if (index >= 0 && index < cart.size()) {
                    cartitem item = cart.get(index);
                    cart.remove(index);
                    for (int i = 0; i < newQuantity; i++) {
                        cart.add(new cartitem(item.getItemName(), item.getPrice(), item.getImageUrl()));
                    }
                }
            }
        }

        session.setAttribute("cart", cart);
    }
%>

<h2>Your Cart</h2>

<%
if (!cart.isEmpty()) {
    double total = 0;
%>
<div class="cart-container">
<%
    for (int i = 0; i < cart.size(); i++) {
        cartitem item = cart.get(i);
        total += item.getPrice();
%>
    <div class="product">
        <img src="<%= item.getImageUrl() %>" alt="<%= item.getItemName() %>" />
        <div class="product-name"><%= item.getItemName() %></div>
        <div class="product-price">$<%= String.format("%.2f", item.getPrice()) %></div>
        <form method="post">
            <input type="hidden" name="action" value="remove" />
            <input type="hidden" name="index" value="<%= i %>" />
            <button type="submit">Remove</button>
        </form>
    </div>
<%
    }
%>
</div>
<div class="total">
    Total: $<%= String.format("%.2f", total) %><br><br>
    <form action="chechout.jsp" method="post">
        <button type="submit" class="checkout-btn">Proceed to Checkout</button>
    </form>
    <a href="home.jsp">
        <button type="button" class="home-btn">Go to Home</button>
    </a>
</div>
<%
} else {
%>
<h3>Your cart is empty.</h3>
<a href="home.jsp">
    <button type="button" class="home-btn">Go to Home</button>
</a>
<%
}
%>

</body>
</html>
