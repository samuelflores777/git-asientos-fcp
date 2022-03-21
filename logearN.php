<?php
require 'db.php';
session_start();
$fecha = "";
$abierto = "ABIERTO";
$qA = "SELECT * FROM cheka WHERE apertura = '$abierto'";
$consulta2 = mysqli_query($conexion,$qA);
$array2 = mysqli_fetch_array($consulta2);
if ($array2>0){
        if(isset($_POST['login_n'])){
            $num_dni = $_POST['num_dni'];
            $q = "SELECT * FROM data_kids WHERE num_dni = '$num_dni' ";
            $consulta = mysqli_query($conexion,$q);
            $array = mysqli_fetch_array($consulta);
            if ($array>0){
                $fecha = $array2['fecha'];
                 $verificar = $array['num_dni'];
                 $q1 = "SELECT * FROM turnok WHERE num_dni = '$verificar' and fecha ='$fecha'";
                $consulta1 = mysqli_query($conexion,$q1);
                $array1 = mysqli_fetch_array($consulta1);
                if ($array1>0){
                                ?>
                                <?php
                                include("loginN.php");
                                ?>
                                <div class="lleno">
                                <h3> YA ESTA REGISTRADO EN EL <?= $array1['turno'];?> DEL AULA <?= $array['aula'];?></H3>
                                </div>
                                <?php
                }    else {
                    session_start();
                    $_SESSION['num_dni'] = $num_dni;
                    header ("Location: vistaN.php", TRUE, 301);
                    exit();
                    }
            }else {
                ?>
                <?php
                include("loginN.php");
                ?>
                <div class="lleno">
                <h3> REGISTRO NO EXISTE</H3>
                <a href="registroN.php">REGISTRESE POR FAVOR</a>
                </div>
                <?php
            }  
        }
}else{
            ?>
            <?php
            include("loginN.php");
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