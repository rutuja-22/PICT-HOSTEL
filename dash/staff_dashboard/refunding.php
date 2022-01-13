
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
        }
        elseif($row['gender']=='female' ){
            echo '<script>document.location="refund2.php";</script>';
        }
        
    } else {
        $errorMsg = 'Could not Find Any Record';
    }
}

?>

