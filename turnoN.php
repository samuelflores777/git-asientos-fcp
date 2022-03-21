<?php
include 'db.php';
$dni = $_GET['var1'];
$tun = $_GET['var2'];
$fecha = $_GET['var3'];
$aula = $_GET['var4'];
$query2 ="INSERT INTO turnok(num_dni, turno, aula, fecha) VALUES ('$dni','$tun','$aula','$fecha')";
mysqli_query($conexion, $query2);
session_start();
session_destroy();
header("location: graciasN.php", TRUE, 301);
exit();
?>