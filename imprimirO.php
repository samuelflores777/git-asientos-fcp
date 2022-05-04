<?php
include 'plantilla.php';
include 'db.php';
$dato = $_GET['var1'];
$q = "SELECT nombres, pedido, fecha FROM oracion WHERE CAST(fecha AS DATE) = '$dato'";
$resultado = mysqli_query($conexion, $q);
$num = 1;

$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();

$pdf->Cell(80, 10,"PEDIDOS DE ORACION",0,0,'C');
$pdf->Cell(0, 10,"FECHA: ".$dato,0,1,'C');
$pdf->SetFillColor(232,232,232);
$pdf->SetFont('Arial','B',12);
$pdf->Cell(10,6,'NRO',1,0,'C',1);
$pdf->Cell(50,6,'NOMBRES',1,0,'C',1);
$pdf->Cell(130,6,'PEDIDOS',1,1,'C',1);


$pdf->SetFont('Arial','',10);
while($filas = $resultado->fetch_assoc())
{
    $pdf->Cell(10,6,utf8_decode($num),1,0,'C');
    $num++;
    $pdf->Cell(50,6,utf8_decode($filas['nombres']),1,0,'C');
    $pdf->Cell(130,6,utf8_decode($filas['pedido']),1,1,'C');
}
$pdf->Output();
?>