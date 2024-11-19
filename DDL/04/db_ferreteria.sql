CREATE DATABASE IF NOT EXISTS db_ferreteria;
USE db_ferreteria;

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    direccion VARCHAR(100) NULL,
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO clientes (nombreCompleto,telefono,email,direccion)
VALUES 
('Juan Pérez', '+57 310 456 7890', 'juan.perez@gmail.com', 'Calle 10 #45-12, Medellín'),
('María González', NULL, 'maria.gonzalez@hotmail.com', 'Carrera 12 #34-56, Cali'),
('Carlos López', '+57 312 123 4567', 'carlos.lopez@yahoo.com', NULL),
('Ana Ramírez', '+1 305 987 6543', 'ana.ramirez@outlook.com', '123 Main Street, Miami'),
('Laura Gómez', '+52 55 7654 3210', 'laura.gomez@example.com', 'Av. Reforma 123, Ciudad de México');