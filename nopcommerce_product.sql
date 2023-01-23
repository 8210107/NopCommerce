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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MetaKeywords` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MetaTitle` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Sku` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ManufacturerPartNumber` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Gtin` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `RequiredProductIds` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AllowedQuantities` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ProductTypeId` int NOT NULL,
  `ParentGroupedProductId` int NOT NULL,
  `VisibleIndividually` tinyint(1) NOT NULL,
  `ShortDescription` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `FullDescription` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `AdminComment` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ProductTemplateId` int NOT NULL,
  `VendorId` int NOT NULL,
  `ShowOnHomepage` tinyint(1) NOT NULL,
  `MetaDescription` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `AllowCustomerReviews` tinyint(1) NOT NULL,
  `ApprovedRatingSum` int NOT NULL,
  `NotApprovedRatingSum` int NOT NULL,
  `ApprovedTotalReviews` int NOT NULL,
  `NotApprovedTotalReviews` int NOT NULL,
  `SubjectToAcl` tinyint(1) NOT NULL,
  `LimitedToStores` tinyint(1) NOT NULL,
  `IsGiftCard` tinyint(1) NOT NULL,
  `GiftCardTypeId` int NOT NULL,
  `OverriddenGiftCardAmount` decimal(18,4) DEFAULT NULL,
  `RequireOtherProducts` tinyint(1) NOT NULL,
  `AutomaticallyAddRequiredProducts` tinyint(1) NOT NULL,
  `IsDownload` tinyint(1) NOT NULL,
  `DownloadId` int NOT NULL,
  `UnlimitedDownloads` tinyint(1) NOT NULL,
  `MaxNumberOfDownloads` int NOT NULL,
  `DownloadExpirationDays` int DEFAULT NULL,
  `DownloadActivationTypeId` int NOT NULL,
  `HasSampleDownload` tinyint(1) NOT NULL,
  `SampleDownloadId` int NOT NULL,
  `HasUserAgreement` tinyint(1) NOT NULL,
  `UserAgreementText` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `IsRecurring` tinyint(1) NOT NULL,
  `RecurringCycleLength` int NOT NULL,
  `RecurringCyclePeriodId` int NOT NULL,
  `RecurringTotalCycles` int NOT NULL,
  `IsRental` tinyint(1) NOT NULL,
  `RentalPriceLength` int NOT NULL,
  `RentalPricePeriodId` int NOT NULL,
  `IsShipEnabled` tinyint(1) NOT NULL,
  `IsFreeShipping` tinyint(1) NOT NULL,
  `ShipSeparately` tinyint(1) NOT NULL,
  `AdditionalShippingCharge` decimal(18,4) NOT NULL,
  `DeliveryDateId` int NOT NULL,
  `IsTaxExempt` tinyint(1) NOT NULL,
  `TaxCategoryId` int NOT NULL,
  `IsTelecommunicationsOrBroadcastingOrElectronicServices` tinyint(1) NOT NULL,
  `ManageInventoryMethodId` int NOT NULL,
  `ProductAvailabilityRangeId` int NOT NULL,
  `UseMultipleWarehouses` tinyint(1) NOT NULL,
  `WarehouseId` int NOT NULL,
  `StockQuantity` int NOT NULL,
  `DisplayStockAvailability` tinyint(1) NOT NULL,
  `DisplayStockQuantity` tinyint(1) NOT NULL,
  `MinStockQuantity` int NOT NULL,
  `LowStockActivityId` int NOT NULL,
  `NotifyAdminForQuantityBelow` int NOT NULL,
  `BackorderModeId` int NOT NULL,
  `AllowBackInStockSubscriptions` tinyint(1) NOT NULL,
  `OrderMinimumQuantity` int NOT NULL,
  `OrderMaximumQuantity` int NOT NULL,
  `AllowAddingOnlyExistingAttributeCombinations` tinyint(1) NOT NULL,
  `NotReturnable` tinyint(1) NOT NULL,
  `DisableBuyButton` tinyint(1) NOT NULL,
  `DisableWishlistButton` tinyint(1) NOT NULL,
  `AvailableForPreOrder` tinyint(1) NOT NULL,
  `PreOrderAvailabilityStartDateTimeUtc` datetime DEFAULT NULL,
  `CallForPrice` tinyint(1) NOT NULL,
  `Price` decimal(18,4) NOT NULL,
  `OldPrice` decimal(18,4) NOT NULL,
  `ProductCost` decimal(18,4) NOT NULL,
  `CustomerEntersPrice` tinyint(1) NOT NULL,
  `MinimumCustomerEnteredPrice` decimal(18,4) NOT NULL,
  `MaximumCustomerEnteredPrice` decimal(18,4) NOT NULL,
  `BasepriceEnabled` tinyint(1) NOT NULL,
  `BasepriceAmount` decimal(18,4) NOT NULL,
  `BasepriceUnitId` int NOT NULL,
  `BasepriceBaseAmount` decimal(18,4) NOT NULL,
  `BasepriceBaseUnitId` int NOT NULL,
  `MarkAsNew` tinyint(1) NOT NULL,
  `MarkAsNewStartDateTimeUtc` datetime DEFAULT NULL,
  `MarkAsNewEndDateTimeUtc` datetime DEFAULT NULL,
  `HasTierPrices` tinyint(1) NOT NULL,
  `HasDiscountsApplied` tinyint(1) NOT NULL,
  `Weight` decimal(18,4) NOT NULL,
  `Length` decimal(18,4) NOT NULL,
  `Width` decimal(18,4) NOT NULL,
  `Height` decimal(18,4) NOT NULL,
  `AvailableStartDateTimeUtc` datetime DEFAULT NULL,
  `AvailableEndDateTimeUtc` datetime DEFAULT NULL,
  `DisplayOrder` int NOT NULL,
  `Published` tinyint(1) NOT NULL,
  `Deleted` tinyint(1) NOT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  `UpdatedOnUtc` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Product_VisibleIndividually_Published_Deleted_Extended` (`VisibleIndividually`,`Published`,`Deleted`),
  KEY `IX_Product_VisibleIndividually` (`VisibleIndividually`),
  KEY `IX_Product_SubjectToAcl` (`SubjectToAcl`),
  KEY `IX_Product_ShowOnHomepage` (`ShowOnHomepage`),
  KEY `IX_Product_Published` (`Published`),
  KEY `IX_Product_PriceDatesEtc` (`Price`,`AvailableStartDateTimeUtc`,`AvailableEndDateTimeUtc`,`Published`,`Deleted`),
  KEY `IX_Product_ParentGroupedProductId` (`ParentGroupedProductId`),
  KEY `IX_Product_LimitedToStores` (`LimitedToStores`),
  KEY `IX_Product_Delete_Id` (`Deleted`,`Id`),
  KEY `IX_Product_Deleted_and_Published` (`Published`,`Deleted`),
  KEY `IX_GetLowStockProducts` (`Deleted`,`VendorId`,`ProductTypeId`,`ManageInventoryMethodId`,`MinStockQuantity`,`UseMultipleWarehouses`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Sapatilha1',NULL,NULL,'10',NULL,NULL,NULL,NULL,5,0,1,'sapatilha','<p>sapatilha random</p>',NULL,1,0,1,NULL,1,0,0,0,0,0,0,0,0,NULL,0,0,1,2,1,10,NULL,10,1,3,0,NULL,0,100,0,10,0,1,0,1,0,0,0.0000,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,1,10000,0,0,0,0,0,NULL,0,10.0000,0.0000,0.0000,0,0.0000,1000.0000,0,0.0000,1,0.0000,1,0,NULL,NULL,0,0,0.0000,0.0000,0.0000,0.0000,NULL,NULL,0,1,1,'2022-11-27 00:05:03','2022-12-05 15:11:46'),(2,'qqlcoisa',NULL,NULL,'teste',NULL,NULL,NULL,NULL,5,0,1,'teste',NULL,NULL,1,0,0,NULL,1,0,0,0,0,0,0,0,0,NULL,0,0,0,0,1,10,NULL,0,0,0,0,NULL,0,100,0,10,0,1,0,1,0,0,0.0000,0,0,0,0,1,0,0,0,9999,0,0,0,0,1,0,0,1,10000,0,0,0,0,0,NULL,0,0.0000,0.0000,0.0000,0,0.0000,1000.0000,0,0.0000,1,0.0000,1,0,NULL,NULL,0,0,0.0000,0.0000,0.0000,0.0000,NULL,NULL,0,1,1,'2022-11-27 00:32:41','2022-11-27 00:37:34'),(3,'asfDJdovg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,1,NULL,NULL,NULL,1,0,0,NULL,1,0,0,0,0,0,0,0,0,NULL,0,0,0,0,1,10,NULL,0,0,0,0,NULL,0,100,0,10,0,1,0,1,0,0,0.0000,0,0,0,0,0,0,0,0,10000,0,0,0,0,1,0,0,1,10000,0,0,0,0,0,NULL,0,0.0000,0.0000,0.0000,0,0.0000,1000.0000,0,0.0000,1,0.0000,1,0,NULL,NULL,0,0,0.0000,0.0000,0.0000,0.0000,NULL,NULL,0,1,1,'2022-11-28 13:39:28','2022-11-28 13:39:57'),(4,'Adidas Stan Smith',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,1,'STAN SMITH, FOREVER.\r\nSEMPRE ICÓNICAS. AGORA MAIS SUSTENTÁVEIS.','<p>Atração intemporal. Estilo garantido. Da versatilidade no dia a dia. Ao longo de mais de 50 anos, as adidas Stan Smith continuam a ocupar o seu lugar de ícone. Este par apresenta um novo design como parte do compromisso da adidas de passar a utilizar exclusivamente poliéster reciclado a partir de 2024. Com um topo vegan e uma sola feita com resíduos de borracha, mantêm o estilo icónico, mas agora feito a pensar no planeta. Este produto foi feito com alternativas vegan aos ingredientes ou materiais de origem animal. Também inclui Primegreen, uma série de materiais reciclados para desempenho elevado. 50% do conteúdo do topo é reciclado. Sem poliéster virgem.</p>',NULL,1,0,1,NULL,1,0,0,0,0,0,0,0,0,NULL,0,0,0,0,1,10,NULL,0,0,0,0,NULL,0,100,0,10,0,1,0,1,0,0,0.0000,0,0,0,0,0,0,0,0,10000,0,0,0,0,1,0,0,1,10000,0,0,0,0,0,NULL,0,110.0000,0.0000,0.0000,0,0.0000,1000.0000,0,0.0000,1,0.0000,1,0,NULL,NULL,0,0,0.0000,0.0000,0.0000,0.0000,NULL,NULL,0,1,0,'2022-12-10 19:57:15','2022-12-11 23:22:49'),(5,'Nike Air Force (Branca)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,1,'Nike Air Force 1 (Branca)','<p>O esplendor perdura nas Nike Air Force 1 ’07, o modelo original de basquetebol que garante uma abordagem renovada daquilo que melhor conheces: sobreposições cosidas resistentes, acabamentos elegantes e a quantidade perfeita de destaque para que possas brilhar.</p>',NULL,1,0,1,NULL,1,0,0,0,0,0,0,0,0,NULL,0,0,0,0,1,10,NULL,0,0,0,0,NULL,0,100,0,10,0,1,0,1,0,0,0.0000,0,0,0,0,0,0,0,0,10000,0,0,0,0,1,0,0,1,10000,0,0,0,0,0,NULL,0,110.9900,0.0000,0.0000,0,0.0000,1000.0000,0,0.0000,1,0.0000,1,0,NULL,NULL,0,0,0.0000,0.0000,0.0000,0.0000,NULL,NULL,0,1,0,'2022-12-11 23:07:01','2022-12-12 00:22:16'),(6,'New Balance 550',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,1,'New Balance 550 (Verde)','<p>Reapresentamos uma lenda do basquetebol. O regresso dos 550 presta uma homenagem ao original de 1989 que definiu uma geração de jogadores. Originalmente usados por jogadores profissionais de basquetebol nos anos 80 e 90, os novos BB550 são simples e fiéis ao seu legado.</p>',NULL,1,0,1,NULL,1,0,0,0,0,0,0,0,0,NULL,0,0,0,0,1,10,NULL,0,0,0,0,NULL,0,100,0,10,0,1,0,1,0,0,0.0000,0,0,0,0,0,0,0,0,10000,0,0,0,0,1,0,0,1,10000,0,0,0,0,0,NULL,0,150.0000,0.0000,0.0000,0,0.0000,1000.0000,0,0.0000,1,0.0000,1,0,NULL,NULL,0,0,0.0000,0.0000,0.0000,0.0000,NULL,NULL,0,1,0,'2022-12-11 23:31:35','2022-12-11 23:32:58'),(7,'Vans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,1,'TÉNIS SKATE OLD SKOOL','<p>Com uma construção ainda mais robusta no interior para andar de skate. Completamente redesenhada para a prática moderna do skate, a nova coleção Skate Classics oferece mais daquilo que os skaters precisam para permitir a máxima progressão. As subcamadas reforçadas DURACAP™ reposicionadas e as partes superiores totalmente redesenhadas, combinadas com uma nova tira lateral de duas partes com um padrão texturado mais profundo na biqueira, tornam os novos Skate Old Skool suficientemente resistentes para aguentarem os abusos diários de andar de skate. Para maior controlo da tábua, o novo calcanhar moldado e as presilhas internas na pala mantém os teus pés presos. Até a sola de borracha que tornou a Vans famosa foi elevada com o composto de borracha SICKSTICK™ para maior aderência e sensibilidade na tábua. Além disso, as palmilhas POPCUSH™ com retorno de energia proporcionam maior amortecimento e proteção contra impactos, ao mesmo tempo que ajudam a diminuir a fadiga das pernas para sessões de skate mais longas. Também foram adicionados reforços internos no calcanhar para proporcionar maior apoio e estabilidade. Os novos Skate Old Skool com tira lateral atualizada e partes superiores em camurça e lona resistentes dão-te o visual icónico que pretendes, ao mesmo tempo que proporcionam todos os benefícios de desempenho que os skaters exigem. E não te esqueças de procurar a nova etiqueta checkerboard na lateral para garantir que estás a receber o melhor em estilo e desempenho moderno de skate.</p>',NULL,1,0,1,NULL,1,0,0,0,0,0,0,0,0,NULL,0,0,0,0,1,10,NULL,0,0,0,0,NULL,0,100,0,10,0,1,0,1,0,0,0.0000,0,0,0,0,0,0,0,0,10000,0,0,0,0,1,0,0,1,10000,0,0,0,0,0,NULL,0,85.0000,0.0000,0.0000,0,0.0000,1000.0000,0,0.0000,1,0.0000,1,0,NULL,NULL,0,0,0.0000,0.0000,0.0000,0.0000,NULL,NULL,0,1,0,'2022-12-11 23:58:22','2022-12-11 23:59:53'),(8,'TÉNIS VANS X ONE PIECE SKATE OLD SKOOL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,1,'Vamos festejar para celebrar o poder da amizade\r\nJunta-te ao Monkey D. Luffy e à sua tripulação pirata aventureira na busca pelo derradeiro tesouro, o One Piece, com uma coleção exclusiva Vans x One Piece.\r\n','<p>Com detalhes únicos inspirados na icónica manga japonesa, os Vans x One Piece Skate Old Skool combinam todas as características atualizadas da nossa linha Skate Classics com um icónico poster PROCURA-SE com a imagem da Nico Robin, a \"Demon Child\". A parede lateral revestida canaliza ainda mais o espírito One Piece, enquanto o reforço DURACAP™, as solas SickStick™ e o amortecimento POPCUSH™ oferecem todos as características de desempenho que os skaters precisam para permitir a máxima progressão. Os Vans x One Piece Skate Old Skool têm partes superiores em camurça.<br /><br />Com esta coleção criativa de calçado e vestuário, podes tornar-te parte da história de One Piece e reviver repetidamente as aventuras do Monkey D. Luffy.</p>',NULL,1,0,1,NULL,1,0,0,0,0,0,0,0,0,NULL,0,0,0,0,1,10,NULL,0,0,0,0,NULL,0,100,0,10,0,1,0,1,0,0,0.0000,0,0,0,0,0,0,0,0,10000,0,0,0,0,1,0,0,1,10000,0,0,0,0,0,NULL,0,85.0000,0.0000,0.0000,0,0.0000,1000.0000,0,0.0000,1,0.0000,1,0,NULL,NULL,0,0,0.0000,0.0000,0.0000,0.0000,NULL,NULL,0,1,0,'2022-12-12 00:20:39','2022-12-12 00:21:59'),(9,'Adidas GAZELLE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,1,'UMA REEDIÇÃO FIEL DAS ICÓNICAS SAPATILHAS GAZELLE DE 1991.','<p>As sapatilhas adidas Gazelle pisaram todos os cantos da nossa paisagem cultural — começando no mundo do desporto antes de entrarem no mundo da música e da moda. Estas sapatilhas são uma reedição fiel das Gazelle de 1991, com as mesmas texturas, materiais e proporções das originais. Até as cores evocam essa era, com tons discretos e pormenores contrastantes</p>',NULL,1,0,1,NULL,1,0,0,0,0,0,0,0,0,NULL,0,0,0,0,1,10,NULL,0,0,0,0,NULL,0,100,0,10,0,1,0,1,0,0,0.0000,0,0,0,0,0,0,0,0,10000,0,0,0,0,1,0,0,1,10000,0,0,0,0,0,NULL,0,100.0000,0.0000,0.0000,0,0.0000,1000.0000,0,0.0000,1,0.0000,1,0,NULL,NULL,0,0,0.0000,0.0000,0.0000,0.0000,NULL,NULL,0,1,0,'2022-12-12 00:26:30','2022-12-12 00:27:50'),(10,'Adidas Ultraboost 22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,1,'SAPATILHAS CONFORTÁVEIS E RESPONSIVAS, FEITAS EM PARTE COM PARLEY OCEAN PLASTIC.','<p>Provavelmente as sapatilhas de running mais confortáveis que fazemos. As Ultraboost 22 oferecem uma passada responsiva, independentemente do teu nível de treino ou distância. O conforto vem do envolvente topo adidas PRIMEKNIT e do incrível retorno de energia do BOOST. Incluem ainda o sistema Linear Energy Push, que aumenta a estabilidade no antepé e no entrepé para maior responsividade.</p>',NULL,1,0,0,NULL,1,0,0,0,0,0,0,0,0,NULL,0,0,0,0,1,10,NULL,0,0,0,0,NULL,0,100,0,10,0,1,0,1,0,0,0.0000,0,0,0,0,0,0,0,0,10000,0,0,0,0,1,0,0,1,10000,0,0,0,0,0,NULL,0,190.0000,0.0000,0.0000,0,0.0000,1000.0000,0,0.0000,1,0.0000,1,0,NULL,NULL,0,0,0.0000,0.0000,0.0000,0.0000,NULL,NULL,0,1,0,'2022-12-12 00:58:54','2022-12-12 01:12:48'),(11,'Adidas Adizero Adios 7 ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0,1,'VELOZES SAPATILHAS DE RUNNING FEITAS EM PARTE COM MATERIAIS RECICLADOS.','<div class=\"text-content___13aRm\">\r\n<p class=\"gl-vspace\">Persegue o teu próximo recorde pessoal com estas sapatilhas de running Adizero da adidas. O topo em malha respirável assenta numa mistura de superleve amortecimento Lightstrike e de resistente Lightstrike Pro. A combinação torna estas sapatilhas suficientemente velozes para as provas e resistentes para o treino do dia a dia. As TORSIONRODS acrescentam rigidez, potenciando a transferência de força a cada passo. O resultado? Um par de sapatilhas de running que te ajuda a correr mais depressa (e durante mais tempo) do que nunca, e sempre com os pés frescos.</p>\r\n</div>',NULL,1,0,0,NULL,1,0,0,0,0,0,0,0,0,NULL,0,0,0,0,1,10,NULL,0,0,0,0,NULL,0,100,0,10,0,1,0,1,0,0,0.0000,0,0,0,0,0,0,0,0,10000,0,0,0,0,1,0,0,1,10000,0,0,0,0,0,NULL,0,140.0000,0.0000,0.0000,0,0.0000,1000.0000,0,0.0000,1,0.0000,1,0,NULL,NULL,0,0,0.0000,0.0000,0.0000,0.0000,NULL,NULL,0,1,0,'2022-12-12 01:05:04','2022-12-12 01:06:22');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-31 11:50:05
