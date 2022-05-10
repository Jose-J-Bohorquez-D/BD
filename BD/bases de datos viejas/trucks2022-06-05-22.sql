-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2022 a las 19:54:20
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trucks2022`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_empresa` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre_cliente` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_lic_emp` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel1` bigint(20) DEFAULT NULL,
  `tel2` bigint(20) DEFAULT NULL,
  `email1` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_cgpe` bigint(20) DEFAULT NULL,
  `ifta_number` bigint(20) DEFAULT NULL,
  `tax_id_number_ein` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='datos de clientes o empresas';

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_empresa`, `nombre_cliente`, `direccion`, `numero_lic_emp`, `tel1`, `tel2`, `email1`, `email2`, `id_cgpe`, `ifta_number`, `tax_id_number_ein`) VALUES
(13, 'Interrpidisimo SAS', 'jose bohorquez', 'bogotá-col', '456', 456, 456, 'i@gmial.com', 'i2@gmail.com', 456, 456, 456),
(14, 'Taxis Verdes', 'Lucia Gomez', 'bogotá-Col', '123', 123, 123, 'tv@gmail.com', 'tv2@gmail.com', 123, 123, 123),
(15, 'Servientrega', 'julio delgado', 'bogotá-Col', '789', 789, 789, 's@gmail.com', 's2@gmail.com', 789, 789, 789),
(16, 'Trans Quintero SAS', 'Aaron gomez', 'bogotá-Col', '987', 987, 987, 'tq@gmail.com', 'tq2@gmail.com', 987, 987, 987),
(17, 'picap', 'pipe picachu', 'bogota-Col', '654', 654, 654, 'p@gmail.com', 'p2@gmail.com', 654, 654, 654),
(18, 'mensajeros urbanos', 'pepito perez', 'bogotá-Col', '321', 321, 321, 'mu@gmail.com', 'mu2@gmail.com', 321, 321, 321);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles_trucks`
--

CREATE TABLE `perfiles_trucks` (
  `id_perfil` int(11) NOT NULL,
  `nombre_perfil` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado_perfil` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `creacion_perfil` timestamp NULL DEFAULT NULL,
  `actualizacion_perfil` timestamp NULL DEFAULT NULL,
  `eliminacion_perfil` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='datos de los perfiles de usuario del sistema trucks';

--
-- Volcado de datos para la tabla `perfiles_trucks`
--

INSERT INTO `perfiles_trucks` (`id_perfil`, `nombre_perfil`, `estado_perfil`, `creacion_perfil`, `actualizacion_perfil`, `eliminacion_perfil`) VALUES
(2, 'Colaborador', 'Inactivo', '2022-02-01 03:15:16', '2022-03-14 23:53:44', '2022-01-31 05:00:00'),
(3, 'Contabilidad', 'Inactivo', '2022-02-01 03:15:32', '2022-03-14 23:53:39', '2022-01-31 05:00:00'),
(4, 'Super Admin', 'Inactivo', '2022-02-01 03:14:37', '2022-03-31 10:21:53', '2022-01-31 05:00:00'),
(12, 'Desarrollador', 'Activo', '2022-03-14 23:53:16', '2022-03-21 21:03:40', NULL),
(13, 'Administrador', 'Inactivo', '2022-03-21 21:03:13', '2022-03-21 21:03:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `nombre_servicio` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor_servicio` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tiempo_servicio` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tiempo_desde` timestamp NULL DEFAULT NULL,
  `tiempo_hasta` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='datos de todos y cada uno de los servicos que ofrece TRUCKS';

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `nombre_servicio`, `valor_servicio`, `tiempo_servicio`, `tiempo_desde`, `tiempo_hasta`) VALUES
(12, 'Transporte Tecnologia', '11,112,115,241.00', '1 mes', NULL, NULL),
(13, 'Transporte Mercaderia ', '1,111,111,111.00', '6 meses', NULL, NULL),
(14, 'Transpote Textiles', '200,000,000,000.00', '3 meses', NULL, NULL),
(15, 'transporte barillas', '50,000', '1 month', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_asignados_vehiculos`
--

CREATE TABLE `servicios_asignados_vehiculos` (
  `id_asignacion` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `fecha_inicio_serv` date NOT NULL,
  `fecha_fin_serv` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='tabla exclusiva para los servicios asignados a cada vehiculo';

--
-- Volcado de datos para la tabla `servicios_asignados_vehiculos`
--

INSERT INTO `servicios_asignados_vehiculos` (`id_asignacion`, `id_vehiculo`, `id_servicio`, `fecha_inicio_serv`, `fecha_fin_serv`) VALUES
(19, 8, 12, '2022-04-18', '2022-04-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_trucks`
--

CREATE TABLE `usuarios_trucks` (
  `id_usuario` int(11) NOT NULL,
  `identificacion` bigint(20) DEFAULT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pass_usu` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rol_asignado` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `crea` timestamp NULL DEFAULT NULL,
  `actualiza` timestamp NULL DEFAULT NULL,
  `elimina` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='usuarios que daran uso al sistema junto a los roles de usuario';

--
-- Volcado de datos para la tabla `usuarios_trucks`
--

INSERT INTO `usuarios_trucks` (`id_usuario`, `identificacion`, `nombres`, `email`, `pass_usu`, `telefono`, `direccion`, `rol_asignado`, `estado`, `crea`, `actualiza`, `elimina`) VALUES
(16, 1119217998, 'Jose Bohorquez', 'bd@gmail.com', 'abc123', 3178773186, 'Col-Bog', 'Colaborador', NULL, '2022-03-24 20:56:37', '2022-04-20 02:45:04', '2022-03-24 20:56:38'),
(17, 1, 'daniel', 'admin2022@trucks.com', 'abc123', 1, '?', 'Super Admin', NULL, '2022-03-25 23:20:00', '2022-04-20 02:45:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id_vehiculo` int(11) NOT NULL,
  `placa` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `modelo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `year` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vin_numer` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `costo_vehiculo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dote_number` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pendiente1` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pendiente2` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pendiente3` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `asignado_empresa` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `servicio_asig` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `serv_desde` date DEFAULT NULL,
  `serv_hasta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='datos de los vehiculos registrados en la plataforma';

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id_vehiculo`, `placa`, `modelo`, `year`, `vin_numer`, `costo_vehiculo`, `dote_number`, `pendiente1`, `pendiente2`, `pendiente3`, `asignado_empresa`, `servicio_asig`, `serv_desde`, `serv_hasta`) VALUES
(8, 'ABC123', 'MARK ANTHEM AUTOMATIZADA', '2022', '123', '70,000,000', '123', 'motor MP8 440C', 'capacidad 52000 kg', 'transmision Semiautomática', 'Interrpidisimo SAS', 'actualmente Tiene Asignado el servicio: ( actualme', '0000-00-00', '0000-00-00'),
(9, 'DEF456', 'MACK ANTHEM TRACTOMULA ANTHEM', '2022', '456', '8,388,607', '456', 'Marca del motor MP8 440C', 'Capacidad de carga 52000 kg', 'Transmisión Mecánica', 'Trans Quintero SAS', NULL, NULL, NULL),
(10, 'GHI789', 'Scania', '2020', '789', '8,388,607', '789', '40mil km', 'sin info', 'transmision mecanica', 'mensajeros urbanos', NULL, NULL, NULL),
(11, 'JKL987', 'internacional', '2012', '987', '8,388,607', '987', 'sin info', 'sin info', 'sin info', 'Servientrega', NULL, NULL, NULL),
(12, 'MNÑ654', 'Mercedes-Benz Atego 1726 Largo', '2023', '654', '8,388,607', '654', 'Marca del motor Mercedes Benz', 'Capacidad de carga 11780 kg', 'Transmisión Mecánica', 'picap', 'Transporte Mercaderia ', '2022-04-01', '2022-05-01'),
(13, 'OPQ321', 'kenworth t800', '2012', '321', '8,388,607', '321', 'Kilómetros	111111 km', 'sin info', 'sin info', 'Taxis Verdes', NULL, NULL, NULL),
(14, 'RST147', 'Chevrolet 	NPR 729', '2007', '147', '8,388,607', '147', 'Kilómetros	307335 km', 'Transmisión	Mecánica', 'sin info', 'Servientrega', NULL, NULL, NULL),
(15, 'QFW053', 'NPR Chevrolet ISUZU', '1995', '2580', '100,000', '2580', 'Transmisión	Mecánica', 'Kilómetros	405000 km', 'Marca	Chevrolet', 'Interrpidisimo SAS', 'Transporte Alimentos', '2022-03-26', '2022-04-26'),
(16, 'WOX621', 'CHEVROLET NPR', '2017', '3690', '8,388,607', '3690', 'Kilómetros	241000 km', 'Capacidad de carga	10500 kg', 'SIN INFO', 'Trans Quintero SAS', NULL, NULL, NULL),
(17, 'THX287', 'CHEVROLET NPR', '2012', '7890', '8,388,607', '7890', 'Kilómetros	435000 km', 'Transmisión	Mecánica', ' Dirección: Hidráulica', 'Servientrega', NULL, NULL, NULL),
(23, '545454', '5454', '5454', '545454', '54,544,545,454.00', '545454', '545454', '545454', '545454', 'mensajeros urbanos', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `perfiles_trucks`
--
ALTER TABLE `perfiles_trucks`
  ADD PRIMARY KEY (`id_perfil`) USING BTREE;

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `servicios_asignados_vehiculos`
--
ALTER TABLE `servicios_asignados_vehiculos`
  ADD PRIMARY KEY (`id_asignacion`),
  ADD KEY `id_vehiculo` (`id_vehiculo`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `usuarios_trucks`
--
ALTER TABLE `usuarios_trucks`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id_vehiculo`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `perfiles_trucks`
--
ALTER TABLE `perfiles_trucks`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `servicios_asignados_vehiculos`
--
ALTER TABLE `servicios_asignados_vehiculos`
  MODIFY `id_asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuarios_trucks`
--
ALTER TABLE `usuarios_trucks`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `servicios_asignados_vehiculos`
--
ALTER TABLE `servicios_asignados_vehiculos`
  ADD CONSTRAINT `FK_servicios_asignados_vehiculos_servicios` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_servicios_asignados_vehiculos_vehiculos` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id_vehiculo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
