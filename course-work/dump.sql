-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 89.208.48.182    Database: course_work
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `bookmark`
--

DROP TABLE IF EXISTS `bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmark` (
  `realty_id` int(11) NOT NULL,
  `login` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `FK_Bookmark` (`realty_id`),
  KEY `FK_User_Bookmarks` (`login`),
  CONSTRAINT `FK_Bookmark` FOREIGN KEY (`realty_id`) REFERENCES `realty` (`realty_id`),
  CONSTRAINT `FK_User_Bookmarks` FOREIGN KEY (`login`) REFERENCES `user` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark`
--

LOCK TABLES `bookmark` WRITE;
/*!40000 ALTER TABLE `bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Раздел (Продажа, Аренда)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'квартира'),(2,'дом'),(3,'участок');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infrastructureobject`
--

DROP TABLE IF EXISTS `infrastructureobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infrastructureobject` (
  `object_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infrastructureobject`
--

LOCK TABLES `infrastructureobject` WRITE;
/*!40000 ALTER TABLE `infrastructureobject` DISABLE KEYS */;
INSERT INTO `infrastructureobject` VALUES (1,'Школа'),(2,'Больница'),(3,'Садик');
/*!40000 ALTER TABLE `infrastructureobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `realty_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` longblob,
  KEY `FK_realty2photo` (`realty_id`),
  CONSTRAINT `FK_realty2photo` FOREIGN KEY (`realty_id`) REFERENCES `realty` (`realty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realty`
--

DROP TABLE IF EXISTS `realty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realty` (
  `realty_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `latitude` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`realty_id`),
  KEY `FK_realty2category` (`category_id`),
  KEY `FK_realty2region` (`code`),
  KEY `FK_seller2realty` (`seller_id`),
  CONSTRAINT `FK_realty2category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `FK_realty2region` FOREIGN KEY (`code`) REFERENCES `region` (`code`),
  CONSTRAINT `FK_seller2realty` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='недвижимость';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realty`
--

LOCK TABLES `realty` WRITE;
/*!40000 ALTER TABLE `realty` DISABLE KEYS */;
INSERT INTO `realty` VALUES (0,1,5,3,'-49.093287','-133.83435','Velit omnis et autem dignissimos. A deleniti quo q','8564 Zulauf Lights Apt. 475\nWest Darianbury, VA 11',4000),(1,1,1,1,'63.992630','88.157449','Quaerat ad ut et sunt deserunt illo quae fuga. Ut ','065 Crist Common Apt. 516\nStreichtown, NM 78161',8000),(2,3,1,1,'68.551765','16.505752','Magni dolores molestiae voluptas repudiandae. Nisi','066 Jenkins Throughway Suite 396\nEast Javier, NJ 7',2000),(3,2,3,3,'61.661917','-135.03371','Similique tenetur dolores et et eius non aut. Maxi','357 Toney Road\nProhaskastad, WI 90444',6000),(4,1,4,3,'-30.260999','-30.521490','Repellat asperiores blanditiis architecto repellen','439 Archibald Plains Suite 669\nNew Pauline, IA 680',5000),(5,2,2,1,'-36.057781','48.220198','Aut numquam accusantium omnis minima saepe ab pari','5981 Stacey Vista Suite 309\nLake Elizabethland, OH',8000),(6,3,4,2,'-68.847130','-27.599907','Omnis reiciendis modi iure quis aliquid. Eveniet d','68677 Karley Throughway Suite 721\nGerlachbury, CT ',7000),(7,3,4,1,'-59.022013','-22.157590','At voluptate modi architecto adipisci velit a cons','227 Rutherford Place\nAshleebury, DC 25304-4010',4000),(8,3,2,1,'-88.459920','-69.702731','Qui cum natus odio sit eum fugit. Repellendus ut l','18063 Rempel Club\nLake Lily, MN 69786-3079',6000),(9,1,4,1,'-82.135763','31.132807','Magnam vero ipsam consequatur. Dolores ut vel prae','207 Botsford Mountain Suite 297\nEmiliafort, WV 080',4000);
/*!40000 ALTER TABLE `realty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realty2infrastructure`
--

DROP TABLE IF EXISTS `realty2infrastructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realty2infrastructure` (
  `realty_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  PRIMARY KEY (`realty_id`,`object_id`),
  KEY `FK_realty2infrastructure2` (`object_id`),
  CONSTRAINT `FK_realty2infrastructure` FOREIGN KEY (`realty_id`) REFERENCES `realty` (`realty_id`),
  CONSTRAINT `FK_realty2infrastructure2` FOREIGN KEY (`object_id`) REFERENCES `infrastructureobject` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realty2infrastructure`
--

LOCK TABLES `realty2infrastructure` WRITE;
/*!40000 ALTER TABLE `realty2infrastructure` DISABLE KEYS */;
/*!40000 ALTER TABLE `realty2infrastructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realtymeta`
--

DROP TABLE IF EXISTS `realtymeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realtymeta` (
  `meta_id` int(11) NOT NULL,
  `realty_id` int(11) NOT NULL,
  `area` float DEFAULT NULL,
  `num_of_rooms` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `FK_realty2meta` (`realty_id`),
  CONSTRAINT `FK_realty2meta` FOREIGN KEY (`realty_id`) REFERENCES `realty` (`realty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realtymeta`
--

LOCK TABLES `realtymeta` WRITE;
/*!40000 ALTER TABLE `realtymeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `realtymeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES ('Орехово',1),('Нагатино',2),('Бирюлево',3);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_id` int(11) NOT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES ('George Murazik','Hintz','106-759-67',1),('Lamar Jerde MD','Smitham','+16(2)1832',2),('Marta Green','Blanda','(451)666-5',3),('Dr. Norwood Bernier','Jerde','174.194.75',4),('Reba Sawayn','Hane','1-687-221-',5);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totalrealty`
--

DROP TABLE IF EXISTS `totalrealty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `totalrealty` (
  `count` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totalrealty`
--

LOCK TABLES `totalrealty` WRITE;
/*!40000 ALTER TABLE `totalrealty` DISABLE KEYS */;
/*!40000 ALTER TABLE `totalrealty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `login` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('bfeest'),('gabe46'),('ijohnson'),('leora31'),('lgoldner'),('lilly13'),('sarina99'),('skiles.logan'),('yborer'),('ypfannerstill');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitors` (
  `realty_id` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  KEY `FK_Просмотры` (`realty_id`),
  CONSTRAINT `FK_Просмотры` FOREIGN KEY (`realty_id`) REFERENCES `realty` (`realty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Счетчик посещений';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'course_work'
--

--
-- Dumping routines for database 'course_work'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-03 16:07:43
