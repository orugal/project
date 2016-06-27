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

/*Table structure for table `prueba` */

DROP TABLE IF EXISTS `prueba`;

CREATE TABLE `prueba` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
