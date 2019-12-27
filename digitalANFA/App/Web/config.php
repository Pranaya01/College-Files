<?php
$servername = "localhost";
$username = "root";
$password = "";
$db_name = "digitalANFA";

$conn_db = mysqli_connect("$servername", "$username", "$password", "$db_name");

if(!$conn_db)
{
    echo "Connection Error";
}
