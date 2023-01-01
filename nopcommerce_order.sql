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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CustomOrderNumber` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `BillingAddressId` int NOT NULL,
  `CustomerId` int NOT NULL,
  `PickupAddressId` int DEFAULT NULL,
  `ShippingAddressId` int DEFAULT NULL,
  `OrderGuid` char(36) NOT NULL,
  `StoreId` int NOT NULL,
  `PickupInStore` tinyint(1) NOT NULL,
  `OrderStatusId` int NOT NULL,
  `ShippingStatusId` int NOT NULL,
  `PaymentStatusId` int NOT NULL,
  `PaymentMethodSystemName` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CustomerCurrencyCode` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CurrencyRate` decimal(18,4) NOT NULL,
  `CustomerTaxDisplayTypeId` int NOT NULL,
  `VatNumber` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `OrderSubtotalInclTax` decimal(18,4) NOT NULL,
  `OrderSubtotalExclTax` decimal(18,4) NOT NULL,
  `OrderSubTotalDiscountInclTax` decimal(18,4) NOT NULL,
  `OrderSubTotalDiscountExclTax` decimal(18,4) NOT NULL,
  `OrderShippingInclTax` decimal(18,4) NOT NULL,
  `OrderShippingExclTax` decimal(18,4) NOT NULL,
  `PaymentMethodAdditionalFeeInclTax` decimal(18,4) NOT NULL,
  `PaymentMethodAdditionalFeeExclTax` decimal(18,4) NOT NULL,
  `TaxRates` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `OrderTax` decimal(18,4) NOT NULL,
  `OrderDiscount` decimal(18,4) NOT NULL,
  `OrderTotal` decimal(18,4) NOT NULL,
  `RefundedAmount` decimal(18,4) NOT NULL,
  `RewardPointsHistoryEntryId` int DEFAULT NULL,
  `CheckoutAttributeDescription` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CheckoutAttributesXml` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CustomerLanguageId` int NOT NULL,
  `AffiliateId` int NOT NULL,
  `CustomerIp` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `AllowStoringCreditCardNumber` tinyint(1) NOT NULL,
  `CardType` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CardName` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CardNumber` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `MaskedCreditCardNumber` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CardCvv2` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CardExpirationMonth` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CardExpirationYear` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `AuthorizationTransactionId` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `AuthorizationTransactionCode` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `AuthorizationTransactionResult` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CaptureTransactionId` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CaptureTransactionResult` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `SubscriptionTransactionId` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `PaidDateUtc` datetime DEFAULT NULL,
  `ShippingMethod` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ShippingRateComputationMethodSystemName` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CustomValuesXml` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Deleted` tinyint(1) NOT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  `RedeemedRewardPointsEntryId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_E7755CC7F881D5026F1484CD9F844657848310FB` (`BillingAddressId`),
  KEY `IX_D4D583CDFB5B9FA861705763C89DE617044108E3` (`CustomerId`),
  KEY `IX_0E470D4A2077F13DD52B58146A78BB6D9FF598A3` (`PickupAddressId`),
  KEY `IX_30A52D6385B52F71FB5EDB1D893B738E8549DE8B` (`ShippingAddressId`),
  KEY `IX_Order_CreatedOnUtc` (`CreatedOnUtc` DESC),
  KEY `FK_E2B3006CB294B6FD2E08E9DB53E7296283CB8A61` (`RewardPointsHistoryEntryId`),
  CONSTRAINT `FK_59EADEB3B701B43B0BEDBFEEEDC0597834BE77D5` FOREIGN KEY (`ShippingAddressId`) REFERENCES `address` (`Id`),
  CONSTRAINT `FK_B82AF61EE7639593EB7CB9A1319FBE9B4AF6F1FC` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`),
  CONSTRAINT `FK_BCC8B18340C4EB00FC90C8D29C95ACF8931B21FE` FOREIGN KEY (`PickupAddressId`) REFERENCES `address` (`Id`),
  CONSTRAINT `FK_DF57B77161942EFD6C557438EC3BD730AEE345C5` FOREIGN KEY (`BillingAddressId`) REFERENCES `address` (`Id`),
  CONSTRAINT `FK_E2B3006CB294B6FD2E08E9DB53E7296283CB8A61` FOREIGN KEY (`RewardPointsHistoryEntryId`) REFERENCES `rewardpointshistory` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'1',4,1,5,NULL,'a7fa9ba3-a157-4a6d-a213-f9b17eb80ca6',1,1,20,20,30,'Payments.CheckMoneyOrder','USD',1.1628,10,NULL,20.0000,20.0000,0.0000,0.0000,1.9900,1.9900,0.0000,0.0000,'0:0;   ',0.0000,0.0000,21.9900,0.0000,NULL,'do u need gift wrapping?: no','<Attributes><CheckoutAttribute ID=\"1\"><CheckoutAttributeValue><Value>1</Value></CheckoutAttributeValue></CheckoutAttribute></Attributes>',1,0,'127.0.0.1',0,'','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'2022-12-02 20:55:59','Pickup at New York store','Pickup.PickupInStore',NULL,0,'2022-12-02 20:55:24',NULL),(2,'2',6,1,7,NULL,'a3914814-c971-4d34-8fa9-9623fe63afce',1,1,30,20,10,'Payments.PayPalStandard','USD',1.1628,10,NULL,20.0000,20.0000,0.0000,0.0000,1.9900,1.9900,0.0000,0.0000,'0:0;   ',0.0000,0.0000,21.9900,0.0000,NULL,'do u need gift wrapping?: no','<Attributes><CheckoutAttribute ID=\"1\"><CheckoutAttributeValue><Value>1</Value></CheckoutAttributeValue></CheckoutAttribute></Attributes>',1,0,'127.0.0.1',0,'','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pickup at New York store','Pickup.PickupInStore',NULL,0,'2022-12-02 20:59:39',NULL),(3,'3',9,1,10,NULL,'020af9cb-dda4-4e39-9d4d-22ebf915b6c2',1,1,10,20,10,'Payments.Manual','USD',1.1628,10,NULL,10.0000,10.0000,0.0000,0.0000,1.9900,1.9900,0.0000,0.0000,'0:0;   ',0.0000,0.0000,11.9900,0.0000,NULL,'do u need gift wrapping?: no','<Attributes><CheckoutAttribute ID=\"1\"><CheckoutAttributeValue><Value>1</Value></CheckoutAttributeValue></CheckoutAttribute></Attributes>',1,0,'127.0.0.1',1,'hnqQpd5VLI7/BwLYq2CU+w==','2x2HutaAXnuGiQ9afJuTQh3o07vGTmc5','IvRuVuhkXXgH9m0XF1Qg2+c4XXwghJVBvGzqT7vxRXR6u6zIcjEDMA==','dBDURJ6iBm9zIMIpSFDlyKxpazkpcaXMkTl34JT9tHaVMe8raReRKQ==','2bu7mVlJT6o=','ZJJifQu4Syw=','2AkYgfDGaBCbdc6IfQas+w==',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pickup at New York store','Pickup.PickupInStore',NULL,0,'2022-12-05 15:00:19',NULL),(4,'4',11,1,12,NULL,'c4c33a9b-44cd-4dc3-a2c7-6d4d62fc1d91',1,1,10,20,10,'Payments.PayPalStandard','USD',1.1628,10,NULL,10.0000,10.0000,0.0000,0.0000,1.9900,1.9900,0.0000,0.0000,'0:0;   ',0.0000,0.0000,11.9900,0.0000,NULL,'do u need gift wrapping?: no','<Attributes><CheckoutAttribute ID=\"1\"><CheckoutAttributeValue><Value>1</Value></CheckoutAttributeValue></CheckoutAttribute></Attributes>',1,0,'127.0.0.1',0,'','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pickup at New York store','Pickup.PickupInStore',NULL,0,'2022-12-05 15:01:54',NULL),(5,'5',13,1,14,NULL,'7bbfbba0-3154-42af-81ec-9b57d8347261',1,1,10,20,10,'Payments.PayPalStandard','USD',1.1628,10,NULL,0.0000,0.0000,0.0000,0.0000,1.9900,1.9900,0.0000,0.0000,'0:0;   ',0.0000,0.0000,1.9900,0.0000,NULL,'do u need gift wrapping?: no','<Attributes><CheckoutAttribute ID=\"1\"><CheckoutAttributeValue><Value>1</Value></CheckoutAttributeValue></CheckoutAttribute></Attributes>',1,0,'127.0.0.1',0,'','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pickup at New York store','Pickup.PickupInStore',NULL,0,'2022-12-05 15:03:20',NULL),(6,'6',15,1,16,NULL,'06f4f989-5ba0-4a4d-9367-56773ae61aa3',1,1,10,20,10,'Payments.PayPalStandard','USD',1.1628,10,NULL,20.0000,20.0000,0.0000,0.0000,1.9900,1.9900,0.0000,0.0000,'0:0;   ',0.0000,0.0000,21.9900,0.0000,NULL,'do u need gift wrapping?: no','<Attributes><CheckoutAttribute ID=\"1\"><CheckoutAttributeValue><Value>1</Value></CheckoutAttributeValue></CheckoutAttribute></Attributes>',1,0,'127.0.0.1',0,'','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pickup at New York store','Pickup.PickupInStore',NULL,0,'2022-12-05 15:18:49',NULL),(7,'7',17,1,18,NULL,'dd93383b-c8e9-46bb-a035-77d13f1f16b5',1,1,10,20,10,'Payments.PayPalStandard','USD',1.1628,10,NULL,10.0000,10.0000,0.0000,0.0000,1.9900,1.9900,0.0000,0.0000,'0:0;   ',0.0000,0.0000,11.9900,0.0000,NULL,'do u need gift wrapping?: no','<Attributes><CheckoutAttribute ID=\"1\"><CheckoutAttributeValue><Value>1</Value></CheckoutAttributeValue></CheckoutAttribute></Attributes>',1,0,'127.0.0.1',0,'','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pickup at New York store','Pickup.PickupInStore',NULL,0,'2022-12-06 18:33:51',NULL),(8,'8',19,1,20,NULL,'d1194abe-871a-4bba-83f0-9434d9b93390',1,1,10,20,10,'Payments.PayPalStandard','USD',1.1628,10,NULL,10.0000,10.0000,0.0000,0.0000,1.9900,1.9900,0.0000,0.0000,'0:0;   ',0.0000,0.0000,11.9900,0.0000,NULL,'do u need gift wrapping?: no','<Attributes><CheckoutAttribute ID=\"1\"><CheckoutAttributeValue><Value>1</Value></CheckoutAttributeValue></CheckoutAttribute></Attributes>',1,0,'127.0.0.1',0,'','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pickup at New York store','Pickup.PickupInStore',NULL,0,'2022-12-11 10:58:23',NULL),(9,'9',21,1,22,NULL,'0167a947-87c2-456b-925b-603117b4efe4',1,1,10,20,10,'Payments.CheckMoneyOrder','USD',1.1628,10,NULL,195.0000,195.0000,0.0000,0.0000,1.9900,1.9900,0.0000,0.0000,'0:0;   ',0.0000,0.0000,196.9900,0.0000,NULL,'do u need gift wrapping?: no','<Attributes><CheckoutAttribute ID=\"1\"><CheckoutAttributeValue><Value>1</Value></CheckoutAttributeValue></CheckoutAttribute></Attributes>',1,0,'127.0.0.1',0,'','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pickup at New York store','Pickup.PickupInStore',NULL,0,'2022-12-12 00:40:45',NULL),(10,'10',24,1,25,NULL,'2284c24d-e1b5-4d2a-9d2a-023b715f3a86',1,1,10,20,10,'Payments.CheckMoneyOrder','USD',1.1628,10,NULL,110.0000,110.0000,0.0000,0.0000,1.9900,1.9900,0.0000,0.0000,'0:0;   ',0.0000,0.0000,111.9900,0.0000,NULL,'do u need gift wrapping?: no','<Attributes><CheckoutAttribute ID=\"1\"><CheckoutAttributeValue><Value>1</Value></CheckoutAttributeValue></CheckoutAttribute></Attributes>',1,0,'127.0.0.1',0,'','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pickup at New York store','Pickup.PickupInStore',NULL,0,'2022-12-19 00:53:15',NULL);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:50:01
