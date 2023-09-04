<%-- 
    Document   : index
    Created on : 3/08/2023, 04:10:48 PM
    Author     : Alanb
--%>

<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/login.css" rel="stylesheet" type="text/css" media="screen" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <title>JSP Page</title>

        <!-- Agregarr SweetAlert2 -->
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>

    <% String rspta = "";
        if (request.getParameter("rspta") != null) {
            int r = Integer.parseInt(request.getParameter("rspta"));
            if (r == 0) {
                rspta = "El usuario y contraseña no son correctos";
            }
        }

    %>

    <body>
        <% if (rspta != "") {%>
        <script>
            Swal.fire({
                icon: 'error',
                title: '<%=rspta%>',
                showConfirmButton: true
            });
        </script>
        <% }%>


        <div>
            <div id="login" class="login-form" style="padding-top: 10px;">
                <center> <h1>Login</><center>
                            <div class="container">
                                <div id="login-row" class="row justify-content-center align-items-center">
                                    <div id="login-column" class="col-md-6">
                                        <div id="login-box" class="col-md-12">

                                            <form id="login-form" class="form" action="/EmpresaJSP/Login" method="post">
                                                <h3 class="text-center text-info">Ingresa tus datos</h3>
                                                <div class="form-group">
                                                    <input type="text" name="usuario" id="usuario" class="form-control" placeholder="Usuario" required>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <input type="text" name="password" id="password" class="form-control" placeholder="Contraseña" required>
                                                    <br>
                                                </div>         
                                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Ingresar">   
                                                <p style="<%=rspta%>"><p> 
                                                    </div>

                                                <div id="<%=rspta%>" class="<%=rspta%>">

                                                </div>
                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </body>
                            </html>




