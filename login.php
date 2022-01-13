<?php

session_start();

include 'config.php';



if(isset($_POST['submit'])) {
	$email = mysqli_real_escape_string($conn, $_POST['email']);
	$pass = mysqli_real_escape_string($conn, md5($_POST['password']));

	if($email == "" || $pass == "") {
		echo "Either email or password field is empty.";
		echo "<br/>";
		echo "<a href='index.html'>Go back</a>";
	} else {
		$result = mysqli_query($conn, "SELECT * FROM registration WHERE email='$email' AND pass='$pass' AND valid='Yes'")
					or die("Could not execute the select query.");
		
		$row = mysqli_fetch_assoc($result);
		
		if(is_array($row) && !empty($row)) {
			$validuser = $row['email'];
			$_SESSION['valid'] = $validuser;
			$_SESSION['email'] = $row['email'];
			$_SESSION['id'] = $row['id'];
		} else {
        	echo "<script type='text/javascript'>alert('Either email OR password invalid Or You are not verified for login!!'); document.location = 'index.php';</script>";
		}
		if(isset($_SESSION['valid'])) {
		    if($row['cat_id']==1)
			{
				// $_SESSION['first_name'] = $row[0];
                $_SESSION['id'] = $row['id'];
				header("Location:dash/officer_dashboard/dashboard.php");
			}
            elseif($row['cat_id'] == 2){
                // $_SESSION['first_name'] = $row[0];
                $_SESSION['id'] = $row['id'];
				header("Location:dash/staff_dashboard/dashboard.php");
            }
            elseif($row['cat_id'] == 3){
                // $_SESSION['first_name'] = $row[0];
                $_SESSION['id'] = $row['id'];
				header("Location:dash/examples/dashboard.php");
            }
            elseif($row['cat_id'] == 4){
                // $_SESSION['first_name'] = $row[0];
                $_SESSION['id'] = $row['id'];
				header("Location:dash/mess-dashboard/dashboard.php");
            }
            else{
                echo "<script>alert('oops! Something went Wrong.')</script>";
            }
		
		}
	}
} 
?>