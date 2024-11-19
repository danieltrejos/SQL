-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2024 a las 01:52:59
-- Versión del servidor: 8.0.40
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `nombreCompleto` varchar(100) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `fecha_contratacion` date DEFAULT (curdate()),
  `puesto` varchar(50) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombreCompleto`, `fechaNacimiento`, `fecha_contratacion`, `puesto`, `salario`, `email`) VALUES
(1, 'Carlos Pérez', '1990-03-25', '2024-11-18', 'Gerente de Ventas', 4500.00, 'carlos.perez@empresa.com'),
(2, 'Laura Gómez', '1985-07-15', '2024-11-18', 'Analista Financiero', 3800.00, 'laura.gomez@empresa.com'),
(3, 'Miguel Torres', '1992-11-20', '2024-11-18', 'Desarrollador de Software', 4000.00, 'miguel.torres@empresa.com'),
(4, 'Ana Ramírez', '1995-05-10', '2024-11-18', 'Especialista en Marketing', 3500.00, 'ana.ramirez@empresa.com'),
(5, 'David Ortiz', '1988-01-30', '2024-11-18', 'Administrador de Redes', 3700.00, 'david.ortiz@empresa.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
