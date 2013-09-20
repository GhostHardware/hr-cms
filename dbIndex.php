<?php
error_reporting(E_ALL);
ini_set('display_errors', true);

class Database {
	// dummy values, switch with real ones
	protected static $name = 'mysql:dbname=dev_cms;host=127.0.0.1';
	protected static $user = 'root';
	protected static $password = '1234';

	public function __construct() {
		$this->db_name = self::$name;
		$this->db_user = self::$user;
		$this->db_password = self::$password;
	}

	public function connect() {
		try {
			$dbh = new PDO($this->db_name, $this->db_user, $this->db_password);
			return $dbh;
		}
		catch (PDOException $e) {
			echo 'Connection failed '. $e->getMessage();
			die();
		} 
	}

	public function getRow()
	{
		try
		{
			$dbh = $this->connect();
			foreach($dbh->query('SELECT * from workers') as $row) {
				print_r($row);
			}
		}
		catch(PDOException $e)
		{
			echo 'Error '. $e->getMessage();
			die();
		}
	}
}
