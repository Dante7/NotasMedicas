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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-19 14:40:11
