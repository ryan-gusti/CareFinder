<?php 

$server		= "localhost"; // adjust the server name
$user		= "bangryan_cari"; // adjust the username
$password	= "Programmer404"; // adjust the password
$database	= "bangryan_carirumahsakit"; // adjust the target databese

$con = mysqli_connect($server, $user, $password, $database);
if (mysqli_connect_errno()) {
	echo "Failed to connect MySQL: " . mysqli_connect_error();
}

?>