-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2024 a las 01:51:27
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
-- Base de datos: `db_empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `idInventario` int NOT NULL,
  `codigoProducto` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text,
  `fechaFabricacion` date DEFAULT NULL,
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cantidadProducto` int DEFAULT '0',
  `precioCompra` decimal(10,2) NOT NULL,
  `precioVenta` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`idInventario`, `codigoProducto`, `nombre`, `descripcion`, `fechaFabricacion`, `fechaRegistro`, `cantidadProducto`, `precioCompra`, `precioVenta`) VALUES
(1, 'PROD001', 'Laptop HP', 'Laptop HP con Procesador Intel i7, 16GB RAM', '2024-01-10', '2024-11-19 00:43:40', 20, 800.00, 1320.00),
(2, 'PROD002', 'Smartphone Samsung', 'Smartphone Samsung Galaxy S23 Ultra con 256GB de almacenamiento', '2024-02-15', '2024-11-19 00:43:40', 25, 900.00, 1320.00),
(3, 'PROD003', 'Monitor Dell', 'Monitor Dell UltraSharp de 27 pulgadas con resolución 4K', '2023-11-20', '2024-11-19 00:43:40', 15, 300.00, 495.00),
(4, 'PROD004', 'Teclado Mecánico', 'Teclado mecánico RGB con switches Cherry MX Red', '2024-03-05', '2024-11-19 00:43:40', 50, 70.00, 132.00),
(5, 'PROD005', 'Mouse Logitech', 'Mouse inalámbrico Logitech MX Master 3', '2024-04-01', '2024-11-19 00:43:40', 30, 90.00, 165.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`idInventario`),
  ADD UNIQUE KEY `codigoProducto` (`codigoProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `idInventario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
