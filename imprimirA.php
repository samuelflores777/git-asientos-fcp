<?php
include 'plantilla.php';
include 'db.php';
$turnos = $_GET['var1'];
$dato = $_GET['var2'];
$q = "SELECT dato_adulto.nom_dni, dato_adulto.num_dni, dato_adulto.nombre, dato_adulto.apellido, dato_adulto.email, dato_adulto.conexion, turno.id, turno.turno, turno.fecha FROM dato_adulto INNER JOIN turno ON turno.num_dni = dato_adulto.num_dni WHERE turno.turno = '$turnos' and turno.fecha = '$dato' order by dato_adulto.nombre asc";
$resultado = mysqli_query($conexion, $q);
$num = 1;

$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();

$pdf->Cell(80, 10,"TURNO: ".$turnos,0,0,'C');
$pdf->Cell(0, 10,"FECHA: ".$dato,0,1,'C');
$pdf->SetFillColor(232,232,232);
$pdf->SetFont('Arial','B',12);
$pdf->Cell(10,6,'NRO',1,0,'C',1);
$pdf->Cell(90,6,'NOMBRE Y APELLIDO',1,0,'C',1);
$pdf->Cell(50,6,'CONEXION',1,0,'C',1);
$pdf->Cell(30,6,'TURNO',1,1,'C',1);

$pdf->SetFont('Arial','',10);
while($filas = $resultado->fetch_assoc())
{
    $pdf->Cell(10,6,utf8_decode($num),1,0,'C');
    $num++;
    $pdf->Cell(90,6,utf8_decode($filas['nombre']." ".$filas['apellido']),1,0,'C');
    $pdf->Cell(50,6,utf8_decode($filas['conexion']),1,0,'C');
    $pdf->Cell(30,6,$filas['turno'],1,1,'C');
}
$pdf->Output();
?>