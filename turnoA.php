<?php
include 'db.php';
$dni = $_GET['var1'];
$tun = $_GET['var2'];
$fecha = $_GET['var3'];
$query2 ="INSERT INTO turno(num_dni, turno, fecha) VALUES ('$dni','$tun','$fecha')";
$consulta = mysqli_query($conexion,$query2);
session_start();
session_destroy();
header("location: gracias.php",TRUE, 301);
exit();
?>