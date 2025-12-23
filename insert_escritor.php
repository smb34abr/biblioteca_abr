<?php


    require_once('config/conexion.php');    

    $nombre_escritor = $_POST['nombre_escritor'];
    $apellido = $_POST['apellido'];
    $nacionalidad = $_POST['nacionalidad'];
    $fecha_nacimiento = $_POST['fecha_nacimiento'];
    
    $sql = $conexion->query("INSERT INTO escritores (nombre_escritor, apellido, nacionalidad, fecha_nacimiento) 
    VALUES('$nombre_escritor', '$apellido', '$nacionalidad', '$fecha_nacimiento')");

    if($sql){      
        echo("<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>;");

    echo("<script type='text/javascript'>
        Swal.fire({
            icon: 'success',
            title: 'Escritor insertado correctamente',
            showConfirmButton: false,
            timer: 1500
        }).then(() => {
            window.location.href = 'escritores.php';
        });
    </script>");
    }else {
        echo("<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>;");

        echo("<script type='text/javascript'>
            Swal.fire({
                icon: 'error',
                title: 'Error al insertar el escritor',
                showConfirmButton: false,
                timer: 1500
            }).then(() => {
                window.location.href = 'form_escritor.php';
            });
        </script>");
    }
