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
