-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2022 a las 23:43:59
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `php_fcp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cheka`
--

CREATE TABLE `cheka` (
  `id` int(11) NOT NULL,
  `apertura` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `num_dni` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cheka`
--

INSERT INTO `cheka` (`id`, `apertura`, `fecha`, `num_dni`) VALUES
(12, 'ABIERTO', '2021-12-12', '40714000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_kids`
--

CREATE TABLE `data_kids` (
  `id` int(11) NOT NULL,
  `nom_dni` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `num_dni` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `edad` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `aula` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `data_kids`
--

INSERT INTO `data_kids` (`id`, `nom_dni`, `num_dni`, `nombre`, `apellido`, `edad`, `aula`, `fecha`) VALUES
(9, 'DNI', '', 'Isabella', 'Flores', '8', 'VERDE', '2021-11-19 21:25:38'),
(10, 'DNI', '73409919', 'Romina', 'Chanca', '12', 'AZUL', '2021-11-20 03:17:04'),
(11, 'DNI', '76112066', 'Sibiany ', 'Solá Vargas ', '10', 'AZUL', '2021-11-20 07:27:55'),
(12, 'DNI', '61799185', 'Jaspe ', 'Solá Vargas ', '12', 'AZUL', '2021-11-20 07:29:16'),
(14, 'DNI', '78893685', 'Crisstyn ', 'Solá Vargas ', '7', 'VERDE', '2021-11-20 07:31:23'),
(15, 'DNI', '90944442', 'Lucas', 'Diaz', '3', 'AMARILLA', '2021-11-24 23:57:38'),
(16, 'DNI', '60306194', 'Carolee Jane ', 'Castillon Melgar ', '10', 'AZUL', '2021-11-25 00:32:50'),
(17, 'DNI', '989348798', 'Jade', 'Reyes Pillaca', '11', 'AZUL', '2021-11-25 01:38:58'),
(18, 'DNI', '77999039', 'Mateo', 'Tomas Paniagua ', '8', 'VERDE', '2021-11-25 02:24:22'),
(19, 'DNI', '79992117', 'Areli Valentina ', 'Flores', '4', 'AMARILLA', '2021-11-25 03:09:27'),
(20, 'DNI', '91505969', 'Emanuel Giancarlo', 'Flores Florecin ', '2', 'AMARILLA', '2021-11-25 03:11:33'),
(21, 'DNI', '55128066', 'Jesia nohemi ', 'Cuevas molina', '3', 'AMARILLA', '2021-11-25 03:55:47'),
(22, 'DNI', '74677072', 'Jorge Luis', 'Noblecilla Villagomez', '11', 'AZUL', '2021-11-25 04:07:44'),
(23, 'DNI', '90902892', 'Dominic Luca', 'Noblecilla Villagomez', '3', 'AMARILLA', '2021-11-25 04:09:01'),
(24, 'DNI', '74794705', 'Maricielo ', 'Ventura Navarro ', '11', 'AZUL', '2021-11-25 05:35:19'),
(25, 'DNI', '79406471', 'Elsie Luciana', 'Navarro ', '5', 'AMARILLA', '2021-11-25 05:41:33'),
(26, 'DNI', '73921817', 'Sebastián', 'Huaracallo Esquén', '11', 'AZUL', '2021-11-25 06:13:19'),
(27, 'DNI', '91232960', 'Sol Emily', 'Huaco', '12', 'AZUL', '2021-11-25 06:21:31'),
(28, 'DNI', '77190612', 'Luna eimy', 'Huaco', '10', 'AZUL', '2021-11-25 06:24:28'),
(29, 'DNI', '91132179', 'Estrella', 'Huaco', '3', 'AMARILLA', '2021-11-25 06:31:08'),
(30, 'DNI', '74269190', 'Soraya', 'Aponte', '11', 'AZUL', '2021-11-25 07:37:04'),
(31, 'DNI', '62871084', 'Mirko', 'Cerquera Regalado', '10', 'AZUL', '2021-11-25 08:20:26'),
(32, 'DNI', '62871085', 'Kerenhapuc', 'Cerquera Regalado', '10', 'AZUL', '2021-11-25 08:23:24'),
(33, 'DNI', '78617950', 'Sebastian Gael', 'Chavez lopez', '7', 'VERDE', '2021-11-25 09:13:05'),
(34, 'CEDULA', '12345', 'Megan', 'Tapia', '6', 'VERDE', '2021-11-25 22:11:15'),
(35, 'CEDULA', '54321', 'Ethan ', 'Tapia', '4', 'AMARILLA', '2021-11-25 22:13:09'),
(36, 'DNI', '79980683', 'Mathias ', 'Morales Florecin ', '4', 'AMARILLA', '2021-11-27 01:35:04'),
(37, 'DNI', '77735897', 'Roberto Luciano', 'Grimaldo Gutierrez', '9', 'AZUL', '2021-11-27 19:11:39'),
(38, 'DNI', '61069037', 'Dakniel', 'Cerquera Regalado', '14', 'VERDE', '2021-12-02 08:12:42'),
(40, 'DNI', '90771406', 'Gia ', 'Combina ', '3', 'AMARILLA', '2021-12-03 02:06:40'),
(41, 'DNI', '45742041', 'Belen ', 'Rabanal Villagomez', '9', 'AZUL', '2021-12-03 06:08:18'),
(43, 'DNI', '91309060', 'ALMENDRA', 'RODRIGUEZ', '12', 'AZUL', '2021-12-04 08:20:11'),
(44, 'DNI', '60214815', 'JUAN DAVID', 'AVALOS', '6', 'VERDE', '2021-12-04 08:21:46'),
(45, 'DNI', '79362820', 'Bella Micaela', 'Effio Garcia', '6', 'VERDE', '2021-12-04 20:14:45'),
(46, 'DNI', '79709055', 'Liam Imanol', 'Garcia Vilchez', '5', 'VERDE', '2021-12-04 21:06:17'),
(47, 'DNI', '321456987', 'PEDRO ', 'GUEVARA', '7', 'VERDE', '2021-12-05 06:57:25'),
(48, 'DNI', '93456155', 'HEIRI', 'FERNANDEZ', '14', 'AZUL', '2021-12-05 09:46:49'),
(49, 'DNI', '936161879', 'Wilson', 'Reyes Pillaca', '7', 'VERDE', '2021-12-10 00:42:46'),
(50, 'DNI', '91419321', 'Aram Francesco ', 'Gutierrez Lozano', '2', 'AMARILLA', '2021-12-10 19:21:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dato_adulto`
--

CREATE TABLE `dato_adulto` (
  `id` int(11) NOT NULL,
  `nom_dni` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `num_dni` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `conexion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dato_adulto`
--

INSERT INTO `dato_adulto` (`id`, `nom_dni`, `num_dni`, `nombre`, `apellido`, `email`, `conexion`, `fecha`) VALUES
(20, 'DNI', '41780477', 'Samuel', 'Flores', 'dav.sam.t@gmail.com', 'Miraflores 1', '2021-11-17 21:22:48'),
(21, 'DNI', '75606438', 'Valeria', 'Enriquez', 'veenriquezg@gmail.com', 'Miraflores 4', '2021-11-18 21:23:05'),
(22, 'DNI', '75606428', 'Cristina', 'Enriquez Gamarra', 'cristinaenriquez268@gmail.com', 'Surquillo', '2021-11-18 21:23:12'),
(23, 'DNI', '46059166 ', 'Ana', 'Pupuche ', 'Anapupuche315@gmail.com ', 'S/Conexión', '2021-11-18 21:23:18'),
(25, 'DNI', '40715132', 'Juan Carlos', 'Revollar Agarini', 'juanka_peru@hotmail.com', 'San Luis', '2021-11-18 21:23:23'),
(26, 'DNI', '08861925', 'Cesar augusto', 'Quispe', 'caqv65@gmail.com', 'Surquillo', '2021-11-18 22:23:28'),
(27, 'DNI', '40714000', 'juan', 'salas', 'pr.juanmanuelsalas@gmail.com', 'S/Conexion', '2021-11-19 01:23:39'),
(28, 'DNI', '41560661', 'Giannina', 'Revollar', 'tahita23@hotmail.com', 'Miraflores 4', '2021-11-19 01:23:48'),
(29, 'DNI', '72049935 ', 'Yessenia Jiménez ', 'Rebaza ', 'Yanjimri@gmail.com ', 'Surco 2', '2021-11-19 21:23:55'),
(30, 'DNI', '46011770', 'Margot', 'Huerta', 'margot161189@gmail.com', 'Miraflores 1', '2021-11-19 21:23:59'),
(31, 'DNI', '74310209', 'Freddy', 'Pisco', '', 'Miraflores 1', '2021-11-19 21:24:04'),
(32, 'DNI', '75552751', 'David', 'Pérez Aquino', 'davidisaias4465365@gmail.com', 'Miraflores 1', '2021-11-19 21:24:10'),
(33, 'DNI', 'O7342395', 'Georgina Judith', 'Puppi  Peñaranda ', 'interjudith@hotmail.com ', 'Surco 2', '2021-11-19 21:24:14'),
(34, 'DNI', '000913246', 'Faby', 'Carrillos', '', 'Surco 1', '2021-11-19 21:24:17'),
(37, 'DNI', '41858963', 'Percy', 'Tapia', 'tapiarp@gmail.com', 'Surco 2', '2021-11-19 21:24:27'),
(41, 'DNI', '08867994', 'Jaqueline ', 'Romero', 'jromerod1967@gmail.com', 'Miraflores 3', '2021-11-19 21:24:33'),
(43, 'DNI', '08845004', 'ANA MARIA ', 'DE LA TORRE', 'ana-maria-2605@hotmail.com', 'Surquillo', '2021-11-19 21:24:41'),
(45, 'DNI', '07201542', 'Luis', 'Vargas Bermúdez', 'lvargasb99@gmail.com', 'Surco 1', '2021-11-19 21:24:43'),
(47, 'DNI', '61096547', 'Paulo', 'Casas', '956401170', 'Miraflores 3', '2021-11-19 21:24:46'),
(48, 'DNI', '07180771', 'MARIA', 'OLARTE', 'olartemary7@hotmail.com', 'Miraflores 3', '2021-11-19 21:24:49'),
(49, 'DNI', '42917975', 'Abel', 'Cruzado', 'abel_cruzadod@hotmail.com', 'Miraflores 3', '2021-11-19 21:24:52'),
(50, 'DNI', '48618753', 'JORGE', 'FLORES', 'JORGEANGEL2310@GMAIL.COM', 'Surco 1', '2021-11-19 21:24:56'),
(51, 'DNI', '40537977', 'Doraluz ', 'Rivera ', 'abel_cruzadod@hotmail.com', 'Miraflores 3', '0000-00-00 00:00:00'),
(55, 'DNI', '05201263', 'Olavo', '47007837', 'Juana', 'Surquillo', '0000-00-00 00:00:00'),
(56, 'DNI', '42144735', 'ABIGAIL', 'ABANTO', 'PRISSCI@HOTMAIL.COM                                                                                 ', 'Surco 1', '0000-00-00 00:00:00'),
(57, 'DNI', '09778786', 'JULIO', 'GAMBOA', 'julio.gamboa@sintec.com.pe', 'Surco 1', '0000-00-00 00:00:00'),
(58, 'DNI', '09918026', 'Marisol ', 'Navarro Apolinario ', 'marisolnav85@gmail.com', 'Los olivos', '0000-00-00 00:00:00'),
(59, 'DNI', '25447072', 'PEDRO', 'ORDERIQUE', 'p_orderique@hotmail.com', 'Surquillo', '0000-00-00 00:00:00'),
(62, 'DNI', '07368567', 'Carlos', 'Manco Terrazas ', 'Cmancot@gmail.com ', 'La Victoria', '0000-00-00 00:00:00'),
(63, 'DNI', '40617445', 'Anne', 'Cruzado', 'abel_cruzadod@hotmail.com', 'S/Conexion', '0000-00-00 00:00:00'),
(64, 'DNI', '72454739', 'Josue', 'Manco', 'Cmancot@gmail.com', 'La Victoria', '0000-00-00 00:00:00'),
(65, 'DNI', '47555599', 'Pamela', 'Quino Ramírez', 'quinoramirezpamela@gmail.com', 'Surco 1', '0000-00-00 00:00:00'),
(66, 'DNI', '09883375', 'Eddy', 'Luque', 'eddyluqu@gmail.com', 'Surco 1', '2021-11-20 02:38:40'),
(67, 'DNI', '989348798', 'Alejandrina', 'Pillaca', 'bella.alejandrina1@gmail.com', 'Surco 1', '2021-11-20 03:56:05'),
(68, 'CEDULA', '003301301 ', 'Noel Jesús ', 'Jiménez Lugo ', 'Noeljimenez1994@gmail.com', 'Surco 2', '2021-11-20 05:16:50'),
(69, 'DNI', '41964249', 'Marisol', 'Lopez pineda', 'mlopezpineda@hotmail.com', 'Miraflores 3', '2021-11-20 06:28:21'),
(70, 'DNI', '43753057', 'Natali', 'Berru', 'berquin2019@gmail.com', 'Miraflores 3', '2021-11-20 06:31:35'),
(71, 'DNI', '46265217', 'Patricia Nerea', 'Vargas Diaz', 'Jaspesibianycrisstynvargas@gmail.com', 'Surco 2', '2021-11-20 07:26:32'),
(72, 'DNI', '09359746', 'Jonan', 'Pecho', 'jonanpecho@gmail.com', 'Surco 2', '2021-11-20 07:28:51'),
(73, 'DNI', '41221722', 'Anasol', 'Huarcaya', 'ghuarcaya6@gmail.com', 'S/Conexion', '2021-11-20 08:26:37'),
(74, 'DNI', '42500540', 'Miguel angel ', 'Revollar Agarini', 'mrevollaragarini@gmail.com', 'San Luis', '2021-11-20 09:22:38'),
(75, 'CEDULA', '00141415', 'Julio', 'Peñaloza', 'hola23.23hola@gmail.com', 'Surquillo', '2021-11-21 09:17:09'),
(76, 'DNI', '19515902', 'Yormary', 'Centeno', 'centeno.yormary@gmail.com', 'Surquillo', '2021-11-21 09:18:11'),
(77, 'CEDULA', '17470761', 'Pedro', 'Gutierrez', 'Pedrojosegutierreztovar@gmail.com', 'Surquillo', '2021-11-21 10:31:57'),
(78, 'DNI', '70403107', 'Schavely ', 'Quino Ramírez', 'schavely2016@gmail.com', 'Surco 1', '2021-11-21 11:45:25'),
(79, 'DNI', '41031549', 'Lissette', 'Zea Barreda', 'warriorprincessxto1510@gmail.com', 'Miraflores 3', '2021-11-21 17:58:11'),
(82, 'DNI', '41215743', 'Raquel', 'Valverde Sandoval ', 'quelavs7@gmail.com', 'Surco 1', '2021-11-22 07:40:37'),
(83, 'DNI', '45643820', 'Eli jaret', 'Espinoza Mendoza', 'eem_252@hotmail.com', 'Surco 1', '2021-11-22 07:43:07'),
(84, 'DNI', '43869393', 'Jonathan', 'Peñaranda', 'japc1610@gmail.com', 'San Isidro', '2021-11-24 23:01:41'),
(85, 'DNI', '08378943', 'Darwin Miguel', 'Abanto Poma', 'dabanto1@gmail.com', 'Surco 1', '2021-11-24 23:03:15'),
(86, 'CEDULA', '002154247', 'Elías ', 'Diaz', 'eliasadr81@gmail.com', 'San Isidro', '2021-11-24 23:32:11'),
(87, 'CEDULA', '001720901', 'Damna', 'Silva', 'damnasilvah.90@gmail.com', 'San Isidro', '2021-11-24 23:54:59'),
(88, 'DNI', '07368883', 'Esther', 'BARRENECHEA ', 'estherbarrenechea@hotmail.com', 'La Victoria', '2021-11-25 00:21:41'),
(89, 'DNI', '597596965', 'Jordi', 'Flores', 'jordiangel0910@gmail.com', 'Surco 1', '2021-11-25 00:21:48'),
(90, 'DNI', '145937812', 'Ricardo ', 'Rivero ', 'ricahdd@gmail.com', 'San Luis', '2021-11-25 00:22:00'),
(91, 'DNI', '43695446', 'Meeker Carlos ', 'Castillon León ', 'meekercastillon@gmail.com', 'San Luis', '2021-11-25 00:29:27'),
(92, 'DNI', '43695445', 'Nathaly Isabel ', 'Melgar Gómez ', 'na_thaly2108@hotmail.com', 'San Luis', '2021-11-25 00:31:03'),
(93, 'DNI', '70636074', 'José Enoc', 'Venero Olarte', 'jevenero@hotmail.com', 'Miraflores 3', '2021-11-25 00:37:39'),
(94, 'CEDULA', '003299356', 'Francis', 'Díaz Molaya ', 'francisd25.fd@gmail.com', 'Surquillo', '2021-11-25 01:01:31'),
(95, 'DNI', '71301790', 'Natali Raquel', 'Ypanaque Matias', 'atenas.peru2013@hotmail.es', 'San Luis', '2021-11-25 01:03:02'),
(96, 'DNI', '07387825', 'Paulina ', 'Cristobal Pantoja ', 'paulinacp65@hotmail.com', 'S/Conexion', '2021-11-25 02:00:11'),
(97, 'DNI', '72715728', 'José carlos', 'Saldaña Cristobal ', 'artillery_94@hotmail.com', 'S/Conexion', '2021-11-25 02:07:52'),
(98, 'DNI', '47688032', 'Jhonny', 'Infantes Sánchez ', 'jhonnyis1407@gmail.com', 'S/Conexion', '2021-11-25 02:10:00'),
(99, 'DNI', '07337679', 'José javier', 'Saldaña suyon', 'josesal13@hotmail.com', 'S/Conexion', '2021-11-25 02:11:35'),
(100, 'DNI', '10819032', 'Norma', 'Paniagua Loayza ', 'maretopa2013@gmail.com', 'Surco 1', '2021-11-25 02:21:32'),
(101, 'DNI', '45742041', 'Leslie villagomez', 'Villagomez otarola', 'villagomezleslie89@gmail.com', 'San Luis', '2021-11-25 02:40:22'),
(102, 'DNI', '07369734', 'Ana María ', 'Fernandini Céspedes', 'afernandini@hotmail.com', 'Surco 1', '2021-11-25 02:50:16'),
(103, 'DNI', '47130762', 'Carmen del Pilar ', 'Florecin Rojas ', 'pilar210514@gmail.com', 'San Luis', '2021-11-25 03:04:43'),
(104, 'DNI', '15991310', 'Aquila ', 'Rojas Retuerto', 'aquilarojas1@gmail.com', 'S/Conexion', '2021-11-25 03:06:46'),
(105, 'DNI', '76723903', 'Angella ', 'Perfumo ', 'angellaperfumopa@gmail.com', 'Surco 2', '2021-11-25 03:15:53'),
(106, 'DNI', '7240051', 'Carlos', 'Manco Barrenechea', 'celiezermanco@gmail.com', 'S/Conexion', '2021-11-25 03:22:18'),
(107, 'DNI', '005027495', 'Juan Delfin ', 'Cueva', 'juan-delfin-3@hotmail.com', 'San Luis', '2021-11-25 03:52:16'),
(108, 'DNI', '55441723', 'Lesbia del carmen ', 'Molina ', 'juan-delfin-3@hotmail.com', 'San Luis', '2021-11-25 03:54:22'),
(109, 'DNI', '44922668', 'Evelyn', 'Villagomez Otárola', 'evillagomez2606@gmail.com', 'San Luis', '2021-11-25 04:03:16'),
(110, 'DNI', '46455132', 'Jorge Luis', 'Noblecilla Estacio', 'jorgeunico13@hotmail.com', 'San Luis', '2021-11-25 04:04:53'),
(111, 'DNI', '06053517', 'DIOSCELINDA ANTONIETA .', 'AGARINI AZAÑA.  ', 'dioscelindaantonietaagarini@gmail.com', 'San Luis', '2021-11-25 04:42:04'),
(112, 'DNI', '10153548', 'Alfonso', 'Quiñones', 'alfonsoqv@gmail.com', 'Miraflores 3', '2021-11-25 04:46:11'),
(113, 'DNI', '07876374', 'Maricarmen ', 'Ramos', 'Maricarmenr29@hotmail.com', 'Miraflores 3', '2021-11-25 04:47:37'),
(114, 'DNI', '61264844', 'Santiago', 'Quiñones', 'alfonsoqv@hotmail.com', 'Miraflores 3', '2021-11-25 04:50:30'),
(115, 'DNI', '74121709', 'Ana Paula', 'Quiñones', 'Anapaulaqr0313@gmail.com', 'Miraflores 3', '2021-11-25 04:53:07'),
(117, 'DNI', '10382181', 'Richard ', 'Ventura Riera ', 'dulcesydelicias@gmail.com', 'Los olivos', '2021-11-25 05:30:27'),
(118, 'DNI', '09627336', 'Elsa', 'Apolinario Godoy', 'elsa.apolinariog@gmail.com', 'Los olivos', '2021-11-25 05:32:01'),
(119, 'DNI', '42310858', 'Elsa', 'Navarro Apolinario ', 'elsa.navarro.apolinario@gmail.com', 'Los olivos', '2021-11-25 05:35:16'),
(120, 'DNI', '44353856', 'Ashely Brenda', 'Esquén Rojas', 'ashelybrenda0112@gmail.com', 'Miraflores 3', '2021-11-25 06:11:40'),
(121, 'CEDULA', '001686516', 'Jenny Leany ', 'Chavarriaga', 'jennyleany@hotmail.com', 'San Luis', '2021-11-25 06:18:36'),
(122, 'DNI', '1023748548', 'Felipe', 'Huaco', 'huacoven.@gmail.com', 'San Luis', '2021-11-25 06:28:33'),
(123, 'DNI', '70080670', 'Matthew', 'Venero Olarte', 'vnro619@hotmail.com', 'Miraflores 3', '2021-11-25 06:40:17'),
(124, 'DNI', '40989100', 'Dilcia', 'Regalado Cueva', 'cuevarega@gmail.com', 'Surco 1', '2021-11-25 06:42:51'),
(125, 'DNI', '02646921', 'Vigdalia', 'Argotti', 'vigdaliargotti@gmail.com', 'Miraflores 3', '2021-11-25 06:44:04'),
(126, 'DNI', '43662428', 'Marco', 'Cerquera Encinas', 'cuevarega@gmail.com', 'Surco 1', '2021-11-25 06:47:11'),
(127, 'DNI', '40103430', 'Susana ', 'Sojo', 'susansojo@hotmail.com', 'Miraflores 3', '2021-11-25 07:24:33'),
(128, 'DNI', '07461537', 'Carmen', 'Paredes', 'carmenparedes2501@hotmail.com', 'San Luis', '2021-11-25 07:34:30'),
(129, 'DNI', '60919974', 'Ariana', 'Sojo', 'ariximena007@gmail.com', 'Miraflores 3', '2021-11-25 07:39:58'),
(131, 'DNI', '47949682', 'Ruth Melina', 'Meléndez Díaz ', 'ruthmelina24.7@gmail.com', 'Surco 2', '2021-11-25 08:08:50'),
(132, 'DNI', '07479380', 'Henry Avilés ', 'Avilés Aliaga', 'Henryravilesa@gmail.com', 'Surco 2', '2021-11-25 08:13:07'),
(133, 'DNI', '61069037', 'Dakniel', 'Cerquera Regalado', 'cuevarega@gmail.com', 'Surco 1', '2021-11-25 08:25:09'),
(135, 'DNI', '08422802', 'Pedro', 'Revollar', 'revollarpe@gmail.com', 'San Luis', '2021-11-25 08:32:14'),
(136, 'DNI', '992589472', 'Jimena ', 'Salas Revollar', 'alessandrajimena08@gmail.com', 'Miraflores 4', '2021-11-25 09:04:40'),
(137, 'DNI', '77418904', 'Luis Eduardo', 'Quispe Fernandes', 'luismj23bulls@gmail.com', 'Miraflores 1', '2021-11-25 18:26:25'),
(138, 'DNI', '08154791', 'Isabel', 'Fernandes', 'luismj23bulls@gmail.com', 'Miraflores 1', '2021-11-25 18:27:56'),
(139, 'CEDULA', '26086645', 'Carolina', 'Gonzalez', 'luismj23bulls@gmail.com', 'Miraflores 1', '2021-11-25 18:35:28'),
(140, 'DNI', '44350722', 'Dante', 'Sola otarola', 'Babybass1110@gmail.com', 'Surco 2', '2021-11-25 19:01:26'),
(141, 'DNI', '40919286', 'Natali', 'Barba ', 'nataliebg@hotmail.com', 'Surco 2', '2021-11-25 19:39:17'),
(142, 'DNI', '44735202', 'Becky ', 'Osores', 'beckyosores@gmail.com', 'Surco 2', '2021-11-25 22:08:35'),
(143, 'DNI', '72006052', 'Maria Paz ', 'Garcia', 'mpygarciaparedes@gmail.com', 'Surco 2', '2021-11-25 22:11:06'),
(144, 'DNI', '77224405', 'Jeremy', 'Bejarano ', 'mpygarciaparedes@gmail.com', 'Surco 2', '2021-11-25 22:13:16'),
(145, 'DNI', '45951417', 'CRISTHIAN', 'CABELLO', 'ccdlt@hotmail.com', 'Surquillo', '2021-11-26 01:55:15'),
(146, 'DNI', '76577243', 'ANGGIE ', 'SARAVIA', 'anggieliz2626@gmail.com', 'Surquillo', '2021-11-26 01:57:31'),
(147, 'DNI', '08876742', 'MARIBEL', 'DE LA TORRE', 'maribeldelatorre004@gmail.com', 'Surquillo', '2021-11-26 02:01:31'),
(148, 'DNI', '06746364', 'July', 'Santillan', 'julisa&24@hotmail.com', 'Surco 2', '2021-11-26 09:04:18'),
(149, 'DNI', '48504307', 'Jessica', 'Huaranga', 'jessicatandy28@gmail.com', 'Los olivos', '2021-11-26 20:54:34'),
(150, 'DNI', '75315751', 'Karla', 'Huaranga', 'kahuar278@gmail.com', 'Los olivos', '2021-11-26 20:55:34'),
(151, 'DNI', '44161883', 'Elizabeth Marianela', 'Cayao Sempertegui', 'elicayao30@gmail.com', 'S/Conexion', '2021-11-26 21:12:38'),
(152, 'CEDULA', '004417138', 'Kenia Maxibel', 'Marquez Parra', 'elicayao30@gmail.com', 'S/Conexion', '2021-11-26 21:16:00'),
(153, 'DNI', '23003297', 'Adelina', 'Aguero', 'adelina.ap1963@gmail.com', 'La Victoria', '2021-11-27 04:38:36'),
(154, 'DNI', '07423874', 'Connie', 'Aponte', 'conniecharly171864@gmail.com', 'La Victoria', '2021-11-27 04:40:05'),
(155, 'DNI', '07385941', 'Martha ', 'Sanchez', 'conniecharly171864@gmail.com', 'S/Conexion', '2021-11-27 04:41:21'),
(156, 'DNI', '72129711', 'Genesis', 'Castilla', 'conniecharly171864@gmail.com', 'La Victoria', '2021-11-27 04:45:53'),
(158, 'DNI', '75445750', 'Miluska huaman caballero ', 'Huaman ', 'miluskacaballero1@gmail.com', 'La Victoria', '2021-11-27 05:05:38'),
(160, 'DNI', '09521701', 'Carlos', 'Medina Sanchez', 'carlosmedina2911@hotmail.com', 'Surco 2', '2021-11-27 07:28:18'),
(161, 'DNI', '10701254', 'Maria del Carmen', 'Gutierrez tantalean', 'gutierreztantaleanmaria@gmail.com', 'Miraflores 3', '2021-11-27 18:44:01'),
(162, 'DNI', '47464766', 'Arthur Jefferson ', 'Effio Becerra', 'arthurjeffersoneffiobecerra@gmail.com', 'San Luis', '2021-11-27 23:26:43'),
(163, 'DNI', '474835052', 'Katherine Estefany  ', 'Garcia vega', 'garciavegakatherine@gmail.com', 'San Luis', '2021-11-27 23:29:05'),
(165, 'CEDULA', '5879322', 'Marlenys ', 'Carreno', 'marlenys.jyydj@gmail.com', 'Surquillo', '2021-11-28 18:48:51'),
(167, 'DNI', '72400512', 'Eliezer', 'Manco', 'celiezermanco@gmail.com', 'S/Conexion', '2021-12-01 18:44:35'),
(169, 'DNI', '75960660', 'Cecilia', 'Izarra', 'ceciliaizarra97@gmail.com', 'Miraflores 1', '2021-12-02 07:36:45'),
(170, 'DNI', '45419783', 'Janeth ', 'Vidal', 'Transportesjm.logistica@gmail.com', 'San Luis', '2021-12-02 07:45:18'),
(171, 'DNI', '43737791', 'Juan', 'Montes De la Cruz ', 'jmontesd86@gmail.com', 'Miraflores 1', '2021-12-02 07:54:53'),
(173, 'DNI', '07338307', 'Lucia', 'Saldana', 'ceciliaizarra97@gmail.com', 'Miraflores 2', '2021-12-02 09:17:42'),
(174, 'DNI', '45571557', 'Chritian', 'Leon', 'leon_019@hotmail.com', 'Surco 2', '2021-12-03 01:31:12'),
(175, 'DNI', '20550712', 'Maria', 'Lopez ', 'cristinaenriquez268@gmail.com', 'Surco 2', '2021-12-03 01:38:12'),
(176, 'DNI', '075141845', 'Oscar saul', 'Huaco venancio', 'huacoven.@gmail.com', 'San Luis', '2021-12-03 02:31:08'),
(177, 'DNI', '72472528', 'Cesar', 'Quispe', 'Csar.qdt@gmail.com', 'Surquillo', '2021-12-03 04:08:27'),
(178, 'DNI', '08883634', 'MARTHA CONSUELO', 'TIPPE CAMPOS', 'marthaconsuelotippe@gmail.com', 'La Victoria', '2021-12-03 05:14:56'),
(179, 'DNI', '61754647', 'Eliu Caleb', 'Rabanal Villagomez', 'lajaina14@hotmail.com', 'San Luis', '2021-12-03 06:15:28'),
(180, 'DNI', '46507018', 'Rafael', 'Chapilliquen', 'beckyosores@gmail.com', 'S/Conexion', '2021-12-03 07:45:48'),
(182, 'DNI', '24004088', 'Karol', 'Auquimaita', 'bienypaz2@gmail.com', 'Surco 2', '2021-12-03 20:42:01'),
(183, 'DNI', '08876724', 'ELVIRA', 'RUIZ', 'ELVIRA_2603@GMAIL.COM', 'S/Conexion', '2021-12-04 08:23:40'),
(184, 'DNI', '003454220', 'Enrique', 'Padron', 'ariangelber@gmail.com', 'Surquillo', '2021-12-04 18:12:38'),
(185, 'DNI', '003951228', 'IVETH', 'Herrera ', 'ivethcaherrera2@gmail.com', 'Surquillo', '2021-12-04 18:15:44'),
(187, 'DNI', '74962037', 'Jesus', 'Garcia Ramos', 'jesus_ramosgarcia24@hotmail.com', 'Surquillo', '2021-12-05 05:30:51'),
(188, 'CEDULA', '002014388', 'Carlos', 'Alvarado', 'carlos.alvarado78@gmail.com', 'Miraflores 3', '2021-12-05 06:34:52'),
(191, 'DNI', '147852369', 'VICTORIA', 'SANCHEZ', 'notiene@notiene.com', 'Miraflores 4', '2021-12-05 06:47:43'),
(192, 'DNI', '369852147', 'MAIRA', 'TRUJILLO', 'notiene@notiene.com', 'Miraflores 4', '2021-12-05 06:48:49'),
(193, 'DNI', '456789123', 'IVAN GUEVARA', 'GUEVARA', 'notiene@notiene.com', 'Miraflores 4', '2021-12-05 06:49:50'),
(194, 'DNI', '369741852', 'CARMEN', 'ROJAS', 'notiene@notiene.com', 'Miraflores 4', '2021-12-05 06:51:46'),
(197, 'DNI', '76628517', 'Daniela', 'Quispe', 'cristinaenriquez268@gmail.com', 'S/Conexion', '2021-12-05 08:20:08'),
(198, 'DNI', '73285476', 'Karlita ', 'Cordova Berru ', 'berquin2019@gmail.com', 'S/Conexion', '2021-12-05 09:22:08'),
(199, 'CEDULA', '1530237', 'Rodrianny', 'lizardo', 'rodrianny-15@gmail.com', 'Surquillo', '2021-12-05 09:22:40'),
(200, 'CEDULA', '1839247', 'luis', 'ustariz', 'ustarizluis-79@gmail.com', 'Surquillo', '2021-12-05 09:24:56'),
(201, 'CEDULA', '1839151', 'Gina', 'Castro', 'gcarolina_39@gmail.com', 'Surquillo', '2021-12-05 09:26:58'),
(202, 'CEDULA', '1943897', 'daniel', 'avila', 'davila_473@gmail.com', 'Surquillo', '2021-12-05 09:28:55'),
(203, 'DNI', '10339003', 'CECILIA', 'NAVEA', 'CNAVEA_39@GMAIL.COM', 'Surquillo', '2021-12-05 09:45:33'),
(204, 'DNI', '45556834', 'Tatiana', 'Yupanqui', 'tyy.zxn@gmail.com', 'San Isidro', '2021-12-07 02:50:08'),
(205, 'DNI', '41879827', 'Willian', 'Aliaga', 'williamaliaga91@hotmail.com', 'S/Conexion', '2021-12-07 20:46:20'),
(206, 'DNI', '41165039', 'Thaira', 'Diaz', 'thairacontact@gmail.com', 'San Isidro', '2021-12-08 23:36:38'),
(207, 'DNI', '980250242', 'EDELMIRA', 'Vargas Espinoza', 'edelvargas63@gmail.com', 'Miraflores 4', '2021-12-09 09:35:03'),
(208, 'DNI', '76628519', 'Alondra', 'Quispe', 'Alondraquispe22@gmail.com', 'Surquillo', '2021-12-09 23:48:55'),
(210, 'DNI', '20033934', 'Juana ', 'Arotoma torres', 'rubycllo_10@hotmail.com', 'Miraflores 3', '2021-12-10 06:44:15'),
(212, 'DNI', '42738243', 'Aurora', 'Vicente ', 'auroraperu@hotmail.com', 'Miraflores 4', '2021-12-10 08:15:22'),
(214, 'DNI', '48521780', 'Juana', 'Gervais', 'juana.gervais@gmail.com', 'S/Conexion', '2021-12-10 17:57:33'),
(215, 'DNI', '77806559', 'Daniela Sofia', 'Lozano Vitor', 'daniela.lozvi@gmail.com', 'S/Conexion', '2021-12-10 19:24:00'),
(216, 'CEDULA', '129181389', 'Valentina ', 'Flores', 'keniamarquezpvc@gmail.com', 'Los olivos', '2021-12-10 22:24:47'),
(217, 'CEDULA', '129343684', 'Cristian ', 'Flores', 'keniamarquezpvc@gmail.com', 'Los olivos', '2021-12-10 22:26:01'),
(218, 'DNI', '29346224', 'Juana', 'Barreda', 'warriorprincessxto1510@gmail.com', 'S/Conexion', '2021-12-11 00:43:53'),
(219, 'DNI', '71597169', 'Billy Andrew', 'Gutierrez Delgado', 'andrew.gutdel@gmail.com', 'S/Conexion', '2021-12-11 03:31:34'),
(220, 'DNI', '7211945', 'Genesis', 'Castilla', 'conniecharly171864@gmail.com', 'La Victoria', '2021-12-11 07:01:26'),
(221, 'DNI', '07514184', 'Oscar saul', 'Huaco', 'huacoven.@gmail.com', 'San Luis', '2021-12-11 08:24:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `num_asiste`
--

CREATE TABLE `num_asiste` (
  `id` int(11) NOT NULL,
  `lugar` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `num_dni` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `num_asiste`
--

INSERT INTO `num_asiste` (`id`, `lugar`, `cantidad`, `num_dni`) VALUES
(1, 'ADULTO', 65, '40714000'),
(2, 'NINOS', 100, '41780477');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id` int(11) NOT NULL,
  `num_dni` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `turno` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`id`, `num_dni`, `turno`, `fecha`) VALUES
(54, '75606438', '1er TURNO', '2021-11-14'),
(55, '75606428', '2do TURNO', '2021-11-14'),
(56, '46059166', '2do TURNO', '2021-11-14'),
(57, '08861925', '3er TURNO', '2021-11-14'),
(58, '40714000', '3er TURNO', '2021-11-14'),
(59, '72049935', '1er TURNO', '2021-11-21'),
(60, '46011770', '1er TURNO', '2021-11-21'),
(61, '74310209', '1er TURNO', '2021-11-21'),
(62, '75552751', '2do TURNO', '2021-11-21'),
(63, '000913246', '2do TURNO', '2021-11-21'),
(65, '41858963', '2do TURNO', '2021-11-21'),
(66, '08867994', '2do TURNO', '2021-11-21'),
(68, '07201542', '1er TURNO', '2021-11-21'),
(69, '61096547', '2do TURNO', '2021-11-21'),
(70, '07180771', '1er TURNO', '2021-11-21'),
(72, '42917975', '2do TURNO', '2021-11-21'),
(73, '48618753', '1er TURNO', '2021-11-21'),
(78, '05201263', '1er TURNO', '2021-11-21'),
(79, '42144735', '1er TURNO', '2021-11-21'),
(80, '09778786', '1er TURNO', '2021-11-21'),
(82, '09918026', '2do TURNO', '2021-11-21'),
(83, '25447072', '2do TURNO', '2021-11-21'),
(84, '07368883', '2do TURNO', '2021-11-21'),
(85, '40617445', '2do TURNO', '2021-11-21'),
(86, '72454739', '2do TURNO', '2021-11-21'),
(87, '09883375', '2do TURNO', '2021-11-21'),
(88, '', '1er TURNO', '2021-11-21'),
(89, '989348798', '1er TURNO', '2021-11-21'),
(90, '003301301', '2do TURNO', '2021-11-21'),
(91, '43753057', '1er TURNO', '2021-11-21'),
(92, '46265217', '2do TURNO', '2021-11-21'),
(93, '41221722', '2do TURNO', '2021-11-21'),
(94, '42500540', '1er TURNO', '2021-11-21'),
(95, '00141415', '2do TURNO', '2021-11-21'),
(96, '17470761', '2do TURNO', '2021-11-21'),
(97, '70403107', '2do TURNO', '2021-11-21'),
(98, '47555599', '2do TURNO', '2021-11-21'),
(99, '41031549', '3er TURNO', '2021-11-21'),
(100, '40715132', '1er TURNO', '2021-11-28'),
(101, '43869393', '2do TURNO', '2021-11-28'),
(103, '08378943', '2do TURNO', '2021-11-28'),
(108, '001720901', '2do TURNO', '2021-11-28'),
(109, '002154247', '1er TURNO', '2021-11-28'),
(110, '42500540', '1er TURNO', '2021-11-28'),
(111, '003301301', '2do TURNO', '2021-11-28'),
(112, '09778786', '1er TURNO', '2021-11-28'),
(113, '72049935', '1er TURNO', '2021-11-28'),
(114, '597596965', '1er TURNO', '2021-11-28'),
(115, '07368883', '2do TURNO', '2021-11-28'),
(116, '07368567', '2do TURNO', '2021-11-28'),
(117, '145937812', '1er TURNO', '2021-11-28'),
(118, '72454739', '2do TURNO', '2021-11-28'),
(119, '75606438', '2do TURNO', '2021-11-28'),
(120, '43695446', '2do TURNO', '2021-11-28'),
(121, '40715132', '3er TURNO', '2021-11-28'),
(122, '43695445', '2do TURNO', '2021-11-28'),
(123, '70636074', '1er TURNO', '2021-11-28'),
(124, '42144735', '1er TURNO', '2021-11-28'),
(125, '003299356', '3er TURNO', '2021-11-28'),
(126, '989348798', '1er TURNO', '2021-11-28'),
(127, '72715728', '2do TURNO', '2021-11-28'),
(128, '07387825', '2do TURNO', '2021-11-28'),
(129, '47688032', '1er TURNO', '2021-11-28'),
(130, '07337679', '2do TURNO', '2021-11-28'),
(131, '10819032', '2do TURNO', '2021-11-28'),
(132, '09883375', '2do TURNO', '2021-11-28'),
(134, '15991310', '2do TURNO', '2021-11-28'),
(135, '76723903', '2do TURNO', '2021-11-28'),
(136, '005027495', '2do TURNO', '2021-11-28'),
(137, '55441723', '2do TURNO', '2021-11-28'),
(138, '44922668', '1er TURNO', '2021-11-28'),
(139, '46455132', '1er TURNO', '2021-11-28'),
(140, '10153548', '2do TURNO', '2021-11-28'),
(141, '07876374', '2do TURNO', '2021-11-28'),
(142, '61264844', '2do TURNO', '2021-11-28'),
(143, '74121709', '2do TURNO', '2021-11-28'),
(144, '07342395', '2do TURNO', '2021-11-28'),
(145, '07201542', '1er TURNO', '2021-11-28'),
(146, '45643820', '2do TURNO', '2021-11-28'),
(147, '41215743', '2do TURNO', '2021-11-28'),
(148, '19515902', '2do TURNO', '2021-11-28'),
(149, '00141415', '2do TURNO', '2021-11-28'),
(150, '17470761', '2do TURNO', '2021-11-28'),
(151, '09918026', '2do TURNO', '2021-11-28'),
(152, '10382181', '2do TURNO', '2021-11-28'),
(153, '09627336', '2do TURNO', '2021-11-28'),
(154, '42310858', '2do TURNO', '2021-11-28'),
(155, '40537977', '2do TURNO', '2021-11-28'),
(156, '42917975', '2do TURNO', '2021-11-28'),
(157, '08867994', '1er TURNO', '2021-11-28'),
(158, '61096547', '2do TURNO', '2021-11-28'),
(159, '44353856', '2do TURNO', '2021-11-28'),
(160, '001686516', '2do TURNO', '2021-11-28'),
(161, '1023748548', '2do TURNO', '2021-11-28'),
(162, '70080670', '1er TURNO', '2021-11-28'),
(163, '40989100', '2do TURNO', '2021-11-28'),
(164, '02646921', '1er TURNO', '2021-11-28'),
(165, '43662428', '2do TURNO', '2021-11-28'),
(166, '40103430', '2do TURNO', '2021-11-28'),
(167, '07461537', '1er TURNO', '2021-11-28'),
(168, '60919974', '1er TURNO', '2021-11-28'),
(169, '08861925', '2do TURNO', '2021-11-28'),
(170, '47949682', '2do TURNO', '2021-11-28'),
(171, '07479380', '2do TURNO', '2021-11-28'),
(172, '61069037', '2do TURNO', '2021-11-28'),
(173, '08422802', '2do TURNO', '2021-11-28'),
(174, '06053517', '2do TURNO', '2021-11-28'),
(175, '07180771', '1er TURNO', '2021-11-28'),
(176, '41964249', '2do TURNO', '2021-11-28'),
(177, '25447072', '2do TURNO', '2021-11-28'),
(178, '77418904', '2do TURNO', '2021-11-28'),
(179, '08154791', '2do TURNO', '2021-11-28'),
(180, '26086645', '2do TURNO', '2021-11-28'),
(181, '44350722', '2do TURNO', '2021-11-28'),
(182, '46265217', '2do TURNO', '2021-11-28'),
(183, '40919286', '1er TURNO', '2021-11-28'),
(184, '44735202', '2do TURNO', '2021-11-28'),
(185, '72006052', '2do TURNO', '2021-11-28'),
(186, '77224405', '2do TURNO', '2021-11-28'),
(187, '41858963', '2do TURNO', '2021-11-28'),
(188, '45951417', '3er TURNO', '2021-11-28'),
(189, '76577243', '3er TURNO', '2021-11-28'),
(190, '08876742', '3er TURNO', '2021-11-28'),
(191, '06746364', '2do TURNO', '2021-11-28'),
(192, '48504307', '2do TURNO', '2021-11-28'),
(193, '75315751', '2do TURNO', '2021-11-28'),
(194, '44161883', '2do TURNO', '2021-11-28'),
(195, '004417138', '2do TURNO', '2021-11-28'),
(196, '09521701', '3er TURNO', '2021-11-28'),
(197, '10701254', '1er TURNO', '2021-11-28'),
(198, '47464766', '3er TURNO', '2021-11-28'),
(199, '47835052', '3er TURNO', '2021-11-28'),
(200, '41031549', '3er TURNO', '2021-11-28'),
(201, '5879322', '2do TURNO', '2021-11-28'),
(202, '07368883', '2do TURNO', '2021-12-05'),
(203, '07368567', '2do TURNO', '2021-12-05'),
(204, '72454739', '2do TURNO', '2021-12-05'),
(205, '72400512', '2do TURNO', '2021-12-05'),
(207, '08867994', '2do TURNO', '2021-12-05'),
(208, '61096547', '2do TURNO', '2021-12-05'),
(209, '07385941', '2do TURNO', '2021-12-05'),
(210, '07423874', '2do TURNO', '2021-12-05'),
(211, '7211', '2do TURNO', '2021-12-05'),
(212, '000913246', '2do TURNO', '2021-12-05'),
(213, '42144735', '1er TURNO', '2021-12-05'),
(214, '09778786', '1er TURNO', '2021-12-05'),
(215, '07461537', '1er TURNO', '2021-12-05'),
(216, '40989100', '2do TURNO', '2021-12-05'),
(217, '75960660', '2do TURNO', '2021-12-05'),
(218, '06053517', '2do TURNO', '2021-12-05'),
(219, '08422802', '2do TURNO', '2021-12-05'),
(220, '45419783', '3er TURNO', '2021-12-05'),
(221, '43737791', '2do TURNO', '2021-12-05'),
(222, '43662328', '2do TURNO', '2021-12-05'),
(223, '989348798', '1er TURNO', '2021-12-05'),
(224, '75606428', '1er TURNO', '2021-12-05'),
(225, '07338307', '3er TURNO', '2021-12-05'),
(226, '08378943', '2do TURNO', '2021-12-05'),
(227, '597596965', '1er TURNO', '2021-12-05'),
(228, '10701254', '1er TURNO', '2021-12-05'),
(229, '44735202', '2do TURNO', '2021-12-05'),
(230, '004417138', '2do TURNO', '2021-12-05'),
(231, '09883375', '2do TURNO', '2021-12-05'),
(232, '45643820', '2do TURNO', '2021-12-05'),
(233, '41215743', '2do TURNO', '2021-12-05'),
(234, '43695446', '2do TURNO', '2021-12-05'),
(235, '43695445', '2do TURNO', '2021-12-05'),
(236, '42917975', '2do TURNO', '2021-12-05'),
(237, '40537977', '2do TURNO', '2021-12-05'),
(238, '40919286', '1er TURNO', '2021-12-05'),
(239, '07201542', '1er TURNO', '2021-12-05'),
(240, '45571557', '2do TURNO', '2021-12-05'),
(241, '41858963', '2do TURNO', '2021-12-05'),
(242, '20550712', '2do TURNO', '2021-12-05'),
(243, '46265217', '2do TURNO', '2021-12-05'),
(244, '72006052', '2do TURNO', '2021-12-05'),
(245, '77224405', '2do TURNO', '2021-12-05'),
(246, '001686516', '2do TURNO', '2021-12-05'),
(247, '075141845', '2do TURNO', '2021-12-05'),
(248, '1023748548', '2do TURNO', '2021-12-05'),
(249, '44922668', '2do TURNO', '2021-12-05'),
(250, '72472528', '1er TURNO', '2021-12-05'),
(251, '45742041', '2do TURNO', '2021-12-05'),
(252, '08883634', '2do TURNO', '2021-12-05'),
(253, '61754647', '2do TURNO', '2021-12-05'),
(254, '46507018', '2do TURNO', '2021-12-05'),
(255, '72049935', '1er TURNO', '2021-12-05'),
(256, '77418904', '1er TURNO', '2021-12-05'),
(257, '12344567', '1er TURNO', '2021-12-05'),
(258, '08154791', '1er TURNO', '2021-12-05'),
(259, '08861925', '2do TURNO', '2021-12-05'),
(260, '47949682', '1er TURNO', '2021-12-05'),
(261, '07479380', '1er TURNO', '2021-12-05'),
(262, '25447072', '2do TURNO', '2021-12-05'),
(263, '47688032', '1er TURNO', '2021-12-05'),
(264, '10153548', '2do TURNO', '2021-12-05'),
(265, '74121709', '2do TURNO', '2021-12-05'),
(266, '61264844', '2do TURNO', '2021-12-05'),
(267, '40714000', '2do TURNO', '2021-12-05'),
(268, '24004088', '2do TURNO', '2021-12-05'),
(269, '26086645', '1er TURNO', '2021-12-05'),
(270, '10819032', '2do TURNO', '2021-12-05'),
(271, '42500540', '3er TURNO', '2021-12-05'),
(272, '145937812', '1er TURNO', '2021-12-05'),
(273, '09918026', '2do TURNO', '2021-12-05'),
(274, '08876742', '2do TURNO', '2021-12-05'),
(275, '08845004', '2do TURNO', '2021-12-05'),
(276, '08876724', '2do TURNO', '2021-12-05'),
(277, '003454220', '3er TURNO', '2021-12-05'),
(278, '003951228', '3er TURNO', '2021-12-05'),
(279, '47464766', '2do TURNO', '2021-12-05'),
(280, '47835052', '2do TURNO', '2021-12-05'),
(281, '003301301', '2do TURNO', '2021-12-05'),
(282, '02646921', '1er TURNO', '2021-12-05'),
(283, '44353856', '2do TURNO', '2021-12-05'),
(284, '75606438', '2do TURNO', '2021-12-05'),
(285, '74962037', '2do TURNO', '2021-12-05'),
(286, '41031549', '3er TURNO', '2021-12-05'),
(287, '002014388', '3er TURNO', '2021-12-05'),
(288, '123456789', '1er TURNO', '2021-12-05'),
(289, '789456123', '1er TURNO', '2021-12-05'),
(290, '147852369', '1er TURNO', '2021-12-05'),
(291, '369852147', '1er TURNO', '2021-12-05'),
(292, '456789123', '3er TURNO', '2021-12-05'),
(293, '014725863', '3er TURNO', '2021-12-05'),
(294, '46059166', '3er TURNO', '2021-12-05'),
(295, '1531451', '2do TURNO', '2021-12-05'),
(296, '76628517', '1er TURNO', '2021-12-05'),
(297, '43753057', '1er TURNO', '2021-12-05'),
(298, '1530237', '2do TURNO', '2021-12-05'),
(299, '1839247', '2do TURNO', '2021-12-05'),
(300, '1839151', '2do TURNO', '2021-12-05'),
(301, '1943897', '2do TURNO', '2021-12-05'),
(302, '10339003', '3er TURNO', '2021-12-05'),
(303, '47555599', '3er TURNO', '2021-12-05'),
(304, '41879827', '1er TURNO', '2021-12-12'),
(305, '47464766', '2do TURNO', '2021-12-12'),
(306, '47835052', '2do TURNO', '2021-12-12'),
(307, '08861925', '2do TURNO', '2021-12-12'),
(308, '41165039', '1er TURNO', '2021-12-12'),
(309, '20550712', '3er TURNO', '2021-12-12'),
(310, '45556834', '3er TURNO', '2021-12-12'),
(311, '980250242', '1er TURNO', '2021-12-12'),
(312, '41215743', '2do TURNO', '2021-12-12'),
(313, '07201542', '1er TURNO', '2021-12-12'),
(314, '45643820', '2do TURNO', '2021-12-12'),
(315, '72472528', '1er TURNO', '2021-12-12'),
(316, '75606438', '2do TURNO', '2021-12-12'),
(317, '75606428', '1er TURNO', '2021-12-12'),
(318, '76628519', '1er TURNO', '2021-12-12'),
(319, '989348798', '1er TURNO', '2021-12-12'),
(320, '43753057', '1er TURNO', '2021-12-12'),
(321, '41031549', '3er TURNO', '2021-12-12'),
(322, '002014388', '3er TURNO', '2021-12-12'),
(323, '07180771', '1er TURNO', '2021-12-12'),
(324, '61096547', '2do TURNO', '2021-12-12'),
(325, '08867994', '3er TURNO', '2021-12-12'),
(326, '42917975', '2do TURNO', '2021-12-12'),
(327, '40537977', '2do TURNO', '2021-12-12'),
(328, '02805847', '1er TURNO', '2021-12-12'),
(329, '44922668', '1er TURNO', '2021-12-12'),
(330, '46455132', '1er TURNO', '2021-12-12'),
(331, '48521780', '1er TURNO', '2021-12-12'),
(332, '77806559', '2do TURNO', '2021-12-12'),
(333, '25447072', '2do TURNO', '2021-12-12'),
(334, '004417138', '2do TURNO', '2021-12-12'),
(335, '129181389', '2do TURNO', '2021-12-12'),
(336, '129343684', '2do TURNO', '2021-12-12'),
(337, '29346224', '3er TURNO', '2021-12-12'),
(338, '71597169', '2do TURNO', '2021-12-12'),
(339, '10153548', '2do TURNO', '2021-12-12'),
(340, '07876374', '2do TURNO', '2021-12-12'),
(341, '61264844', '2do TURNO', '2021-12-12'),
(342, '74121709', '2do TURNO', '2021-12-12'),
(343, '07385941', '2do TURNO', '2021-12-12'),
(344, '07423874', '2do TURNO', '2021-12-12'),
(345, '06053517', '2do TURNO', '2021-12-12'),
(346, '07338307', '3er TURNO', '2021-12-12'),
(347, '41858963', '2do TURNO', '2021-12-12'),
(348, '44735202', '2do TURNO', '2021-12-12'),
(349, '001686516', '2do TURNO', '2021-12-12'),
(350, '07514184', '1er TURNO', '2021-12-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnok`
--

CREATE TABLE `turnok` (
  `id` int(11) NOT NULL,
  `num_dni` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `turno` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `aula` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `turnok`
--

INSERT INTO `turnok` (`id`, `num_dni`, `turno`, `aula`, `fecha`) VALUES
(9, '', '2do TURNO', 'VERDE', '2021-11-21'),
(10, '73409919', '2do TURNO', 'AZUL', '2021-11-21'),
(11, '76112066', '2do TURNO', 'AZUL', '2021-11-21'),
(12, '61749185', '2do TURNO', 'AZUL', '2021-11-21'),
(13, '78893685', '2do TURNO', 'VERDE', '2021-11-21'),
(14, '90944442', '2do TURNO', 'AMARILLA', '2021-11-28'),
(15, '60306194', '2do TURNO', 'AZUL', '2021-11-28'),
(16, '989348798', '1er TURNO', 'AZUL', '2021-11-28'),
(17, '', '1er TURNO', 'VERDE', '2021-11-28'),
(18, '77999039', '2do TURNO', 'VERDE', '2021-11-28'),
(19, '79992117', '2do TURNO', 'AMARILLA', '2021-11-28'),
(20, '91505969', '2do TURNO', 'AMARILLA', '2021-11-28'),
(21, '55128066', '2do TURNO', 'AMARILLA', '2021-11-28'),
(22, '74677072', '1er TURNO', 'AZUL', '2021-11-28'),
(23, '90902892', '1er TURNO', 'AMARILLA', '2021-11-28'),
(24, '74794705', '2do TURNO', 'AZUL', '2021-11-28'),
(25, '73921817', '2do TURNO', 'AZUL', '2021-11-28'),
(26, '91232960', '2do TURNO', 'AZUL', '2021-11-28'),
(27, '77190612', '2do TURNO', 'AZUL', '2021-11-28'),
(28, '91132179', '2do TURNO', 'AMARILLA', '2021-11-28'),
(29, '74269190', '1er TURNO', 'AZUL', '2021-11-28'),
(30, '62871084', '2do TURNO', 'AZUL', '2021-11-28'),
(31, '62871085', '2do TURNO', 'AZUL', '2021-11-28'),
(32, '78617950', '2do TURNO', 'VERDE', '2021-11-28'),
(33, '78893685', '2do TURNO', 'VERDE', '2021-11-28'),
(34, '76112066', '2do TURNO', 'AZUL', '2021-11-28'),
(35, '61799185', '2do TURNO', 'AZUL', '2021-11-28'),
(36, '12345', '2do TURNO', 'VERDE', '2021-11-28'),
(37, '54321', '2do TURNO', 'AMARILLA', '2021-11-28'),
(38, '79980683', '2do TURNO', 'AMARILLA', '2021-11-28'),
(39, '77735897', '1er TURNO', 'AZUL', '2021-11-28'),
(40, '', '2do TURNO', 'VERDE', '2021-12-05'),
(41, '74269190', '1er TURNO', 'AZUL', '2021-12-05'),
(42, '62871084', '2do TURNO', 'AZUL', '2021-12-05'),
(43, '62871085', '2do TURNO', 'AZUL', '2021-12-05'),
(44, '61069037', '2do TURNO', 'VERDE', '2021-12-05'),
(45, '989348798', '1er TURNO', 'AZUL', '2021-12-05'),
(46, '77735897', '1er TURNO', 'AZUL', '2021-12-05'),
(47, '12345', '2do TURNO', 'VERDE', '2021-12-05'),
(48, '54321', '2do TURNO', 'AMARILLA', '2021-12-05'),
(49, '61799185', '2do TURNO', 'AZUL', '2021-12-05'),
(50, '76112066', '2do TURNO', 'AZUL', '2021-12-05'),
(51, '78893685', '2do TURNO', 'VERDE', '2021-12-05'),
(52, '90771406', '2do TURNO', 'AMARILLA', '2021-12-05'),
(53, '91132179', '2do TURNO', 'AMARILLA', '2021-12-05'),
(54, '77190612', '1er TURNO', 'AZUL', '2021-12-05'),
(55, '91232960', '2do TURNO', 'AZUL', '2021-12-05'),
(56, '90902892', '2do TURNO', 'AMARILLA', '2021-12-05'),
(57, '74677072', '2do TURNO', 'AZUL', '2021-12-05'),
(58, '45742041', '2do TURNO', 'AZUL', '2021-12-05'),
(59, '73409919', '2do TURNO', 'AZUL', '2021-12-05'),
(60, '77999039', '2do TURNO', 'VERDE', '2021-12-05'),
(61, '91309060', '2do TURNO', 'AZUL', '2021-12-05'),
(62, '60214815', '2do TURNO', 'VERDE', '2021-12-05'),
(63, '79362820', '2do TURNO', 'VERDE', '2021-12-05'),
(64, '79709055', '2do TURNO', 'VERDE', '2021-12-05'),
(65, '321456987', '3er TURNO', 'VERDE', '2021-12-05'),
(66, '93456155', '3er TURNO', 'AZUL', '2021-12-05'),
(67, '79362820', '2do TURNO', 'VERDE', '2021-12-12'),
(68, '79709055', '2do TURNO', 'VERDE', '2021-12-12'),
(69, '90771406', '3er TURNO', 'AMARILLA', '2021-12-12'),
(70, '936161879', '1er TURNO', 'VERDE', '2021-12-12'),
(71, '90902892', '1er TURNO', 'AMARILLA', '2021-12-12'),
(72, '74677072', '1er TURNO', 'AZUL', '2021-12-12'),
(73, '91419321', '2do TURNO', 'AMARILLA', '2021-12-12'),
(74, '12345', '2do TURNO', 'VERDE', '2021-12-12'),
(75, '54321', '2do TURNO', 'AMARILLA', '2021-12-12'),
(76, '91232960', '2do TURNO', 'AZUL', '2021-12-12'),
(77, '77190612', '2do TURNO', 'AZUL', '2021-12-12'),
(78, '91132179', '2do TURNO', 'AMARILLA', '2021-12-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nom_dni` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `num_dni` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `passwrd` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nom_dni`, `num_dni`, `nombre`, `apellido`, `email`, `cargo`, `passwrd`, `fecha`) VALUES
(3, 'DNI', '41780477', 'David Samuel', 'Flores Huacca', 'david_0.7@hotmail.com', 'ADMINISTRADOR', '41780477', '2021-10-28 05:00:00'),
(14, 'DNI', '40715132', 'Juan Carlos', 'Revollar Agarini', '', 'SUPERVISOR', '40715132', '2021-10-18 05:00:00'),
(15, 'DNI', '46059166 ', 'Ana Rosa  ', 'Pupuche ', '', 'SUPERVISOR', '2104lima', '2021-10-18 05:00:00'),
(17, 'DNI', '40714000', 'Juan ', 'Salas', '', 'SUPERVISOR', 'gianni1234', '2021-10-19 05:00:00'),
(20, 'DNI', '40926355 ', 'Lised', 'Huamán Mamani ', '', 'LIDER', '280223', '2021-11-20 01:49:35'),
(21, 'DNI', '09627336', 'Elsa', 'Apolinario Godoy', 'elsa.apolinariog@gmail.com', 'LIDER', 'elsa66', '2021-11-20 01:49:48'),
(22, 'DNI', '48618753', 'JORGE', 'FLORES', '', 'LIDER', 'fcp6036', '2021-11-20 01:51:20'),
(23, 'DNI', '9999', 'mario', 'mamani', '', 'LIDER', '9999', '2021-11-20 01:53:07'),
(25, 'DNI', '000913246', 'Faby', 'Carrillos', '', 'LIDER', '2310', '2021-11-20 02:01:51'),
(26, 'CEDULA', '002014388', 'Carlos', 'Alvarado', '', 'LIDER', 'Jehova#13', '2021-11-20 02:05:15'),
(27, 'DNI', '07180771', 'Maria ', 'Olarte ', '', 'LIDER', 'Miraflores 3', '2021-11-20 02:51:16'),
(28, 'DNI', '25447072', 'Pedro', 'Orderique', '', 'LIDER', 'Jehova2021', '2021-11-20 02:52:48'),
(29, 'DNI', '45709387', 'Alexis', 'Abanto', '', 'LIDER', '1987.01.11_ap', '2021-11-20 03:04:42'),
(42, 'DNI', '321', 'Samuel', 'Flores', '', 'EDITOR', '321', '2021-11-24 23:01:25'),
(43, 'DNI', '123', 'huacca', 'flores', 'floreflores@flores.com', 'SUPERVISOR', '123', '2021-11-25 02:13:07'),
(44, 'DNI', '08845004', 'Ana Maria', 'De la Torre', 'ana-maria-2605@hotmail.com', 'LIDER', '129889Cris', '2021-11-25 08:12:02'),
(45, 'DNI', '07342395', 'Georgina Judith', 'Pupi Peñaranda', 'interjudith@hotmail.com', 'LIDER', '081058', '2021-11-25 08:16:52'),
(46, 'DNI', '07368883', 'Esther', 'BARRENECHEA', 'estherbarrenechea@hotmail.com', 'LIDER', 'Haydee', '2021-11-25 08:17:45'),
(47, 'DNI', '08754920', 'Gloria', 'Soto', 'GLORIAJSM@HOTMAIL.COM', 'LIDER', 'Gsoto', '2021-12-03 02:06:34'),
(48, 'DNI', '48521780', 'Juana', 'Gervais', 'juana.gervais@gmail.com', 'LIDER', 'loginadmin', '2021-12-06 20:28:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cheka`
--
ALTER TABLE `cheka`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_kids`
--
ALTER TABLE `data_kids`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dato_adulto`
--
ALTER TABLE `dato_adulto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `turnok`
--
ALTER TABLE `turnok`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cheka`
--
ALTER TABLE `cheka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `data_kids`
--
ALTER TABLE `data_kids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `dato_adulto`
--
ALTER TABLE `dato_adulto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT de la tabla `turnok`
--
ALTER TABLE `turnok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
