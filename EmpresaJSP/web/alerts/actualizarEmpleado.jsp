<%-- 
    Document   : actualizarEmpleado
    Created on : 3/08/2023, 12:22:38 PM
    Author     : Alanb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Se actualizo</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <script>
            function showSuccessMessage() {
                swal({
                    title: "Actualizacion de empleado exitosa",
                    text: "El empleado ha sido actualizado con éxito",
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
