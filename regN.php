<?php
require 'db.php';
if (isset($_POST['guardar_n'])){
                $num_dni =  $_POST['num_dni'];
                $q1 = "SELECT * FROM data_kids WHERE num_dni = '$num_dni' ";
                 $consulta1 = mysqli_query($conexion,$q1);
                 $array1 = mysqli_fetch_array($consulta1);
                    if ($array1>0){
                            ?>
                            <?php
                            include("registroN.php");
                            ?>
                            <div class="lleno">
                            <span> REGISTRO YA EXISTE </span>
                            <a href='loginA.php'>VOLVER AL INICIO</a>
                            </div>
                            <?php
                    } else {
                            $nom_dni = $_POST['nom_dni'];
                            $num_dni =  $_POST['num_dni'];
                            $nombre =  $_POST['nombre'];
                            $apellido = $_POST['apellido'];
                            $edad = $_POST['edad'];
                            $aula = $_POST['aula'];
                            $query="INSERT INTO data_kids (nom_dni, num_dni, nombre, apellido, edad, aula) VALUES ('$nom_dni', '$num_dni','$nombre','$apellido','$edad','$aula')";
                            $results = mysqli_query($conexion, $query);
                            header("location: loginN.php", TRUE, 301);
                            exit();
                      }
}
?>