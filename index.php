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
                <input type="search" class="form-control !border-0 !shadow-none" placeholder="Search here. . ." />
              </form>
            </div>
          </li>
        </ul>
      </div>
      <!-- [Mobile Media Block end] -->
      <div class="ms-auto">
        <ul class="inline-flex *:min-h-header-height *:inline-flex *:items-center">
          <li class="dropdown pc-h-item">
            <a class="pc-head-link dropdown-toggle me-0" data-pc-toggle="dropdown" href="#" role="button"
              aria-haspopup="false" aria-expanded="false">
              <i data-feather="sun"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-end pc-h-dropdown">
              <a href="#!" class="dropdown-item" onclick="layout_change('dark')">
                <i data-feather="moon"></i>
                <span>Dark</span>
              </a>
              <a href="#!" class="dropdown-item" onclick="layout_change('light')">
                <i data-feather="sun"></i>
                <span>Light</span>
              </a>
              <a href="#!" class="dropdown-item" onclick="layout_change_default()">
                <i data-feather="settings"></i>
                <span>Default</span>
              </a>
            </div>
          </li>
          <li class="dropdown pc-h-item">
            <a class="pc-head-link dropdown-toggle me-0" data-pc-toggle="dropdown" href="#" role="button"
              aria-haspopup="false" aria-expanded="false">
              <i data-feather="settings"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-end pc-h-dropdown">
              <a href="#!" class="dropdown-item">
                <i class="ti ti-user"></i>
                <span>My Account</span>
              </a>
              <a href="#!" class="dropdown-item">
                <i class="ti ti-settings"></i>
                <span>Settings</span>
              </a>
              <a href="#!" class="dropdown-item">
                <i class="ti ti-headset"></i>
                <span>Support</span>
              </a>
              <a href="#!" class="dropdown-item">
                <i class="ti ti-lock"></i>
                <span>Lock Screen</span>
              </a>
              <a href="#!" class="dropdown-item">
                <i class="ti ti-power"></i>
                <span>Logout</span>
              </a>
            </div>
          </li>
          <li class="dropdown pc-h-item">
            <a class="pc-head-link dropdown-toggle me-0" data-pc-toggle="dropdown" href="#" role="button"
              aria-haspopup="false" aria-expanded="false">
              <i data-feather="bell"></i>
              <span class="badge bg-success-500 text-white rounded-full z-10 absolute right-0 top-0">3</span>
            </a>
            <div class="dropdown-menu dropdown-notification dropdown-menu-end pc-h-dropdown p-2">
              <div class="dropdown-header flex items-center justify-between py-4 px-5">
                <h5 class="m-0">Notifications</h5>
                <a href="#!" class="btn btn-link btn-sm">Mark all read</a>
              </div>
              <div class="dropdown-body header-notification-scroll relative py-4 px-5"
                style="max-height: calc(100vh - 215px)">
                <p class="text-span mb-3">Today</p>
                <div class="card mb-2">
                  <div class="card-body">
                    <div class="flex gap-4">
                      <div class="shrink-0">
                        <img class="img-radius w-12 h-12 rounded-0" src="../assets/images/user/avatar-1.jpg"
                          alt="Generic placeholder image" />
                      </div>
                      <div class="grow">
                        <span class="float-end text-sm text-muted">2 min ago</span>
                        <h5 class="text-body mb-2">UI/UX Design</h5>
                        <p class="mb-0">
                          Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown
                          printer took a galley of
                          type and scrambled it to make a type
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card mb-2">
                  <div class="card-body">
                    <div class="flex gap-4">
                      <div class="shrink-0">
                        <img class="img-radius w-12 h-12 rounded-0" src="../assets/images/user/avatar-2.jpg"
                          alt="Generic placeholder image" />
                      </div>
                      <div class="grow">
                        <span class="float-end text-sm text-muted">1 hour ago</span>
                        <h5 class="text-body mb-2">Message</h5>
                        <p class="mb-0">Lorem Ipsum has been the industry's standard dummy text ever since the 1500.</p>
                      </div>
                    </div>
                  </div>
                </div>
                <p class="text-span mb-3 mt-4">Yesterday</p>
                <div class="card mb-2">
                  <div class="card-body">
                    <div class="flex gap-4">
                      <div class="shrink-0">
                        <img class="img-radius w-12 h-12 rounded-0" src="../assets/images/user/avatar-3.jpg"
                          alt="Generic placeholder image" />
                      </div>
                      <div class="grow ms-3">
                        <span class="float-end text-sm text-muted">2 hour ago</span>
                        <h5 class="text-body mb-2">Forms</h5>
                        <p class="mb-0">
                          Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown
                          printer took a galley of
                          type and scrambled it to make a type
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card mb-2">
                  <div class="card-body">
                    <div class="flex gap-4">
                      <div class="shrink-0">
                        <img class="img-radius w-12 h-12 rounded-0" src="../assets/images/user/avatar-4.jpg"
                          alt="Generic placeholder image" />
                      </div>
                      <div class="grow ms-3">
                        <span class="float-end text-sm text-muted">12 hour ago</span>
                        <h5 class="text-body mb-2">Challenge invitation</h5>
                        <p class="mb-2">
                          <strong>Jonny aber</strong>
                          invites to join the challenge
                        </p>
                        <button class="btn btn-sm btn-outline-secondary me-2">Decline</button>
                        <button class="btn btn-sm btn-primary">Accept</button>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card mb-2">
                  <div class="card-body">
                    <div class="flex gap-4">
                      <div class="shrink-0">
                        <img class="img-radius w-12 h-12 rounded-0" src="../assets/images/user/avatar-5.jpg"
                          alt="Generic placeholder image" />
                      </div>
                      <div class="grow ms-3">
                        <span class="float-end text-sm text-muted">5 hour ago</span>
                        <h5 class="text-body mb-2">Security</h5>
                        <p class="mb-0">
                          Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown
                          printer took a galley of
                          type and scrambled it to make a type
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="text-center py-2">
                <a href="#!" class="text-danger-500 hover:text-danger-600 focus:text-danger-600 active:text-danger-600">
                  Clear all Notifications
                </a>
              </div>
            </div>
          </li>
          <li class="dropdown pc-h-item header-user-profile">
            <a class="pc-head-link dropdown-toggle arrow-none me-0" data-pc-toggle="dropdown" href="#" role="button"
              aria-haspopup="false" data-pc-auto-close="outside" aria-expanded="false">
              <i data-feather="user"></i>
            </a>
            <div class="dropdown-menu dropdown-user-profile dropdown-menu-end pc-h-dropdown p-2 overflow-hidden">
              <div class="dropdown-header flex items-center justify-between py-4 px-5 bg-primary-500">
                <div class="flex mb-1 items-center">
                  <div class="shrink-0">
                    <img src="../assets/images/user/avatar-2.jpg" alt="user-image" class="w-10 rounded-full" />
                  </div>
                  <div class="grow ms-3">
                    <h6 class="mb-1 text-white">Carson Darrin 🖖</h6>
                    <span class="text-white">carson.darrin@company.io</span>
                  </div>
                </div>
              </div>
              <div class="dropdown-body py-4 px-5">
                <div class="profile-notification-scroll position-relative" style="max-height: calc(100vh - 225px)">
                  <a href="#" class="dropdown-item">
                    <span>
                      <svg class="pc-icon text-muted me-2 inline-block">
                        <use xlink:href="#custom-setting-outline"></use>
                      </svg>
                      <span>Settings</span>
                    </span>
                  </a>
                  <a href="#" class="dropdown-item">
                    <span>
                      <svg class="pc-icon text-muted me-2 inline-block">
                        <use xlink:href="#custom-share-bold"></use>
                      </svg>
                      <span>Share</span>
                    </span>
                  </a>
                  <a href="#" class="dropdown-item">
                    <span>
                      <svg class="pc-icon text-muted me-2 inline-block">
                        <use xlink:href="#custom-lock-outline"></use>
                      </svg>
                      <span>Change Password</span>
                    </span>
                  </a>
                  <div class="grid my-3">
                    <button class="btn btn-primary flex items-center justify-center">
                      <svg class="pc-icon me-2 w-[22px] h-[22px]">
                        <use xlink:href="#custom-logout-1-outline"></use>
                      </svg>
                      Logout
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </ul>
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
            <h5 class="mb-0 font-medium">Dashboard</h5>
          </div>
          <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.php">Incio</a></li>
            <!-- <li class="breadcrumb-item"><a href="javascript: void(0)">Dashboard</a></li> -->
            <li class="breadcrumb-item" aria-current="page">Dashboard</li>
          </ul>
        </div>
      </div>
      <!-- [ breadcrumb ] end -->

      <!-- [ Main Content ] start -->
      <div class="grid grid-cols-12 gap-x-6">
        <div class="col-span-12 xl:col-span-4 md:col-span-6">
          <div class="card">
            <div class="card-header !pb-0 !border-b-0">
              <h4>Costo de libros</h4>
            </div>
            <div class="card-body">
              <div class="flex items-center justify-between gap-3 flex-wrap">
                <h3 class="font-light flex items-center mb-0">
                  <!-- <i class="feather icon-arrow-up text-success-500 text-[30px] mr-1.5"></i> -->
                  $
                  <?php $sql = $conexion->query("SELECT SUM(precio) FROM libros"); $resultado = $sql->fetch_assoc(); echo number_format($resultado['SUM(precio)']). '.00'; ?>
                </h3>
                <!-- <p class="mb-0">67%</p> -->
              </div>
              <div class="w-full bg-theme-bodybg rounded-lg h-1.5 mt-6 dark:bg-themedark-bodybg">
                <div class="bg-theme-bg-1 h-full rounded-lg shadow-[0_10px_20px_0_rgba(0,0,0,0.3)]" role="progressbar"
                  style="width: 75%"></div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-span-12 xl:col-span-4 md:col-span-6">
          <div class="card">
            <div class="card-header !pb-0 !border-b-0">
              <h4>Existencias de libros</h4>
            </div>
            <div class="card-body">
              <div class="flex items-center justify-between gap-3 flex-wrap">
                <h3 class="font-light flex items-center mb-0">
                  <!-- <i class="feather icon-arrow-down text-danger-500 text-[30px] mr-1.5"></i> -->
                  <?php $sql = $conexion->query("SELECT SUM(existencias) FROM libros"); $resultado = $sql->fetch_assoc(); echo $resultado['SUM(existencias)']; ?>
                </h3>
                <!-- <p class="mb-0">36%</p> -->
              </div>
              <div class="w-full bg-theme-bodybg rounded-lg h-1.5 mt-6 dark:bg-themedark-bodybg">
                <div class="bg-theme-bg-2 h-full rounded-lg shadow-[0_10px_20px_0_rgba(0,0,0,0.3)]" role="progressbar"
                  style="width: 35%"></div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-span-12 xl:col-span-4">
          <div class="card">
            <div class="card-header !pb-0 !border-b-0">
              <h4>Escritores</h4>
            </div>
            <div class="card-body">
              <div class="flex items-center justify-between gap-3 flex-wrap">
                <h3 class="font-light flex items-center mb-0">
                  <!-- <i class="feather icon-arrow-up text-success-500 text-[30px] mr-1.5"></i> -->
                  <?php $sql = $conexion->query("SELECT SUM(estado) FROM escritores"); $resultado = $sql->fetch_assoc(); echo $resultado['SUM(estado)']; ?>
                </h3>
                <!-- <p class="mb-0">80%</p> -->
              </div>
              <div class="w-full bg-theme-bodybg rounded-lg h-1.5 mt-6 dark:bg-themedark-bodybg">
                <div class="bg-theme-bg-1 h-full rounded-lg shadow-[0_10px_20px_0_rgba(0,0,0,0.3)]" role="progressbar"
                  style="width: 80%"></div>
              </div>
            </div>
          </div>
        </div>
       
          <div class="col-span-12 xl:col-span-12 md:col-span-12">
          <div class="card table-card">
            <div class="card-header">
              <h4>Cumpleaños del mes de:  
                <?php 
                  $fecha = new DateTime();
                  $formateador = new IntlDateFormatter('es_ES', IntlDateFormatter::NONE, IntlDateFormatter::NONE, null, null, 'MMMM');
                  echo ucfirst($formateador->format($fecha));
                ?>
              </h4>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-hover">
                  <tbody>
                    <tr>
                      <td>

                      </td>
                    </tr>

                    <tr class="unread">
                      <td>
                        <img class="rounded-full max-w-10" style="width: 40px" src="assets/images/user/avatar-1.jpg"
                          alt="activity-user" />
                      </td>
                      <td>
                        <h6 class="mb-1">Isabella Christensen</h6>
                        <p class="m-0">Lorem Ipsum is simply dummy text of…</p>
                      </td>
                      <td>
                        <h6 class="text-muted">
                          <i class="fas fa-circle text-success text-[10px] ltr:mr-4 rtl:ml-4"></i>
                          11 MAY 12:56
                        </h6>
                      </td>
                      <td>
                        <a href="#!" class="badge bg-theme-bg-2 text-white text-[12px] mx-2">Reject</a>
                        <a href="#!" class="badge bg-theme-bg-1 text-white text-[12px]">Approve</a>
                      </td>
                    </tr>

                    <tr class="unread">
                      <td>
                        <img class="rounded-full max-w-10" style="width: 40px" src="assets/images/user/avatar-2.jpg"
                          alt="activity-user" />
                      </td>
                      <td>
                        <h6 class="mb-1">Mathilde Andersen</h6>
                        <p class="m-0">Lorem Ipsum is simply dummy text of…</p>
                      </td>
                      <td>
                        <h6 class="text-muted">
                          <i class="fas fa-circle text-danger text-[10px] ltr:mr-4 rtl:ml-4"></i>
                          11 MAY 10:35
                        </h6>
                      </td>
                      <td>
                        <a href="#!" class="badge bg-theme-bg-2 text-white text-[12px] mx-2">Reject</a>
                        <a href="#!" class="badge bg-theme-bg-1 text-white text-[12px]">Approve</a>
                      </td>
                    </tr>

                    <tr class="unread">
                      <td>
                        <img class="rounded-full max-w-10" style="width: 40px" src="assets/images/user/avatar-3.jpg"
                          alt="activity-user" />
                      </td>
                      <td>
                        <h6 class="mb-1">Karla Sorensen</h6>
                        <p class="m-0">Lorem Ipsum is simply dummy text of…</p>
                      </td>
                      <td>
                        <h6 class="text-muted">
                          <i class="fas fa-circle text-success text-[10px] ltr:mr-4 rtl:ml-4"></i>
                          9 MAY 17:38
                        </h6>
                      </td>
                      <td>
                        <a href="#!" class="badge bg-theme-bg-2 text-white text-[12px] mx-2">Reject</a>
                        <a href="#!" class="badge bg-theme-bg-1 text-white text-[12px]">Approve</a>
                      </td>
                    </tr>

                    <tr class="unread">
                      <td>
                        <img class="rounded-full max-w-10" style="width: 40px" src="assets/images/user/avatar-1.jpg"
                          alt="activity-user" />
                      </td>
                      <td>
                        <h6 class="mb-1">Ida Jorgensen</h6>
                        <p class="m-0">Lorem Ipsum is simply dummy text of…</p>
                      </td>
                      <td>
                        <h6 class="text-muted f-w-300">
                          <i class="fas fa-circle text-danger text-[10px] ltr:mr-4 rtl:ml-4"></i>
                          19 MAY 12:56
                        </h6>
                      </td>
                      <td>
                        <a href="#!" class="badge bg-theme-bg-2 text-white text-[12px] mx-2">Reject</a>
                        <a href="#!" class="badge bg-theme-bg-1 text-white text-[12px]">Approve</a>
                      </td>
                    </tr>

                    <tr class="unread">
                      <td>
                        <img class="rounded-full max-w-10" style="width: 40px" src="assets/images/user/avatar-2.jpg"
                          alt="activity-user" />
                      </td>
                      <td>
                        <h6 class="mb-1">Albert Andersen</h6>
                        <p class="m-0">Lorem Ipsum is simply dummy text of…</p>
                      </td>
                      <td>
                        <h6 class="text-muted">
                          <i class="fas fa-circle text-success text-[10px] ltr:mr-4 rtl:ml-4"></i>
                          21 July 12:56
                        </h6>
                      </td>
                      <td>
                        <a href="#!" class="badge bg-theme-bg-2 text-white text-[12px] mx-2">Reject</a>
                        <a href="#!" class="badge bg-theme-bg-1 text-white text-[12px]">Approve</a>
                      </td>
                    </tr>

                  </tbody>
                </table>
              </div>
            </div>
          </div>
       
        </div>

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


<!-- INSERT INTO `prestamos` (`id_prestamo`, `id_libro`, `id_usuario`, `fecha_prestamo`, `fecha_devolucion_prevista`, `fecha_devolucion_real`) VALUES (NULL, '3', '1', '2025-12-31', '2026-01-08', NULL); -->

</body>
<!-- [Body] end -->

</html>