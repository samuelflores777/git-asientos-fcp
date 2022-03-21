<?php
include 'plantilla.php';
include 'db.php';
$turnoN = $_GET['var1'];
$dato = $_GET['var2'];
$aula = $_GET['var3'];
$q = "SELECT data_kids.nombre, data_kids.apellido, turnok.id, turnok.turno, turnok.aula, turnok.fecha FROM data_kids INNER JOIN turnok ON turnok.num_dni = data_kids.num_dni WHERE turnok.turno = '$turnoN' and turnok.fecha = '$dato' and turnok.aula = '$aula' order by data_kids.nombre asc";
$resultado = mysqli_query($conexion, $q);
$num = 1;

$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();

$pdf->Cell(80, 10,"TURNO: ".$turnoN,0,0,'C');
$pdf->Cell(0, 10,"FECHA: ".$dato,0,1,'C');
$pdf->SetFillColor(232,232,232);
$pdf->SetFont('Arial','B',12);
$pdf->Cell(10,6,'NRO',1,0,'C',1);
$pdf->Cell(90,6,'NOMBRE Y APELLIDO',1,0,'C',1);
$pdf->Cell(50,6,'TURNO',1,0,'C',1);
$pdf->Cell(30,6,'AULA',1,1,'C',1);

$pdf->SetFont('Arial','',10);
while($filas = $resultado->fetch_assoc())
{
    $pdf->Cell(10,6,utf8_decode($num),1,0,'C');
    $num++;
    $pdf->Cell(90,6,utf8_decode($filas['nombre']." ".$filas['apellido']),1,0,'C');
    $pdf->Cell(50,6,utf8_decode($filas['turno']),1,0,'C');
    $pdf->Cell(30,6,$filas['aula'],1,1,'C');
}
$pdf->Output();
?>