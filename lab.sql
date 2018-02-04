-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-02-2018 a las 05:54:01
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
-- Estructura de tabla para la tabla `ctl_estadosolicitud`
--

CREATE TABLE `ctl_estadosolicitud` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ctl_estadosolicitud`
--

INSERT INTO `ctl_estadosolicitud` (`id`, `estado`) VALUES
(1, 'Digitada'),
(2, 'En proceso'),
(3, 'Completo'),
(4, 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctl_pacientes`
--

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
-- Estructura de tabla para la tabla `lab_solicitudes`
--

CREATE TABLE `lab_solicitudes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_estadosolicitud` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lab_solicitudes`
--

INSERT INTO `lab_solicitudes` (`id`, `fecha`, `id_paciente`, `id_estadosolicitud`) VALUES
(1, '2018-02-03', 1, 1),
(2, '2018-02-03', 2, 1),
(3, '2018-02-03', 3, 2),
(4, '2017-12-10', 4, 2),
(5, '2013-02-03', 5, 3),
(6, '2015-03-04', 6, 4),
(7, '2014-10-14', 7, 1),
(8, '2017-02-24', 8, 4),
(9, '2018-01-09', 5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

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
-- Indices de la tabla `ctl_estadosolicitud`
--
ALTER TABLE `ctl_estadosolicitud`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `ctl_pacientes`
--
ALTER TABLE `ctl_pacientes`
  ADD UNIQUE KEY `id` (`id`);

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
-- AUTO_INCREMENT de la tabla `ctl_estadosolicitud`
--
ALTER TABLE `ctl_estadosolicitud`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ctl_pacientes`
--
ALTER TABLE `ctl_pacientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `lab_solicitudes`
--
ALTER TABLE `lab_solicitudes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
