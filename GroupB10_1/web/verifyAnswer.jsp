<%-- 
    Document   : verifyAnswer
    Created on : Feb 7, 2023, 12:33:31 PM
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
               if (session.getAttribute("Username") != null && session.getAttribute("Password") != null ) {
             if (session.getAttribute("Username").equals("aziz_otb") && session.getAttribute("Password").equals("RWM@mwr147")) {
            String petName = request.getParameter("petName");
            G1DB_Connection.G1_DB_Connection connection = new G1DB_Connection.G1_DB_Connection();
            boolean isValid = false;
            isValid = connection.VerifyPetName(petName);
            if (isValid) {
                session.setAttribute("petName", petName);
                response.sendRedirect("Home.jsp");
            } else {
                response.sendRedirect("question-basedForm.jsp");
            }
            }else {
        response.sendRedirect("Erorr.jsp");
     }
         } else {
        response.sendRedirect("Erorr.jsp");
     }
        %>         
    </body>
</html>
