<?php
    require_once "config/conexion.php";

    $id_libro = $_POST["id_libro"];
    $id_usuario = $_POST["id_usuario"];
    $fecha_prestamo = $_POST["fecha_prestamo"];
    $fecha_devolucion = $_POST["fecha_devolucion"]; 
    $fecha_devolucion_real = $_POST["fecha_devolucion_real"];

    $sql = $conexion->query("INSERT INTO prestamos (id_libro, id_usuario, fecha_prestamo, fecha_devolucion_prevista, fecha_devolucion_real, fecha_captura)
                             VALUES ('$id_libro', '$id_usuario', '$fecha_prestamo', '$fecha_devolucion', '$fecha_devolucion_real', NOW())");



    if ($sql) { 
        echo("<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>;");
        echo("<script type='text/javascript'>
            Swal.fire({
                icon: 'success',
                title: 'Préstamo insertado correctamente',
                showConfirmButton: false,
                timer: 1500
            }).then(() => {
                window.location.href = 'prestamo.php';
            }); 
        </script>");
    }else{
        echo("<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>;");
        echo("<script type='text/javascript'>
            Swal.fire({
                icon: 'error',
                title: 'Error al insertar el préstamo',
                showConfirmButton: false,
                timer: 1500
            }).then(() => {
                window.location.href = 'form_prestamo.php';
            });
        </script>");
    }