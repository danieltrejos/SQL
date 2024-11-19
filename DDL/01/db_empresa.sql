CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE inventarios (
    idInventario INT PRIMARY KEY AUTO_INCREMENT,
    codigoProducto VARCHAR(50) NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    fechaFabricacion DATE,
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cantidadProducto INT DEFAULT 0,
    precioCompra DECIMAL(10, 2) NOT NULL,
    precioVenta DECIMAL(10, 2) NOT NULL
);

INSERT INTO inventarios (codigoProducto,nombre,descripcion,fechaFabricacion,cantidadProducto,precioCompra,precioVenta)
VALUES 
('PROD001','Laptop HP','Laptop HP con Procesador Intel i7, 16GB RAM','2024-01-10',10,800.00,1200.00),
('PROD002', 'Smartphone Samsung', 'Smartphone Samsung Galaxy S23 Ultra con 256GB de almacenamiento', '2024-02-15', 25, 900.00, 1200.00),
('PROD003', 'Monitor Dell', 'Monitor Dell UltraSharp de 27 pulgadas con resolución 4K', '2023-11-20', 15, 300.00, 450.00),
('PROD004', 'Teclado Mecánico', 'Teclado mecánico RGB con switches Cherry MX Red', '2024-03-05', 50, 70.00, 120.00),
('PROD005', 'Mouse Logitech', 'Mouse inalámbrico Logitech MX Master 3', '2024-04-01', 30, 90.00, 150.00);

UPDATE inventarios
SET cantidadProducto = cantidadProducto + 10
WHERE codigoProducto = 'PROD001';

UPDATE inventarios
SET precioVenta = precioVenta *1.10;

DELETE