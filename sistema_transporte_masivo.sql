-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2026 a las 23:32:20
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_transporte_masivo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `id_conductor` int(11) NOT NULL,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(80) NOT NULL,
  `numero_documento` varchar(20) NOT NULL,
  `tipo_documento` varchar(10) DEFAULT 'CC',
  `telefono` varchar(20) NOT NULL,
  `numero_licencia` varchar(20) NOT NULL,
  `categoria_licencia` varchar(5) NOT NULL,
  `estado` varchar(30) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`id_conductor`, `nombres`, `apellidos`, `numero_documento`, `tipo_documento`, `telefono`, `numero_licencia`, `categoria_licencia`, `estado`) VALUES
(1, 'Carlos Alberto', 'Ramírez Patiño', '1001234567', 'CC', '3101234567', '12345678', 'C2', 'Activo'),
(2, 'Andres Felipe', 'Gómez León', '1002345678', 'CC', '3112345678', '23456789', 'C3', 'Activo'),
(3, 'Juan David', 'Pérez Castro', '1003456789', 'CC', '3123456789', '34567890', 'C2', 'Activo'),
(4, 'Daniel Alejandro', 'Torres Ruiz', '1004567890', 'CC', '3134567890', '45678901', 'C3', 'Activo'),
(5, 'Miguel Ángel', 'Rodríguez Sáenz', '1005678901', 'CC', '3145678901', '56789012', 'C2', 'Activo'),
(6, 'Pedro Antonio', 'Martínez Rojas', '1006789012', 'CC', '3156789012', '67890123', 'C3', 'Activo'),
(7, 'Luis Eduardo', 'Herrera Gómez', '1007890123', 'CC', '3167890123', '78901234', 'C2', 'Activo'),
(8, 'Jorge Armando', 'Castro Méndez', '1008901234', 'CC', '3178901234', '89012345', 'C3', 'Activo'),
(9, 'Andres Camilo', 'Molina Vargas', '1009012345', 'CC', '3189012345', '90123456', 'C2', 'Inactivo'),
(10, 'Felipe Andrés', 'Vargas Rincón', '1010123456', 'CC', '3190123456', '01234567', 'C3', 'Activo'),
(11, 'Santiago José', 'López Torres', '1011134567', 'CC', '3201234567', '11223344', 'C2', 'Activo'),
(12, 'Ricardo Manuel', 'Fernández Silva', '1012245678', 'CC', '3212345678', '22334455', 'C3', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estaciones`
--

CREATE TABLE `estaciones` (
  `id_estacion` int(11) NOT NULL,
  `nombre_estacion` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `localidad` varchar(80) NOT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estaciones`
--

INSERT INTO `estaciones` (`id_estacion`, `nombre_estacion`, `direccion`, `localidad`, `codigo_postal`) VALUES
(1, 'Terreros', 'Autopista Sur Km 12', 'Soacha', '250001'),
(2, 'Portal Sur', 'Autopista Sur # 45-100', 'Bogotá', '110511'),
(3, 'General Santander', 'Autopista Sur con Calle 3', 'Bogotá', '110511'),
(4, 'Ricaurte', 'Calle 13 con Avenida Caracas', 'Bogotá', '110521'),
(5, 'Calle 45', 'Avenida Caracas con Calle 45', 'Bogotá', '110221'),
(6, 'Portal Norte', 'Autopista Norte con Calle 170', 'Bogotá', '111111'),
(7, 'Héroes', 'Avenida Caracas con Calle 80', 'Bogotá', '110821'),
(8, 'Las Aguas', 'Calle 13 con Carrera 3', 'Bogotá', '110311'),
(9, 'Portal 80', 'Calle 80 con Avenida 68', 'Bogotá', '110831'),
(10, 'Universidades', 'Calle 26 con Carrera 3', 'Bogotá', '110321'),
(11, 'Marly', 'Avenida Caracas con Calle 51', 'Bogotá', '110231'),
(12, 'Calatrava', 'Autopista Sur, Calle 13', 'Bogotá', '110511');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` int(11) NOT NULL,
  `id_pasajero` int(11) NOT NULL,
  `valor_pago` decimal(10,2) NOT NULL,
  `fecha_pago` date NOT NULL,
  `metodo_pago` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_pago`, `id_pasajero`, `valor_pago`, `fecha_pago`, `metodo_pago`) VALUES
(1, 1, 3200.00, '2026-11-20', 'Tarjeta Inteligente'),
(2, 2, 3200.00, '2026-11-20', 'Tarjeta Inteligente'),
(3, 3, 3200.00, '2026-11-20', 'Tarjeta Inteligente'),
(4, 4, 3200.00, '2026-11-20', 'Efectivo'),
(5, 5, 3200.00, '2026-11-20', 'Tarjeta Inteligente'),
(6, 6, 3200.00, '2026-11-20', 'Tarjeta Inteligente'),
(7, 7, 3200.00, '2026-11-20', 'Efectivo'),
(8, 8, 3200.00, '2026-11-20', 'Tarjeta Inteligente'),
(9, 9, 3200.00, '2026-11-20', 'Tarjeta Inteligente'),
(10, 10, 3200.00, '2026-11-20', 'Efectivo'),
(11, 11, 3200.00, '2026-11-21', 'Tarjeta Inteligente'),
(12, 12, 3200.00, '2026-11-21', 'Tarjeta Inteligente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajeros`
--

CREATE TABLE `pasajeros` (
  `id_pasajero` int(11) NOT NULL,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(80) NOT NULL,
  `numero_documento` varchar(20) NOT NULL,
  `numero_tarjeta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pasajeros`
--

INSERT INTO `pasajeros` (`id_pasajero`, `nombres`, `apellidos`, `numero_documento`, `numero_tarjeta`) VALUES
(1, 'Pedro', 'López García', '1010101010', 'TM001'),
(2, 'María', 'Castro Duarte', '1020202020', 'TM002'),
(3, 'Laura', 'Martínez Bernal', '1030303030', 'TM003'),
(4, 'David', 'Sánchez Ospina', '1040404040', 'TM004'),
(5, 'Sofía', 'Herrera Londoño', '1050505050', 'TM005'),
(6, 'Camilo', 'Rojas Prieto', '1060606060', 'TM006'),
(7, 'Daniela', 'Moreno Pineda', '1070707070', 'TM007'),
(8, 'Sebastián', 'Díaz Morales', '1080808080', 'TM008'),
(9, 'Valentina', 'Ruiz Cárdenas', '1090909090', 'TM009'),
(10, 'Nicolás', 'Romero Salinas', '1101010101', 'TM010'),
(11, 'Andrea', 'Vargas Espitia', '1112121212', 'TM011'),
(12, 'Julián', 'Gómez Tovar', '1123232323', 'TM012');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id_ruta` int(11) NOT NULL,
  `codigo_ruta` varchar(10) NOT NULL,
  `nombre_ruta` varchar(100) NOT NULL,
  `tipo_ruta` varchar(40) NOT NULL,
  `horario` varchar(100) DEFAULT NULL,
  `id_estacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id_ruta`, `codigo_ruta`, `nombre_ruta`, `tipo_ruta`, `horario`, `id_estacion`) VALUES
(1, 'B44', 'Portal Sur → Terreros', 'Troncal', '04:30 - 23:00', 1),
(2, 'G43', 'Portal Sur → Calle 13', 'Troncal', '04:30 - 23:00', 2),
(3, 'E42', 'General Santander → Centro', 'Troncal', '05:00 - 22:30', 3),
(4, 'H54', 'Ricaurte → Portal Norte', 'Troncal', '04:30 - 23:00', 4),
(5, 'F23', 'Calle 45 → Portal Sur', 'Troncal', '05:00 - 23:00', 5),
(6, 'B16', 'Portal Norte → Centro', 'Troncal', '04:30 - 23:00', 6),
(7, 'C30', 'Héroes → Terreros', 'Troncal', '05:00 - 22:30', 7),
(8, 'J23', 'Las Aguas → Portal 80', 'Troncal', '05:00 - 22:00', 8),
(9, 'D21', 'Portal 80 → Ricaurte', 'Troncal', '04:30 - 23:00', 9),
(10, 'L18', 'Universidades → Portal Sur', 'Troncal', '05:00 - 22:00', 10),
(11, 'Z11', 'Marly → Calatrava', 'Zonal', '05:30 - 21:30', 11),
(12, 'Z15', 'Calatrava → Terreros', 'Zonal', '05:30 - 21:30', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id_vehiculo` int(11) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `tipo_vehiculo` varchar(50) NOT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(30) NOT NULL,
  `capacidad_pasajeros` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `kilometraje` decimal(12,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id_vehiculo`, `placa`, `tipo_vehiculo`, `marca`, `modelo`, `capacidad_pasajeros`, `estado`, `kilometraje`) VALUES
(1, 'ABC-123', 'Bus articulado', 'Volvo', '2022', 160, 'Activo', 45200.50),
(2, 'DEF-456', 'Bus biarticulado', 'Mercedes-Benz', '2023', 250, 'Activo', 28100.00),
(3, 'GHI-789', 'Bus zonal', 'Yutong', '2021', 80, 'Activo', 67500.75),
(4, 'JKL-321', 'Bus articulado', 'Volvo', '2020', 160, 'Mantenimiento', 92000.00),
(5, 'MNO-654', 'Bus biarticulado', 'Mercedes-Benz', '2022', 250, 'Activo', 33400.25),
(6, 'PQR-987', 'Bus zonal', 'Yutong', '2023', 80, 'Activo', 15800.00),
(7, 'STU-654', 'Bus articulado', 'Scania', '2022', 160, 'Activo', 41200.00),
(8, 'VWX-321', 'Bus biarticulado', 'Scania', '2023', 250, 'Activo', 22600.50),
(9, 'YZA-852', 'Bus zonal', 'Yutong', '2020', 80, 'Mantenimiento', 88000.00),
(10, 'BCD-741', 'Bus articulado', 'Volvo', '2023', 160, 'Activo', 12500.00),
(11, 'EFG-963', 'Bus biarticulado', 'Mercedes-Benz', '2021', 250, 'Fuera de servicio', 115000.00),
(12, 'HIJ-852', 'Bus zonal', 'Yutong', '2022', 80, 'Activo', 38900.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE `viajes` (
  `id_viaje` int(11) NOT NULL,
  `fecha_viaje` date NOT NULL,
  `hora_salida` time NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `id_conductor` int(11) NOT NULL,
  `id_ruta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `viajes`
--

INSERT INTO `viajes` (`id_viaje`, `fecha_viaje`, `hora_salida`, `id_vehiculo`, `id_conductor`, `id_ruta`) VALUES
(1, '2026-11-20', '06:00:00', 1, 1, 1),
(2, '2026-11-20', '06:30:00', 2, 2, 2),
(3, '2026-11-20', '07:00:00', 3, 3, 3),
(4, '2026-11-20', '07:30:00', 5, 5, 5),
(5, '2026-11-20', '08:00:00', 6, 6, 6),
(6, '2026-11-20', '08:30:00', 7, 7, 7),
(7, '2026-11-20', '09:00:00', 8, 8, 8),
(8, '2026-11-20', '09:30:00', 10, 10, 10),
(9, '2026-11-21', '06:00:00', 1, 11, 1),
(10, '2026-11-21', '06:30:00', 3, 3, 4),
(11, '2026-11-21', '07:00:00', 12, 12, 11),
(12, '2026-11-21', '07:30:00', 2, 4, 12);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`id_conductor`),
  ADD UNIQUE KEY `uq_documento_conductor` (`numero_documento`),
  ADD UNIQUE KEY `uq_licencia` (`numero_licencia`);

--
-- Indices de la tabla `estaciones`
--
ALTER TABLE `estaciones`
  ADD PRIMARY KEY (`id_estacion`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `fk_pagos_pasajeros` (`id_pasajero`);

--
-- Indices de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  ADD PRIMARY KEY (`id_pasajero`),
  ADD UNIQUE KEY `uq_documento_pasajero` (`numero_documento`),
  ADD UNIQUE KEY `uq_tarjeta` (`numero_tarjeta`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id_ruta`),
  ADD UNIQUE KEY `uq_codigo_ruta` (`codigo_ruta`),
  ADD KEY `fk_rutas_estaciones` (`id_estacion`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD UNIQUE KEY `uq_placa` (`placa`);

--
-- Indices de la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`id_viaje`),
  ADD KEY `fk_viajes_rutas` (`id_ruta`),
  ADD KEY `fk_viajes_vehiculos` (`id_vehiculo`),
  ADD KEY `fk_viajes_conductores` (`id_conductor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conductores`
--
ALTER TABLE `conductores`
  MODIFY `id_conductor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `estaciones`
--
ALTER TABLE `estaciones`
  MODIFY `id_estacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `pasajeros`
--
ALTER TABLE `pasajeros`
  MODIFY `id_pasajero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `viajes`
--
ALTER TABLE `viajes`
  MODIFY `id_viaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `fk_pagos_pasajeros` FOREIGN KEY (`id_pasajero`) REFERENCES `pasajeros` (`id_pasajero`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD CONSTRAINT `fk_rutas_estaciones` FOREIGN KEY (`id_estacion`) REFERENCES `estaciones` (`id_estacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD CONSTRAINT `fk_viajes_conductores` FOREIGN KEY (`id_conductor`) REFERENCES `conductores` (`id_conductor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_viajes_rutas` FOREIGN KEY (`id_ruta`) REFERENCES `rutas` (`id_ruta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_viajes_vehiculos` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id_vehiculo`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
