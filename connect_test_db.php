<?php

$host = "localhost";
$dbuser = "rootdb";
$dbpass = "MySqlClient";
$db = "mmsslrdb";

try
{
    $con=new PDO("mysql:host=$host;dbname=mmsslrdb",$dbuser,$dbpass);
    $con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    //echo 'connected';
}
catch(PDOException $e)
{
    echo '<br>'.$e->getMessage();
}
     
?>