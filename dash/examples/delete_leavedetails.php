<?php session_start(); ?>

<?php

include('config.php');

$sr_no = $_GET['sr_no'];
$sql =  "DELETE FROM leave_details WHERE sr_no=".$sr_no;
if ($conn->query($sql)) {
    echo "<script type='text/javascript'>alert('Your Record is deleted Successfully !!!');document.location='leavedetails.php';</script>";
  
}else {
    echo "<script type='text/javascript'>alert('error');document.location='leavedetails.php';</script>";
    } 
// $result=mysqli_query($conn, "DELETE FROM leave_details WHERE sr_no=$sr_no");
// echo "<script type='text/javascript'>alert('Your Record is deleted Successfully !!!');document.location='leavedetails.php';</script>";

?>