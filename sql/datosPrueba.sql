
INSERT INTO clientes (nombre, correo, ciudad) VALUES
('Ana Lopez', 'ana@ejemplo.com', 'Queretaro'),
('Carlos Ruiz', 'carlos@ejemplo.com', 'Morelia'),
('Maria Torres', 'maria@ejemplo.com', 'Queretaro'),
('Luis Perez', 'luis@ejemplo.com', 'Ciudad Hidalgo');

INSERT INTO productos (nombre, precio, stock) VALUES
('Mouse', 350.00, 20),
('Teclado', 650.00, 15),
('Cable USB', 120.00, 50),
('Monitor', 3500.00, 8);
('cargador', 500.00, 4);

INSERT INTO ventas (cliente_id, producto_id, cantidad) VALUES
(1, 1, 2),
(1, 4, 1),
(2, 3, 5),
(3, 5, 1);
