<?php
class Database{
    //Passing database
    private $host = 'localhost';
    private $db_name = 'digitalANFA';
    private $username = 'root';
    private $password = '';
    private $con;
    //making function connect
    public function connect(){
        $this->con = null;
        try {
            $this->con = new PDO('mysql:host=' . $this->host . ';dbname=' . $this->db_name, $this->username, $this->password);
            $this->con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        catch(PDOException $error){
            echo 'Connection Error: ' . $error->getMessage();
        }
        return $this->con;
    }
}