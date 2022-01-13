<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Display PDF</title>
  </head>

  <body>
    <div class="div1">
    <?php
     session_start();
     include 'config.php';
     if (isset($_GET['ids'])) {
      $id = $_GET['ids'];
      $sql = "select * from registration where id=" . $id;
      $result = mysqli_query($conn, $sql);
      while ($row = $result->fetch_assoc()) {
  
    ?>
         <embed type="application/pdf" src="../../pdf/<?php echo $row['address_doc'];?>" width= "100%" height="1000" >
     <?php

      } 
  }
?>


    </div>

  </body>
</html>