<?php
include("action/db.php");
//session_start();

$username = $_POST['username'];
$pass = $_POST['password'];

$query = "SELECT username, user_password FROM users WHERE username='$username' && user_password='$pass'";
$outcome = mysqli_query($db_conn, $query);

$num = mysqli_num_row($outcome);

if($num == 1){ 
    $_SESSION['username'] = $username;
   // $_SESSION['password'] = $
   header('location: dashboard.php');
}
else {
    header('location:index.php');
}