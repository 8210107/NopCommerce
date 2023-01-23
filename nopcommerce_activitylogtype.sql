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
-- Table structure for table `activitylogtype`
--

DROP TABLE IF EXISTS `activitylogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activitylogtype` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `SystemKeyword` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitylogtype`
--

LOCK TABLES `activitylogtype` WRITE;
/*!40000 ALTER TABLE `activitylogtype` DISABLE KEYS */;
INSERT INTO `activitylogtype` VALUES (1,'AddNewAddressAttribute','Add a new address attribute',1),(2,'AddNewAddressAttributeValue','Add a new address attribute value',1),(3,'AddNewAffiliate','Add a new affiliate',1),(4,'AddNewBlogPost','Add a new blog post',1),(5,'AddNewCampaign','Add a new campaign',1),(6,'AddNewCategory','Add a new category',1),(7,'AddNewCheckoutAttribute','Add a new checkout attribute',1),(8,'AddNewCountry','Add a new country',1),(9,'AddNewCurrency','Add a new currency',1),(10,'AddNewCustomer','Add a new customer',1),(11,'AddNewCustomerAttribute','Add a new customer attribute',1),(12,'AddNewCustomerAttributeValue','Add a new customer attribute value',1),(13,'AddNewCustomerRole','Add a new customer role',1),(14,'AddNewDiscount','Add a new discount',1),(15,'AddNewEmailAccount','Add a new email account',1),(16,'AddNewGiftCard','Add a new gift card',1),(17,'AddNewLanguage','Add a new language',1),(18,'AddNewManufacturer','Add a new manufacturer',1),(19,'AddNewMeasureDimension','Add a new measure dimension',1),(20,'AddNewMeasureWeight','Add a new measure weight',1),(21,'AddNewNews','Add a new news',1),(22,'AddNewProduct','Add a new product',1),(23,'AddNewProductAttribute','Add a new product attribute',1),(24,'AddNewSetting','Add a new setting',1),(25,'AddNewSpecAttribute','Add a new specification attribute',1),(26,'AddNewSpecAttributeGroup','Add a new specification attribute group',1),(27,'AddNewStateProvince','Add a new state or province',1),(28,'AddNewStore','Add a new store',1),(29,'AddNewTopic','Add a new topic',1),(30,'AddNewReviewType','Add a new review type',1),(31,'AddNewVendor','Add a new vendor',1),(32,'AddNewVendorAttribute','Add a new vendor attribute',1),(33,'AddNewVendorAttributeValue','Add a new vendor attribute value',1),(34,'AddNewWarehouse','Add a new warehouse',1),(35,'AddNewWidget','Add a new widget',1),(36,'DeleteActivityLog','Delete activity log',1),(37,'DeleteAddressAttribute','Delete an address attribute',1),(38,'DeleteAddressAttributeValue','Delete an address attribute value',1),(39,'DeleteAffiliate','Delete an affiliate',1),(40,'DeleteBlogPost','Delete a blog post',1),(41,'DeleteBlogPostComment','Delete a blog post comment',1),(42,'DeleteCampaign','Delete a campaign',1),(43,'DeleteCategory','Delete category',1),(44,'DeleteCheckoutAttribute','Delete a checkout attribute',1),(45,'DeleteCountry','Delete a country',1),(46,'DeleteCurrency','Delete a currency',1),(47,'DeleteCustomer','Delete a customer',1),(48,'DeleteCustomerAttribute','Delete a customer attribute',1),(49,'DeleteCustomerAttributeValue','Delete a customer attribute value',1),(50,'DeleteCustomerRole','Delete a customer role',1),(51,'DeleteDiscount','Delete a discount',1),(52,'DeleteEmailAccount','Delete an email account',1),(53,'DeleteGiftCard','Delete a gift card',1),(54,'DeleteLanguage','Delete a language',1),(55,'DeleteManufacturer','Delete a manufacturer',1),(56,'DeleteMeasureDimension','Delete a measure dimension',1),(57,'DeleteMeasureWeight','Delete a measure weight',1),(58,'DeleteMessageTemplate','Delete a message template',1),(59,'DeleteNews','Delete a news',1),(60,'DeleteNewsComment','Delete a news comment',1),(61,'DeleteOrder','Delete an order',1),(62,'DeletePlugin','Delete a plugin',1),(63,'DeleteProduct','Delete a product',1),(64,'DeleteProductAttribute','Delete a product attribute',1),(65,'DeleteProductReview','Delete a product review',1),(66,'DeleteReturnRequest','Delete a return request',1),(67,'DeleteReviewType','Delete a review type',1),(68,'DeleteSetting','Delete a setting',1),(69,'DeleteSpecAttribute','Delete a specification attribute',1),(70,'DeleteSpecAttributeGroup','Delete a specification attribute group',1),(71,'DeleteStateProvince','Delete a state or province',1),(72,'DeleteStore','Delete a store',1),(73,'DeleteSystemLog','Delete system log',1),(74,'DeleteTopic','Delete a topic',1),(75,'DeleteVendor','Delete a vendor',1),(76,'DeleteVendorAttribute','Delete a vendor attribute',1),(77,'DeleteVendorAttributeValue','Delete a vendor attribute value',1),(78,'DeleteWarehouse','Delete a warehouse',1),(79,'DeleteWidget','Delete a widget',1),(80,'EditActivityLogTypes','Edit activity log types',1),(81,'EditAddressAttribute','Edit an address attribute',1),(82,'EditAddressAttributeValue','Edit an address attribute value',1),(83,'EditAffiliate','Edit an affiliate',1),(84,'EditBlogPost','Edit a blog post',1),(85,'EditCampaign','Edit a campaign',1),(86,'EditCategory','Edit category',1),(87,'EditCheckoutAttribute','Edit a checkout attribute',1),(88,'EditCountry','Edit a country',1),(89,'EditCurrency','Edit a currency',1),(90,'EditCustomer','Edit a customer',1),(91,'EditCustomerAttribute','Edit a customer attribute',1),(92,'EditCustomerAttributeValue','Edit a customer attribute value',1),(93,'EditCustomerRole','Edit a customer role',1),(94,'EditDiscount','Edit a discount',1),(95,'EditEmailAccount','Edit an email account',1),(96,'EditGiftCard','Edit a gift card',1),(97,'EditLanguage','Edit a language',1),(98,'EditManufacturer','Edit a manufacturer',1),(99,'EditMeasureDimension','Edit a measure dimension',1),(100,'EditMeasureWeight','Edit a measure weight',1),(101,'EditMessageTemplate','Edit a message template',1),(102,'EditNews','Edit a news',1),(103,'EditOrder','Edit an order',1),(104,'EditPlugin','Edit a plugin',1),(105,'EditProduct','Edit a product',1),(106,'EditProductAttribute','Edit a product attribute',1),(107,'EditProductReview','Edit a product review',1),(108,'EditPromotionProviders','Edit promotion providers',1),(109,'EditReturnRequest','Edit a return request',1),(110,'EditReviewType','Edit a review type',1),(111,'EditSettings','Edit setting(s)',1),(112,'EditStateProvince','Edit a state or province',1),(113,'EditStore','Edit a store',1),(114,'EditTask','Edit a task',1),(115,'EditSpecAttribute','Edit a specification attribute',1),(116,'EditSpecAttributeGroup','Edit a specification attribute group',1),(117,'EditVendor','Edit a vendor',1),(118,'EditVendorAttribute','Edit a vendor attribute',1),(119,'EditVendorAttributeValue','Edit a vendor attribute value',1),(120,'EditWarehouse','Edit a warehouse',1),(121,'EditTopic','Edit a topic',1),(122,'EditWidget','Edit a widget',1),(123,'Impersonation.Started','Customer impersonation session. Started',1),(124,'Impersonation.Finished','Customer impersonation session. Finished',1),(125,'ImportCategories','Categories were imported',1),(126,'ImportManufacturers','Manufacturers were imported',1),(127,'ImportProducts','Products were imported',1),(128,'ImportStates','States were imported',1),(129,'InstallNewPlugin','Install a new plugin',1),(130,'UninstallPlugin','Uninstall a plugin',1),(131,'PublicStore.ViewCategory','Public store. View a category',0),(132,'PublicStore.ViewManufacturer','Public store. View a manufacturer',0),(133,'PublicStore.ViewProduct','Public store. View a product',0),(134,'PublicStore.PlaceOrder','Public store. Place an order',0),(135,'PublicStore.SendPM','Public store. Send PM',0),(136,'PublicStore.ContactUs','Public store. Use contact us form',0),(137,'PublicStore.AddToCompareList','Public store. Add to compare list',0),(138,'PublicStore.AddToShoppingCart','Public store. Add to shopping cart',0),(139,'PublicStore.AddToWishlist','Public store. Add to wishlist',0),(140,'PublicStore.Login','Public store. Login',0),(141,'PublicStore.Logout','Public store. Logout',0),(142,'PublicStore.AddProductReview','Public store. Add product review',0),(143,'PublicStore.AddNewsComment','Public store. Add news comment',0),(144,'PublicStore.AddBlogComment','Public store. Add blog comment',0),(145,'PublicStore.AddForumTopic','Public store. Add forum topic',0),(146,'PublicStore.EditForumTopic','Public store. Edit forum topic',0),(147,'PublicStore.DeleteForumTopic','Public store. Delete forum topic',0),(148,'PublicStore.AddForumPost','Public store. Add forum post',0),(149,'PublicStore.EditForumPost','Public store. Edit forum post',0),(150,'PublicStore.DeleteForumPost','Public store. Delete forum post',0),(151,'UploadNewPlugin','Upload a plugin',1),(152,'UploadNewTheme','Upload a theme',1),(153,'UploadIcons','Upload a favicon and app icons',1);
/*!40000 ALTER TABLE `activitylogtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:49:54
