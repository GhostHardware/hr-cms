<?php
error_reporting(E_ALL);
ini_set('display_errors', true);

$dsn = 'mysql:dbname=dev_cms;host=127.0.0.1';
$user = 'root';
$password = '1234';

function getDBInfo($dsn, $user, $password) // to do: make it work on other sql queries
{
	try
	{
		$dbh = new PDO($dsn, $user, $password);
		$query = $dbh->prepare('SELECT * FROM workers WHERE  user_id>? AND user_id<?');
		$query->execute(array(0,2));

		while ($var = $query->fetch(PDO::FETCH_ASSOC))
		{
			echo '<pre>';
			var_dump($var);
		}
	}
	catch(PDOException $e)
	{
		echo 'Connection failed'. $e->getMessage();
	}
}

getDBInfo($dsn, $user, $password);
