<?php
require 'db.php';
session_start();
$nom1 = $_SESSION['nombre'];
$ape1 = $_SESSION['apellido'];
$carg1 = $_SESSION['cargo'];
$num_dni = $_SESSION['num_dni'];

if(isset($_GET['id'])){
        $id = $_GET['id'];
        $query = "SELECT * FROM num_asiste WHERE id=$id";
        $result = mysqli_query($conexion, $query);
        if(mysqli_num_rows($result) == 1){
            $row = mysqli_fetch_array($result);
            $lugar = $row['lugar'];
            $cantidad = $row['cantidad'];
            $dni = $row['num_dni'];
        }
    }

if(isset($_POST['update'])){
$id = $_GET['id'];
 $lugar = $_POST['lugar'];
 $cantidad = $_POST['cantidad'];
 $dni = $_SESSION['num_dni'];
 $query = "UPDATE num_asiste set lugar = '$lugar', cantidad = '$cantidad', num_dni = '$dni' WHERE id = $id";
 mysqli_query($conexion, $query);

 header("Location: numcantVER.php", TRUE, 301);
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
                <img src="images/logo1.png" alt="imagenFCp">
        </div>
        <div class="ref2">
            <label>BIENVENIDO:  <?= $nom1;?> <?= $ape1;?> </label><br>
            <label>TU CARGO ES:  <?= $carg1;?> </label><br>
            <label>TU DNI ES:  <?= $num_dni;?> </label><br>
        </div>
        <div class="ref1">
        <h3><a href="salir.php">Cerrar Sessión</a></h3><br>
        <h3><a href="vistaU.php">REGRESAR A SELECCIÓN</a> </h3><br>
        </div>   
                <h1>EDITAR ASIGNACIÓN ASISTENCIA</h1>
            <FORM action="numcantEDIT.php?id=<?php echo $_GET['id'];?>" method="POST">
            <input type="text" readonly="readonly" name="lugar" value="<?php echo $lugar;?>">
            <input type="number" name="cantidad" value="" placeholder="Cambiar cantidad" autofocus></br>
            <input type="hidden" name="num_dni" value="<?php echo $dni;?>">
            <input type="submit" name = "update" value = "GUARDAR CAMBIOS">
            </FORM>
</section>
</div>    
</body>
</html>