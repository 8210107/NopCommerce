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
-- Table structure for table `productreview_reviewtype_mapping`
--

DROP TABLE IF EXISTS `productreview_reviewtype_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productreview_reviewtype_mapping` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ProductReviewId` int NOT NULL,
  `ReviewTypeId` int NOT NULL,
  `Rating` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_E6BD958D6D6A3B595249B1F2FB2836558198DBD6` (`ProductReviewId`),
  KEY `IX_A80FB7B7F056FCA6FF7011C07E1DF0DB21DD2723` (`ReviewTypeId`),
  CONSTRAINT `FK_9F3C938A74BB9514AF74BE9BAD599F8309F47C5D` FOREIGN KEY (`ProductReviewId`) REFERENCES `productreview` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E8B0BE63569CE2E60AE1B1E50FE527E0E195C439` FOREIGN KEY (`ReviewTypeId`) REFERENCES `reviewtype` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productreview_reviewtype_mapping`
--

LOCK TABLES `productreview_reviewtype_mapping` WRITE;
/*!40000 ALTER TABLE `productreview_reviewtype_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `productreview_reviewtype_mapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:50:10
