<%-- 
    Document   : Logout
    Created on : Feb 7, 2023, 11:56:01 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            session.invalidate();
            response.sendRedirect("index.html");
        %>
    </body>
</html>
