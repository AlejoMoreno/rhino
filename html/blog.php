<?php
session_start();
$iduser = $_SESSION['id'];
require_once('../connect2DB.php');
$db_connection = connect2DB();
$fecha = date("Y-m-d");
$queryP = mysqli_query($db_connection,"SELECT * FROM  `blog_comentarios` ") or die(mysqli_error($db_connection));
if($queryP->num_rows > 1) {
	while ($row = $queryP->fetch_assoc()) {
		if($row['autor']==$iduser){
			echo '<div id="color1"> <strong>YO:</strong> '.$row['comentario'].'...<strong>'.$row['fecha'].'</strong><br></div>';		
		}
		else{
			echo '<div id="color2"><strong>'.$row['autor'].'</strong>: '.$row['comentario'].'...<strong>'.$row['fecha'].'</strong><br></div>';			
		}
	}
}
echo '<hr><br>';
if(isset($_POST['mensajeParaEnviar'])){
	$mensaje = $_POST['mensajeParaEnviar'];
	require_once('../connect2DB.php');
	$db_connection = connect2DB();
	$querySave = "INSERT INTO  `rhinored`.`blog_comentarios` (
	`id` ,
	`autor` ,
	`correo` ,
	`comentario` ,
	`fecha`
	)
	VALUES (
	NULL ,  '$iduser',  '',  '$mensaje',  '$fecha');"; 
	mysqli_query($db_connection, $querySave);
	echo "SI| Listo cumple con todo. Guardado Satisfactoriamente 
	<script type='text/javascript'>
	function redireccionar(){
	  window.location ='profile.php';
	} 
	setTimeout ('redireccionar()', 200); //tiempo expresado en milisegundos
	</script>"; 

}
?>
<html>
	<form method="post" action="blog.php">
	<input type="text" id="mensajeParaEnviar" name="mensajeParaEnviar" placeholder="Escriba su mensaje...."><br>
	<input type="submit"  id="boton" value="Enviar">
	</form>
</html>
<style type="text/css">
#color1{
	color: #999999;
	padding-top: 10px;
}
#color2{
	color: #ffffff;
	padding-top: 10px;
}
input{
	color: white;
}
#boton{
	color: white;
	background-color: rgba(83,102,112,1);
}
#boton:hover{
	color: rgba(83,102,112,1);
	background-color: white;
}
</style>