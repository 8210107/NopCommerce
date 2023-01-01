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
-- Table structure for table `predefinedproductattributevalue`
--

DROP TABLE IF EXISTS `predefinedproductattributevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `predefinedproductattributevalue` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ProductAttributeId` int NOT NULL,
  `PriceAdjustment` decimal(18,4) NOT NULL,
  `PriceAdjustmentUsePercentage` tinyint(1) NOT NULL,
  `WeightAdjustment` decimal(18,4) NOT NULL,
  `Cost` decimal(18,4) NOT NULL,
  `IsPreSelected` tinyint(1) NOT NULL,
  `DisplayOrder` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_0B8B35187AF308E8F9D8B2E28B3DA957BE85A5DB` (`ProductAttributeId`),
  CONSTRAINT `FK_0C60532AE4C442823711F67F98C40D27BCA2F59C` FOREIGN KEY (`ProductAttributeId`) REFERENCES `productattribute` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predefinedproductattributevalue`
--

LOCK TABLES `predefinedproductattributevalue` WRITE;
/*!40000 ALTER TABLE `predefinedproductattributevalue` DISABLE KEYS */;
INSERT INTO `predefinedproductattributevalue` VALUES (1,'37',1,0.0000,0,0.0000,0.0000,0,1),(2,'36',1,0.0000,0,0.0000,0.0000,0,0),(3,'38',1,0.0000,0,0.0000,0.0000,0,2),(4,'39',1,0.0000,0,0.0000,0.0000,0,3),(5,'40',1,0.0000,0,0.0000,0.0000,1,4),(6,'41',1,0.0000,0,0.0000,0.0000,0,5),(7,'42',1,0.0000,0,0.0000,0.0000,0,6),(8,'43',1,0.0000,0,0.0000,0.0000,0,7),(9,'44',1,0.0000,0,0.0000,0.0000,0,8),(10,'45',1,0.0000,0,0.0000,0.0000,0,9),(11,'46',1,0.0000,0,0.0000,0.0000,0,10);
/*!40000 ALTER TABLE `predefinedproductattributevalue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:50:02
