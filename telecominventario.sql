-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2023 a las 15:04:38
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `telecominventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `MovimientoID` int(11) NOT NULL,
  `TipoMovimiento` varchar(10) NOT NULL,
  `ProductoID` int(11) NOT NULL,
  `NombreProducto` varchar(255) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Motivo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`MovimientoID`, `TipoMovimiento`, `ProductoID`, `NombreProducto`, `Fecha`, `Hora`, `Cantidad`, `Motivo`) VALUES
(1, 'entrada', 125, '', '2023-12-13', '311:00:00', 1, 'provar'),
(2, 'entrada', 123, '', '2023-12-13', '333:00:00', 1, 'prueba 2'),
(3, 'entrada', 123, '', '2023-12-13', '630:00:00', 3, 'aaaaa'),
(4, 'entrada', 123, '', '2023-12-13', '322:00:00', 2, 'noooooo'),
(5, 'entrada', 123, '', '2023-12-13', '311:00:00', 2, 'jajajjajajaja'),
(6, 'salida', 123, '', '2023-12-14', '333:00:00', 2, 'talvez'),
(7, 'entrada', 123, '', '2023-12-14', '575:00:00', 2, 'lolaaaa'),
(8, 'entrada', 123, '', '2023-12-14', '575:00:00', 2, 'lolaaaa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ProductoID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `StockActual` int(11) NOT NULL,
  `StockMinimo` int(11) NOT NULL,
  `ProveedorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ProductoID`, `Nombre`, `Precio`, `StockActual`, `StockMinimo`, `ProveedorID`) VALUES
(123, 'Destornillador', 7000.00, 32, 10, NULL),
(124, 'Martillo', 8000.00, 23, 8, NULL),
(125, 'Llave Inglesa', 6500.00, 4, 7, NULL),
(126, 'Taladro', 12000.00, 2, 5, NULL),
(127, 'Cinta Métrica', 2500.00, 8, 10, NULL),
(128, 'Destornillador', 7000.00, 7, 6, NULL),
(153, 'Destornillador Phillips', 7500.00, 3, 6, NULL),
(154, 'Sierra Circular', 12000.00, 2, 5, NULL),
(155, 'Pinzas', 5000.00, 6, 8, NULL),
(156, 'Nivel', 3000.00, 4, 6, NULL),
(157, 'Cautín', 4500.00, 5, 7, NULL),
(178, 'Destornillador de Precisión', 6000.00, 3, 5, NULL),
(179, 'Alicate', 5500.00, 7, 9, NULL),
(180, 'Lámpara de Trabajo', 9000.00, 2, 4, NULL),
(181, 'Tijeras', 3000.00, 6, 8, NULL),
(182, 'Cautín Inalámbrico', 6000.00, 4, 6, NULL),
(183, 'Destornillador de Estrella', 7500.00, 3, 6, NULL),
(184, 'Llave de Tubo', 6800.00, 4, 7, NULL),
(185, 'Caja de Herramientas Completa', 15000.00, 2, 4, NULL),
(186, 'Nivel Láser', 11000.00, 1, 3, NULL),
(187, 'Destornillador de Punta Plana', 7200.00, 3, 5, NULL),
(188, 'Lijadora Eléctrica', 9500.00, 2, 4, NULL),
(189, 'Alicate de Corte', 5000.00, 5, 8, NULL),
(190, 'Cautín de Precisión', 5500.00, 4, 7, NULL),
(191, 'Cinta Aislante', 1200.00, 10, 15, NULL),
(192, 'Brocas Varias', 3000.00, 8, 10, NULL),
(193, 'metronomo', 12000.00, 1, 15, NULL),
(194, 'nose', 12000.00, 1, 2, NULL),
(195, 'chasos', 5000.00, 1, 20, NULL),
(196, 'pinzas', 12000.00, 1, 12, NULL),
(197, 'poncha cable', 13000.00, 1, 10, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ProveedorID` int(11) NOT NULL,
  `NombreProveedor` varchar(255) NOT NULL,
  `telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`ProveedorID`, `NombreProveedor`, `telefono`) VALUES
(12, 'juan', '2455678'),
(456, 'telecom solutions', '+1234567890'),
(457, 'connectvista communications', '+1987654321'),
(458, 'globalwave telecom', '+1122334455'),
(459, 'swiftconnect networks', '+1555098765'),
(460, 'techlink telecommunications', '+9876543210'),
(461, 'nexgencom innovations', '+8765432109'),
(462, 'skywave tesystems', '+1123456789'),
(463, 'primeconnect solutions', '+9876543210'),
(464, 'velocity telecom services', '+1122334455'),
(465, 'epiclink communications', '+1555098765'),
(466, 'horizonnet tesystems', '+1234567890'),
(467, 'unifiedcom technologies', '+1987654321'),
(468, 'bluestream connect', '+8765432109'),
(469, 'pinnacletel networks', '+1555098765'),
(470, 'infinitelink telecom', '+1234567890'),
(471, 'emeraldwave solutions', '+1122334455'),
(472, 'futurenet communications', '+9876543210'),
(473, 'radiantreach telecom', '+8765432109'),
(474, 'prolink tesystems', '+1555098765'),
(475, 'optinet innovations', '+1234567890'),
(12345, 'fibarnort', '5564914'),
(109264, 'jose', '2663788'),
(2147483647, 'ldldlldld', '8569576');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `UsuarioID` int(11) NOT NULL,
  `NombreUsuario` varchar(255) NOT NULL,
  `Contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`UsuarioID`, `NombreUsuario`, `Contrasena`) VALUES
(12, 'junior', '12345'),
(1091966874, 'severiche', 'seve1010');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`MovimientoID`),
  ADD KEY `ProductoID` (`ProductoID`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ProductoID`),
  ADD KEY `FK_Productos_Proveedores` (`ProveedorID`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ProveedorID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`UsuarioID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `MovimientoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ProductoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ProveedorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `UsuarioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1091966875;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD CONSTRAINT `movimientos_ibfk_1` FOREIGN KEY (`ProductoID`) REFERENCES `productos` (`ProductoID`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_Productos_Proveedores` FOREIGN KEY (`ProveedorID`) REFERENCES `proveedores` (`ProveedorID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
