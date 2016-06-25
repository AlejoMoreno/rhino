-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 07-04-2016 a las 15:09:06
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `rhinored`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `blog_comentarios`
-- 

CREATE TABLE `blog_comentarios` (
  `id` int(11) NOT NULL auto_increment,
  `autor` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `comentario` varchar(1000) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

-- 
-- Volcar la base de datos para la tabla `blog_comentarios`
-- 

INSERT INTO `blog_comentarios` VALUES (1, '1', 'coreo', 'comentario', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (2, '', '', '', '0000-00-00');
INSERT INTO `blog_comentarios` VALUES (3, '1', '', 'fdsfds', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (4, '1', '', 'fdsfds', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (5, '1', '', 'fdsfds', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (6, '1', '', 'fdsfd', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (7, '1', '', 'fdsfds', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (8, '1', '', 'uyuy', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (9, '1', '', 'ttt', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (10, '1', '', 'ytyt', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (11, '1', '', 'iuiuyiuy', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (12, '1', '', '', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (13, '1', '', 'uuuuu', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (14, '1', '', 'iuyiuyiuy', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (15, '1', '', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (16, '1', '', 'fdsf', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (17, '1', '', 'hola que tal necesito saber si ustedes tienen los puntos que yo tengo para poder ver claramente las cosas desde aqui gracias', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (18, '1', '', 'hola aun no me responden por favor ', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (19, '1', '', 'yo solo quiero saber porque pasan estas cosas pero hummmm ni idea', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (20, '1', '', 'iojiou', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (21, '12', '', 'hola', '2016-04-05');
INSERT INTO `blog_comentarios` VALUES (22, '12', '', 'jdisoajdsa', '2016-04-06');
INSERT INTO `blog_comentarios` VALUES (23, '4', '', 'hola aqui estoy yo molestando de nuevo ', '2016-04-06');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `comisiones`
-- 

CREATE TABLE `comisiones` (
  `id_comision` int(11) NOT NULL auto_increment,
  `rhino_privilegio` varchar(20) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `tipo_comision` int(1) NOT NULL,
  `valor` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id_comision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `comisiones`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `historialsesion`
-- 

CREATE TABLE `historialsesion` (
  `id` int(11) NOT NULL auto_increment,
  `id_rhino` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

-- 
-- Volcar la base de datos para la tabla `historialsesion`
-- 

INSERT INTO `historialsesion` VALUES (1, 1, '192.168.0.51', '2016-03-31');
INSERT INTO `historialsesion` VALUES (2, 0, '127.0.0.1', '2016-03-31');
INSERT INTO `historialsesion` VALUES (3, 12, '127.0.0.1', '2016-03-31');
INSERT INTO `historialsesion` VALUES (4, 12, '127.0.0.1', '2016-03-31');
INSERT INTO `historialsesion` VALUES (5, 12, '127.0.0.1', '2016-04-02');
INSERT INTO `historialsesion` VALUES (6, 12, '127.0.0.1', '2016-04-02');
INSERT INTO `historialsesion` VALUES (7, 12, '127.0.0.1', '2016-04-02');
INSERT INTO `historialsesion` VALUES (8, 4, '127.0.0.1', '2016-04-02');
INSERT INTO `historialsesion` VALUES (9, 12, '127.0.0.1', '2016-04-02');
INSERT INTO `historialsesion` VALUES (10, 12, '127.0.0.1', '2016-04-04');
INSERT INTO `historialsesion` VALUES (11, 12, '192.168.0.10', '2016-04-04');
INSERT INTO `historialsesion` VALUES (12, 12, '127.0.0.1', '2016-04-05');
INSERT INTO `historialsesion` VALUES (13, 12, '127.0.0.1', '2016-04-05');
INSERT INTO `historialsesion` VALUES (14, 12, '127.0.0.1', '2016-04-05');
INSERT INTO `historialsesion` VALUES (15, 12, '127.0.0.1', '2016-04-06');
INSERT INTO `historialsesion` VALUES (16, 12, '127.0.0.1', '2016-04-06');
INSERT INTO `historialsesion` VALUES (17, 12, '127.0.0.1', '2016-04-06');
INSERT INTO `historialsesion` VALUES (18, 11, '127.0.0.1', '2016-04-06');
INSERT INTO `historialsesion` VALUES (19, 12, '127.0.0.1', '2016-04-06');
INSERT INTO `historialsesion` VALUES (20, 12, '127.0.0.1', '2016-04-06');
INSERT INTO `historialsesion` VALUES (21, 17, '127.0.0.1', '2016-04-06');
INSERT INTO `historialsesion` VALUES (22, 4, '127.0.0.1', '2016-04-06');
INSERT INTO `historialsesion` VALUES (23, 12, '127.0.0.1', '2016-04-06');
INSERT INTO `historialsesion` VALUES (24, 12, '127.0.0.1', '2016-04-06');
INSERT INTO `historialsesion` VALUES (25, 12, '127.0.0.1', '2016-04-06');
INSERT INTO `historialsesion` VALUES (26, 12, '127.0.0.1', '2016-04-07');
INSERT INTO `historialsesion` VALUES (27, 12, '127.0.0.1', '2016-04-07');
INSERT INTO `historialsesion` VALUES (28, 12, '127.0.0.1', '2016-04-07');
INSERT INTO `historialsesion` VALUES (29, 12, '127.0.0.1', '2016-04-07');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `pasarelapagos`
-- 

CREATE TABLE `pasarelapagos` (
  `merchantId` int(12) NOT NULL,
  `referenceCode` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` int(15) NOT NULL,
  `tax` int(15) NOT NULL,
  `taxReturnBase` int(32) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `accountId` int(6) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `buyerEmail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registro payU';

-- 
-- Volcar la base de datos para la tabla `pasarelapagos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `patrocinadores`
-- 

CREATE TABLE `patrocinadores` (
  `id` int(11) NOT NULL auto_increment,
  `cedulaPatrocinador` varchar(20) NOT NULL,
  `nivel` int(11) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  PRIMARY KEY  (`id`,`cedulaPatrocinador`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- Volcar la base de datos para la tabla `patrocinadores`
-- 

INSERT INTO `patrocinadores` VALUES (1, '1030570356', 1, '2016-03-28 05:51:36');
INSERT INTO `patrocinadores` VALUES (2, '21', 1, '2016-03-28 05:54:26');
INSERT INTO `patrocinadores` VALUES (3, '212', 2, '2016-03-28 05:54:41');
INSERT INTO `patrocinadores` VALUES (4, '2122', 1, '2016-03-28 05:54:52');
INSERT INTO `patrocinadores` VALUES (5, '212222', 0, '2016-03-28 05:55:31');
INSERT INTO `patrocinadores` VALUES (6, '2122221', 0, '2016-03-28 05:55:43');
INSERT INTO `patrocinadores` VALUES (7, '21222212', 0, '2016-03-28 05:55:57');
INSERT INTO `patrocinadores` VALUES (8, '212222122', 0, '2016-03-28 05:56:20');
INSERT INTO `patrocinadores` VALUES (9, '2122221222', 1, '2016-03-28 05:56:53');
INSERT INTO `patrocinadores` VALUES (10, '21222212221', 1, '2016-03-28 05:57:08');
INSERT INTO `patrocinadores` VALUES (11, '21222212223', 0, '2016-03-28 05:57:43');
INSERT INTO `patrocinadores` VALUES (12, '10305703567', 0, '2016-03-28 17:12:20');
INSERT INTO `patrocinadores` VALUES (13, '1030570356777', 0, '2016-03-29 17:34:00');
INSERT INTO `patrocinadores` VALUES (14, '30', 0, '2016-03-31 06:18:27');
INSERT INTO `patrocinadores` VALUES (15, '12452', 0, '2016-04-02 16:27:52');
INSERT INTO `patrocinadores` VALUES (16, '124520', 0, '2016-04-02 16:29:11');
INSERT INTO `patrocinadores` VALUES (17, '154545', 0, '2016-04-02 16:32:37');
INSERT INTO `patrocinadores` VALUES (18, '78541221', 0, '2016-04-06 18:17:43');
INSERT INTO `patrocinadores` VALUES (19, '4564', 0, '2016-04-06 18:25:56');
INSERT INTO `patrocinadores` VALUES (20, '4312432', 0, '2016-04-06 18:36:20');
INSERT INTO `patrocinadores` VALUES (21, '789456', 0, '2016-04-06 18:38:27');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `privilegios`
-- 

CREATE TABLE `privilegios` (
  `id` int(11) NOT NULL auto_increment,
  `id_rhino` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `privilegio` int(11) NOT NULL,
  `activo` int(11) NOT NULL COMMENT '0-no activo 1-activo',
  `paquete` varchar(10) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=991 ;

-- 
-- Volcar la base de datos para la tabla `privilegios`
-- 

INSERT INTO `privilegios` VALUES (1, 1, '888', 1, 0, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (2, 1, '888', 2, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (3, 1, '888', 3, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (4, 1, '888', 4, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (5, 1, '888', 5, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (6, 1, '888', 6, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (7, 1, '888', 7, 0, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (8, 1, '888', 8, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (9, 1, '888', 9, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (10, 1, '888', 10, 0, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (11, 1, '888', 11, 0, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (12, 1, '888', 12, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (13, 1, '888', 13, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (14, 1, '888', 14, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (15, 1, '888', 15, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (16, 1, '888', 16, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (17, 1, '888', 17, 0, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (18, 1, '888', 18, 0, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (19, 1, '888', 19, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (20, 1, '888', 20, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (21, 1, '888', 21, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (22, 1, '888', 22, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (23, 1, '888', 23, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (24, 1, '888', 24, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (25, 1, '888', 25, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (26, 1, '888', 26, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (27, 1, '888', 27, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (28, 1, '888', 28, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (29, 1, '888', 29, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (30, 1, '888', 30, 0, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (31, 1, '888', 31, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (32, 1, '888', 32, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (33, 1, '888', 33, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (34, 1, '888', 34, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (35, 1, '888', 35, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (36, 1, '888', 36, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (37, 1, '888', 37, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (38, 1, '888', 38, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (39, 1, '888', 39, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (40, 1, '888', 40, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (41, 1, '888', 41, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (42, 1, '888', 42, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (43, 1, '888', 43, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (44, 1, '888', 44, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (45, 1, '888', 45, 0, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (46, 1, '888', 46, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (47, 1, '888', 47, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (48, 1, '888', 48, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (49, 1, '888', 49, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (50, 1, '888', 50, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (51, 1, '888', 51, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (52, 1, '888', 52, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (53, 1, '888', 53, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (54, 1, '888', 54, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (55, 1, '888', 55, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (56, 1, '888', 56, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (57, 1, '888', 57, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (58, 1, '888', 58, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (59, 1, '888', 59, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (60, 1, '888', 60, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (61, 1, '888', 61, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (62, 1, '888', 62, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (63, 1, '888', 63, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (64, 1, '888', 64, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (65, 1, '888', 65, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (66, 1, '888', 66, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (67, 1, '888', 67, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (68, 1, '888', 68, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (69, 1, '888', 69, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (70, 1, '888', 70, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (71, 1, '888', 71, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (72, 1, '888', 72, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (73, 1, '888', 73, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (74, 1, '888', 74, 0, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (75, 1, '888', 75, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (76, 1, '888', 76, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (77, 1, '888', 77, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (78, 1, '888', 78, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (79, 1, '888', 79, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (80, 1, '888', 80, 0, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (81, 1, '888', 81, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (82, 1, '888', 82, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (83, 1, '888', 83, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (84, 1, '888', 84, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (85, 1, '888', 85, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (86, 1, '888', 86, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (87, 1, '888', 87, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (88, 1, '888', 88, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (89, 1, '888', 89, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (90, 1, '888', 90, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (91, 1, '888', 91, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (92, 1, '888', 92, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (93, 1, '888', 93, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (94, 1, '888', 94, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (95, 1, '888', 95, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (96, 1, '888', 96, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (97, 1, '888', 97, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (98, 1, '888', 98, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (99, 1, '888', 99, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (100, 1, '888', 100, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (101, 1, '888', 101, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (102, 1, '888', 102, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (103, 1, '888', 103, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (104, 1, '888', 104, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (105, 1, '888', 105, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (106, 1, '888', 106, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (107, 1, '888', 107, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (108, 1, '888', 108, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (109, 1, '888', 109, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (110, 1, '888', 110, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (111, 1, '888', 111, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (112, 1, '888', 112, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (113, 1, '888', 113, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (114, 1, '888', 114, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (115, 1, '888', 115, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (116, 1, '888', 116, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (117, 1, '888', 117, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (118, 1, '888', 118, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (119, 1, '888', 119, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (120, 1, '888', 120, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (121, 1, '888', 121, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (122, 1, '888', 122, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (123, 1, '888', 123, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (124, 1, '888', 124, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (125, 1, '888', 125, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (126, 1, '888', 126, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (127, 1, '888', 127, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (128, 1, '888', 128, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (129, 1, '888', 129, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (130, 1, '888', 130, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (131, 1, '888', 131, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (132, 1, '888', 132, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (133, 1, '888', 133, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (134, 1, '888', 134, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (135, 1, '888', 135, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (136, 1, '888', 136, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (137, 1, '888', 137, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (138, 1, '888', 138, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (139, 1, '888', 139, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (140, 1, '888', 140, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (141, 1, '888', 141, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (142, 1, '888', 142, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (143, 1, '888', 143, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (144, 1, '888', 144, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (145, 1, '888', 145, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (146, 1, '888', 146, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (147, 1, '888', 147, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (148, 1, '888', 148, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (149, 1, '888', 149, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (150, 1, '888', 150, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (151, 1, '888', 151, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (152, 1, '888', 152, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (153, 1, '888', 153, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (154, 1, '888', 154, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (155, 1, '888', 155, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (156, 1, '888', 156, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (157, 1, '888', 157, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (158, 1, '888', 158, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (159, 1, '888', 159, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (160, 1, '888', 160, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (161, 1, '888', 161, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (162, 1, '888', 162, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (163, 1, '888', 163, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (164, 1, '888', 164, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (165, 1, '888', 165, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (166, 1, '888', 166, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (167, 1, '888', 167, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (168, 1, '888', 168, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (169, 1, '888', 169, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (170, 1, '888', 170, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (171, 1, '888', 171, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (172, 1, '888', 172, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (173, 1, '888', 173, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (174, 1, '888', 174, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (175, 1, '888', 175, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (176, 1, '888', 176, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (177, 1, '888', 177, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (178, 1, '888', 178, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (179, 1, '888', 179, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (180, 1, '888', 180, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (181, 12, '224566', 1, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (182, 12, '224566', 2, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (183, 12, '224566', 3, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (184, 12, '224566', 4, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (185, 12, '224566', 5, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (186, 12, '224566', 6, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (187, 12, '224566', 7, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (188, 12, '224566', 8, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (189, 12, '224566', 9, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (190, 12, '224566', 10, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (191, 12, '224566', 11, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (192, 12, '224566', 12, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (193, 12, '224566', 13, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (194, 12, '224566', 14, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (195, 12, '224566', 15, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (196, 12, '224566', 16, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (197, 12, '224566', 17, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (198, 12, '224566', 18, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (199, 12, '224566', 19, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (200, 12, '224566', 20, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (201, 12, '224566', 21, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (202, 12, '224566', 22, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (203, 12, '224566', 23, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (204, 12, '224566', 24, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (205, 12, '224566', 25, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (206, 12, '224566', 26, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (207, 12, '224566', 27, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (208, 12, '224566', 28, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (209, 12, '224566', 29, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (210, 12, '224566', 30, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (211, 12, '224566', 31, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (212, 12, '224566', 32, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (213, 12, '224566', 33, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (214, 12, '224566', 34, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (215, 12, '224566', 35, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (216, 12, '224566', 36, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (217, 12, '224566', 37, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (218, 12, '224566', 38, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (219, 12, '224566', 39, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (220, 12, '224566', 40, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (221, 12, '224566', 41, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (222, 12, '224566', 42, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (223, 12, '224566', 43, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (224, 12, '224566', 44, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (225, 12, '224566', 45, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (226, 12, '224566', 46, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (227, 12, '224566', 47, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (228, 12, '224566', 48, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (229, 12, '224566', 49, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (230, 12, '224566', 50, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (231, 12, '224566', 51, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (232, 12, '224566', 52, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (233, 12, '224566', 53, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (234, 12, '224566', 54, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (235, 12, '224566', 55, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (236, 12, '224566', 56, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (237, 12, '224566', 57, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (238, 12, '224566', 58, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (239, 12, '224566', 59, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (240, 12, '224566', 60, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (241, 12, '224566', 61, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (242, 12, '224566', 62, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (243, 12, '224566', 63, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (244, 12, '224566', 64, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (245, 12, '224566', 65, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (246, 12, '224566', 66, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (247, 12, '224566', 67, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (248, 12, '224566', 68, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (249, 12, '224566', 69, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (250, 12, '224566', 70, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (251, 12, '224566', 71, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (252, 12, '224566', 72, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (253, 12, '224566', 73, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (254, 12, '224566', 74, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (255, 12, '224566', 75, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (256, 12, '224566', 76, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (257, 12, '224566', 77, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (258, 12, '224566', 78, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (259, 12, '224566', 79, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (260, 12, '224566', 80, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (261, 12, '224566', 81, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (262, 12, '224566', 82, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (263, 12, '224566', 83, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (264, 12, '224566', 84, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (265, 12, '224566', 85, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (266, 12, '224566', 86, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (267, 12, '224566', 87, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (268, 12, '224566', 88, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (269, 12, '224566', 89, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (270, 12, '224566', 90, 1, '1', '2016-04-05');
INSERT INTO `privilegios` VALUES (271, 12, '224566', 91, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (272, 12, '224566', 92, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (273, 12, '224566', 93, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (274, 12, '224566', 94, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (275, 12, '224566', 95, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (276, 12, '224566', 96, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (277, 12, '224566', 97, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (278, 12, '224566', 98, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (279, 12, '224566', 99, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (280, 12, '224566', 100, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (281, 12, '224566', 101, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (282, 12, '224566', 102, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (283, 12, '224566', 103, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (284, 12, '224566', 104, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (285, 12, '224566', 105, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (286, 12, '224566', 106, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (287, 12, '224566', 107, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (288, 12, '224566', 108, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (289, 12, '224566', 109, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (290, 12, '224566', 110, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (291, 12, '224566', 111, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (292, 12, '224566', 112, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (293, 12, '224566', 113, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (294, 12, '224566', 114, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (295, 12, '224566', 115, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (296, 12, '224566', 116, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (297, 12, '224566', 117, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (298, 12, '224566', 118, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (299, 12, '224566', 119, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (300, 12, '224566', 120, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (301, 12, '224566', 121, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (302, 12, '224566', 122, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (303, 12, '224566', 123, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (304, 12, '224566', 124, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (305, 12, '224566', 125, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (306, 12, '224566', 126, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (307, 12, '224566', 127, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (308, 12, '224566', 128, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (309, 12, '224566', 129, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (310, 12, '224566', 130, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (311, 12, '224566', 131, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (312, 12, '224566', 132, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (313, 12, '224566', 133, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (314, 12, '224566', 134, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (315, 12, '224566', 135, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (316, 12, '224566', 136, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (317, 12, '224566', 137, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (318, 12, '224566', 138, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (319, 12, '224566', 139, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (320, 12, '224566', 140, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (321, 12, '224566', 141, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (322, 12, '224566', 142, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (323, 12, '224566', 143, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (324, 12, '224566', 144, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (325, 12, '224566', 145, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (326, 12, '224566', 146, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (327, 12, '224566', 147, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (328, 12, '224566', 148, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (329, 12, '224566', 149, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (330, 12, '224566', 150, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (331, 12, '224566', 151, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (332, 12, '224566', 152, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (333, 12, '224566', 153, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (334, 12, '224566', 154, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (335, 12, '224566', 155, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (336, 12, '224566', 156, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (337, 12, '224566', 157, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (338, 12, '224566', 158, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (339, 12, '224566', 159, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (340, 12, '224566', 160, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (341, 12, '224566', 161, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (342, 12, '224566', 162, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (343, 12, '224566', 163, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (344, 12, '224566', 164, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (345, 12, '224566', 165, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (346, 12, '224566', 166, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (347, 12, '224566', 167, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (348, 12, '224566', 168, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (349, 12, '224566', 169, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (350, 12, '224566', 170, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (351, 12, '224566', 171, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (352, 12, '224566', 172, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (353, 12, '224566', 173, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (354, 12, '224566', 174, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (355, 12, '224566', 175, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (356, 12, '224566', 176, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (357, 12, '224566', 177, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (358, 12, '224566', 178, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (359, 12, '224566', 179, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (360, 12, '224566', 180, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (361, 12, '224566', 181, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (362, 12, '224566', 182, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (363, 12, '224566', 183, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (364, 12, '224566', 184, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (365, 12, '224566', 185, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (366, 12, '224566', 186, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (367, 12, '224566', 187, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (368, 12, '224566', 188, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (369, 12, '224566', 189, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (370, 12, '224566', 190, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (371, 12, '224566', 191, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (372, 12, '224566', 192, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (373, 12, '224566', 193, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (374, 12, '224566', 194, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (375, 12, '224566', 195, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (376, 12, '224566', 196, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (377, 12, '224566', 197, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (378, 12, '224566', 198, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (379, 12, '224566', 199, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (380, 12, '224566', 200, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (381, 12, '224566', 201, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (382, 12, '224566', 202, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (383, 12, '224566', 203, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (384, 12, '224566', 204, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (385, 12, '224566', 205, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (386, 12, '224566', 206, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (387, 12, '224566', 207, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (388, 12, '224566', 208, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (389, 12, '224566', 209, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (390, 12, '224566', 210, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (391, 12, '224566', 211, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (392, 12, '224566', 212, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (393, 12, '224566', 213, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (394, 12, '224566', 214, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (395, 12, '224566', 215, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (396, 12, '224566', 216, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (397, 12, '224566', 217, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (398, 12, '224566', 218, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (399, 12, '224566', 219, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (400, 12, '224566', 220, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (401, 12, '224566', 221, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (402, 12, '224566', 222, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (403, 12, '224566', 223, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (404, 12, '224566', 224, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (405, 12, '224566', 225, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (406, 12, '224566', 226, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (407, 12, '224566', 227, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (408, 12, '224566', 228, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (409, 12, '224566', 229, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (410, 12, '224566', 230, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (411, 12, '224566', 231, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (412, 12, '224566', 232, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (413, 12, '224566', 233, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (414, 12, '224566', 234, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (415, 12, '224566', 235, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (416, 12, '224566', 236, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (417, 12, '224566', 237, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (418, 12, '224566', 238, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (419, 12, '224566', 239, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (420, 12, '224566', 240, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (421, 12, '224566', 241, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (422, 12, '224566', 242, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (423, 12, '224566', 243, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (424, 12, '224566', 244, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (425, 12, '224566', 245, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (426, 12, '224566', 246, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (427, 12, '224566', 247, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (428, 12, '224566', 248, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (429, 12, '224566', 249, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (430, 12, '224566', 250, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (431, 12, '224566', 251, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (432, 12, '224566', 252, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (433, 12, '224566', 253, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (434, 12, '224566', 254, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (435, 12, '224566', 255, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (436, 12, '224566', 256, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (437, 12, '224566', 257, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (438, 12, '224566', 258, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (439, 12, '224566', 259, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (440, 12, '224566', 260, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (441, 12, '224566', 261, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (442, 12, '224566', 262, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (443, 12, '224566', 263, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (444, 12, '224566', 264, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (445, 12, '224566', 265, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (446, 12, '224566', 266, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (447, 12, '224566', 267, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (448, 12, '224566', 268, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (449, 12, '224566', 269, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (450, 12, '224566', 270, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (451, 12, '224566', 271, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (452, 12, '224566', 272, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (453, 12, '224566', 273, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (454, 12, '224566', 274, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (455, 12, '224566', 275, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (456, 12, '224566', 276, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (457, 12, '224566', 277, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (458, 12, '224566', 278, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (459, 12, '224566', 279, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (460, 12, '224566', 280, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (461, 12, '224566', 281, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (462, 12, '224566', 282, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (463, 12, '224566', 283, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (464, 12, '224566', 284, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (465, 12, '224566', 285, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (466, 12, '224566', 286, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (467, 12, '224566', 287, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (468, 12, '224566', 288, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (469, 12, '224566', 289, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (470, 12, '224566', 290, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (471, 12, '224566', 291, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (472, 12, '224566', 292, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (473, 12, '224566', 293, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (474, 12, '224566', 294, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (475, 12, '224566', 295, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (476, 12, '224566', 296, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (477, 12, '224566', 297, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (478, 12, '224566', 298, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (479, 12, '224566', 299, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (480, 12, '224566', 300, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (481, 12, '224566', 301, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (482, 12, '224566', 302, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (483, 12, '224566', 303, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (484, 12, '224566', 304, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (485, 12, '224566', 305, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (486, 12, '224566', 306, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (487, 12, '224566', 307, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (488, 12, '224566', 308, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (489, 12, '224566', 309, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (490, 12, '224566', 310, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (491, 12, '224566', 311, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (492, 12, '224566', 312, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (493, 12, '224566', 313, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (494, 12, '224566', 314, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (495, 12, '224566', 315, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (496, 12, '224566', 316, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (497, 12, '224566', 317, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (498, 12, '224566', 318, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (499, 12, '224566', 319, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (500, 12, '224566', 320, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (501, 12, '224566', 321, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (502, 12, '224566', 322, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (503, 12, '224566', 323, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (504, 12, '224566', 324, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (505, 12, '224566', 325, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (506, 12, '224566', 326, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (507, 12, '224566', 327, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (508, 12, '224566', 328, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (509, 12, '224566', 329, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (510, 12, '224566', 330, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (511, 12, '224566', 331, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (512, 12, '224566', 332, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (513, 12, '224566', 333, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (514, 12, '224566', 334, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (515, 12, '224566', 335, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (516, 12, '224566', 336, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (517, 12, '224566', 337, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (518, 12, '224566', 338, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (519, 12, '224566', 339, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (520, 12, '224566', 340, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (521, 12, '224566', 341, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (522, 12, '224566', 342, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (523, 12, '224566', 343, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (524, 12, '224566', 344, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (525, 12, '224566', 345, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (526, 12, '224566', 346, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (527, 12, '224566', 347, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (528, 12, '224566', 348, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (529, 12, '224566', 349, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (530, 12, '224566', 350, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (531, 12, '224566', 351, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (532, 12, '224566', 352, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (533, 12, '224566', 353, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (534, 12, '224566', 354, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (535, 12, '224566', 355, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (536, 12, '224566', 356, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (537, 12, '224566', 357, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (538, 12, '224566', 358, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (539, 12, '224566', 359, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (540, 12, '224566', 360, 1, '1', '2016-04-06');
INSERT INTO `privilegios` VALUES (541, 12, '224566', 361, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (542, 12, '224566', 362, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (543, 12, '224566', 363, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (544, 12, '224566', 364, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (545, 12, '224566', 365, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (546, 12, '224566', 366, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (547, 12, '224566', 367, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (548, 12, '224566', 368, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (549, 12, '224566', 369, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (550, 12, '224566', 370, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (551, 12, '224566', 371, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (552, 12, '224566', 372, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (553, 12, '224566', 373, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (554, 12, '224566', 374, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (555, 12, '224566', 375, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (556, 12, '224566', 376, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (557, 12, '224566', 377, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (558, 12, '224566', 378, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (559, 12, '224566', 379, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (560, 12, '224566', 380, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (561, 12, '224566', 381, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (562, 12, '224566', 382, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (563, 12, '224566', 383, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (564, 12, '224566', 384, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (565, 12, '224566', 385, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (566, 12, '224566', 386, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (567, 12, '224566', 387, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (568, 12, '224566', 388, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (569, 12, '224566', 389, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (570, 12, '224566', 390, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (571, 12, '224566', 391, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (572, 12, '224566', 392, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (573, 12, '224566', 393, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (574, 12, '224566', 394, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (575, 12, '224566', 395, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (576, 12, '224566', 396, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (577, 12, '224566', 397, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (578, 12, '224566', 398, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (579, 12, '224566', 399, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (580, 12, '224566', 400, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (581, 12, '224566', 401, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (582, 12, '224566', 402, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (583, 12, '224566', 403, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (584, 12, '224566', 404, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (585, 12, '224566', 405, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (586, 12, '224566', 406, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (587, 12, '224566', 407, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (588, 12, '224566', 408, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (589, 12, '224566', 409, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (590, 12, '224566', 410, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (591, 12, '224566', 411, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (592, 12, '224566', 412, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (593, 12, '224566', 413, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (594, 12, '224566', 414, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (595, 12, '224566', 415, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (596, 12, '224566', 416, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (597, 12, '224566', 417, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (598, 12, '224566', 418, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (599, 12, '224566', 419, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (600, 12, '224566', 420, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (601, 12, '224566', 421, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (602, 12, '224566', 422, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (603, 12, '224566', 423, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (604, 12, '224566', 424, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (605, 12, '224566', 425, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (606, 12, '224566', 426, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (607, 12, '224566', 427, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (608, 12, '224566', 428, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (609, 12, '224566', 429, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (610, 12, '224566', 430, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (611, 12, '224566', 431, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (612, 12, '224566', 432, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (613, 12, '224566', 433, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (614, 12, '224566', 434, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (615, 12, '224566', 435, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (616, 12, '224566', 436, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (617, 12, '224566', 437, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (618, 12, '224566', 438, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (619, 12, '224566', 439, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (620, 12, '224566', 440, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (621, 12, '224566', 441, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (622, 12, '224566', 442, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (623, 12, '224566', 443, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (624, 12, '224566', 444, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (625, 12, '224566', 445, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (626, 12, '224566', 446, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (627, 12, '224566', 447, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (628, 12, '224566', 448, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (629, 12, '224566', 449, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (630, 12, '224566', 450, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (631, 11, '22305', 1, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (632, 11, '22305', 2, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (633, 11, '22305', 3, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (634, 11, '22305', 4, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (635, 11, '22305', 5, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (636, 11, '22305', 6, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (637, 11, '22305', 7, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (638, 11, '22305', 8, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (639, 11, '22305', 9, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (640, 11, '22305', 10, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (641, 11, '22305', 11, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (642, 11, '22305', 12, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (643, 11, '22305', 13, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (644, 11, '22305', 14, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (645, 11, '22305', 15, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (646, 11, '22305', 16, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (647, 11, '22305', 17, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (648, 11, '22305', 18, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (649, 11, '22305', 19, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (650, 11, '22305', 20, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (651, 11, '22305', 21, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (652, 11, '22305', 22, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (653, 11, '22305', 23, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (654, 11, '22305', 24, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (655, 11, '22305', 25, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (656, 11, '22305', 26, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (657, 11, '22305', 27, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (658, 11, '22305', 28, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (659, 11, '22305', 29, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (660, 11, '22305', 30, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (661, 11, '22305', 31, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (662, 11, '22305', 32, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (663, 11, '22305', 33, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (664, 11, '22305', 34, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (665, 11, '22305', 35, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (666, 11, '22305', 36, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (667, 11, '22305', 37, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (668, 11, '22305', 38, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (669, 11, '22305', 39, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (670, 11, '22305', 40, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (671, 11, '22305', 41, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (672, 11, '22305', 42, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (673, 11, '22305', 43, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (674, 11, '22305', 44, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (675, 11, '22305', 45, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (676, 11, '22305', 46, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (677, 11, '22305', 47, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (678, 11, '22305', 48, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (679, 11, '22305', 49, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (680, 11, '22305', 50, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (681, 11, '22305', 51, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (682, 11, '22305', 52, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (683, 11, '22305', 53, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (684, 11, '22305', 54, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (685, 11, '22305', 55, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (686, 11, '22305', 56, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (687, 11, '22305', 57, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (688, 11, '22305', 58, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (689, 11, '22305', 59, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (690, 11, '22305', 60, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (691, 11, '22305', 61, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (692, 11, '22305', 62, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (693, 11, '22305', 63, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (694, 11, '22305', 64, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (695, 11, '22305', 65, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (696, 11, '22305', 66, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (697, 11, '22305', 67, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (698, 11, '22305', 68, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (699, 11, '22305', 69, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (700, 11, '22305', 70, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (701, 11, '22305', 71, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (702, 11, '22305', 72, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (703, 11, '22305', 73, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (704, 11, '22305', 74, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (705, 11, '22305', 75, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (706, 11, '22305', 76, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (707, 11, '22305', 77, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (708, 11, '22305', 78, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (709, 11, '22305', 79, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (710, 11, '22305', 80, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (711, 11, '22305', 81, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (712, 11, '22305', 82, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (713, 11, '22305', 83, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (714, 11, '22305', 84, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (715, 11, '22305', 85, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (716, 11, '22305', 86, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (717, 11, '22305', 87, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (718, 11, '22305', 88, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (719, 11, '22305', 89, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (720, 11, '22305', 90, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (721, 11, '22305', 91, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (722, 11, '22305', 92, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (723, 11, '22305', 93, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (724, 11, '22305', 94, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (725, 11, '22305', 95, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (726, 11, '22305', 96, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (727, 11, '22305', 97, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (728, 11, '22305', 98, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (729, 11, '22305', 99, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (730, 11, '22305', 100, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (731, 11, '22305', 101, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (732, 11, '22305', 102, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (733, 11, '22305', 103, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (734, 11, '22305', 104, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (735, 11, '22305', 105, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (736, 11, '22305', 106, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (737, 11, '22305', 107, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (738, 11, '22305', 108, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (739, 11, '22305', 109, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (740, 11, '22305', 110, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (741, 11, '22305', 111, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (742, 11, '22305', 112, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (743, 11, '22305', 113, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (744, 11, '22305', 114, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (745, 11, '22305', 115, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (746, 11, '22305', 116, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (747, 11, '22305', 117, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (748, 11, '22305', 118, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (749, 11, '22305', 119, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (750, 11, '22305', 120, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (751, 11, '22305', 121, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (752, 11, '22305', 122, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (753, 11, '22305', 123, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (754, 11, '22305', 124, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (755, 11, '22305', 125, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (756, 11, '22305', 126, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (757, 11, '22305', 127, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (758, 11, '22305', 128, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (759, 11, '22305', 129, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (760, 11, '22305', 130, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (761, 11, '22305', 131, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (762, 11, '22305', 132, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (763, 11, '22305', 133, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (764, 11, '22305', 134, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (765, 11, '22305', 135, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (766, 11, '22305', 136, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (767, 11, '22305', 137, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (768, 11, '22305', 138, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (769, 11, '22305', 139, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (770, 11, '22305', 140, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (771, 11, '22305', 141, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (772, 11, '22305', 142, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (773, 11, '22305', 143, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (774, 11, '22305', 144, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (775, 11, '22305', 145, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (776, 11, '22305', 146, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (777, 11, '22305', 147, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (778, 11, '22305', 148, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (779, 11, '22305', 149, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (780, 11, '22305', 150, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (781, 11, '22305', 151, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (782, 11, '22305', 152, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (783, 11, '22305', 153, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (784, 11, '22305', 154, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (785, 11, '22305', 155, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (786, 11, '22305', 156, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (787, 11, '22305', 157, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (788, 11, '22305', 158, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (789, 11, '22305', 159, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (790, 11, '22305', 160, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (791, 11, '22305', 161, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (792, 11, '22305', 162, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (793, 11, '22305', 163, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (794, 11, '22305', 164, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (795, 11, '22305', 165, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (796, 11, '22305', 166, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (797, 11, '22305', 167, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (798, 11, '22305', 168, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (799, 11, '22305', 169, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (800, 11, '22305', 170, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (801, 11, '22305', 171, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (802, 11, '22305', 172, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (803, 11, '22305', 173, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (804, 11, '22305', 174, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (805, 11, '22305', 175, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (806, 11, '22305', 176, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (807, 11, '22305', 177, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (808, 11, '22305', 178, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (809, 11, '22305', 179, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (810, 11, '22305', 180, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (811, 4, '5', 1, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (812, 4, '5', 2, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (813, 4, '5', 3, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (814, 4, '5', 4, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (815, 4, '5', 5, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (816, 4, '5', 6, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (817, 4, '5', 7, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (818, 4, '5', 8, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (819, 4, '5', 9, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (820, 4, '5', 10, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (821, 4, '5', 11, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (822, 4, '5', 12, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (823, 4, '5', 13, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (824, 4, '5', 14, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (825, 4, '5', 15, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (826, 4, '5', 16, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (827, 4, '5', 17, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (828, 4, '5', 18, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (829, 4, '5', 19, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (830, 4, '5', 20, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (831, 4, '5', 21, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (832, 4, '5', 22, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (833, 4, '5', 23, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (834, 4, '5', 24, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (835, 4, '5', 25, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (836, 4, '5', 26, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (837, 4, '5', 27, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (838, 4, '5', 28, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (839, 4, '5', 29, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (840, 4, '5', 30, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (841, 4, '5', 31, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (842, 4, '5', 32, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (843, 4, '5', 33, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (844, 4, '5', 34, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (845, 4, '5', 35, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (846, 4, '5', 36, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (847, 4, '5', 37, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (848, 4, '5', 38, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (849, 4, '5', 39, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (850, 4, '5', 40, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (851, 4, '5', 41, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (852, 4, '5', 42, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (853, 4, '5', 43, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (854, 4, '5', 44, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (855, 4, '5', 45, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (856, 4, '5', 46, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (857, 4, '5', 47, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (858, 4, '5', 48, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (859, 4, '5', 49, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (860, 4, '5', 50, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (861, 4, '5', 51, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (862, 4, '5', 52, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (863, 4, '5', 53, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (864, 4, '5', 54, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (865, 4, '5', 55, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (866, 4, '5', 56, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (867, 4, '5', 57, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (868, 4, '5', 58, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (869, 4, '5', 59, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (870, 4, '5', 60, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (871, 4, '5', 61, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (872, 4, '5', 62, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (873, 4, '5', 63, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (874, 4, '5', 64, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (875, 4, '5', 65, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (876, 4, '5', 66, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (877, 4, '5', 67, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (878, 4, '5', 68, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (879, 4, '5', 69, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (880, 4, '5', 70, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (881, 4, '5', 71, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (882, 4, '5', 72, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (883, 4, '5', 73, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (884, 4, '5', 74, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (885, 4, '5', 75, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (886, 4, '5', 76, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (887, 4, '5', 77, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (888, 4, '5', 78, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (889, 4, '5', 79, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (890, 4, '5', 80, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (891, 4, '5', 81, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (892, 4, '5', 82, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (893, 4, '5', 83, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (894, 4, '5', 84, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (895, 4, '5', 85, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (896, 4, '5', 86, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (897, 4, '5', 87, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (898, 4, '5', 88, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (899, 4, '5', 89, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (900, 4, '5', 90, 1, '4', '2016-04-06');
INSERT INTO `privilegios` VALUES (901, 12, '224566', 451, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (902, 12, '224566', 452, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (903, 12, '224566', 453, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (904, 12, '224566', 454, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (905, 12, '224566', 455, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (906, 12, '224566', 456, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (907, 12, '224566', 457, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (908, 12, '224566', 458, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (909, 12, '224566', 459, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (910, 12, '224566', 460, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (911, 12, '224566', 461, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (912, 12, '224566', 462, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (913, 12, '224566', 463, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (914, 12, '224566', 464, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (915, 12, '224566', 465, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (916, 12, '224566', 466, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (917, 12, '224566', 467, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (918, 12, '224566', 468, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (919, 12, '224566', 469, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (920, 12, '224566', 470, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (921, 12, '224566', 471, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (922, 12, '224566', 472, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (923, 12, '224566', 473, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (924, 12, '224566', 474, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (925, 12, '224566', 475, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (926, 12, '224566', 476, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (927, 12, '224566', 477, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (928, 12, '224566', 478, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (929, 12, '224566', 479, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (930, 12, '224566', 480, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (931, 12, '224566', 481, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (932, 12, '224566', 482, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (933, 12, '224566', 483, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (934, 12, '224566', 484, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (935, 12, '224566', 485, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (936, 12, '224566', 486, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (937, 12, '224566', 487, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (938, 12, '224566', 488, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (939, 12, '224566', 489, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (940, 12, '224566', 490, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (941, 12, '224566', 491, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (942, 12, '224566', 492, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (943, 12, '224566', 493, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (944, 12, '224566', 494, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (945, 12, '224566', 495, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (946, 12, '224566', 496, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (947, 12, '224566', 497, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (948, 12, '224566', 498, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (949, 12, '224566', 499, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (950, 12, '224566', 500, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (951, 12, '224566', 501, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (952, 12, '224566', 502, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (953, 12, '224566', 503, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (954, 12, '224566', 504, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (955, 12, '224566', 505, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (956, 12, '224566', 506, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (957, 12, '224566', 507, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (958, 12, '224566', 508, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (959, 12, '224566', 509, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (960, 12, '224566', 510, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (961, 12, '224566', 511, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (962, 12, '224566', 512, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (963, 12, '224566', 513, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (964, 12, '224566', 514, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (965, 12, '224566', 515, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (966, 12, '224566', 516, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (967, 12, '224566', 517, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (968, 12, '224566', 518, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (969, 12, '224566', 519, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (970, 12, '224566', 520, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (971, 12, '224566', 521, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (972, 12, '224566', 522, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (973, 12, '224566', 523, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (974, 12, '224566', 524, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (975, 12, '224566', 525, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (976, 12, '224566', 526, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (977, 12, '224566', 527, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (978, 12, '224566', 528, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (979, 12, '224566', 529, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (980, 12, '224566', 530, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (981, 12, '224566', 531, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (982, 12, '224566', 532, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (983, 12, '224566', 533, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (984, 12, '224566', 534, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (985, 12, '224566', 535, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (986, 12, '224566', 536, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (987, 12, '224566', 537, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (988, 12, '224566', 538, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (989, 12, '224566', 539, 1, '4', '2016-04-07');
INSERT INTO `privilegios` VALUES (990, 12, '224566', 540, 1, '4', '2016-04-07');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `rhinoempresario`
-- 

CREATE TABLE `rhinoempresario` (
  `id_rhinoemp` int(11) NOT NULL auto_increment,
  `cedulaPatrocinador` varchar(20) NOT NULL,
  `codigoNuevoUsuario` varchar(20) NOT NULL,
  `num_identificacion` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fecha_nacimiento` varchar(100) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `municipio` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `tipo_identificacion` varchar(20) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(700) NOT NULL,
  `tipo_usuario` varchar(2) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `nivel` int(11) NOT NULL,
  PRIMARY KEY  (`id_rhinoemp`),
  UNIQUE KEY `num_identificacion` (`num_identificacion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

-- 
-- Volcar la base de datos para la tabla `rhinoempresario`
-- 

INSERT INTO `rhinoempresario` VALUES (1, '1030570356', '888', '21', 'alejandro', 'moreno', '2016-03-28', 'CL 3 8 2 ', 'BOJACA\n', 'LOCALIDAD\n', 'fred@fredy.com', '2644163', '2414163', '2016-03-28 05:54:26', 'ced', 'masculino', 'fredy', '827ccb0eea8a706c4c34a16891f84e7b', '1', '3', 1);
INSERT INTO `rhinoempresario` VALUES (2, '1245', '2', '212', 'alejandro', 'moreno', '2016-03-28', 'CL 3 8 2 ', 'BOJACA\n', 'LOCALIDAD\n', 'fred@fredy.com', '2644163', '2414163', '2016-03-28 05:54:41', 'ced', 'masculino', 'fredy2', '202cb962ac59075b964b07152d234b70', '1', '1', 1);
INSERT INTO `rhinoempresario` VALUES (3, '1030570356', '1515', '2122', 'alejandro', 'moreno', '2016-03-28', 'CL 3 8 2 ', 'BOJACA\n', 'LOCALIDAD\n', 'fred@fredy.com', '2644163', '2414163', '2016-03-28 05:54:52', 'ced', 'masculino', 'fredy22', 'b89845d7eb5f8388e090fcc151d618c8', '1', '1', 2);
INSERT INTO `rhinoempresario` VALUES (4, '21', '5', '212222', 'alejandro', 'moreno', '2016-03-28', 'CL 3 8 2 ', 'BOJACA\n', 'LOCALIDAD\n', 'fred@fredy.com', '2644163', '2414163', '2016-03-28 05:55:31', 'ced', 'masculino', 'fredy2222', '202cb962ac59075b964b07152d234b70', '1', '1', 1);
INSERT INTO `rhinoempresario` VALUES (5, '21', '6', '2122221', 'alejandro', 'moreno', '2016-03-28', 'CL 3 8 2 ', 'BOJACA\n', 'LOCALIDAD\n', 'fred@fredy.com', '2644163', '2414163', '2016-03-28 05:55:43', 'ced', 'masculino', 'fredy22221', 'b89845d7eb5f8388e090fcc151d618c8', '1', '1', 0);
INSERT INTO `rhinoempresario` VALUES (6, '21', '7', '21222212', 'alejandro', 'moreno', '2016-03-28', 'CL 3 8 2 ', 'BOJACA\n', 'LOCALIDAD\n', 'fred@fredy.com', '2644163', '2414163', '2016-03-28 05:55:57', 'ced', 'masculino', 'fredy222211', 'b89845d7eb5f8388e090fcc151d618c8', '1', '3', 0);
INSERT INTO `rhinoempresario` VALUES (7, '212', '8', '212222122', 'alejandro', 'moreno', '2016-03-28', 'CL 3 8 2 ', 'BOJACA\n', 'LOCALIDAD\n', 'fred@fredy.com', '2644163', '2414163', '2016-03-28 05:56:20', 'ced', 'masculino', 'fredy2222112', 'b89845d7eb5f8388e090fcc151d618c8', '1', '1', 0);
INSERT INTO `rhinoempresario` VALUES (8, '2122', '10', '2122221222', 'alejandro', 'moreno', '2016-03-28', 'CL 3 8 2 ', 'BOJACA\n', 'LOCALIDAD\n', 'fred@fredy.com', '26441632', '2414163', '2016-03-28 05:56:53', 'ced', 'masculino', 'fredy22221122', 'b89845d7eb5f8388e090fcc151d618c8', '1', '1', 0);
INSERT INTO `rhinoempresario` VALUES (9, '212222', '11', '21222212221', 'alejandro', 'moreno', '2016-03-28', 'CL 3 8 2 ', 'BOJACA\n', 'LOCALIDAD\n', 'fred@fredy.com', '26441632', '2414163', '2016-03-28 05:57:08', 'ced', 'masculino', 'fredy222211221', 'b89845d7eb5f8388e090fcc151d618c8', '1', '1', 1);
INSERT INTO `rhinoempresario` VALUES (10, '21222212221', '12', '21222212223', 'alejandro', 'moreno', '2016-03-28', 'CL 3 8 2 ', 'BOJACA\n', 'LOCALIDAD\n', 'fred@fredy.com', '26441632', '2414163', '2016-03-28 05:57:43', 'ced', 'masculino', 'fredy2222112211', 'b89845d7eb5f8388e090fcc151d618c8', '1', '1', 1);
INSERT INTO `rhinoempresario` VALUES (11, '21222212223', '22305', '10305703567', 'alejo', 'alejo', '2016-03-28', 'CL 8 5 1 muzu', 'BOGOTA DC\n', 'LOCALIDAD\n', 'fgyugy@gyu.com', '12345', '12345', '2016-03-28 17:12:20', 'ced', 'masculino', 'alejo', '202cb962ac59075b964b07152d234b70', '1', '1', 0);
INSERT INTO `rhinoempresario` VALUES (12, '2122', '224566', '1030570356777', 'fredy alejandro', 'moreno castro', '2016-03-01', 'CL 38a 50a 71 muzu', 'BOGOTA DC\n', ' CHAPINERO \n', 'correo@correo.com', '7876789', '567789', '2016-03-29 17:34:00', 'ced', 'masculino', 'fredy01', '202cb962ac59075b964b07152d234b70', '2', '1', 0);
INSERT INTO `rhinoempresario` VALUES (16, '1030570356', '0', '154545', 'ffdo', 'fdiso', '2016-12-31', 'CL    ', 'AGUA DE DIOS\n', ' ANTONIO NARIï¿½O \n', '123', '123', '12', '2016-04-02 16:32:37', 'ced', 'masculino', '78', '35f4a8d465e6e1edc05f3d8ab658c551', '1', '1', 0);
INSERT INTO `rhinoempresario` VALUES (17, '1030570356777', '0', '78541221', 'Alejandro Moreno', 'Moreno', '2016-12-31', 'CL 5 45 1 ipa', 'BOGOTA DC\n', 'LOCALIDAD\n', 'correo@correo.com', '32142923', '3214392398', '2016-04-06 18:17:43', 'ced', 'masculino', 'nuevo', '202cb962ac59075b964b07152d234b70', '0', '1', 0);
INSERT INTO `rhinoempresario` VALUES (19, '10305703567', '0', '4312432', 'dsa', 'das', '', 'CL    ', 'BOGOTA DC\n', 'LOCALIDAD\n', 'dsdsadas', '432', '432', '2016-04-06 18:36:20', 'ced', '', 'dsa', 'd41d8cd98f00b204e9800998ecf8427e', '0', '1', 0);
INSERT INTO `rhinoempresario` VALUES (20, '212222', '0', '789456', 'yui', 'yui', '2016-12-31', 'CL    ', 'AGUA DE DIOS\n', 'LOCALIDAD\n', '123', '123', '123', '2016-04-06 18:38:27', 'ced', 'masculino', 'popp', '202cb962ac59075b964b07152d234b70', '0', '1', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_comisiones`
-- 

CREATE TABLE `tmp_comisiones` (
  `id_comision` int(11) NOT NULL,
  `rhino_privilegio` varchar(20) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `tipo_comision` int(1) NOT NULL,
  `valor` varchar(30) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `tmp_comisiones`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_consumos`
-- 

CREATE TABLE `tmp_consumos` (
  `id_cosumo` int(11) NOT NULL auto_increment,
  `id_rhinoempresario` int(11) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `rhino_privilegio` varchar(700) NOT NULL,
  `codigo_usuario` varchar(700) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `iva` int(11) NOT NULL,
  `retefuente` int(11) NOT NULL,
  `ica` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id_cosumo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `tmp_consumos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_futbol5`
-- 

CREATE TABLE `tmp_futbol5` (
  `id_futbol5` int(11) NOT NULL auto_increment,
  `consumo` varchar(20) NOT NULL,
  `servicio` varchar(20) NOT NULL,
  `rhino_privilegio` varchar(20) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `puntos` varchar(20) NOT NULL,
  `utilidad_1` varchar(20) NOT NULL,
  `utilidad_RP` varchar(20) NOT NULL,
  `utilidad_2` varchar(20) NOT NULL,
  `valor_punto_consumo` varchar(20) NOT NULL,
  `comision_consumo` varchar(20) NOT NULL,
  `valor_punto_red` varchar(20) NOT NULL,
  `comision_red` varchar(20) NOT NULL,
  `comision_red_nivel` varchar(20) NOT NULL,
  `fondo_incentivos` varchar(20) NOT NULL,
  `rhino_red` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id_futbol5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `tmp_futbol5`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_historial_juegos`
-- 

CREATE TABLE `tmp_historial_juegos` (
  `id` int(11) NOT NULL auto_increment,
  `rhino_privilegio` varchar(20) NOT NULL,
  `consumo` varchar(20) NOT NULL,
  `admi_campo` varchar(20) NOT NULL,
  `factura` varchar(20) NOT NULL,
  `nombre_cliente` varchar(20) NOT NULL,
  `cedula_cliente` varchar(20) NOT NULL,
  `celular_cliente` varchar(20) NOT NULL,
  `clientes` int(11) NOT NULL,
  `mean_edad` int(11) NOT NULL,
  `hombres` int(11) NOT NULL,
  `mujeres` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `codigo` varchar(200) NOT NULL,
  `id_rhino` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `tmp_historial_juegos`
-- 

INSERT INTO `tmp_historial_juegos` VALUES (1, '88817', '42552', 'jiojiojiojoiji', '18', 'jiojiojiojiojo', '1010', '1010', 10, 10, 10, 0, '2016-04-07', '', 0);
INSERT INTO `tmp_historial_juegos` VALUES (2, '8887', '42552', 'jiojiojiojoiji', '34', 'dsadsadsa', '1010', '1010', 10, 10, 10, 0, '2016-04-07', '', 0);
INSERT INTO `tmp_historial_juegos` VALUES (3, '88830', '7854', 'nombre adrministrado', '14', 'nombre cliente', '102052212', '101151515', 10, 10, 10, 0, '2016-04-07', '', 0);
INSERT INTO `tmp_historial_juegos` VALUES (4, '88845', '70000', 'nombre administrador', '78544', 'nombre cliente ', '1030254', '102154545', 20, 25, 10, 10, '2016-04-07', '', 0);
INSERT INTO `tmp_historial_juegos` VALUES (5, '88874', '13', '456456456', '45', '456456456', '45645646', '456456', 4, 4, 4, 0, '2016-04-07', '', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_muro_escalar`
-- 

CREATE TABLE `tmp_muro_escalar` (
  `id_muro` int(11) NOT NULL auto_increment,
  `consumo` varchar(20) NOT NULL,
  `servicio` varchar(20) NOT NULL,
  `rhino_privilegio` varchar(20) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `puntos` varchar(20) NOT NULL,
  `utilidad_1` varchar(20) NOT NULL,
  `utilidad_RP` varchar(20) NOT NULL,
  `utilidad_2` varchar(20) NOT NULL,
  `valor_punto_consumo` varchar(20) NOT NULL,
  `comision_consumo` varchar(20) NOT NULL,
  `valor_punto_red` varchar(20) NOT NULL,
  `comision_red` varchar(20) NOT NULL,
  `comision_red_nivel` varchar(20) NOT NULL,
  `fondo_incentivos` varchar(20) NOT NULL,
  `rhino_red` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id_muro`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `tmp_muro_escalar`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_paintball`
-- 

CREATE TABLE `tmp_paintball` (
  `id_paintball` int(11) NOT NULL auto_increment,
  `consumo` varchar(20) NOT NULL,
  `servicio` varchar(20) NOT NULL,
  `rhino_privilegio` varchar(20) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `recarga` varchar(20) NOT NULL,
  `valor_bola` varchar(20) NOT NULL,
  `paintball` varchar(20) NOT NULL,
  `puntos` int(11) NOT NULL,
  `utilidad_1` varchar(20) NOT NULL,
  `utilidad_RP` varchar(20) NOT NULL,
  `utilidad_2` varchar(20) NOT NULL,
  `valor_punto_consumo` varchar(20) NOT NULL,
  `comision_consumo` varchar(20) NOT NULL,
  `valor_punto_red` varchar(20) NOT NULL,
  `comision_red` varchar(20) NOT NULL,
  `comision_red_nivel` varchar(20) NOT NULL,
  `fondo_incentivos` varchar(20) NOT NULL,
  `rhino_red` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id_paintball`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `tmp_paintball`
-- 

INSERT INTO `tmp_paintball` VALUES (1, '13', 'Paintball', '88874', '888', '1', '58.2', '2910', 0, '-2897', '-579.4', '-2317.6', '1000', '0', '50', '0', '0', '0', '-2317.6', '2016-04-07');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_store`
-- 

CREATE TABLE `tmp_store` (
  `id_store` int(11) NOT NULL auto_increment,
  `consumo` varchar(20) NOT NULL,
  `servicio` varchar(20) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `costo_base` varchar(20) NOT NULL,
  `puntos` varchar(20) NOT NULL,
  `utilidad_1` varchar(20) NOT NULL,
  `utilidad_PS` varchar(20) NOT NULL,
  `utilidad_2` varchar(20) NOT NULL,
  `valor_punto_consumo` varchar(20) NOT NULL,
  `comision_consumo` varchar(20) NOT NULL,
  `valor_punto_red` varchar(20) NOT NULL,
  `comision_red` varchar(20) NOT NULL,
  `comision_red_nivel` varchar(20) NOT NULL,
  `fondo_incentivos` varchar(20) NOT NULL,
  `rhino_red` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id_store`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `tmp_store`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_tirolesa`
-- 

CREATE TABLE `tmp_tirolesa` (
  `id_tirolesa` int(11) NOT NULL auto_increment,
  `consumo` varchar(20) NOT NULL,
  `servicio` varchar(20) NOT NULL,
  `rhino_privilegio` varchar(20) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `puntos` varchar(20) NOT NULL,
  `utilidad_1` varchar(20) NOT NULL,
  `utilidad_RP` varchar(20) NOT NULL,
  `utilidad_2` varchar(20) NOT NULL,
  `valor_punto_consumo` varchar(20) NOT NULL,
  `comision_consumo` varchar(20) NOT NULL,
  `valor_punto_red` varchar(20) NOT NULL,
  `comision_red` varchar(20) NOT NULL,
  `comision_red_nivel` varchar(20) NOT NULL,
  `fondo_incentivos` varchar(20) NOT NULL,
  `rhino_red` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id_tirolesa`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `tmp_tirolesa`
-- 



Sentencias para consultas y reportes

privilegios
SELECT * FROM  `privilegios` WHERE  `id_rhino` =31 GROUP BY  `paquete`;
SELECT COUNT( * ) AS cantidad FROM  `privilegios` WHERE  `id_rhino` =31;
SELECT * FROM  `privilegios` WHERE  `id_rhino` =31 AND  `activo` =1; activos
SELECT * FROM  `privilegios` WHERE  `id_rhino` =31 AND  `activo` =0; usados

historial
SELECT * FROM  `historialsesion` ORDER BY  `fecha` ;
SELECT * FROM  `historialsesion` WHERE  `id_rhino` =31 ORDER BY  `fecha`;

rhinoempresario 
SELECT * FROM  `rhinoempresario` ;
SELECT  `cedulaPatrocinador` FROM  `rhinoempresario` GROUP BY  `cedulaPatrocinador` ;
SELECT  `genero` , COUNT( * ) AS cantidad FROM  `rhinoempresario` GROUP BY  `genero` ;
SELECT  `localidad` , COUNT( * ) AS cantidad FROM  `rhinoempresario` GROUP BY  `localidad` ;
SELECT  `tipo_usuario` , COUNT( * ) AS cantidad FROM  `rhinoempresario` GROUP BY  `tipo_usuario` ;


