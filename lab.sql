-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2018 a las 06:49:02
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lab`
--
CREATE DATABASE IF NOT EXISTS `lab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lab`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctl_clientes`
--

DROP TABLE IF EXISTS `ctl_clientes`;
CREATE TABLE `ctl_clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctl_clientes`
--

INSERT INTO `ctl_clientes` (`id`, `nombre`, `id_estado`) VALUES
(1, 'Particular', 1),
(2, 'CEL', 1),
(3, 'SEXSA', 1),
(4, 'ETESAL', 1),
(5, 'Geocell', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctl_entregaresultados`
--

DROP TABLE IF EXISTS `ctl_entregaresultados`;
CREATE TABLE `ctl_entregaresultados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entregaresultado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctl_entregaresultados`
--

INSERT INTO `ctl_entregaresultados` (`id`, `entregaresultado`) VALUES
(1, 'Laboratorio'),
(2, 'Empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctl_estadosolicitud`
--

DROP TABLE IF EXISTS `ctl_estadosolicitud`;
CREATE TABLE `ctl_estadosolicitud` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estadosolicitud` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctl_estadosolicitud`
--

INSERT INTO `ctl_estadosolicitud` (`id`, `estadosolicitud`) VALUES
(1, 'Digitada'),
(2, 'En proceso'),
(3, 'Completo'),
(4, 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctl_financieras`
--

DROP TABLE IF EXISTS `ctl_financieras`;
CREATE TABLE `ctl_financieras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `financiera` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctl_financieras`
--

INSERT INTO `ctl_financieras` (`id`, `financiera`) VALUES
(1, 'Banco Agricola'),
(2, 'Fedecredito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctl_formaspago`
--

DROP TABLE IF EXISTS `ctl_formaspago`;
CREATE TABLE `ctl_formaspago` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `formapago` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctl_formaspago`
--

INSERT INTO `ctl_formaspago` (`id`, `formapago`) VALUES
(1, 'Contado'),
(2, 'Credito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctl_medicos`
--

DROP TABLE IF EXISTS `ctl_medicos`;
CREATE TABLE `ctl_medicos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctl_medicos`
--

INSERT INTO `ctl_medicos` (`id`, `nombre`) VALUES
(1, 'DR. RAMON PEÑA'),
(2, 'DR. MARIO MOLINA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctl_pacientes`
--

DROP TABLE IF EXISTS `ctl_pacientes`;
CREATE TABLE `ctl_pacientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctl_pacientes`
--

INSERT INTO `ctl_pacientes` (`id`, `nombres`, `apellidos`, `id_cliente`) VALUES
(1, 'Juan Carlos', 'Hernandez', 1),
(2, 'Antonio', 'Coreas', 2),
(3, 'Karen Patricia', 'Sanchez', 1),
(4, 'Luis Enrique', 'Perez', 3),
(5, 'Carlos Ernesto', 'Lainez', 4),
(6, 'Carolina Noemi', 'Vasquez', 3),
(7, 'Gracia Estela', 'Marmol', 2),
(8, 'Hugo Santiago', 'Garcia', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctl_pruebaslaboratorio`
--

DROP TABLE IF EXISTS `ctl_pruebaslaboratorio`;
CREATE TABLE `ctl_pruebaslaboratorio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(5) DEFAULT NULL,
  `pruebalaboratorio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctl_pruebaslaboratorio`
--

INSERT INTO `ctl_pruebaslaboratorio` (`id`, `codigo`, `pruebalaboratorio`) VALUES
(1, 'M0001', 'CULTIVO BACTERIOLOGICO'),
(2, 'M0002', 'ANTIBIOGRAMA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lab_detallesolicitud`
--

DROP TABLE IF EXISTS `lab_detallesolicitud`;
CREATE TABLE `lab_detallesolicitud` (
  `id` int(11) NOT NULL,
  `id_solicitud` int(11) NOT NULL,
  `id_pruebalaboratorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lab_detallesolicitud`
--

INSERT INTO `lab_detallesolicitud` (`id`, `id_solicitud`, `id_pruebalaboratorio`) VALUES
(1, 17, 1),
(2, 17, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lab_solicitudes`
--

DROP TABLE IF EXISTS `lab_solicitudes`;
CREATE TABLE `lab_solicitudes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_medico` int(11) NOT NULL,
  `id_entregaresultado` int(11) NOT NULL,
  `id_formapago` int(11) NOT NULL,
  `id_financiera` int(11) NOT NULL,
  `cuenta_cheque` varchar(30) NOT NULL,
  `id_estadosolicitud` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lab_solicitudes`
--

INSERT INTO `lab_solicitudes` (`id`, `fecha`, `id_cliente`, `id_paciente`, `id_medico`, `id_entregaresultado`, `id_formapago`, `id_financiera`, `cuenta_cheque`, `id_estadosolicitud`) VALUES
(1, '2018-02-03', 0, 1, 0, 0, 0, 0, '', 1),
(2, '2018-02-03', 0, 2, 0, 0, 0, 0, '', 1),
(3, '2018-02-03', 0, 3, 0, 0, 0, 0, '', 2),
(4, '2017-12-10', 0, 4, 0, 0, 0, 0, '', 2),
(5, '2013-02-03', 0, 5, 0, 0, 0, 0, '', 3),
(6, '2015-03-04', 0, 6, 0, 0, 0, 0, '', 4),
(7, '2014-10-14', 0, 7, 0, 0, 0, 0, '', 1),
(8, '2017-02-24', 0, 8, 0, 0, 0, 0, '', 4),
(9, '2018-01-09', 0, 5, 0, 0, 0, 0, '', 3),
(10, '0000-00-00', 0, 0, 0, 0, 0, 0, '', NULL),
(11, '0000-00-00', 0, 0, 0, 0, 0, 0, '', NULL),
(12, '0000-00-00', 2, 3, 1, 1, 0, 1, '222222', NULL),
(13, '0000-00-00', 0, 0, 0, 0, 0, 0, '', NULL),
(14, '0000-00-00', 0, 0, 0, 0, 0, 0, '', NULL),
(15, '0000-00-00', 0, 0, 0, 0, 0, 0, '', NULL),
(16, '0000-00-00', 0, 0, 0, 0, 0, 0, '', NULL),
(17, '0000-00-00', 0, 0, 0, 0, 0, 0, '256469', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `parent`, `name`, `icon`, `slug`, `number`) VALUES
(1, NULL, 'Item 0', 'glyphicon glyphicon-user', 'Item-0', 1),
(2, NULL, 'Item 1', 'glyphicon glyphicon-remove', 'Item-1', 2),
(3, NULL, 'Item 2', '', 'Item-2', 3),
(4, NULL, 'Item 3', '', 'Item-3', 4),
(5, NULL, 'Item 4', '', 'Item-4', 5),
(6, NULL, 'Item 5', '', 'Item-5', 6),
(7, NULL, 'Item 6', '', 'Item-6', 7),
(8, 1, 'Item 0.1', '', 'item-0.1', 1),
(9, 1, 'Item 0.2', 'glyphicon glyphicon-search', 'item-0-2', 2),
(10, 8, 'Item 0.1.1', '', 'item-0-1-1', 1),
(11, 8, 'Item 0.1.2', '', 'Item-0-1-2', 2),
(12, 10, 'Item 0.1.1.1', '', 'Item-0-1-1-1', 1),
(13, 10, 'Item 0.1.1.2', '', 'Item-0-1-1-2', 2),
(14, 2, 'Item 1.1', '', 'item-1-1', 1),
(15, 2, 'Item 1.2', '', 'item-1-2', 2),
(16, 3, 'Item 2.2', '', 'item-2-2', 2),
(17, 3, 'Item 2.1', '', 'item-2.1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `username_canonical` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_canonical` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'admin', 'admin', 'admin', '', '', '', 1, '', 'admin', NULL, 0, 0, NULL, NULL, NULL, '', 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ctl_clientes`
--
ALTER TABLE `ctl_clientes`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `ctl_entregaresultados`
--
ALTER TABLE `ctl_entregaresultados`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `ctl_estadosolicitud`
--
ALTER TABLE `ctl_estadosolicitud`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `ctl_financieras`
--
ALTER TABLE `ctl_financieras`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `ctl_formaspago`
--
ALTER TABLE `ctl_formaspago`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `ctl_medicos`
--
ALTER TABLE `ctl_medicos`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `ctl_pacientes`
--
ALTER TABLE `ctl_pacientes`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `ctl_pruebaslaboratorio`
--
ALTER TABLE `ctl_pruebaslaboratorio`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `lab_detallesolicitud`
--
ALTER TABLE `lab_detallesolicitud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lab_solicitudes`
--
ALTER TABLE `lab_solicitudes`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ctl_clientes`
--
ALTER TABLE `ctl_clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ctl_entregaresultados`
--
ALTER TABLE `ctl_entregaresultados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ctl_estadosolicitud`
--
ALTER TABLE `ctl_estadosolicitud`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ctl_financieras`
--
ALTER TABLE `ctl_financieras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ctl_formaspago`
--
ALTER TABLE `ctl_formaspago`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ctl_medicos`
--
ALTER TABLE `ctl_medicos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ctl_pacientes`
--
ALTER TABLE `ctl_pacientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ctl_pruebaslaboratorio`
--
ALTER TABLE `ctl_pruebaslaboratorio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `lab_detallesolicitud`
--
ALTER TABLE `lab_detallesolicitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `lab_solicitudes`
--
ALTER TABLE `lab_solicitudes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
