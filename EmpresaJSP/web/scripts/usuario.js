
        function validatePassword() {
            var password = document.querySelector("input[name='pass']").value;
            var passwordError = document.getElementById("passwordError");
            var regex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
            if (!regex.test(password)) {
                passwordError.textContent = "La contraseña debe tener al menos 8 caracteres, un numero, una letra mayúscula y una minúscula.";
            } else {
                passwordError.textContent = "";
            }
        }

        function confirmSubmit(event) {
            event.preventDefault();
            var nombre = document.querySelector("input[name='nombre']").value;
            var app = document.querySelector("input[name='app']").value;
            var apm = document.querySelector("input[name='apm']").value;
            var correo = document.querySelector("input[name='correo']").value;
            var telefono = document.querySelector("input[name='telefono']").value;
            var pass = document.querySelector("input[name='pass']").value;
            var usuario = document.querySelector("input[name='usuario']").value;
            

            if (nombre == "" || app == "" || apm == "" || correo == "" || telefono == "" || pass == "" || usuario == "") {
                swal({
                    title: "Error",
                    text: "Se tienen que completar todos los campos",
                    icon: "error",
                });
            } else {
                swal({
                    title: "¿Estás seguro?",
                    text: "¿Deseas continuar con el registro?",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                })
                        .then((willSubmit) => {
                            if (willSubmit) {
                                document.querySelector("form[name='registroUsuario']").submit();
                            }
                        });
            }

            return false;
        }

        function updateIdPerfil() {

            var selectElement = document.querySelector('select[name="selectPerfil"]');

            var selectedValue = selectElement.value;
            var selectedText = selectElement.options[selectElement.selectedIndex].text;

            
            document.querySelector('input[name="perfil"]').value = selectedText;
            document.querySelector('input[name="id_perfil"]').value = selectedValue;
        }

