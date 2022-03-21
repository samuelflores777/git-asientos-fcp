<?php
    include("db.php");

    if (isset($_GET['id'])){
        $id = $_GET['id'];
        $query = "DELETE FROM turno WHERE id = $id";
        $result = mysqli_query($conexion, $query);
        if (!$result){
            die("CONSULTA FALLADA");
        }
        include 'vistaU1.php';
        ?>
        <div class="lleno">
            <h3> REGISTRO ELIMINADO</H3>
        </div>
        <?php

    }
?>