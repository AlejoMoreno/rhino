<?php
	session_start();
	require_once('../connect2DB.php');

	 if(isset($_POST['username']) && isset($_POST['password']) && isset($_POST['email']) && isset($_POST['phone']) ){ 
		register();
	}
	else {
		login();		
	}

	function login()
	{
		$username=$_POST['username'];
		$password=md5($_POST['password']);

		$db_connection = connect2DB();
		$bill_user = mysqli_query($db_connection,"SELECT * FROM rhinoempresario WHERE usuario = '$username' AND password = '$password'") or die(mysqli_error($db_connection));
		
		if($bill_user->num_rows == 0){
			echo 'El usuario y/o la contraseña son incorrectos. Por favor verifique los datos';
			exit();
		}

		elseif ($bill_user->num_rows == 1) {
			while ($row = $bill_user->fetch_assoc()) {
				$id=$row['id_rhinoemp'];
				$_SESSION['id'] = $row["id_rhinoemp"];
				$_SESSION['tipo'] = $row["tipo_usuario"];
			}
			echo 'SI';
			$ip = getRealIP();
			$hoy = date("Y-m-d"); 
			$historial = "INSERT INTO  `rhinored`.`historialsesion` (`id` ,`id_rhino` ,`ip` ,`fecha`)VALUES (null,  '$id',  '$ip',  '$hoy');";
			mysqli_query($db_connection, $historial);
			exit();
		}

		

		mysqli_close($db_connection);

	}

	function getRealIP() {
	 
        if (!empty($_SERVER['HTTP_CLIENT_IP']))
            return $_SERVER['HTTP_CLIENT_IP'];
           
        if (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))
            return $_SERVER['HTTP_X_FORWARDED_FOR'];
       
        return $_SERVER['REMOTE_ADDR'];
	}


?>