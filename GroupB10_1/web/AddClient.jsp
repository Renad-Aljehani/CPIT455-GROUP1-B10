<%-- 
    Document   : AddClient
    Created on : Jan 30, 2023, 8:23:24 PM
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

    .label{
        /* background-color: blue; */
        width: 200px;
        height: 200px;
    }
    label{
        
        /* float: left; */
        /* margin-left: 180px; */
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
    div{
        /* float: left; */
        margin-bottom: 5px;
    }
</style>

<body>
    <center>
        <center id="container">
            <img id="logo" src="Mugann.png" alt="">
            <h1>Mugann</h1>
            <br>
            <h3>Add Client</h3>
            <div>
                <label class="label" for="id">ID:</label>
                <input type="number">
            </div>
            <div>
                <label class="label" for="name">Name:</label>
                <input type="text">
            </div>
            <div>
                <label class="label" for="email">Email:</label>
                <input type="text">
            </div>
            <div>
                <label class="label" for="phone_number">Number:</label>
                <input type="number">
            </div>
            <br>
            <div>
            <button type="submit">Add</button>
        </div>
        <form name="backForm" action="DisplayClients.jsp" method="POST">
            <input type="submit" value="back" name="back" />
            </form> 

        </center>
    </center>

</body>

</html>
