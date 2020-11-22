-- MySQL dump 10.13  Distrib 8.0.21, for osx10.15 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `account_type_menus`
--

DROP TABLE IF EXISTS `account_type_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_type_menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_type_id` int NOT NULL,
  `sub_menu_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_account_type_menus_account_type_id_account_types_id` (`account_type_id`),
  KEY `FK_account_type_menus_sub_menu_id_sub_menus_id` (`sub_menu_id`),
  CONSTRAINT `FK_account_type_menus_account_type_id_account_types_id` FOREIGN KEY (`account_type_id`) REFERENCES `account_types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_account_type_menus_sub_menu_id_sub_menus_id` FOREIGN KEY (`sub_menu_id`) REFERENCES `sub_menus` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='중간테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_type_menus`
--

LOCK TABLES `account_type_menus` WRITE;
/*!40000 ALTER TABLE `account_type_menus` DISABLE KEYS */;
INSERT INTO `account_type_menus` VALUES (1,1,1),(2,1,5),(3,1,6),(4,1,7),(5,1,8),(6,1,9),(7,1,11),(8,1,12),(9,1,13),(10,1,17),(11,1,18),(12,1,19),(13,1,20),(14,1,22),(15,1,23),(16,1,24),(17,1,25),(18,2,26),(19,2,27),(20,2,2),(21,2,3),(22,2,4),(23,2,6),(24,2,7),(25,2,8),(26,2,9),(27,2,10),(28,2,11),(29,2,12),(30,2,13),(31,2,14),(32,2,15),(33,2,16),(34,2,17),(35,2,18),(36,2,19),(37,2,20),(38,2,21),(39,2,28),(40,2,29),(41,2,30),(42,2,31),(43,2,32),(44,2,33),(45,2,39),(46,2,41),(47,2,42),(48,2,34),(49,2,35),(50,2,36),(51,2,37),(52,2,38);
/*!40000 ALTER TABLE `account_type_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_types`
--

DROP TABLE IF EXISTS `account_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_types`
--

LOCK TABLES `account_types` WRITE;
/*!40000 ALTER TABLE `account_types` DISABLE KEYS */;
INSERT INTO `account_types` VALUES (1,'master'),(2,'seller');
/*!40000 ALTER TABLE `account_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_type_id` int NOT NULL COMMENT '계정타입',
  `account_name` varchar(50) NOT NULL COMMENT '계정아이디',
  `password` varchar(300) NOT NULL COMMENT '비밀번호',
  PRIMARY KEY (`id`),
  KEY `FK_accounts_account_type_id_account_types_id` (`account_type_id`),
  CONSTRAINT `FK_accounts_account_type_id_account_types_id` FOREIGN KEY (`account_type_id`) REFERENCES `account_types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,1,'brandi_master','$2b$12$0HhET6ekbIpKDWcqShBAWejWAq8yy25lHHG3vTdaguZYc.edHWdvO'),(2,1,'intern_master','$2b$12$e24VjtvU2fpqQYKhTkP2uuN2mt6K0fe1tUCxHlswJbr9fRa02TU26'),(3,2,'brandi_seller1','$2b$12$B/XfYqVJaaBVKzmPPTXUbugbWZa1XmidXx8pxt83JUP1byECEkyqm'),(4,2,'brandi_seller2','$2b$12$Hfjlv8BtPYqm1lcAQU5rjORav/zN2rCrneSlUFq0/OE3DjWQFtUVq'),(5,2,'brandi_seller3','$2b$12$dYXbMqt8oFkCeZvz42PJ6uv8rvWoh19rt1hf3GylePm58muuUdYqS'),(6,2,'brandi_seller4','$2b$12$pHOp5dn97SIXjTgYanYfPOvAO.O/6LlWgzj38oy0zFPziwS7MlNxq'),(7,2,'brandi_seller5','$2b$12$6IQLQzyzjoJc7ljy.agizOfeicen48/JPpy8Lu5t6Gm0AbntZ4iXW'),(8,2,'brandi_seller6','$2b$12$qLR1K6F9N3g0/a9SHn7KPuhNuvWh56GLdGR.7r7kn.lcfJLIrLPju'),(9,2,'brandi_seller7','$2b$12$Af4siJ/TvXuD8GbRgx/tE.IXD51dm/cRp.pdBpjIz8DLuHj3nHLUy'),(10,2,'brandi_seller8','$2b$12$m6tGIDCrAE2wRsIuQCA41ObB/TUtyTc9nGVpkKLGzjfu4u2Yl3F/6'),(11,2,'brandi_seller9','$2b$12$YQ.eLugK4wVi5cPqIgrBU.s19AGl2DLDRs1PAqOuE5djbs5aVO2C.'),(12,2,'brandi_seller10','$2b$12$xA1Rq4TuUUZD7g5o8aoMxuT7PiJe.Ly5KF0UighgIK3bNE2p34ame'),(86,2,'jisun','$2b$12$eBBQbUfP/gRnjBGp797TAOy.TGW2jDUYZiPyEDX1pETttKKnT3nIO'),(87,2,'brandi3','$2b$12$sZSE.f3N0IAS.T7Mq0T.luJ8EpSveVXzV0aD61lO9BLJmImRz3sRu'),(88,2,'123124124','$2b$12$yhxOakwoEK0y2INartO80ux5IbDV.MPWVUk3qHvVQjePv2us2ky7C'),(89,2,'please','$2b$12$dcafNty5sJNnfDUezKN/FOFkzMPgJghHBhJap8.u3XUPhUtTQa51i'),(90,2,'please123','$2b$12$3T9cjRpTbWsUIgoU7/K86epd.GGRfkv0ZjAr5k8RCCHe9.FfNchRG'),(92,2,'jisunsss','$2b$12$hr7yUTDesxSair2989rv7ebF3l4lRr8Lv6aeGG9FoERjSDnCEXNMW'),(93,2,'hihihi','$2b$12$Zy.VjHBNMMqaNfnSohY9Murc7PzA0jsxcQVfZqSp9uUxzmPMC9uRG'),(94,2,'hihihi11','$2b$12$2arfkWyfiIo6o/q/JpCpYeF9muDmmmS8CMTE8nFfiefWSBbPfGGXq'),(95,2,'jisuni','$2b$12$QDcLEJTfrXTJHO2OhUysj.Bv5bC9NWvAZpqIG39YT2twVzCuL5TAy');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action_seller_status`
--

DROP TABLE IF EXISTS `action_seller_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action_seller_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seller_status_id` int NOT NULL,
  `action_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_action_seller_status_action_id_actions_id` (`action_id`),
  KEY `FK_action_seller_status_seller_status_id_seller_status_id` (`seller_status_id`),
  CONSTRAINT `FK_action_seller_status_action_id_actions_id` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_action_seller_status_seller_status_id_seller_status_id` FOREIGN KEY (`seller_status_id`) REFERENCES `seller_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='중간테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_seller_status`
--

LOCK TABLES `action_seller_status` WRITE;
/*!40000 ALTER TABLE `action_seller_status` DISABLE KEYS */;
INSERT INTO `action_seller_status` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,5),(5,3,3),(6,3,6),(7,3,7),(8,5,4),(9,5,5);
/*!40000 ALTER TABLE `action_seller_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,'입점승인'),(2,'입점거절'),(3,'휴점신청'),(4,'휴점해제'),(5,'퇴점신청처리'),(6,'퇴점확정처리'),(7,'퇴점철회처리');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Black'),(2,'White'),(3,'Gray'),(4,'Ivory'),(5,'Navy'),(6,'Brown'),(7,'Wine'),(8,'Purple'),(9,'Green'),(10,'Blue'),(11,'Red'),(12,'Pink'),(13,'Khaki'),(14,'Yellow'),(15,'Beige'),(16,'Light Pink'),(17,'Light Blue'),(18,'Light Green'),(19,'Peach'),(20,'Silver'),(21,'Gold'),(22,'Orange'),(23,'유광'),(24,'Violet'),(25,'Middle Blue'),(26,'Mint'),(27,'Deep Blue'),(28,'Lime'),(29,'Mustard'),(30,'Light Purple'),(31,'Indi Pink'),(32,'Camel'),(33,'Charcoal'),(34,'Sky Blue'),(35,'Deep Pink'),(36,'Dark Blue'),(37,'Rose Gold'),(38,'Dark Brown');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_in_charge` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `seller_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_contact_seller_id_sellers_id` (`seller_id`),
  CONSTRAINT `FK_contact_seller_id_sellers_id` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='담당자 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'박성현','567.178.2303x42844','jeremywatson@price.com',3),(2,'이시우','710.112.9167','wadejenny@hotmail.com',4),(3,'김지원','(246)298-3885x8792','robinjackson@hotmail.com',5),(4,'최정식','343.720.3678','amymarquez@hill.com',6),(5,'안순옥','+1-797-238-0688x5023','kjennings@bright.com',7),(6,'장지현','(321)252-8544','robertsmicheal@brooks.com',8),(7,'이지우','9889219556','ryan80@robinson.com',9),(8,'김정호','+1-919-385-3039x805','qcampbell@yahoo.com',10),(9,'이옥자','+1-844-914-4970x0393','valerie14@gmail.com',1),(10,'이미정','001-241-786-7169x4947','jose47@gmail.com',2),(13,'최지선','010-1111-1111','jisun@gmmailc.om',19),(14,NULL,'010-2222-2222',NULL,21),(15,NULL,'010-2222-2222',NULL,22),(25,NULL,'010-2222-2222',NULL,32),(26,NULL,'010-2222-2222',NULL,33),(27,NULL,'010-2222-2222',NULL,34),(28,NULL,'010-2222-2222',NULL,35),(29,NULL,'010-2222-2222',NULL,36),(30,NULL,'010-2222-2222',NULL,37),(31,NULL,'010-2222-2222',NULL,38),(32,NULL,'010-2222-2222',NULL,39),(33,'임은수','010-2222-2222','bunnylim7@gmail.com',40),(34,NULL,'010-1234-1234',NULL,41),(35,NULL,'123-1421-3214',NULL,42),(36,NULL,'123-1421-3214',NULL,43),(37,NULL,'123-1421-3214',NULL,44),(38,NULL,'010-2222-2222',NULL,45),(39,NULL,'111-1111-1111',NULL,46),(40,NULL,'111-1111-1111',NULL,47),(41,NULL,'111-1111-1111',NULL,48);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_status`
--

DROP TABLE IF EXISTS `discount_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='할인여부';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_status`
--

LOCK TABLES `discount_status` WRITE;
/*!40000 ALTER TABLE `discount_status` DISABLE KEYS */;
INSERT INTO `discount_status` VALUES (1,'전체'),(2,'할인'),(3,'미할인');
/*!40000 ALTER TABLE `discount_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `display_status`
--

DROP TABLE IF EXISTS `display_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `display_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='진열여부';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `display_status`
--

LOCK TABLES `display_status` WRITE;
/*!40000 ALTER TABLE `display_status` DISABLE KEYS */;
INSERT INTO `display_status` VALUES (1,'전체'),(2,'진열'),(3,'미진열');
/*!40000 ALTER TABLE `display_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(100) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_images_product_id_products_id` (`product_id`),
  CONSTRAINT `FK_images_product_id_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_categories`
--

DROP TABLE IF EXISTS `main_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_categories`
--

LOCK TABLES `main_categories` WRITE;
/*!40000 ALTER TABLE `main_categories` DISABLE KEYS */;
INSERT INTO `main_categories` VALUES (1,'아우터'),(2,'상의'),(3,'바지'),(4,'원피스'),(5,'스커트'),(6,'신발'),(7,'가방'),(8,'주얼리'),(9,'잡화'),(10,'라이프웨어'),(11,'빅사이즈');
/*!40000 ALTER TABLE `main_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_menus`
--

DROP TABLE IF EXISTS `main_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_menus`
--

LOCK TABLES `main_menus` WRITE;
/*!40000 ALTER TABLE `main_menus` DISABLE KEYS */;
INSERT INTO `main_menus` VALUES (1,'홈'),(2,'통계'),(3,'주문관리'),(4,'취소/환불관리'),(5,'상품관리'),(6,'고객응대관리'),(7,'기획전/쿠폰관리'),(8,'회원관리'),(9,'공지사항'),(10,'정산관리'),(11,'진열관리'),(12,'고객센터');
/*!40000 ALTER TABLE `main_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters`
--

DROP TABLE IF EXISTS `masters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `accounts_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_masters_accounts_id_accounts_id` (`accounts_id`),
  CONSTRAINT `FK_masters_accounts_id_accounts_id` FOREIGN KEY (`accounts_id`) REFERENCES `accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters`
--

LOCK TABLES `masters` WRITE;
/*!40000 ALTER TABLE `masters` DISABLE KEYS */;
INSERT INTO `masters` VALUES (1,'김성진',1),(2,'최지선',2);
/*!40000 ALTER TABLE `masters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'상품준비'),(2,'배송준비'),(3,'배송중'),(4,'배송완료'),(5,'구매확정');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status_history`
--

DROP TABLE IF EXISTS `order_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_status_id` int NOT NULL,
  `order_id` int NOT NULL,
  `updated_at` datetime NOT NULL,
  `account_id` int NOT NULL COMMENT '수정담당자',
  PRIMARY KEY (`id`),
  KEY `FK_order_status_history_order_id_orders_id` (`order_id`),
  KEY `FK_order_status_history_order_status_id_order_status_id` (`order_status_id`),
  KEY `FK_order_status_history_account_id_accounts_id` (`account_id`),
  CONSTRAINT `FK_order_status_history_account_id_accounts_id` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_order_status_history_order_id_orders_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_order_status_history_order_status_id_order_status_id` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=639 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='주문상태 변경 이력';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status_history`
--

LOCK TABLES `order_status_history` WRITE;
/*!40000 ALTER TABLE `order_status_history` DISABLE KEYS */;
INSERT INTO `order_status_history` VALUES (571,1,76,'2020-11-10 23:19:54',3),(572,1,77,'2020-11-10 23:20:00',3),(573,1,78,'2020-11-10 23:20:04',3),(574,1,79,'2020-11-10 23:20:09',3),(575,1,80,'2020-11-10 23:20:12',3),(576,1,81,'2020-11-10 23:20:17',3),(577,1,82,'2020-11-10 23:20:21',3),(587,3,2,'2020-11-11 00:03:33',3),(588,5,2,'2020-11-11 00:03:47',3),(589,3,2,'2020-11-11 00:04:06',3),(591,3,77,'2020-11-11 00:04:31',3),(592,4,77,'2020-11-11 00:06:47',3),(593,1,87,'2020-11-11 11:43:14',86),(594,1,88,'2020-11-11 11:46:59',86),(595,1,89,'2020-11-11 11:51:37',86),(596,1,90,'2020-11-11 11:54:12',86),(597,1,91,'2020-11-11 12:08:03',86),(598,1,92,'2020-11-11 12:08:33',86),(599,1,93,'2020-11-11 12:09:18',86),(600,1,94,'2020-11-11 12:24:28',86),(601,5,1,'2020-11-08 13:15:02',1),(602,5,2,'2020-11-08 13:15:02',1),(603,5,3,'2020-11-08 13:15:02',1),(604,5,4,'2020-11-08 13:15:02',1),(605,5,5,'2020-11-08 13:15:02',1),(606,5,6,'2020-11-07 14:10:30',1),(607,5,7,'2020-11-07 14:10:30',1),(608,5,44,'2020-11-07 14:10:30',1),(609,5,46,'2020-11-07 14:11:44',1),(610,5,48,'2020-11-04 14:11:44',1),(611,5,64,'2020-11-04 14:11:44',1),(612,5,65,'2020-11-04 14:11:44',1),(613,5,66,'2020-11-04 14:11:44',1),(617,3,81,'2020-11-11 14:24:41',3),(618,3,82,'2020-11-11 14:24:41',3),(619,3,87,'2020-11-11 14:24:41',3),(620,3,80,'2020-11-11 14:59:33',86),(621,4,80,'2020-11-11 14:59:45',86),(622,1,95,'2020-11-11 15:31:40',86),(623,1,96,'2020-11-11 15:31:46',86),(624,1,97,'2020-11-11 15:31:51',86),(625,1,98,'2020-11-11 15:32:05',86),(626,1,99,'2020-11-11 16:19:40',86),(627,1,100,'2020-11-11 21:42:34',86),(628,1,101,'2020-11-12 09:03:15',3),(629,1,102,'2020-11-12 09:23:59',3),(630,1,103,'2020-11-12 09:45:16',3),(634,1,104,'2020-11-13 13:17:35',3),(635,3,103,'2020-11-13 13:33:39',3),(636,3,102,'2020-11-13 13:33:39',3),(637,3,101,'2020-11-13 13:33:39',3),(638,1,105,'2020-11-13 14:33:38',3);
/*!40000 ALTER TABLE `order_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `order_number` varchar(45) DEFAULT NULL,
  `detailed_order_number` varchar(45) NOT NULL COMMENT '주문상세번호',
  `quantity` int NOT NULL COMMENT '수량',
  `shipment_id` int NOT NULL COMMENT '주문자',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order_status_id` int NOT NULL COMMENT '주문상태',
  `paid_total` decimal(10,0) NOT NULL COMMENT '총 결제 금액',
  `color_id` int NOT NULL COMMENT '옵션정보',
  `size_id` int NOT NULL COMMENT '옵션정보',
  `sales_price` decimal(10,0) NOT NULL COMMENT '판매가격',
  `discount_price` decimal(10,0) NOT NULL COMMENT '할인가격',
  `discount_status_id` int NOT NULL COMMENT '할인여부',
  PRIMARY KEY (`id`),
  KEY `FK_orders_product_id_products_id` (`product_id`),
  KEY `FK_orders_order_status_id_order_status_id` (`order_status_id`),
  KEY `FK_orders_shipment_id_shipments_id` (`shipment_id`),
  KEY `FK_orders_size_id_sizes_id` (`size_id`),
  KEY `FK_orders_color_id_colors_id` (`color_id`),
  KEY `FK_orders_discount_status_id_discount_status_id` (`discount_status_id`),
  CONSTRAINT `FK_orders_color_id_colors_id` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_orders_discount_status_id_discount_status_id` FOREIGN KEY (`discount_status_id`) REFERENCES `discount_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_orders_order_status_id_order_status_id` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_orders_product_id_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_orders_shipment_id_shipments_id` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_orders_size_id_sizes_id` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2020110100002000','B2020110100002000',1,9,'2020-11-01 09:52:06',5,8900,1,1,8900,8900,3),(2,2,'2020110200002','B2020110200002',1,11,'2020-11-02 01:41:36',5,19900,5,2,19900,19900,3),(3,2,'2020110200003','B2020110200003',1,12,'2020-11-02 01:44:18',5,19900,6,3,19900,19900,3),(4,1,'2020110200004','B2020110200004',2,13,'2020-11-02 01:45:49',5,17800,1,4,8900,8900,3),(5,13,'20201102%00005','B20201102%00005',1,14,'2020-11-02 14:18:01',5,19900,1,5,19900,19900,3),(6,18,'20201102%00006','B20201102%00006',1,15,'2020-11-02 14:18:46',5,12900,6,4,12900,12900,3),(7,18,'20201102%00007','B20201102%00007',1,16,'2020-11-02 14:19:07',5,12900,6,4,12900,12900,3),(44,12,'2020110300008','B2020110300008',1,53,'2020-11-03 14:55:00',5,19900,1,4,19900,19900,3),(45,12,'2020110400045','B2020110400045',1,54,'2020-11-03 15:01:52',5,19900,1,3,19900,19900,3),(46,12,'2020110400046','B2020110400046',1,55,'2020-11-03 15:03:51',5,19900,1,3,19900,19900,3),(48,12,'2020110400047','B2020110400047',1,57,'2020-11-03 15:04:48',5,19900,1,3,19900,19900,3),(64,12,'2020110400049','B2020110400049',1,73,'2020-11-03 15:33:15',5,19900,1,3,19900,19900,3),(65,15,'2020110400065','B2020110400065',1,74,'2020-11-04 01:39:36',5,35800,5,3,17900,17900,3),(66,14,'2020110400066','B2020110400066',1,75,'2020-11-04 06:12:41',5,16900,5,2,16900,16900,3),(67,12,'2020110600067','B2020110600067',1,76,'2020-11-06 03:32:57',5,19900,1,4,19900,19900,3),(68,12,'2020111000068','B2020111000068',1,77,'2020-11-09 15:17:03',5,19900,1,4,19900,19900,3),(69,12,'2020111000069','B2020111000069',2,78,'2020-11-09 15:17:36',5,39800,1,4,19900,19900,3),(70,12,'2020111000070','B2020111000070',1,79,'2020-11-10 01:31:51',5,19900,1,4,19900,19900,3),(71,12,'2020111000071','B2020111000071',1,80,'2020-11-10 11:10:09',5,19900,1,4,19900,19900,3),(72,2,'2020111000072','B2020111000072',1,81,'2020-11-10 11:13:37',5,17900,5,5,17900,17900,3),(73,12,'2020111000073','B2020111000073',1,82,'2020-11-10 12:28:53',5,19900,1,4,19900,19900,3),(74,12,'2020111000074','B2020111000074',1,83,'2020-11-10 12:32:28',3,19900,1,4,19900,19900,3),(75,12,'2020111000075','B2020111000075',1,84,'2020-11-10 12:32:43',5,19900,1,4,19900,19900,3),(76,12,'2020111000076','B2020111000076',1,85,'2020-11-10 14:19:54',1,19900,1,4,19900,19900,3),(77,12,'2020111000077','B2020111000077',1,86,'2020-11-10 14:20:00',4,19900,1,4,19900,19900,3),(78,12,'2020111000078','B2020111000078',1,87,'2020-11-10 14:20:04',1,19900,1,4,19900,19900,3),(79,12,'2020111000079','B2020111000079',1,88,'2020-11-10 14:20:09',1,19900,1,4,19900,19900,3),(80,12,'2020111000080','B2020111000080',1,89,'2020-11-10 14:20:12',4,19900,1,4,19900,19900,3),(81,12,'2020111000081','B2020111000081',1,90,'2020-11-10 14:20:17',3,19900,1,4,19900,19900,3),(82,12,'2020111000082','B2020111000082',1,91,'2020-11-10 14:20:21',3,19900,1,4,19900,19900,3),(87,12,'2020111100083','B2020111100083',1,96,'2020-11-11 02:43:14',3,19900,1,4,19900,19900,3),(88,12,'2020111100088','B2020111100088',1,97,'2020-11-11 02:46:59',1,19900,1,4,17900,19900,3),(89,12,'2020111100089','B2020111100089',1,98,'2020-11-11 02:51:37',1,19900,1,4,17900,19900,3),(90,12,'2020111100090','B2020111100090',1,99,'2020-11-11 02:54:12',1,19900,1,4,17900,19900,3),(91,12,'2020111100091','B2020111100091',1,100,'2020-11-11 03:08:03',1,19900,1,4,17900,19900,3),(92,12,'2020111100092','B2020111100092',1,101,'2020-11-11 03:08:33',1,19900,1,4,17900,19900,3),(93,12,'2020111100093','B2020111100093',1,102,'2020-11-11 03:09:18',1,19900,1,4,17900,19900,3),(94,12,'2020111100094','B2020111100094',1,103,'2020-11-11 03:24:28',1,19900,1,4,19900,19900,3),(95,12,'2020111100095','B2020111100095',1,104,'2020-11-11 06:31:40',1,19900,1,4,19900,19900,3),(96,12,'2020111100096','B2020111100096',1,105,'2020-11-11 06:31:46',1,19900,1,4,19900,19900,3),(97,12,'2020111100097','B2020111100097',1,106,'2020-11-11 06:31:51',1,19900,1,4,19900,19900,3),(98,12,'2020111100098','B2020111100098',1,107,'2020-11-11 06:32:05',1,19900,1,4,19900,19900,3),(99,12,'2020111100099','B2020111100099',1,108,'2020-11-11 07:19:40',1,19900,1,4,19900,19900,3),(100,12,'2020111100100','B2020111100100',1,109,'2020-11-11 12:42:34',1,19900,1,4,19900,19900,3),(101,12,'2020111200101','B2020111200101',1,110,'2020-11-12 00:03:15',3,19900,1,4,19900,19900,3),(102,12,'2020111200102','B2020111200102',1,111,'2020-11-12 00:23:59',3,19900,1,4,19900,19900,3),(103,12,'2020111200103','B2020111200103',1,112,'2020-11-12 00:45:16',3,19900,1,4,19900,19900,3),(104,12,'2020111300104','B2020111300104',1,113,'2020-11-13 04:17:35',1,19900,1,4,19900,19900,3),(105,12,'2020111300105','B2020111300105',1,114,'2020-11-13 05:33:38',1,19900,1,4,19900,19900,3);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_options`
--

DROP TABLE IF EXISTS `product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `size_id` int NOT NULL,
  `color_id` int NOT NULL,
  `stock_quantity` int NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_product_options_product_id_products_id` (`product_id`),
  KEY `FK_product_options_size_id_sizes_id` (`size_id`),
  KEY `FK_product_options_color_id_colors_id` (`color_id`),
  CONSTRAINT `FK_product_options_color_id_colors_id` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_product_options_product_id_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_product_options_size_id_sizes_id` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_options`
--

LOCK TABLES `product_options` WRITE;
/*!40000 ALTER TABLE `product_options` DISABLE KEYS */;
INSERT INTO `product_options` VALUES (2,1,2,1,10,'2020-10-30 06:40:06'),(3,1,3,1,10,'2020-10-30 06:40:06'),(4,1,4,1,10,'2020-10-30 06:40:06'),(5,1,5,1,10,'2020-10-30 06:40:06'),(6,1,6,1,10,'2020-10-30 06:40:06'),(7,2,1,5,10,'2020-10-30 06:40:06'),(8,2,2,5,10,'2020-10-30 06:40:06'),(9,2,3,5,10,'2020-10-30 06:40:06'),(10,2,4,5,10,'2020-10-30 06:40:06'),(11,2,5,5,9,'2020-10-30 06:40:06'),(12,2,6,5,5,'2020-10-30 06:40:06'),(13,2,2,6,5,'2020-10-30 06:40:06'),(14,2,3,6,5,'2020-10-30 06:40:06'),(15,2,4,6,5,'2020-10-30 06:40:06'),(16,11,1,1,10,'2020-11-02 14:16:12'),(17,11,2,1,10,'2020-11-02 14:16:12'),(18,12,3,1,6,'2020-11-02 14:16:12'),(19,12,4,1,74,'2020-11-02 14:16:12'),(20,13,5,1,10,'2020-11-02 14:16:12'),(21,13,6,1,10,'2020-11-02 14:16:12'),(22,14,1,5,10,'2020-11-02 14:16:12'),(23,14,2,5,9,'2020-11-02 14:16:12'),(24,15,3,5,9,'2020-11-02 14:16:12'),(25,15,4,5,10,'2020-11-02 14:16:12'),(26,16,5,5,10,'2020-11-02 14:16:12'),(27,16,6,5,5,'2020-11-02 14:16:12'),(28,17,2,6,5,'2020-11-02 14:16:12'),(29,17,3,6,5,'2020-11-02 14:16:12'),(30,18,4,6,5,'2020-11-02 14:16:12'),(31,18,5,6,5,'2020-11-02 14:16:12');
/*!40000 ALTER TABLE `product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_suppliers`
--

DROP TABLE IF EXISTS `product_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(45) NOT NULL COMMENT '제조사',
  `produce_date` varchar(45) NOT NULL COMMENT '제조일자',
  `country_of_origin` varchar(45) NOT NULL COMMENT '원산지',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_suppliers`
--

LOCK TABLES `product_suppliers` WRITE;
/*!40000 ALTER TABLE `product_suppliers` DISABLE KEYS */;
INSERT INTO `product_suppliers` VALUES (1,'Spears PLC','1978-05-17','Cuba'),(2,'Mercado-Webster','2003-10-18','Libyan Arab Jamahiriya'),(3,'Whitehead Inc','1996-07-11','Dominican Republic'),(4,'Harvey, Kemp and Haynes','2001-02-10','Burundi'),(5,'Mcneil Group','1992-06-15','Palestinian Territory'),(6,'Morgan, Esparza and Chapman','1997-01-07','Ethiopia'),(7,'Richardson Inc','1982-05-31','Solomon Islands'),(8,'Bryan Inc','1984-03-03','Suriname'),(9,'Fox-Rivera','1973-03-07','New Zealand'),(10,'King-Hall','2009-07-20','Philippines');
/*!40000 ALTER TABLE `product_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_updates`
--

DROP TABLE IF EXISTS `product_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_updates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '상품명',
  `thumbnail` varchar(100) NOT NULL COMMENT '대표이미지',
  `code` varchar(45) NOT NULL COMMENT '상품코드',
  `sales_price` decimal(10,0) NOT NULL COMMENT '판매가',
  `discount_rate` decimal(4,0) DEFAULT NULL COMMENT '할인율(default 0)',
  `sales_status_id` int NOT NULL COMMENT '판매여부',
  `display_status_id` int NOT NULL COMMENT '진열여부',
  `discount_status_id` int NOT NULL COMMENT '할인여부',
  `seller_id` int NOT NULL COMMENT '셀러',
  `sub_category_id` int NOT NULL COMMENT '서브카테고리',
  `min_sales_quantity` int NOT NULL DEFAULT '1' COMMENT '최소판매수량',
  `max_sales_quantity` int NOT NULL DEFAULT '20' COMMENT '최대판매수량',
  `register_status` tinyint NOT NULL COMMENT '등록상태',
  `product_supplier_id` int NOT NULL COMMENT '상품 정보 고시',
  `detailed_description` text NOT NULL COMMENT '상세 상품 정보',
  `discount_period_start` datetime NOT NULL COMMENT '할인시작날짜',
  `discount_period_end` datetime NOT NULL COMMENT '할인종료날짜',
  `is_delete` tinyint NOT NULL COMMENT 'soft delete',
  `product_id` int NOT NULL,
  `account_id` int NOT NULL COMMENT '수정자',
  `created_at` datetime NOT NULL COMMENT '생성일',
  PRIMARY KEY (`id`),
  KEY `FK_product_updates_product_id_products_id` (`product_id`),
  KEY `FK_product_updates_seller_id_sellers_id` (`seller_id`),
  KEY `FK_product_updates_account_id_masters_id` (`account_id`),
  KEY `FK_product_updates_sales_status_id_sales_status_id` (`sales_status_id`),
  KEY `FK_product_updates_display_status_id_display_status_id` (`display_status_id`),
  KEY `FK_product_updates_discount_status_id_discount_status_id` (`discount_status_id`),
  KEY `FK_product_updates_sub_category_id_sub_categories_id` (`sub_category_id`),
  KEY `FK_product_updates_product_supplier_id_product_supplier_id` (`product_supplier_id`),
  CONSTRAINT `FK_product_updates_account_id_masters_id` FOREIGN KEY (`account_id`) REFERENCES `masters` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_product_updates_discount_status_id_discount_status_id` FOREIGN KEY (`discount_status_id`) REFERENCES `discount_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_product_updates_display_status_id_display_status_id` FOREIGN KEY (`display_status_id`) REFERENCES `display_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_product_updates_product_id_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_product_updates_product_supplier_id_product_supplier_id` FOREIGN KEY (`product_supplier_id`) REFERENCES `product_supplier` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_product_updates_sales_status_id_sales_status_id` FOREIGN KEY (`sales_status_id`) REFERENCES `sales_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_product_updates_seller_id_sellers_id` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_product_updates_sub_category_id_sub_categories_id` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_updates`
--

LOCK TABLES `product_updates` WRITE;
/*!40000 ALTER TABLE `product_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '상품명',
  `thumbnail` varchar(100) NOT NULL COMMENT '대표이미지',
  `code` varchar(50) NOT NULL COMMENT '상품코드',
  `sales_price` decimal(10,0) NOT NULL COMMENT '판매가',
  `discount_rate` decimal(4,0) DEFAULT NULL COMMENT '할인율(default 0)',
  `sales_status_id` int NOT NULL DEFAULT '2' COMMENT '판매여부',
  `display_status_id` int NOT NULL DEFAULT '2' COMMENT '진열여부',
  `discount_status_id` int NOT NULL COMMENT '할인여부',
  `seller_id` int NOT NULL COMMENT '셀러',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sub_category_id` int NOT NULL COMMENT '서브카테고리',
  `min_sales_quantity` int NOT NULL DEFAULT '1' COMMENT '최소판매수량',
  `max_sales_quantity` int NOT NULL DEFAULT '20' COMMENT '최대판매수량',
  `register_status` tinyint NOT NULL COMMENT '등록상태',
  `product_supplier_id` int DEFAULT NULL COMMENT '상품 정보 고시',
  `detailed_description` text COMMENT '상세 상품 정보',
  `discount_period_start` datetime DEFAULT NULL COMMENT '할인시작날짜',
  `discount_period_end` datetime DEFAULT NULL COMMENT '할인종료날짜',
  `is_delete` tinyint NOT NULL DEFAULT '0' COMMENT 'soft delete',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_products_sub_category_id_sub_categories_id` (`sub_category_id`),
  KEY `FK_products_product_supplier_id_product_supplier_id` (`product_supplier_id`),
  KEY `FK_products_seller_id_sellers_id` (`seller_id`),
  KEY `FK_products_sales_status_id_sales_status_id` (`sales_status_id`),
  KEY `FK_products_display_status_id_display_status_id` (`display_status_id`),
  KEY `FK_products_discount_status_id_discount_status_id` (`discount_status_id`),
  CONSTRAINT `FK_products_discount_status_id_discount_status_id` FOREIGN KEY (`discount_status_id`) REFERENCES `discount_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_products_display_status_id_display_status_id` FOREIGN KEY (`display_status_id`) REFERENCES `display_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_products_product_supplier_id_product_supplier_id` FOREIGN KEY (`product_supplier_id`) REFERENCES `product_supplier` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_products_sales_status_id_sales_status_id` FOREIGN KEY (`sales_status_id`) REFERENCES `sales_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_products_seller_id_sellers_id` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_products_sub_category_id_sub_categories_id` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'아일리 반 벨트 데님 청바지','https://image.brandi.me/cproduct/2020/10/22/17892972_1603361200_image1_S.jpg','B000000000009044746',8900,0,2,2,3,7,'2020-10-30 06:18:21',13,1,20,1,NULL,NULL,NULL,NULL,0,'2020-10-30 06:18:21'),(2,'치키타 크롭 아가일 니트 가디건','https://image.brandi.me/cproduct/2020/10/22/17892970_1603361026_image1_S.jpg','B000000000009044744',19900,0,3,3,3,1,'2020-10-30 06:18:21',2,1,20,1,NULL,NULL,NULL,NULL,0,'2020-10-30 06:18:21'),(3,'시카루스 레글런 더블 자켓','https://image.brandi.me/cproduct/2020/10/22/17892968_1603361024_image1_S.jpg','B000000000009044742',19900,0,2,2,3,3,'2020-10-30 06:18:21',1,1,20,1,NULL,NULL,NULL,NULL,0,'2020-10-30 06:18:21'),(4,'킬투 데미지 데님 청바지','https://image.brandi.me/cproduct/2020/10/22/17892965_1603361022_image1_S.jpg','B000000000009044739',16900,0,2,2,3,5,'2020-10-30 06:18:21',13,1,20,1,NULL,NULL,NULL,NULL,0,'2020-10-30 06:18:21'),(5,'자이크 패턴 와이드 데님 팬츠','https://image.brandi.me/cproduct/2020/10/22/17892962_1603361020_image1_S.jpg','B000000000009044736',17900,0,2,2,3,8,'2020-10-30 06:18:21',13,1,20,1,NULL,NULL,NULL,NULL,0,'2020-10-30 06:18:21'),(6,'샤로트 벨트 크롭 자켓','https://image.brandi.me/cproduct/2020/10/22/17892959_1603360964_image1_S.jpg','B000000000009044733',19900,0,2,2,3,1,'2020-10-30 06:18:21',1,1,20,1,NULL,NULL,NULL,NULL,0,'2020-10-30 06:18:21'),(7,'바르나 체크 패턴 세미 벌룬핏 셔츠 남방','https://image.brandi.me/cproduct/2020/10/22/17892957_1603360962_image1_S.jpg','B000000000009044731',12900,0,2,2,3,4,'2020-10-30 06:18:21',9,1,20,1,NULL,NULL,NULL,NULL,0,'2020-10-30 06:18:21'),(8,'하이코 사각 배색 오버로크 스티치 크롭 니트','https://image.brandi.me/cproduct/2020/10/22/17892952_1603360960_image1_S.jpg','B000000000009044726',12900,0,2,2,3,6,'2020-10-30 06:18:21',10,1,20,1,NULL,NULL,NULL,NULL,0,'2020-10-30 06:18:21'),(9,'에노 체크 홈웨어 파자마 밴딩 팬츠','https://image.brandi.me/cproduct/2020/10/22/17892950_1603360660_image1_S.jpg','B000000000009044724',4900,0,2,2,3,6,'2020-10-30 06:18:21',53,1,20,1,NULL,NULL,NULL,NULL,0,'2020-10-30 06:18:21'),(10,'롬비아 레이스 프릴 홈웨어 파자마 잠옷세트','https://image.brandi.me/cproduct/2020/10/22/17892945_1603360604_image1_S.jpg','B000000000009044719',19900,0,2,2,3,6,'2020-10-30 06:18:21',53,1,20,1,NULL,NULL,NULL,NULL,0,'2020-10-30 06:18:21'),(11,'상품1','https://image.brandi.me/cproduct/2020/10/22/17892972_1603361200_image1_S.jpg','B0000000000011111',8900,0,2,2,3,4,'2020-11-02 14:14:00',13,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-02 14:14:00'),(12,'상품2','https://image.brandi.me/cproduct/2020/10/22/17892970_1603361026_image1_S.jpg','B0000000000022222',19900,0,2,2,3,1,'2020-11-02 14:14:00',2,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-02 14:14:00'),(13,'상품3','https://image.brandi.me/cproduct/2020/10/22/17892968_1603361024_image1_S.jpg','B0000000000033333',19900,0,2,2,3,5,'2020-11-02 14:14:00',1,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-02 14:14:00'),(14,'상품4','https://image.brandi.me/cproduct/2020/10/22/17892965_1603361022_image1_S.jpg','B0000000000044444',16900,0,2,2,3,5,'2020-11-02 14:14:00',13,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-02 14:14:00'),(15,'상품5','https://image.brandi.me/cproduct/2020/10/22/17892962_1603361020_image1_S.jpg','B0000000000055555',17900,0,2,2,3,7,'2020-11-02 14:14:00',13,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-02 14:14:00'),(16,'상품6','https://image.brandi.me/cproduct/2020/10/22/17892959_1603360964_image1_S.jpg','B0000000000066666',19900,0,2,2,3,7,'2020-11-02 14:14:00',1,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-02 14:14:00'),(17,'상품7','https://image.brandi.me/cproduct/2020/10/22/17892957_1603360962_image1_S.jpg','B0000000000077777',12900,0,2,2,3,8,'2020-11-02 14:14:00',9,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-02 14:14:00'),(18,'상품8','https://image.brandi.me/cproduct/2020/10/22/17892952_1603360960_image1_S.jpg','B0000000000088888',12900,0,2,2,3,8,'2020-11-02 14:14:00',10,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-02 14:14:00'),(19,'상품9','https://image.brandi.me/cproduct/2020/10/22/17892950_1603360660_image1_S.jpg','B0000000000099999',4900,0,2,2,3,9,'2020-11-02 14:14:00',53,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-02 14:14:00'),(20,'상품10','https://image.brandi.me/cproduct/2020/10/22/17892945_1603360604_image1_S.jpg','B000000000001010',19900,0,2,2,3,10,'2020-11-02 14:14:00',53,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-02 14:14:00'),(21,'상품12','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044012',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',54,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(22,'상품13','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044013',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',53,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(23,'상품14','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044014',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',16,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(24,'상품15','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044015',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',42,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(25,'상품16','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044016',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',43,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(26,'상품17','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044017',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',9,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(27,'상품18','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044018',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',2,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(28,'상품19','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044019',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',47,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(29,'상품20','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044020',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',55,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(30,'상품21','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044021',10000,NULL,2,2,3,6,'2020-11-10 01:07:07',52,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(31,'상품22','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044022',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',37,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(32,'상품23','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044023',10000,NULL,2,2,3,6,'2020-11-10 01:07:07',49,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(33,'상품24','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044024',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',18,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(34,'상품25','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044025',10000,NULL,2,2,3,6,'2020-11-10 01:07:07',5,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(35,'상품26','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044026',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',50,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(36,'상품27','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044027',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',39,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(37,'상품28','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044028',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',51,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(38,'상품29','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044029',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',46,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(39,'상품30','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044030',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',52,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(40,'상품31','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044031',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',23,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(41,'상품32','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044032',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',47,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(42,'상품33','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044033',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',4,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(43,'상품34','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044034',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',43,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(44,'상품35','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044035',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',18,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(45,'상품36','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044036',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',56,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(46,'상품37','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044037',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',8,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(47,'상품38','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044038',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',36,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(48,'상품39','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044039',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',54,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(49,'상품40','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044040',10000,NULL,2,2,3,6,'2020-11-10 01:07:07',27,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(50,'상품41','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044041',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',19,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(51,'상품42','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044042',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',12,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(52,'상품43','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044043',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',5,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(53,'상품44','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044044',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',20,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(54,'상품45','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044045',10000,NULL,2,2,3,6,'2020-11-10 01:07:07',13,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(55,'상품46','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044046',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',45,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(56,'상품47','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044047',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',24,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(57,'상품48','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044048',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',50,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(58,'상품49','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044049',10000,NULL,2,2,3,6,'2020-11-10 01:07:07',12,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(59,'상품50','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044050',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',2,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(60,'상품51','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044051',10000,NULL,2,2,3,6,'2020-11-10 01:07:07',55,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(61,'상품52','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044052',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',20,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(62,'상품53','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044053',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',27,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(63,'상품54','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044054',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',33,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(64,'상품55','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044055',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',40,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(65,'상품56','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044056',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',54,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(66,'상품57','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044057',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',9,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(67,'상품58','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044058',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',46,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(68,'상품59','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044059',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',29,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(69,'상품60','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044060',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',4,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(70,'상품61','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044061',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',10,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(71,'상품62','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044062',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',27,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(72,'상품63','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044063',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',33,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(73,'상품64','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044064',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',50,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(74,'상품65','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044065',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',37,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(75,'상품66','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044066',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',54,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(76,'상품67','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044067',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',2,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(77,'상품68','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044068',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',34,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(78,'상품69','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044069',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',32,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(79,'상품70','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044070',10000,NULL,2,2,3,6,'2020-11-10 01:07:07',13,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(80,'상품71','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044071',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',51,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(81,'상품72','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044072',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',51,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(82,'상품73','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044073',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',61,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(83,'상품74','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044074',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',54,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(84,'상품75','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044075',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',41,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(85,'상품76','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044076',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',23,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(86,'상품77','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044077',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',49,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(87,'상품78','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044078',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',34,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(88,'상품79','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044079',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',21,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(89,'상품80','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044080',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',39,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(90,'상품81','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044081',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',43,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(91,'상품82','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044082',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',32,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(92,'상품83','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044083',10000,NULL,2,2,3,6,'2020-11-10 01:07:07',40,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(93,'상품84','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044084',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',31,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(94,'상품85','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044085',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',54,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(95,'상품86','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044086',10000,NULL,2,2,3,6,'2020-11-10 01:07:07',14,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(96,'상품87','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044087',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',24,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(97,'상품88','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044088',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',27,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(98,'상품89','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044089',10000,NULL,2,2,3,6,'2020-11-10 01:07:07',18,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(99,'상품90','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044090',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',46,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(100,'상품91','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044091',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',5,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(101,'상품92','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044092',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',41,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(102,'상품93','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044093',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',54,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(103,'상품94','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044094',10000,NULL,2,2,3,6,'2020-11-10 01:07:07',61,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(104,'상품95','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044095',40000,NULL,2,2,3,6,'2020-11-10 01:07:07',1,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(105,'상품96','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044096',30000,NULL,2,2,3,6,'2020-11-10 01:07:07',3,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(106,'상품97','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044097',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',10,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(107,'상품98','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044098',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',60,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(108,'상품99','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044099',20000,NULL,2,2,3,6,'2020-11-10 01:07:07',39,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07'),(109,'상품100','https://i.pinimg.com/originals/0c/1c/a1/0c1ca1955e2b0c5469ba17da2b1b9b96.jpg','B000000000009044100',50000,NULL,2,2,3,6,'2020-11-10 01:07:07',36,1,20,1,NULL,NULL,NULL,NULL,0,'2020-11-10 01:07:07');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_status`
--

DROP TABLE IF EXISTS `sales_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='판매여부';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_status`
--

LOCK TABLES `sales_status` WRITE;
/*!40000 ALTER TABLE `sales_status` DISABLE KEYS */;
INSERT INTO `sales_status` VALUES (1,'전체'),(2,'판매'),(3,'미판매');
/*!40000 ALTER TABLE `sales_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_attributes`
--

DROP TABLE IF EXISTS `seller_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_attributes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='쇼핑몰, 마켓, 로드샵 etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_attributes`
--

LOCK TABLES `seller_attributes` WRITE;
/*!40000 ALTER TABLE `seller_attributes` DISABLE KEYS */;
INSERT INTO `seller_attributes` VALUES (1,'전체'),(2,'쇼핑몰'),(3,'마켓'),(4,'로드샵'),(5,'디자이너브랜드'),(6,'제너럴브랜드'),(7,'내셔널브랜드'),(8,'뷰티');
/*!40000 ALTER TABLE `seller_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_status`
--

DROP TABLE IF EXISTS `seller_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='셀러상태';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_status`
--

LOCK TABLES `seller_status` WRITE;
/*!40000 ALTER TABLE `seller_status` DISABLE KEYS */;
INSERT INTO `seller_status` VALUES (1,'입점대기'),(2,'입점'),(3,'퇴점대기'),(4,'퇴점'),(5,'휴점');
/*!40000 ALTER TABLE `seller_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_status_history`
--

DROP TABLE IF EXISTS `seller_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_status_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seller_status_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `updated_at` datetime NOT NULL,
  `account_id` int NOT NULL COMMENT '수정 담당자',
  PRIMARY KEY (`id`),
  KEY `FK_seller_status_history_seller_status_id_seller_status_id` (`seller_status_id`),
  KEY `FK_seller_status_history_seller_id_sellers_id` (`seller_id`),
  KEY `FK_seller_status_history_account_id_accounts_id` (`account_id`),
  CONSTRAINT `FK_seller_status_history_account_id_accounts_id` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_seller_status_history_seller_id_sellers_id` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_seller_status_history_seller_status_id_seller_status_id` FOREIGN KEY (`seller_status_id`) REFERENCES `seller_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='셀러 상태 변경 이력';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_status_history`
--

LOCK TABLES `seller_status_history` WRITE;
/*!40000 ALTER TABLE `seller_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_image` varchar(300) DEFAULT NULL,
  `name_korean` varchar(50) NOT NULL COMMENT '셀러 한글명',
  `name_english` varchar(50) NOT NULL COMMENT '셀러 영문명',
  `seller_attribute_id` int NOT NULL COMMENT '셀러 속성',
  `cs_contact` varchar(50) NOT NULL COMMENT '고객센터 번호',
  `account_id` int NOT NULL COMMENT '계정 타입',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `seller_status_id` int NOT NULL DEFAULT '1' COMMENT '셀러 상태(default = 입점대기)',
  `is_delete` tinyint NOT NULL DEFAULT '0' COMMENT 'default = False',
  `background_image_url` varchar(300) DEFAULT NULL,
  `short_description` varchar(100) DEFAULT NULL COMMENT '한줄소개',
  `detailed_description` varchar(300) DEFAULT NULL COMMENT '상세소개',
  `postal_code` varchar(50) DEFAULT NULL COMMENT '택배주소',
  `address_1` varchar(50) DEFAULT NULL COMMENT '도로명주소',
  `address_2` varchar(50) DEFAULT NULL COMMENT '상세주소',
  `delivery_description` varchar(300) DEFAULT NULL COMMENT '배송정보',
  `refund_description` varchar(300) DEFAULT NULL COMMENT '교환/환불정보',
  `opening_time` datetime DEFAULT NULL COMMENT '고객 센터 오픈시간',
  `closing_time` datetime DEFAULT NULL COMMENT '고객센터 종료시간',
  PRIMARY KEY (`id`),
  KEY `FK_sellers_seller_attribute_id_seller_attributes_id` (`seller_attribute_id`),
  KEY `FK_sellers_seller_status_id_seller_status_id` (`seller_status_id`),
  KEY `FK_sellers_account_id_accounts_id` (`account_id`),
  CONSTRAINT `FK_sellers_account_id_accounts_id` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_sellers_seller_attribute_id_seller_attributes_id` FOREIGN KEY (`seller_attribute_id`) REFERENCES `seller_attributes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_sellers_seller_status_id_seller_status_id` FOREIGN KEY (`seller_status_id`) REFERENCES `seller_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='셀러 기본정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (1,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','상준샵','sanjunshop',3,'204.455.7537x03270',3,'2020-10-24 05:55:49','2020-10-24 05:55:49',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','은수샵','eunsushop',1,'(646)455-2657',4,'2020-10-24 05:55:49','2020-10-24 05:55:49',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','규덕샵','gyushop',4,'3557397368',5,'2020-10-24 05:55:49','2020-10-24 05:55:49',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','성진샵','sungjinshop',8,'(178)446-2912',6,'2020-10-24 05:55:49','2020-10-24 05:55:49',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','지선샵','jisunshop',5,'938.654.8641x4630',7,'2020-10-24 05:55:49','2020-10-24 05:55:49',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','브랜디샵','brandishop',2,'783-740-1850x34367',8,'2020-10-24 05:55:49','2020-10-24 05:55:49',3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','인턴샵','internshop',7,'001-012-591-1098x978',9,'2020-10-24 05:55:49','2020-10-24 05:55:49',3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','위코드샵','wecodeshop',6,'761.735.3026',10,'2020-10-24 05:55:49','2020-10-24 05:55:49',5,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','브랜디3샵','brandi3shop',1,'+1-792-508-6328x0372',11,'2020-10-24 05:55:49','2020-10-24 05:55:49',5,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','샵샵','shopshop',2,'+1-520-570-9443',12,'2020-10-24 05:55:49','2020-10-24 05:55:49',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'https://eunsulim.s3.ap-northeast-2.amazonaws.com/seller_profile/86','지선','jisun',6,'02-333-3333',86,'2020-11-01 07:13:37','2020-11-01 07:13:37',1,0,'https://eunsulim.s3.ap-northeast-2.amazonaws.com/seller_back/86','안녕하세요.','gg','06110','서울 강남구 학동로 지하 102 (논현동, 논현역)','507동 1001호 (도농동 부영그린타운)','gg','ㄹㄹㄹㄹ',NULL,NULL),(41,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','브랜디3팀','brandi3team',1,'1234',87,'2020-11-02 07:57:37','2020-11-02 07:57:37',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','12321412','aaaaaaa',1,'123124',88,'2020-11-02 08:08:41','2020-11-02 08:08:41',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','12321412','aaaaaaa',1,'123124',89,'2020-11-02 08:09:38','2020-11-02 08:09:38',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','12321412','aaaaaaa',1,'123124',90,'2020-11-02 08:10:35','2020-11-02 08:10:35',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'https://media.vlpt.us/images/limes/profile/a321d034-034f-4ab4-83ec-7d5b57a64869/les1.jpeg?w=240\n','지선쓰','jisun',3,'02-333-3333',92,'2020-11-10 04:15:37','2020-11-10 04:15:37',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,NULL,'그만','stop',1,'1',93,'2020-11-11 11:30:47','2020-11-11 11:30:47',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,NULL,'아','s',1,'1',94,'2020-11-11 11:36:32','2020-11-11 11:36:32',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,NULL,'야야야','www',1,'1',95,'2020-11-11 11:44:08','2020-11-11 11:44:08',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(45) NOT NULL COMMENT '주문자',
  `phone_number` varchar(45) NOT NULL,
  `postal_code` varchar(20) NOT NULL COMMENT '우편번호',
  `address_1` varchar(50) NOT NULL COMMENT '도로명주소',
  `address_2` varchar(50) NOT NULL COMMENT '상세주소',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES (3,'최지선','010-4907-2540','00000','성수동','뚝섬역'),(9,'최지선','010-4907-2540','00000','성수동','뚝섬역'),(11,'최지선','010-4907-2540','00000','성수동','뚝섬역'),(12,'최지선','010-4907-2540','00000','성수동','뚝섬역'),(13,'최지선','010-4907-2540','00000','성수동','뚝섬역'),(14,'최지선','010-4907-2540','00000','성수동','뚝섬역'),(15,'최지선','010-4907-2540','00000','성수동','뚝섬역'),(16,'김성진','010-1111-1111','00000','성수동','뚝섬역'),(53,'최지선','010-0000-0000','00000','강남구','브랜디'),(54,'김성진','010-0000-0000','00000','강남구','브랜디'),(55,'김성진','010-0000-0000','00000','강남구','브랜디'),(57,'김성진','010-0000-0000','00000','강남구','브랜디'),(73,'김성진','010-0000-0000','00000','강남구','브랜디'),(74,'김성진','010-0000-0000','00000','강남구','브랜디'),(75,'최지선','010-0000-0000','00000','강남구','브랜디'),(76,'배규덕','010-0000-0000','00000','강남구','브랜디'),(77,'배규덕','010-0000-0000','00000','강남구','브랜디'),(78,'임은수','010-0000-0000','00000','강남구','브랜디'),(79,'김상준','010-0000-0000','00000','강남구','브랜디'),(80,'임은수','010-0000-0000','00000','강남구','브랜디'),(81,'김상준','010-0000-0000','00000','강남구','브랜디'),(82,'갓수정','010-0000-0000','00000','강남구','브랜디'),(83,'갓수정2','010-0000-0000','00000','강남구','브랜디'),(84,'갓수정3','010-0000-0000','00000','강남구','브랜디'),(85,'김수정','010-0000-0000','00000','강남구','브랜디'),(86,'최지선','010-0000-0000','00000','강남구','브랜디'),(87,'김성진','010-0000-0000','00000','강남구','브랜디'),(88,'임은수','010-0000-0000','00000','강남구','브랜디'),(89,'배규덕','010-0000-0000','00000','강남구','브랜디'),(90,'김상준','010-0000-0000','00000','강남구','브랜디'),(91,'갓수정','010-0000-0000','00000','강남구','브랜디'),(96,'임은수','010-0000-0000','00000','강남구','브랜디'),(97,'임은수','010-0000-0000','00000','강남구','브랜디'),(98,'임은수','010-0000-0000','00000','강남구','브랜디'),(99,'임은수','010-0000-0000','00000','강남구','브랜디'),(100,'임은수','010-0000-0000','00000','강남구','브랜디'),(101,'임은수','010-0000-0000','00000','강남구','브랜디'),(102,'임은수','010-0000-0000','00000','강남구','브랜디'),(103,'임은수','010-0000-0000','00000','강남구','브랜디'),(104,'김상준','010-0000-0000','00000','강남구','브랜디'),(105,'배규덕','010-0000-0000','00000','강남구','브랜디'),(106,'최지선','010-0000-0000','00000','강남구','브랜디'),(107,'갓수정','010-0000-0000','00000','강남구','브랜디'),(108,'갓수정','010-0000-0000','00000','강남구','브랜디'),(109,'갓수정','010-0000-0000','00000','강남구','브랜디'),(110,'갓수정','010-0000-0000','00000','강남구','브랜디'),(111,'갓수정','010-0000-0000','00000','강남구','브랜디'),(112,'갓수정','010-0000-0000','00000','강남구','브랜디'),(113,'임은수','010-0000-0000','00000','강남구','브랜디'),(114,'최지선','010-0000-0000','00000','강남구','브랜디');
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'Free'),(2,'XL'),(3,'L'),(4,'M'),(5,'S'),(6,'XS'),(7,'25'),(8,'26'),(9,'27'),(10,'28'),(11,'29'),(12,'30'),(13,'32'),(14,'34'),(15,'35'),(16,'36'),(17,'37'),(18,'38'),(19,'39'),(20,'40'),(21,'85'),(22,'90'),(23,'95'),(24,'100'),(25,'105'),(26,'XXL'),(27,'XXXL'),(28,'XXXXL'),(29,'M(44-55)'),(30,'L(55-66)'),(31,'L(55-마른66)'),(32,'210'),(33,'215'),(34,'220'),(35,'225'),(36,'230'),(37,'235'),(38,'240'),(39,'245'),(40,'250'),(41,'255'),(42,'260'),(43,'265'),(44,'270'),(45,'275'),(46,'280'),(47,'285'),(48,'290'),(49,'1호'),(50,'2호'),(51,'3호'),(52,'4호'),(53,'5호'),(54,'6호'),(55,'7호'),(56,'8호'),(57,'9호'),(58,'10호'),(59,'11호'),(60,'12호'),(61,'13호'),(62,'14호'),(63,'15호'),(64,'16호'),(65,'17호'),(66,'18호'),(67,'19호'),(68,'70a'),(69,'70b'),(70,'70c'),(71,'70d'),(72,'70e'),(73,'70f'),(74,'70g'),(75,'75a'),(76,'75b'),(77,'75c'),(78,'75d'),(79,'75e'),(80,'75f'),(81,'75g'),(82,'80a'),(83,'80b'),(84,'80c'),(85,'80d'),(86,'80e'),(87,'80f'),(88,'80g'),(89,'85a'),(90,'85b'),(91,'85c'),(92,'85d'),(93,'85e'),(94,'85f'),(95,'85g'),(96,'90a'),(97,'90b'),(98,'90c'),(99,'90d'),(100,'90e'),(101,'90f'),(102,'90g'),(103,'95a'),(104,'95b'),(105,'95c'),(106,'95d'),(107,'95e'),(108,'95f'),(109,'95g'),(110,'100a'),(111,'100b'),(112,'100c'),(113,'100d'),(114,'100e'),(115,'100f'),(116,'100g'),(117,'105a'),(118,'105b'),(119,'105c'),(120,'105d'),(121,'105e'),(122,'105f'),(123,'105g'),(124,'아이폰8'),(125,'아이폰8플러스'),(126,'아이폰X'),(127,'갤럭시S9'),(128,'갤럭시S9플러스');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `main_category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sub_categories_main_category_id_main_categories_id` (`main_category_id`),
  CONSTRAINT `FK_sub_categories_main_category_id_main_categories_id` FOREIGN KEY (`main_category_id`) REFERENCES `main_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,'자켓',1),(2,'가디건',1),(3,'코트',1),(4,'점퍼',1),(5,'패딩',1),(6,'무스탕/퍼',1),(7,'기타',1),(8,'티셔츠',2),(9,'셔츠/블라우스',2),(10,'니트',2),(11,'후드',2),(12,'맨투맨',2),(13,'청바지',3),(14,'슬랙스',3),(15,'면바지',3),(16,'반바지',3),(17,'트레이닝/조거',3),(18,'레깅스',3),(19,'미니',4),(20,'미디',4),(21,'롱',4),(22,'투피스',4),(23,'점프수트',4),(24,'미니',5),(25,'미디',5),(26,'롱',5),(27,'플랫/로퍼',6),(28,'샌들/슬리퍼',6),(29,'힐',6),(30,'스니커즈',6),(31,'부츠/워커',6),(32,'크로스백',7),(33,'토트백',7),(34,'숄더백',7),(35,'에코백',7),(36,'클러치',7),(37,'백팩',7),(38,'귀걸이',8),(39,'목걸이',8),(40,'팔찌/발찌',8),(41,'반지',8),(42,'휴대폰acc',9),(43,'헤어acc',9),(44,'양말/스타킹',9),(45,'지갑/파우치',9),(46,'모자',9),(47,'벨트',9),(48,'시계',9),(49,'스카프/머플러',9),(50,'아이웨어',9),(51,'기타',9),(52,'언더웨어',10),(53,'홈웨어',10),(54,'스윔웨어',10),(55,'비치웨어',10),(56,'기타',10),(57,'아우터',11),(58,'상의',11),(59,'원피스',11),(60,'스커트',11),(61,'기타',11);
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_menus`
--

DROP TABLE IF EXISTS `sub_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `main_menu_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sub_menus_main_menu_id_main_menus_id` (`main_menu_id`),
  CONSTRAINT `FK_sub_menus_main_menu_id_main_menus_id` FOREIGN KEY (`main_menu_id`) REFERENCES `main_menus` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_menus`
--

LOCK TABLES `sub_menus` WRITE;
/*!40000 ALTER TABLE `sub_menus` DISABLE KEYS */;
INSERT INTO `sub_menus` VALUES (1,'시간단위분석',2),(2,'기간별 통계',2),(3,'베스트 상품분석',2),(4,'판매추세 분석(상품별)',2),(5,'결제완료관리',3),(6,'상품준비관리',3),(7,'배송중관리',3),(8,'배송완료관리',3),(9,'구매확정관리',3),(10,'전체주문관리',3),(11,'환불요청관리',4),(12,'환불완료관리',4),(13,'주문취소완료관리',4),(14,'반품진행관리',4),(15,'환불승인중관리',4),(16,'주문취소중관리',4),(17,'상품관리',5),(18,'상품등록',5),(19,'Q&A관리',6),(20,'텍스트리뷰',6),(21,'포토리뷰',6),(22,'기획전관리',7),(23,'쿠폰관리',7),(24,'회원관리_커뮤니티',8),(25,'셀러 계정 관리',8),(26,'브랜디 공지',9),(27,'기획전 상품 신청',9),(28,'정산 관리',10),(29,'셀러별 정산요약',10),(30,'셀러별 판매수수료',10),(31,'주문별 판매수수료',10),(32,'셀러별 서버이용료',10),(33,'상점진열관리',11),(34,'헬피 신청 안내',12),(35,'카카오톡 문의',12),(36,'전화 1566-1910',12),(37,'MD에게 제안',12),(38,'오류/수정 제안',12),(39,'셀러 정보 관리',8),(41,'패널티 셀러 관리',8),(42,'도매처 관리',8);
/*!40000 ALTER TABLE `sub_menus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-23  0:15:19
