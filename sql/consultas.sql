-- Ejercicio 1: clientes de Queretaro
SELECT *
FROM clientes
WHERE ciudad = 'Queretaro';

-- Ejercicio 2: los cinco productos mas caros
SELECT nombre, precio
FROM productos
ORDER BY precio DESC
LIMIT 5;

-- Ejercicio 3: insertar un producto
INSERT INTO productos (nombre, precio, stock)
VALUES ('Webcam', 899.00, 12);

-- Ejercicio 4: actualizar su inventario
UPDATE productos
SET stock = 10
WHERE nombre = 'Webcam';

-- Ejercicio 5: ventas con cliente y producto
SELECT
    clientes.nombre AS cliente,
    productos.nombre AS producto,
    ventas.cantidad
FROM ventas
INNER JOIN clientes
    ON ventas.cliente_id = clientes.id
INNER JOIN productos
    ON ventas.producto_id = productos.id;

-- Ejercicio 6: total gastado por cliente
SELECT
    clientes.id,
    clientes.nombre AS cliente,
    COALESCE(SUM(ventas.cantidad * productos.precio), 0)
        AS total_compras
FROM clientes
LEFT JOIN ventas
    ON clientes.id = ventas.cliente_id
LEFT JOIN productos
    ON ventas.producto_id = productos.id
GROUP BY clientes.id, clientes.nombre
ORDER BY total_compras DESC;
