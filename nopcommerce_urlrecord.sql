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
-- Table structure for table `urlrecord`
--

DROP TABLE IF EXISTS `urlrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `urlrecord` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `EntityName` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Slug` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `EntityId` int NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `LanguageId` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_UrlRecord_Slug` (`Slug`),
  KEY `IX_UrlRecord_Custom_1` (`EntityId`,`EntityName`,`LanguageId`,`IsActive`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urlrecord`
--

LOCK TABLES `urlrecord` WRITE;
/*!40000 ALTER TABLE `urlrecord` DISABLE KEYS */;
INSERT INTO `urlrecord` VALUES (1,'Topic','about-us',1,1,0),(2,'Topic','checkoutasguestorregister',2,1,0),(3,'Topic','conditions-of-use',3,1,0),(4,'Topic','contactus',4,1,0),(5,'Topic','forums',5,1,0),(6,'Topic','welcome-to-our-store',6,1,0),(7,'Topic','about-login-registration',7,1,0),(8,'Topic','privacy-notice',8,1,0),(9,'Topic','pagenotfound',9,1,0),(10,'Topic','shipping-returns',10,1,0),(11,'Topic','applyvendor',11,1,0),(12,'Topic','terms-of-services-for-vendors',12,1,0),(13,'Product','sapatilha1',1,1,0),(14,'Category','teste',1,1,0),(15,'Product','teste-2',2,1,0),(16,'Product','asfdjdovg',3,1,0),(17,'Product','teste-3',4,1,0),(18,'Product','nike-air-force-branca',5,1,0),(19,'Category','basquetebol',2,1,0),(20,'Category','casual',3,1,0),(21,'Product','new-balance-550',6,1,0),(22,'Category','skate',4,1,0),(23,'Product','vans',7,1,0),(24,'Category','teste-4',5,1,0),(25,'Category','mulher',6,1,0),(26,'Category','basquetebol-2',7,1,0),(27,'Category','casual-2',8,1,0),(28,'Category','skate-2',9,1,0),(29,'Product','ténis-vans-x-one-piece-skate-old-skool',8,1,0),(30,'Product','adidas-gazelle',9,1,0),(31,'Category','corrida',10,1,0),(32,'Product','adidas-ultraboost-22',10,1,0),(33,'Product','adidas-adizero-adios-7',11,1,0);
/*!40000 ALTER TABLE `urlrecord` ENABLE KEYS */;
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
