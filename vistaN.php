<?php
require 'db.php';
session_start();
    $abierto = "ABIERTO";
    $qA = "SELECT * FROM cheka WHERE apertura = '$abierto'";
    $consulta2 = mysqli_query($conexion,$qA);
    $array2 = mysqli_fetch_array($consulta2);
    $var2 = null;
        
    if (!isset($array2)){
        require ("index.php");
        echo "<h1>NO HAY DOMINGO APERTURADOS</h1>";
        session_destroy();
        exit();
    }else{
        $var2 = $array2;

    }


if (isset($_SESSION['num_dni'])){
    $num_dni = $_SESSION['num_dni'];

    $q = "SELECT nom_dni, num_dni, nombre, apellido, aula FROM data_kids WHERE num_dni = '$num_dni'";
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
    <title>BIENVENIDOS KIDS</title>
</head>
<body>
<div class="contenedor">
<header></header>
    <section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logoK.png" alt="logoFCP"></a>
        </div>
        <div class="ref2">
            <?php if(!empty($user)): ?>
            <label>BIENVENIDO:  <?= $user['nombre'];?> <?= $user['apellido'];?> </label><BR>
            <label>Tu Nro. de  <?= $user['nom_dni'];?> es : <?= $user['num_dni'];?></label> <BR>
            <label>TU AULA ES: <?= $user['aula'];?> </label><BR>
            <label> FECHA DE DOMINGO : <?= $var2['fecha'];?> </label><BR>
        </div>
        <div class="ref0">
            <?php
            $t1 = "1er TURNO";
            $t2 = "2do TURNO";
            $t3 = "3er TURNO";
            ?>
            <h1>A QUE TURNO DESEA IR</H1>
                <a href="llenoN.php?var=<?=$t1;?>&var2=<?=$var2['fecha'];?>&var3=<?=$user['aula'];?>"> PRIMER TURNO </a>
                <br>
                <a href="llenoN.php?var=<?=$t2;?>&var2=<?=$var2['fecha'];?>"> SEGUNDO TURNO </a>
                <br>
                <a href="llenoN.php?var=<?=$t3;?>&var2=<?=$var2['fecha'];?>"> TERCER TURNO </a>
                <br>
        </div>
        <div class="ref1">
            <br><a href="salir.php">salir de session</a></br>
            <?php endif;?>
        </div>
    </div>
</div>
</body>
</html>