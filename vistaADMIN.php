<?php
require 'db.php';
session_start();
$nom1 = $_SESSION['nombre'];
$ape1 = $_SESSION['apellido'];
$carg1 = $_SESSION['cargo'];
$num_dni = $_SESSION['num_dni'];

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADMINISTRACIÓN</title>
</head>
<body>
<div class="contendor">
<header></header>
 <section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logo1.png" alt="logoFCP"></a>
        </div>
        <div class="ref2">
            <label>BIENVENIDO:  <?= $nom1;?> <?= $ape1;?> </label><br>
            <label>TU CARSO ES:  <?= $carg1;?> </label><br>
            <label>TU DNI ES:  <?= $num_dni;?> </label><br>
        </div>
        <div class="ref1">
        <h3><a href="salir.php">Cerrar Sessión</a></h3><br>
        </div>   

        <div class="ref0">
                <a href="listUSU.php">LISTA DE USUARIOS</a>
                <a href="listADULTO.php">LISTA DE ADULTOS</a>
                <a href="listKIDS.php">LISTA DE KIDS</a>
                <a href="usuarios.php">REGISTRAR SUPERVISORES</a>
                <a href="lider_fcp.php">REGISTRAR LIDERES</a>
                <a href="registroA.php">REGISTRAR ADULTOS</a>
                <a href="registroN.php">REGISTRAR KIDS</a>
                <a href="vistaUadmin.php">VER LISTAS</a>
                <a href="activoVERadmin.php">ACTIVAR SERVICIO</a>


        </div>

</section>
</div>
</body>
</html>