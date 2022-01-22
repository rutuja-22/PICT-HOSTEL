
<?php
include 'config.php';
session_start();
if (isset($_SESSION['id'])) {
    $id = $_SESSION['id'];
    $sql = "select * from registration where id=" . $id;
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        if($row['gender']=='male' ){
            echo '<script>document.location="refund.php";</script>';
            // echo '<script>document.location="se_refund.php";</script>';
            // echo '<script>document.location="te_refund.php";</script>';
        }
        elseif($row['gender']=='female' ){
            echo '<script>document.location="refund2.php";</script>';
            // echo '<script>document.location="se_refund2.php";</script>';
            // echo '<script>document.location="te_refund2.php";</script>';
        }
        
    } else {
        $errorMsg = 'Could not Find Any Record';
    }
}

?>
<!--?php
include 'config.php';
session_start();
if (isset($_SESSION['id'])) {
    $id = $_SESSION['id'];
    $sql = "select * from registration where id=" . $id;
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        if($row['gender']=='male' && $row['year']=='FE' ){
            echo '<script>document.location="refund.php";</script>';
        }
        elseif($row['gender']=='female' && $row['year']=='FE' ){
            echo '<script>document.location="refund2.php";</script>';
        }
        elseif($row['gender']=='male' && $row['year']=='SE' ){
            echo '<script>document.location="se_refund.php";</script>';
        }
        elseif($row['gender']=='female' && $row['year']=='SE' ){
            echo '<script>document.location="se_refund2.php";</script>';
        }
        elseif($row['gender']=='male' && $row['year']=='TE' ){
            echo '<script>document.location="te_refund.php";</script>';
        }
        elseif($row['gender']=='female' && $row['year']=='TE' ){
            echo '<script>document.location="te_refund2.php";</script>';
        }
    } else {
        $errorMsg = 'Could not Find Any Record';
    }
}

?>


