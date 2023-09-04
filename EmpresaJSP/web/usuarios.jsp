<%-- 
    Document   : usuarios
    Created on : 2/08/2023, 11:55:56 PM
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

    <center><h1>Alta usuarios <a href="indexUsuarios.jsp" class="btn btn-danger">Regresar</a> </h1></center>

    <div class="contaimer">
        <div class="containerRegistro">
            <form action="guardarUsuario" method="POST" name="registroUsuario" style="width: 80%; margin-left: 10%;" onsubmit="return confirmSubmit(event)">
                <p>Nombre:</p><input type="text" name="nombre" class="input-group-text" style="width: 100%" >
                <p>Apellido paterno:</p><input type="text" name="app" class="input-group-text" style="width: 100%" >
                <p>Apellido materno:</p><input type="text" name="apm" class="input-group-text" style="width: 100%" >
                <p>Correo:</p><input type="text" name="correo" class="input-group-text" style="width: 100%" >
                <p>Telefono:</p><input type="text" name="telefono" class="input-group-text" style="width: 100%" >
                <p>Contraseña:</p>
                <input type="password" name="pass" class="input-group-text" style="width: 100%" oninput="validatePassword()" maxlength="8">
                <div id="passwordError" style="color: red;"></div>
                <p>Perfil:</p>
                <select name="selectPerfil" class="form-select" onchange="updateIdPerfil()">
                    <option hidden="">Selecciona</option>
                    <option value="1">Master</option>
                    <option value="2">Empleado</option>  
                </select>

                <p>Estatus:</p>
                <select name="estatus" class="form-select">
                    <option>Activo</option>
                    <option>No activo</option>  
                </select>
                <p>Usuario:</p><input type="text" name="usuario"class="input-group-text" style="width: 100%" >
                
                <br>
                <p>-----------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
                <p>PERFIL:</p>
                <input type="disabled" name="perfil"  id="perfil" class="input-group-text" style="width: 100%">

                <p>ID_PERFIL:</p>
                <input type="disabled" name="id_perfil"  id="id_perfil" class="input-group-text" style="width: 100%">


                <br>
                <input type="submit" value="Registrar" class="btn btn-primary">
                <br><br>
            </form>                
        </div>
    </div>

 


        <script src="scripts/usuario.js"></script>


</body>
</html>
