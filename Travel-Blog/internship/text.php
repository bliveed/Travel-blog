<?php
 session_start ();
    if($_SESSION["email"]){
        echo "Welcome " ;
        echo $_SESSION["name"];
    }
    else echo "<h1>Please login first .</h1>";


 ?>
<html>
    <body>
        <a style="float: right; font-size: 20px;margin-right: 15px" href="logout.php">Log Out</a>
        <h1>Hey ! welcome to main page .</h1>

    </body>
</html>



