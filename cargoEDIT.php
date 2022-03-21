<?php
require 'db.php';
session_start();
$nom1 = $_SESSION['nombre'];
$ape1 = $_SESSION['apellido'];
$carg1 = $_SESSION['cargo'];
$num_dni = $_SESSION['num_dni'];

if(isset($_GET['id'])){
        $id = $_GET['id'];
        $query = "SELECT * FROM usuarios WHERE id=$id";
        $result = mysqli_query($conexion, $query);
        if(mysqli_num_rows($result) == 1){
            $row = mysqli_fetch_array($result);
            $dni = $row['num_dni'];
            $nombre = $row['nombre'];
            $apellido = $row['apellido'];
            $email = $row['email'];
            $cargo = $row['cargo'];
            $pass = $row['passwrd'];
        }
    }

if(isset($_POST['update'])){
$id = $_GET['id'];
 $dni = $_POST['num_dni'];
 $nombre = $_POST['nombre'];
 $apellido = $_POST['apellido'];
 $email = $_POST['email'];
 $cargo = $_POST['cargo'];
 $pass = $_POST['passwrd'];
 $query = "UPDATE usuarios set num_dni = '$dni', nombre = '$nombre', apellido = '$apellido', email = '$email', cargo = '$cargo', passwrd = '$pass' WHERE id = $id";
 mysqli_query($conexion, $query);

 header("Location: listUSU.php", TRUE, 301);
 exit();
}

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EDITAR CARGO</title>
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
                <h1>EDITAR USUARIOSS</h1>
            <FORM action="cargoEDIT.php?id=<?php echo $_GET['id'];?>" method="POST">
            <h4>CAMBIAR NUMERO DNO o CEDULA</h4>
            <input type="number" name="num_dni" value="<?php echo $dni;?>">
            <h4>CAMBIAR NOMBRE</h4>
            <input type="text" name="nombre" value="<?php echo $nombre;?>">
            <h4>CAMBIAR APELLIDO</h4>
            <input type="text" name="apellido" value="<?php echo $apellido;?>">
            <h4>CAMBIAR EMAIL</h4>
            <input type="email" name="email" value="<?php echo $email;?>">
            <h4>CARGO ACTUAL</h4>
            <input type ="text" name="cargo" id="carg" readonly="readonly" value="<?php echo $cargo;?>">
            <h4>ELIJA CARGO PARA CAMBIAR</h4>
            <select id="Seleccionar" onchange="Fijartexto(this.id);">
                            <option value="ADMINISTRADOR">ADMINISTRADOR</option>
                            <option value="SUPERVISOR">SUPERVISOR</option>
                            <option value="LIDER">LIDER</option>
                            <option value="EDITOR">EDITOR</option>
            </select></br>
            <script type="text/javascript">
                function Fijartexto(id){
                    var TextSel = document.getElementById(id);
                    var TextActual = document.getElementById('carg');
                    TextActual.value = TextSel.value;
                }
            </script>
            <h4>CAMBIAR PASSWORD</h4>
            <input type="text" name="passwrd" value="<?php echo $pass;?>">
            <input type="submit" name = "update" value = "GUARDAR CAMBIOS">
            </FORM>
</section>
</div>    
</body>
</html>