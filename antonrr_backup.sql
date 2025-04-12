/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: antonrr
-- ------------------------------------------------------
-- Server version	11.7.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `marshruti`
--

DROP TABLE IF EXISTS `marshruti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `marshruti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazvanie` varchar(32) DEFAULT NULL,
  `start_ostanovka` varchar(32) DEFAULT NULL,
  `end_ostanovka` varchar(32) DEFAULT NULL,
  `vremya_v_puti` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marshruti`
--

LOCK TABLES `marshruti` WRITE;
/*!40000 ALTER TABLE `marshruti` DISABLE KEYS */;
INSERT INTO `marshruti` VALUES
(1,'Маршрут 101 \"Центр-Окраина\"','Центральная площадь','Конечная \"Окраина\"','00:45:00'),
(2,'Маршрут 202 \"Вокзал-Аэропорт\"','Железнодорожный вокзал','Международный аэропорт','01:15:00'),
(3,'Маршрут 303 \"Север-Юг\"','Северный автовокзал','Южный рынок','00:30:00'),
(4,'Маршрут 404 \"Университет-Завод\"','Главный корпус Университета','Завод \"Электрон\"','00:50:00'),
(5,'Маршрут 505 \"Парк-ТЦ\"','Центральный парк','Торговый центр \"Сити\"','00:25:00');
/*!40000 ALTER TABLE `marshruti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poezdki`
--

DROP TABLE IF EXISTS `poezdki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `poezdki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_marshruta` int(11) DEFAULT NULL,
  `id_ts` int(11) DEFAULT NULL,
  `vremya_otpravleniya` time DEFAULT NULL,
  `vremya_pribitiya` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_marshruta` (`id_marshruta`),
  KEY `id_ts` (`id_ts`),
  CONSTRAINT `poezdki_ibfk_1` FOREIGN KEY (`id_marshruta`) REFERENCES `marshruti` (`id`),
  CONSTRAINT `poezdki_ibfk_2` FOREIGN KEY (`id_ts`) REFERENCES `transportnie_sredstva` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poezdki`
--

LOCK TABLES `poezdki` WRITE;
/*!40000 ALTER TABLE `poezdki` DISABLE KEYS */;
INSERT INTO `poezdki` VALUES
(1,1,1,'07:00:00','07:45:00'),
(2,2,2,'08:00:00','09:15:00'),
(3,3,3,'09:30:00','10:00:00'),
(4,4,4,'11:00:00','11:50:00'),
(5,5,5,'12:30:00','12:55:00');
/*!40000 ALTER TABLE `poezdki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportnie_sredstva`
--

DROP TABLE IF EXISTS `transportnie_sredstva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportnie_sredstva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) DEFAULT NULL,
  `gos_nomer` varchar(32) DEFAULT NULL,
  `vmestimost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportnie_sredstva`
--

LOCK TABLES `transportnie_sredstva` WRITE;
/*!40000 ALTER TABLE `transportnie_sredstva` DISABLE KEYS */;
INSERT INTO `transportnie_sredstva` VALUES
(1,'Автобус','А123БВ 77',50),
(2,'Маршрутка','К456ДЕ 77',15),
(3,'Трамвай','Т001МО 77',80),
(4,'Троллейбус','У789ЖЗ 77',60),
(5,'Автобус','В321ИЙ 77',45);
/*!40000 ALTER TABLE `transportnie_sredstva` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-04-11 23:07:48
