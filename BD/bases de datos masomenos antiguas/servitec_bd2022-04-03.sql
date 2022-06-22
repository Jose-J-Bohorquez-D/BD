-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.22-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla trucks2022.clientes: ~6 rows (aproximadamente)
DELETE FROM `clientes`;
INSERT INTO `clientes` (`id_cliente`, `nombre_empresa`, `nombre_cliente`, `direccion`, `numero_lic_emp`, `tel1`, `tel2`, `email1`, `email2`, `id_cgpe`, `ifta_number`, `tax_id_number_ein`) VALUES
	(13, 'Interrpidisimo SAS', 'jose bohorquez', 'bogotá-col', '456', 456, 456, 'i@gmial.com', 'i2@gmail.com', 456, 456, 456),
	(14, 'Taxis Verdes', 'Lucia Gomez', 'bogotá-Col', '123', 123, 123, 'tv@gmail.com', 'tv2@gmail.com', 123, 123, 123),
	(15, 'Servientrega', 'julio delgado', 'bogotá-Col', '789', 789, 789, 's@gmail.com', 's2@gmail.com', 789, 789, 789),
	(16, 'Trans Quintero SAS', 'Aaron gomez', 'bogotá-Col', '987', 987, 987, 'tq@gmail.com', 'tq2@gmail.com', 987, 987, 987),
	(17, 'picap', 'pipe picachu', 'bogota-Col', '654', 654, 654, 'p@gmail.com', 'p2@gmail.com', 654, 654, 654),
	(18, 'mensajeros urbanos', 'pepito perez', 'bogotá-Col', '321', 321, 321, 'mu@gmail.com', 'mu2@gmail.com', 321, 321, 321);

-- Volcando datos para la tabla trucks2022.perfiles_trucks: ~5 rows (aproximadamente)
DELETE FROM `perfiles_trucks`;
INSERT INTO `perfiles_trucks` (`id_perfil`, `nombre_perfil`, `estado_perfil`, `creacion_perfil`, `actualizacion_perfil`, `eliminacion_perfil`) VALUES
	(2, 'Colaborador', 'Inactivo', '2022-02-01 03:15:16', '2022-03-14 23:53:44', '2022-01-31 05:00:00'),
	(3, 'Contabilidad', 'Inactivo', '2022-02-01 03:15:32', '2022-03-14 23:53:39', '2022-01-31 05:00:00'),
	(4, 'Super Admin', 'Inactivo', '2022-02-01 03:14:37', '2022-03-31 10:21:53', '2022-01-31 05:00:00'),
	(12, 'Desarrollador', 'Activo', '2022-03-14 23:53:16', '2022-03-21 21:03:40', NULL),
	(13, 'Administrador', 'Inactivo', '2022-03-21 21:03:13', '2022-03-21 21:03:24', NULL);

-- Volcando datos para la tabla trucks2022.servicios: ~4 rows (aproximadamente)
DELETE FROM `servicios`;
INSERT INTO `servicios` (`id_servicio`, `nombre_servicio`, `valor_servicio`, `tiempo_servicio`, `tiempo_desde`, `tiempo_hasta`) VALUES
	(12, 'Transporte Tecnologia', '11,112,115,241.00', '1 mes', NULL, NULL),
	(13, 'Transporte Mercaderia ', '1,111,111,111.00', '6 meses', NULL, NULL),
	(14, 'Transpote Textiles', '200,000,000,000.00', '3 meses', NULL, NULL),
	(15, 'transporte barillas', '50,000', '1 month', NULL, NULL);

-- Volcando datos para la tabla trucks2022.servicios_asignados_vehiculos: ~1 rows (aproximadamente)
DELETE FROM `servicios_asignados_vehiculos`;
INSERT INTO `servicios_asignados_vehiculos` (`id_asignacion`, `id_vehiculo`, `id_servicio`, `fecha_inicio_serv`, `fecha_fin_serv`, `valor_servicio_asignado`) VALUES
	(19, 8, 12, '2022-04-18', '2022-04-30', '');

-- Volcando datos para la tabla trucks2022.usuarios_trucks: ~2 rows (aproximadamente)
DELETE FROM `usuarios_trucks`;
INSERT INTO `usuarios_trucks` (`id_usuario`, `identificacion`, `nombres`, `email`, `pass_usu`, `telefono`, `direccion`, `rol_asignado`, `estado`, `crea`, `actualiza`, `elimina`) VALUES
	(16, 1119217998, 'Jose Bohorquez', 'bd@gmail.com', 'abc123', 3178773186, 'Col-Bog', 'Colaborador', NULL, '2022-03-24 20:56:37', '2022-04-20 02:45:04', '2022-03-24 20:56:38'),
	(17, 1, 'daniel', 'admin2022@trucks.com', 'abc123', 1, '?', 'Super Admin', NULL, '2022-03-25 23:20:00', '2022-04-20 02:45:12', NULL);

-- Volcando datos para la tabla trucks2022.vehiculos: ~11 rows (aproximadamente)
DELETE FROM `vehiculos`;
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

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
