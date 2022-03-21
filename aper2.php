<?php
require 'db.php';
$ver2 = $_GET['ab2'];

$q1 = "SELECT * FROM cheka WHERE apertura = '$ver2' ";
$consulta1 = mysqli_query($conexion,$q1);
$array1 = mysqli_fetch_array($consulta1);

if ($array1>0){
    header("location: loginN.php", TRUE, 301);
    exit();
}else {
 include("index.html");
 ?>
 <div class="lleno">
 <h1> DOMINGO NO APERTURADO </H1>
</div>
 <?php
}
mysqli_free_result($consulta1);
mysqli_close($conexion);
?>