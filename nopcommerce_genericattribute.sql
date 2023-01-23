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
-- Table structure for table `genericattribute`
--

DROP TABLE IF EXISTS `genericattribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genericattribute` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `KeyGroup` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Key` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `EntityId` int NOT NULL,
  `StoreId` int NOT NULL,
  `CreatedOrUpdatedDateUTC` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_GenericAttribute_EntityId_and_KeyGroup` (`EntityId`,`KeyGroup`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genericattribute`
--

LOCK TABLES `genericattribute` WRITE;
/*!40000 ALTER TABLE `genericattribute` DISABLE KEYS */;
INSERT INTO `genericattribute` VALUES (1,'Customer','FirstName','John',1,0,'2022-11-27 00:00:07'),(2,'Customer','LastName','Smith',1,0,'2022-11-27 00:00:07'),(3,'Customer','LastContinueShoppingPage','https://localhost:44369/basquetebol',1,1,'2022-12-11 23:17:02'),(4,'Customer','ProductPage.HideProductAttributesBlock','False',1,0,'2022-12-05 15:11:15'),(5,'Customer','ProductPage.HideSpecificationAttributeBlock','True',1,0,'2022-11-27 00:09:56'),(6,'Customer','product-advanced-mode','False',1,0,'2022-12-12 00:26:15'),(7,'Customer','CategoryPage.HideDisplayBlock','False',1,0,'2022-11-27 00:13:35'),(8,'Customer','CatalogSettingsPage.HideAdditionalSectionsBlock','False',1,0,'2022-11-27 00:16:52'),(9,'Customer','settings-advanced-mode','True',1,0,'2022-12-11 22:37:32'),(10,'Customer','UseRewardPointsDuringCheckout','False',1,1,'2022-12-19 00:53:16'),(12,'Customer','GeneralCommonSettingsPage.HideSecurityBlock','False',1,0,'2022-11-27 00:42:51'),(13,'Customer','EuCookieLaw.Accepted','True',1,1,'2022-11-27 00:43:56'),(14,'Customer','ProductPage.HideDownloadableBlock','False',1,0,'2022-11-27 00:44:59'),(15,'Customer','TopicDetailsPage.HideInfoBlock','False',1,0,'2022-11-27 18:49:20'),(16,'Customer','topic-advanced-mode','True',1,0,'2022-11-27 18:49:20'),(17,'Customer','TopicDetailsPage.HideSeoBlock','False',1,0,'2022-11-27 18:49:28'),(18,'Customer','FirstName','ERROR404',7,0,'2022-11-27 19:18:42'),(24,'Customer','CheckoutAttributePage.HideValuesBlock','False',1,0,'2022-12-02 20:47:05'),(25,'Customer','checkoutattribute-advanced-mode','True',1,0,'2022-12-02 20:46:13'),(40,'Order','OrderTotalSentToPayPal','21.99',2,0,'2022-12-02 20:59:39'),(60,'Order','OrderTotalSentToPayPal','11.99',4,0,'2022-12-05 15:01:54'),(66,'Order','OrderTotalSentToPayPal','1.99',5,0,'2022-12-05 15:03:20'),(67,'Customer','ProductAttributePage.HidePredefinedValuesBlock','False',1,0,'2022-12-11 21:56:19'),(69,'Customer','ProductAttributePage.HideUsedByProductsBlock','False',1,0,'2022-12-05 15:16:46'),(74,'Order','OrderTotalSentToPayPal','21.99',6,0,'2022-12-05 15:18:49'),(80,'Order','OrderTotalSentToPayPal','11.99',7,0,'2022-12-06 18:33:53'),(86,'Order','OrderTotalSentToPayPal','11.99',8,0,'2022-12-11 10:58:24'),(87,'Customer','category-advanced-mode','True',1,0,'2022-12-12 00:02:19'),(88,'Customer','ProductPage.HidePricesBlock','False',1,0,'2022-12-11 23:20:30'),(91,'Customer','CategoryPage.HideMappingsBlock','False',1,0,'2022-12-12 00:01:53'),(92,'Customer','CategoryPage.HideSEOBlock','False',1,0,'2022-12-12 00:01:55'),(93,'Customer','CategoryPage.HideProductsBlock','False',1,0,'2022-12-12 00:01:57');
/*!40000 ALTER TABLE `genericattribute` ENABLE KEYS */;
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
