<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
</head>
<body>
<div class="contenedor">
    <header></header>
    <section class="main">
            <div class="imglogo">
            <a href="index.html"><img src="images/logo1.png" alt="logoFCP"></a>
            </div>
            <h1>INGRESO ADULTO</h1>
        <div class="ref0">
            <form method="POST" action="logearA.php">
                <input type ="text" name = "nombre" placeholder="escriba nombre" autofocus></br>
                <input type="number" name="num_dni" placeholder="escriba dni o cedula"></br>
                <input type="submit" id="sub" name="login_a" value="ENTRAR">
            </form>
        </div>    
    </section>
</div>
</body>
</html>