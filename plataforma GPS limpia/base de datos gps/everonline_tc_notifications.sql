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
-- Table structure for table `tc_notifications`
--

DROP TABLE IF EXISTS `tc_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(128) NOT NULL,
  `attributes` varchar(4000) DEFAULT NULL,
  `always` bit(1) NOT NULL DEFAULT b'0',
  `calendarid` int DEFAULT NULL,
  `notificators` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_notification_calendar_calendarid` (`calendarid`),
  CONSTRAINT `fk_notification_calendar_calendarid` FOREIGN KEY (`calendarid`) REFERENCES `tc_calendars` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_notifications`
--

LOCK TABLES `tc_notifications` WRITE;
/*!40000 ALTER TABLE `tc_notifications` DISABLE KEYS */;
INSERT INTO `tc_notifications` VALUES (2,'deviceOffline','{}',_binary '\0',NULL,'mail'),(5,'geofenceExit','{}',_binary '',NULL,'mail'),(6,'geofenceEnter','{}',_binary '',NULL,'mail'),(7,'deviceOnline','{}',_binary '',NULL,'mail'),(8,'deviceMoving','{}',_binary '',NULL,'mail');
/*!40000 ALTER TABLE `tc_notifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-09 10:33:27
