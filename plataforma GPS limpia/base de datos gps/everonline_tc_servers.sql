-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.56.56    Database: everonline
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.22.04.1

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
-- Table structure for table `tc_servers`
--

DROP TABLE IF EXISTS `tc_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_servers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `registration` bit(1) NOT NULL DEFAULT b'1',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `zoom` int NOT NULL DEFAULT '0',
  `map` varchar(128) DEFAULT NULL,
  `bingkey` varchar(128) DEFAULT NULL,
  `mapurl` varchar(512) DEFAULT NULL,
  `readonly` bit(1) NOT NULL DEFAULT b'0',
  `twelvehourformat` bit(1) NOT NULL DEFAULT b'0',
  `attributes` varchar(4000) DEFAULT NULL,
  `forcesettings` bit(1) NOT NULL DEFAULT b'0',
  `coordinateformat` varchar(128) DEFAULT NULL,
  `devicereadonly` bit(1) DEFAULT b'0',
  `limitcommands` bit(1) DEFAULT b'0',
  `poilayer` varchar(512) DEFAULT NULL,
  `announcement` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_servers`
--

LOCK TABLES `tc_servers` WRITE;
/*!40000 ALTER TABLE `tc_servers` DISABLE KEYS */;
INSERT INTO `tc_servers` VALUES (1,_binary '',0,0,0,NULL,NULL,NULL,_binary '\0',_binary '\0',NULL,_binary '\0',NULL,_binary '\0',_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `tc_servers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-09 10:33:29
