<?php

$server_name= "localhost";
$username= "root";
$password="";
$database="internship";
$conn = new mysqli($server_name, $username, $password,$database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}