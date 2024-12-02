-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2024 a las 20:30:14
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
-- Base de datos: `gestion_pacientes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alimentos`
--

CREATE TABLE `alimentos` (
  `id_alimento` int(11) NOT NULL,
  `grupo` varchar(50) NOT NULL,
  `nombre_alimento` varchar(100) NOT NULL,
  `porcion_equivalente` varchar(50) NOT NULL,
  `costo` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alimentos`
--

INSERT INTO `alimentos` (`id_alimento`, `grupo`, `nombre_alimento`, `porcion_equivalente`, `costo`) VALUES
(1, 'Frutas', 'Papaya', '1 taza', 8.39),
(2, 'Frutas', 'Sandía', '1 taza', 11.87),
(3, 'Frutas', 'Chabacano', '4 piezas chicas', 13.66),
(4, 'Frutas', 'Granada roja', '1 pieza chica', 8.22),
(5, 'Frutas', 'Durazno', '2 piezas chicas', 6.79),
(6, 'Frutas', 'Frambuesa', '¾ taza', 5.62),
(7, 'Frutas', 'Piña', '¾ taza', 9.58),
(8, 'Frutas', 'Fresa', '1 taza', 12.58),
(9, 'Frutas', 'Melón', '1 taza', 12.81),
(10, 'Frutas', 'Naranja en gajos', '1 taza', 11.95),
(11, 'Frutas', 'Guanábana', '240 gr', 11.16),
(12, 'Frutas', 'Kiwi', '1 pieza chica', 7.38),
(13, 'Frutas', 'Lima', '3 piezas chicas', 9.45),
(14, 'Frutas', 'Maracuyá', '1 pieza chica', 13.78),
(15, 'Frutas', 'Moras', '¾ taza', 12.96),
(16, 'Frutas', 'Pera', '½ pieza', 13.87),
(17, 'Frutas', 'Zarzamora', '¾ taza', 6.07),
(18, 'Frutas', 'Toronja en gajos', '1 taza', 7.42),
(19, 'Frutas', 'Manzana', '1 pieza', 14.71),
(20, 'Frutas', 'Manzana cocida', '¾ taza', 12.94),
(21, 'Frutas', 'Tuna', '2 piezas', 13.57),
(22, 'Frutas', 'Tejocotes', '3 piezas', 12.99),
(23, 'Frutas', 'Uvas', '10 piezas (½ taza)', 9.26),
(24, 'Verduras', 'Berros', '2 tazas', 6.21),
(25, 'Verduras', 'Espinaca', '2 tazas', 7.95),
(26, 'Verduras', 'Acelga', '2 tazas', 8.66),
(27, 'Verduras', 'Champiñones crudos', '2 tazas', 5.05),
(28, 'Verduras', 'Setas crudas', '2 tazas', 6.68),
(29, 'Verduras', 'Col', '1 taza', 6.42),
(30, 'Verduras', 'Flor de calabaza', '1 taza', 11.03),
(31, 'Verduras', 'Lechuga', '1 taza', 8.79),
(32, 'Verduras', 'Pepino', '1 taza', 5.66),
(33, 'Verduras', 'Pimiento', '1 taza', 9.64),
(34, 'Verduras', 'Rábano', '1 taza', 10.03),
(35, 'Verduras', 'Verdolaga', '1 taza', 7.86),
(36, 'Verduras', 'Acelga cocida', '½ taza', 5.47),
(37, 'Verduras', 'Coliflor cocido', '½ taza', 8.39),
(38, 'Verduras', 'Brócoli cocido', '½ taza', 8.53),
(39, 'Verduras', 'Calabaza cocida', '½ taza', 5.59),
(40, 'Verduras', 'Champiñones cocidos', '¾ taza', 7.67),
(41, 'Verduras', 'Espinacas cocidas', '¾ taza', 6.04),
(42, 'Verduras', 'Jitomate cocido', '1 taza', 7.14),
(43, 'Verduras', 'Romeritos cocidos', '1 taza', 6.74),
(44, 'Verduras', 'Verdolagas cocidas', '1 taza', 5.79),
(45, 'Verduras', 'Chayotes cocidos', '1 taza', 7.38),
(46, 'Verduras', 'Chícharo crudo', '½ taza', 5.93),
(47, 'Verduras', 'Huitlacoche', '1 taza', 11.91),
(48, 'Verduras', 'Jícama', '1 taza', 5.87),
(49, 'Verduras', 'Zanahoria cocida', '1 taza', 5.62),
(50, 'Verduras', 'Nopal cocido', '1 taza', 7.58),
(51, 'Verduras', 'Apio crudo', '1 taza', 9.00),
(52, 'Leche', 'Leche descremada', '1 taza', 10.52),
(53, 'Leche', 'Leche en polvo', '2 cucharadas', 10.00),
(54, 'Leche', 'Leche evaporada', '½ taza', 11.55),
(55, 'Leche', 'Jocoque', '1 taza', 34.06),
(56, 'Leche', 'Yogurt natural', '¾ de taza', 26.64),
(57, 'Cereales', 'Avena cruda', '1/3 taza', 11.76),
(58, 'Cereales', 'Avena cocida', '¾ taza', 8.48),
(59, 'Cereales', 'Cereal de trigo', '1/3 taza', 2.47),
(60, 'Cereales', 'Elote desgranado', '½ taza', 12.17),
(61, 'Cereales', 'Al bran', '½ taza', 6.56),
(62, 'Cereales', 'Espagueti cocido', '½ taza', 10.32),
(63, 'Cereales', 'Germen de trigo', '1/4 taza', 4.72),
(64, 'Cereales', 'Harina de centeno', '3 cucharadas', 4.64),
(65, 'Cereales', 'Palomitas naturales', '2 tazas', 5.15),
(66, 'Cereales', 'Pasta cocida', '½ taza', 13.42),
(67, 'Cereales', 'Salvado de maíz', '3 cucharadas', 2.22),
(68, 'Cereales', 'Salvado de trigo', '1/3 taza', 2.28),
(69, 'Cereales', 'Pan negro', '1 rebanada', 4.41),
(70, 'Cereales', 'Pan de centeno', '1 rebanada', 4.36),
(71, 'Cereales', 'Pan integral', '1 rebanada', 6.98),
(72, 'Cereales', 'Pan tostado', '1 rebanada', 9.87),
(73, 'Cereales', 'Tortilla de maíz', '1 pieza', 13.70),
(74, 'Cereales', 'Tortilla de trigo', '1 pieza', 9.47),
(75, 'Cereales', 'Pan árabe', '½ pieza', 3.81),
(76, 'Cereales', 'Arroz cocido', '½ taza', 9.81),
(77, 'Cereales', 'Galletas María', '5 piezas', 3.91),
(78, 'Cereales', 'Galletas saladas', '3 piezas', 9.41),
(79, 'Alimentos de origen animal', 'Pechuga de pollo o pavo', '30 gr cocido', 18.90),
(80, 'Alimentos de origen animal', 'Atún en agua', '30 gr cocido', 20.53),
(81, 'Alimentos de origen animal', 'Atún fresco', '30 gr cocido', 23.25),
(82, 'Alimentos de origen animal', 'Jaiba', '30 gr cocido', 24.31),
(83, 'Alimentos de origen animal', 'Langosta', '30 gr cocido', 21.81),
(84, 'Alimentos de origen animal', 'Pulpo', '30 gr cocido', 18.29),
(85, 'Alimentos de origen animal', 'Cangrejo', '30 gr cocido', 15.52),
(86, 'Alimentos de origen animal', 'Almeja', '30 gr cocido', 15.47),
(87, 'Alimentos de origen animal', 'Queso cottage', '30 gr o 1 rebanada', 19.93),
(88, 'Alimentos de origen animal', 'Queso manchego', '30 gr o 1 rebanada', 22.18),
(89, 'Alimentos de origen animal', 'Bistec de res', '30 gr cocido', 22.25),
(90, 'Alimentos de origen animal', 'Filete de res', '30 gr cocido', 17.12),
(91, 'Alimentos de origen animal', 'Clara de huevo', '2 claras', 22.09),
(92, 'Alimentos de origen animal', 'Huevo entero', '1 pieza', 23.66),
(93, 'Aceites y grasas', 'Aceite de canola', '1 cucharada', 13.47),
(94, 'Aceites y grasas', 'Aceite de cártamo', '1 cucharada', 28.03),
(95, 'Aceites y grasas', 'Aceite de girasol', '1 cucharada', 29.69),
(96, 'Aceites y grasas', 'Aceite de oliva', '1 cucharada', 19.46),
(97, 'Aceites y grasas', 'Aceite extra virgen', '1 cucharada', 34.39),
(98, 'Aceites y grasas', 'Pepitas', '1 cucharada', 18.34),
(99, 'Aceites y grasas', 'Cacahuates', '1 cucharada', 23.56),
(100, 'Aceites y grasas', 'Aguacate', '½ pieza', 27.81),
(101, 'Aceites y grasas', 'Margarina con sal', '1½ cucharaditas', 12.97),
(102, 'Aceites y grasas', 'Margarina sin sal', '1 cucharadita', 5.00),
(103, 'Leguminosas', 'Alberjón', '½ taza', 9.10),
(104, 'Leguminosas', 'Alubia', '½ taza', 4.78),
(105, 'Leguminosas', 'Frijol', '½ taza', 8.97),
(106, 'Leguminosas', 'Garbanzo', '½ taza', 8.46),
(107, 'Leguminosas', 'Haba', '½ taza', 8.22),
(108, 'Leguminosas', 'Lenteja', '½ taza', 9.41),
(109, 'Leguminosas', 'Soya', '½ taza', 5.85);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_regimen`
--

CREATE TABLE `detalle_regimen` (
  `id_detalle` int(11) NOT NULL,
  `id_alimento` int(11) NOT NULL,
  `id_regimen` int(11) NOT NULL,
  `cantidad_porciones` int(11) NOT NULL,
  `paciente_id` int(11) NOT NULL,
  `grupo` varchar(255) DEFAULT NULL,
  `nombre_alimento` varchar(255) DEFAULT NULL,
  `porcion_equivalente` varchar(255) DEFAULT NULL,
  `costo_total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_regimen`
--

INSERT INTO `detalle_regimen` (`id_detalle`, `id_alimento`, `id_regimen`, `cantidad_porciones`, `paciente_id`, `grupo`, `nombre_alimento`, `porcion_equivalente`, `costo_total`) VALUES
(115, 21, 4, 3, 1, 'Frutas', 'Tuna', '2 piezas', 40.71),
(116, 24, 4, 5, 1, 'Verduras', 'Berros', '2 tazas', 31.05),
(117, 54, 4, 1, 1, 'Leche', 'Leche evaporada', '½ taza', 11.55),
(118, 69, 4, 3, 1, 'Cereales', 'Pan negro', '1 rebanada', 13.23),
(119, 84, 4, 5, 1, 'Alimentos de origen animal', 'Pulpo', '30 gr cocido', 91.45),
(120, 97, 4, 1, 1, 'Aceites y grasas', 'Aceite extra virgen', '1 cucharada', 34.39),
(121, 109, 4, 3, 1, 'Leguminosas', 'Soya', '½ taza', 17.55),
(122, 7, 2, 3, 2, 'Frutas', 'Piña', '¾ taza', 28.74),
(123, 38, 2, 2, 2, 'Verduras', 'Brócoli cocido', '½ taza', 17.06),
(124, 53, 2, 4, 2, 'Leche', 'Leche en polvo', '2 cucharadas', 40.00),
(125, 76, 2, 1, 2, 'Cereales', 'Arroz cocido', '½ taza', 9.81),
(126, 83, 2, 5, 2, 'Alimentos de origen animal', 'Langosta', '30 gr cocido', 109.05),
(127, 102, 2, 2, 2, 'Aceites y grasas', 'Margarina sin sal', '1 cucharadita', 10.00),
(128, 108, 2, 5, 2, 'Leguminosas', 'Lenteja', '½ taza', 47.05),
(129, 13, 2, 2, 3, 'Frutas', 'Lima', '3 piezas chicas', 18.90),
(130, 35, 2, 4, 3, 'Verduras', 'Verdolaga', '1 taza', 31.44),
(131, 52, 2, 2, 3, 'Leche', 'Leche descremada', '1 taza', 21.04),
(132, 76, 2, 1, 3, 'Cereales', 'Arroz cocido', '½ taza', 9.81),
(133, 85, 2, 2, 3, 'Alimentos de origen animal', 'Cangrejo', '30 gr cocido', 31.04),
(134, 98, 2, 5, 3, 'Aceites y grasas', 'Pepitas', '1 cucharada', 91.70),
(135, 108, 2, 4, 3, 'Leguminosas', 'Lenteja', '½ taza', 37.64),
(136, 15, 1, 5, 4, 'Frutas', 'Moras', '¾ taza', 64.80),
(137, 48, 1, 5, 4, 'Verduras', 'Jícama', '1 taza', 29.35),
(138, 56, 1, 3, 4, 'Leche', 'Yogurt natural', '¾ de taza', 79.92),
(139, 78, 1, 1, 4, 'Cereales', 'Galletas saladas', '3 piezas', 9.41),
(140, 87, 1, 3, 4, 'Alimentos de origen animal', 'Queso cottage', '30 gr o 1 rebanada', 59.79),
(141, 94, 1, 3, 4, 'Aceites y grasas', 'Aceite de cártamo', '1 cucharada', 84.09),
(142, 106, 1, 1, 4, 'Leguminosas', 'Garbanzo', '½ taza', 8.46),
(143, 13, 1, 4, 5, 'Frutas', 'Lima', '3 piezas chicas', 37.80),
(144, 44, 1, 3, 5, 'Verduras', 'Verdolagas cocidas', '1 taza', 17.37),
(145, 56, 1, 5, 5, 'Leche', 'Yogurt natural', '¾ de taza', 133.20),
(146, 68, 1, 3, 5, 'Cereales', 'Salvado de trigo', '1/3 taza', 6.84),
(147, 79, 1, 4, 5, 'Alimentos de origen animal', 'Pechuga de pollo o pavo', '30 gr cocido', 75.60),
(148, 98, 1, 2, 5, 'Aceites y grasas', 'Pepitas', '1 cucharada', 36.68),
(149, 106, 1, 5, 5, 'Leguminosas', 'Garbanzo', '½ taza', 42.30),
(150, 22, 2, 2, 6, 'Frutas', 'Tejocotes', '3 piezas', 25.98),
(151, 46, 2, 5, 6, 'Verduras', 'Chícharo crudo', '½ taza', 29.65),
(152, 54, 2, 1, 6, 'Leche', 'Leche evaporada', '½ taza', 11.55),
(153, 63, 2, 4, 6, 'Cereales', 'Germen de trigo', '1/4 taza', 18.88),
(154, 90, 2, 3, 6, 'Alimentos de origen animal', 'Filete de res', '30 gr cocido', 51.36),
(155, 93, 2, 2, 6, 'Aceites y grasas', 'Aceite de canola', '1 cucharada', 26.94),
(156, 105, 2, 1, 6, 'Leguminosas', 'Frijol', '½ taza', 8.97),
(157, 3, 2, 3, 7, 'Frutas', 'Chabacano', '4 piezas chicas', 40.98),
(158, 38, 2, 5, 7, 'Verduras', 'Brócoli cocido', '½ taza', 42.65),
(159, 54, 2, 2, 7, 'Leche', 'Leche evaporada', '½ taza', 23.10),
(160, 77, 2, 2, 7, 'Cereales', 'Galletas María', '5 piezas', 7.82),
(161, 86, 2, 5, 7, 'Alimentos de origen animal', 'Almeja', '30 gr cocido', 77.35),
(162, 101, 2, 4, 7, 'Aceites y grasas', 'Margarina con sal', '1½ cucharaditas', 51.88),
(163, 106, 2, 2, 7, 'Leguminosas', 'Garbanzo', '½ taza', 16.92),
(164, 12, 4, 1, 8, 'Frutas', 'Kiwi', '1 pieza chica', 7.38),
(165, 50, 4, 3, 8, 'Verduras', 'Nopal cocido', '1 taza', 22.74),
(166, 52, 4, 5, 8, 'Leche', 'Leche descremada', '1 taza', 52.60),
(167, 73, 4, 2, 8, 'Cereales', 'Tortilla de maíz', '1 pieza', 27.40),
(168, 81, 4, 5, 8, 'Alimentos de origen animal', 'Atún fresco', '30 gr cocido', 116.25),
(169, 94, 4, 2, 8, 'Aceites y grasas', 'Aceite de cártamo', '1 cucharada', 56.06),
(170, 105, 4, 5, 8, 'Leguminosas', 'Frijol', '½ taza', 44.85);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dim_alimentos`
--

CREATE TABLE `dim_alimentos` (
  `id_alimento` int(11) NOT NULL,
  `nombre_alimento` varchar(100) DEFAULT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `porcion_equivalente` varchar(100) DEFAULT NULL,
  `costo` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dim_alimentos`
--

INSERT INTO `dim_alimentos` (`id_alimento`, `nombre_alimento`, `grupo`, `porcion_equivalente`, `costo`) VALUES
(1, 'Papaya', 'Frutas', NULL, NULL),
(2, 'Sandía', 'Frutas', NULL, NULL),
(3, 'Chabacano', 'Frutas', NULL, NULL),
(4, 'Granada roja', 'Frutas', NULL, NULL),
(5, 'Durazno', 'Frutas', NULL, NULL),
(6, 'Frambuesa', 'Frutas', NULL, NULL),
(7, 'Piña', 'Frutas', NULL, NULL),
(8, 'Fresa', 'Frutas', NULL, NULL),
(9, 'Melón', 'Frutas', NULL, NULL),
(10, 'Naranja en gajos', 'Frutas', NULL, NULL),
(11, 'Guanábana', 'Frutas', NULL, NULL),
(12, 'Kiwi', 'Frutas', NULL, NULL),
(13, 'Lima', 'Frutas', NULL, NULL),
(14, 'Maracuyá', 'Frutas', NULL, NULL),
(15, 'Moras', 'Frutas', NULL, NULL),
(16, 'Pera', 'Frutas', NULL, NULL),
(17, 'Zarzamora', 'Frutas', NULL, NULL),
(18, 'Toronja en gajos', 'Frutas', NULL, NULL),
(19, 'Manzana', 'Frutas', NULL, NULL),
(20, 'Manzana cocida', 'Frutas', NULL, NULL),
(21, 'Tuna', 'Frutas', NULL, NULL),
(22, 'Tejocotes', 'Frutas', NULL, NULL),
(23, 'Uvas', 'Frutas', NULL, NULL),
(24, 'Berros', 'Verduras', NULL, NULL),
(25, 'Espinaca', 'Verduras', NULL, NULL),
(26, 'Acelga', 'Verduras', NULL, NULL),
(27, 'Champiñones crudos', 'Verduras', NULL, NULL),
(28, 'Setas crudas', 'Verduras', NULL, NULL),
(29, 'Col', 'Verduras', NULL, NULL),
(30, 'Flor de calabaza', 'Verduras', NULL, NULL),
(31, 'Lechuga', 'Verduras', NULL, NULL),
(32, 'Pepino', 'Verduras', NULL, NULL),
(33, 'Pimiento', 'Verduras', NULL, NULL),
(34, 'Rábano', 'Verduras', NULL, NULL),
(35, 'Verdolaga', 'Verduras', NULL, NULL),
(36, 'Acelga cocida', 'Verduras', NULL, NULL),
(37, 'Coliflor cocido', 'Verduras', NULL, NULL),
(38, 'Brócoli cocido', 'Verduras', NULL, NULL),
(39, 'Calabaza cocida', 'Verduras', NULL, NULL),
(40, 'Champiñones cocidos', 'Verduras', NULL, NULL),
(41, 'Espinacas cocidas', 'Verduras', NULL, NULL),
(42, 'Jitomate cocido', 'Verduras', NULL, NULL),
(43, 'Romeritos cocidos', 'Verduras', NULL, NULL),
(44, 'Verdolagas cocidas', 'Verduras', NULL, NULL),
(45, 'Chayotes cocidos', 'Verduras', NULL, NULL),
(46, 'Chícharo crudo', 'Verduras', NULL, NULL),
(47, 'Huitlacoche', 'Verduras', NULL, NULL),
(48, 'Jícama', 'Verduras', NULL, NULL),
(49, 'Zanahoria cocida', 'Verduras', NULL, NULL),
(50, 'Nopal cocido', 'Verduras', NULL, NULL),
(51, 'Apio crudo', 'Verduras', NULL, NULL),
(52, 'Leche descremada', 'Leche', NULL, NULL),
(53, 'Leche en polvo', 'Leche', NULL, NULL),
(54, 'Leche evaporada', 'Leche', NULL, NULL),
(55, 'Jocoque', 'Leche', NULL, NULL),
(56, 'Yogurt natural', 'Leche', NULL, NULL),
(57, 'Avena cruda', 'Cereales', NULL, NULL),
(58, 'Avena cocida', 'Cereales', NULL, NULL),
(59, 'Cereal de trigo', 'Cereales', NULL, NULL),
(60, 'Elote desgranado', 'Cereales', NULL, NULL),
(61, 'Al bran', 'Cereales', NULL, NULL),
(62, 'Espagueti cocido', 'Cereales', NULL, NULL),
(63, 'Germen de trigo', 'Cereales', NULL, NULL),
(64, 'Harina de centeno', 'Cereales', NULL, NULL),
(65, 'Palomitas naturales', 'Cereales', NULL, NULL),
(66, 'Pasta cocida', 'Cereales', NULL, NULL),
(67, 'Salvado de maíz', 'Cereales', NULL, NULL),
(68, 'Salvado de trigo', 'Cereales', NULL, NULL),
(69, 'Pan negro', 'Cereales', NULL, NULL),
(70, 'Pan de centeno', 'Cereales', NULL, NULL),
(71, 'Pan integral', 'Cereales', NULL, NULL),
(72, 'Pan tostado', 'Cereales', NULL, NULL),
(73, 'Tortilla de maíz', 'Cereales', NULL, NULL),
(74, 'Tortilla de trigo', 'Cereales', NULL, NULL),
(75, 'Pan árabe', 'Cereales', NULL, NULL),
(76, 'Arroz cocido', 'Cereales', NULL, NULL),
(77, 'Galletas María', 'Cereales', NULL, NULL),
(78, 'Galletas saladas', 'Cereales', NULL, NULL),
(79, 'Pechuga de pollo o pavo', 'Alimentos de origen animal', NULL, NULL),
(80, 'Atún en agua', 'Alimentos de origen animal', NULL, NULL),
(81, 'Atún fresco', 'Alimentos de origen animal', NULL, NULL),
(82, 'Jaiba', 'Alimentos de origen animal', NULL, NULL),
(83, 'Langosta', 'Alimentos de origen animal', NULL, NULL),
(84, 'Pulpo', 'Alimentos de origen animal', NULL, NULL),
(85, 'Cangrejo', 'Alimentos de origen animal', NULL, NULL),
(86, 'Almeja', 'Alimentos de origen animal', NULL, NULL),
(87, 'Queso cottage', 'Alimentos de origen animal', NULL, NULL),
(88, 'Queso manchego', 'Alimentos de origen animal', NULL, NULL),
(89, 'Bistec de res', 'Alimentos de origen animal', NULL, NULL),
(90, 'Filete de res', 'Alimentos de origen animal', NULL, NULL),
(91, 'Clara de huevo', 'Alimentos de origen animal', NULL, NULL),
(92, 'Huevo entero', 'Alimentos de origen animal', NULL, NULL),
(93, 'Aceite de canola', 'Aceites y grasas', NULL, NULL),
(94, 'Aceite de cártamo', 'Aceites y grasas', NULL, NULL),
(95, 'Aceite de girasol', 'Aceites y grasas', NULL, NULL),
(96, 'Aceite de oliva', 'Aceites y grasas', NULL, NULL),
(97, 'Aceite extra virgen', 'Aceites y grasas', NULL, NULL),
(98, 'Pepitas', 'Aceites y grasas', NULL, NULL),
(99, 'Cacahuates', 'Aceites y grasas', NULL, NULL),
(100, 'Aguacate', 'Aceites y grasas', NULL, NULL),
(101, 'Margarina con sal', 'Aceites y grasas', NULL, NULL),
(102, 'Margarina sin sal', 'Aceites y grasas', NULL, NULL),
(103, 'Alberjón', 'Leguminosas', NULL, NULL),
(104, 'Alubia', 'Leguminosas', NULL, NULL),
(105, 'Frijol', 'Leguminosas', NULL, NULL),
(106, 'Garbanzo', 'Leguminosas', NULL, NULL),
(107, 'Haba', 'Leguminosas', NULL, NULL),
(108, 'Lenteja', 'Leguminosas', NULL, NULL),
(109, 'Soya', 'Leguminosas', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dim_pacientes`
--

CREATE TABLE `dim_pacientes` (
  `paciente_id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `peso_inicial` decimal(5,2) DEFAULT NULL,
  `peso_actual` decimal(5,2) DEFAULT NULL,
  `regimen_id` int(11) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dim_pacientes`
--

INSERT INTO `dim_pacientes` (`paciente_id`, `nombre`, `edad`, `peso_inicial`, `peso_actual`, `regimen_id`, `fecha_registro`, `peso`) VALUES
(1, 'Juan Pérez', 30, 85.50, 80.00, 1, '2024-11-13', NULL),
(2, 'Ana García', 40, 72.00, 70.00, 2, '2024-11-02', NULL),
(3, 'Luis Sánchez', 25, 95.00, 90.00, 3, '2024-11-22', NULL),
(4, 'Carla López', 35, 68.00, 66.50, 4, '2024-11-25', NULL),
(5, 'Marta Rodríguez', 50, 92.00, 88.00, 1, '2024-11-06', NULL),
(6, 'José Martínez', 45, 102.50, 98.00, 2, '2024-11-18', NULL),
(7, 'Claudia Fernández', 28, 78.00, 75.50, 3, '2024-11-21', NULL),
(8, 'Pedro González', 38, 105.00, 102.00, 4, '2024-11-20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dim_regimenes`
--

CREATE TABLE `dim_regimenes` (
  `id_regimen` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `costo_semanal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dim_regimenes`
--

INSERT INTO `dim_regimenes` (`id_regimen`, `tipo`, `descripcion`, `costo_semanal`) VALUES
(1, 'Régimen A', NULL, 150.00),
(2, 'Régimen B', NULL, 120.00),
(3, 'Régimen C', NULL, 100.00),
(4, 'Régimen D', NULL, 180.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dim_tiempo`
--

CREATE TABLE `dim_tiempo` (
  `id_tiempo` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `dia_semana` varchar(20) DEFAULT NULL,
  `mes` varchar(20) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `trimestre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dim_tiempo`
--

INSERT INTO `dim_tiempo` (`id_tiempo`, `fecha`, `dia_semana`, `mes`, `anio`, `trimestre`) VALUES
(1, '2022-01-02', 'Sunday', '1', 2022, 1),
(2, '2022-01-03', 'Monday', '1', 2022, 1),
(3, '2022-01-04', 'Tuesday', '1', 2022, 1),
(4, '2022-01-05', 'Wednesday', '1', 2022, 1),
(5, '2022-01-06', 'Thursday', '1', 2022, 1),
(6, '2022-01-07', 'Friday', '1', 2022, 1),
(7, '2022-01-08', 'Saturday', '1', 2022, 1),
(8, '2022-01-09', 'Sunday', '1', 2022, 1),
(9, '2022-01-10', 'Monday', '1', 2022, 1),
(10, '2022-01-11', 'Tuesday', '1', 2022, 1),
(11, '2022-01-12', 'Wednesday', '1', 2022, 1),
(12, '2022-01-13', 'Thursday', '1', 2022, 1),
(13, '2022-01-14', 'Friday', '1', 2022, 1),
(14, '2022-01-15', 'Saturday', '1', 2022, 1),
(15, '2022-01-16', 'Sunday', '1', 2022, 1),
(16, '2022-01-17', 'Monday', '1', 2022, 1),
(17, '2022-01-18', 'Tuesday', '1', 2022, 1),
(18, '2022-01-19', 'Wednesday', '1', 2022, 1),
(19, '2022-01-20', 'Thursday', '1', 2022, 1),
(20, '2022-01-21', 'Friday', '1', 2022, 1),
(21, '2022-01-22', 'Saturday', '1', 2022, 1),
(22, '2022-01-23', 'Sunday', '1', 2022, 1),
(23, '2022-01-24', 'Monday', '1', 2022, 1),
(24, '2022-01-25', 'Tuesday', '1', 2022, 1),
(25, '2022-01-26', 'Wednesday', '1', 2022, 1),
(26, '2022-01-27', 'Thursday', '1', 2022, 1),
(27, '2022-01-28', 'Friday', '1', 2022, 1),
(28, '2022-01-29', 'Saturday', '1', 2022, 1),
(29, '2022-01-30', 'Sunday', '1', 2022, 1),
(30, '2022-01-31', 'Monday', '1', 2022, 1),
(31, '2022-02-01', 'Tuesday', '2', 2022, 1),
(32, '2022-02-02', 'Wednesday', '2', 2022, 1),
(33, '2022-02-03', 'Thursday', '2', 2022, 1),
(34, '2022-02-04', 'Friday', '2', 2022, 1),
(35, '2022-02-05', 'Saturday', '2', 2022, 1),
(36, '2022-02-06', 'Sunday', '2', 2022, 1),
(37, '2022-02-07', 'Monday', '2', 2022, 1),
(38, '2022-02-08', 'Tuesday', '2', 2022, 1),
(39, '2022-02-09', 'Wednesday', '2', 2022, 1),
(40, '2022-02-10', 'Thursday', '2', 2022, 1),
(41, '2022-02-11', 'Friday', '2', 2022, 1),
(42, '2022-02-12', 'Saturday', '2', 2022, 1),
(43, '2022-02-13', 'Sunday', '2', 2022, 1),
(44, '2022-02-14', 'Monday', '2', 2022, 1),
(45, '2022-02-15', 'Tuesday', '2', 2022, 1),
(46, '2022-02-16', 'Wednesday', '2', 2022, 1),
(47, '2022-02-17', 'Thursday', '2', 2022, 1),
(48, '2022-02-18', 'Friday', '2', 2022, 1),
(49, '2022-02-19', 'Saturday', '2', 2022, 1),
(50, '2022-02-20', 'Sunday', '2', 2022, 1),
(51, '2022-02-21', 'Monday', '2', 2022, 1),
(52, '2022-02-22', 'Tuesday', '2', 2022, 1),
(53, '2022-02-23', 'Wednesday', '2', 2022, 1),
(54, '2022-02-24', 'Thursday', '2', 2022, 1),
(55, '2022-02-25', 'Friday', '2', 2022, 1),
(56, '2022-02-26', 'Saturday', '2', 2022, 1),
(57, '2022-02-27', 'Sunday', '2', 2022, 1),
(58, '2022-02-28', 'Monday', '2', 2022, 1),
(59, '2022-03-01', 'Tuesday', '3', 2022, 1),
(60, '2022-03-02', 'Wednesday', '3', 2022, 1),
(61, '2022-03-03', 'Thursday', '3', 2022, 1),
(62, '2022-03-04', 'Friday', '3', 2022, 1),
(63, '2022-03-05', 'Saturday', '3', 2022, 1),
(64, '2022-03-06', 'Sunday', '3', 2022, 1),
(65, '2022-03-07', 'Monday', '3', 2022, 1),
(66, '2022-03-08', 'Tuesday', '3', 2022, 1),
(67, '2022-03-09', 'Wednesday', '3', 2022, 1),
(68, '2022-03-10', 'Thursday', '3', 2022, 1),
(69, '2022-03-11', 'Friday', '3', 2022, 1),
(70, '2022-03-12', 'Saturday', '3', 2022, 1),
(71, '2022-03-13', 'Sunday', '3', 2022, 1),
(72, '2022-03-14', 'Monday', '3', 2022, 1),
(73, '2022-03-15', 'Tuesday', '3', 2022, 1),
(74, '2022-03-16', 'Wednesday', '3', 2022, 1),
(75, '2022-03-17', 'Thursday', '3', 2022, 1),
(76, '2022-03-18', 'Friday', '3', 2022, 1),
(77, '2022-03-19', 'Saturday', '3', 2022, 1),
(78, '2022-03-20', 'Sunday', '3', 2022, 1),
(79, '2022-03-21', 'Monday', '3', 2022, 1),
(80, '2022-03-22', 'Tuesday', '3', 2022, 1),
(81, '2022-03-23', 'Wednesday', '3', 2022, 1),
(82, '2022-03-24', 'Thursday', '3', 2022, 1),
(83, '2022-03-25', 'Friday', '3', 2022, 1),
(84, '2022-03-26', 'Saturday', '3', 2022, 1),
(85, '2022-03-27', 'Sunday', '3', 2022, 1),
(86, '2022-03-28', 'Monday', '3', 2022, 1),
(87, '2022-03-29', 'Tuesday', '3', 2022, 1),
(88, '2022-03-30', 'Wednesday', '3', 2022, 1),
(89, '2022-03-31', 'Thursday', '3', 2022, 1),
(90, '2022-04-01', 'Friday', '4', 2022, 2),
(91, '2022-04-02', 'Saturday', '4', 2022, 2),
(92, '2022-04-03', 'Sunday', '4', 2022, 2),
(93, '2022-04-04', 'Monday', '4', 2022, 2),
(94, '2022-04-05', 'Tuesday', '4', 2022, 2),
(95, '2022-04-06', 'Wednesday', '4', 2022, 2),
(96, '2022-04-07', 'Thursday', '4', 2022, 2),
(97, '2022-04-08', 'Friday', '4', 2022, 2),
(98, '2022-04-09', 'Saturday', '4', 2022, 2),
(99, '2022-04-10', 'Sunday', '4', 2022, 2),
(100, '2022-04-11', 'Monday', '4', 2022, 2),
(101, '2022-04-12', 'Tuesday', '4', 2022, 2),
(102, '2022-04-13', 'Wednesday', '4', 2022, 2),
(103, '2022-04-14', 'Thursday', '4', 2022, 2),
(104, '2022-04-15', 'Friday', '4', 2022, 2),
(105, '2022-04-16', 'Saturday', '4', 2022, 2),
(106, '2022-04-17', 'Sunday', '4', 2022, 2),
(107, '2022-04-18', 'Monday', '4', 2022, 2),
(108, '2022-04-19', 'Tuesday', '4', 2022, 2),
(109, '2022-04-20', 'Wednesday', '4', 2022, 2),
(110, '2022-04-21', 'Thursday', '4', 2022, 2),
(111, '2022-04-22', 'Friday', '4', 2022, 2),
(112, '2022-04-23', 'Saturday', '4', 2022, 2),
(113, '2022-04-24', 'Sunday', '4', 2022, 2),
(114, '2022-04-25', 'Monday', '4', 2022, 2),
(115, '2022-04-26', 'Tuesday', '4', 2022, 2),
(116, '2022-04-27', 'Wednesday', '4', 2022, 2),
(117, '2022-04-28', 'Thursday', '4', 2022, 2),
(118, '2022-04-29', 'Friday', '4', 2022, 2),
(119, '2022-04-30', 'Saturday', '4', 2022, 2),
(120, '2022-05-01', 'Sunday', '5', 2022, 2),
(121, '2022-05-02', 'Monday', '5', 2022, 2),
(122, '2022-05-03', 'Tuesday', '5', 2022, 2),
(123, '2022-05-04', 'Wednesday', '5', 2022, 2),
(124, '2022-05-05', 'Thursday', '5', 2022, 2),
(125, '2022-05-06', 'Friday', '5', 2022, 2),
(126, '2022-05-07', 'Saturday', '5', 2022, 2),
(127, '2022-05-08', 'Sunday', '5', 2022, 2),
(128, '2022-05-09', 'Monday', '5', 2022, 2),
(129, '2022-05-10', 'Tuesday', '5', 2022, 2),
(130, '2022-05-11', 'Wednesday', '5', 2022, 2),
(131, '2022-05-12', 'Thursday', '5', 2022, 2),
(132, '2022-05-13', 'Friday', '5', 2022, 2),
(133, '2022-05-14', 'Saturday', '5', 2022, 2),
(134, '2022-05-15', 'Sunday', '5', 2022, 2),
(135, '2022-05-16', 'Monday', '5', 2022, 2),
(136, '2022-05-17', 'Tuesday', '5', 2022, 2),
(137, '2022-05-18', 'Wednesday', '5', 2022, 2),
(138, '2022-05-19', 'Thursday', '5', 2022, 2),
(139, '2022-05-20', 'Friday', '5', 2022, 2),
(140, '2022-05-21', 'Saturday', '5', 2022, 2),
(141, '2022-05-22', 'Sunday', '5', 2022, 2),
(142, '2022-05-23', 'Monday', '5', 2022, 2),
(143, '2022-05-24', 'Tuesday', '5', 2022, 2),
(144, '2022-05-25', 'Wednesday', '5', 2022, 2),
(145, '2022-05-26', 'Thursday', '5', 2022, 2),
(146, '2022-05-27', 'Friday', '5', 2022, 2),
(147, '2022-05-28', 'Saturday', '5', 2022, 2),
(148, '2022-05-29', 'Sunday', '5', 2022, 2),
(149, '2022-05-30', 'Monday', '5', 2022, 2),
(150, '2022-05-31', 'Tuesday', '5', 2022, 2),
(151, '2022-06-01', 'Wednesday', '6', 2022, 2),
(152, '2022-06-02', 'Thursday', '6', 2022, 2),
(153, '2022-06-03', 'Friday', '6', 2022, 2),
(154, '2022-06-04', 'Saturday', '6', 2022, 2),
(155, '2022-06-05', 'Sunday', '6', 2022, 2),
(156, '2022-06-06', 'Monday', '6', 2022, 2),
(157, '2022-06-07', 'Tuesday', '6', 2022, 2),
(158, '2022-06-08', 'Wednesday', '6', 2022, 2),
(159, '2022-06-09', 'Thursday', '6', 2022, 2),
(160, '2022-06-10', 'Friday', '6', 2022, 2),
(161, '2022-06-11', 'Saturday', '6', 2022, 2),
(162, '2022-06-12', 'Sunday', '6', 2022, 2),
(163, '2022-06-13', 'Monday', '6', 2022, 2),
(164, '2022-06-14', 'Tuesday', '6', 2022, 2),
(165, '2022-06-15', 'Wednesday', '6', 2022, 2),
(166, '2022-06-16', 'Thursday', '6', 2022, 2),
(167, '2022-06-17', 'Friday', '6', 2022, 2),
(168, '2022-06-18', 'Saturday', '6', 2022, 2),
(169, '2022-06-19', 'Sunday', '6', 2022, 2),
(170, '2022-06-20', 'Monday', '6', 2022, 2),
(171, '2022-06-21', 'Tuesday', '6', 2022, 2),
(172, '2022-06-22', 'Wednesday', '6', 2022, 2),
(173, '2022-06-23', 'Thursday', '6', 2022, 2),
(174, '2022-06-24', 'Friday', '6', 2022, 2),
(175, '2022-06-25', 'Saturday', '6', 2022, 2),
(176, '2022-06-26', 'Sunday', '6', 2022, 2),
(177, '2022-06-27', 'Monday', '6', 2022, 2),
(178, '2022-06-28', 'Tuesday', '6', 2022, 2),
(179, '2022-06-29', 'Wednesday', '6', 2022, 2),
(180, '2022-06-30', 'Thursday', '6', 2022, 2),
(181, '2022-07-01', 'Friday', '7', 2022, 3),
(182, '2022-07-02', 'Saturday', '7', 2022, 3),
(183, '2022-07-03', 'Sunday', '7', 2022, 3),
(184, '2022-07-04', 'Monday', '7', 2022, 3),
(185, '2022-07-05', 'Tuesday', '7', 2022, 3),
(186, '2022-07-06', 'Wednesday', '7', 2022, 3),
(187, '2022-07-07', 'Thursday', '7', 2022, 3),
(188, '2022-07-08', 'Friday', '7', 2022, 3),
(189, '2022-07-09', 'Saturday', '7', 2022, 3),
(190, '2022-07-10', 'Sunday', '7', 2022, 3),
(191, '2022-07-11', 'Monday', '7', 2022, 3),
(192, '2022-07-12', 'Tuesday', '7', 2022, 3),
(193, '2022-07-13', 'Wednesday', '7', 2022, 3),
(194, '2022-07-14', 'Thursday', '7', 2022, 3),
(195, '2022-07-15', 'Friday', '7', 2022, 3),
(196, '2022-07-16', 'Saturday', '7', 2022, 3),
(197, '2022-07-17', 'Sunday', '7', 2022, 3),
(198, '2022-07-18', 'Monday', '7', 2022, 3),
(199, '2022-07-19', 'Tuesday', '7', 2022, 3),
(200, '2022-07-20', 'Wednesday', '7', 2022, 3),
(201, '2022-07-21', 'Thursday', '7', 2022, 3),
(202, '2022-07-22', 'Friday', '7', 2022, 3),
(203, '2022-07-23', 'Saturday', '7', 2022, 3),
(204, '2022-07-24', 'Sunday', '7', 2022, 3),
(205, '2022-07-25', 'Monday', '7', 2022, 3),
(206, '2022-07-26', 'Tuesday', '7', 2022, 3),
(207, '2022-07-27', 'Wednesday', '7', 2022, 3),
(208, '2022-07-28', 'Thursday', '7', 2022, 3),
(209, '2022-07-29', 'Friday', '7', 2022, 3),
(210, '2022-07-30', 'Saturday', '7', 2022, 3),
(211, '2022-07-31', 'Sunday', '7', 2022, 3),
(212, '2022-08-01', 'Monday', '8', 2022, 3),
(213, '2022-08-02', 'Tuesday', '8', 2022, 3),
(214, '2022-08-03', 'Wednesday', '8', 2022, 3),
(215, '2022-08-04', 'Thursday', '8', 2022, 3),
(216, '2022-08-05', 'Friday', '8', 2022, 3),
(217, '2022-08-06', 'Saturday', '8', 2022, 3),
(218, '2022-08-07', 'Sunday', '8', 2022, 3),
(219, '2022-08-08', 'Monday', '8', 2022, 3),
(220, '2022-08-09', 'Tuesday', '8', 2022, 3),
(221, '2022-08-10', 'Wednesday', '8', 2022, 3),
(222, '2022-08-11', 'Thursday', '8', 2022, 3),
(223, '2022-08-12', 'Friday', '8', 2022, 3),
(224, '2022-08-13', 'Saturday', '8', 2022, 3),
(225, '2022-08-14', 'Sunday', '8', 2022, 3),
(226, '2022-08-15', 'Monday', '8', 2022, 3),
(227, '2022-08-16', 'Tuesday', '8', 2022, 3),
(228, '2022-08-17', 'Wednesday', '8', 2022, 3),
(229, '2022-08-18', 'Thursday', '8', 2022, 3),
(230, '2022-08-19', 'Friday', '8', 2022, 3),
(231, '2022-08-20', 'Saturday', '8', 2022, 3),
(232, '2022-08-21', 'Sunday', '8', 2022, 3),
(233, '2022-08-22', 'Monday', '8', 2022, 3),
(234, '2022-08-23', 'Tuesday', '8', 2022, 3),
(235, '2022-08-24', 'Wednesday', '8', 2022, 3),
(236, '2022-08-25', 'Thursday', '8', 2022, 3),
(237, '2022-08-26', 'Friday', '8', 2022, 3),
(238, '2022-08-27', 'Saturday', '8', 2022, 3),
(239, '2022-08-28', 'Sunday', '8', 2022, 3),
(240, '2022-08-29', 'Monday', '8', 2022, 3),
(241, '2022-08-30', 'Tuesday', '8', 2022, 3),
(242, '2022-08-31', 'Wednesday', '8', 2022, 3),
(243, '2022-09-01', 'Thursday', '9', 2022, 3),
(244, '2022-09-02', 'Friday', '9', 2022, 3),
(245, '2022-09-03', 'Saturday', '9', 2022, 3),
(246, '2022-09-04', 'Sunday', '9', 2022, 3),
(247, '2022-09-05', 'Monday', '9', 2022, 3),
(248, '2022-09-06', 'Tuesday', '9', 2022, 3),
(249, '2022-09-07', 'Wednesday', '9', 2022, 3),
(250, '2022-09-08', 'Thursday', '9', 2022, 3),
(251, '2022-09-09', 'Friday', '9', 2022, 3),
(252, '2022-09-10', 'Saturday', '9', 2022, 3),
(253, '2022-09-11', 'Sunday', '9', 2022, 3),
(254, '2022-09-12', 'Monday', '9', 2022, 3),
(255, '2022-09-13', 'Tuesday', '9', 2022, 3),
(256, '2022-09-14', 'Wednesday', '9', 2022, 3),
(257, '2022-09-15', 'Thursday', '9', 2022, 3),
(258, '2022-09-16', 'Friday', '9', 2022, 3),
(259, '2022-09-17', 'Saturday', '9', 2022, 3),
(260, '2022-09-18', 'Sunday', '9', 2022, 3),
(261, '2022-09-19', 'Monday', '9', 2022, 3),
(262, '2022-09-20', 'Tuesday', '9', 2022, 3),
(263, '2022-09-21', 'Wednesday', '9', 2022, 3),
(264, '2022-09-22', 'Thursday', '9', 2022, 3),
(265, '2022-09-23', 'Friday', '9', 2022, 3),
(266, '2022-09-24', 'Saturday', '9', 2022, 3),
(267, '2022-09-25', 'Sunday', '9', 2022, 3),
(268, '2022-09-26', 'Monday', '9', 2022, 3),
(269, '2022-09-27', 'Tuesday', '9', 2022, 3),
(270, '2022-09-28', 'Wednesday', '9', 2022, 3),
(271, '2022-09-29', 'Thursday', '9', 2022, 3),
(272, '2022-09-30', 'Friday', '9', 2022, 3),
(273, '2022-10-01', 'Saturday', '10', 2022, 4),
(274, '2022-10-02', 'Sunday', '10', 2022, 4),
(275, '2022-10-03', 'Monday', '10', 2022, 4),
(276, '2022-10-04', 'Tuesday', '10', 2022, 4),
(277, '2022-10-05', 'Wednesday', '10', 2022, 4),
(278, '2022-10-06', 'Thursday', '10', 2022, 4),
(279, '2022-10-07', 'Friday', '10', 2022, 4),
(280, '2022-10-08', 'Saturday', '10', 2022, 4),
(281, '2022-10-09', 'Sunday', '10', 2022, 4),
(282, '2022-10-10', 'Monday', '10', 2022, 4),
(283, '2022-10-11', 'Tuesday', '10', 2022, 4),
(284, '2022-10-12', 'Wednesday', '10', 2022, 4),
(285, '2022-10-13', 'Thursday', '10', 2022, 4),
(286, '2022-10-14', 'Friday', '10', 2022, 4),
(287, '2022-10-15', 'Saturday', '10', 2022, 4),
(288, '2022-10-16', 'Sunday', '10', 2022, 4),
(289, '2022-10-17', 'Monday', '10', 2022, 4),
(290, '2022-10-18', 'Tuesday', '10', 2022, 4),
(291, '2022-10-19', 'Wednesday', '10', 2022, 4),
(292, '2022-10-20', 'Thursday', '10', 2022, 4),
(293, '2022-10-21', 'Friday', '10', 2022, 4),
(294, '2022-10-22', 'Saturday', '10', 2022, 4),
(295, '2022-10-23', 'Sunday', '10', 2022, 4),
(296, '2022-10-24', 'Monday', '10', 2022, 4),
(297, '2022-10-25', 'Tuesday', '10', 2022, 4),
(298, '2022-10-26', 'Wednesday', '10', 2022, 4),
(299, '2022-10-27', 'Thursday', '10', 2022, 4),
(300, '2022-10-28', 'Friday', '10', 2022, 4),
(301, '2022-10-29', 'Saturday', '10', 2022, 4),
(302, '2022-10-30', 'Sunday', '10', 2022, 4),
(303, '2022-10-31', 'Monday', '10', 2022, 4),
(304, '2022-11-01', 'Tuesday', '11', 2022, 4),
(305, '2022-11-02', 'Wednesday', '11', 2022, 4),
(306, '2022-11-03', 'Thursday', '11', 2022, 4),
(307, '2022-11-04', 'Friday', '11', 2022, 4),
(308, '2022-11-05', 'Saturday', '11', 2022, 4),
(309, '2022-11-06', 'Sunday', '11', 2022, 4),
(310, '2022-11-07', 'Monday', '11', 2022, 4),
(311, '2022-11-08', 'Tuesday', '11', 2022, 4),
(312, '2022-11-09', 'Wednesday', '11', 2022, 4),
(313, '2022-11-10', 'Thursday', '11', 2022, 4),
(314, '2022-11-11', 'Friday', '11', 2022, 4),
(315, '2022-11-12', 'Saturday', '11', 2022, 4),
(316, '2022-11-13', 'Sunday', '11', 2022, 4),
(317, '2022-11-14', 'Monday', '11', 2022, 4),
(318, '2022-11-15', 'Tuesday', '11', 2022, 4),
(319, '2022-11-16', 'Wednesday', '11', 2022, 4),
(320, '2022-11-17', 'Thursday', '11', 2022, 4),
(321, '2022-11-18', 'Friday', '11', 2022, 4),
(322, '2022-11-19', 'Saturday', '11', 2022, 4),
(323, '2022-11-20', 'Sunday', '11', 2022, 4),
(324, '2022-11-21', 'Monday', '11', 2022, 4),
(325, '2022-11-22', 'Tuesday', '11', 2022, 4),
(326, '2022-11-23', 'Wednesday', '11', 2022, 4),
(327, '2022-11-24', 'Thursday', '11', 2022, 4),
(328, '2022-11-25', 'Friday', '11', 2022, 4),
(329, '2022-11-26', 'Saturday', '11', 2022, 4),
(330, '2022-11-27', 'Sunday', '11', 2022, 4),
(331, '2022-11-28', 'Monday', '11', 2022, 4),
(332, '2022-11-29', 'Tuesday', '11', 2022, 4),
(333, '2022-11-30', 'Wednesday', '11', 2022, 4),
(334, '2022-12-01', 'Thursday', '12', 2022, 4),
(335, '2022-12-02', 'Friday', '12', 2022, 4),
(336, '2022-12-03', 'Saturday', '12', 2022, 4),
(337, '2022-12-04', 'Sunday', '12', 2022, 4),
(338, '2022-12-05', 'Monday', '12', 2022, 4),
(339, '2022-12-06', 'Tuesday', '12', 2022, 4),
(340, '2022-12-07', 'Wednesday', '12', 2022, 4),
(341, '2022-12-08', 'Thursday', '12', 2022, 4),
(342, '2022-12-09', 'Friday', '12', 2022, 4),
(343, '2022-12-10', 'Saturday', '12', 2022, 4),
(344, '2022-12-11', 'Sunday', '12', 2022, 4),
(345, '2022-12-12', 'Monday', '12', 2022, 4),
(346, '2022-12-13', 'Tuesday', '12', 2022, 4),
(347, '2022-12-14', 'Wednesday', '12', 2022, 4),
(348, '2022-12-15', 'Thursday', '12', 2022, 4),
(349, '2022-12-16', 'Friday', '12', 2022, 4),
(350, '2022-12-17', 'Saturday', '12', 2022, 4),
(351, '2022-12-18', 'Sunday', '12', 2022, 4),
(352, '2022-12-19', 'Monday', '12', 2022, 4),
(353, '2022-12-20', 'Tuesday', '12', 2022, 4),
(354, '2022-12-21', 'Wednesday', '12', 2022, 4),
(355, '2022-12-22', 'Thursday', '12', 2022, 4),
(356, '2022-12-23', 'Friday', '12', 2022, 4),
(357, '2022-12-24', 'Saturday', '12', 2022, 4),
(358, '2022-12-25', 'Sunday', '12', 2022, 4),
(359, '2022-12-26', 'Monday', '12', 2022, 4),
(360, '2022-12-27', 'Tuesday', '12', 2022, 4),
(361, '2022-12-28', 'Wednesday', '12', 2022, 4),
(362, '2022-12-29', 'Thursday', '12', 2022, 4),
(363, '2022-12-30', 'Friday', '12', 2022, 4),
(364, '2022-12-31', 'Saturday', '12', 2022, 4),
(365, '2023-01-01', 'Sunday', '1', 2023, 1),
(366, '2023-01-02', 'Monday', '1', 2023, 1),
(367, '2023-01-03', 'Tuesday', '1', 2023, 1),
(368, '2023-01-04', 'Wednesday', '1', 2023, 1),
(369, '2023-01-05', 'Thursday', '1', 2023, 1),
(370, '2023-01-06', 'Friday', '1', 2023, 1),
(371, '2023-01-07', 'Saturday', '1', 2023, 1),
(372, '2023-01-08', 'Sunday', '1', 2023, 1),
(373, '2023-01-09', 'Monday', '1', 2023, 1),
(374, '2023-01-10', 'Tuesday', '1', 2023, 1),
(375, '2023-01-11', 'Wednesday', '1', 2023, 1),
(376, '2023-01-12', 'Thursday', '1', 2023, 1),
(377, '2023-01-13', 'Friday', '1', 2023, 1),
(378, '2023-01-14', 'Saturday', '1', 2023, 1),
(379, '2023-01-15', 'Sunday', '1', 2023, 1),
(380, '2023-01-16', 'Monday', '1', 2023, 1),
(381, '2023-01-17', 'Tuesday', '1', 2023, 1),
(382, '2023-01-18', 'Wednesday', '1', 2023, 1),
(383, '2023-01-19', 'Thursday', '1', 2023, 1),
(384, '2023-01-20', 'Friday', '1', 2023, 1),
(385, '2023-01-21', 'Saturday', '1', 2023, 1),
(386, '2023-01-22', 'Sunday', '1', 2023, 1),
(387, '2023-01-23', 'Monday', '1', 2023, 1),
(388, '2023-01-24', 'Tuesday', '1', 2023, 1),
(389, '2023-01-25', 'Wednesday', '1', 2023, 1),
(390, '2023-01-26', 'Thursday', '1', 2023, 1),
(391, '2023-01-27', 'Friday', '1', 2023, 1),
(392, '2023-01-28', 'Saturday', '1', 2023, 1),
(393, '2023-01-29', 'Sunday', '1', 2023, 1),
(394, '2023-01-30', 'Monday', '1', 2023, 1),
(395, '2023-01-31', 'Tuesday', '1', 2023, 1),
(396, '2023-02-01', 'Wednesday', '2', 2023, 1),
(397, '2023-02-02', 'Thursday', '2', 2023, 1),
(398, '2023-02-03', 'Friday', '2', 2023, 1),
(399, '2023-02-04', 'Saturday', '2', 2023, 1),
(400, '2023-02-05', 'Sunday', '2', 2023, 1),
(401, '2023-02-06', 'Monday', '2', 2023, 1),
(402, '2023-02-07', 'Tuesday', '2', 2023, 1),
(403, '2023-02-08', 'Wednesday', '2', 2023, 1),
(404, '2023-02-09', 'Thursday', '2', 2023, 1),
(405, '2023-02-10', 'Friday', '2', 2023, 1),
(406, '2023-02-11', 'Saturday', '2', 2023, 1),
(407, '2023-02-12', 'Sunday', '2', 2023, 1),
(408, '2023-02-13', 'Monday', '2', 2023, 1),
(409, '2023-02-14', 'Tuesday', '2', 2023, 1),
(410, '2023-02-15', 'Wednesday', '2', 2023, 1),
(411, '2023-02-16', 'Thursday', '2', 2023, 1),
(412, '2023-02-17', 'Friday', '2', 2023, 1),
(413, '2023-02-18', 'Saturday', '2', 2023, 1),
(414, '2023-02-19', 'Sunday', '2', 2023, 1),
(415, '2023-02-20', 'Monday', '2', 2023, 1),
(416, '2023-02-21', 'Tuesday', '2', 2023, 1),
(417, '2023-02-22', 'Wednesday', '2', 2023, 1),
(418, '2023-02-23', 'Thursday', '2', 2023, 1),
(419, '2023-02-24', 'Friday', '2', 2023, 1),
(420, '2023-02-25', 'Saturday', '2', 2023, 1),
(421, '2023-02-26', 'Sunday', '2', 2023, 1),
(422, '2023-02-27', 'Monday', '2', 2023, 1),
(423, '2023-02-28', 'Tuesday', '2', 2023, 1),
(424, '2023-03-01', 'Wednesday', '3', 2023, 1),
(425, '2023-03-02', 'Thursday', '3', 2023, 1),
(426, '2023-03-03', 'Friday', '3', 2023, 1),
(427, '2023-03-04', 'Saturday', '3', 2023, 1),
(428, '2023-03-05', 'Sunday', '3', 2023, 1),
(429, '2023-03-06', 'Monday', '3', 2023, 1),
(430, '2023-03-07', 'Tuesday', '3', 2023, 1),
(431, '2023-03-08', 'Wednesday', '3', 2023, 1),
(432, '2023-03-09', 'Thursday', '3', 2023, 1),
(433, '2023-03-10', 'Friday', '3', 2023, 1),
(434, '2023-03-11', 'Saturday', '3', 2023, 1),
(435, '2023-03-12', 'Sunday', '3', 2023, 1),
(436, '2023-03-13', 'Monday', '3', 2023, 1),
(437, '2023-03-14', 'Tuesday', '3', 2023, 1),
(438, '2023-03-15', 'Wednesday', '3', 2023, 1),
(439, '2023-03-16', 'Thursday', '3', 2023, 1),
(440, '2023-03-17', 'Friday', '3', 2023, 1),
(441, '2023-03-18', 'Saturday', '3', 2023, 1),
(442, '2023-03-19', 'Sunday', '3', 2023, 1),
(443, '2023-03-20', 'Monday', '3', 2023, 1),
(444, '2023-03-21', 'Tuesday', '3', 2023, 1),
(445, '2023-03-22', 'Wednesday', '3', 2023, 1),
(446, '2023-03-23', 'Thursday', '3', 2023, 1),
(447, '2023-03-24', 'Friday', '3', 2023, 1),
(448, '2023-03-25', 'Saturday', '3', 2023, 1),
(449, '2023-03-26', 'Sunday', '3', 2023, 1),
(450, '2023-03-27', 'Monday', '3', 2023, 1),
(451, '2023-03-28', 'Tuesday', '3', 2023, 1),
(452, '2023-03-29', 'Wednesday', '3', 2023, 1),
(453, '2023-03-30', 'Thursday', '3', 2023, 1),
(454, '2023-03-31', 'Friday', '3', 2023, 1),
(455, '2023-04-01', 'Saturday', '4', 2023, 2),
(456, '2023-04-02', 'Sunday', '4', 2023, 2),
(457, '2023-04-03', 'Monday', '4', 2023, 2),
(458, '2023-04-04', 'Tuesday', '4', 2023, 2),
(459, '2023-04-05', 'Wednesday', '4', 2023, 2),
(460, '2023-04-06', 'Thursday', '4', 2023, 2),
(461, '2023-04-07', 'Friday', '4', 2023, 2),
(462, '2023-04-08', 'Saturday', '4', 2023, 2),
(463, '2023-04-09', 'Sunday', '4', 2023, 2),
(464, '2023-04-10', 'Monday', '4', 2023, 2),
(465, '2023-04-11', 'Tuesday', '4', 2023, 2),
(466, '2023-04-12', 'Wednesday', '4', 2023, 2),
(467, '2023-04-13', 'Thursday', '4', 2023, 2),
(468, '2023-04-14', 'Friday', '4', 2023, 2),
(469, '2023-04-15', 'Saturday', '4', 2023, 2),
(470, '2023-04-16', 'Sunday', '4', 2023, 2),
(471, '2023-04-17', 'Monday', '4', 2023, 2),
(472, '2023-04-18', 'Tuesday', '4', 2023, 2),
(473, '2023-04-19', 'Wednesday', '4', 2023, 2),
(474, '2023-04-20', 'Thursday', '4', 2023, 2),
(475, '2023-04-21', 'Friday', '4', 2023, 2),
(476, '2023-04-22', 'Saturday', '4', 2023, 2),
(477, '2023-04-23', 'Sunday', '4', 2023, 2),
(478, '2023-04-24', 'Monday', '4', 2023, 2),
(479, '2023-04-25', 'Tuesday', '4', 2023, 2),
(480, '2023-04-26', 'Wednesday', '4', 2023, 2),
(481, '2023-04-27', 'Thursday', '4', 2023, 2),
(482, '2023-04-28', 'Friday', '4', 2023, 2),
(483, '2023-04-29', 'Saturday', '4', 2023, 2),
(484, '2023-04-30', 'Sunday', '4', 2023, 2),
(485, '2023-05-01', 'Monday', '5', 2023, 2),
(486, '2023-05-02', 'Tuesday', '5', 2023, 2),
(487, '2023-05-03', 'Wednesday', '5', 2023, 2),
(488, '2023-05-04', 'Thursday', '5', 2023, 2),
(489, '2023-05-05', 'Friday', '5', 2023, 2),
(490, '2023-05-06', 'Saturday', '5', 2023, 2),
(491, '2023-05-07', 'Sunday', '5', 2023, 2),
(492, '2023-05-08', 'Monday', '5', 2023, 2),
(493, '2023-05-09', 'Tuesday', '5', 2023, 2),
(494, '2023-05-10', 'Wednesday', '5', 2023, 2),
(495, '2023-05-11', 'Thursday', '5', 2023, 2),
(496, '2023-05-12', 'Friday', '5', 2023, 2),
(497, '2023-05-13', 'Saturday', '5', 2023, 2),
(498, '2023-05-14', 'Sunday', '5', 2023, 2),
(499, '2023-05-15', 'Monday', '5', 2023, 2),
(500, '2023-05-16', 'Tuesday', '5', 2023, 2),
(501, '2023-05-17', 'Wednesday', '5', 2023, 2),
(502, '2023-05-18', 'Thursday', '5', 2023, 2),
(503, '2023-05-19', 'Friday', '5', 2023, 2),
(504, '2023-05-20', 'Saturday', '5', 2023, 2),
(505, '2023-05-21', 'Sunday', '5', 2023, 2),
(506, '2023-05-22', 'Monday', '5', 2023, 2),
(507, '2023-05-23', 'Tuesday', '5', 2023, 2),
(508, '2023-05-24', 'Wednesday', '5', 2023, 2),
(509, '2023-05-25', 'Thursday', '5', 2023, 2),
(510, '2023-05-26', 'Friday', '5', 2023, 2),
(511, '2023-05-27', 'Saturday', '5', 2023, 2),
(512, '2023-05-28', 'Sunday', '5', 2023, 2),
(513, '2023-05-29', 'Monday', '5', 2023, 2),
(514, '2023-05-30', 'Tuesday', '5', 2023, 2),
(515, '2023-05-31', 'Wednesday', '5', 2023, 2),
(516, '2023-06-01', 'Thursday', '6', 2023, 2),
(517, '2023-06-02', 'Friday', '6', 2023, 2),
(518, '2023-06-03', 'Saturday', '6', 2023, 2),
(519, '2023-06-04', 'Sunday', '6', 2023, 2),
(520, '2023-06-05', 'Monday', '6', 2023, 2),
(521, '2023-06-06', 'Tuesday', '6', 2023, 2),
(522, '2023-06-07', 'Wednesday', '6', 2023, 2),
(523, '2023-06-08', 'Thursday', '6', 2023, 2),
(524, '2023-06-09', 'Friday', '6', 2023, 2),
(525, '2023-06-10', 'Saturday', '6', 2023, 2),
(526, '2023-06-11', 'Sunday', '6', 2023, 2),
(527, '2023-06-12', 'Monday', '6', 2023, 2),
(528, '2023-06-13', 'Tuesday', '6', 2023, 2),
(529, '2023-06-14', 'Wednesday', '6', 2023, 2),
(530, '2023-06-15', 'Thursday', '6', 2023, 2),
(531, '2023-06-16', 'Friday', '6', 2023, 2),
(532, '2023-06-17', 'Saturday', '6', 2023, 2),
(533, '2023-06-18', 'Sunday', '6', 2023, 2),
(534, '2023-06-19', 'Monday', '6', 2023, 2),
(535, '2023-06-20', 'Tuesday', '6', 2023, 2),
(536, '2023-06-21', 'Wednesday', '6', 2023, 2),
(537, '2023-06-22', 'Thursday', '6', 2023, 2),
(538, '2023-06-23', 'Friday', '6', 2023, 2),
(539, '2023-06-24', 'Saturday', '6', 2023, 2),
(540, '2023-06-25', 'Sunday', '6', 2023, 2),
(541, '2023-06-26', 'Monday', '6', 2023, 2),
(542, '2023-06-27', 'Tuesday', '6', 2023, 2),
(543, '2023-06-28', 'Wednesday', '6', 2023, 2),
(544, '2023-06-29', 'Thursday', '6', 2023, 2),
(545, '2023-06-30', 'Friday', '6', 2023, 2),
(546, '2023-07-01', 'Saturday', '7', 2023, 3),
(547, '2023-07-02', 'Sunday', '7', 2023, 3),
(548, '2023-07-03', 'Monday', '7', 2023, 3),
(549, '2023-07-04', 'Tuesday', '7', 2023, 3),
(550, '2023-07-05', 'Wednesday', '7', 2023, 3),
(551, '2023-07-06', 'Thursday', '7', 2023, 3),
(552, '2023-07-07', 'Friday', '7', 2023, 3),
(553, '2023-07-08', 'Saturday', '7', 2023, 3),
(554, '2023-07-09', 'Sunday', '7', 2023, 3),
(555, '2023-07-10', 'Monday', '7', 2023, 3),
(556, '2023-07-11', 'Tuesday', '7', 2023, 3),
(557, '2023-07-12', 'Wednesday', '7', 2023, 3),
(558, '2023-07-13', 'Thursday', '7', 2023, 3),
(559, '2023-07-14', 'Friday', '7', 2023, 3),
(560, '2023-07-15', 'Saturday', '7', 2023, 3),
(561, '2023-07-16', 'Sunday', '7', 2023, 3),
(562, '2023-07-17', 'Monday', '7', 2023, 3),
(563, '2023-07-18', 'Tuesday', '7', 2023, 3),
(564, '2023-07-19', 'Wednesday', '7', 2023, 3),
(565, '2023-07-20', 'Thursday', '7', 2023, 3),
(566, '2023-07-21', 'Friday', '7', 2023, 3),
(567, '2023-07-22', 'Saturday', '7', 2023, 3),
(568, '2023-07-23', 'Sunday', '7', 2023, 3),
(569, '2023-07-24', 'Monday', '7', 2023, 3),
(570, '2023-07-25', 'Tuesday', '7', 2023, 3),
(571, '2023-07-26', 'Wednesday', '7', 2023, 3),
(572, '2023-07-27', 'Thursday', '7', 2023, 3),
(573, '2023-07-28', 'Friday', '7', 2023, 3),
(574, '2023-07-29', 'Saturday', '7', 2023, 3),
(575, '2023-07-30', 'Sunday', '7', 2023, 3),
(576, '2023-07-31', 'Monday', '7', 2023, 3),
(577, '2023-08-01', 'Tuesday', '8', 2023, 3),
(578, '2023-08-02', 'Wednesday', '8', 2023, 3),
(579, '2023-08-03', 'Thursday', '8', 2023, 3),
(580, '2023-08-04', 'Friday', '8', 2023, 3),
(581, '2023-08-05', 'Saturday', '8', 2023, 3),
(582, '2023-08-06', 'Sunday', '8', 2023, 3),
(583, '2023-08-07', 'Monday', '8', 2023, 3),
(584, '2023-08-08', 'Tuesday', '8', 2023, 3),
(585, '2023-08-09', 'Wednesday', '8', 2023, 3),
(586, '2023-08-10', 'Thursday', '8', 2023, 3),
(587, '2023-08-11', 'Friday', '8', 2023, 3),
(588, '2023-08-12', 'Saturday', '8', 2023, 3),
(589, '2023-08-13', 'Sunday', '8', 2023, 3),
(590, '2023-08-14', 'Monday', '8', 2023, 3),
(591, '2023-08-15', 'Tuesday', '8', 2023, 3),
(592, '2023-08-16', 'Wednesday', '8', 2023, 3),
(593, '2023-08-17', 'Thursday', '8', 2023, 3),
(594, '2023-08-18', 'Friday', '8', 2023, 3),
(595, '2023-08-19', 'Saturday', '8', 2023, 3),
(596, '2023-08-20', 'Sunday', '8', 2023, 3),
(597, '2023-08-21', 'Monday', '8', 2023, 3),
(598, '2023-08-22', 'Tuesday', '8', 2023, 3),
(599, '2023-08-23', 'Wednesday', '8', 2023, 3),
(600, '2023-08-24', 'Thursday', '8', 2023, 3),
(601, '2023-08-25', 'Friday', '8', 2023, 3),
(602, '2023-08-26', 'Saturday', '8', 2023, 3),
(603, '2023-08-27', 'Sunday', '8', 2023, 3),
(604, '2023-08-28', 'Monday', '8', 2023, 3),
(605, '2023-08-29', 'Tuesday', '8', 2023, 3),
(606, '2023-08-30', 'Wednesday', '8', 2023, 3),
(607, '2023-08-31', 'Thursday', '8', 2023, 3),
(608, '2023-09-01', 'Friday', '9', 2023, 3),
(609, '2023-09-02', 'Saturday', '9', 2023, 3),
(610, '2023-09-03', 'Sunday', '9', 2023, 3),
(611, '2023-09-04', 'Monday', '9', 2023, 3),
(612, '2023-09-05', 'Tuesday', '9', 2023, 3),
(613, '2023-09-06', 'Wednesday', '9', 2023, 3),
(614, '2023-09-07', 'Thursday', '9', 2023, 3),
(615, '2023-09-08', 'Friday', '9', 2023, 3),
(616, '2023-09-09', 'Saturday', '9', 2023, 3),
(617, '2023-09-10', 'Sunday', '9', 2023, 3),
(618, '2023-09-11', 'Monday', '9', 2023, 3),
(619, '2023-09-12', 'Tuesday', '9', 2023, 3),
(620, '2023-09-13', 'Wednesday', '9', 2023, 3),
(621, '2023-09-14', 'Thursday', '9', 2023, 3),
(622, '2023-09-15', 'Friday', '9', 2023, 3),
(623, '2023-09-16', 'Saturday', '9', 2023, 3),
(624, '2023-09-17', 'Sunday', '9', 2023, 3),
(625, '2023-09-18', 'Monday', '9', 2023, 3),
(626, '2023-09-19', 'Tuesday', '9', 2023, 3),
(627, '2023-09-20', 'Wednesday', '9', 2023, 3),
(628, '2023-09-21', 'Thursday', '9', 2023, 3),
(629, '2023-09-22', 'Friday', '9', 2023, 3),
(630, '2023-09-23', 'Saturday', '9', 2023, 3),
(631, '2023-09-24', 'Sunday', '9', 2023, 3),
(632, '2023-09-25', 'Monday', '9', 2023, 3),
(633, '2023-09-26', 'Tuesday', '9', 2023, 3),
(634, '2023-09-27', 'Wednesday', '9', 2023, 3),
(635, '2023-09-28', 'Thursday', '9', 2023, 3),
(636, '2023-09-29', 'Friday', '9', 2023, 3),
(637, '2023-09-30', 'Saturday', '9', 2023, 3),
(638, '2023-10-01', 'Sunday', '10', 2023, 4),
(639, '2023-10-02', 'Monday', '10', 2023, 4),
(640, '2023-10-03', 'Tuesday', '10', 2023, 4),
(641, '2023-10-04', 'Wednesday', '10', 2023, 4),
(642, '2023-10-05', 'Thursday', '10', 2023, 4),
(643, '2023-10-06', 'Friday', '10', 2023, 4),
(644, '2023-10-07', 'Saturday', '10', 2023, 4),
(645, '2023-10-08', 'Sunday', '10', 2023, 4),
(646, '2023-10-09', 'Monday', '10', 2023, 4),
(647, '2023-10-10', 'Tuesday', '10', 2023, 4),
(648, '2023-10-11', 'Wednesday', '10', 2023, 4),
(649, '2023-10-12', 'Thursday', '10', 2023, 4),
(650, '2023-10-13', 'Friday', '10', 2023, 4),
(651, '2023-10-14', 'Saturday', '10', 2023, 4),
(652, '2023-10-15', 'Sunday', '10', 2023, 4),
(653, '2023-10-16', 'Monday', '10', 2023, 4),
(654, '2023-10-17', 'Tuesday', '10', 2023, 4),
(655, '2023-10-18', 'Wednesday', '10', 2023, 4),
(656, '2023-10-19', 'Thursday', '10', 2023, 4),
(657, '2023-10-20', 'Friday', '10', 2023, 4),
(658, '2023-10-21', 'Saturday', '10', 2023, 4),
(659, '2023-10-22', 'Sunday', '10', 2023, 4),
(660, '2023-10-23', 'Monday', '10', 2023, 4),
(661, '2023-10-24', 'Tuesday', '10', 2023, 4),
(662, '2023-10-25', 'Wednesday', '10', 2023, 4),
(663, '2023-10-26', 'Thursday', '10', 2023, 4),
(664, '2023-10-27', 'Friday', '10', 2023, 4),
(665, '2023-10-28', 'Saturday', '10', 2023, 4),
(666, '2023-10-29', 'Sunday', '10', 2023, 4),
(667, '2023-10-30', 'Monday', '10', 2023, 4),
(668, '2023-10-31', 'Tuesday', '10', 2023, 4),
(669, '2023-11-01', 'Wednesday', '11', 2023, 4),
(670, '2023-11-02', 'Thursday', '11', 2023, 4),
(671, '2023-11-03', 'Friday', '11', 2023, 4),
(672, '2023-11-04', 'Saturday', '11', 2023, 4),
(673, '2023-11-05', 'Sunday', '11', 2023, 4),
(674, '2023-11-06', 'Monday', '11', 2023, 4),
(675, '2023-11-07', 'Tuesday', '11', 2023, 4),
(676, '2023-11-08', 'Wednesday', '11', 2023, 4),
(677, '2023-11-09', 'Thursday', '11', 2023, 4),
(678, '2023-11-10', 'Friday', '11', 2023, 4),
(679, '2023-11-11', 'Saturday', '11', 2023, 4),
(680, '2023-11-12', 'Sunday', '11', 2023, 4),
(681, '2023-11-13', 'Monday', '11', 2023, 4),
(682, '2023-11-14', 'Tuesday', '11', 2023, 4),
(683, '2023-11-15', 'Wednesday', '11', 2023, 4),
(684, '2023-11-16', 'Thursday', '11', 2023, 4),
(685, '2023-11-17', 'Friday', '11', 2023, 4),
(686, '2023-11-18', 'Saturday', '11', 2023, 4),
(687, '2023-11-19', 'Sunday', '11', 2023, 4),
(688, '2023-11-20', 'Monday', '11', 2023, 4),
(689, '2023-11-21', 'Tuesday', '11', 2023, 4),
(690, '2023-11-22', 'Wednesday', '11', 2023, 4),
(691, '2023-11-23', 'Thursday', '11', 2023, 4),
(692, '2023-11-24', 'Friday', '11', 2023, 4),
(693, '2023-11-25', 'Saturday', '11', 2023, 4),
(694, '2023-11-26', 'Sunday', '11', 2023, 4),
(695, '2023-11-27', 'Monday', '11', 2023, 4),
(696, '2023-11-28', 'Tuesday', '11', 2023, 4),
(697, '2023-11-29', 'Wednesday', '11', 2023, 4),
(698, '2023-11-30', 'Thursday', '11', 2023, 4),
(699, '2023-12-01', 'Friday', '12', 2023, 4),
(700, '2023-12-02', 'Saturday', '12', 2023, 4),
(701, '2023-12-03', 'Sunday', '12', 2023, 4),
(702, '2023-12-04', 'Monday', '12', 2023, 4),
(703, '2023-12-05', 'Tuesday', '12', 2023, 4),
(704, '2023-12-06', 'Wednesday', '12', 2023, 4),
(705, '2023-12-07', 'Thursday', '12', 2023, 4),
(706, '2023-12-08', 'Friday', '12', 2023, 4),
(707, '2023-12-09', 'Saturday', '12', 2023, 4),
(708, '2023-12-10', 'Sunday', '12', 2023, 4),
(709, '2023-12-11', 'Monday', '12', 2023, 4),
(710, '2023-12-12', 'Tuesday', '12', 2023, 4),
(711, '2023-12-13', 'Wednesday', '12', 2023, 4),
(712, '2023-12-14', 'Thursday', '12', 2023, 4),
(713, '2023-12-15', 'Friday', '12', 2023, 4),
(714, '2023-12-16', 'Saturday', '12', 2023, 4),
(715, '2023-12-17', 'Sunday', '12', 2023, 4),
(716, '2023-12-18', 'Monday', '12', 2023, 4),
(717, '2023-12-19', 'Tuesday', '12', 2023, 4),
(718, '2023-12-20', 'Wednesday', '12', 2023, 4),
(719, '2023-12-21', 'Thursday', '12', 2023, 4),
(720, '2023-12-22', 'Friday', '12', 2023, 4),
(721, '2023-12-23', 'Saturday', '12', 2023, 4),
(722, '2023-12-24', 'Sunday', '12', 2023, 4),
(723, '2023-12-25', 'Monday', '12', 2023, 4),
(724, '2023-12-26', 'Tuesday', '12', 2023, 4),
(725, '2023-12-27', 'Wednesday', '12', 2023, 4),
(726, '2023-12-28', 'Thursday', '12', 2023, 4),
(727, '2023-12-29', 'Friday', '12', 2023, 4),
(728, '2023-12-30', 'Saturday', '12', 2023, 4),
(729, '2023-12-31', 'Sunday', '12', 2023, 4),
(730, '2024-01-01', 'Monday', '1', 2024, 1),
(731, '2024-01-02', 'Tuesday', '1', 2024, 1),
(732, '2024-01-03', 'Wednesday', '1', 2024, 1),
(733, '2024-01-04', 'Thursday', '1', 2024, 1),
(734, '2024-01-05', 'Friday', '1', 2024, 1),
(735, '2024-01-06', 'Saturday', '1', 2024, 1),
(736, '2024-01-07', 'Sunday', '1', 2024, 1),
(737, '2024-01-08', 'Monday', '1', 2024, 1),
(738, '2024-01-09', 'Tuesday', '1', 2024, 1),
(739, '2024-01-10', 'Wednesday', '1', 2024, 1),
(740, '2024-01-11', 'Thursday', '1', 2024, 1),
(741, '2024-01-12', 'Friday', '1', 2024, 1),
(742, '2024-01-13', 'Saturday', '1', 2024, 1),
(743, '2024-01-14', 'Sunday', '1', 2024, 1),
(744, '2024-01-15', 'Monday', '1', 2024, 1),
(745, '2024-01-16', 'Tuesday', '1', 2024, 1),
(746, '2024-01-17', 'Wednesday', '1', 2024, 1),
(747, '2024-01-18', 'Thursday', '1', 2024, 1),
(748, '2024-01-19', 'Friday', '1', 2024, 1),
(749, '2024-01-20', 'Saturday', '1', 2024, 1),
(750, '2024-01-21', 'Sunday', '1', 2024, 1),
(751, '2024-01-22', 'Monday', '1', 2024, 1),
(752, '2024-01-23', 'Tuesday', '1', 2024, 1),
(753, '2024-01-24', 'Wednesday', '1', 2024, 1),
(754, '2024-01-25', 'Thursday', '1', 2024, 1),
(755, '2024-01-26', 'Friday', '1', 2024, 1),
(756, '2024-01-27', 'Saturday', '1', 2024, 1),
(757, '2024-01-28', 'Sunday', '1', 2024, 1),
(758, '2024-01-29', 'Monday', '1', 2024, 1),
(759, '2024-01-30', 'Tuesday', '1', 2024, 1),
(760, '2024-01-31', 'Wednesday', '1', 2024, 1),
(761, '2024-02-01', 'Thursday', '2', 2024, 1),
(762, '2024-02-02', 'Friday', '2', 2024, 1),
(763, '2024-02-03', 'Saturday', '2', 2024, 1),
(764, '2024-02-04', 'Sunday', '2', 2024, 1),
(765, '2024-02-05', 'Monday', '2', 2024, 1),
(766, '2024-02-06', 'Tuesday', '2', 2024, 1),
(767, '2024-02-07', 'Wednesday', '2', 2024, 1),
(768, '2024-02-08', 'Thursday', '2', 2024, 1),
(769, '2024-02-09', 'Friday', '2', 2024, 1),
(770, '2024-02-10', 'Saturday', '2', 2024, 1),
(771, '2024-02-11', 'Sunday', '2', 2024, 1),
(772, '2024-02-12', 'Monday', '2', 2024, 1),
(773, '2024-02-13', 'Tuesday', '2', 2024, 1),
(774, '2024-02-14', 'Wednesday', '2', 2024, 1),
(775, '2024-02-15', 'Thursday', '2', 2024, 1),
(776, '2024-02-16', 'Friday', '2', 2024, 1),
(777, '2024-02-17', 'Saturday', '2', 2024, 1),
(778, '2024-02-18', 'Sunday', '2', 2024, 1),
(779, '2024-02-19', 'Monday', '2', 2024, 1),
(780, '2024-02-20', 'Tuesday', '2', 2024, 1),
(781, '2024-02-21', 'Wednesday', '2', 2024, 1),
(782, '2024-02-22', 'Thursday', '2', 2024, 1),
(783, '2024-02-23', 'Friday', '2', 2024, 1),
(784, '2024-02-24', 'Saturday', '2', 2024, 1),
(785, '2024-02-25', 'Sunday', '2', 2024, 1),
(786, '2024-02-26', 'Monday', '2', 2024, 1),
(787, '2024-02-27', 'Tuesday', '2', 2024, 1),
(788, '2024-02-28', 'Wednesday', '2', 2024, 1),
(789, '2024-02-29', 'Thursday', '2', 2024, 1),
(790, '2024-03-01', 'Friday', '3', 2024, 1),
(791, '2024-03-02', 'Saturday', '3', 2024, 1),
(792, '2024-03-03', 'Sunday', '3', 2024, 1),
(793, '2024-03-04', 'Monday', '3', 2024, 1),
(794, '2024-03-05', 'Tuesday', '3', 2024, 1),
(795, '2024-03-06', 'Wednesday', '3', 2024, 1),
(796, '2024-03-07', 'Thursday', '3', 2024, 1),
(797, '2024-03-08', 'Friday', '3', 2024, 1),
(798, '2024-03-09', 'Saturday', '3', 2024, 1),
(799, '2024-03-10', 'Sunday', '3', 2024, 1),
(800, '2024-03-11', 'Monday', '3', 2024, 1),
(801, '2024-03-12', 'Tuesday', '3', 2024, 1),
(802, '2024-03-13', 'Wednesday', '3', 2024, 1),
(803, '2024-03-14', 'Thursday', '3', 2024, 1),
(804, '2024-03-15', 'Friday', '3', 2024, 1),
(805, '2024-03-16', 'Saturday', '3', 2024, 1),
(806, '2024-03-17', 'Sunday', '3', 2024, 1),
(807, '2024-03-18', 'Monday', '3', 2024, 1),
(808, '2024-03-19', 'Tuesday', '3', 2024, 1),
(809, '2024-03-20', 'Wednesday', '3', 2024, 1),
(810, '2024-03-21', 'Thursday', '3', 2024, 1),
(811, '2024-03-22', 'Friday', '3', 2024, 1),
(812, '2024-03-23', 'Saturday', '3', 2024, 1),
(813, '2024-03-24', 'Sunday', '3', 2024, 1),
(814, '2024-03-25', 'Monday', '3', 2024, 1),
(815, '2024-03-26', 'Tuesday', '3', 2024, 1),
(816, '2024-03-27', 'Wednesday', '3', 2024, 1),
(817, '2024-03-28', 'Thursday', '3', 2024, 1),
(818, '2024-03-29', 'Friday', '3', 2024, 1),
(819, '2024-03-30', 'Saturday', '3', 2024, 1),
(820, '2024-03-31', 'Sunday', '3', 2024, 1),
(821, '2024-04-01', 'Monday', '4', 2024, 2),
(822, '2024-04-02', 'Tuesday', '4', 2024, 2),
(823, '2024-04-03', 'Wednesday', '4', 2024, 2),
(824, '2024-04-04', 'Thursday', '4', 2024, 2),
(825, '2024-04-05', 'Friday', '4', 2024, 2),
(826, '2024-04-06', 'Saturday', '4', 2024, 2),
(827, '2024-04-07', 'Sunday', '4', 2024, 2),
(828, '2024-04-08', 'Monday', '4', 2024, 2),
(829, '2024-04-09', 'Tuesday', '4', 2024, 2),
(830, '2024-04-10', 'Wednesday', '4', 2024, 2),
(831, '2024-04-11', 'Thursday', '4', 2024, 2),
(832, '2024-04-12', 'Friday', '4', 2024, 2),
(833, '2024-04-13', 'Saturday', '4', 2024, 2),
(834, '2024-04-14', 'Sunday', '4', 2024, 2),
(835, '2024-04-15', 'Monday', '4', 2024, 2),
(836, '2024-04-16', 'Tuesday', '4', 2024, 2),
(837, '2024-04-17', 'Wednesday', '4', 2024, 2),
(838, '2024-04-18', 'Thursday', '4', 2024, 2),
(839, '2024-04-19', 'Friday', '4', 2024, 2),
(840, '2024-04-20', 'Saturday', '4', 2024, 2),
(841, '2024-04-21', 'Sunday', '4', 2024, 2),
(842, '2024-04-22', 'Monday', '4', 2024, 2),
(843, '2024-04-23', 'Tuesday', '4', 2024, 2),
(844, '2024-04-24', 'Wednesday', '4', 2024, 2),
(845, '2024-04-25', 'Thursday', '4', 2024, 2),
(846, '2024-04-26', 'Friday', '4', 2024, 2),
(847, '2024-04-27', 'Saturday', '4', 2024, 2),
(848, '2024-04-28', 'Sunday', '4', 2024, 2),
(849, '2024-04-29', 'Monday', '4', 2024, 2),
(850, '2024-04-30', 'Tuesday', '4', 2024, 2),
(851, '2024-05-01', 'Wednesday', '5', 2024, 2),
(852, '2024-05-02', 'Thursday', '5', 2024, 2),
(853, '2024-05-03', 'Friday', '5', 2024, 2),
(854, '2024-05-04', 'Saturday', '5', 2024, 2),
(855, '2024-05-05', 'Sunday', '5', 2024, 2),
(856, '2024-05-06', 'Monday', '5', 2024, 2),
(857, '2024-05-07', 'Tuesday', '5', 2024, 2),
(858, '2024-05-08', 'Wednesday', '5', 2024, 2),
(859, '2024-05-09', 'Thursday', '5', 2024, 2),
(860, '2024-05-10', 'Friday', '5', 2024, 2),
(861, '2024-05-11', 'Saturday', '5', 2024, 2),
(862, '2024-05-12', 'Sunday', '5', 2024, 2),
(863, '2024-05-13', 'Monday', '5', 2024, 2),
(864, '2024-05-14', 'Tuesday', '5', 2024, 2),
(865, '2024-05-15', 'Wednesday', '5', 2024, 2),
(866, '2024-05-16', 'Thursday', '5', 2024, 2),
(867, '2024-05-17', 'Friday', '5', 2024, 2),
(868, '2024-05-18', 'Saturday', '5', 2024, 2),
(869, '2024-05-19', 'Sunday', '5', 2024, 2),
(870, '2024-05-20', 'Monday', '5', 2024, 2),
(871, '2024-05-21', 'Tuesday', '5', 2024, 2),
(872, '2024-05-22', 'Wednesday', '5', 2024, 2),
(873, '2024-05-23', 'Thursday', '5', 2024, 2),
(874, '2024-05-24', 'Friday', '5', 2024, 2),
(875, '2024-05-25', 'Saturday', '5', 2024, 2),
(876, '2024-05-26', 'Sunday', '5', 2024, 2),
(877, '2024-05-27', 'Monday', '5', 2024, 2),
(878, '2024-05-28', 'Tuesday', '5', 2024, 2),
(879, '2024-05-29', 'Wednesday', '5', 2024, 2),
(880, '2024-05-30', 'Thursday', '5', 2024, 2),
(881, '2024-05-31', 'Friday', '5', 2024, 2),
(882, '2024-06-01', 'Saturday', '6', 2024, 2),
(883, '2024-06-02', 'Sunday', '6', 2024, 2),
(884, '2024-06-03', 'Monday', '6', 2024, 2),
(885, '2024-06-04', 'Tuesday', '6', 2024, 2),
(886, '2024-06-05', 'Wednesday', '6', 2024, 2),
(887, '2024-06-06', 'Thursday', '6', 2024, 2),
(888, '2024-06-07', 'Friday', '6', 2024, 2),
(889, '2024-06-08', 'Saturday', '6', 2024, 2),
(890, '2024-06-09', 'Sunday', '6', 2024, 2),
(891, '2024-06-10', 'Monday', '6', 2024, 2),
(892, '2024-06-11', 'Tuesday', '6', 2024, 2),
(893, '2024-06-12', 'Wednesday', '6', 2024, 2),
(894, '2024-06-13', 'Thursday', '6', 2024, 2),
(895, '2024-06-14', 'Friday', '6', 2024, 2),
(896, '2024-06-15', 'Saturday', '6', 2024, 2),
(897, '2024-06-16', 'Sunday', '6', 2024, 2),
(898, '2024-06-17', 'Monday', '6', 2024, 2),
(899, '2024-06-18', 'Tuesday', '6', 2024, 2),
(900, '2024-06-19', 'Wednesday', '6', 2024, 2),
(901, '2024-06-20', 'Thursday', '6', 2024, 2),
(902, '2024-06-21', 'Friday', '6', 2024, 2),
(903, '2024-06-22', 'Saturday', '6', 2024, 2),
(904, '2024-06-23', 'Sunday', '6', 2024, 2),
(905, '2024-06-24', 'Monday', '6', 2024, 2),
(906, '2024-06-25', 'Tuesday', '6', 2024, 2),
(907, '2024-06-26', 'Wednesday', '6', 2024, 2),
(908, '2024-06-27', 'Thursday', '6', 2024, 2),
(909, '2024-06-28', 'Friday', '6', 2024, 2),
(910, '2024-06-29', 'Saturday', '6', 2024, 2),
(911, '2024-06-30', 'Sunday', '6', 2024, 2),
(912, '2024-07-01', 'Monday', '7', 2024, 3),
(913, '2024-07-02', 'Tuesday', '7', 2024, 3),
(914, '2024-07-03', 'Wednesday', '7', 2024, 3),
(915, '2024-07-04', 'Thursday', '7', 2024, 3),
(916, '2024-07-05', 'Friday', '7', 2024, 3),
(917, '2024-07-06', 'Saturday', '7', 2024, 3),
(918, '2024-07-07', 'Sunday', '7', 2024, 3),
(919, '2024-07-08', 'Monday', '7', 2024, 3),
(920, '2024-07-09', 'Tuesday', '7', 2024, 3),
(921, '2024-07-10', 'Wednesday', '7', 2024, 3),
(922, '2024-07-11', 'Thursday', '7', 2024, 3),
(923, '2024-07-12', 'Friday', '7', 2024, 3),
(924, '2024-07-13', 'Saturday', '7', 2024, 3),
(925, '2024-07-14', 'Sunday', '7', 2024, 3),
(926, '2024-07-15', 'Monday', '7', 2024, 3),
(927, '2024-07-16', 'Tuesday', '7', 2024, 3),
(928, '2024-07-17', 'Wednesday', '7', 2024, 3),
(929, '2024-07-18', 'Thursday', '7', 2024, 3),
(930, '2024-07-19', 'Friday', '7', 2024, 3),
(931, '2024-07-20', 'Saturday', '7', 2024, 3),
(932, '2024-07-21', 'Sunday', '7', 2024, 3),
(933, '2024-07-22', 'Monday', '7', 2024, 3),
(934, '2024-07-23', 'Tuesday', '7', 2024, 3),
(935, '2024-07-24', 'Wednesday', '7', 2024, 3),
(936, '2024-07-25', 'Thursday', '7', 2024, 3),
(937, '2024-07-26', 'Friday', '7', 2024, 3),
(938, '2024-07-27', 'Saturday', '7', 2024, 3),
(939, '2024-07-28', 'Sunday', '7', 2024, 3),
(940, '2024-07-29', 'Monday', '7', 2024, 3),
(941, '2024-07-30', 'Tuesday', '7', 2024, 3),
(942, '2024-07-31', 'Wednesday', '7', 2024, 3),
(943, '2024-08-01', 'Thursday', '8', 2024, 3),
(944, '2024-08-02', 'Friday', '8', 2024, 3),
(945, '2024-08-03', 'Saturday', '8', 2024, 3),
(946, '2024-08-04', 'Sunday', '8', 2024, 3),
(947, '2024-08-05', 'Monday', '8', 2024, 3),
(948, '2024-08-06', 'Tuesday', '8', 2024, 3),
(949, '2024-08-07', 'Wednesday', '8', 2024, 3),
(950, '2024-08-08', 'Thursday', '8', 2024, 3),
(951, '2024-08-09', 'Friday', '8', 2024, 3),
(952, '2024-08-10', 'Saturday', '8', 2024, 3),
(953, '2024-08-11', 'Sunday', '8', 2024, 3),
(954, '2024-08-12', 'Monday', '8', 2024, 3),
(955, '2024-08-13', 'Tuesday', '8', 2024, 3),
(956, '2024-08-14', 'Wednesday', '8', 2024, 3),
(957, '2024-08-15', 'Thursday', '8', 2024, 3),
(958, '2024-08-16', 'Friday', '8', 2024, 3),
(959, '2024-08-17', 'Saturday', '8', 2024, 3),
(960, '2024-08-18', 'Sunday', '8', 2024, 3),
(961, '2024-08-19', 'Monday', '8', 2024, 3),
(962, '2024-08-20', 'Tuesday', '8', 2024, 3),
(963, '2024-08-21', 'Wednesday', '8', 2024, 3),
(964, '2024-08-22', 'Thursday', '8', 2024, 3),
(965, '2024-08-23', 'Friday', '8', 2024, 3),
(966, '2024-08-24', 'Saturday', '8', 2024, 3),
(967, '2024-08-25', 'Sunday', '8', 2024, 3),
(968, '2024-08-26', 'Monday', '8', 2024, 3),
(969, '2024-08-27', 'Tuesday', '8', 2024, 3),
(970, '2024-08-28', 'Wednesday', '8', 2024, 3),
(971, '2024-08-29', 'Thursday', '8', 2024, 3),
(972, '2024-08-30', 'Friday', '8', 2024, 3),
(973, '2024-08-31', 'Saturday', '8', 2024, 3),
(974, '2024-09-01', 'Sunday', '9', 2024, 3),
(975, '2024-09-02', 'Monday', '9', 2024, 3),
(976, '2024-09-03', 'Tuesday', '9', 2024, 3),
(977, '2024-09-04', 'Wednesday', '9', 2024, 3),
(978, '2024-09-05', 'Thursday', '9', 2024, 3),
(979, '2024-09-06', 'Friday', '9', 2024, 3),
(980, '2024-09-07', 'Saturday', '9', 2024, 3),
(981, '2024-09-08', 'Sunday', '9', 2024, 3),
(982, '2024-09-09', 'Monday', '9', 2024, 3),
(983, '2024-09-10', 'Tuesday', '9', 2024, 3),
(984, '2024-09-11', 'Wednesday', '9', 2024, 3),
(985, '2024-09-12', 'Thursday', '9', 2024, 3),
(986, '2024-09-13', 'Friday', '9', 2024, 3),
(987, '2024-09-14', 'Saturday', '9', 2024, 3),
(988, '2024-09-15', 'Sunday', '9', 2024, 3),
(989, '2024-09-16', 'Monday', '9', 2024, 3),
(990, '2024-09-17', 'Tuesday', '9', 2024, 3),
(991, '2024-09-18', 'Wednesday', '9', 2024, 3),
(992, '2024-09-19', 'Thursday', '9', 2024, 3),
(993, '2024-09-20', 'Friday', '9', 2024, 3),
(994, '2024-09-21', 'Saturday', '9', 2024, 3),
(995, '2024-09-22', 'Sunday', '9', 2024, 3),
(996, '2024-09-23', 'Monday', '9', 2024, 3),
(997, '2024-09-24', 'Tuesday', '9', 2024, 3),
(998, '2024-09-25', 'Wednesday', '9', 2024, 3),
(999, '2024-09-26', 'Thursday', '9', 2024, 3),
(1000, '2024-09-27', 'Friday', '9', 2024, 3),
(1001, '2024-09-28', 'Saturday', '9', 2024, 3),
(1002, '2024-09-29', 'Sunday', '9', 2024, 3),
(1003, '2024-09-30', 'Monday', '9', 2024, 3),
(1004, '2024-10-01', 'Tuesday', '10', 2024, 4),
(1005, '2024-10-02', 'Wednesday', '10', 2024, 4),
(1006, '2024-10-03', 'Thursday', '10', 2024, 4),
(1007, '2024-10-04', 'Friday', '10', 2024, 4),
(1008, '2024-10-05', 'Saturday', '10', 2024, 4),
(1009, '2024-10-06', 'Sunday', '10', 2024, 4),
(1010, '2024-10-07', 'Monday', '10', 2024, 4),
(1011, '2024-10-08', 'Tuesday', '10', 2024, 4),
(1012, '2024-10-09', 'Wednesday', '10', 2024, 4),
(1013, '2024-10-10', 'Thursday', '10', 2024, 4),
(1014, '2024-10-11', 'Friday', '10', 2024, 4),
(1015, '2024-10-12', 'Saturday', '10', 2024, 4),
(1016, '2024-10-13', 'Sunday', '10', 2024, 4),
(1017, '2024-10-14', 'Monday', '10', 2024, 4),
(1018, '2024-10-15', 'Tuesday', '10', 2024, 4),
(1019, '2024-10-16', 'Wednesday', '10', 2024, 4),
(1020, '2024-10-17', 'Thursday', '10', 2024, 4),
(1021, '2024-10-18', 'Friday', '10', 2024, 4),
(1022, '2024-10-19', 'Saturday', '10', 2024, 4),
(1023, '2024-10-20', 'Sunday', '10', 2024, 4),
(1024, '2024-10-21', 'Monday', '10', 2024, 4),
(1025, '2024-10-22', 'Tuesday', '10', 2024, 4),
(1026, '2024-10-23', 'Wednesday', '10', 2024, 4),
(1027, '2024-10-24', 'Thursday', '10', 2024, 4),
(1028, '2024-10-25', 'Friday', '10', 2024, 4),
(1029, '2024-10-26', 'Saturday', '10', 2024, 4),
(1030, '2024-10-27', 'Sunday', '10', 2024, 4),
(1031, '2024-10-28', 'Monday', '10', 2024, 4),
(1032, '2024-10-29', 'Tuesday', '10', 2024, 4),
(1033, '2024-10-30', 'Wednesday', '10', 2024, 4),
(1034, '2024-10-31', 'Thursday', '10', 2024, 4),
(1035, '2024-11-01', 'Friday', '11', 2024, 4),
(1036, '2024-11-02', 'Saturday', '11', 2024, 4),
(1037, '2024-11-03', 'Sunday', '11', 2024, 4),
(1038, '2024-11-04', 'Monday', '11', 2024, 4),
(1039, '2024-11-05', 'Tuesday', '11', 2024, 4),
(1040, '2024-11-06', 'Wednesday', '11', 2024, 4),
(1041, '2024-11-07', 'Thursday', '11', 2024, 4),
(1042, '2024-11-08', 'Friday', '11', 2024, 4),
(1043, '2024-11-09', 'Saturday', '11', 2024, 4),
(1044, '2024-11-10', 'Sunday', '11', 2024, 4),
(1045, '2024-11-11', 'Monday', '11', 2024, 4),
(1046, '2024-11-12', 'Tuesday', '11', 2024, 4),
(1047, '2024-11-13', 'Wednesday', '11', 2024, 4),
(1048, '2024-11-14', 'Thursday', '11', 2024, 4),
(1049, '2024-11-15', 'Friday', '11', 2024, 4),
(1050, '2024-11-16', 'Saturday', '11', 2024, 4),
(1051, '2024-11-17', 'Sunday', '11', 2024, 4),
(1052, '2024-11-18', 'Monday', '11', 2024, 4),
(1053, '2024-11-19', 'Tuesday', '11', 2024, 4),
(1054, '2024-11-20', 'Wednesday', '11', 2024, 4),
(1055, '2024-11-21', 'Thursday', '11', 2024, 4),
(1056, '2024-11-22', 'Friday', '11', 2024, 4),
(1057, '2024-11-23', 'Saturday', '11', 2024, 4),
(1058, '2024-11-24', 'Sunday', '11', 2024, 4),
(1059, '2024-11-25', 'Monday', '11', 2024, 4),
(1060, '2024-11-26', 'Tuesday', '11', 2024, 4),
(1061, '2024-11-27', 'Wednesday', '11', 2024, 4),
(1062, '2024-11-28', 'Thursday', '11', 2024, 4),
(1063, '2024-11-29', 'Friday', '11', 2024, 4),
(1064, '2024-11-30', 'Saturday', '11', 2024, 4),
(1065, '2024-12-01', 'Sunday', '12', 2024, 4),
(1066, '2024-12-02', 'Monday', '12', 2024, 4),
(1067, '2024-12-03', 'Tuesday', '12', 2024, 4),
(1068, '2024-12-04', 'Wednesday', '12', 2024, 4),
(1069, '2024-12-05', 'Thursday', '12', 2024, 4),
(1070, '2024-12-06', 'Friday', '12', 2024, 4),
(1071, '2024-12-07', 'Saturday', '12', 2024, 4),
(1072, '2024-12-08', 'Sunday', '12', 2024, 4),
(1073, '2024-12-09', 'Monday', '12', 2024, 4),
(1074, '2024-12-10', 'Tuesday', '12', 2024, 4),
(1075, '2024-12-11', 'Wednesday', '12', 2024, 4),
(1076, '2024-12-12', 'Thursday', '12', 2024, 4),
(1077, '2024-12-13', 'Friday', '12', 2024, 4),
(1078, '2024-12-14', 'Saturday', '12', 2024, 4),
(1079, '2024-12-15', 'Sunday', '12', 2024, 4),
(1080, '2024-12-16', 'Monday', '12', 2024, 4),
(1081, '2024-12-17', 'Tuesday', '12', 2024, 4),
(1082, '2024-12-18', 'Wednesday', '12', 2024, 4),
(1083, '2024-12-19', 'Thursday', '12', 2024, 4),
(1084, '2024-12-20', 'Friday', '12', 2024, 4),
(1085, '2024-12-21', 'Saturday', '12', 2024, 4),
(1086, '2024-12-22', 'Sunday', '12', 2024, 4),
(1087, '2024-12-23', 'Monday', '12', 2024, 4),
(1088, '2024-12-24', 'Tuesday', '12', 2024, 4),
(1089, '2024-12-25', 'Wednesday', '12', 2024, 4),
(1090, '2024-12-26', 'Thursday', '12', 2024, 4),
(1091, '2024-12-27', 'Friday', '12', 2024, 4),
(1092, '2024-12-28', 'Saturday', '12', 2024, 4),
(1093, '2024-12-29', 'Sunday', '12', 2024, 4),
(1094, '2024-12-30', 'Monday', '12', 2024, 4),
(1095, '2024-12-31', 'Tuesday', '12', 2024, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hechos_regimen`
--

CREATE TABLE `hechos_regimen` (
  `id_hecho` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_alimento` int(11) DEFAULT NULL,
  `id_tiempo` int(11) DEFAULT NULL,
  `id_regimen` int(11) DEFAULT NULL,
  `cantidad_porciones` int(11) DEFAULT NULL,
  `costo_total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hechos_regimen`
--

INSERT INTO `hechos_regimen` (`id_hecho`, `id_paciente`, `id_alimento`, `id_tiempo`, `id_regimen`, `cantidad_porciones`, `costo_total`) VALUES
(1, 1, 21, NULL, 4, 3, NULL),
(2, 1, 24, NULL, 4, 5, NULL),
(3, 1, 54, NULL, 4, 1, NULL),
(4, 1, 69, NULL, 4, 3, NULL),
(5, 1, 84, NULL, 4, 5, NULL),
(6, 1, 97, NULL, 4, 1, NULL),
(7, 1, 109, NULL, 4, 3, NULL),
(8, 2, 7, NULL, 2, 3, NULL),
(9, 2, 38, NULL, 2, 2, NULL),
(10, 2, 53, NULL, 2, 4, NULL),
(11, 2, 76, NULL, 2, 1, NULL),
(12, 2, 83, NULL, 2, 5, NULL),
(13, 2, 102, NULL, 2, 2, NULL),
(14, 2, 108, NULL, 2, 5, NULL),
(15, 3, 13, NULL, 2, 2, NULL),
(16, 3, 35, NULL, 2, 4, NULL),
(17, 3, 52, NULL, 2, 2, NULL),
(18, 3, 76, NULL, 2, 1, NULL),
(19, 3, 85, NULL, 2, 2, NULL),
(20, 3, 98, NULL, 2, 5, NULL),
(21, 3, 108, NULL, 2, 4, NULL),
(22, 4, 15, NULL, 1, 5, NULL),
(23, 4, 48, NULL, 1, 5, NULL),
(24, 4, 56, NULL, 1, 3, NULL),
(25, 4, 78, NULL, 1, 1, NULL),
(26, 4, 87, NULL, 1, 3, NULL),
(27, 4, 94, NULL, 1, 3, NULL),
(28, 4, 106, NULL, 1, 1, NULL),
(29, 5, 13, NULL, 1, 4, NULL),
(30, 5, 44, NULL, 1, 3, NULL),
(31, 5, 56, NULL, 1, 5, NULL),
(32, 5, 68, NULL, 1, 3, NULL),
(33, 5, 79, NULL, 1, 4, NULL),
(34, 5, 98, NULL, 1, 2, NULL),
(35, 5, 106, NULL, 1, 5, NULL),
(36, 6, 22, NULL, 2, 2, NULL),
(37, 6, 46, NULL, 2, 5, NULL),
(38, 6, 54, NULL, 2, 1, NULL),
(39, 6, 63, NULL, 2, 4, NULL),
(40, 6, 90, NULL, 2, 3, NULL),
(41, 6, 93, NULL, 2, 2, NULL),
(42, 6, 105, NULL, 2, 1, NULL),
(43, 7, 3, NULL, 2, 3, NULL),
(44, 7, 38, NULL, 2, 5, NULL),
(45, 7, 54, NULL, 2, 2, NULL),
(46, 7, 77, NULL, 2, 2, NULL),
(47, 7, 86, NULL, 2, 5, NULL),
(48, 7, 101, NULL, 2, 4, NULL),
(49, 7, 106, NULL, 2, 2, NULL),
(50, 8, 12, NULL, 4, 1, NULL),
(51, 8, 50, NULL, 4, 3, NULL),
(52, 8, 52, NULL, 4, 5, NULL),
(53, 8, 73, NULL, 4, 2, NULL),
(54, 8, 81, NULL, 4, 5, NULL),
(55, 8, 94, NULL, 4, 2, NULL),
(56, 8, 105, NULL, 4, 5, NULL),
(121, 1, 21, NULL, 4, 3, 40.71),
(122, 1, 24, NULL, 4, 5, 31.05),
(123, 1, 54, NULL, 4, 1, 11.55),
(124, 1, 69, NULL, 4, 3, 13.23),
(125, 1, 84, NULL, 4, 5, 91.45),
(126, 1, 97, NULL, 4, 1, 34.39),
(127, 1, 109, NULL, 4, 3, 17.55),
(128, 2, 7, NULL, 2, 3, 28.74),
(129, 2, 38, NULL, 2, 2, 17.06),
(130, 2, 53, NULL, 2, 4, 40.00),
(131, 2, 76, NULL, 2, 1, 9.81),
(132, 2, 83, NULL, 2, 5, 109.05),
(133, 2, 102, NULL, 2, 2, 10.00),
(134, 2, 108, NULL, 2, 5, 47.05),
(135, 3, 13, NULL, 2, 2, 18.90),
(136, 3, 35, NULL, 2, 4, 31.44),
(137, 3, 52, NULL, 2, 2, 21.04),
(138, 3, 76, NULL, 2, 1, 9.81),
(139, 3, 85, NULL, 2, 2, 31.04),
(140, 3, 98, NULL, 2, 5, 91.70),
(141, 3, 108, NULL, 2, 4, 37.64),
(142, 4, 15, NULL, 1, 5, 64.80),
(143, 4, 48, NULL, 1, 5, 29.35),
(144, 4, 56, NULL, 1, 3, 79.92),
(145, 4, 78, NULL, 1, 1, 9.41),
(146, 4, 87, NULL, 1, 3, 59.79),
(147, 4, 94, NULL, 1, 3, 84.09),
(148, 4, 106, NULL, 1, 1, 8.46),
(149, 5, 13, NULL, 1, 4, 37.80),
(150, 5, 44, NULL, 1, 3, 17.37),
(151, 5, 56, NULL, 1, 5, 133.20),
(152, 5, 68, NULL, 1, 3, 6.84),
(153, 5, 79, NULL, 1, 4, 75.60),
(154, 5, 98, NULL, 1, 2, 36.68),
(155, 5, 106, NULL, 1, 5, 42.30),
(156, 6, 22, NULL, 2, 2, 25.98),
(157, 6, 46, NULL, 2, 5, 29.65),
(158, 6, 54, NULL, 2, 1, 11.55),
(159, 6, 63, NULL, 2, 4, 18.88),
(160, 6, 90, NULL, 2, 3, 51.36),
(161, 6, 93, NULL, 2, 2, 26.94),
(162, 6, 105, NULL, 2, 1, 8.97),
(163, 7, 3, NULL, 2, 3, 40.98),
(164, 7, 38, NULL, 2, 5, 42.65),
(165, 7, 54, NULL, 2, 2, 23.10),
(166, 7, 77, NULL, 2, 2, 7.82),
(167, 7, 86, NULL, 2, 5, 77.35),
(168, 7, 101, NULL, 2, 4, 51.88),
(169, 7, 106, NULL, 2, 2, 16.92),
(170, 8, 12, NULL, 4, 1, 7.38),
(171, 8, 50, NULL, 4, 3, 22.74),
(172, 8, 52, NULL, 4, 5, 52.60),
(173, 8, 73, NULL, 4, 2, 27.40),
(174, 8, 81, NULL, 4, 5, 116.25),
(175, 8, 94, NULL, 4, 2, 56.06),
(176, 8, 105, NULL, 4, 5, 44.85);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `paciente_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `peso_inicial` decimal(5,2) NOT NULL,
  `peso_actual` decimal(5,2) NOT NULL,
  `regimen_id` int(11) DEFAULT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`paciente_id`, `nombre`, `edad`, `peso_inicial`, `peso_actual`, `regimen_id`, `fecha_registro`) VALUES
(1, 'Juan Pérez', 30, 85.50, 80.00, 1, '2024-11-13'),
(2, 'Ana García', 40, 72.00, 70.00, 2, '2024-11-02'),
(3, 'Luis Sánchez', 25, 95.00, 90.00, 3, '2024-11-22'),
(4, 'Carla López', 35, 68.00, 66.50, 4, '2024-11-25'),
(5, 'Marta Rodríguez', 50, 92.00, 88.00, 1, '2024-11-06'),
(6, 'José Martínez', 45, 102.50, 98.00, 2, '2024-11-18'),
(7, 'Claudia Fernández', 28, 78.00, 75.50, 3, '2024-11-21'),
(8, 'Pedro González', 38, 105.00, 102.00, 4, '2024-11-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `predicciones`
--

CREATE TABLE `predicciones` (
  `id` int(11) NOT NULL,
  `paciente_id` int(11) NOT NULL,
  `peso_predicho` float NOT NULL,
  `dias_futuros` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `predicciones`
--

INSERT INTO `predicciones` (`id`, `paciente_id`, `peso_predicho`, `dias_futuros`) VALUES
(1, 1, 76.4444, 46),
(2, 2, 74, 57),
(3, 3, 78.4444, 37),
(4, 4, 79.1111, 34),
(5, 5, 74.8889, 53),
(6, 6, 77.5556, 41),
(7, 7, 78.2222, 38),
(8, 8, 78, 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `id` int(11) NOT NULL,
  `paciente_id` int(11) NOT NULL,
  `tipo_promocion` varchar(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimenes`
--

CREATE TABLE `regimenes` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `costo_semanal` decimal(10,2) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regimenes`
--

INSERT INTO `regimenes` (`id`, `tipo`, `costo_semanal`, `descripcion`) VALUES
(1, 'Régimen A', 150.00, 'Descripción del régimen A'),
(2, 'Régimen B', 120.00, 'Descripción del régimen B'),
(3, 'Régimen C', 100.00, 'Descripción del régimen C'),
(4, 'Régimen D', 180.00, 'Descripción del régimen D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `paciente_id` int(11) NOT NULL,
  `peso` decimal(5,2) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `id` int(11) NOT NULL,
  `paciente_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `alimentos_consumidos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alimentos`
--
ALTER TABLE `alimentos`
  ADD PRIMARY KEY (`id_alimento`);

--
-- Indices de la tabla `detalle_regimen`
--
ALTER TABLE `detalle_regimen`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_alimento` (`id_alimento`),
  ADD KEY `id_regimen` (`id_regimen`),
  ADD KEY `fk_pacientes` (`paciente_id`);

--
-- Indices de la tabla `dim_alimentos`
--
ALTER TABLE `dim_alimentos`
  ADD PRIMARY KEY (`id_alimento`);

--
-- Indices de la tabla `dim_pacientes`
--
ALTER TABLE `dim_pacientes`
  ADD PRIMARY KEY (`paciente_id`);

--
-- Indices de la tabla `dim_regimenes`
--
ALTER TABLE `dim_regimenes`
  ADD PRIMARY KEY (`id_regimen`);

--
-- Indices de la tabla `dim_tiempo`
--
ALTER TABLE `dim_tiempo`
  ADD PRIMARY KEY (`id_tiempo`);

--
-- Indices de la tabla `hechos_regimen`
--
ALTER TABLE `hechos_regimen`
  ADD PRIMARY KEY (`id_hecho`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_alimento` (`id_alimento`),
  ADD KEY `id_tiempo` (`id_tiempo`),
  ADD KEY `id_regimen` (`id_regimen`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`paciente_id`),
  ADD KEY `fk_pacientes_regimenes` (`regimen_id`);

--
-- Indices de la tabla `predicciones`
--
ALTER TABLE `predicciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente_id` (`paciente_id`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente_id` (`paciente_id`);

--
-- Indices de la tabla `regimenes`
--
ALTER TABLE `regimenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente_id` (`paciente_id`);

--
-- Indices de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente_id` (`paciente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alimentos`
--
ALTER TABLE `alimentos`
  MODIFY `id_alimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `detalle_regimen`
--
ALTER TABLE `detalle_regimen`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT de la tabla `dim_tiempo`
--
ALTER TABLE `dim_tiempo`
  MODIFY `id_tiempo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1096;

--
-- AUTO_INCREMENT de la tabla `hechos_regimen`
--
ALTER TABLE `hechos_regimen`
  MODIFY `id_hecho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `paciente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `predicciones`
--
ALTER TABLE `predicciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regimenes`
--
ALTER TABLE `regimenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_regimen`
--
ALTER TABLE `detalle_regimen`
  ADD CONSTRAINT `detalle_regimen_ibfk_1` FOREIGN KEY (`id_alimento`) REFERENCES `alimentos` (`id_alimento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_regimen_ibfk_2` FOREIGN KEY (`id_regimen`) REFERENCES `regimenes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pacientes` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hechos_regimen`
--
ALTER TABLE `hechos_regimen`
  ADD CONSTRAINT `hechos_regimen_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `dim_pacientes` (`paciente_id`),
  ADD CONSTRAINT `hechos_regimen_ibfk_2` FOREIGN KEY (`id_alimento`) REFERENCES `dim_alimentos` (`id_alimento`),
  ADD CONSTRAINT `hechos_regimen_ibfk_3` FOREIGN KEY (`id_tiempo`) REFERENCES `dim_tiempo` (`id_tiempo`),
  ADD CONSTRAINT `hechos_regimen_ibfk_4` FOREIGN KEY (`id_regimen`) REFERENCES `dim_regimenes` (`id_regimen`);

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `fk_pacientes_regimenes` FOREIGN KEY (`regimen_id`) REFERENCES `regimenes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `predicciones`
--
ALTER TABLE `predicciones`
  ADD CONSTRAINT `predicciones_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`);

--
-- Filtros para la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD CONSTRAINT `promociones_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`);

--
-- Filtros para la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `resultados_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`);

--
-- Filtros para la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD CONSTRAINT `seguimiento_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
