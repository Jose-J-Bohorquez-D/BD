<?php

class ConexionBD{

  static public function conectarbd(){

    $link=new PDO("mysql:host=localhost;dbname=trucks2022","root","");

    #var_dump($link); #testeo conexion

    return $link;

  }

}
/*
$testConexion=new ConexionBD;
$testConexion->conectarbd();
*/
