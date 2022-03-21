<?php
    include("db.php");

    if (isset($_GET['id'])){
        $id = $_GET['id'];
        $query = "DELETE FROM usuarios WHERE id = $id";
        $result = mysqli_query($conexion, $query);
        if (!$result){
            die("CONSULTA FALLADA");
        }
        include 'listUSU.php';
        ?>
        <div class="lleno">
            <span> REGISTRO ELIMINADO</span>
        </div>
        <?php

    }
?>