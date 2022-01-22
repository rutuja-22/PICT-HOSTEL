<?php session_start(); ?>

<?php

include('config.php');

$id = $_GET['id'];
// $sql =  "DELETE FROM registration WHERE id=" . $sr_no;
// if ($conn->query($sql)) {
    $sql = "SELECT * FROM registration WHERE id=" . $id;
    $result = mysqli_query($conn, $sql);
    while ($row = $result->fetch_assoc()) {
        $email = $row['email'];
        $F_name = $row['F_name'];
        if ($result) {
            $subject = "Application Rejected!";
            $body = "Hi, $F_name. Sorry, Your are not Eligible!!";
            $headers = "From: pictpurchasesystem@gmail.com";
            if (mail($email, $subject, $body, $headers)) {
                $sql =  "DELETE FROM registration WHERE id=" . $id;
                if ($conn->query($sql)) {
                    echo "<script>alert('Your Record is Successfully Updated !!!!!');document.location='Registered_Students.php';</script>";

                }
            
            } else {
                echo "<script type='text/javascript'>alert('Email sending fail!')";
                echo "<script>document.location='index.php';</script>";
            }
        }
    }
// } else {
//     echo "<script type='text/javascript'>alert('error');document.location='leavedetails.php';</script>";
// }
if ($conn->query($sql)) {
    echo "<script type='text/javascript'>alert('Your Record is deleted Successfully !!!');document.location='Registered_Students.php';</script>";
} else {
    echo "<script type='text/javascript'>alert('error');document.location='leavedetails.php';</script>";
}

?>