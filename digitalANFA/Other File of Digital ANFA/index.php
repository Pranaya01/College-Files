<?php
//makes every sort of request from everywhere
header('Access-Control-Allow-Origin: *');
//allowing the methods
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT');

//checking the methods whatever we are dealing with
$method_check = $_SERVER['REQUEST_METHOD'];
//echo $method_check;

//grabing the url that we are dealing with
$uri_request = $_SERVER['REQUEST_URI'];
//getting the requesting url
//echo $url_request;



//creating variable to check the tables
//arrays that will be in our table
$tables = ['news_feed'];

//trimminng the last '/'
//method to trim the last word

$url = rtrim($uri_request, '/');
//function to filter the url
$url = filter_var($uri_request, FILTER_SANITIZE_URL);
//getting prime parameter from URl
//file location or directory in index of array
//below line code is exploding the string and converting it into array
$url = explode('/', $url);
//print_r ($url);

//getting the table name
$tableName = (string) $url[3];
print_r($tableName);

//getting the post from database using id
//dealing with routes
if ($url[4] != null)
{
    $id = (int) $url[4];
}
else 
{
    $id = null;
}
//checking the table here exists in database table or not
if (in_array($tableName, $tables))
{
    //include that api routes
}
else{
    echo 'Table does not exists';
}

