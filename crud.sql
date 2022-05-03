/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 8.0.24 : Database - crud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`crud` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `crud`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb3;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`email`,`address`) values 
(248,'adsfsadf','asdfasdf','asdfsdaf'),
(249,'adsfasdf','asdfasdf','asdfasdf'),
(250,'asdf','asdf','asdf'),
(257,'Qodirjon Safarov','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(258,'Qodirjon Safarov','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(259,'Qodirjon Safarov','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(260,'Qodirjon Safarov','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(261,'Qodirjon Safarov','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(262,'Qodirjon Safarov','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(263,'Qodirjon Safarov','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(264,'Qodirjon Safarove','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(265,'Qodirjon Safarove','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(266,'Qodirjon Safarov','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(267,'Qodirjon Safarov','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(268,'Qodirjon Safarov','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(269,'Qodirjon Safarov','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(270,'Qodirjon Safarove','safaroffqodirjon@gmail.com','Ismoili Somoni'),
(271,'Qodirjon Safarov','safaroffqodirjon@gmail.com','Ismoili Somoni');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
