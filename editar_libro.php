<!doctype html>
<html lang="es" data-pc-preset="preset-1" data-pc-sidebar-caption="true" data-pc-direction="ltr" dir="ltr"
    data-pc-theme="light">

<!-- [Head] start -->

<head>
    <?php
    include_once "include/head.php";
    include_once "config/conexion.php";
    ?>

</head>
<!-- [Head] end -->

<!-- [Body] Start -->

<body>

    <!-- [ Pre-loader ] start -->
    <div class="loader-bg fixed inset-0 bg-white dark:bg-themedark-cardbg z-[1034]">
        <div class="loader-track h-[5px] w-full inline-block absolute overflow-hidden top-0">
            <div
                class="loader-fill w-[300px] h-[5px] bg-primary-500 absolute top-0 left-0 animate-[hitZak_0.6s_ease-in-out_infinite_alternate]">
            </div>
        </div>
    </div>
    <!-- [ Pre-loader ] End -->

    <!-- [ Sidebar Menu ] start -->
    <?php require_once "include/menu.php"; ?>
    <!-- [ Sidebar Menu ] end -->

    <!-- [ Header Topbar ] start -->
    <header class="pc-header">
        <div class="header-wrapper flex max-sm:px-[15px] px-[25px] grow"><!-- [Mobile Media Block] start -->

            <div class="me-auto pc-mob-drp">
                <ul class="inline-flex *:min-h-header-height *:inline-flex *:items-center">
                    <!-- ======= Menu collapse Icon ===== -->
                    <li class="pc-h-item pc-sidebar-collapse max-lg:hidden lg:inline-flex">
                        <a href="#" class="pc-head-link ltr:!ml-0 rtl:!mr-0" id="sidebar-hide">
                            <i data-feather="menu"></i>
                        </a>
                    </li>
                    <li class="pc-h-item pc-sidebar-popup lg:hidden">
                        <a href="#" class="pc-head-link ltr:!ml-0 rtl:!mr-0" id="mobile-collapse">
                            <i data-feather="menu"></i>
                        </a>
                    </li>
                    <li class="dropdown pc-h-item">
                        <a class="pc-head-link dropdown-toggle me-0" data-pc-toggle="dropdown" href="#" role="button"
                            aria-haspopup="false" aria-expanded="false">
                            <i data-feather="search"></i>
                        </a>
                        <div class="dropdown-menu pc-h-dropdown drp-search">
                            <form class="px-2 py-1">
                                <input type="search" class="form-control !border-0 !shadow-none"
                                    placeholder="Search here. . ." />
                            </form>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- [Mobile Media Block end] -->

            <div class="ms-auto">


            </div>
        </div>
    </header>
    <!-- [ Header ] end -->

    <!-- [ Main Content ] start -->
    <div class="pc-container">
        <div class="pc-content">
            <!-- [ breadcrumb ] start -->
            <div class="page-header">
                <div class="page-block">
                    <div class="page-header-title">
                        <!-- <a href="">
              <h4 class="mb-0 font-medium mb-3" title="Nuevo libro"> <i data-feather="plus"></i></h4>
            </a> -->
                    </div>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="libros.php">Incio</a></li>
                        <!-- <li class="breadcrumb-item"><a href="javascript: void(0)">Other</a></li> -->
                        <li class="breadcrumb-item" aria-current="page">Nuevo libro</li>
                    </ul>
                </div>
            </div>
            <!-- [ breadcrumb ] end -->


            <!-- [ Main Content ] start -->

            <div class="grid grid-cols-12 gap-x-6">
                <!-- [ sample-page ] start -->
                <div class="col-span-12">
                    <div class="card">
                        <div class="card-header">
                            <h3>Formulario de libros</h3>
                        </div>
                        <div class="card-body">

                            <?php
                            $id_libro = $_GET['id_libro'];
                            $sql = $conexion->query("SELECT * FROM libros WHERE id_libro = $id_libro");
                            $row = $sql->fetch_assoc();
                            ?>

                            <form action="insert_libros_edit.php" method="POST">
                                <div class="form-group">
                                    <label for="titulo">Título</label>
                                    <input type="text" name="titulo" id="titulo" class="form-control" autofocus
                                        value="<?php echo $row['titulo']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="isbn">ISBN</label>
                                    <input type="text" name="isbn" id="isbn" class="form-control"
                                        value="<?php echo $row['isbn']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="fecha_publicacion">Fecha de publicación</label>
                                    <input type="number" name="fecha_publicacion" id="fecha_publicacion"
                                        class="form-control" value="<?php echo $row['fecha_publicacion']; ?>">
                                </div>

                                <div class="form-group">
                                    <label for="id_escritor">Escritor</label>
                                    <select name="id_escritor" id="id_escritor" class="form-control form-select">
                                        <option disabled>--Selecciona un escritor--</option>

                                        <?php
                                        require_once "config/conexion.php";

                                        $sql = $conexion->query(
                                            "SELECT * FROM escritores ORDER BY nombre_escritor ASC",
                                        );
                                        while ($resultado = $sql->fetch_assoc()) {
                                            echo '<option value="' .
                                                $resultado["id_escritor"] .
                                                '">' .
                                                $resultado["nombre_escritor"] .
                                                " " .
                                                $resultado["apellido"] .
                                                "</option>";
                                        }
                                        ?>

                                    </select>
                                </div>
                                <div class="form-group">

                                    <label for="id_editorial">Editorial</label>

                                    <select name="id_editorial" id="id_editorial" class="form-control form-select">
                                        <option disabled>--Selecciona una editorial--</option>
                                        <?php require_once "config/conexion.php"; ?>
                                        <?php
                                        $sql = $conexion->query(
                                            "SELECT * FROM editorial ORDER BY nombre_editorial ASC",
                                        );
                                        while ($resultado = $sql->fetch_assoc()) {
                                            echo '<option value="' .
                                                $resultado["id_editorial"] .
                                                '">' .
                                                $resultado["nombre_editorial"] .
                                                "</option>";
                                        }
                                        ?>
                                    </select>

                                </div>
                                <div class="form-group">
                                    <label for="existencias">Existencias</label>
                                    <input type="number" name="existencias" id="existencias" class="form-control"
                                        value="<?php echo $row['existencias']; ?>">
                                </div>
                                <div class="form-group">
                                    <label for="existencias">Precio</label>
                                    <input type="number" name="precio" id="precio" class="form-control"
                                        value="<?php echo $row['precio']; ?>">
                                </div>
                                <button type="submit" class="btn btn-primary mt-3">Guardar</button>
                                <a href="index.php" class="btn btn-secondary mt-3">Cancelar</a>
                            </form>

                        </div>
                    </div>

                </div>
                <!-- [ sample-page ] end -->
            </div>
            <!-- [ Main Content ] end -->
        </div>
    </div>
    <!-- [ Main Content ] end -->

    <footer class="pc-footer">
        <div class="footer-wrapper container-fluid mx-10">
            <div class="grid grid-cols-12 gap-1.5">
                <div class="col-span-12 sm:col-span-6 my-1">
                    <p class="m-0"></p>
                    <a href="https://codedthemes.com/"
                        class="text-theme-bodycolor dark:text-themedark-bodycolor hover:text-primary-500 dark:hover:text-primary-500"
                        target="_blank">CodedThemes</a>
                    , Built with ♥ for a smoother web presence.
                    </p>
                </div>
                <div class="col-span-12 sm:col-span-6 my-1 justify-self-end">
                    <p class="inline-block max-sm:mr-3 sm:ml-2">Distributed by <a href="https://themewagon.com"
                            target="_blank">Themewagon</a></p>
                </div>
            </div>
        </div>
    </footer>

    <!-- Required Js -->
    <?php require_once "include/footer.php"; ?>

    <div class="floting-button fixed bottom-[50px] right-[30px] z-[1030]">
    </div>


    <script>
        layout_change('false');
    </script>


    <script>
        layout_theme_sidebar_change('dark');
    </script>


    <script>
        change_box_container('false');
    </script>

    <script>
        layout_caption_change('true');
    </script>

    <script>
        layout_rtl_change('false');
    </script>

    <script>
        preset_change('preset-1');
    </script>

    <script>
        main_layout_change('vertical');
    </script>

    <script>
        /*function datoGuardado() {
          Swal.fire({
            position: "top-end",
            icon: "success",
            title: "Your work has been saved",
            showConfirmButton: false,
            timer: 1500
          });
        }*/
    </script>


</body>
<!-- [Body] end -->

</html>