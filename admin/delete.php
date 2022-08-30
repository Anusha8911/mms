


<?php
$host = "localhost";
$dbuser = "rootdb";
$dbpass = "MySqlClient";
$db = "mmsslrdb";
// Create connection
$conn = new mysqli($host, $dbuser, $dbpass, $db);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// sql to delete a record
$sql = "DELETE FROM registration WHERE id=3";

if (mysqli_query($conn, $sql)) {
echo "Record deleted successfully";
} else {
echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);
?>
</html>