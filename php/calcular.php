<?php
	echo "string";
	require_once('../connect2DB.php');
	//Verificacion reservas 
	if(isset($_POST['codigoVerificacion'])){
		$privilegioVerificacion = $_POST['privilegioVerificacion'];
		$codigoVerificacion = $_POST['codigoVerificacion'];
		$db_connection = connect2DB();
	
		$queryR = mysqli_query($db_connection,"SELECT * FROM  `privilegios` WHERE  `codigo` LIKE  '$codigoVerificacion'") or die(mysqli_error($db_connection));
		$queryE = mysqli_query($db_connection,"SELECT * FROM  `privilegios` WHERE  `codigo` LIKE  '$codigoVerificacion' AND  `privilegio` ='$privilegioVerificacion' AND  `activo` =0 ") or die(mysqli_error($db_connection));
		if( $queryR->num_rows == 0 ){
			echo 'NO|El Rhino-Codigo NO existe';
			exit();
		}
		elseif ($queryE->num_rows > 0) {
			echo 'NO|El Rhino-privilegio Ya fue usado';
		}
		else{
			echo 'SI|El Rhino-privilegio Esta ACTIVO y dispuesto para ser usado';
		}
	}

	elseif ( isset($_POST['codigo']) && isset($_POST['privilegio']) && isset($_POST['consumo']) && isset($_POST['servicio'])){ 
		verificar();
	}
	else {
		echo "NO|Por favor ingrese todos los datos";
	}
	
	function verificar(){

		$codigo=$_POST['codigo'];
		$privilegio=$_POST['privilegio'];
		$rhino_privilegio = $codigo.$privilegio;
		$consumo=$_POST['consumo'];		
		$admi_campo= $_POST['admi_campo'];
		$factura=$_POST['factura'];
		$nombre_cliente=$_POST['nombre_cliente'];
		$cedula_cliente=$_POST['cedula_cliente'];
		$celular_cliente=$_POST['celular_cliente'];
		$clientes=$_POST['clientes'];
		$mean_edad=$_POST['mean_edad'];
		$hombres=$_POST['hombres'];

		/*if (!is_numeric($codigo) || !is_numeric($privilegio)) {
	    	echo "NO|El Rhino-privilegio debe ser númerico.";
			exit();
	    }*/
	    if (!is_numeric($consumo) ) {
	    	echo "NO|El valor de la venta debe ser númerico.";
			exit();
	    }

	    elseif ( empty($_POST['factura'])){
	    	echo "NO| Debe completar todos los campos";
	    	exit();
	    }

	    elseif (!is_numeric($mean_edad)) {
	    	echo "NO| Debe completar todos los campos";
	    	exit();
	    }

	    elseif (!is_numeric($clientes)) {
	    	echo "NO| El campo 'N° de clientes' debe  ser númerico ";
	    	exit();
	    }

	    elseif (strlen($nombre_cliente) < 6) {
	    	echo "NO| El nombre del cliente es demasiado corto ";
	    	exit();
	    }

	    elseif (strlen($admi_campo) < 6) {
	    	echo "NO| El nombre del administrador del campo es demasiado corto ";
	    	exit();
	    }

	    elseif (!is_numeric($cedula_cliente)) {
	    	echo "NO| La cédula del cliente debe ser númerico ";
	    	exit();
	    }

	    elseif (!is_numeric($celular_cliente)) {
	    	echo "NO| El N° del celular del cliente debe  ser númerico ";
	    	exit();
	    }

	    elseif ($clientes < $hombres) {
	    	echo "NO| El N° clientes no puede ser menor que el N° de hombres";
	    	exit();
	    }

	    elseif (!is_numeric($hombres)) {
	    	echo "NO| El campo 'N° de hombre' debe  ser númerico ";
	    	exit();
	    }

	    else{	    	
	    	$db_connection = connect2DB();
			$queryR = mysqli_query($db_connection,"SELECT * FROM rhinoempresario WHERE codigoNuevoUsuario = '$codigo' ") or die(mysqli_error($db_connection));
			$queryF = mysqli_query($db_connection,"SELECT * FROM tmp_historial_juegos WHERE factura = '$factura' ") or die(mysqli_error($db_connection));

			//$queryP_P = mysqli_query($db_connection,"SELECT * FROM  `privilegios` WHERE  `codigo` ='$codigo' AND  `privilegio` ='$privilegio'") or die(mysqli_error($db_connection));
			
			$queryP_PActivo = mysqli_query($db_connection,"SELECT * FROM  `privilegios` WHERE  `codigo` ='$codigo' AND  `privilegio` ='$privilegio' AND  `activo` =0") or die(mysqli_error($db_connection));
			

			//$truncate = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_paintball ") or die(mysqli_error($db_connection));
			//$truncateC = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_comisiones") or die(mysqli_error($db_connection));
			//$truncateF = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_futbol5") or die(mysqli_error($db_connection));
			//$truncateM = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_muro_escalar") or die(mysqli_error($db_connection));
			//$truncateT = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_tirolesa") or die(mysqli_error($db_connection));
						
			if( $queryR->num_rows == 0 ){
				echo 'NO|El Rhino-privilegio NO existe';
				exit();
			}
			/*elseif($queryP_P->num_rows >0 ){
				echo 'NO| El Rhino-privilegio YA existe';
			}*/
			elseif($queryP_PActivo->num_rows >0 ){
				echo 'NO| El Rhino-privilegio YA fue usado';
			}
			/*elseif (strlen($privilegio)!=4 || $privilegio<=0 ) {
				echo 'NO|El Rhino-privilegio NO es Correcto';
				exit();
			} */

			elseif( $queryF->num_rows != 0 ){
				echo 'NO|El número de factura ya existe en el sistema, por favor verifique los datos.';
				exit();
			}

			else {
				calcular();
				exit();
			}
			mysqli_close($db_connection);
	    }
	}

	function calcular()
	{
		historial();

		$seleccion=$_POST['servicio'];

		$db_connection = connect2DB();
		$codigo=$_POST['codigo'];	 
		$result = mysqli_query($db_connection, "SELECT  * FROM  rhinoempresario WHERE codigoNuevoUsuario = '$codigo' ");
		if($result->num_rows == 0){ // no hay utilidad 
			$name="Error  en nombre";
		}
		else {
			while ( $row = mysqli_fetch_array($result) ) {
		   		$name1=$row['nombre'];
		   		$apellido1=$row['paterno'];
		   		$apellido2=$row['materno'];
		   	}
		}	

		$name = $name1." ".$apellido1." ".$apellido2;
		if ($seleccion=="Paintball"){
			paintball($name);
		}
		elseif ($seleccion=="Futbol_5"){
			futbol5();
		}
		elseif ($seleccion=="Muro_de_escalar"){
			muro();
		}
		elseif ($seleccion=="Tirolesa"){
			tirolesa();
		}
		elseif ($seleccion=="Store"){
			store();
		}		
	   		
	}	

	function historial(){

		$codigo=$_POST['codigo'];
		$privilegio=$_POST['privilegio'];
		$rhino_privilegio = $codigo.'_'.$privilegio;
		$consumo=$_POST['consumo'];		
		$admi_campo= $_POST['admi_campo'];
		$factura=$_POST['factura'];
		$nombre_cliente=$_POST['nombre_cliente'];
		$cedula_cliente=$_POST['cedula_cliente'];
		$celular_cliente=$_POST['celular_cliente'];
		$clientes=$_POST['clientes'];
		$mean_edad=$_POST['mean_edad'];
		$hombres=$_POST['hombres'];
		$mujeres=$clientes - $hombres;
		$fecha = date("Ymd"); 

		$db_connection = connect2DB();
		$querySelect = mysqli_query($db_connection,"SELECT * FROM  `privilegios` WHERE  `codigo` LIKE  '$codigo' AND  `privilegio` ='$privilegio'") or die(mysqli_error($db_connection));  
		if($querySelect->num_rows == 1) {
			while ($row = $querySelect->fetch_assoc()) {
				$idprivilegio=$row['id'];
			}
		}
		$queryCodigo = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario`  WHERE  `codigoNuevoUsuario` LIKE  '$codigo'") or die(mysqli_error($db_connection));  
		if($queryCodigo->num_rows > 1) {
			while ($row = $queryCodigo->fetch_assoc()) {
				$id_rhinoemp=$row['id_rhinoemp'];
			}
		}
		//$truncate = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_historial_juegos") or die(mysqli_error($db_connection));
		$queryTEMP = "INSERT INTO tmp_historial_juegos (rhino_privilegio, consumo, admi_campo, factura ,nombre_cliente, cedula_cliente, celular_cliente, clientes, mean_edad, hombres, mujeres,fecha,id_rhino) VALUES"."('".$rhino_privilegio."','".$consumo."','".$admi_campo."','".$factura."','".$nombre_cliente."','".$cedula_cliente."','".$celular_cliente."','".$clientes."','".$mean_edad."','".$hombres."','".$mujeres."','".$fecha."','".$id_rhinoemp."');";	
		mysqli_query($db_connection, $queryTEMP);
		$queryDesactivaP = "UPDATE `rhinored`.`privilegios` SET  `activo` =  '0' WHERE  `privilegios`.`id` ='$idprivilegio' ; ";
		mysqli_query($db_connection, $queryDesactivaP);
		echo "SI|Guardado Satisfactoriamente el historial de juegos";
		mysqli_close($db_connection);
	}

	function paintball($name)
	{

		$codigo=$_POST['codigo'];
		$privilegio=$_POST['privilegio'];
		$consumo=$_POST['consumo'];		
		$fecha = date("Ymd");// Mes Día Año

		$servicio = "Paintball";
		$rhino_privilegio = $codigo.'_'.$privilegio;		
    	$valor_bola = 58.2;
    	$puntos = intval($consumo/6000);
    	$recarga = $puntos+1;
    	$paintball = ($recarga*$valor_bola)*50; 
    	$utilidad_1 = $consumo - $paintball;
    	$utilidad_RP = $utilidad_1*0.2;
    	$utilidad_2 = $utilidad_1-$utilidad_RP;
    	$valor_punto_consumo = 1000;
    	$comision_consumo = $puntos*$valor_punto_consumo;
    	$valor_punto_red = 50; // pesos
    	$comision_red = $puntos*$valor_punto_red*7; // este es el valor que se va a dividir
    	$comision_red_nivel = $comision_red/7;
    	$utilidad_RR = $utilidad_2*0.45;
    	$fondo_incentivos= $puntos *50;
    	$rhino_red = $utilidad_2 - $comision_consumo - $comision_red - $fondo_incentivos;


    	echo "SI|";

		echo "<div class='formulario' id='show1'>";
		echo "<div class='toggle'>";
		echo "</div>";
		echo "<div class='form'>";
		echo "<h2> Confirmar datos </h2>";
		echo "<form>";	
			echo "<center> <h2> Rhino empresario asociado : ".$name."</h2></center>";
			echo " <p>Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($consumo,2,',','.'). "'' disabled >";
			echo " <p>Servicio:</p>";
			echo "<input type='text' id='fnombre' value= '" .$servicio. "' ' disabled>";	
			echo " <p>Rhino Privilegio:</p>";
			echo "<input type='text' id='fnombre' value= '" .$rhino_privilegio. "'' disabled>";
			echo " <p>Recarga:</p>";
			echo "<input type='text' id='fnombre' value= '" .$recarga. "'' disabled>";
			echo " <p>Valor paintball:</p>";
			echo "<input type='text' id='fnombre' value= '" .$valor_bola. "'' disabled>";
			echo " <p>Paintballs:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($paintball,2,',','.'). "'' disabled>";
			echo " <p>Puntos:</p>";
			echo "<input type='text' id='fnombre' value= '" .$puntos. "'' disabled>";
			echo " <p>Utilidad 1:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_1,2,',','.'). "'' disabled>";
			echo " <p>Rhinos Paintball:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_RP,2,',','.'). "'' disabled>";
			echo " <p>Utilidad 2:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_2,2,',','.'). "'' disabled>";
			echo " <p>Valor punto Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($valor_punto_consumo,2,',','.'). "'' disabled>";
			echo " <p>Comision Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_consumo,2,',','.'). "'' disabled>";
			echo " <p>Valor punto red:</p>";
			echo "<input type='text' id='fnombre' value= '" .$valor_punto_red. "'' disabled>";
			echo " <p>Comision red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_red,2,',','.'). "'' disabled>";
			echo "<p> Comision individual red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_red_nivel,2,',','.'). "'' disabled>";
			echo " <p>Fondo incentivos:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($fondo_incentivos,2,',','.'). "'' disabled>";
			echo "<p> Rhino red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($rhino_red,2,',','.'). "'' disabled>";	

			require_once('../connect2DB.php');
			$db_connection = connect2DB();
			//$truncate = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_paintball ") or die(mysqli_error($db_connection));
			$queryTEMP = "INSERT INTO tmp_paintball (consumo, servicio, rhino_privilegio, codigo ,recarga, valor_bola, paintball, puntos, utilidad_1, utilidad_RP, utilidad_2, valor_punto_consumo, comision_consumo, valor_punto_red, comision_red, comision_red_nivel, fondo_incentivos, rhino_red,fecha) VALUES"."('".$consumo."','".$servicio."','".$rhino_privilegio."','".$codigo."','".$recarga."','".$valor_bola."','".$paintball."','".$puntos."','".$utilidad_1."','".$utilidad_RP."','".$utilidad_2."','".$valor_punto_consumo."','".$comision_consumo."','".$valor_punto_red."','".$comision_red."','".$comision_red_nivel."','".$fondo_incentivos."','".$rhino_red."','".$fecha."');";	
			mysqli_query($db_connection, $queryTEMP);
			mysqli_close($db_connection);

			//verificar con arbol ..............................................................................................................
			require_once('../connect2DB.php');
			$db_connection = connect2DB();
			$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `codigoNuevoUsuario` = '$codigo'; ") or die(mysqli_error($db_connection));
			if ($queryNivel->num_rows > 0) {
				while($row = $queryNivel->fetch_assoc()) {
					$id_rhinoemp = $row['id_rhinoemp'];
				}
			}
			
			echo 'este es el rino empresaro '.$id_rhinoemp;
	    	include('funcionred.php');

	    	//$redMultinivelCodigo;
	    	//$redMultinivelCedula;

	    	$capacidad = 1;
	    	$codigo_patrocinador = $codigo;
	    	$beneficiario1 = $redMultinivelCodigo[0];
	    	$beneficiario2 =$redMultinivelCodigo[1];
	    	$beneficiario3 =$redMultinivelCodigo[2];
	    	$beneficiario4 =$redMultinivelCodigo[3];
	    	$beneficiario5 =$redMultinivelCodigo[4];
	    	$beneficiario6 =$redMultinivelCodigo[5];
	    	$beneficiario7 =$redMultinivelCodigo[6];

	    	$db_connection = connect2DB();
			
	    	while ($capacidad<=7){
				$db_connection = connect2DB();
				$queryP = mysqli_query($db_connection,"SELECT codigo_patrocinador FROM rhinoempresario WHERE codigo_patrocinador = '$codigo_patrocinador' ") or die(mysqli_error($db_connection));
				$cod_pat = mysqli_fetch_array($queryP);

				if (empty($cod_pat['codigo_patrocinador'])) {
				    $codigo_patrocinador = $codigo_patrocinador; 
				}
				else {
					$codigo_patrocinador = $cod_pat['codigo_patrocinador'];
				}

	    		switch ($capacidad) {
				    case 1:
				    	$beneficiario1 = $redMultinivelCodigo[0];
				        break;
				    case 2:
				    	$beneficiario2 = $redMultinivelCodigo[1];
				        break;
				    case 3:
				    	$beneficiario3 = $redMultinivelCodigo[2];
				        break;
				    case 4:
				    	$beneficiario4 = $redMultinivelCodigo[3];
				        break;
				    case 5:
				    	$beneficiario5 = $redMultinivelCodigo[4];
				        break;
				    case 6:
				    	$beneficiario6 = $redMultinivelCodigo[5];
				        break;
				    case 7:
				    	$beneficiario7 = $redMultinivelCodigo[6];
				        break;
				} // end switch
				$capacidad=$capacidad+1;
			} // end while
			$cero= 0;
			$uno = 1;
			//$truncate = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_comisiones ") or die(mysqli_error($db_connection));
			$queryConsumo = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$codigo."','".$cero."','".$comision_consumo."');";	
			$queryBeneficiario1 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario1."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario2 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario2."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario3 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario3."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario4 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario4."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario5 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario5."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario6 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario6."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario7 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario7."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			mysqli_query($db_connection, $queryConsumo);
			mysqli_query($db_connection, $queryBeneficiario1);
			mysqli_query($db_connection, $queryBeneficiario2);
			mysqli_query($db_connection, $queryBeneficiario3);
			mysqli_query($db_connection, $queryBeneficiario4);
			mysqli_query($db_connection, $queryBeneficiario5);
			mysqli_query($db_connection, $queryBeneficiario6);
			mysqli_query($db_connection, $queryBeneficiario7);
			mysqli_close($db_connection);
	}

	function futbol5()
	{
		$fecha = date("Ymd"); // Mes Día Año
		$codigo=$_POST['codigo'];
		$privilegio=$_POST['privilegio'];

		$servicio = "Futbol 5";
		$rhino_privilegio = $codigo.'_'.$privilegio;
		$consumo=$_POST['consumo'];
    	$puntos = intval($consumo/4000);
    	$utilidad_1 = $consumo;
    	$utilidad_RP = $utilidad_1*0.5;
    	$utilidad_2 = $utilidad_1-$utilidad_RP;
    	$valor_punto_consumo = 1000;
    	$comision_consumo = $puntos*$valor_punto_consumo;
    	$valor_punto_red = 50; // pesos
    	$comision_red = $puntos*$valor_punto_red*7; // este es el valor que se va a dividir
    	$comision_red_nivel = $comision_red/7;
    	$utilidad_RR = $utilidad_2*0.45;
    	$fondo_incentivos= $puntos *50;
    	$rhino_red = $utilidad_2 - $comision_consumo - $comision_red - $fondo_incentivos;

    	echo "SI|";
		echo '<script> $("#ocultar").hide("linear") </script> ';
		echo "<div class='formulario' id='show1'>";
		echo "<div class='toggle'>";
		echo "</div>";
		echo "<div class='form'>";
		echo "<h2> Confirmar datos </h2>";
		echo "<form>";	
			echo " <p>Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($consumo,2,',','.'). "'' disabled >";
			echo " <p>Servicio:</p>";
			echo "<input type='text' id='fnombre' value= '" .$servicio. "' ' disabled>";	
			echo " <p>Rhino Privilegio:</p>";
			echo "<input type='text' id='fnombre' value= '" .$rhino_privilegio. "'' disabled>";
			echo " <p>Puntos:</p>";
			echo "<input type='text' id='fnombre' value= '" .$puntos. "'' disabled>";
			echo " <p>Utilidad 1:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_1,2,',','.'). "'' disabled>";
			echo " <p>Rhinos Paintball:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_RP,2,',','.'). "'' disabled>";
			echo " <p>Utilidad 2:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_2,2,',','.'). "'' disabled>";
			echo " <p>Valor punto Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($valor_punto_consumo,2,',','.'). "'' disabled>";
			echo " <p>Comision Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_consumo,2,',','.'). "'' disabled>";
			echo " <p>Valor punto red:</p>";
			echo "<input type='text' id='fnombre' value= '" .$valor_punto_red. "'' disabled>";
			echo " <p>Comision red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_red,2,',','.'). "'' disabled>";
			echo "<p> Comision individual red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_red_nivel,2,',','.'). "'' disabled>";
			echo " <p>Fondo incentivos:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($fondo_incentivos,2,',','.'). "'' disabled>";
			echo "<p> Rhino red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($rhino_red,2,',','.'). "'' disabled>";	

			$db_connection = connect2DB();
			//$truncate = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_futbol5 ") or die(mysqli_error($db_connection));
			$queryTEMP = "INSERT INTO tmp_futbol5 (consumo, servicio, rhino_privilegio, codigo , puntos, utilidad_1, utilidad_RP, utilidad_2, valor_punto_consumo, comision_consumo, valor_punto_red, comision_red, comision_red_nivel, fondo_incentivos, rhino_red, fecha) VALUES"."('".$consumo."','".$servicio."','".$rhino_privilegio."','".$codigo."','".$puntos."','".$utilidad_1."','".$utilidad_RP."','".$utilidad_2."','".$valor_punto_consumo."','".$comision_consumo."','".$valor_punto_red."','".$comision_red."','".$comision_red_nivel."','".$fondo_incentivos."','".$rhino_red."','".$fecha."');";	
			mysqli_query($db_connection, $queryTEMP);
			mysqli_close($db_connection);

	    	//verificar con arbol ..............................................................................................................
			require_once('../connect2DB.php');
			$db_connection = connect2DB();
			$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `codigoNuevoUsuario` = '$codigo'; ") or die(mysqli_error($db_connection));
			if ($queryNivel->num_rows > 0) {
				while($row = $queryNivel->fetch_assoc()) {
					$id_rhinoemp = $row['id_rhinoemp'];
				}
			}
			
			echo 'este es el rino empresaro '.$id_rhinoemp;
	    	include('funcionred.php');

	    	//$redMultinivelCodigo;
	    	//$redMultinivelCedula;

	    	$capacidad = 1;
	    	$codigo_patrocinador = $codigo;
	    	$beneficiario1 = $redMultinivelCodigo[0];
	    	$beneficiario2 =$redMultinivelCodigo[1];
	    	$beneficiario3 =$redMultinivelCodigo[2];
	    	$beneficiario4 =$redMultinivelCodigo[3];
	    	$beneficiario5 =$redMultinivelCodigo[4];
	    	$beneficiario6 =$redMultinivelCodigo[5];
	    	$beneficiario7 =$redMultinivelCodigo[6];

	    	$db_connection = connect2DB();
			
	    	while ($capacidad<=7){
				$db_connection = connect2DB();
				$queryP = mysqli_query($db_connection,"SELECT codigo_patrocinador FROM rhinoempresario WHERE codigo_patrocinador = '$codigo_patrocinador' ") or die(mysqli_error($db_connection));
				$cod_pat = mysqli_fetch_array($queryP);

				if (empty($cod_pat['codigo_patrocinador'])) {
				    $codigo_patrocinador = $codigo_patrocinador; 
				}
				else {
					$codigo_patrocinador = $cod_pat['codigo_patrocinador'];
				}

	    		switch ($capacidad) {
				    case 1:
				    	$beneficiario1 = $redMultinivelCodigo[0];
				        break;
				    case 2:
				    	$beneficiario2 = $redMultinivelCodigo[1];
				        break;
				    case 3:
				    	$beneficiario3 = $redMultinivelCodigo[2];
				        break;
				    case 4:
				    	$beneficiario4 = $redMultinivelCodigo[3];
				        break;
				    case 5:
				    	$beneficiario5 = $redMultinivelCodigo[4];
				        break;
				    case 6:
				    	$beneficiario6 = $redMultinivelCodigo[5];
				        break;
				    case 7:
				    	$beneficiario7 = $redMultinivelCodigo[6];
				        break;
				} // end switch
				$capacidad=$capacidad+1;
			} // end while
			$cero= 0;
			$uno = 1;
			//$truncate = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_comisiones ") or die(mysqli_error($db_connection));
			$queryConsumo = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$codigo."','".$cero."','".$comision_consumo."');";	
			$queryBeneficiario1 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario1."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario2 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario2."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario3 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario3."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario4 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario4."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario5 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario5."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario6 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario6."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario7 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario7."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			mysqli_query($db_connection, $queryConsumo);
			mysqli_query($db_connection, $queryBeneficiario1);
			mysqli_query($db_connection, $queryBeneficiario2);
			mysqli_query($db_connection, $queryBeneficiario3);
			mysqli_query($db_connection, $queryBeneficiario4);
			mysqli_query($db_connection, $queryBeneficiario5);
			mysqli_query($db_connection, $queryBeneficiario6);
			mysqli_query($db_connection, $queryBeneficiario7);
			mysqli_close($db_connection);
	}

	function muro()
	{
		$codigo=$_POST['codigo'];
		$privilegio=$_POST['privilegio'];
		$fecha = date("Ymd"); // Mes Día Año

		$servicio = "Muro de escalar";
		$rhino_privilegio = $codigo.'_'.$privilegio;

		$consumo=$_POST['consumo'];
    	$puntos = intval($consumo/4000);
    	$utilidad_1 = $consumo;
    	$utilidad_RP = $utilidad_1*0.4;
    	$utilidad_2 = $utilidad_1-$utilidad_RP;
    	$valor_punto_consumo = 1000;
    	$comision_consumo = $puntos*$valor_punto_consumo;
    	$valor_punto_red = 50; // pesos
    	$comision_red = $puntos*$valor_punto_red*7; // este es el valor que se va a dividir
    	$comision_red_nivel = $comision_red/7;
    	$utilidad_RR = $utilidad_2*0.45;
    	$fondo_incentivos= $puntos *50;
    	$rhino_red = $utilidad_2 - $comision_consumo - $comision_red - $fondo_incentivos;

    	echo "SI|";
		echo '<script> $("#ocultar").hide("linear") </script> ';
		echo "<div class='formulario' id='show1'>";
		echo "<div class='toggle'>";
		echo "</div>";
		echo "<div class='form'>";
		echo "<h2> Confirmar datos </h2>";
		echo "<form>";	
			echo " <p>Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($consumo,2,',','.'). "'' disabled >";
			echo " <p>Servicio:</p>";
			echo "<input type='text' id='fnombre' value= '" .$servicio. "' ' disabled>";	
			echo " <p>Rhino Privilegio:</p>";
			echo "<input type='text' id='fnombre' value= '" .$rhino_privilegio. "'' disabled>";
			echo " <p>Puntos:</p>";
			echo "<input type='text' id='fnombre' value= '" .$puntos. "'' disabled>";
			echo " <p>Utilidad 1:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_1,2,',','.'). "'' disabled>";
			echo " <p>Rhinos Paintball:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_RP,2,',','.'). "'' disabled>";
			echo " <p>Utilidad 2:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_2,2,',','.'). "'' disabled>";
			echo " <p>Valor punto Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($valor_punto_consumo,2,',','.'). "'' disabled>";
			echo " <p>Comision Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_consumo,2,',','.'). "'' disabled>";
			echo " <p>Valor punto red:</p>";
			echo "<input type='text' id='fnombre' value= '" .$valor_punto_red. "'' disabled>";
			echo " <p>Comision red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_red,2,',','.'). "'' disabled>";
			echo "<p> Comision individual red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_red_nivel,2,',','.'). "'' disabled>";
			echo " <p>Fondo incentivos:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($fondo_incentivos,2,',','.'). "'' disabled>";
			echo "<p> Rhino red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($rhino_red,2,',','.'). "'' disabled>";	

			$db_connection = connect2DB();
			//$truncate = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_muro_escalar ") or die(mysqli_error($db_connection));
			$queryTEMP = "INSERT INTO tmp_muro_escalar (consumo, servicio, rhino_privilegio , codigo, puntos, utilidad_1, utilidad_RP, utilidad_2, valor_punto_consumo, comision_consumo, valor_punto_red, comision_red, comision_red_nivel, fondo_incentivos, rhino_red, fecha) VALUES"."('".$consumo."','".$servicio."','".$rhino_privilegio."','".$codigo."','".$puntos."','".$utilidad_1."','".$utilidad_RP."','".$utilidad_2."','".$valor_punto_consumo."','".$comision_consumo."','".$valor_punto_red."','".$comision_red."','".$comision_red_nivel."','".$fondo_incentivos."','".$rhino_red."','".$fecha."');";	
			mysqli_query($db_connection, $queryTEMP);
			mysqli_close($db_connection);

			//verificar con arbol ..............................................................................................................
			require_once('../connect2DB.php');
			$db_connection = connect2DB();
			$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `codigoNuevoUsuario` = '$codigo'; ") or die(mysqli_error($db_connection));
			if ($queryNivel->num_rows > 0) {
				while($row = $queryNivel->fetch_assoc()) {
					$id_rhinoemp = $row['id_rhinoemp'];
				}
			}
			
			echo 'este es el rino empresaro '.$id_rhinoemp;
	    	include('funcionred.php');

	    	//$redMultinivelCodigo;
	    	//$redMultinivelCedula;

	    	$capacidad = 1;
	    	$codigo_patrocinador = $codigo;
	    	$beneficiario1 = $redMultinivelCodigo[0];
	    	$beneficiario2 =$redMultinivelCodigo[1];
	    	$beneficiario3 =$redMultinivelCodigo[2];
	    	$beneficiario4 =$redMultinivelCodigo[3];
	    	$beneficiario5 =$redMultinivelCodigo[4];
	    	$beneficiario6 =$redMultinivelCodigo[5];
	    	$beneficiario7 =$redMultinivelCodigo[6];

	    	$db_connection = connect2DB();
			
	    	while ($capacidad<=7){
				$db_connection = connect2DB();
				$queryP = mysqli_query($db_connection,"SELECT codigo_patrocinador FROM rhinoempresario WHERE codigo_patrocinador = '$codigo_patrocinador' ") or die(mysqli_error($db_connection));
				$cod_pat = mysqli_fetch_array($queryP);

				if (empty($cod_pat['codigo_patrocinador'])) {
				    $codigo_patrocinador = $codigo_patrocinador; 
				}
				else {
					$codigo_patrocinador = $cod_pat['codigo_patrocinador'];
				}

	    		switch ($capacidad) {
				    case 1:
				    	$beneficiario1 = $redMultinivelCodigo[0];
				        break;
				    case 2:
				    	$beneficiario2 = $redMultinivelCodigo[1];
				        break;
				    case 3:
				    	$beneficiario3 = $redMultinivelCodigo[2];
				        break;
				    case 4:
				    	$beneficiario4 = $redMultinivelCodigo[3];
				        break;
				    case 5:
				    	$beneficiario5 = $redMultinivelCodigo[4];
				        break;
				    case 6:
				    	$beneficiario6 = $redMultinivelCodigo[5];
				        break;
				    case 7:
				    	$beneficiario7 = $redMultinivelCodigo[6];
				        break;
				} // end switch
				$capacidad=$capacidad+1;
			} // end while
			$cero= 0;
			$uno = 1;
			//$truncate = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_comisiones ") or die(mysqli_error($db_connection));
			$queryConsumo = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$codigo."','".$cero."','".$comision_consumo."');";	
			$queryBeneficiario1 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario1."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario2 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario2."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario3 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario3."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario4 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario4."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario5 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario5."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario6 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario6."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario7 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario7."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			mysqli_query($db_connection, $queryConsumo);
			mysqli_query($db_connection, $queryBeneficiario1);
			mysqli_query($db_connection, $queryBeneficiario2);
			mysqli_query($db_connection, $queryBeneficiario3);
			mysqli_query($db_connection, $queryBeneficiario4);
			mysqli_query($db_connection, $queryBeneficiario5);
			mysqli_query($db_connection, $queryBeneficiario6);
			mysqli_query($db_connection, $queryBeneficiario7);
			mysqli_close($db_connection);
	}

	function tirolesa()
	{
		$codigo=$_POST['codigo'];
		$privilegio=$_POST['privilegio'];
		$fecha = date("Ymd"); // Mes Día Año

		$servicio = "Tirolesa";
		$rhino_privilegio = $codigo.'_'.$privilegio;

		$consumo=$_POST['consumo'];
    	$puntos = intval($consumo/4000);
    	$utilidad_1 = $consumo;
    	$utilidad_RP = intval($utilidad_1*0.4);
    	$utilidad_2 = $utilidad_1-$utilidad_RP;
    	$valor_punto_consumo = 1000;
    	$comision_consumo = $puntos*$valor_punto_consumo;
    	$valor_punto_red = 50; // pesos
    	$comision_red = $puntos*$valor_punto_red*7; // este es el valor que se va a dividir
    	$comision_red_nivel = $comision_red/7;
    	$utilidad_RR = $utilidad_2*0.45;
    	$fondo_incentivos= $puntos *50;
    	$rhino_red = $utilidad_2 - $comision_consumo - $comision_red - $fondo_incentivos;

    	echo "SI|";
		echo '<script> $("#ocultar").hide("linear") </script> ';
		echo "<div class='formulario' id='show1'>";
		echo "<div class='toggle'>";
		echo "</div>";
		echo "<div class='form'>";
		echo "<h2> Confirmar datos </h2>";
		echo "<form>";	
			echo " <p>Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($consumo,2,',','.'). "'' disabled >";
			echo " <p>Servicio:</p>";
			echo "<input type='text' id='fnombre' value= '" .$servicio. "' ' disabled>";	
			echo " <p>Rhino Privilegio:</p>";
			echo "<input type='text' id='fnombre' value= '" .$rhino_privilegio. "'' disabled>";
			echo " <p>Puntos:</p>";
			echo "<input type='text' id='fnombre' value= '" .$puntos. "'' disabled>";
			echo " <p>Utilidad 1:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_1,2,',','.'). "'' disabled>";
			echo " <p>Rhinos Paintball:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_RP,2,',','.'). "'' disabled>";
			echo " <p>Utilidad 2:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_2,2,',','.'). "'' disabled>";
			echo " <p>Valor punto Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($valor_punto_consumo,2,',','.'). "'' disabled>";
			echo " <p>Comision Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_consumo,2,',','.'). "'' disabled>";
			echo " <p>Valor punto red:</p>";
			echo "<input type='text' id='fnombre' value= '" .$valor_punto_red. "'' disabled>";
			echo " <p>Comision red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_red,2,',','.'). "'' disabled>";
			echo "<p> Comision individual red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_red_nivel,2,',','.'). "'' disabled>";
			echo " <p>Fondo incentivos:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($fondo_incentivos,2,',','.'). "'' disabled>";
			echo "<p> Rhino red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($rhino_red,2,',','.'). "'' disabled>";	

			$db_connection = connect2DB();
			//$truncate = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_tirolesa ") or die(mysqli_error($db_connection));
			$queryTEMP = "INSERT INTO tmp_tirolesa (consumo, servicio, rhino_privilegio , codigo , puntos, utilidad_1, utilidad_RP, utilidad_2, valor_punto_consumo, comision_consumo, valor_punto_red, comision_red, comision_red_nivel, fondo_incentivos, rhino_red, fecha) VALUES"." ('".$consumo."','".$servicio."','".$rhino_privilegio."','".$codigo."','".$puntos."','".$utilidad_1."','".$utilidad_RP."','".$utilidad_2."','".$valor_punto_consumo."','".$comision_consumo."','".$valor_punto_red."','".$comision_red."','".$comision_red_nivel."','".$fondo_incentivos."','".$rhino_red."','".$fecha."');";	
			mysqli_query($db_connection, $queryTEMP);
			mysqli_close($db_connection);

	    	//verificar con arbol ..............................................................................................................
			require_once('../connect2DB.php');
			$db_connection = connect2DB();
			$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `codigoNuevoUsuario` = '$codigo'; ") or die(mysqli_error($db_connection));
			if ($queryNivel->num_rows > 0) {
				while($row = $queryNivel->fetch_assoc()) {
					$id_rhinoemp = $row['id_rhinoemp'];
				}
			}
			
			echo 'este es el rino empresaro '.$id_rhinoemp;
	    	include('funcionred.php');

	    	//$redMultinivelCodigo;
	    	//$redMultinivelCedula;

	    	$capacidad = 1;
	    	$codigo_patrocinador = $codigo;
	    	$beneficiario1 = $redMultinivelCodigo[0];
	    	$beneficiario2 =$redMultinivelCodigo[1];
	    	$beneficiario3 =$redMultinivelCodigo[2];
	    	$beneficiario4 =$redMultinivelCodigo[3];
	    	$beneficiario5 =$redMultinivelCodigo[4];
	    	$beneficiario6 =$redMultinivelCodigo[5];
	    	$beneficiario7 =$redMultinivelCodigo[6];

	    	$db_connection = connect2DB();
			
	    	while ($capacidad<=7){
				$db_connection = connect2DB();
				$queryP = mysqli_query($db_connection,"SELECT codigo_patrocinador FROM rhinoempresario WHERE codigo_patrocinador = '$codigo_patrocinador' ") or die(mysqli_error($db_connection));
				$cod_pat = mysqli_fetch_array($queryP);

				if (empty($cod_pat['codigo_patrocinador'])) {
				    $codigo_patrocinador = $codigo_patrocinador; 
				}
				else {
					$codigo_patrocinador = $cod_pat['codigo_patrocinador'];
				}

	    		switch ($capacidad) {
				    case 1:
				    	$beneficiario1 = $redMultinivelCodigo[0];
				        break;
				    case 2:
				    	$beneficiario2 = $redMultinivelCodigo[1];
				        break;
				    case 3:
				    	$beneficiario3 = $redMultinivelCodigo[2];
				        break;
				    case 4:
				    	$beneficiario4 = $redMultinivelCodigo[3];
				        break;
				    case 5:
				    	$beneficiario5 = $redMultinivelCodigo[4];
				        break;
				    case 6:
				    	$beneficiario6 = $redMultinivelCodigo[5];
				        break;
				    case 7:
				    	$beneficiario7 = $redMultinivelCodigo[6];
				        break;
				} // end switch
				$capacidad=$capacidad+1;
			} // end while
			$cero= 0;
			$uno = 1;
			//$truncate = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_comisiones ") or die(mysqli_error($db_connection));
			$queryConsumo = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$codigo."','".$cero."','".$comision_consumo."');";	
			$queryBeneficiario1 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario1."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario2 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario2."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario3 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario3."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario4 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario4."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario5 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario5."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario6 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario6."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario7 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario7."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			mysqli_query($db_connection, $queryConsumo);
			mysqli_query($db_connection, $queryBeneficiario1);
			mysqli_query($db_connection, $queryBeneficiario2);
			mysqli_query($db_connection, $queryBeneficiario3);
			mysqli_query($db_connection, $queryBeneficiario4);
			mysqli_query($db_connection, $queryBeneficiario5);
			mysqli_query($db_connection, $queryBeneficiario6);
			mysqli_query($db_connection, $queryBeneficiario7);
			mysqli_close($db_connection);
	}

	function store()
	{
		$codigo=$_POST['codigo'];
		$privilegio=$_POST['privilegio'];
		$fecha = date("Ymd"); // Mes Día Año

		$servicio = "Store";
		$consumo=$_POST['consumo'];
		$costo_base = intval($consumo*(1-0.2316555));
    	$puntos = intval($consumo/24000);  	
    	$utilidad_1 = $consumo-$costo_base;
    	$utilidad_PS = $utilidad_1*0.66;
    	$utilidad_2 = $utilidad_1-$utilidad_PS;
    	$valor_punto_consumo = 1000;
    	$comision_consumo = $puntos*$valor_punto_consumo;
    	$valor_punto_red = 50; // pesos
    	$comision_red = $puntos*$valor_punto_red*7; // este es el valor que se va a dividir
    	$comision_red_nivel = $comision_red/7;
    	$utilidad_RR = $utilidad_2*0.45;
    	$fondo_incentivos= $puntos *50;
    	$rhino_red = $utilidad_2 - $comision_consumo - $comision_red - $fondo_incentivos;

    	echo "SI|";
		echo '<script> $("#ocultar").hide("linear") </script> ';
		echo "<div class='formulario' id='show1'>";
		echo "<div class='toggle'>";
		echo "</div>";
		echo "<div class='form'>";
		echo "<h2> Confirmar datos </h2>";
		echo "<form>";	
			echo " <p>Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($consumo, '.'). "'' disabled >";
			echo " <p>Servicio:</p>";
			echo "<input type='text' id='fnombre' value= '" .$servicio. "' ' disabled>";	
			echo " <p>Rhino Privilegio:</p>";
			echo "<input type='text' id='fnombre' value= '" .$codigo. "'' disabled>";
			echo " <p>Costo base:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($costo_base, '.'). "'' disabled>";
			echo " <p>Puntos:</p>";
			echo "<input type='text' id='fnombre' value= '" .$puntos. "'' disabled>";
			echo " <p>Utilidad 1:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_1,2,',','.'). "'' disabled>";
			echo " <p>Rhinos Paintball:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_PS,2,',','.'). "'' disabled>";
			echo " <p>Utilidad 2:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($utilidad_2,2,',','.'). "'' disabled>";
			echo " <p>Valor punto Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($valor_punto_consumo,2,',','.'). "'' disabled>";
			echo " <p>Comision Consumo:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_consumo,2,',','.'). "'' disabled>";
			echo " <p>Valor punto red:</p>";
			echo "<input type='text' id='fnombre' value= '" .$valor_punto_red. "'' disabled>";
			echo " <p>Comision red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_red,2,',','.'). "'' disabled>";
			echo "<p> Comision individual red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($comision_red_nivel,2,',','.'). "'' disabled>";
			echo " <p>Fondo incentivos:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($fondo_incentivos,2,',','.'). "'' disabled>";
			echo "<p> Rhino red:</p>";
			echo "<input type='text' id='fnombre' value= '" .number_format($rhino_red,2,',','.'). "'' disabled>";	

			$db_connection = connect2DB();
			//$truncate = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_store ") or die(mysqli_error($db_connection));
			$queryTEMP = "INSERT INTO tmp_store (consumo, servicio, codigo , costo_base, puntos, utilidad_1, utilidad_PS, utilidad_2, valor_punto_consumo, comision_consumo, valor_punto_red, comision_red, comision_red_nivel, fondo_incentivos, rhino_red, fecha) VALUES"."('".$consumo."','".$servicio."','".$codigo."','".$costo_base."','".$puntos."','".$utilidad_1."','".$utilidad_PS."','".$utilidad_2."','".$valor_punto_consumo."','".$comision_consumo."','".$valor_punto_red."','".$comision_red."','".$comision_red_nivel."','".$fondo_incentivos."','".$rhino_red."','".$fecha."');";	
			mysqli_query($db_connection, $queryTEMP);
			mysqli_close($db_connection);

	    	//verificar con arbol ..............................................................................................................
			require_once('../connect2DB.php');
			$db_connection = connect2DB();
			$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `codigoNuevoUsuario` = '$codigo'; ") or die(mysqli_error($db_connection));
			if ($queryNivel->num_rows > 0) {
				while($row = $queryNivel->fetch_assoc()) {
					$id_rhinoemp = $row['id_rhinoemp'];
				}
			}
			
			echo 'este es el rino empresaro '.$id_rhinoemp;
	    	include('funcionred.php');

	    	//$redMultinivelCodigo;
	    	//$redMultinivelCedula;

	    	$capacidad = 1;
	    	$codigo_patrocinador = $codigo;
	    	$beneficiario1 = $redMultinivelCodigo[0];
	    	$beneficiario2 =$redMultinivelCodigo[1];
	    	$beneficiario3 =$redMultinivelCodigo[2];
	    	$beneficiario4 =$redMultinivelCodigo[3];
	    	$beneficiario5 =$redMultinivelCodigo[4];
	    	$beneficiario6 =$redMultinivelCodigo[5];
	    	$beneficiario7 =$redMultinivelCodigo[6];

	    	$db_connection = connect2DB();
			
	    	while ($capacidad<=7){
				$db_connection = connect2DB();
				$queryP = mysqli_query($db_connection,"SELECT codigo_patrocinador FROM rhinoempresario WHERE codigo_patrocinador = '$codigo_patrocinador' ") or die(mysqli_error($db_connection));
				$cod_pat = mysqli_fetch_array($queryP);

				if (empty($cod_pat['codigo_patrocinador'])) {
				    $codigo_patrocinador = $codigo_patrocinador; 
				}
				else {
					$codigo_patrocinador = $cod_pat['codigo_patrocinador'];
				}

	    		switch ($capacidad) {
				    case 1:
				    	$beneficiario1 = $redMultinivelCodigo[0];
				        break;
				    case 2:
				    	$beneficiario2 = $redMultinivelCodigo[1];
				        break;
				    case 3:
				    	$beneficiario3 = $redMultinivelCodigo[2];
				        break;
				    case 4:
				    	$beneficiario4 = $redMultinivelCodigo[3];
				        break;
				    case 5:
				    	$beneficiario5 = $redMultinivelCodigo[4];
				        break;
				    case 6:
				    	$beneficiario6 = $redMultinivelCodigo[5];
				        break;
				    case 7:
				    	$beneficiario7 = $redMultinivelCodigo[6];
				        break;
				} // end switch
				$capacidad=$capacidad+1;
			} // end while
			$cero= 0;
			$uno = 1;
			//$truncate = mysqli_query($db_connection,"TRUNCATE TABLE Rhinored.tmp_comisiones ") or die(mysqli_error($db_connection));
			$queryConsumo = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$codigo."','".$cero."','".$comision_consumo."');";	
			$queryBeneficiario1 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario1."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario2 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario2."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario3 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario3."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario4 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario4."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario5 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario5."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario6 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario6."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			$queryBeneficiario7 = "INSERT INTO tmp_comisiones (rhino_privilegio, codigo, tipo_comision , valor, fecha) VALUES"."('".$rhino_privilegio."','".$beneficiario7."','".$uno."','".$comision_red_nivel."','".$fecha."');";
			mysqli_query($db_connection, $queryConsumo);
			mysqli_query($db_connection, $queryBeneficiario1);
			mysqli_query($db_connection, $queryBeneficiario2);
			mysqli_query($db_connection, $queryBeneficiario3);
			mysqli_query($db_connection, $queryBeneficiario4);
			mysqli_query($db_connection, $queryBeneficiario5);
			mysqli_query($db_connection, $queryBeneficiario6);
			mysqli_query($db_connection, $queryBeneficiario7);
			mysqli_close($db_connection);
	}

	
?>