<%-- 
    Document   : DisplayCases
    Created on : Jan 30, 2023, 7:29:50 PM
    Author     : hp
--%>

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
    <center>
        <center id="container">
            <img id="logo" src="Mugann.png" alt="">
            <h1>Mugann</h1>
            <h3 style=" margin-left: 10px;">Cases</h3>
            <br>
            <table>
                <tr>
                  <th>ID</th>
                  <th>Title</th>
                  <th>Category</th>
                  <th>State</th>
                  <th>Fees</th>
                  <th>Start Date</th>
                  <th>End Date</th>
                  <th>Actione</th>

                  <!-- <th>Country</th> -->
                </tr>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td><center><button id="deleteButton">x</button></center></td>



                  
                  <!-- <td>Germany</td> -->
                </tr>
                <tr>
                  <!-- <td>Centro comercial Moctezuma</td> -->
                  <!-- <td>Francisco Chang</td> -->
                  <!-- <td>Mexico</td> -->
                </tr>
              </table>
              <br>
            <form name="AddCaseForm" action="CaseForm.jsp" method="POST">
            <input type="submit" value="Add Case" name="Add Case" />
            </form> 
            <!-- <div class="space">
                <label for="user_name">UserName:</label>
                <br>
                <input type="text">
            </div>
            <div class="space">
                <label for="password">Password:</label>
                <br>
                <input type="password">
            </div>
            <button type="submit">Login</button> -->
        </center>
    </center>

</body>

</html>