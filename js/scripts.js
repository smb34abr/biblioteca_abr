//new DataTable('#example');

let table = new DataTable("#example", {
  language: {
    url: "https://cdn.datatables.net/plug-ins/2.3.5/i18n/es-MX.json",
  },
});

function saveBook() {
  Swal.fire({
    title: "Libro guardo con exito",
    icon: "success",
    draggable: true,
  });
}
