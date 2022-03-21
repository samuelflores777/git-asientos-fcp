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
    <title>CARGOS</title>
</head>
<body>
<div class="contenedor">
<header></header>
<section class="main">
        <div class="imglogo">
                <img src="images/logo1.png" alt="imagenFCp">
        </div>
        <div class="ref2">
            <label>BIENVENIDO:  <?= $nom1;?> <?= $ape1;?> </label><br>
            <label>TU CARGO ES:  <?= $carg1;?> </label><br>
            <label>TU DNI ES:  <?= $num_dni;?> </label><br>
        </div>
        <div class="ref1">
        <h3><a href="salir.php">Cerrar Sessión</a></h3><br>
        <h3><a href="vistaADMIN.php">REGRESAR A SELECCIÓN</a> </h3><br>
        </div>   
                <h1>CAMBIAR CARGOS</h1>

                <TABLE id="cuadro">
                        <TR>
                            <TH>NOMBRE Y APELIDOS </TH>
                            <TH>CARGO</TH>
                            <TH>ACCIÓN</TH>
                        </TR>
                        <?php 
                        $q = "SELECT * FROM usuarios";
                        $resultado = mysqli_query($conexion, $q);
                        while($filas = mysqli_fetch_array($resultado)){ ?>
                        <TR>
                            <td><?php echo $filas['nombre'];?> <?php echo $filas['apellido'];?></td>
                            <TD><?php echo $filas['cargo'];?> </TD>

                            <TD><a href="cargoEDIT.php?id=<?php echo $filas['id']?>" class="reff">EDITAR </a></TD>

                        </TR>
                        <?php }?>
                </TABLE>
</section>
</div>

</script>
</body>
</html>