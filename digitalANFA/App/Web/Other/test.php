<!DOCTYPE html>
<html>
<head>  
    <title>Digital ANFA</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/gh/guillaumepotier/Parsley.js@2.9.1/dist/parsley.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    -->
    <!--
    <link rel="stylesheet" href=../style/style.css"/>-->
</head>
<div class="jumbotron" style="margin=10; padding:1rem 1rem;">
    
    <img src="anfa-logo.jpg" class="img-fluid" width="100" alt="Digital ANFA">
    <h1 style="text-align: center;">Digital ANFA</h1>   
<div>
<div class="container">
    <div class="row">
        <div class="col-md-3">

        </div>
        <div class="col-md-6" style="margin-top:20px;">
        <span id="msg"></span>
            <div class="card">
                <div class="card-header">Login</div>
                <div class="card-body">
                    <form id="login" method="POST" action='login'>
                        <div class="form-group">
                            <label>Enter your username:</label>
                            <input type="text" name="uname" id="uname" class="form-control" placeholder="Enter your username"/>
                        </div>
                        <div class="form-group">
                            <label>Enter your Password</label>
                            <input type="password" name="pass" id="pass" class="form-control" placeholder="Enter your Password"/>
                        </div>
                        <input type="login" name="login" value="login" class="btn btn-success">
                    </form>
                    <!--<div align="center">
                        --<p>Click here to Login</p>-
                        <a href="adminLogin.php"> Login</a>
                        -->
                    </div>
            </div>
    </div>
</div>



</html>

