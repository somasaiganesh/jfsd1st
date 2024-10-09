<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Student Performance System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            /* Background Image */
            background-image: url('data:image/jpeg;base64,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');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            /* Overlay to enhance text readability */
            position: relative;
            margin: 0;
            padding: 0;
            min-height: 100vh;
        }
        /* Semi-transparent overlay */
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(244, 244, 249, 0.8); /* Adjust opacity as needed */
            z-index: -1;
        }
         header {
            background-color: #ADD8E6; /* Light Blue */
            color: white;
            padding: 1em 2em;
            display: flex;
            align-items: center;
            justify-content: center; /* Center the header text */
            position: relative;
        }
        /* Logo Styling */
        .logo {
            position: absolute;
            left: 2em; /* Adjust spacing from the left */
            top: 50%;
            transform: translateY(-50%);
        }
        .logo img {
            max-height: 60px; /* Adjust as needed */
        }
        /* Header Title Styling */
        header h1 {
            margin: 0;
            font-size: 1.8em;
        }
        nav {
            background-color: #333;
            overflow: hidden;
            padding: 0;
        }
        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 17px;
            line-height: 20px;
        }
        nav a:hover {
            background-color: #575757;
        }
        .container {
            padding: 2em;
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        h1, h2 {
            color: #333;
            text-align: center;
        }
        p {
            line-height: 1.6;
            color: #555;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 1em;
        }
        label {
            font-weight: bold;
            color: #333;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            padding: 0.75em;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1em;
            width: 100%;
            box-sizing: border-box;
        }
        button {
            padding: 0.75em;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 1em;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .error-message {
            background-color: #f2dede;
            color: #a94442;
            padding: 1em;
            border-radius: 4px;
            margin-bottom: 1em;
        }
        .success-message {
            background-color: #dff0d8;
            color: #3c763d;
            padding: 1em;
            border-radius: 4px;
            margin-bottom: 1em;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1em;
            position: relative;
            width: 100%;
            bottom: 0;
        }
        @media (max-width: 480px) {
            .container {
                padding: 1em;
                margin: 1em;
            }
        }
    </style>
</head>
<body>
    <header>
        <!-- Logo Section -->
        <div class="logo">
            <a href="Signup.jsp"></a>
                <img src="data:image/png;base64,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"alt="EduAnalytics Logo">
        </div>
        <!-- Header Title -->
        <h1>signup to EduAnalytics</h1>
    </header>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="contact.jsp">Contact</a>
        <a href="login.jsp">Login</a>
    </nav>
    <div class="container">
        <h2>Sign Up</h2>
        <p>Create a new account to access the EduAnalytics.</p>

        <!-- Success Message (conditionally displayed) -->
        <% if (request.getAttribute("success") != null) { %>
            <div class="success-message">
                <p><%= request.getAttribute("success") %></p>
            </div>
        <% } %>
        
        <!-- Error Message (conditionally displayed) -->
        <% if (request.getAttribute("error") != null) { %>
            <div class="error-message">
                <p><%= request.getAttribute("error") %></p>
            </div>
        <% } %>
        
        <form action="${pageContext.request.contextPath}/signup" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>

            <button type="submit">Sign Up</button>
            <a href="message.jsp" class="btn" style="color:white">Sign up</a>
        </form>
    </div>
    <footer>
        &copy; 2024 EduAnalytics. All rights reserved.
    </footer>
</body>
</html>
