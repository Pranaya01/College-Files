<?php
session_start();
require "config.php";

$error_message = "";
$cvalue_id = "";
$category_value = "";

if(isset($_POST['Login']))
{
    $username = $_POST["username"];
    $password = $_POST["password"];

    $query = "SELECT * FROM users u JOIN category_value cv USING(cvalue_id) WHERE username='$username' 
            AND user_password = '$password' ";
    $outcome = mysqli_query($conn_db, $query);
    //$rowCount = mysqli_num_rows($result);

    if(mysqli_num_rows($outcome) > 0)
    {
        while($row = mysqli_fetch_assoc($outcome))
        {
            //$cvalue_id = $row["cvalue_id"];
            //$category_value = $row["category_value"];
            if($row["cvalue_id"] == 100)
            {
                $_SESSION["UserAdmin"] = $row["username"];
                $_SESSION["category_value"] = $row["categoery_value"];

                header('Location: admindashboard.php');
            }
            elseif($row["cvalue_id"] == 101){
                $_SESSION["UserEditor"] = $row["username"];
                header('Location: dashboard.php');
            }
               
            }
        }
    else{
        //echo "Please enter valid Username or Password";
        header("Location: index.php");
    }
}
//echo $cvalue_id;
echo $category_value;
?>