<?php
session_start();
$tipo = $_SESSION['type'];
$id = $_SESSION['id'];

require_once('../connect2DB.php');
$db_connection = connect2DB();
$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `id_rhinoemp` = '$id'; ") or die(mysqli_error($db_connection));
if ($queryNivel->num_rows > 0) {
	while($row = $queryNivel->fetch_assoc()) {
	    $nombresApellidos = $row['nombre'].' '.$row['apellidos'].'<br>';
		$cantidadRhinoEmpresarios = $row['nivel'];
		$codigo = $row['codigoNuevoUsuario'];
		$cedula = $row['num_identificacion'];
		$fecha_ingreso = $row['fecha_ingreso'];
		$tipo_usuario = $row['tipo_usuario'];
		$usuario = $row['usuario'];
	}
}


//verificacion de contafor regresivo para compra de productos
$hoy = date("Y-m-d"); 
$fecha = date("Y-m-d", strtotime($fecha_ingreso));


//verificacion rhinoPrivilegios
$queryPrivilegios = mysqli_query($db_connection,"SELECT COUNT( * ) AS contador FROM  `privilegios`  WHERE  `id_rhino` ='$id' AND  `activo` =1 ") or die(mysqli_error($db_connection));
if ($queryPrivilegios->num_rows > 0) {
	while($row = $queryPrivilegios->fetch_assoc()) {
		$rhinoPActivos=$row['contador'];
	}
}
$queryPrivilegios = mysqli_query($db_connection,"SELECT COUNT( * ) AS contador FROM  `privilegios`  WHERE  `id_rhino` ='$id' AND  `activo` =0 ") or die(mysqli_error($db_connection));
if ($queryPrivilegios->num_rows > 0) {
	while($row = $queryPrivilegios->fetch_assoc()) {
		$rhinoPGastados=$row['contador'];
	}
}

//verificacion de niveles y arbol de rhino empresario

require_once('../connect2DB.php');
$db_connection = connect2DB();
$id_rhinoemp = $id;
include('funcionred.php');


print_r($redMultinivelCodigo);
print_r($redMultinivelCedula);

//echo '<h1>'.$primerNivel[0].'</h1>';

?>