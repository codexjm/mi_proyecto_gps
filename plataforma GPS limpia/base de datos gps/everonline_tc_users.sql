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
-- Table structure for table `tc_users`
--

DROP TABLE IF EXISTS `tc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `hashedpassword` varchar(128) DEFAULT NULL,
  `salt` varchar(128) DEFAULT NULL,
  `readonly` bit(1) NOT NULL DEFAULT b'0',
  `administrator` bit(1) DEFAULT NULL,
  `map` varchar(128) DEFAULT NULL,
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `zoom` int NOT NULL DEFAULT '0',
  `twelvehourformat` bit(1) NOT NULL DEFAULT b'0',
  `attributes` varchar(4000) DEFAULT NULL,
  `coordinateformat` varchar(128) DEFAULT NULL,
  `disabled` bit(1) DEFAULT b'0',
  `expirationtime` timestamp NULL DEFAULT NULL,
  `devicelimit` int DEFAULT '-1',
  `token` varchar(128) DEFAULT NULL,
  `userlimit` int DEFAULT '0',
  `devicereadonly` bit(1) DEFAULT b'0',
  `phone` varchar(128) DEFAULT NULL,
  `limitcommands` bit(1) DEFAULT b'0',
  `login` varchar(128) DEFAULT NULL,
  `poilayer` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_users`
--

LOCK TABLES `tc_users` WRITE;
/*!40000 ALTER TABLE `tc_users` DISABLE KEYS */;
INSERT INTO `tc_users` VALUES (1,'admin','admin','7392eb87cecae57276b1d518b06e13d62da8fe37dbdfa1bf','c00f7ae53674e432c4a1dedb60ec267fa8dcde56ffef847e',_binary '\0',_binary '','yandexSat',0,0,0,_binary '\0','{\"speedUnit\":\"kmh\",\"notificationTokens\":\"daSXXLcJe0E9olrQ1b1R57:APA91bEyJza86xrapt0pAJqelxFDw1rIQ3KFV8ZzcYTVbaFgiqIgSFiJkIVkCSkt4ed7juBRQNMiaVFVtKxT04OP1G4HiaqX9Hk1N9dhgLKkC36drGIcn5048SoVR8m8U1BOQquUSOtT\"}','',_binary '\0',NULL,-1,'8hSUXRvaASI991AgBSKAtgKYPyZepi7J',0,_binary '\0','',_binary '\0','','');
/*!40000 ALTER TABLE `tc_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-09 10:33:26
