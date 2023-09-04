<%-- 
    Document   : indexEmpleados
    Created on : 3/08/2023, 03:44:14 PM
    Author     : Alanb
--%>
<%@page import="java.util.List"%>
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
    <center><h1>Empleados</h1></center>
    
    <table class="table table-dark" style="width:80%; margin-left: 10%;">
        <thead>
            <tr>
                <th>ID:</th>
                <th>Nombre:</th>
                <th>Telefono:</th>
                <th>Sexo:</th>
                <th colspan="2" style="text-align: center">Acciones</th>
                
            </tr>
        </thead>
        <tbody>
            <%  
            List<Empleado> lista = AccionesEmpleado.buscarAllEmpleados();
            for(Empleado e : lista){
            
            %>
            <tr>
                <td> <%=e.getId_emp()%> </td>
                <td> <%=e.getNombre()%> </td>
                <td> <%=e.getTelefono()%> </td>
                <td> <%=e.getSexo()%> </td>

                <td> <a href="editarEmpleado.jsp?id=<%=e.getId_emp()%>">Editar</a> </td>
                <td> <a href="borrarEmpleado?id=<%=e.getId_emp()%>">Borrar</a> </td>
                
            </tr>
            <%
            }
            
            %>
            
        </tbody>
    </table>
        
                 <center>
                    <a href="empleados.jsp" class="btn btn-primary">Alta Empleado</a>
                    <a href="index.jsp" class="btn btn-danger">Salir</a>
                </center>
            
    </body>
</html>