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
    <title>LISTAS KIDS</title>
</head>
<body>
<div class="contenedor">
<header></header>
<section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logoK.png" alt="logoFCP"></a>
        </div>
        <div class="ref2">
            <label>BIENVENIDO:  <?= $nom1;?> <?= $ape1;?> </label><br>
            <label>TU CARGO ES:  <?= $carg1;?> </label><br>
            <label>TU DNI ES:  <?= $num_dni;?> </label><br>
            
        </div>
        <div class="ref1">
        <h3><a href="salir.php">Cerrar Sessión</a></h3><br>
        <h3><a href="vistaEDITOR.php">REGRESAR A SELECCIÓN</a> </h3><br>
        </div>   
                <h1>LISTA DE KIDS</h1>
                <?php
    $query = "SELECT * FROM data_kids";
    $query_run = mysqli_query($conexion, $query);
    $row = mysqli_num_rows($query_run);
    ?>    
    <H3>TOTAL REGISTRADOS SON: <?= $row;?> </H3>

                <TABLE id="cuadro">
                        <TR>
                            <TH> DNO O CEDULA </TH>
                            <TH>NOMBRES Y APELLIDOS </TH>
                            <TH>EDAD</TH>
                            <TH>AULA</TH>
                            <TH >ACCIONES</TH>
                            <!--<TH colspan="2">ACCIONES</TH>-->
                        </TR>
                        <?php 
                        $q = "SELECT * FROM data_kids order by nombre asc";
                        $resultado = mysqli_query($conexion, $q);
                        while($filas = mysqli_fetch_array($resultado)){ ?>
                        <TR>
                            <TD><?php echo $filas['num_dni'];?> </TD>
                            <td><?php echo $filas['nombre'];?> <?php echo $filas['apellido'];?></td>
                            <TD><?php echo $filas['edad'];?> </TD>
                            <TD><?php echo $filas['aula'];?> </TD>
                            <!--<td><div class="ref1"><a href="elimLK.php?id=<?php echo $filas['id'];?>">ELIMINAR</a></div></td>-->
                            <td><div class="ref1"><a href="listKIDSeditEDITOR.php?id=<?php echo $filas['id'];?>">EDITAR</a></div></td>
                                

                        </TR>
                        <?php }?>
                </TABLE>

</section>
</div>

</script>
</body>
</html>