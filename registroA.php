<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>REGISTRO ADULTO</title>
</head>
  <body>
<div class="contendor">
  <header> </header>
<section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logo1.png" alt="logoFCP"></a>
        </div>
            <h1>REGISTRO SISTEMA  - ADULTO</h1>
        <div class="ref0">
                <form method="POST" action="regA.php">
                        <select name="nom_dni">
                            <option>DNI</option>
                            <option>CEDULA</option>
                        </select></br>
                        <input name="num_dni" type="number" placeholder="escriba su numero DNI o Cédula" autofocus required/></br>
                        <input name="nombre" type="text" pattern="[a-zA-Z ]+" placeholder="escriba su nombre" required/></br>
                        <input name="apellido" type="text" pattern="[a-zA-Z ]+" placeholder="escriba su apellido"></br>
                        <input name="email" type="email"  placeholder="escriba su email" required/></br>
                        <select name="conexion">
                            <option> S/Conexion</option>
                            <option>Miraflores 1</option>
                            <option>Miraflores 2</option>
                            <option>Miraflores 3</option>
                            <option>Miraflores 4</option>
                            <option>La Victoria</option>
                            <option>Surquillo</option>
                            <option>San Isidro</option>
                            <option>Los olivos</option>
                            <option>San Luis</option>
                            <option>Surco 1</option>
                            <option>Surco 2</option>
                        </select></br>
                    <input type="submit" id="sub"name="guardar_a" value="REGISTRAR">
                </form>
       </div>
  </section>
</div>
    </body>
</html>