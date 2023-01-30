<%-- 
    Document   : DisplyClients
    Created on : Jan 30, 2023, 7:29:20 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clients</title>
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
        border-bottom: #ffffff;
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
            <br>
            <h3 style=" margin-left: 10px;">Clients</h3>
            <table>
                <tr>
                  <th>ID</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Phone Number</th>
                  <th>Actione</th>
                  

                  <!-- <th>Country</th> -->
                </tr>
                <tr>
                  <td>1</td>
                  <td>RWM</td>
                  <td>rwm@gmail.com</td>
                  <td>0571955485</td>
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
               <form name="AddClientsForm" action="AddClient.jsp" method="POST">
            <input type="submit" value="AddClients" name="AddClients" />
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
