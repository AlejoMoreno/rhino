-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 25-06-2016 a las 16:39:39
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `rhinored`
-- 

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;

-- 
-- Volcar la base de datos para la tabla `comisiones`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `futbol5`
-- 

CREATE TABLE `futbol5` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `futbol5`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `historial_juegos`
-- 

CREATE TABLE `historial_juegos` (
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
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `historial_juegos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `muro_escalar`
-- 

CREATE TABLE `muro_escalar` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `muro_escalar`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `paintball`
-- 

CREATE TABLE `paintball` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- 
-- Volcar la base de datos para la tabla `paintball`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `rhinoempresario`
-- 

CREATE TABLE `rhinoempresario` (
  `id_rhinoemp` int(11) NOT NULL auto_increment,
  `codigo_patrocinador` varchar(20) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `identificacion` varchar(20) NOT NULL,
  `num_identificacion` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id_rhinoemp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `rhinoempresario`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `store`
-- 

CREATE TABLE `store` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `store`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tirolesa`
-- 

CREATE TABLE `tirolesa` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `tirolesa`
-- 


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
-- Estructura de tabla para la tabla `tmp_futbol5`
-- 

CREATE TABLE `tmp_futbol5` (
  `id_futbol5` int(11) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `tmp_futbol5`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_historial_juegos`
-- 

CREATE TABLE `tmp_historial_juegos` (
  `id` int(11) NOT NULL,
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
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `tmp_historial_juegos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_muro_escalar`
-- 

CREATE TABLE `tmp_muro_escalar` (
  `id_muro` int(11) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `tmp_muro_escalar`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_paintball`
-- 

CREATE TABLE `tmp_paintball` (
  `id_paintball` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `tmp_paintball`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_store`
-- 

CREATE TABLE `tmp_store` (
  `id_store` int(11) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `tmp_store`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tmp_tirolesa`
-- 

CREATE TABLE `tmp_tirolesa` (
  `id_tirolesa` int(11) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `tmp_tirolesa`
-- 

