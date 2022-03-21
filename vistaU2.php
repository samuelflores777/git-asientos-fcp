<?php
require 'db.php';
session_start();
$nom1 = $_SESSION['nombre'];
$ape1 = $_SESSION['apellido'];
$carg1 = $_SESSION['cargo'];
$num_dni = $_SESSION['num_dni'];
$turnoA=null;
$turnoN=null;
$dato=null;
$aula=null;
$conex=null;
$todo=null;

if(!isset($_POST["lista1"])){
    $_POST["lista1"] = "";
    $turnos = "";
}else {
        $_POST ["Submit"] = "Submit";
        if($_POST["Submit"]) {

            $select1 = $_POST["lista1"];
            switch ($select1)
            {
                case "1T":
                    $turnoA = "1er TURNO";
                break;
                case "2T":
                $turnoA = "2do TURNO";
                break;
                case "3T":
                $turnoA = "3er TURNO";
                break;
                case "1TAMA":
                    $turnoN = "1er TURNO";
                    $aula = "AMARILLA";
                    break;
                case "2TAMA":
                    $turnoN = "2do TURNO";
                    $aula = "AMARILLA";
                    break;
                case "3TAMA":
                    $turnoN = "3er TURNO";
                    $aula = "AMARILLA";
                    break;
                case "1TVER":
                    $turnoN = "1er TURNO";
                    $aula = "VERDE";
                    break;
                case "2TVER":
                    $turnoN = "2do TURNO";
                    $aula = "VERDE";
                    break;
                case "3TVER":
                    $turnoN = "3er TURNO";
                    $aula = "VERDE";
                    break;
                case "1TAZU":
                    $turnoN = "1er TURNO";
                    $aula = "AZUL";
                    break;
                case "2TAZU":
                    $turnoN = "2do TURNO";
                    $aula = "AZUL";
                    break;
                case "3TAZU":
                    $turnoN = "3er TURNO";
                    $aula = "AZUL";
                        break;
                }
    }   
}

//*////

if(!isset($_POST["conexion1"])){
    $_POST["conexion1"] = "";
}else {
        $_POST ["Submit"] = "Submit";

        if($_POST["Submit"]) {
                $select2 = $_POST["conexion1"];
                switch ($select2)
                {
                case "TOD":
                    $conex = "TODO";
                break;
                case "MIRA1":
                $conex = "Miraflores 1";
                break;
                case "MIRA2":
                $conex = "Miraflores 2";
                break;
                case "MIRA3":
                    $conex = "Miraflores 3";
                    break;
                case "MIRA4":
                    $conex = "Miraflores 4";
                    break;
                case "VICTO":
                    $conex = "La Victoria";
                    break;
                case "SURQ":
                    $conex = "Surquillo";
                    break;
                case "ISIDRO":
                    $conex = "San Isidro";
                    break;
                case "OLIVO":
                    $conex = "Los Olivos";
                    break;
                case "LUIS":
                    $conex = "San Luis";
                    break;
                case "SUR1":
                    $conex = "Surco 1";
                    break;
                case "SUR2":
                    $conex = "Surco 2";
                    break;
                case "SC":
                    $conex = "S/Conexion";
                    break;
                }
    }   
}



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
    <title>ADMINISTRACIoN</title>
</head>
<body>
<div class="contendor">
<header></header>
 <section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logo1.png" alt="logoFCP"></a>
        </div>
        <div class="ref2">
            <label>BIENVENIDO:  <?= $nom1;?> <?= $ape1;?> </label><br>
            <label>TU CARGO ES:  <?= $carg1;?> </label><br>
            <label>TU DNI ES:  <?= $num_dni;?> </label><br>
        </div>
        <div class="ref1">
        <h3><a href="salir.php">Cerrar Session</a></h3><br>
        </div>   

        <H1>SELECCIONAR LISTAS</H1>        

    <form action="vistaU2.php" method = "POST">
        <select name="lista1" id="lista">
                            <option value="">Escoga turno a mostrar</option>
                            <option value="1T">1er TURNO - ADULTO</option>
                            <option value="2T">2do TURNO - ADULTO</option>
                            <option value="3T">3er TURNO - ADULTO</option>
                            <option value="1TAMA">1er TURNO - AMARILLO</option>
                            <option value="2TAMA">2do TURNO - AMARILLO</option>
                            <option value="3TAMA"> 3er TURNO - AMARILLO</option>
                            <option value="1TVER">1er TURNO - VERDE</option>
                            <option value="2TVER">2do TURNO - VERDE</option>
                            <option value="3TVER">3er TURNO - VERDE</option>
                            <option value="1TAZU">1er TURNO - AZUL</option>
                            <option value="2TAZU">2do TURNO - AZUL</option>
                            <option value="3TAZU">3er TURNO - AZUL</option>
                            <option value="3TAZU">3er TURNO - AZUL</option>
                        </select></br>
        <input type="date" id="start" name="date" value="AAAA-MM-DD" min="2021-01-01" max="2022-12-31">
        <select name="conexion1" id="conexion">
                            <option value="">Escoger una Conexion</option>
                            <option value="MIRA1">Miraflores 1</option>
                            <option value="MIRA2">Miraflores 2</option>
                            <option value="MIRA3">Miraflores 3</option>
                            <option value="MIRA4">Miraflores 4</option>
                            <option value="VICTO">La Victoria</option>
                            <option value="SURQ">Surquillo</option>
                            <option value="ISIDRO">San Isidro</option>
                            <option value="OLIVO">Los olivos</option>
                            <option value="LUIS">San Luis</option>
                            <option value="SUR1">Surco 1</option>
                            <option value="SUR2">Surco 2</option>
                            <option value="SC">S/Conexion</option>
                            

                        </select></br>
        <input type="submit" name = "submit" value = "VER">
    </form>

<?php
if (empty($aula)){?>

    <!--<div class="ref0">
        <a href="imprimirA.php?var1=<?=$turnoA;?>&var2=<?=$dato;?>" target="_blank"> IMPRIMIR LISTA </a>
    </div>-->
    <?php
    $query = "SELECT * FROM turno WHERE turno = '$turnoA' and fecha = '$dato'";
    $query_run = mysqli_query($conexion, $query);
    $row = mysqli_num_rows($query_run);
    ?>    
 <!--   <H3>Inscritos total del TURNO son: <?= $row;?> </H3>-->

    <table id="cuadro">
    <thead>
            <tr>
                <th> Nro.</th>
                <th> NOMBRE Y APELLIDO</th>
                <th>CONEXION</th>
                <th>TURNO</th>
            </tr>
    </thead>
    <tbody>
    <?php

        $q = "SELECT dato_adulto.nom_dni, dato_adulto.num_dni, dato_adulto.nombre, dato_adulto.apellido, dato_adulto.email, dato_adulto.conexion, turno.id, turno.turno, turno.fecha FROM dato_adulto INNER JOIN turno ON turno.num_dni = dato_adulto.num_dni WHERE turno.turno = '$turnoA' and turno.fecha = '$dato' and dato_adulto.conexion = '$conex' order by dato_adulto.nombre asc";
        $resultado = mysqli_query($conexion, $q) or die(mysql_error());
        $numerar = 1;
        while ($filas = mysqli_fetch_array($resultado)){ ?>
            <tr>
                    <td><?php echo $numerar;?></td>
                    <?php $numerar++;?>
                    <td><?php echo $filas['nombre'];?> <?php echo $filas['apellido'];?></td>
                    <td><?php echo $filas['conexion'];?></td>
                    <td><?php echo $filas['turno'];?></td>
            </tr>
        <?php }?>
    </tbody>
</table>

<?php
}else{?>
<!--<div class="ref0">
<a href="imprimirN.php?var1=<?=$turnoN;?>&var2=<?=$dato;?>&var3=<?=$aula;?>" target="_blank"> IMPRIMIR LISTA </a>
</div>-->
    <?php
   $query = "SELECT * FROM turnok WHERE turno = '$turnoN' and aula = '$aula' and fecha = '$dato'";
    $query_run = mysqli_query($conexion, $query);
    $row = mysqli_num_rows($query_run);
    ?>    
    <!--<H3>Inscritos son: <?= $row;?> </H3>-->

    <table id="cuadro">
    <thead>
            <tr>
                <th> Nro.</th>
                <th> NOMBRE Y APELLIDO</th>
                <th>TURNO</th>
                <th>AULA</th>
                <th>ACCIÓN</th>
            </tr>
    </thead>
    <tbody>
    <?php
        $q = "SELECT data_kids.nombre, data_kids.apellido, turnok.id, turnok.turno, turnok.aula, turnok.fecha FROM data_kids INNER JOIN turnok ON turnok.num_dni = data_kids.num_dni WHERE turnok.turno = '$turnoN' and turnok.fecha = '$dato' and turnok.aula = '$aula' order by data_kids.nombre asc";
        $resultado = mysqli_query($conexion, $q) or die(mysql_error());
        $numerar = 1;
        while ($filas = mysqli_fetch_array($resultado)){ ?>
            <tr>
                    <td><?php echo $numerar;?></td>
                    <?php $numerar++;?>
                    <td><?php echo $filas['nombre'];?> <?php echo $filas['apellido'];?></td>
                    <td><?php echo $filas['turno'];?></td>
                    <td><?php echo $filas['aula'];?></td>
                    <td>
                        <div class="ref1">
                        <a href="eliminarN.php?id=<?php echo $filas['id'];?>">ELIMINAR</a>
                        </div>
                    </td>
            </tr>
        <?php }?>
    </tbody>
</table>
<?php }?>
</section>
</div>
</body>
</html>