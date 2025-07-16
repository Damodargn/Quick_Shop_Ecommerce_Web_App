<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Quick Shop</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0; padding: 0;
    background: url('https://milkandtweed.com/wp-content/uploads/2023/06/10-essentials-for-ecommerce-144.png') no-repeat center center fixed;
    background-size: cover;
    color: #333;
  }
  header {
    background: rgba(0,0,0,0.7);
    color: #fff;
    padding: 15px 20px;
    display: flex; justify-content: space-between; align-items: center;
  }
  header h1 {
    margin: 0; font-weight: 700; font-size: 1.5rem;
  }
  nav a {
    color: #fff;
    margin-left: 20px;
    font-weight: 600;
    text-decoration: none;
  }
  nav a:hover {
    text-decoration: underline;
  }
  main {
    max-width: 1100px;
    margin: 30px auto;
    padding: 0 15px;
  }
  .products {
    display: flex;
    flex-wrap: wrap;
    gap: 18px;
    justify-content: center;
  }
  .product-card {
    background: rgba(255, 255, 255, 0.95);
    border-radius: 8px;
    box-shadow: 0 2px 10px rgb(0 0 0 / 0.15);
    width: 180px;
    padding: 15px;
    text-align: center;
    display: flex;
    flex-direction: column;
  }
  .product-card img {
    max-height: 140px;
    width: 100%;
    object-fit: contain;
    border-radius: 5px;
  }
  .product-card h3 {
    margin: 12px 0 15px;
    font-size: 1em;
    min-height: 2.5em;
  }
  .product-card button {
    margin-top: auto;
    background: #007bff;
    border: none;
    color: #fff;
    font-weight: 600;
    padding: 8px 0;
    border-radius: 4px;
    cursor: pointer;
    font-size: 0.9em;
    transition: background 0.3s ease;
    width: 100%;
  }
  .product-card button:hover {
    background: #0056b3;
  }

  .checkout-container {
    text-align: center;
    margin: 40px 0 20px;
  }
  .checkout-btn {
    background: #28a745;
    color: #fff;
    padding: 12px 30px;
    font-size: 1.1em;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    transition: background 0.3s ease;
  }
  .checkout-btn:hover {
    background: #218838;
  }

  footer {
    background: rgba(0,0,0,0.7);
    color: #ddd;
    text-align: center;
    padding: 12px 0;
    margin-top: 40px;
    font-size: 0.9em;
  }

  @media (max-width: 600px) {
    .product-card {
      width: 45%;
    }
  }
  @media (max-width: 400px) {
    .product-card {
      width: 90%;
    }
  }
</style>
</head>
<body>

<header>
  <h1>Quick Shop</h1>
  <nav>
    <a href="home.jsp">Home</a> 
    <a href="cart.jsp">Cart</a> 
    <a href="about.jsp">About</a> 
    <a href="contact.jsp">Contact</a>
  </nav>
</header>

<main>
  <section class="products">
    <%
      String[][] products = {
        {"Panasonic Owen", "https://m.media-amazon.com/images/I/71u+P-c8jFL._AC_UL480_FMwebp_QL65_.jpg"},
        {"Godrej Washing Machine", "https://m.media-amazon.com/images/I/71Qoc6bju1L._AC_UL480_FMwebp_QL65_.jpg"},
        {"Sony PS 5", "https://m.media-amazon.com/images/I/614hWI0OETL._SX679_.jpg"},
        {"Boult Watch", "https://m.media-amazon.com/images/I/81QfS8C3u9L._AC_UF480,480_SR480,480_.jpg"},
        {"Sen", "https://m.media-amazon.com/images/I/71qJNrZhd1L._SY879_.jpg"},
        {"IQ Z100Lite", "https://m.media-amazon.com/images/G/31/img22/Wireless/devjyoti/BAU/iQOO/Z10Lite/Sale/V1/iQOO_Z10_Lite_580x740.png"},
        {"Cargo Pant", "https://m.media-amazon.com/images/I/61JmT1iY3CL._SY879_.jpg"},
        {"B Natural Juice", "https://images-eu.ssl-images-amazon.com/images/I/618WK4bZBcL.AC_SL240_.jpg"},
        {"Asus Laptop", "https://m.media-amazon.com/images/G/31/img24hp/med/lap/2_536x695._CB789020315_.png"},
        {"Sony Alpha Camera", "https://m.media-amazon.com/images/G/31/img24hp/med/camera/Variant_2_536x695._CB789015339_.png"},
        {"Gimbal", "https://m.media-amazon.com/images/G/31/img24hp/med/camera/Variant_6_536x695._CB789015339_.png"},
        {"Whirl Pool", "https://m.media-amazon.com/images/G/31/AUTO_2021/Accessories/kiosk1/kiosk-978x1288.jpg"},
        {"Gear Bike Riding", "https://m.media-amazon.com/images/G/31/AUTO_2021/Accessories/kiosk2/kiosk-ls-riding-978x1288.jpg"},
        {"Gloves Bike Riding", "https://m.media-amazon.com/images/G/31/AUTO_2021/Accessories/kiosk2/kiosk-ls-bike-978x1288.jpg"}
      };
      for (String[] p : products) {
    %>
    <div class="product-card">
      <img src="<%= p[1] %>" alt="<%= p[0] %>"/>
      <h3><%= p[0] %></h3>
      <form method="post" action="callingfoodservlet">
        <input type="hidden" name="action" value="add"/>
        <input type="hidden" name="name" value="<%= p[0] %>"/>
        <input type="hidden" name="image" value="<%= p[1] %>"/>
        <button type="submit">Add to Cart</button>
      </form>
    </div>
    <% } %>
  </section>
</main>

<footer>
  <p>© 2025 Quick Shop. All rights reserved.</p>
</footer>

</body>
</html>
