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
-- Table structure for table `product_manufacturer_mapping`
--

DROP TABLE IF EXISTS `product_manufacturer_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_manufacturer_mapping` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ManufacturerId` int NOT NULL,
  `ProductId` int NOT NULL,
  `IsFeaturedProduct` tinyint(1) NOT NULL,
  `DisplayOrder` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_DABA4762DFE5DDE81827BC9AEBC96E0930755460` (`ManufacturerId`),
  KEY `IX_4DE2FF87C02296F96D7DA49634AE6719C03E5E06` (`ProductId`),
  KEY `IX_Product_Manufacturer_Mapping_IsFeaturedProduct` (`IsFeaturedProduct`),
  KEY `IX_PMM_Product_and_Manufacturer` (`ManufacturerId`,`ProductId`),
  KEY `IX_PMM_ProductId_Extended` (`ProductId`,`IsFeaturedProduct`),
  CONSTRAINT `FK_18E35C063DE3F9DD5BDF711CE1519DD90E39B63C` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_80E3F417D8B858D1DE96A4A7A04DCE0700F8B9A3` FOREIGN KEY (`ManufacturerId`) REFERENCES `manufacturer` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_manufacturer_mapping`
--

LOCK TABLES `product_manufacturer_mapping` WRITE;
/*!40000 ALTER TABLE `product_manufacturer_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_manufacturer_mapping` ENABLE KEYS */;
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
