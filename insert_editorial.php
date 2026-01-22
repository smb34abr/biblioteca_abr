<?php
    require_once('config/conexion.php');

    $nombre_editorial = $_POST['nombre_editorial'];
    $pais = $_POST['pais'];

    $sql = $conexion->query("INSERT INTO editorial(nombre_editorial, pais) VALUES('$nombre_editorial', '$pais')");

    if($sql){
        echo("<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>;");

    echo("<script type='text/javascript'>
        Swal.fire({
            icon: 'success',
            title: 'Editorial insertada correctamente',
            showConfirmButton: false,
            timer: 1500
        }).then(() => {
            window.location.href = 'editoriales.php';
        });
    </script>");
    }else{
        echo("<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>;");

        echo("<script type='text/javascript'>
            Swal.fire({
                icon: 'error',
                title: 'Error al insertar la editorial',
                showConfirmButton: false,
                timer: 1500
            }).then(() => {
                window.location.href = 'form_editorial.php';
            });
        </script>");
    }
