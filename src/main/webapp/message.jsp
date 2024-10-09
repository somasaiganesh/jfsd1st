<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Congratulations - EduAnalytics.in</title>
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
            display: flex;
            justify-content: center;
            align-items: center;
        }
        /* Semi-transparent overlay */
       2
        .congratulations-container {
            background-color: #fff;
            padding: 3em;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 500px;
            width: 90%;
        }
        h1 {
            color: #4CAF50;
            margin-bottom: 0.5em;
        }
        p {
            font-size: 1.2em;
            color: #555;
            margin-bottom: 1.5em;
        }
        .button {
            background-color: #4CAF50;
            color: white;
            padding: 0.75em 1.5em;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
            text-decoration: none;
        }
        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="congratulations-container">
        <h1>Congratulations!</h1>
        <p>You have successfully signed up to the EduAnalytics.</p>
        <a href="login.jsp" class="button">Go to Login</a>
    </div>
</body>
</html>
