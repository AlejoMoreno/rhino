<?php
require_once('../connect2DB.php');


$db_connection = connect2DB();
$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `id_rhinoemp` = '$id'; ") or die(mysqli_error($db_connection));
if ($queryNivel->num_rows > 0) {
	while($row = $queryNivel->fetch_assoc()) {
	    $nombresApellidos = $row['nombre'].' '.$row['apellidos'].'<br>';
		$cantidadRhinoEmpresarios = $row['nivel'];
		$fecha_ingreso = $row['fecha_ingreso'];
	}
}

function tipoPaquete($consulta, $paquete){
	if($consulta == 1){
		if($paquete == 1){
			return 'Empresarial';
		}
		if($paquete == 2){
			return 'Emprendedor';
		}
		if($paquete == 3){
			return 'Ascenso';
		}
		if($paquete == 4){
			return 'Privilegios';
		}
	}
	else{
		if($paquete == 1){
			return 150000;
		}
		if($paquete == 2){
			return 120000;
		}
		if($paquete == 3){
			return 34000;
		}
		if($paquete == 4){
			return 120000;
		}
	}
}

//verificacion de contafor regresivo para compra de productos
$hoy = date("Y-m-d"); 
$fecha = date("Y-m-d", strtotime($fecha_ingreso));


?>
<html>
	<?php include('encabezado.php'); ?>
<body>
	<section name="principalname" class="principalclass" id="principalid">
		<section id="menu">
			<div id='cssmenu'>
				<ul>
				   <li class='active' id="consumir"><a href='#'><span>Consumir</span></a></li>
				   <li class='' id="reservas"><a href='#'><span>Reservas</span></a></li>
				</ul>
			</div>
			<center><h1>ADMINISTRATIVO</h1></center>
		</section>

		<section id="alertas">
			<div id="tituloArbol">
				<h2>CONSUMIR SERVICIO</h2>
				<bR><br>
			</div>
			<center>
			<div id="consumoServicio">
				<form method="POST" action="#" id="formularioConsumo"><br>
					<p id="t1">Servicio: </p><select name="servicio" id="servicio">
					<?php
					$servicio = array('Paintball','Futbol_5','Muro_de_escalar','Tirolesa','Store');
					foreach ($servicio as $key => $value) {
						echo '<option value="'.$value.'">'.$value.'</option>';
					}
					?>
					</select>
					<input type="text" name="consumo" id="consumo" placeholder="$00. consumo"> 
					<input type="text" name="factura" id="factura" placeholder="# Factura">

					<input type="text" name="codigo" id="codigo" placeholder="Codigo RhinoEmpresario">
					<input type="number" name="privilegio" id="privilegio" placeholder="# Rhino Privilegio"><br><br>
					<input type="number" name="hombres" id="hombres" placeholder="# Hombres"><br>
					<input type="number" name="clientes" id="clientes" placeholder=" # clientes"><br>
					<input type="number" name="mean_edad" id="mean_edad" placeholder="Promedio Edad"><br><br>
					<input type="text" name="admi_campo" id="admi_campo" placeholder="Nombre Administrador">
					<input type="text" name="nombre_cliente" id="nombre_cliente" placeholder="Nombre Cliente">
					<input type="text" name="cedula_cliente" id="cedula_cliente" placeholder="Cedula Cliente">
					<input type="text" name="celular_cliente" id="celular_cliente" placeholder="Celular Cliente"><br><br>
					
					<input type="button" id="continuar" href="javascript:;" onclick="register($('#servicio').val(),$('#consumo').val(),$('#factura').val(),$('#codigo').val(),$('#privilegio').val(),$('#hombres').val(),$('#clientes').val(),$('#mean_edad').val(),$('#admi_campo').val(),$('#nombre_cliente').val(),$('#cedula_cliente').val(),$('#celular_cliente').val());return false;" value="Register"/>
				</form>
				<div id="res"></div>
			</div></center>
			
			
				
				<hr>
				
		</section>

	</section>
	<h2>CONSUMIR SERVICIO</h2>
	<bR><br>
	<section id="reservassec">
		<center>
		<input type="text" name="codigo" id="codigoVerificacion" placeholder="Codigo RhinoEmpresario">
		<input type="number" name="privilegio" id="privilegioVerificacion" placeholder="# Rhino Privilegio"><br><br>
		<input type="button" id="continuar" href="javascript:;" onclick="verificar($('#codigoVerificacion').val(),$('#privilegioVerificacion').val());return false;" value="Register"/>
		</center>
	</section>

	<section id="consultas">
		<h2>BACKOFICE</h2>
		<div id="Paquetes">
			<?php
			require_once('../connect2DB.php');
			echo '
			<table class="tg">
			<tr>
			    <th class="tg-9j2a" colspan="3"> Cantidad de Privilegios </th>
			</tr>
			<tr>
			    <th class="tg-9j2a">Código </th>
			    <th class="tg-9j2a">Paquete </th>
			    <th class="tg-9j2a">Cantidad </th>
		  	</tr>';
			$paqueteQR = mysqli_query($db_connection,"SELECT COUNT( * ) AS cantidad,  `codigo` ,  `activo` ,  `paquete` FROM  `privilegios` GROUP BY  `id_rhino` ") or die(mysqli_error($db_connection));
			if ($paqueteQR->num_rows > 0) {
				while ($row = $paqueteQR->fetch_assoc()) {
					echo '<tr>';
					echo '<td class="tg-031e">'.$row['codigo'].'</td>';
					echo '<td class="tg-031e">'.tipoPaquete(1,$row['paquete']).'</td>';
					echo '<td class="tg-031e">'.$row['cantidad'].'</td>';
					echo '</tr>';
				} 
			}
			echo '</table>';
			?>
		
		</div>

		<div id="Paquetesactivos">
			<?php
			require_once('../connect2DB.php');
			echo '
			<table class="tg">
			<tr>
			    <th class="tg-9j2a" colspan="2"> Cantidad de Privilegios por estado </th>
			</tr>
			<tr>
			    <th class="tg-9j2a">Estado (1-activo) (0-inactivo) </th>
			    <th class="tg-9j2a">Cantidad </th>
		  	</tr>';
			$paqueteQR = mysqli_query($db_connection,"SELECT COUNT( * ) AS cantidad,  `activo` FROM  `privilegios` GROUP BY  `activo` ") or die(mysqli_error($db_connection));
			if ($paqueteQR->num_rows > 0) {
				while ($row = $paqueteQR->fetch_assoc()) {
					echo '<tr>';
					echo '<td class="tg-031e">'.$row['activo'].'</td>';
					echo '<td class="tg-031e">'.$row['cantidad'].'</td>';
					echo '</tr>';
				} 
			}
			echo '</table>';
			?>
		
		</div>

		<div id="historial">
			<?php
			require_once('../connect2DB.php');
			echo '
			<table class="tg">
			<tr>
			    <th class="tg-9j2a" colspan="3">Historial de sesiones</th>
			</tr>
			<tr>
			    <th class="tg-9j2a">Id rhino </th>
			    <th class="tg-9j2a">IP </th>
			    <th class="tg-9j2a">Fecha </th>
		  	</tr>';
			$paqueteQR = mysqli_query($db_connection,"SELECT * FROM  `historialsesion` ORDER BY  `fecha` ; ") or die(mysqli_error($db_connection));
			if ($paqueteQR->num_rows > 0) {
				while ($row = $paqueteQR->fetch_assoc()) {
					echo '<tr>';
					echo '<td class="tg-031e">'.$row['id_rhino'].'</td>';
					echo '<td class="tg-031e">'.$row['ip'].'</td>';
					echo '<td class="tg-031e">'.$row['fecha'].'</td>';
					echo '</tr>';
				} 
			}
			echo '</table>';
			?>
		
		</div>

		<div id="Comisionred">
			<?php
			require_once('../connect2DB.php');
			echo '
			<table class="tg">
			<tr>
			    <th class="tg-9j2a" colspan="3">Comision Individual Red</th>
			</tr>
			<tr>
			    <th class="tg-9j2a">Codigo </th>
			    <th class="tg-9j2a">Valor</th>
			    <th class="tg-9j2a">Fecha</th>
		  	</tr>';
			$paqueteQR = mysqli_query($db_connection,"SELECT SUM(  `valor` ) AS Valor,  `codigo` ,  `fecha` FROM  `tmp_comisiones` GROUP BY  `codigo` ORDER BY  `fecha`  ") or die(mysqli_error($db_connection));
			if ($paqueteQR->num_rows > 0) {
				while ($row = $paqueteQR->fetch_assoc()) {
					echo '<tr>';
					echo '<td class="tg-031e">'.$row['codigo'].'</td>';
					echo '<td class="tg-031e">'.$row['Valor'].'</td>';					
					echo '<td class="tg-031e">'.$row['fecha'].'</td>';
					echo '</tr>';
				} 
			}
			echo '</table>';
			?>
		
		</div>

		<div id="servicios">
			<?php
			require_once('../connect2DB.php');
			echo '
			<table class="tg">
			<tr>
			    <th class="tg-9j2a" colspan="17">PaintBall servicio</th>
			</tr>
			<tr>
			    <th class="tg-9j2a">Consumo </th>
			    <th class="tg-9j2a">rhino_privilegio</th>
			    <th class="tg-9j2a">codigo</th>
			    <th class="tg-9j2a">valor_bola</th>			    
			    <th class="tg-9j2a">paintball</th>		    
			    <th class="tg-9j2a">puntos</th>
			    <th class="tg-9j2a">utilidad_1</th>
			    <th class="tg-9j2a">utilidad_RP</th>
			    <th class="tg-9j2a">utilidad_2</th>
			    <th class="tg-9j2a">valor_punto_consumo</th>
			    <th class="tg-9j2a">comision_consumo</th>
			    <th class="tg-9j2a">valor_punto_red</th>
			    <th class="tg-9j2a">comision_red</th>
			    <th class="tg-9j2a">comision_red_nivel	</th>
			    <th class="tg-9j2a">fondo_incentivos</th>
			    <th class="tg-9j2a">rhino_red</th>
			    <th class="tg-9j2a">fecha</th>
		  	</tr>';
			$paqueteQR = mysqli_query($db_connection,"SELECT * FROM  `tmp_paintball`  ") or die(mysqli_error($db_connection));
			if ($paqueteQR->num_rows > 0) {
				while ($row = $paqueteQR->fetch_assoc()) {
					echo '<tr>';
					echo '<td class="tg-031e">'.$row['consumo'].'</td>';
					echo '<td class="tg-031e">'.$row['rhino_privilegio'].'</td>';					
					echo '<td class="tg-031e">'.$row['codigo'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_bola'].'</td>';				
					echo '<td class="tg-031e">'.$row['paintball'].'</td>';				
					echo '<td class="tg-031e">'.$row['puntos'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_1'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_RP'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_2'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_punto_consumo'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_consumo'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_punto_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_red_nivel'].'</td>';				
					echo '<td class="tg-031e">'.$row['fondo_incentivos'].'</td>';				
					echo '<td class="tg-031e">'.$row['rhino_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['fecha'].'</td>';
					echo '</tr>';
				} 
			}
			echo '</table>';

			echo '
			<table class="tg">
			<tr>
			    <th class="tg-9j2a" colspan="17">Futbol 5 servicio </th>
			</tr>';
			$paqueteQR = mysqli_query($db_connection,"SELECT * FROM  `tmp_futbol5`  ") or die(mysqli_error($db_connection));
			if ($paqueteQR->num_rows > 0) {
				while ($row = $paqueteQR->fetch_assoc()) {
					echo '<tr>';
					echo '<td class="tg-031e">'.$row['consumo'].'</td>';
					echo '<td class="tg-031e">'.$row['rhino_privilegio'].'</td>';					
					echo '<td class="tg-031e">'.$row['codigo'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_bola'].'</td>';				
					echo '<td class="tg-031e">'.$row['paintball'].'</td>';				
					echo '<td class="tg-031e">'.$row['puntos'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_1'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_RP'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_2'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_punto_consumo'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_consumo'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_punto_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_red_nivel'].'</td>';				
					echo '<td class="tg-031e">'.$row['fondo_incentivos'].'</td>';				
					echo '<td class="tg-031e">'.$row['rhino_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['fecha'].'</td>';
					echo '</tr>';
				} 
			}
			echo '</table>';

			echo '
			<table class="tg">
			<tr>
			    <th class="tg-9j2a" colspan="17">Muro de escalar servicio </th>
			</tr>';
			$paqueteQR = mysqli_query($db_connection,"SELECT * FROM  `tmp_muro_escalar`  ") or die(mysqli_error($db_connection));
			if ($paqueteQR->num_rows > 0) {
				while ($row = $paqueteQR->fetch_assoc()) {
					echo '<tr>';
					echo '<td class="tg-031e">'.$row['consumo'].'</td>';
					echo '<td class="tg-031e">'.$row['rhino_privilegio'].'</td>';					
					echo '<td class="tg-031e">'.$row['codigo'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_bola'].'</td>';				
					echo '<td class="tg-031e">'.$row['paintball'].'</td>';				
					echo '<td class="tg-031e">'.$row['puntos'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_1'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_RP'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_2'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_punto_consumo'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_consumo'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_punto_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_red_nivel'].'</td>';				
					echo '<td class="tg-031e">'.$row['fondo_incentivos'].'</td>';				
					echo '<td class="tg-031e">'.$row['rhino_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['fecha'].'</td>';
					echo '</tr>';
				} 
			}
			echo '</table>';

			echo '
			<table class="tg">
			<tr>
			    <th class="tg-9j2a" colspan="17">Store servicio </th>
			</tr>';
			$paqueteQR = mysqli_query($db_connection,"SELECT * FROM  `tmp_store`  ") or die(mysqli_error($db_connection));
			if ($paqueteQR->num_rows > 0) {
				while ($row = $paqueteQR->fetch_assoc()) {
					echo '<tr>';
					echo '<td class="tg-031e">'.$row['consumo'].'</td>';
					echo '<td class="tg-031e">'.$row['rhino_privilegio'].'</td>';					
					echo '<td class="tg-031e">'.$row['codigo'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_bola'].'</td>';				
					echo '<td class="tg-031e">'.$row['paintball'].'</td>';				
					echo '<td class="tg-031e">'.$row['puntos'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_1'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_RP'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_2'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_punto_consumo'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_consumo'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_punto_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_red_nivel'].'</td>';				
					echo '<td class="tg-031e">'.$row['fondo_incentivos'].'</td>';				
					echo '<td class="tg-031e">'.$row['rhino_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['fecha'].'</td>';
					echo '</tr>';
				} 
			}
			echo '</table>';

			echo '
			<table class="tg">
			<tr>
			    <th class="tg-9j2a" colspan="17">Tirolesa servicio </th>
			</tr>';
			$paqueteQR = mysqli_query($db_connection,"SELECT * FROM  `tmp_tirolesa`  ") or die(mysqli_error($db_connection));
			if ($paqueteQR->num_rows > 0) {
				while ($row = $paqueteQR->fetch_assoc()) {
					echo '<tr>';
					echo '<td class="tg-031e">'.$row['consumo'].'</td>';
					echo '<td class="tg-031e">'.$row['rhino_privilegio'].'</td>';					
					echo '<td class="tg-031e">'.$row['codigo'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_bola'].'</td>';				
					echo '<td class="tg-031e">'.$row['paintball'].'</td>';				
					echo '<td class="tg-031e">'.$row['puntos'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_1'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_RP'].'</td>';				
					echo '<td class="tg-031e">'.$row['utilidad_2'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_punto_consumo'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_consumo'].'</td>';				
					echo '<td class="tg-031e">'.$row['valor_punto_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['comision_red_nivel'].'</td>';				
					echo '<td class="tg-031e">'.$row['fondo_incentivos'].'</td>';				
					echo '<td class="tg-031e">'.$row['rhino_red'].'</td>';				
					echo '<td class="tg-031e">'.$row['fecha'].'</td>';
					echo '</tr>';
				} 
			}
			echo '</table>';
			?>
		
		</div>

	</section>

	<div id="resultado">Este es ek resultado: </div>
	<section id="contacto">
		<center><p>© 2016 Rhino Red. Todos los derechos reservados.|Políticas|Manual|Condición</p></center>
	</section>

<div id="nivelArbol">

</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script> 
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='js/da0415260bc83974687e3f9ae.js'></script>

<script>

function register(servicio,consumo,factura,codigo,privilegio,hombres,clientes,mean_edad,admi_campo,nombre_cliente,cedula_cliente,celular_cliente	){
        var parametros = {
        	"servicio" : servicio,
			"consumo" : consumo,
			"factura" : factura,
			"codigo" : codigo,
			"privilegio" : privilegio,
			"hombres" : hombres,
			"clientes" : clientes,
			"mean_edad" : mean_edad,
			"admi_campo" : admi_campo,
			"nombre_cliente" : nombre_cliente,
			"cedula_cliente" : cedula_cliente,
			"celular_cliente" : celular_cliente
        };
        $.ajax({
                data:  parametros,
                url:   '../php/calcular.php',
                type:  'post',
                beforeSend: function () {
                        $("#resultado").html("Procesando, espere por favor...");
                },
                success:  function (response) {
                  if (response == "SI"){
                    window.location="html/admitrativo.php";
                  }
                  else {
                    $("#resultado").html(response);
                  }
                }
        });
}

function verificar(codigoVerificacion, privilegioVerificacion){
        var parametros = {
			"codigoVerificacion" : codigoVerificacion,
			"privilegioVerificacion" : privilegioVerificacion
        };
        $.ajax({
                data:  parametros,
                url:   '../php/calcular.php',
                type:  'post',
                beforeSend: function () {
                        $("#resultado").html("Procesando, espere por favor...");
                },
                success:  function (response) {
                  if (response == "SI"){
                    window.location="html/admitrativo.php";
                  }
                  else {
                    $("#resultado").html(response);
                  }
                }
        });
}

</script>
<style type="text/css">
input{
	float: left;
	width: 33%;
	padding: 10px 50px 10px 10px;
}
#t1{
	float: left;
	color: white;
}
#consumoServicio{
	float: left;
	height: 400px;
	width: 50%;
	background-color: #222222;
	opacity: 0.9;
	padding: 10px 10px 10px;
}
#servicio{
	float: left;
	width: 80%;
}
#reservassec{
	float: left;
	width: 50%;
	height: 200px;
	background-color: #222222;
	padding: 10px 10px 10px;
}
#reservassec input{
	width: 99%;
}
h2{
	float: left;
	width: 100%;
}
#resultado,#contacto{
	float: left;
	width: 100%;
	padding: 10px 10px 10px;
}
</body>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;color:#000000;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg .tg-9j2a{background-color:#cb0000;color:#ffffff}
</style>

<table class="tg">
		  <tr>
		    <th class="tg-9j2a"></th>
		    <th class="tg-9j2a"></th>
		  </tr>
		  <tr>
		    <td class="tg-031e"></td>
		    <td class="tg-031e"></td>
		  </tr>
		</table>