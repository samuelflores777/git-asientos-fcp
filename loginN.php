<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN KIDS</title>
</head>
<body>
<div class="contenedor">
    <header></header>
    <section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logoK.png" alt="logoFCP"></a>
        </div>
            <h1>INGRESO KIDS</h1>
        <div class="ref0">            
            <FORM method="POST" action="logearN.php">
            <input type ="text" name = "nombre" placeholder="escriba nombres" autofocus><br>
            <input type="number" name="num_dni"  placeholder="escriba dni o cedula"><br>
            <input type="submit" id="sub" name="login_n" value="ENTRAR">
        </FORM>
        </div>
        </div>
    </section>
</div>
</body>
</html>