<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard - Student Performance System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            /* Background Image */
            background-image: url('${pageContext.request.contextPath}/resources/images/background.jpg');
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
            background-color: #4CAF50;
            color: white;
            padding: 1em;
            text-align: center;
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
            max-width: 1200px;
            margin: auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        h1, h2 {
            color: #333;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1.5em;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
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
    </style>
</head>
<body>
    <header>
        <h1>Student Dashboard</h1>
    </header>
    <nav>
        <a href="student-dashboard.jsp">Dashboard</a>
        <a href="/profile.jsp">Profile</a>
        <a href="/results.jsp">Results</a>
        <a href="logout">Logout</a> <!-- Logout functionality -->
    </nav>
    <div class="container">
        <h2>Welcome, ${student.fullName}</h2>

        <!-- Display personalized student info -->
        <p><strong>Username:</strong> ${student.username}</p>
        <p><strong>Email:</strong> ${student.email}</p>
        <p><strong>Course:</strong> ${student.course}</p>

        <h2>Your Performance</h2>
        <table>
            <tr>
                <th>Course</th>
                <th>Grade</th>
                <th>GPA</th>
                <th>Attendance (%)</th>
                <th>Remarks</th>
            </tr>
            <c:forEach var="performance" items="${student.performances}">
                <tr>
                    <td>${performance.course}</td>
                    <td>${performance.grade}</td>
                    <td>${performance.gpa}</td>
                    <td>${performance.attendance}</td>
                    <td>${performance.remarks}</td>
                </tr>
            </c:forEach>
        </table>

        <h2>Notifications</h2>
        <c:if test="${empty student.notifications}">
            <p>No new notifications.</p>
        </c:if>
        <c:if test="${not empty student.notifications}">
            <ul>
                <c:forEach var="notification" items="${student.notifications}">
                    <li>${notification.message}</li>
                </c:forEach>
            </ul>
        </c:if>
    </div>
    <footer>
        &copy; 2024 EduAnalytics.
    </footer>
</body>
</html>
