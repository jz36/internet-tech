/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.45 : Database - my_mvc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`my_mvc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `my_mvc`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_category` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `small_text` text,
  `text` text,
  `date_create` date DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_fk1` (`id_category`),
  CONSTRAINT `article_fk1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `article` */

insert  into `article`(`id`,`id_category`,`title`,`small_text`,`text`,`date_create`,`is_active`) values (1,1,'Заголовок статьи 1','Короткое описание статьи','Полный текст статьи','2014-03-30',1),(4,1,'Заголовок статьи 2','Короткое описание статьи','Полный текст статьи','2014-03-30',1),(5,1,'Заголовок статьи 3','Короткое описание статьи','Полный текст статьи','2014-03-30',1),(6,2,'Заголовок статьи 4','Короткое описание статьи','Полный текст статьи','2014-03-30',1),(7,2,'Заголовок статьи 5','Короткое описание статьи','Полный текст статьи','2014-03-30',1),(8,2,'Заголовок статьи 6','Короткое описание статьи','Полный текст статьи','2014-03-30',1),(9,2,'Заголовок статьи 7','Короткое описание статьи','Полный текст статьи','2014-03-30',1),(14,3,'Мои друзья','Мои друзья - придурки!','Мои друзья - придурки!\r\nНо они мои друзья!',NULL,1);

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`is_active`) values (1,'Обо мне :)',1),(2,'О семье',1),(3,'Категория 3',1);

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `text` text,
  `date_create` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comments` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
