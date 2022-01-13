<?php 

$server = "localhost:3310";
$user = "root";
$pass = "";
$database = "hostel";

$conn = mysqli_connect($server, $user, $pass, $database);

if (!$conn) {
    die("<script>alert('Connection Failed.')</script>");
}

?>