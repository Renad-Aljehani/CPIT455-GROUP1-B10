<%-- 
    Document   : Login
    Created on : Jan 30, 2023, 5:43:32 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
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
            width: 500px;
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
            border-radius: 10px;

            background-color: white;

        }
        #logo{
            margin-top: 50px;
            height: 150px;
            width: 150px;
        }
    </style>

    <body>
    <center>
        <center id="container">
            <img id="logo" src="Mugann.png" alt="">
            <h1>Mugann</h1>
            <br>
            <h3>Login</h3>
            <form name="loginForm" action="VerifyLawyer.jsp" method="POST">
                <div class="space">
                    <label for="Username">Username:</label>
                    <br>
                    <input type="text" name="Username" value="">
                </div>
                <div class="space">
                    <label for="Password">Password:</label>
                    <br>
                    <input type="password" name="Password" value="">
                </div>
                <input type="submit" value="Login" name="Login" />
            </form> 
        </center>
    </center>

</body>

</html>

