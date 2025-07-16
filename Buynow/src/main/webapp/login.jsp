<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quick Shop - Login</title>
<style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background: url('https://themefisher.com/blog-thumb/ecommerce-website-templates.webp') no-repeat center center/cover;
      position: relative;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    /* Optional animated gradient overlay */
    body::after {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: linear-gradient(135deg, rgba(142,45,226,0.5), rgba(74,0,224,0.5), rgba(247,151,30,0.5), rgba(255,210,0,0.5));
      background-size: 300% 300%;
      animation: gradientBG 12s ease infinite;
      z-index: 0;
    }

    @keyframes gradientBG {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }

    .login-container {
      position: relative;
      z-index: 1;
      background-color: rgba(255, 255, 255, 0.95);
      padding: 40px;
      border-radius: 20px;
      box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);
      width: 100%;
      max-width: 400px;
    }

    .login-title {
      text-align: center;
      font-size: 32px;
      color: #4A00E0;
      font-weight: bold;
      margin-bottom: 5px;
    }

    .login-subtitle {
      text-align: center;
      color: #555;
      margin-bottom: 30px;
      font-size: 15px;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 14px;
      margin-bottom: 20px;
      border: none;
      border-radius: 10px;
      background-color: #f0f0f0;
      font-size: 15px;
      transition: background-color 0.3s;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
      background-color: #e0e0e0;
      outline: none;
    }

    .login-button {
      width: 100%;
      background: linear-gradient(to right, #FF512F, #DD2476);
      color: white;
      padding: 14px;
      border: none;
      border-radius: 10px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: opacity 0.3s;
    }

    .login-button:hover {
      opacity: 0.85;
    }

    .extra-links {
      text-align: center;
      margin-top: 15px;
      font-size: 14px;
    }

    .extra-links a {
      color: #FF512F;
      font-weight: bold;
      text-decoration: none;
    }

    .extra-links a:hover {
      text-decoration: underline;
    }
</style>
</head>
<body>

<!-- ✅ Popup for invalid login -->
<%
    String msg = request.getParameter("msg");
    if ("invalid".equals(msg)) {
%>
    <script>
        alert("Invalid Email or Password. Please Sign Up.");
        window.location.href = "login.jsp";
    </script>
<%
    }
%>

<form action="callingloginservlet" method="post">
<div class="login-container">
    <h1 class="login-title">Quick Shop</h1>
    <p class="login-subtitle">Welcome back! Please log in to continue.</p>

    <input type="text" name="email" placeholder="Enter email" required>
    <input type="password" name="password" placeholder="Enter password" required>

    <button type="submit" class="login-button">Login</button>

    <div class="extra-links">
        <p>Don't have an account? <a href="signup.jsp">Sign up</a></p>
    </div>
</div>
</form>

</body>
</html>
