
swal({
    title: "Datos actualizados correctamente",
    text: "Los datos han sido actualizados con éxito",
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
});




        
            Swal.fire({
                icon: 'error',
                title: '<%=rspta%>',
                showConfirmButton: true
            });
        
        