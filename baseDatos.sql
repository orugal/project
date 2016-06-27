/*
SQLyog - Free MySQL GUI v5.17
Host - 5.6.26 : Database - project
*********************************************************************
Server version : 5.6.26
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `project`;

USE `project`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `app_areas` */

DROP TABLE IF EXISTS `app_areas`;

CREATE TABLE `app_areas` (
  `idArea` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombreArea` text,
  `idEmpresa` bigint(20) DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `eliminado` int(11) DEFAULT '0',
  PRIMARY KEY (`idArea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `app_areas` */

/*Table structure for table `app_empresas` */

DROP TABLE IF EXISTS `app_empresas`;

CREATE TABLE `app_empresas` (
  `idEmpresa` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text,
  `direccion` text,
  `telefono` text,
  `ciudad` int(11) DEFAULT NULL,
  `pais` int(11) DEFAULT NULL,
  `tipoDocumento` int(11) DEFAULT NULL,
  `nroDocumento` int(11) DEFAULT NULL,
  `tipoActividad` int(11) DEFAULT NULL,
  `logo` text,
  `nombreEncargado` text,
  `email` text,
  `ultimoIngreso` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `eliminado` int(11) DEFAULT '0',
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `app_empresas` */

/*Table structure for table `app_estadopago` */

DROP TABLE IF EXISTS `app_estadopago`;

CREATE TABLE `app_estadopago` (
  `idPago` bigint(20) NOT NULL AUTO_INCREMENT,
  `idEmpresa` bigint(20) DEFAULT NULL,
  `descripcion` text,
  `fechaInicio` datetime DEFAULT NULL,
  `fechaFIn` datetime DEFAULT NULL,
  `cantComprada` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `eliminado` int(11) DEFAULT '0',
  PRIMARY KEY (`idPago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `app_estadopago` */

/*Table structure for table `app_loginempresa` */

DROP TABLE IF EXISTS `app_loginempresa`;

CREATE TABLE `app_loginempresa` (
  `idLoginEmpresa` bigint(20) NOT NULL AUTO_INCREMENT,
  `idEmpresa` bigint(20) DEFAULT NULL,
  `usuario` text,
  `clave` text,
  `cambioClave` int(11) DEFAULT '1',
  `verificado` int(11) DEFAULT '0',
  `estado` int(11) DEFAULT '1',
  PRIMARY KEY (`idLoginEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `app_loginempresa` */

/*Table structure for table `aud_areas` */

DROP TABLE IF EXISTS `aud_areas`;

CREATE TABLE `aud_areas` (
  `idAuditoria` bigint(20) NOT NULL AUTO_INCREMENT,
  `idArea` bigint(20) DEFAULT NULL,
  `textAuditoria` text,
  `idUsuario` bigint(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `ip` text,
  PRIMARY KEY (`idAuditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `aud_areas` */

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
