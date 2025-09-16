<%@ page import="java.util.*" %>
<%

    List<String> orders = (List<String>) session.getAttribute("orders");
    if (orders == null) {
        orders = new ArrayList<String>();
        session.setAttribute("orders", orders);
    }

 
    String food = request.getParameter("food");
    if (food != null && !food.trim().isEmpty()) {
        orders.add(food);
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Food</title>
</head>
<body>
    <h2>Order Your Food</h2>
    <form action="order.jsp" method="post">
        <input type="text" name="food" placeholder="Enter food" required>
        <input type="submit" value="Add Order">
    </form>

    <br>
    <a href="allorders.jsp">View All Orders</a>
</body>
</html>
