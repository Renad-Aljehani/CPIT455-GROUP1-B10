<%-- 
    Document   : DeleteCase
    Created on : Feb 6, 2023, 7:54:01 AM
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
                String stringCaseID = request.getParameter("id");
                int Case_ID = Integer.valueOf(stringCaseID);
                G1DB_Connection.G1_DB_Connection connecter = new G1DB_Connection.G1_DB_Connection();
                int isDeleted = connecter.DeleteCase(Case_ID);
                if (isDeleted > 0) {
                      response.sendRedirect("DisplayCases.jsp");
                } else {
                   response.sendRedirect("Erorr.jsp");
                }
            }else {
                response.sendRedirect("Erorr.jsp");
            }
            }else {
                response.sendRedirect("Erorr.jsp");
            }
        %>
    </body>
</html>
