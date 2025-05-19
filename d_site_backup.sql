-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: d_site
-- ------------------------------------------------------
-- Server version	8.0.38

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add slide',7,'add_slide'),(26,'Can change slide',7,'change_slide'),(27,'Can delete slide',7,'delete_slide'),(28,'Can view slide',7,'view_slide'),(29,'Can add 团队管理',8,'add_team'),(30,'Can change 团队管理',8,'change_team'),(31,'Can delete 团队管理',8,'delete_team'),(32,'Can view 团队管理',8,'view_team'),(33,'Can add 分类管理',9,'add_categrory'),(34,'Can change 分类管理',9,'change_categrory'),(35,'Can delete 分类管理',9,'delete_categrory'),(36,'Can view 分类管理',9,'view_categrory'),(37,'Can add 新闻管理',10,'add_news'),(38,'Can change 新闻管理',10,'change_news'),(39,'Can delete 新闻管理',10,'delete_news'),(40,'Can view 新闻管理',10,'view_news');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$RdoZSZR9AUva8gsZA8TLZD$KdEUCsfspxF7qZ770C6/yIcnbcvjQcQ9AhPYJR3C3Qo=','2025-05-06 10:19:53.877111',1,'admin','','','qiull@163.com',1,1,'2025-03-10 01:28:41.132793');
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
-- Table structure for table `categrory`
--

DROP TABLE IF EXISTS `categrory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categrory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categrory`
--

LOCK TABLES `categrory` WRITE;
/*!40000 ALTER TABLE `categrory` DISABLE KEYS */;
INSERT INTO `categrory` VALUES (1,'新闻'),(2,'企业集团'),(3,'移动金融'),(4,'设计建筑');
/*!40000 ALTER TABLE `categrory` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-03-10 12:22:12.472439','1','Slide object (1)',1,'[{\"added\": {}}]',7,1),(2,'2025-03-12 08:02:50.519875','1','王小明',1,'[{\"added\": {}}]',8,1),(3,'2025-03-12 08:03:14.687312','2','李小红',1,'[{\"added\": {}}]',8,1),(4,'2025-03-12 08:03:52.811273','3','张小军',1,'[{\"added\": {}}]',8,1),(5,'2025-03-12 08:04:27.579019','4','林欣北',1,'[{\"added\": {}}]',8,1),(6,'2025-03-12 08:11:05.788078','2','Slide object (2)',1,'[{\"added\": {}}]',7,1),(7,'2025-03-12 08:11:36.056612','3','Slide object (3)',1,'[{\"added\": {}}]',7,1),(8,'2025-03-12 08:13:22.868053','3','Slide object (3)',3,'',7,1),(9,'2025-03-12 08:13:22.868053','2','Slide object (2)',3,'',7,1),(10,'2025-03-12 08:18:03.345951','5','林青衣',1,'[{\"added\": {}}]',8,1),(11,'2025-03-12 08:20:04.815428','5','林青衣',3,'',8,1),(12,'2025-03-12 08:37:27.214821','4','Slide object (4)',1,'[{\"added\": {}}]',7,1),(13,'2025-03-12 08:38:04.048304','5','Slide object (5)',1,'[{\"added\": {}}]',7,1),(14,'2025-03-12 09:15:52.004066','5','Slide object (5)',3,'',7,1),(15,'2025-03-12 09:15:52.004066','4','Slide object (4)',3,'',7,1),(16,'2025-03-12 09:18:35.831952','6','Slide object (6)',1,'[{\"added\": {}}]',7,1),(17,'2025-03-12 09:18:46.359224','7','Slide object (7)',1,'[{\"added\": {}}]',7,1),(18,'2025-03-12 09:38:35.445206','7','Slide object (7)',2,'[{\"changed\": {\"fields\": [\"\\u6807\\u9898\", \"\\u5185\\u5bb9\"]}}]',7,1),(19,'2025-03-12 09:38:52.857127','6','Slide object (6)',2,'[{\"changed\": {\"fields\": [\"\\u6807\\u9898\", \"\\u5185\\u5bb9\"]}}]',7,1),(20,'2025-03-26 11:45:29.375839','1','新闻',1,'[{\"added\": {}}]',9,1),(21,'2025-03-26 11:45:35.859186','2','企业集团',1,'[{\"added\": {}}]',9,1),(22,'2025-03-26 11:45:45.714551','3','移动金融',1,'[{\"added\": {}}]',9,1),(23,'2025-03-26 11:46:07.255663','4','设计建筑',1,'[{\"added\": {}}]',9,1),(24,'2025-03-26 11:52:26.086971','1','什么事伪静态？伪静态有',1,'[{\"added\": {}}]',10,1),(25,'2025-03-26 11:52:50.486995','2','SEO网站的基本术语',1,'[{\"added\": {}}]',10,1),(26,'2025-03-26 11:53:10.269754','3','网站建设中常见的五大问题',1,'[{\"added\": {}}]',10,1),(27,'2025-05-06 11:47:36.025430','4','小林',2,'[{\"changed\": {\"fields\": [\"\\u59d3\\u540d\"]}}]',8,1),(28,'2025-05-06 11:47:48.728936','3','小军',2,'[{\"changed\": {\"fields\": [\"\\u59d3\\u540d\"]}}]',8,1),(29,'2025-05-06 11:47:59.463319','2','小红',2,'[{\"changed\": {\"fields\": [\"\\u59d3\\u540d\"]}}]',8,1),(30,'2025-05-06 11:48:25.160217','1','小李',2,'[{\"changed\": {\"fields\": [\"\\u59d3\\u540d\"]}}]',8,1),(31,'2025-05-06 11:49:27.839731','6','Slide object (6)',2,'[{\"changed\": {\"fields\": [\"\\u6807\\u9898\", \"\\u5185\\u5bb9\"]}}]',7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'news','categrory'),(10,'news','news'),(6,'sessions','session'),(7,'slide','slide'),(8,'team','team');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-03-10 01:16:56.516572'),(2,'auth','0001_initial','2025-03-10 01:16:57.436580'),(3,'admin','0001_initial','2025-03-10 01:16:57.612690'),(4,'admin','0002_logentry_remove_auto_add','2025-03-10 01:16:57.619782'),(5,'admin','0003_logentry_add_action_flag_choices','2025-03-10 01:16:57.626790'),(6,'contenttypes','0002_remove_content_type_name','2025-03-10 01:16:57.718445'),(7,'auth','0002_alter_permission_name_max_length','2025-03-10 01:16:57.790619'),(8,'auth','0003_alter_user_email_max_length','2025-03-10 01:16:57.812691'),(9,'auth','0004_alter_user_username_opts','2025-03-10 01:16:57.818788'),(10,'auth','0005_alter_user_last_login_null','2025-03-10 01:16:57.886826'),(11,'auth','0006_require_contenttypes_0002','2025-03-10 01:16:57.889348'),(12,'auth','0007_alter_validators_add_error_messages','2025-03-10 01:16:57.897899'),(13,'auth','0008_alter_user_username_max_length','2025-03-10 01:16:57.984594'),(14,'auth','0009_alter_user_last_name_max_length','2025-03-10 01:16:58.107969'),(15,'auth','0010_alter_group_name_max_length','2025-03-10 01:16:58.130536'),(16,'auth','0011_update_proxy_permissions','2025-03-10 01:16:58.139236'),(17,'auth','0012_alter_user_first_name_max_length','2025-03-10 01:16:58.240894'),(18,'sessions','0001_initial','2025-03-10 01:16:58.288727'),(19,'slide','0001_initial','2025-03-10 02:50:14.273514'),(20,'slide','0002_alter_slide_image','2025-03-11 12:56:54.526595'),(21,'team','0001_initial','2025-03-11 12:56:54.575857'),(22,'news','0001_initial','2025-03-12 11:52:16.612642'),(23,'news','0002_alter_news_content','2025-03-12 12:48:15.157987');
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
INSERT INTO `django_session` VALUES ('9nbwnpi9mtpzil33ceylkpzdbw9ufgg5','.eJxVjMsOwiAUBf-FtSFAi4JL9_0Gch9cqRqalHZl_HfbpAvdzsw5b5VgXUpaW57TyOqqrDr9MgR65roLfkC9T5qmuswj6j3Rh216mDi_bkf7d1CglW3tUNhIcF3wxqJFyRTJGJDed5gliifgwGcXIfZOnI9yceiJjA0bFPX5Av-1OGY:1uCFOz:ckpeaNctPvMucvlI-u_JtNvLXbaHshxDv4aUMOvIjU8','2025-05-20 10:19:53.885112'),('ke5w42ycia1b2m67wdhlun8u1llv7grh','.eJxVjMsOwiAUBf-FtSFAi4JL9_0Gch9cqRqalHZl_HfbpAvdzsw5b5VgXUpaW57TyOqqrDr9MgR65roLfkC9T5qmuswj6j3Rh216mDi_bkf7d1CglW3tUNhIcF3wxqJFyRTJGJDed5gliifgwGcXIfZOnI9yceiJjA0bFPX5Av-1OGY:1trS0E:7zEdzQtTYKQuz4NA8dUn5m8w5w0zqHTc3Go5CVzVHBU','2025-03-24 01:32:22.752994'),('rx4xwcsitfxo94zjsylepn4hcjoxy3pz','.eJxVjMsOwiAUBf-FtSFAi4JL9_0Gch9cqRqalHZl_HfbpAvdzsw5b5VgXUpaW57TyOqqrDr9MgR65roLfkC9T5qmuswj6j3Rh216mDi_bkf7d1CglW3tUNhIcF3wxqJFyRTJGJDed5gliifgwGcXIfZOnI9yceiJjA0bFPX5Av-1OGY:1txOzK:H2JoE_dDDgD8DGWW-eqkvBGh-WRpTZDeexNxx1qO3H0','2025-04-09 11:32:02.223393');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_category_id_798ee23f_fk_categrory_id` (`category_id`),
  CONSTRAINT `news_category_id_798ee23f_fk_categrory_id` FOREIGN KEY (`category_id`) REFERENCES `categrory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'什么事伪静态？伪静态有','<p>&zwnj;伪静态是指模拟静态网页地址的技术，其本质是动态网页&zwnj;。它通过URL重写技术，将动态网页的URL转换成静态网页的URL形式，例如将index.php?id=123转换成article/123.html&zwnj;。</p>','news/z-1.jpeg','2025-03-26 11:52:26.085966','2025-03-26 11:52:26.085966',1),(2,'SEO网站的基本术语','<p>SEO（搜索引擎优化）&zwnj;定义：一种通过优化网站内容、结构和链接等因素，提高网站在搜索引擎中的可见性和排名的技术&zwnj;。&zwnj;白帽SEO&zwnj;定义：采用正常的SEO思维，符合用户体验的思路和搜索引擎优化规则来提高网站排名的方法&zwnj;。</p>','news/z-2.jpeg','2025-03-26 11:52:50.484013','2025-03-26 11:52:50.484013',1),(3,'网站建设中常见的五大问题','<p>服务器稳定性问题&zwnj;核心描述&zwnj;：服务器不稳定会直接导致网站无法打开或打开缓慢，影响搜索引擎的友好性，也会造成大量用户流失。解决方案&zwnj;：定期维护服务器，确保其稳定性，并备份重要数据，避免数据丢失和密码泄露等问题&zwnj;。</p>','news/z-3.jpeg','2025-03-26 11:53:10.268243','2025-03-26 11:53:10.268243',1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slide_slide`
--

DROP TABLE IF EXISTS `slide_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slide_slide` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slide_slide`
--

LOCK TABLES `slide_slide` WRITE;
/*!40000 ALTER TABLE `slide_slide` DISABLE KEYS */;
INSERT INTO `slide_slide` VALUES (1,'media/1.jpeg','十年高端网站设计经验，用创新点缀人生，让科技融入理想。','科技创新大平台，智慧生活新引擎。依靠科技进步推进经济跨越式发展。永创新点缀人生，让科技融入理想'),(6,'media/2_MEsQego.jpg','00000001','且看'),(7,'media/3_HKq74ik.jpg','试试就试试','1111111111111111111111111');
/*!40000 ALTER TABLE `slide_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `rank` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'team/1.jpeg','小李','前端工程师',1),(2,'team/2.jpeg','小红','后端工程师',2),(3,'team/3.jpeg','小军','UI设计师',3),(4,'team/4.jpeg','小林','项目架构师',4);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-07 20:03:23
