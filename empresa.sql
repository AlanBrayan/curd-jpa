/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.5-10.4.25-MariaDB : Database - empresa
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`empresa1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `empresa1`;

/*Table structure for table `empleado` */

DROP TABLE IF EXISTS `empleado`;

CREATE TABLE `empleado` (
  `id_emp` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  KEY `id_emp` (`id_emp`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `empleado` */

insert  into `empleado`(`id_emp`,`nombre`,`telefono`,`sexo`) values (1,'Alan Brayan','132213','Masculino');

/*Table structure for table `estatus` */

DROP TABLE IF EXISTS `estatus`;

CREATE TABLE `estatus` (
  `id_estatus` int(5) DEFAULT NULL,
  `estatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `estatus` */

insert  into `estatus`(`id_estatus`,`estatus`) values (1,'Activo'),(0,'Suspendido');

/*Table structure for table `perfilusuario` */

DROP TABLE IF EXISTS `perfilusuario`;

CREATE TABLE `perfilusuario` (
  `id_perfil` int(5) DEFAULT NULL,
  `perfil` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `perfilusuario` */

insert  into `perfilusuario`(`id_perfil`,`perfil`) values (1,'Master'),(0,'Empleado');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id_usu` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `app` varchar(50) DEFAULT NULL,
  `apm` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `perfil` varchar(20) DEFAULT NULL,
  `estatus` varchar(20) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `id_perfil` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_usu`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `usuario` */

insert  into `usuario`(`id_usu`,`nombre`,`app`,`apm`,`correo`,`telefono`,`pass`,`perfil`,`estatus`,`usuario`,`id_perfil`) values (1,'Alan','Torres','Villavicencio','alan@gmail.com','1234567891','12345','Master','Activo','alanRoot','1'),(2,'Brayan','Torres','Villavicencio','brayan','121322321','12345','Empleado','Activo','brayanRoot','2');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
