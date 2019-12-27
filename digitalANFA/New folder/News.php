<?php
    class News {
        //Database contents
        private $connection;
        private $table = 'news';

        //Properties of News
        public $news_id;
        public $news_title;
        public $news_description;
        public $new_image;
        public $createdDate;

        //Making constructor with Database
        public function __construct($d)
        {
            $this->connection = $d;
        }
        //Getting the news data
        public function interpret()
        {
            //creating an query
            $query = 'SELECT * FROM  $this->table' ;

            //preparing the statement
            $stmt = $this->connection->prepare($query);
            //executing the query 
            $stmt->execute();
            return $stmt;
        }
    }