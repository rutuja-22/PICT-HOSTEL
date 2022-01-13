<?php
include 'config.php';
session_start();
if (isset($_SESSION['id'])) {
    $id = $_SESSION['id'];
    $sql = "select * from registration where id=" . $id;
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        if($row['gender']=='male' && $row['year']=='FE' ){
            echo '<script>document.location="feroom.php";</script>';
        }
        elseif($row['gender']=='female' && $row['year']=='FE' ){
            echo '<script>document.location="feroom2.php";</script>';
        }
        elseif($row['gender']=='male' && $row['year']=='SE' ){
            echo '<script>document.location="seroom.php";</script>';
        }
        elseif($row['gender']=='female' && $row['year']=='SE' ){
            echo '<script>document.location="seroom2.php";</script>';
        }
        elseif($row['gender']=='male' && $row['year']=='TE' ){
            echo '<script>document.location="teroom.php";</script>';
        }
        elseif($row['gender']=='female' && $row['year']=='TE' ){
            echo '<script>document.location="teroom2.php";</script>';
        }
    } else {
        $errorMsg = 'Could not Find Any Record';
    }
}

// if (isset($_POST['submit'])) {

//     $class = $_POST['class'];
//     $gender = $_POST['gender'];
//     if ($class == 'FE' && $gender == 'male') {
//         echo '<script>document.location="feroom.php";</script>';
//         # code...
//     }
// }




?>
