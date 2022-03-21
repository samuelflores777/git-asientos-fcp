<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style1.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>REGISTRO KIDS</title>
</head>
  <body>
  <div class="contendor">
  <header>
  
  </header>
        <section class="main">
        <div class="imglogo">
        <a href="index.html"><img src="images/logoK.png" alt="logoFCP"></a>
        </div>
              <h1>REGISTRO SISTEMA - KIDS</h1>
        <div class="ref0">
                <form name="form2" method="POST" action="regN.php">
                        <select name="nom_dni">
                            <option>DNI</option>
                            <option>CEDULA</option>
                        </select></br>
                        <input type="number" name="num_dni" placeholder="escriba su numero DNI o Cedula" autofocus required/></br>
                        <input type="text" name="nombre" pattern="[a-zA-Z ]+" placeholder="escriba su nombre" required/></br>
                        <input type="text" name="apellido" pattern="[a-zA-Z ]+" placeholder="escriba su apellido"></br>
                        <input type="number" name="edad" placeholder="escriba su edad"></br>
                        <select name="aula" required>
                        <option></option>
                            <option>AMARILLA</option>
                            <option>VERDE</option>
                            <option>AZUL</option>
                        </select></br>
                    <input type="submit" id="sub"name="guardar_n" value="REGISTRAR">
                </form>
        </div>
        </div>
        </section>
    </body>
</html>