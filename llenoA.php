<?php
require 'db.php';

$var1 = $_GET['var'];
$var2 = $_GET['var2'];
$ADULTO="ADULTO";
$query0 = "SELECT * FROM num_asiste WHERE lugar = '$ADULTO'";
$query_run0 = mysqli_query($conexion, $query0);
if(mysqli_num_rows($query_run0) == 1){
    $row0 = mysqli_fetch_array($query_run0);
    $num = $row0['cantidad'];
}

$query = "SELECT * FROM turno WHERE turno = '$var1' and fecha = '$var2'";
$query_run = mysqli_query($conexion, $query);
$row = mysqli_num_rows($query_run);

if ($row>=$num){
   header("location: forolleno.php", TRUE, 301);
    exit();
}else
{
    header("location: confirmaA.php?variable=$var1&variable2=$var2");
}
mysqli_free_result($query_run);
mysqli_close($conexion);
?>

