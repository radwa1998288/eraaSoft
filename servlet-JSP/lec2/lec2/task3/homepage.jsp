<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="java.net.URLEncoder, java.net.URLDecoder" %>
<%
    String favPlace = request.getParameter("favPlace");

    if (favPlace != null && !favPlace.trim().isEmpty()) {
       
        String encodedPlace = URLEncoder.encode(favPlace, "UTF-8");

        // Create cookie
        Cookie placeCookie = new Cookie("favPlace", encodedPlace);

        // Cookie valid for 30 days
        placeCookie.setMaxAge(60 * 60 * 24 * 30);

        // Add cookie to response
        response.addCookie(placeCookie);
    } else {
    
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if ("favPlace".equals(c.getName())) {
                    favPlace = URLDecoder.decode(c.getValue(), "UTF-8");
                }
            }
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Homepage</title>
</head>
<body>
    <h2>Welcome to Homepage</h2>
    <p>Your favorite place is: <b><%= (favPlace != null ? favPlace : "Not set yet") %></b></p>
</body>
</html>
