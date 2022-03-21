<?php
require 'db.php';
session_start();
$nom1 = $_SESSION['nombre'];
$ape1 = $_SESSION['apellido'];
$carg1 = $_SESSION['cargo'];
$num_dni = $_SESSION['num_dni'];

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $query = "SELECT * FROM dato_adulto WHERE id=$id";
    $result = mysqli_query($conexion, $query);
    if(mysqli_num_rows($result) == 1){
        $row = mysqli_fetch_array($result);
        $dni = $row['num_dni'];
        $nombre = $row['nombre'];
        $apellido = $row['apellido'];
        $email = $row['email'];
        $conex = $row['conexion'];
    }
}

if(isset($_POST['update'])){
    $id = $_GET['id'];
     $dni = $_POST['num_dni'];
     $nombre = $_POST['nombre'];
     $apellido = $_POST['apellido'];
     $email = $_POST['email'];
     $conex = $_POST['conexion'];
     $query = "UPDATE dato_adulto set num_dni = '$dni', nombre = '$nombre', apellido = '$apellido', email = '$email', conexion = '$conex' WHERE id = $id";
     mysqli_query($conexion, $query);
    
     header("Location: listADULTO.php", TRUE, 301);
     exit();
    }
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EDITAR ADULTOS</title>
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
            <label>TU DNI ES:  <?= $num_dni;?> </label><br>
        </div>
        <div class="ref1">
        <h3><a href="salir.php">Cerrar Sessión</a></h3><br>
        <h3><a href="vistaADMIN.php">REGRESAR A SELECCIÓN</a> </h3><br>
        </div>   
            <h1>EDITAR ADULTOS</h1>
            <FORM action="listADULTOedit.php?id=<?php echo $_GET['id'];?>" method="POST">
            <h4>CAMBIAR NUMERO DNO o CEDULA</h4>
            <input type="number" name="num_dni" value="<?php echo $dni;?>">
            <h4>CAMBIAR NOMBRE</h4>
            <input type="text" name="nombre" value="<?php echo $nombre;?>">
            <h4>CAMBIAR APELLIDO</h4>
            <input type="text" name="apellido" value="<?php echo $apellido;?>">
            <h4>CAMBIAR EMAIL</h4>
            <input type="email" name="email" value="<?php echo $email;?>">
            <h4>CONEXION ACTUAL</h4>
            <input type ="text" name="conexion" id="cone" readonly="readonly" value="<?php echo $conex;?>">
            <h4>ELIJA CONEXIÓN PARA CAMBIAR</h4>
            <select id ="Seleccionar" onchange="Fijartexto(this.id);">
                            <option value="S/Conexion"> S/Conexion</option>
                            <option value="Miraflores 1">Miraflores 1</option>
                            <option value="Miraflores 2">Miraflores 2</option>
                            <option value="Miraflores 3">Miraflores 3</option>
                            <option value="Miraflores 4">Miraflores 4</option>
                            <option value="La Victoria">La Victoria</option>
                            <option value="Surquillo">Surquillo</option>
                            <option value="San Isidro">San Isidro</option>
                            <option value="Los olivos">Los olivos</option>
                            <option value="San Luis">San Luis</option>
                            <option value="Surco 1">Surco 1</option>
                            <option value="Surco 2">Surco 2</option>
            </select></br>
            <script type="text/javascript">
                function Fijartexto(id){
                    var TextSel = document.getElementById(id);
                    var TextActual = document.getElementById('cone');
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