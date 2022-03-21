<?php
    include("db.php");

    if (isset($_GET['id'])){
        $id = $_GET['id'];
        $query = "DELETE FROM data_kids WHERE id = $id";
        $result = mysqli_query($conexion, $query);
        if (!$result){
            die("CONSULTA FALLADA");
        }
        include 'listKIDSsuper.php';
        ?>
        <div class="lleno">
            <span> REGISTRO ELIMINADO</span>
        </div>
        <?php

    }
?>