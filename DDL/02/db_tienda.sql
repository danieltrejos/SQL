CREATE DATABASE db_tienda;
USE db_tienda;

CREATE TABLE empleados (
    idEmpleado INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    fechaNacimiento DATE NOT NULL,
    fecha_contratacion DATE DEFAULT (CURRENT_DATE),
    puesto VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    email VARCHAR(100) UNIQUE
);

INSERT INTO empleados (nombreCompleto,fechaNacimiento,puesto,salario,email) 
VALUES 
('Carlos Pérez', '1990-03-25', 'Gerente de Ventas', 4500.00, 'carlos.perez@empresa.com'),
('Laura Gómez', '1985-07-15', 'Analista Financiero', 3800.00, 'laura.gomez@empresa.com'),
('Miguel Torres', '1992-11-20', 'Desarrollador de Software', 4000.00, 'miguel.torres@empresa.com'),
('Ana Ramírez', '1995-05-10', 'Especialista en Marketing', 3500.00, 'ana.ramirez@empresa.com'),
('David Ortiz', '1988-01-30', 'Administrador de Redes', 3700.00, 'david.ortiz@empresa.com');