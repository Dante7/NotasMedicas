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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_identificacion`
--

LOCK TABLES `ingreso_identificacion` WRITE;
/*!40000 ALTER TABLE `ingreso_identificacion` DISABLE KEYS */;
INSERT INTO `ingreso_identificacion` VALUES (1,'30088610371M86OR','María del Carmen Contreras Gonzáles',2,'2012-12-12','Femenino','Baja California','Primaria','catolica','ama de casa','viuda','Mixto','Ingreso','501b');
/*!40000 ALTER TABLE `ingreso_identificacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-19 14:40:12
