<?php //Abrir el archivo csv


function departamentos($url){
	$fp = fopen($url, "r");
	$lista='';
	$departamento = array();
	while(!feof($fp)) {
		$linea = fgets($fp);
		list($id,$depto)=explode(';', $linea,2);
		$lista = array($id=>$depto);
		$departamento = array_merge($departamento,$lista);
	}
	fclose($fp);
	return $departamento;
}

?>