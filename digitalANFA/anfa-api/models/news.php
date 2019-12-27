<?php
    class News {
        //Database Stuff
        private $con;
        private $table_name = 'news';
        //News Properties
        public $news_id;
        public $category_value;
        public $news_title;
        public $news_description;
        public $news_image;
        public $createdDate;

        //Constructor with DB Connection
        public function __construct($data) {
            $this->con = $data;
        }
        //Getting the News
        public function newsRead(){
            //Creating an query 
            $query = 'SELECT n.news_id, cv.category_value, n.news_title, n.news_description, n.news_image, n.createdDate 
                            FROM ' . $this->table_name . ' n
                            JOIN category_value cv
                            USING(cvalue_id)';
            //preparing the statement
            $prep = $this->con->prepare($query);
            //Executing the query
            $prep->execute();
            return $prep;

        }
        
    }