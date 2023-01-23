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
-- Table structure for table `customer_customerrole_mapping`
--

DROP TABLE IF EXISTS `customer_customerrole_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_customerrole_mapping` (
  `Customer_Id` int NOT NULL,
  `CustomerRole_Id` int NOT NULL,
  PRIMARY KEY (`Customer_Id`,`CustomerRole_Id`),
  KEY `IX_09E9645547A7290962418327EE12D590BC1995F5` (`Customer_Id`),
  KEY `IX_E0FD9013E1AA40ED714BD90CE38AA3C1D57484E5` (`CustomerRole_Id`),
  CONSTRAINT `FK_3AF7ACA7000EF570E199461C6C515E70C39F4552` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_7504842FB70DA1F50CB3020CCAA1A16761844930` FOREIGN KEY (`CustomerRole_Id`) REFERENCES `customerrole` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_customerrole_mapping`
--

LOCK TABLES `customer_customerrole_mapping` WRITE;
/*!40000 ALTER TABLE `customer_customerrole_mapping` DISABLE KEYS */;
INSERT INTO `customer_customerrole_mapping` VALUES (1,1),(1,2),(1,3),(2,4),(3,4),(7,1),(7,3);
/*!40000 ALTER TABLE `customer_customerrole_mapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:50:06
