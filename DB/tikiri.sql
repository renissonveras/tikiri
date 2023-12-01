-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 10.1.1.24    Database: tikiri2023
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api_settings`
--

DROP TABLE IF EXISTS `api_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_settings`
--

LOCK TABLES `api_settings` WRITE;
/*!40000 ALTER TABLE `api_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banlist`
--

DROP TABLE IF EXISTS `banlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banlist` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ban_status` tinyint(1) NOT NULL,
  `email_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `internal_notes` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banlist`
--

LOCK TABLES `banlist` WRITE;
/*!40000 ALTER TABLE `banlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `banlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bar_notifications`
--

DROP TABLE IF EXISTS `bar_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bar_notifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bar_notifications`
--

LOCK TABLES `bar_notifications` WRITE;
/*!40000 ALTER TABLE `bar_notifications` DISABLE KEYS */;
INSERT INTO `bar_notifications` VALUES (31,'new-version','new version found please click <a href=http://10.1.1.24/file-update><b>here to download</b></a>','2023-12-01 14:39:53','2023-12-01 14:39:53');
/*!40000 ALTER TABLE `bar_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canned_response`
--

DROP TABLE IF EXISTS `canned_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canned_response` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `canned_response_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canned_response`
--

LOCK TABLES `canned_response` WRITE;
/*!40000 ALTER TABLE `canned_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `canned_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_settings`
--

DROP TABLE IF EXISTS `common_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `common_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `option_value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `optional_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_settings`
--

LOCK TABLES `common_settings` WRITE;
/*!40000 ALTER TABLE `common_settings` DISABLE KEYS */;
INSERT INTO `common_settings` VALUES (1,'itil','','0','',NULL,NULL),(2,'ticket_token_time_duration','1','','','2016-12-13 03:19:52','2016-12-13 03:19:52'),(3,'enable_rtl','0','','','2016-12-13 03:19:52','2017-06-16 13:41:46'),(4,'user_set_ticket_status','','1','','2016-12-13 03:19:52','2016-12-13 03:19:52'),(5,'send_otp','','1','','2016-12-13 03:19:52','2023-12-01 15:49:16'),(6,'email_mandatory','','1','','2016-12-13 03:19:52','2023-12-01 15:49:16'),(7,'user_priority','','0','','2016-12-13 03:19:52','2016-12-13 03:19:52');
/*!40000 ALTER TABLE `common_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conditions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `job` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conditions`
--

LOCK TABLES `conditions` WRITE;
/*!40000 ALTER TABLE `conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_code`
--

DROP TABLE IF EXISTS `country_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_code` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `iso` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nicename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `iso3` char(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `numcode` smallint NOT NULL,
  `phonecode` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_code`
--

LOCK TABLES `country_code` WRITE;
/*!40000 ALTER TABLE `country_code` DISABLE KEYS */;
INSERT INTO `country_code` VALUES (1,'AF','AFGHANISTAN','Afghanistan','AFG',4,93,'2016-12-13 03:19:33','2016-12-13 03:19:33'),(2,'AL','ALBANIA','Albania','ALB',8,355,'2016-12-13 03:19:33','2016-12-13 03:19:33'),(3,'DZ','ALGERIA','Algeria','DZA',12,213,'2016-12-13 03:19:33','2016-12-13 03:19:33'),(4,'AS','AMERICAN SAMOA','American Samoa','ASM',16,1684,'2016-12-13 03:19:33','2016-12-13 03:19:33'),(5,'AD','ANDORRA','Andorra','AND',20,376,'2016-12-13 03:19:33','2016-12-13 03:19:33'),(6,'AO','ANGOLA','Angola','AGO',24,244,'2016-12-13 03:19:33','2016-12-13 03:19:33'),(7,'AI','ANGUILLA','Anguilla','AIA',660,1264,'2016-12-13 03:19:33','2016-12-13 03:19:33'),(8,'AQ','ANTARCTICA','Antarctica','NUL',0,0,'2016-12-13 03:19:33','2016-12-13 03:19:33'),(9,'AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',28,1268,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(10,'AR','ARGENTINA','Argentina','ARG',32,54,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(11,'AM','ARMENIA','Armenia','ARM',51,374,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(12,'AW','ARUBA','Aruba','ABW',533,297,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(13,'AU','AUSTRALIA','Australia','AUS',36,61,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(14,'AT','AUSTRIA','Austria','AUT',40,43,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(15,'AZ','AZERBAIJAN','Azerbaijan','AZE',31,994,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(16,'BS','BAHAMAS','Bahamas','BHS',44,1242,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(17,'BH','BAHRAIN','Bahrain','BHR',48,973,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(18,'BD','BANGLADESH','Bangladesh','BGD',50,880,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(19,'BB','BARBADOS','Barbados','BRB',52,1246,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(20,'BY','BELARUS','Belarus','BLR',112,375,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(21,'BE','BELGIUM','Belgium','BEL',56,32,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(22,'BZ','BELIZE','Belize','BLZ',84,501,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(23,'BJ','BENIN','Benin','BEN',204,229,'2016-12-13 03:19:34','2016-12-13 03:19:34'),(24,'BM','BERMUDA','Bermuda','BMU',60,1441,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(25,'BT','BHUTAN','Bhutan','BTN',64,975,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(26,'BO','BOLIVIA','Bolivia','BOL',68,591,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(27,'BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',70,387,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(28,'BW','BOTSWANA','Botswana','BWA',72,267,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(29,'BV','BOUVET ISLAND','Bouvet Island','NUL',0,0,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(30,'BR','BRAZIL','Brazil','BRA',76,55,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(31,'IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory','NUL',0,246,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(32,'BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',96,673,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(33,'BG','BULGARIA','Bulgaria','BGR',100,359,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(34,'BF','BURKINA FASO','Burkina Faso','BFA',854,226,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(35,'BI','BURUNDI','Burundi','BDI',108,257,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(36,'KH','CAMBODIA','Cambodia','KHM',116,855,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(37,'CM','CAMEROON','Cameroon','CMR',120,237,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(38,'CA','CANADA','Canada','CAN',124,1,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(39,'CV','CAPE VERDE','Cape Verde','CPV',132,238,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(40,'KY','CAYMAN ISLANDS','Cayman Islands','CYM',136,1345,'2016-12-13 03:19:35','2016-12-13 03:19:35'),(41,'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',140,236,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(42,'TD','CHAD','Chad','TCD',148,235,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(43,'CL','CHILE','Chile','CHL',152,56,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(44,'CN','CHINA','China','CHN',156,86,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(45,'CX','CHRISTMAS ISLAND','Christmas Island','NUL',0,61,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(46,'CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands','NUL',0,672,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(47,'CO','COLOMBIA','Colombia','COL',170,57,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(48,'KM','COMOROS','Comoros','COM',174,269,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(49,'CG','CONGO','Congo','COG',178,242,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(50,'CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',180,242,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(51,'CK','COOK ISLANDS','Cook Islands','COK',184,682,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(52,'CR','COSTA RICA','Costa Rica','CRI',188,506,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(53,'CI','COTE DIVOIRE','Cote DIvoire','CIV',384,225,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(54,'HR','CROATIA','Croatia','HRV',191,385,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(55,'CU','CUBA','Cuba','CUB',192,53,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(56,'CY','CYPRUS','Cyprus','CYP',196,357,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(57,'CZ','CZECH REPUBLIC','Czech Republic','CZE',203,420,'2016-12-13 03:19:36','2016-12-13 03:19:36'),(58,'DK','DENMARK','Denmark','DNK',208,45,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(59,'DJ','DJIBOUTI','Djibouti','DJI',262,253,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(60,'DM','DOMINICA','Dominica','DMA',212,1767,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(61,'DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',214,1809,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(62,'EC','ECUADOR','Ecuador','ECU',218,593,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(63,'EG','EGYPT','Egypt','EGY',818,20,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(64,'SV','EL SALVADOR','El Salvador','SLV',222,503,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(65,'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',226,240,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(66,'ER','ERITREA','Eritrea','ERI',232,291,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(67,'EE','ESTONIA','Estonia','EST',233,372,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(68,'ET','ETHIOPIA','Ethiopia','ETH',231,251,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(69,'FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',238,500,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(70,'FO','FAROE ISLANDS','Faroe Islands','FRO',234,298,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(71,'FJ','FIJI','Fiji','FJI',242,679,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(72,'FI','FINLAND','Finland','FIN',246,358,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(73,'FR','FRANCE','France','FRA',250,33,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(74,'GF','FRENCH GUIANA','French Guiana','GUF',254,594,'2016-12-13 03:19:37','2016-12-13 03:19:37'),(75,'PF','FRENCH POLYNESIA','French Polynesia','PYF',258,689,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(76,'TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories','NUL',0,0,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(77,'GA','GABON','Gabon','GAB',266,241,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(78,'GM','GAMBIA','Gambia','GMB',270,220,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(79,'GE','GEORGIA','Georgia','GEO',268,995,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(80,'DE','GERMANY','Germany','DEU',276,49,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(81,'GH','GHANA','Ghana','GHA',288,233,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(82,'GI','GIBRALTAR','Gibraltar','GIB',292,350,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(83,'GR','GREECE','Greece','GRC',300,30,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(84,'GL','GREENLAND','Greenland','GRL',304,299,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(85,'GD','GRENADA','Grenada','GRD',308,1473,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(86,'GP','GUADELOUPE','Guadeloupe','GLP',312,590,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(87,'GU','GUAM','Guam','GUM',316,1671,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(88,'GT','GUATEMALA','Guatemala','GTM',320,502,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(89,'GN','GUINEA','Guinea','GIN',324,224,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(90,'GW','GUINEA-BISSAU','Guinea-Bissau','GNB',624,245,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(91,'GY','GUYANA','Guyana','GUY',328,592,'2016-12-13 03:19:38','2016-12-13 03:19:38'),(92,'HT','HAITI','Haiti','HTI',332,509,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(93,'HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands','NUL',0,0,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(94,'VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',336,39,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(95,'HN','HONDURAS','Honduras','HND',340,504,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(96,'HK','HONG KONG','Hong Kong','HKG',344,852,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(97,'HU','HUNGARY','Hungary','HUN',348,36,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(98,'IS','ICELAND','Iceland','ISL',352,354,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(99,'IN','INDIA','India','IND',356,91,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(100,'ID','INDONESIA','Indonesia','IDN',360,62,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(101,'IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',364,98,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(102,'IQ','IRAQ','Iraq','IRQ',368,964,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(103,'IE','IRELAND','Ireland','IRL',372,353,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(104,'IL','ISRAEL','Israel','ISR',376,972,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(105,'IT','ITALY','Italy','ITA',380,39,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(106,'JM','JAMAICA','Jamaica','JAM',388,1876,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(107,'JP','JAPAN','Japan','JPN',392,81,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(108,'JO','JORDAN','Jordan','JOR',400,962,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(109,'KZ','KAZAKHSTAN','Kazakhstan','KAZ',398,7,'2016-12-13 03:19:39','2016-12-13 03:19:39'),(110,'KE','KENYA','Kenya','KEN',404,254,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(111,'KI','KIRIBATI','Kiribati','KIR',296,686,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(112,'KP','KOREA, DEMOCRATIC PEOPLES REPUBLIC OF','Korea, Democratic Peoples Republic of','PRK',408,850,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(113,'KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',410,82,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(114,'KW','KUWAIT','Kuwait','KWT',414,965,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(115,'KG','KYRGYZSTAN','Kyrgyzstan','KGZ',417,996,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(116,'LA','LAO PEOPLES DEMOCRATIC REPUBLIC','Lao Peoples Democratic Republic','LAO',418,856,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(117,'LV','LATVIA','Latvia','LVA',428,371,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(118,'LB','LEBANON','Lebanon','LBN',422,961,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(119,'LS','LESOTHO','Lesotho','LSO',426,266,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(120,'LR','LIBERIA','Liberia','LBR',430,231,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(121,'LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',434,218,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(122,'LI','LIECHTENSTEIN','Liechtenstein','LIE',438,423,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(123,'LT','LITHUANIA','Lithuania','LTU',440,370,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(124,'LU','LUXEMBOURG','Luxembourg','LUX',442,352,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(125,'MO','MACAO','Macao','MAC',446,853,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(126,'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',807,389,'2016-12-13 03:19:40','2016-12-13 03:19:40'),(127,'MG','MADAGASCAR','Madagascar','MDG',450,261,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(128,'MW','MALAWI','Malawi','MWI',454,265,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(129,'MY','MALAYSIA','Malaysia','MYS',458,60,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(130,'MV','MALDIVES','Maldives','MDV',462,960,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(131,'ML','MALI','Mali','MLI',466,223,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(132,'MT','MALTA','Malta','MLT',470,356,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(133,'MH','MARSHALL ISLANDS','Marshall Islands','MHL',584,692,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(134,'MQ','MARTINIQUE','Martinique','MTQ',474,596,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(135,'MR','MAURITANIA','Mauritania','MRT',478,222,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(136,'MU','MAURITIUS','Mauritius','MUS',480,230,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(137,'YT','MAYOTTE','Mayotte','NUL',0,269,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(138,'MX','MEXICO','Mexico','MEX',484,52,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(139,'FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',583,691,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(140,'MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',498,373,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(141,'MC','MONACO','Monaco','MCO',492,377,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(142,'MN','MONGOLIA','Mongolia','MNG',496,976,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(143,'MS','MONTSERRAT','Montserrat','MSR',500,1664,'2016-12-13 03:19:41','2016-12-13 03:19:41'),(144,'MA','MOROCCO','Morocco','MAR',504,212,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(145,'MZ','MOZAMBIQUE','Mozambique','MOZ',508,258,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(146,'MM','MYANMAR','Myanmar','MMR',104,95,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(147,'NA','NAMIBIA','Namibia','NAM',516,264,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(148,'NR','NAURU','Nauru','NRU',520,674,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(149,'NP','NEPAL','Nepal','NPL',524,977,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(150,'NL','NETHERLANDS','Netherlands','NLD',528,31,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(151,'AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',530,599,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(152,'NC','NEW CALEDONIA','New Caledonia','NCL',540,687,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(153,'NZ','NEW ZEALAND','New Zealand','NZL',554,64,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(154,'NI','NICARAGUA','Nicaragua','NIC',558,505,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(155,'NE','NIGER','Niger','NER',562,227,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(156,'NG','NIGERIA','Nigeria','NGA',566,234,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(157,'NU','NIUE','Niue','NIU',570,683,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(158,'NF','NORFOLK ISLAND','Norfolk Island','NFK',574,672,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(159,'MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',580,1670,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(160,'NO','NORWAY','Norway','NOR',578,47,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(161,'OM','OMAN','Oman','OMN',512,968,'2016-12-13 03:19:42','2016-12-13 03:19:42'),(162,'PK','PAKISTAN','Pakistan','PAK',586,92,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(163,'PW','PALAU','Palau','PLW',585,680,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(164,'PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied','NUL',0,970,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(165,'PA','PANAMA','Panama','PAN',591,507,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(166,'PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',598,675,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(167,'PY','PARAGUAY','Paraguay','PRY',600,595,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(168,'PE','PERU','Peru','PER',604,51,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(169,'PH','PHILIPPINES','Philippines','PHL',608,63,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(170,'PN','PITCAIRN','Pitcairn','PCN',612,0,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(171,'PL','POLAND','Poland','POL',616,48,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(172,'PT','PORTUGAL','Portugal','PRT',620,351,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(173,'PR','PUERTO RICO','Puerto Rico','PRI',630,1787,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(174,'QA','QATAR','Qatar','QAT',634,974,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(175,'RE','REUNION','Reunion','REU',638,262,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(176,'RO','ROMANIA','Romania','ROM',642,40,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(177,'RU','RUSSIAN FEDERATION','Russian Federation','RUS',643,70,'2016-12-13 03:19:43','2016-12-13 03:19:43'),(178,'RW','RWANDA','Rwanda','RWA',646,250,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(179,'SH','SAINT HELENA','Saint Helena','SHN',654,290,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(180,'KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',659,1869,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(181,'LC','SAINT LUCIA','Saint Lucia','LCA',662,1758,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(182,'PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',666,508,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(183,'VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',670,1784,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(184,'WS','SAMOA','Samoa','WSM',882,684,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(185,'SM','SAN MARINO','San Marino','SMR',674,378,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(186,'ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',678,239,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(187,'SA','SAUDI ARABIA','Saudi Arabia','SAU',682,966,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(188,'SN','SENEGAL','Senegal','SEN',686,221,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(189,'CS','SERBIA AND MONTENEGRO','Serbia and Montenegro','NUL',0,381,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(190,'SC','SEYCHELLES','Seychelles','SYC',690,248,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(191,'SL','SIERRA LEONE','Sierra Leone','SLE',694,232,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(192,'SG','SINGAPORE','Singapore','SGP',702,65,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(193,'SK','SLOVAKIA','Slovakia','SVK',703,421,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(194,'SI','SLOVENIA','Slovenia','SVN',705,386,'2016-12-13 03:19:44','2016-12-13 03:19:44'),(195,'SB','SOLOMON ISLANDS','Solomon Islands','SLB',90,677,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(196,'SO','SOMALIA','Somalia','SOM',706,252,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(197,'ZA','SOUTH AFRICA','South Africa','ZAF',710,27,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(198,'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands','NUL',0,0,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(199,'ES','SPAIN','Spain','ESP',724,34,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(200,'LK','SRI LANKA','Sri Lanka','LKA',144,94,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(201,'SD','SUDAN','Sudan','SDN',736,249,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(202,'SR','SURINAME','Suriname','SUR',740,597,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(203,'SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',744,47,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(204,'SZ','SWAZILAND','Swaziland','SWZ',748,268,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(205,'SE','SWEDEN','Sweden','SWE',752,46,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(206,'CH','SWITZERLAND','Switzerland','CHE',756,41,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(207,'SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',760,963,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(208,'TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',158,886,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(209,'TJ','TAJIKISTAN','Tajikistan','TJK',762,992,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(210,'TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',834,255,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(211,'TH','THAILAND','Thailand','THA',764,66,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(212,'TL','TIMOR-LESTE','Timor-Leste','NUL',0,670,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(213,'TG','TOGO','Togo','TGO',768,228,'2016-12-13 03:19:45','2016-12-13 03:19:45'),(214,'TK','TOKELAU','Tokelau','TKL',772,690,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(215,'TO','TONGA','Tonga','TON',776,676,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(216,'TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',780,1868,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(217,'TN','TUNISIA','Tunisia','TUN',788,216,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(218,'TR','TURKEY','Turkey','TUR',792,90,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(219,'TM','TURKMENISTAN','Turkmenistan','TKM',795,7370,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(220,'TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',796,1649,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(221,'TV','TUVALU','Tuvalu','TUV',798,688,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(222,'UG','UGANDA','Uganda','UGA',800,256,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(223,'UA','UKRAINE','Ukraine','UKR',804,380,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(224,'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',784,971,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(225,'GB','UNITED KINGDOM','United Kingdom','GBR',826,44,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(226,'US','UNITED STATES','United States','USA',840,1,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(227,'UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands','NUL',0,1,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(228,'UY','URUGUAY','Uruguay','URY',858,598,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(229,'UZ','UZBEKISTAN','Uzbekistan','UZB',860,998,'2016-12-13 03:19:46','2016-12-13 03:19:46'),(230,'VU','VANUATU','Vanuatu','VUT',548,678,'2016-12-13 03:19:47','2016-12-13 03:19:47'),(231,'VE','VENEZUELA','Venezuela','VEN',862,58,'2016-12-13 03:19:47','2016-12-13 03:19:47'),(232,'VN','VIET NAM','Viet Nam','VNM',704,84,'2016-12-13 03:19:47','2016-12-13 03:19:47'),(233,'VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',92,1284,'2016-12-13 03:19:47','2016-12-13 03:19:47'),(234,'VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',850,1340,'2016-12-13 03:19:47','2016-12-13 03:19:47'),(235,'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',876,681,'2016-12-13 03:19:47','2016-12-13 03:19:47'),(236,'EH','WESTERN SAHARA','Western Sahara','ESH',732,212,'2016-12-13 03:19:47','2016-12-13 03:19:47'),(237,'YE','YEMEN','Yemen','YEM',887,967,'2016-12-13 03:19:47','2016-12-13 03:19:47'),(238,'ZM','ZAMBIA','Zambia','ZMB',894,260,'2016-12-13 03:19:47','2016-12-13 03:19:47'),(239,'ZW','ZIMBABWE','Zimbabwe','ZWE',716,263,'2016-12-13 03:19:47','2016-12-13 03:19:47');
/*!40000 ALTER TABLE `country_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_form_fields`
--

DROP TABLE IF EXISTS `custom_form_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_form_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `forms_id` int NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_form_fields`
--

LOCK TABLES `custom_form_fields` WRITE;
/*!40000 ALTER TABLE `custom_form_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_form_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_forms`
--

DROP TABLE IF EXISTS `custom_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_forms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `formname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_forms`
--

LOCK TABLES `custom_forms` WRITE;
/*!40000 ALTER TABLE `custom_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date_format`
--

DROP TABLE IF EXISTS `date_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date_format` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `format` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date_format`
--

LOCK TABLES `date_format` WRITE;
/*!40000 ALTER TABLE `date_format` DISABLE KEYS */;
INSERT INTO `date_format` VALUES (1,'dd/mm/yyyy'),(2,'dd-mm-yyyy'),(3,'dd.mm.yyyy'),(4,'mm/dd/yyyy'),(5,'mm:dd:yyyy'),(6,'mm-dd-yyyy'),(7,'yyyy/mm/dd'),(8,'yyyy.mm.dd'),(9,'yyyy-mm-dd');
/*!40000 ALTER TABLE `date_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date_time_format`
--

DROP TABLE IF EXISTS `date_time_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date_time_format` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `format` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date_time_format`
--

LOCK TABLES `date_time_format` WRITE;
/*!40000 ALTER TABLE `date_time_format` DISABLE KEYS */;
INSERT INTO `date_time_format` VALUES (1,'d/m/Y H:i:s'),(2,'d.m.Y H:i:s'),(3,'d-m-Y H:i:s'),(4,'m/d/Y H:i:s'),(5,'m.d.Y H:i:s'),(6,'m-d-Y H:i:s'),(7,'Y/m/d H:i:s'),(8,'Y.m.d H:i:s'),(9,'Y-m-d H:i:s');
/*!40000 ALTER TABLE `date_time_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sla` int unsigned DEFAULT NULL,
  `manager` int unsigned DEFAULT NULL,
  `ticket_assignment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `outgoing_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `template_set` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `auto_ticket_response` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `auto_message_response` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `auto_response_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `recipient` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `group_access` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `department_sign` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sla` (`sla`),
  KEY `manager_2` (`manager`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`sla`) REFERENCES `sla_plan` (`id`),
  CONSTRAINT `department_ibfk_2` FOREIGN KEY (`manager`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Suporte','1',1,1,'','','','','','','','','','2016-12-13 03:19:27','2017-11-18 04:36:49'),(2,'Análise e Desenvolvimento','1',1,NULL,'','','','','','','','','','2016-12-13 03:19:28','2017-10-26 22:40:33'),(3,'Redes e Segurança','1',1,NULL,'','','','','','','','','','2016-12-13 03:19:28','2017-10-26 22:40:45');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `department` int unsigned DEFAULT NULL,
  `priority` int unsigned DEFAULT NULL,
  `help_topic` int unsigned DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `fetching_host` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `fetching_port` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `fetching_protocol` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `fetching_encryption` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mailbox_protocol` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `imap_config` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `folder` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sending_host` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sending_port` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sending_protocol` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sending_encryption` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `smtp_validate` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `smtp_authentication` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `internal_notes` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `auto_response` tinyint(1) NOT NULL,
  `fetching_status` tinyint(1) NOT NULL,
  `move_to_folder` tinyint(1) NOT NULL,
  `delete_email` tinyint(1) NOT NULL,
  `do_nothing` tinyint(1) NOT NULL,
  `sending_status` tinyint(1) NOT NULL,
  `authentication` tinyint(1) NOT NULL,
  `header_spoofing` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `department` (`department`,`priority`,`help_topic`),
  KEY `department_2` (`department`,`priority`,`help_topic`),
  KEY `priority` (`priority`),
  KEY `help_topic` (`help_topic`),
  CONSTRAINT `emails_ibfk_1` FOREIGN KEY (`department`) REFERENCES `department` (`id`),
  CONSTRAINT `emails_ibfk_2` FOREIGN KEY (`priority`) REFERENCES `ticket_priority` (`priority_id`),
  CONSTRAINT `emails_ibfk_3` FOREIGN KEY (`help_topic`) REFERENCES `help_topic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faveo_mails`
--

DROP TABLE IF EXISTS `faveo_mails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faveo_mails` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email_id` int NOT NULL,
  `drive` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faveo_mails`
--

LOCK TABLES `faveo_mails` WRITE;
/*!40000 ALTER TABLE `faveo_mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `faveo_mails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faveo_queues`
--

DROP TABLE IF EXISTS `faveo_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faveo_queues` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faveo_queues`
--

LOCK TABLES `faveo_queues` WRITE;
/*!40000 ALTER TABLE `faveo_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `faveo_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_values`
--

DROP TABLE IF EXISTS `field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_values` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int unsigned DEFAULT NULL,
  `child_id` int unsigned DEFAULT NULL,
  `field_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `field_value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_values_field_id_foreign` (`field_id`),
  CONSTRAINT `field_values_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `custom_form_fields` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_values`
--

LOCK TABLES `field_values` WRITE;
/*!40000 ALTER TABLE `field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga_badge_events`
--

DROP TABLE IF EXISTS `ga_badge_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ga_badge_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_id` int NOT NULL,
  `badge_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `badge_id` (`badge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga_badge_events`
--

LOCK TABLES `ga_badge_events` WRITE;
/*!40000 ALTER TABLE `ga_badge_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `ga_badge_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga_badges`
--

DROP TABLE IF EXISTS `ga_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ga_badges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `icon` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `icon_sm` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `icon_lg` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `category_id` int NOT NULL,
  `type_id` int NOT NULL DEFAULT '0',
  `icon_css` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `priority` smallint NOT NULL DEFAULT '0',
  `credits` int NOT NULL DEFAULT '0',
  `xp` int NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `notification` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `isdeduct` tinyint(1) NOT NULL DEFAULT '0',
  `ilevel` smallint NOT NULL DEFAULT '0',
  `ishide` tinyint(1) NOT NULL DEFAULT '0',
  `ismultiple` tinyint(1) NOT NULL DEFAULT '0',
  `isactive` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga_badges`
--

LOCK TABLES `ga_badges` WRITE;
/*!40000 ALTER TABLE `ga_badges` DISABLE KEYS */;
INSERT INTO `ga_badges` VALUES (3,'Atendimento nota 10','Este distintivo é atribuído aos atendentes que atingem 10 pontos',NULL,NULL,NULL,4,1,NULL,5,0,0,10,'Atingiu a marca de 10 pontos.',0,0,0,0,1,'2017-11-09 08:09:22','2017-09-21 07:14:51'),(4,'Atendimento nota 100','Este distintivo é atribuído aos atendentes que atingem 100 pontos',NULL,NULL,NULL,4,1,NULL,4,0,0,100,'Este distintivo é atribuído aos atendentes que atingem 10 pontos',0,0,0,0,1,'2017-11-09 08:09:22','2017-09-19 08:07:43'),(5,'Atendimento nota 1000','Este distintivo é atribuído aos atendentes que atingem 10 pontos',NULL,NULL,NULL,4,1,NULL,0,0,0,1000,'Atingiu a marca de 1000 pontos.',0,0,0,0,1,'2017-11-09 08:09:22','2017-10-16 23:54:02'),(6,'Nível C','Primeiro nível a ser atingido por usuários do sistema. Para tanto o usuário deve atingir 1000 pontos, no entanto, ao atingir o nível este ganhará 100 pontos de bônus.',NULL,NULL,NULL,7,2,NULL,1,100,0,1000,'Você atingiu o Nível C, ganhou 100 pontos de bônus.',0,0,0,0,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(7,'Nível B','Primeiro nível a ser atingido por usuários do sistema. Para tanto o usuário deve atingir 10000 pontos, no entanto, ao atingir o nível este ganhará 1000 pontos de bônus.',NULL,NULL,NULL,7,2,NULL,1,1000,0,10000,'Parabéns você atingiu o Nível B e ganhará 1000 pontos de bônus.',0,0,0,0,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(8,'Nível A','Maior nível a ser atingido por usuários do sistema. Para tanto o usuário deve atingir 100000 pontos, no entanto, ao atingir o nível este ganhará 100 pontos de bônus.',NULL,NULL,NULL,7,2,NULL,0,10000,0,100000,'Parabéns você atingiu o nível máximo do Tikiri. Será premiado com um bônus de 10.000 para usar como quiser.',0,0,0,0,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(14,'Recebeu uma estrela na avaliação do atendimento','Esta pontuação o agente recebe sempre que o atendimento for avaliado.',NULL,NULL,NULL,8,3,NULL,5,0,1,0,'Parabéns você recebeu uma estrela na avaliação do atendimento que você fez.',0,0,0,0,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(15,'Recebeu 02 estrelas na avaliação do atendimento','Esta pontuação o agente recebe sempre que o atendimento for avaliado.',NULL,NULL,NULL,8,3,NULL,4,0,5,0,'Parabéns você recebeu uma estrela na avaliação do atendimento que você fez e, com isso, acumulou [value] pontos.',0,0,0,0,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(16,'Recebeu 03 estrelas na avaliação do atendimento','Esta pontuação o agente recebe sempre que o atendimento for avaliado.',NULL,NULL,NULL,8,3,NULL,3,0,10,0,'Parabéns você recebeu uma estrela na avaliação do atendimento que você fez e, com isso, acumulou [value] pontos.',0,0,0,0,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(17,'Recebeu 04 estrelas na avaliação do atendimento','Esta pontuação o agente recebe sempre que o atendimento for avaliado.',NULL,NULL,NULL,8,3,NULL,2,0,20,0,'Parabéns você recebeu uma estrela na avaliação do atendimento que você fez e, com isso, acumulou [value] pontos.',0,0,0,0,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(18,'Recebeu 05 estrelas na avaliação do atendimento','Esta pontuação o agente recebe sempre que o atendimento for avaliado.',NULL,NULL,NULL,8,3,NULL,4,0,50,0,'Parabéns você recebeu uma estrela na avaliação do atendimento que você fez e, com isso, acumulou [value] pontos.',0,0,0,0,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(19,'Abriu um chamado','Esta pontuação será atribuída sempre que um chamado for aberto pelo sistema',NULL,NULL,NULL,9,3,NULL,6,0,5,0,'Parabéns, você abriu um chamado pelo sistema, ganhou [value] pontos.',0,0,0,0,1,'2017-11-09 08:09:22','2017-10-20 22:14:08'),(20,'Compartilhamento de Conhecimento','Sempre que algo for postado na base de conhecimento esta pontuação será atribuída.',NULL,NULL,NULL,10,3,NULL,4,0,20,0,'Parabéns você compartilhou conhecimento na nossa Base de Conhecimento, ganhou [value] pontos.',0,0,0,0,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(21,'[100] Bônus por serviços não controlados pelo Tikiri','Este é um bônus controlado diretamente pela chefia.',NULL,NULL,NULL,6,4,NULL,3,100,0,0,'Parabéns, você recebeu um bônus de [value].',0,0,0,0,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(24,'Um turno de folga','O usuário terá direito a um dia de folga ao atingir os pontos mostrados no campo preço',NULL,NULL,NULL,5,5,NULL,1,0,0,5000,'Você adquiriu a recompensa e utilizou [value] pontos.',0,0,0,1,1,'2017-10-17 01:04:24','2017-10-17 01:04:32'),(25,'Recebeu 01 estrela na avaliação do contéudo que você postou','Esta pontuação o agente recebe sempre que o contéudo for avaliado.',NULL,NULL,NULL,8,3,NULL,5,0,1,0,'Parabéns você recebeu uma estrela na avaliação do conteúdo que postou, com isso, acumulou [value] pontos.',0,0,0,0,1,'2017-11-09 12:09:22','2017-11-09 12:09:22'),(26,'Recebeu 02 estrelas na avaliação do contéudo que você postou','Esta pontuação o agente recebe sempre que o contéudo for avaliado.',NULL,NULL,NULL,8,3,NULL,4,0,5,0,'Parabéns você recebeu uma estrela na avaliação do conteúdo que postou, com isso, acumulou [value] pontos.',0,0,0,0,1,'2017-11-09 12:09:22','2017-11-09 12:09:22'),(27,'Recebeu 03 estrelas na avaliação do contéudo que você postou','Esta pontuação o agente recebe sempre que o contéudo for avaliado.',NULL,NULL,NULL,8,3,NULL,3,0,10,0,'Parabéns você recebeu uma estrela na avaliação do conteúdo que postou, com isso, acumulou [value] pontos.',0,0,0,0,1,'2017-11-09 12:09:22','2017-11-09 12:09:22'),(28,'Recebeu 04 estrelas na avaliação do contéudo que você postou','Esta pontuação o agente recebe sempre que o contéudo for avaliado.',NULL,NULL,NULL,8,3,NULL,2,0,20,0,'Parabéns você recebeu uma estrela na avaliação do conteúdo que postou, com isso, acumulou [value] pontos.',0,0,0,0,1,'2017-11-09 12:09:22','2017-11-09 12:09:22'),(29,'Recebeu 05 estrelas na avaliação do contéudo que você postou','Esta pontuação o agente recebe sempre que o contéudo for avaliado.',NULL,NULL,NULL,8,3,NULL,4,0,50,0,'Parabéns você recebeu uma estrela na avaliação do conteúdo que postou, com isso, acumulou [value] pontos.',0,0,0,0,1,'2017-11-09 12:09:22','2017-11-09 12:09:22');
/*!40000 ALTER TABLE `ga_badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga_categories`
--

DROP TABLE IF EXISTS `ga_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ga_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `shorttitle` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `type_id` int NOT NULL DEFAULT '0',
  `priority` smallint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga_categories`
--

LOCK TABLES `ga_categories` WRITE;
/*!40000 ALTER TABLE `ga_categories` DISABLE KEYS */;
INSERT INTO `ga_categories` VALUES (4,'Padrão de Atendimento','Padrão de Atendimento','Este distintivo é atribuído aos atendentes assim que são habilitados para o game.',1,0,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(5,'Folgas no serviço','Folgas no serviço','Esta categoria de benefício concede folgas diversas aos funcionários.',5,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(6,'Bônus concedido pela chefia','Concedido de Chefia','Esta categoria engloba os pontos concedidos diretamente pela chefia (bônus) no saldo dos funcionários.',4,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(7,'Níveis Padrão','Níveis Padrão','Níveis Padrão',2,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(8,'Avaliação do Atendimento','Avaliação do Atendimento','Pontuações recebidas pela avaliação do atendimento.',3,1,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(9,'Utilização correta do sistema','Uso correto do Tikiri','Pontuações recebidas por bom atendimento',3,2,'2017-11-09 08:09:22','2017-11-09 08:09:22'),(10,'Compartilhamento de Conhecimento','Compartilhamento de Conhecimento','Pontuação recebida quando o conhecimento é compartilhado e/ou utilizado por meio da Base de Conhecimento',3,3,'2017-11-09 08:09:22','2017-11-09 08:09:22');
/*!40000 ALTER TABLE `ga_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga_events`
--

DROP TABLE IF EXISTS `ga_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ga_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `event_key` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga_events`
--

LOCK TABLES `ga_events` WRITE;
/*!40000 ALTER TABLE `ga_events` DISABLE KEYS */;
INSERT INTO `ga_events` VALUES (2,'Avaliação do Atendimento 1','Teste','Eventkey1','2017-11-09 08:09:22','2017-11-09 08:09:22');
/*!40000 ALTER TABLE `ga_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga_level_associate`
--

DROP TABLE IF EXISTS `ga_level_associate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ga_level_associate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `level_id` int NOT NULL,
  `reward_id` int NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `level_id` (`level_id`),
  KEY `reward_id` (`reward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga_level_associate`
--

LOCK TABLES `ga_level_associate` WRITE;
/*!40000 ALTER TABLE `ga_level_associate` DISABLE KEYS */;
INSERT INTO `ga_level_associate` VALUES (2,6,24,'','2017-10-17 01:18:52','2017-10-17 01:19:27');
/*!40000 ALTER TABLE `ga_level_associate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga_types`
--

DROP TABLE IF EXISTS `ga_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ga_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga_types`
--

LOCK TABLES `ga_types` WRITE;
/*!40000 ALTER TABLE `ga_types` DISABLE KEYS */;
INSERT INTO `ga_types` VALUES (1,'Distintivo','2017-11-09 08:09:22','2017-11-09 08:09:22'),(2,'Nível','2017-11-09 08:09:22','2017-11-09 08:09:22'),(3,'Ponto','2017-11-09 08:09:22','2017-11-09 08:09:22'),(4,'Bônus','2017-11-09 08:09:22','2017-11-09 08:09:22'),(5,'Recompensas','2017-11-09 08:09:22','2017-11-09 08:09:22');
/*!40000 ALTER TABLE `ga_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga_user_achievements`
--

DROP TABLE IF EXISTS `ga_user_achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ga_user_achievements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `added_date` datetime NOT NULL,
  `type_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga_user_achievements`
--

LOCK TABLES `ga_user_achievements` WRITE;
/*!40000 ALTER TABLE `ga_user_achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `ga_user_achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga_user_badges`
--

DROP TABLE IF EXISTS `ga_user_badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ga_user_badges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `badge_id` int NOT NULL,
  `type_id` int NOT NULL DEFAULT '0',
  `added_date` datetime NOT NULL,
  `added_user_id` int DEFAULT NULL,
  `acumulated_xp` int DEFAULT NULL,
  `acumulated_credits` int DEFAULT NULL,
  `deducted_xp` int DEFAULT NULL,
  `deducted_credits` int DEFAULT NULL,
  `total_credits_in_moment` int NOT NULL,
  `total_xp_in_moment` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ga_user_badges_ibfk_1` (`user_id`),
  KEY `ga_user_badges_ibfk_2` (`badge_id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga_user_badges`
--

LOCK TABLES `ga_user_badges` WRITE;
/*!40000 ALTER TABLE `ga_user_badges` DISABLE KEYS */;
/*!40000 ALTER TABLE `ga_user_badges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga_user_levels`
--

DROP TABLE IF EXISTS `ga_user_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ga_user_levels` (
  `user_id` int NOT NULL,
  `levels` int NOT NULL DEFAULT '0',
  `points` int NOT NULL DEFAULT '0',
  `credits` int NOT NULL DEFAULT '0',
  `init_points` int NOT NULL DEFAULT '0',
  `max_points` int NOT NULL DEFAULT '0',
  `level_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `level_id` (`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga_user_levels`
--

LOCK TABLES `ga_user_levels` WRITE;
/*!40000 ALTER TABLE `ga_user_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `ga_user_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_assign_department`
--

DROP TABLE IF EXISTS `group_assign_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_assign_department` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int unsigned NOT NULL,
  `department_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `group_assign_department_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  CONSTRAINT `group_assign_department_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_assign_department`
--

LOCK TABLES `group_assign_department` WRITE;
/*!40000 ALTER TABLE `group_assign_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_assign_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `group_status` tinyint(1) NOT NULL,
  `can_create_ticket` tinyint(1) NOT NULL,
  `can_edit_ticket` tinyint(1) NOT NULL,
  `can_post_ticket` tinyint(1) NOT NULL,
  `can_close_ticket` tinyint(1) NOT NULL,
  `can_assign_ticket` tinyint(1) NOT NULL,
  `can_transfer_ticket` tinyint(1) NOT NULL,
  `can_delete_ticket` tinyint(1) NOT NULL,
  `can_ban_email` tinyint(1) NOT NULL,
  `can_manage_canned` tinyint(1) NOT NULL,
  `can_manage_faq` tinyint(1) NOT NULL,
  `can_view_agent_stats` tinyint(1) NOT NULL,
  `department_access` tinyint(1) NOT NULL,
  `admin_notes` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Grupo Nível A',1,1,1,1,1,1,1,1,1,0,0,0,0,'','2016-12-13 03:19:27','2017-10-26 22:42:59'),(2,'Grupo Nível B',1,1,0,0,1,1,1,1,1,0,0,0,0,'','2016-12-13 03:19:27','2017-10-26 22:43:05'),(3,'Grupo Nível C',1,0,0,0,1,0,0,0,0,0,0,0,0,'','2016-12-13 03:19:27','2017-10-26 22:43:13');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `parent_topic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `custom_form` int unsigned DEFAULT NULL,
  `department` int unsigned DEFAULT NULL,
  `ticket_status` int unsigned DEFAULT NULL,
  `priority` int unsigned DEFAULT NULL,
  `sla_plan` int unsigned DEFAULT NULL,
  `thank_page` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ticket_num_format` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `internal_notes` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `auto_assign` int unsigned DEFAULT NULL,
  `auto_response` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_form` (`custom_form`),
  KEY `department` (`department`),
  KEY `ticket_status` (`ticket_status`),
  KEY `priority` (`priority`),
  KEY `sla_plan` (`sla_plan`),
  KEY `auto_assign_2` (`auto_assign`),
  CONSTRAINT `help_topic_ibfk_1` FOREIGN KEY (`custom_form`) REFERENCES `custom_forms` (`id`),
  CONSTRAINT `help_topic_ibfk_2` FOREIGN KEY (`department`) REFERENCES `department` (`id`),
  CONSTRAINT `help_topic_ibfk_3` FOREIGN KEY (`ticket_status`) REFERENCES `ticket_status` (`id`),
  CONSTRAINT `help_topic_ibfk_4` FOREIGN KEY (`priority`) REFERENCES `ticket_priority` (`priority_id`),
  CONSTRAINT `help_topic_ibfk_5` FOREIGN KEY (`sla_plan`) REFERENCES `sla_plan` (`id`),
  CONSTRAINT `help_topic_ibfk_6` FOREIGN KEY (`auto_assign`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
INSERT INTO `help_topic` VALUES (1,'Pedido de Suporte','',NULL,1,1,2,1,'','1','',1,1,NULL,0,'2016-12-13 03:19:28','2017-10-27 00:04:17'),(2,'Dúvidas','',NULL,2,1,2,1,'','1','',1,1,NULL,0,'2016-12-13 03:19:28','2017-10-27 00:04:49'),(3,'Pedido de novo recurso','',NULL,2,1,2,1,'','1','',1,1,NULL,0,'2016-12-13 03:19:28','2017-10-27 00:05:05');
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_reserved_at_index` (`queue`,`reserved`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kb_article`
--

DROP TABLE IF EXISTS `kb_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kb_article` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `autor_id` int NOT NULL,
  `publish_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kb_article`
--

LOCK TABLES `kb_article` WRITE;
/*!40000 ALTER TABLE `kb_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `kb_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kb_article_relationship`
--

DROP TABLE IF EXISTS `kb_article_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kb_article_relationship` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_relationship_article_id_foreign` (`article_id`),
  KEY `article_relationship_category_id_foreign` (`category_id`),
  CONSTRAINT `article_relationship_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `kb_article` (`id`),
  CONSTRAINT `article_relationship_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `kb_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kb_article_relationship`
--

LOCK TABLES `kb_article_relationship` WRITE;
/*!40000 ALTER TABLE `kb_article_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `kb_article_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kb_category`
--

DROP TABLE IF EXISTS `kb_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kb_category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `parent` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kb_category`
--

LOCK TABLES `kb_category` WRITE;
/*!40000 ALTER TABLE `kb_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `kb_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kb_comment`
--

DROP TABLE IF EXISTS `kb_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kb_comment` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_article_id_foreign` (`article_id`),
  CONSTRAINT `comment_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `kb_article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kb_comment`
--

LOCK TABLES `kb_comment` WRITE;
/*!40000 ALTER TABLE `kb_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `kb_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kb_pages`
--

DROP TABLE IF EXISTS `kb_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kb_pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kb_pages`
--

LOCK TABLES `kb_pages` WRITE;
/*!40000 ALTER TABLE `kb_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `kb_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kb_settings`
--

DROP TABLE IF EXISTS `kb_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kb_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pagination` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kb_settings`
--

LOCK TABLES `kb_settings` WRITE;
/*!40000 ALTER TABLE `kb_settings` DISABLE KEYS */;
INSERT INTO `kb_settings` VALUES (1,10,'2016-12-13 03:19:32','2016-12-13 03:19:32');
/*!40000 ALTER TABLE `kb_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en'),(2,'Italian','it'),(3,'German','de'),(4,'French','fr'),(5,'Brazilian Portuguese','pt_BR'),(6,'Dutch','nl'),(7,'Spanish','es'),(8,'Norwegian','nb_NO'),(9,'Danish','da');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_notification`
--

DROP TABLE IF EXISTS `log_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_notification` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `log` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_notification`
--

LOCK TABLES `log_notification` WRITE;
/*!40000 ALTER TABLE `log_notification` DISABLE KEYS */;
INSERT INTO `log_notification` VALUES (1,'NOT-1','2016-12-13 03:19:29','2016-12-13 03:19:29');
/*!40000 ALTER TABLE `log_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_attempts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `User` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `IP` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Attempts` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `LastLogin` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_services`
--

DROP TABLE IF EXISTS `mail_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_services` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_services`
--

LOCK TABLES `mail_services` WRITE;
/*!40000 ALTER TABLE `mail_services` DISABLE KEYS */;
INSERT INTO `mail_services` VALUES (1,'SMTP','smtp','2016-12-13 03:19:08','2016-12-13 03:19:08'),(2,'Php Mail','mail','2016-12-13 03:19:08','2016-12-13 03:19:08'),(3,'Send Mail','sendmail','2016-12-13 03:19:08','2016-12-13 03:19:08'),(4,'Mailgun','mailgun','2016-12-13 03:19:08','2016-12-13 03:19:08'),(5,'Mandrill','mandrill','2016-12-13 03:19:09','2016-12-13 03:19:09'),(6,'Log file','log','2016-12-13 03:19:09','2016-12-13 03:19:09');
/*!40000 ALTER TABLE `mail_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailbox_protocol`
--

DROP TABLE IF EXISTS `mailbox_protocol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mailbox_protocol` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailbox_protocol`
--

LOCK TABLES `mailbox_protocol` WRITE;
/*!40000 ALTER TABLE `mailbox_protocol` DISABLE KEYS */;
INSERT INTO `mailbox_protocol` VALUES (1,'IMAP','/imap'),(2,'IMAP+SSL','/imap/ssl'),(3,'IMAP+TLS','/imap/tls'),(4,'IMAP+SSL/No-validate','/imap/ssl/novalidate-cert');
/*!40000 ALTER TABLE `mailbox_protocol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2016_02_16_140450_create_banlist_table',1,1),('2016_02_16_140450_create_canned_response_table',1,2),('2016_02_16_140450_create_custom_form_fields_table',1,3),('2016_02_16_140450_create_custom_forms_table',1,4),('2016_02_16_140450_create_date_format_table',1,5),('2016_02_16_140450_create_date_time_format_table',1,6),('2016_02_16_140450_create_department_table',1,7),('2016_02_16_140450_create_emails_table',1,8),('2016_02_16_140450_create_group_assign_department_table',1,9),('2016_02_16_140450_create_groups_table',1,10),('2016_02_16_140450_create_help_topic_table',1,11),('2016_02_16_140450_create_kb_article_relationship_table',1,12),('2016_02_16_140450_create_kb_article_table',1,13),('2016_02_16_140450_create_kb_category_table',1,14),('2016_02_16_140450_create_kb_comment_table',1,15),('2016_02_16_140450_create_kb_pages_table',1,16),('2016_02_16_140450_create_kb_settings_table',1,17),('2016_02_16_140450_create_languages_table',1,18),('2016_02_16_140450_create_log_notification_table',1,19),('2016_02_16_140450_create_mailbox_protocol_table',1,20),('2016_02_16_140450_create_organization_table',1,21),('2016_02_16_140450_create_password_resets_table',1,22),('2016_02_16_140450_create_plugins_table',1,23),('2016_02_16_140450_create_settings_alert_notice_table',1,24),('2016_02_16_140450_create_settings_auto_response_table',1,25),('2016_02_16_140450_create_settings_company_table',1,26),('2016_02_16_140450_create_settings_email_table',1,27),('2016_02_16_140450_create_settings_ratings_table',1,28),('2016_02_16_140450_create_settings_system_table',1,29),('2016_02_16_140450_create_settings_ticket_table',1,30),('2016_02_16_140450_create_sla_plan_table',1,31),('2016_02_16_140450_create_team_assign_agent_table',1,32),('2016_02_16_140450_create_teams_table',1,33),('2016_02_16_140450_create_template_table',1,34),('2016_02_16_140450_create_ticket_attachment_table',1,35),('2016_02_16_140450_create_ticket_collaborator_table',1,36),('2016_02_16_140450_create_ticket_form_data_table',1,37),('2016_02_16_140450_create_ticket_priority_table',1,38),('2016_02_16_140450_create_ticket_source_table',1,39),('2016_02_16_140450_create_ticket_status_table',1,40),('2016_02_16_140450_create_ticket_thread_table',1,41),('2016_02_16_140450_create_tickets_table',1,42),('2016_02_16_140450_create_time_format_table',1,43),('2016_02_16_140450_create_timezone_table',1,44),('2016_02_16_140450_create_user_assign_organization_table',1,45),('2016_02_16_140450_create_users_table',1,46),('2016_02_16_140450_create_version_check_table',1,47),('2016_02_16_140450_create_widgets_table',1,48),('2016_02_16_140454_add_foreign_keys_to_canned_response_table',1,49),('2016_02_16_140454_add_foreign_keys_to_department_table',1,50),('2016_02_16_140454_add_foreign_keys_to_emails_table',1,51),('2016_02_16_140454_add_foreign_keys_to_group_assign_department_table',1,52),('2016_02_16_140454_add_foreign_keys_to_help_topic_table',1,53),('2016_02_16_140454_add_foreign_keys_to_kb_article_relationship_table',1,54),('2016_02_16_140454_add_foreign_keys_to_kb_comment_table',1,55),('2016_02_16_140454_add_foreign_keys_to_organization_table',1,56),('2016_02_16_140454_add_foreign_keys_to_settings_system_table',1,57),('2016_02_16_140454_add_foreign_keys_to_team_assign_agent_table',1,58),('2016_02_16_140454_add_foreign_keys_to_teams_table',1,59),('2016_02_16_140454_add_foreign_keys_to_ticket_attachment_table',1,60),('2016_02_16_140454_add_foreign_keys_to_ticket_collaborator_table',1,61),('2016_02_16_140454_add_foreign_keys_to_ticket_form_data_table',1,62),('2016_02_16_140454_add_foreign_keys_to_ticket_thread_table',1,63),('2016_02_16_140454_add_foreign_keys_to_tickets_table',1,64),('2016_02_16_140454_add_foreign_keys_to_user_assign_organization_table',1,65),('2016_02_16_140454_add_foreign_keys_to_users_table',1,66),('2016_03_31_061239_create_notifications_table',1,67),('2016_03_31_061534_create_notification_types_table',1,68),('2016_03_31_061740_create_user_notification_table',1,69),('2016_04_18_115852_create_workflow_name_table',1,70),('2016_04_18_115900_create_workflow_rule_table',1,71),('2016_04_18_115908_create_workflow_action_table',1,72),('2016_05_10_102423_create_country_code_table',1,73),('2016_05_10_102604_create_bar_notifications_table',1,74),('2016_05_11_105244_create_api_settings_table',1,75),('2016_05_19_055008_create_workflow_close_table',1,76),('2016_06_02_072210_create_common_settings_table',1,77),('2016_06_02_074913_create_login_attempts_table',1,78),('2016_06_02_080005_create_ratings_table',1,79),('2016_06_02_081020_create_rating_ref_table',1,80),('2016_06_02_090225_create_settings_security_table',1,81),('2016_06_02_090628_create_templates_table',1,82),('2016_06_02_094409_create_template_sets_table',1,83),('2016_06_02_094420_create_template_types_table',1,84),('2016_06_02_095357_create_ticket_token_table',1,85),('2016_06_28_141613_version1079table',1,86),('2016_07_02_051247_create_jobs_table',1,87),('2016_07_02_051439_create_failed_jobs_table',1,88),('2016_07_19_071910_create_field_values_table',1,89),('2016_07_26_084458_create_faveo_mails_table',1,90),('2016_07_26_090201_create_faveo_queues_table',1,91),('2016_07_26_094753_create_mail_services_table',1,92),('2016_07_26_095020_create_queue_services_table',1,93),('2016_07_29_113012_create_conditions_table',1,94),('2016_08_08_095744_create_social_media_table',1,95),('2016_08_12_104410_create_user_additional_infos_table',1,96),('2016_08_16_104539_alter_ticket_source_table',1,97),('2016_11_30_122809_alter_attachment_table',2,98),('2017_08_23_032310_create_ga_badges',4,99),('2017_08_23_032931_create_ga_badge_events',4,100),('2017_08_23_032945_create_ga_categories',4,101),('2017_08_23_032953_create_ga_events',4,102),('2017_08_23_033000_create_ga_level_associate',4,103),('2017_08_23_033008_create_ga_user_achievements',4,104),('2017_08_23_033015_create_ga_user_badges',4,105),('2017_08_23_033022_create_ga_user_levels',4,106),('2017_09_11_034305_create_ga_type',4,107),('2016_05_28_133807_create_sd_product_status_table',5,108),('2016_05_28_133934_create_d_product_proc_mode_table',5,109),('2016_05_28_134915_create_sd_products_table',5,110),('2016_05_29_131105_create_sd_cab_table',5,111),('2016_05_30_084708_create_sd_attachment_types_table',5,112),('2016_05_30_085022_create_sd_attachments_table',5,113),('2016_05_30_095117_create_sd_asset_types_table',5,114),('2016_05_30_095158_create_sd_impact_types_table',5,115),('2016_05_30_095427_create_sd_location_categories_table',5,116),('2016_05_30_095428_create_sd_locations_table',5,117),('2016_05_30_095506_create_sd_assets_table',5,118),('2016_05_30_122952_create_sd_contract_types_table',5,119),('2016_05_30_130830_create_sd_vendors_table',5,120),('2016_05_30_131734_create_sd_license_types_table',5,121),('2016_05_30_134953_create_sd_contracts_table',5,122),('2016_05_30_135606_create_sd_sd_contract_asset_relations_table',5,123),('2016_05_31_100449_create_sd_release_types_table',5,124),('2016_05_31_100518_create_sd_release_status_table',5,125),('2016_05_31_100605_create_sd_release_priority_table',5,126),('2016_05_31_100704_create_sd_releases_table',5,127),('2016_05_31_102512_create_sd_change_status_table',5,128),('2016_05_31_102537_create_sd_change_priority_table',5,129),('2016_05_31_102602_create_sd_change_types_table',5,130),('2016_05_31_102657_create_sd_changes_table',5,131),('2016_06_09_133929_create_sd_problem_table',5,132),('2016_06_09_133939_create_sd_asset_relations_table',5,133),('2016_07_01_042955_create_sd_form_table',5,134),('2016_07_01_043044_create_sd_form_field_table',5,135),('2016_07_01_043125_create_sd_field_value_table',5,136),('2016_07_01_115934_create_sd_asset_type_form_table',5,137),('2016_07_03_153743_create_sd_asset_form_table',5,138),('2016_07_05_103737_create_sd_cab_votes_table',5,139),('2016_07_05_113126_create_sd_add_template_table',5,140),('2016_07_09_073642_create_sd_general_table',5,141),('2016_07_09_123113_create_sd_problem_change_table',5,142),('2016_07_09_123149_create_sd_change_release_table',5,143),('2016_07_12_120647_create_table_sd_ticket_relation',5,144),('2016_07_14_043706_create_sd_product_vendor_relation_table',5,145);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_types`
--

DROP TABLE IF EXISTS `notification_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `icon_class` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_types`
--

LOCK TABLES `notification_types` WRITE;
/*!40000 ALTER TABLE `notification_types` DISABLE KEYS */;
INSERT INTO `notification_types` VALUES (1,'Um usuário cadastrado','registration','fa fa-user','2016-12-13 03:19:14','2016-12-13 03:19:14'),(2,'Você tem uma nova resposta neste ticket','reply','fa fa-envelope','2016-12-13 03:19:14','2016-12-13 03:19:14'),(3,'Um novo ticket foi criado','new_ticket','fa fa-envelope','2016-12-13 03:19:14','2016-12-13 03:19:14'),(4,'Você acumulou pontos','game','fa fa-shopping-basket','2017-10-18 04:00:00','2017-10-18 04:00:00');
/*!40000 ALTER TABLE `notification_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `model_id` int NOT NULL,
  `userid_created` int NOT NULL,
  `type_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,1,1,3,'2023-12-01 15:59:09','2023-12-01 15:59:09'),(2,1,1,3,'2023-12-01 16:50:46','2023-12-01 16:50:46');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `website` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `head` int unsigned DEFAULT NULL,
  `internal_notes` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `head` (`head`),
  CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`head`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'Tikiri Gestão de TI','55 95 981128113','http://www.tikiri.com.br','Rua Pedro Teixeira, 597',NULL,'','2017-07-01 08:16:03','2017-07-01 08:16:03');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('cliente@tikiri.com.br','JR6VXC7ZbyTyoc88wOMCW6uyiwuOJLWWcdTTgjumSJo9OKwjM7jY92It4z1f','2017-11-21 02:40:14');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugins` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
INSERT INTO `plugins` VALUES (1,'ServiceDesk','ServiceDesk',1,'2017-07-16 07:54:52','2017-10-26 22:14:19'),(2,'Gamification','Gamification',1,'2017-09-11 05:27:22','2017-09-11 08:22:54');
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue_services`
--

DROP TABLE IF EXISTS `queue_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queue_services` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue_services`
--

LOCK TABLES `queue_services` WRITE;
/*!40000 ALTER TABLE `queue_services` DISABLE KEYS */;
INSERT INTO `queue_services` VALUES (1,'Sync','sync',1,'2016-12-13 03:19:09','2016-12-13 03:19:09'),(2,'Database','database',0,'2016-12-13 03:19:09','2016-12-13 03:19:09'),(3,'Beanstalkd','beanstalkd',0,'2016-12-13 03:19:09','2016-12-13 03:19:09'),(4,'SQS','sqs',0,'2016-12-13 03:19:09','2016-12-13 03:19:09'),(5,'Iron','iron',0,'2016-12-13 03:19:09','2016-12-13 03:19:09'),(6,'Redis','redis',0,'2016-12-13 03:19:09','2016-12-13 03:19:09');
/*!40000 ALTER TABLE `queue_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_ref`
--

DROP TABLE IF EXISTS `rating_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_ref` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `rating_id` int NOT NULL,
  `ticket_id` int NOT NULL,
  `thread_id` int NOT NULL,
  `article_id` int DEFAULT NULL,
  `rating_value` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_ref`
--

LOCK TABLES `rating_ref` WRITE;
/*!40000 ALTER TABLE `rating_ref` DISABLE KEYS */;
INSERT INTO `rating_ref` VALUES (1,1,1,0,NULL,5,'2017-07-01 00:15:48','2017-07-01 00:15:48'),(2,1,23,0,NULL,3,'2017-10-19 18:53:32','2017-10-20 06:25:44'),(3,2,23,46,NULL,5,'2017-10-20 06:44:03','2017-10-20 06:59:44'),(4,3,0,0,NULL,0,'2017-10-20 23:38:56','2017-10-20 23:38:56'),(5,1,22,0,NULL,4,'2017-10-21 16:45:27','2017-10-21 16:45:27'),(6,2,22,51,NULL,3,'2017-10-21 16:45:34','2017-10-21 16:45:34'),(7,1,7,0,NULL,3,'2017-10-21 22:43:22','2017-10-21 22:43:22'),(9,3,0,0,1,3,'2017-10-22 00:01:19','2017-10-22 00:01:19');
/*!40000 ALTER TABLE `rating_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `display_order` int NOT NULL,
  `allow_modification` int NOT NULL,
  `rating_scale` int NOT NULL,
  `rating_area` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `restrict` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,'Satisfação geral',1,1,5,'Helpdesk','General','2016-12-13 03:19:53','2017-10-19 18:44:42'),(2,'Avalie a resposta',1,1,5,'Comentarios','Support','2016-12-13 03:19:53','2017-10-19 18:45:26'),(3,'Avalie o conteúdo',2,0,5,'Article','General','2017-10-20 23:38:56','2017-10-20 23:38:56');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_asset_form`
--

DROP TABLE IF EXISTS `sd_asset_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_asset_form` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_asset_form`
--

LOCK TABLES `sd_asset_form` WRITE;
/*!40000 ALTER TABLE `sd_asset_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_asset_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_asset_relations`
--

DROP TABLE IF EXISTS `sd_asset_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_asset_relations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_ids` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_asset_relations`
--

LOCK TABLES `sd_asset_relations` WRITE;
/*!40000 ALTER TABLE `sd_asset_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_asset_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_asset_type_form`
--

DROP TABLE IF EXISTS `sd_asset_type_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_asset_type_form` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asset_type_id` int unsigned DEFAULT NULL,
  `form_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_asset_type_form_asset_type_id_foreign` (`asset_type_id`),
  KEY `sd_asset_type_form_form_id_foreign` (`form_id`),
  CONSTRAINT `sd_asset_type_form_asset_type_id_foreign` FOREIGN KEY (`asset_type_id`) REFERENCES `sd_asset_types` (`id`),
  CONSTRAINT `sd_asset_type_form_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `sd_forms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_asset_type_form`
--

LOCK TABLES `sd_asset_type_form` WRITE;
/*!40000 ALTER TABLE `sd_asset_type_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_asset_type_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_asset_types`
--

DROP TABLE IF EXISTS `sd_asset_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_asset_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `parent_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_asset_types`
--

LOCK TABLES `sd_asset_types` WRITE;
/*!40000 ALTER TABLE `sd_asset_types` DISABLE KEYS */;
INSERT INTO `sd_asset_types` VALUES (1,'Serviços',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Cloud',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Hardware',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Software',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Materiais',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Rede',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Documentos',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Outros',0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Serviço de Negócio',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Serviço de TI',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Serviço de Venda',9,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Serviço de Suporte',9,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Serviço de Email ',10,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Serviço de Backup',10,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Serviço de Hosting',10,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'AWS',2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'EC2',16,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'RDS',16,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'EBS',16,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'Computador',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'Storage',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Data Center',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'Dispositivos Móveis',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Monitor',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'Impressora',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'Projetor',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'Scanner',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Router',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Switch',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'Access Point',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'Firewall',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'Outros Dispositivos',3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'Desktop',20,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'Laptop',20,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'Servidor',20,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'Servidor Unix',35,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'Servidor Solaris',35,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'Servidor Aix',35,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'Servidor VMware',35,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'Servidor Windows',35,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'Disco',21,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_asset_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_assets`
--

DROP TABLE IF EXISTS `sd_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_assets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `external_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `organization` int DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `department_id` int unsigned DEFAULT NULL,
  `asset_type_id` int unsigned DEFAULT NULL,
  `product_id` int unsigned DEFAULT NULL,
  `impact_type_id` int unsigned DEFAULT NULL,
  `managed_by` int unsigned DEFAULT NULL,
  `used_by` int unsigned DEFAULT NULL,
  `attachment` int unsigned DEFAULT NULL,
  `location_id` int unsigned DEFAULT NULL,
  `assigned_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sd_assets_external_id_unique` (`external_id`),
  KEY `sd_assets_department_id_foreign` (`department_id`),
  KEY `sd_assets_asset_type_id_foreign` (`asset_type_id`),
  KEY `sd_assets_product_id_foreign` (`product_id`),
  KEY `sd_assets_impact_type_id_foreign` (`impact_type_id`),
  KEY `sd_assets_managed_by_foreign` (`managed_by`),
  KEY `sd_assets_used_by_foreign` (`used_by`),
  KEY `sd_assets_attachment_foreign` (`attachment`),
  KEY `sd_assets_location_id_foreign` (`location_id`),
  CONSTRAINT `sd_assets_asset_type_id_foreign` FOREIGN KEY (`asset_type_id`) REFERENCES `sd_asset_types` (`id`),
  CONSTRAINT `sd_assets_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `sd_attachments` (`id`),
  CONSTRAINT `sd_assets_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `sd_assets_impact_type_id_foreign` FOREIGN KEY (`impact_type_id`) REFERENCES `sd_impact_types` (`id`),
  CONSTRAINT `sd_assets_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `sd_locations` (`id`),
  CONSTRAINT `sd_assets_managed_by_foreign` FOREIGN KEY (`managed_by`) REFERENCES `users` (`id`),
  CONSTRAINT `sd_assets_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `sd_products` (`id`),
  CONSTRAINT `sd_assets_used_by_foreign` FOREIGN KEY (`used_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_assets`
--

LOCK TABLES `sd_assets` WRITE;
/*!40000 ALTER TABLE `sd_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_attachment_types`
--

DROP TABLE IF EXISTS `sd_attachment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_attachment_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_attachment_types`
--

LOCK TABLES `sd_attachment_types` WRITE;
/*!40000 ALTER TABLE `sd_attachment_types` DISABLE KEYS */;
INSERT INTO `sd_attachment_types` VALUES (1,'Database','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'File','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_attachment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_attachments`
--

DROP TABLE IF EXISTS `sd_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_attachments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `saved` int unsigned NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_attachments_saved_foreign` (`saved`),
  CONSTRAINT `sd_attachments_saved_foreign` FOREIGN KEY (`saved`) REFERENCES `sd_attachment_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_attachments`
--

LOCK TABLES `sd_attachments` WRITE;
/*!40000 ALTER TABLE `sd_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_cab`
--

DROP TABLE IF EXISTS `sd_cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_cab` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `head` int unsigned DEFAULT NULL,
  `approvers` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `aproval_mandatory` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_cab_head_foreign` (`head`),
  CONSTRAINT `sd_cab_head_foreign` FOREIGN KEY (`head`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_cab`
--

LOCK TABLES `sd_cab` WRITE;
/*!40000 ALTER TABLE `sd_cab` DISABLE KEYS */;
INSERT INTO `sd_cab` VALUES (1,'Comitê de Gestão de Mudanças',1,'1,2,3',0,'2017-10-26 23:17:56','2017-10-26 23:17:56');
/*!40000 ALTER TABLE `sd_cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_cab_votes`
--

DROP TABLE IF EXISTS `sd_cab_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_cab_votes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cab_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `vote` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_cab_votes_cab_id_foreign` (`cab_id`),
  KEY `sd_cab_votes_user_id_foreign` (`user_id`),
  CONSTRAINT `sd_cab_votes_cab_id_foreign` FOREIGN KEY (`cab_id`) REFERENCES `sd_cab` (`id`),
  CONSTRAINT `sd_cab_votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_cab_votes`
--

LOCK TABLES `sd_cab_votes` WRITE;
/*!40000 ALTER TABLE `sd_cab_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_cab_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_change_priorities`
--

DROP TABLE IF EXISTS `sd_change_priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_change_priorities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_change_priorities`
--

LOCK TABLES `sd_change_priorities` WRITE;
/*!40000 ALTER TABLE `sd_change_priorities` DISABLE KEYS */;
INSERT INTO `sd_change_priorities` VALUES (1,'Baixa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Média','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Alta','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Urgente','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_change_priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_change_release`
--

DROP TABLE IF EXISTS `sd_change_release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_change_release` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `change_id` int unsigned DEFAULT NULL,
  `release_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_change_release_change_id_foreign` (`change_id`),
  KEY `sd_change_release_release_id_foreign` (`release_id`),
  CONSTRAINT `sd_change_release_change_id_foreign` FOREIGN KEY (`change_id`) REFERENCES `sd_changes` (`id`),
  CONSTRAINT `sd_change_release_release_id_foreign` FOREIGN KEY (`release_id`) REFERENCES `sd_releases` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_change_release`
--

LOCK TABLES `sd_change_release` WRITE;
/*!40000 ALTER TABLE `sd_change_release` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_change_release` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_change_status`
--

DROP TABLE IF EXISTS `sd_change_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_change_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_change_status`
--

LOCK TABLES `sd_change_status` WRITE;
/*!40000 ALTER TABLE `sd_change_status` DISABLE KEYS */;
INSERT INTO `sd_change_status` VALUES (1,'Aberto','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Planejando','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Aguardando Aprovação','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Release Pendente','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Revisão Pendente','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Fechado','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_change_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_change_types`
--

DROP TABLE IF EXISTS `sd_change_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_change_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_change_types`
--

LOCK TABLES `sd_change_types` WRITE;
/*!40000 ALTER TABLE `sd_change_types` DISABLE KEYS */;
INSERT INTO `sd_change_types` VALUES (1,'Menor','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Padrão','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Maior','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Emergencial','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_change_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_changes`
--

DROP TABLE IF EXISTS `sd_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_changes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `requester` int unsigned DEFAULT NULL,
  `status_id` int unsigned DEFAULT NULL,
  `priority_id` int unsigned DEFAULT NULL,
  `change_type_id` int unsigned DEFAULT NULL,
  `impact_id` int unsigned DEFAULT NULL,
  `location_id` int unsigned DEFAULT NULL,
  `approval_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_changes_requester_foreign` (`requester`),
  KEY `sd_changes_status_id_foreign` (`status_id`),
  KEY `sd_changes_priority_id_foreign` (`priority_id`),
  KEY `sd_changes_change_type_id_foreign` (`change_type_id`),
  KEY `sd_changes_impact_id_foreign` (`impact_id`),
  KEY `sd_changes_location_id_foreign` (`location_id`),
  KEY `sd_changes_approval_id_foreign` (`approval_id`),
  CONSTRAINT `sd_changes_approval_id_foreign` FOREIGN KEY (`approval_id`) REFERENCES `sd_cab` (`id`),
  CONSTRAINT `sd_changes_change_type_id_foreign` FOREIGN KEY (`change_type_id`) REFERENCES `sd_change_types` (`id`),
  CONSTRAINT `sd_changes_impact_id_foreign` FOREIGN KEY (`impact_id`) REFERENCES `sd_impact_types` (`id`),
  CONSTRAINT `sd_changes_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `sd_locations` (`id`),
  CONSTRAINT `sd_changes_priority_id_foreign` FOREIGN KEY (`priority_id`) REFERENCES `sd_change_priorities` (`id`),
  CONSTRAINT `sd_changes_requester_foreign` FOREIGN KEY (`requester`) REFERENCES `users` (`id`),
  CONSTRAINT `sd_changes_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `sd_change_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_changes`
--

LOCK TABLES `sd_changes` WRITE;
/*!40000 ALTER TABLE `sd_changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_contract_asset_relations`
--

DROP TABLE IF EXISTS `sd_contract_asset_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_contract_asset_relations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` int unsigned DEFAULT NULL,
  `asset_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_contract_asset_relations_contract_id_foreign` (`contract_id`),
  KEY `sd_contract_asset_relations_asset_id_foreign` (`asset_id`),
  CONSTRAINT `sd_contract_asset_relations_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `sd_assets` (`id`),
  CONSTRAINT `sd_contract_asset_relations_contract_id_foreign` FOREIGN KEY (`contract_id`) REFERENCES `sd_contracts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_contract_asset_relations`
--

LOCK TABLES `sd_contract_asset_relations` WRITE;
/*!40000 ALTER TABLE `sd_contract_asset_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_contract_asset_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_contract_types`
--

DROP TABLE IF EXISTS `sd_contract_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_contract_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_contract_types`
--

LOCK TABLES `sd_contract_types` WRITE;
/*!40000 ALTER TABLE `sd_contract_types` DISABLE KEYS */;
INSERT INTO `sd_contract_types` VALUES (1,'De concessão','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Licença de Software','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Manutenção','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Suporte de Produto','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Fornecimento','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_contract_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_contracts`
--

DROP TABLE IF EXISTS `sd_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_contracts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `cost` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `contract_type_id` int unsigned DEFAULT NULL,
  `approver_id` int unsigned DEFAULT NULL,
  `vendor_id` int unsigned DEFAULT NULL,
  `license_type_id` int unsigned DEFAULT NULL,
  `licensce_count` int NOT NULL,
  `product_id` int unsigned DEFAULT NULL,
  `notify_expiry` timestamp NULL DEFAULT NULL,
  `contract_start_date` timestamp NULL DEFAULT NULL,
  `contract_end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_contracts_contract_type_id_foreign` (`contract_type_id`),
  KEY `sd_contracts_approver_id_foreign` (`approver_id`),
  KEY `sd_contracts_vendor_id_foreign` (`vendor_id`),
  KEY `sd_contracts_license_type_id_foreign` (`license_type_id`),
  KEY `sd_contracts_product_id_foreign` (`product_id`),
  CONSTRAINT `sd_contracts_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `sd_cab` (`id`),
  CONSTRAINT `sd_contracts_contract_type_id_foreign` FOREIGN KEY (`contract_type_id`) REFERENCES `sd_contract_types` (`id`),
  CONSTRAINT `sd_contracts_license_type_id_foreign` FOREIGN KEY (`license_type_id`) REFERENCES `sd_license_types` (`id`),
  CONSTRAINT `sd_contracts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `sd_products` (`id`),
  CONSTRAINT `sd_contracts_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `sd_vendors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_contracts`
--

LOCK TABLES `sd_contracts` WRITE;
/*!40000 ALTER TABLE `sd_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_field_values`
--

DROP TABLE IF EXISTS `sd_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_field_values` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int unsigned DEFAULT NULL,
  `option` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_field_values_field_id_foreign` (`field_id`),
  CONSTRAINT `sd_field_values_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `sd_form_fields` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_field_values`
--

LOCK TABLES `sd_field_values` WRITE;
/*!40000 ALTER TABLE `sd_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_form_fields`
--

DROP TABLE IF EXISTS `sd_form_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_form_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `form_id` int unsigned DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sub_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `is_required` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `placeholder` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `multiple` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `role` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_form_fields_form_id_foreign` (`form_id`),
  CONSTRAINT `sd_form_fields_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `sd_forms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_form_fields`
--

LOCK TABLES `sd_form_fields` WRITE;
/*!40000 ALTER TABLE `sd_form_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_form_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_forms`
--

DROP TABLE IF EXISTS `sd_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_forms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_forms`
--

LOCK TABLES `sd_forms` WRITE;
/*!40000 ALTER TABLE `sd_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_gerneral`
--

DROP TABLE IF EXISTS `sd_gerneral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_gerneral` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_gerneral`
--

LOCK TABLES `sd_gerneral` WRITE;
/*!40000 ALTER TABLE `sd_gerneral` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_gerneral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_impact_types`
--

DROP TABLE IF EXISTS `sd_impact_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_impact_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_impact_types`
--

LOCK TABLES `sd_impact_types` WRITE;
/*!40000 ALTER TABLE `sd_impact_types` DISABLE KEYS */;
INSERT INTO `sd_impact_types` VALUES (1,'Baixo','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Médio','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Alto','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_impact_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_license_types`
--

DROP TABLE IF EXISTS `sd_license_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_license_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_license_types`
--

LOCK TABLES `sd_license_types` WRITE;
/*!40000 ALTER TABLE `sd_license_types` DISABLE KEYS */;
INSERT INTO `sd_license_types` VALUES (1,'open source','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'comercial','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_license_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_location_categories`
--

DROP TABLE IF EXISTS `sd_location_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_location_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_location_categories`
--

LOCK TABLES `sd_location_categories` WRITE;
/*!40000 ALTER TABLE `sd_location_categories` DISABLE KEYS */;
INSERT INTO `sd_location_categories` VALUES (1,NULL,'Sede','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,NULL,'Parceiro','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,NULL,'Interior','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,NULL,'Fornecedor','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,NULL,'Cedido','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_location_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_locations`
--

DROP TABLE IF EXISTS `sd_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_locations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `location_category_id` int unsigned DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `organization` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `all_department_access` int NOT NULL,
  `departments` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_locations_location_category_id_foreign` (`location_category_id`),
  CONSTRAINT `sd_locations_location_category_id_foreign` FOREIGN KEY (`location_category_id`) REFERENCES `sd_location_categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_locations`
--

LOCK TABLES `sd_locations` WRITE;
/*!40000 ALTER TABLE `sd_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_problem`
--

DROP TABLE IF EXISTS `sd_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_problem` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `department` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status_type_id` int unsigned DEFAULT NULL,
  `priority_id` int unsigned DEFAULT NULL,
  `impact_id` int unsigned DEFAULT NULL,
  `location_type_id` int unsigned DEFAULT NULL,
  `group_id` int unsigned DEFAULT NULL,
  `agent_id` int unsigned DEFAULT NULL,
  `assigned_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_problem`
--

LOCK TABLES `sd_problem` WRITE;
/*!40000 ALTER TABLE `sd_problem` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_problem_change`
--

DROP TABLE IF EXISTS `sd_problem_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_problem_change` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `problem_id` int unsigned DEFAULT NULL,
  `change_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_problem_change_problem_id_foreign` (`problem_id`),
  KEY `sd_problem_change_change_id_foreign` (`change_id`),
  CONSTRAINT `sd_problem_change_change_id_foreign` FOREIGN KEY (`change_id`) REFERENCES `sd_changes` (`id`),
  CONSTRAINT `sd_problem_change_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `sd_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_problem_change`
--

LOCK TABLES `sd_problem_change` WRITE;
/*!40000 ALTER TABLE `sd_problem_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_problem_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_product_proc_mode`
--

DROP TABLE IF EXISTS `sd_product_proc_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_product_proc_mode` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_product_proc_mode`
--

LOCK TABLES `sd_product_proc_mode` WRITE;
/*!40000 ALTER TABLE `sd_product_proc_mode` DISABLE KEYS */;
INSERT INTO `sd_product_proc_mode` VALUES (1,'Compra','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Concessão','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Cedido','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_product_proc_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_product_status`
--

DROP TABLE IF EXISTS `sd_product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_product_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_product_status`
--

LOCK TABLES `sd_product_status` WRITE;
/*!40000 ALTER TABLE `sd_product_status` DISABLE KEYS */;
INSERT INTO `sd_product_status` VALUES (1,'Em StandBy','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Em produção','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Obsoleto','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_product_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_product_vendor_relation`
--

DROP TABLE IF EXISTS `sd_product_vendor_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_product_vendor_relation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_product_vendor_relation`
--

LOCK TABLES `sd_product_vendor_relation` WRITE;
/*!40000 ALTER TABLE `sd_product_vendor_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_product_vendor_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_products`
--

DROP TABLE IF EXISTS `sd_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `manufacturer` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_status_id` int unsigned DEFAULT NULL,
  `product_mode_procurement_id` int unsigned DEFAULT NULL,
  `all_department` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_products_product_status_id_foreign` (`product_status_id`),
  KEY `sd_products_product_mode_procurement_id_foreign` (`product_mode_procurement_id`),
  CONSTRAINT `sd_products_product_mode_procurement_id_foreign` FOREIGN KEY (`product_mode_procurement_id`) REFERENCES `sd_product_proc_mode` (`id`),
  CONSTRAINT `sd_products_product_status_id_foreign` FOREIGN KEY (`product_status_id`) REFERENCES `sd_product_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_products`
--

LOCK TABLES `sd_products` WRITE;
/*!40000 ALTER TABLE `sd_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_release_priorities`
--

DROP TABLE IF EXISTS `sd_release_priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_release_priorities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_release_priorities`
--

LOCK TABLES `sd_release_priorities` WRITE;
/*!40000 ALTER TABLE `sd_release_priorities` DISABLE KEYS */;
INSERT INTO `sd_release_priorities` VALUES (1,'Baixo','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Média','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Alta','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Urgente','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_release_priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_release_status`
--

DROP TABLE IF EXISTS `sd_release_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_release_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_release_status`
--

LOCK TABLES `sd_release_status` WRITE;
/*!40000 ALTER TABLE `sd_release_status` DISABLE KEYS */;
INSERT INTO `sd_release_status` VALUES (1,'Aberta','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Em Espera','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Em Progresso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Incompleta','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Completa','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_release_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_release_types`
--

DROP TABLE IF EXISTS `sd_release_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_release_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_release_types`
--

LOCK TABLES `sd_release_types` WRITE;
/*!40000 ALTER TABLE `sd_release_types` DISABLE KEYS */;
INSERT INTO `sd_release_types` VALUES (1,'Menor','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Padrão','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Maior','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Emergencial','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sd_release_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_releases`
--

DROP TABLE IF EXISTS `sd_releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_releases` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `planned_start_date` timestamp NULL DEFAULT NULL,
  `planned_end_date` timestamp NULL DEFAULT NULL,
  `status_id` int unsigned DEFAULT NULL,
  `priority_id` int unsigned DEFAULT NULL,
  `release_type_id` int unsigned DEFAULT NULL,
  `location_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sd_releases_status_id_foreign` (`status_id`),
  KEY `sd_releases_priority_id_foreign` (`priority_id`),
  KEY `sd_releases_release_type_id_foreign` (`release_type_id`),
  KEY `sd_releases_location_id_foreign` (`location_id`),
  CONSTRAINT `sd_releases_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `sd_locations` (`id`),
  CONSTRAINT `sd_releases_priority_id_foreign` FOREIGN KEY (`priority_id`) REFERENCES `sd_release_priorities` (`id`),
  CONSTRAINT `sd_releases_release_type_id_foreign` FOREIGN KEY (`release_type_id`) REFERENCES `sd_release_types` (`id`),
  CONSTRAINT `sd_releases_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `sd_release_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_releases`
--

LOCK TABLES `sd_releases` WRITE;
/*!40000 ALTER TABLE `sd_releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_ticket_relation`
--

DROP TABLE IF EXISTS `sd_ticket_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_ticket_relation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_ticket_relation`
--

LOCK TABLES `sd_ticket_relation` WRITE;
/*!40000 ALTER TABLE `sd_ticket_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_ticket_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sd_vendors`
--

DROP TABLE IF EXISTS `sd_vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sd_vendors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `primary_contact` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sd_vendors`
--

LOCK TABLES `sd_vendors` WRITE;
/*!40000 ALTER TABLE `sd_vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `sd_vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_alert_notice`
--

DROP TABLE IF EXISTS `settings_alert_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings_alert_notice` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ticket_status` tinyint(1) NOT NULL,
  `ticket_admin_email` tinyint(1) NOT NULL,
  `ticket_department_manager` tinyint(1) NOT NULL,
  `ticket_department_member` tinyint(1) NOT NULL,
  `ticket_organization_accmanager` tinyint(1) NOT NULL,
  `message_status` tinyint(1) NOT NULL,
  `message_last_responder` tinyint(1) NOT NULL,
  `message_assigned_agent` tinyint(1) NOT NULL,
  `message_department_manager` tinyint(1) NOT NULL,
  `message_organization_accmanager` tinyint(1) NOT NULL,
  `internal_status` tinyint(1) NOT NULL,
  `internal_last_responder` tinyint(1) NOT NULL,
  `internal_assigned_agent` tinyint(1) NOT NULL,
  `internal_department_manager` tinyint(1) NOT NULL,
  `assignment_status` tinyint(1) NOT NULL,
  `assignment_assigned_agent` tinyint(1) NOT NULL,
  `assignment_team_leader` tinyint(1) NOT NULL,
  `assignment_team_member` tinyint(1) NOT NULL,
  `transfer_status` tinyint(1) NOT NULL,
  `transfer_assigned_agent` tinyint(1) NOT NULL,
  `transfer_department_manager` tinyint(1) NOT NULL,
  `transfer_department_member` tinyint(1) NOT NULL,
  `overdue_status` tinyint(1) NOT NULL,
  `overdue_assigned_agent` tinyint(1) NOT NULL,
  `overdue_department_manager` tinyint(1) NOT NULL,
  `overdue_department_member` tinyint(1) NOT NULL,
  `system_error` tinyint(1) NOT NULL,
  `sql_error` tinyint(1) NOT NULL,
  `excessive_failure` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_alert_notice`
--

LOCK TABLES `settings_alert_notice` WRITE;
/*!40000 ALTER TABLE `settings_alert_notice` DISABLE KEYS */;
INSERT INTO `settings_alert_notice` VALUES (1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'2016-12-13 03:19:29','2016-12-13 03:19:29');
/*!40000 ALTER TABLE `settings_alert_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_auto_response`
--

DROP TABLE IF EXISTS `settings_auto_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings_auto_response` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `new_ticket` tinyint(1) NOT NULL,
  `agent_new_ticket` tinyint(1) NOT NULL,
  `submitter` tinyint(1) NOT NULL,
  `participants` tinyint(1) NOT NULL,
  `overlimit` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_auto_response`
--

LOCK TABLES `settings_auto_response` WRITE;
/*!40000 ALTER TABLE `settings_auto_response` DISABLE KEYS */;
INSERT INTO `settings_auto_response` VALUES (1,1,1,0,0,0,'2016-12-13 03:19:29','2016-12-13 03:19:29');
/*!40000 ALTER TABLE `settings_auto_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_company`
--

DROP TABLE IF EXISTS `settings_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings_company` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `website` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `landing_page` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `offline_page` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `thank_page` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `use_logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_company`
--

LOCK TABLES `settings_company` WRITE;
/*!40000 ALTER TABLE `settings_company` DISABLE KEYS */;
INSERT INTO `settings_company` VALUES (1,'Conexe Soluções em Tecnologia','https://www.tikiri.com.br','','','','','','9743.logo_azul300ppi.png','1','2016-12-13 03:19:29','2023-12-01 14:52:41');
/*!40000 ALTER TABLE `settings_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_email`
--

DROP TABLE IF EXISTS `settings_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings_email` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sys_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `alert_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `admin_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mta` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_fetching` tinyint(1) NOT NULL,
  `notification_cron` tinyint(1) NOT NULL,
  `strip` tinyint(1) NOT NULL,
  `separator` tinyint(1) NOT NULL,
  `all_emails` tinyint(1) NOT NULL,
  `email_collaborator` tinyint(1) NOT NULL,
  `attachment` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_email`
--

LOCK TABLES `settings_email` WRITE;
/*!40000 ALTER TABLE `settings_email` DISABLE KEYS */;
INSERT INTO `settings_email` VALUES (1,'default',NULL,'','','',1,1,0,0,1,1,1,'2016-12-13 03:19:29','2016-12-13 03:19:29');
/*!40000 ALTER TABLE `settings_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_ratings`
--

DROP TABLE IF EXISTS `settings_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings_ratings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `rating_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `publish` int NOT NULL,
  `modify` int NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_ratings_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_ratings`
--

LOCK TABLES `settings_ratings` WRITE;
/*!40000 ALTER TABLE `settings_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_security`
--

DROP TABLE IF EXISTS `settings_security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings_security` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `lockout_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `backlist_offender` int NOT NULL,
  `backlist_threshold` int NOT NULL,
  `lockout_period` int NOT NULL,
  `days_to_keep_logs` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_security`
--

LOCK TABLES `settings_security` WRITE;
/*!40000 ALTER TABLE `settings_security` DISABLE KEYS */;
INSERT INTO `settings_security` VALUES (1,'Você foi bloqueado devido a muitas falhas em tentativas de login.',0,15,15,0,'2016-12-13 03:19:47','2017-11-21 02:35:37');
/*!40000 ALTER TABLE `settings_security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_system`
--

DROP TABLE IF EXISTS `settings_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings_system` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `department` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `page_size` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `log_level` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `purge_log` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `api_enable` int NOT NULL,
  `api_key_mandatory` int NOT NULL,
  `api_key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name_format` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `time_farmat` int unsigned DEFAULT NULL,
  `date_format` int unsigned DEFAULT NULL,
  `date_time_format` int unsigned DEFAULT NULL,
  `day_date_time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `time_zone` int unsigned DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `version` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `time_farmat` (`time_farmat`),
  KEY `date_format` (`date_format`),
  KEY `date_time_format` (`date_time_format`),
  KEY `time_zone` (`time_zone`),
  CONSTRAINT `settings_system_ibfk_1` FOREIGN KEY (`time_zone`) REFERENCES `timezone` (`id`),
  CONSTRAINT `settings_system_ibfk_2` FOREIGN KEY (`time_farmat`) REFERENCES `time_format` (`id`),
  CONSTRAINT `settings_system_ibfk_3` FOREIGN KEY (`date_format`) REFERENCES `date_format` (`id`),
  CONSTRAINT `settings_system_ibfk_4` FOREIGN KEY (`date_time_format`) REFERENCES `date_time_format` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_system`
--

LOCK TABLES `settings_system` WRITE;
/*!40000 ALTER TABLE `settings_system` DISABLE KEYS */;
INSERT INTO `settings_system` VALUES (1,1,'','Tikiri','1','','','',0,0,'','',NULL,NULL,1,'',21,'','','2016-12-13 03:19:29','2017-06-16 13:41:46'),(2,1,'','','1','','','',0,0,'','',NULL,NULL,1,'',79,'','1.0.8.0','2016-12-13 03:19:53','2016-12-13 03:19:53'),(3,1,'','','1','','','',0,0,'','',NULL,NULL,1,'',14,'','1.9.2','2017-01-03 06:17:47','2017-01-03 06:17:47');
/*!40000 ALTER TABLE `settings_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_ticket`
--

DROP TABLE IF EXISTS `settings_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings_ticket` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `num_format` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `num_sequence` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `priority` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sla` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `help_topic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `max_open_ticket` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `collision_avoid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `lock_ticket_frequency` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `captcha` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `claim_response` tinyint(1) NOT NULL,
  `assigned_ticket` tinyint(1) NOT NULL,
  `answered_ticket` tinyint(1) NOT NULL,
  `agent_mask` tinyint(1) NOT NULL,
  `html` tinyint(1) NOT NULL,
  `client_update` tinyint(1) NOT NULL,
  `max_file_size` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_ticket`
--

LOCK TABLES `settings_ticket` WRITE;
/*!40000 ALTER TABLE `settings_ticket` DISABLE KEYS */;
INSERT INTO `settings_ticket` VALUES (1,'$$$$-####-####','sequence','1','2','1','','2','0','',1,0,0,0,0,0,0,0,'2016-12-13 03:19:29','2016-12-13 03:19:29');
/*!40000 ALTER TABLE `settings_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sla_plan`
--

DROP TABLE IF EXISTS `sla_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sla_plan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `grace_period` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `admin_note` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `transient` tinyint(1) NOT NULL,
  `ticket_overdue` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sla_plan`
--

LOCK TABLES `sla_plan` WRITE;
/*!40000 ALTER TABLE `sla_plan` DISABLE KEYS */;
INSERT INTO `sla_plan` VALUES (1,'Sla 1','6 Hours','',1,0,0,'2016-12-13 03:19:25','2016-12-13 03:19:25'),(2,'Sla 2','12 Hours','',1,0,0,'2016-12-13 03:19:25','2016-12-13 03:19:25'),(3,'Sla 3','24 Hours','',1,0,0,'2016-12-13 03:19:25','2016-12-13 03:19:25');
/*!40000 ALTER TABLE `sla_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media`
--

DROP TABLE IF EXISTS `social_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `provider` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media`
--

LOCK TABLES `social_media` WRITE;
/*!40000 ALTER TABLE `social_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_assign_agent`
--

DROP TABLE IF EXISTS `team_assign_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_assign_agent` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `team_id` int unsigned DEFAULT NULL,
  `agent_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_id` (`team_id`),
  KEY `agent_id` (`agent_id`),
  CONSTRAINT `team_assign_agent_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `team_assign_agent_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_assign_agent`
--

LOCK TABLES `team_assign_agent` WRITE;
/*!40000 ALTER TABLE `team_assign_agent` DISABLE KEYS */;
INSERT INTO `team_assign_agent` VALUES (3,1,1,NULL,NULL),(4,2,1,NULL,NULL),(5,3,1,NULL,NULL),(7,1,3,NULL,NULL),(9,1,2,NULL,NULL);
/*!40000 ALTER TABLE `team_assign_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `team_lead` int unsigned DEFAULT NULL,
  `assign_alert` tinyint(1) NOT NULL,
  `admin_notes` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_lead` (`team_lead`),
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`team_lead`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Suporte de 1º Nível',1,2,0,'','2016-12-13 03:19:27','2017-10-26 22:41:24'),(2,'Suporte de 2º Nível',1,NULL,0,'','2016-12-13 03:19:27','2017-10-26 22:41:48'),(3,'Desenvolvedor',1,NULL,0,'','2016-12-13 03:19:27','2017-10-26 22:41:58');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `template_set_to_clone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `language` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `internal_note` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template`
--

LOCK TABLES `template` WRITE;
/*!40000 ALTER TABLE `template` DISABLE KEYS */;
/*!40000 ALTER TABLE `template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_sets`
--

DROP TABLE IF EXISTS `template_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_sets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_sets`
--

LOCK TABLES `template_sets` WRITE;
/*!40000 ALTER TABLE `template_sets` DISABLE KEYS */;
INSERT INTO `template_sets` VALUES (1,'default',1,'2016-12-13 03:19:47','2016-12-13 03:19:47');
/*!40000 ALTER TABLE `template_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_types`
--

DROP TABLE IF EXISTS `template_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_types`
--

LOCK TABLES `template_types` WRITE;
/*!40000 ALTER TABLE `template_types` DISABLE KEYS */;
INSERT INTO `template_types` VALUES (1,'assign-ticket','2016-12-13 03:19:47','2016-12-13 03:19:47'),(2,'check-ticket','2016-12-13 03:19:47','2016-12-13 03:19:47'),(3,'close-ticket','2016-12-13 03:19:47','2016-12-13 03:19:47'),(4,'create-ticket','2016-12-13 03:19:48','2016-12-13 03:19:48'),(5,'create-ticket-agent','2016-12-13 03:19:48','2016-12-13 03:19:48'),(6,'create-ticket-by-agent','2016-12-13 03:19:48','2016-12-13 03:19:48'),(7,'registration-notification','2016-12-13 03:19:48','2016-12-13 03:19:48'),(8,'reset-password','2016-12-13 03:19:48','2016-12-13 03:19:48'),(9,'ticket-reply','2016-12-13 03:19:48','2016-12-13 03:19:48'),(10,'ticket-reply-agent','2016-12-13 03:19:48','2016-12-13 03:19:48'),(11,'registration','2016-12-13 03:19:48','2016-12-13 03:19:48'),(12,'team_assign_ticket','2016-12-13 03:19:48','2016-12-13 03:19:48'),(13,'reset_new_password','2016-12-13 03:19:48','2016-12-13 03:19:48'),(14,'merge-ticket-notification','2017-01-02 00:20:11','2017-01-02 00:20:11');
/*!40000 ALTER TABLE `template_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `variable` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `set_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'This template is for sending notice to agent when ticket is assigned to them','0',1,'','<div>Hello {!!$ticket_agent_name!!},<br /><br /><b>Ticket No:</b> {!!$ticket_number!!}<br />Has been assigned to you by {!!$ticket_assigner!!} <br /> Please check and resppond on the ticket.<br /> Link: {!!$ticket_link!!}<br /><br />Thank You<br />Kind Regards,<br /> {!!$system_from!!}</div>','',1,'2016-12-13 03:19:50','2016-12-13 03:19:50'),(2,'This template is for sending notice to client with ticket link to check ticket without logging in to system','1',2,'Check your Ticket','<div>Hello {!!$user!!},<br /><br />Click the link below to view your requested ticket<br /> {!!$ticket_link_with_number!!}<br /><br />Kind Regards,<br /> {!!$system_from!!}</div>','',1,'2016-12-13 03:19:50','2016-12-13 03:19:50'),(3,'This template is for sending notice to client when ticket status is changed to close','0',3,'','<div>Hello,<br /><br />This message is regarding your ticket ID {!!$ticket_number!!}. We are changing the status of this ticket to \"Closed\" as the issue appears to be resolved.<br /><br />Thank you<br />Kind regards,<br /> {!!$system_from!!}</div>','',1,'2016-12-13 03:19:50','2016-12-13 03:19:50'),(4,'This template is for sending notice to client on successful ticket creation','0',4,'','<div><span>Hello {!!$user!!}<br /><br /></span><span>Thank you for contacting us. This is an automated response confirming the receipt of your ticket. Our team will get back to you as soon as possible. When replying, please make sure that the ticket ID is kept in the subject so that we can track your replies.<br /><br /></span><span><b>Ticket ID:</b> {!!$ticket_number!!} <br /><br /></span><span> {!!$department_sign!!}<br /></span>You can check the status of or update this ticket online at: {!!$system_link!!}</div>','',1,'2016-12-13 03:19:51','2016-12-13 03:19:51'),(5,'This template is for sending notice to agent on new ticket creation','0',5,'','<div>Hello {!!$ticket_agent_name!!},<br /><br />New ticket {!!$ticket_number!!}created <br /><br /><b>From</b><br /><b>Name:</b> {!!$ticket_client_name!!}   <br /><b>E-mail:</b> {!!$ticket_client_email!!}<br /><br /> {!!$content!!}<br /><br />Kind Regards,<br /> {!!$system_from!!}</div>','',1,'2016-12-13 03:19:51','2016-12-13 03:19:51'),(6,'This template is for sending notice to client on new ticket created by agent in name of client','0',6,'','<div> {!!$content!!}<br /><br /> {!!$agent_sign!!}<br /><br />You can check the status of or update this ticket online at: {!!$system_link!!}</div>','',1,'2016-12-13 03:19:51','2016-12-13 03:19:51'),(7,'This template is for sending notice to client on new registration during new ticket creation for un registered clients','1',7,'Registration Confirmation','<p>Hello {!!$user!!}, </p><p>This email is confirmation that you are now registered at our helpdesk.</p><p><b>Registered Email:</b> {!!$email_address!!}</p><p><b>Password:</b> {!!$user_password!!}</p><p>You can visit the helpdesk to browse articles and contact us at any time: {!!$system_link!!}</p><p>Thank You.</p><p>Kind Regards,</p><p> {!!$system_from!!} </p>','',1,'2016-12-13 03:19:51','2016-12-13 03:19:51'),(8,'This template is for sending notice to any user about reset password option','1',8,'Reset your Password','Hello {!!$user!!},<br /><br />You asked to reset your password. To do so, please click this link:<br /><br /> {!!$password_reset_link!!}<br /><br />This will let you change your password to something new. If you didn\'t ask for this, don\'t worry, we\'ll keep your password safe.<br /><br />Thank You.<br /><br />Kind Regards,<br /> {!!$system_from!!}','',1,'2016-12-13 03:19:51','2016-12-13 03:19:51'),(9,'This template is for sending notice to client when a reply made to his/her ticket','0',9,'','<span></span><div><span></span><p> {!!$content!!}<br /></p><p> {!!$agent_sign!!} </p><p><b>Ticket Details</b></p><p><b>Ticket ID:</b> {!!$ticket_number!!}</p></div>','',1,'2016-12-13 03:19:51','2016-12-13 03:19:51'),(10,'This template is for sending notice to agent when ticket reply is made by client on a ticket','0',10,'','<div>Hello {!!$ticket_agent_name!!},<br /><b><br /></b>A reply been made to ticket {!!$ticket_number!!}<br /><b><br /></b><b>From<br /></b><b>Name: </b>{!!$ticket_client_name!!}<br /><b>E-mail: </b>{!!$ticket_client_email!!}<br /><b><br /></b> {!!$content!!}<br /><b><br /></b>Kind Regards,<br /> {!!$system_from!!}</div>','',1,'2016-12-13 03:19:51','2016-12-13 03:19:51'),(11,'This template is for sending notice to client about registration confirmation link','1',11,'Verify your email address','<p>Hello {!!$user!!}, </p><p>This email is confirmation that you are now registered at our helpdesk.</p><p><b>Registered Email:</b> {!!$email_address!!}</p><p>Please click on the below link to activate your account and Login to the system {!!$password_reset_link!!}</p><p>Thank You.</p><p>Kind Regards,</p><p> {!!$system_from!!} </p>','',1,'2016-12-13 03:19:52','2016-12-13 03:19:52'),(12,'This template is for sending notice to team when ticket is assigned to team','1',12,'','<div>Hello {!!$ticket_agent_name!!},<br /><br /><b>Ticket No:</b> {!!$ticket_number!!}<br />Has been assigned to your team : {!!$team!!} by {!!$ticket_assigner!!} <br /><br />Thank You<br />Kind Regards,<br />{!!$system_from!!}</div>','',1,'2016-12-13 03:19:52','2016-12-13 03:19:52'),(13,'This template is for sending notice to client when password is changed','1',13,'Verify your email address','Hello {!!$user!!},<br /><br />Your password is successfully changed.Your new password is : {!!$user_password!!}<br /><br />Thank You.<br /><br />Kind Regards,<br /> {!!$system_from!!}','',1,'2016-12-13 03:19:52','2016-12-13 03:19:52'),(14,'This template is to notify users when their tickets are merged.','1',14,'Your tickets have been merged.','<p>Hello {!!$user!!},<br />&nbsp;</p><p>Your ticket(s) with ticket number {!!$merged_ticket_numbers!!} have been closed and&nbsp;merged with <a href=\"{!!$ticket_link!!}\">{!!$ticket_number!!}</a>.&nbsp;</p><p>Possible reasons for merging tickets</p><ul><li>Tickets are duplicate</li<li>Tickets state&nbsp;the same issue</li><li>Another member from your organization has created a ticket for the same issue</li></ul><p><a href=\"{!!$system_link!!}\">Click here</a> to login to your account and check your tickets.</p><p>Regards,</p><p>{!!$system_from!!}</p>','',1,'2017-01-02 00:20:12','2017-01-02 00:31:50');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_attachment`
--

DROP TABLE IF EXISTS `ticket_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_attachment` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `thread_id` int unsigned DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `poster` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file` mediumblob,
  `driver` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `thread_id` (`thread_id`),
  CONSTRAINT `ticket_attachment_ibfk_1` FOREIGN KEY (`thread_id`) REFERENCES `ticket_thread` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_attachment`
--

LOCK TABLES `ticket_attachment` WRITE;
/*!40000 ALTER TABLE `ticket_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_collaborator`
--

DROP TABLE IF EXISTS `ticket_collaborator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_collaborator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `isactive` tinyint(1) NOT NULL,
  `ticket_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ticket_collaborator_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  CONSTRAINT `ticket_collaborator_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_collaborator`
--

LOCK TABLES `ticket_collaborator` WRITE;
/*!40000 ALTER TABLE `ticket_collaborator` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_collaborator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_form_data`
--

DROP TABLE IF EXISTS `ticket_form_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_form_data` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int unsigned DEFAULT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_id` (`ticket_id`),
  CONSTRAINT `ticket_form_data_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_form_data`
--

LOCK TABLES `ticket_form_data` WRITE;
/*!40000 ALTER TABLE `ticket_form_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_form_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_priority`
--

DROP TABLE IF EXISTS `ticket_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_priority` (
  `priority_id` int unsigned NOT NULL AUTO_INCREMENT,
  `priority` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `priority_desc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `priority_color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `priority_urgency` tinyint(1) NOT NULL,
  `ispublic` tinyint(1) NOT NULL,
  `is_default` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`priority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_priority`
--

LOCK TABLES `ticket_priority` WRITE;
/*!40000 ALTER TABLE `ticket_priority` DISABLE KEYS */;
INSERT INTO `ticket_priority` VALUES (1,'Baixa','1','Baixa','#00a65a',4,1,'',NULL,NULL),(2,'Normal','1','Normal','#00bfef',3,1,'1',NULL,NULL),(3,'Alta','1','Alta','#f39c11',2,1,'',NULL,NULL),(4,'Emergência','1','Emergência','#dd4b38',1,1,'',NULL,NULL);
/*!40000 ALTER TABLE `ticket_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_source`
--

DROP TABLE IF EXISTS `ticket_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_source` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `css_class` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_source`
--

LOCK TABLES `ticket_source` WRITE;
/*!40000 ALTER TABLE `ticket_source` DISABLE KEYS */;
INSERT INTO `ticket_source` VALUES (1,'web','Web','fa fa-internet-explorer'),(2,'email','E-mail','fa fa-envelope'),(3,'agent','Agent Panel','fa fa-envelope'),(4,'facebook','Facebook','fa fa-facebook'),(5,'twitter','Twitter','fa fa-twitter'),(6,'call','Call','fa fa-phone'),(7,'chat','Chat','fa fa-comment'),(8,'web','Web',''),(9,'email','E-mail',''),(10,'agent','Agent Panel','');
/*!40000 ALTER TABLE `ticket_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_status`
--

DROP TABLE IF EXISTS `ticket_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mode` int NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `flags` int NOT NULL,
  `sort` int NOT NULL,
  `email_user` int NOT NULL,
  `icon_class` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `properties` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_status`
--

LOCK TABLES `ticket_status` WRITE;
/*!40000 ALTER TABLE `ticket_status` DISABLE KEYS */;
INSERT INTO `ticket_status` VALUES (1,'Aberto','open',3,'Ticket reaberto por',0,1,0,'fa fa-folder-open-o','Tickets Abertos.','2016-12-13 03:19:23','2017-07-15 07:25:15'),(2,'Resolvido','closed',1,'Ticket resolvido por',0,2,0,'fa fa-check','Tickets resolvidos.','2016-12-13 03:19:24','2017-07-15 07:26:21'),(3,'Fechado','closed',3,'Ticket fechado por',0,3,0,'fa fa-times','Ticket fechado, acessível agora pelos painéis do cliente e da equipe.','2016-12-13 03:19:24','2017-07-15 07:27:13'),(4,'Arquivado','',3,'Ticket arquivado por',0,4,0,'fa fa-folder-o','Tickets disponíveis apenas para administradores.','2016-12-13 03:19:24','2017-07-15 07:28:03'),(5,'Excluído','deleted',3,'Ticket excluído por',0,5,0,'','Os tickets foram encaminhados para exclusão. Não acessível nas listas de tickets.','2016-12-13 03:19:24','2016-12-13 03:19:24'),(6,'Desarquivado','',3,'Necessária a verificação da conta do usuário.',0,6,0,'fa fa-folder-open','O ticket vai ser aberto após o usuário validar o cadastro.','2016-12-13 03:19:24','2017-07-15 07:28:50'),(7,'Solicitação de Aprovação','',3,'Aprovação solicitada por',0,7,0,'fa fa-check-square-o','Ticket vai ser aberto após aprovação do administrador','2016-12-13 03:19:24','2017-07-15 07:30:57');
/*!40000 ALTER TABLE `ticket_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_thread`
--

DROP TABLE IF EXISTS `ticket_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_thread` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `poster` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `source` int unsigned DEFAULT NULL,
  `reply_rating` int NOT NULL,
  `rating_count` int NOT NULL,
  `is_internal` tinyint(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `body` longblob,
  `format` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_id_2` (`ticket_id`),
  KEY `user_id` (`user_id`),
  KEY `source` (`source`),
  CONSTRAINT `ticket_thread_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  CONSTRAINT `ticket_thread_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `ticket_thread_ibfk_3` FOREIGN KEY (`source`) REFERENCES `ticket_source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_thread`
--

LOCK TABLES `ticket_thread` WRITE;
/*!40000 ALTER TABLE `ticket_thread` DISABLE KEYS */;
INSERT INTO `ticket_thread` VALUES (1,1,1,'client',NULL,0,0,0,'Teste',_binary '<p>Teste</p>','','','2023-12-01 15:59:09','2023-12-01 15:59:09'),(2,1,1,'client',NULL,0,0,0,'Teste[#AAAA-0000-0000]',_binary '<p>Testando</p>','','','2023-12-01 16:50:46','2023-12-01 16:50:46');
/*!40000 ALTER TABLE `ticket_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_token`
--

DROP TABLE IF EXISTS `ticket_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_token` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_token`
--

LOCK TABLES `ticket_token` WRITE;
/*!40000 ALTER TABLE `ticket_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ticket_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `dept_id` int unsigned DEFAULT NULL,
  `team_id` int unsigned DEFAULT NULL,
  `priority_id` int unsigned DEFAULT NULL,
  `sla` int unsigned DEFAULT NULL,
  `help_topic_id` int unsigned DEFAULT NULL,
  `status` int unsigned DEFAULT NULL,
  `rating` tinyint(1) NOT NULL,
  `ratingreply` tinyint(1) NOT NULL,
  `flags` int NOT NULL,
  `ip_address` int NOT NULL,
  `assigned_to` int unsigned DEFAULT NULL,
  `lock_by` int NOT NULL,
  `lock_at` datetime DEFAULT NULL,
  `source` int unsigned DEFAULT NULL,
  `isoverdue` int NOT NULL,
  `reopened` int NOT NULL,
  `isanswered` int NOT NULL,
  `html` int NOT NULL,
  `is_deleted` int NOT NULL,
  `closed` int NOT NULL,
  `is_transferred` tinyint(1) NOT NULL,
  `transferred_at` datetime NOT NULL,
  `reopened_at` datetime DEFAULT NULL,
  `duedate` datetime DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `last_message_at` datetime DEFAULT NULL,
  `last_response_at` datetime DEFAULT NULL,
  `approval` int NOT NULL,
  `follow_up` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `dept_id` (`dept_id`),
  KEY `team_id` (`team_id`),
  KEY `priority_id` (`priority_id`),
  KEY `sla` (`sla`),
  KEY `help_topic_id` (`help_topic_id`),
  KEY `status` (`status`),
  KEY `assigned_to` (`assigned_to`),
  KEY `source` (`source`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`),
  CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `tickets_ibfk_4` FOREIGN KEY (`priority_id`) REFERENCES `ticket_priority` (`priority_id`),
  CONSTRAINT `tickets_ibfk_5` FOREIGN KEY (`sla`) REFERENCES `sla_plan` (`id`),
  CONSTRAINT `tickets_ibfk_6` FOREIGN KEY (`help_topic_id`) REFERENCES `help_topic` (`id`),
  CONSTRAINT `tickets_ibfk_7` FOREIGN KEY (`status`) REFERENCES `ticket_status` (`id`),
  CONSTRAINT `tickets_ibfk_8` FOREIGN KEY (`source`) REFERENCES `ticket_source` (`id`),
  CONSTRAINT `tickets_ibfk_9` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'AAAA-0000-0000',1,1,NULL,2,2,1,1,0,0,0,0,NULL,0,NULL,1,0,0,0,0,0,0,0,'0000-00-00 00:00:00',NULL,'2023-12-01 23:59:09',NULL,NULL,NULL,0,0,'2023-12-01 15:59:09','2023-12-01 15:59:09');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_format`
--

DROP TABLE IF EXISTS `time_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_format` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `format` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_format`
--

LOCK TABLES `time_format` WRITE;
/*!40000 ALTER TABLE `time_format` DISABLE KEYS */;
INSERT INTO `time_format` VALUES (1,'H:i:s'),(2,'H.i.s');
/*!40000 ALTER TABLE `time_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timezone`
--

DROP TABLE IF EXISTS `timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timezone` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timezone`
--

LOCK TABLES `timezone` WRITE;
/*!40000 ALTER TABLE `timezone` DISABLE KEYS */;
INSERT INTO `timezone` VALUES (1,'Pacific/Midway','(GMT-11:00) Midway Island'),(2,'US/Samoa','(GMT-11:00) Samoa'),(3,'US/Hawaii','(GMT-10:00) Hawaii'),(4,'US/Alaska','(GMT-09:00) Alaska'),(5,'US/Pacific','(GMT-08:00) Pacific Time (US &amp; Canada)'),(6,'America/Tijuana','(GMT-08:00) Tijuana'),(7,'US/Arizona','(GMT-07:00) Arizona'),(8,'US/Mountain','(GMT-07:00) Mountain Time (US &amp; Canada)'),(9,'America/Chihuahua','(GMT-07:00) Chihuahua'),(10,'America/Mazatlan','(GMT-07:00) Mazatlan'),(11,'America/Mexico_City','(GMT-06:00) Mexico City'),(12,'America/Monterrey','(GMT-06:00) Monterrey'),(13,'Canada/Saskatchewan','(GMT-06:00) Saskatchewan'),(14,'US/Central','(GMT-06:00) Central Time (US &amp; Canada)'),(15,'US/Eastern','(GMT-05:00) Eastern Time (US &amp; Canada)'),(16,'US/East-Indiana','(GMT-05:00) Indiana (East)'),(17,'America/Bogota','(GMT-05:00) Bogota'),(18,'America/Lima','(GMT-05:00) Lima'),(19,'America/Caracas','(GMT-04:30) Caracas'),(20,'Canada/Atlantic','(GMT-04:00) Atlantic Time (Canada)'),(21,'America/La_Paz','(GMT-04:00) La Paz'),(22,'America/Santiago','(GMT-04:00) Santiago'),(23,'Canada/Newfoundland','(GMT-03:30) Newfoundland'),(24,'America/Buenos_Aires','(GMT-03:00) Buenos Aires'),(25,'Greenland','(GMT-03:00) Greenland'),(26,'Atlantic/Stanley','(GMT-02:00) Stanley'),(27,'Atlantic/Azores','(GMT-01:00) Azores'),(28,'Atlantic/Cape_Verde','(GMT-01:00) Cape Verde Is.'),(29,'Africa/Casablanca','(GMT) Casablanca'),(30,'Europe/Dublin','(GMT) Dublin'),(31,'Europe/Lisbon','(GMT) Lisbon'),(32,'Europe/London','(GMT) London'),(33,'Africa/Monrovia','(GMT) Monrovia'),(34,'Europe/Amsterdam','(GMT+01:00) Amsterdam'),(35,'Europe/Belgrade','(GMT+01:00) Belgrade'),(36,'Europe/Berlin','(GMT+01:00) Berlin'),(37,'Europe/Bratislava','(GMT+01:00) Bratislava'),(38,'Europe/Brussels','(GMT+01:00) Brussels'),(39,'Europe/Budapest','(GMT+01:00) Budapest'),(40,'Europe/Copenhagen','(GMT+01:00) Copenhagen'),(41,'Europe/Ljubljana','(GMT+01:00) Ljubljana'),(42,'Europe/Madrid','(GMT+01:00) Madrid'),(43,'Europe/Paris','(GMT+01:00) Paris'),(44,'Europe/Prague','(GMT+01:00) Prague'),(45,'Europe/Rome','(GMT+01:00) Rome'),(46,'Europe/Sarajevo','(GMT+01:00) Sarajevo'),(47,'Europe/Skopje','(GMT+01:00) Skopje'),(48,'Europe/Stockholm','(GMT+01:00) Stockholm'),(49,'Europe/Vienna','(GMT+01:00) Vienna'),(50,'Europe/Warsaw','(GMT+01:00) Warsaw'),(51,'Europe/Zagreb','(GMT+01:00) Zagreb'),(52,'Europe/Athens','(GMT+02:00) Athens'),(53,'Europe/Bucharest','(GMT+02:00) Bucharest'),(54,'Africa/Cairo','(GMT+02:00) Cairo'),(55,'Africa/Harare','(GMT+02:00) Harare'),(56,'Europe/Helsinki','(GMT+02:00) Helsinki'),(57,'Europe/Istanbul','(GMT+02:00) Istanbul'),(58,'Asia/Jerusalem','(GMT+02:00) Jerusalem'),(59,'Europe/Kiev','(GMT+02:00) Kyiv'),(60,'Europe/Minsk','(GMT+02:00) Minsk'),(61,'Europe/Riga','(GMT+02:00) Riga'),(62,'Europe/Sofia','(GMT+02:00) Sofia'),(63,'Europe/Tallinn','(GMT+02:00) Tallinn'),(64,'Europe/Vilnius','(GMT+02:00) Vilnius'),(65,'Asia/Baghdad','(GMT+03:00) Baghdad'),(66,'Asia/Kuwait','(GMT+03:00) Kuwait'),(67,'Africa/Nairobi','(GMT+03:00) Nairobi'),(68,'Asia/Riyadh','(GMT+03:00) Riyadh'),(69,'Asia/Tehran','(GMT+03:30) Tehran'),(70,'Europe/Moscow','(GMT+04:00) Moscow'),(71,'Asia/Baku','(GMT+04:00) Baku'),(72,'Europe/Volgograd','(GMT+04:00) Volgograd'),(73,'Asia/Muscat','(GMT+04:00) Muscat'),(74,'Asia/Tbilisi','(GMT+04:00) Tbilisi'),(75,'Asia/Yerevan','(GMT+04:00) Yerevan'),(76,'Asia/Kabul','(GMT+04:30) Kabul'),(77,'Asia/Karachi','(GMT+05:00) Karachi'),(78,'Asia/Tashkent','(GMT+05:00) Tashkent'),(79,'Asia/Kolkata','(GMT+05:30) Kolkata'),(80,'Asia/Kathmandu','(GMT+05:45) Kathmandu'),(81,'Asia/Yekaterinburg','(GMT+06:00) Ekaterinburg'),(82,'Asia/Almaty','(GMT+06:00) Almaty'),(83,'Asia/Dhaka','(GMT+06:00) Dhaka'),(84,'Asia/Novosibirsk','(GMT+07:00) Novosibirsk'),(85,'Asia/Bangkok','(GMT+07:00) Bangkok'),(86,'Asia/Ho_Chi_Minh','(GMT+07.00) Ho Chi Minh'),(87,'Asia/Jakarta','(GMT+07:00) Jakarta'),(88,'Asia/Krasnoyarsk','(GMT+08:00) Krasnoyarsk'),(89,'Asia/Chongqing','(GMT+08:00) Chongqing'),(90,'Asia/Hong_Kong','(GMT+08:00) Hong Kong'),(91,'Asia/Kuala_Lumpur','(GMT+08:00) Kuala Lumpur'),(92,'Australia/Perth','(GMT+08:00) Perth'),(93,'Asia/Singapore','(GMT+08:00) Singapore'),(94,'Asia/Taipei','(GMT+08:00) Taipei'),(95,'Asia/Ulaanbaatar','(GMT+08:00) Ulaan Bataar'),(96,'Asia/Urumqi','(GMT+08:00) Urumqi'),(97,'Asia/Irkutsk','(GMT+09:00) Irkutsk'),(98,'Asia/Seoul','(GMT+09:00) Seoul'),(99,'Asia/Tokyo','(GMT+09:00) Tokyo'),(100,'Australia/Adelaide','(GMT+09:30) Adelaide'),(101,'Australia/Darwin','(GMT+09:30) Darwin'),(102,'Asia/Yakutsk','(GMT+10:00) Yakutsk'),(103,'Australia/Brisbane','(GMT+10:00) Brisbane'),(104,'Australia/Canberra','(GMT+10:00) Canberra'),(105,'Pacific/Guam','(GMT+10:00) Guam'),(106,'Australia/Hobart','(GMT+10:00) Hobart'),(107,'Australia/Melbourne','(GMT+10:00) Melbourne'),(108,'Pacific/Port_Moresby','(GMT+10:00) Port Moresby'),(109,'Australia/Sydney','(GMT+10:00) Sydney'),(110,'Asia/Vladivostok','(GMT+11:00) Vladivostok'),(111,'Asia/Magadan','(GMT+12:00) Magadan'),(112,'Pacific/Auckland','(GMT+12:00) Auckland'),(113,'Pacific/Fiji','(GMT+12:00) Fiji'),(114,'America/Sao_Paulo','(GMT-03:00) Sao Paulo'),(115,'America/Rio_branco','(GMT-05:00) Rio Branco'),(116,'America/Belem','(GMT-03:00) Belem'),(117,'America/Bahia','(GMT-03:00) Bahia'),(118,'America/Cuiaba','(GMT-04:00) Cuiaba'),(119,'America/Fortaleza','(GMT-03:00) Fortaleza'),(120,'America/Recife','(GMT-03:00) Recife'),(121,'America/Boa_Vista','(GMT-04:00) Boa Vista'),(122,'America/Maceio','(GMT-03:00) Maceio'),(123,'America/Araguaia','(GMT-03:00) Araguaia'),(124,'America/Manaus','(GMT-04:00) Manaus'),(125,'America/Campo_Grande','(GMT-04:00) Campo Grande'),(126,'America/Porto_Velho','(GMT-04:00) Porto Velho');
/*!40000 ALTER TABLE `timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_additional_infos`
--

DROP TABLE IF EXISTS `user_additional_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_additional_infos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `owner` int NOT NULL,
  `service` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_additional_infos`
--

LOCK TABLES `user_additional_infos` WRITE;
/*!40000 ALTER TABLE `user_additional_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_additional_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_assign_organization`
--

DROP TABLE IF EXISTS `user_assign_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_assign_organization` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_assign_organization_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `user_assign_organization_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_assign_organization`
--

LOCK TABLES `user_assign_organization` WRITE;
/*!40000 ALTER TABLE `user_assign_organization` DISABLE KEYS */;
INSERT INTO `user_assign_organization` VALUES (3,1,3,'2017-11-10 07:25:31','2017-11-10 07:25:31'),(5,1,2,'2017-11-18 02:10:20','2017-11-18 02:10:20'),(6,1,4,'2017-11-18 02:26:15','2017-11-18 02:26:15');
/*!40000 ALTER TABLE `user_assign_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notification`
--

DROP TABLE IF EXISTS `user_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notification` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `notification_id` int NOT NULL,
  `user_id` int NOT NULL,
  `is_read` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notification`
--

LOCK TABLES `user_notification` WRITE;
/*!40000 ALTER TABLE `user_notification` DISABLE KEYS */;
INSERT INTO `user_notification` VALUES (1,1,2,0,'2023-12-01 15:59:09','2023-12-01 15:59:09'),(2,1,1,0,'2023-12-01 15:59:09','2023-12-01 15:59:09'),(3,2,2,0,'2023-12-01 16:50:46','2023-12-01 16:50:46'),(4,2,1,0,'2023-12-01 16:50:46','2023-12-01 16:50:46');
/*!40000 ALTER TABLE `user_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ban` tinyint(1) NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `ext` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `country_code` int NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `agent_sign` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `account_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `account_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `assign_group` int unsigned DEFAULT NULL,
  `primary_dpt` int unsigned DEFAULT NULL,
  `agent_tzone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `daylight_save` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `limit_access` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `directory_listing` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `vacation_mode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `internal_note` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `profile_pic` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_language` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_mobile_unique` (`mobile`),
  KEY `assign_group_3` (`assign_group`),
  KEY `primary_dpt_2` (`primary_dpt`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`assign_group`) REFERENCES `groups` (`id`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`primary_dpt`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Tikiri','Admin',1,'demoadmin@tikiri.com.br',0,'$2y$10$VkTfzaICqiie8dDx4i1K.O3yX48MkyLiPjt098u1ImchZEj6DpzA6',1,0,'',0,'',NULL,'','','',1,1,'6','','','','','','admin','','7678.9929053_executive_boss_instructor_professional_leader_icon.png','MEr4t8zZ9zcsDjelTOhLdhFSmSVJ72NtO4oUGXSea5qe9R7uXNCfqZBExbI2','2016-12-13 03:19:53','2023-12-01 14:49:51','pt-br'),(2,'atendente','Carlos','Atendente',1,'demoatendente@tikiri.com.br',1,'$2y$10$F1pTkzoLFpny95xDalbareSlAswWNqgVauyvH47s8Co2kk1wFzN3G',1,0,'',0,'',NULL,'','','',1,1,'6','','','','','','agent','','6528.if_8_2694142.png','iVh9JN8iif5gqKJEnABEDqTvuMiMDa6j8LGhbffYFwv7NjUDCSTIGLCvCndo','2016-12-13 03:32:41','2017-11-21 00:47:09',NULL),(3,'jose','José','Atendente',1,'demoatendente2@tikiri.com.br',0,'$2y$10$gsbQAupQBgOW6NOc51oTD.vhYynXxz/GJCqYuUCxi08bqa/dh9QN6',1,0,'',0,'',NULL,'','','',2,2,'6','','','','','','agent','','4514.if_8_2694142.png','4UWy8h8QceB69Vru1lxvz1ViAZTMYHKpKTaGraqaHZca540U5h73yqPcvPGr','2016-12-13 03:35:29','2017-11-10 07:26:38',NULL),(4,'cliente','Pedro','Cliente',1,'cliente@tikiri.com.br',1,'$2y$10$qphk0McJKrDaYHqgmBB.Y.1QqdDxK9FOpR6B06yRcOk6byj9Z4xRK',1,0,'',95,'2914','981128113','','','',NULL,NULL,'','','','','','TKR Corp','user','','4925.cliente.png','gxemcwKiWxF8IM4ocIbcoYikA4qUptTvc4JRqQYq8xJcWVkWO74ES2Sj9Xcs','2016-12-13 03:45:19','2017-11-18 02:26:15',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version_check`
--

DROP TABLE IF EXISTS `version_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `version_check` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `current_version` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `new_version` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version_check`
--

LOCK TABLES `version_check` WRITE;
/*!40000 ALTER TABLE `version_check` DISABLE KEYS */;
INSERT INTO `version_check` VALUES (1,'','','2016-12-13 03:19:30','2016-12-13 03:19:30');
/*!40000 ALTER TABLE `version_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'footer1','','','2016-12-13 03:19:30','2017-11-07 19:28:54'),(2,'footer2','','<br />','2016-12-13 03:19:30','2017-11-07 19:25:39'),(3,'footer3','','<br />','2016-12-13 03:19:30','2017-11-07 19:25:49'),(4,'footer4','','','2016-12-13 03:19:30','2017-11-07 19:26:03'),(7,'linkedin',NULL,NULL,'2016-12-13 03:19:31','2016-12-13 03:19:31'),(8,'stumble',NULL,NULL,'2016-12-13 03:19:31','2016-12-13 03:19:31'),(9,'google',NULL,NULL,'2016-12-13 03:19:31','2016-12-13 03:19:31'),(10,'deviantart',NULL,NULL,'2016-12-13 03:19:31','2016-12-13 03:19:31'),(11,'flickr',NULL,NULL,'2016-12-13 03:19:31','2016-12-13 03:19:31'),(12,'skype',NULL,NULL,'2016-12-13 03:19:31','2016-12-13 03:19:31'),(13,'rss',NULL,NULL,'2016-12-13 03:19:31','2016-12-13 03:19:31'),(14,'twitter',NULL,NULL,'2016-12-13 03:19:31','2016-12-13 03:19:31'),(15,'facebook',NULL,NULL,'2016-12-13 03:19:31','2016-12-13 03:19:31'),(16,'youtube',NULL,NULL,'2016-12-13 03:19:32','2016-12-13 03:19:32'),(17,'vimeo',NULL,NULL,'2016-12-13 03:19:32','2016-12-13 03:19:32'),(18,'pinterest',NULL,NULL,'2016-12-13 03:19:32','2016-12-13 03:19:32'),(19,'dribbble',NULL,NULL,'2016-12-13 03:19:32','2016-12-13 03:19:32'),(20,'instagram',NULL,NULL,'2016-12-13 03:19:32','2016-12-13 03:19:32');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_action`
--

DROP TABLE IF EXISTS `workflow_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workflow_action` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `workflow_id` int unsigned NOT NULL,
  `condition` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `action` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_action_1` (`workflow_id`),
  CONSTRAINT `workflow_action_1` FOREIGN KEY (`workflow_id`) REFERENCES `workflow_name` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action`
--

LOCK TABLES `workflow_action` WRITE;
/*!40000 ALTER TABLE `workflow_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_close`
--

DROP TABLE IF EXISTS `workflow_close`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workflow_close` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `days` int NOT NULL,
  `condition` int NOT NULL,
  `send_email` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_close`
--

LOCK TABLES `workflow_close` WRITE;
/*!40000 ALTER TABLE `workflow_close` DISABLE KEYS */;
INSERT INTO `workflow_close` VALUES (1,2,1,1,3,'2016-12-13 03:19:14','2016-12-13 03:19:14');
/*!40000 ALTER TABLE `workflow_close` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_name`
--

DROP TABLE IF EXISTS `workflow_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workflow_name` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `order` int NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `internal_note` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_name`
--

LOCK TABLES `workflow_name` WRITE;
/*!40000 ALTER TABLE `workflow_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_rules`
--

DROP TABLE IF EXISTS `workflow_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workflow_rules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `workflow_id` int unsigned NOT NULL,
  `matching_criteria` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `matching_scenario` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `matching_relation` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `matching_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_rules_1` (`workflow_id`),
  CONSTRAINT `workflow_rules_1` FOREIGN KEY (`workflow_id`) REFERENCES `workflow_name` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_rules`
--

LOCK TABLES `workflow_rules` WRITE;
/*!40000 ALTER TABLE `workflow_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tikiri2023'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-03 18:36:58
