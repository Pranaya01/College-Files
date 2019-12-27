<?php 
    session_start();
    if(!isset($_SESSION['UserAdmin']))
    {
        header('Location: index.php');
    }
    /*
    if(!isset($_SESSION['cvalue_id']))
    {
        if($_SESSION['cvalue_id'] != 100){
            header('Location: dashboard.php');
        }
        else {
            header('Locattion: index.php');
        }
    }
    */
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Digital ANFA Admin Dashboard</title>
    <link rel="stylesheet" href="assets/style.css">
    <script src="https://kit.fontawesome.com/155e80faaa.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container">
        <div class="leftsidebar">
            <img src="images/anfa-logo.jpg" alt="anfa-logo" height="100" width="100"/>
            <ul>
                <li><a href="#"><i class="far fa-newspaper"></i> User <Table></Table></a></li>

                <li><a href="#"><i class="far fa-newspaper"></i> NewsFeed</a></li>

                <li><a href="#"><i class="fas fa-home"></i>ClubDetail</a></li>

                <li><a href="#"><i class="fas fa-user-alt"></i>PlayerDetail</a></li>
                
                <li><a href="#"><i class="far fa-calendar-alt"></i> Fixtures</a></li>
                
                <li><a href="#"><i class="fas fa-chart-bar"></i>Stastistics</a></li>

                <li><a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a></li>

            </ul>
        </div>
        <h1> Welcome <?php echo $_SESSION['UserAdmin']; ?>
    </div>
    </body>



</body>
</html>