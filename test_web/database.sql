/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.16 : Database - day17
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`day17` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `day17`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `identity` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`gender`,`age`,`address`,`qq`,`email`,`username`,`password`,`identity`) values (27,'Alworm','男',25,'北京','565474','123456@qq.com','Alworm','123',1),(28,'小红','女',25,'北京','2345356','123456@qq.com','tt','tt',0),(29,'小昭','女',25,'北京','123456','123456@qq.com',NULL,NULL,0),(30,'小赵','男',25,'北京','2343236','456@qq.com',NULL,NULL,0),(32,'王阳明','男',25,'北京','123456','123456@qq.com',NULL,NULL,0),(33,'赵匡胤','女',25,'北京','123456','123456@qq.com',NULL,NULL,0),(34,'赵敏','女',25,'北京','16765856','123456@qq.com',NULL,NULL,0),(35,'赫敏','女',25,'北京','6576583456','123456@qq.com',NULL,NULL,0),(36,'欧阳修','女',25,'北京','5676856','123456@qq.com',NULL,NULL,0),(37,'欧阳封子','男',25,'北京','7878456','123456@qq.com',NULL,NULL,0),(38,'王五','男',25,'北京','23456','123@qq.com',NULL,NULL,0),(39,'小明','男',25,'北京','565474','qw@qq.com',NULL,NULL,0),(40,'小红','女',25,'北京','2345356','123456@qq.com',NULL,NULL,0),(41,'小昭','女',25,'北京','123456','123456@qq.com',NULL,NULL,0),(42,'小赵','男',25,'北京','2343236','123456@qq.com',NULL,NULL,0),(43,'小强','男',25,'北京','23456','123456@qq.com',NULL,NULL,0),(44,'王阳明','男',25,'北京','123456','123456@qq.com',NULL,NULL,0),(45,'赵匡胤','女',25,'北京','123456','123456@qq.com',NULL,NULL,0),(46,'赵敏','女',25,'北京','16765856','123456@qq.com',NULL,NULL,0),(47,'赫敏','女',25,'北京','6576583456','123456@qq.com',NULL,NULL,0),(48,'欧阳修','女',25,'北京','5676856','123456@qq.com',NULL,NULL,0),(49,'欧阳封子','男',25,'北京','7878456','123456@qq.com',NULL,NULL,0),(50,'王五','男',25,'北京','23456','123456@qq.com',NULL,NULL,0),(52,'小红','女',25,'北京','2345356','123456@qq.com',NULL,NULL,0),(53,'小昭','女',25,'北京','123456','123456@qq.com',NULL,NULL,0),(54,'小赵','男',25,'北京','2343236','123456@qq.com',NULL,NULL,0),(55,'小强','男',25,'北京','23456','123456@qq.com',NULL,NULL,0),(56,'王阳明','男',25,'北京','123456','123456@qq.com',NULL,NULL,0),(57,'赵匡胤','女',25,'北京','123456','123456@qq.com',NULL,NULL,0),(58,'赵敏','女',25,'北京','16765856','123456@qq.com',NULL,NULL,0),(59,'赫敏','女',25,'北京','6576583456','123456@qq.com',NULL,NULL,0),(60,'欧阳修','女',25,'北京','5676856','123456@qq.com',NULL,NULL,0),(62,'王五','男',25,'北京','23456','123456@qq.com',NULL,NULL,0),(63,'小明','男',25,'北京','565474','123456@qq.com',NULL,NULL,0),(64,'小红','女',25,'北京','2345356','123456@qq.com',NULL,NULL,0),(65,'小昭','女',25,'北京','123456','123456@qq.com',NULL,NULL,0),(66,'小赵','男',25,'北京','2343236','123456@qq.com',NULL,NULL,0),(67,'小强','男',25,'北京','23456','123456@qq.com',NULL,NULL,0),(68,'王阳明','男',25,'北京','123456','123456@qq.com',NULL,NULL,0),(69,'赵匡胤','女',25,'北京','123456','123456@qq.com',NULL,NULL,0),(70,'赵敏','女',25,'北京','16765856','123456@qq.com',NULL,NULL,0),(71,'赫敏','女',25,'北京','6576583456','123456@qq.com',NULL,NULL,0),(72,'欧阳修','女',25,'北京','5676856','123456@qq.com',NULL,NULL,0),(73,'欧阳封子','男',25,'北京','7878456','123456@qq.com',NULL,NULL,0),(74,'王五','男',25,'北京','23456','123456@qq.com',NULL,NULL,0),(75,'小明','男',25,'北京','565474','123456@qq.com',NULL,NULL,0),(76,'小红','女',25,'北京','2345356','123456@qq.com',NULL,NULL,0),(77,'小昭','女',25,'北京','123456','123456@qq.com',NULL,NULL,0),(78,'小赵','男',25,'北京','2343236','123456@qq.com',NULL,NULL,0),(79,'小强','男',25,'北京','23456','123456@qq.com',NULL,NULL,0),(80,'王阳明','男',25,'北京','123456','123456@qq.com',NULL,NULL,0),(81,'赵匡胤','女',25,'北京','123456','123456@qq.com',NULL,NULL,0),(82,'赵敏','女',25,'北京','16765856','123456@qq.com',NULL,NULL,0),(83,'赫敏','女',25,'北京','6576583456','123456@qq.com',NULL,NULL,0),(84,'欧阳修','女',25,'北京','5676856','123456@qq.com',NULL,NULL,0),(85,'欧阳封子','男',25,'北京','7878456','123456@qq.com',NULL,NULL,0),(86,'张三','女',25,'北京','123456','123456@qq.com',NULL,NULL,0),(87,'小强','男',25,'北京','23456','456@qq.com',NULL,NULL,0),(88,'欧阳啥子','男',234324,'陕西','456468761','56465465@qq.com',NULL,NULL,0),(91,'Alworm2','男',23,'上海','213124','123qq.com',NULL,NULL,0),(93,'ouyang','男',23,'陕西','324234','324234@qq.com',NULL,NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
