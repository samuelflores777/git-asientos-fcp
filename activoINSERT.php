<?php
require 'db.php';
$message='';

if (!empty($_POST['num_dni'])){
    if (isset($_POST['guardar_act'])){
        $apert = $_POST['apertura'];
        $fecha = $_POST['fecha'];
        $num_dni = $_POST['num_dni'];
        $query = "INSERT INTO cheka(apertura, fecha, num_dni) VALUES('$apert','$fecha','$num_dni')";
        $resultado = mysqli_query($conexion, $query);
        $message = 'REGISTRO GUARDADO CON EXITO';
        header("location: vistaU.php", TRUE, 301);
        exit();
    }
}else{
    $_POST['num_dni']="";
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>activo</title>
</head>
<body>
    <?php if(!empty($message)):?>
        <p><?=$message?></p>
        <?php endif;?>
<h1>ACTIVO LISTAS</h1>
<FORM action="activoINSERT.php" method="POST">
<input type="text" name="apertura" placeholder="escriba asignacion" autofocus></br>
<input type="date" name="fecha" value="2021-11-10" min="2021-01-01" max="2022-12-31"><br>
<input type="text" name="num_dni" placeholder="escriba dni o cedula" autofocus></br>
<input type="submit" name = "guardar_act" value = "GUARDAR">


</FORM>

    
</body>
</html>