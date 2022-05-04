<?php
require 'db.php';
$dato=null;

if(!isset($_POST["date"])){
    $_POST["date"]="";
   }else{
   $dato = $_POST["date"];
  }
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VER ORACION</title>
</head>
<body>
<div class="contendor">
<header></header>
 <section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logo1.png" alt="logoFCP"></a>
        </div>

        <H1>SELECCIONAR FECHAS</H1>
        <div class="ref1">
        <h3><a href="salir.php">Cerrar Sessión</a></h3><br>
        <h3><a href="vistaADMIN.php">REGRESAR A SELECCIÓN</a> </h3><br>
        </div>        

    <form action="orarVer.php" method = "POST">
        <input type="date" id="start" name="date" value="AAAA-MM-DD" min="2021-01-01" max="2022-12-31">
        <input type="submit" name = "submit" value = "VER">
    </form>

<?php
if (empty($aula)){?>

    <div class="ref0">
        <a href="imprimirO.php?var1=<?=$dato;?>" target="_blank"> IMPRIMIR LISTA </a>
    </div>
    <?php
    $query = "SELECT * FROM oracion WHERE fecha = '$dato'";
    $query_run = mysqli_query($conexion, $query);
    $row = mysqli_num_rows($query_run);
    ?>    
    <H3>Inscritos son: <?= $row;?> </H3>

    <table id="cuadro">
    <thead>
            <tr>
                <th> NOMBRES</th>
                <th>PEDIDO</th>
            </tr>
    </thead>
    <tbody>
    <?php
        $q = "SELECT nombres, pedido, fecha FROM oracion WHERE CAST(fecha AS DATE) = '$dato'";
        $resultado = mysqli_query($conexion, $q) or die(mysql_error());
        while ($filas = mysqli_fetch_array($resultado)){ ?>
            <tr>
                    <td><?php echo $filas['nombres'];?></td>
                    <td><?php echo $filas['pedido'];?></td>
            </tr>
        <?php }}?>
    </tbody>
</table>
</section>
</div>
</body>
</html>