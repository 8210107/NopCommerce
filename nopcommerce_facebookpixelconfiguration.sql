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
-- Table structure for table `facebookpixelconfiguration`
--

DROP TABLE IF EXISTS `facebookpixelconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facebookpixelconfiguration` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `PixelId` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Enabled` tinyint(1) NOT NULL,
  `DisableForUsersNotAcceptingCookieConsent` tinyint(1) NOT NULL,
  `StoreId` int NOT NULL,
  `PassUserProperties` tinyint(1) NOT NULL,
  `UseAdvancedMatching` tinyint(1) NOT NULL,
  `TrackPageView` tinyint(1) NOT NULL,
  `TrackAddToCart` tinyint(1) NOT NULL,
  `TrackPurchase` tinyint(1) NOT NULL,
  `TrackViewContent` tinyint(1) NOT NULL,
  `TrackAddToWishlist` tinyint(1) NOT NULL,
  `TrackInitiateCheckout` tinyint(1) NOT NULL,
  `TrackSearch` tinyint(1) NOT NULL,
  `TrackContact` tinyint(1) NOT NULL,
  `TrackCompleteRegistration` tinyint(1) NOT NULL,
  `CustomEvents` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facebookpixelconfiguration`
--

LOCK TABLES `facebookpixelconfiguration` WRITE;
/*!40000 ALTER TABLE `facebookpixelconfiguration` DISABLE KEYS */;
/*!40000 ALTER TABLE `facebookpixelconfiguration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:49:59
