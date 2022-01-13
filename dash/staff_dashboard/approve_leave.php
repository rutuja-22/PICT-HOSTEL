<?php session_start(); ?>

<?php

include('config.php');

if (isset($_GET['sr_no'])){
$sr_no = $_GET['sr_no'];
$sql = "UPDATE leave_details SET status='Approved' WHERE sr_no=" . $sr_no;
if ($conn->query($sql)) {
    echo "<script type='text/javascript'>alert('Leave Approved !!!');document.location='sleavedetails.php';</script>";
  
}else {
    echo "<script type='text/javascript'>alert('error');document.location='sleavedetails.php';</script>";
    } 
}
?>