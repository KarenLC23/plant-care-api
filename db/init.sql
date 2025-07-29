-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: PlantCareMysql
-- Tiempo de generación: 29-07-2025 a las 14:09:58
-- Versión del servidor: 5.6.51
-- Versión de PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `plant_care`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cares`
--

CREATE TABLE `cares` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `light` varchar(45) DEFAULT NULL,
  `irrigation` varchar(45) DEFAULT NULL,
  `temperature` varchar(45) DEFAULT NULL,
  `soil` varchar(45) DEFAULT NULL,
  `fertilizer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cares`
--

INSERT INTO `cares` (`id`, `name`, `light`, `irrigation`, `temperature`, `soil`, `fertilizer_id`, `created_at`, `updated_at`) VALUES
(1, 'Cuidado de Sansevieras', 'Indirecta', 'Muy Bajo', '13-24 °C', 'Arenoso', 13, '2024-09-24 19:40:00', '2024-10-15 00:30:15'),
(2, 'Cuidado de Palo de brasil', 'Indirecta', 'Moderado', '20-25 °C', 'Húmedo', 2, '2024-09-24 19:44:00', '2024-10-15 00:29:50'),
(3, 'Cuidado De Árbol De Jade', 'Brillante', 'Bajo', '15-24 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-10-17 03:33:49'),
(4, 'Cuidado de Anturio', 'Indirecta', 'Moderado', '18-24 °C', 'Húmedo', 6, '2024-09-24 19:45:00', '2024-10-15 00:29:54'),
(5, 'Cuidado de Chile', 'Brillante', 'Bajo', '20-30 °C', 'Arenoso', 11, '2024-09-24 19:45:00', '2024-10-15 00:29:58'),
(6, 'Cuidado de Aglonoema', 'Indirecta', 'Bajo', '18-24 °C', 'Húmedo', 11, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(7, 'Cuidado de Diefembanquia', 'Indirecta', 'Bajo', '18-24 °C', 'Húmedo', 4, '2024-09-24 19:45:00', '2024-10-15 00:30:20'),
(8, 'Cuidado de Espinazo del Diablo', 'Indirecta', 'Moderado', '18-26 °C', 'Húmedo', 9, '2024-09-24 19:45:00', '2024-10-15 00:30:03'),
(9, 'Cuidado de Potos', 'Indirecta', 'Moderado', '18-24 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(10, 'Cuidado de Tomate', 'Brillante', 'Moderado', '20-30 °C', 'Arenoso', 10, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(11, 'Cuidado de Sábila', 'Brillante', 'Muy Bajo', '18-26 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(12, 'Cuidado de Bambú', 'Indirecta', 'Moderado', '15-30 C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(13, 'Cuidado de Madre Perla', 'Indirecta', 'Moderado', '18-24 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(14, 'Cuidado de Espatifilo', 'Indirecta', 'Moderado', '18-24 °C', 'Húmedo', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(15, 'Cuidado de Corona de Cristo', 'Brillante', 'Moderado', '18-24 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(16, 'Cuidado de Árbol de la ambundancia', 'Indirecta', 'Bajo', '18-24 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(17, 'Cuidado de Fitonia', 'Indirecta', 'Moderado', '18-24 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(18, 'Cuidado de Caladio', 'Brillante', 'Bajo', '18-24 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(19, 'Cuidado de Aguacate', 'Brillante', 'Moderado', '18-25 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(20, 'Cuidado de Cóleo', 'Indirecta', 'Bajo', '18-24 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(21, 'Cuidado de Platanillos', 'Brillante', 'Moderado', '20-30 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(22, 'Cuidado de Ave de paraíso', 'Brillante', 'Moderado', '20-30 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(23, 'Cuidado de Chrisantemos', 'Brillante', 'Moderado', '15-21 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(24, 'Cuidado de Girasol', 'Brillante', 'Alto', '20-30 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(25, 'Cuidado de Hortensias', 'Indirecta', 'Alto', '15-22 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(26, 'Cuidado de Lirios', 'Brillante', 'Moderado', '15-25 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(27, 'Cuidado de Margaritas', 'Brillante', 'Moderado', '15-25 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(28, 'Cuidado de Rosas', 'Directa Brillante', 'Alto', '15-25 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(29, 'Cuidado de Madre de cacao', 'Brillante', 'Moderado', '20-30 °C', 'Húmedo', 1, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(30, 'Cuidado de Ceiba', 'Directa Brillante', 'Moderado', '20-30 °C', 'Húmedo', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(31, 'Cuidado de Gualanday', 'Brillante', 'Moderado', '18-30 °C', 'Húmedo', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(32, 'Cuidado de Guayacán amarillo', 'Directa Brillante', 'Bajo', '18-30 °C', 'Húmedo', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(33, 'Cuidado de Nogal cafetero', 'Directa Brillante', 'Moderado', '20-30 °C', 'Húmedo', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(34, 'Cuidado de Carbonero', 'Brillante', 'Moderado', '20-30 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(35, 'Cuidado de Chiminango', 'Brillante', 'Bajo', '20-30 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(36, 'Cuidado de Cerezo rojo', 'Directa Brillante', 'Moderado', '15-25 °C', 'Húmedo', 11, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(37, 'Cuidado de Mango', 'Directa Brillante', 'Bajo', '24-30 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(38, 'Cuidado de Almendro de río', 'Directa Brillante', 'Moderado', '20-30 °C', 'Húmedo', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(39, 'Cuidado de Cachimbo', 'Directa Brillante', 'Bajo', '10-30 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(40, 'Cuidado de Caucho sabanero', 'Directa Brillante', 'Bajo', '20-30 °C', 'Húmedo', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(41, 'Cuidado de Saman', 'Directa Brillante', 'Moderado', '20-30 °C', 'Húmedo', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(42, 'Cuidado de Guadua', 'Brillante', 'Moderado', '15-30 °C', 'Húmedo', 6, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(43, 'Cuidado de Crotos', 'Indirecta', 'Moderado', '18-28 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(44, 'Cuidado de Palmas', 'Indirecta', 'Moderado', '18-30 °C', 'Húmedo', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(45, 'Cuidado de Bougainvillea', 'Directa Brillante', 'Moderado', '15-30 °C', 'Arenoso', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(46, 'Cuidado de Hibiscos', 'Brillante', 'Bajo', '18-30 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(47, 'Cuidado de Crisantemos', 'Brillante', 'moderado', '15-21 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(48, 'Cuidado de Geranios', 'Directa Brillante', 'Moderado', '15-25 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(49, 'Cuidado de Petunias', 'Directa Brillante', 'Bajo', '18-30 °C', 'Húmedo', 6, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(51, 'Cuidado de Claveles', 'Brillante', 'Alto', '13-24 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(52, 'Cuidado de Azaleas', 'Brillante', 'Alto', '12-20 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(53, 'Cuidado de Bromelias', 'Indirecta', 'Bajo', '15-30 °C', 'Arenoso', 6, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(54, 'Cuidado De Ruda', 'Directa Brillante', 'Moderado', '15-30 °C', 'Arenoso', 1, '2024-09-24 19:45:00', '2024-10-15 01:08:40'),
(55, 'Cuidado de Albahaca', 'Directa Brillante', 'Alto', '18-30°C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(56, 'Cuidado de Hierbabuena', 'Brillante', 'Bajo', '15-25 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(57, 'Cuidado de Cilantro', 'Directa Brillante', 'Moderado', '15-25 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(58, 'Cuidado de Jengibre', 'Brillante', 'Bajo', '20-30 °C', 'húmedo', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(59, 'Cuidado de Anís', 'Brillante', 'Alto', '18-24 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(60, 'Cuidado de Boldo', 'Directa Brillante', 'Bajo', '15-25 °C', 'Ambiente', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(61, 'Cuidado de Caléndula', 'Directa Brillante', 'Alto', '15-25 °C', 'Ambiente', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(62, 'Cuidado de Manzanilla', 'Directa Brillante', 'Alto', '18-25 °C', 'Húmedo', 1, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(63, 'Cuidado de Lavanda', 'Directa Brillante', 'Bajo', '15-30 °C', 'Arenoso', 3, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(64, 'Cuidado de Romero', 'Directa Brillante', 'Alto', '15-25 °C', 'Arenoso', 1, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(65, 'Cuidado de Tomillo', 'Directa Brillante', 'Moderado', '15-30 °C', 'Arenoso', 1, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(66, 'Cuidado de Menta', 'Brillante', 'Moderado', '15-25 °C', 'Húmedo', 1, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(67, 'Cuidado de Salvia', 'Directa Brillante', 'Alto', '15-30 °C', 'Arenoso', 1, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(68, 'Cuidado de Eucalitpto', 'Directa Brillante', 'Moderado', '15-30 °C', 'Arenoso', 1, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(69, 'Cuidado de Plátano', 'Directa Brillante', 'Moderado', '24-30 °C', 'Húmedo', 1, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(70, 'Cuidado de Yuca', 'Directa Brillante', 'Bajo', '20-30 °C', 'Arenoso', 7, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(71, 'Cuidado de Frijol', 'Directa Brillante', 'Moderado', '15-25 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(72, 'Cuidado de Maíz', 'Directa Brillante', 'Bajo', '18-30 °C', 'Húmedo', 7, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(73, 'Cuidado de Caña de azúcar', 'Directa Brillante', 'Moderado', '20-30 °C', 'Húmedo', 3, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(75, 'Cuidado de Papaya', 'Directa Brillante', 'Moderado', '20-30 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(76, 'Cuidado de Piña', 'Directa Brillante', 'Bajo', '20-30 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(77, 'Cuidado de Guayaba', 'Directa Brillante', 'Bajo', '20-30 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(78, 'Cuidado de Maracuyá', 'Directa Brillante', 'Bajo', '20-30 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(79, 'Cuidado de Naranja', 'Directa Brillante', 'Bajo', '15-30 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(80, 'Cuidado de Limón', 'Directa Brillante', 'Moderado', '15-30 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(81, 'Cuidado de Mandarino', 'Directa Brillante', 'Moderado', '15-30 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(82, 'Cuidado de Granadilla', 'Indirecta', 'Moderado', '20-30 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(83, 'Cuidado de Guanábana', 'Directa Brillante', 'Moderado', '20-30 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(84, 'Cuidado de Lantana', 'Directa Brillante', 'Bajo', '15-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(85, 'Cuidado de Botón de oro', 'Indirecta', 'Moderado', '15-25 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(86, 'Cuidado de Flor de jamaica', 'Directa Brillante', 'Moderado', '20-30 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(87, 'Cuidado de Verbena', 'Directa Brillante', 'Bajo', '15-25 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(88, 'Cuidado de Diente de león', 'Directa Brillante', 'Bajo', '15-25 °C', 'Húmedo', 6, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(89, 'Cuidado de Hierba de San Juan', 'Directa Brillante', 'Moderado', '15-25 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(90, 'Cuidado de  Bledo', 'Brillante', 'Moderado', '20-30 °C', 'Húmedo', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(91, 'Cuidado de Siete cueros', 'Indirecta', 'Moderado', '18-25 °C', 'Húmedo', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(92, 'Cuidado de Guasca', 'Directa Brillante', 'Moderado', '18-25 °C', 'Húmedo', 1, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(93, 'Cuidado de Cucaracho', 'Brillante', 'Moderado', '18-28 °C', 'Arenoso', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(94, 'Cuidado de Malva', 'Brillante', 'Moderado', '15-25 °C', 'Húmedo', 9, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(95, 'Cuidado de Zarzamora', 'Directa Brillante', 'Alto', '15-25 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(96, 'Cuidado de Chirimoya', 'Directa Brillante', 'Muy Bajo', '10-40 °C', 'Arenoso', 7, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(97, 'Cuidado de Lechuguilla', 'Directa Brillante', 'Muy Bajo', '10-40 °C', 'Arenoso', 7, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(98, 'Cuidado de Abarema', 'Directa Brillante', 'Moderado', '18-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(99, 'Cuidado de Coralillos', 'Indirecta', 'Moderado', '18-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(100, 'Cuidado de Abuta', 'Indirecta', 'Moderado', '18-30 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(101, 'Cuidado de Abrojos', 'Directa Brillante', 'Moderado', '15-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(102, 'Cuidado de Masdevalia', 'Indirecta', 'Moderado', '10-25 °C', 'Húmedo', 6, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(103, 'Cuidado de Aciotis', 'Indirecta', 'Moderado', '18-25 °C', 'Húmedo', 6, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(104, 'Cuidado de Pino', 'Directa Brillante', 'Muy Bajo', '10-40 °C', 'Arenoso', 8, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(105, 'Cuidado de Arenaria', 'Brillante', 'Moderado', '18-24 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(106, 'Cuidado de Columnea', 'Brillante', 'Moderado', '18-24 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(107, 'Cuidado de Cordoncillo', 'Brillante', 'Bajo', '18-24 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(108, 'Cuidado de Pringamosa', 'Brillante', 'Moderado', '18-24 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(109, 'Cuidado de Pasto Chato', 'Directa Brillante', 'Moderado', '20-30 °C', 'Arenoso', 7, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(110, 'Cuidado de Mortiño', 'Brillante', 'Moderado', '15-25 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(111, 'Cuidado de Santa María', 'Brillante', 'Moderado', '20-30 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(112, 'Cuidado de Kunte chagualo', 'Brillante', 'Moderado', '18-30 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(113, 'Cuidado de Trompillo', 'Indirecta', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(114, 'Cuidado de Dormidera', 'Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(116, 'Cuidado de Guásimo', 'Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(117, 'Cuidado de Clavellino', 'Brillante', 'Moderado', '15-25 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(118, 'Cuidado de Vainillo', 'Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(119, 'Cuidado de Chambimbo', 'Directa Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(120, 'Cuidado de Sangre de Drago', 'Brillante', 'Moderado', '18-24 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(121, 'Cuidado de Campanita', 'Brillante', 'Moderado', '15-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(122, 'Cuidado de Araguaney Bobo', 'Directa Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(123, 'Cuidado de Orejero', 'Indirecta', 'Moderado', '18-24 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(124, 'Cuidado de Balso', 'Directa Brillante', 'Bajo', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(125, 'Cuidado de Palma Botella', 'Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(126, 'Cuidado de ficus', 'Brillante', 'Alto', '18-24 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(127, 'Cuidado de Empanadita', 'Indirecta', 'Moderado', '18-24 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(128, 'Cuidado de Yagua', 'Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(129, 'Cuidado de Guama cola de mico', 'Directa Brillante', 'Bajo', '20-30 °C', 'Arenoso', 7, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(130, 'Cuidado de Mirasol', 'Indirecta', 'Alto', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(131, 'Cuidado de Cañabrava', 'Directa Brillante', 'Moderado', '20-30 °C', 'Húmedo', 7, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(132, 'Cuidado de Pincelito', 'Indirecta', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(133, 'Cuidado de Leucaena', 'Directa Brillante', 'Moderado', '20-30 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(134, 'Cuidado de Limón swinglia', 'Directa Brillante', 'Moderado', '20-30 °C', 'Arenoso', 13, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(135, 'Cuidado de Zurrumbo', 'Brillante', 'Bajo', '20-30 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(136, 'Cuidado de Adelfa Amarilla', 'Directa Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(137, 'Cuidado de Nacedero', 'Brillante', 'Moderado', '18-25 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(138, 'Cuidado de Matarratón', 'Directa Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(140, 'Cuidado de Bejuco Zaragozo', 'Indirecta', 'Alto', '18-25 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(141, 'Cuidado de Dugand iguá', 'Directa Brillante', 'Moderado', '15-25 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(143, 'Cuidado de Chilca', 'Directa Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(144, 'Cuidado de Mastranto', 'Directa Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(145, 'Cuidado de Cola zorro', 'Directa Brillante', 'Bajo', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(146, 'Cuidado de Mamoncillo', 'Directa Brillante', 'Alto', '20-30 °C', 'Arenoso', 7, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(147, 'Cuidado de Venturosa', 'Directa Brillante', 'Alto', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(148, 'Cuidado de Jazmín de noche', 'Directa Brillante', 'Alto', '15-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(149, 'Cuidado de Aguacatillo', 'Indirecta', 'Alto', '15-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(150, 'Cuidado de Laurel', 'Brillante', 'Moderado', '10-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(151, 'Cuidado de Guacharaco', 'Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(152, 'Cuidado de Coca cimarrona', 'Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(153, 'Cuidado de Tortolito', 'Directa Brillante', 'Moderado', '15-25 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(154, 'Cuidado de Cedro blanco', 'Directa Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(155, 'Cuidado de Caracolí', 'Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(156, 'Cuidado de Guamo', 'Directa Brillante', 'Moderado', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(157, 'Cuidado de Yarumo', 'Indirecta', 'Bajo', '20-30 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(158, 'Cuidado de Tachuelo', 'Directa Brillante', 'Moderado', '15-30 °C', 'Arenoso', 1, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(159, 'Cuidado de Ninguito', 'Directa Brillante', 'Bajo', '20-30 °C', 'Arenoso', 7, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(160, 'Cuidado de Guayaba Silvestre', 'Directa Brillante', 'Bajo', '20-30 °C', 'Arenoso', 7, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(161, 'Cuidado de Puya', 'Brillante', 'Moderado', '15-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(162, 'Cuidado de Chitató', 'Brillante', 'Bajo', '18-25 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(163, 'Cuidado de Helecho', 'Indirecta', 'Moderado', '15-25 °C', 'Húmedo', 7, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(164, 'Cuidado de Pasto Imperial', 'Directa Brillante', 'Moderado', '20-30 °C', 'Arenoso', 7, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(165, 'Cuidado de Cortadera', 'Directa Brillante', 'Moderado', '15-30 °C', 'Arenoso', 12, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(166, 'Cuidado de Pajón', 'Directa Brillante', 'Alto', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(167, 'Cuidado de Kunth Orquídea', 'Indirecta', 'Moderado', '20-30 °C', 'Húmedo', 6, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(168, 'Cuidado de Cattleya', 'Indirecta', 'Moderado', '20-30 °C', 'Húmedo', 6, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(169, 'Cuidado de Phalaenopsis', 'Indirecta', 'Moderado', '18-30 °C', 'Húmedo', 6, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(170, 'Cuidado de Pasto Estrella', 'Directa Brillante', 'Moderado', '15-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(171, 'Cuidado de Siempreviva', 'Indirecta', 'Moderado', '15-25 °C', 'Arenoso', 6, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(172, 'Cuidado de Corozo', 'Directa Brillante', 'Moderado', '20-30 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(173, 'Cuidado de Cafeto de monte', 'Brillante', 'Bajo', '20-30 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(174, 'Cuidado de Café', 'Brillante', 'Moderado', '18-24 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(175, 'Cuidado de Cambusil', 'Indirecta', 'Moderado', '20-25 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(176, 'Cuidado de Higuera', 'Brillante', 'Moderado', '20-30 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(177, 'Cuidado de Cipura', 'Indirecta', 'Bajo', '18-25 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(178, 'Cuidado de Trepadora', 'Brillante', 'Bajo', '15-25 °C', 'Arenoso', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00'),
(179, 'Cuidado de Liana', 'Indirecta', 'Moderado', '20-30 °C', 'Húmedo', 2, '2024-09-24 19:45:00', '2024-09-24 19:45:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cali', '2024-05-05 03:24:00', '2024-05-05 03:24:00'),
(2, 'Medellin', '2024-05-05 03:48:00', '2024-05-05 03:48:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fertilizers`
--

CREATE TABLE `fertilizers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fertilizers`
--

INSERT INTO `fertilizers` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Organico De Compost', 'Descomposición del material orgánico resultante de residuos de alimentos, frutas y jardín por acción de los microorganismos. Los residuos orgánicos caseros se pueden utilizar para hacer compost.', '2024-09-11 23:47:00', '2024-09-11 23:47:00'),
(2, 'Fertilizante Completo 10-10-10', 'Ayuda a construir una base sólida del sistema de raíces para sus plantas, verduras y césped a medida que crecen. ', '2024-09-11 23:48:00', '2024-09-11 23:52:00'),
(3, 'Nitrato De Amonio', 'Sin descripción', '2024-09-11 23:53:00', '2024-12-12 02:19:26'),
(4, 'Fertilizante De Liberacion Lenta Osmocote', 'Sin descripción', '2024-09-11 23:53:00', '2024-12-12 02:19:29'),
(5, 'Algas Marinas', 'Sin descripción', '2024-09-11 23:54:00', '2024-12-12 02:19:33'),
(6, 'Humus Liquido de Lombriz ', 'Rico en nutrientes, como nitrógeno, fósforo y potasio, que son esenciales para el crecimiento de las plantas.', '2024-09-11 23:54:00', '2024-09-11 23:54:00'),
(7, 'Gallinaza en polvo', 'Escremento o estiércol de las gallinas o de los pollos, se debe incorporar al suelo con el fin de evitar pérdidas de nitrógeno', '2024-09-11 23:54:00', '2024-09-11 23:54:00'),
(8, 'Floración', 'Granulado que ayuda a mantener un nivel nutricional óptimo para mejorar y estimular la producción, coloración y perfume de cualquier planta de flor.', '2024-09-11 23:54:00', '2024-09-11 23:54:00'),
(9, 'Compost Casero', 'Compost casero de cáscaras de frutas y estiércol bien compostado.', '2024-09-11 23:54:00', '2024-09-11 23:54:00'),
(10, 'Estiercol de Vaca Curado', 'Es un recurso valioso para el manejo orgánico y sustentable del suelo.', '2024-09-11 23:54:00', '2024-09-11 23:54:00'),
(11, 'Té de compost', 'Biofertilizante líquido cuyos ingredientes son compost y agua', '2024-09-11 23:54:00', '2024-09-11 23:54:00'),
(12, 'Fertilizante Completo 10-10-20', 'Fertilizante complejo granular con altos contenidos de fósforo y potasio, y un aporte complementario de nitógeno.', '2024-09-11 23:54:00', '2024-09-11 23:54:00'),
(13, 'Fertilizante Completo 18-18-18', 'Aporta a la planta los nutrientes necesarios para un crecimiento equilibrado y durante un ciclo completo de crecimiento .', '2024-09-11 23:54:00', '2024-09-11 23:54:00'),
(14, 'Turba', 'Tipo de material orgánico que se forma a partir de la descomposición parcial de materiales vegetales en condiciones de humedad y baja oxigenación.', '2024-09-11 23:54:00', '2024-09-11 23:54:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Asparagaceae', '2024-05-27 03:28:00', '2024-06-11 03:39:00'),
(2, 'Paubrasilia', '2024-05-27 05:19:00', '2024-06-11 03:38:00'),
(3, 'Crassula', '2024-05-28 02:05:00', '2024-06-11 03:39:00'),
(4, 'Anthurium', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(5, 'Capsicum', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(6, 'Aglaonema', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(7, 'Dieffenbachia', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(8, 'Euphorbia', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(9, 'Epipremnum', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(10, 'Solanum', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(11, 'Aloe Vera', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(12, 'Bambusoideae', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(13, 'Callisia', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(14, 'Spathiphyllum', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(15, 'Pachira', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(16, 'Fittonia', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(17, 'Caladium', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(18, 'Persea', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(19, 'Solenostemon', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(20, 'Heliconia', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(21, 'Strelirzia', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(22, 'Chrysanthemum', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(23, 'Helianthus', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(24, 'Hydrangea', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(25, 'Lilium', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(26, 'Bellis perennis', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(27, 'Rosa', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(28, 'Gliricidia', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(29, 'Ceiba', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(30, 'Tabebuia', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(31, 'Carya', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(32, 'Senna', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(33, 'Pithecellobium', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(34, 'Prunus', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(35, 'Mangifera', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(36, 'Andira', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(37, 'Hevea', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(38, 'Samanea', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(39, 'Guadua', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(40, 'codiaeum', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(41, 'Arecaceae', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(42, 'Bougainvillea', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(43, 'Hibiscus', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(45, 'Pelargonium', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(46, 'Petunia', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(47, 'Dianthus', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(48, 'Rhododendron', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(49, 'Bromeliaceae', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(50, 'Ruta', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(51, 'Ocimum', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(52, 'Mentha', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(53, 'Coriandrum', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(54, 'Zingiber', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(55, 'Pimpinella', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(56, 'Peumus', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(57, 'Calendula', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(58, 'Matricaria', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(59, 'Lavandula', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(60, 'Rosmarinus', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(61, 'Thymus', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(62, 'Salvia', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(63, 'Eucalyptus', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(64, 'Musa', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(65, 'Manihot', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(66, 'Phaseolus', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(67, 'Zea', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(68, 'Saccharum', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(69, 'Carica', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(70, 'Ananas', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(71, 'Psidium', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(72, 'Passiflora', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(73, 'Citrus', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(74, 'Annona', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(75, 'Lantana', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(76, 'Verbena', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(77, 'Taraxacum', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(78, 'Hypericum', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(79, 'Amaranthus', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(80, 'Tibouchina', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(81, 'Galinsoga', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(82, 'Melampodium', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(83, 'Malva', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(84, 'Rubus', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(85, 'Lactuca', '2024-05-28 02:26:00', '2024-09-17 17:28:00'),
(86, 'Abarema', '2024-05-29 02:26:00', '2024-09-17 17:28:00'),
(87, 'Rivina', '2024-05-30 02:26:00', '2024-09-17 17:28:00'),
(88, 'Abuta', '2024-05-31 02:26:00', '2024-09-17 17:28:00'),
(89, 'Tribulus', '2024-06-01 02:26:00', '2024-09-17 17:28:00'),
(90, 'Masdevallia', '2024-06-02 02:26:00', '2024-09-17 17:28:00'),
(91, 'Aciotis', '2024-06-03 02:26:00', '2024-09-17 17:28:00'),
(92, 'Pinus', '2024-06-04 02:26:00', '2024-09-17 17:28:00'),
(93, 'Arenaria', '2024-06-05 02:26:00', '2024-09-17 17:28:00'),
(94, 'Columnea', '2024-06-06 02:26:00', '2024-09-17 17:28:00'),
(95, 'Piper', '2024-06-07 02:26:00', '2024-09-17 17:28:00'),
(96, 'Urera', '2024-06-08 02:26:00', '2024-09-17 17:28:00'),
(97, 'Axonopus', '2024-06-09 02:26:00', '2024-09-17 17:28:00'),
(98, 'Vaccinium', '2024-06-10 02:26:00', '2024-09-17 17:28:00'),
(99, 'Tanacetum', '2024-06-11 02:26:00', '2024-09-17 17:28:00'),
(100, 'Eryngium', '2024-06-12 02:26:00', '2024-09-17 17:28:00'),
(102, 'Mimosa', '2024-06-14 02:26:00', '2024-09-17 17:28:00'),
(104, 'Guazuma', '2024-06-16 02:26:00', '2024-09-17 17:28:00'),
(105, 'Plumeria', '2024-06-17 02:26:00', '2024-09-17 17:28:00'),
(106, 'Vanilla', '2024-06-18 02:26:00', '2024-09-17 17:28:00'),
(107, 'Muntingia', '2024-06-19 02:26:00', '2024-09-17 17:28:00'),
(108, 'Croton', '2024-06-20 02:26:00', '2024-09-17 17:28:00'),
(109, 'Ipomoea', '2024-06-21 02:26:00', '2024-09-17 17:28:00'),
(110, 'Tecoma', '2024-06-22 02:26:00', '2024-09-17 17:28:00'),
(111, 'Enterolobium', '2024-06-23 02:26:00', '2024-09-17 17:28:00'),
(112, 'Ochroma', '2024-06-24 02:26:00', '2024-09-17 17:28:00'),
(113, 'Hyophorbe', '2024-06-25 02:26:00', '2024-09-17 17:28:00'),
(114, 'Ficus', '2024-06-26 02:26:00', '2024-09-17 17:28:00'),
(115, 'Impatiens', '2024-06-27 02:26:00', '2024-09-17 17:28:00'),
(116, 'Attalea', '2024-06-28 02:26:00', '2024-09-17 17:28:00'),
(117, 'Inga', '2024-06-29 02:26:00', '2024-09-17 17:28:00'),
(119, 'Arundo', '2024-07-01 02:26:00', '2024-09-17 17:28:00'),
(120, 'Ageratum', '2024-07-02 02:26:00', '2024-09-17 17:28:00'),
(121, 'Leucaena', '2024-07-03 02:26:00', '2024-09-17 17:28:00'),
(122, 'Swinglea', '2024-07-04 02:26:00', '2024-09-17 17:28:00'),
(123, 'Gustavia', '2024-07-05 02:26:00', '2024-09-17 17:28:00'),
(124, 'Cascabela', '2024-07-06 02:26:00', '2024-09-17 17:28:00'),
(125, 'Trichanthera', '2024-07-07 02:26:00', '2024-09-17 17:28:00'),
(127, 'None', '2024-07-09 02:26:00', '2024-09-17 17:28:00'),
(128, 'Chondrodendron', '2024-07-10 02:26:00', '2024-09-17 17:28:00'),
(129, 'Igua', '2024-07-11 02:26:00', '2024-09-17 17:28:00'),
(131, 'Baccharis', '2024-07-13 02:26:00', '2024-09-17 17:28:00'),
(132, 'Men', '2024-07-14 02:26:00', '2024-09-17 17:28:00'),
(133, 'Setaria', '2024-07-15 02:26:00', '2024-09-17 17:28:00'),
(134, 'Melicoccus', '2024-07-16 02:26:00', '2024-09-17 17:28:00'),
(135, 'Calathea', '2024-07-17 02:26:00', '2024-09-17 17:28:00'),
(136, 'Cestrum', '2024-07-18 02:26:00', '2024-09-17 17:28:00'),
(137, 'Perse', '2024-07-19 02:26:00', '2024-09-17 17:28:00'),
(138, 'Laurus', '2024-07-20 02:26:00', '2024-09-17 17:28:00'),
(139, 'Schizolobium', '2024-07-21 02:26:00', '2024-09-17 17:28:00'),
(140, 'Erythroxylum', '2024-07-22 02:26:00', '2024-09-17 17:28:00'),
(141, 'Mandevilla', '2024-07-23 02:26:00', '2024-09-17 17:28:00'),
(142, 'Cupressus', '2024-07-24 02:26:00', '2024-09-17 17:28:00'),
(143, 'Anacardium', '2024-07-25 02:26:00', '2024-09-17 17:28:00'),
(144, 'Ingan', '2024-07-26 02:26:00', '2024-09-17 17:28:00'),
(145, 'Cecropia', '2024-07-27 02:26:00', '2024-09-17 17:28:00'),
(146, 'Zanthoxylum', '2024-07-28 02:26:00', '2024-09-17 17:28:00'),
(147, '', '2024-07-29 02:26:00', '2024-09-17 17:28:00'),
(148, 'Urea', '2024-07-30 02:26:00', '2024-09-17 17:28:00'),
(149, 'Puya', '2024-07-31 02:26:00', '2024-09-17 17:28:00'),
(150, 'Xylopia', '2024-08-01 02:26:00', '2024-09-17 17:28:00'),
(151, 'Pteridium', '2024-08-02 02:26:00', '2024-09-17 17:28:00'),
(153, 'Cortaderia', '2024-08-04 02:26:00', '2024-09-17 17:28:00'),
(154, 'Sporobolus', '2024-08-05 02:26:00', '2024-09-17 17:28:00'),
(155, 'Kunth', '2024-08-06 02:26:00', '2024-09-17 17:28:00'),
(156, 'Cattleya', '2024-08-07 02:26:00', '2024-09-17 17:28:00'),
(157, 'Phalaenopsis', '2024-08-08 02:26:00', '2024-09-17 17:28:00'),
(158, 'Cynodon', '2024-08-09 02:26:00', '2024-09-17 17:28:00'),
(159, 'Sempervivum', '2024-08-10 02:26:00', '2024-09-17 17:28:00'),
(160, 'Acrocomia', '2024-08-11 02:26:00', '2024-09-17 17:28:00'),
(161, 'Coffea', '2024-08-12 02:26:00', '2024-09-17 17:28:00'),
(162, 'Coffe', '2024-08-13 02:26:00', '2024-09-17 17:28:00'),
(163, 'Malpighia', '2024-08-14 02:26:00', '2024-09-17 17:28:00'),
(164, 'No identificado', '2024-08-15 02:26:00', '2024-09-17 17:28:00'),
(165, 'Cipura', '2024-08-16 02:26:00', '2024-09-17 17:28:00'),
(166, 'Parthenocissus', '2024-08-17 02:26:00', '2024-09-17 17:28:00'),
(167, 'Liana', '2024-08-18 02:26:00', '2024-09-17 17:28:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `origins`
--

CREATE TABLE `origins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `origins`
--

INSERT INTO `origins` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'África', '2024-09-11 17:41:00', '2024-09-11 17:41:00'),
(2, 'Brasil', '2024-09-11 17:41:00', '2024-09-11 17:41:00'),
(3, 'Sudáfrica', '2024-09-11 17:42:00', '2024-09-11 17:42:00'),
(4, 'América Tropical', '2024-09-11 17:42:00', '2024-09-11 18:20:00'),
(5, 'México y América Central', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(6, 'Asia', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(7, 'América del Sur', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(8, 'México', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(9, 'Sudeste Asiático', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(10, 'Madagascar', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(11, 'América Central', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(12, 'América del Norte', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(13, 'Sudamérica', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(14, 'India', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(15, 'Colombia', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(16, 'Australia', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(17, 'Europa', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(18, 'América Central y del Sur', '2024-09-11 18:20:00', '2024-09-11 18:20:00'),
(19, 'Global', '2024-09-11 18:20:00', '2024-09-11 18:20:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plagues`
--

CREATE TABLE `plagues` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plagues`
--

INSERT INTO `plagues` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sin Plaga', 'La Planta no presenta Plagas', '2024-09-21 22:06:00', '2024-09-20 22:06:00'),
(2, 'Ácaros', 'Pequeños insectos que causan manchas y una apariencia polvorienta en las hojas.', '2024-09-19 23:51:00', '2024-09-20 21:52:00'),
(3, 'Cochinillas', 'Insectos que se adhieren a los tallos y hojas, dejando una sustancia pegajosa.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(4, 'Árañas Rojas', 'Ácaros que provocan decoloración, manchas y telarañas en las hojas.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(5, 'Hormigas', 'Pueden formar colonias en la base de la planta, dañando las raíces.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(6, 'Hongos', 'Son Atraídos por las cochinillas', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(7, 'Trips', 'Insectos que causan manchas en las hojas y flores, afectando su apariencia.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(8, 'Moscas', 'Provoca el amarillamiento de las hojas y debilitamiento general de la planta.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(9, 'Orugas', 'Pueden alimentarse de las hojas, dejando agujeros visibles.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(10, 'Gusanos', 'Se alimentan de las hojas y frutos, causando agujeros y daño.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(11, 'Escamas', 'Insectos que se adhieren a los tallos y hojas, dejando una sustancia pegajosa.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(12, 'Minador de hojas', 'Insectos cuyas larvas dejan senderos visibles en el interior de las hojas.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(13, 'Gorgójos', 'Insectos que se alimentan de las raíces, dañando la planta desde abajo.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(14, 'Caracoles y babosas', 'Pueden alimentarse de las hojas y brotes, dejando agujeros visibles.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(15, 'Escarabájos de lirio', 'Insectos que devoran hojas, brotes y flores, causando daños severos.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(16, 'Escarabájos', 'Insectos que pueden devorar hojas, causando daños significativos a la planta.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(17, 'Termitas', 'Insectos que pueden atacar las raíces o el tronco, debilitando la planta desde abajo.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(18, 'Escarabájos de Nogal', 'Insectos que pueden devorar hojas y frutos, causando daños significativos.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(19, 'Gusanos del Fruto', 'Orugas que se alimentan de los frutos, causando daños y pudrición.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(20, 'Mosca de la fruta', 'Ataca los frutos maduros, poniendo sus huevos en la pulpa y causando pudrición.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(21, 'Escarabajos de la Corteza', 'Insectos que pueden dañar el tronco y las ramas.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(22, 'Gusanos de la Madera', 'Orugas que se desarrollan dentro de los tallos y causan agujeros.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(23, 'Nematodos', 'Pequeños gusanos que afectan las raíces, provocando un crecimiento lento y malformaciones.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(24, 'Psílidos del eucalipto', 'Insectos pequeños que provocan deformación y decoloración en las hojas.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(25, 'Gorgojo Negro del Plátano', 'Se alimenta de las raíces y puede provocar el debilitamiento de la planta.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(26, 'Escarabajo del Tubérculo', 'Se alimentan de las raíces, causando daños significativos en el crecimiento y desarrollo de la planta.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(27, 'Gusano Cogollero', 'Se alimenta de las hojas jóvenes y las espigas, provocando daños', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(28, 'Gusano de la Caña', 'Se alimenta de los tallos, provocando agujeros y debilitando la planta.', '2024-09-20 22:06:00', '2024-09-20 22:06:00'),
(29, 'Pulgones', 'Insectos pequeños que chupan la savia, causando deformación de las hojas y reducción del crecimiento.', '2024-09-19 23:49:00', '2024-09-19 23:52:00'),
(30, 'Escarabajos Perforadores', 'Cavan túneles en el tronco y las ramas, debilitando la estructura de la planta y provocando la caída de frutos', '2024-09-19 23:49:00', '2024-09-19 23:52:00'),
(31, 'Larvas', 'Se alimentan de las hojas y raíces, causando un deterioro significativo de la planta.', '2024-09-19 23:49:00', '2024-09-19 23:52:00'),
(32, 'Hongos Patógenos', 'Suelen atacar las raíces y la base del tronco, debilitando la planta.', '2024-09-19 23:49:00', '2024-09-19 23:52:00'),
(33, 'Babosas', 'Pueden devorar las hojas, especialmente en climas húmedos.', '2024-09-19 23:49:00', '2024-09-19 23:52:00'),
(34, 'Procesionaria del Pino', 'Esta oruga defolia los árboles, debilitando al pino y dejándolo susceptible a otras plagas y enfermedades.', '2024-09-19 23:49:00', '2024-09-19 23:52:00'),
(35, 'Pulgones de Pino', ' Se alimentan de la savia, lo que puede debilitar los brotes jóvenes.', '2024-09-19 23:49:00', '2024-09-19 23:52:00'),
(36, 'Coquitos del Pino', 'Suelen alimentarse de las hojas y los brotes, causando debilitamiento del árbol.', '2024-09-19 23:49:00', '2024-09-19 23:52:00'),
(37, 'Grillos', 'Pueden causar daños al alimentarse de las hojas y raíces.', '2024-09-19 23:49:00', '2024-09-19 23:52:00'),
(38, 'Coquilletes', 'Estos insectos pueden cubrir las hojas con una sustancia pegajosa, atrayendo otras plagas y hongos.', '2024-09-19 23:49:00', '2024-09-19 23:52:00'),
(39, 'Tigre de la Madera', 'Una plaga que ataca la madera y puede debilitar el árbol.', '2024-09-19 23:49:00', '2024-09-19 23:52:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plants`
--

CREATE TABLE `plants` (
  `id` int(11) NOT NULL,
  `name_common` varchar(100) NOT NULL,
  `origin_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `description` text,
  `care_id` int(11) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plants`
--

INSERT INTO `plants` (`id`, `name_common`, `origin_id`, `gender_id`, `description`, `care_id`, `photo_url`, `created_at`, `updated_at`) VALUES
(1, 'Sansevieras', 1, 1, 'Conocida Por Su Resistencia, Se Adapta A Diversas Condiciones.', 1, 'Sanseviera.png', '2024-09-25 18:37:00', '2024-10-18 05:07:23'),
(2, 'Palo De Brasil', 2, 2, 'Planta De Fácil Cuidado, Perfecta Para Interiores.', 2, 'Palo de brasil.png', '2024-09-25 19:36:00', '2024-10-18 07:49:49'),
(3, 'Árbol De Jade', 3, 3, 'Aporta Color Y Vida Con Su Aspecto Exótico.', 3, 'Arbol de Jade.png', '2024-09-25 19:40:00', '2024-12-10 16:04:11'),
(4, 'Anturio', 4, 4, 'Conocida Por Su Resistencia, Se Adapta A Diversas Condiciones.', 4, 'Anturio.png', '2024-09-25 19:40:00', '2024-12-11 21:21:29'),
(5, 'Chile', 5, 5, 'Requiere Luz Indirecta Y Un Riego Ocasional Para Prosperar.', 5, 'Chile.png', '2024-09-25 19:40:00', '2024-10-18 06:15:49'),
(6, 'Aglonoema', 6, 6, 'Planta de crecimiento rápido, ideal para principiantes.', 6, 'Aglonoema.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(7, 'Diefembanquia', 7, 7, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 7, 'Diefembanquia.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(8, 'Espinazo Del Diablo', 8, 8, 'Ideal Para Ambientes Soleados, Necesita Riego Moderado.', 8, 'Espinazo del Diablo.png', '2024-09-25 19:40:00', '2024-12-10 16:04:36'),
(9, 'Potos', 9, 9, 'Con flores llamativas, es una opción decorativa encantadora.', 9, 'Potos.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(10, 'Tomate', 7, 10, 'Conocida por su resistencia, se adapta a diversas condiciones.', 10, 'Tomate.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(11, 'Sábila', 1, 11, 'Ideal para ambientes soleados, necesita riego moderado.', 11, 'Sábila.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(12, 'Bambú', 6, 12, 'Planta de fácil cuidado, perfecta para interiores.', 12, 'Bambú.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(13, 'Madre Perla', 6, 13, 'Conocida por su resistencia, se adapta a diversas condiciones.', 13, 'Madre Perla.png', '2024-09-25 19:40:00', '2024-12-12 01:58:31'),
(14, 'Espatifilo', 8, 14, 'Requiere luz indirecta y un riego ocasional para prosperar.', 14, 'Espatifilo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(15, 'Corona de Cristo', 10, 15, 'Con flores llamativas, es una opción decorativa encantadora.', 15, 'Corona de Cristo.png', '2024-09-25 19:40:00', '2024-12-12 01:58:46'),
(16, 'Árbol de la ambundancia', 3, 8, 'Ideal para ambientes soleados, necesita riego moderado.', 16, 'Árbol de la ambundancia.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(17, 'Fitonia', 7, 16, 'Con flores llamativas, es una opción decorativa encantadora.', 17, 'Fitonia.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(18, 'Caladio', 11, 17, 'Aporta color y vida con su aspecto exótico.', 18, 'Caladio.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(19, 'Aguacate', 8, 18, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 19, 'Aguacate.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(20, 'Cóleo', 9, 19, 'Planta de crecimiento rápido, ideal para principiantes.', 20, 'Cóleo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(21, 'Platanillos', 4, 20, 'Planta de crecimiento rápido, ideal para principiantes.', 21, 'Platanillos.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(22, 'Ave de paraíso', 3, 21, 'Ideal para ambientes soleados, necesita riego moderado.', 22, 'Ave de paraíso.png', '2024-09-25 19:40:00', '2024-12-12 02:03:08'),
(23, 'Chrisantemos', 6, 22, 'Conocida por su resistencia, se adapta a diversas condiciones.', 23, 'Chrisantemos.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(24, 'Girasol', 12, 23, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 24, 'Girasol.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(25, 'Hortensias', 6, 24, 'Requiere luz indirecta y un riego ocasional para prosperar.', 25, 'Hortensias.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(26, 'Lirios', 6, 25, 'Aporta color y vida con su aspecto exótico.', 26, 'Lirios.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(27, 'Margaritas', 6, 26, 'Conocida por su resistencia, se adapta a diversas condiciones.', 27, 'Margaritas.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(28, 'Rosas', 6, 27, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 28, 'Rosas.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(29, 'Madre de cacao', 6, 28, 'Planta de crecimiento rápido, ideal para principiantes.', 29, 'Madre de cacao.png', '2024-09-25 19:40:00', '2024-12-12 02:03:35'),
(30, 'Ceiba', 5, 29, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 30, 'Ceiba.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(31, 'Gualanday', 7, 30, 'Requiere luz indirecta y un riego ocasional para prosperar.', 31, 'gualanday.png', '2024-09-25 19:40:00', '2024-12-12 02:03:57'),
(32, 'Guayacán amarillo', 13, 31, 'Planta de crecimiento rápido, ideal para principiantes.', 32, 'Guayacán amarillo.png', '2024-09-25 19:40:00', '2024-12-12 02:07:56'),
(33, 'Nogal cafetero', 1, 32, 'Sus hojas dan un aire tropical a cualquier espacio.', 33, 'Nogal cafetero.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(34, 'Carbonero', 11, 33, 'Requiere luz indirecta y un riego ocasional para prosperar.', 34, 'Carbonero.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(35, 'Chiminango', 6, 34, 'Planta de crecimiento rápido, ideal para principiantes.', 35, 'Chiminango.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(36, 'Cerezo rojo', 14, 35, 'Requiere luz indirecta y un riego ocasional para prosperar.', 36, 'Cerezo rojo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(37, 'Mango', 7, 36, 'Con flores llamativas, es una opción decorativa encantadora.', 37, 'Mango.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(38, 'Almendro de río', 4, 36, 'Conocida por su resistencia, se adapta a diversas condiciones.', 38, 'Almendro de río.png', '2024-09-25 19:40:00', '2024-12-12 02:04:12'),
(39, 'Cachimbo', 1, 15, 'Con flores llamativas, es una opción decorativa encantadora.', 39, 'Cachimbo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(40, 'Caucho sabanero', 7, 37, 'Planta de fácil cuidado, perfecta para interiores.', 40, 'Caucho Sabanero.png', '2024-09-25 19:40:00', '2024-12-12 02:04:29'),
(41, 'Saman', 6, 38, 'Requiere luz indirecta y un riego ocasional para prosperar.', 41, 'Saman.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(42, 'Guadua', 15, 39, 'Con flores llamativas, es una opción decorativa encantadora.', 42, 'Guadua.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(43, 'Crotos', 7, 40, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 43, 'Crotos.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(44, 'Palmas', 6, 41, 'Conocida por su resistencia, se adapta a diversas condiciones.', 44, 'Palmas.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(45, 'Bougainvillea', 6, 42, 'Planta de crecimiento rápido, ideal para principiantes.', 45, 'Bougainvillea.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(46, 'Hibiscos', 9, 43, 'Con flores llamativas, es una opción decorativa encantadora.', 46, 'Hibiscos.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(47, 'Crisantemos', 11, 22, 'Ideal para ambientes soleados, necesita riego moderado.', 47, 'Crisantemos.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(48, 'Geranios', 6, 45, 'Famosa por sus propiedades medicinales y su versatilidad.', 48, 'Geranios.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(49, 'Petunias', 12, 46, 'Conocida por su resistencia, se adapta a diversas condiciones.', 49, 'Petunias.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(51, 'Claveles', 11, 47, 'Aporta color y vida con su aspecto exótico.', 51, 'Claveles.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(52, 'Azaleas', 6, 48, 'Ideal para ambientes soleados, necesita riego moderado.', 52, 'Azaleas.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(53, 'Bromelias', 6, 49, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 53, 'Bromelias.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(54, 'Ruda', 11, 50, 'Sus hojas dan un aire tropical a cualquier espacio.', 54, 'Ruda.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(55, 'Albahaca', 6, 51, 'Conocida por su resistencia, se adapta a diversas condiciones.', 55, 'Albahaca.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(56, 'Hierbabuena', 6, 52, 'Ideal para ambientes soleados, necesita riego moderado.', 56, 'Hierbabuena.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(57, 'Cilantro', 7, 53, 'Planta de fácil cuidado, perfecta para interiores.', 57, 'Cilantro.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(58, 'Jengibre', 6, 54, 'Ideal para ambientes soleados, necesita riego moderado.', 58, 'Jengibre.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(59, 'Anís', 11, 55, 'Planta de fácil cuidado, perfecta para interiores.', 59, 'Anís.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(60, 'Boldo', 12, 56, 'Con flores llamativas, es una opción decorativa encantadora.', 60, 'Boldo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(61, 'Caléndula', 6, 57, 'Planta de fácil cuidado, perfecta para interiores.', 61, 'Caléndula.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(62, 'Manzanilla', 12, 58, 'Planta de fácil cuidado, perfecta para interiores.', 62, 'Manzanilla.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(63, 'Lavanda', 16, 59, 'Planta de fácil cuidado, perfecta para interiores.', 63, 'Lavanda.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(64, 'Romero', 4, 60, 'Aporta color y vida con su aspecto exótico.', 64, 'Romero.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(65, 'Tomillo', 7, 61, 'Planta de fácil cuidado, perfecta para interiores.', 65, 'Tomillo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(66, 'Menta', 11, 52, 'Requiere luz indirecta y un riego ocasional para prosperar.', 66, 'Menta.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(67, 'Salvia', 12, 62, 'Aporta color y vida con su aspecto exótico.', 67, 'Salvia.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(68, 'Eucalitpto', 8, 63, 'Famosa por sus propiedades medicinales y su versatilidad.', 68, 'Eucalitpto.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(69, 'Plátano', 13, 64, 'Con flores llamativas, es una opción decorativa encantadora.', 69, 'Plátano.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(70, 'Yuca', 13, 65, 'Planta de fácil cuidado, perfecta para interiores.', 70, 'Yuca.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(71, 'Frijol', 2, 66, 'Aporta color y vida con su aspecto exótico.', 71, 'Frijol.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(72, 'Maíz', 6, 67, 'Requiere luz indirecta y un riego ocasional para prosperar.', 72, 'Maíz.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(73, 'Caña de azúcar', 7, 68, 'Sus hojas dan un aire tropical a cualquier espacio.', 73, 'Caña de azúcar.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(75, 'Papaya', 1, 69, 'Planta de fácil cuidado, perfecta para interiores.', 75, 'Papaya.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(76, 'Piña', 8, 70, 'Sus hojas dan un aire tropical a cualquier espacio.', 76, 'Piña.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(77, 'Guayaba', 17, 71, 'Ideal para ambientes soleados, necesita riego moderado.', 77, 'Guayaba.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(78, 'Maracuyá', 3, 72, 'Con flores llamativas, es una opción decorativa encantadora.', 78, 'Maracuyá.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(79, 'Naranja', 1, 73, 'Sus hojas dan un aire tropical a cualquier espacio.', 79, 'Naranja.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(80, 'Limón', 12, 73, 'Planta de fácil cuidado, perfecta para interiores.', 80, 'Limón.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(81, 'Mandarino', 11, 73, 'Planta de fácil cuidado, perfecta para interiores.', 81, 'Mandarino.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(82, 'Granadilla', 6, 72, 'Con flores llamativas, es una opción decorativa encantadora.', 82, 'Granadilla.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(83, 'Guanábana', 12, 74, 'Planta de crecimiento rápido, ideal para principiantes.', 83, 'Guanábana.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(84, 'Lantana', 7, 75, 'Famosa por sus propiedades medicinales y su versatilidad.', 84, 'Lantana.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(85, 'Botón de oro', 6, 8, 'Famosa por sus propiedades medicinales y su versatilidad.', 85, 'Botón de oro.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(86, 'Flor de jamaica', 7, 43, 'Planta de fácil cuidado, perfecta para interiores.', 86, 'Flor de jamaica.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(87, 'Verbena', 7, 76, 'Aporta color y vida con su aspecto exótico.', 87, 'Verbena.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(88, 'Diente de león', 9, 77, 'Planta de fácil cuidado, perfecta para interiores.', 88, 'Diente de león.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(89, 'Hierba de San Juan', 12, 78, 'Requiere luz indirecta y un riego ocasional para prosperar.', 89, 'Hierba de San Juan.png', '2024-09-25 19:40:00', '2024-12-12 02:05:05'),
(90, 'Bledo', 13, 79, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 90, 'Bledo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(91, 'Siete cueros', 7, 80, 'Con flores llamativas, es una opción decorativa encantadora.', 91, 'Siete cueros.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(92, 'Guasca', 6, 81, 'Planta de crecimiento rápido, ideal para principiantes.', 92, 'Guasca.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(93, 'Cucaracho', 7, 82, 'Planta de fácil cuidado, perfecta para interiores.', 93, 'Cucaracho.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(94, 'Malva', 4, 83, 'Famosa por sus propiedades medicinales y su versatilidad.', 94, 'Malva.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(95, 'Zarzamora', 6, 84, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 95, 'Zarzamora.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(96, 'Chirimoya', 1, 74, 'Ideal para ambientes soleados, necesita riego moderado.', 96, 'Chirimoya.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(97, 'Lechuguilla', 6, 85, 'Planta de fácil cuidado, perfecta para interiores.', 97, 'Lechuguilla.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(98, 'Abarema', 6, 86, 'Ideal para ambientes soleados, necesita riego moderado.', 98, 'Abarema.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(99, 'Coralillos', 17, 87, 'Con flores llamativas, es una opción decorativa encantadora.', 99, 'Coralillos.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(100, 'Abuta', 11, 88, 'Famosa por sus propiedades medicinales y su versatilidad.', 100, 'Abuta.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(101, 'Abrojos', 6, 89, 'Planta de crecimiento rápido, ideal para principiantes.', 101, 'Abrojos.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(102, 'Masdevalia', 7, 90, 'Conocida por su resistencia, se adapta a diversas condiciones.', 102, 'Masdevalia.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(103, 'Aciotis', 7, 91, 'Famosa por sus propiedades medicinales y su versatilidad.', 103, 'Aciotis.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(104, 'Pino', 7, 92, 'Con flores llamativas, es una opción decorativa encantadora.', 104, 'Pino.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(105, 'Arenaria', 6, 93, 'Sus hojas dan un aire tropical a cualquier espacio.', 105, 'Arenaria.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(106, 'Columnea', 7, 94, 'Con flores llamativas, es una opción decorativa encantadora.', 106, 'Columnea.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(107, 'Cordoncillo', 7, 95, 'Famosa por sus propiedades medicinales y su versatilidad.', 107, 'Cordoncillo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(108, 'Pringamosa', 11, 96, 'Conocida por su resistencia, se adapta a diversas condiciones.', 108, 'Pringamosa.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(109, 'Pasto Chato', 7, 97, 'Planta de fácil cuidado, perfecta para interiores.', 109, 'Pasto Chato.png', '2024-09-25 19:40:00', '2024-12-12 02:05:18'),
(110, 'Mortiño', 12, 98, 'Aporta color y vida con su aspecto exótico.', 110, 'Mortiño.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(111, 'Santa María', 12, 99, 'Sus hojas dan un aire tropical a cualquier espacio.', 111, 'Santa María.png', '2024-09-25 19:40:00', '2024-12-12 02:05:28'),
(112, 'Kunte chagualo', 7, 100, 'Famosa por sus propiedades medicinales y su versatilidad.', 112, 'Kunte chagualo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(114, 'Dormidera', 7, 102, 'Ideal para ambientes soleados, necesita riego moderado.', 114, 'Dormidera.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(116, 'Guásimo', 11, 104, 'Aporta color y vida con su aspecto exótico.', 116, 'Guásimo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(117, 'Clavellino', 6, 105, 'Requiere luz indirecta y un riego ocasional para prosperar.', 117, 'Clavellino.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(118, 'Vainillo', 4, 106, 'Con flores llamativas, es una opción decorativa encantadora.', 118, 'Vainillo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(119, 'Chambimbo', 12, 107, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 119, 'Chambimbo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(120, 'Sangre de Drago', 6, 108, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 120, 'Sangre de Drago.png', '2024-09-25 19:40:00', '2024-12-12 02:05:54'),
(121, 'Campanita', 11, 109, 'Aporta color y vida con su aspecto exótico.', 121, 'Campanita.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(122, 'Araguaney Bobo', 1, 110, 'Conocida por su resistencia, se adapta a diversas condiciones.', 122, 'Araguaney Bobo.png', '2024-09-25 19:40:00', '2024-12-12 02:06:04'),
(123, 'Orejero', 12, 111, 'Planta de crecimiento rápido, ideal para principiantes.', 123, 'Orejero.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(124, 'Balso', 4, 112, 'Famosa por sus propiedades medicinales y su versatilidad.', 124, 'Balso.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(125, 'Palma Botella', 6, 113, 'Planta de crecimiento rápido, ideal para principiantes.', 125, 'Palma Botella.png', '2024-09-25 19:40:00', '2024-12-12 02:06:21'),
(126, 'ficus', 13, 114, 'Planta de crecimiento rápido, ideal para principiantes.', 126, 'ficus.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(127, 'Empanadita', 11, 115, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 127, 'Empanadita.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(128, 'Yagua', 12, 116, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 128, 'Yagua.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(129, 'Guama cola de mico', 4, 117, 'Planta de crecimiento rápido, ideal para principiantes.', 129, 'Guama cola de mico.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(131, 'Cañabrava', 7, 119, 'Famosa por sus propiedades medicinales y su versatilidad.', 131, 'Cañabrava.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(132, 'Pincelito', 7, 120, 'Planta de fácil cuidado, perfecta para interiores.', 132, 'Pincelito.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(133, 'Leucaena', 1, 121, 'Planta de crecimiento rápido, ideal para principiantes.', 133, 'Leucaena.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(134, 'Limón swinglia', 13, 122, 'Planta de crecimiento rápido, ideal para principiantes.', 134, 'Limón swinglia.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(135, 'Zurrumbo', 4, 123, 'Ideal para ambientes soleados, necesita riego moderado.', 135, 'Zurrumbo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(136, 'Adelfa Amarilla', 6, 124, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 136, 'Adelfa Amarilla.png', '2024-09-25 19:40:00', '2024-12-12 02:06:44'),
(137, 'Nacedero', 1, 125, 'Requiere luz indirecta y un riego ocasional para prosperar.', 137, 'Nacedero.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(140, 'Bejuco Zaragozo', 6, 128, 'Planta de fácil cuidado, perfecta para interiores.', 140, 'Bejuco Zaragozo.png', '2024-09-25 19:40:00', '2024-12-12 02:06:52'),
(141, 'Dugand iguá', 6, 129, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 141, 'Dugand iguá.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(143, 'Chilca', 1, 131, 'Con flores llamativas, es una opción decorativa encantadora.', 143, 'Chilca.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(144, 'Mastranto', 4, 52, 'Ideal para ambientes soleados, necesita riego moderado.', 144, 'Mastranto.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(145, 'Cola zorro', 6, 133, 'Planta de crecimiento rápido, ideal para principiantes.', 145, 'Cola zorro.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(146, 'Mamoncillo', 11, 134, 'Planta de fácil cuidado, perfecta para interiores.', 146, 'Mamoncillo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(147, 'Venturosa', 18, 135, 'Aporta color y vida con su aspecto exótico.', 147, 'Venturosa.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(148, 'Jazmín de noche', 1, 136, 'Planta de crecimiento rápido, ideal para principiantes.', 148, 'Jazmín de noche.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(149, 'Aguacatillo', 4, 18, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 149, 'Aguacatillo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(150, 'Laurel', 17, 138, 'Requiere luz indirecta y un riego ocasional para prosperar.', 150, 'Laurel.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(151, 'Guacharaco', 7, 139, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 151, 'Guacharaco.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(152, 'Coca cimarrona', 7, 140, 'Con flores llamativas, es una opción decorativa encantadora.', 152, 'Coca cimarrona.png', '2024-09-25 19:40:00', '2024-12-12 02:08:25'),
(153, 'Tortolito', 11, 141, 'Ideal para ambientes soleados, necesita riego moderado.', 153, 'Tortolito.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(154, 'Cedro blanco', 18, 142, 'Famosa por sus propiedades medicinales y su versatilidad.', 154, 'Cedro blanco.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(155, 'Caracolí', 11, 143, 'Aporta color y vida con su aspecto exótico.', 155, 'Caracolí.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(156, 'Guamo', 7, 117, 'Requiere luz indirecta y un riego ocasional para prosperar.', 156, 'Guamo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(157, 'Yarumo', 7, 145, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 157, 'Yarumo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(158, 'Tachuelo', 12, 146, 'Planta de fácil cuidado, perfecta para interiores.', 158, 'Tachuelo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(159, 'Ninguito', 7, 117, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 159, 'Ninguito.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(160, 'Guayaba Silvestre', 4, 71, 'Sus hojas dan un aire tropical a cualquier espacio.', 160, 'Guayaba Silvestre.png', '2024-09-25 19:40:00', '2024-12-12 02:07:13'),
(161, 'Puya', 4, 149, 'Aporta color y vida con su aspecto exótico.', 161, 'Puya.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(162, 'Chitató', 7, 150, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 162, 'Chitató.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(163, 'Helecho', 19, 151, 'Requiere luz indirecta y un riego ocasional para prosperar.', 163, 'Helecho.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(165, 'Cortadera', 13, 153, 'Ideal para ambientes soleados, necesita riego moderado.', 165, 'Cortadera.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(166, 'Pajón', 7, 154, 'Famosa por sus propiedades medicinales y su versatilidad.', 166, 'Pajón.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(167, 'Kunth Orquídea', 13, 155, 'Planta de crecimiento rápido, ideal para principiantes.', 167, 'Kunth Orquídea.png', '2024-09-25 19:40:00', '2024-12-12 02:07:26'),
(168, 'Cattleya', 13, 156, 'Planta de crecimiento rápido, ideal para principiantes.', 168, 'Cattleya.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(169, 'Phalaenopsis', 6, 157, 'Planta de fácil cuidado, perfecta para interiores.', 169, 'Phalaenopsis.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(170, 'Pasto Estrella', 19, 158, 'Con flores llamativas, es una opción decorativa encantadora.', 170, 'Pasto estrella.png', '2024-09-25 19:40:00', '2024-12-12 02:09:13'),
(171, 'Siempreviva', 13, 159, 'Con hojas exuberantes, aporta un toque de naturaleza al hogar.', 171, 'Siempreviva.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(172, 'Corozo', 11, 160, 'Con flores llamativas, es una opción decorativa encantadora.', 172, 'Corozo.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(173, 'Cafeto de monte', 11, 161, 'Conocida por su resistencia, se adapta a diversas condiciones.', 173, 'Cafeto de monte.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(174, 'Café', 6, 161, 'Con flores llamativas, es una opción decorativa encantadora.', 174, 'Café.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(175, 'Cambusil', 12, 163, 'Planta de crecimiento rápido, ideal para principiantes.', 175, 'Cambusil.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(176, 'Higuera', 4, 114, 'Requiere luz indirecta y un riego ocasional para prosperar.', 176, 'Higuera.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(177, 'Cipura', 19, 165, 'Conocida por su resistencia, se adapta a diversas condiciones.', 177, 'Cipura.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(178, 'Trepadora', 19, 166, 'Sus hojas dan un aire tropical a cualquier espacio.', 178, 'Trepadora.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00'),
(179, 'Liana', 4, 167, 'Ideal para ambientes soleados, necesita riego moderado.', 179, 'Liana.png', '2024-09-25 19:40:00', '2024-09-25 19:40:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plant_symptom`
--

CREATE TABLE `plant_symptom` (
  `plant_id` int(11) NOT NULL,
  `symptom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plant_symptom`
--

INSERT INTO `plant_symptom` (`plant_id`, `symptom_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(11, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(30, 1),
(32, 1),
(33, 1),
(34, 1),
(36, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(167, 1),
(168, 1),
(1, 2),
(2, 2),
(3, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(114, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(140, 2),
(141, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 2),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(159, 2),
(160, 2),
(161, 2),
(162, 2),
(163, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(177, 2),
(178, 2),
(179, 2),
(1, 3),
(2, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(26, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(51, 3),
(52, 3),
(53, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(132, 3),
(136, 3),
(147, 3),
(148, 3),
(153, 3),
(171, 3),
(1, 4),
(2, 4),
(4, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(17, 5),
(18, 5),
(19, 5),
(20, 5),
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(51, 5),
(52, 5),
(53, 5),
(54, 5),
(55, 5),
(56, 5),
(57, 5),
(58, 5),
(59, 5),
(60, 5),
(61, 5),
(62, 5),
(63, 5),
(64, 5),
(65, 5),
(66, 5),
(67, 5),
(68, 5),
(69, 5),
(70, 5),
(71, 5),
(72, 5),
(73, 5),
(75, 5),
(76, 5),
(77, 5),
(78, 5),
(79, 5),
(80, 5),
(81, 5),
(82, 5),
(83, 5),
(84, 5),
(85, 5),
(86, 5),
(87, 5),
(88, 5),
(89, 5),
(90, 5),
(91, 5),
(92, 5),
(93, 5),
(94, 5),
(95, 5),
(96, 5),
(97, 5),
(109, 5),
(131, 5),
(132, 5),
(133, 5),
(134, 5),
(135, 5),
(136, 5),
(137, 5),
(140, 5),
(141, 5),
(143, 5),
(144, 5),
(145, 5),
(146, 5),
(147, 5),
(148, 5),
(149, 5),
(150, 5),
(151, 5),
(152, 5),
(153, 5),
(154, 5),
(155, 5),
(156, 5),
(157, 5),
(158, 5),
(159, 5),
(160, 5),
(161, 5),
(162, 5),
(163, 5),
(165, 5),
(166, 5),
(170, 5),
(171, 5),
(172, 5),
(173, 5),
(174, 5),
(1, 6),
(2, 6),
(3, 6),
(10, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(31, 6),
(32, 6),
(33, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(75, 6),
(76, 6),
(77, 6),
(78, 6),
(79, 6),
(80, 6),
(81, 6),
(82, 6),
(83, 6),
(89, 6),
(90, 6),
(91, 6),
(92, 6),
(93, 6),
(94, 6),
(95, 6),
(109, 6),
(137, 6),
(146, 6),
(149, 6),
(150, 6),
(152, 6),
(160, 6),
(165, 6),
(166, 6),
(170, 6),
(172, 6),
(173, 6),
(174, 6),
(31, 7),
(32, 7),
(34, 7),
(35, 7),
(36, 7),
(69, 7),
(70, 7),
(71, 7),
(4, 8),
(5, 8),
(20, 8),
(22, 8),
(23, 8),
(24, 8),
(25, 8),
(83, 8),
(3, 9),
(5, 10),
(10, 10),
(19, 10),
(69, 10),
(70, 10),
(71, 10),
(72, 10),
(3, 11),
(4, 11),
(5, 11),
(6, 11),
(7, 11),
(8, 11),
(9, 11),
(10, 11),
(11, 11),
(13, 11),
(14, 11),
(15, 11),
(16, 11),
(17, 11),
(18, 11),
(20, 11),
(21, 11),
(22, 11),
(23, 11),
(24, 11),
(25, 11),
(38, 11),
(39, 11),
(40, 11),
(41, 11),
(42, 11),
(43, 11),
(44, 11),
(175, 11),
(176, 11),
(177, 11),
(178, 11),
(179, 11),
(6, 12),
(7, 12),
(8, 12),
(9, 12),
(11, 12),
(13, 12),
(14, 12),
(15, 12),
(16, 12),
(17, 12),
(18, 12),
(131, 12),
(133, 12),
(134, 12),
(154, 12),
(177, 12),
(178, 12),
(179, 12),
(104, 13),
(135, 13),
(140, 13),
(141, 13),
(143, 13),
(144, 13),
(145, 13),
(151, 13),
(154, 13),
(155, 13),
(156, 13),
(157, 13),
(158, 13),
(159, 13),
(161, 13),
(162, 13),
(163, 13),
(167, 13),
(168, 13),
(169, 13),
(31, 14),
(33, 14),
(34, 14),
(35, 14),
(36, 14),
(131, 14),
(133, 14),
(134, 14),
(135, 14),
(140, 14),
(141, 14),
(143, 14),
(144, 14),
(145, 14),
(151, 14),
(155, 14),
(156, 14),
(157, 14),
(158, 14),
(159, 14),
(161, 14),
(162, 14),
(163, 14),
(12, 15),
(54, 15),
(55, 15),
(56, 15),
(57, 15),
(58, 15),
(59, 15),
(60, 15),
(61, 15),
(62, 15),
(63, 15),
(64, 15),
(65, 15),
(66, 15),
(67, 15),
(68, 15),
(89, 15),
(90, 15),
(91, 15),
(92, 15),
(93, 15),
(94, 15),
(95, 15),
(97, 15),
(109, 15),
(137, 15),
(150, 15),
(165, 15),
(166, 15),
(170, 15),
(19, 16),
(38, 16),
(39, 16),
(40, 16),
(41, 16),
(42, 16),
(43, 16),
(44, 16),
(98, 16),
(99, 16),
(100, 16),
(101, 16),
(102, 16),
(103, 16),
(105, 16),
(106, 16),
(107, 16),
(108, 16),
(110, 16),
(111, 16),
(112, 16),
(114, 16),
(116, 16),
(117, 16),
(118, 16),
(119, 16),
(120, 16),
(121, 16),
(122, 16),
(123, 16),
(124, 16),
(125, 16),
(126, 16),
(127, 16),
(128, 16),
(129, 16),
(21, 17),
(54, 19),
(55, 19),
(56, 19),
(57, 19),
(58, 19),
(59, 19),
(60, 19),
(61, 19),
(62, 19),
(63, 19),
(64, 19),
(65, 19),
(66, 19),
(67, 19),
(68, 19),
(89, 19),
(90, 19),
(91, 19),
(92, 19),
(93, 19),
(94, 19),
(95, 19),
(96, 19),
(97, 19),
(98, 19),
(99, 19),
(100, 19),
(101, 19),
(102, 19),
(103, 19),
(105, 19),
(106, 19),
(107, 19),
(108, 19),
(109, 19),
(110, 19),
(111, 19),
(112, 19),
(114, 19),
(116, 19),
(117, 19),
(118, 19),
(119, 19),
(120, 19),
(121, 19),
(122, 19),
(123, 19),
(124, 19),
(125, 19),
(126, 19),
(127, 19),
(128, 19),
(129, 19),
(131, 19),
(133, 19),
(134, 19),
(135, 19),
(137, 19),
(140, 19),
(141, 19),
(143, 19),
(144, 19),
(145, 19),
(150, 19),
(151, 19),
(154, 19),
(155, 19),
(156, 19),
(157, 19),
(158, 19),
(159, 19),
(161, 19),
(162, 19),
(163, 19),
(165, 19),
(166, 19),
(167, 19),
(168, 19),
(169, 19),
(170, 19),
(26, 20),
(27, 20),
(28, 20),
(29, 20),
(30, 20),
(45, 20),
(46, 20),
(47, 20),
(48, 20),
(49, 20),
(51, 20),
(52, 20),
(53, 20),
(84, 20),
(85, 20),
(86, 20),
(87, 20),
(88, 20),
(132, 20),
(136, 20),
(147, 20),
(148, 20),
(153, 20),
(171, 20),
(26, 24),
(27, 24),
(28, 24),
(29, 24),
(30, 24),
(45, 24),
(46, 24),
(47, 24),
(48, 24),
(49, 24),
(51, 24),
(52, 24),
(53, 24),
(84, 24),
(85, 24),
(86, 24),
(87, 24),
(88, 24),
(132, 24),
(136, 24),
(147, 24),
(148, 24),
(153, 24),
(171, 24),
(54, 26),
(55, 26),
(56, 26),
(57, 26),
(58, 26),
(59, 26),
(60, 26),
(61, 26),
(62, 26),
(63, 26),
(64, 26),
(65, 26),
(66, 26),
(67, 26),
(68, 26),
(89, 26),
(90, 26),
(91, 26),
(92, 26),
(93, 26),
(94, 26),
(95, 26),
(96, 26),
(97, 26),
(109, 26),
(137, 26),
(150, 26),
(165, 26),
(166, 26),
(170, 26),
(72, 27),
(37, 28),
(73, 28),
(75, 28),
(76, 28),
(77, 28),
(78, 28),
(79, 28),
(80, 28),
(81, 28),
(82, 28),
(83, 28),
(146, 28),
(149, 28),
(152, 28),
(160, 28),
(172, 28),
(173, 28),
(174, 28),
(37, 29),
(73, 29),
(75, 29),
(76, 29),
(77, 29),
(78, 29),
(79, 29),
(80, 29),
(81, 29),
(82, 29),
(83, 29),
(96, 29),
(129, 29),
(146, 29),
(149, 29),
(152, 29),
(160, 29),
(172, 29),
(173, 29),
(174, 29),
(176, 29),
(167, 30),
(168, 30),
(169, 30),
(19, 31),
(96, 31),
(97, 31),
(12, 32),
(175, 32),
(98, 33),
(99, 33),
(100, 33),
(101, 33),
(102, 33),
(103, 33),
(105, 33),
(106, 33),
(107, 33),
(108, 33),
(110, 33),
(111, 33),
(112, 33),
(114, 33),
(116, 33),
(117, 33),
(118, 33),
(119, 33),
(120, 33),
(121, 33),
(122, 33),
(123, 33),
(124, 33),
(125, 33),
(126, 33),
(127, 33),
(128, 33),
(129, 33),
(169, 33),
(175, 33),
(176, 33),
(177, 33),
(178, 33),
(179, 33),
(175, 34),
(176, 34),
(177, 34),
(178, 34),
(179, 34),
(98, 35),
(99, 35),
(100, 35),
(101, 35),
(102, 35),
(103, 35),
(105, 35),
(106, 35),
(107, 35),
(108, 35),
(110, 35),
(111, 35),
(112, 35),
(114, 35),
(116, 35),
(117, 35),
(118, 35),
(119, 35),
(120, 35),
(121, 35),
(122, 35),
(123, 35),
(124, 35),
(125, 35),
(126, 35),
(127, 35),
(128, 35),
(129, 35),
(104, 36),
(104, 37),
(12, 38),
(104, 38),
(108, 42),
(104, 43),
(131, 43),
(133, 43),
(134, 43),
(135, 43),
(140, 43),
(141, 43),
(143, 43),
(144, 43),
(145, 43),
(151, 43),
(155, 43),
(156, 43),
(157, 43),
(158, 43),
(159, 43),
(161, 43),
(162, 43),
(163, 43),
(37, 44),
(73, 44),
(75, 44),
(76, 44),
(77, 44),
(78, 44),
(79, 44),
(80, 44),
(81, 44),
(82, 44),
(98, 44),
(99, 44),
(100, 44),
(101, 44),
(102, 44),
(103, 44),
(105, 44),
(106, 44),
(107, 44),
(108, 44),
(110, 44),
(111, 44),
(112, 44),
(114, 44),
(116, 44),
(117, 44),
(118, 44),
(119, 44),
(120, 44),
(121, 44),
(122, 44),
(123, 44),
(124, 44),
(125, 44),
(126, 44),
(127, 44),
(128, 44),
(146, 44),
(149, 44),
(152, 44),
(154, 44),
(160, 44),
(172, 44),
(173, 44),
(174, 44),
(175, 44),
(176, 44),
(177, 44),
(178, 44),
(179, 44),
(26, 45),
(27, 45),
(28, 45),
(29, 45),
(30, 45),
(45, 45),
(46, 45),
(47, 45),
(48, 45),
(49, 45),
(51, 45),
(52, 45),
(53, 45),
(84, 45),
(85, 45),
(86, 45),
(87, 45),
(88, 45),
(132, 45),
(136, 45),
(147, 45),
(148, 45),
(153, 45),
(167, 45),
(168, 45),
(169, 45),
(171, 45),
(19, 46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plant_user`
--

CREATE TABLE `plant_user` (
  `user_id` int(11) NOT NULL,
  `plant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plant_user`
--

INSERT INTO `plant_user` (`user_id`, `plant_id`) VALUES
(2, 1),
(11, 4),
(15, 4),
(12, 8),
(2, 9),
(12, 10),
(14, 10),
(2, 11),
(15, 11),
(10, 15),
(2, 21),
(11, 23),
(10, 24),
(13, 24),
(13, 25),
(14, 31),
(10, 49),
(2, 52),
(11, 56),
(2, 80),
(2, 95),
(10, 111);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2024-05-26 17:15:51', '2024-09-19 19:25:04'),
(2, 'programador', '2024-05-26 18:15:43', '2024-05-26 18:15:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(6, 1),
(7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `symptoms`
--

CREATE TABLE `symptoms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `plague_id` int(11) DEFAULT NULL,
  `treatment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `symptoms`
--

INSERT INTO `symptoms` (`id`, `name`, `description`, `plague_id`, `treatment_id`, `created_at`, `updated_at`) VALUES
(1, 'Hojas Blandas', 'Las Hojas están blandas y caen facilmente', 1, 1, '2024-09-11 10:01:00', '2024-10-04 02:11:00'),
(2, 'Hojas Amarillas', 'Las Hojas presentan una Tonalidad amarilla', 2, 2, '2024-09-11 12:10:00', '2024-10-03 21:27:00'),
(3, 'Hojas dobladas', 'Las Hojas se muestran notoriamente dobladas de forma descendente', 1, 3, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(4, 'Planta Secó', 'En general la planta se Secó casi completamente', 1, 4, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(5, 'Presencia de Insectos', 'presencia de insectos con aspecto algodonoso.', 3, 5, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(6, 'Hojas Arrugadas o Caídas', 'Las hojas se muestran arrugadas fuera de lo normal además de precentar cierta opacidad ', 1, 6, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(7, 'Hojas Marrones', 'Hojas completamente color Marrón', 1, 7, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(8, 'Hojas con Puntas Marrones', 'Hohas con una tonalidad marrón solamente en las puntas', 1, 8, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(9, 'Manchas Blancas', 'Hojas con Manchas blanacas', 2, 9, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(10, 'Frutos Deformados', 'Frutos deformados por ataque de Trips o Gusanos', 10, 10, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(11, 'Telarañas en Hojas', 'Las Hojas prensentam presencia de telarañas', 2, 11, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(12, 'Hojas Deformadas', 'Las Hojas presentan un aspecto antinatural', 7, 12, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(13, 'Lento Crecimiento', 'Evidencia un Notorio lento Crecimiento en su planta', 29, 13, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(14, 'Hojas Secas', 'Solamente las hojas de su planta se encuentran secas', 2, 14, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(15, 'Patrones Serpenteantes', 'Las Hojas de su planta presentan patrones de forma serpenteante o espiral', 12, 15, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(16, 'Hojas con Túneles', 'Las Hojas presentan varios túneles en toda la planta', 12, 16, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(17, 'Platanillos con Manchas', 'Ls platanillos de su planta Presentan Manchas ', 7, 17, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(18, 'Hojas Mordidas', 'Las Hojas presentan mordidas por escarabajos u otros insectos masticadores', 9, 18, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(19, 'Manchas Plateadas', 'Manchas plateadas en las hojas a causa de Trips', 7, 19, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(20, 'Flores y Hojas Mordidas', 'Las Flores y las Hojas  presentan mordidas por escarabajos u otros insectos masticadores', 16, 20, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(21, 'Brotes', 'nuevos crecimientos de las plantas, que pueden incluir tallos, yemas y hojas.', 15, 21, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(22, 'Hojas con Agujeros', 'Las Hojas presentan multiples agujeros ', 9, 22, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(23, 'Hojas con Presencia de Hormigas', 'Hay multiple presencia de hormigas en la planta especialmente en las hojas', 5, 23, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(24, 'Flores Deformadas', 'Flores deformadas por insestación de Trips', 7, 24, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(25, 'Hojas Pegajosas', 'Manchas pegajosas en las hojas, presencia de insectos con aspecto algodonoso.', 3, 25, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(26, 'Senderos en las Hojas', 'Senderos visibles en las hojas causado por minador de hojas', 12, 26, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(27, 'Espigas dañadas o deformadas', 'Espigas dañadas o deformadas Causadas Infestación de gusanos cogolleros o plagas similares.', 27, 27, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(28, 'Frutos con Manchas o Pudrición', 'Pudrición apical (deficiencia de calcio) o enfermedades como el tizón tardío.', 1, 28, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(29, 'Frutos Dañados o Deformados', 'Frutos Dañados por Deficiencias nutricionales, especialmente de calcio, o daños por plagas.', 19, 29, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(30, 'Flores Marchitas', 'Flores Marchiitas por Deficiencia de nutrientes, daños por plagas o enfermedades.', 1, 30, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(31, 'Túneles en el Tronco', 'El tronco del árbol presenta múltiples túneles', 30, 31, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(32, 'Dáños en las Raíces y Tallo base', 'La planta presenta dañós en las raíces y en su tallo.', 31, 32, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(33, 'Raíces Podridas ', 'Las raíces de la planta o árbol se evidencia alto grado de pudrición', 6, 33, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(34, 'Tronco débil', 'En el tronco del árbol se evidencia alto grado de pudrición', 6, 34, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(35, 'Presencia de Moho Negro', 'La planta presenta manchas pegajosas en las hojas, acompañadas de moho negro', 3, 35, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(36, 'Pudrición en Raíces ', 'La planta presenta manchas marrones acompañada de pudrición en sus raíces  ', 1, 36, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(37, 'Bolsas de Seda en Ramas', 'La pranta presenta defoliación y especie de bolsas de seda en sus ramas', 34, 37, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(38, 'Perforaciones e la corteza', 'Hay presencia de polvo de madera y perforaciones en la corteza del árbol', 30, 38, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(39, 'Polvo de Madera', 'Hay presencia de polvo de madera y perforaciones en la corteza del árbol', 30, 39, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(40, 'Pelusa en las Hojas', 'Las hojas presenta manchas blancas o una especie de pelusa', 6, 40, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(41, 'Raíces Blandas', 'Raíces marrones y muy blandas', 1, 41, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(42, 'Caída de Hojas en Invierno', 'Durante temporadas de invierno a la planta o árbol se le caen las hojas', 1, 42, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(43, 'Defoliación', 'Caída prematura de las hojas de los árboles y plantas, producida por enfermedad, contaminación ambiental o acción humana', 9, 43, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(44, 'Pérdida de Hojas', 'Caída prematura de las hojas de los árboles y plantas, producida por enfermedad, contaminación ambiental o acción humana', 1, 44, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(45, 'Caída de Flores', 'La planta presenta caída de flores por estrés ambiental, como cambios bruscos de temperatura o humedad.', 1, 45, '2024-09-11 23:11:00', '2024-10-03 21:27:00'),
(46, 'Presencia de Hongos', 'Presencia de Hongos por humedad excesiva y mala circulación de aire.', 32, 46, '2024-09-11 23:11:00', '2024-10-03 21:27:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `treatments`
--

CREATE TABLE `treatments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(350) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `treatments`
--

INSERT INTO `treatments` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Riego y rehubicación', 'Reduce el riego y coloca la planta en un lugar con luz solar directa.', '2024-09-17 23:18:00', '2024-09-17 23:18:00'),
(2, 'Ajusta Drenaje', 'Ajusta la frecuencia de riego y asegúrate de que el suelo drene bien. Fertiliza con un abono equilibrado si es necesario.', '2024-09-17 23:19:00', '2024-09-17 23:19:00'),
(3, 'Exponer a luz Solar', 'Reubica tu planta a un espacio con más luminosidad y observa si crece feliz en ese nuevo rincón.', '2024-09-19 15:29:00', '2024-09-19 16:34:00'),
(4, 'Revivir Planta', 'Eliminar los tallos y flores marchitas, el punto de partida para revivir.Volver a hidratar a conciencia, fundamental para revivir. Plantar en una maceta más grande y con sustrato nuevo.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(5, 'Eliminar Insectos', 'Usa un insecticida adecuado o trata las áreas afectadas con soluciones de agua y jabón. Mantén un control regular para evitar infestaciones.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(6, 'Aumento de Riego', 'Aumenta la frecuencia de riego, asegurándote de que el sustrato se seque entre riegos, y coloca la planta en un lugar con luz indirecta.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(7, 'Aumentar Humedad', 'Aumenta la humedad alrededor de la planta y evita las corrientes de aire frío. Puedes utilizar un humidificador o rociar las hojas con agua.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(8, 'Regular Humedad', 'Aumenta la humedad ambiental y aleja la planta de corrientes de aire.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(9, 'Remover Manchas Blancas', 'Limpia las hojas con un paño húmedo y aplica un insecticida natural o jabón potásico.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(10, 'Prevenir Deformidad en Frutos', 'Proporciona un fertilizante equilibrado preferiblemente los recomendados para tu planta y controla las plagas con tratamientos adecuados.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(11, 'Remover Telarañas', 'Limpia las hojas con un paño húmedo y aplica un acaricida o un insecticida natural.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(12, 'Remover Cochinillas', 'Lava las hojas con agua y jabón o usa un insecticida natural como el aceite de neem para controlar las plagas.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(13, 'Estimular Crecimiento', 'Poda regularmente para estimular el crecimiento y mantener la planta compacta. Inspecciona la planta para detectar plagas y trata de manera preventiva o curativa con insecticidas naturales o productos específicos. ', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(14, 'Corregir Sequedad en Hojas', 'Ajusta el riego, permitiendo que el suelo se seque ligeramente entre riegos. Asegúrate de que la tierra tenga un buen drenaje para evitar el encharcamiento.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(15, 'Remover Minadores', 'Retira las hojas afectadas y aplica un insecticida específico para minadores.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(16, 'Eliminar Gusanos de la Madera', 'Aplica insecticidas específicos para madera y realiza tratamientos preventivos de protección de la madera.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(17, 'Corregir Manchas en Platanillos', 'Realiza inspecciones regulares para detectar plagas y trata según sea necesario. Mantén el suelo bien drenado y asegúrate de que la planta reciba suficiente luz solar para un crecimiento saludable.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(18, 'Remover escarabajos o isectos Masticadores', 'Retira manualmente los escarabajos y utiliza un insecticida específico que poseas para controlar la plaga.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(19, 'Controlar Trips', 'Aplica un insecticida específico para trips y recorta las áreas afectadas.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(20, 'Rmover Insectos Masticadores en Flores', 'Retira manualmente los escarabajos y utiliza un insecticida específico para controlar la plaga.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(21, 'Corregir Brotes', 'Rocía con agua jabonosa o aplica un insecticida específico para insectos que causan dichos problemas.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(22, 'Prevenir Agujeros en Hojas', 'Usa barreras físicas como ceniza o cáscaras de huevo trituradas alrededor de la planta, y aplica productos específicos para caracoles o insecticidas naturales.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(23, 'Remover Presencia de Hormigas ', 'Usa insecticidas específicos para hormigas y realiza tratamientos para eliminar otras posibles plagas presentes.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(24, 'Remover Trips de Flores', 'Aplica un insecticida específico para trips y recorta las áreas afectadas.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(25, 'Remover Pegoste de Hojas ', 'Lava las hojas afectadas y aplica un insecticida sistémico para controlar las plagas. Retira las cochinillas manualmente con un paño húmedo y aplica un insecticida adecuado para eliminar las plagas.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(26, 'Corregir Senderos en Hojas', 'Elimina las hojas afectadas y aplica un insecticida adecuado para Minador de Hojas si la infestación es severa.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(27, 'Deformidad en Espigas', 'Usa insecticidas específicos para gusanos y realiza monitoreo regular para controlar la población de plagas.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(28, 'Evitar Pudrición y Deformidad en Frutos', 'Asegúrate de proporcionar un suministro adecuado de nutrientes y aplicar tratamientos antifúngicos si es necesario. Mantén un buen drenaje y evita el exceso de humedad.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(29, 'Corregir Deformidad en Frutos', 'Proporciona un fertilizante equilibrado y controla las plagas con tratamientos adecuados, Prioriza Abonar la planta en el intervalo recomendado en su cuidado.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(30, 'Flores Marchitas', 'Proporciona un fertilizante equilibrado y controla las plagas con tratamientos adecuados. Asegúrate de que la planta esté recibiendo la cantidad adecuada de luz y agua. La poda de flores marchitas y el uso de tratamientos de plagas como trampas o insecticidas pueden mejorar la salud general de la planta.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(31, 'Tratamiento de Túneles', 'Poda y destruye las ramas afectadas. Aplica tratamientos preventivos con insecticidas específicos y mantén un monitoreo continuo de la planta.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(32, 'Tratamiento de Raíces', 'Asegúrate de que el suelo esté bien drenado para evitar la acumulación de humedad, lo que atrae a las larvas. Usa un insecticida para el suelo o cambia el sustrato si es necesario.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(33, 'Evitar Pudrición en Raíces', 'Mejora el drenaje del suelo, reduce la frecuencia de riego y aplica fungicidas específicos para combatir las infecciones fúngicas.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(34, 'Tratamiento para Tronco Débil', 'Mejora el drenaje del suelo, reduce la frecuencia de riego y aplica fungicidas específicos para combatir las infecciones fúngicas.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(35, 'Eliminar Moho Negro', 'Limpia las hojas con una solución de agua y jabón suave. Utiliza un insecticida sistémico si la plaga persiste.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(36, 'Tratamiento de Pudrición de Raíces', 'Asegúrate de que el suelo esté bien drenado para evitar la acumulación de humedad, lo que atrae a las larvas. Usa un insecticida para el suelo o cambia el sustrato si es necesario.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(37, 'Eliminar Bolas de Seda', 'Elimina manualmente los nidos en invierno y aplica insecticidas específicos para orugas. También se puede usar trampas de feromonas para controlar a los adultos.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(38, 'Curar Perforaciones en la Corteza', 'Inyectar insecticidas sistémicos en el tronco y mejorar la salud general del árbol para que sea más resistente a plagas.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(39, 'Eliminar Polvo de la Corteza', 'Inyectar insecticidas sistémicos en el tronco y mejorar la salud general del árbol para que sea más resistente a plagas.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(40, 'Eliminar Pelusa de Hojas', 'Aplicar fungicidas específicos y mejorar la circulación del aire alrededor de la planta para reducir la humedad.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(41, 'Curar Raíces Blandas', 'Dejar secar el sustrato antes de regar de nuevo y trasplantar a un sustrato más adecuado si es necesario.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(42, 'Evitar Caída de Hojas en Invierno', 'Proteger la planta de temperaturas extremas y asegurarse de que reciba luz adecuada.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(43, 'Controlar Defoliación', 'Aplicar insecticidas y controlar las plagas manualmente.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(44, 'Evitar Pérdida de Hojas', 'Asegurarse de que la planta reciba la cantidad adecuada de agua y revisar las condiciones del suelo.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(45, 'Evitar Caída de Flores', 'Mantener condiciones estables y adecuadas de temperatura y humedad.', '2024-09-19 16:34:00', '2024-09-19 16:34:00'),
(46, 'Evitar Presencia de Hongos', 'Mejorar el drenaje y aplicar un fungicida.', '2024-09-19 16:34:00', '2024-09-19 16:34:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `password`, `email`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'Juan Pérez', 'juanp', '$2y$10$FgcfRSGF6NHJoSsqZv0okuM4jPkJvW0BRhrFo/xX1oxYUAJh1588u', 'juan.perez@example.com', 1, '2024-10-18 04:40:23', '2024-10-18 04:44:02'),
(2, 'Ana Gómez', 'anag', '$2y$10$6oc6nxdAyohkjR/a2NLO8OL7BGzou58dm/0vxCOw107juR91OLuqy', 'ana.gomez@example.com', 1, '2024-10-18 04:41:15', '2024-10-19 01:22:01'),
(3, 'Carlos López', 'carlosl', '$2y$10$Q41hZlPraG7UzaLBIK2qYem2MzhIe8a12Wwf8xfnQgjjVw8pCic/e', 'carlos.lopez@example.com', 1, '2024-10-18 04:42:36', '2024-10-18 04:44:09'),
(4, 'Laura Martínez', 'lauram', '$2y$10$Xq6.znP4SV4NUiN3c9G6q.fnnPBYXSmnOW0/IUpAYtcaH2J3fjS5m', 'laura.martinez@example.com', 1, '2024-10-18 04:45:03', '2024-10-19 01:22:06'),
(5, 'Pedro Sánchez', 'pedros', '$2y$10$fTUBbQN07cHxJBZ3WUONlu.XpwH7q.CvpHDldoklpqNGsx5aHza8S', 'pedro.sanchez@example.com', 1, '2024-10-18 04:45:58', '2024-10-18 04:45:58'),
(6, 'María Rodríguez', 'mariar', '$2y$10$g586SO9KuEQC4bc3VPdQJudrzfqwCEhRS943hNOcIgkyXnNZoJuru', 'maria.rodriguez@example.com', 1, '2024-10-18 04:46:31', '2024-10-18 04:46:31'),
(7, 'José Martínez', 'josem', '$2y$10$m2mLlXFpMOKuBfyuyNkl.u97N2m2tI4A8RebtP4J6k17WNiZZRFPm', 'jose.martinez@example.com', 1, '2024-10-18 04:48:13', '2024-10-18 04:48:13'),
(10, 'Maria Carolina', 'mari123', '$2y$10$y.JZUP0zxMA0BnDOhAY/tOydDAUvLpMVPynKjipurHuDcJ3L/JrI.', 'maria@gmail.com', 1, '2024-10-19 04:52:19', '2024-10-19 04:53:09'),
(11, 'Cristina María Torres', 'cris123', '$2y$10$5uDYSOwvZTgorNd7/ZTtFeeryX38J8E7T8f72MgQfeTKu3n/ps4HC', 'cristina@gmail.com', 1, '2024-10-19 05:22:54', '2024-10-19 05:23:21'),
(12, 'Marco', 'caicedo2002', '$2y$10$7ReQvmIn.4VqBdxGaVGHzuCVgR9gsRojg3dVohwVMHHtkbFWJm7XC', 'marcoscaicedo4125@gmail.com', 1, '2024-12-11 11:54:16', '2024-12-11 11:54:16'),
(13, 'Sara', 'sara08', '$2y$10$m/MyfnKWWUMYVmtyUzN33eSjWIaipTT5xzXsLIOmBhE94QDxtk2zG', 'sara.caicedo04@usc.edu.co', 1, '2024-12-11 20:53:20', '2024-12-11 20:53:20'),
(14, 'Libia ', 'mariana ', '$2y$10$gmCyX8WMLQJUjxjkf5WXuOcC4GCx3W8d49ccajD4sI.wg.Xy/q.gK', 'mariana@gmail.com', 1, '2024-12-12 06:44:05', '2024-12-12 06:44:05'),
(15, 'Js', 'js', '$2y$10$CcKzgHxAirvKEsxs5WU7nuAyqkI41n2fXu7BX74FqqX/4KuncGD0.', 'js@gmail.com', 1, '2025-07-16 18:19:55', '2025-07-16 18:19:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cares`
--
ALTER TABLE `cares`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `fk_cares_fertilizer1_idx` (`fertilizer_id`),
  ADD KEY `name` (`name`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `updated_at` (`updated_at`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`name`);

--
-- Indices de la tabla `fertilizers`
--
ALTER TABLE `fertilizers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indices de la tabla `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indices de la tabla `origins`
--
ALTER TABLE `origins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indices de la tabla `plagues`
--
ALTER TABLE `plagues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indices de la tabla `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_plants_origins_idx` (`origin_id`),
  ADD KEY `fk_plants_genders_idx` (`gender_id`),
  ADD KEY `fk_plants_cares_idx` (`care_id`);

--
-- Indices de la tabla `plant_symptom`
--
ALTER TABLE `plant_symptom`
  ADD PRIMARY KEY (`plant_id`,`symptom_id`),
  ADD KEY `fk_symptoms` (`symptom_id`);

--
-- Indices de la tabla `plant_user`
--
ALTER TABLE `plant_user`
  ADD PRIMARY KEY (`user_id`,`plant_id`),
  ADD KEY `fk_users_plants_plants1_idx` (`plant_id`),
  ADD KEY `fk_users_plants_users1_idx` (`user_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `fk_role_user1_idx` (`role_id`),
  ADD KEY `fk_role_user2_idx` (`user_id`);

--
-- Indices de la tabla `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `fk_symptoms_plague_id_idx` (`plague_id`),
  ADD KEY `fk_symptoms_treatment_id_idx` (`treatment_id`);

--
-- Indices de la tabla `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  ADD KEY `fk_users_cities1_idx` (`city_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cares`
--
ALTER TABLE `cares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `fertilizers`
--
ALTER TABLE `fertilizers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de la tabla `origins`
--
ALTER TABLE `origins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `plagues`
--
ALTER TABLE `plagues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `plants`
--
ALTER TABLE `plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cares`
--
ALTER TABLE `cares`
  ADD CONSTRAINT `fk_care_fertilizer1` FOREIGN KEY (`fertilizer_id`) REFERENCES `fertilizers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `plants`
--
ALTER TABLE `plants`
  ADD CONSTRAINT `fk_plants_cares` FOREIGN KEY (`care_id`) REFERENCES `cares` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_plants_genders` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_plants_origins` FOREIGN KEY (`origin_id`) REFERENCES `origins` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `plant_symptom`
--
ALTER TABLE `plant_symptom`
  ADD CONSTRAINT `fk_plants` FOREIGN KEY (`plant_id`) REFERENCES `plants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_symptoms` FOREIGN KEY (`symptom_id`) REFERENCES `symptoms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `plant_user`
--
ALTER TABLE `plant_user`
  ADD CONSTRAINT `fk_users_plants_plants1` FOREIGN KEY (`plant_id`) REFERENCES `plants` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_plants_usuarios1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `fk_role_user1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_role_user2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `symptoms`
--
ALTER TABLE `symptoms`
  ADD CONSTRAINT `symptoms_ibfk_1` FOREIGN KEY (`plague_id`) REFERENCES `plagues` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `symptoms_ibfk_2` FOREIGN KEY (`treatment_id`) REFERENCES `treatments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_cities1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
