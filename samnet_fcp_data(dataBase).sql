-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-05-2022 a las 20:14:27
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `samnet_fcp_data`
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
(12, 'ABIERTO', '2022-04-23', '41780477');

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
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `data_kids`
--

INSERT INTO `data_kids` (`id`, `nom_dni`, `num_dni`, `nombre`, `apellido`, `edad`, `aula`, `fecha`) VALUES
(9, 'DNI', '', 'Isabella', 'Flores', '8', 'VERDE', '2021-11-19 16:25:38'),
(10, 'DNI', '73409919', 'Romina', 'Chanca', '12', 'AZUL', '2021-11-19 22:17:04'),
(11, 'DNI', '76112066', 'Sibiany ', 'Solá Vargas ', '10', 'AZUL', '2021-11-20 02:27:55'),
(12, 'DNI', '61799185', 'Jaspe ', 'Solá Vargas ', '12', 'AZUL', '2021-11-20 02:29:16'),
(14, 'DNI', '78893685', 'Crisstyn ', 'Solá Vargas ', '7', 'VERDE', '2021-11-20 02:31:23'),
(15, 'DNI', '90944442', 'Lucas', 'Diaz', '3', 'AMARILLA', '2021-11-24 18:57:38'),
(16, 'DNI', '60306194', 'Carolee Jane ', 'Castillon Melgar ', '10', 'AZUL', '2021-11-24 19:32:50'),
(17, 'DNI', '989348798', 'Jade', 'Reyes Pillaca', '11', 'AZUL', '2021-11-24 20:38:58'),
(18, 'DNI', '77999039', 'Mateo', 'Tomas Paniagua ', '8', 'VERDE', '2021-11-24 21:24:22'),
(19, 'DNI', '79992117', 'Areli Valentina ', 'Flores', '4', 'AMARILLA', '2021-11-24 22:09:27'),
(20, 'DNI', '91505969', 'Emanuel Giancarlo', 'Flores Florecin ', '2', 'AMARILLA', '2021-11-24 22:11:33'),
(21, 'DNI', '55128066', 'Jesia nohemi ', 'Cuevas molina', '3', 'AMARILLA', '2021-11-24 22:55:47'),
(22, 'DNI', '74677072', 'Jorge Luis', 'Noblecilla Villagomez', '11', 'AZUL', '2021-11-24 23:07:44'),
(23, 'DNI', '90902892', 'Dominic Luca', 'Noblecilla Villagomez', '3', 'AMARILLA', '2021-11-24 23:09:01'),
(24, 'DNI', '74794705', 'Maricielo ', 'Ventura Navarro ', '11', 'AZUL', '2021-11-25 00:35:19'),
(25, 'DNI', '79406471', 'Elsie Luciana', 'Navarro ', '5', 'AMARILLA', '2021-11-25 00:41:33'),
(26, 'DNI', '73921817', 'Sebastián', 'Huaracallo Esquén', '11', 'AZUL', '2021-11-25 01:13:19'),
(27, 'DNI', '91232960', 'Sol Emily', 'Huaco', '12', 'AZUL', '2021-11-25 01:21:31'),
(28, 'DNI', '77190612', 'Luna eimy', 'Huaco', '10', 'AZUL', '2021-11-25 01:24:28'),
(29, 'DNI', '91132179', 'Estrella', 'Huaco', '3', 'AMARILLA', '2021-11-25 01:31:08'),
(30, 'DNI', '74269190', 'Soraya', 'Aponte', '11', 'AZUL', '2021-11-25 02:37:04'),
(31, 'DNI', '62871084', 'Mirko', 'Cerquera Regalado', '10', 'AZUL', '2021-11-25 03:20:26'),
(32, 'DNI', '62871085', 'Kerenhapuc', 'Cerquera Regalado', '10', 'AZUL', '2021-11-25 03:23:24'),
(33, 'DNI', '78617950', 'Sebastian Gael', 'Chavez lopez', '7', 'VERDE', '2021-11-25 04:13:05'),
(34, 'CEDULA', '12345', 'Megan', 'Tapia', '6', 'VERDE', '2021-11-25 17:11:15'),
(35, 'CEDULA', '54321', 'Ethan ', 'Tapia', '4', 'AMARILLA', '2021-11-25 17:13:09'),
(36, 'DNI', '79980683', 'Mathias ', 'Morales Florecin ', '4', 'AMARILLA', '2021-11-26 20:35:04'),
(37, 'DNI', '77735897', 'Roberto Luciano', 'Grimaldo Gutierrez', '9', 'AZUL', '2021-11-27 14:11:39'),
(38, 'DNI', '61069037', 'Dakniel', 'Cerquera Regalado', '14', 'VERDE', '2021-12-02 03:12:42'),
(40, 'DNI', '90771406', 'Gia ', 'Combina ', '3', 'AMARILLA', '2021-12-02 21:06:40'),
(41, 'DNI', '45742041', 'Belen ', 'Rabanal Villagomez', '9', 'AZUL', '2021-12-03 01:08:18'),
(43, 'DNI', '91309060', 'ALMENDRA', 'RODRIGUEZ', '12', 'AZUL', '2021-12-04 03:20:11'),
(44, 'DNI', '60214815', 'JUAN DAVID', 'AVALOS', '6', 'VERDE', '2021-12-04 03:21:46'),
(45, 'DNI', '79362820', 'Bella Micaela', 'Effio Garcia', '6', 'VERDE', '2021-12-04 15:14:45'),
(46, 'DNI', '79709055', 'Liam Imanol', 'Garcia Vilchez', '5', 'VERDE', '2021-12-04 16:06:17'),
(47, 'DNI', '321456987', 'PEDRO ', 'GUEVARA', '7', 'VERDE', '2021-12-05 01:57:25'),
(48, 'DNI', '93456155', 'HEIRI', 'FERNANDEZ', '14', 'AZUL', '2021-12-05 04:46:49'),
(49, 'DNI', '936161879', 'Wilson', 'Reyes Pillaca', '7', 'VERDE', '2021-12-09 19:42:46'),
(50, 'DNI', '91419321', 'Aram Francesco ', 'Gutierrez Lozano', '2', 'AMARILLA', '2021-12-10 14:21:26'),
(51, 'DNI', '92135047', 'Sebastian', 'Rodriguez', '7', 'VERDE', '2021-12-12 05:14:24'),
(52, 'DNI', '92135048', 'Santiago', 'Rodriguez', '7', 'VERDE', '2021-12-12 05:15:30'),
(53, 'DNI', '92121048', 'Fabricio', 'Rodriguez', '5', 'AMARILLA', '2021-12-12 05:16:56'),
(54, 'DNI', '12345678', 'Isabel', 'Malpica', '7', 'AZUL', '2021-12-18 23:43:32'),
(55, 'DNI', '78313020', 'Isamar revollar', 'Revollar', '8', 'VERDE', '2021-12-19 14:03:53'),
(56, 'DNI', '41964249', 'Sebastian Gael', 'Chavez lopez', '7', 'VERDE', '2021-12-23 04:42:37'),
(57, 'DNI', '95302218', 'JUAN ', 'avalos', '7', 'VERDE', '2021-12-26 05:19:49'),
(58, 'DNI', '90321520', 'ANELYS', 'RODRIGUEZ', '12', 'AZUL', '2021-12-26 05:21:51'),
(59, 'DNI', '79022497', 'Daniel', 'Cardenas ', '6', 'VERDE', '2022-01-02 03:44:55');

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
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dato_adulto`
--

INSERT INTO `dato_adulto` (`id`, `nom_dni`, `num_dni`, `nombre`, `apellido`, `email`, `conexion`, `fecha`) VALUES
(20, 'DNI', '41780477', 'Samuel', 'Flores', 'dav.sam.t@gmail.com', 'Miraflores 1', '2021-11-17 16:22:48'),
(21, 'DNI', '75606438', 'Valeria', 'Enriquez', 'veenriquezg@gmail.com', 'Miraflores 4', '2021-11-18 16:23:05'),
(22, 'DNI', '75606428', 'Cristina', 'Enriquez Gamarra', 'cristinaenriquez268@gmail.com', 'Surquillo', '2021-11-18 16:23:12'),
(23, 'DNI', '46059166 ', 'Ana', 'Pupuche ', 'Anapupuche315@gmail.com ', 'S/Conexión', '2021-11-18 16:23:18'),
(25, 'DNI', '40715132', 'Juan Carlos', 'Revollar Agarini', 'juanka_peru@hotmail.com', 'San Luis', '2021-11-18 16:23:23'),
(26, 'DNI', '08861925', 'Cesar augusto', 'Quispe', 'caqv65@gmail.com', 'Surquillo', '2021-11-18 17:23:28'),
(27, 'DNI', '40714000', 'juan', 'salas', 'pr.juanmanuelsalas@gmail.com', 'S/Conexion', '2021-11-18 20:23:39'),
(28, 'DNI', '41560661', 'Giannina', 'Revollar', 'tahita23@hotmail.com', 'Miraflores 4', '2021-11-18 20:23:48'),
(29, 'DNI', '72049935 ', 'Yessenia Jiménez ', 'Rebaza ', 'Yanjimri@gmail.com ', 'Surco 2', '2021-11-19 16:23:55'),
(30, 'DNI', '46011770', 'Margot', 'Huerta', 'margot161189@gmail.com', 'Miraflores 1', '2021-11-19 16:23:59'),
(31, 'DNI', '74310209', 'Freddy', 'Pisco', '', 'Miraflores 1', '2021-11-19 16:24:04'),
(32, 'DNI', '75552751', 'David', 'Pérez Aquino', 'davidisaias4465365@gmail.com', 'Miraflores 1', '2021-11-19 16:24:10'),
(33, 'DNI', 'O7342395', 'Georgina Judith', 'Puppi  Peñaranda ', 'interjudith@hotmail.com ', 'Surco 2', '2021-11-19 16:24:14'),
(34, 'DNI', '000913246', 'Faby', 'Carrillos', '', 'Surco 1', '2021-11-19 16:24:17'),
(37, 'DNI', '41858963', 'Percy', 'Tapia', 'tapiarp@gmail.com', 'Surco 2', '2021-11-19 16:24:27'),
(41, 'DNI', '08867994', 'Jaqueline ', 'Romero', 'jromerod1967@gmail.com', 'Miraflores 3', '2021-11-19 16:24:33'),
(43, 'DNI', '08845004', 'ANA MARIA ', 'DE LA TORRE', 'ana-maria-2605@hotmail.com', 'Surquillo', '2021-11-19 16:24:41'),
(45, 'DNI', '07201542', 'Luis', 'Vargas Bermúdez', 'lvargasb99@gmail.com', 'Surco 1', '2021-11-19 16:24:43'),
(47, 'DNI', '61096547', 'Paulo', 'Casas', '956401170', 'Miraflores 3', '2021-11-19 16:24:46'),
(48, 'DNI', '07180771', 'MARIA', 'OLARTE', 'olartemary7@hotmail.com', 'Miraflores 3', '2021-11-19 16:24:49'),
(49, 'DNI', '42917975', 'Abel', 'Cruzado', 'abel_cruzadod@hotmail.com', 'Miraflores 3', '2021-11-19 16:24:52'),
(50, 'DNI', '48618753', 'JORGE', 'FLORES', 'JORGEANGEL2310@GMAIL.COM', 'Surco 1', '2021-11-19 16:24:56'),
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
(66, 'DNI', '09883375', 'Eddy', 'Luque', 'eddyluqu@gmail.com', 'Surco 1', '2021-11-19 21:38:40'),
(67, 'DNI', '989348798', 'Alejandrina', 'Pillaca', 'bella.alejandrina1@gmail.com', 'Surco 1', '2021-11-19 22:56:05'),
(68, 'CEDULA', '003301301 ', 'Noel Jesús ', 'Jiménez Lugo ', 'Noeljimenez1994@gmail.com', 'Surco 2', '2021-11-20 00:16:50'),
(69, 'DNI', '41964249', 'Marisol', 'Lopez pineda', 'mlopezpineda@hotmail.com', 'Miraflores 3', '2021-11-20 01:28:21'),
(70, 'DNI', '43753057', 'Natali', 'Berru', 'berquin2019@gmail.com', 'Miraflores 3', '2021-11-20 01:31:35'),
(71, 'DNI', '46265217', 'Patricia Nerea', 'Vargas Diaz', 'Jaspesibianycrisstynvargas@gmail.com', 'Surco 2', '2021-11-20 02:26:32'),
(72, 'DNI', '09359746', 'Jonan', 'Pecho', 'jonanpecho@gmail.com', 'Surco 2', '2021-11-20 02:28:51'),
(73, 'DNI', '41221722', 'Anasol', 'Huarcaya', 'ghuarcaya6@gmail.com', 'S/Conexion', '2021-11-20 03:26:37'),
(74, 'DNI', '42500540', 'Miguel angel ', 'Revollar Agarini', 'mrevollaragarini@gmail.com', 'San Luis', '2021-11-20 04:22:38'),
(75, 'CEDULA', '00141415', 'Julio', 'Peñaloza', 'hola23.23hola@gmail.com', 'Surquillo', '2021-11-21 04:17:09'),
(76, 'DNI', '19515902', 'Yormary', 'Centeno', 'centeno.yormary@gmail.com', 'Surquillo', '2021-11-21 04:18:11'),
(77, 'CEDULA', '17470761', 'Pedro', 'Gutierrez', 'Pedrojosegutierreztovar@gmail.com', 'Surquillo', '2021-11-21 05:31:57'),
(78, 'DNI', '70403107', 'Schavely ', 'Quino Ramírez', 'schavely2016@gmail.com', 'Surco 1', '2021-11-21 06:45:25'),
(79, 'DNI', '41031549', 'Lissette', 'Zea Barreda', 'warriorprincessxto1510@gmail.com', 'Miraflores 3', '2021-11-21 12:58:11'),
(82, 'DNI', '41215743', 'Raquel', 'Valverde Sandoval ', 'quelavs7@gmail.com', 'Surco 1', '2021-11-22 02:40:37'),
(83, 'DNI', '45643820', 'Eli jaret', 'Espinoza Mendoza', 'eem_252@hotmail.com', 'Surco 1', '2021-11-22 02:43:07'),
(84, 'DNI', '43869393', 'Jonathan', 'Peñaranda', 'japc1610@gmail.com', 'San Isidro', '2021-11-24 18:01:41'),
(85, 'DNI', '08378943', 'Darwin Miguel', 'Abanto Poma', 'dabanto1@gmail.com', 'Surco 1', '2021-11-24 18:03:15'),
(86, 'CEDULA', '002154247', 'Elías ', 'Diaz', 'eliasadr81@gmail.com', 'San Isidro', '2021-11-24 18:32:11'),
(87, 'CEDULA', '001720901', 'Damna', 'Silva', 'damnasilvah.90@gmail.com', 'San Isidro', '2021-11-24 18:54:59'),
(88, 'DNI', '07368883', 'Esther', 'BARRENECHEA ', 'estherbarrenechea@hotmail.com', 'La Victoria', '2021-11-24 19:21:41'),
(89, 'DNI', '597596965', 'Jordi', 'Flores', 'jordiangel0910@gmail.com', 'Surco 1', '2021-11-24 19:21:48'),
(90, 'DNI', '145937812', 'Ricardo ', 'Rivero ', 'ricahdd@gmail.com', 'San Luis', '2021-11-24 19:22:00'),
(91, 'DNI', '43695446', 'Meeker Carlos ', 'Castillon León ', 'meekercastillon@gmail.com', 'San Luis', '2021-11-24 19:29:27'),
(92, 'DNI', '43695445', 'Nathaly Isabel ', 'Melgar Gómez ', 'na_thaly2108@hotmail.com', 'San Luis', '2021-11-24 19:31:03'),
(93, 'DNI', '70636074', 'José Enoc', 'Venero Olarte', 'jevenero@hotmail.com', 'Miraflores 3', '2021-11-24 19:37:39'),
(94, 'CEDULA', '003299356', 'Francis', 'Díaz Molaya ', 'francisd25.fd@gmail.com', 'Surquillo', '2021-11-24 20:01:31'),
(95, 'DNI', '71301790', 'Natali Raquel', 'Ypanaque Matias', 'atenas.peru2013@hotmail.es', 'San Luis', '2021-11-24 20:03:02'),
(96, 'DNI', '07387825', 'Paulina ', 'Cristobal Pantoja ', 'paulinacp65@hotmail.com', 'S/Conexion', '2021-11-24 21:00:11'),
(97, 'DNI', '72715728', 'José carlos', 'Saldaña Cristobal ', 'artillery_94@hotmail.com', 'S/Conexion', '2021-11-24 21:07:52'),
(98, 'DNI', '47688032', 'Jhonny', 'Infantes Sánchez ', 'jhonnyis1407@gmail.com', 'S/Conexion', '2021-11-24 21:10:00'),
(99, 'DNI', '07337679', 'José javier', 'Saldaña suyon', 'josesal13@hotmail.com', 'S/Conexion', '2021-11-24 21:11:35'),
(100, 'DNI', '10819032', 'Norma', 'Paniagua Loayza ', 'maretopa2013@gmail.com', 'Surco 1', '2021-11-24 21:21:32'),
(101, 'DNI', '45742041', 'Leslie villagomez', 'Villagomez otarola', 'villagomezleslie89@gmail.com', 'San Luis', '2021-11-24 21:40:22'),
(102, 'DNI', '07369734', 'Ana María ', 'Fernandini Céspedes', 'afernandini@hotmail.com', 'Surco 1', '2021-11-24 21:50:16'),
(103, 'DNI', '47130762', 'Carmen del Pilar ', 'Florecin Rojas ', 'pilar210514@gmail.com', 'San Luis', '2021-11-24 22:04:43'),
(104, 'DNI', '15991310', 'Aquila ', 'Rojas Retuerto', 'aquilarojas1@gmail.com', 'S/Conexion', '2021-11-24 22:06:46'),
(105, 'DNI', '76723903', 'Angella ', 'Perfumo ', 'angellaperfumopa@gmail.com', 'Surco 2', '2021-11-24 22:15:53'),
(106, 'DNI', '7240051', 'Carlos', 'Manco Barrenechea', 'celiezermanco@gmail.com', 'S/Conexion', '2021-11-24 22:22:18'),
(107, 'DNI', '005027495', 'Juan Delfin ', 'Cueva', 'juan-delfin-3@hotmail.com', 'San Luis', '2021-11-24 22:52:16'),
(108, 'DNI', '55441723', 'Lesbia del carmen ', 'Molina ', 'juan-delfin-3@hotmail.com', 'San Luis', '2021-11-24 22:54:22'),
(109, 'DNI', '44922668', 'Evelyn', 'Villagomez Otárola', 'evillagomez2606@gmail.com', 'San Luis', '2021-11-24 23:03:16'),
(110, 'DNI', '46455132', 'Jorge Luis', 'Noblecilla Estacio', 'jorgeunico13@hotmail.com', 'San Luis', '2021-11-24 23:04:53'),
(111, 'DNI', '06053517', 'DIOSCELINDA ANTONIETA .', 'AGARINI AZAÑA.  ', 'dioscelindaantonietaagarini@gmail.com', 'San Luis', '2021-11-24 23:42:04'),
(112, 'DNI', '10153548', 'Alfonso', 'Quiñones', 'alfonsoqv@gmail.com', 'Miraflores 3', '2021-11-24 23:46:11'),
(113, 'DNI', '07876374', 'Maricarmen ', 'Ramos', 'Maricarmenr29@hotmail.com', 'Miraflores 3', '2021-11-24 23:47:37'),
(114, 'DNI', '61264844', 'Santiago', 'Quiñones', 'alfonsoqv@hotmail.com', 'Miraflores 3', '2021-11-24 23:50:30'),
(115, 'DNI', '74121709', 'Ana Paula', 'Quiñones', 'Anapaulaqr0313@gmail.com', 'Miraflores 3', '2021-11-24 23:53:07'),
(117, 'DNI', '10382181', 'Richard ', 'Ventura Riera ', 'dulcesydelicias@gmail.com', 'Los olivos', '2021-11-25 00:30:27'),
(118, 'DNI', '09627336', 'Elsa', 'Apolinario Godoy', 'elsa.apolinariog@gmail.com', 'Los olivos', '2021-11-25 00:32:01'),
(119, 'DNI', '42310858', 'Elsa', 'Navarro Apolinario ', 'elsa.navarro.apolinario@gmail.com', 'Los olivos', '2021-11-25 00:35:16'),
(120, 'DNI', '44353856', 'Ashely Brenda', 'Esquén Rojas', 'ashelybrenda0112@gmail.com', 'Miraflores 3', '2021-11-25 01:11:40'),
(121, 'CEDULA', '001686516', 'Jenny Leany ', 'Chavarriaga', 'jennyleany@hotmail.com', 'San Luis', '2021-11-25 01:18:36'),
(122, 'DNI', '1023748548', 'Felipe', 'Huaco', 'huacoven.@gmail.com', 'San Luis', '2021-11-25 01:28:33'),
(123, 'DNI', '70080670', 'Matthew', 'Venero Olarte', 'vnro619@hotmail.com', 'Miraflores 3', '2021-11-25 01:40:17'),
(124, 'DNI', '40989100', 'Dilcia', 'Regalado Cueva', 'cuevarega@gmail.com', 'Surco 1', '2021-11-25 01:42:51'),
(126, 'DNI', '43662428', 'Marco', 'Cerquera Encinas', 'cuevarega@gmail.com', 'Surco 1', '2021-11-25 01:47:11'),
(127, 'DNI', '40103430', 'Susana ', 'Sojo', 'susansojo@hotmail.com', 'Miraflores 3', '2021-11-25 02:24:33'),
(128, 'DNI', '07461537', 'Carmen', 'Paredes', 'carmenparedes2501@hotmail.com', 'San Luis', '2021-11-25 02:34:30'),
(129, 'DNI', '60919974', 'Ariana', 'Sojo', 'ariximena007@gmail.com', 'Miraflores 3', '2021-11-25 02:39:58'),
(131, 'DNI', '47949682', 'Ruth Melina', 'Meléndez Díaz ', 'ruthmelina24.7@gmail.com', 'Surco 2', '2021-11-25 03:08:50'),
(132, 'DNI', '07479380', 'Henry Avilés ', 'Avilés Aliaga', 'Henryravilesa@gmail.com', 'Surco 2', '2021-11-25 03:13:07'),
(133, 'DNI', '61069037', 'Dakniel', 'Cerquera Regalado', 'cuevarega@gmail.com', 'Surco 1', '2021-11-25 03:25:09'),
(135, 'DNI', '08422802', 'Pedro', 'Revollar', 'revollarpe@gmail.com', 'San Luis', '2021-11-25 03:32:14'),
(136, 'DNI', '992589472', 'Jimena ', 'Salas Revollar', 'alessandrajimena08@gmail.com', 'Miraflores 4', '2021-11-25 04:04:40'),
(137, 'DNI', '77418904', 'Luis Eduardo', 'Quispe Fernandes', 'luismj23bulls@gmail.com', 'Miraflores 1', '2021-11-25 13:26:25'),
(138, 'DNI', '08154791', 'Isabel', 'Fernandes', 'luismj23bulls@gmail.com', 'Miraflores 1', '2021-11-25 13:27:56'),
(139, 'CEDULA', '26086645', 'Carolina', 'Gonzalez', 'luismj23bulls@gmail.com', 'Miraflores 1', '2021-11-25 13:35:28'),
(140, 'DNI', '44350722', 'Dante', 'Sola otarola', 'Babybass1110@gmail.com', 'Surco 2', '2021-11-25 14:01:26'),
(141, 'DNI', '40919286', 'Natali', 'Barba ', 'nataliebg@hotmail.com', 'Surco 2', '2021-11-25 14:39:17'),
(142, 'DNI', '44735202', 'Becky ', 'Osores', 'beckyosores@gmail.com', 'Surco 2', '2021-11-25 17:08:35'),
(143, 'DNI', '72006052', 'Maria Paz ', 'Garcia', 'mpygarciaparedes@gmail.com', 'Surco 2', '2021-11-25 17:11:06'),
(144, 'DNI', '77224405', 'Jeremy', 'Bejarano ', 'mpygarciaparedes@gmail.com', 'Surco 2', '2021-11-25 17:13:16'),
(145, 'DNI', '45951417', 'CRISTHIAN', 'CABELLO', 'ccdlt@hotmail.com', 'Surquillo', '2021-11-25 20:55:15'),
(146, 'DNI', '76577243', 'ANGGIE ', 'SARAVIA', 'anggieliz2626@gmail.com', 'Surquillo', '2021-11-25 20:57:31'),
(147, 'DNI', '08876742', 'MARIBEL', 'DE LA TORRE', 'maribeldelatorre004@gmail.com', 'Surquillo', '2021-11-25 21:01:31'),
(148, 'DNI', '06746364', 'July', 'Santillan', 'julisa&24@hotmail.com', 'Surco 2', '2021-11-26 04:04:18'),
(149, 'DNI', '48504307', 'Jessica', 'Huaranga', 'jessicatandy28@gmail.com', 'Los olivos', '2021-11-26 15:54:34'),
(150, 'DNI', '75315751', 'Karla', 'Huaranga', 'kahuar278@gmail.com', 'Los olivos', '2021-11-26 15:55:34'),
(151, 'DNI', '44161883', 'Elizabeth Marianela', 'Cayao Sempertegui', 'elicayao30@gmail.com', 'S/Conexion', '2021-11-26 16:12:38'),
(152, 'CEDULA', '004417138', 'Kenia Maxibel', 'Marquez Parra', 'elicayao30@gmail.com', 'S/Conexion', '2021-11-26 16:16:00'),
(153, 'DNI', '23003297', 'Adelina', 'Aguero', 'adelina.ap1963@gmail.com', 'La Victoria', '2021-11-26 23:38:36'),
(154, 'DNI', '07423874', 'Connie', 'Aponte', 'conniecharly171864@gmail.com', 'La Victoria', '2021-11-26 23:40:05'),
(155, 'DNI', '07385941', 'Martha ', 'Sanchez', 'conniecharly171864@gmail.com', 'S/Conexion', '2021-11-26 23:41:21'),
(156, 'DNI', '72129711', 'Genesis', 'Castilla', 'conniecharly171864@gmail.com', 'La Victoria', '2021-11-26 23:45:53'),
(158, 'DNI', '75445750', 'Miluska huaman caballero ', 'Huaman ', 'miluskacaballero1@gmail.com', 'La Victoria', '2021-11-27 00:05:38'),
(160, 'DNI', '09521701', 'Carlos', 'Medina Sanchez', 'carlosmedina2911@hotmail.com', 'Surco 2', '2021-11-27 02:28:18'),
(161, 'DNI', '10701254', 'Maria del Carmen', 'Gutierrez tantalean', 'gutierreztantaleanmaria@gmail.com', 'Miraflores 3', '2021-11-27 13:44:01'),
(162, 'DNI', '47464766', 'Arthur Jefferson ', 'Effio Becerra', 'arthurjeffersoneffiobecerra@gmail.com', 'San Luis', '2021-11-27 18:26:43'),
(163, 'DNI', '474835052', 'Katherine Estefany  ', 'Garcia vega', 'garciavegakatherine@gmail.com', 'San Luis', '2021-11-27 18:29:05'),
(165, 'CEDULA', '5879322', 'Marlenys ', 'Carreno', 'marlenys.jyydj@gmail.com', 'Surquillo', '2021-11-28 13:48:51'),
(167, 'DNI', '72400512', 'Eliezer', 'Manco', 'celiezermanco@gmail.com', 'S/Conexion', '2021-12-01 13:44:35'),
(169, 'DNI', '75960660', 'Cecilia', 'Izarra', 'ceciliaizarra97@gmail.com', 'Miraflores 1', '2021-12-02 02:36:45'),
(170, 'DNI', '45419783', 'Janeth ', 'Vidal', 'Transportesjm.logistica@gmail.com', 'San Luis', '2021-12-02 02:45:18'),
(171, 'DNI', '43737791', 'Juan', 'Montes De la Cruz ', 'jmontesd86@gmail.com', 'Miraflores 1', '2021-12-02 02:54:53'),
(173, 'DNI', '07338307', 'Lucia', 'Saldana', 'ceciliaizarra97@gmail.com', 'Miraflores 2', '2021-12-02 04:17:42'),
(174, 'DNI', '45571557', 'Chritian', 'Leon', 'leon_019@hotmail.com', 'Surco 2', '2021-12-02 20:31:12'),
(175, 'DNI', '20550712', 'Maria', 'Lopez ', 'cristinaenriquez268@gmail.com', 'Surco 2', '2021-12-02 20:38:12'),
(176, 'DNI', '075141845', 'Oscar saul', 'Huaco venancio', 'huacoven.@gmail.com', 'San Luis', '2021-12-02 21:31:08'),
(177, 'DNI', '72472528', 'Cesar', 'Quispe', 'Csar.qdt@gmail.com', 'Surquillo', '2021-12-02 23:08:27'),
(178, 'DNI', '08883634', 'MARTHA CONSUELO', 'TIPPE CAMPOS', 'marthaconsuelotippe@gmail.com', 'La Victoria', '2021-12-03 00:14:56'),
(179, 'DNI', '61754647', 'Eliu Caleb', 'Rabanal Villagomez', 'lajaina14@hotmail.com', 'San Luis', '2021-12-03 01:15:28'),
(180, 'DNI', '46507018', 'Rafael', 'Chapilliquen', 'beckyosores@gmail.com', 'S/Conexion', '2021-12-03 02:45:48'),
(182, 'DNI', '24004088', 'Karol', 'Auquimaita', 'bienypaz2@gmail.com', 'Surco 2', '2021-12-03 15:42:01'),
(183, 'DNI', '08876724', 'ELVIRA', 'RUIZ', 'ELVIRA_2603@GMAIL.COM', 'S/Conexion', '2021-12-04 03:23:40'),
(184, 'DNI', '003454220', 'Enrique', 'Padron', 'ariangelber@gmail.com', 'Surquillo', '2021-12-04 13:12:38'),
(185, 'DNI', '003951228', 'IVETH', 'Herrera ', 'ivethcaherrera2@gmail.com', 'Surquillo', '2021-12-04 13:15:44'),
(187, 'DNI', '74962037', 'Jesus', 'Garcia Ramos', 'jesus_ramosgarcia24@hotmail.com', 'Surquillo', '2021-12-05 00:30:51'),
(188, 'CEDULA', '002014388', 'Carlos', 'Alvarado', 'carlos.alvarado78@gmail.com', 'Miraflores 3', '2021-12-05 01:34:52'),
(191, 'DNI', '147852369', 'VICTORIA', 'SANCHEZ', 'notiene@notiene.com', 'Miraflores 4', '2021-12-05 01:47:43'),
(192, 'DNI', '369852147', 'MAIRA', 'TRUJILLO', 'notiene@notiene.com', 'Miraflores 4', '2021-12-05 01:48:49'),
(193, 'DNI', '456789123', 'IVAN GUEVARA', 'GUEVARA', 'notiene@notiene.com', 'Miraflores 4', '2021-12-05 01:49:50'),
(194, 'DNI', '369741852', 'CARMEN', 'ROJAS', 'notiene@notiene.com', 'Miraflores 4', '2021-12-05 01:51:46'),
(197, 'DNI', '76628517', 'Daniela', 'Quispe', 'cristinaenriquez268@gmail.com', 'S/Conexion', '2021-12-05 03:20:08'),
(198, 'DNI', '73285476', 'Karlita ', 'Cordova Berru ', 'berquin2019@gmail.com', 'S/Conexion', '2021-12-05 04:22:08'),
(199, 'CEDULA', '1530237', 'Rodrianny', 'lizardo', 'rodrianny-15@gmail.com', 'Surquillo', '2021-12-05 04:22:40'),
(200, 'CEDULA', '1839247', 'luis', 'ustariz', 'ustarizluis-79@gmail.com', 'Surquillo', '2021-12-05 04:24:56'),
(201, 'CEDULA', '1839151', 'Gina', 'Castro', 'gcarolina_39@gmail.com', 'Surquillo', '2021-12-05 04:26:58'),
(202, 'CEDULA', '1943897', 'daniel', 'avila', 'davila_473@gmail.com', 'Surquillo', '2021-12-05 04:28:55'),
(203, 'DNI', '10339003', 'CECILIA', 'NAVEA', 'CNAVEA_39@GMAIL.COM', 'Surquillo', '2021-12-05 04:45:33'),
(204, 'DNI', '45556834', 'Tatiana', 'Yupanqui', 'tyy.zxn@gmail.com', 'San Isidro', '2021-12-06 21:50:08'),
(205, 'DNI', '41879827', 'Willian', 'Aliaga', 'williamaliaga91@hotmail.com', 'S/Conexion', '2021-12-07 15:46:20'),
(206, 'DNI', '41165039', 'Thaira', 'Diaz', 'thairacontact@gmail.com', 'San Isidro', '2021-12-08 18:36:38'),
(207, 'DNI', '980250242', 'EDELMIRA', 'Vargas Espinoza', 'edelvargas63@gmail.com', 'Miraflores 4', '2021-12-09 04:35:03'),
(208, 'DNI', '76628519', 'Alondra', 'Quispe', 'Alondraquispe22@gmail.com', 'Surquillo', '2021-12-09 18:48:55'),
(210, 'DNI', '20033934', 'Juana ', 'Arotoma torres', 'rubycllo_10@hotmail.com', 'Miraflores 3', '2021-12-10 01:44:15'),
(212, 'DNI', '42738243', 'Aurora', 'Vicente ', 'auroraperu@hotmail.com', 'Miraflores 4', '2021-12-10 03:15:22'),
(214, 'DNI', '48521780', 'Juana', 'Gervais', 'juana.gervais@gmail.com', 'S/Conexion', '2021-12-10 12:57:33'),
(215, 'DNI', '77806559', 'Daniela Sofia', 'Lozano Vitor', 'daniela.lozvi@gmail.com', 'S/Conexion', '2021-12-10 14:24:00'),
(216, 'CEDULA', '129181389', 'Valentina ', 'Flores', 'keniamarquezpvc@gmail.com', 'Los olivos', '2021-12-10 17:24:47'),
(217, 'CEDULA', '129343684', 'Cristian ', 'Flores', 'keniamarquezpvc@gmail.com', 'Los olivos', '2021-12-10 17:26:01'),
(218, 'DNI', '29346224', 'Juana', 'Barreda', 'warriorprincessxto1510@gmail.com', 'S/Conexion', '2021-12-10 19:43:53'),
(219, 'DNI', '71597169', 'Billy Andrew', 'Gutierrez Delgado', 'andrew.gutdel@gmail.com', 'S/Conexion', '2021-12-10 22:31:34'),
(222, 'DNI', '09949734', 'ANALI', 'Tohalino Vera', 'Toalinoanali@gmail.com', 'La Victoria', '2021-12-12 01:40:03'),
(223, 'DNI', '10421370', 'Wilfredo', 'Espinoza Argote', 'Toalinoanali@gmail.com', 'La Victoria', '2021-12-12 01:41:26'),
(224, 'DNI', '45358221', 'Gianina', 'Rodriguez', 'g_rodri_89@gmail.com', 'Surquillo', '2021-12-12 05:11:56'),
(225, 'DNI', '61966991', 'Jair Jonathan', 'Revollar Vidal', 'jair@jj.com', 'San Luis', '2021-12-12 12:44:18'),
(226, 'DNI', '07796917', 'TATIANA ', 'YON', 'notiene@notiene.com', 'San Isidro', '2021-12-12 13:45:59'),
(227, 'DNI', '89562301', 'FRANCISCO ', 'RODRIGUEZ', 'notiene@notieene.com', 'San Isidro', '2021-12-12 13:46:57'),
(228, 'DNI', '08754071', 'Miguel', 'Gutierrez', 'miguel_g1386@gmail.com', 'Surquillo', '2021-12-12 13:50:53'),
(229, 'DNI', '09494789', 'Juan Pablo ', 'KOOYIP ', 'jpkooyip@hotmail', 'San Isidro', '2021-12-16 11:49:31'),
(230, 'DNI', '09824177', 'Anglie', 'KOOYIP ', 'angiendegm@hotmail.com', 'San Isidro', '2021-12-16 11:57:02'),
(231, 'DNI', '002646921', 'Vigdalia', 'Argotti', 'vigdaliargotti@gmail.com', 'Miraflores 3', '2021-12-18 02:55:27'),
(232, 'DNI', '76048317', 'Nahomi', 'CORDOVA BERRU', 'nahomixiomaracordovaberru@gmail.com', 'Miraflores 3', '2021-12-18 02:59:08'),
(234, 'DNI', '73090331', 'Angie', 'Vidal', 'angie12vidal@gmail.com', 'San Luis', '2021-12-18 18:58:45'),
(235, 'DNI', '47818992', 'Mayra', 'Trujillo', 'cwe.cecilia@gmail.com', 'Miraflores 1', '2021-12-19 03:07:04'),
(236, 'DNI', '74629545', 'Andrea ', 'Jara ', 'andreajara694@gmail.com', 'Miraflores 3', '2021-12-19 05:06:43'),
(238, 'DNI', '94660623', 'Joffre Jorge ', 'Garcia Vega', 'jorgejv1421@gmail.com', 'S/Conexion', '2021-12-19 14:08:01'),
(240, 'DNI', '00925235', 'Dominga ', 'Enciso Luna', 'garciavegakatherinr@gmail.com', 'S/Conexion', '2021-12-19 14:13:03'),
(241, 'DNI', '72005946', 'Luis Flores G', 'Flores', 'pilar210514@gmail.com', 'S/Conexion', '2021-12-23 17:07:28'),
(242, 'DNI', '44283083', 'Libia', 'Meza Lozano ', 'libia1648_3@hotmail.com', 'Miraflores 1', '2021-12-23 20:02:10'),
(243, 'DNI', '46370304', 'Valeria Estefania', 'Ortiz Ribbeck', 'valeriaortizribbeck@gmail.com', 'Miraflores 1', '2021-12-23 20:07:52'),
(244, 'DNI', '44815634', 'Joel Eduardo Jesus', 'Palacios Morin', 'joelpalaciosm@gmail.com', 'Miraflores 1', '2021-12-23 20:09:37'),
(246, 'DNI', '42602208', 'Jackelyn', 'Chumpitaz ', 'yasira899053@gmail.com', 'San Luis', '2021-12-24 15:11:45'),
(247, 'DNI', '081058', 'Judith ', 'Puppi ', 'interjudith@hotmail.com', 'Surco 2', '2021-12-25 22:20:16'),
(248, 'DNI', '08349012', 'ROGELIA', 'HUAMAN', 'rhuaman_1930@gmail.com', 'S/Conexion', '2021-12-26 05:24:28'),
(249, 'DNI', '15328590', 'GIANINNA', 'RODRIGUEZ', 'grodriguez-2120@gmail.com', 'S/Conexion', '2021-12-26 05:28:16'),
(250, 'DNI', '00325729', 'MARLENYS', 'CARRENO', 'mcarreno@gmail.com', 'Surquillo', '2021-12-26 05:34:20'),
(254, 'DNI', '40926355', 'Lised', 'Huaman ', 'lisedhuaman27@gmail.com', 'Miraflores 1', '2021-12-26 10:36:49'),
(255, 'DNI', '07462243', 'Cesar', 'Guevara ', 'cguevara@gmail.com', 'Miraflores 1', '2021-12-26 10:40:27'),
(256, 'DNI', '41516193', 'Cyntia Margot', 'Vilchez Huatuco', 'cyntia@gmail.com', 'S/Conexion', '2021-12-26 14:21:47'),
(257, 'DNI', '44291006', 'Sofia', 'Tello', 'chofi3987@gmail.com', 'Surco 1', '2021-12-27 14:55:02'),
(258, 'DNI', '07342395', 'Judith ', 'Puppi ', 'interjudith@hotmail.com', 'Surco 2', '2022-01-02 00:50:52'),
(259, 'DNI', '06725388', 'Victoria', 'Sanchez Sanchez', 'elizabeth1971@gmail.com', 'Miraflores 1', '2022-01-02 01:36:04'),
(260, 'DNI', '40541145', 'WILSON', 'REYES', 'wilsonreyesm@gmail.com', 'Surco 1', '2022-01-02 02:35:58'),
(261, 'CEDULA', '00352410', 'Yormary', 'Centeno', 'YORMARY-PENALOZA@GMAIL.COM', 'Surquillo', '2022-01-02 03:58:49'),
(262, 'CEDULA', '00321823', 'Julio', 'PeNaloza ', 'JULIOPENALOZA-15@GMAIL.COM', 'Surquillo', '2022-01-02 04:02:25'),
(263, 'CEDULA', '00342388', 'PEDRO', 'GUTIERREZ', 'P_GUTIERREZ@GMAIL.COM', 'Surquillo', '2022-01-02 04:05:10'),
(264, 'DNI', '08359398', 'SABINA', 'HUAMANI', 'SHUAMANI_1154@GMAIL.COM', 'Surquillo', '2022-01-02 04:12:58'),
(265, 'CEDULA', '00735529', 'TOMASA', 'RIVERO', 'TRIVERO_455@GMAIL.COM', 'Surquillo', '2022-01-02 04:15:47'),
(266, 'DNI', '82394530', 'miguel', 'gutierrez', 'mgutierrez_3945@gmail.com', 'Surquillo', '2022-01-02 04:32:25'),
(267, 'DNI', '77393997', 'Alexandra', 'Villanueva ', 'alexandratvillanueva@gmail.com', 'S/Conexion', '2022-01-09 15:39:30');

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
-- Estructura de tabla para la tabla `oracion`
--

CREATE TABLE `oracion` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pedido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `oracion`
--

INSERT INTO `oracion` (`id`, `nombres`, `pedido`, `fecha`) VALUES
(6, 'samuel flores', 'ejemplo de envio de textos', '2022-05-04 11:51:00'),
(8, 'Eleonora Millan Laos ', 'Por favor pido sanidad restauracion de mis hijos y también por mi mamá hermano y toda mi familia y más que todo por fabor para mi hijo sergio mil bendiciones fcp', '2022-05-04 12:12:19'),
(9, 'Eleonora Millan Laos ', 'Por favor pido sanidad restauracion de mis hijos y también por mi mamá hermano y toda mi familia y más que todo por fabor para mi hijo sergio mil bendiciones fcp', '2022-05-04 12:12:47'),
(13, 'ver uno', 'enviat texto', '2022-05-04 19:36:16');

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
(350, '07514184', '1er TURNO', '2021-12-12'),
(351, '47949682', '2do TURNO', '2021-12-12'),
(352, '07479380', '2do TURNO', '2021-12-12'),
(353, '005027495', '2do TURNO', '2021-12-12'),
(354, '55441723', '2do TURNO', '2021-12-12'),
(355, '45742041', '2do TURNO', '2021-12-12'),
(356, '61754647', '2do TURNO', '2021-12-12'),
(357, '44161883', '2do TURNO', '2021-12-12'),
(358, '46507018', '2do TURNO', '2021-12-12'),
(359, '46507018', '2do TURNO', '2021-12-12'),
(360, '003301301', '3er TURNO', '2021-12-12'),
(361, '07461537', '1er TURNO', '2021-12-12'),
(362, '42500540', '1er TURNO', '2021-12-12'),
(364, '07368883', '2do TURNO', '2021-12-12'),
(365, '07368567', '2do TURNO', '2021-12-12'),
(366, '72454739', '2do TURNO', '2021-12-12'),
(367, '003454220', '1er TURNO', '2021-12-12'),
(368, '003951228', '1er TURNO', '2021-12-12'),
(369, '19515902', '2do TURNO', '2021-12-12'),
(370, '00141415', '2do TURNO', '2021-12-12'),
(371, '5879322', '2do TURNO', '2021-12-12'),
(372, '08154791', '2do TURNO', '2021-12-12'),
(373, '26086645', '2do TURNO', '2021-12-12'),
(374, '08876742', '2do TURNO', '2021-12-12'),
(375, '08883634', '2do TURNO', '2021-12-12'),
(376, '09949734', '2do TURNO', '2021-12-12'),
(377, '10421370', '2do TURNO', '2021-12-12'),
(378, '76577243', '3er TURNO', '2021-12-12'),
(379, '45951417', '3er TURNO', '2021-12-12'),
(380, '08845004', '2do TURNO', '2021-12-12'),
(381, '1839151', '3er TURNO', '2021-12-12'),
(382, '1943897', '3er TURNO', '2021-12-12'),
(383, '23003297', '2do TURNO', '2021-12-12'),
(384, '09918026', '2do TURNO', '2021-12-12'),
(385, '10382181', '2do TURNO', '2021-12-12'),
(386, '72006052', '2do TURNO', '2021-12-12'),
(387, '77224405', '2do TURNO', '2021-12-12'),
(388, '72049935', '1er TURNO', '2021-12-12'),
(389, '45358221', '2do TURNO', '2021-12-12'),
(390, '44353856', '2do TURNO', '2021-12-12'),
(391, '61966991', '2do TURNO', '2021-12-12'),
(392, '46059166', '3er TURNO', '2021-12-12'),
(393, '07796917', '2do TURNO', '2021-12-12'),
(394, '89562301', '2do TURNO', '2021-12-12'),
(395, '08754071', '2do TURNO', '2021-12-12'),
(396, '25447072', '2do TURNO', '2021-12-19'),
(397, '75552751', '2do TURNO', '2021-12-19'),
(398, '08861925', '2do TURNO', '2021-12-19'),
(399, '07461537', '1er TURNO', '2021-12-19'),
(400, '44922668', '1er TURNO', '2021-12-19'),
(401, '46455132', '1er TURNO', '2021-12-19'),
(402, '41215743', '2do TURNO', '2021-12-19'),
(403, '45643820', '2do TURNO', '2021-12-19'),
(404, '09494789', '1er TURNO', '2021-12-19'),
(405, '09824177', '1er TURNO', '2021-12-19'),
(406, '10819032', '2do TURNO', '2021-12-19'),
(407, '47130762', '2do TURNO', '2021-12-19'),
(408, '55441723', '2do TURNO', '2021-12-19'),
(409, '005027495', '2do TURNO', '2021-12-19'),
(410, '003301301', '2do TURNO', '2021-12-19'),
(411, '20550712', '2do TURNO', '2021-12-19'),
(412, '46265217', '2do TURNO', '2021-12-19'),
(413, '44350722', '2do TURNO', '2021-12-19'),
(414, '41031549', '2do TURNO', '2021-12-19'),
(415, '29346224', '2do TURNO', '2021-12-19'),
(416, '002014388', '2do TURNO', '2021-12-19'),
(417, '07201542', '1er TURNO', '2021-12-19'),
(418, '41165039', '1er TURNO', '2021-12-19'),
(419, '73285476', '1er TURNO', '2021-12-19'),
(420, '76048317', '1er TURNO', '2021-12-19'),
(421, '43753057', '1er TURNO', '2021-12-19'),
(422, '45742041', '1er TURNO', '2021-12-19'),
(423, '02805847', '1er TURNO', '2021-12-19'),
(424, '44161883', '2do TURNO', '2021-12-19'),
(425, '40919286', '1er TURNO', '2021-12-19'),
(426, '73090331', '1er TURNO', '2021-12-19'),
(427, '71597169', '2do TURNO', '2021-12-19'),
(428, '08154791', '1er TURNO', '2021-12-19'),
(429, '77418904', '1er TURNO', '2021-12-19'),
(430, '10701254', '2do TURNO', '2021-12-19'),
(431, '47818992', '1er TURNO', '2021-12-19'),
(432, '75606438', '2do TURNO', '2021-12-19'),
(433, '72400512', '2do TURNO', '2021-12-19'),
(434, '74629545', '2do TURNO', '2021-12-19'),
(435, '77806559', '2do TURNO', '2021-12-19'),
(436, '45419783', '2do TURNO', '2021-12-19'),
(437, '47464766', '2do TURNO', '2021-12-19'),
(438, '00141415', '2do TURNO', '2021-12-19'),
(439, '19515902', '2do TURNO', '2021-12-19'),
(440, '47835052', '2do TURNO', '2021-12-19'),
(441, '5879322', '2do TURNO', '2021-12-19'),
(442, '44660623', '2do TURNO', '2021-12-19'),
(443, '00925235', '2do TURNO', '2021-12-19'),
(444, '40919286', '2do TURNO', '2021-12-26'),
(445, '70636074', '1er TURNO', '2021-12-26'),
(446, '005027495', '2do TURNO', '2021-12-26'),
(447, '55441723', '2do TURNO', '2021-12-26'),
(448, '47130762', '2do TURNO', '2021-12-26'),
(449, '72005946', '2do TURNO', '2021-12-26'),
(450, '75552751', '2do TURNO', '2021-12-26'),
(451, '44283083', '1er TURNO', '2021-12-26'),
(452, '46011770', '2do TURNO', '2021-12-26'),
(453, '46370304', '1er TURNO', '2021-12-26'),
(454, '44815634', '1er TURNO', '2021-12-26'),
(455, '07385941', '2do TURNO', '2021-12-26'),
(456, '07423874', '2do TURNO', '2021-12-26'),
(457, '72129711', '2do TURNO', '2021-12-26'),
(458, '42310858', '2do TURNO', '2021-12-26'),
(459, '71301790', '2do TURNO', '2021-12-26'),
(460, '07202944', '1er TURNO', '2021-12-26'),
(461, '44922668', '2do TURNO', '2021-12-26'),
(462, '46455132', '2do TURNO', '2021-12-26'),
(463, '42602208', '2do TURNO', '2021-12-26'),
(464, '07461537', '1er TURNO', '2021-12-26'),
(465, '07201542', '1er TURNO', '2021-12-26'),
(466, '43695446', '2do TURNO', '2021-12-26'),
(467, '43695445', '2do TURNO', '2021-12-26'),
(468, '41031549', '2do TURNO', '2021-12-26'),
(469, '002014388', '2do TURNO', '2021-12-26'),
(470, '29346224', '2do TURNO', '2021-12-26'),
(471, '47464766', '2do TURNO', '2021-12-26'),
(472, '47835052', '2do TURNO', '2021-12-26'),
(473, '20550712', '2do TURNO', '2021-12-26'),
(474, '75606428', '2do TURNO', '2021-12-26'),
(475, '72472528', '1er TURNO', '2021-12-26'),
(476, '42500540', '2do TURNO', '2021-12-26'),
(477, '45419783', '2do TURNO', '2021-12-26'),
(478, '61966991', '2do TURNO', '2021-12-26'),
(479, '08867994', '1er TURNO', '2021-12-26'),
(480, '61096547', '1er TURNO', '2021-12-26'),
(481, '77224405', '2do TURNO', '2021-12-26'),
(482, '72006052', '2do TURNO', '2021-12-26'),
(483, '003301301', '2do TURNO', '2021-12-26'),
(484, '10819032', '2do TURNO', '2021-12-26'),
(485, '07180771', '1er TURNO', '2021-12-26'),
(486, '10339003', '1er TURNO', '2021-12-26'),
(487, '08876742', '1er TURNO', '2021-12-26'),
(488, '08845004', '2do TURNO', '2021-12-26'),
(489, '25447072', '2do TURNO', '2021-12-26'),
(490, '08349012', '1er TURNO', '2021-12-26'),
(491, '15328590', '2do TURNO', '2021-12-26'),
(492, '00325729', '2do TURNO', '2021-12-26'),
(493, '00352410', '2do TURNO', '2021-12-26'),
(494, '00321823', '2do TURNO', '2021-12-26'),
(495, '00342388', '2do TURNO', '2021-12-26'),
(496, '40926355', '1er TURNO', '2021-12-26'),
(497, '07462243', '1er TURNO', '2021-12-26'),
(498, '989348798', '1er TURNO', '2021-12-26'),
(499, '44660623', '2do TURNO', '2021-12-26'),
(500, '41516193', '2do TURNO', '2021-12-26'),
(501, '08867994', '2do TURNO', '2022-01-02'),
(502, '61096547', '2do TURNO', '2022-01-02'),
(503, '74629545', '2do TURNO', '2022-01-02'),
(504, '40919286', '1er TURNO', '2022-01-02'),
(505, '40103430', '2do TURNO', '2022-01-02'),
(506, '60919974', '2do TURNO', '2022-01-02'),
(507, '70636074', '1er TURNO', '2022-01-02'),
(508, '44291006', '1er TURNO', '2022-01-02'),
(509, '07201542', '1er TURNO', '2022-01-02'),
(510, '44161883', '2do TURNO', '2022-01-02'),
(511, '73285476', '1er TURNO', '2022-01-02'),
(512, '43753057', '1er TURNO', '2022-01-02'),
(513, '76048317', '1er TURNO', '2022-01-02'),
(514, '44353856', '2do TURNO', '2022-01-02'),
(515, '07180771', '1er TURNO', '2022-01-02'),
(516, '41031549', '2do TURNO', '2022-01-02'),
(517, '002014388', '2do TURNO', '2022-01-02'),
(518, '004417138', '2do TURNO', '2022-01-02'),
(519, '129181389', '2do TURNO', '2022-01-02'),
(520, '72472528', '1er TURNO', '2022-01-02'),
(521, '20550712', '2do TURNO', '2022-01-02'),
(522, '75606428', '1er TURNO', '2022-01-02'),
(523, '07342395', '2do TURNO', '2022-01-02'),
(524, '47818992', '1er TURNO', '2022-01-02'),
(525, '06725388', '1er TURNO', '2022-01-02'),
(526, '989348798', '1er TURNO', '2022-01-02'),
(527, '40541145', '1er TURNO', '2022-01-02'),
(528, '25447072', '2do TURNO', '2022-01-02'),
(529, '08876742', '2do TURNO', '2022-01-02'),
(530, '45951417', '2do TURNO', '2022-01-02'),
(531, '46265217', '2do TURNO', '2022-01-02'),
(532, '44350722', '2do TURNO', '2022-01-02'),
(533, '76577243', '2do TURNO', '2022-01-02'),
(534, '08845004', '2do TURNO', '2022-01-02'),
(535, '00352410', '2do TURNO', '2022-01-02'),
(536, '00321823', '2do TURNO', '2022-01-02'),
(537, '00325729', '2do TURNO', '2022-01-02'),
(538, '00342388', '2do TURNO', '2022-01-02'),
(539, '08359398', '2do TURNO', '2022-01-02'),
(540, '00735529', '1er TURNO', '2022-01-02'),
(541, '10339003', '1er TURNO', '2022-01-02'),
(542, '15328590', '2do TURNO', '2022-01-02'),
(543, '82394530', '2do TURNO', '2022-01-02'),
(544, '10153548', '2do TURNO', '2022-01-02'),
(545, '07876374', '2do TURNO', '2022-01-02'),
(546, '74121709', '2do TURNO', '2022-01-02'),
(547, '61264844', '2do TURNO', '2022-01-02'),
(548, '75552751', '2do TURNO', '2022-01-02'),
(549, '40926355', '1er TURNO', '2022-01-02'),
(550, '07462243', '1er TURNO', '2022-01-02'),
(551, '003301301', '2do TURNO', '2022-01-02'),
(552, '003299356', '2do TURNO', '2022-01-02');

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
(78, '91132179', '2do TURNO', 'AMARILLA', '2021-12-12'),
(79, '55128066', '2do TURNO', 'AMARILLA', '2021-12-12'),
(80, '45742041', '2do TURNO', 'AZUL', '2021-12-12'),
(81, '', '1er TURNO', 'VERDE', '2021-12-12'),
(82, '61799185', '2do TURNO', 'AZUL', '2021-12-12'),
(83, '76112066', '2do TURNO', 'AZUL', '2021-12-12'),
(84, '78893685', '2do TURNO', 'VERDE', '2021-12-12'),
(85, '92135047', '2do TURNO', 'VERDE', '2021-12-12'),
(86, '92135048', '2do TURNO', 'VERDE', '2021-12-12'),
(87, '92121048', '2do TURNO', 'AMARILLA', '2021-12-12'),
(88, '74269190', '1er TURNO', 'AZUL', '2021-12-19'),
(89, '74677072', '1er TURNO', 'AZUL', '2021-12-19'),
(90, '90902892', '1er TURNO', 'AMARILLA', '2021-12-19'),
(91, '77999039', '2do TURNO', 'VERDE', '2021-12-19'),
(92, '79992117', '2do TURNO', 'AMARILLA', '2021-12-19'),
(93, '55128066', '2do TURNO', 'AMARILLA', '2021-12-19'),
(94, '61799185', '2do TURNO', 'AZUL', '2021-12-19'),
(95, '76112066', '2do TURNO', 'AZUL', '2021-12-19'),
(96, '78893685', '2do TURNO', 'VERDE', '2021-12-19'),
(97, '45742041', '1er TURNO', 'AZUL', '2021-12-19'),
(98, '12345678', '1er TURNO', 'AZUL', '2021-12-19'),
(99, '', '2do TURNO', 'VERDE', '2021-12-19'),
(100, '', '2do TURNO', 'VERDE', '2021-12-19'),
(101, '77735897', '2do TURNO', 'AZUL', '2021-12-19'),
(102, '936161879', '1er TURNO', 'VERDE', '2021-12-19'),
(103, '989348798', '1er TURNO', 'AZUL', '2021-12-19'),
(104, '91419321', '2do TURNO', 'AMARILLA', '2021-12-19'),
(105, '78313020', '2do TURNO', 'VERDE', '2021-12-19'),
(106, '79362820', '2do TURNO', 'VERDE', '2021-12-19'),
(107, '79709055', '2do TURNO', 'VERDE', '2021-12-19'),
(108, '55128066', '2do TURNO', 'AMARILLA', '2021-12-26'),
(109, '79992117', '2do TURNO', 'AMARILLA', '2021-12-26'),
(110, '79406471', '2do TURNO', 'AMARILLA', '2021-12-26'),
(111, '90902892', '2do TURNO', 'AMARILLA', '2021-12-26'),
(112, '74677072', '2do TURNO', 'AZUL', '2021-12-26'),
(113, '74269190', '1er TURNO', 'AZUL', '2021-12-26'),
(114, '90771406', '2do TURNO', 'AMARILLA', '2021-12-26'),
(115, '78313020', '2do TURNO', 'VERDE', '2021-12-26'),
(116, '77999039', '2do TURNO', 'VERDE', '2021-12-26'),
(117, '95302218', '2do TURNO', 'VERDE', '2021-12-26'),
(118, '90321520', '1er TURNO', 'AZUL', '2021-12-26'),
(119, '989348798', '1er TURNO', 'AZUL', '2021-12-26'),
(120, '936161879', '1er TURNO', 'VERDE', '2021-12-26'),
(121, '79709055', '2do TURNO', 'VERDE', '2021-12-26'),
(122, '79362820', '2do TURNO', 'VERDE', '2021-12-26'),
(123, '73921817', '2do TURNO', 'AZUL', '2022-01-02'),
(124, '90771406', '2do TURNO', 'AMARILLA', '2022-01-02'),
(125, '989348798', '1er TURNO', 'AZUL', '2022-01-02'),
(126, '936161879', '1er TURNO', 'VERDE', '2022-01-02'),
(127, '61799185', '2do TURNO', 'AZUL', '2022-01-02'),
(128, '76112066', '2do TURNO', 'AZUL', '2022-01-02'),
(129, '78893685', '2do TURNO', 'VERDE', '2022-01-02'),
(130, '79022497', '2do TURNO', 'VERDE', '2022-01-02');

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
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nom_dni`, `num_dni`, `nombre`, `apellido`, `email`, `cargo`, `passwrd`, `fecha`) VALUES
(3, 'DNI', '41780477', 'David Samuel', 'Flores Huacca', 'david_0.7@hotmail.com', 'ADMINISTRADOR', '41780477', '2021-10-28 00:00:00'),
(14, 'DNI', '40715132', 'Juan Carlos', 'Revollar Agarini', '', 'SUPERVISOR', '40715132', '2021-10-18 00:00:00'),
(15, 'DNI', '46059166 ', 'Ana Rosa  ', 'Pupuche ', '', 'SUPERVISOR', '2104lima', '2021-10-18 00:00:00'),
(17, 'DNI', '40714000', 'Juan ', 'Salas', '', 'SUPERVISOR', 'gianni1234', '2021-10-19 00:00:00'),
(20, 'DNI', '40926355 ', 'Lised', 'Huamán Mamani ', '', 'LIDER', '280223', '2021-11-19 20:49:35'),
(21, 'DNI', '09627336', 'Elsa', 'Apolinario Godoy', 'elsa.apolinariog@gmail.com', 'LIDER', 'elsa66', '2021-11-19 20:49:48'),
(22, 'DNI', '48618753', 'JORGE', 'FLORES', '', 'LIDER', 'fcp6036', '2021-11-19 20:51:20'),
(23, 'DNI', '9999', 'mario', 'mamani', '', 'LIDER', '9999', '2021-11-19 20:53:07'),
(25, 'DNI', '000913246', 'Faby', 'Carrillos', '', 'LIDER', '2310', '2021-11-19 21:01:51'),
(26, 'CEDULA', '002014388', 'Carlos', 'Alvarado', '', 'LIDER', 'Jehova#13', '2021-11-19 21:05:15'),
(27, 'DNI', '07180771', 'Maria ', 'Olarte ', '', 'LIDER', 'Miraflores 3', '2021-11-19 21:51:16'),
(28, 'DNI', '25447072', 'Pedro', 'Orderique', '', 'LIDER', 'Jehova2021', '2021-11-19 21:52:48'),
(29, 'DNI', '45709387', 'Alexis', 'Abanto', '', 'LIDER', '1987.01.11_ap', '2021-11-19 22:04:42'),
(42, 'DNI', '321', 'Samuel', 'Flores', '', 'EDITOR', '321', '2021-11-24 18:01:25'),
(43, 'DNI', '123', 'huacca', 'flores', 'floreflores@flores.com', 'SUPERVISOR', '123', '2021-11-24 21:13:07'),
(44, 'DNI', '08845004', 'Ana Maria', 'De la Torre', 'ana-maria-2605@hotmail.com', 'LIDER', '129889Cris', '2021-11-25 03:12:02'),
(45, 'DNI', '07342395', 'Georgina Judith', 'Pupi Peñaranda', 'interjudith@hotmail.com', 'LIDER', '081058', '2021-11-25 03:16:52'),
(46, 'DNI', '07368883', 'Esther', 'BARRENECHEA', 'estherbarrenechea@hotmail.com', 'LIDER', 'Haydee', '2021-11-25 03:17:45'),
(47, 'DNI', '08754920', 'Gloria', 'Soto', 'GLORIAJSM@HOTMAIL.COM', 'LIDER', 'Gsoto', '2021-12-02 21:06:34'),
(48, 'DNI', '48521780', 'Juana', 'Gervais', 'juana.gervais@gmail.com', 'LIDER', 'loginadmin', '2021-12-06 15:28:47');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_adulto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_adulto` (
`id` int(11)
,`nom_dni` varchar(10)
,`num_dni` varchar(10)
,`nombre` varchar(250)
,`apellido` varchar(250)
,`email` varchar(100)
,`conexion` varchar(50)
,`fecha` timestamp
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_adulto`
--
DROP TABLE IF EXISTS `vista_adulto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`samnet`@`localhost` SQL SECURITY DEFINER VIEW `vista_adulto`  AS SELECT `dato_adulto`.`id` AS `id`, `dato_adulto`.`nom_dni` AS `nom_dni`, `dato_adulto`.`num_dni` AS `num_dni`, `dato_adulto`.`nombre` AS `nombre`, `dato_adulto`.`apellido` AS `apellido`, `dato_adulto`.`email` AS `email`, `dato_adulto`.`conexion` AS `conexion`, `dato_adulto`.`fecha` AS `fecha` FROM `dato_adulto` ;

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
-- Indices de la tabla `oracion`
--
ALTER TABLE `oracion`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `dato_adulto`
--
ALTER TABLE `dato_adulto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT de la tabla `oracion`
--
ALTER TABLE `oracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT de la tabla `turnok`
--
ALTER TABLE `turnok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
