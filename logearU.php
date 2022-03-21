<?php
require 'db.php';
session_start();

if(isset($_POST['login_u'])){
    $dni = $_POST['num_dni'];
    $pass = $_POST['passwrd'];

    $q1 = "SELECT * FROM usuarios WHERE num_dni = '$dni' and passwrd = '$pass'";
    $consulta1 = mysqli_query($conexion,$q1);
    $array1 = mysqli_fetch_array($consulta1);

    if ($array1>0){
        $_SESSION['nombre'] = $array1['nombre'];
        $_SESSION['apellido'] = $array1['apellido'];
        $_SESSION['cargo'] = $array1['cargo'];
        $_SESSION['num_dni'] = $array1['num_dni'];

        if ($_SESSION['cargo']=="ADMINISTRADOR"){
            header('Location:vistaADMIN.php', TRUE, 301);	
            exit();
        }
        else if ($_SESSION['cargo']=="SUPERVISOR"){
            header('Location:vistaU.php', TRUE, 301);
            exit();
        }
        else if ($_SESSION['cargo']=="LIDER"){
            header('Location:vistaU2.php', TRUE, 301);	
            exit();
        }
        else if ($_SESSION['cargo']=="EDITOR"){
            header('Location:vistaEDITOR.php', TRUE, 301);	
            exit();
        }
    }
    else{
        ?>
        <?php
        include("loginU.php");
        ?>
        <div class="lleno">
        <h2>  ERROR: SUPERVISOR O LIDER NO REGISTRADO </h2>
        </div>
            <div class="main">
            <div class="refINI">
            <a href='index.html'>VOLVER AL INICIO</a>
            </div>   
            </div>
        
        
        <?php
    }
}
?>