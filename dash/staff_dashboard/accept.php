<?php session_start(); ?>

<?php

include('config.php');

$sr_no = $_GET['sr_no'];
$sql = "UPDATE registration SET valid='Yes' WHERE id=" . $sr_no;
if ($conn->query($sql)) {
    $sql = "SELECT * FROM registration WHERE id=" . $sr_no;
    $result = mysqli_query($conn, $sql);
    while ($row = $result->fetch_assoc()) {
        $email = $row['email'];
        $F_name = $row['F_name'];
        if ($result) {
            $subject = "Verification Completed!";
            $body = "Hi, $F_name. Your documents are verified!!
                                \r\r\n\n You can now login through your Login credentials which were sended in previous mail. \r\r\n\nThank you!! ";
            $headers = "From: pictpurchasesystem@gmail.com";
            if (mail($email, $subject, $body, $headers)) {
                echo "<script>alert('Your Record is Successfully Updated !!!!!');document.location='Registered_Students.php';</script>";
            } else {
                echo "<script type='text/javascript'>alert('Email sending fail!')";
                echo "<script>document.location='index.php';</script>";
            }
        }
    }
} else {
    echo "<script type='text/javascript'>alert('error');document.location='leavedetails.php';</script>";
}

?>

