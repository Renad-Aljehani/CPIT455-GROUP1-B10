<%-- 
    Document   : AddCase
    Created on : Feb 5, 2023, 11:18:10 PM
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
                if (session.getAttribute("Username").equals("aziz_otb") && session.getAttribute("Password").equals("RWM@mwr147") && session.getAttribute("petName").equals("lura")) {
                    String stringCaseId = request.getParameter("Case_ID");
                    String stringClientId = request.getParameter("Client_ID");
                    String stringFees = request.getParameter("Fees");
                    int Case_ID = Integer.parseInt(stringCaseId);
                    int Client_ID = Integer.parseInt(stringClientId);
                    int Fees = Integer.parseInt(stringFees);
                    String Title = request.getParameter("Title");
                    String Category = request.getParameter("Category");
                    String Status = request.getParameter("Status");
                    G1DB_Connection.G1_DB_Connection connecter = new G1DB_Connection.G1_DB_Connection();
                    int added_successfully = connecter.AddCaseTest(Case_ID, Client_ID, Title, Category, Status, Fees);
                    if (added_successfully > 0) {
                        response.sendRedirect("DisplayCases.jsp");
                    } else {
                        out.print("Error");
                    }
                } else {
                    response.sendRedirect("Erorr.jsp");
                }
            } else {
                response.sendRedirect("Erorr.jsp");
            }
        %>       
    </body>  
</html>
