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

INSERT INTO proveedores(nombreEmpresa,nombreCompleto,telefono,direccion,pais)
VALUES
('Tech Supplies Ltd.', 'Carlos López', '+57 312 456 7890', 'Carrera 45 #32-15, Bogotá', 'Colombia'),
('Global Trade Corp.', 'Ana Martínez', '+1 305 555 1234', '123 Main Street, Miami', 'Estados Unidos'),
('Innova Distribuciones', 'Pedro Ramírez', '+52 55 9876 5432', 'Av. Reforma 123, Ciudad de México', 'México'),
('EuroTech GmbH', 'Laura Schmidt', '+49 30 12345678', 'Friedrichstr. 12, Berlín', 'Alemania'),
('AsiaSupply Co.', 'Kenji Tanaka', '+81 3 1234 5678', '1-1-1 Shibuya, Tokio', 'Japón');