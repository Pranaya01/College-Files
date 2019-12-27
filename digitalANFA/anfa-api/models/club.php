<?php
    class Club {
        //Databse Stuff
        private $con;
        private $table_name = 'club';

        public $club_id;
        public $club_name;
        public $club_description;
        public $club_founded_date; 
        public $club_address; 
        public $club_email;
        public $club_affiliation;
        public $category_value;
        public $home_jersey_color;
        public $away_jersey_color;
        public $club_sponsor;
        public $kit_sponsor;
        public $club_logo;
        
        //Constructor with DB Connection
        public function __construct($data) {
            $this->con = $data;
        }
        //Getting the News
        public function clubDetail(){
            //Creating an query 
            $query = 'SELECT club_id, club_name, club_description, club_founded_date, club_address, club_email, club_affiliation, cv.category_value, home_jersey_color, away_jersey_color, club_sponsor, kit_sponsor, club_logo 
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

