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
    <title>ACTIVAR</title>
</head>
<body>
<div class="contenedor">
<header></header>
<section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logo1.png" alt="logoFCP"></a>
        </div>
        <div class="ref2">
            <label>BIENVENIDO:  <?= $nom1;?> <?= $ape1;?> </label><br>
            <label>TU CARGO ES:  <?= $carg1;?> </label><br>
        </div>
        <div class="ref1">
        <h3><a href="salir.php">Cerrar Sessión</a></h3><br>
        <h3><a href="vistaU.php">REGRESAR A SELECCIÓN</a> </h3><br>
        </div>   
                <h1>ESTADO SERVICIO</h1>

                <TABLE id="cuadro">
                        <TR>
                            <TH> APERTURA </TH>
                            <TH>FECHA </TH>
                            <TH>DNI</TH>
                        </TR>
                        <?php 
                        $q = "SELECT * FROM cheka";
                        $resultado = mysqli_query($conexion, $q);
                        while($filas = mysqli_fetch_array($resultado)){ ?>
                        <TR>
                            <TD><?php echo $filas['apertura'];?> </TD>
                            <TD><?php echo $filas['fecha'];?> </TD>
                            <TD><?php echo $filas['num_dni'];?> </TD>
                        </TR>
                        <?php }?>
                </TABLE>
        <div class="ref0">
        <?php
        $q = "SELECT * FROM cheka";
        $resultado = mysqli_query($conexion, $q);
        $filas = mysqli_fetch_array($resultado);
        $data = $filas['id'];
        ?>
        <a href="activoEDIT.php?id=<?=$data;?>">EDITAR</a>
        </div>
</section>
</div>

</script>
</body>
</html>