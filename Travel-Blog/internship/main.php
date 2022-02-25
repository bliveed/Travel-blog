<html>
<body>
<a style="float: right; font-size: 20px;margin-right: 15px" href="logout.php">Log Out</a>
<h1>Hey! Welcome to the User Interface</h1>

</body>
</html>

<?php
session_start();

if ($_SESSION["email"]) {
    echo "Welcome ";
    echo $_SESSION["email"];
} else echo "<h1>Please login first .</h1>";
include "header.php";
include "left.php";
include "right.php";
include "footer.php";


?>



