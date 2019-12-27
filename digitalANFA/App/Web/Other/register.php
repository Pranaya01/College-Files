<?php
require 'action/db.php';
$uname = $fname = $lname = $uemail = $user_password = '';

//if(isset($_POST['userRegister']))

    $uname = $_POST['username'];
    $fname = $_POST['firstname'];
    $lname = $_POST['lname'];
    $uemail = $_POST['email'];
    $upass= $_POST['user_password'];
    $user_password = MD5($pass);

    $query = "INSERT INTO users (username, firstname, lastname, email, user_password) 
                VALUES ('$username', '$firstname', '$lastname', '$email', '$password')";

    $outcome = mysqli_query($db_conn, $query);
    if ($outcome)
    {
        header("Location: index.php");
    }
    else{
        echo "Error: ".$query;
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Register</title>
    <link rel="stylesheet" href="assets/style.css">
</head>
<?php
    include('includes/header.php');
?>
<body>

    <div class="form">
        <h1>Register</h1>
        <br>
        <br>
        <form action="" method="post" name="login">
            <label>Username:</label>
            <br>
            <input type="text" name="username" placeholder="Enter your username"  required />
            <br>
            <label>First Name:</label>
            <br>
            <input type="text" name="fname" placeholder="Enter your first name"  required />
            <br>
            <label>Last Name:</label>
            <br>
            <input type="text" name="lname" placeholder="Enter your last name"  required />
            <br>
            <label>Email Address:</label>
            <br>
            <input type="text" name="email" placeholder="Enter your Email Address"  required />
            <br>
            <label>Password </label>
            <input type="password" name="password" placeholder="Enter your password"  required />
            <br>
            <input name="submit" type="submit" name="userRegister" />
        </form>
        <br>
       <!-- <p>Don't have account Register?<a href="register.php">Register</p>-->
    </div>
</body>



</body>
</html>