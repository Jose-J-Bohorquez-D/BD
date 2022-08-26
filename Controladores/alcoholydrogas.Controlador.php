<?php 
class Controlador_Alcohol_Y_Drogas{
	public function ctrMostrarServiciosFiltradosAD(){
		$respuesta=Modelo_Alcohol_Y_Drogas::mdlMostrarServiciosFiltradosAD("servicios_asignados_vehiculos");
		#var_dump($respuesta);
		foreach ($respuesta as $key => $value) {
		echo '
		<tr>
			<td><a href="#" class="btn btn-info btn-sm">send mail</a href="#"></td>
			<td>'.$value["nombre_empresa"].'</td>
			<td>'.$value["nombre_cliente"].'</td>
			<td>'.$value["placa"].'</td>
			<td>'.$value["nombre_servicio"].'</td>
			<td>'.$value["fecha_inicio_serv"].'</td>
			<td>'.$value["fecha_fin_serv"].'</td>
			<td>'.$value["valor_servicio_asignado"].'</td>
    	</tr>
		';
		}
	}

	public function ctrEnviarMail25x100to(){
		$respuesta=Modelo_Alcohol_Y_Drogas::mdlMostrarServiciosFiltradosAD("servicios_asignados_vehiculos");
		#print_r($respuesta[0]);echo "<br>";
		$totalRegistros=count($respuesta);
		#$totalRegistros=5;
		$porcentaje="0.25";
		$subTotal=round($totalRegistros*$porcentaje);
		$total=$subTotal;
		echo "el 25%  de los: &nbsp;" . $totalRegistros . "&nbsp; registros obtenidos es: &nbsp;" . $total;
		#echo "&nbsp; y el valor final es :  &nbsp;" . round($total) . "&nbsp; por que php con su funcion round redondea hacia arriba y en enteros";
		echo "<br>";
		#echo "EL NUMERO ALEATORIO ES : " .$randomizer=rand(0,$totalRegistros);
		$na;#para usar en el for anidado
		$listado_random=array();
		var_dump($listado_random);
		for ($i=0; $i < $total ; ++$i) {
				echo "<br>";
				$na=rand(0,$totalRegistros-1);
				echo "los numeros aleatorios son : " . $na;
				echo " el correo se le enviara a :  ". $respuesta[$na][3];
				$guardar_en_array=array_push($listado_random,$respuesta[$na][3]);
				if (in_array($guardar_en_array,$listado_random,true)) {
					echo "ya existe " . $guardar_en_array;
				}



			


			#echo "<br>";
			#echo "EL NUMERO ALEATORIO ES :" .$randomizer=rand(0,($totalRegistros-1));
			#echo "<br>";
			#$mails=$respuesta[$randomizer][3];
			#echo 'el mail sera enviado a : &nbsp'. $mails;
			#echo "<br>";


		}echo "<br>";echo "<br>"; 
		var_dump($listado_random);
		

	}
}



 ?>
