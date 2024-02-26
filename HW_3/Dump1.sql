-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: shop_database
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add client',7,'add_client'),(26,'Can change client',7,'change_client'),(27,'Can delete client',7,'delete_client'),(28,'Can view client',7,'view_client'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add order',9,'add_order'),(34,'Can change order',9,'change_order'),(35,'Can delete order',9,'delete_order'),(36,'Can view order',9,'view_order'),(37,'Can add order item',10,'add_orderitem'),(38,'Can change order item',10,'change_orderitem'),(39,'Can delete order item',10,'delete_orderitem'),(40,'Can view order item',10,'view_orderitem'),(41,'Can add customer',11,'add_customer'),(42,'Can change customer',11,'change_customer'),(43,'Can delete customer',11,'delete_customer'),(44,'Can view customer',11,'view_customer'),(45,'Can add product',12,'add_product'),(46,'Can change product',12,'change_product'),(47,'Can delete product',12,'delete_product'),(48,'Can view product',12,'view_product'),(49,'Can add order',13,'add_order'),(50,'Can change order',13,'change_order'),(51,'Can delete order',13,'delete_order'),(52,'Can view order',13,'view_order');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$yyBiM4MYGKVAP3t6zQUiPa$VQ9KhVHa5IY2gaA94VWuuErt23PxaKzQTBJLGTzcIJ8=','2024-02-26 07:56:48.093597',1,'ruslan','','','',1,1,'2024-02-26 07:55:20.425879');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'myapp','customer'),(13,'myapp','order'),(12,'myapp','product'),(6,'sessions','session'),(7,'shopapp','client'),(9,'shopapp','order'),(10,'shopapp','orderitem'),(8,'shopapp','product');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-20 09:26:36.099810'),(2,'auth','0001_initial','2024-02-20 09:26:36.437103'),(3,'admin','0001_initial','2024-02-20 09:26:36.494322'),(4,'admin','0002_logentry_remove_auto_add','2024-02-20 09:26:36.499325'),(5,'admin','0003_logentry_add_action_flag_choices','2024-02-20 09:26:36.504326'),(6,'contenttypes','0002_remove_content_type_name','2024-02-20 09:26:36.545968'),(7,'auth','0002_alter_permission_name_max_length','2024-02-20 09:26:36.570290'),(8,'auth','0003_alter_user_email_max_length','2024-02-20 09:26:36.585061'),(9,'auth','0004_alter_user_username_opts','2024-02-20 09:26:36.590050'),(10,'auth','0005_alter_user_last_login_null','2024-02-20 09:26:36.618327'),(11,'auth','0006_require_contenttypes_0002','2024-02-20 09:26:36.618327'),(12,'auth','0007_alter_validators_add_error_messages','2024-02-20 09:26:36.627448'),(13,'auth','0008_alter_user_username_max_length','2024-02-20 09:26:36.654511'),(14,'auth','0009_alter_user_last_name_max_length','2024-02-20 09:26:36.682494'),(15,'auth','0010_alter_group_name_max_length','2024-02-20 09:26:36.696059'),(16,'auth','0011_update_proxy_permissions','2024-02-20 09:26:36.701050'),(17,'auth','0012_alter_user_first_name_max_length','2024-02-20 09:26:36.730607'),(18,'sessions','0001_initial','2024-02-20 09:26:36.746662'),(19,'shopapp','0001_initial','2024-02-20 09:26:36.847221'),(20,'myapp','0001_initial','2024-02-20 15:29:44.820688'),(21,'myapp','0002_rename_customer_name_customer_name','2024-02-20 15:29:44.830689'),(22,'myapp','0003_rename_product_order_products','2024-02-20 15:29:44.841689'),(23,'shopapp','0002_product_image_alter_order_products','2024-02-26 09:50:12.109135'),(24,'shopapp','0003_alter_order_products','2024-02-26 09:50:12.110136'),(25,'shopapp','0004_alter_product_image','2024-02-26 09:50:12.112136');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7650v4au0kmdjl1vkr3zxmhgrveaiods','.eJxVjEsOwjAMRO-SNYqSxsUJS_acobJjlxZQIvWzQtydVuoCpFnNezNv09G6DN0669SNYi7Gm9Nvx5SfWnYgDyr3anMtyzSy3RV70Nnequjrerh_BwPNw7ZWFzFjPBN7JIlNo4kdAkgbQEhd8rCFoY_a9tm1CIwKPsXAEBCz-XwB1nM3Ug:1reVqy:2TLrJDFllKp5-kR-gpAtavTJhxxqR--K5eHQ4ScmbMY','2024-03-11 07:56:48.095598');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_customer`
--

DROP TABLE IF EXISTS `myapp_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `phone` int NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `date_registration` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_customer`
--

LOCK TABLES `myapp_customer` WRITE;
/*!40000 ALTER TABLE `myapp_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_order`
--

DROP TABLE IF EXISTS `myapp_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `total` decimal(8,2) NOT NULL,
  `date_ordered` datetime(6) NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_order_customer_id_96d73435_fk_myapp_customer_id` (`customer_id`),
  CONSTRAINT `myapp_order_customer_id_96d73435_fk_myapp_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `myapp_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_order`
--

LOCK TABLES `myapp_order` WRITE;
/*!40000 ALTER TABLE `myapp_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_order_products`
--

DROP TABLE IF EXISTS `myapp_order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_order_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myapp_order_product_order_id_product_id_9509bf9c_uniq` (`order_id`,`product_id`),
  KEY `myapp_order_product_product_id_e8b92f38_fk_myapp_product_id` (`product_id`),
  CONSTRAINT `myapp_order_product_order_id_923e36a3_fk_myapp_order_id` FOREIGN KEY (`order_id`) REFERENCES `myapp_order` (`id`),
  CONSTRAINT `myapp_order_product_product_id_e8b92f38_fk_myapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `myapp_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_order_products`
--

LOCK TABLES `myapp_order_products` WRITE;
/*!40000 ALTER TABLE `myapp_order_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_product`
--

DROP TABLE IF EXISTS `myapp_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `count` int NOT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_product`
--

LOCK TABLES `myapp_product` WRITE;
/*!40000 ALTER TABLE `myapp_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `myapp_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopapp_client`
--

DROP TABLE IF EXISTS `shopapp_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_client` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `date_registered` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_client`
--

LOCK TABLES `shopapp_client` WRITE;
/*!40000 ALTER TABLE `shopapp_client` DISABLE KEYS */;
INSERT INTO `shopapp_client` VALUES (1,'name1','name1@mail.ru','72310459687','address1','2024-02-20 09:34:07.996080'),(2,'name2','name2@mail.ru','74016573892','address2','2024-02-20 09:34:08.010083'),(4,'name4','name4@mail.ru','75167409238','address4','2024-02-20 09:34:08.024085'),(5,'name5','name5@mail.ru','71540836972','address5','2024-02-20 09:34:08.030742'),(6,'name1','name1@mail.ru','78097524316','address1','2024-02-20 09:37:33.228446'),(8,'name3','name3@mail.ru','74731692058','address3','2024-02-20 09:37:33.244496'),(9,'name4','name4@mail.ru','72384109765','address4','2024-02-20 09:37:33.249497'),(11,'Екатерина','email1@mail.ru','89512141561','address1','2024-02-20 13:59:25.708837'),(12,'Дмитрий','email2@mail.ru','89510353880','address2','2024-02-20 13:59:25.710837'),(13,'Екатерина','email3@mail.ru','89514370474','address3','2024-02-20 13:59:25.712838'),(14,'Дарья','email4@mail.ru','89516951363','address4','2024-02-20 13:59:25.714838'),(16,'Ivan','Ivan@mail.com','98978','Moskow','2024-02-22 19:53:36.900037');
/*!40000 ALTER TABLE `shopapp_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopapp_order`
--

DROP TABLE IF EXISTS `shopapp_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_ordered` datetime(6) NOT NULL,
  `client_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shopapp_order_client_id_a18af566_fk_shopapp_client_id` (`client_id`),
  CONSTRAINT `shopapp_order_client_id_a18af566_fk_shopapp_client_id` FOREIGN KEY (`client_id`) REFERENCES `shopapp_client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_order`
--

LOCK TABLES `shopapp_order` WRITE;
/*!40000 ALTER TABLE `shopapp_order` DISABLE KEYS */;
INSERT INTO `shopapp_order` VALUES (1,'2024-02-20 09:34:08.003081',1),(2,'2024-02-20 09:34:08.015092',2),(4,'2024-02-20 09:34:08.028741',4),(5,'2024-02-20 09:34:08.034822',5),(6,'2024-02-20 09:37:33.239504',1),(7,'2024-02-20 09:37:33.244496',2),(9,'2024-02-20 09:37:33.254499',4),(10,'2024-02-20 09:37:33.259501',5);
/*!40000 ALTER TABLE `shopapp_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopapp_orderitem`
--

DROP TABLE IF EXISTS `shopapp_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_number` int NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shopapp_orderitem_order_id_034b6f53_fk_shopapp_order_id` (`order_id`),
  KEY `shopapp_orderitem_product_id_9f1a928c_fk_shopapp_product_id` (`product_id`),
  CONSTRAINT `shopapp_orderitem_order_id_034b6f53_fk_shopapp_order_id` FOREIGN KEY (`order_id`) REFERENCES `shopapp_order` (`id`),
  CONSTRAINT `shopapp_orderitem_product_id_9f1a928c_fk_shopapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `shopapp_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_orderitem`
--

LOCK TABLES `shopapp_orderitem` WRITE;
/*!40000 ALTER TABLE `shopapp_orderitem` DISABLE KEYS */;
INSERT INTO `shopapp_orderitem` VALUES (1,5,1,1),(2,4,1,2),(3,4,1,3),(4,5,1,4),(5,4,1,5),(6,3,2,1),(7,2,2,2),(8,4,2,3),(9,2,2,4),(10,2,2,5),(16,2,4,1),(17,4,4,2),(18,5,4,3),(19,1,4,4),(20,2,4,5),(21,3,5,1),(22,1,5,2),(23,4,5,3),(24,2,5,4),(25,5,5,5),(26,4,1,1),(27,4,1,2),(28,1,1,3),(29,4,1,4),(30,3,1,5),(31,4,1,6),(32,5,1,7),(33,1,1,8),(34,1,1,9),(35,5,1,10),(36,2,2,1),(37,3,2,2),(38,1,2,3),(39,3,2,4),(40,3,2,5),(41,3,2,6),(42,5,2,7),(43,3,2,8),(44,3,2,9),(45,1,2,10),(56,4,4,1),(57,5,4,2),(58,5,4,3),(59,1,4,4),(60,1,4,5),(61,4,4,6),(62,4,4,7),(63,5,4,8),(64,3,4,9),(65,2,4,10),(66,1,5,1),(67,2,5,2),(68,2,5,3),(69,4,5,4),(70,3,5,5),(71,4,5,6),(72,1,5,7),(73,5,5,8),(74,5,5,9),(75,5,5,10),(76,4,6,1),(77,3,6,2),(78,3,6,3),(79,4,6,4),(80,4,6,5),(81,5,6,6),(82,2,6,7),(83,4,6,8),(84,1,6,9),(85,2,6,10),(86,4,7,1),(87,3,7,2),(88,1,7,3),(89,4,7,4),(90,4,7,5),(91,5,7,6),(92,4,7,7),(93,4,7,8),(94,1,7,9),(95,2,7,10),(106,4,9,1),(107,2,9,2),(108,2,9,3),(109,4,9,4),(110,1,9,5),(111,5,9,6),(112,4,9,7),(113,4,9,8),(114,3,9,9),(115,2,9,10),(116,5,10,1),(117,4,10,2),(118,5,10,3),(119,4,10,4),(120,3,10,5),(121,3,10,6),(122,5,10,7),(123,2,10,8),(124,3,10,9),(125,1,10,10);
/*!40000 ALTER TABLE `shopapp_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopapp_product`
--

DROP TABLE IF EXISTS `shopapp_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `date_added` date NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_product`
--

LOCK TABLES `shopapp_product` WRITE;
/*!40000 ALTER TABLE `shopapp_product` DISABLE KEYS */;
INSERT INTO `shopapp_product` VALUES (1,'product1','description1',82.00,1,'2024-02-20',NULL),(2,'product2','description2',66.00,5,'2024-02-20',NULL),(3,'яйцо','с',21.00,10,'2024-02-20',''),(4,'картошка','krasnodar',40.00,4,'2024-02-20',''),(5,'product5','description5',41.00,8,'2024-02-20',NULL),(6,'product1','description1',95.00,7,'2024-02-20',NULL),(7,'product2','description2',34.00,6,'2024-02-20',NULL),(8,'product3','description3',36.00,6,'2024-02-20',NULL),(9,'product4','description4',44.00,10,'2024-02-20',NULL),(10,'product5','description5',54.00,7,'2024-02-20',NULL),(11,'морковь','свежая',50.00,2,'2024-02-22',''),(12,'лук','свежая',50.00,2,'2024-02-22','product_images/sect1_1_tablet.png');
/*!40000 ALTER TABLE `shopapp_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'shop_database'
--

--
-- Dumping routines for database 'shop_database'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-26 19:05:42
