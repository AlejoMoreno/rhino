<?php
include('php/leerArchivo.php');
$listaCiudades = departamentos('ciudades.csv');
$listaMunicipios = departamentos('municipios.csv');
$hoy=date("d/m/Y");

?>
<!DOCTYPE html>
<html >
  <?php
  include('html/encabezado.php');
  ?>
  <body>

<div class="pen-title">
  <br><br><h1>INGRESO DE SESIÓN</h1><br><?php echo $hoy;?><br><br><br>
</div>
<!-- Form Module-->
<div id="fondo"></div>
<div class="module form-module" id="modulo-form">
  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
    <div class="tooltip"> Regitro </div>
  </div>
  <div class="form">
    <h2>Inicio de sesión</h2>
    <!-- INGRESO DEL LOGIN LOGICO PARA RHINO RED -->
    <form>
      <input type="text" id="Username" >
      <input type="password" id="Password" />
      <input type="button" id="continuar" href="javascript:;" onclick="login($('#Username').val(), $('#Password').val());return false;" value="Sign In"/>
    </form>
  </div>
  <div class="form">
    <h2>Crear una cuenta</h2>
    <!-- FORMULARIO PARA INGRESAR UN RHINO EMPRESARIO A LA RHINO RED- -->
    <form>
      <input type="hidden" id="fecha_ingreso" value=<?=$hoy?>>
      <section class="seccion1">
        <h3>Códigos Rhino </h3>
        <p>Registre la <strong>cédula</strong> de quién lo recomendo, para así asociarlo a nuestra red, seguido de ello ingrese el código de la targeta Rhino Red que le dieron al realizar la inscripción</p>
        <input type="text" id="cedulaPatrocinador" placeholder="Cedula Patrocinador">
      </section>

      <section id="seccion1">
        <h3>Datos personales</h3>
        <p>Registre los datos personales para poder ofreser todas las garantias estipuladas en la inscripción a Rhino REd, sea claro con los datos.</p>
        <input type="text" id="nomnbre" placeholder="Nombres">
        <input type="text" id="apellido" placeholder="Apellidos">
        <select id="tipoIdentificacion">
          <option value="">---Tipo de Identificación---</option>
          <option value="ced">Cédula</option>
          <option value="ext">Extrangeria</option>
        </select>
        <input type="text" id="cedula" placeholder="Identificacion">
        <select id="genero">
          <option value="">GÉNERO</option>
          <option value="masculino"> Masculino</option>
          <option value="femenino"> Femenino</option>
          <option value="otra"> Otro</option>
        </select>  
        <select id="municipio">
          <?php 
          foreach ($listaMunicipios as $key => $value) {
                  echo '<option value="'.$value.'">'.$value.'</option>';
          }
          ?>
          <option value="otra"> OTRO </option>
        </select>
        <select id="localidad">
          <?php 
          foreach ($listaCiudades as $key => $value) {
                  echo '<option value="'.$value.'">'.$value.'</option>';
          }
          ?>
          <option value="otra"> OTRA </option>
        </select>
        <p style="float:left; margin: 10px 10px 20px;"><br>Fecha de nacimiento:</p>
        <input type="date" id="fechanaciemiento">
        <input name="telefono" id="telefono" type="text" placeholder="Teléfono">
        <input name="celular" id="celular" type="text" placeholder="Móvil">
        <input type="email" id="correo" placeholder="Correo electronico">
        <div id="direccion"><select id="dir1"><option value="CL">CL</option><option value="CR">CR</option><option value="TV">TV</option><option value="DG">DG</option></select><input id="dir2" type="text" placeholder="38 A"><span> # </span><input id="dir3" type="text" placeholder="50 A"><span> - </span><input id="dir4" type="text" placeholder="91 sur"><span> </span> <input id="dir5" type="text" placeholder="barrio"></div><br><br><br><br><br>
        <input disabled>
        <center><div id="continuar" class="botonseccion1"> Continuar </div></center>
      </section>

      <section id="seccion2">
        <h3>Registro de usuario</h3>
        <p>Ingrese el usuario y la contraseña, si todo es valido ingrese a su correo eléctornico para realizar la activación a su cuenta, una vez dentro del sistema usted podrá ser el administrador de su propia red. </p>
        <input type="text" id="Username1" placeholder="Nombre Usuario"</section>
        <input type="password" id="Password1" placeholder="Contraseña"/>
        <input type="password" id="Password2" placeholder="Repita Contraseña"/>
        <input type="button" id="continuar" href="javascript:;" onclick="register($('#Username1').val(), $('#Password1').val(), $('#Password2').val(), $('#fecha_ingreso').val(), $('#cedulaPatrocinador').val(), $('#codigoNuevoUsuario').val(), $('#nomnbre').val(), $('#apellido').val(), $('#tipoIdentificacion').val(), $('#cedula').val(), $('#genero').val(), $('#municipio').val(), $('#localidad').val(), $('#localidad1').val(), $('#fechanaciemiento').val(), $('#telefono').val(), $('#celular').val(), $('#correo').val(), $('#dir1').val(), $('#dir2').val(), $('#dir3').val(), $('#dir4').val(), $('#dir5').val());return false;" value="Register"/>
        Verifique los campos en rojo para validar todos los campos.
      </section>
    
    </form>
  </div>
  <div class="cta"><a href="html/olvidoPass.php"> Olvido su contraseña?</a></a></div>
  <div class="cta"><a href="html/activaciónRhinoPrivilegios.html"> Activar Cuenta</a></a></div>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script> 
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='js/da0415260bc83974687e3f9ae.js'></script>
<script src="js/index.js"></script>
<script>

$(document).ready(function(){
  $('#seccion2').hide();
});

$('.botonseccion1').click(function(){
  $('#seccion2').show(1000);
});


function login(username, password){
        var parametros = {
                "username" : username,
                "password" : password
        };
        $.ajax({
                data:  parametros,
                url:   'php/login.php',
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
function register(Username1, Password1, Password2, fecha_ingreso, cedulaPatrocinador, codigoNuevoUsuario, nomnbre, apellido, tipoIdentificacion, cedula, genero, municipio, localidad, localidad1, fechanaciemiento, telefono, celular, correo, dir1, dir2, dir3, dir4, dir5){
        var parametros = {
                "Username1" : Username1,
                "Password1" : Password1,
                "Password2" : Password2,
                "fecha_ingreso" : fecha_ingreso,
                "cedulaPatrocinador" : cedulaPatrocinador, 
                "codigoNuevoUsuario" : codigoNuevoUsuario,
                "nomnbre" : nomnbre,
                "apellido" : apellido,
                "tipoIdentificacion" : tipoIdentificacion,
                "cedula" : cedula,
                "genero" : genero,
                "municipio" : municipio,
                "localidad" : localidad,
                "localidad1" : localidad1,
                "fechanaciemiento" : fechanaciemiento,
                "telefono" : telefono,
                "celular" : celular,
                "correo" : correo,
                "dir1" : dir1,
                "dir2" : dir2,
                "dir3" : dir3,
                "dir4" : dir4,
                "dir5" : dir5
        };
        $.ajax({
                data:  parametros,
                url:   'php/save.php',
                type:  'post',
                beforeSend: function () {
                        $("#resultado").html("Procesando, espere por favor...");
                },
                success:  function (response) {
                       $("#resultado").html(response);
                }
        });
}



</script>
</head> 
<body> <center>
<br/> 
<span id="resultado"> </span>
</center>
</body>
 <style type="text/css">
#direccion input,#direccion select{
  position: relative;
  float: left;
  width: 130px;
}
#direccion span{
  position: relative;
  float: left;
  width: 20px;
  text-align: center;
  font-size: 30px;
}
 </style>
</html>