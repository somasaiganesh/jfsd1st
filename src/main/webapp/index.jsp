<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduAnalytics - Student Performance System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            /* Background Image */
            background-image: url('https://img.freepik.com/free-vector/gradient-network-connection-background_23-2148879890.jpg'); /* External image URL */
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
        /* Navigation Bar Styling */
        nav {
            background-color: #003366; /* Thick Blue */
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
        }
        h1, h2 {
            color: #333;
        }
        p {
            line-height: 1.6;
            color: #555;
        }
        .features {
            display: flex;
            flex-wrap: wrap;
            gap: 1.5em;
            margin-top: 2em;
        }
        .feature {
            background-color: #fff;
            padding: 1.5em;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            flex: 1 1 calc(33% - 3em);
            text-align: center;
        }
        .feature img {
            max-width: 100px;
            margin-bottom: 1em;
        }
        @media (max-width: 768px) {
            .feature {
                flex: 1 1 calc(50% - 3em);
            }
        }
        @media (max-width: 480px) {
            .feature {
                flex: 1 1 100%;
            }
        }
        footer {
            background-color: #003366; /* Thick Blue */
            color: white;
            text-align: center;
            padding: 1em;
            position: relative;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <header>
        <!-- Logo Section -->
        <div class="logo">
            <a href="index.jsp">
                <img src="data:image/png;base64,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"alt="EduAnalytics Logo">
        </div>
        <!-- Header Title -->
        <h1>EduAnalytics</h1>
    </header>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="contact.jsp">Contact</a>
        <a href="login.jsp">Login</a>
        <a href="Signup.jsp">Signup</a>
    </nav>
    <div class="container">
        <h2>HOME</h2>
        <p>
            Educational Analytics involves the collection, measurement, analysis, and reporting of data about learners and their contexts. The primary goal is to understand and optimize learning and the environments in which it occurs. It encompasses various aspects.
        </p>
        
        <h2>Key Features</h2>
        <div class="features">
            <div class="feature">
                <img src="https://media.istockphoto.com/id/1405973719/photo/automation-software-to-archiving-and-efficiently-manage-and-information-files-document.jpg?s=612x612&w=0&k=20&c=MyC_nm0Ro5wzbi6YexDGUzRNzZlkXlXHyoiIyfDFyjI=" alt="Data Collection">
                <h3>Data Collection</h3>
                <p>Seamlessly integrate with existing school systems to gather and manage student performance data.</p>
            </div>
            <div class="feature">
                <img src="https://www.shutterstock.com/image-vector/comprehensive-analytics-dashboard-ui-diverse-600nw-2451117245.jpg" alt="Analytics Dashboard">
                <h3>Analytics Dashboard</h3>
                <p>Visualize key metrics such as average grades, attendance rates, and performance trends through intuitive dashboards.</p>
            </div>
            <div class="feature">
                <img src="https://www.easyreports.in//wp-content/uploads/2020/11/Screenshot_2020-11-27-17-21-43-82.jpg" alt="Reporting">
                <h3>Reporting</h3>
                <p>Generate customizable reports for individual students, classes, or entire schools to track progress and identify areas for improvement.</p>
            </div>
            <div class="feature">
                <img src="https://plus.unsplash.com/premium_photo-1682309567426-5517a398b4dd?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bm90aWZpY2F0aW9ufGVufDB8fDB8fHww" alt="Notifications">
                <h3>Notifications</h3>
                <p>Receive timely alerts about students who may need additional support, ensuring no one falls behind.</p>
            </div>
            <div class="feature">
                <img src="https://cdn.pixabay.com/photo/2018/05/14/16/25/cyber-security-3400657_640.jpg" alt="Security">
                <h3>Security</h3>
                <p>Protect sensitive student data with robust security measures and ensure compliance with privacy regulations.</p>
            </div>
            <div class="feature">
                <img src="https://www.egnyte.com/sites/default/files/inline-images/The%20expansion%20of%20cloud%20applications%20has%20added%20to....png" alt="User Management">
                <h3>User Management</h3>
                <p>Manage different user roles with specific access levels, ensuring that the right people have the right permissions.</p>
            </div>
        </div>
        
        <h2>Why Choose Us?</h2>
        <p>
            Our system is built with the latest technologies to provide a reliable, scalable, and user-friendly experience. By leveraging Java for the backend and React for the frontend, we ensure high performance and seamless interaction across all devices.
        </p>
    </div>
    <footer>
        &copy; 2024 EduAnalytics. All rights reserved.
    </footer>
</body>
</html>
