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
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CurrencyCode` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DisplayLocale` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CustomFormatting` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Rate` decimal(18,4) NOT NULL,
  `LimitedToStores` tinyint(1) NOT NULL,
  `Published` tinyint(1) NOT NULL,
  `DisplayOrder` int NOT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  `UpdatedOnUtc` datetime NOT NULL,
  `RoundingTypeId` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Currency_DisplayOrder` (`DisplayOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'US Dollar','USD','en-US','',1.0000,0,1,0,'2022-11-26 23:59:58','2022-11-26 23:59:58',0),(2,'Australian Dollar','AUD','en-AU','',1.3400,0,0,2,'2022-11-26 23:59:58','2022-11-26 23:59:58',0),(3,'British Pound','GBP','en-GB','',0.7500,0,0,3,'2022-11-26 23:59:58','2022-11-26 23:59:58',0),(4,'Canadian Dollar','CAD','en-CA','',1.3200,0,0,4,'2022-11-26 23:59:58','2022-11-26 23:59:58',0),(5,'Chinese Yuan Renminbi','CNY','zh-CN','',6.4300,0,0,5,'2022-11-26 23:59:58','2022-11-26 23:59:58',0),(6,'Euro','EUR','','€0.00',0.8600,0,0,6,'2022-11-26 23:59:58','2022-11-26 23:59:58',0),(7,'Hong Kong Dollar','HKD','zh-HK','',7.8400,0,0,7,'2022-11-26 23:59:58','2022-11-26 23:59:58',0),(8,'Japanese Yen','JPY','ja-JP','',110.4500,0,0,8,'2022-11-26 23:59:58','2022-11-26 23:59:58',0),(9,'Russian Rouble','RUB','ru-RU','',63.2500,0,0,9,'2022-11-26 23:59:58','2022-11-26 23:59:58',0),(10,'Swedish Krona','SEK','sv-SE','',8.8000,0,0,10,'2022-11-26 23:59:58','2022-11-26 23:59:58',60),(11,'Indian Rupee','INR','en-IN','',68.0300,0,0,12,'2022-11-26 23:59:58','2022-11-26 23:59:58',0);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:49:57
