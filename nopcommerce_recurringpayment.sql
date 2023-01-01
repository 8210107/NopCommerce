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
-- Table structure for table `recurringpayment`
--

DROP TABLE IF EXISTS `recurringpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurringpayment` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `InitialOrderId` int NOT NULL,
  `CycleLength` int NOT NULL,
  `CyclePeriodId` int NOT NULL,
  `TotalCycles` int NOT NULL,
  `StartDateUtc` datetime NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `LastPaymentFailed` tinyint(1) NOT NULL,
  `Deleted` tinyint(1) NOT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_BE0E46A4D4C7979A25335958B1321179F95A9263` (`InitialOrderId`),
  CONSTRAINT `FK_1AA4E6EB7D08262CA4702B6F3693FAF24973E60A` FOREIGN KEY (`InitialOrderId`) REFERENCES `order` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurringpayment`
--

LOCK TABLES `recurringpayment` WRITE;
/*!40000 ALTER TABLE `recurringpayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurringpayment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:50:04
