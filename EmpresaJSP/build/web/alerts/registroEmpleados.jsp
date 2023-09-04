<%-- 
    Document   : registroEmpleados
    Created on : 3/08/2023, 03:43:18 PM
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
                    title: "Registro de empleado exitoso",
                    text: "El empleado ha sido registrado con éxito",
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
                        window.location.href = "../indexEmpleados.jsp";
                    }
                });
            }

            showSuccessMessage();
        </script>
    </body>
</html>
