-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2017 a las 16:36:37
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tarjetasgraficas`
--
CREATE DATABASE IF NOT EXISTS `tarjetasgraficas` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `tarjetasgraficas`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `graficas`
--

CREATE TABLE IF NOT EXISTS `graficas` (
  `ID` int(10) NOT NULL,
  `marca` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `modelo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tamaño` int(15) DEFAULT NULL,
  `precio` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `graficas`
--

INSERT INTO `graficas` (`ID`, `marca`, `modelo`, `tamaño`, `precio`) VALUES
(1102, 'Asus Nvidia', 'Titan X', 12, 1200),
(1686, 'MSI Nvidia', 'GTX 1080', 8, 600),
(1888, 'Gigabyte Nvidia', 'GTX 1080 TI', 11, 800),
(2000, 'MSI Nvidia', 'GT 710', 2, 48),
(2348, 'Galax Nvidia', 'GTX 980 Ti', 6, 851),
(2484, 'Asus Nvidia', 'GTX 950 DC2OC', 2, 180),
(5185, 'Gigabyte Nvidia', 'GT 740', 2, 109),
(5478, 'MSI AMD', 'RX 460 OC', 4, 135),
(9810, 'Sapphire AMD', 'Radeon Pro Duo', 8, 600);

--
-- �?ndices para tablas volcadas
--

--
-- Indices de la tabla `graficas`
--
ALTER TABLE `graficas`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
