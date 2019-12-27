<?php 
//headers
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

//including database and nmodels connectin
include '../config/Database.php';
include '../models/club.php';

//Instatiate Database Connection
$database = new Database();
//connecting database connection
$data = $database->connect();

//Instantiating new object
$club = new Club($data);
//making call of read method in News class
$outcome= $club->clubDetail();

//Making row count
$count = $outcome->rowCount();

//checking the news
if ($count > 0)
{
    //Initializing an array
    $club_arr = array();

    while($row = $outcome->fetch(PDO::FETCH_ASSOC))
    {
        //extracting the row
        extract($row);

        //creating news object for each news
        $club_news = array(
            'club_id' => $club_id,
            'club_name' => $club_name,
            'club_description' => html_entity_decode($club_description),
            'club_founded_date' => $club_founded_date,
            'club_address' => $club_address,
            'club_email' => $club_email,
            'club_affiliation' => $club_affiliation,
            'category_value' => $category_value,
            'home_jersey_color'=> $home_jersey_color,
            'away_jersey_color' => $away_jersey_color,
            'club_sponsor' => $club_sponsor,
            'kit_sponsor' => $kit_sponsor,
        );
        //pusing the obj_news data into $news_arr
        array_push($club_arr, $club_news);
    }
    echo json_encode($club_arr);
}
else {
    //if no news found
    echo json_encode(
        array('Message' => 'Sorry No News Found')
    );
}


?>