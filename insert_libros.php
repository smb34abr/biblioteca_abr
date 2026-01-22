<?php
require_once "config/conexion.php";

$titulo = $_POST["titulo"];
$isbn = $_POST["isbn"];
$fecha_publicacion = $_POST["fecha_publicacion"];
$id_escritor = $_POST["id_escritor"];
$id_editorial = $_POST["id_editorial"];
$existencias = $_POST["existencias"];
$precio = $_POST["precio"];

$sql = $conexion->query("INSERT INTO libros (titulo, isbn, fecha_publicacion, id_escritor, id_editorial, existencias, precio, fecha_captura)
                         VALUES ('$titulo', '$isbn', '$fecha_publicacion', '$id_escritor', '$id_editorial', '$existencias', '$precio', NOW())");

if ($sql) {
  echo("<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>;");
  
  echo("<script type='text/javascript'>
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
      echo("<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>;");

        echo("<script type='text/javascript'>
            Swal.fire({
                icon: 'error',
                title: 'Error al insertar el libro',
                showConfirmButton: false,
                timer: 1500
            }).then(() => {
                window.location.href = 'form_libros.php';
            });
        </script>");
}
