-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2019 a las 16:48:54
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdprueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblficha`
--

CREATE TABLE `tblficha` (
  `ID` int(11) NOT NULL,
  `Nombres` varchar(45) DEFAULT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Cedula` varchar(45) DEFAULT NULL,
  `Ingles` int(11) DEFAULT '0',
  `Frances` int(11) DEFAULT '0',
  `Italiano` int(11) DEFAULT '0',
  `Sexo` varchar(1) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Sueldo` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblficha`
--

INSERT INTO `tblficha` (`ID`, `Nombres`, `Apellidos`, `Cedula`, `Ingles`, `Frances`, `Italiano`, `Sexo`, `Direccion`, `Sueldo`) VALUES
(1, 'manuel emilio', 'mejia', '444444', 1, 0, 0, 'M', 'Villa Mella', 10000),
(2, 'miguel', 'troncoso', '654321', 1, 0, 1, 'M', 'alli', 25000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblficha`
--
ALTER TABLE `tblficha`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblficha`
--
ALTER TABLE `tblficha`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
