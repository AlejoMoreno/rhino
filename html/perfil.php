<section id="perfil">
			<img src="http://www.aulafacil.com/uploads/perfiles/28/foto.2bd2e06d14be0fa01700d60c68fe646c.jpg"><br>
			<div id="seccionPerfil">
			<div id="nombresPerfil">
				<table id="tabla-perfil">
					<tr>
						<td>
							<ul>
								<li><?php echo $nombresApellidos?></li>
								<li>Rango: <strong><?php echo $level?></strong></li>
								<li>Rhino Empresarios: <strong><?php echo $cantidadRhinoEmpresarios?></strong></li>
								<li>Ptos Personales: <strong>900 pts</strong></li>
								<li>Ptos Red: <strong>900 pts</strong></li>
							</ul>
						</td>
						<td>
							<ul>
								<li>Usuario: <strong><?php echo $usuario;?></strong></li>
								<li>Cédula: <strong><?php echo $cedula?></strong></li>
								<li>Código: <strong><?php echo $codigo?></strong></li>
								<li>Rhino Privilegios: <strong><?php echo $rhinoPActivos.' - '.$rhinoPGastados?></strong></li>
								<li>Ptos Rendimiento: <strong>900 pts</strong></li>
							</ul>
						</td>
						<td>
							<ul>
								<li><?php if($tipo_usuario == '1'){echo 'Rhino Empresario';} elseif($tipo_usuario == '2'){echo 'Rhino Emprendedor';} ?> </li>
								<li>Faltan 3 meses para comprar Rhino-Privilegio</li>
								<li>Faltan 3 meses para tener otro Rhino-empresario</li>
								<li>Actualiza datos</li>
								<li>...</li>
							</ul>
						</td>
					</tr>
				</table>
			</div>
			<div id="nombresActualiza">
				<a href="../php/destroy.php">Salir</a>
				<?php echo $hoy?>
				<span id="resultado"> </span>
			</div>
			</div>
		</section>