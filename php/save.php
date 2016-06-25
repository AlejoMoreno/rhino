<?php
	//registrar sesión 
$id=1;

require_once('../connect2DB.php');

if( isset($_POST['cedula']) ){ 
	save_rhino();
	//echo "Todos los datos fueron ingresados";
}
elseif (isset($_POST['usuarioOlvido'])) {
	olvidoPass();
}
else {
	echo "NO|Por favor ingrese todos los datos";
}

function save_rhino()
{
	$val_mail = '/^([^ *.:;><%&$?¿?!0-9][\da-zA-Z-_\.]+)@([\da-zA-Z\.-]+)\.([a-zA-Z\.]{2,10})$/';
	$Username1 = $_POST['Username1'];
	$Password1 = $_POST['Password1'];
	$Password2 = $_POST['Password2'];
	$fecha_ingreso = $_POST['fecha_ingreso'];
	$cedulaPatrocinador = $_POST['cedulaPatrocinador'];
	$codigoNuevoUsuario = $_POST['codigoNuevoUsuario'];
	$nombre = $_POST['nomnbre'];
	$apellido = $_POST['apellido'];
	$tipoIdentificacion = $_POST['tipoIdentificacion'];
	$cedula = $_POST['cedula'];
	$genero = $_POST['genero'];
	$municipio = $_POST['municipio'];
	$localidad = $_POST['localidad'];
	$localidad1 = $_POST['localidad1'];
	$fechanaciemiento = $_POST['fechanaciemiento'];
	$telefono = $_POST['telefono'];
	$celular = $_POST['celular'];
	$correo = $_POST['correo'];
	$dir1 = $_POST['dir1'];
	$dir2 = $_POST['dir2'];
	$dir3 = $_POST['dir3'];
	$dir4 = $_POST['dir4'];
	$dir5 = $_POST['dir5'];

	$codigoNuevoUsuario = substr($cedula, 0,-4).substr($nombre, 0,-4);


	$direccion = $dir1.' '.$dir2.' '.$dir3.' '.$dir4.' '.$dir5;

   	$password = md5($Password1);

	$fecha = date("Y-m-d H:i:s"); 
   // $años = $fecha - $fechanaciemiento;
    $a = 3;

    if($Username1==''){	
    	echo "NO|Debe tener un nombre de usuario";
    	exit();
    }
    elseif ($Password1!=$Password2) {
        echo "No!Verifique que las contraseñas sean iguales";
        exit();
    }
    elseif ($nombre=='' || $apellido=='' || $cedula=='' || $telefono=='' || $celular=='' || $correo=='') {
    	echo "NO|Hay campos que no han sido diligenciados. Verifique nombre, apellido, cedula, telefono, correo y celular";
    	exit();
    }
    elseif ($municipio=='MUNICIPIO' || $municipio=='') {
    	echo "NO|Ingrese un municipio adecuado, en caso de no encontrarse el municipio marque la opción <strong>OTRO</strong>.";
    	exit();
    }
    elseif ($cedulaPatrocinador == $cedula) {
    	echo "NO|Usted no puede ser el mismo patrocinador. Verifique los datos de la su identificación o del patrocinador.";
    	exit();
    }
    /*elseif (trim($municipio) !='BOGOTADC') {
    	echo "<script>$('#localidad').prop('disabled', true);</script>";
    	exit();
    }
	elseif ($municipio =='BOGOTA DC') {
    	echo "<script>$('#localidad').prop('disabled', false);</script>";
    	exit();
    }
    elseif ($localidad=='' || $municipio=='LOCALIDAD') {
    	echo "<script>$('#localidad1').prop('disabled', false);</script>";
    	$localidad = $localidad1;
    	exit();
    }
    elseif ($años<18) {
    	echo "NO|Pide permiso a tus padres para realizar esto, habla con nuestros asesores de rhinoRed";
    }
	/**/

    else{
    	$db_connection = connect2DB();
    	//$queryP2 = mysqli_query($db_connection,"SELECT * FROM rhinoempresario WHERE cedulaPatrocinador LIKE '$cedulaPatrocinador' ") or die(mysqli_error($db_connection));
		$queryP = mysqli_query($db_connection,"SELECT * FROM patrocinadores WHERE cedulaPatrocinador LIKE '$cedulaPatrocinador' ") or die(mysqli_error($db_connection));
		$queryO = mysqli_query($db_connection,"SELECT * FROM rhinoempresario WHERE cedulaPatrocinador LIKE '$cedulaPatrocinador' ") or die(mysqli_error($db_connection));
		$queryR = mysqli_query($db_connection,"SELECT * FROM rhinoempresario WHERE codigoNuevoUsuario LIKE '$codigoNuevoUsuario' ") or die(mysqli_error($db_connection));
		$queryI = mysqli_query($db_connection,"SELECT * FROM rhinoempresario WHERE num_identificacion LIKE '$cedula' ") or die(mysqli_error($db_connection));
		$queryU = mysqli_query($db_connection,"SELECT * FROM rhinoempresario WHERE usuario LIKE '$Username1' ") or die(mysqli_error($db_connection));
		$queryY = mysqli_query($db_connection,"SELECT * FROM  rhinoempresario WHERE  num_identificacion LIKE  '$cedulaPatrocinador' AND  `tipo_usuario` NOT LIKE  '1'") or die(mysqli_error($db_connection));
		
		$queryCeduPat = mysqli_query($db_connection,"SELECT * FROM rhinoempresario WHERE  `num_identificacion` LIKE '$cedulaPatrocinador' ") or die(mysqli_error($db_connection));
		if ($queryCeduPat->num_rows > 0) {
			while ($row = $queryCeduPat->fetch_assoc()) {
				$codigo_patrocinador=$row['codigoNuevoUsuario'];
				$nivelPatrocinador = $row['nivel'];
			}
		}
		//echo $queryP->num_rows;
		//echo $queryR->num_rows;
		//echo $queryI->num_rows;

		if( $queryP->num_rows == 0 ){
			echo 'NO|Tu patrocinador NO existe, verifica la cedula de tu patrocinador antes de registrarte.';
			exit();
		}

		elseif( $queryO->num_rows >= 3 ){
			echo 'NO|El patrocinador no puede tener mas de 3 personas directas, Consulta con tu patrocinador para que el te indique debajo de quien ubicarte.';
			exit();
		}

		elseif ($queryI->num_rows >= 1) {
			echo 'NO|El número de identificacion YA existe. Verifica si en algún momento has tenido la targeta RhinoRed o verifica tu usuario y contraseña en la sección olvido contraseña';
			exit();
		}

		elseif ($queryY->num_rows >= 1) {
			echo 'NO|El Patrocinador No tiene perfil para hacer una red';
			exit();
		}

		elseif ($queryU->num_rows >= 1) {
			echo 'NO|El usuario ya existe verifica con otro usuario. ';
			exit();
		}
		
		else { // todo esta correcto, por lo tanto los datos se pueden almacenar
			$querySave = "INSERT INTO  `rhinored`.`rhinoempresario` (
			`id_rhinoemp` ,
			`cedulaPatrocinador` ,
			`codigoNuevoUsuario` ,
			`num_identificacion` ,
			`nombre` ,
			`apellidos` ,
			`fecha_nacimiento` ,
			`direccion` ,
			`municipio` ,
			`localidad` ,
			`correo` ,
			`telefono` ,
			`celular` ,
			`fecha_ingreso` ,
			`tipo_identificacion` ,
			`genero` ,
			`usuario` ,
			`password` ,
			`tipo_usuario` ,
			`estado` ,
			`nivel`,
			`codigo_patrocinador`
			)
			VALUES (
			NULL ,  '$cedulaPatrocinador',  '$codigoNuevoUsuario',  '$cedula',  '$nombre',  '$apellido',  '$fechanaciemiento',  '$direccion',  '$municipio',  '$localidad',  '$correo',  '$telefono',  '$celular',  '$fecha', '$tipoIdentificacion',  '$genero',  '$Username1',  '$password',  '0',  '1',  '0', '$codigo_patrocinador'
			);"; 
			mysqli_query($db_connection, $querySave);

			echo $codigo_patrocinador;

			$nivelPatrocinador = $nivelPatrocinador + 1;

			mysqli_query($db_connection, "UPDATE  `rhinored`.`rhinoempresario` SET  `nivel` =  '$nivelPatrocinador' WHERE `num_identificacion` LIKE '$cedulaPatrocinador' ");

			//insertar patrocinador en tabla patrocinador 
			$querySavePatrocinador = "INSERT INTO  `rhinored`.`patrocinadores` (
			`id` ,
			`cedulaPatrocinador` ,
			`nivel` ,
			`fecha_ingreso`
			)
			VALUES (
			NULL ,  '$cedula',  '0',  '$fecha'
			);";
			mysqli_query($db_connection, $querySavePatrocinador);
			echo "SI| Listo cumple con todo. Guardado Satisfactoriamente
			<div id='respuesta'><h2>Bienvenido</h2><p>El código del nuevo usuario es: ".$codigoNuevoUsuario."</p><br>Acerquese a la oficina para reclamar la targeta Rhino Red</div> 
			<script type='text/javascript'>

			$(document).ready(function(){
  				$('#respuesta').hide(5000);
  			});

			function redireccionar(){
			  window.location ='index.php';
			} 
			setTimeout ('redireccionar()', 5000); //tiempo expresado en milisegundos
			</script>"; 

			
			
			}
		mysqli_close($db_connection);
    }
}

function olvidoPass(){
	$usuarioOlvido = $_POST['usuarioOlvido'];
	$passwordOlvido = $_POST['passwordOlvido'];

	$db_connection = connect2DB();
	$queryBuscarUser = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `usuario` LIKE  '$usuarioOlvido'; ") or die(mysqli_error($db_connection));
	$queryBuscarIde = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `num_identificacion` LIKE  '$usuarioOlvido' ") or die(mysqli_error($db_connection));
	$queryBuscarCodi = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `codigoNuevoUsuario` LIKE  '$usuarioOlvido' ") or die(mysqli_error($db_connection));
	if ($queryBuscarUser->num_rows > 0) {
		while($row = $queryBuscarUser->fetch_assoc()) {
		    $id = $row['id_rhinoemp'];
		    $correo = $row['correo'];
		}
	}
	elseif ($queryBuscarIde->num_rows > 0) {
		while($row = $queryBuscarIde->fetch_assoc()) {
		    $id = $row['id_rhinoemp'];
		    $correo = $row['correo'];
		}
	}
	elseif ($queryBuscarCodi->num_rows > 0) {
		while($row = $queryBuscarCodi->fetch_assoc()) {
		    $id = $row['id_rhinoemp'];
		    $correo = $row['correo'];
		}
	}
	else{
		echo "NO| el usuario no existe en la base de datos.";
	}
	if($id==''){
		echo "Verifique";
	}
	else{
		$pass = md5($passwordOlvido);	
		$queryAcutualizaPatrocinador = "UPDATE  `rhinored`.`rhinoempresario` SET  `password` =  '$pass' WHERE  `rhinoempresario`.`id_rhinoemp` ='$id' ";
		mysqli_query($db_connection, $queryAcutualizaPatrocinador);
		echo "OK registro ";
	}
}

?>
