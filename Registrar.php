<?php
include("conexion.php");

if(isset($_POST["register"])){
    if(strlen($_POST['name']) >= 1 && strlen($_POST['direccion']) >= 1 && strlen($_POST['telefono']) >= 1 
    && strlen($_POST['idbanentidad']) >= 1 && strlen($_POST['numcuenta']) >= 1 && strlen($_POST['cedula']) >= 1 && strlen($_POST['idtipocuen']) >= 1)
    {
        $name = ($_POST['name']);
        $direccion = ($_POST['direccion']);
        $telefono = ($_POST['telefono']);
        $idbanentidad = ($_POST['idbanentidad']);
        $numcuenta = ($_POST['numcuenta']);
        $cedula = ($_POST['cedula']);
        $idtipocuen = ($_POST['idtipocuen']);
        $consulta = "INSERT INTO Cliente (nombre_persona, direccion, telefono, id_entidadbancaria, num_cuenta, Cedula, idtipocuenta) VALUES
        ('$name','$direccion','$telefono','$idbanentidad','$numcuenta','$cedula','$idtipocuen')";
        $resul = mysqli_query($con,$consulta);
        if ($resul){
            ?>
            
            echo '<script language="javascript">alert("Ingreso correcto");</script>';
            <?php
        }else{
            ?>
            echo '<script language="javascript">alert("Ups¡ hay un error");</script>';
            <?php
        }
    }else{
        ?>
        echo '<script language="javascript">alert("Por favor complete los campos");</script>';
        <?php
    }
 }
?>