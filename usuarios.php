<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>REGISTRO USUARIOS</title>
</head>
  <body>
<div class="contendor">
  <header></header>
<section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logo1.png" alt="logoFCP"></a>
        </div>
            <h1>REGISTRO SISTEMA - SUPERVISOR</h1>
        <div class="ref0">
                <form name="form5" method="POST" action="usuarios_reg.php">
                        <select name="nom_dni">
                            <option>DNI</option>
                            <option>CEDULA</option>
                        </select></br>
                        <input type="number" name="num_dni" placeholder="escriba numero" autofocus required/></br>
                        <input type="text" name="nombre" pattern="[a-zA-Z ]+" placeholder="nombre" required/></br>
                         <input type="text" name="apellido" pattern="[a-zA-Z ]+" placeholder="apellido"></br>
                        <input type="text" name="email" placeholder="email" required/></br>
                        <input type="text" readonly="readonly" name="cargo" value="SUPERVISOR">
                        <input type="text" name="passwrd" placeholder="contrasena" required/></br>
                    <input type="submit" id="sub"name="guardar_u" value="REGISTRAR">
                </form>
        </div>
  </section>
</div>
    </body>
</html>