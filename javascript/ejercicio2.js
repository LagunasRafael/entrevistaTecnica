const productos = [
    { id: 1, nombre: "Mouse", precio: 350, disponible: true },
    { id: 2, nombre: "Teclado", precio: 650, disponible: true },
    { id: 3, nombre: "Cable", precio: 120, disponible: false },
    { id: 4, nombre: "Base", precio: 280, disponible: true }
];

const productosFiltrados = productos
    .filter(producto =>
        producto.disponible && producto.precio < 500
    )
    .sort((a, b) => a.precio - b.precio);

console.log(productosFiltrados);