<?php
session_start();
include 'config.php';
if (isset($_SESSION['id'])) {
    $id = $_SESSION['id'];
    $sql = "select * from registration where id=" . $id;
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
    } else {
        $errorMsg = 'Could not Find Any Record';
    }
}
?>
    <?php
    include('config.php');
    error_reporting(0);
    if (isset($_GET['room_no'])) {
        $room = $_GET['room_no'];
        $sql = "UPDATE bookings SET ref_id=NULL,regid ='',name ='',city='',room_no = '$room' ,status='Available',details='It is having indoor toilet & contain AC',cancel_req='No' WHERE room_no='$room'";
        if ($conn->query($sql)) {          
            echo "<script type='text/javascript'>alert('Data is added !!!');document.location='refunding.php';</script>";
        } else {
            echo "error";
        }
    } else {
        $errorMsg = 'Could not Find Any Record';
    }

    ?>