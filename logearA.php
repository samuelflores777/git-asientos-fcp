<?php
require 'db.php';
session_start();
$fecha = "";
$abierto = "ABIERTO";
$qA = "SELECT * FROM cheka WHERE apertura = '$abierto'";
$consulta2 = mysqli_query($conexion,$qA);
$array2 = mysqli_fetch_array($consulta2);
if ($array2>0){
            if(isset($_POST['login_a'])){
                $fecha = $array2['fecha'];
                $num_dni = $_POST['num_dni'];
                $q1 = "SELECT * FROM turno WHERE num_dni = '$num_dni' and fecha = '$fecha'";
                $consulta1 = mysqli_query($conexion,$q1);
                $array1 = mysqli_fetch_array($consulta1);

                if ($array1>0){
                    ?>
                    <?php
                    include("loginA.php");
                    ?>
                    <div class="lleno">
                    <h3> YA ESTA REGISTRADO EN EL <?= $array1['turno'];?> </H3>
                    </div>
                    <?php
                } else {
                    $q = "SELECT * FROM dato_adulto WHERE num_dni = '$num_dni' ";
                    $consulta = mysqli_query($conexion,$q);
                    $array = mysqli_fetch_array($consulta);

                            if ($array>0){
                                $_SESSION['num_dni'] = $num_dni;
                                header ("Location: vistaA.php", TRUE, 301);
                                exit();

                            } else {
                                ?>
                            <?php
                            include("loginA.php");
                            ?>
                            <div class="lleno">
                                <h3> REGISTRO NO EXISTE </H3>
                            </div>
                            <div class="main">
                                <div class="refINI">
                                    <a href="registroA.php">POR FAVOR REGISTRESE</a>
                               </div>   
                            </div>      

                            <?php
                            }    
                }
            }
}else{
            ?>
            <?php
            include("loginA.php");
            ?>
            <div class="lleno">   
                <h2> DOMINGO NO APERTURADO </h2>
            </div>
            <div class="main">
                <div class="refINI">
                    <a href='index.html'>VOLVER AL INICIO</a>
                </div>   
            </div>
            <?php
        }
?>