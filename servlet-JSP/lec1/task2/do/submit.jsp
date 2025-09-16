<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Submitted Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .info-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: left;
            width: 300px;
        }
    </style>
</head>
<body>
    <div class="info-container">
        <h2>Submitted Information</h2>
        <p><strong>Full Name:</strong> <%= request.getParameter("fullName") %></p>
        <p><strong>Password:</strong> <%= request.getParameter("password") %></p>
        <p><strong>Age:</strong> <%= request.getParameter("age") %></p>
        <p><strong>Address (Radio):</strong> <%= request.getParameter("address") %></p>
        <p><strong>Address (Select):</strong> <%= request.getParameter("selectAddress") %></p>
    </div>
</body>
</html>
