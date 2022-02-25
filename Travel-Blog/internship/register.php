<html>
<head>
    <title>Register Page</title>
    <style>
        body{
            background: #eee;
            font-family: Bahnschrift;
            text-align: center;
        }
        .register{
            border: solid gray 1px;
            width:50%;
            border-radius: 2px;
            margin: 15px auto;
            background: white;
            padding: 40px;
        }

        #button{
            font-family: Bahnschrift;
            color: #fff;
            background: mediumseagreen;
            padding: 7px;
            font-size: medium;
            margin-top: 20px;
            margin-left: 30px;
        }

    </style>
</head>


<body>
    <form class="register" action = "register.php" method ="GET">
        <div class="info">
            <img src="https://image.freepik.com/free-psd/motivational-lettering-quote-holidays-traveling-concept_23-2148212984.jpg"width="100%" height="60%" ;>
            <h1>Register</h1>
            <a>Name: </a>
            <input type="text" name="name"><br>
            <a>E-Mail: </a>
            <input style="margin-top: 20px; margin-right: 6px" type="text" name="mail"><br>
            <a>Password: </a>
            <input style="margin-top: 20px;margin-right: 30px" type="text" name="pass">
        </div>
        <div >
            <input type="submit" id="button" value="register" name="register">
        </div>
    </form>
</body>

</html>

<?php
    session_start();
    include "database_conn.php";

    $name= $_POST["name"];
    $mail=$_POST["mail"];
    $password=$_POST["pass"];

    if("register"){
        $sql="INSERT INTO users(email, password, name) VALUES ($mail, $password, $name)";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_array($result);
        echo $row;
    }
