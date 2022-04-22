-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2022 a las 03:11:21
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `campeones`
--
CREATE DATABASE IF NOT EXISTS `campeones` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `campeones`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arbol`
--

CREATE TABLE `arbol` (
  `nodo` int(11) NOT NULL,
  `texto` varchar(500) DEFAULT NULL,
  `pregunta` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `arbol`
--

INSERT INTO `arbol` (`nodo`, `texto`, `pregunta`) VALUES
(1, 'Es brasileño', 1),
(2, 'Es delantero', 1),
(3, 'Es español', 1),
(4, 'Ronaldinho', 0),
(5, 'Es centro campista', 1),
(6, 'Es defensa', 1),
(7, 'Es Argentino', 1),
(10, 'Kaká', 0),
(11, 'Ronaldo Nazario', 0),
(12, 'Sergio Ramos', 0),
(13, 'Es portero', 1),
(14, 'Es delantero', 1),
(15, 'Es aleman', 1),
(26, 'Iker Casillas', 0),
(27, 'Su camisola es el 8', 1),
(28, 'Mario Kempes', 0),
(29, 'Maradona', 0),
(30, 'Es mediocampista', 1),
(31, 'Es italiano', 1),
(54, 'Andres Iniesta', 0),
(55, 'Xavi Hernandez', 0),
(60, 'Toni Kroos', 0),
(61, 'Miroslav klose', 0),
(62, 'Es centrocampista', 1),
(63, 'Es frances', 1),
(124, 'Andrea Pirlo', 0),
(125, 'Gianluigi Buffon', 0),
(126, 'Su numero de camisola es el 9', 1),
(127, 'Pelé', 0),
(252, 'Kylian Mbappé', 0),
(253, 'Zinedine Zidane', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida`
--

CREATE TABLE `partida` (
  `id` int(11) NOT NULL,
  `personaje` varchar(500) DEFAULT NULL,
  `acierto` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `partida`
--

INSERT INTO `partida` (`id`, `personaje`, `acierto`) VALUES
(1, 'Ronaldo Nazario', 0),
(2, 'Ronaldinho', 0),
(3, 'Kaká', 0),
(4, 'Xavi Hernandez', 0),
(5, 'Sergio Ramos', 0),
(6, 'Iker Casillas', 0),
(7, 'Iker Casillas', 1),
(8, 'Ronaldinho', 1),
(9, 'Ronaldinho', 1),
(10, 'Iker Casillas', 1),
(11, 'Ronaldinho', 1),
(12, 'Ronaldinho', 1),
(13, 'Maradona', 0),
(14, 'Mario Kempes', 0),
(15, 'Miroslav klose', 0),
(16, 'Toni Kroos', 0),
(17, 'Xavi Hernandez', 1),
(18, 'Andres Iniesta', 0),
(19, 'Gianluigi Buffon', 0),
(20, 'Andrea Pirlo', 0),
(21, 'Zinedine Zidane', 0),
(22, 'Kylian Mbappé', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arbol`
--
ALTER TABLE `arbol`
  ADD PRIMARY KEY (`nodo`);

--
-- Indices de la tabla `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `partida`
--
ALTER TABLE `partida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
