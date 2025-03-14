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
-- Table structure for table `tarefas`
--

DROP TABLE IF EXISTS `tarefas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarefas` (
  `cod_tarefa` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cod_tarefa`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefas`
--

LOCK TABLES `tarefas` WRITE;
/*!40000 ALTER TABLE `tarefas` DISABLE KEYS */;
INSERT INTO `tarefas` VALUES (1,'mattis velit','in faucibus','2025-03-14 20:28:34'),(2,'est mauris,','Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero.','2025-03-14 20:28:34'),(3,'Nullam scelerisque','luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae','2025-03-14 20:28:34'),(4,'luctus vulputate,','pede. Praesent eu dui. Cum sociis natoque penatibus','2025-03-14 20:28:34'),(5,'ornare, facilisis','justo sit amet nulla. Donec non justo. Proin non massa non','2025-03-14 20:28:34'),(6,'eu turpis.','non enim commodo hendrerit. Donec porttitor tellus non','2025-03-14 20:28:34'),(7,'leo. Morbi','suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in','2025-03-14 20:28:34'),(8,'dui quis','enim. Mauris quis turpis vitae purus gravida','2025-03-14 20:28:34'),(9,'Quisque ac','Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris','2025-03-14 20:28:34'),(10,'luctus sit','justo faucibus lectus,','2025-03-14 20:28:34'),(11,'molestie. Sed','magna. Ut tincidunt','2025-03-14 20:28:38'),(12,'lectus, a','Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet,','2025-03-14 20:28:38'),(13,'non, feugiat','vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis','2025-03-14 20:28:38'),(14,'a, dui.','Curae Phasellus ornare. Fusce','2025-03-14 20:28:38'),(15,'vestibulum lorem,','tempor bibendum. Donec felis','2025-03-14 20:28:38'),(16,'magnis dis','Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla','2025-03-14 20:28:38'),(17,'sit amet','Duis gravida. Praesent eu nulla','2025-03-14 20:28:38'),(18,'aliquet diam.','montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam','2025-03-14 20:28:38'),(19,'ac ipsum.','tristique ac, eleifend','2025-03-14 20:28:38'),(20,'Donec nibh.','est, congue a, aliquet vel, vulputate eu, odio. Phasellus at','2025-03-14 20:28:38'),(21,'molestie dapibus','semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend.','2025-03-14 20:28:41'),(22,'ultricies dignissim','molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper,','2025-03-14 20:28:41'),(23,'pede. Suspendisse','pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum','2025-03-14 20:28:41'),(24,'consectetuer euismod','at pede. Cras','2025-03-14 20:28:41'),(25,'cursus vestibulum.','lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a','2025-03-14 20:28:41'),(26,'enim, gravida','turpis. Aliquam adipiscing lobortis risus.','2025-03-14 20:28:41'),(27,'amet, faucibus','sem ut','2025-03-14 20:28:41'),(28,'Vivamus sit','Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc','2025-03-14 20:28:41'),(29,'nonummy ipsum','Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada','2025-03-14 20:28:41'),(30,'felis, adipiscing','elit fermentum risus, at fringilla','2025-03-14 20:28:41'),(31,'vitae, sodales','magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu','2025-03-14 20:28:44'),(32,'orci. Ut','amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna','2025-03-14 20:28:44'),(33,'scelerisque neque.','nisi. Cum sociis natoque penatibus et magnis dis parturient','2025-03-14 20:28:44'),(34,'ut nisi','Fusce aliquam,','2025-03-14 20:28:44'),(35,'magna. Suspendisse','facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus','2025-03-14 20:28:44'),(36,'dolor sit','eu arcu. Morbi','2025-03-14 20:28:44'),(37,'commodo at,','ut, molestie in,','2025-03-14 20:28:44'),(38,'Fusce dolor','mauris, aliquam eu, accumsan sed, facilisis vitae, orci.','2025-03-14 20:28:44'),(39,'quam quis','ac mattis','2025-03-14 20:28:44'),(40,'elit fermentum','elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna','2025-03-14 20:28:44'),(41,'varius ultrices,','feugiat placerat','2025-03-14 20:28:47'),(42,'egestas blandit.','magna sed dui. Fusce aliquam, enim nec tempus','2025-03-14 20:28:47'),(43,'id magna','egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra','2025-03-14 20:28:47'),(44,'eu turpis.','enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa.','2025-03-14 20:28:47'),(45,'et risus.','ultrices sit amet, risus. Donec nibh enim, gravida sit','2025-03-14 20:28:47'),(46,'velit. Cras','Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas','2025-03-14 20:28:47'),(47,'ac mattis','imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis,','2025-03-14 20:28:47'),(48,'auctor velit.','metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse','2025-03-14 20:28:47'),(49,'Integer urna.','fermentum','2025-03-14 20:28:47'),(50,'mauris id','magna nec quam. Curabitur vel lectus.','2025-03-14 20:28:47');
/*!40000 ALTER TABLE `tarefas` ENABLE KEYS */;
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
