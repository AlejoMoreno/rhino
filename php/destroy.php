<?php
// remove all session variables
session_unset(); 

// destroy the session 
session_destroy(); 

echo "Salida exitosa 
<script type='text/javascript'>
function redireccionar(){
  window.location ='../index.php';
} 
setTimeout ('redireccionar()', 800); //tiempo expresado en milisegundos
</script>";
?>