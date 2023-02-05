<%-- 
    Document   : DeleteClient
    Created on : Feb 5, 2023, 10:24:13 PM
    Author     : Renad Aljehani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete users</title>
    </head>
    <body>
        <%
            String ID = request.getParameter("ID");
            
            G1DB_Connection.G1_DB_Connection conn = new G1DB_Connection.G1_DB_Connection();
            int isDeleted = conn.DeleteClient(ID);
            if (isDeleted > 0)
                //out.print("Data is successfully deleted!");
                response.sendRedirect("DisplayClients.jsp");
            else
                out.print("Error");
        %>
    </body>
</html>
