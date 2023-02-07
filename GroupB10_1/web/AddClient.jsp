<%-- 
    Document   : AddClient
    Created on : Feb 5, 2023, 10:25:27 PM
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
                String stringClientId = request.getParameter("Client_ID");
                int Client_ID = Integer.parseInt(stringClientId);
                String Phone_number = request.getParameter("Phone_number");
                String Email = request.getParameter("Email");
                String Name = request.getParameter("Name");
                G1DB_Connection.G1_DB_Connection connecter = new G1DB_Connection.G1_DB_Connection();

                int added_successfully = connecter.AddClientTest(Client_ID, Phone_number, Email, Name);
                if (added_successfully > 0) {
                    response.sendRedirect("DisplayClients.jsp");
                } 
//                else {
//                    response.sendRedirect("AddClientForm.jsp");
              //  }
            }
            else {
                response.sendRedirect("Erorr.jsp");
            }
            }else {
                response.sendRedirect("Erorr.jsp");
            }%> 
    </body>
</html>
