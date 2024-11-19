-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2024 a las 01:52:45
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
-- Base de datos: `db_inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` int NOT NULL,
  `nombreEmpresa` varchar(100) NOT NULL,
  `nombreCompleto` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `nombreEmpresa`, `nombreCompleto`, `telefono`, `direccion`, `pais`) VALUES
(1, 'Tech Supplies Ltd.', 'Carlos López', '+57 312 456 7890', 'Carrera 45 #32-15, Bogotá', 'Colombia'),
(2, 'Global Trade Corp.', 'Ana Martínez', '+1 305 555 1234', '123 Main Street, Miami', 'Estados Unidos'),
(3, 'Innova Distribuciones', 'Pedro Ramírez', '+52 55 9876 5432', 'Av. Reforma 123, Ciudad de México', 'México'),
(4, 'EuroTech GmbH', 'Laura Schmidt', '+49 30 12345678', 'Friedrichstr. 12, Berlín', 'Alemania'),
(5, 'AsiaSupply Co.', 'Kenji Tanaka', '+81 3 1234 5678', '1-1-1 Shibuya, Tokio', 'Japón');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
