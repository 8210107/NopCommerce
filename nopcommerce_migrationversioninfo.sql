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
-- Table structure for table `migrationversioninfo`
--

DROP TABLE IF EXISTS `migrationversioninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrationversioninfo` (
  `Version` bigint NOT NULL,
  `AppliedOn` datetime DEFAULT NULL,
  `Description` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  UNIQUE KEY `UC_Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrationversioninfo`
--

LOCK TABLES `migrationversioninfo` WRITE;
/*!40000 ALTER TABLE `migrationversioninfo` DISABLE KEYS */;
INSERT INTO `migrationversioninfo` VALUES (637160666562551771,'2022-11-26 23:59:54','Nop.Data base schema'),(637163160551687541,'2022-11-27 00:01:06','Shipping.FixedByWeightByTotal base schema'),(637163177576455442,'2022-11-27 00:01:06','Tax.Avalara base schema'),(637163188436455432,'2022-11-27 00:01:06','Tax.FixedOrByCountryStateZip base schema'),(637163190176455422,'2022-11-27 00:01:06','Pickup.PickupInStore base schema'),(637192635689037680,'2022-11-27 00:01:07','Specification attribute grouping'),(637196889689037677,'2022-11-26 23:59:56','Nop.Data base indexes'),(637200411689037680,'2022-11-26 23:59:56','AddOrderRewardPointsHistoryFK'),(637207344000000000,'2022-11-27 00:01:07','Widgets.FacebookPixel base schema'),(637273440000000005,'2022-11-27 00:01:08','nopCommerce version 4.40.0. Update Data'),(637273440000000010,'2022-11-27 00:01:07','nopCommerce version 4.40.0. Update Localization'),(637273440000000015,'2022-11-27 00:01:07','nopCommerce version 4.40.0. Update Settings'),(637317072000000000,'2022-11-27 00:01:05','Nop.Plugin.MultiFactorAuth.GoogleAuthenticator schema'),(637547328000000005,'2022-11-27 00:01:08','nopCommerce version 4.50.0. Update Data'),(637547328000000010,'2022-11-27 00:01:07','nopCommerce version 4.50.0. Update Localization'),(637547328000000015,'2022-11-27 00:01:07','nopCommerce version 4.50.0. Update Settings'),(637691616000000000,'2022-11-27 00:01:07','Pseudo-migration to update appSettings.json file'),(637751664000000000,'2022-11-27 00:01:06','Shipping.EasyPost base schema');
/*!40000 ALTER TABLE `migrationversioninfo` ENABLE KEYS */;
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
