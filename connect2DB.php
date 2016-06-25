<?php
	
	function connect2DB()
	{
	    $db_connection =  mysqli_connect("localhost", "root", "admin");
	
        	if (!$db_connection) {
			echo 'conexion';
		    die('No pudo conectarse: ' . mysqli_error($db_connection));
		}
		//--------------------------------------------------------------
		mysqli_select_db($db_connection,"Rhinored") or die(mysqli_error($db_connection));
		return $db_connection;

	}
?>