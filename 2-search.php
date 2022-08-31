<?php
session_start();
include('includes/config.php');


// (A) DATABASE CONFIG - CHANGE TO YOUR OWN!
/*define("host", "localhost");
define("db", "mmsslrdb");
define("DB_CHARSET", "utf8");
define("dbuser", "rootdb");
define("dbpass", "MySqlClient");*/

// (B) CONNECT TO DATABASE
try {
  $pdo = new PDO(
    "mysql:host=".$host.";charset=".DB_CHARSET.";dbname=".$db,
    $dbuser, $dbpass, [
      PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
      PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]
  );
} catch (Exception $ex) { exit($ex->getMessage()); }

// (C) SEARCH
$stmt = $pdo->prepare("SELECT * FROM `registration` WHERE `regno` LIKE ? OR `title` LIKE ?");
$stmt->execute(["%".$_POST["search"]."%", "%".$_POST["search"]."%"]);
$results = $stmt->fetchAll();
if (isset($_POST["ajax"])) { echo json_encode($results); }
?>