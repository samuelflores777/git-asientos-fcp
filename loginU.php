<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN ADMINISTRACION</title>
</head>
<body>
<div class="contenedor">
<header></header>
<section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logo1.png" alt="logoFCP"></a>
        </div>
        <div class="ref0">
            <H1>LOGIN ADMINISTRACIÓN</H1>

                <FORM method="post" action="logearU.php">
                    <input type ="number" name = "num_dni"  placeholder="escriba DNI o Cédula" autofocus><br>
                    <input type="password" name="passwrd" placeholder="escriba contraseña"><br>
                    <input type="submit" id ="sub" name="login_u" value="ENTRAR">
                </FORM>
        </div>
</section>
</div>
</body>
</html>