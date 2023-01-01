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
-- Table structure for table `forums_topic`
--

DROP TABLE IF EXISTS `forums_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forums_topic` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Subject` varchar(450) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CustomerId` int NOT NULL,
  `ForumId` int NOT NULL,
  `TopicTypeId` int NOT NULL,
  `NumPosts` int NOT NULL,
  `Views` int NOT NULL,
  `LastPostId` int NOT NULL,
  `LastPostCustomerId` int NOT NULL,
  `LastPostTime` datetime DEFAULT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  `UpdatedOnUtc` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_DDBC009BDA798D5E86F200A619BAEFEE2780A562` (`CustomerId`),
  KEY `IX_74331CDF3DC43C580490017D2FF9557D66C6AF3C` (`ForumId`),
  CONSTRAINT `FK_3ED69F7FA84C66C0D0686663F4A248E95B5D0838` FOREIGN KEY (`ForumId`) REFERENCES `forums_forum` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6F76917A376ADA1D26A859EB432614D01D09E35E` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums_topic`
--

LOCK TABLES `forums_topic` WRITE;
/*!40000 ALTER TABLE `forums_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `forums_topic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:49:57
