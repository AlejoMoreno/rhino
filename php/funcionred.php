<?php
	require_once('../connect2DB.php');
	$db_connection = connect2DB();
	if($id_rhinoemp==''){
		$id_rhinoemp = 1;
	}
	
	$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `id_rhinoemp` = '$id_rhinoemp'; ") or die(mysqli_error($db_connection));
	if ($queryNivel->num_rows > 0) {
		while($row = $queryNivel->fetch_assoc()) {
			//echo 'Iden: '.$row['num_identificacion'].'<br>';
			//echo 'Nivel: '.$row['nivel'];
			$cedula = $row['cedulaPatrocinador'];
			$fecha_ingreso = $row['fecha_ingreso'];
		}
	}

	//echo '<br><br>primer nivel<br>';
	$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `num_identificacion` LIKE  '$cedula'; ") or die(mysqli_error($db_connection));
	$primerNivel = array();
	if ($queryNivel->num_rows > 0) {
		while($row = $queryNivel->fetch_assoc()) {
			//echo 'Iden: '.$row['num_identificacion'].' ';
			//echo 'Nivel: '.$row['nivel'].' ';
			array_push($primerNivel, $row['cedulaPatrocinador']);
			array_push($primerNivel, $row['codigoNuevoUsuario']);
		}
		if(sizeof($primerNivel)<3){
			$cont = sizeof($primerNivel)-9;
			//echo 'faltan por registrar'.$cont.', ve por ellos.';
		}
	}

	//echo '<br><br>segundo nivel <br>';
	$segundoNivel = array();
	foreach ($primerNivel as $key => $value) {
		$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `num_identificacion` LIKE  '$value'; ") or die(mysqli_error($db_connection));
		if ($queryNivel->num_rows > 0) {
			while($row = $queryNivel->fetch_assoc()) {
	//			echo 'Iden: '.$row['num_identificacion'].' ';
	//			echo 'Nivel: '.$row['nivel'].' ';
				array_push($segundoNivel, $row['cedulaPatrocinador']);
				array_push($segundoNivel, $row['codigoNuevoUsuario']);
			}
		}
		
	}
	if(sizeof($segundoNivel)<9){
		$cont = sizeof($segundoNivel)-9;
	//	echo 'faltan por registrar'.$cont.', ve por ellos.';
	}


	//echo '<br><br>Tercer nivel <br>';
	$tercerNivel = array();
	foreach ($segundoNivel as $key => $value) {
		$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `num_identificacion` LIKE  '$value'; ") or die(mysqli_error($db_connection));
		if ($queryNivel->num_rows > 0) {
			while($row = $queryNivel->fetch_assoc()) {
	//			echo 'Iden: '.$row['num_identificacion'].' ';
	//			echo 'Nivel: '.$row['nivel'].' ';
				array_push($tercerNivel, $row['cedulaPatrocinador']);
				array_push($tercerNivel, $row['codigoNuevoUsuario']);
			}
		}
	}
	if(sizeof($tercerNivel)<27){
		$cont = sizeof($tercerNivel)-27;
	//	echo 'faltan por registrar'.$cont.', ve por ellos.';
	}

	//echo '<br><br>Cuarto nivel <br>';
	$cuartoNivel = array();
	foreach ($tercerNivel as $key => $value) {
		$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `num_identificacion` LIKE  '$value'; ") or die(mysqli_error($db_connection));
		if ($queryNivel->num_rows > 0) {
			while($row = $queryNivel->fetch_assoc()) {
	//			echo 'Iden: '.$row['num_identificacion'].' ';
	//			echo 'Nivel: '.$row['nivel'].' ';
				array_push($cuartoNivel, $row['cedulaPatrocinador']);
				array_push($cuartoNivel, $row['codigoNuevoUsuario']);
			}
		}
	}
	if(sizeof($cuartoNivel)<89){
		$cont = sizeof($cuartoNivel)-89;
	//	echo 'faltan por registrar'.$cont.', ve por ellos.';
	}

	//echo '<br><br>Quinto nivel <br>';
	$quintoNivel = array();
	foreach ($cuartoNivel as $key => $value) {
		$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `num_identificacion` LIKE  '$value'; ") or die(mysqli_error($db_connection));
		if ($queryNivel->num_rows > 0) {
			while($row = $queryNivel->fetch_assoc()) {
	//			echo 'Iden: '.$row['num_identificacion'].' ';
	//			echo 'Nivel: '.$row['nivel'].' ';
				array_push($quintoNivel, $row['cedulaPatrocinador']);
				array_push($quintoNivel, $row['codigoNuevoUsuario']);
			}
		}
	}
	if(sizeof($quintoNivel)<243){
		$cont = sizeof($quintoNivel)-243;
	//	echo 'faltan por registrar'.$cont.', ve por ellos.';
	}

	//echo '<br><br>sexto nivel <br>';
	$sextoNivel = array();
	foreach ($quintoNivel as $key => $value) {
		$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `num_identificacion` LIKE  '$value'; ") or die(mysqli_error($db_connection));
		if ($queryNivel->num_rows > 0) {
			while($row = $queryNivel->fetch_assoc()) {
	//			echo 'Iden: '.$row['num_identificacion'].' ';
	//			echo 'Nivel: '.$row['nivel'].' ';
				array_push($sextoNivel, $row['cedulaPatrocinador']);
				array_push($sextoNivel, $row['codigoNuevoUsuario']);
			}
		}
	}
	if(sizeof($sextoNivel)<729){
		$cont = sizeof($sextoNivel)-729;
	//	echo 'faltan por registrar'.$cont.', ve por ellos.';
	}

	//echo '<br><br>septimo nivel <br>';
	$septimoNivel = array();
	foreach ($sextoNivel as $key => $value) {
		$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `num_identificacion` LIKE  '$value'; ") or die(mysqli_error($db_connection));
		if ($queryNivel->num_rows > 0) {
			while($row = $queryNivel->fetch_assoc()) {
	//			echo 'Iden: '.$row['num_identificacion'].' ';
	//			echo 'Nivel: '.$row['nivel'].' ';
				array_push($septimoNivel, $row['cedulaPatrocinador']);
				array_push($septimoNivel, $row['codigoNuevoUsuario']);
			}
		}
	}
	if(sizeof($septimoNivel)<2187){
		$cont = sizeof($septimoNivel)-2187;
	//	echo 'faltan por registrar'.$cont.', ve por ellos.';
	}

	//estado tres significa que ya completo todos los niveles 
	if(sizeof($septimoNivel)!=0){
		$queryAcutualizaPatrocinador = "UPDATE  `rhinored`.`rhinoempresario` SET  `estado` =  '3' WHERE  `rhinoempresario`.`id_rhinoemp` = '$id' LIMIT 1 ";	 
		mysqli_query($db_connection, $queryAcutualizaPatrocinador);
	}

	if(sizeof($septimoNivel)>0) {$level = 7;}
	elseif (sizeof($sextoNivel)>0) {$level = 6;}
	elseif (sizeof($quintoNivel)>0) {$level = 5;}
	elseif (sizeof($cuartoNivel)>0) {$level = 4;}
	elseif (sizeof($terceroNivel)>0) {$level = 3;}
	elseif (sizeof($segundoNivel)>0) {$level = 2;}
	elseif (sizeof($primeroNivel)>0) {$level = 1;}
	else{$level = 0;}

	$redMultinivelCedula = array($primerNivel[0],$segundoNivel[0],$tercerNivel[0],$cuartoNivel[0],$quintoNivel[0],$sextoNivel[0],$septimoNivel[0] );
	$redMultinivelCodigo = array($primerNivel[1],$segundoNivel[1],$tercerNivel[1],$cuartoNivel[1],$quintoNivel[1],$sextoNivel[1],$septimoNivel[1] );


?>