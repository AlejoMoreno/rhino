<?php
session_start();
$tipo = $_SESSION['type'];
$id = $_SESSION['id'];

$hoy = date("Y-m-d"); 



require_once('../connect2DB.php');
$db_connection = connect2DB();
//tomar el Rhino codigo del usuario 
$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `id_rhinoemp` = '$id'; ") or die(mysqli_error($db_connection));
if ($queryNivel->num_rows > 0) {
	while($row = $queryNivel->fetch_assoc()) {
		$codigo = $row['codigoNuevoUsuario'];
		$tipo_usuario = $row['tipo_usuario'];
	}
}

//verifica que halla entrada en el post del formulario
if($_POST['activo']=='1'){
	$paquete = $_POST['paquete'];
	$codigo = $_POST['codigo'];
	$activo = $_POST['activo'];

	//seleccion del maximo rhinoprivilegio que tiene 
	$queryNivel = mysqli_query($db_connection,"SELECT MAX( privilegio ) FROM  `privilegios` WHERE `id_rhino` = '$id'; ") or die(mysqli_error($db_connection));
	if ($queryNivel->num_rows > 0) {
		while($row = $queryNivel->fetch_assoc()) {
			$privilegioAnt = (int) $row['MAX( privilegio )'];
		}
	}

	//si es nulo el rhino privilegio que empieze desde 0
	if ($privilegioAnt==0||$privilegioAnt==null||$privilegioAnt=='') {
		$privilegioAnt=0;
	}

	//Actualizar perfil de usuario con respecto al paquete que compro
	if($paquete=='3'){
		$paquete = '1';
		$queryTipo = mysqli_query($db_connection,"UPDATE  `rhinored`.`rhinoempresario` SET  `tipo_usuario` =  '$paquete' WHERE  `rhinoempresario`.`id_rhinoemp` ='$id' LIMIT 1 ;") or die(mysql_error($db_connection));
		mysqli_query($db_connection, $queryTipo);
	}
	elseif ($paquete=='4') {
		echo 'Se activaron 90 rhino privilegios';
	}
	else{
		$queryTipo = mysqli_query($db_connection,"UPDATE  `rhinored`.`rhinoempresario` SET  `tipo_usuario` =  '$paquete' WHERE  `rhinoempresario`.`id_rhinoemp` ='$id' LIMIT 1 ;") or die(mysql_error($db_connection));
		mysqli_query($db_connection, $queryTipo);
	}

	//creacion y activacion de rhino privilegios 
	foreach (range($privilegioAnt+1, $privilegioAnt+90) as $numero) {
		echo $numero;
		$sql = "INSERT INTO  `rhinored`.`privilegios` (
		`id` ,
		`id_rhino` ,
		`codigo` ,
		`privilegio` ,
		`activo` ,
		`paquete` ,
		`fecha`
		)
		VALUES (
		null,  '$id',  '$codigo',  '$numero',  '$activo',  '$paquete',  '$hoy');";
		mysqli_query($db_connection, $sql);
		echo "SI| Listo cumple con todo. Guardado Satisfactoriamente 
		<script type='text/javascript'>
		function redireccionar(){
		  window.location ='consumo.php';
		} 
		setTimeout ('redireccionar()', 200); //tiempo expresado en milisegundos
		</script>";
	}
	

}
echo "string".$codigo;
?>
<html>
<p>PAQUETE RHINO EMPRESARIO</p>
<img src="../images/empresario.png" id="empresario">
<p>PAQUETE RHINO EMPRENDEDOR</p>
<img src="../images/emprendedor.png" id="emprendedor">
<p>PAQUETE RHINO ASENSO</p>
<img src="../images/asensso.png" id="asenso">
<p>PAQUETE RHINO PRIVILEGIO</p>
<img src="../images/privilegio.png" id="privilegio">
<div id="empresarioform">
	<form method="post" action="inscripcion.php">
		<input type="text" name="paquete" value="1">
		<input type="text" name="codigo" value="<?=$codigo?>">
		<input type="text" name="activo" value="1">
		<input type="submit"  id="boton" value="Pagar">
	</form><br><br>
	<table id="tabla">
		<tr>
			<td colspan="5">Costos Paquete Empresarial</td>
		</tr>
		<tr>
			<td>Renovación</td>
			<td>Item</td>
			<td>Unidades</td>
			<td>Costo Venta</td>
			<td>Costo por renovación</td>
		</tr>
		<tr>
			<td rowspan="2">Por Demanda</td>
			<td>llavero</td>
			<td>1.00</td>
			<td>6,000.00</td>
			<td rowspan="2">10,000.00</td>
		</tr>
		<tr>
			<td>cartilla + contrato</td>
			<td>1.00</td>
			<td>4,000.00</td>
		</tr>
		<tr>
			<td>3 Meses</td>
			<td>Rhino Privilegio</td>
			<td>90.00</td>
			<td>120,000.00</td>
			<td>120,000.00</td>
		</tr>
		<tr>
			<td rowspan="2">Anual</td>
			<td>credencial</td>
			<td>1.00</td>
			<td>10,000.00</td>
			<td rowspan="2">20,000.00</td>
		</tr>
		<tr>
			<td>oficina virtual</td>
			<td>1.00</td>
			<td>10,000.00</td>
		</tr>
		<tr>
			<td colspan="3"><strong>Total</strong></td>
			<td colspan="2"><strong>150,000.00</strong></td>
		</tr>
	</table>
</div>

<div id="emprendedorform">
	<form method="post" action="inscripcion.php">
		<input type="text" name="paquete" value="2">
		<input type="text" name="codigo" value="<?=$codigo?>">
		<input type="text" name="activo" value="1">
		<input type="submit"  id="boton" value="Pagar">
	</form><br><br>
	<table id="tabla">
		<tr>
			<td colspan="5">Costos Paquete Emprendedor</td>
		</tr>
		<tr>
			<td>Renovación</td>
			<td>Item</td>
			<td>Unidades</td>
			<td>Costo Venta</td>
			<td>Costo por renovación</td>
		</tr>
		<tr>
			<td rowspan="2">Anual</td>
			<td>Rhhino Privilegio</td>
			<td>90.00</td>
			<td>120,000.00</td>
			<td>120,000.00</td>
		</tr>
		<tr>
			<td>Credencial</td>
			<td>1.00</td>
			<td>10,000.00</td>
			<td>10,000.00</td>
		</tr>
		<tr>
			<td colspan="3"><strong>Total</strong></td>
			<td colspan="2"><strong>130,000.00</strong></td>
		</tr>
	</table>
</div>

<div id="ascensoform">
	<form method="post" action="inscripcion.php">
		<input type="text" name="paquete" value="3">
		<input type="text" name="codigo" value="<?=$codigo?>">
		<input type="text" name="activo" value="1">
		<input type="submit"  id="boton" value="Pagar">
	</form><br><br>
	<table id="tabla">
		<tr>
			<td colspan="5">Costos Paquete Ascenso</td>
		</tr>
		<tr>
			<td>Renovación</td>
			<td>Item</td>
			<td>Unidades</td>
			<td>Costo Venta</td>
			<td>Costo por renovación</td>
		</tr>
		<tr>
			<td rowspan="2">Por demanda</td>
			<td>llavero</td>
			<td>1.00</td>
			<td>10,000.00</td>
			<td rowspan="2">14,000.00</td>
		</tr>
		<tr>
			<td>cartilla + contrato</td>
			<td>1.00</td>
			<td>4,000.00</td>
		</tr>
		<tr>
			<td>Anual</td>
			<td>oficina virtual</td>
			<td>1.00</td>
			<td>20,000.00</td>
			<td>20,000.00</td>
		</tr>
		<tr>
			<td colspan="3"><strong>Total</strong></td>
			<td colspan="2"><strong>34,000.00</strong></td>
		</tr>
	</table>
</div>
<div id="privilegioform">
	<form method="post" action="inscripcion.php">
		<input type="text" name="paquete" value="4">
		<input type="text" name="codigo" value="<?=$codigo?>">
		<input type="text" name="activo" value="1">
		<input type="submit"  id="boton" value="Pagar">
	</form><br><br>
	<table id="tabla">
		<tr>
			<td colspan="5">Costos Paquete Empresarial</td>
		</tr>
		<tr>
			<td>Renovación</td>
			<td>Item</td>
			<td>Unidades</td>
			<td>Costo Venta</td>
			<td>Costo por renovación</td>
		</tr>
		<tr>
			<td>3 Meses</td>
			<td>Rhino Privilegio</td>
			<td>90.00</td>
			<td>120,000.00</td>
			<td>120,000.00</td>
		</tr>
		<tr>
			<td colspan="3"><strong>Total</strong></td>
			<td colspan="2"><strong>120,000.00</strong></td>
		</tr>
	</table>
</div>
</html>
<style type="text/css">
#empresarioform form,#emprendedorform form,#ascensoform form,#privilegioform form{
	float: left;
	width: 20%;
	padding-bottom: 10px;
	padding-top: 10px;
	padding-left: 10px;
	padding-right: 10px;

}
#tabla{
	float: left;
	width: 78%;
	text-align: center;
	font-size: 20px;
	border: 1px solid;
}
#tabla td{
	border: 1px solid;
}
#empresarioform,#emprendedorform,#ascensoform,#privilegioform{
	float: left;
	width:100%;
	background: rgba(190,79,86,1);
	background: -moz-linear-gradient(top, rgba(190,79,86,1) 0%, rgba(168,19,27,1) 100%);
	background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(190,79,86,1)), color-stop(100%, rgba(168,19,27,1)));
	background: -webkit-linear-gradient(top, rgba(190,79,86,1) 0%, rgba(168,19,27,1) 100%);
	background: -o-linear-gradient(top, rgba(190,79,86,1) 0%, rgba(168,19,27,1) 100%);
	background: -ms-linear-gradient(top, rgba(190,79,86,1) 0%, rgba(168,19,27,1) 100%);
	background: linear-gradient(to bottom, rgba(190,79,86,1) 0%, rgba(168,19,27,1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#be4f56', endColorstr='#a8131b', GradientType=0 );
}
img{
	float: left;
	width: 250px;
}
input{
	color: black;
}
#boton{
	color: white;
	background-color: #000000;
}
#boton:hover{
	color: rgba(83,102,112,1);
	background-color: white;
}
</style>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script> 
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='js/da0415260bc83974687e3f9ae.js'></script>
<script src="js/index.js"></script>
<script>
$(document).ready(function(){
	$('#empresarioform').hide();
	$('#emprendedorform').hide();
	$('#ascensoform').hide();
	$('#privilegioform').hide();
	
	var tipo_usuario = "<?php echo $tipo_usuario; ?>";

	if(tipo_usuario == '1'){
		$('#emprendedor').hide();
		$('#asenso').hide();
		$('#empresario').hide();
	}
	if(tipo_usuario == '2'){
		$('#emprendedor').hide();
	}
	if(tipo_usuario == '0'){
		$('#asenso').hide();
		$('#privilegio').hide();
	}
});


$('#empresario').click(function(){
  $('#empresarioform').show(1000);
  $('#emprendedorform').hide();
  $('#ascensoform').hide();
  $('#privilegioform').hide();
});

$('#emprendedor').click(function(){
  $('#emprendedorform').show(1000);
  $('#empresarioform').hide();
  $('#ascensoform').hide();
  $('#privilegioform').hide();
});

$('#asenso').click(function(){
  $('#ascensoform').show(1000);
  $('#empresarioform').hide();
  $('#emprendedorform').hide();
  $('#privilegioform').hide();
});

$('#privilegio').click(function(){
  $('#privilegioform').show(1000);
  $('#empresarioform').hide();
  $('#emprendedorform').hide();
  $('#ascensoform').hide();
});


</script>