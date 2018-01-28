-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: bearpath
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `aauth_group_to_group`
--

DROP TABLE IF EXISTS `aauth_group_to_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aauth_group_to_group` (
  `group_id` int(11) unsigned NOT NULL,
  `subgroup_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`subgroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aauth_group_to_group`
--

LOCK TABLES `aauth_group_to_group` WRITE;
/*!40000 ALTER TABLE `aauth_group_to_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `aauth_group_to_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aauth_groups`
--

DROP TABLE IF EXISTS `aauth_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aauth_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `definition` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aauth_groups`
--

LOCK TABLES `aauth_groups` WRITE;
/*!40000 ALTER TABLE `aauth_groups` DISABLE KEYS */;
INSERT INTO `aauth_groups` VALUES (1,'Admin','Super Admin Group'),(2,'Public','Public Access Group'),(3,'Default','Default Access Group');
/*!40000 ALTER TABLE `aauth_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aauth_login_attempts`
--

DROP TABLE IF EXISTS `aauth_login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aauth_login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(39) DEFAULT '0',
  `timestamp` datetime DEFAULT NULL,
  `login_attempts` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aauth_login_attempts`
--

LOCK TABLES `aauth_login_attempts` WRITE;
/*!40000 ALTER TABLE `aauth_login_attempts` DISABLE KEYS */;
INSERT INTO `aauth_login_attempts` VALUES (1,'::1','2018-01-20 17:03:07',1);
/*!40000 ALTER TABLE `aauth_login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aauth_perm_to_group`
--

DROP TABLE IF EXISTS `aauth_perm_to_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aauth_perm_to_group` (
  `perm_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`perm_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aauth_perm_to_group`
--

LOCK TABLES `aauth_perm_to_group` WRITE;
/*!40000 ALTER TABLE `aauth_perm_to_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `aauth_perm_to_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aauth_perm_to_user`
--

DROP TABLE IF EXISTS `aauth_perm_to_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aauth_perm_to_user` (
  `perm_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`perm_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aauth_perm_to_user`
--

LOCK TABLES `aauth_perm_to_user` WRITE;
/*!40000 ALTER TABLE `aauth_perm_to_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `aauth_perm_to_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aauth_perms`
--

DROP TABLE IF EXISTS `aauth_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aauth_perms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `definition` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aauth_perms`
--

LOCK TABLES `aauth_perms` WRITE;
/*!40000 ALTER TABLE `aauth_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `aauth_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aauth_pms`
--

DROP TABLE IF EXISTS `aauth_pms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aauth_pms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) unsigned NOT NULL,
  `receiver_id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text,
  `date_sent` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `pm_deleted_sender` int(1) DEFAULT NULL,
  `pm_deleted_receiver` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `full_index` (`id`,`sender_id`,`receiver_id`,`date_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aauth_pms`
--

LOCK TABLES `aauth_pms` WRITE;
/*!40000 ALTER TABLE `aauth_pms` DISABLE KEYS */;
/*!40000 ALTER TABLE `aauth_pms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aauth_user_to_group`
--

DROP TABLE IF EXISTS `aauth_user_to_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aauth_user_to_group` (
  `user_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aauth_user_to_group`
--

LOCK TABLES `aauth_user_to_group` WRITE;
/*!40000 ALTER TABLE `aauth_user_to_group` DISABLE KEYS */;
INSERT INTO `aauth_user_to_group` VALUES (1,1),(1,3),(2,3),(3,1),(4,3),(6,3);
/*!40000 ALTER TABLE `aauth_user_to_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aauth_user_variables`
--

DROP TABLE IF EXISTS `aauth_user_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aauth_user_variables` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `data_key` varchar(100) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aauth_user_variables`
--

LOCK TABLES `aauth_user_variables` WRITE;
/*!40000 ALTER TABLE `aauth_user_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `aauth_user_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aauth_users`
--

DROP TABLE IF EXISTS `aauth_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aauth_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(64) NOT NULL,
  `username` varchar(100) NOT NULL,
  `banned` tinyint(1) DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `forgot_exp` text,
  `remember_time` datetime DEFAULT NULL,
  `remember_exp` text,
  `verification_code` text,
  `totp_secret` varchar(16) DEFAULT NULL,
  `ip_address` text,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `alamat` text,
  `no_hp` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `no_hp_UNIQUE` (`no_hp`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aauth_users`
--

LOCK TABLES `aauth_users` WRITE;
/*!40000 ALTER TABLE `aauth_users` DISABLE KEYS */;
INSERT INTO `aauth_users` VALUES (1,'admin@example.com','dd5073c93fb477a167fd69072e95455834acd93df8fed41a2c468c45b394bfe3','Admin',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL),(2,'xstepnort@gmail.com','4ed57b1b665f70d1107803bc775efcd76d1c80c1b4f8e34a9376473fe23e4992','user102',0,NULL,NULL,'2018-01-20 19:32:13',NULL,NULL,NULL,NULL,NULL,NULL,'ginanjar azie','jl. sadarmanah','081214804704'),(3,'azie.ginanjar@gmail.com','60b297b182e79436f713a0f9f2f525eec8b6e76603b2e3da6c9519ed38299755','azie102',0,NULL,NULL,'2018-01-21 17:23:57',NULL,NULL,NULL,NULL,NULL,NULL,'ginanjar azie','jl. sadarmanah','081214804703'),(4,'azie.ginanjar1@gmail.com','8158de20c63c7dab2254e0d0e3267fe67041ada8228b5bd9794343afa7e6021d','azie103',0,NULL,NULL,'2018-01-21 17:40:21',NULL,NULL,NULL,NULL,NULL,NULL,'ginanjar azie','jl. sadarmanah',NULL),(6,'azie.ginanjar2@gmail.com','bdc13aafcd69b2b9f86650d757ee1b94ed818d09418be08cb3e1dc94f369f33c','azie104',0,NULL,NULL,'2018-01-21 17:45:38',NULL,NULL,NULL,NULL,NULL,NULL,'ginanjar azie','jl. sadarmanah',NULL);
/*!40000 ALTER TABLE `aauth_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-21 18:15:55
