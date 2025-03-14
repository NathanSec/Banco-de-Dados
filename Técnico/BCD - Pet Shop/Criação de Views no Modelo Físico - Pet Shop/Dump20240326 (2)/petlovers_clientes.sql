-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: petlovers
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_clientes` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `CEP` int DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_clientes`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Edgard','Lemos',4194310,60,'edgard.lemos@senai.com','1234567890'),(2,'Andrey','Barboza',4321,18,'drey@gmail.com','70'),(3,'Giovanna','Neri',44342,17,'gi@gmail.com','50'),(4,'Guilherme','Soares',41432,19,'gui@gmail.com','40'),(5,'Guilherme','Soares',12367852,18,'guilao.soares@senai.com','8964328907'),(6,'Guilherme','Soares',12367852,18,'guilao.soares@senai.com','8964328907'),(7,'Guilherme','Soares',12367852,18,'guilao.soares@senai.com','8964328907'),(8,'Guilherme','Soares',12367852,18,'guilao.soares@senai.com','8964328907'),(9,'Guilherme','Soares',12367852,18,'guilao.soares@senai.com','8964328907'),(10,'Guilherme','Soares',12367852,18,'guilao.soares@senai.com','8964328907'),(11,'Guilherme','Soares',12367852,18,'guilao.soares@senai.com','8964328907'),(12,'Guilherme','Soares',12367852,18,'guilao.soares@senai.com','8964328907'),(13,'Guilherme','Soares',12367852,18,'guilao.soares@senai.com','8964328907'),(14,'Guilherme','Soares',12367852,18,'guilao.soares@senai.com','8964328907'),(15,'Guilherme','Soares',12367852,18,'guilao.soares@senai.com','8964328907');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-26 16:45:58
