<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Student Performance System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            /* Background Image */
            background-image: url("${pageContext.request.contextPath}/resources/images/background.jpg");
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
        }
        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 17px;
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
        /* Responsive Design */
        @media (max-width: 768px) {
            table, thead, tbody, th, td, tr { 
                display: block; 
            }
            th {
                position: absolute;
                top: -9999px;
                left: -9999px;
            }
            tr { margin: 0 0 1em 0; }
            td { 
                border: none;
                position: relative;
                padding-left: 50%; 
            }
            td:before { 
                position: absolute;
                top: 12px;
                left: 12px;
                width: 45%; 
                padding-right: 10px; 
                white-space: nowrap;
                font-weight: bold;
            }
            /* Label the data */
            td:nth-of-type(1):before { content: "ID"; }
            td:nth-of-type(2):before { content: "Username"; }
            td:nth-of-type(3):before { content: "Email"; }
            td:nth-of-type(4):before { content: "Full Name"; }
            td:nth-of-type(5):before { content: "Course"; }
            td:nth-of-type(6):before { content: "GPA"; }
            td:nth-of-type(7):before { content: "Attendance (%)"; }
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
        <h1>Admin Dashboard</h1>
    </header>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="contact.jsp">Contact</a>
        <a href="login.jsp">Login</a>
        <a href="${pageContext.request.contextPath}/logout">Logout</a> <!-- Ensure you have a logout mechanism -->
    </nav>
    <div class="container">
        <h2>Registered Students</h2>
        
        <!-- Display success message if any -->
        <c:if test="${not empty successMessage}">
            <div style="background-color: #dff0d8; color: #3c763d; padding: 1em; border-radius: 4px; margin-bottom: 1em;">
                ${successMessage}
            </div>
        </c:if>
        
        <!-- Display error message if any -->
        <c:if test="${not empty errorMessage}">
            <div style="background-color: #f2dede; color: #a94442; padding: 1em; border-radius: 4px; margin-bottom: 1em;">
                ${errorMessage}
            </div>
        </c:if>
        
        <c:if test="${empty students}">
            <p>No students have registered yet.</p>
        </c:if>
        <c:if test="${not empty students}">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Full Name</th>
                        <th>Course</th>
                        <th>GPA</th>
                        <th>Attendance (%)</th>
                        <th>Actions</th> <!-- For Edit/Delete -->
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="student" items="${students}">
                        <tr>
                            <td>${student.id}</td>
                            <td>${student.username}</td>
                            <td>${student.email}</td>
                            <td>${student.fullName}</td>
                            <td>${student.course}</td>
                            <td>${student.gpa}</td>
                            <td>${student.attendancePercentage}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/admin/edit/${student.id}" style="color: #2196F3; text-decoration: none;">Edit</a> | 
                                <a href="${pageContext.request.contextPath}/admin/delete/${student.id}" style="color: #f44336; text-decoration: none;" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </div>
    <footer>
        &copy; 2024 EduAnalytics.
    </footer>
</body>
</html>
