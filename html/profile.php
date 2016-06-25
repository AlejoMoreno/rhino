<?php
session_start();
$tipo = $_SESSION['type'];
$id = $_SESSION['id'];

echo "el id es: ".$id;
echo "<br> el tipo es: ".$tipo;

include('../php/red.php');

?>
<html>
<head>
<?php include('encabezado.php');?>
</head>
<body>
	<section name="principalname" class="principalclass" id="principalid">
		<?php include('perfil.php');?>

		<section id="menu">
			<div id='cssmenu'>
				<ul>
				   <li class='active'><a href='#'><span>Inicio</span></a></li>
				   <li><a href='consumo.php'><span>Consumir</span></a></li>
				   <li><a href='#'><span>Financiero</span></a></li>
				   <li><a href='#'><span>Pagos</span></a></li>
				   <li class='last'><a href='#'><span>Estadísticas</span></a></li>
				</ul>
			</div>
			<center><h1>INICIO</h1></center>
		</section>

		<section id="arbol">
			<div id="tituloArbol">
				<h2>Arbol Rhino</h2>
				<?php include('arbol.php');?>
			</div>
			
		</section>

		<section id="mensajes">
			<div id="tituloArbol">
				<h2>Mensajes</h2>
			</div>
			<div id="textoAlertas">
				<hr>
				<?php include('blog.php');?>
			</div>
		</section>
	</section>

</body>
</html>
