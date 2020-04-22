<!DOCTYPE html>
<html>
    <head>
    <title>Ingreso Datos Clientes</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="estilos.css";
    </head>
<body>

    <form method="post">
        <h1>Ingresar Datos Clientes</h1>
        <label for="uname">Nombre: </label>
        <input type="text" name="name"><br>

        <label for="uname">Direccion: </label>
        <input type="text" name="direccion"><br>

        <label for="uname">Telefono: </label>
        <input type="text" name="telefono"><br>

        <label for="uname">Identidad Bancaria: </label>
        <input type="text" name="idbanentidad"><br>

        <label for="uname">Numero Cuenta: </label>
        <input type="text" name="numcuenta"><br>

        <label for="uname">Numero Cedula: </label>
        <input type="text" name="cedula"><br>

        <label for="uname">Id Tipo de cuenta: </label>
        <input type="text" name="idtipocuen"><br><br><br>
        
        <input type="submit" name="register" value="Registrar">
    </form>
        <?php
        include("Registrar.php");
        ?>
</body>
</html>
