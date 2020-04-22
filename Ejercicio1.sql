-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-04-2020 a las 04:37:44
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Ejercicio1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Alimentos`
--

CREATE TABLE `Alimentos` (
  `Cod_Alimentos` int(11) NOT NULL,
  `Nombre_alimento` varchar(45) DEFAULT NULL,
  `idorigen` int(11) DEFAULT NULL,
  `Fecha_caducidad` date DEFAULT NULL,
  `Precio` int(11) DEFAULT NULL,
  `id_tipoalimento` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Alimentos`
--

INSERT INTO `Alimentos` (`Cod_Alimentos`, `Nombre_alimento`, `idorigen`, `Fecha_caducidad`, `Precio`, `id_tipoalimento`, `id_proveedor`) VALUES
(1, 'MOJARRA ROJA', 1, '2020-05-31', 3500, 6, 3),
(2, 'ARROZ INTEGRAL ', 3, '2021-01-27', 4500, 3, 1),
(3, 'LENTEJAS', 3, '2021-07-31', 1200, 1, 1),
(4, 'PAN TAJADO', 3, '2021-03-31', 2800, 3, 1),
(5, 'LOMO DE RES', 1, '2020-04-23', 6000, 6, 3),
(6, 'COLOMBINA DE POLLO', 1, '2020-04-30', 3700, 6, 4),
(7, 'ZANAHORIA', 2, '2020-06-01', 1000, 2, 4),
(8, 'MANZANA', 2, '2020-06-10', 680, 4, 4),
(9, 'PAPA SABANERA', 2, '2020-09-30', 900, 2, 4),
(10, 'MANGO', 2, '2020-10-10', 1500, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `idciudad` int(11) NOT NULL,
  `ciudad` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`idciudad`, `ciudad`) VALUES
(1, 'BOGOTA'),
(2, 'MEDELLIN'),
(3, 'CALI'),
(4, 'BUCARAMANGA'),
(5, 'BARRANQUILLA'),
(6, 'CARTAGENA'),
(7, 'PEREIRA'),
(8, 'MANIZALES'),
(9, 'MONTERIA'),
(10, 'SANTA MARTA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cliente`
--

CREATE TABLE `Cliente` (
  `nombre_persona` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `id_entidadbancaria` int(11) DEFAULT NULL,
  `num_cuenta` varchar(45) DEFAULT NULL,
  `Cedula` int(11) NOT NULL,
  `idtipocuenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Cliente`
--

INSERT INTO `Cliente` (`nombre_persona`, `direccion`, `telefono`, `id_entidadbancaria`, `num_cuenta`, `Cedula`, `idtipocuenta`) VALUES
('CLIENTE PERSONA CUATRO', 'Diagonal 23 No. 80 - 87', '3456789', 2, '5678987', 8689375, 1),
('CLIENTE PERSONA TRES', 'Carrera 127 No. 87 - 23 ', '4567898', 3, '678987654', 34532135, 2),
('CLIENTE PERSONA DOS', 'Calle 45 No. 52 - 87', '4567890', 3, '98765432345', 56483214, 2),
('CLIENTE PERSONA UNO', 'Diagonal 77B No. 123A 43', '5678567', 1, '3456789087', 1023456780, 2),
('CLIENTE PERSONA CINCO', 'Avenida Jimenez No. 19 - 05', '8765456', 6, '90987987654', 1072825729, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Color`
--

CREATE TABLE `Color` (
  `idColor` int(11) NOT NULL,
  `color` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Color`
--

INSERT INTO `Color` (`idColor`, `color`) VALUES
(1, 'AZUL'),
(2, 'ROJO'),
(3, 'NARANJA'),
(4, 'VERDE'),
(5, 'MORADO'),
(6, 'FUCSIA'),
(7, 'GRIS'),
(8, 'NEGRO'),
(9, 'BLANCO'),
(10, 'ROSADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Electrodomesticos`
--

CREATE TABLE `Electrodomesticos` (
  `Cod_elementos` int(11) NOT NULL,
  `Nombre_producto` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Precio` int(11) DEFAULT NULL,
  `id_tipoelectrodomestico` int(11) DEFAULT NULL,
  `id fabricante` int(11) DEFAULT NULL,
  `marca_blanca` tinyint(4) DEFAULT NULL,
  `requiere financiacion` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Electrodomesticos`
--

INSERT INTO `Electrodomesticos` (`Cod_elementos`, `Nombre_producto`, `Descripcion`, `Precio`, `id_tipoelectrodomestico`, `id fabricante`, `marca_blanca`, `requiere financiacion`) VALUES
(1, 'TELEVISOR 32\"', 'Televisor LED', 1500000, 1, 3, 1, 0),
(2, 'LAVADORA 16LB', 'Lavadora 16LB Negro', 1800000, 3, 5, 0, 1),
(3, 'NEVERA 150 LITROS', 'Nevera 150 Litros - Color negro', 980000, 2, 7, 1, 1),
(4, 'TELEVISOR 50\"', 'Televisor Curve', 3890000, 1, 3, 1, 1),
(5, 'SECADORA', 'Secadora negra', 3890000, 6, 4, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Electronica`
--

CREATE TABLE `Electronica` (
  `Cod_Electronica` int(11) NOT NULL,
  `nombre_electronico` varchar(45) DEFAULT NULL,
  `idtipo_electronico` int(11) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `requiere financiacion` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Entidad_bancaria`
--

CREATE TABLE `Entidad_bancaria` (
  `idEntidad_bancaria` int(11) NOT NULL,
  `nombre_entidad` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Entidad_bancaria`
--

INSERT INTO `Entidad_bancaria` (`idEntidad_bancaria`, `nombre_entidad`) VALUES
(1, 'BANCOLOMBIA'),
(2, 'BANCO DE BOGOTA'),
(3, 'BANCO DE OCCIDENTE'),
(4, 'BANCO AV VILLAS'),
(5, 'DAVIVIENDA'),
(6, 'ITAU'),
(7, 'BANCO CAJA SOCIAL '),
(8, 'BBVA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricante`
--

CREATE TABLE `fabricante` (
  `idfabricante` int(11) NOT NULL,
  `nombre_fabricante` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fabricante`
--

INSERT INTO `fabricante` (`idfabricante`, `nombre_fabricante`) VALUES
(1, 'SONY'),
(2, 'PANASONIC'),
(3, 'SAMSUNG'),
(4, 'CHALLENGER'),
(5, 'HACEB'),
(6, 'KALLEY'),
(7, 'LG'),
(8, 'HYUNDAI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Financiacion`
--

CREATE TABLE `Financiacion` (
  `idFinanciacion` int(11) NOT NULL,
  `cod_producto` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `num_plazos` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Financiacion`
--

INSERT INTO `Financiacion` (`idFinanciacion`, `cod_producto`, `id_cliente`, `num_plazos`) VALUES
(1, 2, 8689375, '5'),
(2, 4, 1072825729, '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Marca_blanca`
--

CREATE TABLE `Marca_blanca` (
  `idMarca_blanca` int(11) NOT NULL,
  `cod_producto` int(11) DEFAULT NULL,
  `fecha_reporte` datetime DEFAULT current_timestamp(),
  `etiqueta` varchar(45) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Marca_blanca`
--

INSERT INTO `Marca_blanca` (`idMarca_blanca`, `cod_producto`, `fecha_reporte`, `etiqueta`, `precio`) VALUES
(1, 1, '2020-04-12 19:32:21', '5786549', 1200000),
(2, 3, '2020-04-12 21:47:24', '987654', 1650000),
(3, 4, '2020-04-12 21:47:24', '4567887', 2600000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `origen`
--

CREATE TABLE `origen` (
  `idorigen` int(11) NOT NULL,
  `origen` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `origen`
--

INSERT INTO `origen` (`idorigen`, `origen`) VALUES
(1, 'ANIMAL'),
(2, 'VEGETAL'),
(3, 'MINERAL ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pagos`
--

CREATE TABLE `Pagos` (
  `idPagos` int(11) NOT NULL,
  `id_financiacion` int(11) DEFAULT NULL,
  `fecha_pago` datetime DEFAULT NULL,
  `cuota_pagada` varchar(45) DEFAULT NULL,
  `cuota_restante` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Pagos`
--

INSERT INTO `Pagos` (`idPagos`, `id_financiacion`, `fecha_pago`, `cuota_pagada`, `cuota_restante`) VALUES
(1, 1, '2020-04-23 05:26:37', '1', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

CREATE TABLE `promocion` (
  `idpromocion` int(11) NOT NULL,
  `promocion` varchar(45) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `descuento` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`idpromocion`, `promocion`, `fecha_inicio`, `descuento`, `id_proveedor`) VALUES
(1, 'PROMOCION ANIVERSARIO', '2020-04-23', 20, 5),
(2, 'PROMOCION DOS', '2020-05-30', 35, 6),
(3, 'PROMOCION TRES', '2020-08-14', 10, 6),
(4, 'PROMOCION TRES', '2020-04-30', 10, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Promocion_producto`
--

CREATE TABLE `Promocion_producto` (
  `idPromocion_producto` int(11) NOT NULL,
  `idpromocion` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Promocion_producto`
--

INSERT INTO `Promocion_producto` (`idPromocion_producto`, `idpromocion`, `id_producto`) VALUES
(1, 4, 2),
(2, 4, 3),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proveedores`
--

CREATE TABLE `Proveedores` (
  `Cod_Proveedor` int(11) NOT NULL,
  `Nombre_proveedor` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `idciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Proveedores`
--

INSERT INTO `Proveedores` (`Cod_Proveedor`, `Nombre_proveedor`, `telefono`, `direccion`, `idciudad`) VALUES
(1, 'QUALA', '9321338', 'Avenida 12 No. 34 - 54', 1),
(2, 'DIESEL', '5873829', 'Calle 23 No. 12 - 12', 2),
(3, 'PROVEEDOR UNO', '45678900', 'Cra 4 No. 34 - 87 sur', 6),
(4, 'PROVEEDOR DOS ', '2345678', 'Diag 66 No. 65 - 54', 3),
(5, 'PROVEEDOR TRES', '3478986', 'Avenida 12 No. 83 -58', 8),
(6, 'PROMOCION CUATRO', '7545679', 'Calle 65 No. 75 - 87', 5),
(7, 'PROVEEDOR ROPA UNO', '2987645', 'Calle 23 No. 12 - 12', 4),
(8, 'PROVEEDOR ELECTRODOMESTICOS UNO', '4567809', 'Avenida 12 No. 34 - 54', 2),
(9, 'PROVEEDOR ELECTRODOMESTICOS DOS', '6567869', 'Carrera 34 No. 23 - 98', 1),
(10, 'PROVEEDOR ELECTRODOMESTICOS TRES', '9876543', 'Diagonal 76 No. 65 - 65', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_producto`
--

CREATE TABLE `proveedor_producto` (
  `idproveedor_producto` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_tipoproducto` int(11) DEFAULT NULL,
  `idtipoalimento` int(11) DEFAULT NULL,
  `idropa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor_producto`
--

INSERT INTO `proveedor_producto` (`idproveedor_producto`, `id_proveedor`, `id_tipoproducto`, `idtipoalimento`, `idropa`) VALUES
(1, 1, NULL, 1, NULL),
(2, 3, NULL, 6, NULL),
(3, 7, NULL, NULL, 1),
(4, 7, NULL, NULL, 2),
(5, 8, 1, NULL, NULL),
(6, 9, 2, NULL, NULL),
(7, 10, 3, NULL, NULL),
(8, 9, 5, NULL, NULL),
(9, 10, 6, NULL, NULL),
(10, 10, 7, NULL, NULL),
(12, 8, 8, NULL, NULL),
(13, 9, 9, NULL, NULL),
(14, 10, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ropa`
--

CREATE TABLE `Ropa` (
  `Cod_Ropa` int(11) NOT NULL,
  `Nombre_prenda` varchar(45) DEFAULT NULL,
  `id_talla` int(11) DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_tipoprenda` int(11) DEFAULT NULL,
  `Descripcion_prenda` varchar(45) DEFAULT NULL,
  `Precio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Ropa`
--

INSERT INTO `Ropa` (`Cod_Ropa`, `Nombre_prenda`, `id_talla`, `id_color`, `id_tipoprenda`, `Descripcion_prenda`, `Precio`) VALUES
(1, 'BLUSA ESTRAPLE', 1, 4, 2, 'Blusa estraple ', 16500),
(2, 'JEAN ROTO', 6, 1, 1, 'Jean roto azul con detalles blanco', 75000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Talla`
--

CREATE TABLE `Talla` (
  `idTalla` int(11) NOT NULL,
  `Talla` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Talla`
--

INSERT INTO `Talla` (`idTalla`, `Talla`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, '8'),
(7, '10'),
(8, '12'),
(9, '14'),
(10, '16'),
(11, '28'),
(12, '30'),
(13, '32'),
(14, '34'),
(15, '36'),
(16, '38'),
(17, '40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_alimento`
--

CREATE TABLE `Tipo_alimento` (
  `idTipo_alimento` int(11) NOT NULL,
  `Tipo_alimento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Tipo_alimento`
--

INSERT INTO `Tipo_alimento` (`idTipo_alimento`, `Tipo_alimento`) VALUES
(1, 'GRANOS'),
(2, 'VERDURAS'),
(3, 'CEREALES'),
(4, 'FRUTAS'),
(5, 'ENLATADOS'),
(6, 'ANIMAL ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuenta`
--

CREATE TABLE `tipo_cuenta` (
  `idtipo_cuenta` int(11) NOT NULL,
  `tipo_cuenta` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_cuenta`
--

INSERT INTO `tipo_cuenta` (`idtipo_cuenta`, `tipo_cuenta`) VALUES
(1, 'CORRIENTE'),
(2, 'AHORROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_electrodomestico`
--

CREATE TABLE `Tipo_electrodomestico` (
  `idTipo_electrodomestico` int(11) NOT NULL,
  `Tipo_electrodomestico` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Tipo_electrodomestico`
--

INSERT INTO `Tipo_electrodomestico` (`idTipo_electrodomestico`, `Tipo_electrodomestico`) VALUES
(1, 'TELEVISOR'),
(2, 'NEVERA'),
(3, 'LAVADORA'),
(4, 'EQUIPO DE SONIDO'),
(5, 'TEATRO EN CASA'),
(6, 'SECADORA'),
(7, 'LICUADORA'),
(8, 'HORNO MICROONDAS'),
(9, 'SANDUCHERA'),
(10, 'TOSTADORA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_electronico`
--

CREATE TABLE `Tipo_electronico` (
  `idTipo_electronico` int(11) NOT NULL,
  `tipo_electronico` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_prenda`
--

CREATE TABLE `Tipo_prenda` (
  `idTipo_prenda` int(11) NOT NULL,
  `Tipo_prenda` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Tipo_prenda`
--

INSERT INTO `Tipo_prenda` (`idTipo_prenda`, `Tipo_prenda`) VALUES
(1, 'JEAN '),
(2, 'BLUSA'),
(3, 'CAMISA'),
(4, 'CAMISETA'),
(5, 'CHAQUETA '),
(6, 'VESTIDO'),
(7, 'PANTALON LINO'),
(8, 'PIJAMA'),
(9, 'SUDADERA'),
(10, 'ENTERIZO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Alimentos`
--
ALTER TABLE `Alimentos`
  ADD PRIMARY KEY (`Cod_Alimentos`),
  ADD KEY `idTipo_alimento_idx` (`id_tipoalimento`),
  ADD KEY `idorigen_idx` (`idorigen`),
  ADD KEY `idproveedor` (`id_proveedor`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`idciudad`);

--
-- Indices de la tabla `Cliente`
--
ALTER TABLE `Cliente`
  ADD PRIMARY KEY (`Cedula`),
  ADD KEY `idtipocuenta` (`idtipocuenta`),
  ADD KEY `identidad` (`id_entidadbancaria`);

--
-- Indices de la tabla `Color`
--
ALTER TABLE `Color`
  ADD PRIMARY KEY (`idColor`);

--
-- Indices de la tabla `Electrodomesticos`
--
ALTER TABLE `Electrodomesticos`
  ADD PRIMARY KEY (`Cod_elementos`),
  ADD KEY `id_tipoelectrodomestico_idx` (`id_tipoelectrodomestico`),
  ADD KEY `idfabricante_idx` (`id fabricante`);

--
-- Indices de la tabla `Electronica`
--
ALTER TABLE `Electronica`
  ADD PRIMARY KEY (`Cod_Electronica`),
  ADD KEY `idTipo_electronico_idx` (`idtipo_electronico`);

--
-- Indices de la tabla `Entidad_bancaria`
--
ALTER TABLE `Entidad_bancaria`
  ADD PRIMARY KEY (`idEntidad_bancaria`);

--
-- Indices de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`idfabricante`);

--
-- Indices de la tabla `Financiacion`
--
ALTER TABLE `Financiacion`
  ADD PRIMARY KEY (`idFinanciacion`),
  ADD KEY `idproducto` (`cod_producto`),
  ADD KEY `idcliente` (`id_cliente`);

--
-- Indices de la tabla `Marca_blanca`
--
ALTER TABLE `Marca_blanca`
  ADD PRIMARY KEY (`idMarca_blanca`),
  ADD KEY `Cod_elementos_idx` (`cod_producto`);

--
-- Indices de la tabla `origen`
--
ALTER TABLE `origen`
  ADD PRIMARY KEY (`idorigen`);

--
-- Indices de la tabla `Pagos`
--
ALTER TABLE `Pagos`
  ADD PRIMARY KEY (`idPagos`),
  ADD KEY `idfinanciacion` (`id_financiacion`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`idpromocion`),
  ADD KEY `Cod_proveedor_idx` (`id_proveedor`);

--
-- Indices de la tabla `Promocion_producto`
--
ALTER TABLE `Promocion_producto`
  ADD PRIMARY KEY (`idPromocion_producto`);

--
-- Indices de la tabla `Proveedores`
--
ALTER TABLE `Proveedores`
  ADD PRIMARY KEY (`Cod_Proveedor`),
  ADD KEY `idciudad` (`idciudad`);

--
-- Indices de la tabla `proveedor_producto`
--
ALTER TABLE `proveedor_producto`
  ADD PRIMARY KEY (`idproveedor_producto`),
  ADD KEY `idtipoalimento` (`idtipoalimento`),
  ADD KEY `idtipoproducto` (`id_tipoproducto`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `idropa` (`idropa`);

--
-- Indices de la tabla `Ropa`
--
ALTER TABLE `Ropa`
  ADD PRIMARY KEY (`Cod_Ropa`),
  ADD KEY `idTipo_prenda_idx` (`id_tipoprenda`),
  ADD KEY `idTalla_idx` (`id_talla`),
  ADD KEY `idColor_idx` (`id_color`);

--
-- Indices de la tabla `Talla`
--
ALTER TABLE `Talla`
  ADD PRIMARY KEY (`idTalla`);

--
-- Indices de la tabla `Tipo_alimento`
--
ALTER TABLE `Tipo_alimento`
  ADD PRIMARY KEY (`idTipo_alimento`);

--
-- Indices de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
  ADD PRIMARY KEY (`idtipo_cuenta`);

--
-- Indices de la tabla `Tipo_electrodomestico`
--
ALTER TABLE `Tipo_electrodomestico`
  ADD PRIMARY KEY (`idTipo_electrodomestico`);

--
-- Indices de la tabla `Tipo_electronico`
--
ALTER TABLE `Tipo_electronico`
  ADD PRIMARY KEY (`idTipo_electronico`);

--
-- Indices de la tabla `Tipo_prenda`
--
ALTER TABLE `Tipo_prenda`
  ADD PRIMARY KEY (`idTipo_prenda`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `idciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Cliente`
--
ALTER TABLE `Cliente`
  MODIFY `Cedula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1072825730;

--
-- AUTO_INCREMENT de la tabla `Color`
--
ALTER TABLE `Color`
  MODIFY `idColor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Electrodomesticos`
--
ALTER TABLE `Electrodomesticos`
  MODIFY `Cod_elementos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Entidad_bancaria`
--
ALTER TABLE `Entidad_bancaria`
  MODIFY `idEntidad_bancaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  MODIFY `idfabricante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `Financiacion`
--
ALTER TABLE `Financiacion`
  MODIFY `idFinanciacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Marca_blanca`
--
ALTER TABLE `Marca_blanca`
  MODIFY `idMarca_blanca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `origen`
--
ALTER TABLE `origen`
  MODIFY `idorigen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Pagos`
--
ALTER TABLE `Pagos`
  MODIFY `idPagos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Promocion_producto`
--
ALTER TABLE `Promocion_producto`
  MODIFY `idPromocion_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Proveedores`
--
ALTER TABLE `Proveedores`
  MODIFY `Cod_Proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `proveedor_producto`
--
ALTER TABLE `proveedor_producto`
  MODIFY `idproveedor_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `Ropa`
--
ALTER TABLE `Ropa`
  MODIFY `Cod_Ropa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Talla`
--
ALTER TABLE `Talla`
  MODIFY `idTalla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `Tipo_alimento`
--
ALTER TABLE `Tipo_alimento`
  MODIFY `idTipo_alimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
  MODIFY `idtipo_cuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Tipo_electronico`
--
ALTER TABLE `Tipo_electronico`
  MODIFY `idTipo_electronico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Tipo_prenda`
--
ALTER TABLE `Tipo_prenda`
  MODIFY `idTipo_prenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Alimentos`
--
ALTER TABLE `Alimentos`
  ADD CONSTRAINT `idTipo_alimento` FOREIGN KEY (`id_tipoalimento`) REFERENCES `Tipo_alimento` (`idTipo_alimento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idorigen` FOREIGN KEY (`idorigen`) REFERENCES `origen` (`idorigen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idproveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `Proveedores` (`Cod_Proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Cliente`
--
ALTER TABLE `Cliente`
  ADD CONSTRAINT `identidad` FOREIGN KEY (`id_entidadbancaria`) REFERENCES `Entidad_bancaria` (`idEntidad_bancaria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idtipocuenta` FOREIGN KEY (`idtipocuenta`) REFERENCES `tipo_cuenta` (`idtipo_cuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Electrodomesticos`
--
ALTER TABLE `Electrodomesticos`
  ADD CONSTRAINT `id_Tipoelectrodomestico` FOREIGN KEY (`id_tipoelectrodomestico`) REFERENCES `Tipo_electrodomestico` (`idTipo_electrodomestico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idfabricante` FOREIGN KEY (`id fabricante`) REFERENCES `fabricante` (`idfabricante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Electronica`
--
ALTER TABLE `Electronica`
  ADD CONSTRAINT `idTipo_electronico` FOREIGN KEY (`idtipo_electronico`) REFERENCES `Tipo_electronico` (`idTipo_electronico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Financiacion`
--
ALTER TABLE `Financiacion`
  ADD CONSTRAINT `idcliente` FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`Cedula`),
  ADD CONSTRAINT `idproducto` FOREIGN KEY (`cod_producto`) REFERENCES `Electrodomesticos` (`Cod_elementos`);

--
-- Filtros para la tabla `Marca_blanca`
--
ALTER TABLE `Marca_blanca`
  ADD CONSTRAINT `Cod_elementos` FOREIGN KEY (`cod_producto`) REFERENCES `Electrodomesticos` (`Cod_elementos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Pagos`
--
ALTER TABLE `Pagos`
  ADD CONSTRAINT `idfinanciacion` FOREIGN KEY (`id_financiacion`) REFERENCES `Financiacion` (`idFinanciacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD CONSTRAINT `Cod_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `Proveedores` (`Cod_Proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Proveedores`
--
ALTER TABLE `Proveedores`
  ADD CONSTRAINT `idciudad` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proveedor_producto`
--
ALTER TABLE `proveedor_producto`
  ADD CONSTRAINT `id_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `Proveedores` (`Cod_Proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idropa` FOREIGN KEY (`idropa`) REFERENCES `Tipo_prenda` (`idTipo_prenda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idtipoalimento` FOREIGN KEY (`idtipoalimento`) REFERENCES `Tipo_alimento` (`idTipo_alimento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idtipoproducto` FOREIGN KEY (`id_tipoproducto`) REFERENCES `Tipo_electrodomestico` (`idTipo_electrodomestico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Ropa`
--
ALTER TABLE `Ropa`
  ADD CONSTRAINT `idColor` FOREIGN KEY (`id_color`) REFERENCES `Color` (`idColor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idTalla` FOREIGN KEY (`id_talla`) REFERENCES `Talla` (`idTalla`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idTipo_prenda` FOREIGN KEY (`id_tipoprenda`) REFERENCES `Tipo_prenda` (`idTipo_prenda`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
