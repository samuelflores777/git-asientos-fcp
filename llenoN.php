<?php
require 'db.php';

$var1 = $_GET['var'];
$var2 = $_GET['var2'];
$var3 = $_GET['var3'];
$NINO="NINOS";
$query0 = "SELECT * FROM num_asiste WHERE lugar = '$NINO'";
$query_run0 = mysqli_query($conexion, $query0);
if(mysqli_num_rows($query_run0) == 1){
    $row0 = mysqli_fetch_array($query_run0);
    $num = $row0['cantidad'];
}


$query = "SELECT * FROM turnok WHERE turno = '$var1' and fecha = '$var2' and aula = '$var3'";
$query_run = mysqli_query($conexion, $query);
$row = mysqli_num_rows($query_run);

if ($row>=$num){
 ?>
 <?php
 include("vistaN.php");
 ?>
 <div class="lleno">
 <h3> FORO DEL AULA <?= $user['aula'];?> LLENO </H3>
 </div>
 <?php
}else
{
    header("location: confirmaN.php?variable=$var1&variable2=$var2&variable3=$var3");
}
mysqli_free_result($query_run);
mysqli_close($conexion);
?>

