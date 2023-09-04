<%-- 
    Document   : editarUsuario
    Created on : 3/08/2023, 04:07:52 AM
    Author     : Alanb
--%>

<%@page import="Modelo.Usuario"%>
<%@page import="Controlador.AccionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Actualizar usuarios <a href="indexUsuarios.jsp" class="btn btn-danger">Regresar</a> </h1></center>

    <form method="POST" name="actualizarDatos" action="actualizarUsuario" style="width: 80%; margin-left: 10%;">
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Usuario e = AccionesUsuario.buscarEmpleadoById(id);
        %>

        <p>ID:</p><input type="hidden" class="input-group-text" name="id2" value="<%=e.getId_usu()%>">
        </p><input type="text" disabled class="input-group-text" name="id2" value="<%=e.getId_usu()%>">
        <p>Nombre:</p><input type="text" class="form-control" name="nombre2" value="<%=e.getNombre()%>">
        <p>Apellido paterno:</p><input type="text" class="form-control" name="app2" value="<%=e.getApp()%>">
        <p>Apellido materno:</p><input type="text" class="form-control" name="apm2" value="<%=e.getApm()%>">
        <p>Correo:</p><input type="text" class="form-control" name="correo2" value="<%=e.getCorreo()%>">
        <p>Telefono:</p><input type="text" class="form-control" name="telefono2" value="<%=e.getTelefono()%>">
        <p>Contraseña:</p>
        <input type="password" name="pass2" maxlenght="8" value="<%=e.getPass()%>" class="input-group-text" style="width: 100%" oninput="validatePassword()" maxlength="8">
        <div id="passwordError" style="color: red;"></div>
        <p>Perfil:</p>
        <select name="selectPerfil" class="form-select" onchange="updateIdPerfil()">
            <option hidden="">Selecciona</option>
            <option value="1">Master</option>
            <option value="2">Empleado</option>  
        </select>
        <p>Estatus:</p>
        <select name="estatus2" value="<%=e.getEstatus()%>" class="form-select">
            <option>Activo</option>
            <option>No activo</option>  
        </select>
        <p>Usuario:</p><input type="text" name="usuario2" value="<%=e.getUsuario()%>" class="form-control">

        <p>PERFIL:</p>
        <input type="text" name="perfil2" value="<%=e.getPerfil()%>" id="perfil2" class="input-group-text" style="width: 100%">


        <p>ID_PERFIL:</p>
        <input type="text"  name="id_perfil2"  id="id_perfil2"  value="<%=e.getId_perfil()%>" class="input-group-text" style="width: 100%">


        <br>   
        <input type="submit" value="Editar"  class="btn btn-primary">
        <br><br><br>
    </form>

</body>


<script>
    function updateIdPerfil() {
        var selectElement = document.querySelector('select[name="selectPerfil"]');

        var selectedValue = selectElement.value;
        var selectedText = selectElement.options[selectElement.selectedIndex].text;

        document.querySelector('input[name="perfil2"]').value = selectedText;
        document.querySelector('input[name="id_perfil2"]').value = selectedValue;
    }



    function validatePassword() {
        var password = document.querySelector("input[name='pass2']").value;
        var passwordError = document.getElementById("passwordError");
        var regex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
        if (!regex.test(password)) {
            passwordError.textContent = "La contraseña debe tener al menos 8 caracteres, un numero, una letra mayúscula y una minúscula.";
        } else {
            passwordError.textContent = "";
        }
    }

</script>
</html>
