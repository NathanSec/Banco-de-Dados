-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: gerenciatarefas
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `usuario_tarefa`
--

DROP TABLE IF EXISTS `usuario_tarefa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_tarefa` (
  `cod_usuario_tarefa` int NOT NULL AUTO_INCREMENT,
  `cod_usuario` int NOT NULL,
  `cod_tarefa` int NOT NULL,
  PRIMARY KEY (`cod_usuario_tarefa`),
  KEY `cod_usuario` (`cod_usuario`),
  KEY `cod_tarefa` (`cod_tarefa`),
  CONSTRAINT `usuario_tarefa_ibfk_1` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`cod_usuario`),
  CONSTRAINT `usuario_tarefa_ibfk_2` FOREIGN KEY (`cod_tarefa`) REFERENCES `tarefas` (`cod_tarefa`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_tarefa`
--

LOCK TABLES `usuario_tarefa` WRITE;
/*!40000 ALTER TABLE `usuario_tarefa` DISABLE KEYS */;
INSERT INTO `usuario_tarefa` VALUES (1,6,7),(2,1,15),(3,18,30),(4,9,49),(5,18,30),(6,19,9),(7,7,45),(8,2,45),(9,6,4),(10,9,23),(11,12,16),(12,9,1),(13,15,36),(14,12,49),(15,9,47),(16,16,23),(17,12,4),(18,19,14),(19,15,21),(20,15,50),(21,17,17),(22,4,39),(23,5,4),(24,1,41),(25,9,23),(26,16,50),(27,18,6),(28,12,28),(29,5,49),(30,1,14),(31,1,39),(32,17,35),(33,9,18),(34,8,49),(35,11,21),(36,6,42),(37,17,4),(38,5,43),(39,1,25),(40,2,9),(41,19,42),(42,5,8),(43,17,29),(44,4,42),(45,10,29),(46,8,47),(47,16,48),(48,8,18),(49,6,2),(50,14,28),(51,10,32),(52,9,4),(53,13,14),(54,6,6),(55,1,19),(56,17,20),(57,15,25),(58,15,1),(59,3,49),(60,15,32),(61,7,20),(62,1,10),(63,18,14),(64,6,13),(65,20,22),(66,19,26),(67,9,25),(68,11,35),(69,14,39),(70,5,47),(81,17,49),(82,4,45),(83,5,43),(84,13,12),(85,12,43),(86,15,1),(87,15,29),(88,10,31),(89,3,45),(90,16,38),(91,14,2),(92,17,35),(93,15,42),(94,1,8),(95,1,42),(96,3,44),(97,9,25),(98,13,49),(99,5,47),(100,2,36);
/*!40000 ALTER TABLE `usuario_tarefa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-14 17:57:08
