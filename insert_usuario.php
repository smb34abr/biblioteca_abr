<?php
    require_once "config/conexion.php";

    $nombre = $_POST["nombre"];
    $apellido = $_POST["apellido"];
    $email = $_POST["email"];
    $telefono = $_POST["telefono"];
    $direccion = $_POST["direccion"];
    $sql = $conexion->query("INSERT INTO usuarios (nombre, apellido, email, telefono, direccion, fecha_captura)
                             VALUES ('$nombre', '$apellido', '$email', '$telefono', '$direccion', NOW())");
    if ($sql) {

    echo("<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>;");

    echo("<script type='text/javascript'>
        Swal.fire({
            icon: 'success',
            title: 'Usuario insertado correctamente',
            showConfirmButton: false,
            timer: 1500
        }).then(() => {
            window.location.href = 'usuarios.php';
        });
    </script>");
    }else {
        echo("<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>;");

        echo("<script type='text/javascript'>
            Swal.fire({
                icon: 'error',
                title: 'Error al insertar el usuario',
                showConfirmButton: false,
                timer: 1500
            }).then(() => {
                window.location.href = 'form_usuario.php';
            });
        </script>");
    }