-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: WealthIA
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.1

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
-- Table structure for table `wa_access`
--

DROP TABLE IF EXISTS `wa_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wa_access` (
  `SEQ_NUM` int NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` varchar(250) NOT NULL,
  `ACCESS_ID` varchar(500) NOT NULL,
  `DATE_CREATED` datetime NOT NULL,
  `FIRST_LOGIN_DATE` datetime DEFAULT NULL,
  `IS_LOGGED` int NOT NULL DEFAULT '0',
  `CHANGE_PWD` int DEFAULT NULL,
  `RESET_PWD_DATE` datetime DEFAULT NULL,
  `STATUS` int NOT NULL DEFAULT '0',
  `CHANGE_PWD_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`SEQ_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_access`
--

LOCK TABLES `wa_access` WRITE;
/*!40000 ALTER TABLE `wa_access` DISABLE KEYS */;
INSERT INTO `wa_access` VALUES (20,'c5ad2118-77c2-49e8-ba32-c462880a6429','$2a$08$wxPRofJDE9iqi9LgNEILHuOhlRjfmmO0mjB33vUctnHwMO8HrKlEW','2021-11-15 09:50:06',NULL,0,0,'2021-12-04 20:23:56',0,NULL),(21,'be31736c-ddb9-4710-b2c0-d3352165b898','$2a$08$aE/91G.srDNYGq2VD/SnYOKrF0vk.iZLqOpfHqad2X90Rspe72e2C','2021-11-21 17:00:25',NULL,0,NULL,NULL,0,NULL),(22,'48e2d1b0-b6ce-48e9-8d02-f67836f0ffd9','$2a$08$b1sQj6tnJ/2TuU5fI1b1IeoSbBCX1OTSPdcCq7OUjBtsBZ5EahfpC','2021-11-22 18:12:39',NULL,0,NULL,NULL,0,NULL),(23,'48e2d1b0-b6ce-48e9-8d02-f67836f0ffd9','$2a$08$7sOWlp6POtHhYlPmf2yzMeHWalJJ/r7zeExVhRZlM1jo5ri8ZJS36','2021-11-22 18:14:57',NULL,0,NULL,NULL,0,NULL),(24,'ac738543-cf8a-43fe-b4cd-f5a36e3e8101','$2a$08$AL3uXJ/JeuRT307xYl/5P.pYOLnzV1XBSoqfltGjuzYYdLou0ZweG','2021-11-22 19:04:19',NULL,0,NULL,NULL,0,NULL),(25,'e82fdf80-59f2-4935-ba8e-1a63339c5802','$2a$08$1T35HzIzxdv/FcpnAqhHiuCz7XM8BcARtG5fo0G3i5urPuw0SbAFq','2021-11-23 20:20:00',NULL,0,0,'2022-06-29 09:20:38',0,NULL),(26,'220beb2e-5dbc-4200-b7c3-bc3c0a04bb2b','$2a$08$LA6fV7rRmmf/rGqjIh2JgeTMtzqKzaxhDMEb12o5ug9Ka63QhFNSS','2021-12-01 14:17:47',NULL,0,NULL,NULL,0,NULL),(27,'795012e9-5c4f-4073-92ba-d5669f3415d6','$2a$08$.Gva4ed6CoaCasTnFOhw1.ZiiNywyZ1W5dU05Q/79vznViVBFdxTG','2021-12-01 14:45:45',NULL,0,NULL,NULL,0,NULL),(28,'65b462c9-5870-4f76-b7c6-89ab5f393507','$2a$08$5n3OONXwzkn7DL4/JeR5R.CBERn6JI/7tAkBA79I1HIsysLQRvaeK','2021-12-08 11:20:31',NULL,0,NULL,NULL,0,NULL),(29,'336d612f-660a-46f6-906f-37e93a70d3d7','$2a$08$HjJWqsGwOPpf3YgZsXFlCuoRtKaxCdR9FDNeIpttizelrOHkHR0Oa','2022-02-16 05:41:32',NULL,0,NULL,NULL,0,NULL),(30,'0cbd2e14-0258-47ec-a3f1-ab30a0fafca0','$2a$08$5VG0YhrQ2XPMXP7wwWzcfuUbwnhx.9bOLvJrjBUqAnUvF9yNGp2Oa','2022-04-12 11:22:57',NULL,0,NULL,NULL,0,NULL),(31,'62dc6ff4-44a9-4bdb-a45b-0334a9b02db8','$2a$08$TphnGTkc6MhRe2yj3cVZXO3Bpuc4Fm.5ql8t8xCcLhqAnIRoroMba','2022-05-20 07:33:59',NULL,0,NULL,NULL,0,NULL),(32,'ab4eeaa5-ddba-4ba5-afd9-2145ba4824c8','$2a$08$7XMyq4gLEbzo3BkKrDxepu4bS5y5D5aLeloajqySQuq4HmCOP2xwC','2022-06-27 13:21:51',NULL,0,0,'2022-06-28 16:27:11',0,NULL),(33,'8d964e6f-403f-49eb-8a08-a9ed068e9bbf','$2a$08$MkWrVnlx9rJDFpBfP7veRe/jMjQtqIsXeoy3Xm398a7GE/GNzl1aK','2022-07-25 09:14:55',NULL,0,NULL,NULL,0,NULL),(34,'4a5efc4c-96cc-4424-8e33-c229871324f7','$2a$08$Qw7hly.iwrkmXxxtoa601uSR99hCPX1zBiK35yY6BASv1mEk5a42e','2022-07-27 08:04:03',NULL,0,NULL,NULL,0,NULL),(35,'d17a2043-c300-4fe5-9e4a-b9cee58635e4','$2a$08$VaVaETcmEWPpvzqwVrKrKubFmPmabJigKPb8Dmg3kb88Jrd.H6Vzy','2022-07-27 08:06:35',NULL,0,NULL,NULL,0,NULL),(36,'c7b16edc-0d99-4fff-8a84-4d02c1192930','$2a$08$Ak/mKJJi70GMQxSQJxehG.TDOCLd2TmGKrJOAg8xDHn4XgdcC15mi','2022-07-27 10:04:51',NULL,0,NULL,NULL,0,NULL),(37,'86172d46-b25f-44bd-9e8f-5c08e96a1b59','$2a$08$tCrEHbfSYFkyZs0bwmN1Rum4iWcBSmqGiIRvaRfnKSzwPXYGocrua','2022-08-01 10:39:59',NULL,0,NULL,NULL,0,NULL),(38,'d04f4be9-0c55-49b8-995a-6934dd5ca288','$2a$08$3klsZatVdR76jdklZh6MJuTwrSfK9nV.Gx0s7CMaWT9nDDGeUxVS.','2022-08-07 17:03:16',NULL,0,NULL,NULL,0,NULL),(39,'f584ec67-5bf6-4223-a355-d9d7f24e973c','$2a$08$tUrj8FxSjbhgLk8oOcDoYul00uE69voleKCKR8/ycMZe/g39CGAA6','2022-08-07 17:08:52',NULL,0,NULL,NULL,0,NULL),(40,'448e1664-83e6-4435-948a-c182c8f09551','$2a$08$LcFVGXAGGGw3bo54EHxaVOmV9NHs854t6MucqG/A.GXmfB1ZbjN1q','2022-08-11 15:13:45',NULL,0,NULL,NULL,0,NULL),(41,'237ca7b3-880d-453a-85f9-2c726b7728ca','$2a$08$oBjgR84obIWNFQjhpkNeJ.jx3UHo4GOSvys6KQmuwJxArBOrMNb/O','2022-08-12 10:08:01',NULL,0,NULL,NULL,0,NULL),(42,'1d1b494a-843e-493d-8942-19f8fe6af44d','$2a$08$62HCjfAYq0QLsTYMiFBSvOpua65uNBCxuutn/6d3oyN9KXkWGLQpK','2022-08-12 10:57:57',NULL,0,NULL,NULL,0,NULL),(43,'e545b6bf-cc04-4dd7-967c-a119ff602baf','$2a$08$jdn0EhGSrMPsg4xP3nVZpeteRVc55JI.1Bg8zlMfKJL3s.dCvk6Li','2022-08-30 12:40:55',NULL,0,NULL,NULL,0,NULL),(44,'3980731c-ff33-4fee-a6cd-b7f0cdd6f9d6','$2a$08$03cVgG5oukQkxqT37N6ECuXcAxoDfabs/jjTnqMwJ9UzcCZ0cil6i','2022-08-30 15:21:33',NULL,0,0,'2022-08-30 15:24:02',0,NULL),(45,'92702c2a-d6eb-4f20-89b5-120fb00b7906','$2a$08$kPmmDh5eZetvVVzxNkjqpebJNYXWO1MCcnwpDOWsu0szXZX8L3rfC','2022-09-07 06:37:30',NULL,0,1,NULL,0,'2022-09-07 06:39:06'),(46,'92702c2a-d6eb-4f20-89b5-120fb00b7906','$2a$08$J5INIVek1HYgAgN0OJoKZevgj9eLX.b7gsxwNTTltZ3D4HYKCsP3q','2022-09-07 08:14:38',NULL,0,NULL,NULL,0,NULL),(47,'471a2a39-231f-4204-a557-7ac88243ea3e','$2a$08$KKyYaikzBvR7lygJi7T1k.XoLwVcYXmLHyGi8zNo2akdOYmgavIsO','2022-09-26 21:43:08',NULL,0,NULL,NULL,0,NULL),(48,'307110fd-baa0-4f4f-9f37-93a0c5a39bb1','$2a$08$m5qDhGhP9N6QxmdJl/dMHeWxiFRiO7Coo/5wGB4LSIpfu4cZys0du','2022-11-01 14:03:52',NULL,0,NULL,NULL,0,NULL),(49,'e0568430-1831-4403-aac5-459383307431','$2a$08$zYvZ./.KMT625OTSvJ.hveBbd9yJhniS92NoNqj8ZSId29dKU.6sG','2023-01-16 07:30:11',NULL,0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `wa_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wa_categories`
--

DROP TABLE IF EXISTS `wa_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wa_categories` (
  `SEQ_NUM` int NOT NULL AUTO_INCREMENT,
  `CATEGORY_ID` varchar(250) NOT NULL,
  `NAME` varchar(250) DEFAULT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `COUNT` int NOT NULL,
  `DATE_CREATED` datetime NOT NULL,
  `STATUS` int DEFAULT '0',
  PRIMARY KEY (`SEQ_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_categories`
--

LOCK TABLES `wa_categories` WRITE;
/*!40000 ALTER TABLE `wa_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `wa_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wa_client_messages`
--

DROP TABLE IF EXISTS `wa_client_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wa_client_messages` (
  `SEQ_NUM` int NOT NULL AUTO_INCREMENT,
  `REQUEST_ID` varchar(250) NOT NULL,
  `SUB_CATEGORY_ID` varchar(250) NOT NULL,
  `CLIENT_ID` varchar(250) NOT NULL,
  `MESSAGE` varchar(1000) NOT NULL,
  `PROVIDER_ID` varchar(250) DEFAULT NULL,
  `TYPE` int NOT NULL DEFAULT '0',
  `CHANNEL_CATEGORY` varchar(45) DEFAULT NULL,
  `CHECKED` int NOT NULL DEFAULT '0',
  `IS_RESPONSE` int NOT NULL DEFAULT '0',
  `DATE_CREATED` datetime NOT NULL,
  `MESSAGE_READ_DATE` datetime DEFAULT NULL,
  `STATUS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`SEQ_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_client_messages`
--

LOCK TABLES `wa_client_messages` WRITE;
/*!40000 ALTER TABLE `wa_client_messages` DISABLE KEYS */;
INSERT INTO `wa_client_messages` VALUES (30,'6a42a1b7-2ebc-4144-acb2-cbd95e669b66','2e01ca10-97fa-4f05-a45f-2c6f2214ffe4','c5ad2118-77c2-49e8-ba32-c462880a6429','hello I am testing a long message now let us know how it goes like that.',NULL,1,NULL,1,0,'2021-11-19 16:53:52','2021-11-26 17:27:35',0),(31,'9b164985-5d92-4d76-9110-ed7b42eb30ab','08ff020c-2872-4561-9576-41ffc95210a0','c5ad2118-77c2-49e8-ba32-c462880a6429','Hello this is a new message about health management',NULL,1,NULL,0,0,'2021-11-25 15:14:01',NULL,0),(32,'d0ab98e5-694d-44a3-b4e5-0c76158d3df5','2e01ca10-97fa-4f05-a45f-2c6f2214ffe4','c5ad2118-77c2-49e8-ba32-c462880a6429','like to learn about investment...please hit  me up about it.',NULL,1,NULL,1,0,'2021-11-25 21:46:22','2021-11-26 17:12:57',0),(33,'70685ad3-2278-4943-855d-ebdfb7027799','2e01ca10-97fa-4f05-a45f-2c6f2214ffe4','c5ad2118-77c2-49e8-ba32-c462880a6429','this is investment message o… you should be able to see it.',NULL,1,NULL,0,0,'2021-11-26 16:49:42',NULL,0),(34,'72415d2b-46a9-42aa-8728-5b8b66ae17c0','c25e3597-2858-4805-871d-ddbde6808452','c5ad2118-77c2-49e8-ba32-c462880a6429','posting new stuffs under loans I will be checking it later',NULL,1,NULL,0,0,'2021-12-03 00:18:27',NULL,0),(35,'1afefa3f-47e3-4347-9c8e-64c023e8d929','b7d3c12d-f653-4876-b96f-c4b5fb6a634a','c5ad2118-77c2-49e8-ba32-c462880a6429','this enquiry is for payment. trying to post a new stuff',NULL,1,NULL,0,0,'2021-12-07 15:25:08',NULL,0),(36,'b32e44b5-f556-42f6-afb2-d40e2ac38751','74ac4ecc-d9ec-4a8e-8c48-79db581beed6','c5ad2118-77c2-49e8-ba32-c462880a6429','Hello, I am posting this to Fcmb bank so that they can deal the issue. I will appreciate your prompt response.','e82fdf80-59f2-4935-ba8e-1a63339c5802',2,'Advice',1,0,'2021-12-09 13:45:38','2021-12-09 13:48:33',0),(37,'06a4b2a6-0410-413f-b465-d88f0d576099','c25e3597-2858-4805-871d-ddbde6808452','c5ad2118-77c2-49e8-ba32-c462880a6429','hello, I am posting a new message',NULL,1,NULL,0,0,'2022-01-26 16:50:12',NULL,0),(38,'52f243fe-8300-4d85-b490-28a6db3602f3','c25e3597-2858-4805-871d-ddbde6808452','c5ad2118-77c2-49e8-ba32-c462880a6429','I need a loan',NULL,1,NULL,0,0,'2022-01-28 18:16:01',NULL,0),(39,'4821f737-086b-49c7-8d99-60fc1cf15412','74ac4ecc-d9ec-4a8e-8c48-79db581beed6','c5ad2118-77c2-49e8-ba32-c462880a6429','hello this is a complaint request, help me track it','e82fdf80-59f2-4935-ba8e-1a63339c5802',2,'Complaint',1,0,'2022-02-18 08:53:34','2022-02-20 16:53:16',0),(40,'f875d3bb-5ae1-4237-916c-8d9ec98e11ee','c25e3597-2858-4805-871d-ddbde6808452','c5ad2118-77c2-49e8-ba32-c462880a6429','hello, posting new enquiry message here',NULL,1,NULL,0,0,'2022-03-02 07:39:49',NULL,0),(41,'b5a1853e-f17a-4329-b83c-f079a730d909','c25e3597-2858-4805-871d-ddbde6808452','c5ad2118-77c2-49e8-ba32-c462880a6429','hello I need a loan',NULL,1,NULL,0,0,'2022-04-12 09:49:09',NULL,0),(42,'a1bf9de1-12b7-46be-94f0-47335d5fa20c','c25e3597-2858-4805-871d-ddbde6808452','c5ad2118-77c2-49e8-ba32-c462880a6429','how can I get a mortgage \n',NULL,1,NULL,0,0,'2022-04-29 18:18:55',NULL,0),(43,'eeabe24c-1cb4-427c-8b43-3035c7ea2fa3','74ac4ecc-d9ec-4a8e-8c48-79db581beed6','c5ad2118-77c2-49e8-ba32-c462880a6429','how can I rectify my system alert','e82fdf80-59f2-4935-ba8e-1a63339c5802',2,'Complaint',1,0,'2022-04-29 18:20:10','2022-04-29 18:20:21',0),(44,'6700062e-4000-40b4-8d3a-73e17fb5b68a','c25e3597-2858-4805-871d-ddbde6808452','c5ad2118-77c2-49e8-ba32-c462880a6429','Please i need a loan',NULL,1,NULL,0,0,'2022-04-29 18:23:30',NULL,0),(45,'804ec32a-ff9a-4d6d-ac07-d87bc1e00374','c25e3597-2858-4805-871d-ddbde6808452','ab4eeaa5-ddba-4ba5-afd9-2145ba4824c8','hello, my name is oni...I am interested in loans',NULL,1,NULL,0,0,'2022-06-27 13:23:27',NULL,0),(46,'a0b7a924-2d39-4cf6-8718-c71c3c31c01c','2e01ca10-97fa-4f05-a45f-2c6f2214ffe4','c5ad2118-77c2-49e8-ba32-c462880a6429','testing app here',NULL,1,NULL,0,0,'2022-06-27 17:43:24',NULL,0);
/*!40000 ALTER TABLE `wa_client_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wa_clients`
--

DROP TABLE IF EXISTS `wa_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wa_clients` (
  `SEQ_NUM` int NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` varchar(250) NOT NULL,
  `USER_ID` varchar(250) NOT NULL,
  `LAST_NAME` varchar(250) DEFAULT NULL,
  `FIRST_NAME` varchar(250) DEFAULT NULL,
  `MOBILE_PHONE` varchar(45) NOT NULL,
  `EMAIL` varchar(500) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `STATE` varchar(45) NOT NULL,
  `PROVIDER_ID` varchar(45) DEFAULT NULL,
  `COMPANY_NAME` varchar(500) DEFAULT NULL,
  `SECTOR_ID` varchar(250) DEFAULT NULL,
  `CONTACT_NAME` varchar(250) DEFAULT NULL,
  `DATE_CREATED` datetime NOT NULL,
  `IP_ADDRESS` varchar(250) DEFAULT NULL,
  `STATUS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`SEQ_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_clients`
--

LOCK TABLES `wa_clients` WRITE;
/*!40000 ALTER TABLE `wa_clients` DISABLE KEYS */;
INSERT INTO `wa_clients` VALUES (40,'c5ad2118-77c2-49e8-ba32-c462880a6429','tunslike@gmail.com','Ajibade','Adams','09053100351','tunslike@gmail.com','Individual','Lagos',NULL,NULL,NULL,NULL,'2021-11-15 09:50:06','::ffff:127.0.0.1',0),(41,'be31736c-ddb9-4710-b2c0-d3352165b898','tunslike@yahoo.com',NULL,NULL,'08023456785','tunslike@yahoo.com','Company','Lagos',NULL,'Sterling Bank Plc','Bank','Mr Ajayi  James','2021-11-21 17:00:25','::ffff:127.0.0.1',0),(42,'48e2d1b0-b6ce-48e9-8d02-f67836f0ffd9','zenith@yahoo.com',NULL,NULL,'09053100351','zenith@yahoo.com','Company','Port-Harcourt',NULL,'Zenith Bank Plc','Bank','Kehinde  Adams','2021-11-22 18:12:39','::ffff:127.0.0.1',0),(44,'ac738543-cf8a-43fe-b4cd-f5a36e3e8101','abayomi@yahoo.com',NULL,NULL,'09053100351','abayomi@yahoo.com','Company','Akwa Ibom',NULL,'UBA Plc','Bank','Abayomi  Ade','2021-11-22 19:04:18','::ffff:127.0.0.1',0),(45,'e82fdf80-59f2-4935-ba8e-1a63339c5802','fcmb@yahoo.com',NULL,NULL,'09045600987','fcmb@yahoo.com','Company','Lagos','e82fdf80-59f2-4935-ba8e-1a63339c5802','FCMB Bank','Bank','Kayode Williams','2021-11-23 20:20:00','::ffff:127.0.0.1',0),(46,'220beb2e-5dbc-4200-b7c3-bc3c0a04bb2b','tunslike@msn.com','Kehinde','Ajayi','09053100351','tunslike@msn.com','Individual','Lagos',NULL,NULL,NULL,NULL,'2021-12-01 14:17:47','::ffff:127.0.0.1',0),(47,'795012e9-5c4f-4073-92ba-d5669f3415d6','tunslike@hotmail.com','Kenny','Bayo','09053100351','tunslike@hotmail.com','Individual','Select State',NULL,NULL,NULL,NULL,'2021-12-01 14:45:44','::ffff:127.0.0.1',0),(48,'65b462c9-5870-4f76-b7c6-89ab5f393507','tope@yahoo.com','Anu','Temitope','09089000987','tope@yahoo.com','Individual','Lagos',NULL,NULL,NULL,NULL,'2021-12-08 11:20:31','::ffff:127.0.0.1',0),(49,'336d612f-660a-46f6-906f-37e93a70d3d7','kadams@yahoo.com','Adams','Kehinde','09035100351','kadams@yahoo.com','Individual','Lagos',NULL,NULL,NULL,NULL,'2022-02-16 05:41:32','::ffff:127.0.0.1',0),(50,'0cbd2e14-0258-47ec-a3f1-ab30a0fafca0','moyin@yahoo.com','Ajayi','Moyin','09053100351','moyin@yahoo.com','Individual','Lagos',NULL,NULL,NULL,NULL,'2022-04-12 11:22:57','::ffff:127.0.0.1',0),(51,'62dc6ff4-44a9-4bdb-a45b-0334a9b02db8','bankole@yahoo.com','Musibau','Bankole','08023429574','bankole@yahoo.com','Individual','Lagos',NULL,NULL,NULL,NULL,'2022-05-20 07:33:59','::ffff:127.0.0.1',0),(52,'ab4eeaa5-ddba-4ba5-afd9-2145ba4824c8','oni@yahoo.com','Abiodun','Oni','09053100351','oni@yahoo.com','Individual','Lagos',NULL,NULL,NULL,NULL,'2022-06-27 13:21:51','::ffff:127.0.0.1',0),(53,'8d964e6f-403f-49eb-8a08-a9ed068e9bbf','daniel@yahoo.com','zion','daniel','08109099091','daniel@yahoo.com','Individual','Adamawa',NULL,NULL,NULL,NULL,'2022-07-25 09:14:55','::ffff:127.0.0.1',0),(54,'4a5efc4c-96cc-4424-8e33-c229871324f7','glory.james@yahoo.com','James','Glory','09023456789','glory.james@yahoo.com','Individual','Abia',NULL,NULL,NULL,NULL,'2022-07-27 08:04:03','::ffff:127.0.0.1',0),(55,'d17a2043-c300-4fe5-9e4a-b9cee58635e4','bisi.kehinde@yahoo.com','Kehinde','bisi','09089300983','bisi.kehinde@yahoo.com','Individual','Lagos',NULL,NULL,NULL,NULL,'2022-07-27 08:06:35','::ffff:127.0.0.1',0),(56,'c7b16edc-0d99-4fff-8a84-4d02c1192930','raji@yahoo.com','ayomide','raji','09089800987','raji@yahoo.com','Individual','Bauchi',NULL,NULL,NULL,NULL,'2022-07-27 10:04:51','::ffff:127.0.0.1',0),(57,'86172d46-b25f-44bd-9e8f-5c08e96a1b59','akanbi@yahoo.com','joe','akanbi','09098799876','akanbi@yahoo.com','Individual','Anambra',NULL,NULL,NULL,NULL,'2022-08-01 10:39:59','::ffff:127.0.0.1',0),(58,'d04f4be9-0c55-49b8-995a-6934dd5ca288','favor@yahoo.com','Mary','Favor','09087600987','favor@yahoo.com','Individual','Bauchi',NULL,NULL,NULL,NULL,'2022-08-07 17:03:16','::ffff:127.0.0.1',0),(59,'f584ec67-5bf6-4223-a355-d9d7f24e973c','company@yahoo.com','Egbe','comfort','09087600988','company@yahoo.com','Individual','Bauchi',NULL,NULL,NULL,NULL,'2022-08-07 17:08:52','::ffff:127.0.0.1',0),(65,'8ae35dea-1b40-4777-b09b-ff5dcda7e7ac','kazeem@yahoo.com',NULL,NULL,'09899033987','kazeem@yahoo.com','Company','Lagos','8ae35dea-1b40-4777-b09b-ff5dcda7e7ac','Leadway Insurance Plc','Insurance','kazeem ojo','2022-08-08 20:46:52','134.122.106.24',0),(66,'2174bfe3-0bab-451a-bde6-86f21d9e6187','shade@yahoo.com',NULL,NULL,'09011099098','shade@yahoo.com','Company','Lagos','2174bfe3-0bab-451a-bde6-86f21d9e6187','Stanbic IBTC Pensions','Pensions','Shade James','2022-08-08 21:04:23','134.122.106.24',0),(67,'50941ab4-a395-4b7f-a865-7df5239b37e2','shade@yahoo.com',NULL,NULL,'09011099098','shade@yahoo.com','Company','Lagos','50941ab4-a395-4b7f-a865-7df5239b37e2','Stanbic IBTC Pensions','Pensions','Shade James','2022-08-08 21:34:55','134.122.106.24',0),(68,'a6b7fd27-9e43-4fbf-9627-1a796634bfb7','shade@yahoo.com',NULL,NULL,'09011099098','shade@yahoo.com','Company','Lagos','a6b7fd27-9e43-4fbf-9627-1a796634bfb7','Stanbic IBTC Pensions','Pensions','Shade James','2022-08-08 21:37:38','134.122.106.24',0),(69,'4fe41c76-1dd4-4f7e-aa79-a35adbc5ff96','shade@yahoo.com',NULL,NULL,'09011099098','shade@yahoo.com','Company','Lagos','4fe41c76-1dd4-4f7e-aa79-a35adbc5ff96','Stanbic IBTC Pensions','Pensions','Shade James','2022-08-08 21:40:00','134.122.106.24',0),(70,'16038694-91f8-4d46-ae4a-aaf61c1c97bf','shade@yahoo.com',NULL,NULL,'09011099098','shade@yahoo.com','Company','Lagos','16038694-91f8-4d46-ae4a-aaf61c1c97bf','Stanbic IBTC Pensions','Pensions','Shade James','2022-08-08 21:42:13','134.122.106.24',0),(71,'448e1664-83e6-4435-948a-c182c8f09551','niyi@yahoo.com',NULL,NULL,'08199098123','niyi@yahoo.com','Company','Lagos','448e1664-83e6-4435-948a-c182c8f09551','Stanbic iBTC Asset Management','Investment','Niyi Ajayi','2022-08-11 15:13:45','134.122.106.24',0),(72,'237ca7b3-880d-453a-85f9-2c726b7728ca','tobi@yahoo.com',NULL,NULL,'09012300934','tobi@yahoo.com','Company','Lagos','237ca7b3-880d-453a-85f9-2c726b7728ca','ARM Investments','Investment','Tobi James','2022-08-12 10:08:01','134.122.106.24',0),(73,'1d1b494a-843e-493d-8942-19f8fe6af44d','tobi@yahoo.com',NULL,NULL,'09012300934','tobi@yahoo.com','Company','Lagos','1d1b494a-843e-493d-8942-19f8fe6af44d','ARM Investments','Investment','Tobi James','2022-08-12 10:57:57','134.122.106.24',0),(74,'e545b6bf-cc04-4dd7-967c-a119ff602baf','ojo.adams@yahoo.com','Adams','Ojo','09087700973','ojo.adams@yahoo.com','Individual','Anambra',NULL,NULL,NULL,NULL,'2022-08-30 12:40:55','::ffff:127.0.0.1',0),(75,'3980731c-ff33-4fee-a6cd-b7f0cdd6f9d6','kennybarmy@yahoo.com','Fay','kenny','08035029121','kennybarmy@yahoo.com','Individual','Lagos',NULL,NULL,NULL,NULL,'2022-08-30 15:21:33','::ffff:127.0.0.1',0),(76,'92702c2a-d6eb-4f20-89b5-120fb00b7906','adeyemoadedapo8@gmail.com','adeyemo','Stephen','+2348117173984','adeyemoadedapo8@gmail.com','Individual','Oyo',NULL,NULL,NULL,NULL,'2022-09-07 06:37:30','::ffff:127.0.0.1',0),(77,'25bdfa6e-01e6-4e62-970c-adb980725906','adeyemoadedapo8@gmail.com','Adeyemo','Stephen','08117173984','adeyemoadedapo8@gmail.com','Individual','Oyo',NULL,NULL,NULL,NULL,'2022-09-07 08:14:38','::ffff:127.0.0.1',0),(78,'471a2a39-231f-4204-a557-7ac88243ea3e','semiu@yahoo.com','Semiu','Saidat','09053109398','semiu@yahoo.com','Individual','Lagos',NULL,NULL,NULL,NULL,'2022-09-26 21:43:08','::ffff:127.0.0.1',0),(79,'307110fd-baa0-4f4f-9f37-93a0c5a39bb1','tobi@yahoo.com',NULL,NULL,'09012300934','tobi@yahoo.com','Company','Lagos','307110fd-baa0-4f4f-9f37-93a0c5a39bb1','ARM Investments','Investment','Tobi James','2022-11-01 14:03:52','134.122.106.24',0),(80,'e0568430-1831-4403-aac5-459383307431','segun.oremeji@yahoo.com',NULL,NULL,'09082099282','segun.oremeji@yahoo.com','Company','Lagos','e0568430-1831-4403-aac5-459383307431','Sterling Bank','Bank','Segun Oremeji','2023-01-16 07:30:11','134.122.106.24',0);
/*!40000 ALTER TABLE `wa_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wa_connections`
--

DROP TABLE IF EXISTS `wa_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wa_connections` (
  `SEQ_NUM` int NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` varchar(500) NOT NULL,
  `CONNECTION_ID` varchar(500) NOT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `STATUS` int DEFAULT '0',
  PRIMARY KEY (`SEQ_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_connections`
--

LOCK TABLES `wa_connections` WRITE;
/*!40000 ALTER TABLE `wa_connections` DISABLE KEYS */;
INSERT INTO `wa_connections` VALUES (5,'263500573-c541-449e-ad9c-f676bc1c07a6','263500573-c541-449e-ad9c-f676bc1c07a6','2021-11-20 18:26:28',0),(6,'c5ad2118-77c2-49e8-ba32-c462880a6429','bd7acbea-c1b1-46c2-aed5-3ad53abb28ba','2021-11-21 16:50:16',0),(7,'c5ad2118-77c2-49e8-ba32-c462880a6429','3ac68afc-c605-48d3-a4f8-fbd91aa97f63','2021-11-21 16:54:42',0),(8,'c5ad2118-77c2-49e8-ba32-c462880a6429','3ac68afc-c605-48d3-a4f8-fbd91aa97f63','2021-11-21 17:15:11',0);
/*!40000 ALTER TABLE `wa_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wa_message_responses`
--

DROP TABLE IF EXISTS `wa_message_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wa_message_responses` (
  `SEQ_NUM` int NOT NULL AUTO_INCREMENT,
  `RESPONSE_ID` varchar(250) NOT NULL,
  `MESSAGE_REQUEST_ID` varchar(250) NOT NULL,
  `RESPONSE_MESSAGE` varchar(1000) NOT NULL,
  `RESPONSE_BY` varchar(250) NOT NULL,
  `RESPONSE_DATE` datetime NOT NULL,
  `STATUS` int DEFAULT '0',
  PRIMARY KEY (`SEQ_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_message_responses`
--

LOCK TABLES `wa_message_responses` WRITE;
/*!40000 ALTER TABLE `wa_message_responses` DISABLE KEYS */;
INSERT INTO `wa_message_responses` VALUES (15,'7290e128-6d6c-4925-961e-79c43288dcd8','6a42a1b7-2ebc-4144-acb2-cbd95e669b66','ok. welcome to this avenue I will like to continue','e82fdf80-59f2-4935-ba8e-1a63339c5802','2021-11-26 17:13:41',0),(16,'c650e844-12e0-4040-bf96-b38d5c039c15','6a42a1b7-2ebc-4144-acb2-cbd95e669b66','I will like you to respond to this message now','e82fdf80-59f2-4935-ba8e-1a63339c5802','2021-11-26 17:27:26',0),(17,'14ae53e8-c754-4538-9abd-b4ddf9c1a996','6a42a1b7-2ebc-4144-acb2-cbd95e669b66','Hello, are you there','e82fdf80-59f2-4935-ba8e-1a63339c5802','2021-11-30 16:34:03',0),(18,'f8268fbb-0ef7-4b24-acc0-06dbc910e208','6a42a1b7-2ebc-4144-acb2-cbd95e669b66','Hello I am ok with the response','c5ad2118-77c2-49e8-ba32-c462880a6429','2021-11-30 17:43:24',0),(19,'b59cfe4e-3c54-4c39-acbc-833fca607437','6a42a1b7-2ebc-4144-acb2-cbd95e669b66','This is another response like this','c5ad2118-77c2-49e8-ba32-c462880a6429','2021-11-30 17:48:41',0),(20,'9b8d2348-48f0-4695-bb05-4607b1bbab8d','6a42a1b7-2ebc-4144-acb2-cbd95e669b66','tonight I am testing another message','e82fdf80-59f2-4935-ba8e-1a63339c5802','2021-11-30 23:39:50',0),(21,'d7fb79a1-aa5b-45cf-9206-14bfdcb5d2bd','6a42a1b7-2ebc-4144-acb2-cbd95e669b66','this is me posting from my phone ','c5ad2118-77c2-49e8-ba32-c462880a6429','2021-12-01 22:35:32',0),(22,'36d8ef78-dabe-4ab2-94ba-ecd7cdf58928','b32e44b5-f556-42f6-afb2-d40e2ac38751','hello, thanks for your message','e82fdf80-59f2-4935-ba8e-1a63339c5802','2022-01-26 16:51:50',0),(23,'7d45a2a5-25cc-427a-a2af-31a851de2287','b32e44b5-f556-42f6-afb2-d40e2ac38751','thanks for posting this','e82fdf80-59f2-4935-ba8e-1a63339c5802','2022-02-14 13:12:19',0),(24,'f089d3dc-6105-4926-a546-e532dfcb2f8d','b32e44b5-f556-42f6-afb2-d40e2ac38751','ok, I think I saw this. very nice that it\'s working that way ok','c5ad2118-77c2-49e8-ba32-c462880a6429','2022-02-15 08:00:42',0),(25,'4fabb664-fba5-4407-9139-a9d7c61dbc67','b32e44b5-f556-42f6-afb2-d40e2ac38751','that is cool really','e82fdf80-59f2-4935-ba8e-1a63339c5802','2022-02-15 08:01:34',0),(26,'b28a0a1a-8c27-496c-bad8-fb74718b665c','b32e44b5-f556-42f6-afb2-d40e2ac38751','I am just testing that this work here','c5ad2118-77c2-49e8-ba32-c462880a6429','2022-02-16 15:45:30',0),(27,'43b205aa-d1ce-4632-a494-1514b94af248','4821f737-086b-49c7-8d99-60fc1cf15412','this is a response ','e82fdf80-59f2-4935-ba8e-1a63339c5802','2022-02-22 08:44:51',0),(28,'91e1119f-20d6-4e2c-9d3b-0c4a2b320e72','4821f737-086b-49c7-8d99-60fc1cf15412','I am testing this one here','e82fdf80-59f2-4935-ba8e-1a63339c5802','2022-02-22 08:49:27',0),(29,'5dfd2ece-3ea3-428e-9d4b-dc098a5d8edd','4821f737-086b-49c7-8d99-60fc1cf15412','let us test this again to see','e82fdf80-59f2-4935-ba8e-1a63339c5802','2022-02-22 08:52:20',0),(30,'16b67e55-6c90-4c81-8670-3bf3f3309478','eeabe24c-1cb4-427c-8b43-3035c7ea2fa3','hello yinka, message acknowledged ','e82fdf80-59f2-4935-ba8e-1a63339c5802','2022-04-29 18:20:40',0),(31,'acee2676-61ce-4bb6-aac6-704f4d93ed6c','eeabe24c-1cb4-427c-8b43-3035c7ea2fa3','I have not received alert in a month ','c5ad2118-77c2-49e8-ba32-c462880a6429','2022-04-29 18:22:33',0),(32,'408cef84-2679-41a9-b806-17f1825bd2d3','b32e44b5-f556-42f6-afb2-d40e2ac38751','Hello Adams have you taken a decision ','e82fdf80-59f2-4935-ba8e-1a63339c5802','2022-05-14 09:46:01',0),(33,'78154dc2-0f2b-4ad6-81e5-da72da3eb2a0','4821f737-086b-49c7-8d99-60fc1cf15412','still testing ','e82fdf80-59f2-4935-ba8e-1a63339c5802','2022-05-14 09:46:17',0),(34,'f6a4d822-df92-4db8-9061-39e87b1701f8','eeabe24c-1cb4-427c-8b43-3035c7ea2fa3','ok no problem','e82fdf80-59f2-4935-ba8e-1a63339c5802','2022-06-27 13:24:23',0);
/*!40000 ALTER TABLE `wa_message_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wa_provider_documents`
--

DROP TABLE IF EXISTS `wa_provider_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wa_provider_documents` (
  `SEQ_NUM` int NOT NULL AUTO_INCREMENT,
  `UPLOAD_ID` varchar(250) NOT NULL,
  `PROVIDER_ID` varchar(250) NOT NULL,
  `CONTACT_USER_ID` varchar(250) NOT NULL,
  `CONTACT_NAME` varchar(250) NOT NULL,
  `COI_DOCUMENT` varchar(250) NOT NULL,
  `DIRECTOR_SIGNATURE` varchar(250) NOT NULL,
  `DATE_CREATED` datetime NOT NULL,
  `IP_ADDRESS` varchar(250) NOT NULL,
  `STATUS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`SEQ_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_provider_documents`
--

LOCK TABLES `wa_provider_documents` WRITE;
/*!40000 ALTER TABLE `wa_provider_documents` DISABLE KEYS */;
INSERT INTO `wa_provider_documents` VALUES (7,'e25b105487a6d67b8bff2d8444e2cac8','e82fdf80-59f2-4935-ba8e-1a63339c5802','fcmb@yahoo.com','Kayode Williams','Frame 1.png','summerCamp_cc.jpeg','2022-02-11 10:33:03','127.0.0.1',0),(8,'ed73355f20e405d8c01518889f173e53','e82fdf80-59f2-4935-ba8e-1a63339c5802','fcmb@yahoo.com','Kayode Williams','biglogo.png','biglogo2.png','2022-02-22 15:11:32','154.117.73.223',0),(9,'7c264574817c3a1d4d60145e982c74b2','e82fdf80-59f2-4935-ba8e-1a63339c5802','fcmb@yahoo.com','Kayode Williams','biglogo2.png','biglogo.png','2022-02-22 15:14:48','154.117.73.223',0),(10,'c67380a241d7b151901d8a70c306c24c','e82fdf80-59f2-4935-ba8e-1a63339c5802','fcmb@yahoo.com','Kayode Williams','biglogo.png','biglogo2.png','2022-02-22 15:21:36','154.117.73.223',0);
/*!40000 ALTER TABLE `wa_provider_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wa_providers`
--

DROP TABLE IF EXISTS `wa_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wa_providers` (
  `SEQ_NUM` int NOT NULL AUTO_INCREMENT,
  `PROVIDER_ID` varchar(250) NOT NULL,
  `PROVIDER_NAME` varchar(250) NOT NULL,
  `SECTOR_ID` varchar(250) NOT NULL,
  `SUB_CATEGORY_ID` varchar(250) DEFAULT NULL,
  `DATE_CREATED` datetime NOT NULL,
  `STATUS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`SEQ_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_providers`
--

LOCK TABLES `wa_providers` WRITE;
/*!40000 ALTER TABLE `wa_providers` DISABLE KEYS */;
INSERT INTO `wa_providers` VALUES (6,'95da2fd7-4747-46e2-86d7-b2b7b9cfca5a','UBA Plc','Bank',NULL,'2021-11-22 19:04:19',0),(7,'e82fdf80-59f2-4935-ba8e-1a63339c5802','FCMB Bank','Bank','74ac4ecc-d9ec-4a8e-8c48-79db581beed6','2021-11-23 20:20:00',0),(8,'4fe41c76-1dd4-4f7e-aa79-a35adbc5ff96','Shade James','Pensions',NULL,'2022-08-08 21:40:00',0),(9,'16038694-91f8-4d46-ae4a-aaf61c1c97bf','Stanbic IBTC Pensions','Pensions',NULL,'2022-08-08 21:42:13',0),(10,'448e1664-83e6-4435-948a-c182c8f09551','Stanbic iBTC Asset Management','Investment',NULL,'2022-08-11 15:13:45',0),(11,'237ca7b3-880d-453a-85f9-2c726b7728ca','ARM Investments','Investment',NULL,'2022-08-12 10:08:01',0),(12,'1d1b494a-843e-493d-8942-19f8fe6af44d','ARM Investments','Investment',NULL,'2022-08-12 10:57:57',0),(13,'307110fd-baa0-4f4f-9f37-93a0c5a39bb1','ARM Investments','Investment',NULL,'2022-11-01 14:03:52',0),(14,'e0568430-1831-4403-aac5-459383307431','Sterling Bank','Bank',NULL,'2023-01-16 07:30:11',0);
/*!40000 ALTER TABLE `wa_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wa_sectors`
--

DROP TABLE IF EXISTS `wa_sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wa_sectors` (
  `SEQ_NUM` int NOT NULL AUTO_INCREMENT,
  `SECTOR_ID` varchar(250) NOT NULL,
  `SECTOR_NAME` varchar(250) NOT NULL,
  `DATE_CREATED` varchar(45) NOT NULL,
  `STATUS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`SEQ_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_sectors`
--

LOCK TABLES `wa_sectors` WRITE;
/*!40000 ALTER TABLE `wa_sectors` DISABLE KEYS */;
INSERT INTO `wa_sectors` VALUES (7,'f9591152-e27a-4971-92f5-6fc20a371371','Bank','1983-09-05 13:28:00',0),(8,'ab8a66b9-9e06-499a-8f20-ddf944f7124b','Insurance','1983-09-05 13:28:00',0),(9,'301aeabe-0ca7-4214-9b9a-06b8fce83a92','Pensions','1983-09-05 13:28:00',0),(10,'fba52105-cc22-4f49-b68d-ae8b7cd5b430','Investment','1983-09-05 13:28:00',0),(11,'6cb6d85f-6509-4ec9-997b-8323368e50aa','Health','1983-09-05 13:28:00',0),(12,'493919ef-1958-40a7-953b-d9734d1debbd','Hotel','1983-09-05 13:28:00',0),(13,'ae460def-e09e-49c6-9ed0-35d4fdd8c026','Transport','1983-09-05 13:28:00',0);
/*!40000 ALTER TABLE `wa_sectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wa_sub_categories`
--

DROP TABLE IF EXISTS `wa_sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wa_sub_categories` (
  `SEQ_NUM` int NOT NULL AUTO_INCREMENT,
  `SUB_CATEGORY_ID` varchar(250) NOT NULL,
  `CATEGORY_ID` varchar(250) NOT NULL,
  `SUB_NAME` varchar(250) NOT NULL,
  `SECTOR_ID` varchar(250) DEFAULT NULL,
  `DATE_CREATED` datetime NOT NULL,
  `STATUS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`SEQ_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wa_sub_categories`
--

LOCK TABLES `wa_sub_categories` WRITE;
/*!40000 ALTER TABLE `wa_sub_categories` DISABLE KEYS */;
INSERT INTO `wa_sub_categories` VALUES (13,'c25e3597-2858-4805-871d-ddbde6808452','83f06d77-7b97-4fff-81c3-2128d9becad3','Loans','001','1983-09-05 13:28:00',0),(14,'2e01ca10-97fa-4f05-a45f-2c6f2214ffe4','83f06d77-7b97-4fff-81c3-2128d9becad3','Investment','002','1983-09-05 13:28:00',0),(15,'b6b33f0f-a6bb-4dfb-a050-5a749e9d928d','83f06d77-7b97-4fff-81c3-2128d9becad3','Insurance','003','1983-09-05 13:28:00',0),(16,'08ff020c-2872-4561-9576-41ffc95210a0','83f06d77-7b97-4fff-81c3-2128d9becad3','Health Management','004','1983-09-05 13:28:00',0),(17,'b7d3c12d-f653-4876-b96f-c4b5fb6a634a','83f06d77-7b97-4fff-81c3-2128d9becad3','Payment','005','1983-09-05 13:28:00',0),(18,'0504309d-a654-496d-8852-bf1e819cd935','83f06d77-7b97-4fff-81c3-2128d9becad3','Pensions','006','1983-09-05 13:28:00',0),(19,'74ac4ecc-d9ec-4a8e-8c48-79db581beed6','263500573-c541-449e-ad9c-f676bc1c07a6','Bank','001','1983-09-05 13:28:00',0),(20,'7a00d316-09ae-42ec-bc2a-09731274072f','263500573-c541-449e-ad9c-f676bc1c07a6','Insurance','002','1983-09-05 13:28:00',0),(21,'94a4df1a-2960-4c00-8351-149092e3955b','263500573-c541-449e-ad9c-f676bc1c07a6','Pensions','003','1983-09-05 13:28:00',0),(22,'b48d689c-128d-460f-adc5-a8b692877917','263500573-c541-449e-ad9c-f676bc1c07a6','Investments','004','1983-09-05 13:28:00',0),(23,'13d605a6-d973-4ad4-b0d4-7caee4bcf1f1','263500573-c541-449e-ad9c-f676bc1c07a6','Health','005','1983-09-05 13:28:00',0),(24,'ff0947d6-87a4-4928-a110-4420c8142daa','263500573-c541-449e-ad9c-f676bc1c07a6','Hotel','006','1983-09-05 13:28:00',0);
/*!40000 ALTER TABLE `wa_sub_categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-19 18:43:09
