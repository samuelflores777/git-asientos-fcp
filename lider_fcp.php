<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>REGISTRO LIDER</title>
</head>
  <body>
<div class="contendor">
  <header>
  
  </header>
<section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logo1.png" alt="logoFCP"></a>
        </div>
            <h1>REGISTRO SISTEMA - LIDER</h1>
        <div class="ref0">
                <form name="form3" method="POST" action="lider_reg.php">
                        <select name="nom_dni">
                            <option>DNI</option>
                            <option>CEDULA</option>
                        </select></br>
                        <input type="number" name="num_dni" placeholder="escriba numero de DNI o Cédula" required/><br>
                        <input type="text" name="nombre" pattern="[a-zA-Z ]+"  placeholder="escriba su nombre" required/><br>
                        <input type="text" name="apellido" pattern="[a-zA-Z ]+"  placeholder="escriba su apellido"><br>
                        <input type="email" name="email"  placeholder="escriba su correo" required/> <br>
                        <input type="text" readonly="readonly" name="cargo" value="LIDER">
                        <input type="text" name="passwrd" placeholder="contraseña" required/> </br>
                    <input type="submit" name ="guardar_l" value="REGISTRAR">
                </form>
        </div>
  </section>
</div>
    </body>
</html>