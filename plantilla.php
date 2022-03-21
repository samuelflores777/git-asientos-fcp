<?php
require 'fpdf/fpdf.php';

class PDF extends FPDF
{
    function Header()
    {
        $this->Image('images/logoImp.png', 5, 5,20);
        $this->Setfont('Arial', 'B', 15);
        $this->Cell(30);
        $this->Cell(120, 10, 'Reporte de Listas',0,0,'C');

        $this->Ln(10);
    }

    function Footer()
    {
        $this->SetY(-15);
        $this->SetFont('Arial','I',8);
        $this->Cell(0,10,utf8_decode('Página ').$this->PageNo().'/{nb}',0,0,'C');
    }

}
?>