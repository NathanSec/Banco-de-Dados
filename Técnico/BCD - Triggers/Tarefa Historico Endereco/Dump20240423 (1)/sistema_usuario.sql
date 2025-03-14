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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` mediumint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` char(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Rama Herring','50109509834'),(2,'Darryl Rivera','58182494513'),(3,'Joel Thompson','52389552904'),(5,'Quamar Burns','86724229983'),(6,'Cade Nichols','81287369256'),(7,'Tamara Waller','87915429097'),(8,'Ava Mcfadden','11424447091'),(9,'Ishmael Sellers','22860516277'),(10,'Sierra Baxter','31805749513'),(11,'Upton Trujillo','91234916967'),(12,'Chastity Rivera','67358287036'),(13,'Nora Mclaughlin','27123540355'),(14,'Penelope Miranda','86648722092'),(15,'Melvin Burks','41095634375'),(16,'Jonah Warner','75553493628'),(17,'Rachel Cohen','56287176652'),(18,'Amery Stone','99100237708'),(19,'TaShya Slater','57171503530'),(20,'Quon Conrad','27806380468'),(21,'Acton Stein','89130956099'),(22,'Randall Rosario','70305532666'),(23,'Troy Weaver','99591527551'),(24,'Scarlet Aguilar','51101739187'),(25,'Thor Hampton','75406044921'),(26,'Harrison Fowler','80921713636'),(27,'Beverly Knight','72759668101'),(28,'Lara Pitts','27516517032'),(29,'Emmanuel O\'Neill','23311495680'),(30,'Imelda Dyer','13297801974'),(31,'Henry Hardy','86389234232'),(32,'Brynne Kelly','61270695881'),(33,'Orson Sloan','56683008353'),(34,'Nichole Mcdowell','13885297573'),(35,'August Carson','16449658557'),(36,'Alan Mitchell','98665883338'),(37,'Kristen Ray','84600937404'),(38,'Keane Solomon','98818406258'),(39,'Sharon Carver','79804016935'),(40,'Quinlan Hammond','56478444565'),(41,'Bevis Odom','56468166488'),(42,'Zenaida Moses','52322954217'),(43,'Nevada O\'connor','82696101161'),(44,'Bianca Benjamin','36479514902'),(45,'Shad Woodward','72113568606'),(46,'Katelyn Frederick','43145187484'),(47,'Lilah Donaldson','65233277289'),(48,'Dolan Blake','57790229136'),(49,'Elijah Waller','23911669247'),(50,'Gemma Vargas','86979372972'),(51,'Noah Chandler','80215339914'),(52,'Teegan Ortiz','93153783422'),(53,'Nigel Chang','32115810083'),(54,'Thane Barber','44308827306'),(55,'Yael Mitchell','74924785071'),(56,'Hanae Stein','80427680410'),(57,'Edward Harris','66249115543'),(58,'Mufutau Houston','62599836999'),(59,'Graiden Henry','47902789523'),(60,'Devin Drake','84295539701'),(61,'Brady Miles','16638053326'),(62,'Miriam Dennis','88199912308'),(63,'Jared Barr','65978085328'),(64,'Jeremy Wiggins','76328711866'),(65,'Keiko Morrison','81593259038'),(66,'Paloma Black','47767902301'),(67,'Justin Stone','13445627931'),(68,'Ruby Mayer','82771890746'),(69,'Vanna Ward','74672047290'),(70,'Tyrone Bean','29645446110'),(71,'Lee Greer','98545439773'),(72,'Jade Greene','37977224089'),(73,'Garrett England','42847431284'),(74,'Aileen Bradford','41339389533'),(75,'Jemima Farmer','90185588590'),(76,'Sybil Allison','23980994424'),(77,'Virginia Landry','44803933619'),(78,'Ann French','68418236617'),(79,'Hayley Howard','79505973431'),(80,'Lacota Prince','56049472781'),(81,'Randall Byrd','92818023710'),(82,'Morgan Fleming','21488872827'),(83,'Signe Bonner','58603970145'),(84,'Amir Rowland','60203267148'),(85,'Ori Watkins','37502366041'),(86,'Alana Dyer','20029225316'),(87,'Pandora Randall','12525636029'),(88,'Quinn Mcmillan','33854022156'),(89,'Edan Burt','79353231931'),(90,'Troy Hobbs','58012570395'),(91,'Alec Whitaker','25596962129'),(92,'Ignatius Gates','11806177293'),(93,'Lunea Juarez','18225206259'),(94,'Orson Pugh','60233366283'),(95,'Rebecca Blackburn','44110147408'),(96,'Kevin Bowers','49587787382'),(97,'Naida Park','46601595809'),(98,'Stuart Nicholson','75406018304'),(99,'Janna Santana','84062237748'),(100,'Nola Mejia','41261516590');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `apaga_dependencias_usuario` BEFORE DELETE ON `usuario` FOR EACH ROW begin
	delete from endereco where endereco.id_usuario = old.id_usuario;
    delete from telefone where telefone.id_usuario = old.id_usuario;
    delete from login where login.id_usuario = old.id_usuario;
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

-- Dump completed on 2024-04-23 16:46:01
