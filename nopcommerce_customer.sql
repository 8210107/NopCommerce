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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Email` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `EmailToRevalidate` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `SystemName` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `BillingAddress_Id` int DEFAULT NULL,
  `ShippingAddress_Id` int DEFAULT NULL,
  `CustomerGuid` char(36) NOT NULL,
  `AdminComment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `IsTaxExempt` tinyint(1) NOT NULL,
  `AffiliateId` int NOT NULL,
  `VendorId` int NOT NULL,
  `HasShoppingCartItems` tinyint(1) NOT NULL,
  `RequireReLogin` tinyint(1) NOT NULL,
  `FailedLoginAttempts` int NOT NULL,
  `CannotLoginUntilDateUtc` datetime DEFAULT NULL,
  `Active` tinyint(1) NOT NULL,
  `Deleted` tinyint(1) NOT NULL,
  `IsSystemAccount` tinyint(1) NOT NULL,
  `LastIpAddress` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CreatedOnUtc` datetime NOT NULL,
  `LastLoginDateUtc` datetime DEFAULT NULL,
  `LastActivityDateUtc` datetime NOT NULL,
  `RegisteredInStoreId` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_79820CBB6A38BC446E7FC52E7582A458F3A2AC75` (`BillingAddress_Id`),
  KEY `IX_5FD07AEA757DD98D3E04CA86906517868F44A287` (`ShippingAddress_Id`),
  KEY `IX_Customer_Username` (`Username`),
  KEY `IX_Customer_SystemName` (`SystemName`),
  KEY `IX_Customer_Email` (`Email`),
  KEY `IX_Customer_CustomerGuid` (`CustomerGuid`),
  KEY `IX_Customer_CreatedOnUtc` (`CreatedOnUtc` DESC),
  CONSTRAINT `FK_4F620FCCDCB6197FB2B540B35EEE46515DE307E3` FOREIGN KEY (`ShippingAddress_Id`) REFERENCES `address` (`Id`),
  CONSTRAINT `FK_572D629F64F2591019291A15D1191B6419D3D7B4` FOREIGN KEY (`BillingAddress_Id`) REFERENCES `address` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'filiperebelo8@hotmail.com','filiperebelo8@hotmail.com',NULL,NULL,1,8,'521cdca2-902d-4d5a-8441-135e4aaa888d',NULL,0,0,0,0,0,0,NULL,1,0,0,'127.0.0.1','2022-11-27 00:00:06','2022-12-19 00:48:30','2022-12-30 18:34:53',1),(2,NULL,'builtin@search_engine_record.com',NULL,'SearchEngine',NULL,NULL,'68faa2bb-de27-40a2-8fbd-32b137c75e40','Built-in system guest record used for requests from search engines.',0,0,0,0,0,0,NULL,1,0,1,NULL,'2022-11-27 00:00:07',NULL,'2022-11-27 00:00:07',1),(3,NULL,'builtin@background-task-record.com',NULL,'BackgroundTask',NULL,NULL,'d2c4d4bc-0ed6-4752-bef8-20e525a98196','Built-in system record used for background tasks.',0,0,0,0,0,0,NULL,1,0,1,NULL,'2022-11-27 00:00:07',NULL,'2022-11-27 00:00:07',1),(7,NULL,'qqlcoisa@gmail.com',NULL,NULL,NULL,NULL,'78333248-394a-4811-9e85-62e69305bcff',NULL,0,0,0,0,0,1,NULL,1,0,0,NULL,'2022-11-27 19:18:25',NULL,'2022-11-27 19:18:25',1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
