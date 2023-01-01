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
-- Table structure for table `productattributevalue`
--

DROP TABLE IF EXISTS `productattributevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productattributevalue` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ColorSquaresRgb` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ProductAttributeMappingId` int NOT NULL,
  `AttributeValueTypeId` int NOT NULL,
  `AssociatedProductId` int NOT NULL,
  `ImageSquaresPictureId` int NOT NULL,
  `PriceAdjustment` decimal(18,4) NOT NULL,
  `PriceAdjustmentUsePercentage` tinyint(1) NOT NULL,
  `WeightAdjustment` decimal(18,4) NOT NULL,
  `Cost` decimal(18,4) NOT NULL,
  `CustomerEntersQty` tinyint(1) NOT NULL,
  `Quantity` int NOT NULL,
  `IsPreSelected` tinyint(1) NOT NULL,
  `DisplayOrder` int NOT NULL,
  `PictureId` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_C8FD7E41BDF864606B567EA54EAAB6219686F356` (`ProductAttributeMappingId`),
  KEY `IX_ProductAttributeValue_ProductAttributeMappingId_DisplayOrder` (`ProductAttributeMappingId`,`DisplayOrder`),
  CONSTRAINT `FK_8E53C9EE981897428A0481B22AB19DC3EA908F05` FOREIGN KEY (`ProductAttributeMappingId`) REFERENCES `product_productattribute_mapping` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productattributevalue`
--

LOCK TABLES `productattributevalue` WRITE;
/*!40000 ALTER TABLE `productattributevalue` DISABLE KEYS */;
INSERT INTO `productattributevalue` VALUES (1,'M',NULL,1,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,0,0),(2,'S',NULL,1,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,1,0),(3,'XL',NULL,1,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,2,0),(4,'36',NULL,2,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,0,0),(5,'37',NULL,2,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,1,0),(6,'38',NULL,2,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,2,0),(7,'39',NULL,2,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,3,0),(8,'40',NULL,2,0,0,0,0.0000,0,0.0000,0.0000,0,0,1,4,0),(9,'41',NULL,2,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,5,0),(10,'42',NULL,2,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,6,0),(11,'43',NULL,2,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,7,0),(12,'44',NULL,2,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,8,0),(13,'45',NULL,2,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,9,0),(14,'46',NULL,2,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,10,0),(15,'36',NULL,3,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,0,0),(16,'37',NULL,3,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,1,0),(17,'38',NULL,3,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,2,0),(18,'39',NULL,3,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,3,0),(19,'40',NULL,3,0,0,0,0.0000,0,0.0000,0.0000,0,0,1,4,0),(20,'41',NULL,3,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,5,0),(21,'42',NULL,3,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,6,0),(22,'43',NULL,3,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,7,0),(23,'44',NULL,3,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,8,0),(24,'45',NULL,3,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,9,0),(25,'46',NULL,3,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,10,0),(26,'36',NULL,4,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,0,0),(27,'37',NULL,4,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,1,0),(28,'38',NULL,4,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,2,0),(29,'39',NULL,4,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,3,0),(30,'40',NULL,4,0,0,0,0.0000,0,0.0000,0.0000,0,0,1,4,0),(31,'41',NULL,4,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,5,0),(32,'42',NULL,4,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,6,0),(33,'43',NULL,4,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,7,0),(34,'44',NULL,4,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,8,0),(35,'45',NULL,4,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,9,0),(36,'46',NULL,4,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,10,0),(37,'36',NULL,5,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,0,0),(38,'37',NULL,5,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,1,0),(39,'38',NULL,5,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,2,0),(40,'39',NULL,5,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,3,0),(41,'40',NULL,5,0,0,0,0.0000,0,0.0000,0.0000,0,0,1,4,0),(42,'41',NULL,5,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,5,0),(43,'42',NULL,5,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,6,0),(44,'43',NULL,5,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,7,0),(45,'44',NULL,5,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,8,0),(46,'45',NULL,5,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,9,0),(47,'46',NULL,5,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,10,0),(48,'36',NULL,6,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,0,0),(49,'37',NULL,6,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,1,0),(50,'38',NULL,6,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,2,0),(51,'39',NULL,6,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,3,0),(52,'40',NULL,6,0,0,0,0.0000,0,0.0000,0.0000,0,0,1,4,0),(53,'41',NULL,6,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,5,0),(54,'42',NULL,6,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,6,0),(55,'43',NULL,6,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,7,0),(56,'44',NULL,6,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,8,0),(57,'45',NULL,6,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,9,0),(58,'46',NULL,6,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,10,0),(59,'36',NULL,7,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,0,0),(60,'37',NULL,7,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,1,0),(61,'38',NULL,7,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,2,0),(62,'39',NULL,7,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,3,0),(63,'40',NULL,7,0,0,0,0.0000,0,0.0000,0.0000,0,0,1,4,0),(64,'41',NULL,7,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,5,0),(65,'42',NULL,7,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,6,0),(66,'43',NULL,7,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,7,0),(67,'44',NULL,7,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,8,0),(68,'45',NULL,7,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,9,0),(69,'46',NULL,7,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,10,0),(70,'36',NULL,8,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,0,0),(71,'37',NULL,8,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,1,0),(72,'38',NULL,8,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,2,0),(73,'39',NULL,8,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,3,0),(74,'40',NULL,8,0,0,0,0.0000,0,0.0000,0.0000,0,0,1,4,0),(75,'41',NULL,8,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,5,0),(76,'42',NULL,8,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,6,0),(77,'43',NULL,8,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,7,0),(78,'44',NULL,8,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,8,0),(79,'45',NULL,8,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,9,0),(80,'46',NULL,8,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,10,0),(81,'36',NULL,9,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,0,0),(82,'37',NULL,9,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,1,0),(83,'38',NULL,9,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,2,0),(84,'39',NULL,9,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,3,0),(85,'40',NULL,9,0,0,0,0.0000,0,0.0000,0.0000,0,0,1,4,0),(86,'41',NULL,9,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,5,0),(87,'42',NULL,9,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,6,0),(88,'43',NULL,9,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,7,0),(89,'44',NULL,9,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,8,0),(90,'45',NULL,9,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,9,0),(91,'46',NULL,9,0,0,0,0.0000,0,0.0000,0.0000,0,0,0,10,0);
/*!40000 ALTER TABLE `productattributevalue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:49:52
