
function validateForm(event) {
    event.preventDefault();
    var nombre = document.querySelector("input[name='nombre']").value;
    var telefono = document.querySelector("input[name='telefono']").value;
    
    if (nombre == "" || telefono == "") {
        swal({
            title: "Error",
            text: "Completa todos los campos",
            icon: "error",
        });
    } else {
        document.querySelector("form[name='registroEmpleado']").submit();
    }
    
    return false;
}
