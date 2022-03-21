<?php
require 'db.php';
//$ver = $_GET['ab1'];
$q1 = "SELECT * FROM cheka WHERE apertura = '$ver' ";
$consulta1 = mysqli_query($conexion,$q1);
$array1 = mysqli_fetch_array($consulta1);

if ($array1>0){
    header("location: loginA.php", TRUE, 301);
    exit();
}else {
 include("index.html");
 unset ($array1, $ver, $q1, $consulta, $conexion);
 ?>
 <div class="lleno">
 <h1> DOMINGO NO APERTURADO </H1>
</div>
 <?php
}
mysqli_free_result($consulta1);
mysqli_close($conexion);
?>