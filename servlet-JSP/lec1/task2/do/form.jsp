<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Information Form</title>
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
        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        input, select {
            width: calc(100% - 20px);
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .radio-group {
            margin: 10px 0;
        }
        .radio-group label {
            margin-right: 10px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>User Information</h2>
        <form action="submit.jsp" method="post">
            <input type="text" name="fullName" placeholder="Full Name" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="text" name="age" placeholder="Age" required>
            <div class="radio-group">
                <span>Address:</span><br>
                <input type="radio" name="address" value="cairo" required> Cairo
                <input type="radio" name="address" value="alex"> Alexandria
                <input type="radio" name="address" value="menofia"> Menofia
            </div>
            <select name="selectAddress" required>
                <option value="">Select Address</option>
                <option value="cairo">Cairo</option>
                <option value="alex">Alexandria</option>
                <option value="menofia">Menofia</option>
            </select>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>