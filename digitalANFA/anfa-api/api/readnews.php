<?php 
//headers
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

//including database and nmodels connectin
include '../config/Database.php';
include '../models/news.php';

//Instatiate Database Connection
$database = new Database();
//connecting database connection
$data = $database->connect();

//Instantiating new object
$news = new News($data);
//making call of read method in News class
$outcome= $news->newsRead();

//Making row count
$count = $outcome->rowCount();

//checking the news
if ($count > 0)
{
    //Initializing an array
    $news_arr = array();

    while($row = $outcome->fetch(PDO::FETCH_ASSOC))
    {
        //extracting the row
        extract($row);

        //creating news object for each news
        $obj_news = array(
            'news_id' => $news_id,
            'category_value' => $category_value,
            'news_title' => $news_title,
            'news_description' => html_entity_decode($news_description),
            'news_image' => $news_image,
            'createdDate' => $createdDate
        );
        //pusing the obj_news data into $news_arr
        array_push($news_arr, $obj_news);
    }
    echo json_encode($news_arr);
}
else {
    //if no news found
    echo json_encode(
        array('Message' => 'Sorry No News Found')
    );
}


?>