<?php
require 'db.php';
$dato = $_GET['var1'];
$export=null;


 $query = "SELECT nombres, pedido, fecha FROM oracion WHERE CAST(fecha AS DATE) = '$dato'";
  $res = mysqli_query($conexion, $query);
  
 if(mysqli_num_rows($res) > 0)
 {
  while($row = mysqli_fetch_array($res))
 {
 $export .=' 
 
  '.$row["nombres"].'
 '.$row["pedido"].'';
   }
 
 header('Content-Type: application/txt');
 header('Content-Disposition: attachment; filename=fcp_orar.txt');
 echo $export;
 }

?>