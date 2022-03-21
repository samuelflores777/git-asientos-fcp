<?php
require 'db.php';

if (isset($_POST['guardar_a'])){
    $num_dni =  $_POST['num_dni'];
    $q1 = "SELECT * FROM dato_adulto WHERE num_dni = '$num_dni' ";
      $consulta1 = mysqli_query($conexion,$q1);
      $array1 = mysqli_fetch_array($consulta1);
    
      if ($array1>0){
          ?>
          <?php
          include("registroA.php");
          ?>
          <div class="lleno">
          <span> REGISTRO YA EXISTE </span>
          <a href='loginA.php'>VOLVER AL INICIO</a>
          </div>
          <?php
      } else{
                    $nom_dni = $_POST['nom_dni'];
                      $num_dni =  $_POST['num_dni'];
                      $nombre =  $_POST['nombre'];
                      $apellido = $_POST['apellido'];
                      $email = $_POST['email'];
                      $conex = $_POST['conexion'];
                      $query="INSERT INTO dato_adulto (nom_dni, num_dni, nombre, apellido, email, conexion) VALUES ('$nom_dni', '$num_dni','$nombre','$apellido','$email','$conex')";
                      $results = mysqli_query($conexion, $query);
                      header("location: loginA.php", TRUE, 301);
                      exit();
      }
}
?>

                    