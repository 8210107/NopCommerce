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
-- Table structure for table `giftcard`
--

DROP TABLE IF EXISTS `giftcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giftcard` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `PurchasedWithOrderItemId` int DEFAULT NULL,
  `GiftCardTypeId` int NOT NULL,
  `Amount` decimal(18,4) NOT NULL,
  `IsGiftCardActivated` tinyint(1) NOT NULL,
  `GiftCardCouponCode` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `RecipientName` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `RecipientEmail` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `SenderName` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `SenderEmail` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Message` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `IsRecipientNotified` tinyint(1) NOT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_E753BB83C0D47CD444B41734828D6CE31BDA4547` (`PurchasedWithOrderItemId`),
  CONSTRAINT `FK_935F8066DDB55926E9F6AFB38FBBB44A64ECA16A` FOREIGN KEY (`PurchasedWithOrderItemId`) REFERENCES `orderitem` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftcard`
--

LOCK TABLES `giftcard` WRITE;
/*!40000 ALTER TABLE `giftcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `giftcard` ENABLE KEYS */;
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
