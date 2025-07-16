<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quick Shop - About</title>
<style>
  body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS47fac02t97p0wd94zTsnCRqPKEiKEv0dOBA&s') no-repeat center center fixed;
    background-size: cover;
  }

  .about-container {
    max-width: 900px;
    margin: 60px auto;
    padding: 40px;
    background: rgba(255, 255, 255, 0.95);
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
    text-align: center;
  }

  .about-title {
    font-size: 38px;
    color: #ff5722;
    margin-bottom: 20px;
    letter-spacing: 1px;
  }

  .about-text {
    font-size: 18px;
    line-height: 1.7;
    color: #444;
    margin-bottom: 20px;
    text-align: justify;
  }

  .features-list {
    list-style: none;
    padding: 0;
    margin: 20px 0;
    text-align: left;
  }

  .features-list li {
    background: linear-gradient(to right, #00c6ff, #0072ff);
    color: #fff;
    padding: 12px 20px;
    margin-bottom: 10px;
    border-radius: 8px;
    font-weight: 500;
    box-shadow: 0 4px 8px rgba(0, 114, 255, 0.2);
    transition: transform 0.2s ease;
  }

  .features-list li:hover {
    transform: scale(1.03);
  }

  .home-btn {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 14px 28px;
    font-size: 16px;
    border-radius: 8px;
    cursor: pointer;
    margin-top: 30px;
    transition: background-color 0.3s ease;
  }

  .home-btn:hover {
    background-color: #388E3C;
  }

  @media (max-width: 600px) {
    .about-container {
      padding: 25px;
    }

    .about-title {
      font-size: 28px;
    }

    .about-text {
      font-size: 16px;
    }
  }
</style>
</head>
<body>

<div class="about-container">
    <h1 class="about-title">About</h1>
    <p class="about-text">
      Quick Shop is a modern, easy-to-use web application designed to make online shopping faster, smarter, and more enjoyable. Whether you're browsing the latest gadgets or looking for the best deals in fashion, Quick Shop connects you directly to top-rated sellers in just a few clicks.
    </p>
    <p class="about-text">
      We believe that buying should be simple. That’s why we’ve streamlined the entire process—from discovery to checkout—into one seamless experience.
    </p>

    <h2 class="about-text">Why Choose Us?</h2>
    <ul class="features-list">
      <li>Fast and secure checkout experience</li>
      <li>Real-time stock availability</li>
      <li>Smart product recommendations</li>
      <li>User-friendly mobile-first design</li>
      <li>Customer-first support system</li>
    </ul>

    <a href="home.jsp">
      <button class="home-btn">Go to Home</button>
    </a>
</div>

</body>
</html>
