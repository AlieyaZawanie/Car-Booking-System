 <?php

// Set DB parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db_cbs1";

// Create DB Connection
$con = mysqli_connect($servername, $username, $password, $dbname);

// Check DB Connection


if (!$con) {
	echo "Connection failed!";
	exit();
}


?>