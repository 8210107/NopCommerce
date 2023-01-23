-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nopcommerce
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `picture` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MimeType` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SeoFilename` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AltAttribute` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `TitleAttribute` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `IsNew` tinyint(1) NOT NULL,
  `VirtualPath` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES (3,'image/png','sapatilha1',NULL,NULL,0,NULL),(8,'image/png','sapatilhas-air-force-1',NULL,NULL,0,NULL),(9,'image/png','sapatilhas-air-force-1',NULL,NULL,0,NULL),(10,'image/png','sapatilhas-air-force-1',NULL,NULL,0,NULL),(12,'image/png','nike-air-force-branca',NULL,NULL,0,NULL),(13,'image/jpeg','adidas-stan-smith',NULL,NULL,0,NULL),(14,'image/jpeg','new-balance-550',NULL,NULL,0,NULL),(18,'image/png','casual',NULL,NULL,0,NULL),(20,'image/jpeg','basketbol',NULL,NULL,0,NULL),(21,'image/png','basquetebol',NULL,NULL,0,NULL),(22,'image/png','skate',NULL,NULL,0,NULL),(23,'image/png','vans',NULL,NULL,0,NULL),(24,'image/png','homem',NULL,NULL,0,NULL),(25,'image/png','mulher',NULL,NULL,0,NULL),(26,'image/png','basquetebol',NULL,NULL,0,NULL),(27,'image/png','casual',NULL,NULL,0,NULL),(28,'image/png','skate',NULL,NULL,0,NULL),(29,'image/jpeg','tenis-vans-x-one-piece-skate-old-skool',NULL,NULL,0,NULL),(30,'image/webp','adidas-gazelle',NULL,NULL,0,NULL),(31,'image/png','corrida',NULL,NULL,0,NULL),(34,'image/jpeg','adidas-adizero-adios-7',NULL,NULL,0,NULL),(36,'image/png','adirrun',NULL,NULL,0,NULL),(37,'image/png','adirun',NULL,NULL,0,NULL),(38,'image/png','adidas-ultraboost-22',NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:50:05
