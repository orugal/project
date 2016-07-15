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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `app_areas` */

insert into `app_areas` (`idArea`,`nombreArea`,`idEmpresa`,`estado`,`eliminado`) values (1,'Desarrollo',1,1,0);
insert into `app_areas` (`idArea`,`nombreArea`,`idEmpresa`,`estado`,`eliminado`) values (2,'Soporte técnico',1,1,0);
insert into `app_areas` (`idArea`,`nombreArea`,`idEmpresa`,`estado`,`eliminado`) values (3,'Mercadeo',1,1,0);
insert into `app_areas` (`idArea`,`nombreArea`,`idEmpresa`,`estado`,`eliminado`) values (4,'Recursos Humanos',1,1,0);
insert into `app_areas` (`idArea`,`nombreArea`,`idEmpresa`,`estado`,`eliminado`) values (5,'Archivo',1,1,0);
insert into `app_areas` (`idArea`,`nombreArea`,`idEmpresa`,`estado`,`eliminado`) values (6,'Contabilidad',1,1,1);

/*Table structure for table `app_ciudades` */

DROP TABLE IF EXISTS `app_ciudades`;

CREATE TABLE `app_ciudades` (
  `ID_PAIS` varchar(10) NOT NULL,
  `ID_DPTO` varchar(10) NOT NULL,
  `ID_CIUDAD` varchar(10) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `app_ciudades` */

insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','001','MEDELLIN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','002','ABEJORRAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','004','ABRIAQUI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','021','ALEJANDRIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','030','AMAGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','031','AMALFI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','034','ANDES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','036','ANGELOPOLIS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','038','ANGOSTURA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','040','ANORI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','042','SANTAFE DE ANTIOQUIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','044','ANZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','045','APARTADO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','051','ARBOLETES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','055','ARGELIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','059','ARMENIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','079','BARBOSA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','086','BELMIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','088','BELLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','091','BETANIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','093','BETULIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','101','CIUDAD BOLIVAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','107','BRICEÃ‘O ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','113','BURITICA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','120','CACERES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','125','CAICEDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','129','CALDAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','134','CAMPAMENTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','138','CAÃ‘ASGORDAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','142','CARACOLI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','145','CARAMANTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','147','CAREPA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','148','EL CARMEN DE VIBORAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','150','CAROLINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','154','CAUCASIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','172','CHIGORODO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','190','CISNEROS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','197','COCORNA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','206','CONCEPCION ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','209','CONCORDIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','212','COPACABANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','234','DABEIBA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','237','DON MATIAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','240','EBEJICO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','250','EL BAGRE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','264','ENTRERRIOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','266','ENVIGADO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','282','FREDONIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','284','FRONTINO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','306','GIRALDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','308','GIRARDOTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','310','GOMEZ PLATA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','313','GRANADA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','315','GUADALUPE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','318','GUARNE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','321','GUATAPE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','347','HELICONIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','353','HISPANIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','360','ITAGÃ¼I ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','361','ITUANGO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','364','JARDIN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','368','JERICO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','376','LA CEJA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','380','LA ESTRELLA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','390','LA PINTADA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','400','LA UNION ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','411','LIBORINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','425','MACEO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','440','MARINILLA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','467','MONTEBELLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','475','MURINDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','480','MUTATA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','483','NARIÃ‘O ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','490','NECOCLI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','495','NECHI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','501','OLAYA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','541','PEÃ‘OL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','543','PEQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','576','PUEBLORRICO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','579','PUERTO BERRIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','585','PUERTO NARE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','591','PUERTO TRIUNFO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','604','REMEDIOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','607','RETIRO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','615','RIONEGRO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','628','SABANALARGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','631','SABANETA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','642','SALGAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','647','SAN ANDRES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','649','SAN CARLOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','652','SAN FRANCISCO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','656','SAN JERONIMO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','658','SAN JOSE DE LA MONTAÃ‘A ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','659','SAN JUAN DE URABA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','660','SAN LUIS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','664','SAN PEDRO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','665','SAN PEDRO DE URABA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','667','SAN RAFAEL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','670','SAN ROQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','674','SAN VICENTE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','679','SANTA BARBARA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','686','SANTA ROSA DE OSOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','690','SANTO DOMINGO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','697','EL SANTUARIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','736','SEGOVIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','756','SONSON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','761','SOPETRAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','789','TAMESIS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','790','TARAZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','792','TARSO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','809','TITIRIBI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','819','TOLEDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','837','TURBO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','842','URAMITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','847','URRAO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','854','VALDIVIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','856','VALPARAISO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','858','VEGACHI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','861','VENECIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','873','VIGIA DEL FUERTE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','885','YALI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','887','YARUMAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','890','YOLOMBO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','893','YONDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','05','895','ZARAGOZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','001','BARRANQUILLA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','078','BARANOA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','137','CAMPO DE LA CRUZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','141','CANDELARIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','296','GALAPA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','372','JUAN DE ACOSTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','421','LURUACO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','433','MALAMBO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','436','MANATI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','520','PALMAR DE VARELA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','549','PIOJO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','558','POLONUEVO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','560','PONEDERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','573','PUERTO COLOMBIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','606','REPELON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','634','SABANAGRANDE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','638','SABANALARGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','675','SANTA LUCIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','685','SANTO TOMAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','758','SOLEDAD ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','770','08770 SUAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','832','TUBARA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','08','849','USIACURI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','11','001','BOGOTA, ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','001','CARTAGENA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','006','ACHI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','030','ALTOS DEL ROSARIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','042','ARENAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','052','ARJONA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','062','ARROYOHONDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','074','BARRANCO DE LOBA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','140','CALAMAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','160','CANTAGALLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','188','CICUCO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','212','CORDOBA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','222','CLEMENCIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','244','EL CARMEN DE BOLIVAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','248','EL GUAMO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','268','EL PEÃ‘ON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','300','HATILLO DE LOBA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','430','MAGANGUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','433','MAHATES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','440','MARGARITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','442','MARIA LA BAJA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','458','MONTECRISTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','468','MOMPOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','473','MORALES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','549','PINILLOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','580','REGIDOR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','600','RIO VIEJO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','620','SAN CRISTOBAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','647','SAN ESTANISLAO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','650','SAN FERNANDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','654','SAN JACINTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','655','SAN JACINTO DEL CAUCA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','657','SAN JUAN NEPOMUCENO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','667','SAN MARTIN DE LOBA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','670','SAN PABLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','673','SANTA CATALINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','683','SANTA ROSA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','688','SANTA ROSA DEL SUR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','744','SIMITI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','760','SOPLAVIENTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','780','TALAIGUA NUEVO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','810','TIQUISIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','836','TURBACO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','838','TURBANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','873','VILLANUEVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','13','894','ZAMBRANO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','001','TUNJA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','022','ALMEIDA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','047','AQUITANIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','051','ARCABUCO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','087','BELEN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','090','BERBEO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','092','BETEITIVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','097','BOAVITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','104','BOYACA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','106','BRICEÃ‘O ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','109','BUENAVISTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','114','BUSBANZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','131','CALDAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','135','CAMPOHERMOSO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','162','CERINZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','172','CHINAVITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','176','CHIQUINQUIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','180','CHISCAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','183','CHITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','185','CHITARAQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','187','CHIVATA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','189','CIENEGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','204','COMBITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','212','COPER ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','215','CORRALES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','218','COVARACHIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','223','CUBARA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','224','CUCAITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','226','CUITIVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','232','CHIQUIZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','236','CHIVOR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','238','DUITAMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','244','EL COCUY ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','248','EL ESPINO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','272','FIRAVITOBA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','276','FLORESTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','293','GACHANTIVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','296','GAMEZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','299','GARAGOA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','317','GUACAMAYAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','322','GUATEQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','325','GUAYATA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','332','GÃ¼ICAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','362','IZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','367','JENESANO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','368','JERICO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','377','LABRANZAGRANDE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','380','LA CAPILLA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','401','LA VICTORIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','403','LA UVITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','407','VILLA DE LEYVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','425','MACANAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','442','MARIPI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','455','MIRAFLORES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','464','MONGUA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','466','MONGUI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','469','MONIQUIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','476','MOTAVITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','480','MUZO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','491','NOBSA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','494','NUEVO COLON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','500','OICATA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','507','OTANCHE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','511','PACHAVITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','514','PAEZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','516','PAIPA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','518','PAJARITO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','522','PANQUEBA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','531','PAUNA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','533','PAYA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','537','PAZ DE RIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','542','PESCA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','550','PISBA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','572','PUERTO BOYACA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','580','QUIPAMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','599','RAMIRIQUI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','600','RAQUIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','621','RONDON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','632','SABOYA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','638','SACHICA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','646','SAMACA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','660','SAN EDUARDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','664','SAN JOSE DE PARE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','667','SAN LUIS DE GACENO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','673','SAN MATEO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','676','SAN MIGUEL DE SEMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','681','SAN PABLO DE BORBUR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','686','SANTANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','690','SANTA MARIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','693','SANTA ROSA DE VITERBO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','696','SANTA SOFIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','720','SATIVANORTE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','723','SATIVASUR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','740','SIACHOQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','753','SOATA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','755','SOCOTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','757','SOCHA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','759','SOGAMOSO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','761','SOMONDOCO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','762','SORA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','763','SOTAQUIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','764','SORACA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','774','SUSACON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','776','SUTAMARCHAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','778','SUTATENZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','790','TASCO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','798','TENZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','804','TIBANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','806','TIBASOSA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','808','TINJACA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','810','TIPACOQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','814','TOCA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','816','TOGÃ¼I ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','820','TOPAGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','822','TOTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','832','TUNUNGUA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','835','TURMEQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','837','TUTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','839','TUTAZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','842','UMBITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','861','VENTAQUEMADA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','879','VIRACACHA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','15','897','ZETAQUIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','001','MANIZALES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','013','AGUADAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','042','ANSERMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','050','ARANZAZU ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','088','BELALCAZAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','174','CHINCHINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','272','FILADELFIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','380','LA DORADA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','388','LA MERCED ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','433','MANZANARES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','442','MARMATO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','444','MARQUETALIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','446','MARULANDA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','486','NEIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','495','NORCASIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','513','PACORA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','524','PALESTINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','541','PENSILVANIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','614','RIOSUCIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','616','RISARALDA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','653','SALAMINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','662','SAMANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','665','SAN JOSE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','777','SUPIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','867','VICTORIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','873','VILLAMARIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','17','877','VITERBO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','001','FLORENCIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','029','ALBANIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','094','BELEN DE LOS ANDAQUIES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','150','CARTAGENA DEL CHAIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','205','CURILLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','247','EL DONCELLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','256','EL PAUJIL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','410','LA MONTAÃ‘ITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','460','MILAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','479','MORELIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','592','PUERTO RICO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','610','SAN JOSE DE LA FRAGUA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','753','SAN VICENTE DEL CAGUAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','756','SOLANO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','785','SOLITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','18','860','VALPARAISO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','001','POPAYAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','022','ALMAGUER ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','050','ARGELIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','075','BALBOA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','100','BOLIVAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','110','BUENOS AIRES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','130','CAJIBIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','137','CALDONO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','142','CALOTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','212','CORINTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','256','EL TAMBO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','290','FLORENCIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','318','GUAPI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','355','INZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','364','JAMBALO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','392','LA SIERRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','397','LA VEGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','418','LOPEZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','450','MERCADERES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','455','MIRANDA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','473','MORALES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','513','PADILLA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','517','PAEZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','532','PATIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','533','PIAMONTE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','548','PIENDAMO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','573','PUERTO TEJADA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','585','PURACE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','622','ROSAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','693','SAN SEBASTIAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','698','SANTANDER DE QUILICHAO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','701','SANTA ROSA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','743','SILVIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','760','SOTARA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','780','SUAREZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','785','SUCRE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','807','TIMBIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','809','TIMBIQUI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','821','TORIBIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','824','TOTORO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','19','845','VILLA RICA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','001','VALLEDUPAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','011','AGUACHICA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','013','AGUSTIN CODAZZI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','032','ASTREA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','045','BECERRIL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','060','BOSCONIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','175','CHIMICHAGUA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','178','CHIRIGUANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','228','CURUMANI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','238','EL COPEY ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','250','EL PASO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','295','GAMARRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','310','GONZALEZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','383','LA GLORIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','400','LA JAGUA DE IBIRICO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','443','MANAURE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','517','PAILITAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','550','PELAYA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','570','PUEBLO BELLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','614','RIO DE ORO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','621','LA PAZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','710','SAN ALBERTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','750','SAN DIEGO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','770','SAN MARTIN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','20','787','TAMALAMEQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','001','MONTERIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','068','AYAPEL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','079','BUENAVISTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','090','CANALETE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','162','CERETE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','168','CHIMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','182','CHINU ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','189','CIENAGA DE ORO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','300','COTORRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','350','LA APARTADA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','417','LORICA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','419','LOS CORDOBAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','464','MOMIL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','466','MONTELIBANO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','500','MOÃ‘ITOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','555','PLANETA RICA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','570','PUEBLO NUEVO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','574','PUERTO ESCONDIDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','580','PUERTO LIBERTADOR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','586','PURISIMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','660','SAHAGUN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','670','SAN ANDRES DE SOTAVENTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','672','SAN ANTERO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','675','SAN BERNARDO DEL VIENTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','678','SAN CARLOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','686','SAN PELAYO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','807','TIERRALTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','23','855','VALENCIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','001','AGUA DE DIOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','019','ALBAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','035','ANAPOIMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','040','ANOLAIMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','053','ARBELAEZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','086','BELTRAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','095','BITUIMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','099','BOJACA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','120','CABRERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','123','CACHIPAY ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','126','CAJICA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','148','CAPARRAPI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','151','CAQUEZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','154','CARMEN DE CARUPA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','168','CHAGUANI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','175','CHIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','178','CHIPAQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','181','CHOACHI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','183','CHOCONTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','200','COGUA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','214','COTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','224','CUCUNUBA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','245','EL COLEGIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','258','EL PEÃ‘ON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','260','EL ROSAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','269','FACATATIVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','279','FOMEQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','281','FOSCA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','286','FUNZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','288','FUQUENE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','290','FUSAGASUGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','293','GACHALA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','295','GACHANCIPA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','297','GACHETA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','299','GAMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','307','GIRARDOT ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','312','GRANADA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','317','GUACHETA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','320','GUADUAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','322','GUASCA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','324','GUATAQUI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','326','GUATAVITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','328','GUAYABAL DE SIQUIMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','335','GUAYABETAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','339','GUTIERREZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','368','JERUSALEN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','372','JUNIN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','377','LA CALERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','386','LA MESA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','394','LA PALMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','398','LA PEÃ‘A ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','402','LA VEGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','407','LENGUAZAQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','426','MACHETA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','430','MADRID ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','436','MANTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','438','MEDINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','473','MOSQUERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','483','NARIÃ‘O ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','486','NEMOCON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','488','NILO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','489','NIMAIMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','491','NOCAIMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','506','VENECIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','513','PACHO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','518','PAIME ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','524','PANDI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','530','PARATEBUENO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','535','PASCA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','572','PUERTO SALGAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','580','PULI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','592','QUEBRADANEGRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','594','QUETAME ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','596','QUIPILE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','599','APULO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','612','RICAURTE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','645','SAN ANTONIO DEL TEQUENDAMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','649','SAN BERNARDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','653','SAN CAYETANO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','658','SAN FRANCISCO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','662','SAN JUAN DE RIO SECO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','718','SASAIMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','736','SESQUILE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','740','SIBATE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','743','SILVANIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','745','SIMIJACA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','754','SOACHA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','758','SOPO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','769','SUBACHOQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','772','SUESCA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','777','SUPATA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','779','SUSA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','781','SUTATAUSA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','785','TABIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','793','TAUSA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','797','TENA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','799','TENJO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','805','TIBACUY ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','807','TIBIRITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','815','TOCAIMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','817','TOCANCIPA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','823','TOPAIPI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','839','UBALA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','841','UBAQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','843','VILLA DE SAN DIEGO DE UBATE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','845','UNE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','851','UTICA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','862','VERGARA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','867','VIANI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','871','VILLAGOMEZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','873','VILLAPINZON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','875','VILLETA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','878','VIOTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','885','YACOPI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','898','ZIPACON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','25','899','ZIPAQUIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','001','QUIBDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','006','ACANDI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','025','ALTO BAUDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','050','ATRATO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','073','BAGADO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','075','BAHIA SOLANO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','077','BAJO BAUDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','086','BELEN DE BAJIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','099','BOJAYA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','135','EL CANTON DEL SAN PABLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','150','CARMEN DEL DARIEN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','160','CERTEGUI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','205','CONDOTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','245','EL CARMEN DE ATRATO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','250','EL LITORAL DEL SAN JUAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','361','ISTMINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','372','JURADO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','413','LLORO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','425','MEDIO ATRATO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','430','MEDIO BAUDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','450','MEDIO SAN JUAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','491','NOVITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','495','NUQUI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','580','RIO IRO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','600','RIO QUITO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','615','RIOSUCIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','660','SAN JOSE DEL PALMAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','745','SIPI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','787','TADO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','800','UNGUIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','27','810','UNION PANAMERICANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','001','NEIVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','006','ACEVEDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','013','AGRADO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','016','AIPE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','020','ALGECIRAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','026','ALTAMIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','078','BARAYA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','132','CAMPOALEGRE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','206','COLOMBIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','244','ELIAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','298','GARZON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','306','GIGANTE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','319','GUADALUPE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','349','HOBO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','357','IQUIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','359','ISNOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','378','LA ARGENTINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','396','LA PLATA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','483','NATAGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','503','OPORAPA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','518','PAICOL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','524','PALERMO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','530','PALESTINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','548','PITAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','551','PITALITO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','615','RIVERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','660','SALADOBLANCO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','668','SAN AGUSTIN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','676','SANTA MARIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','770','SUAZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','791','TARQUI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','797','TESALIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','799','TELLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','801','TERUEL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','807','TIMANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','872','VILLAVIEJA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','41','885','YAGUARA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','001','RIOHACHA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','035','ALBANIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','078','BARRANCAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','090','DIBULLA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','098','DISTRACCION ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','110','EL MOLINO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','279','FONSECA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','378','HATONUEVO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','420','LA JAGUA DEL PILAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','430','MAICAO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','560','MANAURE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','650','SAN JUAN DEL CESAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','847','URIBIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','855','URUMITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','44','874','VILLANUEVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','001','SANTA MARTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','030','ALGARROBO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','053','ARACATACA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','058','ARIGUANI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','161','CERRO SAN ANTONIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','170','CHIVOLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','189','CIENAGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','205','CONCORDIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','245','EL BANCO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','258','EL PIÃ‘ON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','268','EL RETEN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','288','FUNDACION ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','318','GUAMAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','460','NUEVA GRANADA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','541','PEDRAZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','545','PIJIÃ‘O DEL CARMEN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','551','PIVIJAY ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','555','PLATO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','570','PUEBLOVIEJO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','605','REMOLINO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','660','SABANAS DE SAN ANGEL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','675','SALAMINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','692','SAN SEBASTIAN DE BUENAVISTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','703','SAN ZENON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','707','SANTA ANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','720','SANTA BARBARA DE PINTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','745','SITIONUEVO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','798','TENERIFE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','960','ZAPAYAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','47','980','ZONA BANANERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','001','VILLAVICENCIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','006','ACACIAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','110','BARRANCA DE UPIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','124','CABUYARO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','150','CASTILLA LA NUEVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','223','CUBARRAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','226','CUMARAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','245','EL CALVARIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','251','EL CASTILLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','270','EL DORADO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','287','FUENTE DE ORO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','313','GRANADA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','318','GUAMAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','325','MAPIRIPAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','330','MESETAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','350','LA MACARENA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','370','URIBE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','400','LEJANIAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','450','PUERTO CONCORDIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','568','PUERTO GAITAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','573','PUERTO LOPEZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','577','PUERTO LLERAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','590','PUERTO RICO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','606','RESTREPO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','680','SAN CARLOS DE GUAROA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','683','SAN JUAN DE ARAMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','686','SAN JUANITO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','689','SAN MARTIN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','50','711','VISTA HERMOSA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','001','PASTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','019','ALBAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','022','ALDANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','036','ANCUYA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','051','ARBOLEDA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','079','BARBACOAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','083','BELEN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','110','BUESACO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','203','COLON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','207','CONSACA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','210','CONTADERO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','215','CORDOBA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','224','CUASPUD ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','227','CUMBAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','233','CUMBITARA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','240','CHACHAGÃ¼I ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','250','EL CHARCO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','254','EL PEÃ‘OL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','256','EL ROSARIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','258','EL TABLON DE GOMEZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','260','EL TAMBO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','287','FUNES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','317','GUACHUCAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','320','GUAITARILLA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','323','GUALMATAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','352','ILES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','354','IMUES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','356','IPIALES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','378','LA CRUZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','381','LA FLORIDA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','385','LA LLANADA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','390','LA TOLA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','399','LA UNION ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','405','LEIVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','411','LINARES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','418','LOS ANDES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','427','MAGÃ¼I ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','435','MALLAMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','473','MOSQUERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','480','NARIÃ‘O ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','490','OLAYA HERRERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','506','OSPINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','520','FRANCISCO PIZARRO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','540','POLICARPA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','560','POTOSI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','565','PROVIDENCIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','573','PUERRES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','585','PUPIALES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','612','RICAURTE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','621','ROBERTO PAYAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','678','SAMANIEGO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','683','SANDONA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','685','SAN BERNARDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','687','SAN LORENZO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','693','SAN PABLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','694','SAN PEDRO DE CARTAGO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','696','SANTA BARBARA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','699','SANTACRUZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','720','SAPUYES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','786','TAMINANGO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','788','TANGUA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','835','TUMACO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','838','TUQUERRES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','52','885','YACUANQUER ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','001','CUCUTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','003','ABREGO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','051','ARBOLEDAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','099','BOCHALEMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','109','BUCARASICA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','125','CACOTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','128','CACHIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','172','CHINACOTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','174','CHITAGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','206','CONVENCION ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','223','CUCUTILLA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','239','DURANIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','245','EL CARMEN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','250','EL TARRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','261','EL ZULIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','313','GRAMALOTE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','344','HACARI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','347','HERRAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','377','LABATECA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','385','LA ESPERANZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','398','LA PLAYA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','405','LOS PATIOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','418','LOURDES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','480','MUTISCUA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','498','OCAÃ‘A ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','518','PAMPLONA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','520','PAMPLONITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','553','PUERTO SANTANDER ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','599','RAGONVALIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','660','SALAZAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','670','SAN CALIXTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','673','SAN CAYETANO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','680','SANTIAGO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','720','SARDINATA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','743','SILOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','800','TEORAMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','810','TIBU ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','820','TOLEDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','871','VILLA CARO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','54','874','VILLA DEL ROSARIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','63','001','ARMENIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','63','111','BUENAVISTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','63','130','CALARCA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','63','190','CIRCASIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','63','212','CORDOBA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','63','272','FILANDIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','63','302','GENOVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','63','401','LA TEBAIDA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','63','470','MONTENEGRO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','63','548','PIJAO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','63','594','QUIMBAYA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','63','690','SALENTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','001','PEREIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','045','APIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','075','BALBOA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','088','BELEN DE UMBRIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','170','DOSQUEBRADAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','318','GUATICA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','383','LA CELIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','400','LA VIRGINIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','440','MARSELLA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','456','MISTRATO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','572','PUEBLO RICO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','594','QUINCHIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','682','SANTA ROSA DE CABAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','66','687','SANTUARIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','001','BUCARAMANGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','013','AGUADA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','020','ALBANIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','051','ARATOCA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','077','BARBOSA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','079','BARICHARA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','081','BARRANCABERMEJA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','092','BETULIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','101','BOLIVAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','121','CABRERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','132','CALIFORNIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','147','CAPITANEJO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','152','CARCASI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','160','CEPITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','162','CERRITO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','167','CHARALA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','169','CHARTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','176','CHIMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','179','CHIPATA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','190','CIMITARRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','207','CONCEPCION ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','209','CONFINES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','211','CONTRATACION ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','217','COROMORO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','229','CURITI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','235','EL CARMEN DE CHUCURI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','245','EL GUACAMAYO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','250','EL PEÃ‘ON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','255','EL PLAYON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','264','ENCINO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','266','ENCISO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','271','FLORIAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','276','FLORIDABLANCA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','296','GALAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','298','GAMBITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','307','GIRON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','318','GUACA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','320','GUADALUPE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','322','GUAPOTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','324','GUAVATA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','327','GÃ¼EPSA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','344','HATO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','368','JESUS MARIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','370','JORDAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','377','LA BELLEZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','385','LANDAZURI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','397','LA PAZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','406','LEBRIJA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','418','LOS SANTOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','425','MACARAVITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','432','MALAGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','444','MATANZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','464','MOGOTES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','468','MOLAGAVITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','498','OCAMONTE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','500','OIBA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','502','ONZAGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','522','PALMAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','524','PALMAS DEL SOCORRO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','533','PARAMO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','547','PIEDECUESTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','549','PINCHOTE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','572','PUENTE NACIONAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','573','PUERTO PARRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','575','PUERTO WILCHES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','615','RIONEGRO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','655','SABANA DE TORRES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','669','SAN ANDRES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','673','SAN BENITO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','679','SAN GIL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','682','SAN JOAQUIN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','684','SAN JOSE DE MIRANDA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','686','SAN MIGUEL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','689','SAN VICENTE DE CHUCURI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','705','SANTA BARBARA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','720','SANTA HELENA DEL OPON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','745','SIMACOTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','755','SOCORRO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','770','SUAITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','773','SUCRE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','780','SURATA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','820','TONA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','855','VALLE DE SAN JOSE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','861','VELEZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','867','VETAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','872','VILLANUEVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','68','895','ZAPATOCA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','001','SINCELEJO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','110','BUENAVISTA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','124','CAIMITO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','204','COLOSO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','215','COROZAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','230','CHALAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','233','EL ROBLE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','235','GALERAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','265','GUARANDA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','400','LA UNION ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','418','LOS PALMITOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','429','MAJAGUAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','473','MORROA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','508','OVEJAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','523','PALMITO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','670','SAMPUES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','678','SAN BENITO ABAD ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','702','SAN JUAN DE BETULIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','708','SAN MARCOS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','713','SAN ONOFRE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','717','SAN PEDRO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','742','SINCE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','771','SUCRE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','820','SANTIAGO DE TOLU ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','70','823','TOLUVIEJO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','001','IBAGUE Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','024','');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','026','ALVARADO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','030','AMBALEMA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','043','ANZOATEGUI Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','055','ARMERO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','067','ATACO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','124','CAJAMARCA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','148','CARMEN DE APICALA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','152','CASABIANCA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','168','CHAPARRAL Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','200','COELLO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','217','COYAIMA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','226','CUNDAY Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','236','DOLORES Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','268','ESPINAL Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','270','FALAN Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','275','FLANDES Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','283','FRESNO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','319','GUAMO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','347','HERVEO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','349','HONDA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','352','ICONONZO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','408','LERIDA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','411','LIBANO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','443','MARIQUITA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','449','MELGAR Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','461','MURILLO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','483','NATAGAIMA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','504','ORTEGA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','520','PALOCABILDO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','547','PIEDRAS Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','555','PLANADAS Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','563','PRADO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','585','PURIFICACION Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','616','RIOBLANCO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','622','RONCESVALLES Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','624','ROVIRA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','671','SALDAÃ‘A Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','675','SAN ANTONIO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','678','SAN LUIS Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','686','SANTA ISABEL Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','770','SUAREZ Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','854','VALLE DE SAN JUAN Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','861','VENADILLO Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','870','VILLAHERMOSA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','73','873','VILLARRICA Tolima');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','001','CALI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','020','ALCALA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','036','ANDALUCIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','041','ANSERMANUEVO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','054','ARGELIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','100','BOLIVAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','109','BUENAVENTURA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','111','GUADALAJARA DE BUGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','113','BUGALAGRANDE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','122','CAICEDONIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','126','CALIMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','130','CANDELARIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','147','CARTAGO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','233','DAGUA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','243','EL AGUILA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','246','EL CAIRO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','248','EL CERRITO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','250','EL DOVIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','275','FLORIDA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','306','GINEBRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','318','GUACARI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','364','JAMUNDI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','377','LA CUMBRE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','400','LA UNION ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','403','LA VICTORIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','497','OBANDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','520','PALMIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','563','PRADERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','606','RESTREPO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','616','RIOFRIO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','622','ROLDANILLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','670','SAN PEDRO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','736','SEVILLA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','823','TORO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','828','TRUJILLO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','834','TULUA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','845','ULLOA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','863','VERSALLES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','869','VIJES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','890','YOTOCO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','892','YUMBO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','76','895','ZARZAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','81','001','ARAUCA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','81','065','ARAUQUITA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','81','220','CRAVO NORTE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','81','300','FORTUL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','81','591','PUERTO RONDON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','81','736','SARAVENA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','81','794','TAME ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','001','YOPAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','010','AGUAZUL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','015','CHAMEZA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','125','HATO COROZAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','136','LA SALINA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','139','MANI ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','162','MONTERREY ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','225','NUNCHIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','230','OROCUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','250','PAZ DE ARIPORO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','263','PORE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','279','RECETOR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','300','SABANALARGA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','315','SACAMA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','325','SAN LUIS DE PALENQUE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','400','TAMARA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','410','TAURAMENA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','430','TRINIDAD ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','85','440','VILLANUEVA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','001','MOCOA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','219','COLON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','320','ORITO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','568','PUERTO ASIS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','569','PUERTO CAICEDO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','571','PUERTO GUZMAN ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','573','LEGUIZAMO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','749','SIBUNDOY ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','755','SAN FRANCISCO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','757','SAN MIGUEL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','760','SANTIAGO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','865','VALLE DEL GUAMUEZ ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','86','885','VILLAGARZON ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','88','001','SAN ANDRES 1 ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','88','564','PROVIDENCIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','91','001','LETICIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','91','263','EL ENCANTO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','91','405','LA CHORRERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','91','407','LA PEDRERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','91','430','LA VICTORIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','91','460','MIRITI - PARANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','91','530','PUERTO ALEGRIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','91','536','PUERTO ARICA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','91','540','PUERTO NARIÃ‘O ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','91','669','PUERTO SANTANDER ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','91','798','TARAPACA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','94','001','INIRIDA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','94','343','BARRANCO MINAS ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','94','663','MAPIRIPANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','94','883','SAN FELIPE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','94','884','PUERTO COLOMBIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','94','885','LA GUADALUPE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','94','886','CACAHUAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','94','887','PANA PANA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','94','888','MORICHAL ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','95','001','SAN JOSE DEL GUAVIARE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','95','015','CALAMAR ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','95','025','EL RETORNO ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','95','200','MIRAFLORES ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','97','001','MITU ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','97','161','CARURU ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','97','511','PACOA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','97','666','TARAIRA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','97','777','PAPUNAUA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','97','889','YAVARATE ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','99','001','PUERTO CARREÃ‘O ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','99','524','LA PRIMAVERA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','99','624','SANTA ROSALIA ');
insert into `app_ciudades` (`ID_PAIS`,`ID_DPTO`,`ID_CIUDAD`,`NOMBRE`) values ('057','99','773','CUMARIBO ');

/*Table structure for table `app_departamentos` */

DROP TABLE IF EXISTS `app_departamentos`;

CREATE TABLE `app_departamentos` (
  `ID_PAIS` varchar(10) NOT NULL,
  `ID_DPTO` varchar(10) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_PAIS`,`ID_DPTO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `app_departamentos` */

insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','05','Antioquia');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','08','Atlantico');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','11','DISTRITO CAPITAL Bogota D. C.');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','13','Bolivar');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','15','Boyaca');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','17','Caldas');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','18','Caqueta');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','19','Cauca');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','20','Cesar');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','23','Cordoba');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','25','Cundinamarca');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','27','Choco');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','41','Huila');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','44','La Guajira');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','47','Magdalena');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','50','Meta');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','52','NariÑo');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','54','Norte de Santander');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','63','Quindio');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','66','Risaralda');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','68','Santander');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','70','Sucre');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','73','ALPUJARRA Tolima');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','76','Valle del Cauca');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','81','Arauca');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','85','Casanare');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','86','Putumayo');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','88','Departamento Archipielago de San Andres, Providencia y Santa Catalina');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','91','Amazonas');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','94','Guainia');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','95','Guaviare');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','97','Vaupe');
insert into `app_departamentos` (`ID_PAIS`,`ID_DPTO`,`NOMBRE`) values ('057','99','Vichada');

/*Table structure for table `app_empresas` */

DROP TABLE IF EXISTS `app_empresas`;

CREATE TABLE `app_empresas` (
  `idEmpresa` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text,
  `direccion` text,
  `telefono` text,
  `ciudad` int(11) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  `pais` int(11) DEFAULT NULL,
  `tipoDocumento` int(11) DEFAULT NULL,
  `nroDocumento` int(11) DEFAULT NULL,
  `tipoActividad` int(11) DEFAULT NULL,
  `logo` text,
  `icono` text,
  `nombreEncargado` text,
  `email` text,
  `ultimoIngreso` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `eliminado` int(11) DEFAULT '0',
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `app_empresas` */

insert into `app_empresas` (`idEmpresa`,`nombre`,`direccion`,`telefono`,`ciudad`,`departamento`,`pais`,`tipoDocumento`,`nroDocumento`,`tipoActividad`,`logo`,`icono`,`nombreEncargado`,`email`,`ultimoIngreso`,`estado`,`eliminado`) values (1,'Orugal Corp','Cra 81 # 11 09','3114881738',1,11,NULL,NULL,NULL,NULL,'perfil.jpg','perfil.jpg',NULL,'info@orugal.com.co',NULL,1,1);
insert into `app_empresas` (`idEmpresa`,`nombre`,`direccion`,`telefono`,`ciudad`,`departamento`,`pais`,`tipoDocumento`,`nroDocumento`,`tipoActividad`,`logo`,`icono`,`nombreEncargado`,`email`,`ultimoIngreso`,`estado`,`eliminado`) values (5,'It Soluciones','Cra 81 # 11 09','23123123213213',1,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'isarmiento@itsoluciones.net',NULL,1,0);
insert into `app_empresas` (`idEmpresa`,`nombre`,`direccion`,`telefono`,`ciudad`,`departamento`,`pais`,`tipoDocumento`,`nroDocumento`,`tipoActividad`,`logo`,`icono`,`nombreEncargado`,`email`,`ultimoIngreso`,`estado`,`eliminado`) values (6,'fgdfgdfgf','dfgdfgdfg','45345345',1,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kyodfgdfgf@fsdfdf.vom',NULL,1,0);

/*Table structure for table `app_estadopago` */

DROP TABLE IF EXISTS `app_estadopago`;

CREATE TABLE `app_estadopago` (
  `idPago` bigint(20) NOT NULL AUTO_INCREMENT,
  `idEmpresa` bigint(20) DEFAULT NULL,
  `esDemo` int(11) DEFAULT '1',
  `descripcion` text,
  `fechaInicio` datetime DEFAULT NULL,
  `fechaFin` datetime DEFAULT NULL,
  `cantComprada` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `eliminado` int(11) DEFAULT '0',
  PRIMARY KEY (`idPago`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `app_estadopago` */

insert into `app_estadopago` (`idPago`,`idEmpresa`,`esDemo`,`descripcion`,`fechaInicio`,`fechaFin`,`cantComprada`,`estado`,`eliminado`) values (1,1,1,'Demo Inicial de 90 días para que pruebes la aplicación.','2016-06-29 10:58:04','2016-09-27 10:58:04',90,1,0);
insert into `app_estadopago` (`idPago`,`idEmpresa`,`esDemo`,`descripcion`,`fechaInicio`,`fechaFin`,`cantComprada`,`estado`,`eliminado`) values (2,2,1,'pago','2016-06-29 11:01:04','2016-09-27 11:01:04',90,1,0);
insert into `app_estadopago` (`idPago`,`idEmpresa`,`esDemo`,`descripcion`,`fechaInicio`,`fechaFin`,`cantComprada`,`estado`,`eliminado`) values (3,3,1,'Demo Inicial de 90 días para que pruebes la aplicación.','2016-06-29 11:02:22','2016-09-27 11:02:22',90,1,0);
insert into `app_estadopago` (`idPago`,`idEmpresa`,`esDemo`,`descripcion`,`fechaInicio`,`fechaFin`,`cantComprada`,`estado`,`eliminado`) values (4,4,1,'Demo Inicial de 90 días para que pruebes la aplicación.','2016-06-29 12:28:37','2016-09-27 12:28:37',90,1,0);
insert into `app_estadopago` (`idPago`,`idEmpresa`,`esDemo`,`descripcion`,`fechaInicio`,`fechaFin`,`cantComprada`,`estado`,`eliminado`) values (5,5,1,'Demo Inicial de 90 días para que pruebes la aplicación.','2016-06-29 13:15:51','2016-09-27 13:15:51',90,1,0);
insert into `app_estadopago` (`idPago`,`idEmpresa`,`esDemo`,`descripcion`,`fechaInicio`,`fechaFin`,`cantComprada`,`estado`,`eliminado`) values (6,6,1,'Demo Inicial de 90 días para que pruebes la aplicación.','2016-06-29 13:32:12','2016-09-27 13:32:12',90,1,0);

/*Table structure for table `app_login` */

DROP TABLE IF EXISTS `app_login`;

CREATE TABLE `app_login` (
  `idLogin` bigint(20) NOT NULL AUTO_INCREMENT,
  `idGeneral` bigint(20) DEFAULT NULL,
  `tipoLogin` int(11) DEFAULT NULL,
  `usuario` text,
  `clave` text,
  `clave64` text,
  `cambioClave` int(11) DEFAULT '1',
  `primeraVez` int(11) DEFAULT '1',
  `verificado` int(11) DEFAULT '0',
  `estado` int(11) DEFAULT '1',
  PRIMARY KEY (`idLogin`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `app_login` */

insert into `app_login` (`idLogin`,`idGeneral`,`tipoLogin`,`usuario`,`clave`,`clave64`,`cambioClave`,`primeraVez`,`verificado`,`estado`) values (1,1,1,'info@orugal.com.co','866476a47c856b5b9f45e3ebe58aa6eaef9a50a0','MTAzMDUzNDg0OQ==',0,1,0,1);
insert into `app_login` (`idLogin`,`idGeneral`,`tipoLogin`,`usuario`,`clave`,`clave64`,`cambioClave`,`primeraVez`,`verificado`,`estado`) values (2,2,1,'isarmiento@itsoluciones.net','866476a47c856b5b9f45e3ebe58aa6eaef9a50a0','MTAzMDUzNDg0OQ==',0,1,0,1);
insert into `app_login` (`idLogin`,`idGeneral`,`tipoLogin`,`usuario`,`clave`,`clave64`,`cambioClave`,`primeraVez`,`verificado`,`estado`) values (3,3,1,'info@oempresarial.com','866476a47c856b5b9f45e3ebe58aa6eaef9a50a0','MTAzMDUzNDg0OQ==',0,1,0,1);
insert into `app_login` (`idLogin`,`idGeneral`,`tipoLogin`,`usuario`,`clave`,`clave64`,`cambioClave`,`primeraVez`,`verificado`,`estado`) values (4,4,1,'prueba@eltiempo.com','7c4a8d09ca3762af61e59520943dc26494f8941b','MTIzNDU2',0,1,0,1);
insert into `app_login` (`idLogin`,`idGeneral`,`tipoLogin`,`usuario`,`clave`,`clave64`,`cambioClave`,`primeraVez`,`verificado`,`estado`) values (5,5,1,'isarmiento@itsoluciones.net','40bd001563085fc35165329ea1ff5c5ecbdbbeef','MTIz',0,1,0,1);
insert into `app_login` (`idLogin`,`idGeneral`,`tipoLogin`,`usuario`,`clave`,`clave64`,`cambioClave`,`primeraVez`,`verificado`,`estado`) values (6,6,1,'kyodfgdfgf@fsdfdf.vom','7c4a8d09ca3762af61e59520943dc26494f8941b','MTIzNDU2',0,1,0,1);
insert into `app_login` (`idLogin`,`idGeneral`,`tipoLogin`,`usuario`,`clave`,`clave64`,`cambioClave`,`primeraVez`,`verificado`,`estado`) values (7,1,2,'kyo20052@gmail.com','866476a47c856b5b9f45e3ebe58aa6eaef9a50a0','MTAzMDUzNDg0OQ==',0,1,0,1);
insert into `app_login` (`idLogin`,`idGeneral`,`tipoLogin`,`usuario`,`clave`,`clave64`,`cambioClave`,`primeraVez`,`verificado`,`estado`) values (8,2,2,'uprueba@gmail.com','f7c3bc1d808e04732adf679965ccc34ca7ae3441','MTIzNDU2Nzg5',0,1,0,1);

/*Table structure for table `app_mails` */

DROP TABLE IF EXISTS `app_mails`;

CREATE TABLE `app_mails` (
  `idMail` bigint(20) NOT NULL AUTO_INCREMENT,
  `para` text,
  `asunto` text,
  `mensaje` text,
  `estado` int(11) DEFAULT '0',
  `fechaEnvio` datetime DEFAULT NULL,
  `ip` text,
  PRIMARY KEY (`idMail`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `app_mails` */

insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (1,NULL,NULL,NULL,1,NULL,'192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (2,NULL,NULL,NULL,1,'2016-06-28 13:53:03','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (3,'123123213@asdasdasd.com','Registro de empresa exitoso','Se ha realizado el registro de su empresa en la plataforma',1,'2016-06-28 13:53:58','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (4,'kyo20052@gmail.com','Registro de empresa exitoso','Se ha realizado el registro de su empresa en la plataforma',1,'2016-06-28 13:54:56','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (5,'kyo20052@gmail.com','Registro de empresa exitoso','Se ha realizado el registro de su empresa en la plataforma',0,'2016-06-29 10:18:14','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (6,'kyo20052@gmail.com','Registro de empresa exitoso','Se ha realizado el registro de su empresa en la plataforma',0,'2016-06-29 10:20:06','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (7,'kyo20052@gmail.com','Registro de empresa exitoso','Se ha realizado el registro de su empresa en la plataforma',0,'2016-06-29 10:21:35','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (8,'kyo20052@gmail.com','Registro de empresa exitoso','Se ha realizado el registro de su empresa en la plataforma',1,'2016-06-29 10:23:06','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (9,'kyo20052@gmail.com','Registro de empresa exitoso','Se ha realizado el registro de su empresa en la plataforma',1,'2016-06-29 10:58:04','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (10,'isarmiento@itsoluciones.net','Registro de empresa exitoso','Se ha realizado el registro de su empresa en la plataforma',1,'2016-06-29 11:01:04','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (11,'info@oempresarial.com','Registro de empresa exitoso','Se ha realizado el registro de su empresa en la plataforma',1,'2016-06-29 11:02:22','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (12,'prueba@eltiempo.com','Registro de empresa exitoso','Se ha realizado el registro de su empresa en la plataforma',0,'2016-06-29 12:28:37','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (13,'isarmiento@itsoluciones.net','Registro de empresa exitoso','Se ha realizado el registro de su empresa en la plataforma',0,'2016-06-29 13:15:57','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (14,'kyodfgdfgf@fsdfdf.vom','Registro de empresa exitoso','Se ha realizado el registro de su empresa en la plataforma',0,'2016-06-29 13:32:17','192.168.0.12');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (15,'kyo20052@gmail.com','Registro exitoso','Se ha realizado el registro de su cuenta personal en la plataforma',1,'2016-07-08 04:58:15','192.168.0.14');
insert into `app_mails` (`idMail`,`para`,`asunto`,`mensaje`,`estado`,`fechaEnvio`,`ip`) values (16,'uprueba@gmail.com','Registro exitoso','Se ha realizado el registro de su cuenta personal en la plataforma',1,'2016-07-13 15:56:17','192.168.0.12');

/*Table structure for table `app_notificaciones` */

DROP TABLE IF EXISTS `app_notificaciones`;

CREATE TABLE `app_notificaciones` (
  `idNotificacion` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` text,
  `texto` text,
  `idLogin` bigint(20) DEFAULT NULL,
  `tipoNotificacion` int(11) DEFAULT '1',
  `idContenido` bigint(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `ip` text,
  `vista` int(11) DEFAULT '0',
  `eliminado` int(11) DEFAULT '0',
  PRIMARY KEY (`idNotificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `app_notificaciones` */

/*Table structure for table `app_paises` */

DROP TABLE IF EXISTS `app_paises`;

CREATE TABLE `app_paises` (
  `ID_PAIS` varchar(10) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_PAIS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `app_paises` */

insert into `app_paises` (`ID_PAIS`,`NOMBRE`) values ('057','COLOMBIA');
insert into `app_paises` (`ID_PAIS`,`NOMBRE`) values ('058','VENEZUELA');

/*Table structure for table `app_personas` */

DROP TABLE IF EXISTS `app_personas`;

CREATE TABLE `app_personas` (
  `idPersona` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` text,
  `direccion` text,
  `telefono` text,
  `ciudad` int(11) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  `pais` int(11) DEFAULT NULL,
  `tipoDocumento` int(11) DEFAULT NULL,
  `nroDocumento` int(11) DEFAULT NULL,
  `tipoActividad` int(11) DEFAULT NULL,
  `logo` text,
  `icono` text,
  `nombreEncargado` text,
  `email` text,
  `ultimoIngreso` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `eliminado` int(11) DEFAULT '0',
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `app_personas` */

insert into `app_personas` (`idPersona`,`nombre`,`direccion`,`telefono`,`ciudad`,`departamento`,`pais`,`tipoDocumento`,`nroDocumento`,`tipoActividad`,`logo`,`icono`,`nombreEncargado`,`email`,`ultimoIngreso`,`estado`,`eliminado`) values (1,'Farez Prieto',NULL,NULL,1,11,NULL,NULL,NULL,NULL,'icono.png','icono.png',NULL,'kyo20052@gmail.com',NULL,1,0);
insert into `app_personas` (`idPersona`,`nombre`,`direccion`,`telefono`,`ciudad`,`departamento`,`pais`,`tipoDocumento`,`nroDocumento`,`tipoActividad`,`logo`,`icono`,`nombreEncargado`,`email`,`ultimoIngreso`,`estado`,`eliminado`) values (2,'usuario prueba',NULL,NULL,1,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'uprueba@gmail.com',NULL,1,0);

/*Table structure for table `app_registroslogin` */

DROP TABLE IF EXISTS `app_registroslogin`;

CREATE TABLE `app_registroslogin` (
  `idRegistro` bigint(20) NOT NULL AUTO_INCREMENT,
  `idLogin` bigint(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `ip` text,
  `disp` text,
  `eliminado` int(11) DEFAULT '0',
  PRIMARY KEY (`idRegistro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `app_registroslogin` */

insert into `app_registroslogin` (`idRegistro`,`idLogin`,`fecha`,`ip`,`disp`,`eliminado`) values (1,1,'2016-07-15 12:22:17','192.168.0.12','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0',0);
insert into `app_registroslogin` (`idRegistro`,`idLogin`,`fecha`,`ip`,`disp`,`eliminado`) values (2,7,'2016-07-15 12:33:23','192.168.0.12','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0',0);
insert into `app_registroslogin` (`idRegistro`,`idLogin`,`fecha`,`ip`,`disp`,`eliminado`) values (3,1,'2016-07-15 12:38:35','192.168.0.12','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0',0);

/*Table structure for table `app_rel_personas_empresa` */

DROP TABLE IF EXISTS `app_rel_personas_empresa`;

CREATE TABLE `app_rel_personas_empresa` (
  `idRelPerEmp` bigint(20) NOT NULL AUTO_INCREMENT,
  `idEmpresa` bigint(20) DEFAULT NULL,
  `idPersona` bigint(20) DEFAULT NULL,
  `fechaRelacion` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `eliminado` int(11) DEFAULT '0',
  PRIMARY KEY (`idRelPerEmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `app_rel_personas_empresa` */

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
