
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/style.css">
</head>
<body>
<?php
    require 'config.php';
    include('header.php');
?>
    <div class="form">
        <h1>Register</h1>
        <form action="" method="post" name="login">
            <table>
                <tr>
                    <td>Username: <input type="text" name="username" placeholder = "Enter your Username"></td>
                </tr>
                <tr>
                    <td>First Name: <input type="text" name="fname" placeholder = "Enter your First Name"></td>
                </tr>
                <tr>
                    <td>Last Name: <input type="text" name="lname" placeholder = "Enter your Last Name"></td>
                </tr>
                <tr>
                    <td>Email: <input type="text" name="email" placeholder = "Enter your Email Address"></td>
                </tr>
                <tr>
                    <td>
                        Select User Type: <select name="cvalue_id">
                        <option value="100">Admin</option>
                        <option value="101">User</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Password: <input type="password" name="password" placeholder = "Enter your Password"></td>
                </tr>
                <tr>
                    <td colspan"2" align="center"> 
                        <input name="Register" type="submit" name="Register" />
                    </td>
                </tr>
            </table>
        </form>
        <br>
       <!-- <p>Don't have account Register?<a href="register.php">Register</p>-->
    </div>
</body>



</body>
</html>