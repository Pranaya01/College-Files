<?php 
    session_start();
    if(!isset($_SESSION['UserEditor']))
    {
        header('Location: index.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Digital ANFA Dashboard</title>
    <link rel="stylesheet" href="assets/style.css">
    <script src="https://kit.fontawesome.com/155e80faaa.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container">
        <div class="leftsidebar">
            <img src="images/anfa-logo.jpg" alt="anfa-logo" height="100" width="100"/>
            <ul>
                <li><a href="#"><i class="far fa-newspaper"></i>NewsFeed</a></li>

                <li><a href="#"><i class="fas fa-home"></i>Club Detail</a></li>

                <li><a href="#"><i class="fas fa-user-alt"></i>PlayerDetail</a></li>
                
                <li><a href="#"><i class="far fa-calendar-alt"></i>Fixtures</a></li>
                
                <li><a href="#"><i class="fas fa-chart-bar"></i>Stastistics</a></li>

                <li><a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a></li>

            </ul>
        </div>
       <!-- <h1> Welcome <?php echo $_SESSION['LoginUser']; ?>-->

    </div>
    </body>



</body>
</html>