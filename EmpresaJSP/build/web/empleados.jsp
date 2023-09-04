<%-- 
    Document   : empleados
    Created on : 3/08/2023, 03:39:12 PM
    Author     : Alanb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Alta empleados <a href="indexEmpleados.jsp" class="btn btn-danger">Regresar</a> </h1></center>
    <div class="contaimer">
        <div class="containerRegistro">
            <form action="guardarEmpleado" method="POST" name="registroEmpleado" style="width: 80%; margin-left: 10%;" onsubmit="return validateForm(event)">
                <p>Nombre:</p><input type="text" name="nombre" class="input-group-text" style="width: 100%" >
                <p>Telefono:</p><input type="text" name="telefono" class="input-group-text" style="width: 100%" >
                <p>Sexo:</p>
                <select name="sexo" class="form-select">
                    <option>Masculino</option>
                    <option>Femenino</option>  
                </select>
                <br>
                <input type="submit" value="Registrar" class="btn btn-primary">
                <br><br>
            </form>                
        </div>
    </div>

    <script src="scripts/empleado.js"></script>
</body>
</html>
