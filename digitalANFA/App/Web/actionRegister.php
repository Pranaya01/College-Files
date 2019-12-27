<?php
require 'config.php';
//start_session();

if(isset($_POST['Register']))
{
    //removing backslashes
    $username = strpslashes($_POST['username']);
    //escapin special characters in string
    $username = mysqli_real_escape_string($conn_db, $username);
    $firstname = strpslashes($_POST['fname']);
    $firstname = mysqli_real_escape_string($conn_db, $firstname);
    $lastname = strpslashes($_POST['lname']);
    $lastname = mysqli_real_escape_string($conn_db, $lastname);
    $email = strpslashes($_POST['email']);
    $email = mysqli_real_escape_string($conn_db, $email);
    $user_role = strpslashes($_POST['cvalue_id']);
    $user_role = mysqli_real_escape_string($conn_db, $user_role);
    $password = stripcslashes($_POST['password']);
    $password = mysqli_real_escape_string($conn_db, $password);


    

}