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
-- Table structure for table `ordernote`
--

DROP TABLE IF EXISTS `ordernote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordernote` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Note` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `OrderId` int NOT NULL,
  `DownloadId` int NOT NULL,
  `DisplayToCustomer` tinyint(1) NOT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_467179DFA023725B2181B4EFF2F3C95252D34FB4` (`OrderId`),
  CONSTRAINT `FK_748F6F5F04127871B1C2DCBB79259D6B69E20F77` FOREIGN KEY (`OrderId`) REFERENCES `order` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordernote`
--

LOCK TABLES `ordernote` WRITE;
/*!40000 ALTER TABLE `ordernote` DISABLE KEYS */;
INSERT INTO `ordernote` VALUES (1,'Order placed',1,0,0,'2022-12-02 20:55:24'),(2,'\"Order placed\" email (to store owner) has been queued. Queued email identifiers: 1.',1,0,0,'2022-12-02 20:55:25'),(3,'\"Order placed\" email (to customer) has been queued. Queued email identifiers: 2.',1,0,0,'2022-12-02 20:55:25'),(4,'Order has been marked as paid',1,0,0,'2022-12-02 20:55:59'),(5,'Order status has been changed to Processing',1,0,0,'2022-12-02 20:55:59'),(6,'Order placed',2,0,0,'2022-12-02 20:59:39'),(7,'\"Order placed\" email (to store owner) has been queued. Queued email identifiers: 3.',2,0,0,'2022-12-02 20:59:39'),(8,'\"Order placed\" email (to customer) has been queued. Queued email identifiers: 4.',2,0,0,'2022-12-02 20:59:39'),(9,'Order placed',3,0,0,'2022-12-05 15:00:19'),(10,'\"Order placed\" email (to store owner) has been queued. Queued email identifiers: 5.',3,0,0,'2022-12-05 15:00:20'),(11,'\"Order placed\" email (to customer) has been queued. Queued email identifiers: 6.',3,0,0,'2022-12-05 15:00:20'),(12,'Order placed',4,0,0,'2022-12-05 15:01:54'),(13,'\"Order placed\" email (to store owner) has been queued. Queued email identifiers: 7.',4,0,0,'2022-12-05 15:01:54'),(14,'\"Order placed\" email (to customer) has been queued. Queued email identifiers: 8.',4,0,0,'2022-12-05 15:01:54'),(15,'Order placed',5,0,0,'2022-12-05 15:03:20'),(16,'\"Order placed\" email (to store owner) has been queued. Queued email identifiers: 9.',5,0,0,'2022-12-05 15:03:20'),(17,'\"Order placed\" email (to customer) has been queued. Queued email identifiers: 10.',5,0,0,'2022-12-05 15:03:20'),(18,'Order placed',6,0,0,'2022-12-05 15:18:49'),(19,'\"Order placed\" email (to store owner) has been queued. Queued email identifiers: 11.',6,0,0,'2022-12-05 15:18:49'),(20,'\"Order placed\" email (to customer) has been queued. Queued email identifiers: 12.',6,0,0,'2022-12-05 15:18:49'),(21,'Order placed',7,0,0,'2022-12-06 18:33:52'),(22,'\"Order placed\" email (to store owner) has been queued. Queued email identifiers: 13.',7,0,0,'2022-12-06 18:33:52'),(23,'\"Order placed\" email (to customer) has been queued. Queued email identifiers: 14.',7,0,0,'2022-12-06 18:33:52'),(24,'Order placed',8,0,0,'2022-12-11 10:58:24'),(25,'\"Order placed\" email (to store owner) has been queued. Queued email identifiers: 16.',8,0,0,'2022-12-11 10:58:24'),(26,'\"Order placed\" email (to customer) has been queued. Queued email identifiers: 17.',8,0,0,'2022-12-11 10:58:24'),(27,'Order placed',9,0,0,'2022-12-12 00:40:46'),(28,'\"Order placed\" email (to store owner) has been queued. Queued email identifiers: 18.',9,0,0,'2022-12-12 00:40:46'),(29,'\"Order placed\" email (to customer) has been queued. Queued email identifiers: 19.',9,0,0,'2022-12-12 00:40:46'),(30,'Order status has been edited. New status: Complete',2,0,0,'2022-12-12 00:41:26'),(31,'Order placed',10,0,0,'2022-12-19 00:53:15'),(32,'\"Order placed\" email (to store owner) has been queued. Queued email identifiers: 20.',10,0,0,'2022-12-19 00:53:16'),(33,'\"Order placed\" email (to customer) has been queued. Queued email identifiers: 21.',10,0,0,'2022-12-19 00:53:16');
/*!40000 ALTER TABLE `ordernote` ENABLE KEYS */;
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
