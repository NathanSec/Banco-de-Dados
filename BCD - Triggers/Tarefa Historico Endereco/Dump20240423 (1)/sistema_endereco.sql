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
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_endereco` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` mediumint NOT NULL,
  `endereco` varchar(255) NOT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `fk_endereco_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_endereco_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,44,'pombal 2'),(2,8,'P.O. Box 305, 9777 Erat. St.'),(3,26,'Ap #332-4339 Sapien. Rd.'),(4,64,'423-4198 Facilisi. Road'),(5,54,'P.O. Box 687, 7244 Fringilla Ave'),(6,56,'853-809 Proin Rd.'),(7,69,'P.O. Box 764, 2321 Mauris Rd.'),(8,23,'582-1696 Proin Street'),(9,23,'627-2060 Lacus. Street'),(10,47,'Ap #250-2712 Nec Ave'),(11,8,'Ap #687-4135 Integer St.'),(12,32,'Ap #562-4713 Nec Avenue'),(13,74,'P.O. Box 617, 8393 Phasellus Road'),(14,98,'709-8106 Lorem, St.'),(15,30,'194-2540 Metus. Street'),(16,32,'Ap #155-5441 Cursus, Rd.'),(17,8,'P.O. Box 585, 3294 Id, Ave'),(18,6,'P.O. Box 329, 3783 Sit Avenue'),(20,24,'609-8594 Consectetuer Ave'),(21,69,'Ap #947-4664 Ut Rd.'),(22,87,'5038 Quam Avenue'),(23,79,'Ap #965-5920 Ante St.'),(24,21,'Ap #859-3346 Molestie Rd.'),(25,95,'7536 Lorem Av.'),(26,29,'9924 Ut Av.'),(27,43,'P.O. Box 497, 953 A, Avenue'),(28,31,'Ap #573-216 Fermentum Rd.'),(29,70,'665-5808 Phasellus Street'),(30,11,'Ap #227-2033 Fringilla Ave'),(31,96,'854-7793 Interdum St.'),(32,43,'189-2267 Et Road'),(33,48,'P.O. Box 909, 5698 Tempor Road'),(34,65,'P.O. Box 670, 7754 Nunc Road'),(35,86,'4160 Molestie Street'),(36,36,'Ap #885-655 Ut Rd.'),(37,20,'Ap #194-5775 Amet, Rd.'),(38,72,'Ap #979-8133 Molestie Av.'),(39,62,'949-6143 Vitae Ave'),(40,36,'Ap #295-3782 Nam Ave'),(41,9,'422-2564 Erat St.'),(42,88,'689-1998 Sed Rd.'),(43,54,'P.O. Box 855, 520 Orci. Rd.'),(44,55,'Ap #250-8669 Erat Road'),(45,47,'4447 Lectus, Rd.'),(46,100,'Ap #564-8483 Justo Rd.'),(47,68,'Ap #517-9766 Bibendum Street'),(48,20,'Ap #352-3513 Non St.'),(49,64,'631-4566 Donec Rd.'),(50,24,'919-8590 Eleifend Rd.');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `registra_historico_endereco` BEFORE UPDATE ON `endereco` FOR EACH ROW begin
	if new.endereco <> old.endereco and new.endereco is not null then
    insert into historico_endereco_usuario (id_endereco, endereco_antigo)
    values (old.id_endereco, old.endereco);
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

-- Dump completed on 2024-04-23 16:46:01
