<%-- 
    Document   : index
    Created on : 2/08/2023, 11:53:07 PM
    Author     : Alanb
--%>

<%@page import="java.util.List"%>
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
    <center><h1>Usuarios</h1></center>
    
    <table class="table table-dark" style="width:80%; margin-left: 10%;">
        <thead>
            <tr>
                <th>ID:</th>
                <th>Nombre:</th>
                <th>Apellido P:</th>
                <th>Apellido M:</th>
                <th>Correo:</th>
                <th>Telefono:</th>
                <th>Perfil:</th>
                <th>Estatus:</th>
                <th>Usuario:</th>
                <th colspan="2">Acciones</th>
                
            </tr>
        </thead>
        <tbody>
            <%  
            List<Usuario> lista = AccionesUsuario.buscarAllEmpleados();
            for(Usuario e : lista){
            
            %>
            <tr>
                <td> <%=e.getId_usu()%> </td>
                <td> <%=e.getNombre()%> </td>
                <td> <%=e.getApp()%> </td>
                <td> <%=e.getApm()%> </td>
                <td> <%=e.getCorreo()%> </td>
                <td> <%=e.getTelefono()%> </td>
                <td> <%=e.getPerfil()%> </td>
                <td> <%=e.getEstatus()%> </td>
                <td> <%=e.getUsuario()%> </td>
                
                <td> <a href="editarUsuario.jsp?id=<%=e.getId_usu()%>">Editar</a> </td>
                <td> <a href="borrarUsuario?id=<%=e.getId_usu()%>">Borrar</a> </td>
                
            </tr>
            <%
            }
            
            %>
            
        </tbody>
    </table>
        
                 <center>
                    <a href="usuarios.jsp" class="btn btn-primary">Alta Usuario</a>
                    <a href="index.jsp" class="btn btn-danger">Salir</a>
                </center>
            
    </body>
</html>
