<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - EduAnalytics</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            /* Background Image */
            background-image: url('https://images.unsplash.com/photo-1522202176988-66273c2fd55f?auto=format&fit=crop&w=1950&q=80'); /* Replace with your desired image URL */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            position: relative;
            color: #555;
        }
        /* Semi-transparent overlay for readability */
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
            background-color: #003366; /* Thick Blue to maintain consistency */
            overflow: hidden;
            padding: 0;
            position: relative;
            z-index: 1;
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
            background-color: #00509e; /* Slightly lighter blue on hover */
        }
        .container {
            padding: 2em;
            max-width: 1200px;
            margin: auto;
            position: relative;
            z-index: 1;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white for content background */
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.2);
        }
        h1, h2 {
            color: #333;
        }
        p {
            line-height: 1.6;
            color: #555;
        }
        ul {
            list-style-type: disc;
            margin-left: 20px;
        }
        .team-members {
            display: flex;
            flex-wrap: wrap;
            gap: 1em;
            margin-top: 1em;
        }
        .member {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 1em;
            flex: 1 1 calc(33% - 2em);
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            text-align: center;
        }
        .member img {
            max-width: 150px;
            border-radius: 50%;
            margin-bottom: 1em;
        }
        @media (max-width: 768px) {
            .member {
                flex: 1 1 calc(50% - 2em);
            }
        }
        @media (max-width: 480px) {
            .member {
                flex: 1 1 100%;
            }
        }
        footer {
            background-color: #003366; /* Thick Blue to maintain consistency */
            color: white;
            text-align: center;
            padding: 1em;
            position: relative;
            width: 100%;
            z-index: 1;
        }
    </style>
</head>
<body>
    <header>
        <!-- Logo Section -->
        <div class="logo">
            <a href="about.jsp"></a>
                <img src="data:image/png;base64,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"alt="EduAnalytics Logo">
        </div>
        <!-- Header Title -->
        <h1>About EduAnalytics</h1>
    </header>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="contact.jsp">Contact</a>
        <a href="login.jsp">Login</a>
        <a href="Signup.jsp">Signup</a>
    </nav>
    <div class="container">
        <h2>Our Mission</h2>
        <p>
            The Student Performance Management system is designed to empower educators and administrators by providing comprehensive analytics and reporting tools. Our mission is to enhance educational outcomes by enabling data-driven decisions, tracking academic progress, and identifying areas for improvement.
        </p>

        <h2>Features</h2>
        <ul>
            <li><strong>Data Collection:</strong> Seamlessly integrate with existing school systems to gather student performance data.</li>
            <li><strong>Analytics Dashboard:</strong> Visualize key metrics such as average grades, attendance rates, and performance trends.</li>
            <li><strong>Detailed Reporting:</strong> Generate customizable reports for individual students, classes, or entire schools.</li>
            <li><strong>Actionable Insights:</strong> Receive recommendations to support student learning and address areas needing improvement.</li>
            <li><strong>User Management:</strong> Securely manage different user roles with specific access levels.</li>
            <li><strong>Data Security:</strong> Ensure all student data is protected and complies with relevant privacy regulations.</li>
        </ul>

        <h2>Our Team</h2>
        <div class="team-members">
            <div class="member">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3tX9GUY0RJdxvyvuX0zIx_PHafgmoLdm5Lg&s" alt="Soma Sai Ganesh">
                <h3>Soma Sai Ganesh</h3>
                <p>Project Manager</p>
            </div>
            <div class="member">
                <img src="data:image/png;base64,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" alt="Deepika">
                <h3>Deepika</h3>
                <p>Lead Developer</p>
            </div>
            <div class="member">
                <img src="data:image/png;base64,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" alt="Bhargavi">
                <h3>Bhargavi</h3>
                <p>Data Analyst</p>
            </div>
            <!-- Add more team members as needed -->
        </div>
    </div>
    <footer>
        &copy; 2024 EduAnalytics. All rights reserved.
    </footer>
</body>
</html>
