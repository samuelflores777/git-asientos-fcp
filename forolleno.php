<?php
require 'db.php';
session_start();
$var1 = $_GET['variable'];
$var2 = $_GET['variable2'];
    
if (isset($_SESSION['num_dni'])){
    $num_dni = $_SESSION['num_dni'];

    $q = "SELECT nom_dni, num_dni, nombre, apellido, email, conexion FROM dato_adulto WHERE dato_adulto.num_dni = '".$num_dni."'";
    $consulta = mysqli_query($conexion,$q);
    $array = mysqli_fetch_array($consulta);
    $user = null;
}
    if (isset($array)){
        $user = $array;
    }
    else{
        header("location: index.html", TRUE, 301);
        exit();
    }
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BIENVENIDOS</title>
</head>
<body>
<div class="contenedor">
<header></header>
<section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logo1.png" alt="logoFCP"></a>
        </div>

        <div class="ref2">
           <label>BIENVENIDO:  <?= $user['nombre'];?> <?= $user['apellido'];?> </label><BR>
           <label>Tu Nro. de  <?= $user['nom_dni'];?> es : <?= $user['num_dni'];?> </label> <BR>
            <label>TU EMAIL: <?= $user['email'];?> </label> <BR>
            <label>TU CONEXION ES: <?= $user['conexion'];?> </label> <BR>
            <label>FECHA DE DOMINGO : <?= $var2['fecha'];?> </label><BR>
        </div>
        <div class="lleno">
        <H1>FORO LLENO</H1>
        <H1>LO SIENTO</H1>
        </div>
        
        <div class="ref0">
           <br><a href="vistaA.php">VOLVER</a></br>
        </div>

        <div class="ref1">
           <br><a href="salir.php">Salir de Sessión</a></br>
        </div>
     
</section>
 </div>
</body>
</html>