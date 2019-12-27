<?php

class DatabaseConnection
{

    //making function for making database connection
    public static function connect()
    {
        $PDO = new PDO('mysql:host=localhost;dbname=digitalANFA','root', '');
        $PDO->setAttribute(PDO::ATR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
        return $PDO;

    }
    //function for query
    public static function query($query, $parameter = array()){
        //referencing the instance of func connect
        $statement = self::connect()->prepare($query);
        $statement->execute($parameter);

        //checking the query
        if(explode('', $query) [0] == 'SELECT')
        {
            $details = $statement->fetchAll();
            return $details;
        }
    }
}

?>