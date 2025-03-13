-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: locadora
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
-- Table structure for table `locacao`
--

DROP TABLE IF EXISTS `locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locacao` (
  `id_locacao` int NOT NULL AUTO_INCREMENT,
  `status` enum('Em Andamento','Finalizado','Atrasado','Sinistro') NOT NULL DEFAULT 'Em Andamento',
  `id_cliente` int NOT NULL,
  `id_veiculo` int NOT NULL,
  `id_seguro` int NOT NULL,
  `id_funcionario` int NOT NULL,
  `id_filial` int NOT NULL,
  `data_retirada` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_devolucao` timestamp NOT NULL,
  `id_tipo_cobranca` int NOT NULL,
  PRIMARY KEY (`id_locacao`),
  KEY `fk_locacao_veiculo_idx` (`id_veiculo`),
  KEY `fk_locacao_filial_idx` (`id_filial`),
  KEY `fk_locacao_cliente_idx` (`id_cliente`),
  KEY `fk_locacao_seguro_idx` (`id_seguro`),
  KEY `fk_locacao_funcionario_idx` (`id_funcionario`),
  KEY `fk_locacao_cobranca_idx` (`id_tipo_cobranca`),
  CONSTRAINT `fk_locacao_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tipo_pessoa` (`id_pessoa`),
  CONSTRAINT `fk_locacao_cobranca` FOREIGN KEY (`id_tipo_cobranca`) REFERENCES `tipo_cobranca` (`id_tipo_cobranca`),
  CONSTRAINT `fk_locacao_filial` FOREIGN KEY (`id_filial`) REFERENCES `filial` (`id_filial`),
  CONSTRAINT `fk_locacao_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `tipo_pessoa` (`id_pessoa`),
  CONSTRAINT `fk_locacao_seguro` FOREIGN KEY (`id_seguro`) REFERENCES `seguro` (`id_seguro`),
  CONSTRAINT `fk_locacao_veiculo` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculo` (`id_veiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao`
--

LOCK TABLES `locacao` WRITE;
/*!40000 ALTER TABLE `locacao` DISABLE KEYS */;
INSERT INTO `locacao` VALUES (1,'Em Andamento',1,1,1,2,1,'2024-05-14 03:00:00','2023-05-19 03:00:00',1),(2,'Em Andamento',2,2,2,5,1,'2024-05-15 03:00:00','2024-03-17 03:00:00',1),(3,'Em Andamento',3,3,3,2,1,'2024-05-16 03:00:00','2024-05-23 03:00:00',1),(4,'Finalizado',4,4,1,2,2,'2024-05-17 03:00:00','2024-06-21 03:00:00',1),(7,'Em Andamento',3,5,1,2,2,'2011-05-08 03:00:00','2010-05-24 03:00:00',1);
/*!40000 ALTER TABLE `locacao` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Atualiza_Status_Veiculo` AFTER UPDATE ON `locacao` FOR EACH ROW BEGIN
    UPDATE veiculo
    SET status = 'Indisponível'
    WHERE id_veiculo = NEW.id_veiculo;
END */;;
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

-- Dump completed on 2024-05-28 13:17:14
