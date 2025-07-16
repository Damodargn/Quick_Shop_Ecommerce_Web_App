<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Checkout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQY3O_wwtbO2w7CAAfP52z91Sdn2cMzME4tA&s') no-repeat center center fixed;
            background-size: cover;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.25);
            max-width: 500px;
            width: 90%;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #444;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 12px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
        }

        input[type="submit"] {
            margin-top: 20px;
            background-color: #28a745;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>

    <script>
        function showThankYouMessage() {
            alert("Thanks For Shopping!");
            return true;
        }
    </script>
</head>
<body>

<div class="container">
    <h2>Checkout</h2>
    <form action="callingcheckoutservlet" method="post" onsubmit="return showThankYouMessage()">
        <label for="name">Full Name:</label>
        <input type="text" name="name" required />

        <label for="address">Shipping Address:</label>
        <input type="text" name="address" required />

        <label for="email">Email:</label>
        <input type="email" name="email" required />

        <input type="submit" value="Place Order" />
    </form>
</div>

</body>
</html>
