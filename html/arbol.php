<div id="nivelArbol">
<?php
//verificacion de niveles y arbol de rhino empresario
require_once('../connect2DB.php');
$db_connection = connect2DB();

//se guardara toda la informacion de las personas
$primerNivelarray = array();
$segundoNivelarray = array();
$terceroNivelarray = array();
$cuartoNivelarray = array();
$quintoNivelarray = array();
$sextoNivelarray = array();
$septimoNivelarray = array();
$octavoNivelarray = array();

$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `id_rhinoemp` = '$id'; ") or die(mysqli_error($db_connection));
if ($queryNivel->num_rows > 0) {
	while($row = $queryNivel->fetch_assoc()) {
		//echo '<div id="primerNivel"> <div id="nombre"><hr> Nombres '.$row['nombre'].' '.$row['apellido'].'<br>Cedula: '.$row['num_identificacion'].'</div></div>';
		$cedula = $row['num_identificacion'];
		$fecha_ingreso = $row['fecha_ingreso'];
	}
}


//echo '<br><br>primer nivel<br>';
$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `cedulaPatrocinador` LIKE  '$cedula'; ") or die(mysqli_error($db_connection));
$primerNivel = array();
if ($queryNivel->num_rows > 0) {
	while($row = $queryNivel->fetch_assoc()) {
		//echo '<div id="segundoNivel"> <div id="nombre"> Nombres '.$row['nombre'].' '.$row['apellido'].'<br>Cedula: '.$row['num_identificacion'].'</div></div>';
		array_push($primerNivel, $row['num_identificacion']);
	}
	if(sizeof($primerNivel)<3){
		$cont = sizeof($primerNivel)-9;
		//echo 'faltan por registrar'.$cont.', ve por ellos.';
	}
}


//echo '<br><br>segundo nivel <br>';
$segundoNivel = array();
foreach ($primerNivel as $key => $value) {
	$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `cedulaPatrocinador` LIKE  '$value'; ") or die(mysqli_error($db_connection));
	if ($queryNivel->num_rows > 0) {
		while($row = $queryNivel->fetch_assoc()) {
			//echo '<div id="tercerNivel"> <div id="nombre"> Nombres '.$row['nombre'].' '.$row['apellido'].'<br>Cedula: '.$row['num_identificacion'].'</div></div>';
			array_push($segundoNivel, $row['num_identificacion']);
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
	$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `cedulaPatrocinador` LIKE  '$value'; ") or die(mysqli_error($db_connection));
	if ($queryNivel->num_rows > 0) {
		while($row = $queryNivel->fetch_assoc()) {
			//echo '<div id="cuartoNivel"> <div id="nombre"> Nombres '.$row['nombre'].' '.$row['apellido'].'<br>Cedula: '.$row['num_identificacion'].'</div></div>';
			array_push($tercerNivel, $row['num_identificacion']);
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
	$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `cedulaPatrocinador` LIKE  '$value'; ") or die(mysqli_error($db_connection));
	if ($queryNivel->num_rows > 0) {
		while($row = $queryNivel->fetch_assoc()) {
			//echo '<div id="quintoNivel"> <div id="nombre"> Nombres '.$row['nombre'].' '.$row['apellido'].'<br>Cedula: '.$row['num_identificacion'].'</div></div>';
			array_push($cuartoNivel, $row['num_identificacion']);
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
	$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `cedulaPatrocinador` LIKE  '$value'; ") or die(mysqli_error($db_connection));
	if ($queryNivel->num_rows > 0) {
		while($row = $queryNivel->fetch_assoc()) {
			//echo '<div id="sextoNivel"> <div id="nombre"> Nombres '.$row['nombre'].' '.$row['apellido'].'<br>Cedula: '.$row['num_identificacion'].'</div></div>';
			array_push($quintoNivel, $row['num_identificacion']);
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
	$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `cedulaPatrocinador` LIKE  '$value'; ") or die(mysqli_error($db_connection));
	if ($queryNivel->num_rows > 0) {
		while($row = $queryNivel->fetch_assoc()) {
			//echo '<div id="septimoNivel"> <div id="nombre"> Nombres '.$row['nombre'].' '.$row['apellido'].'<br>Cedula: '.$row['num_identificacion'].'</div></div>';
			array_push($sextoNivel, $row['num_identificacion']);
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
	$queryNivel = mysqli_query($db_connection,"SELECT * FROM  `rhinoempresario` WHERE  `cedulaPatrocinador` LIKE  '$value'; ") or die(mysqli_error($db_connection));
	if ($queryNivel->num_rows > 0) {
		while($row = $queryNivel->fetch_assoc()) {
			//echo '<div id="octavoNivel"> <div id="nombre">Nombres '.$row['nombre'].' '.$row['apellido'].'<br>Cedula: '.$row['num_identificacion'].'</div></div>';
			array_push($septimoNivel, $row['num_identificacion']);
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


//imprimir listas

?>
</div>

<div id="content">
<?php /*
print_r($primerNivel); echo 'primero';
print_r($segundoNivel);echo 'segundo';
print_r($tercerNivel);echo 'tercero';
print_r($cuartpNivel);echo 'cuarto';
print_r($quintoNivel);echo 'quinto';
print_r($sextoNivel);echo 'sexto';
print_r($septimoNivel);echo 'septimo';
print_r($octavoNivel);echo 'octavo';*/

$redCompleta = array();
array_push($redCompleta, $primerNivel);
array_push($redCompleta, $segundoNivel);
array_push($redCompleta, $tercerNivel);
array_push($redCompleta, $cuartpNivel);
array_push($redCompleta, $quintoNivel);
array_push($redCompleta, $sextoNivel);
array_push($redCompleta, $septimoNivel);
array_push($redCompleta, $octavoNivel);

function arbol($nivel){
	echo '
	<ul>
		<li></li>
	</ul>';
}


//arbol($primerNivel);

echo '
<ul>
	<li>primero
		<ul>
			<li>segundo
				<ul>
					<li>Tercero
						<ul>
							<li>Cuarto
								<ul>
									<li>qUNTO
										<ul>
											<li>sEXTO
												<ul>
													<li>septimo
														<ul>
														</ul>
													</li>
												</ul>
											</li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</li>
</ul>';


echo "<hr> <h3>Estructura Red</h3>";
echo '<ul><li>yo';
if (sizeof($primerNivel) > 0){
	if(sizeof($primerNivel)>1){
		echo "<ul>";
		foreach ($primerNivel as $key => $value) {
			echo '<li>';
			for ($cont = 1;$cont<sizeof($primerNivel);$cont++){
				echo '<li>'.$value.'</li>';
			}
			echo '</li>';
		}
		echo "</ul>";	
	}
	else{
		echo "<ul>";
		foreach ($primerNivel as $key => $value) {
			echo '<li>'.$value.'</li>';
		}
		echo "</ul>";
	}
}
if (sizeof($segundoNivel) > 0){
	if(sizeof($segundoNivel)>1){
		echo "<ul>";
		foreach ($segundoNivel as $key => $value) {
			echo '<ul>';
			for ($cont = 1;$cont<sizeof($segundoNivel);$cont++){
				echo '<li>'.$value.'</li>';
			}
			echo '</ul>';
		}
		echo "</ul>";	
	}
	else{
		echo "<ul>";
		foreach ($segundoNivel as $key => $value) {
			echo '<li>'.$value.'</li>';
		}
		echo "</ul>";
	}
}
if (sizeof($tercerNivel) > 0){
	if(sizeof($tercerNivel)>1){
		echo "<ul>";
		foreach ($tercerNivel as $key => $value) {
			echo '<ul>';
			for ($cont = 1;$cont<sizeof($tercerNivel);$cont++){
				echo '<li>'.$value.'</li>';
			}
			echo '</ul>';
		}
		echo "</ul>";	
	}
	else{
		echo "<ul>";
		foreach ($tercerNivel as $key => $value) {
			echo '<li>'.$value.'</li>';
		}
		echo "</ul>";
	}
}
if (sizeof($cuartpNivel) > 0){
	if(sizeof($cuartpNivel)>1){
		echo "<ul>";
		foreach ($cuartpNivel as $key => $value) {
			echo '<ul>';
			for ($cont = 1;$cont<sizeof($cuartpNivel);$cont++){
				echo '<li>'.$value.'</li>';
			}
			echo '</ul>';
		}
		echo "</ul>";	
	}
	else{
		echo "<ul>";
		foreach ($cuartpNivel as $key => $value) {
			echo '<li>'.$value.'</li>';
		}
		echo "</ul>";
	}
}
if (sizeof($quintoNivel) > 0){
	if(sizeof($quintoNivel)>1){
		echo "<ul>";
		foreach ($quintoNivel as $key => $value) {
			echo '<ul>';
			for ($cont = 1;$cont<sizeof($quintoNivel);$cont++){
				echo '<li>'.$value.'</li>';
			}
			echo '</ul>';
		}
		echo "</ul>";	
	}
	else{
		echo "<ul>";
		foreach ($quintoNivel as $key => $value) {
			echo '<li>'.$value.'</li>';
		}
		echo "</ul>";
	}
}
if (sizeof($sextoNivel) > 0){
	if(sizeof($sextoNivel)>1){
		echo "<ul>";
		foreach ($sextoNivel as $key => $value) {
			echo '<ul>';
			for ($cont = 1;$cont<sizeof($sextoNivel);$cont++){
				echo '<li>'.$value.'</li>';
			}
			echo '</ul>';
		}
		echo "</ul>";	
	}
	else{
		echo "<ul>";
		foreach ($sextoNivel as $key => $value) {
			echo '<li>'.$value.'</li>';
		}
		echo "</ul>";
	}
}
if (sizeof($septimoNivel) > 0){
	if(sizeof($septimoNivel)>1){
		echo "<ul>";
		foreach ($septimoNivel as $key => $value) {
			echo '<ul>';
			for ($cont = 1;$cont<sizeof($septimoNivel);$cont++){
				echo '<li>'.$value.'</li>';
			}
			echo '</ul>';
		}
		echo "</ul>";	
	}
	else{
		echo "<ul>";
		foreach ($sextoNivel as $key => $value) {
			echo '<li>'.$value.'</li>';
		}
		echo "</ul>";
	}
}
if (sizeof($octavoNivel) > 0){
	echo "<ul>";
	foreach ($octavoNivel as $key => $value) {
		echo '<li>';
		for ($cont = 1;$cont>sizeof($octavoNivel);$cont++){
			echo '<li>'.$value.'</li>';
		}
		echo '</li>';
		
	}
	echo "</ul>";
}
echo "</li></ul>";
?>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script> 
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='js/da0415260bc83974687e3f9ae.js'></script>
<script src="js/index.js"></script>
<script>

$(document).ready(function(){
  $('#nombre').hide();
});
</script>
<style type="text/css">
#nombre{
	font-size: 2px;
}
#content{
	background-color: #222222;
}
#nivelArbol{
	width: 100%;
	height: 100px;
	z-index: 1;
	background-color: white;
	padding-top: 50px;
	padding-left: 50px;
}
#primerNivel{
	float: left;
}
#segundoNivel{
	float: left;
}
#tercerNivel{
	float: left;
}
#cuartoNivel{
	float: left;
}
#quintoNivel{
	float: left;
}
#sextoNivel{
	float: left;
}
#septimoNivel{
	float: left;
}
#octavoNivel{
	float: left;
}
#nivelArbol div{
	width: 150px;
	height: 150px;
	float: left;
	background: rgba(254,182,69,1);
	background: -moz-linear-gradient(left, rgba(254,182,69,1) 0%, rgba(254,182,69,0.75) 100%);
	background: -webkit-gradient(left top, right top, color-stop(0%, rgba(254,182,69,1)), color-stop(100%, rgba(254,182,69,0.75)));
	background: -webkit-linear-gradient(left, rgba(254,182,69,1) 0%, rgba(254,182,69,0.75) 100%);
	background: -o-linear-gradient(left, rgba(254,182,69,1) 0%, rgba(254,182,69,0.75) 100%);
	background: -ms-linear-gradient(left, rgba(254,182,69,1) 0%, rgba(254,182,69,0.75) 100%);
	background: linear-gradient(to right, rgba(254,182,69,1) 0%, rgba(254,182,69,0.75) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#feb645', endColorstr='#feb645', GradientType=1 );
	border: 1px solid #000000;
	text-align: center;
}
#nivelArbol div:hover{
	width: 200px;
	height: 200px;
	font-size: 20px;
}
br{
	color: #222222;
}
</style>