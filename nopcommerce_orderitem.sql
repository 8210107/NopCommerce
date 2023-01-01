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
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `OrderId` int NOT NULL,
  `ProductId` int NOT NULL,
  `OrderItemGuid` char(36) NOT NULL,
  `Quantity` int NOT NULL,
  `UnitPriceInclTax` decimal(18,4) NOT NULL,
  `UnitPriceExclTax` decimal(18,4) NOT NULL,
  `PriceInclTax` decimal(18,4) NOT NULL,
  `PriceExclTax` decimal(18,4) NOT NULL,
  `DiscountAmountInclTax` decimal(18,4) NOT NULL,
  `DiscountAmountExclTax` decimal(18,4) NOT NULL,
  `OriginalProductCost` decimal(18,4) NOT NULL,
  `AttributeDescription` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `AttributesXml` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `DownloadCount` int NOT NULL,
  `IsDownloadActivated` tinyint(1) NOT NULL,
  `LicenseDownloadId` int DEFAULT NULL,
  `ItemWeight` decimal(18,4) DEFAULT NULL,
  `RentalStartDateUtc` datetime DEFAULT NULL,
  `RentalEndDateUtc` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_01DC8234EFFE848F4BACFA16F95AA7A4EF77375D` (`OrderId`),
  KEY `IX_25727F4EB701F202F56ABC70D9470E7FB2F2D00B` (`ProductId`),
  CONSTRAINT `FK_3F98C065AAC22F3BC70A69B862886677F0A7104B` FOREIGN KEY (`OrderId`) REFERENCES `order` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AC4D982F947AEF7F6B0F4170F1A85A2E086EAD32` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (1,1,1,'04b1c182-afd6-4c9f-9297-250bf09d585a',2,10.0000,10.0000,20.0000,20.0000,0.0000,0.0000,0.0000,'','',0,0,0,0.0000,NULL,NULL),(2,2,1,'d7f9ef9c-8700-487d-9bcb-8aa0f791c39f',2,10.0000,10.0000,20.0000,20.0000,0.0000,0.0000,0.0000,'','',0,0,0,0.0000,NULL,NULL),(3,3,1,'a2e64448-b931-483d-85c5-fb1f196b80cd',1,10.0000,10.0000,10.0000,10.0000,0.0000,0.0000,0.0000,'','',0,0,0,0.0000,NULL,NULL),(4,4,1,'ba84c322-cf7c-4a31-afb6-c725a67fbde1',1,10.0000,10.0000,10.0000,10.0000,0.0000,0.0000,0.0000,'','',0,0,0,0.0000,NULL,NULL),(5,5,2,'ce930c85-7074-4582-aba7-25156a4c6519',1,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,'','',0,0,0,0.0000,NULL,NULL),(6,6,1,'7fd0c991-e45e-4c7b-b4a1-824c932651da',1,10.0000,10.0000,10.0000,10.0000,0.0000,0.0000,0.0000,'','',0,0,0,0.0000,NULL,NULL),(7,6,1,'85c66295-fc4b-46b7-8650-27a9931f085c',1,10.0000,10.0000,10.0000,10.0000,0.0000,0.0000,0.0000,'sizee: M','<Attributes><ProductAttribute ID=\"1\"><ProductAttributeValue><Value>1</Value></ProductAttributeValue></ProductAttribute></Attributes>',0,0,0,0.0000,NULL,NULL),(8,7,1,'ecc53b0c-6a10-42e6-bec2-1c81ecceb09c',1,10.0000,10.0000,10.0000,10.0000,0.0000,0.0000,0.0000,'sizee: S','<Attributes><ProductAttribute ID=\"1\"><ProductAttributeValue><Value>2</Value></ProductAttributeValue></ProductAttribute></Attributes>',0,0,0,0.0000,NULL,NULL),(9,8,1,'038cf6f8-a7c4-4fd9-ae57-20cce44e057d',1,10.0000,10.0000,10.0000,10.0000,0.0000,0.0000,0.0000,'sizee: M','<Attributes><ProductAttribute ID=\"1\"><ProductAttributeValue><Value>1</Value></ProductAttributeValue></ProductAttribute></Attributes>',0,0,0,0.0000,NULL,NULL),(10,9,8,'1c98e466-578c-45af-a21c-e966d41ad96e',1,85.0000,85.0000,85.0000,85.0000,0.0000,0.0000,0.0000,'sizee: 40','<Attributes><ProductAttribute ID=\"6\"><ProductAttributeValue><Value>52</Value></ProductAttributeValue></ProductAttribute></Attributes>',0,0,0,0.0000,NULL,NULL),(11,9,4,'303770cd-6ae6-4706-a373-41f2e840472d',1,110.0000,110.0000,110.0000,110.0000,0.0000,0.0000,0.0000,'sizee: 40','<Attributes><ProductAttribute ID=\"3\"><ProductAttributeValue><Value>19</Value></ProductAttributeValue></ProductAttribute></Attributes>',0,0,0,0.0000,NULL,NULL),(12,10,4,'ae1cf3c6-564f-4421-91fa-0a2a751aef72',1,110.0000,110.0000,110.0000,110.0000,0.0000,0.0000,0.0000,'sizee: 40','<Attributes><ProductAttribute ID=\"3\"><ProductAttributeValue><Value>19</Value></ProductAttributeValue></ProductAttribute></Attributes>',0,0,0,0.0000,NULL,NULL);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:49:50
