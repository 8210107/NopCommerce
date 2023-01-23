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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MetaKeywords` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MetaTitle` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PageSizeOptions` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CategoryTemplateId` int NOT NULL,
  `MetaDescription` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ParentCategoryId` int NOT NULL,
  `PictureId` int NOT NULL,
  `PageSize` int NOT NULL,
  `AllowCustomersToSelectPageSize` tinyint(1) NOT NULL,
  `ShowOnHomepage` tinyint(1) NOT NULL,
  `IncludeInTopMenu` tinyint(1) NOT NULL,
  `SubjectToAcl` tinyint(1) NOT NULL,
  `LimitedToStores` tinyint(1) NOT NULL,
  `Published` tinyint(1) NOT NULL,
  `Deleted` tinyint(1) NOT NULL,
  `DisplayOrder` int NOT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  `UpdatedOnUtc` datetime NOT NULL,
  `PriceRangeFiltering` tinyint(1) NOT NULL,
  `PriceFrom` decimal(18,4) NOT NULL,
  `PriceTo` decimal(18,4) NOT NULL,
  `ManuallyPriceRange` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Category_ParentCategoryId` (`ParentCategoryId`),
  KEY `IX_Category_LimitedToStores` (`LimitedToStores`),
  KEY `IX_Category_DisplayOrder` (`DisplayOrder`),
  KEY `IX_Category_Deleted_Extended` (`Deleted`),
  KEY `IX_Category_SubjectToAcl` (`SubjectToAcl`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'teste',NULL,NULL,'6, 3, 9','<p>teste</p>',1,NULL,0,0,6,1,0,1,0,0,1,1,0,'2022-11-27 00:13:29','2022-11-27 00:13:29',1,0.0000,10000.0000,1),(2,'Basquetebol',NULL,NULL,'6, 3, 9',NULL,1,NULL,5,21,6,1,0,1,0,0,1,0,0,'2022-12-11 23:12:49','2022-12-12 00:08:42',1,0.0000,10000.0000,1),(3,'Casual',NULL,NULL,'6, 3, 9',NULL,1,NULL,5,18,6,1,0,1,0,0,1,0,0,'2022-12-11 23:19:42','2022-12-12 00:09:07',1,0.0000,10000.0000,1),(4,'Skate',NULL,NULL,'6, 3, 9',NULL,1,NULL,5,22,6,1,0,1,0,0,1,0,0,'2022-12-11 23:56:22','2022-12-12 00:08:30',1,0.0000,10000.0000,1),(5,'Homem',NULL,NULL,'6, 3, 9',NULL,1,NULL,0,24,6,1,1,1,0,0,1,0,0,'2022-12-12 00:01:43','2022-12-12 00:12:52',1,0.0000,10000.0000,1),(6,'Mulher',NULL,NULL,'6, 3, 9',NULL,1,NULL,0,25,6,1,1,1,0,0,1,0,0,'2022-12-12 00:05:47','2022-12-12 00:13:02',1,0.0000,10000.0000,1),(7,'Basquetebol',NULL,NULL,'6, 3, 9',NULL,1,NULL,6,26,6,1,0,1,0,0,1,0,0,'2022-12-12 00:06:22','2022-12-12 00:14:31',1,0.0000,10000.0000,1),(8,'Casual',NULL,NULL,'6, 3, 9',NULL,1,NULL,6,27,6,1,0,1,0,0,1,0,0,'2022-12-12 00:06:36','2022-12-12 00:14:47',1,0.0000,10000.0000,1),(9,'Skate',NULL,NULL,'6, 3, 9',NULL,1,NULL,6,28,6,1,0,1,0,0,1,0,0,'2022-12-12 00:06:57','2022-12-12 00:14:56',1,0.0000,10000.0000,1),(10,'Corrida',NULL,NULL,'6, 3, 9',NULL,1,NULL,5,31,6,1,0,1,0,0,1,0,0,'2022-12-12 00:53:36','2022-12-12 01:06:51',1,0.0000,10000.0000,1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:50:04
