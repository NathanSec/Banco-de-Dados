-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id_login` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` mediumint NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_ip` char(39) DEFAULT NULL,
  PRIMARY KEY (`id_login`),
  KEY `fk_login_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_login_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,1,'risus.a@yahoo.ca','QOW76CEY4NP','2024-04-23 16:27:11','123'),(2,2,'vulputate.eu@protonmail.couk','VBE88DUI6SY','2024-04-23 12:03:33',NULL),(5,5,'ornare.tortor@outlook.edu','HYR15KRT1BV','2023-04-12 07:05:10',NULL),(6,6,'elit.curabitur@outlook.org','NIS44CWN6EY','2023-07-06 06:16:26',NULL),(7,7,'integer.aliquam.adipiscing@outlook.net','TFL59VRK9ZJ','2024-03-20 15:23:25',NULL),(8,8,'dictum@yahoo.couk','BWQ46NFJ5SI','2023-03-06 09:52:39',NULL),(9,9,'lorem.luctus@outlook.com','PEV18KDO6BL','2024-02-09 00:07:28',NULL),(10,10,'lobortis.mauris@yahoo.couk','ZNI66ZHP2UD','2023-08-01 19:22:19',NULL),(11,11,'lacinia@yahoo.net','TKW42JNU8YJ','2024-01-01 16:33:32',NULL),(12,12,'tortor.nibh@outlook.com','ROS70CXD4FU','2023-04-18 20:46:56',NULL),(13,13,'non@icloud.couk','KBW04UJI4XE','2024-08-17 05:32:54',NULL),(14,14,'ac.turpis@protonmail.edu','WMH75MTH4CS','2024-01-17 03:22:25',NULL),(15,15,'facilisis@yahoo.ca','VVQ53NPB8SW','2023-11-08 22:28:31',NULL),(16,16,'libero.proin.mi@protonmail.ca','HOG13QBS0JH','2025-02-16 07:57:49',NULL),(17,17,'lorem.sit.amet@aol.org','NEL37TEX4EE','2023-04-10 22:11:43',NULL),(18,18,'venenatis@icloud.net','QJC68JDI3LH','2023-06-02 07:41:50',NULL),(19,19,'molestie.arcu.sed@outlook.couk','NJQ05XLA8JI','2024-07-03 03:26:59',NULL),(20,20,'at.lacus@outlook.net','VRM96GUN2RG','2024-02-08 03:55:31',NULL),(21,21,'phasellus.in.felis@icloud.com','ERF42WPO7TF','2023-12-08 06:21:53',NULL),(22,22,'in.nec.orci@protonmail.couk','MKQ76SKA4IN','2024-01-15 17:44:07',NULL),(23,23,'est@outlook.com','TGG63EHO1KM','2024-10-23 14:45:47',NULL),(24,24,'mauris.magna@outlook.edu','FJS57KSF9FI','2023-04-01 08:49:45',NULL),(25,25,'tempor@aol.edu','HIJ99IVW7QG','2024-01-21 16:20:01',NULL),(26,26,'neque.in.ornare@google.couk','FLW48EWE1TS','2024-11-12 15:42:22',NULL),(27,27,'nulla.at.sem@aol.couk','PIQ47JOQ5JJ','2023-10-20 04:17:36',NULL),(28,28,'et.libero@aol.com','ZLH57NYS7NL','2023-09-23 19:17:43',NULL),(29,29,'nunc@icloud.com','YGL43ZUE2PW','2024-07-10 04:03:57',NULL),(30,30,'metus.vitae@google.ca','QOP26XVY1FT','2023-08-16 03:34:18',NULL),(31,31,'egestas@protonmail.net','LCL21TYG4OM','2024-06-30 19:51:19',NULL),(32,32,'dapibus.quam@icloud.edu','WBW52OPD0MK','2024-03-29 00:04:08',NULL),(33,33,'sed.nulla.ante@icloud.net','KWL05PUV5VQ','2023-03-16 17:42:13',NULL),(34,34,'neque.et@protonmail.com','GPR32SOP3YF','2024-01-14 10:04:53',NULL),(35,35,'dui.fusce@outlook.couk','SNR44SXJ3IX','2023-03-17 21:20:18',NULL),(36,36,'pellentesque@hotmail.couk','ULW46GZU9LZ','2024-12-20 17:39:27',NULL),(37,37,'phasellus.dolor@google.org','SUD78MVN7JH','2023-08-30 23:36:22',NULL),(38,38,'suspendisse.sagittis@yahoo.couk','HBQ78QGH2QY','2024-04-24 09:38:53',NULL),(39,39,'mollis.duis@icloud.edu','NXL76UGY8JP','2023-08-05 13:01:36',NULL),(40,40,'adipiscing.enim.mi@outlook.com','TGY63BSZ2UN','2023-05-25 12:13:18',NULL),(41,41,'sapien.aenean@hotmail.com','YKK22UTV3EH','2025-01-08 04:47:01',NULL),(42,42,'nisi.mauris.nulla@outlook.com','ZGV33DBV8GF','2024-04-02 20:30:00',NULL),(43,43,'fringilla.cursus@yahoo.ca','KJH60XZW0LS','2023-07-17 00:37:33',NULL),(44,44,'id.enim@yahoo.edu','JXH03EEX8RQ','2023-08-06 04:40:36',NULL),(45,45,'nunc.ullamcorper@aol.com','ZAE45FKQ0CF','2024-07-05 12:10:50',NULL),(46,46,'interdum@aol.ca','HVB38CQY2DG','2023-07-01 14:36:30',NULL),(47,47,'ac@aol.org','NBX25CRH2CD','2025-03-28 13:55:32',NULL),(48,48,'neque@protonmail.net','RMT96PIW1OU','2023-11-22 04:49:24',NULL),(49,49,'nisl.sem@icloud.com','KLZ71FYF6NR','2023-12-21 02:43:10',NULL),(50,50,'porttitor.scelerisque@hotmail.org','IJR57PIZ5QM','2024-01-31 10:58:14',NULL),(51,51,'quam.pellentesque@outlook.org','JZJ26WKQ7GX','2023-08-01 13:44:54',NULL),(52,52,'felis@protonmail.org','BKV47WGD1NY','2024-12-09 21:19:18',NULL),(53,53,'ac.mattis.velit@outlook.org','SJC25BCG7EV','2024-12-15 17:21:36',NULL),(54,54,'egestas@yahoo.ca','XZY76QGT3MC','2024-12-31 03:12:43',NULL),(55,55,'pede@hotmail.ca','NVV10TFD5FY','2023-05-11 05:33:01',NULL),(56,56,'etiam.imperdiet.dictum@outlook.couk','IUR24WOH3XQ','2025-01-20 13:16:27',NULL),(57,57,'lectus@outlook.couk','JKF41UTA7RI','2024-07-02 22:42:11',NULL),(58,58,'pellentesque.massa@outlook.couk','DTN43ROU0GH','2024-04-02 18:01:31',NULL),(59,59,'mauris.sapien@outlook.org','ELD92EZP4RD','2024-06-06 03:33:59',NULL),(60,60,'placerat.velit@icloud.couk','MST68RPV5VG','2023-03-18 17:44:07',NULL),(61,61,'cum@outlook.com','LQB86ZEG3JG','2023-07-25 15:46:52',NULL),(62,62,'cum@protonmail.com','MIR67NYW5DT','2023-07-17 23:25:12',NULL),(63,63,'luctus.vulputate.nisi@icloud.couk','TFO28WKX5IQ','2024-06-10 11:10:33',NULL),(64,64,'sit.amet.consectetuer@protonmail.ca','PYT42XJF2LA','2023-09-28 20:33:17',NULL),(65,65,'gravida.praesent.eu@hotmail.edu','IDD17ARK6OP','2023-12-31 21:34:16',NULL),(66,66,'eget.laoreet@outlook.com','FMV83LYV7CJ','2024-12-05 09:38:20',NULL),(67,67,'odio.vel@aol.com','DII78GPC9YB','2023-06-16 11:35:09',NULL),(68,68,'sodales.elit.erat@outlook.com','MRM14PLP8RK','2025-01-03 17:50:20',NULL),(69,69,'lorem.ipsum.dolor@aol.couk','RNI53SUI5WF','2024-12-27 01:54:40',NULL),(70,70,'lacus@hotmail.ca','POP06ATH1NY','2023-12-11 02:50:23',NULL),(71,71,'ante.dictum@google.com','QGS01MRL1MD','2023-08-12 02:24:51',NULL),(72,72,'praesent@hotmail.edu','QEI92UPI5WX','2023-04-15 00:17:10',NULL),(73,73,'proin.vel@protonmail.net','QNK46IYW2GX','2024-11-22 18:02:37',NULL),(74,74,'luctus.et@outlook.edu','DYH38QRM3TE','2024-08-07 20:20:09',NULL),(75,75,'cursus.purus@hotmail.org','NBE44SXJ2IP','2023-05-23 18:27:02',NULL),(76,76,'at.velit.cras@hotmail.edu','CBM40KVA8SX','2023-03-03 11:51:09',NULL),(77,77,'eu.eleifend.nec@hotmail.com','YDR59XJO7OV','2025-02-25 10:17:42',NULL),(78,78,'lorem@hotmail.org','WNG11JFE7GA','2024-11-03 01:52:35',NULL),(79,79,'ac.turpis.egestas@aol.org','HRT09CAI1LN','2023-11-26 12:33:10',NULL),(80,80,'interdum@yahoo.edu','UME87ROQ2LR','2024-06-21 15:02:16',NULL),(81,81,'massa.lobortis.ultrices@hotmail.com','APV43BCM4FT','2023-11-26 19:04:26',NULL),(82,82,'dui.nec@yahoo.edu','XYN43RVG2QX','2024-11-18 09:00:55',NULL),(83,83,'metus@outlook.org','CSC57ETR5WU','2024-05-20 08:01:22',NULL),(84,84,'at.lacus.quisque@hotmail.ca','GWF98MWY2TA','2024-05-25 08:04:58',NULL),(85,85,'egestas.urna.justo@hotmail.org','SLB68YQQ3YF','2024-12-27 14:53:02',NULL),(86,86,'mauris.rhoncus.id@protonmail.com','DSM52QRL0GI','2024-06-03 17:06:33',NULL),(87,87,'faucibus.id.libero@protonmail.org','KYU47QIQ1IQ','2024-01-07 16:07:02',NULL),(88,88,'mollis.integer@outlook.net','CTZ01JQJ7PH','2023-11-08 07:41:10',NULL),(89,89,'quis.accumsan.convallis@hotmail.org','QFH01LUU6HT','2025-01-03 23:54:17',NULL),(90,90,'cursus.et@outlook.net','LNP06EID0KC','2024-04-10 19:31:27',NULL),(91,91,'eget@icloud.org','WJG63KEY4PX','2025-01-16 20:00:26',NULL),(92,92,'neque@icloud.ca','NMX25PGP8DI','2024-07-20 01:29:46',NULL),(93,93,'lacinia.sed.congue@hotmail.org','IPA21GID7SE','2024-06-26 18:39:45',NULL),(94,94,'eget.dictum@protonmail.ca','PVX32RXU1XM','2023-09-17 08:09:04',NULL),(95,95,'orci.luctus@hotmail.net','SEF83LSJ8GZ','2024-05-11 17:05:07',NULL),(96,96,'sed.auctor@outlook.net','OGR22EHF6RI','2023-08-08 01:29:20',NULL),(97,97,'ut.pellentesque.eget@protonmail.couk','MNV81NDI4MG','2025-02-18 10:29:53',NULL),(98,98,'mollis.lectus@icloud.com','JKO37EUL1MS','2024-07-02 01:54:46',NULL),(99,99,'sed@protonmail.com','LTK67YIZ5LH','2023-06-17 18:03:35',NULL),(100,100,'risus.nulla@yahoo.com','JIV31XTD7HZ','2024-04-16 16:10:03','200.201.189.43');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `atualizar_last_login` BEFORE UPDATE ON `login` FOR EACH ROW BEGIN
    IF NEW.last_ip <> OLD.last_ip THEN
        SET NEW.last_login = CURRENT_TIMESTAMP();
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `registra_historico_login` BEFORE UPDATE ON `login` FOR EACH ROW begin
	if new.last_ip <> old.last_ip and new.last_ip is not null then
    insert into historico_login_usuario (id_usuario, ip_login, datahora_login)
    values (old.id_usuario, old.last_ip, old.last_login);
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-23 16:46:02
