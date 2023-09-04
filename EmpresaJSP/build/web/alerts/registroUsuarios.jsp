<%-- 
    Document   : registroUsuarios
    Created on : 3/08/2023, 01:10:22 AM
    Author     : Alanb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Alerta de nuevo empleado</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <script>
            function showSuccessMessage() {
                swal({
                    title: "Registro de usuario exitoso",
                    text: "El usuario ha sido registrado con éxito",
                    icon: "success",
                    buttons: {
                        confirm: {
                            text: "Confirmar",
                            value: true,
                            visible: true,
                            className: "",
                            closeModal: true
                        }
                    }
                })
                .then((value) => {
                    if (value) {
                        window.location.href = "../indexUsuarios.jsp";
                    }
                });
            }

            showSuccessMessage();
        </script>
    </body>
</html>
