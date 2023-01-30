<%-- 
    Document   : VerifyLawyer
    Created on : Jan 30, 2023, 6:15:26 PM
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
            String Username = request.getParameter("Username");
            String Password = request.getParameter("Password");
            G1DB_Connection.G1_DB_Connection connection = new G1DB_Connection.G1_DB_Connection();
            boolean isValid = false;
            isValid = connection.isLawyerExist(Username, Password);

            if (isValid) {
                session.setAttribute("Username", Username);
                session.setAttribute("Password", Password);
                response.sendRedirect("Home.jsp");
            } else {
                response.sendRedirect("index.html");
            }
        %>
    </body>
</html>
