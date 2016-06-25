<?php

$hoy=date("d/m/Y");

?>
<!DOCTYPE html>
<html>
  <?php
  include('encabezado.php');
  ?>
  <body>

<div class="pen-title">
  <img id="logo" src="../images/logo.jpg">
  <h1> Recordatorio Contraseña </h1>
  <?php echo $hoy;?>
</div>
  	</head>
  	<body>
  		<form><center>
  			<section id="olvido">
  				<h3>Recordatorio contraseña</h3>
  				<p>ingrese su usuario y correo electronico, en su correo le indicarán como realizar el cambio de contraseña para poder ingresar a Rhino Red.</p>
  				<input type="text" id="usuarioOlvido" placeholder="Usuario/cedula/codigo"><br>
          <input type="password" id="passwordOlvido" placeholder="Contraseña"><br><br>
				<input type="button" id="continuar" href="javascript:;" onclick="olvidoPassword($('#usuarioOlvido').val(),$('#passwordOlvido').val());return false;" value="Recuperar Contraseña"/>
        <div id="resultado"></div>
  			</section></center>
  		</form>
  	</body>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script> 
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='js/da0415260bc83974687e3f9ae.js'></script>
<script src="js/index.js"></script>
<script>
function olvidoPassword(usuarioOlvido,passwordOlvido){
        var parametros = {
                "usuarioOlvido" : usuarioOlvido,
                "passwordOlvido" : passwordOlvido
        };
        $.ajax({
                data:  parametros,
                url:   '../php/save.php',
                type:  'post',
                beforeSend: function () {
                        $("#resultado").html("Procesando, espere por favor...");
                },
                success:  function (response) {
                  if (response == "SI"){
                    window.location="html/profile.php";
                  }
                  else {
                    $("#resultado").html(response);
                  }
                }
        });
}

</script>


</html>