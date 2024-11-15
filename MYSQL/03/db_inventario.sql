CREATE DATABASE db_inventario;
USE db_inventario;

CREATE TABLE proveedores (
    idProveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombreEmpresa VARCHAR(100) NOT NULL,
    nombreCompleto VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    pais VARCHAR(50) NOT NULL
);
