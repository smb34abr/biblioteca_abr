<?php
require_once "config/conexion.php";

// 1. Recibes los datos
$id_libro = $_POST["id_libro"];
$titulo = $_POST["titulo"];
$isbn = $_POST["isbn"];
$fecha_publicacion = $_POST["fecha_publicacion"];
$id_escritor = $_POST["id_escritor"];
$id_editorial = $_POST["id_editorial"];
$existencias = $_POST["existencias"];
$precio = $_POST["precio"];

// 2. Preparas la sentencia (usamos "?" en lugar de las variables directamente)
$sql = $conexion->prepare("UPDATE libros SET 
                            titulo = ?, 
                            isbn = ?, 
                            fecha_publicacion = ?, 
                            id_escritor = ?, 
                            id_editorial = ?, 
                            existencias = ?, 
                            precio = ? 
                          WHERE id_libro = ?");

// 3. Vinculas los parámetros ("s" para string, "i" para entero, "d" para decimal)
// El orden debe ser EXACTAMENTE el mismo que en el SQL de arriba
$stmt = $sql->bind_param(
    "sssiiiid",
    $titulo,            // s
    $isbn,              // s
    $fecha_publicacion, // s
    $id_escritor,       // i
    $id_editorial,      // i
    $existencias,       // i
    $precio,            // d (decimal)
    $id_libro           // i
);

if ($stmt) {
    echo ("<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>;");

    echo ("<script type='text/javascript'>
        Swal.fire({
            icon: 'success',
            title: 'Libro insertado correctamente',
            showConfirmButton: false,
            timer: 1500
        }).then(() => {
            window.location.href = 'libros.php';
        });
    </script>");
} else {
    echo ("<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>;");

    echo ("<script type='text/javascript'>
            Swal.fire({
                icon: 'error',
                title: 'Error al insertar el libro',
                showConfirmButton: false,
                timer: 1500
            }).then(() => {
                window.location.href = 'insert_libros_edit.php';
            });
        </script>");
}
