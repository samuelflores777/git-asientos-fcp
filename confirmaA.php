<?php
require 'db.php';
session_start();
$var1 = $_GET['variable'];
$var2 = $_GET['variable2'];

$num_dni = $_SESSION['num_dni'];
$q = "SELECT nom_dni, num_dni, nombre, apellido, email, conexion FROM dato_adulto WHERE num_dni = '$num_dni' ";
$consulta = mysqli_query($conexion,$q);
$array = mysqli_fetch_array($consulta);
$user = null;

if (isset($array)){
$user = $array;
}else{
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
    <title>CONFIRMAR ADULTO</title>
</head>
<body>
<div class="contenedor">
<header></header>
<section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logo1.png" alt="logoFCP"></a>
        </div>
        <div class="ref2">
                    <?php if(!empty($user)): ?>
                    <label>BIENVENIDO:  <?= $user['nombre'];?> <?= $user['apellido'];?> </label><BR>
                    <label>TU CONEXION ES: <?= $user['conexion'];?> </label><BR>
                    <label>TURNO A INSCRIBIRTE ES EL: <?= $var1;?> </label><BR>
                    <label>FECHA A INSCRIBIRTE ES EL: <?= $var2;?> </label><BR>
                    <?php
                    ?>
        </div>
        <div class="ref0">
                    <?php
                    $a = $user['num_dni'];
                    ?>

                    <h1>CONFIRME SU ASISTENCIA</H1>
                        <a href="turnoA.php?var1=<?=$num_dni;?>&var2=<?=$var1;?>&var3=<?=$var2;?>"> SI </a>
                        <br>
                        <a href="vistaA.php"> NO </a>
                        <br>
        </div>
        <div class="ref1">
                    <br><a href="salir.php">Salir de Sessión</a></br>
                    <?php endif;?>
        </div>
</setion>
</div>
</body>
</html>