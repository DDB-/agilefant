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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agilefant_revisions`
--

LOCK TABLES `agilefant_revisions` WRITE;
/*!40000 ALTER TABLE `agilefant_revisions` DISABLE KEYS */;
INSERT INTO `agilefant_revisions` VALUES (1,1331507403537,1,'Administrator'),(2,1331507920248,1,'Administrator');
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
  CONSTRAINT `FK3D2B86CDF63400A2` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`),
  CONSTRAINT `FK3D2B86CDC1610AD2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK3D2B86CDE537EC82` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`),
  CONSTRAINT `FK3D2B86CDF8762ABE` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backlogs`
--

LOCK TABLES `backlogs` WRITE;
/*!40000 ALTER TABLE `backlogs` DISABLE KEYS */;
INSERT INTO `backlogs` VALUES ('Product',1,'I am the product','TSN',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Product',2,'Does it work?','Product That Works',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `backlogs_AUD` VALUES ('Product',1,1,0,'I am the product','TSN',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Product',2,2,0,'Does it work?','Product That Works',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `branchMax` bigint(20) NOT NULL,
  `doneSum` bigint(20) NOT NULL,
  `estimateSum` bigint(20) NOT NULL,
  `rootSum` bigint(20) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `backlog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA6B13261F8762ABE` (`backlog_id`),
  KEY `FKA6B13261F63400A2` (`backlog_id`),
  CONSTRAINT `FKA6B13261F63400A2` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`),
  CONSTRAINT `FKA6B13261F8762ABE` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_backlogs`
--

LOCK TABLES `history_backlogs` WRITE;
/*!40000 ALTER TABLE `history_backlogs` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_iterations`
--

LOCK TABLES `history_iterations` WRITE;
/*!40000 ALTER TABLE `history_iterations` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hourentries`
--

LOCK TABLES `hourentries` WRITE;
/*!40000 ALTER TABLE `hourentries` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
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
INSERT INTO `settings` VALUES (1,'Agilefant database version','AgilefantDatabaseVersion','301'),(2,NULL,'RangeLow','0'),(3,NULL,'RangeHigh','120'),(4,NULL,'OptimalLow','70'),(5,NULL,'OptimalHigh','85'),(6,NULL,'CriticalLow','100'),(7,NULL,'HourReporting','true'),(8,NULL,'DevPortfolio','true'),(9,NULL,'DailyWork','true'),(10,NULL,'StoryTreeFieldOrder','state,storyPoints,labels,name,backlog'),(11,NULL,'branchMetricsType','estimate'),(12,NULL,'labelsInStoryList','true'),(13,NULL,'weekendsInBurndown','true');
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
  `backlog_id` int(11) DEFAULT NULL,
  `iteration_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8FB060534157D2A2` (`iteration_id`),
  KEY `FK8FB06053F63400A2` (`backlog_id`),
  KEY `FK8FB06053F5E897CD` (`parent_id`),
  CONSTRAINT `FK8FB06053F5E897CD` FOREIGN KEY (`parent_id`) REFERENCES `stories` (`id`),
  CONSTRAINT `FK8FB060534157D2A2` FOREIGN KEY (`iteration_id`) REFERENCES `backlogs` (`id`),
  CONSTRAINT `FK8FB06053F63400A2` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
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
  `iteration_id` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story_access`
--

LOCK TABLES `story_access` WRITE;
/*!40000 ALTER TABLE `story_access` DISABLE KEYS */;
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
  CONSTRAINT `FK6600C2A1F63400A2` FOREIGN KEY (`backlog_id`) REFERENCES `backlogs` (`id`),
  CONSTRAINT `FK6600C2A1E0E4BFA2` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storyrank`
--

LOCK TABLES `storyrank` WRITE;
/*!40000 ALTER TABLE `storyrank` DISABLE KEYS */;
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
  CONSTRAINT `FK6907B8EE0E4BFA2` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`),
  CONSTRAINT `FK6907B8E4157D2A2` FOREIGN KEY (`iteration_id`) REFERENCES `backlogs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `tasks_AUD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_product`
--

DROP TABLE IF EXISTS `team_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_product` (
  `Team_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  KEY `FK65CE090D745BA992` (`Team_id`),
  KEY `FK65CE090DA7FE2362` (`Product_id`),
  CONSTRAINT `FK65CE090DA7FE2362` FOREIGN KEY (`Product_id`) REFERENCES `backlogs` (`id`),
  CONSTRAINT `FK65CE090D745BA992` FOREIGN KEY (`Team_id`) REFERENCES `teams` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_product`
--

LOCK TABLES `team_product` WRITE;
/*!40000 ALTER TABLE `team_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_product` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
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
  `admin` bit(1) DEFAULT b'1',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'','\0','',NULL,'','Administrator','Admin','admin',1,'5ebe2294ecd0e0f08eab7690d2a6ee69',16,NULL);
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

-- Dump completed on 2012-03-11 16:23:58
