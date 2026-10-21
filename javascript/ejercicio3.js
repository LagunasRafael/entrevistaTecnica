function calcularTotal(carrito) {
    const subtotal = carrito.reduce((acumulado, producto) => {
        return acumulado + producto.precio * producto.cantidad;
    }, 0);

    const descuento = subtotal > 1000 ? subtotal * 0.10 : 0;
    const total = subtotal - descuento;

    return {
        subtotal,
        descuento,
        total
    };
}

const carrito = [
    { precio: 400, cantidad: 2 },
    { precio: 150, cantidad: 3 }
];

console.log(calcularTotal(carrito));