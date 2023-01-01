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
-- Table structure for table `product_specificationattribute_mapping`
--

DROP TABLE IF EXISTS `product_specificationattribute_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_specificationattribute_mapping` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CustomValue` varchar(4000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ProductId` int NOT NULL,
  `SpecificationAttributeOptionId` int NOT NULL,
  `AttributeTypeId` int NOT NULL,
  `AllowFiltering` tinyint(1) NOT NULL,
  `ShowOnProductPage` tinyint(1) NOT NULL,
  `DisplayOrder` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_6E3598F36D97BFA8D2B1DA6A2D670FA36334106B` (`ProductId`),
  KEY `IX_EE669865DEDFD7AEFB45F2F89EF1E442329254F3` (`SpecificationAttributeOptionId`),
  KEY `IX_PSAM_SpecificationAttributeOptionId_AllowFiltering` (`SpecificationAttributeOptionId`,`AllowFiltering`),
  KEY `IX_PSAM_AllowFiltering` (`AllowFiltering`),
  CONSTRAINT `FK_066E0888389D7DFD2BA85BCB218CDA1F5B577540` FOREIGN KEY (`SpecificationAttributeOptionId`) REFERENCES `specificationattributeoption` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_867782688814CFB630157CD09220E35E6729D479` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_specificationattribute_mapping`
--

LOCK TABLES `product_specificationattribute_mapping` WRITE;
/*!40000 ALTER TABLE `product_specificationattribute_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_specificationattribute_mapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:50:07
