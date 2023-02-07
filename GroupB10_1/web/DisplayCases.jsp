<%-- 
    Document   : DisplayCases
    Created on : Jan 30, 2023, 7:29:50 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="G1DB_Connection.G1_DB_Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Index</title>
    </head>
    <style>
        body {
            background-color: #875C3D;
            align-items: center;
            align-content: center;
            /* font-family: 'Courier New', Courier, monospace; */
            font-family:Arial, Helvetica, sans-serif

        }

        #container {
            background-color: #CABAAC;
            align-items: center;
            align-content: center;
            width: 800px;
            height: 600px;
            position: relative;
            align-self: center;
            border-radius: 20px;
            margin-top: 100px;
        }

        h1 {
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            color: brown;
        }

        .space {
            margin-bottom: 20px;
        }

        label{
            float: left;
            margin-left: 180px;
            /* text-align: left; */
        }
        button{
            height: 30px;
            width: 100px;
            border-radius: 8px;
            background-color: white;

        }
        #logo{
            margin-top: 50px;
            height: 150px;
            width: 150px;
        }
        table{
            /* border: #875C3D; 
            border-style: dashed;  */
        }
        tr{
            /* border-top: #875C3D; */
            /* border-style:dotted; */
        }
        th{
            border-top: #aba6a3;
            border-style: groove;
        }
        td{
            border-bottom: #875C3D;
            border-style: groove;
        }
        #deleteButton{
            height: 20px;
            width: 30px;
            background-color: red;
        }
    </style>

    <body>

        <%
//           out.print(session.getAttribute("Username"));
//           out.print(session.getAttribute("Password"));
//
//           out.print(session.getAttribute("Username").equals("aziz_otb"));
//           out.print(session.getAttribute("Password") == "RWM@mwr147");
            if (session.getAttribute("Username") != null && session.getAttribute("Password") != null && session.getAttribute("petName") != null) {
                if (session.getAttribute("Username").equals("aziz_otb") && session.getAttribute("Password").equals("RWM@mwr147") && session.getAttribute("petName").equals("lura")) {

                    G1DB_Connection.G1_DB_Connection connecter = new G1DB_Connection.G1_DB_Connection();
                    ResultSet Result = connecter.DisplayCases();
        %>
    <center>
        <center id="container">
            <img id="logo" src="Mugann.png" alt="">
            <h1>Mugann</h1>
            <h3 style=" margin-left: 10px;">Cases</h3>
            <br>
            <table>
                <tr>
                    <th>ID</th>
                     <th>Client ID</th>
                    <th>Title</th>
                    <th>Category</th>
                    <th>State</th>
                    <th>Fees</th>
                    <th>Action</th>
                </tr>

                <% while (Result.next()) {%>
                <tr>
                    <td><%= Result.getString("Case_ID")%></td>
                    <td><%= Result.getString("Client_ID")%></td>
                    <td><%= Result.getString("Title")%></td>
                    <td><%= Result.getString("Category")%></td>
                    <td><%= Result.getString("Status")%></td>
                    <td><%= Result.getString("Fees")%></td>
                    <td><center><button id="deleteButton"><a href="DeleteCase.jsp?id=<%=Result.getInt("Case_ID")%>">x</a></button></center></td>
                </tr>
                <%
                    }

//                connecter.close();
                %>

            </table>
            <br>
            <form name="AddCaseForm" action="AddCaseForm.jsp" method="POST">
                <input type="submit" value="AddCase" name="AddCase" />
            </form>
            <form name="backForm" action="Home.jsp" method="POST">
                <input type="submit" value="back" name="back" />
            </form> 
            <form name="LogoutForm" action="Logout.jsp" method="POST">
                <input type="submit" value="Logout" name="Logout" />
            </form>
            <br>
        </center>
    </center>
    <%            } else {
                response.sendRedirect("Erorr.jsp");
            }
        } else {
            response.sendRedirect("Erorr.jsp");
        }
    %>  
</body>
</html>