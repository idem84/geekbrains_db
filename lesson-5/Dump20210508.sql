CREATE DATABASE  IF NOT EXISTS `eshop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `eshop`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 89.208.48.182    Database: eshop
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
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название раздела',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `unique_name` (`name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Разделы интернет-магазина';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (1,'voluptatum'),(2,'tempora'),(3,'rerum'),(4,'atque'),(5,'quis'),(6,'corporis'),(7,'velit'),(8,'et'),(9,'voluptatem'),(10,'occaecati');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `discount` float unsigned DEFAULT NULL COMMENT 'Величина скидки от 0.0 до 1.0',
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_user_id` (`user_id`),
  KEY `index_of_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Скидки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numbers`
--

DROP TABLE IF EXISTS `numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `numbers` (
  `value` int(8) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numbers`
--

LOCK TABLES `numbers` WRITE;
/*!40000 ALTER TABLE `numbers` DISABLE KEYS */;
INSERT INTO `numbers` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9);
/*!40000 ALTER TABLE `numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `total` int(10) unsigned DEFAULT '1' COMMENT 'Количество заказанных товарных позиций',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Состав заказа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название',
  `description` text COMMENT 'Описание',
  `price` decimal(11,2) DEFAULT NULL COMMENT 'Цена',
  `catalog_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_of_catalog_id` (`catalog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='Товарные позиции';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (8,'facilis','Qui nemo non ut est eius culpa dolores veniam. Fugiat nam corporis excepturi qui est modi facere nulla. Non sed amet sit rerum. Ut perspiciatis cumque ut quas voluptas et ad.',0.00,1,'1992-09-20 12:26:35','1994-02-12 17:14:17'),(9,'quis','Aliquid praesentium impedit aut repellat. Ipsum mollitia nesciunt sed ipsam iste veritatis. Suscipit rerum eum dignissimos dolorum quis quidem. Atque corrupti est tempora expedita repellendus ratione.',0.19,2,'1975-07-16 09:30:51','2006-08-28 12:02:51'),(10,'explicabo','Quo quia aut aperiam nemo sed voluptas. Aspernatur est accusantium facere rerum ipsa.',5.08,3,'2004-03-10 07:59:42','1992-05-21 17:20:54'),(11,'commodi','Deserunt iste iure sint aut dolorem repellendus. Deleniti distinctio totam iste dolor. Est est et vitae sunt. Rerum amet omnis quia quo aspernatur aut.',164270.83,4,'1999-03-07 20:50:20','1986-07-28 10:22:10'),(12,'qui','Corporis enim dolores facilis ut qui commodi. Incidunt harum ut eveniet non id.',61586.80,5,'1988-09-07 03:13:00','1988-05-02 20:28:59'),(13,'eaque','Sint dolorum et animi provident inventore minima. Neque qui omnis rerum temporibus quia. Sint ea ducimus similique dolore dolores est. Ut quae nemo eligendi est est.',4990.49,6,'1974-01-13 01:22:51','2005-12-29 04:41:06'),(14,'voluptatem','Consectetur eum magni maiores illum et rem. Corporis expedita sapiente enim in voluptatem culpa. Ullam optio alias voluptate tenetur. Et et rerum in iusto adipisci quidem id qui.',0.33,7,'2018-09-07 16:07:21','1971-06-28 13:13:30'),(15,'est','Sunt sunt debitis error occaecati. Non officiis veritatis sed cupiditate ipsam quia qui. Dignissimos illo sed odio eius placeat quis eligendi.',0.00,8,'1993-01-13 07:27:01','2002-04-24 15:13:54'),(16,'occaecati','Repudiandae tempore omnis accusamus. Quia quos ad exercitationem eveniet ut qui laboriosam. Est minima ipsum beatae reprehenderit numquam itaque.',381298.42,9,'2021-02-02 00:58:41','1995-01-01 15:14:38'),(17,'voluptatem','Qui doloribus eaque nihil aperiam et libero rerum. Architecto veniam qui voluptatem doloribus omnis quod dolor. Quis in voluptas quae architecto quod quas. Voluptas minus quod illo est.',86500992.86,10,'2007-03-12 19:45:18','2002-12-15 19:34:34'),(18,'rem','Aut cumque corrupti aut quae optio qui. Porro et occaecati quam sit quo ut. Voluptate ea sequi nesciunt.',2.78,1,'1989-09-25 18:05:24','2002-08-09 02:52:17'),(19,'totam','Quo odio rerum aut itaque vero ut quis. Quasi fuga eveniet voluptate expedita eaque est officiis.',3480449.50,2,'2009-04-04 11:01:24','1978-11-20 17:03:59'),(20,'mollitia','Eos et aut hic atque. Maxime vel rerum nobis debitis molestiae. Est dolorem id ipsam sunt consequuntur.',867.83,3,'1983-10-03 17:26:22','1980-10-18 05:02:31'),(21,'ab','Eum modi est dicta ut. Ipsam exercitationem sed tempore cum asperiores. Aut ipsam repellendus atque placeat delectus qui aliquam sapiente. Est eaque facilis iusto facere beatae ex.',0.00,4,'2016-09-29 16:44:12','1996-12-24 03:26:15'),(22,'ea','Corrupti ducimus harum quos est eveniet. Voluptatem aut sit incidunt a possimus voluptatem odio temporibus. Et blanditiis doloremque voluptas dolores unde numquam earum.',759.57,5,'2016-05-25 17:55:36','1974-10-15 05:59:00'),(23,'est','Dolorum odio qui earum sunt vero autem. Vero qui sint ea harum nam et. Sit ad numquam animi reprehenderit nihil pariatur aut illo. Est suscipit quo iste qui.',1846.43,6,'2006-04-02 08:18:46','2012-12-09 11:20:10'),(24,'dolor','Hic qui asperiores neque aut excepturi nobis ut. Laboriosam laborum corrupti voluptas nisi. Iusto ut odio sed et repudiandae.',6.64,7,'1993-09-20 19:36:52','2002-05-31 14:57:31'),(25,'ut','Aliquid id est tenetur possimus et numquam. Quis fugiat ut aut aspernatur inventore veniam ut praesentium. Qui repudiandae pariatur excepturi sit doloremque vel similique fuga.',0.00,8,'2000-06-02 23:04:59','2000-01-22 01:17:26'),(26,'sint','Ut ratione commodi corporis blanditiis eveniet aut omnis ut. Voluptatem corporis odio cupiditate et officia. Rerum aperiam beatae officia excepturi. Alias dignissimos eveniet est accusantium quia optio qui ipsum.',3.09,9,'2018-07-09 09:12:28','1990-12-16 06:01:30'),(27,'cumque','Et alias ea voluptates nobis quaerat. Sed et odio excepturi ut eveniet fugit aut. Eum cumque illo quidem omnis animi.',507918.00,10,'2006-08-03 02:37:38','1992-08-20 17:41:17'),(28,'iusto','Aut recusandae sint quasi ea. Saepe animi voluptas saepe facilis praesentium. Et ea et quibusdam modi voluptatem aut alias eaque. Ut suscipit et quia quia veritatis neque neque.',35.32,1,'2013-01-15 05:57:57','2021-04-17 20:01:55'),(29,'omnis','Sequi omnis ipsam dolorem qui laboriosam placeat est. Autem quia dicta voluptatibus voluptas ea. Laboriosam laudantium voluptas aliquam perferendis nobis fugit.',6226.10,2,'2000-08-11 14:03:55','2012-04-09 01:22:16'),(30,'perspiciatis','Aut et veritatis omnis vitae. Omnis necessitatibus ipsa aut delectus mollitia amet molestiae illo. Voluptatem perferendis quod culpa cupiditate explicabo.',0.00,3,'1999-01-02 02:30:17','2021-03-25 08:35:57'),(31,'reprehenderit','Aut asperiores et officiis occaecati nisi. Et eius quia cumque est illo libero odio. Debitis dolorem nesciunt adipisci ipsum ratione.',54059298.91,4,'1973-08-31 11:07:28','1990-05-05 20:45:24'),(32,'ullam','Quaerat error omnis dolores nulla iusto et consequatur. Culpa aut incidunt autem sit ut quia omnis possimus. Ipsum rerum hic inventore et adipisci officia quo blanditiis. Iste nulla est enim ut maxime molestiae et.',0.00,5,'1977-04-11 16:39:15','1976-05-14 07:21:33'),(33,'dolores','Sed voluptatem itaque maiores et sit. Quia quaerat voluptate et repellendus. Pariatur soluta reprehenderit assumenda tempora voluptates. Qui sit dolor magnam pariatur beatae beatae est.',4484.77,6,'2007-04-08 00:36:56','2000-09-29 22:45:40'),(34,'quasi','Et quo rerum consequatur asperiores. Quia quam occaecati quaerat in eum et expedita. Illum incidunt est voluptatibus.',0.51,7,'2016-05-04 22:51:55','2004-02-02 06:15:38'),(35,'et','Vero aut molestiae expedita consectetur consectetur ullam error. Nulla molestias sit doloremque ex id. Non repellat vel quo minus consequatur. Et corporis alias placeat in consequatur.',433364974.53,8,'1985-02-11 11:35:41','1988-06-14 14:04:46'),(36,'pariatur','Vero ut saepe laborum assumenda ut. Voluptatem ipsa in necessitatibus ut eaque dolorum. Possimus magnam harum repudiandae possimus nobis quis nobis ad.',21425.15,9,'1999-02-20 11:36:33','2004-10-30 03:07:01'),(37,'vel','Saepe vero eveniet neque. Vero aut iusto aliquam soluta placeat ipsa dolore unde. Deserunt hic eaque nihil omnis incidunt. Nostrum inventore numquam suscipit alias voluptatem expedita iusto ut.',11576.63,10,'1980-05-27 16:01:47','1989-07-23 23:41:00'),(38,'ratione','Fuga accusamus laborum cum et voluptas iste. Minus eveniet ad asperiores quisquam. Qui enim id adipisci ut hic et voluptas. Non ducimus distinctio incidunt qui.',39.30,1,'2014-09-30 09:25:58','1981-04-21 05:42:57'),(39,'ea','Quis enim iste quibusdam maxime est. Non quasi dolores alias similique quasi sed. Eos similique vitae qui et dolor optio quibusdam. Sed possimus rerum et qui.',179721.62,2,'2009-01-02 05:47:53','2012-06-25 16:35:49'),(40,'minus','Et ut iusto velit aspernatur tempore sed maxime. Placeat sunt quae ut nam maiores. Sequi aut nobis corrupti libero.',1068.24,3,'2007-08-29 13:43:27','1981-08-10 13:14:41'),(41,'dolores','Qui dolorem ut ut rerum. Tenetur odit ducimus commodi aut. Qui nam maxime sunt consequatur exercitationem. Quae est iure quia veniam non iusto quaerat.',21707327.92,4,'1988-03-30 06:52:37','1985-03-17 17:11:24'),(42,'nisi','Eum est ut quisquam non quaerat sit. Totam sit id et animi eius. Hic aut voluptates at est ipsa porro. Iure beatae aliquam fuga ad at non. Necessitatibus laudantium alias iste soluta saepe ipsum laborum.',8129.99,5,'2000-02-23 11:56:19','2014-07-02 03:17:00'),(43,'eos','Hic est sint quas dolores adipisci quo voluptatem. Officiis est quibusdam aperiam qui odit nihil aspernatur eos. Adipisci unde sed sint qui ea earum.',1427.10,6,'1980-09-10 02:54:04','1985-06-16 00:05:17'),(44,'voluptas','Accusantium voluptatem tempora nesciunt enim nobis rem. At voluptatum eos rerum vitae omnis consequatur. Qui quisquam libero consectetur quam. Autem ut est facilis eius animi sint dolor.',84488271.40,7,'1996-06-27 22:08:47','1982-02-13 12:36:34'),(45,'qui','Non atque nulla rerum et repellendus aut. Tempora dolorum aut repudiandae enim culpa.',22919.10,8,'1974-12-02 20:39:20','2004-02-13 20:46:06'),(46,'veniam','Et dolor iure aut quaerat dignissimos. Amet deleniti error enim ullam. Sit quia est illo consequuntur sapiente omnis laborum.',79174372.64,9,'2019-02-26 09:34:53','2020-08-20 14:43:53'),(47,'voluptatem','Tenetur aspernatur nisi et id ducimus ad rerum et. Unde ut delectus corporis est provident consequatur dolorem occaecati. Omnis dolorem illum vel nobis libero a repellat et.',11756553.56,10,'2010-07-16 00:49:22','1987-05-16 23:31:14'),(48,'quis','Similique eligendi enim alias asperiores delectus odit. Harum necessitatibus eos porro minima est qui corporis.',45929.66,1,'1971-07-05 17:24:48','2017-01-23 06:31:57'),(49,'repellendus','Est earum saepe dolor et. Ratione quam tenetur deleniti placeat. Dicta reprehenderit vel laboriosam illum perspiciatis. Magni molestiae et nostrum voluptates repudiandae et accusamus amet.',59057.15,2,'1987-01-20 10:06:16','1971-12-04 11:28:21'),(50,'accusamus','Possimus quibusdam a illo explicabo repudiandae hic laboriosam. Ducimus veniam officiis ullam natus accusantium dolore architecto sint. Veritatis earum id possimus assumenda occaecati assumenda dolores debitis. Eos rerum eligendi et dignissimos quia dignissimos.',0.30,3,'1985-06-15 23:26:44','2017-05-02 21:52:56'),(51,'recusandae','Iure et vel eos sunt. Et numquam inventore labore quasi quia. Molestiae iure nisi ut et est.',424.83,4,'2006-11-15 19:08:04','1995-04-30 00:37:11'),(52,'impedit','Consequatur voluptatibus porro cupiditate voluptatum quo. Aperiam ut dolor consectetur ipsa quae quo eos. Quos numquam ipsam maiores ut consequatur nam.',17282243.70,5,'2015-06-27 08:53:56','2014-06-28 03:07:58'),(53,'neque','Qui necessitatibus autem magnam magnam accusantium aut. Facere error omnis similique totam eum. Neque necessitatibus omnis maiores beatae et debitis nobis. Repellat officiis rerum hic.',5705.07,6,'2004-07-23 04:23:08','1992-04-09 02:12:10'),(54,'quasi','Nulla et ea rerum. Quam enim voluptates non sit corrupti ut saepe. Sapiente accusantium nemo molestiae voluptatem autem dolorem qui eius.',323940014.62,7,'1998-02-28 13:56:14','2003-04-09 02:04:26'),(55,'nobis','Omnis doloribus nihil voluptatem aperiam laboriosam fuga omnis. Et fuga earum voluptatem. Officiis voluptatem nulla atque ut veritatis at maiores. Maxime dolores quos reprehenderit et dolorem praesentium voluptatem.',11399503.25,8,'1997-03-08 14:26:20','2008-11-10 12:50:05'),(56,'quo','Et sunt nisi impedit soluta doloribus. Aliquid hic odio doloribus illum est. Minus cupiditate et molestiae similique ut maiores.',1.16,9,'1984-09-09 00:27:36','2011-12-15 11:02:09'),(57,'voluptatem','A doloremque sint in fugit sapiente. Libero a quia ipsa omnis. Et quibusdam quia consequatur consequatur. Incidunt ducimus minima rerum nisi.',31.00,10,'2003-04-04 12:38:31','1996-05-03 22:29:01'),(58,'ratione','Ratione nam voluptates beatae velit quia reprehenderit. Fugit reprehenderit veniam ratione incidunt in distinctio est. Sit dolores enim aut a autem sed. Dolorum est animi dolorem autem animi rem eos magnam.',1389.72,1,'2013-03-30 01:51:24','1974-08-26 13:56:46'),(59,'corporis','Quia quia ullam quae sed dolor cumque. Vero laudantium aperiam sint ea nemo. Consequatur odit esse error qui. Enim nisi ducimus est laboriosam qui minima voluptas voluptatum.',375037763.92,2,'2009-01-05 15:09:00','1996-10-16 13:39:18'),(60,'recusandae','Eos nihil dolorum vero dolores numquam delectus magnam. Ipsa sunt sit vitae officiis nihil. Est eius optio vero qui. Omnis omnis dignissimos voluptas est minus minus.',1807.27,3,'2015-03-25 15:33:17','2007-07-30 11:12:46'),(61,'voluptas','Sed rerum consectetur incidunt consectetur ea. Deleniti quam adipisci cupiditate accusantium sed. Pariatur adipisci vel labore delectus.',418.55,4,'1993-11-10 07:55:23','2011-03-25 13:25:05'),(62,'dignissimos','Eius qui dolores odio aliquam. Animi sequi enim occaecati reprehenderit.',7.23,5,'1983-03-30 23:24:41','2000-03-11 06:38:38'),(63,'itaque','Impedit molestiae ut quidem dolore minima. Non dolores eius esse autem voluptatem perspiciatis praesentium blanditiis. Rerum repellat earum rerum nisi est et maiores nihil. Soluta vero laboriosam voluptas aliquam aperiam voluptas natus.',537557391.38,6,'2018-11-21 10:46:57','1984-03-29 17:41:28'),(64,'repudiandae','Ut facilis magnam quasi fugit ipsam. Dolorum non commodi eligendi sunt minus aut. Est et placeat libero ex temporibus ipsa maiores. Qui est ab velit quia. Dolorum voluptatem velit similique sunt.',267906114.00,7,'2018-02-10 06:54:52','1997-08-14 22:50:12'),(65,'facere','Consequatur perspiciatis cupiditate excepturi ut vero. Suscipit consequatur omnis rerum magnam reiciendis. Et deserunt nesciunt tempora impedit eos. Veniam voluptas ab qui sint.',0.00,8,'2013-10-29 19:14:09','2014-05-10 10:14:21'),(66,'iusto','Molestiae dolorem deserunt dicta aut necessitatibus praesentium nihil. Velit et aut quae omnis. Aut qui fugit consectetur et.',43.96,9,'1994-10-07 12:34:29','2003-09-14 05:05:22'),(67,'et','Quis est quam eos laborum officiis. Laudantium suscipit voluptatem maiores. Dolores sunt alias facilis mollitia eveniet blanditiis.',0.00,10,'1970-03-07 19:18:21','1970-04-01 04:13:21'),(68,'illo','Eius laboriosam ut et fugit adipisci sit. Ad id aut tenetur harum. Magni ea velit enim iste. Ex voluptate ut rerum.',442.18,1,'2000-01-19 13:22:19','2010-09-02 21:25:13'),(69,'distinctio','Voluptas occaecati velit molestias culpa omnis praesentium. Ea quia adipisci amet repellendus eveniet dignissimos veniam.',17.82,2,'1987-04-09 14:33:15','1997-10-08 17:29:09'),(70,'voluptatem','Doloribus omnis dolores ut et impedit ab. Et occaecati nihil enim nulla voluptatibus a amet. Aperiam dolor est quis ut.',653701.42,3,'1974-10-26 20:29:15','1984-12-31 10:55:25'),(71,'rem','Sequi nesciunt consectetur molestias autem aspernatur doloribus. Dolor in quia natus suscipit eveniet est. Et quia ea sit provident occaecati consectetur libero.',134.77,4,'1990-09-03 22:12:36','2013-11-19 09:54:08'),(72,'aut','Enim cumque hic occaecati. Ratione esse sunt rem fugit repudiandae nobis est. Aut ipsum voluptatem qui voluptas eaque.',1.84,5,'1991-06-21 14:44:35','2010-04-26 16:21:24'),(73,'ullam','Asperiores qui explicabo aperiam architecto. Ut voluptas quia odio unde commodi. Aut eum cupiditate omnis qui iure et.',3.00,6,'2019-11-15 17:49:46','1989-04-23 15:38:02'),(74,'vel','Tenetur magni corporis quis porro et quisquam possimus. Quia ipsam veritatis error et ut. Quis fugiat animi non eveniet voluptas officia dicta.',80462750.90,7,'2005-07-21 03:11:57','2020-05-21 20:06:02'),(75,'voluptatem','Cum reiciendis deserunt mollitia vitae. Architecto sequi amet ipsa consectetur qui esse quibusdam. Corrupti sequi quibusdam accusamus ut. Architecto impedit omnis sunt doloribus.',15.42,8,'2005-01-27 02:17:28','2001-06-06 21:24:16'),(76,'rerum','Sed consectetur quos praesentium. Totam fuga totam aut quia nulla. Ipsam temporibus aut eius natus voluptas doloribus. Labore maxime quia ipsa. Voluptatem adipisci ex autem et.',489.68,9,'1987-03-06 06:10:35','2016-05-17 15:25:45'),(77,'laborum','Doloremque soluta ut quam autem neque. Modi ipsa sit ipsam dolorum ducimus et aut. Eos tenetur cumque ex minus quisquam rerum. Aliquam qui voluptas nihil corrupti corrupti repellendus.',210.97,10,'1975-10-05 21:48:56','1983-07-30 16:23:40'),(78,'voluptatem','Porro sunt quisquam hic ut placeat. Nobis saepe consectetur fugiat incidunt saepe at eaque. Labore voluptas vitae sit maiores. Magnam repellat voluptas velit necessitatibus molestias. Cum est temporibus necessitatibus et ex.',1524368.40,1,'1996-12-09 16:19:32','1983-02-22 10:08:47'),(79,'doloremque','Ullam numquam nihil accusamus et aut enim doloremque. Quo sit facere quis cumque. Laudantium amet beatae consequatur dolores voluptate fuga ipsum. Ullam voluptate quia sed neque.',94137209.00,2,'2001-10-06 10:38:50','2004-08-29 01:35:18'),(80,'et','Officiis laboriosam et et rerum. Et eum quasi nostrum numquam itaque et consequatur placeat. Magni earum repellat dolorem non non et.',27891593.49,3,'1971-04-19 07:37:07','1993-09-27 03:42:23'),(81,'doloribus','Animi eos incidunt excepturi minus. Dignissimos officiis atque adipisci. Nihil perferendis et eligendi fugit modi id.',3.80,4,'1989-01-03 11:59:38','1996-03-09 02:51:27'),(82,'et','Totam incidunt officiis non sunt. Quia dicta est non explicabo. Ut mollitia consequatur dignissimos in. Architecto necessitatibus animi est. Dolorem autem veniam et dolor.',19.92,5,'2021-02-22 07:49:21','2014-03-22 10:37:43'),(83,'cumque','Et tenetur ut et doloremque quod harum velit. Numquam aut molestiae consequatur illo. Aut inventore voluptatem aliquam tempora. Totam iste consequuntur tenetur et officiis magni.',89447.00,6,'2003-08-29 04:31:25','1978-01-16 20:00:22'),(84,'repellendus','Iure ut quisquam culpa rerum non non. Aut alias veniam quo aut fugit. Dicta dicta quibusdam impedit nihil. Sed qui totam quia debitis iure unde.',70015.81,7,'1986-06-30 01:04:26','1976-08-16 08:32:17'),(85,'sed','Aut magni laudantium eligendi temporibus ratione. Quia facere nam et rerum. Veniam dolor eum est laborum voluptas aspernatur consequatur officia. Quia eos vel voluptatum magni commodi.',16186488.14,8,'1975-07-09 06:41:16','2000-09-12 20:01:16'),(86,'saepe','Provident est dolor tempora vel officia eos quis cupiditate. Iure sunt dignissimos qui et tenetur. Velit consectetur sed qui aut quia unde.',101323533.20,9,'1987-09-15 05:22:19','1979-02-04 20:17:05'),(87,'saepe','Voluptatibus minima velit dicta tempora repellendus. Nihil aut dolores eveniet totam quia dolore mollitia earum. Et autem et sapiente molestiae. Dolores sit facilis et aliquam.',401.00,10,'2018-01-30 15:37:20','1997-04-12 00:46:47'),(88,'quas','Neque inventore reprehenderit autem sit itaque nam. Sequi cumque sed dolores sit eum nam aut. Quis magnam voluptatem qui laborum id.',752.00,1,'1971-07-02 12:17:58','1989-08-02 09:43:41'),(89,'rem','Adipisci odit et sint magni. Rerum ut amet facere et harum atque animi qui. Vel possimus aut natus officiis tempora. Dolore alias velit vel temporibus molestias molestiae reprehenderit.',78040124.73,2,'1972-09-04 07:38:18','2019-11-30 22:53:29'),(90,'voluptatibus','Nesciunt nostrum et qui laudantium incidunt. Fuga velit sed odio. Magnam non dicta perferendis voluptas eum ut doloribus. Qui dolorem et dolorem cumque.',1.07,3,'1999-01-06 00:21:41','2009-01-26 15:52:02'),(91,'perspiciatis','Dignissimos est corrupti in qui necessitatibus. Perferendis et enim rerum sed quo. Ipsa aperiam at tempora nemo hic ipsam necessitatibus.',655441785.83,4,'1974-07-23 22:50:35','1971-03-05 06:24:19'),(92,'tempore','Voluptas id nam laboriosam. Autem facilis vitae nobis aut iusto cupiditate rerum. Molestias aspernatur et minus dolores eum iusto adipisci.',89873.09,5,'2015-01-29 12:25:59','1976-11-23 03:36:34'),(93,'magni','Repudiandae laboriosam sed autem dolores. Facere ducimus ab quia voluptatem qui libero. Porro perspiciatis reiciendis ut numquam reprehenderit incidunt. Amet facere dolor porro minima corporis hic ipsum est.',0.12,6,'1986-09-12 14:18:53','1975-07-16 00:10:30'),(94,'ut','Et et aperiam est sequi. Voluptas autem omnis aperiam ratione recusandae.',3.61,7,'2021-01-28 12:11:39','2013-09-30 18:44:12'),(95,'officia','Iusto ut explicabo aut. Quia voluptatem ad possimus id quasi velit et. Quae velit qui amet laboriosam.',3319.08,8,'1982-03-26 09:28:38','1987-04-04 11:27:48'),(96,'aut','Veniam quod accusantium vel sint qui laboriosam. Et maxime quo dolorum ratione explicabo autem. Reiciendis vitae quam eos.',3.48,9,'2003-09-30 02:56:33','2012-11-03 14:47:14'),(97,'deserunt','Est ad sed distinctio soluta vitae. Et sit similique laborum.',0.00,10,'1991-01-10 23:22:28','2011-09-11 14:42:30'),(98,'voluptate','Sit ullam iste dolor asperiores et. Quae pariatur nulla dolorem in. Nulla velit molestiae sequi. Consectetur eum perspiciatis quos illo.',3.24,1,'2008-04-02 06:29:46','2006-09-12 15:35:47'),(99,'optio','Ut fuga nulla qui qui voluptatibus. Suscipit quia itaque dolorum vel. Voluptas dolorum autem quis deserunt omnis inventore et.',16016.92,2,'2010-07-31 18:05:58','2006-09-01 03:26:12'),(100,'nulla','Est id tenetur saepe. In corrupti nam eligendi similique nulla repellendus quidem voluptatem. Ipsa non fugiat architecto doloremque minima. Voluptatum sed vero sed. Maxime accusantium placeat consectetur.',116.82,3,'1994-05-20 06:39:57','1979-05-19 19:17:04'),(101,'qui','Quo consequuntur tempora saepe minima veniam quisquam quas. At hic accusantium corporis excepturi error. Molestiae nam id sed laborum incidunt rerum et.',167.00,4,'1970-04-30 02:51:59','1979-08-05 15:01:12'),(102,'et','Voluptatum sed soluta est labore veniam quaerat. Temporibus accusantium illum facilis repellendus autem vero ea ut. Ad odio dolore qui et rerum cumque dolorem perferendis. Soluta tenetur et consequatur quidem qui itaque id. Iure occaecati ut corrupti est.',1.50,5,'2003-07-17 19:53:33','2016-01-08 08:20:06'),(103,'consectetur','Recusandae vel similique fugiat mollitia consequatur et. Mollitia cum accusantium sunt exercitationem. Hic blanditiis aut quis.',4475.11,6,'1995-03-13 16:16:43','1987-01-17 10:47:56'),(104,'sunt','Temporibus laudantium aut sed ipsam. In qui qui odit voluptatem quia recusandae voluptatem. Ipsa facilis perferendis quidem saepe doloribus omnis sequi.',0.00,7,'2018-02-14 03:10:53','1971-07-30 09:22:20'),(105,'unde','Molestiae ab pariatur et velit. Quam ipsum omnis ex aut aut. Nisi reiciendis nostrum iure pariatur suscipit vitae.',44663.21,8,'1994-03-02 21:07:42','2014-09-20 01:11:47'),(106,'ut','Hic illo corrupti est molestiae. Quam eius nihil non amet quia. Officia quia laboriosam labore unde et amet. Qui quae et sit accusantium rerum natus.',8.69,9,'1980-01-10 09:00:19','1992-10-11 00:44:19'),(107,'explicabo','Nulla pariatur voluptates possimus dolor non fugiat. Rem ullam harum voluptate et esse sequi. Soluta in et culpa id. Dolorem quae voluptas deleniti suscipit.',2089662.43,10,'2010-02-10 16:31:50','1987-12-09 00:41:43');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses`
--

DROP TABLE IF EXISTS `storehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Название',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Склады';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses`
--

LOCK TABLES `storehouses` WRITE;
/*!40000 ALTER TABLE `storehouses` DISABLE KEYS */;
INSERT INTO `storehouses` VALUES (1,'aut','2014-06-20 04:21:34','1991-01-22 18:22:19'),(2,'illum','1975-02-21 10:15:31','1971-08-20 15:30:27'),(3,'sapiente','1996-07-19 10:09:42','1988-09-17 15:57:02'),(4,'dolore','2018-06-25 12:33:09','2005-10-23 08:01:30'),(5,'quia','1981-01-12 18:31:16','2015-11-05 10:07:20'),(6,'harum','1993-07-07 10:05:17','2005-06-18 13:48:22'),(7,'ut','2003-12-11 14:23:20','1998-09-16 04:36:47'),(8,'quis','1979-06-14 22:45:58','1992-04-29 16:53:19'),(9,'accusamus','1977-09-24 09:09:22','1976-10-15 02:21:55'),(10,'consequatur','2016-04-29 07:38:43','1993-08-29 19:22:32');
/*!40000 ALTER TABLE `storehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses_products`
--

DROP TABLE IF EXISTS `storehouses_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouses_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `storehouse_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `value` int(10) unsigned DEFAULT NULL COMMENT 'Запас товарной позиции на складе',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='Запасы на складе';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses_products`
--

LOCK TABLES `storehouses_products` WRITE;
/*!40000 ALTER TABLE `storehouses_products` DISABLE KEYS */;
INSERT INTO `storehouses_products` VALUES (1,1,8,0,'1996-02-19 19:08:14','2021-05-08 16:27:02'),(2,2,9,1,'1978-06-09 08:13:11','1998-01-06 14:18:46'),(3,3,10,9,'2021-01-08 00:34:49','1989-07-23 09:21:40'),(4,4,11,0,'2009-06-06 02:25:45','2021-05-08 16:27:02'),(5,5,12,5,'1974-02-12 06:05:08','1995-11-28 11:30:08'),(6,6,13,1,'2019-05-14 13:30:54','1985-03-19 04:16:57'),(7,7,14,0,'2012-11-10 23:27:32','2021-05-08 16:27:02'),(8,8,15,7,'2010-09-17 08:34:46','2007-11-27 06:37:53'),(9,9,16,4,'1995-05-15 04:03:16','1971-10-18 07:43:57'),(10,10,17,0,'2019-12-06 07:49:06','2021-05-08 16:27:02'),(11,1,18,5,'2003-03-07 22:08:26','1999-01-30 21:42:28'),(12,2,19,6,'1970-07-24 21:50:38','1998-01-31 21:24:21'),(13,3,20,7,'1974-04-28 00:23:28','2010-09-15 17:48:08'),(14,4,21,5,'1996-11-23 06:57:18','1990-02-05 10:36:48'),(15,5,22,5,'1985-03-11 01:43:41','1984-08-24 14:49:07'),(16,6,23,7,'1971-11-06 17:11:33','1970-11-22 05:15:30'),(17,7,24,8,'1978-05-13 21:40:37','2014-11-18 11:34:23'),(18,8,25,0,'2008-03-30 09:39:29','2006-03-14 16:49:53'),(19,9,26,8,'1973-07-10 16:52:29','1981-10-07 20:20:49'),(20,10,27,0,'1983-01-12 15:24:26','2021-05-08 16:27:02'),(21,1,28,4,'1976-04-04 02:34:18','1980-11-12 04:40:11'),(22,2,29,8,'1972-10-25 18:15:07','2005-11-26 07:07:57'),(23,3,30,6,'2013-05-16 22:43:44','2000-08-01 13:51:02'),(24,4,31,6,'1989-10-05 03:01:27','2009-12-18 13:23:28'),(25,5,32,3,'1989-11-07 06:55:38','1996-02-28 15:48:38'),(26,6,33,5,'2001-09-14 03:22:27','2004-09-23 21:30:21'),(27,7,34,5,'1979-04-15 08:27:00','1974-11-27 05:49:32'),(28,8,35,8,'1991-01-30 03:47:28','2017-09-17 00:30:20'),(29,9,36,2,'1995-07-20 11:40:29','1980-01-03 07:13:22'),(30,10,37,7,'2006-06-05 14:43:41','2009-03-21 06:19:28'),(31,1,38,6,'1975-01-12 21:03:52','2016-03-05 07:20:04'),(32,2,39,5,'1977-04-15 10:11:22','1995-12-06 18:13:58'),(33,3,40,1,'1989-01-23 20:21:36','1974-11-12 00:36:36'),(34,4,41,8,'1970-12-26 08:38:41','2019-11-05 22:06:16'),(35,5,42,3,'1978-04-09 05:40:31','2003-01-20 12:05:07'),(36,6,43,8,'1984-05-25 06:01:00','2013-01-08 11:03:25'),(37,7,44,0,'2016-10-20 16:22:34','2011-08-10 06:46:09'),(38,8,45,7,'1994-06-18 13:09:07','1984-05-03 21:54:20'),(39,9,46,6,'2007-08-05 06:04:37','2018-05-29 17:33:40'),(40,10,47,5,'1994-04-28 16:39:50','2014-01-23 11:31:17'),(41,1,48,7,'1974-10-29 02:43:39','2017-09-03 19:53:38'),(42,2,49,5,'2010-06-03 21:58:57','1997-08-20 17:07:25'),(43,3,50,9,'1995-05-21 20:49:43','2019-01-23 20:21:32'),(44,4,51,2,'2005-05-30 01:50:53','2008-07-27 14:22:15'),(45,5,52,0,'1995-07-15 00:22:49','2021-05-08 16:27:02'),(46,6,53,1,'2001-11-29 13:12:43','2020-02-20 14:24:53'),(47,7,54,1,'1972-06-19 02:11:36','2006-05-03 13:35:27'),(48,8,55,0,'1977-03-04 07:30:49','2008-05-23 09:12:35'),(49,9,56,2,'1998-04-26 14:39:17','2000-02-18 10:10:28'),(50,10,57,8,'2000-07-21 09:29:33','2009-09-22 21:55:28'),(51,1,58,5,'1995-03-02 21:00:38','2016-08-30 11:34:55'),(52,2,59,2,'2001-07-26 03:05:22','1980-03-10 11:43:58'),(53,3,60,1,'1974-01-08 03:27:11','1975-07-07 01:34:48'),(54,4,61,2,'1980-03-09 04:04:56','2014-08-30 02:12:47'),(55,5,62,2,'1989-07-27 23:20:52','1985-07-17 07:41:51'),(56,6,63,2,'1988-03-12 00:00:40','2008-02-17 01:29:30'),(57,7,64,5,'2014-02-06 06:42:42','1979-06-29 19:08:36'),(58,8,65,8,'2007-08-22 17:41:50','2015-08-02 19:27:23'),(59,9,66,7,'1980-12-27 22:08:27','1975-01-13 22:07:23'),(60,10,67,2,'2007-07-16 10:26:23','2012-05-19 08:27:37'),(61,1,68,8,'1975-03-07 22:38:19','2005-07-27 05:16:56'),(62,2,69,9,'2005-11-10 14:41:53','2001-05-18 04:26:20'),(63,3,70,5,'1991-06-28 08:31:12','1976-10-23 02:02:27'),(64,4,71,3,'1972-03-08 05:26:54','1989-04-18 23:51:22'),(65,5,72,9,'1980-12-06 07:40:15','2019-07-27 12:53:45'),(66,6,73,1,'2014-07-09 06:41:26','2008-05-20 20:06:41'),(67,7,74,1,'1991-08-29 20:05:36','1988-10-13 16:15:29'),(68,8,75,1,'2015-05-06 22:23:08','1990-10-10 01:03:01'),(69,9,76,5,'1971-09-28 00:00:44','1972-09-04 13:37:34'),(70,10,77,1,'1975-02-17 02:03:26','2014-03-16 00:02:07'),(71,1,78,5,'2009-02-22 06:59:47','2008-04-18 11:31:58'),(72,2,79,4,'1989-11-19 18:16:57','2020-09-10 07:24:18'),(73,3,80,1,'1995-12-27 08:27:20','1987-11-08 18:05:00'),(74,4,81,3,'2016-05-22 16:34:28','1975-12-13 15:47:11'),(75,5,82,8,'1979-11-09 03:58:37','1986-08-13 20:19:21'),(76,6,83,1,'1996-02-05 06:57:03','2017-03-06 07:10:01'),(77,7,84,8,'1976-03-22 07:00:51','1992-06-29 12:33:55'),(78,8,85,0,'1977-12-13 12:35:19','1999-04-04 17:09:11'),(79,9,86,1,'1991-03-13 17:17:07','2012-09-04 17:23:40'),(80,10,87,1,'1975-10-11 14:47:12','2010-08-04 11:18:53'),(81,1,88,4,'1970-09-10 08:57:55','1993-01-18 08:34:37'),(82,2,89,4,'2014-09-21 18:17:07','2013-11-14 05:01:50'),(83,3,90,5,'2013-01-15 06:05:29','1978-04-19 09:56:27'),(84,4,91,1,'2012-01-14 15:24:22','2010-10-22 19:19:54'),(85,5,92,3,'2006-01-21 18:44:57','2013-05-28 06:22:25'),(86,6,93,7,'2003-12-09 18:59:15','1978-05-30 10:16:41'),(87,7,94,5,'1979-12-14 07:06:22','2009-02-23 04:47:59'),(88,8,95,3,'1971-01-01 16:26:32','2018-01-07 02:21:03'),(89,9,96,7,'1984-02-14 03:33:29','1982-02-24 20:31:13'),(90,10,97,3,'2009-04-12 18:37:27','1993-03-29 22:11:53'),(91,1,98,0,'1982-06-20 16:42:40','2018-03-22 07:53:46'),(92,2,99,1,'1993-10-21 14:54:51','1970-07-11 01:18:23'),(93,3,100,6,'1999-07-06 12:01:40','2003-10-07 19:35:39'),(94,4,101,5,'1978-10-07 19:12:44','1990-06-02 20:52:40'),(95,5,102,2,'2004-10-23 15:13:03','1983-09-15 09:07:34'),(96,6,103,7,'2008-08-09 00:38:49','2018-07-25 23:00:07'),(97,7,104,8,'2012-05-23 09:28:01','1981-12-13 07:06:21'),(98,8,105,5,'1987-05-12 16:45:37','2017-08-28 22:25:52'),(99,9,106,1,'1986-01-06 05:40:25','1996-06-17 01:39:01'),(100,10,107,6,'1975-07-26 19:27:30','2020-01-09 18:00:15');
/*!40000 ALTER TABLE `storehouses_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Имя покупателя',
  `birthday_at` date DEFAULT NULL COMMENT 'Дата рождения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Покупатели';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Геннадий','1990-10-05','2021-05-08 16:04:59','2021-05-08 16:15:32'),(2,'Наталья','1984-11-12','2021-05-08 16:04:59','2021-05-08 16:15:32'),(3,'Александр','1985-05-20','2021-05-08 16:04:59','2021-05-08 16:15:32'),(4,'Сергей','1988-02-14','2021-05-08 16:04:59','2021-05-08 16:15:32'),(5,'Иван','1998-01-12','2021-05-08 16:04:59','2021-05-08 16:15:32'),(6,'Мария','1992-08-29','2021-05-08 16:04:59','2021-05-08 16:15:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'eshop'
--

--
-- Dumping routines for database 'eshop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-08 17:15:16
