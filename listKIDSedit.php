<?php
require 'db.php';
session_start();
$nom1 = $_SESSION['nombre'];
$ape1 = $_SESSION['apellido'];
$carg1 = $_SESSION['cargo'];
$num_dni = $_SESSION['num_dni'];

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $query = "SELECT * FROM data_kids WHERE id=$id";
    $result = mysqli_query($conexion, $query);
    if(mysqli_num_rows($result) == 1){
        $row = mysqli_fetch_array($result);
        $dni = $row['num_dni'];
        $nombre = $row['nombre'];
        $apellido = $row['apellido'];
        $edad = $row['edad'];
        $aula = $row['aula'];
    }
}

if(isset($_POST['update'])){
    $id = $_GET['id'];
     $dni = $_POST['num_dni'];
     $nombre = $_POST['nombre'];
     $apellido = $_POST['apellido'];
     $edad = $_POST['edad'];
     $aula = $_POST['aula'];
     $query = "UPDATE data_kids set num_dni = '$dni', nombre = '$nombre', apellido = '$apellido', edad = '$edad', aula = '$aula' WHERE id = $id";
     mysqli_query($conexion, $query);
    
     header("Location: listKIDS.php", TRUE, 301);
     exit();
    }
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EDITAR KIDS</title>
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
        <h3><a href="vistaADMIN.php">REGRESAR A SELECCIÓN</a> </h3><br>
        </div>   
        <h1>EDITAR KIDS</h1>
            <FORM action="listKIDSedit.php?id=<?php echo $_GET['id'];?>" method="POST">
            <h4>CAMBIAR NUMERO DNO o CEDULA</h4>
            <input type="number" name="num_dni" value="<?php echo $dni;?>">
            <h4>CAMBIAR NOMBRE</h4>
            <input type="text" name="nombre" value="<?php echo $nombre;?>">
            <h4>CAMBIAR APELLIDO</h4>
            <input type="text" name="apellido" value="<?php echo $apellido;?>">
            <h4>CAMBIAR EDAD</h4>
            <input type="number" name="edad" value="<?php echo $edad;?>">
            <h4>CONEXION ACTUAL</h4>
            <input type ="text" name="aula" id="aul" readonly="readonly" value="<?php echo $aula;?>">
            <h4>ELIJA AULA PARA CAMBIAR</h4>
            <select id ="Seleccionar" onchange="Fijartexto(this.id);">
                            <option value="AMARILLA">AMARILLA</option>
                            <option value="VERDE">VERDE</option>
                            <option value="AZUL">AZUL</option>
            </select></br>
            <script type="text/javascript">
                function Fijartexto(id){
                    var TextSel = document.getElementById(id);
                    var TextActual = document.getElementById('aul');
                    TextActual.value = TextSel.value;
                }
            </script>
            <input type="submit" name = "update" value = "GUARDAR CAMBIOS">
            </FORM>


</section>
</div>

</script>
</body>
</html>