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
-- Table structure for table `permissionrecord_role_mapping`
--

DROP TABLE IF EXISTS `permissionrecord_role_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissionrecord_role_mapping` (
  `PermissionRecord_Id` int NOT NULL,
  `CustomerRole_Id` int NOT NULL,
  PRIMARY KEY (`PermissionRecord_Id`,`CustomerRole_Id`),
  KEY `IX_998C4F8A5D91E3E4FDC76D88B167DE40A75A3259` (`PermissionRecord_Id`),
  KEY `IX_E7B19180C681C3B292B2234BF89F7F3FB62264BF` (`CustomerRole_Id`),
  CONSTRAINT `FK_0D64D72F00FE64AEE0028D9D79117C3549742A4A` FOREIGN KEY (`PermissionRecord_Id`) REFERENCES `permissionrecord` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C53044341A77570833FA078A242CC1D44427DF98` FOREIGN KEY (`CustomerRole_Id`) REFERENCES `customerrole` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionrecord_role_mapping`
--

LOCK TABLES `permissionrecord_role_mapping` WRITE;
/*!40000 ALTER TABLE `permissionrecord_role_mapping` DISABLE KEYS */;
INSERT INTO `permissionrecord_role_mapping` VALUES (1,1),(1,5),(2,1),(3,1),(3,5),(4,1),(5,1),(6,1),(6,5),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(12,5),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(49,2),(49,3),(49,4),(50,1),(50,2),(50,3),(50,4),(51,1),(51,2),(51,3),(51,4),(52,1),(52,2),(52,3),(52,4),(53,1),(54,1);
/*!40000 ALTER TABLE `permissionrecord_role_mapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:49:53
