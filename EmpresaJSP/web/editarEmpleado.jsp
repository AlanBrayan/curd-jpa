<%-- 
    Document   : editarEmpleado
    Created on : 3/08/2023, 03:57:12 PM
    Author     : Alanb
--%>
<%@page import="Modelo.Empleado"%>
<%@page import="Controlador.AccionesEmpleado"%>
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
    <center><h1>Actualizar usuarios <a href="indexEmpleados.jsp" class="btn btn-danger">Regresar</a> </h1></center>

    <form method="POST" name="actualizarDatos" action="actualizarEmpleado" style="width: 80%; margin-left: 10%;">
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Empleado e = AccionesEmpleado.buscarEmpleadoById(id);
        %>

        <p>ID:</p><input type="hidden" class="input-group-text" name="id2" value="<%=e.getId_emp()%>">
        </p><input type="text" disabled class="input-group-text" name="id2" value="<%=e.getId_emp()%>">
        <p>Nombre:</p><input type="text" class="form-control" name="nombre2" value="<%=e.getNombre()%>">
        <p>Telefono:</p><input type="text" class="form-control" name="telefono2" value="<%=e.getTelefono()%>">
        <p>Sexo:</p>
        <select name="sexo2" class="form-select" onchange="updateIdPerfil()">
            <option hidden="">Selecciona</option>
            <option>Masculino</option>
            <option>Femenino</option>  
        </select>
        <br>   
        <input type="submit" value="Editar"  class="btn btn-primary">
        <br><br><br>
    </form>

</body>
</html>
