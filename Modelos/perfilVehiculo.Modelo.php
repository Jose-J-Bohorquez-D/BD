<?php 

class ModeloPerfilVehiculo{

    public static function mdlMostrarServiciosFiltradosPorVehiculo($datoMdl,$tabla){

        $stmt=ConexionBD::conectarbd()->prepare("

SELECT S.id_servicio, S.nombre_servicio,S.valor_servicio,id_asignacion,id_vehiculo,fecha_inicio_serv,fecha_fin_serv 
from servicios S 
JOIN servicios_asignados_vehiculos SAV 
ON S.id_servicio = SAV.id_servicio
WHERE   SAV.id_vehiculo = :idVehi");
        
        $stmt->bindParam(":idVehi",$datoMdl);
        
        $stmt->execute();

        return $stmt->fetchAll();

    }

    public static function mdlAsignarServicio($tabla,$datos){
    
    $stmt=ConexionBD::conectarbd()->prepare("
        INSERT INTO $tabla(id_vehiculo,id_servicio,fecha_inicio_serv,fecha_fin_serv)
        VALUES(:id_vehiculo,:id_servicio,:fecha_inicio_serv,:fecha_fin_serv)");

    $stmt->bindParam(":id_vehiculo",$datos["idV"]);
    $stmt->bindParam(":id_servicio",$datos["serv"]);
    $stmt->bindParam(":fecha_inicio_serv",$datos["fechaIni"]);
    $stmt->bindParam(":fecha_fin_serv",$datos["fechaFin"]);

    if ($stmt->execute()) {
        return 'cpz';
    }else{
        return "Error Revisa Con Calma";
    }

    $stmt->close();

    $stmt=null;
    }



    public static function mdlMostrarServiciosEditar($tabla,$dato){
        $stmt=ConexionBD::conectarbd()->prepare("
SELECT S.id_servicio, S.nombre_servicio,S.valor_servicio,id_asignacion,id_vehiculo,fecha_inicio_serv,fecha_fin_serv 
from servicios S 
JOIN servicios_asignados_vehiculos SAV 
ON S.id_servicio = SAV.id_servicio
WHERE   SAV.id_asignacion = :idA");
        $stmt->bindParam(":idA",$dato);
        $stmt->execute();
        return $stmt->fetch();
    }

    public static function mdlActualizarServicioAsignado($tabla,$datos){
        $stmt=ConexionBD::conectarbd()->prepare("
            UPDATE $tabla
            SET id_servicio=:idS,fecha_inicio_serv=:fIs,fecha_fin_serv=:fFs  
            WHERE id_asignacion=:idA");

        $stmt->bindParam(":idS",$datos["sEs"]);
        $stmt->bindParam(":fIs",$datos["eFi"]);
        $stmt->bindParam(":Ffs",$datos["eFf"]);
        $stmt->bindParam(":idA",$datos["idEditServ"]);

        if ($stmt->execute()) {
        
            return "cpz";

        }else{

            return "Error Revisa Con Calma";

        }

        $stmt->close();

        $stmt=null;


             }



}

?>