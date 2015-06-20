CREATE DATABASE  IF NOT EXISTS `notas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `notas`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: notas
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-19 14:40:09
