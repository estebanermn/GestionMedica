-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2018 a las 23:01:24
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbinventarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbinvmaarticulo`
--

CREATE TABLE `tbinvmaarticulo` (
  `art_codigo` char(8) NOT NULL,
  `art_lincod` char(4) NOT NULL,
  `art_catcod` char(3) NOT NULL,
  `art_descri` varchar(200) DEFAULT NULL,
  `art_undcod` char(3) NOT NULL,
  `art_stomin` double DEFAULT NULL,
  `art_stomax` double DEFAULT NULL,
  `art_usucod` varchar(7) NOT NULL,
  `art_fecreg` datetime DEFAULT NULL,
  `art_codest` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbinvmaarticulo`
--

INSERT INTO `tbinvmaarticulo` (`art_codigo`, `art_lincod`, `art_catcod`, `art_descri`, `art_undcod`, `art_stomin`, `art_stomax`, `art_usucod`, `art_fecreg`, `art_codest`) VALUES
('01010001', '0101', '001', 'DELL OPTIPLEX 9020', '001', 0, 0, 'USU-001', '2018-01-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbinvmaecaracteristicas`
--

CREATE TABLE `tbinvmaecaracteristicas` (
  `car_codigo` char(4) NOT NULL,
  `car_descri` varchar(45) DEFAULT NULL,
  `car_codest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbinvmaecatalogo`
--

CREATE TABLE `tbinvmaecatalogo` (
  `cat_codigo` char(3) NOT NULL,
  `cat_descri` varchar(45) DEFAULT NULL,
  `cat_usucod` varchar(7) NOT NULL,
  `cat_fecreg` datetime DEFAULT NULL,
  `cat_codest` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbinvmaecatalogo`
--

INSERT INTO `tbinvmaecatalogo` (`cat_codigo`, `cat_descri`, `cat_usucod`, `cat_fecreg`, `cat_codest`) VALUES
('001', 'CATALOGO CPU', 'USU-001', '2018-01-01 00:00:00', 1),
('002', 'CATALOGO MONITOR', 'USU-001', '2018-01-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbinvmaelinea`
--

CREATE TABLE `tbinvmaelinea` (
  `lin_codigo` char(4) NOT NULL COMMENT 'Código',
  `lin_descri` varchar(200) DEFAULT NULL COMMENT 'Descripción',
  `lin_usucod` varchar(7) NOT NULL,
  `lin_codest` int(1) DEFAULT '1' COMMENT 'Estado',
  `lin_fecreg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbinvmaelinea`
--

INSERT INTO `tbinvmaelinea` (`lin_codigo`, `lin_descri`, `lin_usucod`, `lin_codest`, `lin_fecreg`) VALUES
('0100', 'EQUIPOS DE COMPUTO', 'USU-001', 1, NULL),
('0101', 'CPU', 'USU-001', 1, NULL),
('0102', 'MONITORES', 'USU-001', 1, NULL),
('0103', 'TECLADO', 'USU-001', 1, NULL),
('0104', 'MOUSE', 'USU-001', 1, NULL),
('0105', 'IMPRESORAS', 'USU-001', 1, NULL),
('0200', 'MUEBLES DE OFICINA', 'USU-001', 1, NULL),
('0201', 'ESCRITORIO', 'USU-001', 1, NULL),
('0202', 'SILLA', 'USU-001', 1, NULL),
('0203', 'CAJONERA', 'USU-001', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbinvmaeunidades`
--

CREATE TABLE `tbinvmaeunidades` (
  `und_codigo` char(3) NOT NULL,
  `und_descri` varchar(45) DEFAULT NULL,
  `und_abrevi` varchar(45) DEFAULT NULL,
  `und_usucod` varchar(7) NOT NULL,
  `und_fecreg` datetime DEFAULT NULL,
  `und_codest` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbinvmaeunidades`
--

INSERT INTO `tbinvmaeunidades` (`und_codigo`, `und_descri`, `und_abrevi`, `und_usucod`, `und_fecreg`, `und_codest`) VALUES
('001', 'UNIDAD', 'UND', 'USU-001', '2018-01-01 00:00:00', 1),
('002', 'TONELADA', 'TN', 'USU-001', '2018-01-01 00:00:00', 1),
('003', 'KILOGRAMOS', 'KGS', 'USU-001', '2018-01-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbinvmovcataxcara`
--

CREATE TABLE `tbinvmovcataxcara` (
  `cxc_correl` int(11) NOT NULL,
  `cxc_codcat` char(2) DEFAULT NULL,
  `cxc_codcar` char(4) DEFAULT NULL,
  `cxc_obliga` int(11) DEFAULT NULL,
  `cxc_codest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbinvmovguiacabecera`
--

CREATE TABLE `tbinvmovguiacabecera` (
  `gic_correl` char(20) NOT NULL,
  `gic_fecreg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbinvmovguiadetalle`
--

CREATE TABLE `tbinvmovguiadetalle` (
  `gid_correl` char(20) DEFAULT NULL,
  `gid_item` char(3) DEFAULT NULL,
  `gid_codart` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbinvparametros`
--

CREATE TABLE `tbinvparametros` (
  `par_codigo` char(3) NOT NULL COMMENT 'CODIGO DE PARAMETRO',
  `par_tipcod` char(1) NOT NULL COMMENT 'TIPO DE PARAMETRO (C) CABECERA (D) DETALLE',
  `par_argume` varchar(25) NOT NULL COMMENT 'ARGUMENTO',
  `par_funcion` varchar(250) DEFAULT NULL COMMENT 'FUNCION O DESCRIPCION DEL PARAMETRO',
  `par_usucod` char(10) DEFAULT NULL COMMENT 'USUARIO REGISTRO',
  `par_fecreg` datetime DEFAULT NULL COMMENT 'FECHA REGISTRO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='TABLA DE PARAMETROS DEL SISTEMA';

--
-- Volcado de datos para la tabla `tbinvparametros`
--

INSERT INTO `tbinvparametros` (`par_codigo`, `par_tipcod`, `par_argume`, `par_funcion`, `par_usucod`, `par_fecreg`) VALUES
('T01', 'C', '-', 'TABLA ESTADOS', 'USU-001', '2018-01-01 00:00:00'),
('T01', 'D', '0', 'INACTIVO', 'USU-001', '2018-01-01 00:00:00'),
('T01', 'D', '1', 'ACTIVO', 'USU-001', '2018-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `usu_codigo` varchar(7) NOT NULL,
  `usu_nombre` varchar(45) DEFAULT NULL,
  `usu_passwd` varchar(45) DEFAULT NULL,
  `usu_descri` varchar(100) DEFAULT NULL,
  `usu_email` varchar(50) DEFAULT NULL,
  `usu_fecreg` datetime DEFAULT NULL,
  `usu_imagen` text,
  `usu_estcod` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbusuarios`
--

INSERT INTO `tbusuarios` (`usu_codigo`, `usu_nombre`, `usu_passwd`, `usu_descri`, `usu_email`, `usu_fecreg`, `usu_imagen`, `usu_estcod`) VALUES
('USU-001', 'ATORRESCH', 'p@$$W0RD', 'ALEX TORRES', 'superahacker@gmail.com', '2018-01-01 00:00:00', NULL, 1),
('USU-002', 'CTORRESA', '123546', 'CIELO TORRES', 'cielo.torres.araujo@gmail.com', '2018-01-02 00:00:00', NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbinvmaarticulo`
--
ALTER TABLE `tbinvmaarticulo`
  ADD PRIMARY KEY (`art_codigo`),
  ADD KEY `fk_tbinvmaarticulo_tbinvmaelinea1_idx` (`art_lincod`),
  ADD KEY `fk_tbinvmaarticulo_tbinvmaecatalogo1_idx` (`art_catcod`),
  ADD KEY `fk_tbinvmaarticulo_tbinvmaeunidades1_idx` (`art_undcod`),
  ADD KEY `fk_tbinvmaarticulo_tbusuarios1_idx` (`art_usucod`);

--
-- Indices de la tabla `tbinvmaecaracteristicas`
--
ALTER TABLE `tbinvmaecaracteristicas`
  ADD PRIMARY KEY (`car_codigo`);

--
-- Indices de la tabla `tbinvmaecatalogo`
--
ALTER TABLE `tbinvmaecatalogo`
  ADD PRIMARY KEY (`cat_codigo`),
  ADD KEY `fk_tbinvmaecatalogo_tbusuarios1_idx` (`cat_usucod`);

--
-- Indices de la tabla `tbinvmaelinea`
--
ALTER TABLE `tbinvmaelinea`
  ADD PRIMARY KEY (`lin_codigo`),
  ADD KEY `fk_tbinvmaelinea_tbusuarios_idx` (`lin_usucod`);

--
-- Indices de la tabla `tbinvmaeunidades`
--
ALTER TABLE `tbinvmaeunidades`
  ADD PRIMARY KEY (`und_codigo`),
  ADD KEY `fk_tbinvmaeunidades_tbusuarios1_idx` (`und_usucod`);

--
-- Indices de la tabla `tbinvmovcataxcara`
--
ALTER TABLE `tbinvmovcataxcara`
  ADD PRIMARY KEY (`cxc_correl`);

--
-- Indices de la tabla `tbinvmovguiacabecera`
--
ALTER TABLE `tbinvmovguiacabecera`
  ADD PRIMARY KEY (`gic_correl`);

--
-- Indices de la tabla `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`usu_codigo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbinvmaarticulo`
--
ALTER TABLE `tbinvmaarticulo`
  ADD CONSTRAINT `fk_tbinvmaarticulo_tbinvmaecatalogo1` FOREIGN KEY (`art_catcod`) REFERENCES `tbinvmaecatalogo` (`cat_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbinvmaarticulo_tbinvmaelinea1` FOREIGN KEY (`art_lincod`) REFERENCES `tbinvmaelinea` (`lin_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbinvmaarticulo_tbinvmaeunidades1` FOREIGN KEY (`art_undcod`) REFERENCES `tbinvmaeunidades` (`und_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbinvmaarticulo_tbusuarios1` FOREIGN KEY (`art_usucod`) REFERENCES `tbusuarios` (`usu_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbinvmaecatalogo`
--
ALTER TABLE `tbinvmaecatalogo`
  ADD CONSTRAINT `fk_tbinvmaecatalogo_tbusuarios1` FOREIGN KEY (`cat_usucod`) REFERENCES `tbusuarios` (`usu_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbinvmaelinea`
--
ALTER TABLE `tbinvmaelinea`
  ADD CONSTRAINT `fk_tbinvmaelinea_tbusuarios` FOREIGN KEY (`lin_usucod`) REFERENCES `tbusuarios` (`usu_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbinvmaeunidades`
--
ALTER TABLE `tbinvmaeunidades`
  ADD CONSTRAINT `fk_tbinvmaeunidades_tbusuarios1` FOREIGN KEY (`und_usucod`) REFERENCES `tbusuarios` (`usu_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
