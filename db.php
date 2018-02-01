<?php 
	$username = 'root';
	$password = '';
	$name = 'dequy';
	$host = 'localhost';
	$connect = new mysqli($host, $username, $password, $name);
	mysqli_set_charset($connect, 'UTF8');
		 
?>