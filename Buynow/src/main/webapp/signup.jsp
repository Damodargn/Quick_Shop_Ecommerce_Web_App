<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	background-color: rgba(255, 255, 255, 0.9);
	padding: 40px 30px;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
	width: 350px;
	max-width: 90%;
}

h2 {
	text-align: center;
	margin-bottom: 24px;
	color: #333;
}

form input {
	width: 100%;
	padding: 12px;
	margin: 10px 0;
	border: none;
	border-radius: 8px;
	background: #f1f1f1;
	font-size: 15px;
	transition: box-shadow 0.2s ease;
}

form input:focus {
	box-shadow: 0 0 5px #fda085;
	outline: none;
}

button {
	width: 100%;
	padding: 12px;
	background: linear-gradient(90deg, #ff758c, #ff7eb3);
	border: none;
	border-radius: 8px;
	color: white;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
	transition: background 0.3s ease;
}

button:hover {
	background: linear-gradient(90deg, #ff7eb3, #ff758c);
}

.note {
	margin-top: 12px;
	font-size: 14px;
	text-align: center;
	color: #555;
}

.note a {
	color: #ff758c;
	text-decoration: none;
	font-weight: bold;
}
</style>
</head>
<body>
	<form action="callingsignup" method="post">
	<div class="container">
		<h2>Sign Up</h2>
			<input type="text" placeholder="Username" name="Username" required />
			<input type="email" placeholder="Email" name="Email" required /> 
			<input type="password" placeholder="Password" name="Password" required />
			<input type="number" placeholder="Phonenumber" name="Phonenumber" required />
			<input type="text" placeholder="Address" name="Address" required />
			<button type="submit">Create Account</button>
			<div class="note">
				Already have an account? <a href="login.jsp">Log In</a>
			</div>
	</div>
	</form>
</body>
</html>