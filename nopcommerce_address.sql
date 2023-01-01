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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CountryId` int DEFAULT NULL,
  `StateProvinceId` int DEFAULT NULL,
  `FirstName` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `LastName` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Email` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Company` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `County` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `City` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Address1` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Address2` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ZipPostalCode` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `PhoneNumber` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `FaxNumber` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CustomAttributes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CreatedOnUtc` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_0318CCE12D3601D14FD4102212A47D530180466D` (`CountryId`),
  KEY `IX_4A044E7C99A04BAA49E77199A91412218B24A8C4` (`StateProvinceId`),
  CONSTRAINT `FK_74D54DABCE4697ED8454CF2984F1C8F3460EE9BF` FOREIGN KEY (`CountryId`) REFERENCES `country` (`Id`),
  CONSTRAINT `FK_BF8E79E1F90FEA20DEEFE50550E5CB9052C5D951` FOREIGN KEY (`StateProvinceId`) REFERENCES `stateprovince` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,237,1708,'John','Smith','filiperebelo8@hotmail.com','Nop Solutions Ltd',NULL,'New York','21 West 52nd Street','','10021','12345678','',NULL,'2022-11-27 00:00:06'),(2,237,1708,NULL,NULL,NULL,NULL,NULL,'New York','21 West 52nd Street',NULL,'10021',NULL,NULL,NULL,'2022-11-27 00:01:06'),(4,237,1708,'John','Smith','filiperebelo8@hotmail.com','Nop Solutions Ltd',NULL,'New York','21 West 52nd Street','','10021','12345678','',NULL,'2022-12-02 20:55:24'),(5,237,1708,NULL,NULL,NULL,NULL,NULL,'New York','21 West 52nd Street',NULL,'10021',NULL,NULL,NULL,'2022-12-02 20:55:24'),(6,237,1708,'John','Smith','filiperebelo8@hotmail.com','Nop Solutions Ltd',NULL,'New York','21 West 52nd Street','','10021','12345678','',NULL,'2022-12-02 20:59:39'),(7,237,1708,NULL,NULL,NULL,NULL,NULL,'New York','21 West 52nd Street',NULL,'10021',NULL,NULL,NULL,'2022-12-02 20:59:39'),(8,2,NULL,'John','Smith','filiperebelo8@hotmail.com','adadadada',NULL,'dadda','dadadada','dadadada','321312312','1231312312','321312312312','','2022-12-04 20:51:26'),(9,237,1708,'John','Smith','filiperebelo8@hotmail.com','Nop Solutions Ltd',NULL,'New York','21 West 52nd Street','','10021','12345678','',NULL,'2022-12-05 15:00:19'),(10,237,1708,NULL,NULL,NULL,NULL,NULL,'New York','21 West 52nd Street',NULL,'10021',NULL,NULL,NULL,'2022-12-05 15:00:19'),(11,237,1708,'John','Smith','filiperebelo8@hotmail.com','Nop Solutions Ltd',NULL,'New York','21 West 52nd Street','','10021','12345678','',NULL,'2022-12-05 15:01:54'),(12,237,1708,NULL,NULL,NULL,NULL,NULL,'New York','21 West 52nd Street',NULL,'10021',NULL,NULL,NULL,'2022-12-05 15:01:54'),(13,237,1708,'John','Smith','filiperebelo8@hotmail.com','Nop Solutions Ltd',NULL,'New York','21 West 52nd Street','','10021','12345678','',NULL,'2022-12-05 15:03:20'),(14,237,1708,NULL,NULL,NULL,NULL,NULL,'New York','21 West 52nd Street',NULL,'10021',NULL,NULL,NULL,'2022-12-05 15:03:20'),(15,237,1708,'John','Smith','filiperebelo8@hotmail.com','Nop Solutions Ltd',NULL,'New York','21 West 52nd Street','','10021','12345678','',NULL,'2022-12-05 15:18:49'),(16,237,1708,NULL,NULL,NULL,NULL,NULL,'New York','21 West 52nd Street',NULL,'10021',NULL,NULL,NULL,'2022-12-05 15:18:49'),(17,237,1708,'John','Smith','filiperebelo8@hotmail.com','Nop Solutions Ltd',NULL,'New York','21 West 52nd Street','','10021','12345678','',NULL,'2022-12-06 18:33:51'),(18,237,1708,NULL,NULL,NULL,NULL,NULL,'New York','21 West 52nd Street',NULL,'10021',NULL,NULL,NULL,'2022-12-06 18:33:51'),(19,237,1708,'John','Smith','filiperebelo8@hotmail.com','Nop Solutions Ltd',NULL,'New York','21 West 52nd Street','','10021','12345678','',NULL,'2022-12-11 10:58:23'),(20,237,1708,NULL,NULL,NULL,NULL,NULL,'New York','21 West 52nd Street',NULL,'10021',NULL,NULL,NULL,'2022-12-11 10:58:23'),(21,2,NULL,'John','Smith','filiperebelo8@hotmail.com','adadadada',NULL,'dadda','dadadada','dadadada','321312312','1231312312','321312312312','','2022-12-12 00:40:45'),(22,237,1708,NULL,NULL,NULL,NULL,NULL,'New York','21 West 52nd Street',NULL,'10021',NULL,NULL,NULL,'2022-12-12 00:40:45'),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4825-019',NULL,NULL,NULL,'2022-12-19 00:52:27'),(24,237,1708,'John','Smith','filiperebelo8@hotmail.com','Nop Solutions Ltd',NULL,'New York','21 West 52nd Street','','10021','12345678','',NULL,'2022-12-19 00:53:15'),(25,237,1708,NULL,NULL,NULL,NULL,NULL,'New York','21 West 52nd Street',NULL,'10021',NULL,NULL,NULL,'2022-12-19 00:53:15');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:50:05
