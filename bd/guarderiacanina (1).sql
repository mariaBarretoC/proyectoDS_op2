-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2023 a las 01:45:54
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `guarderiacanina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendamiento`
--

CREATE TABLE `agendamiento` (
  `nitagenda` int(11) NOT NULL,
  `fechaVisita` date DEFAULT NULL,
  `horavisita` time DEFAULT NULL,
  `servicioAcasa` varchar(200) DEFAULT NULL,
  `plan` varchar(200) DEFAULT NULL,
  `codigopago` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `numregistroM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agendamiento`
--

INSERT INTO `agendamiento` (`nitagenda`, `fechaVisita`, `horavisita`, `servicioAcasa`, `plan`, `codigopago`, `idUsuario`, `numregistroM`) VALUES
(1114, '2023-02-05', '14:09:15', 'si', '1', 4738, 3882, 9483),
(1142, '2023-05-15', '15:30:07', 'si', '4', 6373, 9216, 6382);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `numregistroM` int(11) NOT NULL,
  `nombreMascota` varchar(100) DEFAULT NULL,
  `fechaNacimientoM` date DEFAULT NULL,
  `condicionEspecial` varchar(100) DEFAULT NULL,
  `sexoMacota` varchar(100) DEFAULT NULL,
  `descriCondiEspecial` varchar(500) DEFAULT NULL,
  `raza` varchar(50) DEFAULT NULL,
  `pesoMasc` varchar(50) DEFAULT NULL,
  `esterilizado` varchar(50) DEFAULT NULL,
  `fechaEsterilizado` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`numregistroM`, `nombreMascota`, `fechaNacimientoM`, `condicionEspecial`, `sexoMacota`, `descriCondiEspecial`, `raza`, `pesoMasc`, `esterilizado`, `fechaEsterilizado`) VALUES
(6382, 'coco', '2020-02-02', 'si', 'macho', 'tiene problemas para respirar', 'pastor aleman', '28.5 kg', 'si', '2021-05-09'),
(9483, 'ruca', '2017-04-12', 'si', 'macho', 'no camina bien', 'pinscher', '5 kg', 'no', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodopago`
--

CREATE TABLE `metodopago` (
  `codigopago` int(11) NOT NULL,
  `descripcionpago` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `metodopago`
--

INSERT INTO `metodopago` (`codigopago`, `descripcionpago`) VALUES
(4738, 'pago por 2 horas'),
(6373, 'pago por cuidado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `idperfil` int(11) NOT NULL,
  `nombreperfil` varchar(100) NOT NULL,
  `descripcionperfil` varchar(100) NOT NULL,
  `tipoPerfil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`idperfil`, `nombreperfil`, `descripcionperfil`, `tipoPerfil`) VALUES
(5633, 'juliana', 'sin palabras', 'admin'),
(7382, 'luis', 'soy humano', 'propietario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrarmascota_vacuna`
--

CREATE TABLE `registrarmascota_vacuna` (
  `numregistroM` int(11) NOT NULL,
  `nitVacuna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registrarmascota_vacuna`
--

INSERT INTO `registrarmascota_vacuna` (`numregistroM`, `nitVacuna`) VALUES
(6382, 8932),
(9483, 7383);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodoc`
--

CREATE TABLE `tipodoc` (
  `idTipoDoc` int(11) NOT NULL,
  `descripcionTipoDoc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipodoc`
--

INSERT INTO `tipodoc` (`idTipoDoc`, `descripcionTipoDoc`) VALUES
(6399, 'cedu extran'),
(7272, 'cc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombreusu1` varchar(50) DEFAULT NULL,
  `nombreusu2` varchar(50) DEFAULT NULL,
  `apellidousu1` varchar(50) DEFAULT NULL,
  `apellidousu2` varchar(50) DEFAULT NULL,
  `fechanacimientousu` date DEFAULT NULL,
  `telefonousu` int(11) DEFAULT NULL,
  `direccionusu` varchar(100) DEFAULT NULL,
  `emailusu` varchar(100) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `idperfil` int(11) NOT NULL,
  `idTipoDoc` int(11) NOT NULL,
  `contrasena` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombreusu1`, `nombreusu2`, `apellidousu1`, `apellidousu2`, `fechanacimientousu`, `telefonousu`, `direccionusu`, `emailusu`, `genero`, `idperfil`, `idTipoDoc`, `contrasena`) VALUES
(3882, 'juliana', 'maria', 'lopez', 'gomez', '1978-05-05', 38272, 'calle 20', 'carlito@gmail.com', 'no indentificado', 5633, 7272, '7838928'),
(9216, 'luis', 'adolfo', 'gomez', 'ruiz', '1999-07-13', 839292, 'miami', 'luisitoAdol@gmail.com', 'masculino', 7382, 6399, '292019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacuna`
--

CREATE TABLE `vacuna` (
  `nitVacuna` int(11) NOT NULL,
  `nombreVacuna` varchar(100) DEFAULT NULL,
  `fechaApliVacu` date DEFAULT NULL,
  `data` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacuna`
--

INSERT INTO `vacuna` (`nitVacuna`, `nombreVacuna`, `fechaApliVacu`, `data`) VALUES
(7383, 'parvo virosis', '2023-01-02', NULL),
(8932, 'virusop', '2022-03-04', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendamiento`
--
ALTER TABLE `agendamiento`
  ADD PRIMARY KEY (`nitagenda`),
  ADD KEY `codigopago` (`codigopago`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `numregistroM` (`numregistroM`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`numregistroM`);

--
-- Indices de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  ADD PRIMARY KEY (`codigopago`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`idperfil`);

--
-- Indices de la tabla `registrarmascota_vacuna`
--
ALTER TABLE `registrarmascota_vacuna`
  ADD KEY `numregistroM` (`numregistroM`),
  ADD KEY `nitVacuna` (`nitVacuna`);

--
-- Indices de la tabla `tipodoc`
--
ALTER TABLE `tipodoc`
  ADD PRIMARY KEY (`idTipoDoc`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idperfil` (`idperfil`),
  ADD KEY `idTipoDoc` (`idTipoDoc`);

--
-- Indices de la tabla `vacuna`
--
ALTER TABLE `vacuna`
  ADD PRIMARY KEY (`nitVacuna`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agendamiento`
--
ALTER TABLE `agendamiento`
  ADD CONSTRAINT `agendamiento_ibfk_1` FOREIGN KEY (`codigopago`) REFERENCES `metodopago` (`codigopago`),
  ADD CONSTRAINT `agendamiento_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `agendamiento_ibfk_3` FOREIGN KEY (`numregistroM`) REFERENCES `mascota` (`numregistroM`);

--
-- Filtros para la tabla `registrarmascota_vacuna`
--
ALTER TABLE `registrarmascota_vacuna`
  ADD CONSTRAINT `registrarmascota_vacuna_ibfk_1` FOREIGN KEY (`numregistroM`) REFERENCES `mascota` (`numregistroM`),
  ADD CONSTRAINT `registrarmascota_vacuna_ibfk_2` FOREIGN KEY (`nitVacuna`) REFERENCES `vacuna` (`nitVacuna`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idperfil`) REFERENCES `perfil` (`idperfil`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`idTipoDoc`) REFERENCES `tipodoc` (`idTipoDoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
