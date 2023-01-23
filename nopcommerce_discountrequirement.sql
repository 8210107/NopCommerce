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
-- Table structure for table `discountrequirement`
--

DROP TABLE IF EXISTS `discountrequirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discountrequirement` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `DiscountId` int NOT NULL,
  `ParentId` int DEFAULT NULL,
  `DiscountRequirementRuleSystemName` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `InteractionTypeId` int DEFAULT NULL,
  `IsGroup` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_B38979C2C3C47F2E4B698BDA6D236ECB9332F896` (`DiscountId`),
  KEY `IX_D506930CC015664811ECD666E873DB3A56442AC7` (`ParentId`),
  CONSTRAINT `FK_CC430D8FE7C0BA15E476A441BE81D06D70036F64` FOREIGN KEY (`DiscountId`) REFERENCES `discount` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_FC331213C8E673A5CE279CCA6FC0EA1A866F84DA` FOREIGN KEY (`ParentId`) REFERENCES `discountrequirement` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discountrequirement`
--

LOCK TABLES `discountrequirement` WRITE;
/*!40000 ALTER TABLE `discountrequirement` DISABLE KEYS */;
/*!40000 ALTER TABLE `discountrequirement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:50:01
