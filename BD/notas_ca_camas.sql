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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-19 14:40:11
