<?php
error_reporting(E_ALL);
ini_set('display_errors', true);

require_once "dbIndex.php";

$db = new Database();

$db->connect();
$db->getRow();
?>
