<%@ page import="java.util.*" %>
<%
    List<String> orders = (List<String>) session.getAttribute("orders");
%>
<!DOCTYPE html>
<html>
<head>
    <title>All Orders</title>
</head>
<body>
    <h2>All Your Orders This Session</h2>
    <%
        if (orders != null && !orders.isEmpty()) {
    %>
        <ul>
            <% for (String order : orders) { %>
                <li><%= order %></li>
            <% } %>
        </ul>
    <%
        } else {
    %>
        <p>No orders yet.</p>
    <%
        }
    %>

    <a href="order.jsp">Back to Order Page</a>
</body>
</html>
