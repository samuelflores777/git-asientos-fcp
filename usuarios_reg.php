<?php
require 'db.php';
if (isset($_POST['guardar_u'])){
    $num_dni =  $_POST['num_dni'];
    $q1 = "SELECT * FROM usuarios WHERE num_dni = '$num_dni' ";
    $consulta1 = mysqli_query($conexion,$q1);
    $array1 = mysqli_fetch_array($consulta1);
    if ($array1>0){
        ?>
        <?php
        include("usuarios.php");
        ?>
        <div class="lleno">
        <span> REGISTRO YA EXISTE </span>
        <a href='loginU.php'>VOLVER AL INICIO</a>
        </div>
        <?php
    } else {

            $nom_dni = $_POST['nom_dni'];
            $num_dni =  $_POST['num_dni'];
            $nombre =  $_POST['nombre'];
            $apellido = $_POST['apellido'];
            $cargo = $_POST['cargo'];
            $pass = $_POST['passwrd'];
            $query="INSERT INTO usuarios (nom_dni, num_dni, nombre, apellido, cargo, passwrd) VALUES ('$nom_dni', '$num_dni','$nombre','$apellido','$cargo','$pass')";
            $results = mysqli_query($conexion, $query);
            header("location: loginU.php", TRUE, 301);
            exit();
    }     
}
?>