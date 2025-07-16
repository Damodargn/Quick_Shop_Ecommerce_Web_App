<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<style>
  body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTly6Wl0jbo3liRv_XibNMtGwaGItOPUsfiHQ&s') no-repeat center center fixed;
    background-size: cover;
  }

  .contact-container {
    max-width: 700px;
    margin: 60px auto;
    padding: 40px;
    background: rgba(255, 255, 255, 0.9);
    border-radius: 15px;
    box-shadow: 0 12px 30px rgba(0, 0, 0, 0.2);
    backdrop-filter: blur(8px);
  }

  .contact-title {
    text-align: center;
    font-size: 36px;
    color: #4a00e0;
    margin-bottom: 30px;
  }

  .contact-details p {
    font-size: 18px;
    margin: 15px 0;
    color: #333;
  }

  .contact-label {
    font-weight: bold;
    color: #007bff;
  }

  .social-icons {
    margin-top: 30px;
    text-align: center;
  }

  .icon {
    display: inline-block;
    width: 50px;
    height: 50px;
    line-height: 50px;
    margin: 0 10px;
    border-radius: 50%;
    background-color: #007bff;
    color: white;
    font-size: 20px;
    text-align: center;
    text-decoration: none;
    transition: background-color 0.3s, transform 0.2s;
  }

  .icon:hover {
    background-color: #0056b3;
    transform: scale(1.1);
  }

  @media (max-width: 600px) {
    .contact-container {
      padding: 25px;
    }

    .contact-title {
      font-size: 28px;
    }

    .contact-details p {
      font-size: 16px;
    }
  }
</style>

</head>
<body>
<div class="contact-container">
    <h1 class="contact-title">Contact Us</h1>
    
    <div class="contact-details">
      <p><span class="contact-label">Email:</span> support@QuickShop.com</p>
      <p><span class="contact-label">Phone:</span> +1 (800) 123-4567</p>
      <p><span class="contact-label">Address:</span> 123 Market Street, Suite 500, San Francisco, CA, 94103</p>

      <div class="social-icons">
        <a href="home.jsp" class="icon"><span>🏠</span></a>
      </div>
    </div>
</div>

</body>
</html>
