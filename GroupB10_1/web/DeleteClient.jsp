<%-- 
    Document   : DeleteClient
    Created on : Feb 6, 2023, 7:53:41 AM
    Author     : maryam
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
            if (session.getAttribute("Username") != null && session.getAttribute("Password") != null && session.getAttribute("petName") != null) {
           if (session.getAttribute("Username").equals("aziz_otb") && session.getAttribute("Password").equals("RWM@mwr147")&& session.getAttribute("petName").equals("lura")) {
            String stringClientID = request.getParameter("id");
            int Client_ID = Integer.valueOf(stringClientID);
            G1DB_Connection.G1_DB_Connection connecter= new G1DB_Connection.G1_DB_Connection();
            int isDeleted = connecter.DeleteClient(Client_ID);
            if (isDeleted > 0)
               response.sendRedirect("DisplayClients.jsp");
            else
                out.println("Error!");
                }else {
                response.sendRedirect("Erorr.jsp");
            } 
            }else {
                response.sendRedirect("Erorr.jsp");
            }
        %>
    </body>
</html>
