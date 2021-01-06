-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-01-2021 a las 10:25:08
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blogphp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `body` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `category_id`, `created`, `modified`, `user_id`) VALUES
(2, 'Nuevo articulo', 'segunda parte agregado', 16, '2021-01-06 01:54:27', '2021-01-06 09:23:47', NULL),
(13, 'Nuevo articulo', 'Este es un articulo nuevo', 7, '2021-01-06 07:56:51', '2021-01-06 07:56:51', 1),
(14, 'Ultimo titulo', 'Cuerpo del caticulo nuevo', 7, '2021-01-06 07:57:27', '2021-01-06 07:57:27', 1),
(15, 'Nuevo articulo', 'dsfrsadfsdf', 7, '2021-01-06 08:01:31', '2021-01-06 08:01:31', 1),
(16, 'sumando articulos', 'mas cuerpo de articulos', 22, '2021-01-06 09:10:54', '2021-01-06 09:10:54', 1),
(17, 'titulo', 'cuerpo', 23, '2021-01-06 09:11:20', '2021-01-06 09:11:20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rght`, `name`, `description`, `created`, `modified`) VALUES
(7, NULL, 1, 10, 'asdad', 'señor de los anillos', '2021-01-04 16:45:16', '2021-01-06 08:47:23'),
(16, 7, 2, 5, 'nombre de la categoria', 'descripcion de la categoria', '2021-01-06 03:54:12', '2021-01-06 03:54:12'),
(21, 7, 6, 7, 'nuevo', 'articulo', '2021-01-06 08:47:57', '2021-01-06 08:47:57'),
(22, 16, 3, 4, 'www.ellibrocitriano.com', 'asdgwxv c aa  rqreer', '2021-01-06 09:06:50', '2021-01-06 09:06:50'),
(23, 7, 8, 9, 'cristian', 'probando nueva categoria', '2021-01-06 09:10:05', '2021-01-06 09:10:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20201231214332, 'Initial', '2021-01-01 22:45:35', '2021-01-01 22:45:36', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `created`, `modified`) VALUES
(1, 'eltiempo@hotmail.com', '$2y$10$7l.JRrDmuR4oVb7McdWw8.g75qTcmeO/IjKmU89DAqAGilkyLJmGe', 'admin', NULL, NULL),
(2, 'login@hotmail.com', '$2y$10$DumjWMuZ6DXOWZQCudduU.xGmd6emI9QzF17XX1rbTTftN8asDvxe', 'author', NULL, NULL),
(3, 'login@hotmail.com', '$2y$10$IPsVDI9hRMBNpIQLyJrRdexTtspU.HSTc.JkOylNd4UJBpb7zD.N6', 'admin', NULL, NULL),
(4, 'eltiempo@hotmail.com', '$2y$10$2QbOOcbR8aomdbO/994z4uIuQmxFxd6tsC6jY.DYS.s2e71mGOlfC', 'admin', NULL, NULL),
(5, 'rooter@gmail.com', '$2y$10$36Zipb4L6M0d2gfKOIZgTupz5lTmeDTIEM.1UwVErrpDuKz4KSjKy', 'admin', NULL, NULL),
(6, 'rooteado@hotmail.com', '$2y$10$SkQl4YEedEgnrxYBEzdEJOkTM6jpLmPyZM9vZUqJz0CmeO9GeL2Ii', 'author', NULL, NULL),
(7, 'rooteado@hotmail.com', '$2y$10$05oryx3qOAGN.7qA.dhFv.a4dsOVQvjg5WwHsEvxIGyP8ilaL9Wi2', 'admin', NULL, NULL),
(8, 'admin@hotmail.com', '$2y$10$aOw45q6eRkUsa1ec.iYfpe8ehhZrYPoRQ8ObhkLC5b82OK09fYd76', 'admin', NULL, NULL),
(9, 'nuevousuario@root.com', '$2y$10$RVod2aVfIdDrfeS4W4xVJu6pPWzRZKkFI0al8rexGIJCL8S4uH/.m', 'admin', NULL, NULL),
(10, 'eltiempo@hotmail.com', '$2y$10$mGPLyVpl2Qbaga4KauQXIuiA2yySdjqDfKbM29R.eEDO09hzw30xi', 'admin', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
