CREATE DATABASE  IF NOT EXISTS `notas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `notas`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: notas
-- ------------------------------------------------------
-- Server version	5.6.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add tbl1 paciente',8,'add_tbl1paciente'),(23,'Can change tbl1 paciente',8,'change_tbl1paciente'),(24,'Can delete tbl1 paciente',8,'delete_tbl1paciente'),(25,'Can add tbl2 nota',9,'add_tbl2nota'),(26,'Can change tbl2 nota',9,'change_tbl2nota'),(27,'Can delete tbl2 nota',9,'delete_tbl2nota'),(31,'Can add tbl3 ingreso',11,'add_tbl3ingreso'),(32,'Can change tbl3 ingreso',11,'change_tbl3ingreso'),(33,'Can delete tbl3 ingreso',11,'delete_tbl3ingreso'),(34,'Can add cie10',12,'add_cie10'),(35,'Can change cie10',12,'change_cie10'),(36,'Can delete cie10',12,'delete_cie10'),(37,'Can add ca_camas',13,'add_ca_camas'),(38,'Can change ca_camas',13,'change_ca_camas'),(39,'Can delete ca_camas',13,'delete_ca_camas'),(40,'Can add estructura ech',14,'add_estructuraech'),(41,'Can change estructura ech',14,'change_estructuraech'),(42,'Can delete estructura ech',14,'delete_estructuraech'),(43,'Can add tbl2 evolucion',15,'add_tbl2evolucion'),(44,'Can change tbl2 evolucion',15,'change_tbl2evolucion'),(45,'Can delete tbl2 evolucion',15,'delete_tbl2evolucion'),(46,'Can add tbl2 revision',16,'add_tbl2revision'),(47,'Can change tbl2 revision',16,'change_tbl2revision'),(48,'Can delete tbl2 revision',16,'delete_tbl2revision'),(49,'Can add tbl4 inter',17,'add_tbl4inter'),(50,'Can change tbl4 inter',17,'change_tbl4inter'),(51,'Can delete tbl4 inter',17,'delete_tbl4inter'),(52,'Can add tbl5 preop',18,'add_tbl5preop'),(53,'Can change tbl5 preop',18,'change_tbl5preop'),(54,'Can delete tbl5 preop',18,'delete_tbl5preop'),(55,'Can add tbl6 egreso',19,'add_tbl6egreso'),(56,'Can change tbl6 egreso',19,'change_tbl6egreso'),(57,'Can delete tbl6 egreso',19,'delete_tbl6egreso'),(58,'Can add cama paciente',20,'add_camapaciente'),(59,'Can change cama paciente',20,'change_camapaciente'),(60,'Can delete cama paciente',20,'delete_camapaciente'),(61,'Can add tbl1 identificacion',21,'add_tbl1identificacion'),(62,'Can change tbl1 identificacion',21,'change_tbl1identificacion'),(63,'Can delete tbl1 identificacion',21,'delete_tbl1identificacion'),(64,'Can add ingreso ant',22,'add_ingresoant'),(65,'Can change ingreso ant',22,'change_ingresoant'),(66,'Can delete ingreso ant',22,'delete_ingresoant'),(67,'Can add ingreso patologia',23,'add_ingresopatologia'),(68,'Can change ingreso patologia',23,'change_ingresopatologia'),(69,'Can delete ingreso patologia',23,'delete_ingresopatologia'),(70,'Can add ingreso exploracion',24,'add_ingresoexploracion'),(71,'Can change ingreso exploracion',24,'change_ingresoexploracion'),(72,'Can delete ingreso exploracion',24,'delete_ingresoexploracion'),(73,'Can add ingreso lab g ab',25,'add_ingresolabgab'),(74,'Can change ingreso lab g ab',25,'change_ingresolabgab'),(75,'Can delete ingreso lab g ab',25,'delete_ingresolabgab'),(76,'Can add ingreso diag',26,'add_ingresodiag'),(77,'Can change ingreso diag',26,'change_ingresodiag'),(78,'Can delete ingreso diag',26,'delete_ingresodiag');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'dante','','','dante.arkade7@gmail.com','pbkdf2_sha256$10000$Iql8wr0ObLwE$/6HvVjtIWNAmnOH8JEIwpxpI1QLe/YXcqtEEyOfxJy0=',1,1,1,'2015-06-24 10:52:57','2015-02-16 06:54:53');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_camas`
--

DROP TABLE IF EXISTS `ca_camas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_camas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seccion` varchar(765) NOT NULL,
  `cama` varchar(765) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_camas`
--

LOCK TABLES `ca_camas` WRITE;
/*!40000 ALTER TABLE `ca_camas` DISABLE KEYS */;
INSERT INTO `ca_camas` VALUES (1,'5to sur','501a'),(2,'5to sur','501b'),(3,'5to sur','502'),(4,'5to sur','503'),(5,'5to sur','504'),(6,'5to sur','505'),(7,'5to sur','506'),(8,'5to sur','507'),(9,'5to sur','508'),(10,'5to sur','509'),(11,'5to sur','510'),(12,'5to sur','511'),(13,'5to sur','512'),(14,'5to sur','513'),(15,'5to sur','514'),(16,'5to sur','515'),(17,'5to sur','516'),(18,'5to sur','517'),(19,'5to sur','518'),(20,'5to sur','519'),(21,'5to sur','520'),(22,'5to sur','521'),(23,'5to sur','522'),(24,'5to sur','523'),(25,'5to sur','524'),(26,'5to sur','525'),(27,'5to sur','526'),(28,'5to sur','527'),(29,'5to norte','528'),(30,'5to norte','529'),(31,'5to norte','530'),(32,'5to norte','531'),(33,'5to norte','532'),(34,'5to norte','533'),(35,'5to norte','534'),(36,'5to norte','535'),(37,'5to norte','536'),(38,'5to norte','537'),(39,'5to norte','538'),(40,'5to norte','539'),(41,'5to norte','540'),(42,'5to norte','541'),(43,'5to norte','542'),(44,'5to norte','543'),(45,'5to norte','544'),(46,'5to norte','545'),(47,'5to norte','546'),(48,'5to norte','547'),(49,'5to norte','548'),(50,'5to norte','549'),(51,'5to norte','550'),(52,'5to norte','551'),(53,'5to norte','552'),(54,'5to norte','553'),(55,'5to norte','554'),(56,'6to sur','601a'),(57,'6to sur','601b'),(58,'6to sur','602'),(59,'6to sur','603'),(60,'6to sur','604'),(61,'6to sur','605'),(62,'6to sur','606'),(63,'6to sur','607'),(64,'6to sur','608'),(65,'6to sur','609'),(66,'6to sur','610'),(67,'6to sur','611'),(68,'6to sur','612'),(69,'6to sur','613'),(70,'6to sur','614'),(71,'6to sur','615'),(72,'6to sur','616'),(73,'6to sur','617'),(74,'6to sur','618'),(75,'6to sur','619'),(76,'6to sur','620'),(77,'6to sur','621'),(78,'6to sur','622'),(79,'6to sur','623'),(80,'6to sur','624'),(81,'6to sur','625'),(82,'6to sur','626'),(83,'6to sur','627'),(84,'6to norte','628'),(85,'6to norte','629'),(86,'6to norte','630'),(87,'6to norte','631'),(88,'6to norte','632'),(89,'6to norte','633'),(90,'6to norte','634'),(91,'6to norte','635'),(92,'6to norte','636'),(93,'6to norte','637'),(94,'6to norte','638'),(95,'6to norte','639'),(96,'6to norte','640'),(97,'6to norte','641'),(98,'6to norte','642'),(99,'6to norte','643'),(100,'6to norte','644'),(101,'6to norte','645'),(102,'6to norte','646'),(103,'6to norte','647'),(104,'6to norte','648'),(105,'6to norte','649'),(106,'6to norte','650'),(107,'6to norte','651'),(108,'6to norte','652'),(109,'6to norte','653'),(110,'6to norte','654');
/*!40000 ALTER TABLE `ca_camas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cama_paciente`
--

DROP TABLE IF EXISTS `cama_paciente`;
/*!50001 DROP VIEW IF EXISTS `cama_paciente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cama_paciente` AS SELECT 
 1 AS `id`,
 1 AS `seccion`,
 1 AS `cama`,
 1 AS `nss`,
 1 AS `nombre`,
 1 AS `status`,
 1 AS `pronostico`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cie_10`
--

DROP TABLE IF EXISTS `cie_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cie_10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Clave` varchar(765) NOT NULL,
  `Nombre` varchar(765) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cie_10`
--

LOCK TABLES `cie_10` WRITE;
/*!40000 ALTER TABLE `cie_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `cie_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'tbl1 paciente','captura','tbl1paciente'),(9,'tbl2 nota','captura','tbl2nota'),(11,'tbl3 ingreso','captura','tbl3ingreso'),(12,'cie10','captura','cie10'),(13,'ca_camas','captura','ca_camas'),(14,'estructura ech','captura','estructuraech'),(15,'tbl2 evolucion','captura','tbl2evolucion'),(16,'tbl2 revision','captura','tbl2revision'),(17,'tbl4 inter','captura','tbl4inter'),(18,'tbl5 preop','captura','tbl5preop'),(19,'tbl6 egreso','captura','tbl6egreso'),(20,'cama paciente','captura','camapaciente'),(21,'tbl1 identificacion','captura','tbl1identificacion'),(22,'ingreso ant','captura','ingresoant'),(23,'ingreso patologia','captura','ingresopatologia'),(24,'ingreso exploracion','captura','ingresoexploracion'),(25,'ingreso lab g ab','captura','ingresolabgab'),(26,'ingreso diag','captura','ingresodiag');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('03986182e137ca8d521bee448a5c3621','ODYzOThlN2RiNmFlZjFjODg3YzBiZTcxZmMwODE5MDlmOGI3NGFiMzqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWSKAQFVB3VzdWFyaW9YBQAAAGRhbnRlVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5j\nb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kVQRjYW1hWAQAAAA1MDFicQJVA25zc1gQ\nAAAAMzAwODg2MTAzNzFNODZPUnEDVQVzdGFmZoh1Lg==\n','2015-07-08 11:45:10'),('0f85d3f8989513007226310ca19cf3bf','YzM4ZjkyYTVlZjJmZWVjODBiOTU4MzMxMjBlOTFiMjUxYzEwNWJiODqAAn1xAShVBXN0YWZmiFUS\nX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFj\na2VuZHECVQ1fYXV0aF91c2VyX2lkigEBVQd1c3VhcmlvWAUAAABkYW50ZXEDdS4=\n','2015-06-17 10:22:26'),('3247548720de5bf0f214b11f4f0b7b37','YzM4ZjkyYTVlZjJmZWVjODBiOTU4MzMxMjBlOTFiMjUxYzEwNWJiODqAAn1xAShVBXN0YWZmiFUS\nX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFj\na2VuZHECVQ1fYXV0aF91c2VyX2lkigEBVQd1c3VhcmlvWAUAAABkYW50ZXEDdS4=\n','2015-03-13 21:13:46'),('5ad0d876121240a355966d19e8f4c22c','YzM4ZjkyYTVlZjJmZWVjODBiOTU4MzMxMjBlOTFiMjUxYzEwNWJiODqAAn1xAShVBXN0YWZmiFUS\nX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFj\na2VuZHECVQ1fYXV0aF91c2VyX2lkigEBVQd1c3VhcmlvWAUAAABkYW50ZXEDdS4=\n','2015-06-05 18:52:41'),('9b377c78e3ff1fd947af812b8955100b','YjRlMzNjNTNjM2M3YThlZGQ2NmFjM2M2MjEzNjdjZTA1OTk1Yjk2YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAlUN\nX2F1dGhfdXNlcl9pZIoBAXUu\n','2015-03-05 13:52:29'),('9d6cdba5b3b3ee570db7429b9fa56632','YzM4ZjkyYTVlZjJmZWVjODBiOTU4MzMxMjBlOTFiMjUxYzEwNWJiODqAAn1xAShVBXN0YWZmiFUS\nX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFj\na2VuZHECVQ1fYXV0aF91c2VyX2lkigEBVQd1c3VhcmlvWAUAAABkYW50ZXEDdS4=\n','2015-06-10 11:57:47'),('9e8dec21ad25ca91951e408e643fd823','ZWY4ZGUwZWZhZDBhNDI5ZTBjMjEzMGQ1NDE0YTVhMWE1NDVjNmNhMzqAAn1xAShVBXN0YWZmcQKI\nVRJfYXV0aF91c2VyX2JhY2tlbmRxA1UpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2Rl\nbEJhY2tlbmRxBFUNX2F1dGhfdXNlcl9pZHEFigEBVQd1c3VhcmlvcQZYBQAAAGRhbnRlcQd1Lg==\n','2015-04-18 19:49:39'),('ddeef5696968f95d1ed524106407412f','NmU1YzYyYWYwNWE4MGFmZjY1YjQxMmYyNjczYWJlOWJjN2E4MmY3NDqAAn1xAShVBGNhbWFYBAAA\nADUwMWJxAlUFc3RhZmaIVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGgu\nYmFja2VuZHMuTW9kZWxCYWNrZW5kVQ1fYXV0aF91c2VyX2lkigEBVQd1c3VhcmlvWAUAAABkYW50\nZXUu\n','2015-07-03 19:29:34'),('e9687bf4b0203365116893126ad85d05','ZWY4ZGUwZWZhZDBhNDI5ZTBjMjEzMGQ1NDE0YTVhMWE1NDVjNmNhMzqAAn1xAShVBXN0YWZmcQKI\nVRJfYXV0aF91c2VyX2JhY2tlbmRxA1UpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2Rl\nbEJhY2tlbmRxBFUNX2F1dGhfdXNlcl9pZHEFigEBVQd1c3VhcmlvcQZYBQAAAGRhbnRlcQd1Lg==\n','2015-03-31 19:02:44');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estructura_ech`
--

DROP TABLE IF EXISTS `estructura_ech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estructura_ech` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estructura_ech`
--

LOCK TABLES `estructura_ech` WRITE;
/*!40000 ALTER TABLE `estructura_ech` DISABLE KEYS */;
INSERT INTO `estructura_ech` VALUES (2,'Historia clínica','HCantecedentes'),(3,'Notas de ingreso','antecedentes'),(4,'Notas de revisión','revision'),(5,'Notas de evolución','evolucion'),(6,'Notas de interconsulta','inter'),(7,'Nota pre-operatoria','pre'),(8,'Nota de egreso','egreso'),(9,'Hoja de indicaciones médicas','indicaciones'),(10,'Auxiliares de diagnóstico','auxiliares'),(12,'Carta de consentimiento informado','consentimiento'),(14,'Hoja de notificación al ministerio publico','ministerio'),(16,'Analisis clínico','analisis');
/*!40000 ALTER TABLE `estructura_ech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_antecedentes`
--

DROP TABLE IF EXISTS `hc_antecedentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_antecedentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(135) NOT NULL,
  `antecedentes_heredofamiliares` varchar(135) NOT NULL,
  `antecedentes_personales_no_patologicos` varchar(135) NOT NULL,
  `antecedentes_personales_patologicos` varchar(135) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_antecedentes`
--

LOCK TABLES `hc_antecedentes` WRITE;
/*!40000 ALTER TABLE `hc_antecedentes` DISABLE KEYS */;
INSERT INTO `hc_antecedentes` VALUES (1,'30088610371M86OR','prueba','prueba','prueba'),(2,'30088610371M86OR','prueba','prueba','prueba');
/*!40000 ALTER TABLE `hc_antecedentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_antecedentes_patologicos`
--

DROP TABLE IF EXISTS `hc_antecedentes_patologicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_antecedentes_patologicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(135) NOT NULL,
  `antecedentes_personales_patologicos` varchar(135) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_antecedentes_patologicos`
--

LOCK TABLES `hc_antecedentes_patologicos` WRITE;
/*!40000 ALTER TABLE `hc_antecedentes_patologicos` DISABLE KEYS */;
INSERT INTO `hc_antecedentes_patologicos` VALUES (1,'30088610371M86OR','[{\"elemento\":\"qwe\",\"descripcion\":\"qwe\"}]');
/*!40000 ALTER TABLE `hc_antecedentes_patologicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_diagnostico`
--

DROP TABLE IF EXISTS `hc_diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_diagnostico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(135) NOT NULL,
  `diagnostico_sindromaticos` varchar(135) NOT NULL,
  `diagnostico_nosologico` varchar(135) NOT NULL,
  `diagnostico_diferencial` varchar(135) NOT NULL,
  `apache` varchar(135) NOT NULL,
  `plan_comentario` varchar(135) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_diagnostico`
--

LOCK TABLES `hc_diagnostico` WRITE;
/*!40000 ALTER TABLE `hc_diagnostico` DISABLE KEYS */;
/*!40000 ALTER TABLE `hc_diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_exploracion`
--

DROP TABLE IF EXISTS `hc_exploracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_exploracion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(135) NOT NULL,
  `padecimiento_actual` varchar(135) NOT NULL,
  `ta` varchar(135) NOT NULL,
  `fc` varchar(135) NOT NULL,
  `fr` varchar(135) NOT NULL,
  `temp` varchar(135) NOT NULL,
  `sat` varchar(135) NOT NULL,
  `peso` varchar(135) NOT NULL,
  `talla` varchar(135) NOT NULL,
  `imc` varchar(135) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_exploracion`
--

LOCK TABLES `hc_exploracion` WRITE;
/*!40000 ALTER TABLE `hc_exploracion` DISABLE KEYS */;
INSERT INTO `hc_exploracion` VALUES (1,'30088610371M86OR','1','1','1','1','1','1','1','1','1');
/*!40000 ALTER TABLE `hc_exploracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hc_laboratorio_gabinete`
--

DROP TABLE IF EXISTS `hc_laboratorio_gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hc_laboratorio_gabinete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(135) NOT NULL,
  `laboratorio` varchar(135) NOT NULL,
  `gabinete` varchar(135) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hc_laboratorio_gabinete`
--

LOCK TABLES `hc_laboratorio_gabinete` WRITE;
/*!40000 ALTER TABLE `hc_laboratorio_gabinete` DISABLE KEYS */;
INSERT INTO `hc_laboratorio_gabinete` VALUES (1,'30088610371M86OR','prueba','prueba');
/*!40000 ALTER TABLE `hc_laboratorio_gabinete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingreso_antecedentes`
--

DROP TABLE IF EXISTS `ingreso_antecedentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingreso_antecedentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(135) NOT NULL,
  `antecedentes_heredofamiliares` varchar(135) NOT NULL,
  `antecedentes_personales_no_patologicos` varchar(135) NOT NULL,
  `antecedentes_personales_patologicos` varchar(135) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_antecedentes`
--

LOCK TABLES `ingreso_antecedentes` WRITE;
/*!40000 ALTER TABLE `ingreso_antecedentes` DISABLE KEYS */;
INSERT INTO `ingreso_antecedentes` VALUES (1,'30088610371M86OR','prueba','prueba','prueba');
/*!40000 ALTER TABLE `ingreso_antecedentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingreso_antecedentes_patologicos`
--

DROP TABLE IF EXISTS `ingreso_antecedentes_patologicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingreso_antecedentes_patologicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(135) NOT NULL,
  `antecedentes_personales_patologicos` varchar(135) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_antecedentes_patologicos`
--

LOCK TABLES `ingreso_antecedentes_patologicos` WRITE;
/*!40000 ALTER TABLE `ingreso_antecedentes_patologicos` DISABLE KEYS */;
INSERT INTO `ingreso_antecedentes_patologicos` VALUES (1,'30088610371M86OR','[{\"elemento\":\"qwe\",\"descripcion\":\"qwe\"}]');
/*!40000 ALTER TABLE `ingreso_antecedentes_patologicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingreso_diagnostico`
--

DROP TABLE IF EXISTS `ingreso_diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingreso_diagnostico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(135) NOT NULL,
  `diagnostico_sindromaticos` varchar(135) NOT NULL,
  `diagnostico_nosologico` varchar(135) NOT NULL,
  `diagnostico_diferencial` varchar(135) NOT NULL,
  `apache` varchar(135) NOT NULL,
  `plan_comentario` varchar(135) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_diagnostico`
--

LOCK TABLES `ingreso_diagnostico` WRITE;
/*!40000 ALTER TABLE `ingreso_diagnostico` DISABLE KEYS */;
INSERT INTO `ingreso_diagnostico` VALUES (1,'30088610371M86OR','a','a','a','a','a');
/*!40000 ALTER TABLE `ingreso_diagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingreso_exploracion`
--

DROP TABLE IF EXISTS `ingreso_exploracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingreso_exploracion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(135) NOT NULL,
  `padecimiento_actual` varchar(135) NOT NULL,
  `ta` varchar(135) NOT NULL,
  `fc` varchar(135) NOT NULL,
  `fr` varchar(135) NOT NULL,
  `temp` varchar(135) NOT NULL,
  `sat` varchar(135) NOT NULL,
  `peso` varchar(135) NOT NULL,
  `talla` varchar(135) NOT NULL,
  `imc` varchar(135) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_exploracion`
--

LOCK TABLES `ingreso_exploracion` WRITE;
/*!40000 ALTER TABLE `ingreso_exploracion` DISABLE KEYS */;
INSERT INTO `ingreso_exploracion` VALUES (1,'30088610371M86OR','1','1','1','1','1','1','1','1','1');
/*!40000 ALTER TABLE `ingreso_exploracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingreso_identificacion`
--

DROP TABLE IF EXISTS `ingreso_identificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingreso_identificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(135) NOT NULL,
  `nombre` varchar(135) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_nacimiento` varchar(135) NOT NULL,
  `sexo` varchar(40) NOT NULL,
  `estado` varchar(135) NOT NULL,
  `escolaridad` varchar(135) NOT NULL,
  `religion` varchar(135) NOT NULL,
  `ocupacion` varchar(135) NOT NULL,
  `estado_civil` varchar(135) NOT NULL,
  `tipo_interrogatorio` varchar(135) NOT NULL,
  `status` varchar(135) DEFAULT NULL,
  `cama` varchar(135) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_identificacion`
--

LOCK TABLES `ingreso_identificacion` WRITE;
/*!40000 ALTER TABLE `ingreso_identificacion` DISABLE KEYS */;
INSERT INTO `ingreso_identificacion` VALUES (1,'30088610371M86OR','María del Carmen Contreras Gonzáles',2,'2012-12-12','Femenino','Baja California','Primaria','catolica','ama de casa','viuda','Mixto','Ingreso','501b');
/*!40000 ALTER TABLE `ingreso_identificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingreso_laboratorio_gabinete`
--

DROP TABLE IF EXISTS `ingreso_laboratorio_gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingreso_laboratorio_gabinete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(135) NOT NULL,
  `laboratorio` varchar(135) NOT NULL,
  `gabinete` varchar(135) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_laboratorio_gabinete`
--

LOCK TABLES `ingreso_laboratorio_gabinete` WRITE;
/*!40000 ALTER TABLE `ingreso_laboratorio_gabinete` DISABLE KEYS */;
INSERT INTO `ingreso_laboratorio_gabinete` VALUES (1,'30088610371M86OR','prueba','prueba');
/*!40000 ALTER TABLE `ingreso_laboratorio_gabinete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_egreso`
--

DROP TABLE IF EXISTS `tbl_egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_egreso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(765) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_egreso` date NOT NULL,
  `motivo_egreso` varchar(750) NOT NULL,
  `diag_final` longtext NOT NULL,
  `resumen_evolucion` longtext NOT NULL,
  `estado_actual` longtext NOT NULL,
  `manejo_estancia` longtext NOT NULL,
  `problemas_pendientes` longtext NOT NULL,
  `plan_manejo` longtext NOT NULL,
  `tratamiento` longtext NOT NULL,
  `recomendaciones` longtext NOT NULL,
  `atencion_factores_riesgo` longtext NOT NULL,
  `pronostico` longtext NOT NULL,
  `causa_defuncion` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_egreso`
--

LOCK TABLES `tbl_egreso` WRITE;
/*!40000 ALTER TABLE `tbl_egreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_egreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_evolucion`
--

DROP TABLE IF EXISTS `tbl_evolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_evolucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(259) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `hora` datetime NOT NULL,
  `fc` varchar(250) NOT NULL,
  `fr` varchar(250) NOT NULL,
  `ta` varchar(250) NOT NULL,
  `temperatura` varchar(250) NOT NULL,
  `dextrostix` varchar(250) DEFAULT NULL,
  `balance_hidrico` varchar(250) DEFAULT NULL,
  `urecis` varchar(250) DEFAULT NULL,
  `pcb` varchar(250) DEFAULT NULL,
  `modo_ventilatorio` varchar(250) DEFAULT NULL,
  `nc` varchar(250) DEFAULT NULL,
  `fr_mv` varchar(250) DEFAULT NULL,
  `peep` varchar(250) DEFAULT NULL,
  `fo2` varchar(250) DEFAULT NULL,
  `ps` varchar(250) DEFAULT NULL,
  `sencibilidad` varchar(250) DEFAULT NULL,
  `reultados_relvantes` varchar(250) DEFAULT NULL,
  `diagnostico` varchar(250) DEFAULT NULL,
  `pronostico` varchar(250) DEFAULT NULL,
  `tratamiento` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_evolucion`
--

LOCK TABLES `tbl_evolucion` WRITE;
/*!40000 ALTER TABLE `tbl_evolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_evolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_indicaciones`
--

DROP TABLE IF EXISTS `tbl_indicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_indicaciones` (
  `id` int(11) NOT NULL,
  `nss` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `hora` datetime NOT NULL,
  `dieta` text,
  `medidas_generales` text,
  `soluciones` text,
  `infusiones` text,
  `medicamentos` text,
  `pendientes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_indicaciones`
--

LOCK TABLES `tbl_indicaciones` WRITE;
/*!40000 ALTER TABLE `tbl_indicaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_indicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inter`
--

DROP TABLE IF EXISTS `tbl_inter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_inter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(750) NOT NULL,
  `prioridad` varchar(750) NOT NULL,
  `calidad` varchar(750) NOT NULL,
  `atendido_por` varchar(750) NOT NULL,
  `enviado_por` varchar(750) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inter`
--

LOCK TABLES `tbl_inter` WRITE;
/*!40000 ALTER TABLE `tbl_inter` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_inter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_preop`
--

DROP TABLE IF EXISTS `tbl_preop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_preop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(750) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_preop`
--

LOCK TABLES `tbl_preop` WRITE;
/*!40000 ALTER TABLE `tbl_preop` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_preop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_revision`
--

DROP TABLE IF EXISTS `tbl_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nss` varchar(259) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `hora` datetime NOT NULL,
  `fc` varchar(250) NOT NULL,
  `fr` varchar(250) NOT NULL,
  `ta` varchar(250) NOT NULL,
  `temperatura` varchar(250) NOT NULL,
  `dextrostix` varchar(250) DEFAULT NULL,
  `balance_hidrico` varchar(250) DEFAULT NULL,
  `urecis` varchar(250) DEFAULT NULL,
  `pcb` varchar(250) DEFAULT NULL,
  `modo_ventilatorio` varchar(250) DEFAULT NULL,
  `nc` varchar(250) DEFAULT NULL,
  `fr_mv` varchar(250) DEFAULT NULL,
  `peep` varchar(250) DEFAULT NULL,
  `fo2` varchar(250) DEFAULT NULL,
  `ps` varchar(250) DEFAULT NULL,
  `sencibilidad` varchar(250) DEFAULT NULL,
  `reultados_relvantes` varchar(250) DEFAULT NULL,
  `diagnostico` varchar(250) DEFAULT NULL,
  `pronostico` varchar(250) DEFAULT NULL,
  `tratamiento` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_revision`
--

LOCK TABLES `tbl_revision` WRITE;
/*!40000 ALTER TABLE `tbl_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `cama_paciente`
--

/*!50001 DROP VIEW IF EXISTS `cama_paciente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cama_paciente` AS select `ca_camas`.`id` AS `id`,`ca_camas`.`seccion` AS `seccion`,`ca_camas`.`cama` AS `cama`,`ingreso_identificacion`.`nss` AS `nss`,`ingreso_identificacion`.`nombre` AS `nombre`,`ingreso_identificacion`.`status` AS `status`,`tbl_evolucion`.`pronostico` AS `pronostico` from ((`ca_camas` left join `ingreso_identificacion` on((`ca_camas`.`cama` = `ingreso_identificacion`.`cama`))) left join `tbl_evolucion` on((`tbl_evolucion`.`nss` = `ingreso_identificacion`.`nss`))) order by `ca_camas`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-24 13:38:16
