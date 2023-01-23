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
-- Table structure for table `activitylog`
--

DROP TABLE IF EXISTS `activitylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activitylog` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Comment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `IpAddress` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `EntityName` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ActivityLogTypeId` int NOT NULL,
  `CustomerId` int NOT NULL,
  `EntityId` int DEFAULT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FA05048FC292BA387AD9F54569223A2361D29543` (`ActivityLogTypeId`),
  KEY `IX_0F273FFBCE7BB550E87EADE8C0D4FE78CEA4F21A` (`CustomerId`),
  KEY `IX_ActivityLog_CreatedOnUtc` (`CreatedOnUtc` DESC),
  CONSTRAINT `FK_2DD54D1D705AD51551F0186C93A2A42C1F28D2D4` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8551690BAD0612277F033FE5E6CDBE7AF8081FEF` FOREIGN KEY (`ActivityLogTypeId`) REFERENCES `activitylogtype` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitylog`
--

LOCK TABLES `activitylog` WRITE;
/*!40000 ALTER TABLE `activitylog` DISABLE KEYS */;
INSERT INTO `activitylog` VALUES (1,'Added a new product (\'Sapatilha1\')','127.0.0.1','Product',22,1,1,'2022-11-27 00:05:04'),(2,'Edited a product (\'Sapatilha1\')','127.0.0.1','Product',105,1,1,'2022-11-27 00:06:25'),(3,'Added a new category (\'teste\')','127.0.0.1','Category',6,1,1,'2022-11-27 00:13:29'),(4,'Edited a product (\'Sapatilha1\')','127.0.0.1','Product',105,1,1,'2022-11-27 00:14:18'),(5,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-11-27 00:21:03'),(6,'Edited a product (\'Sapatilha1\')','127.0.0.1','Product',105,1,1,'2022-11-27 00:22:32'),(7,'Added a new product (\'teste\')','127.0.0.1','Product',22,1,2,'2022-11-27 00:32:41'),(8,'Edited a product (\'teste\')','127.0.0.1','Product',105,1,2,'2022-11-27 00:34:11'),(9,'Edited a product (\'teste\')','127.0.0.1','Product',105,1,2,'2022-11-27 00:36:58'),(10,'Edited a product (\'qqlcoisa\')','127.0.0.1','Product',105,1,2,'2022-11-27 00:37:34'),(11,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-11-27 00:43:46'),(12,'Edited a product (\'Sapatilha1\')','127.0.0.1','Product',105,1,1,'2022-11-27 00:45:25'),(13,'Edited a product (\'Sapatilha1\')','127.0.0.1','Product',105,1,1,'2022-11-27 00:46:54'),(14,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-11-27 18:04:03'),(15,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-11-27 18:04:14'),(16,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-11-27 18:24:43'),(17,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-11-27 18:25:57'),(18,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-11-27 18:27:10'),(19,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-11-27 18:27:25'),(20,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-11-27 18:36:31'),(21,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-11-27 18:36:48'),(22,'Edited a topic (\'Welcome to our store\')','127.0.0.1','Topic',121,1,6,'2022-11-27 18:46:45'),(23,'Edited a topic (\'Welcome to our store\')','127.0.0.1','Topic',121,1,6,'2022-11-27 18:47:04'),(24,'Edited a topic (\'Welcome to our store\')','127.0.0.1','Topic',121,1,6,'2022-11-27 18:47:23'),(25,'Edited a topic (\'Welcome to our store\')','127.0.0.1','Topic',121,1,6,'2022-11-27 18:50:01'),(26,'Added a new customer (ID = 7)','127.0.0.1','Customer',10,1,7,'2022-11-27 19:18:25'),(27,'Edited a customer (ID = 7)','127.0.0.1','Customer',90,1,7,'2022-11-27 19:18:42'),(28,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-11-28 13:33:55'),(29,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-11-28 13:34:11'),(30,'Added a new product (\'asfDJdovg\')','127.0.0.1','Product',22,1,3,'2022-11-28 13:39:28'),(31,'Edited a product (\'asfDJdovg\')','127.0.0.1','Product',105,1,3,'2022-11-28 13:39:57'),(32,'Added a new checkout attribute (\'do u need gift wrapping?\')','127.0.0.1','CheckoutAttribute',7,1,1,'2022-12-02 20:46:35'),(33,'Edited an order (Order number = 1). See order notes for details','127.0.0.1','Order',103,1,1,'2022-12-02 20:55:59'),(34,'Added a new product attribute (\'sizee\')','127.0.0.1','ProductAttribute',23,1,1,'2022-12-05 15:08:55'),(35,'Edited a product attribute (\'sizee\')','127.0.0.1','ProductAttribute',106,1,1,'2022-12-05 15:10:32'),(36,'Edited a product (\'Sapatilha1\')','127.0.0.1','Product',105,1,1,'2022-12-05 15:11:46'),(37,'Edited a checkout attribute (\'do u need gift wrapping?\')','127.0.0.1','CheckoutAttribute',87,1,1,'2022-12-05 15:16:02'),(38,'Edited an email account (ID = 1)','127.0.0.1','EmailAccount',95,1,1,'2022-12-07 12:36:49'),(39,'Edited an email account (ID = 1)','127.0.0.1','EmailAccount',95,1,1,'2022-12-07 12:42:47'),(40,'Edited a product attribute (\'sizee\')','127.0.0.1','ProductAttribute',106,1,1,'2022-12-10 19:03:06'),(41,'Added a new product (\'teste\')','127.0.0.1','Product',22,1,4,'2022-12-10 19:57:15'),(42,'Edited a product (\'teste\')','127.0.0.1','Product',105,1,4,'2022-12-10 19:57:31'),(43,'Added a new product (\'Nike Air Force (Branca)\')','127.0.0.1','Product',22,1,5,'2022-12-11 23:07:01'),(44,'Added a new category (\'Basquetebol\')','127.0.0.1','Category',6,1,2,'2022-12-11 23:12:49'),(45,'Edited a product (\'Nike Air Force (Branca)\')','127.0.0.1','Product',105,1,5,'2022-12-11 23:14:23'),(46,'Edited a product (\'Nike Air Force (Branca)\')','127.0.0.1','Product',105,1,5,'2022-12-11 23:14:58'),(47,'Edited a product (\'Nike Air Force (Branca)\')','127.0.0.1','Product',105,1,5,'2022-12-11 23:15:30'),(48,'Edited a product (\'Nike Air Force (Branca)\')','127.0.0.1','Product',105,1,5,'2022-12-11 23:16:27'),(49,'Edited a product (\'Nike Air Force (Branca)\')','127.0.0.1','Product',105,1,5,'2022-12-11 23:17:14'),(50,'Added a new category (\'Casual\')','127.0.0.1','Category',6,1,3,'2022-12-11 23:19:42'),(51,'Edited a product (\'teste\')','127.0.0.1','Product',105,1,4,'2022-12-11 23:21:12'),(52,'Edited a product (\'Adidas Stan Smith\')','127.0.0.1','Product',105,1,4,'2022-12-11 23:22:49'),(53,'Deleted a product (\'asfDJdovg\')','127.0.0.1','Product',63,1,3,'2022-12-11 23:23:40'),(54,'Deleted a product (\'qqlcoisa\')','127.0.0.1','Product',63,1,2,'2022-12-11 23:23:47'),(55,'Edited a product (\'Nike Air Force (Branca)\')','127.0.0.1','Product',105,1,5,'2022-12-11 23:25:56'),(56,'Edited a product (\'Nike Air Force (Branca)\')','127.0.0.1','Product',105,1,5,'2022-12-11 23:28:08'),(57,'Added a new product (\'New Balance 550\')','127.0.0.1','Product',22,1,6,'2022-12-11 23:31:35'),(58,'Edited a product (\'New Balance 550\')','127.0.0.1','Product',105,1,6,'2022-12-11 23:32:26'),(59,'Edited a product (\'New Balance 550\')','127.0.0.1','Product',105,1,6,'2022-12-11 23:32:58'),(60,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,2,'2022-12-11 23:38:11'),(61,'Edited a category (\'Casual\')','127.0.0.1','Category',86,1,3,'2022-12-11 23:39:39'),(62,'Edited a category (\'Casual\')','127.0.0.1','Category',86,1,3,'2022-12-11 23:39:41'),(63,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,2,'2022-12-11 23:40:34'),(64,'Edited a category (\'Casual\')','127.0.0.1','Category',86,1,3,'2022-12-11 23:41:44'),(65,'Edited a category (\'Casual\')','127.0.0.1','Category',86,1,3,'2022-12-11 23:41:45'),(66,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,2,'2022-12-11 23:42:40'),(67,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,2,'2022-12-11 23:44:01'),(68,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,2,'2022-12-11 23:44:02'),(69,'Added a new category (\'Skate\')','127.0.0.1','Category',6,1,4,'2022-12-11 23:56:22'),(70,'Edited a category (\'Skate\')','127.0.0.1','Category',86,1,4,'2022-12-11 23:56:24'),(71,'Added a new product (\'Vans\')','127.0.0.1','Product',22,1,7,'2022-12-11 23:58:22'),(72,'Edited a product (\'Vans\')','127.0.0.1','Product',105,1,7,'2022-12-11 23:59:24'),(73,'Edited a product (\'Vans\')','127.0.0.1','Product',105,1,7,'2022-12-11 23:59:53'),(74,'Added a new category (\'teste\')','127.0.0.1','Category',6,1,5,'2022-12-12 00:01:43'),(75,'Edited a category (\'teste\')','127.0.0.1','Category',86,1,5,'2022-12-12 00:02:02'),(76,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,2,'2022-12-12 00:02:45'),(77,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,2,'2022-12-12 00:03:56'),(78,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,2,'2022-12-12 00:04:21'),(79,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,2,'2022-12-12 00:04:35'),(80,'Edited a category (\'Homem\')','127.0.0.1','Category',86,1,5,'2022-12-12 00:04:55'),(81,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,2,'2022-12-12 00:05:07'),(82,'Edited a category (\'Skate\')','127.0.0.1','Category',86,1,4,'2022-12-12 00:05:17'),(83,'Edited a category (\'Casual\')','127.0.0.1','Category',86,1,3,'2022-12-12 00:05:27'),(84,'Added a new category (\'Mulher\')','127.0.0.1','Category',6,1,6,'2022-12-12 00:05:47'),(85,'Added a new category (\'Basquetebol\')','127.0.0.1','Category',6,1,7,'2022-12-12 00:06:22'),(86,'Added a new category (\'Casual\')','127.0.0.1','Category',6,1,8,'2022-12-12 00:06:36'),(87,'Edited a category (\'Casual\')','127.0.0.1','Category',86,1,8,'2022-12-12 00:06:43'),(88,'Added a new category (\'Skate\')','127.0.0.1','Category',6,1,9,'2022-12-12 00:06:57'),(89,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,7,'2022-12-12 00:08:24'),(90,'Edited a category (\'Skate\')','127.0.0.1','Category',86,1,4,'2022-12-12 00:08:30'),(91,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,2,'2022-12-12 00:08:36'),(92,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,2,'2022-12-12 00:08:42'),(93,'Edited a category (\'Casual\')','127.0.0.1','Category',86,1,3,'2022-12-12 00:09:08'),(94,'Edited a category (\'Casual\')','127.0.0.1','Category',86,1,8,'2022-12-12 00:09:21'),(95,'Edited a category (\'Skate\')','127.0.0.1','Category',86,1,9,'2022-12-12 00:09:25'),(96,'Edited a category (\'Homem\')','127.0.0.1','Category',86,1,5,'2022-12-12 00:12:52'),(97,'Edited a category (\'Mulher\')','127.0.0.1','Category',86,1,6,'2022-12-12 00:13:02'),(98,'Edited a category (\'Basquetebol\')','127.0.0.1','Category',86,1,7,'2022-12-12 00:14:31'),(99,'Edited a category (\'Casual\')','127.0.0.1','Category',86,1,8,'2022-12-12 00:14:47'),(100,'Edited a category (\'Skate\')','127.0.0.1','Category',86,1,9,'2022-12-12 00:14:56'),(101,'Added a new product (\'TÉNIS VANS X ONE PIECE SKATE OLD SKOOL\')','127.0.0.1','Product',22,1,8,'2022-12-12 00:20:39'),(102,'Edited a product (\'TÉNIS VANS X ONE PIECE SKATE OLD SKOOL\')','127.0.0.1','Product',105,1,8,'2022-12-12 00:21:19'),(103,'Edited a product (\'TÉNIS VANS X ONE PIECE SKATE OLD SKOOL\')','127.0.0.1','Product',105,1,8,'2022-12-12 00:21:59'),(104,'Edited a product (\'Nike Air Force (Branca)\')','127.0.0.1','Product',105,1,5,'2022-12-12 00:22:16'),(105,'Added a new product (\'Adidas GAZELLE\')','127.0.0.1','Product',22,1,9,'2022-12-12 00:26:30'),(106,'Edited a product (\'Adidas GAZELLE\')','127.0.0.1','Product',105,1,9,'2022-12-12 00:27:50'),(107,'Edited an order (Order number = 2). See order notes for details','127.0.0.1','Order',103,1,2,'2022-12-12 00:41:26'),(108,'Deleted a product (\'Sapatilha1\')','127.0.0.1','Product',63,1,1,'2022-12-12 00:52:27'),(109,'Added a new category (\'Corrida\')','127.0.0.1','Category',6,1,10,'2022-12-12 00:53:36'),(110,'Edited a category (\'Corrida\')','127.0.0.1','Category',86,1,10,'2022-12-12 00:54:45'),(111,'Added a new product (\'Adidas Ultraboost 22\')','127.0.0.1','Product',22,1,10,'2022-12-12 00:58:54'),(112,'Edited a product (\'Adidas Ultraboost 22\')','127.0.0.1','Product',105,1,10,'2022-12-12 01:00:26'),(113,'Edited a product (\'Adidas Ultraboost 22\')','127.0.0.1','Product',105,1,10,'2022-12-12 01:01:53'),(114,'Added a new product (\'Adidas Adizero Adios 7 \')','127.0.0.1','Product',22,1,11,'2022-12-12 01:05:04'),(115,'Edited a product (\'Adidas Adizero Adios 7 \')','127.0.0.1','Product',105,1,11,'2022-12-12 01:06:22'),(116,'Edited a category (\'Corrida\')','127.0.0.1','Category',86,1,10,'2022-12-12 01:06:51'),(117,'Edited a product (\'Adidas Ultraboost 22\')','127.0.0.1','Product',105,1,10,'2022-12-12 01:08:24'),(118,'Edited a product (\'Adidas Ultraboost 22\')','127.0.0.1','Product',105,1,10,'2022-12-12 01:12:48'),(119,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-12-19 00:52:27'),(120,'Edited settings','127.0.0.1',NULL,111,1,NULL,'2022-12-19 00:52:50');
/*!40000 ALTER TABLE `activitylog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:50:03