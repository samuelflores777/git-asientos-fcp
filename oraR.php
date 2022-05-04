<?php
require 'db.php';

if (isset($_POST['guardar_o'])){
                    $nombre = $_POST['nombres'];
                      $pedido =  $_POST['pedido'];
                      $query="INSERT INTO oracion (nombres, pedido) VALUES ('$nombre', '$pedido')";
                      $results = mysqli_query($conexion, $query);
                      header("location: oragracias.html", TRUE, 301);
                      exit();

}
?>

                    