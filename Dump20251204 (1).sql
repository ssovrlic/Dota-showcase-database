-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: dota
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `basic_items`
--

DROP TABLE IF EXISTS `basic_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `sell_value` int DEFAULT NULL,
  `bonus` varchar(155) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `availability` varchar(65) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`name`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `boss`
--

DROP TABLE IF EXISTS `boss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boss` (
  `name` varchar(55) COLLATE utf8mb3_unicode_ci NOT NULL,
  `health` int DEFAULT NULL,
  `mana` int DEFAULT NULL,
  `level` int DEFAULT NULL,
  `armor` int DEFAULT NULL,
  `magic_resistance` varchar(35) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `vision_range` int DEFAULT NULL,
  `bounty` int DEFAULT NULL,
  `turn_rate` int DEFAULT NULL,
  `bound_radius` int DEFAULT NULL,
  `collision_size` int DEFAULT NULL,
  `abilities` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `abilities` (`abilities`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `name_of_event` varchar(65) COLLATE utf8mb3_unicode_ci NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `description_of_prizes` varchar(295) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `additional_information` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`name_of_event`),
  KEY `end` (`start`),
  KEY `start` (`start`,`end`) /*!80000 INVISIBLE */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hero`
--

DROP TABLE IF EXISTS `hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hero` (
  `name` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `roles` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `attack_type` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `abillity` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `dota-photos` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `dota-sounds` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `name` (`name`,`attack_type`) /*!80000 INVISIBLE */,
  KEY `attack_type` (`name`,`attack_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information` (
  `name_of_hero` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `damage` int DEFAULT NULL,
  `cool_down` float DEFAULT NULL,
  `range` int DEFAULT NULL,
  `distance` int DEFAULT NULL,
  `speed_of_movement` int DEFAULT NULL,
  `turning_speed` float DEFAULT NULL,
  `attack_speed` varchar(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `armor` float DEFAULT NULL,
  `magic_resistance` varchar(15) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name_of_hero`),
  KEY `name_of_hero` (`name_of_hero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `map_areas`
--

DROP TABLE IF EXISTS `map_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `map_areas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `location` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `functions` text COLLATE utf8mb3_unicode_ci,
  `neutral_camps` int DEFAULT NULL,
  `rune_locations` int DEFAULT NULL,
  `visibility` text COLLATE utf8mb3_unicode_ci,
  `special_features` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `location` (`name`,`type`,`location`),
  KEY `name` (`name`,`type`,`location`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `neutral_creeps`
--

DROP TABLE IF EXISTS `neutral_creeps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neutral_creeps` (
  `name` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `camp` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `health` int DEFAULT NULL,
  `mana` int DEFAULT NULL,
  `armor` int DEFAULT NULL,
  `abilities` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `min_attack` int DEFAULT NULL,
  `max_attack` int DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `camp` (`camp`),
  KEY `abilities` (`camp`,`abilities`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `powers`
--

DROP TABLE IF EXISTS `powers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `powers` (
  `name_of_hero` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name_of_power` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `ability` varchar(35) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `damage_type` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name_of_power`),
  KEY `ability` (`name_of_power`,`ability`),
  KEY `name_of_power` (`name_of_power`,`ability`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `runes`
--

DROP TABLE IF EXISTS `runes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `runes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(55) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `effect` tinytext COLLATE utf8mb3_unicode_ci,
  `duration` int DEFAULT NULL,
  `spawn_location` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `spawn_time` varchar(95) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `name` (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `special_events`
--

DROP TABLE IF EXISTS `special_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `special_events` (
  `name` varchar(65) COLLATE utf8mb3_unicode_ci NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `awards` varchar(150) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `items` varchar(130) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  KEY `awards` (`awards`,`items`) /*!80000 INVISIBLE */,
  KEY `items` (`awards`,`items`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `name` varchar(65) COLLATE utf8mb3_unicode_ci NOT NULL,
  `rating` int DEFAULT NULL,
  `wins` int DEFAULT NULL,
  `losses` int DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rating` (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upgraded_items`
--

DROP TABLE IF EXISTS `upgraded_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upgraded_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `sell_value` float DEFAULT NULL,
  `bonus` varchar(155) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `availability` varchar(65) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `name` (`name`) /*!80000 INVISIBLE */,
  KEY `type` (`name`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2181 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-04 23:47:34
