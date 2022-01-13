<?php
include('config.php');


?>
<!DOCTYPE html>
<html lang="en">

<head>
</head>

<body class="light-edition">
    <!-- Navbar -->

    <!-- End Navbar -->


    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title">Book Your Room Now</h4>
                        </div>
                        <div class="card-body">
                            <?php
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

                            if (isset($_POST['submit'])) {
                                $id = $_SESSION['id'];
                                $yname = $_POST['F_name'];
                                $regid = $_POST['reg_no'];
                                $cgpa = $_POST['cgpa'];
                                $city = $_POST['city'];
                                $roomno1 = $_POST['room1'];
                                $roomno2 = $_POST['room2'];
                                // $roomno3 = $_POST['room3'];
                                $sql = "insert into roomchange(name,regid,city,cgpa,room1,room2,room3)values ('$yname','$regid','$cgpa','$city','$roomno1','$roomno2','$roomno3')";
                                $result = mysqli_query($conn, $sql);
                                if ($result) {
                                    echo "<script>alert('Req sended Successfully!!');document.location='./dashboard.php';</script>";
                                } else {
                                    echo "<script>alert('something went wrong!!');document.location='sebookings.php';</script>";
                                }
                            }
                            ?>
                            <form id="main" method="post" action="seroom.php">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Your Name</label>
                                            <input type="text" class="form-control" name="F_name" value="<?php echo $row['F_name'];
                                                                                                            echo ' ';
                                                                                                            echo $row['L_name']; ?>" required="">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Registration ID</label>
                                            <input type="text" class="form-control" name="reg_no" value="<?php echo $row['reg_no']; ?>" required="">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">City</label>
                                            <input type="text" class="form-control" name="city" value="<?php echo $row['city']; ?>" required="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">Enter the First year's CGPA</label>
                                            <input type="text" class="form-control" name="cgpa" required="">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">1st Preferance of room</label>
                                            <input type="text" class="form-control" name="room2" required="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="bmd-label-floating">2nd Preferance of room</label>
                                            <input type="text" class="form-control" name="room1" required="">
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div>
                                            <label class="bmd-label-floating">Upload First Year's Marksheet here:-</label>
                                            <!-- <input type="file" class="form-control" name="cgpafile" required /> -->
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div>
                                            <input type="file" class="form-control" name="cgpafile" required />
                                        </div>
                                    </div>
                                </div>

                        

                        <button type="submit" name="submit" class="btn btn-primary pull-right">Book Now</button>
                        <!-- <div class="clearfix"></div> -->
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- footer -->


    </div>
    </div>

    <!--   Core JS Files   -->



</body>

</html>