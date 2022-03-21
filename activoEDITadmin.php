<?php
require 'db.php';
session_start();
$nom1 = $_SESSION['nombre'];
$ape1 = $_SESSION['apellido'];
$carg1 = $_SESSION['cargo'];
$num_dni = $_SESSION['num_dni'];

if(isset($_POST['update'])){
$id = $_GET['id'];
 $apert = $_POST['apertura'];
 $date = $_POST['fecha'];
 $dni = $_SESSION['num_dni'];
 $query = "UPDATE cheka set apertura = '$apert', fecha = '$date', num_dni = '$dni' WHERE id = $id";
 mysqli_query($conexion, $query);

 header("Location: activoVERadmin.php", TRUE, 301);
 exit();
}

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EDITAR</title>
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
        <h3><a href="vistaADMIN.php">REGRESAR A SELECCIÓN</a> </h3><br>
        </div>   
                <h1>EDITAR ESTADO SERVICIO</h1>
            <FORM action="activoEDIT.php?id=<?php echo $_GET['id'];?>" method="POST">
            <select name="apertura">
                <option value = "CERRADO">CERRAR</option>
                <option value ="ABIERTO">APERTURAR</option>
            </select></br>
            <input type="date" name="fecha" value="AAAA-MM-DD" min="2021-01-01" max="2022-12-31"><br>
            <input type="hidden" name="num_dni" value="<?php echo $nom1;?>">
            <input type="submit" name = "update" value = "GUARDAR CAMBIOS">
            </FORM>
</section>
</div>    
</body>
</html>