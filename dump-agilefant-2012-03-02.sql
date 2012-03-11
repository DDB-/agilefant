-- MySQL dump 10.13  Distrib 5.1.58, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: agilefant
-- ------------------------------------------------------
-- Server version	5.1.58-1ubuntu1

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
-- Table structure for table `Holiday`
--

DROP TABLE IF EXISTS `Holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `endDate` datetime DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA44DC038C1610AD2` (`user_id`),
  CONSTRAINT `FKA44DC038C1610AD2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Holiday`
--

LOCK TABLES `Holiday` WRITE;
/*!40000 ALTER TABLE `Holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `Holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HolidayAnomaly`
--

DROP TABLE IF EXISTS `HolidayAnomaly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HolidayAnomaly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK267567ABC1610AD2` (`user_id`),
  CONSTRAINT `FK267567ABC1610AD2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HolidayAnomaly`
--

LOCK TABLES `HolidayAnomaly` WRITE;
/*!40000 ALTER TABLE `HolidayAnomaly` DISABLE KEYS */;
/*!40000 ALTER TABLE `HolidayAnomaly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agilefant_revisions`
--

DROP TABLE IF EXISTS `agilefant_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agilefant_revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` bigint(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agilefant_revisions`
--

LOCK TABLES `agilefant_revisions` WRITE;
/*!40000 ALTER TABLE `agilefant_revisions` DISABLE KEYS */;
INSERT INTO `agilefant_revisions` VALUES (1,1326584886239,1,'Administrator'),(2,1326584944591,1,'Administrator'),(3,1326585000890,1,'Administrator'),(4,1326585014702,1,'Administrator'),(5,1326698324526,1,'Administrator'),(6,1326698332165,1,'Administrator'),(7,1326698339930,1,'Administrator'),(8,1326698718252,1,'Administrator'),(9,1326698813490,1,'Administrator'),(10,1326698813515,1,'Administrator'),(11,1326698813526,1,'Administrator'),(12,1326698942698,1,'Administrator'),(13,1326699029110,1,'Administrator'),(14,1326699132074,1,'Administrator'),(15,1326699177564,1,'Administrator'),(16,1326699186926,1,'Administrator'),(17,1326699194292,1,'Administrator'),(18,1326699219862,1,'Administrator'),(19,1326699225563,1,'Administrator'),(20,1326737515619,1,'Administrator'),(21,1326737756510,1,'Administrator'),(22,1326738047653,1,'Administrator'),(23,1326755491167,1,'Administrator'),(24,1326755667546,1,'Administrator'),(25,1326756011954,1,'Administrator'),(26,1326756016050,1,'Administrator'),(27,1326756479377,1,'Administrator'),(28,1326756487105,1,'Administrator'),(29,1326756796123,1,'Administrator'),(30,1326756800700,1,'Administrator'),(31,1326835097795,1,'Administrator'),(32,1327540332247,1,'Administrator'),(33,1327540336443,1,'Administrator'),(34,1327708700922,1,'Administrator'),(35,1327708715423,1,'Administrator'),(36,1327708723287,1,'Administrator'),(37,1327708760048,1,'Administrator'),(38,1327708764917,1,'Administrator'),(39,1327708770729,1,'Administrator'),(40,1327721767641,1,'Administrator'),(41,1327721774536,1,'Administrator'),(42,1327721778039,1,'Administrator'),(43,1327721779813,1,'Administrator'),(44,1327721781916,1,'Administrator'),(45,1327721787406,1,'Administrator'),(46,1327721789585,1,'Administrator'),(47,1328150935843,1,'Administrator'),(48,1328150945797,1,'Administrator'),(49,1328313510513,1,'Administrator'),(50,1328313991229,1,'Administrator'),(51,1328401629804,1,'Administrator'),(52,1328401655946,1,'Administrator'),(53,1328401714603,1,'Administrator'),(54,1328401737283,1,'Administrator'),(55,1328401752319,1,'Administrator'),(56,1328405616378,1,'Administrator'),(57,1328405637546,1,'Administrator'),(58,1328405645442,1,'Administrator'),(59,1328405659371,1,'Administrator'),(60,1328405668070,1,'Administrator'),(61,1328405927564,1,'Administrator'),(62,1328585463915,1,'Administrator'),(63,1328585468204,1,'Administrator'),(64,1328585469988,1,'Administrator'),(65,1328585471724,1,'Administrator'),(66,1328585493272,1,'Administrator'),(67,1328585683041,1,'Administrator'),(68,1328585685475,1,'Administrator'),(69,1328586931466,1,'Administrator'),(70,1328587674966,1,'Administrator'),(71,1328589326854,1,'Administrator'),(72,1328589347204,1,'Administrator'),(73,1329002012245,1,'Administrator'),(74,1329002016384,1,'Administrator'),(75,1329002031367,1,'Administrator'),(76,1329009831625,1,'Administrator'),(77,1329861851585,1,'Administrator'),(78,1329866911659,1,'Administrator'),(79,1329867348849,1,'Administrator'),(80,1329867881768,1,'Administrator'),(81,1329868180612,1,'Administrator'),(82,1329868696851,1,'Administrator'),(83,1330207691361,1,'Administrator'),(84,1330215473312,1,'Administrator'),(85,1330215730882,1,'Administrator'),(86,1330216848571,1,'Administrator'),(87,1330420018050,1,'Administrator'),(88,1330478759661,1,'Administrator'),(89,1330479370933,1,'Administrator'),(90,1330480634757,1,'Administrator'),(91,1330627657028,1,'Administrator'),(92,1330627670217,1,'Administrator');
/*!40000 ALTER TABLE `agilefant_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `availability` int(11) NOT NULL,
  `delta_personal_load` bigint(20) DEFAULT NULL,
  `backlog_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3D2B86CDF8762ABE` (`backlog_id`),
  KEY `FK3D2B86CDE537EC82` (`backlog_id`),
  KEY `FK3D2B86CDC1610AD2` (`user_id`),
  KEY `FK3D2B86CDF63400A2` (`backlog_id`),
  CONSTRAINT `FK3D2B86CDC1610AD2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK3D2B86CDE537EC82` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`),
  CONSTRAINT `FK3D2B86CDF63400A2` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`),
  CONSTRAINT `FK3D2B86CDF8762ABE` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (1,100,0,2,2),(2,100,0,2,1),(3,100,0,2,2);
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment_AUD`
--

DROP TABLE IF EXISTS `assignment_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_AUD` (
  `id` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `availability` int(11) DEFAULT NULL,
  `delta_personal_load` bigint(20) DEFAULT NULL,
  `backlog_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FK1B6D861E20258526` (`REV`),
  CONSTRAINT `FK1B6D861E20258526` FOREIGN KEY (`REV`) REFERENCES `agilefant_revisions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment_AUD`
--

LOCK TABLES `assignment_AUD` WRITE;
/*!40000 ALTER TABLE `assignment_AUD` DISABLE KEYS */;
INSERT INTO `assignment_AUD` VALUES (1,18,0,100,0,2,2),(2,19,0,100,0,2,1),(3,19,0,100,0,2,2);
/*!40000 ALTER TABLE `assignment_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backlogs`
--

DROP TABLE IF EXISTS `backlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backlogs` (
  `backlogtype` varchar(31) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `name` varchar(255) DEFAULT NULL,
  `backlogSize` bigint(20) DEFAULT NULL,
  `baselineLoad` bigint(20) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7E75FF16B8A85DD5` (`parent_id`),
  CONSTRAINT `FK7E75FF16B8A85DD5` FOREIGN KEY (`parent_id`) REFERENCES `backlogs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backlogs`
--

LOCK TABLES `backlogs` WRITE;
/*!40000 ALTER TABLE `backlogs` DISABLE KEYS */;
INSERT INTO `backlogs` VALUES ('Product',1,'This is a test product','TEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Project',2,'','Cool Kids',0,0,'2013-01-15 23:28:00','2012-01-15 23:28:00',1,0,1),('Iteration',3,'Testing','I1',1800,0,'2012-04-20 16:20:00','2012-01-16 10:11:00',NULL,NULL,2);
/*!40000 ALTER TABLE `backlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backlogs_AUD`
--

DROP TABLE IF EXISTS `backlogs_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backlogs_AUD` (
  `backlogtype` varchar(31) NOT NULL,
  `id` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `description` longtext,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `backlogSize` bigint(20) DEFAULT NULL,
  `baselineLoad` bigint(20) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FK46C0B1E720258526` (`REV`),
  CONSTRAINT `FK46C0B1E720258526` FOREIGN KEY (`REV`) REFERENCES `agilefant_revisions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backlogs_AUD`
--

LOCK TABLES `backlogs_AUD` WRITE;
/*!40000 ALTER TABLE `backlogs_AUD` DISABLE KEYS */;
INSERT INTO `backlogs_AUD` VALUES ('Product',1,1,0,'This is a test product','TEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Project',2,12,0,'','Cool Kids',1,0,0,'2013-01-15 23:28:00',0,'2012-01-15 23:28:00',0),('Project',2,14,1,'','Cool Kids',1,0,0,'2013-01-15 23:28:00',1,'2012-01-15 23:28:00',0),('Iteration',3,20,0,'Testing','I1',2,1800,0,'2012-01-20 10:11:00',NULL,'2012-01-16 10:11:00',NULL),('Iteration',3,35,1,'Testing','I1',2,1800,0,'2012-04-20 10:11:00',NULL,'2012-01-16 10:11:00',NULL),('Iteration',3,36,1,'Testing','I1',2,1800,0,'2012-04-20 16:20:00',NULL,'2012-01-16 10:11:00',NULL);
/*!40000 ALTER TABLE `backlogs_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_backlogs`
--

DROP TABLE IF EXISTS `history_backlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_backlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doneSum` bigint(20) NOT NULL,
  `estimateSum` bigint(20) NOT NULL,
  `branchMax` bigint(20) NOT NULL,
  `rootSum` bigint(20) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `backlog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA6B13261F8762ABE` (`backlog_id`),
  KEY `FKA6B13261F63400A2` (`backlog_id`),
  CONSTRAINT `FKA6B13261F63400A2` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`),
  CONSTRAINT `FKA6B13261F8762ABE` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_backlogs`
--

LOCK TABLES `history_backlogs` WRITE;
/*!40000 ALTER TABLE `history_backlogs` DISABLE KEYS */;
INSERT INTO `history_backlogs` VALUES (1,0,8,0,5,'2012-01-15 23:33:24',2),(2,0,10,0,7,'2012-01-16 10:15:56',2),(3,0,14,0,11,'2012-01-16 15:33:20',2),(4,0,14,0,11,'2012-01-17 13:18:17',2),(5,0,12,0,9,'2012-01-25 17:12:16',2),(6,0,18,0,15,'2012-01-27 15:59:30',2),(7,0,24,0,21,'2012-01-27 19:36:29',2),(8,0,24,0,21,'2012-02-01 18:49:05',2),(9,0,22,0,19,'2012-02-03 16:06:31',2),(10,6,22,0,19,'2012-02-04 17:38:47',2),(11,0,22,0,19,'2012-02-06 19:31:03',2);
/*!40000 ALTER TABLE `history_backlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_iterations`
--

DROP TABLE IF EXISTS `history_iterations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history_iterations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deltaOriginalEstimate` bigint(20) NOT NULL,
  `effortLeftSum` bigint(20) NOT NULL,
  `originalEstimateSum` bigint(20) NOT NULL,
  `timestamp` date NOT NULL,
  `iteration_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iteration_id` (`iteration_id`,`timestamp`),
  KEY `FK9DD479C14157D2A2` (`iteration_id`),
  CONSTRAINT `FK9DD479C14157D2A2` FOREIGN KEY (`iteration_id`) REFERENCES `backlogs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_iterations`
--

LOCK TABLES `history_iterations` WRITE;
/*!40000 ALTER TABLE `history_iterations` DISABLE KEYS */;
INSERT INTO `history_iterations` VALUES (1,0,0,0,'2012-01-16',3),(2,0,0,0,'2012-01-25',3),(3,0,0,0,'2012-01-27',3),(4,0,0,0,'2012-02-03',3),(5,1860,360,1860,'2012-02-04',3),(6,0,360,1860,'2012-02-06',3),(7,240,660,2100,'2012-02-11',3),(8,0,720,2100,'2012-02-21',3),(9,0,600,2100,'2012-02-25',3),(10,0,540,2100,'2012-02-28',3),(11,0,480,2100,'2012-03-01',3);
/*!40000 ALTER TABLE `history_iterations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hourentries`
--

DROP TABLE IF EXISTS `hourentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hourentries` (
  `DTYPE` varchar(31) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `description` longtext,
  `minutesSpent` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `backlog_id` int(11) DEFAULT NULL,
  `story_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF6FE62CE0E4BFA2` (`story_id`),
  KEY `FKF6FE62CF63400A2` (`backlog_id`),
  KEY `FKF6FE62CC1610AD2` (`user_id`),
  KEY `FKF6FE62C6E84F892` (`task_id`),
  CONSTRAINT `FKF6FE62C6E84F892` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`),
  CONSTRAINT `FKF6FE62CC1610AD2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKF6FE62CE0E4BFA2` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`),
  CONSTRAINT `FKF6FE62CF63400A2` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hourentries`
--

LOCK TABLES `hourentries` WRITE;
/*!40000 ALTER TABLE `hourentries` DISABLE KEYS */;
INSERT INTO `hourentries` VALUES ('BacklogHourEntry',1,'2012-01-15 23:33:00','',60,1,1,NULL,NULL),('TaskHourEntry',9,'2012-02-06 20:16:00',NULL,180,1,NULL,NULL,4),('TaskHourEntry',12,'2012-02-06 20:32:00','',180,1,NULL,NULL,2),('TaskHourEntry',13,'2012-02-06 20:35:00','',120,1,NULL,NULL,2),('TaskHourEntry',14,'2012-02-06 20:38:00','',120,1,NULL,NULL,2),('TaskHourEntry',15,'2012-02-06 20:39:00','',60,1,NULL,NULL,2),('TaskHourEntry',17,'2012-02-06 20:40:00','',60,1,NULL,NULL,2),('TaskHourEntry',26,'2012-02-11 15:39:00',NULL,180,1,NULL,NULL,5),('TaskHourEntry',33,'2012-02-21 14:29:00',NULL,120,1,NULL,NULL,2),('TaskHourEntry',34,'2012-02-21 14:37:00',NULL,120,1,NULL,NULL,2),('TaskHourEntry',42,'2012-02-21 15:35:00','',120,1,NULL,NULL,4),('TaskHourEntry',47,'2012-02-25 14:08:00','checking a daiguren',120,1,NULL,NULL,1),('TaskHourEntry',50,'2012-02-25 16:40:00','',120,1,NULL,NULL,2),('TaskHourEntry',53,'2012-02-28 17:25:00','',180,1,NULL,NULL,4),('TaskHourEntry',54,'2012-02-28 17:35:00','',180,1,NULL,NULL,4),('TaskHourEntry',55,'2012-02-28 17:57:00','',120,1,NULL,NULL,4),('TaskHourEntry',56,'2012-03-01 10:47:00','',0,1,NULL,NULL,2),('TaskHourEntry',57,'2012-03-01 10:47:00','',60,1,NULL,NULL,2);
/*!40000 ALTER TABLE `hourentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayName` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `story_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `label_name` (`name`),
  KEY `FKBDD05FFFE0E4BFA2` (`story_id`),
  KEY `FKBDD05FFF1C5D0ED1` (`creator_id`),
  CONSTRAINT `FKBDD05FFF1C5D0ED1` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKBDD05FFFE0E4BFA2` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` VALUES (1,'test','test','2012-01-14 15:50:32',1,1),(2,'agilefant','agilefant','2012-01-14 15:50:40',1,1),(3,'cool','cool','2012-01-27 15:59:20',1,7),(4,'michael bay','michael bay','2012-01-27 19:36:07',1,8),(5,'just kidding','just kidding','2012-01-27 19:36:07',1,8),(6,'story test','story test','2012-01-27 19:36:07',1,8),(7,'test ','test ','2012-01-27 19:36:07',1,8);
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Agilefant database version','AgilefantDatabaseVersion','250'),(2,NULL,'RangeLow','0'),(3,NULL,'RangeHigh','120'),(4,NULL,'OptimalLow','70'),(5,NULL,'OptimalHigh','85'),(6,NULL,'CriticalLow','100'),(7,NULL,'HourReporting','true'),(8,NULL,'DevPortfolio','true'),(9,NULL,'DailyWork','true'),(10,NULL,'StoryTreeFieldOrder','state,storyPoints,labels,name,breadcrumb,backlog'),(11,NULL,'branchMetricsType','estimate'),(12,NULL,'labelsInStoryList','true'),(13,NULL,'weekendsInBurndown','true');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `name` varchar(255) NOT NULL,
  `state` int(11) NOT NULL,
  `storyPoints` int(11) DEFAULT NULL,
  `storyValue` int(11) DEFAULT NULL,
  `treeRank` int(11) NOT NULL DEFAULT '0',
  `backlog_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8FB06053F63400A2` (`backlog_id`),
  KEY `FK8FB06053F5E897CD` (`parent_id`),
  CONSTRAINT `FK8FB06053F5E897CD` FOREIGN KEY (`parent_id`) REFERENCES `stories` (`id`),
  CONSTRAINT `FK8FB06053F63400A2` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
INSERT INTO `stories` VALUES (1,NULL,'Learn How To Agilefant',1,3,NULL,1,2,NULL),(2,NULL,'Make a Sub-Story',1,3,NULL,0,2,1),(3,NULL,'Another sub story',1,3,NULL,1,2,1),(4,NULL,'New Story',0,2,NULL,2,2,NULL),(5,'Seeing if we can get it replicated','Replicating B ug',6,2,NULL,3,3,NULL),(6,'This story should count towards the total','Unblocked Story',2,4,NULL,4,3,NULL),(7,'This is another test story so that this iteration slowly gets bigger over time.','The Third Story',3,4,NULL,5,3,NULL),(8,'No relation to the movie made by Michael \"Crappy Movies\" Bay','I am Number Four',1,6,NULL,6,3,NULL);
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories_AUD`
--

DROP TABLE IF EXISTS `stories_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stories_AUD` (
  `id` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `description` longtext,
  `name` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `storyPoints` int(11) DEFAULT NULL,
  `storyValue` int(11) DEFAULT NULL,
  `treeRank` int(11) DEFAULT '0',
  `backlog_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FK853E2CA420258526` (`REV`),
  CONSTRAINT `FK853E2CA420258526` FOREIGN KEY (`REV`) REFERENCES `agilefant_revisions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories_AUD`
--

LOCK TABLES `stories_AUD` WRITE;
/*!40000 ALTER TABLE `stories_AUD` DISABLE KEYS */;
INSERT INTO `stories_AUD` VALUES (1,2,0,NULL,'Learn How To Agilefant',0,NULL,NULL,1,1,NULL),(1,4,1,NULL,'Learn How To Agilefant',0,3,NULL,1,1,NULL),(1,11,1,NULL,'Learn How To Agilefant',1,3,NULL,1,1,NULL),(1,13,1,NULL,'Learn How To Agilefant',1,3,NULL,1,2,NULL),(1,47,1,NULL,'Learn How To Agilefant',5,3,NULL,1,2,NULL),(1,48,1,NULL,'Learn How To Agilefant',1,3,NULL,1,2,NULL),(2,3,0,NULL,'Make a Sub-Story',0,NULL,NULL,0,1,1),(2,7,1,NULL,'Make a Sub-Story',0,3,NULL,0,1,1),(2,10,1,NULL,'Make a Sub-Story',1,3,NULL,0,1,1),(2,13,1,NULL,'Make a Sub-Story',1,3,NULL,0,2,1),(3,5,0,NULL,'Another sub story',0,NULL,NULL,1,1,1),(3,6,1,NULL,'Another sub story',0,3,NULL,1,1,1),(3,9,1,NULL,'Another sub story',1,3,NULL,1,1,1),(3,13,1,NULL,'Another sub story',1,3,NULL,1,2,1),(4,15,0,NULL,'New Story',0,NULL,NULL,2,1,NULL),(4,16,1,NULL,'New Story',0,2,NULL,2,1,NULL),(4,17,1,NULL,'New Story',0,2,NULL,2,2,NULL),(5,21,0,'Seeing if we can get it replicated','Replicating B ug',0,2,NULL,3,3,NULL),(5,23,1,'Seeing if we can get it replicated','Replicating B ug',3,2,NULL,3,3,NULL),(5,25,1,'Seeing if we can get it replicated','Replicating B ug',2,2,NULL,3,3,NULL),(5,26,1,'Seeing if we can get it replicated','Replicating B ug',3,2,NULL,3,3,NULL),(5,27,1,'Seeing if we can get it replicated','Replicating B ug',1,2,NULL,3,3,NULL),(5,28,1,'Seeing if we can get it replicated','Replicating B ug',3,2,NULL,3,3,NULL),(5,29,1,'Seeing if we can get it replicated','Replicating B ug',0,2,NULL,3,3,NULL),(5,30,1,'Seeing if we can get it replicated','Replicating B ug',3,2,NULL,3,3,NULL),(5,31,1,'Seeing if we can get it replicated','Replicating B ug',6,2,NULL,3,3,NULL),(5,32,1,'Seeing if we can get it replicated','Replicating B ug',2,2,NULL,3,3,NULL),(5,33,1,'Seeing if we can get it replicated','Replicating B ug',6,2,NULL,3,3,NULL),(5,34,1,'Seeing if we can get it replicated','Replicating B ug',1,2,NULL,3,3,NULL),(5,49,1,'Seeing if we can get it replicated','Replicating B ug',6,2,NULL,3,3,NULL),(6,24,0,'This story should count towards the total','Unblocked Story',1,4,NULL,4,3,NULL),(6,50,1,'This story should count towards the total','Unblocked Story',2,4,NULL,4,3,NULL),(7,37,0,'This is another test story so that this iteration slowly gets bigger over time.','The Third Story',0,NULL,NULL,5,3,NULL),(7,38,1,'This is another test story so that this iteration slowly gets bigger over time.','The Third Story',2,NULL,NULL,5,3,NULL),(7,39,1,'This is another test story so that this iteration slowly gets bigger over time.','The Third Story',2,4,NULL,5,3,NULL),(7,46,1,'This is another test story so that this iteration slowly gets bigger over time.','The Third Story',3,4,NULL,5,3,NULL),(8,40,0,'No relation to the movie made by Michael \"Crappy Movies\" Bay','I am Number Four',0,NULL,NULL,6,3,NULL),(8,41,1,'No relation to the movie made by Michael \"Crappy Movies\" Bay','I am Number Four',0,3,NULL,6,3,NULL),(8,42,1,'No relation to the movie made by Michael \"Crappy Movies\" Bay','I am Number Four',0,6,NULL,6,3,NULL),(8,45,1,'No relation to the movie made by Michael \"Crappy Movies\" Bay','I am Number Four',1,6,NULL,6,3,NULL),(8,61,1,'No relation to the movie made by Michael \"Crappy Movies\" Bay','I am Number Four',5,6,NULL,6,3,NULL),(8,62,1,'No relation to the movie made by Michael \"Crappy Movies\" Bay','I am Number Four',1,6,NULL,6,3,NULL),(9,53,0,'Does it work','Story here for new shit',2,3,NULL,7,3,NULL),(9,54,2,'Does it work','Story here for new shit',2,3,NULL,7,3,NULL);
/*!40000 ALTER TABLE `stories_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story_access`
--

DROP TABLE IF EXISTS `story_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `story_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK44C5ABEEE0E4BFA2` (`story_id`),
  KEY `FK44C5ABEEC1610AD2` (`user_id`),
  CONSTRAINT `FK44C5ABEEC1610AD2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK44C5ABEEE0E4BFA2` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story_access`
--

LOCK TABLES `story_access` WRITE;
/*!40000 ALTER TABLE `story_access` DISABLE KEYS */;
INSERT INTO `story_access` VALUES (1,'2012-01-14 15:49:28',1,1),(2,'2012-01-14 15:49:28',1,1),(3,'2012-01-14 15:49:29',1,1),(4,'2012-01-14 15:49:30',1,1),(5,'2012-01-14 15:49:30',1,1),(6,'2012-01-14 15:49:30',1,1),(7,'2012-01-14 15:49:37',1,1),(8,'2012-01-14 15:50:05',1,1),(9,'2012-01-14 15:50:05',1,1),(10,'2012-01-14 15:50:25',1,1),(11,'2012-01-14 15:50:25',1,1),(12,'2012-01-15 23:18:33',2,1),(13,'2012-01-15 23:18:34',1,1),(14,'2012-01-15 23:18:47',3,1),(15,'2012-01-15 23:18:47',3,1),(16,'2012-01-15 23:18:48',3,1),(17,'2012-01-15 23:18:48',3,1),(18,'2012-01-15 23:18:55',2,1),(19,'2012-01-15 23:18:56',2,1),(20,'2012-01-15 23:18:56',2,1),(21,'2012-01-15 23:26:39',2,1),(22,'2012-01-15 23:27:15',1,1),(23,'2012-01-15 23:27:16',1,1),(24,'2012-01-15 23:28:25',1,1),(25,'2012-01-15 23:30:08',1,1),(26,'2012-01-15 23:33:02',4,1),(27,'2012-01-15 23:33:02',4,1),(28,'2012-01-15 23:39:37',1,1),(29,'2012-01-16 10:17:05',5,1),(30,'2012-01-16 10:24:33',5,1),(31,'2012-01-16 10:24:34',5,1),(32,'2012-01-16 10:24:34',5,1),(33,'2012-01-16 10:28:31',5,1),(34,'2012-01-16 10:28:43',1,1),(35,'2012-01-16 10:28:44',1,1),(36,'2012-01-27 19:36:39',8,1),(37,'2012-01-27 19:36:41',8,1),(38,'2012-01-30 09:11:33',8,1),(39,'2012-02-01 16:51:22',8,1),(40,'2012-02-01 16:51:31',8,1),(41,'2012-02-01 17:51:08',8,1),(42,'2012-02-01 18:02:30',8,1),(43,'2012-02-01 18:12:05',8,1),(44,'2012-02-01 18:14:12',8,1),(45,'2012-02-01 18:14:21',8,1),(46,'2012-02-01 18:35:14',8,1),(47,'2012-02-01 18:45:58',8,1),(48,'2012-02-01 18:48:44',1,1),(49,'2012-02-01 18:48:44',1,1),(50,'2012-02-01 18:49:00',1,1),(51,'2012-02-01 18:49:01',1,1),(52,'2012-02-01 19:00:10',8,1),(53,'2012-02-01 19:00:15',8,1),(54,'2012-02-01 19:00:18',8,1),(55,'2012-02-02 09:30:44',8,1),(56,'2012-02-04 16:26:54',8,1),(57,'2012-02-04 16:29:01',7,1),(58,'2012-02-04 16:42:10',8,1),(59,'2012-02-04 17:33:29',8,1),(60,'2012-02-04 17:38:41',8,1),(61,'2012-02-06 19:31:05',8,1),(62,'2012-02-06 19:31:27',8,1),(63,'2012-02-06 19:55:27',8,1),(64,'2012-02-06 20:16:09',8,1),(65,'2012-02-06 20:32:42',8,1),(66,'2012-02-06 20:35:09',8,1),(67,'2012-02-06 20:38:09',8,1),(68,'2012-02-06 20:43:24',8,1),(69,'2012-02-06 20:45:14',8,1),(70,'2012-02-06 20:49:06',8,1),(71,'2012-02-06 21:12:52',8,1),(72,'2012-02-06 21:16:11',8,1),(73,'2012-02-11 15:12:43',8,1),(74,'2012-02-11 15:13:08',8,1),(75,'2012-02-11 15:30:58',8,1),(76,'2012-02-11 15:33:50',8,1),(77,'2012-02-11 15:39:44',8,1),(78,'2012-02-11 15:41:59',8,1),(79,'2012-02-11 15:45:07',8,1),(80,'2012-02-11 15:51:02',8,1),(81,'2012-02-11 16:26:32',8,1),(82,'2012-02-11 17:03:49',8,1),(83,'2012-02-21 13:54:35',8,1),(84,'2012-02-21 14:27:29',8,1),(85,'2012-02-21 14:37:16',8,1),(86,'2012-02-21 14:41:13',8,1),(87,'2012-02-21 14:57:55',8,1),(88,'2012-02-21 15:03:20',8,1),(89,'2012-02-21 15:06:09',8,1),(90,'2012-02-21 15:09:29',8,1),(91,'2012-02-21 15:15:17',8,1),(92,'2012-02-21 15:25:38',8,1),(93,'2012-02-21 15:27:59',8,1),(94,'2012-02-21 15:28:24',8,1),(95,'2012-02-21 15:44:23',8,1),(96,'2012-02-21 15:58:08',8,1),(97,'2012-02-25 14:06:34',8,1),(98,'2012-02-25 14:06:49',8,1),(99,'2012-02-25 14:07:17',8,1),(100,'2012-02-25 14:07:58',5,1),(101,'2012-02-25 16:07:21',8,1),(102,'2012-02-25 16:34:02',8,1),(103,'2012-02-25 16:40:36',8,1),(104,'2012-02-27 23:10:32',8,1),(105,'2012-02-28 00:56:48',8,1),(106,'2012-02-28 16:24:53',8,1),(107,'2012-02-28 16:25:07',8,1),(108,'2012-02-28 16:26:41',8,1),(109,'2012-02-28 16:28:20',8,1),(110,'2012-02-28 16:32:37',8,1),(111,'2012-02-28 16:42:01',8,1),(112,'2012-02-28 16:43:54',8,1),(113,'2012-02-28 16:45:01',8,1),(114,'2012-02-28 16:49:45',8,1),(115,'2012-02-28 16:53:08',8,1),(116,'2012-02-28 16:54:17',8,1),(117,'2012-02-28 17:01:28',8,1),(118,'2012-02-28 17:03:59',8,1),(119,'2012-02-28 17:10:26',8,1),(120,'2012-02-28 17:13:12',8,1),(121,'2012-02-28 17:14:28',8,1),(122,'2012-02-28 17:15:49',8,1),(123,'2012-02-28 17:17:41',8,1),(124,'2012-02-28 17:19:15',8,1),(125,'2012-02-28 17:20:30',8,1),(126,'2012-02-28 17:22:15',8,1),(127,'2012-02-28 17:23:47',8,1),(128,'2012-02-28 17:25:46',8,1),(129,'2012-02-28 17:35:51',8,1),(130,'2012-02-28 17:37:51',8,1),(131,'2012-02-28 17:57:08',8,1),(132,'2012-03-01 10:47:29',8,1);
/*!40000 ALTER TABLE `story_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story_user`
--

DROP TABLE IF EXISTS `story_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story_user` (
  `Story_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  PRIMARY KEY (`Story_id`,`User_id`),
  KEY `FK5914FCD5E0E4BFA2` (`Story_id`),
  KEY `FK5914FCD5C1610AD2` (`User_id`),
  CONSTRAINT `FK5914FCD5C1610AD2` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK5914FCD5E0E4BFA2` FOREIGN KEY (`Story_id`) REFERENCES `stories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story_user`
--

LOCK TABLES `story_user` WRITE;
/*!40000 ALTER TABLE `story_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `story_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story_user_AUD`
--

DROP TABLE IF EXISTS `story_user_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story_user_AUD` (
  `REV` int(11) NOT NULL,
  `Story_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`REV`,`Story_id`,`User_id`),
  KEY `FK9A1CB82620258526` (`REV`),
  CONSTRAINT `FK9A1CB82620258526` FOREIGN KEY (`REV`) REFERENCES `agilefant_revisions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story_user_AUD`
--

LOCK TABLES `story_user_AUD` WRITE;
/*!40000 ALTER TABLE `story_user_AUD` DISABLE KEYS */;
/*!40000 ALTER TABLE `story_user_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storyrank`
--

DROP TABLE IF EXISTS `storyrank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storyrank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `backlog_id` int(11) NOT NULL,
  `story_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `backlog_id` (`backlog_id`,`story_id`),
  KEY `FK6600C2A1E0E4BFA2` (`story_id`),
  KEY `FK6600C2A1F63400A2` (`backlog_id`),
  CONSTRAINT `FK6600C2A1E0E4BFA2` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`),
  CONSTRAINT `FK6600C2A1F63400A2` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storyrank`
--

LOCK TABLES `storyrank` WRITE;
/*!40000 ALTER TABLE `storyrank` DISABLE KEYS */;
INSERT INTO `storyrank` VALUES (1,0,2,2),(2,1,2,3),(3,2,2,1),(4,3,2,4),(5,1,3,5),(6,4,2,5),(7,2,3,6),(8,5,2,6),(9,3,3,7),(10,6,2,7),(11,0,3,8),(12,7,2,8);
/*!40000 ALTER TABLE `storyrank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storyrank_AUD`
--

DROP TABLE IF EXISTS `storyrank_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storyrank_AUD` (
  `id` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `backlog_id` int(11) DEFAULT NULL,
  `story_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FK1CD8B7F220258526` (`REV`),
  CONSTRAINT `FK1CD8B7F220258526` FOREIGN KEY (`REV`) REFERENCES `agilefant_revisions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storyrank_AUD`
--

LOCK TABLES `storyrank_AUD` WRITE;
/*!40000 ALTER TABLE `storyrank_AUD` DISABLE KEYS */;
INSERT INTO `storyrank_AUD` VALUES (1,13,0,0,2,2),(2,13,0,1,2,3),(3,13,0,2,2,1),(4,17,0,3,2,4),(5,21,0,0,3,5),(5,44,1,1,3,5),(6,21,0,4,2,5),(7,24,0,1,3,6),(7,43,1,2,3,6),(8,24,0,5,2,6),(9,37,0,2,3,7),(9,43,1,3,3,7),(10,37,0,6,2,7),(11,40,0,3,3,8),(11,43,1,1,3,8),(11,44,1,0,3,8),(12,40,0,7,2,8),(13,53,0,4,3,9),(13,54,2,4,3,9),(14,53,0,8,2,9),(14,54,2,8,2,9);
/*!40000 ALTER TABLE `storyrank_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_user`
--

DROP TABLE IF EXISTS `task_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_user` (
  `tasks_id` int(11) NOT NULL,
  `responsibles_id` int(11) NOT NULL,
  PRIMARY KEY (`tasks_id`,`responsibles_id`),
  KEY `FKAC91A45B1C109E9` (`tasks_id`),
  KEY `FKAC91A4527F4B120` (`responsibles_id`),
  CONSTRAINT `FKAC91A4527F4B120` FOREIGN KEY (`responsibles_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKAC91A45B1C109E9` FOREIGN KEY (`tasks_id`) REFERENCES `tasks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_user`
--

LOCK TABLES `task_user` WRITE;
/*!40000 ALTER TABLE `task_user` DISABLE KEYS */;
INSERT INTO `task_user` VALUES (1,1),(2,1),(3,1),(4,1),(5,1);
/*!40000 ALTER TABLE `task_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_user_AUD`
--

DROP TABLE IF EXISTS `task_user_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_user_AUD` (
  `REV` int(11) NOT NULL,
  `tasks_id` int(11) NOT NULL,
  `responsibles_id` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`REV`,`tasks_id`,`responsibles_id`),
  KEY `FKF0A49D9620258526` (`REV`),
  CONSTRAINT `FKF0A49D9620258526` FOREIGN KEY (`REV`) REFERENCES `agilefant_revisions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_user_AUD`
--

LOCK TABLES `task_user_AUD` WRITE;
/*!40000 ALTER TABLE `task_user_AUD` DISABLE KEYS */;
INSERT INTO `task_user_AUD` VALUES (22,1,1,0),(51,2,1,0),(55,3,1,0),(58,4,1,0),(59,5,1,0);
/*!40000 ALTER TABLE `task_user_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `effortleft` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `originalestimate` bigint(20) DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL,
  `iteration_id` int(11) DEFAULT NULL,
  `story_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6907B8E4157D2A2` (`iteration_id`),
  KEY `FK6907B8EE0E4BFA2` (`story_id`),
  CONSTRAINT `FK6907B8E4157D2A2` FOREIGN KEY (`iteration_id`) REFERENCES `backlogs` (`id`),
  CONSTRAINT `FK6907B8EE0E4BFA2` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,NULL,120,'Task 1',120,1,0,NULL,5),(2,NULL,0,'A task to have',180,1,1,NULL,8),(3,NULL,360,'Something',360,1,0,NULL,7),(4,NULL,120,'A second task to do it',240,2,1,NULL,8),(5,NULL,0,'Third task in the record books',1320,3,1,NULL,8);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_AUD`
--

DROP TABLE IF EXISTS `tasks_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks_AUD` (
  `id` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `description` longtext,
  `effortleft` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `originalestimate` bigint(20) DEFAULT NULL,
  `rank` int(11) DEFAULT '0',
  `state` int(11) DEFAULT NULL,
  `iteration_id` int(11) DEFAULT NULL,
  `story_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FKBD8325F20258526` (`REV`),
  CONSTRAINT `FKBD8325F20258526` FOREIGN KEY (`REV`) REFERENCES `agilefant_revisions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_AUD`
--

LOCK TABLES `tasks_AUD` WRITE;
/*!40000 ALTER TABLE `tasks_AUD` DISABLE KEYS */;
INSERT INTO `tasks_AUD` VALUES (1,22,0,NULL,NULL,'Task 1',NULL,1,0,NULL,5),(1,83,1,NULL,120,'Task 1',120,1,0,NULL,5),(2,51,0,NULL,180,'A task to have',180,1,1,NULL,8),(2,52,1,NULL,180,'A task to have',180,1,1,NULL,8),(2,56,1,NULL,0,'A task to have',180,1,5,NULL,8),(2,57,1,NULL,0,'A task to have',180,1,1,NULL,8),(2,60,1,NULL,180,'A task to have',180,1,1,NULL,8),(2,61,1,NULL,0,'A task to have',180,1,5,NULL,8),(2,63,1,NULL,0,'A task to have',180,1,1,NULL,8),(2,66,1,NULL,180,'A task to have',180,1,1,NULL,8),(2,67,1,NULL,180,'A task to have',180,1,4,NULL,8),(2,68,1,NULL,180,'A task to have',180,1,1,NULL,8),(2,69,1,NULL,120,'A task to have',180,1,1,NULL,8),(2,70,1,NULL,60,'A task to have',180,1,1,NULL,8),(2,71,1,NULL,0,'A task to have',180,1,5,NULL,8),(2,72,1,NULL,0,'A task to have',180,1,1,NULL,8),(2,75,1,NULL,120,'A task to have',180,1,1,NULL,8),(2,77,1,NULL,240,'A task to have',180,1,1,NULL,8),(2,78,1,NULL,120,'A task to have',180,1,1,NULL,8),(2,80,1,NULL,240,'A task to have',180,1,1,NULL,8),(2,81,1,NULL,240,'A task to have',180,1,1,NULL,8),(2,82,1,NULL,180,'A task to have',180,1,1,NULL,8),(2,84,1,NULL,0,'A task to have',180,1,1,NULL,8),(2,85,1,NULL,180,'A task to have',180,1,1,NULL,8),(2,86,1,NULL,60,'A task to have',180,1,1,NULL,8),(2,91,1,NULL,60,'A task to have',180,1,1,NULL,8),(2,92,1,NULL,0,'A task to have',180,1,1,NULL,8),(3,55,0,NULL,360,'Something',360,1,0,NULL,7),(4,58,0,NULL,NULL,'A second task to do it',NULL,2,0,NULL,8),(4,61,1,NULL,0,'A second task to do it',NULL,2,5,NULL,8),(4,64,1,NULL,0,'A second task to do it',0,2,1,NULL,8),(4,73,1,NULL,0,'A second task to do it',240,2,1,NULL,8),(4,74,1,NULL,0,'A second task to do it',240,2,1,NULL,8),(4,76,1,NULL,180,'A second task to do it',240,2,1,NULL,8),(4,79,1,NULL,180,'A second task to do it',240,2,1,NULL,8),(4,87,1,NULL,0,'A second task to do it',240,2,1,NULL,8),(4,88,1,NULL,180,'A second task to do it',240,2,1,NULL,8),(4,89,1,NULL,300,'A second task to do it',240,2,1,NULL,8),(4,90,1,NULL,120,'A second task to do it',240,2,1,NULL,8),(5,59,0,NULL,1320,'Third task in the record books',1320,3,0,NULL,8),(5,61,1,NULL,0,'Third task in the record books',1320,3,5,NULL,8),(5,65,1,NULL,0,'Third task in the record books',1320,3,1,NULL,8);
/*!40000 ALTER TABLE `tasks_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_user`
--

DROP TABLE IF EXISTS `team_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_user` (
  `User_id` int(11) NOT NULL,
  `Team_id` int(11) NOT NULL,
  KEY `FKF587546DC1610AD2` (`User_id`),
  KEY `FKF587546D745BA992` (`Team_id`),
  CONSTRAINT `FKF587546D745BA992` FOREIGN KEY (`Team_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `FKF587546DC1610AD2` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_user`
--

LOCK TABLES `team_user` WRITE;
/*!40000 ALTER TABLE `team_user` DISABLE KEYS */;
INSERT INTO `team_user` VALUES (2,1),(1,1);
/*!40000 ALTER TABLE `team_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,NULL,'Yes');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autoassignToStories` bit(1) DEFAULT b'0',
  `autoassignToTasks` bit(1) DEFAULT b'1',
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `initials` varchar(255) DEFAULT NULL,
  `loginName` varchar(255) DEFAULT NULL,
  `markStoryStarted` int(11) DEFAULT '1',
  `password` varchar(255) DEFAULT NULL,
  `recentItemsNumberOfWeeks` int(11) NOT NULL,
  `weekEffort` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginName` (`loginName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'\0','',NULL,'','Administrator','Admin','admin',1,'5ebe2294ecd0e0f08eab7690d2a6ee69',16,NULL),(2,'','','nuser@agile.com','','The New Guy','NU','nuser',1,'f30863ba7ee94163fa00e6a54a86b5aa',16,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_AUD`
--

DROP TABLE IF EXISTS `users_AUD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_AUD` (
  `id` int(11) NOT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `initials` varchar(255) DEFAULT NULL,
  `loginName` varchar(255) DEFAULT NULL,
  `weekEffort` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`REV`),
  KEY `FK154C77D920258526` (`REV`),
  CONSTRAINT `FK154C77D920258526` FOREIGN KEY (`REV`) REFERENCES `agilefant_revisions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_AUD`
--

LOCK TABLES `users_AUD` WRITE;
/*!40000 ALTER TABLE `users_AUD` DISABLE KEYS */;
INSERT INTO `users_AUD` VALUES (2,8,0,'nuser@agile.com','','The New Guy','NU','nuser',0);
/*!40000 ALTER TABLE `users_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whatsnextentry`
--

DROP TABLE IF EXISTS `whatsnextentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whatsnextentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`,`user_id`),
  KEY `FK4B213410C1610AD2` (`user_id`),
  KEY `FK4B2134106E84F892` (`task_id`),
  CONSTRAINT `FK4B2134106E84F892` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`),
  CONSTRAINT `FK4B213410C1610AD2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whatsnextentry`
--

LOCK TABLES `whatsnextentry` WRITE;
/*!40000 ALTER TABLE `whatsnextentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `whatsnextentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgetcollections`
--

DROP TABLE IF EXISTS `widgetcollections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgetcollections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK26C78D1C1610AD2` (`user_id`),
  CONSTRAINT `FK26C78D1C1610AD2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgetcollections`
--

LOCK TABLES `widgetcollections` WRITE;
/*!40000 ALTER TABLE `widgetcollections` DISABLE KEYS */;
/*!40000 ALTER TABLE `widgetcollections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listNumber` int(11) DEFAULT NULL,
  `objectId` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `widgetCollection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4FE3EEAF8BACA792` (`widgetCollection_id`),
  CONSTRAINT `FK4FE3EEAF8BACA792` FOREIGN KEY (`widgetCollection_id`) REFERENCES `widgetcollections` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-03-02 16:19:42
