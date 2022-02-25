<html>
<head>
    <title>Login Page</title>
    <style>
        body{
            background: #eee;
            font-family: Bahnschrift;
            text-align: center;
        }
        #frm{
            border: solid gray 1px;
            width:50%;
            border-radius: 2px;
            margin: 10px auto;
            background: white;
            padding: 40px;
        }
        #button{
            font-family: Bahnschrift;
            color: #fff;
            background: mediumseagreen;
            padding: 7px;
            font-size: medium;
            margin-left: 30px;
        }
    </style>
</head>
<body>

<div id = "frm">
    <img src="https://image.freepik.com/free-vector/flat-travel-background_23-2148050086.jpg"width="100%" ;>
    <h1>Login</h1>
    <form name="f1" action = "login.php" method = "POST">
        <p>
            <label> E-mail: </label>
            <input type = "text" id ="email" name  = "email" />
        </p>
        <p>
            <label > Password: </label>
            <input style="margin-right: 22px" type = "password" id ="password" name  = "password" />
        </p>
        <div name="btn">
            <input id="button" type = "submit" name = "btn" value = "login"  />
        </div>
    </form>
    <form name="f2" action="register.php" method="get">
        <input id="button" type="submit" name="register" value="register"/>
    </form>
</div>
</body>
</html>

<?php
    session_start();
    include('database_conn.php');

    $sql = "SELECT * FROM users WHERE email = '" . $_POST["email"] . "' and password = '" . $_POST["password"] ."'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result);

if(is_array($row)) {
    $_SESSION["email"] = $row['email'];
    $_SESSION["password"] = $row['password'];
    header("Location:main.php");
    exit();
} else {
    $message = "Invalid E-mail or Password!";
    echo $message;
}

?>
