# MySQL-Front 3.2  (Build 10.2)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;

/*!40101 SET NAMES latin1 */;
/*!40103 SET TIME_ZONE='SYSTEM' */;

# Host: myresellerwin0003.locaweb.com.br    Database: brazilcats_getupsites
# ------------------------------------------------------
# Server version 5.7.17-13-log

#
# Table structure for table tickets
#

CREATE TABLE `tickets` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `TicketID` varchar(10) NOT NULL,
  `CategoryID` varchar(10) DEFAULT NULL,
  `CustomerID` varchar(10) DEFAULT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `CustomerEmail` varchar(100) DEFAULT NULL,
  `DateCreate` datetime DEFAULT NULL,
  `DateUpdate` datetime DEFAULT NULL,
  `Prioridade` int(11) DEFAULT '0',
  PRIMARY KEY (`Codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

#
# Dumping data for table tickets
#

/*!40101 SET NAMES utf8 */;

INSERT INTO `tickets` VALUES (1,'28890','57526','97979','Cox Workman','cox.workman@neoassist.com','2017-12-13 03:08:42','2018-01-04 09:18:25',-1);
INSERT INTO `tickets` VALUES (2,'28891','46403','97974','Vilma Mcmahon','vilma.mcmahon@neoassist.com','2017-12-25 03:12:39','2018-02-12 05:14:11',1);
INSERT INTO `tickets` VALUES (3,'28892','28514','97960','Cristina Pitts','cristina.pitts@neoassist.com','2017-12-21 03:51:39','2018-01-01 06:21:59',-2);
INSERT INTO `tickets` VALUES (4,'28893','59260','97958','Tina Melton','tina.melton@neoassist.com','2017-12-09 01:34:49','2018-01-19 01:19:08',0);
INSERT INTO `tickets` VALUES (5,'28894','36319','97999','Darcy Erickson','darcy.erickson@neoassist.com','2017-12-22 01:05:19','2018-02-04 10:03:08',2);
INSERT INTO `tickets` VALUES (6,'28895','11769','97997','Chase Love','chase.love@neoassist.com','2017-12-16 11:41:52','2018-01-05 11:27:25',-1);
INSERT INTO `tickets` VALUES (7,'28896','45738','97928','Irma House','irma.house@neoassist.com','2017-12-07 02:40:42','2018-01-06 10:21:10',-3);
INSERT INTO `tickets` VALUES (8,'28897','31514','97990','Byrd Mcfadden','byrd.mcfadden@neoassist.com','2017-12-12 01:24:14','2018-01-09 04:34:40',-3);
INSERT INTO `tickets` VALUES (9,'28898','66134','97943','Lynnette Taylor','lynnette.taylor@neoassist.com','2017-12-03 12:44:34','2018-02-11 04:22:01',-2);
INSERT INTO `tickets` VALUES (10,'28899','28000','97959','Dejesus Steele','dejesus.steele@neoassist.com','2017-12-18 06:24:45','2018-01-09 07:13:04',-2);
INSERT INTO `tickets` VALUES (11,'288910','14241','97907','Dee Sampson','dee.sampson@neoassist.com','2017-12-03 04:57:38','2018-02-12 12:34:43',0);
INSERT INTO `tickets` VALUES (12,'288911','12426','97932','Nannie Duffy','nannie.duffy@neoassist.com','2017-12-13 06:55:35','2018-02-10 10:10:55',0);
INSERT INTO `tickets` VALUES (13,'288912','19961','97988','Bright Obrien','bright.obrien@neoassist.com','2017-12-12 01:25:30','2018-02-10 09:11:50',2);
INSERT INTO `tickets` VALUES (14,'288913','55814','97975','Dionne Smith','dionne.smith@neoassist.com','2017-12-25 09:03:15','2018-02-09 20:13:52',0);
INSERT INTO `tickets` VALUES (15,'288914','55834','97963','Mcdaniel Kinney','mcdaniel.kinney@neoassist.com','2017-12-19 10:23:28','2018-01-29 13:45:22',3);
INSERT INTO `tickets` VALUES (16,'288915','45306','97988','Hull Santiago','hull.santiago@neoassist.com','2017-12-27 05:19:59','2018-01-28 09:16:29',1);
INSERT INTO `tickets` VALUES (17,'288916','63805','97969','Esperanza Henry','esperanza.henry@neoassist.com','2017-12-24 06:29:33','2018-02-01 08:00:00',0);
INSERT INTO `tickets` VALUES (18,'288917','49681','97938','Abigail Wilcox','abigail.wilcox@neoassist.com','2017-12-15 03:30:32','2018-01-10 05:37:56',-2);
INSERT INTO `tickets` VALUES (19,'288918','68176','97969','Rachael Dyer','rachael.dyer@neoassist.com','2017-12-17 09:35:01','2018-01-19 22:20:19',0);
INSERT INTO `tickets` VALUES (20,'288919','57782','97958','Felicia Cotton','felicia.cotton@neoassist.com','2017-12-07 12:59:33','2018-01-06 02:55:47',-1);
INSERT INTO `tickets` VALUES (21,'288920','25378','97922','Paulette Bernard','paulette.bernard@neoassist.com','2017-12-26 10:04:31','2018-01-06 03:43:55',-2);
INSERT INTO `tickets` VALUES (22,'288921','62228','97936','Beulah Moss','beulah.moss@neoassist.com','2017-12-12 12:53:57','2018-01-11 09:30:38',-2);
INSERT INTO `tickets` VALUES (23,'288922','43280','97907','Bass Lowe','bass.lowe@neoassist.com','2017-12-30 06:07:54','2018-01-23 04:28:16',-2);
INSERT INTO `tickets` VALUES (24,'288923','64773','97930','Vicki Gill','vicki.gill@neoassist.com','2017-12-16 09:14:17','2018-01-25 01:26:16',-1);
INSERT INTO `tickets` VALUES (25,'288924','45228','97897','Rosario Mercer','rosario.mercer@neoassist.com','2017-12-20 11:24:29','2018-02-08 09:55:52',2);

/*!40101 SET NAMES latin1 */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
