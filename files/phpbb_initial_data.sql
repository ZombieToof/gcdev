-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: phpbb
-- ------------------------------------------------------
-- Server version	5.5.35-1ubuntu1

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
-- Table structure for table `phpbb_acl_groups`
--

DROP TABLE IF EXISTS `phpbb_acl_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_groups`
--

LOCK TABLES `phpbb_acl_groups` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_groups` DISABLE KEYS */;
INSERT INTO `phpbb_acl_groups` VALUES (1,0,85,0,1),(1,0,93,0,1),(1,0,111,0,1),(5,0,0,5,0),(5,0,0,1,0),(2,0,0,6,0),(3,0,0,6,0),(4,0,0,5,0),(4,0,0,10,0),(1,1,0,17,0),(2,1,0,17,0),(3,1,0,17,0),(6,1,0,17,0),(1,2,0,17,0),(2,2,0,15,0),(3,2,0,15,0),(4,2,0,21,0),(5,2,0,14,0),(5,2,0,10,0),(6,2,0,19,0),(7,0,0,23,0),(7,2,0,24,0);
/*!40000 ALTER TABLE `phpbb_acl_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_acl_options`
--

DROP TABLE IF EXISTS `phpbb_acl_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_options`
--

LOCK TABLES `phpbb_acl_options` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_options` DISABLE KEYS */;
INSERT INTO `phpbb_acl_options` VALUES (1,'f_',0,1,0),(2,'f_announce',0,1,0),(3,'f_attach',0,1,0),(4,'f_bbcode',0,1,0),(5,'f_bump',0,1,0),(6,'f_delete',0,1,0),(7,'f_download',0,1,0),(8,'f_edit',0,1,0),(9,'f_email',0,1,0),(10,'f_flash',0,1,0),(11,'f_icons',0,1,0),(12,'f_ignoreflood',0,1,0),(13,'f_img',0,1,0),(14,'f_list',0,1,0),(15,'f_noapprove',0,1,0),(16,'f_poll',0,1,0),(17,'f_post',0,1,0),(18,'f_postcount',0,1,0),(19,'f_print',0,1,0),(20,'f_read',0,1,0),(21,'f_reply',0,1,0),(22,'f_report',0,1,0),(23,'f_search',0,1,0),(24,'f_sigs',0,1,0),(25,'f_smilies',0,1,0),(26,'f_sticky',0,1,0),(27,'f_subscribe',0,1,0),(28,'f_user_lock',0,1,0),(29,'f_vote',0,1,0),(30,'f_votechg',0,1,0),(31,'m_',1,1,0),(32,'m_approve',1,1,0),(33,'m_chgposter',1,1,0),(34,'m_delete',1,1,0),(35,'m_edit',1,1,0),(36,'m_info',1,1,0),(37,'m_lock',1,1,0),(38,'m_merge',1,1,0),(39,'m_move',1,1,0),(40,'m_report',1,1,0),(41,'m_split',1,1,0),(42,'m_ban',1,0,0),(43,'m_warn',1,0,0),(44,'a_',1,0,0),(45,'a_aauth',1,0,0),(46,'a_attach',1,0,0),(47,'a_authgroups',1,0,0),(48,'a_authusers',1,0,0),(49,'a_backup',1,0,0),(50,'a_ban',1,0,0),(51,'a_bbcode',1,0,0),(52,'a_board',1,0,0),(53,'a_bots',1,0,0),(54,'a_clearlogs',1,0,0),(55,'a_email',1,0,0),(56,'a_fauth',1,0,0),(57,'a_forum',1,0,0),(58,'a_forumadd',1,0,0),(59,'a_forumdel',1,0,0),(60,'a_group',1,0,0),(61,'a_groupadd',1,0,0),(62,'a_groupdel',1,0,0),(63,'a_icons',1,0,0),(64,'a_jabber',1,0,0),(65,'a_language',1,0,0),(66,'a_mauth',1,0,0),(67,'a_modules',1,0,0),(68,'a_names',1,0,0),(69,'a_phpinfo',1,0,0),(70,'a_profile',1,0,0),(71,'a_prune',1,0,0),(72,'a_ranks',1,0,0),(73,'a_reasons',1,0,0),(74,'a_roles',1,0,0),(75,'a_search',1,0,0),(76,'a_server',1,0,0),(77,'a_styles',1,0,0),(78,'a_switchperm',1,0,0),(79,'a_uauth',1,0,0),(80,'a_user',1,0,0),(81,'a_userdel',1,0,0),(82,'a_viewauth',1,0,0),(83,'a_viewlogs',1,0,0),(84,'a_words',1,0,0),(85,'u_',1,0,0),(86,'u_attach',1,0,0),(87,'u_chgavatar',1,0,0),(88,'u_chgcensors',1,0,0),(89,'u_chgemail',1,0,0),(90,'u_chggrp',1,0,0),(91,'u_chgname',1,0,0),(92,'u_chgpasswd',1,0,0),(93,'u_download',1,0,0),(94,'u_hideonline',1,0,0),(95,'u_ignoreflood',1,0,0),(96,'u_masspm',1,0,0),(97,'u_masspm_group',1,0,0),(98,'u_pm_attach',1,0,0),(99,'u_pm_bbcode',1,0,0),(100,'u_pm_delete',1,0,0),(101,'u_pm_download',1,0,0),(102,'u_pm_edit',1,0,0),(103,'u_pm_emailpm',1,0,0),(104,'u_pm_flash',1,0,0),(105,'u_pm_forward',1,0,0),(106,'u_pm_img',1,0,0),(107,'u_pm_printpm',1,0,0),(108,'u_pm_smilies',1,0,0),(109,'u_readpm',1,0,0),(110,'u_savedrafts',1,0,0),(111,'u_search',1,0,0),(112,'u_sendemail',1,0,0),(113,'u_sendim',1,0,0),(114,'u_sendpm',1,0,0),(115,'u_sig',1,0,0),(116,'u_viewonline',1,0,0),(117,'u_viewprofile',1,0,0);
/*!40000 ALTER TABLE `phpbb_acl_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_acl_roles`
--

DROP TABLE IF EXISTS `phpbb_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_roles`
--

LOCK TABLES `phpbb_acl_roles` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_roles` DISABLE KEYS */;
INSERT INTO `phpbb_acl_roles` VALUES (1,'ROLE_ADMIN_STANDARD','ROLE_DESCRIPTION_ADMIN_STANDARD','a_',1),(2,'ROLE_ADMIN_FORUM','ROLE_DESCRIPTION_ADMIN_FORUM','a_',3),(3,'ROLE_ADMIN_USERGROUP','ROLE_DESCRIPTION_ADMIN_USERGROUP','a_',4),(4,'ROLE_ADMIN_FULL','ROLE_DESCRIPTION_ADMIN_FULL','a_',2),(5,'ROLE_USER_FULL','ROLE_DESCRIPTION_USER_FULL','u_',3),(6,'ROLE_USER_STANDARD','ROLE_DESCRIPTION_USER_STANDARD','u_',1),(7,'ROLE_USER_LIMITED','ROLE_DESCRIPTION_USER_LIMITED','u_',2),(8,'ROLE_USER_NOPM','ROLE_DESCRIPTION_USER_NOPM','u_',4),(9,'ROLE_USER_NOAVATAR','ROLE_DESCRIPTION_USER_NOAVATAR','u_',5),(10,'ROLE_MOD_FULL','ROLE_DESCRIPTION_MOD_FULL','m_',3),(11,'ROLE_MOD_STANDARD','ROLE_DESCRIPTION_MOD_STANDARD','m_',1),(12,'ROLE_MOD_SIMPLE','ROLE_DESCRIPTION_MOD_SIMPLE','m_',2),(13,'ROLE_MOD_QUEUE','ROLE_DESCRIPTION_MOD_QUEUE','m_',4),(14,'ROLE_FORUM_FULL','ROLE_DESCRIPTION_FORUM_FULL','f_',7),(15,'ROLE_FORUM_STANDARD','ROLE_DESCRIPTION_FORUM_STANDARD','f_',5),(16,'ROLE_FORUM_NOACCESS','ROLE_DESCRIPTION_FORUM_NOACCESS','f_',1),(17,'ROLE_FORUM_READONLY','ROLE_DESCRIPTION_FORUM_READONLY','f_',2),(18,'ROLE_FORUM_LIMITED','ROLE_DESCRIPTION_FORUM_LIMITED','f_',3),(19,'ROLE_FORUM_BOT','ROLE_DESCRIPTION_FORUM_BOT','f_',9),(20,'ROLE_FORUM_ONQUEUE','ROLE_DESCRIPTION_FORUM_ONQUEUE','f_',8),(21,'ROLE_FORUM_POLLS','ROLE_DESCRIPTION_FORUM_POLLS','f_',6),(22,'ROLE_FORUM_LIMITED_POLLS','ROLE_DESCRIPTION_FORUM_LIMITED_POLLS','f_',4),(23,'ROLE_USER_NEW_MEMBER','ROLE_DESCRIPTION_USER_NEW_MEMBER','u_',6),(24,'ROLE_FORUM_NEW_MEMBER','ROLE_DESCRIPTION_FORUM_NEW_MEMBER','f_',10);
/*!40000 ALTER TABLE `phpbb_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_acl_roles_data`
--

DROP TABLE IF EXISTS `phpbb_acl_roles_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_roles_data`
--

LOCK TABLES `phpbb_acl_roles_data` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_roles_data` DISABLE KEYS */;
INSERT INTO `phpbb_acl_roles_data` VALUES (1,44,1),(1,46,1),(1,47,1),(1,48,1),(1,50,1),(1,51,1),(1,52,1),(1,56,1),(1,57,1),(1,58,1),(1,59,1),(1,60,1),(1,61,1),(1,62,1),(1,63,1),(1,66,1),(1,68,1),(1,70,1),(1,71,1),(1,72,1),(1,73,1),(1,79,1),(1,80,1),(1,81,1),(1,82,1),(1,83,1),(1,84,1),(2,44,1),(2,47,1),(2,48,1),(2,56,1),(2,57,1),(2,58,1),(2,59,1),(2,66,1),(2,71,1),(2,79,1),(2,82,1),(2,83,1),(3,44,1),(3,47,1),(3,48,1),(3,50,1),(3,60,1),(3,61,1),(3,62,1),(3,72,1),(3,79,1),(3,80,1),(3,82,1),(3,83,1),(4,44,1),(4,45,1),(4,46,1),(4,47,1),(4,48,1),(4,49,1),(4,50,1),(4,51,1),(4,52,1),(4,53,1),(4,54,1),(4,55,1),(4,56,1),(4,57,1),(4,58,1),(4,59,1),(4,60,1),(4,61,1),(4,62,1),(4,63,1),(4,64,1),(4,65,1),(4,66,1),(4,67,1),(4,68,1),(4,69,1),(4,70,1),(4,71,1),(4,72,1),(4,73,1),(4,74,1),(4,75,1),(4,76,1),(4,77,1),(4,78,1),(4,79,1),(4,80,1),(4,81,1),(4,82,1),(4,83,1),(4,84,1),(5,85,1),(5,86,1),(5,87,1),(5,88,1),(5,89,1),(5,90,1),(5,91,1),(5,92,1),(5,93,1),(5,94,1),(5,95,1),(5,96,1),(5,97,1),(5,98,1),(5,99,1),(5,100,1),(5,101,1),(5,102,1),(5,103,1),(5,104,1),(5,105,1),(5,106,1),(5,107,1),(5,108,1),(5,109,1),(5,110,1),(5,111,1),(5,112,1),(5,113,1),(5,114,1),(5,115,1),(5,116,1),(5,117,1),(6,85,1),(6,86,1),(6,87,1),(6,88,1),(6,89,1),(6,92,1),(6,93,1),(6,94,1),(6,96,1),(6,97,1),(6,98,1),(6,99,1),(6,100,1),(6,101,1),(6,102,1),(6,103,1),(6,106,1),(6,107,1),(6,108,1),(6,109,1),(6,110,1),(6,111,1),(6,112,1),(6,113,1),(6,114,1),(6,115,1),(6,117,1),(7,85,1),(7,87,1),(7,88,1),(7,89,1),(7,92,1),(7,93,1),(7,94,1),(7,99,1),(7,100,1),(7,101,1),(7,102,1),(7,105,1),(7,106,1),(7,107,1),(7,108,1),(7,109,1),(7,114,1),(7,115,1),(7,117,1),(8,85,1),(8,87,1),(8,88,1),(8,89,1),(8,92,1),(8,93,1),(8,94,1),(8,96,0),(8,97,0),(8,109,0),(8,114,0),(8,115,1),(8,117,1),(9,85,1),(9,87,0),(9,88,1),(9,89,1),(9,92,1),(9,93,1),(9,94,1),(9,99,1),(9,100,1),(9,101,1),(9,102,1),(9,105,1),(9,106,1),(9,107,1),(9,108,1),(9,109,1),(9,114,1),(9,115,1),(9,117,1),(10,31,1),(10,32,1),(10,33,1),(10,34,1),(10,35,1),(10,36,1),(10,37,1),(10,38,1),(10,39,1),(10,40,1),(10,41,1),(10,42,1),(10,43,1),(11,31,1),(11,32,1),(11,34,1),(11,35,1),(11,36,1),(11,37,1),(11,38,1),(11,39,1),(11,40,1),(11,41,1),(11,43,1),(12,31,1),(12,34,1),(12,35,1),(12,36,1),(12,40,1),(13,31,1),(13,32,1),(13,35,1),(14,1,1),(14,2,1),(14,3,1),(14,4,1),(14,5,1),(14,6,1),(14,7,1),(14,8,1),(14,9,1),(14,10,1),(14,11,1),(14,12,1),(14,13,1),(14,14,1),(14,15,1),(14,16,1),(14,17,1),(14,18,1),(14,19,1),(14,20,1),(14,21,1),(14,22,1),(14,23,1),(14,24,1),(14,25,1),(14,26,1),(14,27,1),(14,28,1),(14,29,1),(14,30,1),(15,1,1),(15,3,1),(15,4,1),(15,5,1),(15,6,1),(15,7,1),(15,8,1),(15,9,1),(15,11,1),(15,13,1),(15,14,1),(15,15,1),(15,17,1),(15,18,1),(15,19,1),(15,20,1),(15,21,1),(15,22,1),(15,23,1),(15,24,1),(15,25,1),(15,27,1),(15,29,1),(15,30,1),(16,1,0),(17,1,1),(17,7,1),(17,14,1),(17,19,1),(17,20,1),(17,23,1),(17,27,1),(18,1,1),(18,4,1),(18,7,1),(18,8,1),(18,9,1),(18,13,1),(18,14,1),(18,15,1),(18,17,1),(18,18,1),(18,19,1),(18,20,1),(18,21,1),(18,22,1),(18,23,1),(18,24,1),(18,25,1),(18,27,1),(18,29,1),(19,1,1),(19,7,1),(19,14,1),(19,19,1),(19,20,1),(20,1,1),(20,3,1),(20,4,1),(20,7,1),(20,8,1),(20,9,1),(20,13,1),(20,14,1),(20,15,0),(20,17,1),(20,18,1),(20,19,1),(20,20,1),(20,21,1),(20,22,1),(20,23,1),(20,24,1),(20,25,1),(20,27,1),(20,29,1),(21,1,1),(21,3,1),(21,4,1),(21,5,1),(21,6,1),(21,7,1),(21,8,1),(21,9,1),(21,11,1),(21,13,1),(21,14,1),(21,15,1),(21,16,1),(21,17,1),(21,18,1),(21,19,1),(21,20,1),(21,21,1),(21,22,1),(21,23,1),(21,24,1),(21,25,1),(21,27,1),(21,29,1),(21,30,1),(22,1,1),(22,4,1),(22,7,1),(22,8,1),(22,9,1),(22,13,1),(22,14,1),(22,15,1),(22,16,1),(22,17,1),(22,18,1),(22,19,1),(22,20,1),(22,21,1),(22,22,1),(22,23,1),(22,24,1),(22,25,1),(22,27,1),(22,29,1),(23,96,0),(23,97,0),(23,114,0),(24,15,0);
/*!40000 ALTER TABLE `phpbb_acl_roles_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_acl_users`
--

DROP TABLE IF EXISTS `phpbb_acl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_acl_users`
--

LOCK TABLES `phpbb_acl_users` WRITE;
/*!40000 ALTER TABLE `phpbb_acl_users` DISABLE KEYS */;
INSERT INTO `phpbb_acl_users` VALUES (2,0,0,5,0);
/*!40000 ALTER TABLE `phpbb_acl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_attachments`
--

DROP TABLE IF EXISTS `phpbb_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `filetime` int(11) unsigned NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_attachments`
--

LOCK TABLES `phpbb_attachments` WRITE;
/*!40000 ALTER TABLE `phpbb_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_banlist`
--

DROP TABLE IF EXISTS `phpbb_banlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_banlist`
--

LOCK TABLES `phpbb_banlist` WRITE;
/*!40000 ALTER TABLE `phpbb_banlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_banlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_bbcodes`
--

DROP TABLE IF EXISTS `phpbb_bbcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_bbcodes` (
  `bbcode_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_bbcodes`
--

LOCK TABLES `phpbb_bbcodes` WRITE;
/*!40000 ALTER TABLE `phpbb_bbcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_bbcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_bookmarks`
--

DROP TABLE IF EXISTS `phpbb_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_bookmarks`
--

LOCK TABLES `phpbb_bookmarks` WRITE;
/*!40000 ALTER TABLE `phpbb_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_bots`
--

DROP TABLE IF EXISTS `phpbb_bots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_bots`
--

LOCK TABLES `phpbb_bots` WRITE;
/*!40000 ALTER TABLE `phpbb_bots` DISABLE KEYS */;
INSERT INTO `phpbb_bots` VALUES (1,1,'AdsBot [Google]',3,'AdsBot-Google',''),(2,1,'Alexa [Bot]',4,'ia_archiver',''),(3,1,'Alta Vista [Bot]',5,'Scooter/',''),(4,1,'Ask Jeeves [Bot]',6,'Ask Jeeves',''),(5,1,'Baidu [Spider]',7,'Baiduspider',''),(6,1,'Bing [Bot]',8,'bingbot/',''),(7,1,'Exabot [Bot]',9,'Exabot',''),(8,1,'FAST Enterprise [Crawler]',10,'FAST Enterprise Crawler',''),(9,1,'FAST WebCrawler [Crawler]',11,'FAST-WebCrawler/',''),(10,1,'Francis [Bot]',12,'http://www.neomo.de/',''),(11,1,'Gigabot [Bot]',13,'Gigabot/',''),(12,1,'Google Adsense [Bot]',14,'Mediapartners-Google',''),(13,1,'Google Desktop',15,'Google Desktop',''),(14,1,'Google Feedfetcher',16,'Feedfetcher-Google',''),(15,1,'Google [Bot]',17,'Googlebot',''),(16,1,'Heise IT-Markt [Crawler]',18,'heise-IT-Markt-Crawler',''),(17,1,'Heritrix [Crawler]',19,'heritrix/1.',''),(18,1,'IBM Research [Bot]',20,'ibm.com/cs/crawler',''),(19,1,'ICCrawler - ICjobs',21,'ICCrawler - ICjobs',''),(20,1,'ichiro [Crawler]',22,'ichiro/',''),(21,1,'Majestic-12 [Bot]',23,'MJ12bot/',''),(22,1,'Metager [Bot]',24,'MetagerBot/',''),(23,1,'MSN NewsBlogs',25,'msnbot-NewsBlogs/',''),(24,1,'MSN [Bot]',26,'msnbot/',''),(25,1,'MSNbot Media',27,'msnbot-media/',''),(26,1,'Nutch [Bot]',28,'http://lucene.apache.org/nutch/',''),(27,1,'Online link [Validator]',29,'online link validator',''),(28,1,'psbot [Picsearch]',30,'psbot/0',''),(29,1,'Sensis [Crawler]',31,'Sensis Web Crawler',''),(30,1,'SEO Crawler',32,'SEO search Crawler/',''),(31,1,'Seoma [Crawler]',33,'Seoma [SEO Crawler]',''),(32,1,'SEOSearch [Crawler]',34,'SEOsearch/',''),(33,1,'Snappy [Bot]',35,'Snappy/1.1 ( http://www.urltrends.com/ )',''),(34,1,'Steeler [Crawler]',36,'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/',''),(35,1,'Telekom [Bot]',37,'crawleradmin.t-info@telekom.de',''),(36,1,'TurnitinBot [Bot]',38,'TurnitinBot/',''),(37,1,'Voyager [Bot]',39,'voyager/',''),(38,1,'W3 [Sitesearch]',40,'W3 SiteSearch Crawler',''),(39,1,'W3C [Linkcheck]',41,'W3C-checklink/',''),(40,1,'W3C [Validator]',42,'W3C_Validator',''),(41,1,'YaCy [Bot]',43,'yacybot',''),(42,1,'Yahoo MMCrawler [Bot]',44,'Yahoo-MMCrawler/',''),(43,1,'Yahoo Slurp [Bot]',45,'Yahoo! DE Slurp',''),(44,1,'Yahoo [Bot]',46,'Yahoo! Slurp',''),(45,1,'YahooSeeker [Bot]',47,'YahooSeeker/','');
/*!40000 ALTER TABLE `phpbb_bots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_config`
--

DROP TABLE IF EXISTS `phpbb_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_config`
--

LOCK TABLES `phpbb_config` WRITE;
/*!40000 ALTER TABLE `phpbb_config` DISABLE KEYS */;
INSERT INTO `phpbb_config` VALUES ('active_sessions','0',0),('allow_attachments','1',0),('allow_autologin','1',0),('allow_avatar','1',0),('allow_avatar_local','0',0),('allow_avatar_remote','0',0),('allow_avatar_remote_upload','0',0),('allow_avatar_upload','1',0),('allow_bbcode','1',0),('allow_birthdays','1',0),('allow_bookmarks','1',0),('allow_emailreuse','0',0),('allow_forum_notify','1',0),('allow_mass_pm','1',0),('allow_name_chars','USERNAME_CHARS_ANY',0),('allow_namechange','0',0),('allow_nocensors','0',0),('allow_pm_attach','0',0),('allow_pm_report','1',0),('allow_post_flash','1',0),('allow_post_links','1',0),('allow_privmsg','1',0),('allow_quick_reply','1',0),('allow_sig','1',0),('allow_sig_bbcode','1',0),('allow_sig_flash','0',0),('allow_sig_img','1',0),('allow_sig_links','1',0),('allow_sig_pm','1',0),('allow_sig_smilies','1',0),('allow_smilies','1',0),('allow_topic_notify','1',0),('attachment_quota','52428800',0),('auth_bbcode_pm','1',0),('auth_flash_pm','0',0),('auth_img_pm','1',0),('auth_method','db',0),('auth_smilies_pm','1',0),('avatar_filesize','6144',0),('avatar_gallery_path','images/avatars/gallery',0),('avatar_max_height','90',0),('avatar_max_width','90',0),('avatar_min_height','20',0),('avatar_min_width','20',0),('avatar_path','images/avatars/upload',0),('avatar_salt','72a21f2d00c13f3ece2caf41522b101b',0),('board_contact','test@example.com',0),('board_disable','0',0),('board_disable_msg','',0),('board_dst','0',0),('board_email','test@example.com',0),('board_email_form','0',0),('board_email_sig','Thanks, The Management',0),('board_hide_emails','1',0),('board_startdate','1398294888',0),('board_timezone','0',0),('browser_check','1',0),('bump_interval','10',0),('bump_type','d',0),('cache_gc','7200',0),('cache_last_gc','0',1),('captcha_gd','1',0),('captcha_gd_3d_noise','1',0),('captcha_gd_fonts','1',0),('captcha_gd_foreground_noise','0',0),('captcha_gd_wave','0',0),('captcha_gd_x_grid','25',0),('captcha_gd_y_grid','25',0),('captcha_plugin','phpbb_captcha_gd',0),('check_attachment_content','1',0),('check_dnsbl','0',0),('chg_passforce','0',0),('confirm_refresh','1',0),('cookie_domain','localhost',0),('cookie_name','phpbb3_jougc',0),('cookie_path','/',0),('cookie_secure','0',0),('coppa_enable','0',0),('coppa_fax','',0),('coppa_mail','',0),('cron_lock','0',1),('database_gc','604800',0),('database_last_gc','0',1),('dbms_version','5.5.35-1ubuntu1',0),('default_dateformat','D M d, Y g:i a',0),('default_lang','en',0),('default_style','1',0),('delete_time','0',0),('display_last_edited','1',0),('display_order','0',0),('edit_time','0',0),('email_check_mx','1',0),('email_enable','0',0),('email_function_name','mail',0),('email_max_chunk_size','50',0),('email_package_size','20',0),('enable_confirm','1',0),('enable_pm_icons','1',0),('enable_post_confirm','1',0),('feed_enable','1',0),('feed_forum','1',0),('feed_http_auth','0',0),('feed_item_statistics','1',0),('feed_limit_post','15',0),('feed_limit_topic','10',0),('feed_overall','1',0),('feed_overall_forums','0',0),('feed_topic','1',0),('feed_topics_active','0',0),('feed_topics_new','1',0),('flood_interval','15',0),('force_server_vars','0',0),('form_token_lifetime','7200',0),('form_token_mintime','0',0),('form_token_sid_guests','1',0),('forward_pm','1',0),('forwarded_for_check','0',0),('full_folder_action','2',0),('fulltext_mysql_max_word_len','254',0),('fulltext_mysql_min_word_len','4',0),('fulltext_native_common_thres','5',0),('fulltext_native_load_upd','1',0),('fulltext_native_max_chars','14',0),('fulltext_native_min_chars','3',0),('gzip_compress','0',0),('hot_threshold','25',0),('icons_path','images/icons',0),('img_create_thumbnail','0',0),('img_display_inlined','1',0),('img_imagick','/usr/bin/',0),('img_link_height','0',0),('img_link_width','0',0),('img_max_height','0',0),('img_max_thumb_width','400',0),('img_max_width','0',0),('img_min_thumb_filesize','12000',0),('ip_check','3',0),('ip_login_limit_max','50',0),('ip_login_limit_time','21600',0),('ip_login_limit_use_forwarded','0',0),('jab_enable','0',0),('jab_host','',0),('jab_package_size','20',0),('jab_password','',0),('jab_port','5222',0),('jab_use_ssl','0',0),('jab_username','',0),('last_queue_run','0',1),('ldap_base_dn','',0),('ldap_email','',0),('ldap_password','',0),('ldap_port','',0),('ldap_server','',0),('ldap_uid','',0),('ldap_user','',0),('ldap_user_filter','',0),('limit_load','0',0),('limit_search_load','0',0),('load_anon_lastread','0',0),('load_birthdays','1',0),('load_cpf_memberlist','0',0),('load_cpf_viewprofile','1',0),('load_cpf_viewtopic','0',0),('load_db_lastread','1',0),('load_db_track','1',0),('load_jumpbox','1',0),('load_moderators','1',0),('load_online','1',0),('load_online_guests','1',0),('load_online_time','5',0),('load_onlinetrack','1',0),('load_search','1',0),('load_tplcompile','0',0),('load_unreads_search','1',0),('load_user_activity','1',0),('max_attachments','3',0),('max_attachments_pm','1',0),('max_autologin_time','0',0),('max_filesize','262144',0),('max_filesize_pm','262144',0),('max_login_attempts','3',0),('max_name_chars','20',0),('max_num_search_keywords','10',0),('max_pass_chars','100',0),('max_poll_options','10',0),('max_post_chars','60000',0),('max_post_font_size','200',0),('max_post_img_height','0',0),('max_post_img_width','0',0),('max_post_smilies','0',0),('max_post_urls','0',0),('max_quote_depth','3',0),('max_reg_attempts','5',0),('max_sig_chars','255',0),('max_sig_font_size','200',0),('max_sig_img_height','0',0),('max_sig_img_width','0',0),('max_sig_smilies','0',0),('max_sig_urls','5',0),('mime_triggers','body|head|html|img|plaintext|a href|pre|script|table|title',0),('min_name_chars','3',0),('min_pass_chars','6',0),('min_post_chars','1',0),('min_search_author_chars','3',0),('new_member_group_default','0',0),('new_member_post_limit','3',0),('newest_user_colour','AA0000',1),('newest_user_id','2',1),('newest_username','admin',1),('num_files','0',1),('num_posts','1',1),('num_topics','1',1),('num_users','1',1),('override_user_style','0',0),('pass_complex','PASS_TYPE_ANY',0),('pm_edit_time','0',0),('pm_max_boxes','4',0),('pm_max_msgs','50',0),('pm_max_recipients','0',0),('posts_per_page','10',0),('print_pm','1',0),('questionnaire_unique_id','3cc216ab4a49c230',0),('queue_interval','60',0),('rand_seed','4be2e5ead6a81ace672f36ba7355fda9',1),('rand_seed_last_update','1398294898',1),('ranks_path','images/ranks',0),('record_online_date','0',1),('record_online_users','0',1),('referer_validation','1',0),('require_activation','0',0),('script_path','/',0),('search_anonymous_interval','0',0),('search_block_size','250',0),('search_gc','7200',0),('search_indexing_state','',1),('search_interval','0',0),('search_last_gc','0',1),('search_store_results','1800',0),('search_type','fulltext_native',0),('secure_allow_deny','1',0),('secure_allow_empty_referer','1',0),('secure_downloads','0',0),('server_name','localhost',0),('server_port','10080',0),('server_protocol','http://',0),('session_gc','3600',0),('session_last_gc','0',1),('session_length','3600',0),('site_desc','A short text to describe your forum',0),('sitename','yourdomain.com',0),('smilies_path','images/smilies',0),('smilies_per_page','50',0),('smtp_auth_method','PLAIN',0),('smtp_delivery','0',0),('smtp_host','',0),('smtp_password','',0),('smtp_port','25',0),('smtp_username','',0),('topics_per_page','25',0),('tpl_allow_php','0',0),('upload_dir_size','0',1),('upload_icons_path','images/upload_icons',0),('upload_path','files',0),('version','3.0.12',0),('warnings_expire_days','90',0),('warnings_gc','14400',0),('warnings_last_gc','0',1);
/*!40000 ALTER TABLE `phpbb_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_confirm`
--

DROP TABLE IF EXISTS `phpbb_confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT '0',
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_confirm`
--

LOCK TABLES `phpbb_confirm` WRITE;
/*!40000 ALTER TABLE `phpbb_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_disallow`
--

DROP TABLE IF EXISTS `phpbb_disallow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_disallow`
--

LOCK TABLES `phpbb_disallow` WRITE;
/*!40000 ALTER TABLE `phpbb_disallow` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_disallow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_drafts`
--

DROP TABLE IF EXISTS `phpbb_drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `save_time` int(11) unsigned NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_drafts`
--

LOCK TABLES `phpbb_drafts` WRITE;
/*!40000 ALTER TABLE `phpbb_drafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_extension_groups`
--

DROP TABLE IF EXISTS `phpbb_extension_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_extension_groups`
--

LOCK TABLES `phpbb_extension_groups` WRITE;
/*!40000 ALTER TABLE `phpbb_extension_groups` DISABLE KEYS */;
INSERT INTO `phpbb_extension_groups` VALUES (1,'IMAGES',1,1,1,'',0,'',0),(2,'ARCHIVES',0,1,1,'',0,'',0),(3,'PLAIN_TEXT',0,0,1,'',0,'',0),(4,'DOCUMENTS',0,0,1,'',0,'',0),(5,'REAL_MEDIA',3,0,1,'',0,'',0),(6,'WINDOWS_MEDIA',2,0,1,'',0,'',0),(7,'FLASH_FILES',5,0,1,'',0,'',0),(8,'QUICKTIME_MEDIA',6,0,1,'',0,'',0),(9,'DOWNLOADABLE_FILES',0,0,1,'',0,'',0);
/*!40000 ALTER TABLE `phpbb_extension_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_extensions`
--

DROP TABLE IF EXISTS `phpbb_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_extensions`
--

LOCK TABLES `phpbb_extensions` WRITE;
/*!40000 ALTER TABLE `phpbb_extensions` DISABLE KEYS */;
INSERT INTO `phpbb_extensions` VALUES (1,1,'gif'),(2,1,'png'),(3,1,'jpeg'),(4,1,'jpg'),(5,1,'tif'),(6,1,'tiff'),(7,1,'tga'),(8,2,'gtar'),(9,2,'gz'),(10,2,'tar'),(11,2,'zip'),(12,2,'rar'),(13,2,'ace'),(14,2,'torrent'),(15,2,'tgz'),(16,2,'bz2'),(17,2,'7z'),(18,3,'txt'),(19,3,'c'),(20,3,'h'),(21,3,'cpp'),(22,3,'hpp'),(23,3,'diz'),(24,3,'csv'),(25,3,'ini'),(26,3,'log'),(27,3,'js'),(28,3,'xml'),(29,4,'xls'),(30,4,'xlsx'),(31,4,'xlsm'),(32,4,'xlsb'),(33,4,'doc'),(34,4,'docx'),(35,4,'docm'),(36,4,'dot'),(37,4,'dotx'),(38,4,'dotm'),(39,4,'pdf'),(40,4,'ai'),(41,4,'ps'),(42,4,'ppt'),(43,4,'pptx'),(44,4,'pptm'),(45,4,'odg'),(46,4,'odp'),(47,4,'ods'),(48,4,'odt'),(49,4,'rtf'),(50,5,'rm'),(51,5,'ram'),(52,6,'wma'),(53,6,'wmv'),(54,7,'swf'),(55,8,'mov'),(56,8,'m4v'),(57,8,'m4a'),(58,8,'mp4'),(59,8,'3gp'),(60,8,'3g2'),(61,8,'qt'),(62,9,'mpeg'),(63,9,'mpg'),(64,9,'mp3'),(65,9,'ogg'),(66,9,'ogm');
/*!40000 ALTER TABLE `phpbb_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_forums`
--

DROP TABLE IF EXISTS `phpbb_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_real` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `forum_options` int(20) unsigned NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) unsigned NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_forums`
--

LOCK TABLES `phpbb_forums` WRITE;
/*!40000 ALTER TABLE `phpbb_forums` DISABLE KEYS */;
INSERT INTO `phpbb_forums` VALUES (1,0,1,4,'','Your first category','','',7,'','','',0,'','','','',7,'',0,0,0,1,1,1,1,2,'',1398294888,'admin','AA0000',32,0,1,1,1,1,0,0,0,0,0),(2,1,2,3,'','Your first forum','Description of your first forum.','',7,'','','',0,'','','','',7,'',0,1,0,1,1,1,1,2,'Welcome to phpBB3',1398294888,'admin','AA0000',48,0,1,1,1,1,0,0,0,0,0);
/*!40000 ALTER TABLE `phpbb_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_forums_access`
--

DROP TABLE IF EXISTS `phpbb_forums_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_forums_access`
--

LOCK TABLES `phpbb_forums_access` WRITE;
/*!40000 ALTER TABLE `phpbb_forums_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_forums_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_forums_track`
--

DROP TABLE IF EXISTS `phpbb_forums_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_forums_track`
--

LOCK TABLES `phpbb_forums_track` WRITE;
/*!40000 ALTER TABLE `phpbb_forums_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_forums_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_forums_watch`
--

DROP TABLE IF EXISTS `phpbb_forums_watch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_forums_watch`
--

LOCK TABLES `phpbb_forums_watch` WRITE;
/*!40000 ALTER TABLE `phpbb_forums_watch` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_forums_watch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_groups`
--

DROP TABLE IF EXISTS `phpbb_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_legend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_groups`
--

LOCK TABLES `phpbb_groups` WRITE;
/*!40000 ALTER TABLE `phpbb_groups` DISABLE KEYS */;
INSERT INTO `phpbb_groups` VALUES (1,3,0,0,'GUESTS','','',7,'',0,'',0,0,0,0,'',0,0,0,5,0),(2,3,0,0,'REGISTERED','','',7,'',0,'',0,0,0,0,'',0,0,0,5,0),(3,3,0,0,'REGISTERED_COPPA','','',7,'',0,'',0,0,0,0,'',0,0,0,5,0),(4,3,0,0,'GLOBAL_MODERATORS','','',7,'',0,'',0,0,0,0,'00AA00',0,0,0,0,1),(5,3,1,0,'ADMINISTRATORS','','',7,'',0,'',0,0,0,0,'AA0000',0,0,0,0,1),(6,3,0,0,'BOTS','','',7,'',0,'',0,0,0,0,'9E8DA7',0,0,0,5,0),(7,3,0,0,'NEWLY_REGISTERED','','',7,'',0,'',0,0,0,0,'',0,0,0,5,0);
/*!40000 ALTER TABLE `phpbb_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_icons`
--

DROP TABLE IF EXISTS `phpbb_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_icons`
--

LOCK TABLES `phpbb_icons` WRITE;
/*!40000 ALTER TABLE `phpbb_icons` DISABLE KEYS */;
INSERT INTO `phpbb_icons` VALUES (1,'misc/fire.gif',16,16,1,1),(2,'smile/redface.gif',16,16,9,1),(3,'smile/mrgreen.gif',16,16,10,1),(4,'misc/heart.gif',16,16,4,1),(5,'misc/star.gif',16,16,2,1),(6,'misc/radioactive.gif',16,16,3,1),(7,'misc/thinking.gif',16,16,5,1),(8,'smile/info.gif',16,16,8,1),(9,'smile/question.gif',16,16,6,1),(10,'smile/alert.gif',16,16,7,1);
/*!40000 ALTER TABLE `phpbb_icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_lang`
--

DROP TABLE IF EXISTS `phpbb_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_lang`
--

LOCK TABLES `phpbb_lang` WRITE;
/*!40000 ALTER TABLE `phpbb_lang` DISABLE KEYS */;
INSERT INTO `phpbb_lang` VALUES (1,'en','en','British English','British English','phpBB Group');
/*!40000 ALTER TABLE `phpbb_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_log`
--

DROP TABLE IF EXISTS `phpbb_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_log`
--

LOCK TABLES `phpbb_log` WRITE;
/*!40000 ALTER TABLE `phpbb_log` DISABLE KEYS */;
INSERT INTO `phpbb_log` VALUES (1,0,2,0,0,0,'10.0.2.2',1398294895,'LOG_INSTALL_INSTALLED','a:1:{i:0;s:6:\"3.0.12\";}');
/*!40000 ALTER TABLE `phpbb_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_login_attempts`
--

DROP TABLE IF EXISTS `phpbb_login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  KEY `att_ip` (`attempt_ip`,`attempt_time`),
  KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  KEY `att_time` (`attempt_time`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_login_attempts`
--

LOCK TABLES `phpbb_login_attempts` WRITE;
/*!40000 ALTER TABLE `phpbb_login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_moderator_cache`
--

DROP TABLE IF EXISTS `phpbb_moderator_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_moderator_cache`
--

LOCK TABLES `phpbb_moderator_cache` WRITE;
/*!40000 ALTER TABLE `phpbb_moderator_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_moderator_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_modules`
--

DROP TABLE IF EXISTS `phpbb_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_modules`
--

LOCK TABLES `phpbb_modules` WRITE;
/*!40000 ALTER TABLE `phpbb_modules` DISABLE KEYS */;
INSERT INTO `phpbb_modules` VALUES (1,1,1,'','acp',0,1,64,'ACP_CAT_GENERAL','',''),(2,1,1,'','acp',1,4,17,'ACP_QUICK_ACCESS','',''),(3,1,1,'','acp',1,18,41,'ACP_BOARD_CONFIGURATION','',''),(4,1,1,'','acp',1,42,49,'ACP_CLIENT_COMMUNICATION','',''),(5,1,1,'','acp',1,50,63,'ACP_SERVER_CONFIGURATION','',''),(6,1,1,'','acp',0,65,84,'ACP_CAT_FORUMS','',''),(7,1,1,'','acp',6,66,71,'ACP_MANAGE_FORUMS','',''),(8,1,1,'','acp',6,72,83,'ACP_FORUM_BASED_PERMISSIONS','',''),(9,1,1,'','acp',0,85,110,'ACP_CAT_POSTING','',''),(10,1,1,'','acp',9,86,99,'ACP_MESSAGES','',''),(11,1,1,'','acp',9,100,109,'ACP_ATTACHMENTS','',''),(12,1,1,'','acp',0,111,166,'ACP_CAT_USERGROUP','',''),(13,1,1,'','acp',12,112,145,'ACP_CAT_USERS','',''),(14,1,1,'','acp',12,146,153,'ACP_GROUPS','',''),(15,1,1,'','acp',12,154,165,'ACP_USER_SECURITY','',''),(16,1,1,'','acp',0,167,216,'ACP_CAT_PERMISSIONS','',''),(17,1,1,'','acp',16,170,179,'ACP_GLOBAL_PERMISSIONS','',''),(18,1,1,'','acp',16,180,191,'ACP_FORUM_BASED_PERMISSIONS','',''),(19,1,1,'','acp',16,192,201,'ACP_PERMISSION_ROLES','',''),(20,1,1,'','acp',16,202,215,'ACP_PERMISSION_MASKS','',''),(21,1,1,'','acp',0,217,230,'ACP_CAT_STYLES','',''),(22,1,1,'','acp',21,218,221,'ACP_STYLE_MANAGEMENT','',''),(23,1,1,'','acp',21,222,229,'ACP_STYLE_COMPONENTS','',''),(24,1,1,'','acp',0,231,250,'ACP_CAT_MAINTENANCE','',''),(25,1,1,'','acp',24,232,241,'ACP_FORUM_LOGS','',''),(26,1,1,'','acp',24,242,249,'ACP_CAT_DATABASE','',''),(27,1,1,'','acp',0,251,276,'ACP_CAT_SYSTEM','',''),(28,1,1,'','acp',27,252,255,'ACP_AUTOMATION','',''),(29,1,1,'','acp',27,256,267,'ACP_GENERAL_TASKS','',''),(30,1,1,'','acp',27,268,275,'ACP_MODULE_MANAGEMENT','',''),(31,1,1,'','acp',0,277,278,'ACP_CAT_DOT_MODS','',''),(32,1,1,'attachments','acp',3,19,20,'ACP_ATTACHMENT_SETTINGS','attach','acl_a_attach'),(33,1,1,'attachments','acp',11,101,102,'ACP_ATTACHMENT_SETTINGS','attach','acl_a_attach'),(34,1,1,'attachments','acp',11,103,104,'ACP_MANAGE_EXTENSIONS','extensions','acl_a_attach'),(35,1,1,'attachments','acp',11,105,106,'ACP_EXTENSION_GROUPS','ext_groups','acl_a_attach'),(36,1,1,'attachments','acp',11,107,108,'ACP_ORPHAN_ATTACHMENTS','orphan','acl_a_attach'),(37,1,1,'ban','acp',15,155,156,'ACP_BAN_EMAILS','email','acl_a_ban'),(38,1,1,'ban','acp',15,157,158,'ACP_BAN_IPS','ip','acl_a_ban'),(39,1,1,'ban','acp',15,159,160,'ACP_BAN_USERNAMES','user','acl_a_ban'),(40,1,1,'bbcodes','acp',10,87,88,'ACP_BBCODES','bbcodes','acl_a_bbcode'),(41,1,1,'board','acp',3,21,22,'ACP_BOARD_SETTINGS','settings','acl_a_board'),(42,1,1,'board','acp',3,23,24,'ACP_BOARD_FEATURES','features','acl_a_board'),(43,1,1,'board','acp',3,25,26,'ACP_AVATAR_SETTINGS','avatar','acl_a_board'),(44,1,1,'board','acp',3,27,28,'ACP_MESSAGE_SETTINGS','message','acl_a_board'),(45,1,1,'board','acp',10,89,90,'ACP_MESSAGE_SETTINGS','message','acl_a_board'),(46,1,1,'board','acp',3,29,30,'ACP_POST_SETTINGS','post','acl_a_board'),(47,1,1,'board','acp',10,91,92,'ACP_POST_SETTINGS','post','acl_a_board'),(48,1,1,'board','acp',3,31,32,'ACP_SIGNATURE_SETTINGS','signature','acl_a_board'),(49,1,1,'board','acp',3,33,34,'ACP_FEED_SETTINGS','feed','acl_a_board'),(50,1,1,'board','acp',3,35,36,'ACP_REGISTER_SETTINGS','registration','acl_a_board'),(51,1,1,'board','acp',4,43,44,'ACP_AUTH_SETTINGS','auth','acl_a_server'),(52,1,1,'board','acp',4,45,46,'ACP_EMAIL_SETTINGS','email','acl_a_server'),(53,1,1,'board','acp',5,51,52,'ACP_COOKIE_SETTINGS','cookie','acl_a_server'),(54,1,1,'board','acp',5,53,54,'ACP_SERVER_SETTINGS','server','acl_a_server'),(55,1,1,'board','acp',5,55,56,'ACP_SECURITY_SETTINGS','security','acl_a_server'),(56,1,1,'board','acp',5,57,58,'ACP_LOAD_SETTINGS','load','acl_a_server'),(57,1,1,'bots','acp',29,257,258,'ACP_BOTS','bots','acl_a_bots'),(58,1,1,'captcha','acp',3,37,38,'ACP_VC_SETTINGS','visual','acl_a_board'),(59,1,0,'captcha','acp',3,39,40,'ACP_VC_CAPTCHA_DISPLAY','img','acl_a_board'),(60,1,1,'database','acp',26,243,244,'ACP_BACKUP','backup','acl_a_backup'),(61,1,1,'database','acp',26,245,246,'ACP_RESTORE','restore','acl_a_backup'),(62,1,1,'disallow','acp',15,161,162,'ACP_DISALLOW_USERNAMES','usernames','acl_a_names'),(63,1,1,'email','acp',29,259,260,'ACP_MASS_EMAIL','email','acl_a_email && cfg_email_enable'),(64,1,1,'forums','acp',7,67,68,'ACP_MANAGE_FORUMS','manage','acl_a_forum'),(65,1,1,'groups','acp',14,147,148,'ACP_GROUPS_MANAGE','manage','acl_a_group'),(66,1,1,'icons','acp',10,93,94,'ACP_ICONS','icons','acl_a_icons'),(67,1,1,'icons','acp',10,95,96,'ACP_SMILIES','smilies','acl_a_icons'),(68,1,1,'inactive','acp',13,115,116,'ACP_INACTIVE_USERS','list','acl_a_user'),(69,1,1,'jabber','acp',4,47,48,'ACP_JABBER_SETTINGS','settings','acl_a_jabber'),(70,1,1,'language','acp',29,261,262,'ACP_LANGUAGE_PACKS','lang_packs','acl_a_language'),(71,1,1,'logs','acp',25,233,234,'ACP_ADMIN_LOGS','admin','acl_a_viewlogs'),(72,1,1,'logs','acp',25,235,236,'ACP_MOD_LOGS','mod','acl_a_viewlogs'),(73,1,1,'logs','acp',25,237,238,'ACP_USERS_LOGS','users','acl_a_viewlogs'),(74,1,1,'logs','acp',25,239,240,'ACP_CRITICAL_LOGS','critical','acl_a_viewlogs'),(75,1,1,'main','acp',1,2,3,'ACP_INDEX','main',''),(76,1,1,'modules','acp',30,269,270,'ACP','acp','acl_a_modules'),(77,1,1,'modules','acp',30,271,272,'UCP','ucp','acl_a_modules'),(78,1,1,'modules','acp',30,273,274,'MCP','mcp','acl_a_modules'),(79,1,1,'permission_roles','acp',19,193,194,'ACP_ADMIN_ROLES','admin_roles','acl_a_roles && acl_a_aauth'),(80,1,1,'permission_roles','acp',19,195,196,'ACP_USER_ROLES','user_roles','acl_a_roles && acl_a_uauth'),(81,1,1,'permission_roles','acp',19,197,198,'ACP_MOD_ROLES','mod_roles','acl_a_roles && acl_a_mauth'),(82,1,1,'permission_roles','acp',19,199,200,'ACP_FORUM_ROLES','forum_roles','acl_a_roles && acl_a_fauth'),(83,1,1,'permissions','acp',16,168,169,'ACP_PERMISSIONS','intro','acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),(84,1,0,'permissions','acp',20,203,204,'ACP_PERMISSION_TRACE','trace','acl_a_viewauth'),(85,1,1,'permissions','acp',18,181,182,'ACP_FORUM_PERMISSIONS','setting_forum_local','acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),(86,1,1,'permissions','acp',18,183,184,'ACP_FORUM_PERMISSIONS_COPY','setting_forum_copy','acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),(87,1,1,'permissions','acp',18,185,186,'ACP_FORUM_MODERATORS','setting_mod_local','acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),(88,1,1,'permissions','acp',17,171,172,'ACP_USERS_PERMISSIONS','setting_user_global','acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),(89,1,1,'permissions','acp',13,117,118,'ACP_USERS_PERMISSIONS','setting_user_global','acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),(90,1,1,'permissions','acp',18,187,188,'ACP_USERS_FORUM_PERMISSIONS','setting_user_local','acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),(91,1,1,'permissions','acp',13,119,120,'ACP_USERS_FORUM_PERMISSIONS','setting_user_local','acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),(92,1,1,'permissions','acp',17,173,174,'ACP_GROUPS_PERMISSIONS','setting_group_global','acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),(93,1,1,'permissions','acp',14,149,150,'ACP_GROUPS_PERMISSIONS','setting_group_global','acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),(94,1,1,'permissions','acp',18,189,190,'ACP_GROUPS_FORUM_PERMISSIONS','setting_group_local','acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),(95,1,1,'permissions','acp',14,151,152,'ACP_GROUPS_FORUM_PERMISSIONS','setting_group_local','acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),(96,1,1,'permissions','acp',17,175,176,'ACP_ADMINISTRATORS','setting_admin_global','acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),(97,1,1,'permissions','acp',17,177,178,'ACP_GLOBAL_MODERATORS','setting_mod_global','acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),(98,1,1,'permissions','acp',20,205,206,'ACP_VIEW_ADMIN_PERMISSIONS','view_admin_global','acl_a_viewauth'),(99,1,1,'permissions','acp',20,207,208,'ACP_VIEW_USER_PERMISSIONS','view_user_global','acl_a_viewauth'),(100,1,1,'permissions','acp',20,209,210,'ACP_VIEW_GLOBAL_MOD_PERMISSIONS','view_mod_global','acl_a_viewauth'),(101,1,1,'permissions','acp',20,211,212,'ACP_VIEW_FORUM_MOD_PERMISSIONS','view_mod_local','acl_a_viewauth'),(102,1,1,'permissions','acp',20,213,214,'ACP_VIEW_FORUM_PERMISSIONS','view_forum_local','acl_a_viewauth'),(103,1,1,'php_info','acp',29,263,264,'ACP_PHP_INFO','info','acl_a_phpinfo'),(104,1,1,'profile','acp',13,121,122,'ACP_CUSTOM_PROFILE_FIELDS','profile','acl_a_profile'),(105,1,1,'prune','acp',7,69,70,'ACP_PRUNE_FORUMS','forums','acl_a_prune'),(106,1,1,'prune','acp',15,163,164,'ACP_PRUNE_USERS','users','acl_a_userdel'),(107,1,1,'ranks','acp',13,123,124,'ACP_MANAGE_RANKS','ranks','acl_a_ranks'),(108,1,1,'reasons','acp',29,265,266,'ACP_MANAGE_REASONS','main','acl_a_reasons'),(109,1,1,'search','acp',5,59,60,'ACP_SEARCH_SETTINGS','settings','acl_a_search'),(110,1,1,'search','acp',26,247,248,'ACP_SEARCH_INDEX','index','acl_a_search'),(111,1,1,'send_statistics','acp',5,61,62,'ACP_SEND_STATISTICS','send_statistics','acl_a_server'),(112,1,1,'styles','acp',22,219,220,'ACP_STYLES','style','acl_a_styles'),(113,1,1,'styles','acp',23,223,224,'ACP_TEMPLATES','template','acl_a_styles'),(114,1,1,'styles','acp',23,225,226,'ACP_THEMES','theme','acl_a_styles'),(115,1,1,'styles','acp',23,227,228,'ACP_IMAGESETS','imageset','acl_a_styles'),(116,1,1,'update','acp',28,253,254,'ACP_VERSION_CHECK','version_check','acl_a_board'),(117,1,1,'users','acp',13,113,114,'ACP_MANAGE_USERS','overview','acl_a_user'),(118,1,0,'users','acp',13,125,126,'ACP_USER_FEEDBACK','feedback','acl_a_user'),(119,1,0,'users','acp',13,127,128,'ACP_USER_WARNINGS','warnings','acl_a_user'),(120,1,0,'users','acp',13,129,130,'ACP_USER_PROFILE','profile','acl_a_user'),(121,1,0,'users','acp',13,131,132,'ACP_USER_PREFS','prefs','acl_a_user'),(122,1,0,'users','acp',13,133,134,'ACP_USER_AVATAR','avatar','acl_a_user'),(123,1,0,'users','acp',13,135,136,'ACP_USER_RANK','rank','acl_a_user'),(124,1,0,'users','acp',13,137,138,'ACP_USER_SIG','sig','acl_a_user'),(125,1,0,'users','acp',13,139,140,'ACP_USER_GROUPS','groups','acl_a_user && acl_a_group'),(126,1,0,'users','acp',13,141,142,'ACP_USER_PERM','perm','acl_a_user && acl_a_viewauth'),(127,1,0,'users','acp',13,143,144,'ACP_USER_ATTACH','attach','acl_a_user'),(128,1,1,'words','acp',10,97,98,'ACP_WORDS','words','acl_a_words'),(129,1,1,'users','acp',2,5,6,'ACP_MANAGE_USERS','overview','acl_a_user'),(130,1,1,'groups','acp',2,7,8,'ACP_GROUPS_MANAGE','manage','acl_a_group'),(131,1,1,'forums','acp',2,9,10,'ACP_MANAGE_FORUMS','manage','acl_a_forum'),(132,1,1,'logs','acp',2,11,12,'ACP_MOD_LOGS','mod','acl_a_viewlogs'),(133,1,1,'bots','acp',2,13,14,'ACP_BOTS','bots','acl_a_bots'),(134,1,1,'php_info','acp',2,15,16,'ACP_PHP_INFO','info','acl_a_phpinfo'),(135,1,1,'permissions','acp',8,73,74,'ACP_FORUM_PERMISSIONS','setting_forum_local','acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),(136,1,1,'permissions','acp',8,75,76,'ACP_FORUM_PERMISSIONS_COPY','setting_forum_copy','acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),(137,1,1,'permissions','acp',8,77,78,'ACP_FORUM_MODERATORS','setting_mod_local','acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),(138,1,1,'permissions','acp',8,79,80,'ACP_USERS_FORUM_PERMISSIONS','setting_user_local','acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),(139,1,1,'permissions','acp',8,81,82,'ACP_GROUPS_FORUM_PERMISSIONS','setting_group_local','acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),(140,1,1,'','mcp',0,1,10,'MCP_MAIN','',''),(141,1,1,'','mcp',0,11,18,'MCP_QUEUE','',''),(142,1,1,'','mcp',0,19,32,'MCP_REPORTS','',''),(143,1,1,'','mcp',0,33,38,'MCP_NOTES','',''),(144,1,1,'','mcp',0,39,48,'MCP_WARN','',''),(145,1,1,'','mcp',0,49,56,'MCP_LOGS','',''),(146,1,1,'','mcp',0,57,64,'MCP_BAN','',''),(147,1,1,'ban','mcp',146,58,59,'MCP_BAN_USERNAMES','user','acl_m_ban'),(148,1,1,'ban','mcp',146,60,61,'MCP_BAN_IPS','ip','acl_m_ban'),(149,1,1,'ban','mcp',146,62,63,'MCP_BAN_EMAILS','email','acl_m_ban'),(150,1,1,'logs','mcp',145,50,51,'MCP_LOGS_FRONT','front','acl_m_ || aclf_m_'),(151,1,1,'logs','mcp',145,52,53,'MCP_LOGS_FORUM_VIEW','forum_logs','acl_m_,$id'),(152,1,1,'logs','mcp',145,54,55,'MCP_LOGS_TOPIC_VIEW','topic_logs','acl_m_,$id'),(153,1,1,'main','mcp',140,2,3,'MCP_MAIN_FRONT','front',''),(154,1,1,'main','mcp',140,4,5,'MCP_MAIN_FORUM_VIEW','forum_view','acl_m_,$id'),(155,1,1,'main','mcp',140,6,7,'MCP_MAIN_TOPIC_VIEW','topic_view','acl_m_,$id'),(156,1,1,'main','mcp',140,8,9,'MCP_MAIN_POST_DETAILS','post_details','acl_m_,$id || (!$id && aclf_m_)'),(157,1,1,'notes','mcp',143,34,35,'MCP_NOTES_FRONT','front',''),(158,1,1,'notes','mcp',143,36,37,'MCP_NOTES_USER','user_notes',''),(159,1,1,'pm_reports','mcp',142,20,21,'MCP_PM_REPORTS_OPEN','pm_reports','aclf_m_report'),(160,1,1,'pm_reports','mcp',142,22,23,'MCP_PM_REPORTS_CLOSED','pm_reports_closed','aclf_m_report'),(161,1,1,'pm_reports','mcp',142,24,25,'MCP_PM_REPORT_DETAILS','pm_report_details','aclf_m_report'),(162,1,1,'queue','mcp',141,12,13,'MCP_QUEUE_UNAPPROVED_TOPICS','unapproved_topics','aclf_m_approve'),(163,1,1,'queue','mcp',141,14,15,'MCP_QUEUE_UNAPPROVED_POSTS','unapproved_posts','aclf_m_approve'),(164,1,1,'queue','mcp',141,16,17,'MCP_QUEUE_APPROVE_DETAILS','approve_details','acl_m_approve,$id || (!$id && aclf_m_approve)'),(165,1,1,'reports','mcp',142,26,27,'MCP_REPORTS_OPEN','reports','aclf_m_report'),(166,1,1,'reports','mcp',142,28,29,'MCP_REPORTS_CLOSED','reports_closed','aclf_m_report'),(167,1,1,'reports','mcp',142,30,31,'MCP_REPORT_DETAILS','report_details','acl_m_report,$id || (!$id && aclf_m_report)'),(168,1,1,'warn','mcp',144,40,41,'MCP_WARN_FRONT','front','aclf_m_warn'),(169,1,1,'warn','mcp',144,42,43,'MCP_WARN_LIST','list','aclf_m_warn'),(170,1,1,'warn','mcp',144,44,45,'MCP_WARN_USER','warn_user','aclf_m_warn'),(171,1,1,'warn','mcp',144,46,47,'MCP_WARN_POST','warn_post','acl_m_warn && acl_f_read,$id'),(172,1,1,'','ucp',0,1,12,'UCP_MAIN','',''),(173,1,1,'','ucp',0,13,22,'UCP_PROFILE','',''),(174,1,1,'','ucp',0,23,30,'UCP_PREFS','',''),(175,1,1,'','ucp',0,31,42,'UCP_PM','',''),(176,1,1,'','ucp',0,43,48,'UCP_USERGROUPS','',''),(177,1,1,'','ucp',0,49,54,'UCP_ZEBRA','',''),(178,1,1,'attachments','ucp',172,10,11,'UCP_MAIN_ATTACHMENTS','attachments','acl_u_attach'),(179,1,1,'groups','ucp',176,44,45,'UCP_USERGROUPS_MEMBER','membership',''),(180,1,1,'groups','ucp',176,46,47,'UCP_USERGROUPS_MANAGE','manage',''),(181,1,1,'main','ucp',172,2,3,'UCP_MAIN_FRONT','front',''),(182,1,1,'main','ucp',172,4,5,'UCP_MAIN_SUBSCRIBED','subscribed',''),(183,1,1,'main','ucp',172,6,7,'UCP_MAIN_BOOKMARKS','bookmarks','cfg_allow_bookmarks'),(184,1,1,'main','ucp',172,8,9,'UCP_MAIN_DRAFTS','drafts',''),(185,1,0,'pm','ucp',175,32,33,'UCP_PM_VIEW','view','cfg_allow_privmsg'),(186,1,1,'pm','ucp',175,34,35,'UCP_PM_COMPOSE','compose','cfg_allow_privmsg'),(187,1,1,'pm','ucp',175,36,37,'UCP_PM_DRAFTS','drafts','cfg_allow_privmsg'),(188,1,1,'pm','ucp',175,38,39,'UCP_PM_OPTIONS','options','cfg_allow_privmsg'),(189,1,0,'pm','ucp',175,40,41,'UCP_PM_POPUP_TITLE','popup','cfg_allow_privmsg'),(190,1,1,'prefs','ucp',174,24,25,'UCP_PREFS_PERSONAL','personal',''),(191,1,1,'prefs','ucp',174,26,27,'UCP_PREFS_POST','post',''),(192,1,1,'prefs','ucp',174,28,29,'UCP_PREFS_VIEW','view',''),(193,1,1,'profile','ucp',173,14,15,'UCP_PROFILE_PROFILE_INFO','profile_info',''),(194,1,1,'profile','ucp',173,16,17,'UCP_PROFILE_SIGNATURE','signature','acl_u_sig'),(195,1,1,'profile','ucp',173,18,19,'UCP_PROFILE_AVATAR','avatar','cfg_allow_avatar && (cfg_allow_avatar_local || cfg_allow_avatar_remote || cfg_allow_avatar_upload || cfg_allow_avatar_remote_upload)'),(196,1,1,'profile','ucp',173,20,21,'UCP_PROFILE_REG_DETAILS','reg_details',''),(197,1,1,'zebra','ucp',177,50,51,'UCP_ZEBRA_FRIENDS','friends',''),(198,1,1,'zebra','ucp',177,52,53,'UCP_ZEBRA_FOES','foes','');
/*!40000 ALTER TABLE `phpbb_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_poll_options`
--

DROP TABLE IF EXISTS `phpbb_poll_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_poll_options`
--

LOCK TABLES `phpbb_poll_options` WRITE;
/*!40000 ALTER TABLE `phpbb_poll_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_poll_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_poll_votes`
--

DROP TABLE IF EXISTS `phpbb_poll_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_poll_votes`
--

LOCK TABLES `phpbb_poll_votes` WRITE;
/*!40000 ALTER TABLE `phpbb_poll_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_poll_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_posts`
--

DROP TABLE IF EXISTS `phpbb_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `post_approved` (`post_approved`),
  KEY `post_username` (`post_username`),
  KEY `tid_post_time` (`topic_id`,`post_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_posts`
--

LOCK TABLES `phpbb_posts` WRITE;
/*!40000 ALTER TABLE `phpbb_posts` DISABLE KEYS */;
INSERT INTO `phpbb_posts` VALUES (1,1,2,2,0,'10.0.2.2',1398294888,1,0,1,1,1,1,'','Welcome to phpBB3','This is an example post in your phpBB3 installation. Everything seems to be working. You may delete this post if you like and continue to set up your board. During the installation process your first category and your first forum are assigned an appropriate set of permissions for the predefined usergroups administrators, bots, global moderators, guests, registered users and registered COPPA users. If you also choose to delete your first category and your first forum, do not forget to assign permissions for all these usergroups for all new categories and forums you create. It is recommended to rename your first category and your first forum and copy permissions from these while creating new categories and forums. Have fun!','5dd683b17f641daf84c040bfefc58ce9',0,'','',1,0,'',0,0,0);
/*!40000 ALTER TABLE `phpbb_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_privmsgs`
--

DROP TABLE IF EXISTS `phpbb_privmsgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_privmsgs`
--

LOCK TABLES `phpbb_privmsgs` WRITE;
/*!40000 ALTER TABLE `phpbb_privmsgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_privmsgs_folder`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_privmsgs_folder`
--

LOCK TABLES `phpbb_privmsgs_folder` WRITE;
/*!40000 ALTER TABLE `phpbb_privmsgs_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_privmsgs_rules`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_privmsgs_rules`
--

LOCK TABLES `phpbb_privmsgs_rules` WRITE;
/*!40000 ALTER TABLE `phpbb_privmsgs_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_privmsgs_to`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_privmsgs_to`
--

LOCK TABLES `phpbb_privmsgs_to` WRITE;
/*!40000 ALTER TABLE `phpbb_privmsgs_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_profile_fields`
--

DROP TABLE IF EXISTS `phpbb_profile_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_novalue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_profile_fields`
--

LOCK TABLES `phpbb_profile_fields` WRITE;
/*!40000 ALTER TABLE `phpbb_profile_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_profile_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_profile_fields_data`
--

DROP TABLE IF EXISTS `phpbb_profile_fields_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_profile_fields_data`
--

LOCK TABLES `phpbb_profile_fields_data` WRITE;
/*!40000 ALTER TABLE `phpbb_profile_fields_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_profile_fields_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_profile_fields_lang`
--

DROP TABLE IF EXISTS `phpbb_profile_fields_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_profile_fields_lang`
--

LOCK TABLES `phpbb_profile_fields_lang` WRITE;
/*!40000 ALTER TABLE `phpbb_profile_fields_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_profile_fields_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_profile_lang`
--

DROP TABLE IF EXISTS `phpbb_profile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_profile_lang`
--

LOCK TABLES `phpbb_profile_lang` WRITE;
/*!40000 ALTER TABLE `phpbb_profile_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_profile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_ranks`
--

DROP TABLE IF EXISTS `phpbb_ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_ranks`
--

LOCK TABLES `phpbb_ranks` WRITE;
/*!40000 ALTER TABLE `phpbb_ranks` DISABLE KEYS */;
INSERT INTO `phpbb_ranks` VALUES (1,'Site Admin',0,1,'');
/*!40000 ALTER TABLE `phpbb_ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_reports`
--

DROP TABLE IF EXISTS `phpbb_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_reports` (
  `report_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_time` int(11) unsigned NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `post_id` (`post_id`),
  KEY `pm_id` (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_reports`
--

LOCK TABLES `phpbb_reports` WRITE;
/*!40000 ALTER TABLE `phpbb_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_reports_reasons`
--

DROP TABLE IF EXISTS `phpbb_reports_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_reports_reasons`
--

LOCK TABLES `phpbb_reports_reasons` WRITE;
/*!40000 ALTER TABLE `phpbb_reports_reasons` DISABLE KEYS */;
INSERT INTO `phpbb_reports_reasons` VALUES (1,'warez','The post contains links to illegal or pirated software.',1),(2,'spam','The reported post has the only purpose to advertise for a website or another product.',2),(3,'off_topic','The reported post is off topic.',3),(4,'other','The reported post does not fit into any other category, please use the further information field.',4);
/*!40000 ALTER TABLE `phpbb_reports_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_search_results`
--

DROP TABLE IF EXISTS `phpbb_search_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_search_results`
--

LOCK TABLES `phpbb_search_results` WRITE;
/*!40000 ALTER TABLE `phpbb_search_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_search_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_search_wordlist`
--

DROP TABLE IF EXISTS `phpbb_search_wordlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_search_wordlist`
--

LOCK TABLES `phpbb_search_wordlist` WRITE;
/*!40000 ALTER TABLE `phpbb_search_wordlist` DISABLE KEYS */;
INSERT INTO `phpbb_search_wordlist` VALUES (1,'this',0,1),(2,'example',0,1),(3,'post',0,1),(4,'your',0,1),(5,'phpbb3',0,2),(6,'installation',0,1),(7,'everything',0,1),(8,'seems',0,1),(9,'working',0,1),(10,'you',0,1),(11,'may',0,1),(12,'delete',0,1),(13,'like',0,1),(14,'and',0,1),(15,'continue',0,1),(16,'set',0,1),(17,'board',0,1),(18,'during',0,1),(19,'the',0,1),(20,'process',0,1),(21,'first',0,1),(22,'category',0,1),(23,'forum',0,1),(24,'are',0,1),(25,'assigned',0,1),(26,'appropriate',0,1),(27,'permissions',0,1),(28,'for',0,1),(29,'predefined',0,1),(30,'usergroups',0,1),(31,'administrators',0,1),(32,'bots',0,1),(33,'global',0,1),(34,'moderators',0,1),(35,'guests',0,1),(36,'registered',0,1),(37,'users',0,1),(38,'coppa',0,1),(39,'also',0,1),(40,'choose',0,1),(41,'not',0,1),(42,'forget',0,1),(43,'assign',0,1),(44,'all',0,1),(45,'these',0,1),(46,'new',0,1),(47,'categories',0,1),(48,'forums',0,1),(49,'create',0,1),(50,'recommended',0,1),(51,'rename',0,1),(52,'copy',0,1),(53,'from',0,1),(54,'while',0,1),(55,'creating',0,1),(56,'have',0,1),(57,'fun',0,1),(58,'welcome',0,1);
/*!40000 ALTER TABLE `phpbb_search_wordlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_search_wordmatch`
--

DROP TABLE IF EXISTS `phpbb_search_wordmatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `unq_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_search_wordmatch`
--

LOCK TABLES `phpbb_search_wordmatch` WRITE;
/*!40000 ALTER TABLE `phpbb_search_wordmatch` DISABLE KEYS */;
INSERT INTO `phpbb_search_wordmatch` VALUES (1,1,0),(1,2,0),(1,3,0),(1,4,0),(1,5,0),(1,5,1),(1,6,0),(1,7,0),(1,8,0),(1,9,0),(1,10,0),(1,11,0),(1,12,0),(1,13,0),(1,14,0),(1,15,0),(1,16,0),(1,17,0),(1,18,0),(1,19,0),(1,20,0),(1,21,0),(1,22,0),(1,23,0),(1,24,0),(1,25,0),(1,26,0),(1,27,0),(1,28,0),(1,29,0),(1,30,0),(1,31,0),(1,32,0),(1,33,0),(1,34,0),(1,35,0),(1,36,0),(1,37,0),(1,38,0),(1,39,0),(1,40,0),(1,41,0),(1,42,0),(1,43,0),(1,44,0),(1,45,0),(1,46,0),(1,47,0),(1,48,0),(1,49,0),(1,50,0),(1,51,0),(1,52,0),(1,53,0),(1,54,0),(1,55,0),(1,56,0),(1,57,0),(1,58,1);
/*!40000 ALTER TABLE `phpbb_search_wordmatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_sessions`
--

DROP TABLE IF EXISTS `phpbb_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT '0',
  `session_start` int(11) unsigned NOT NULL DEFAULT '0',
  `session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_sessions`
--

LOCK TABLES `phpbb_sessions` WRITE;
/*!40000 ALTER TABLE `phpbb_sessions` DISABLE KEYS */;
INSERT INTO `phpbb_sessions` VALUES ('d74167de6491f24bb4bdeb8c0728b675',1,0,1398294895,1398294895,1398294895,'10.0.2.2','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/33.0.1750.152 Chrome/33.0.1750.152 Safari/537.36','','install/index.php?mode=install&sub=final',1,0,0),('f9ec6fce8409db9c41eadd0b37e750c9',2,0,1398294895,1398294895,1398294967,'10.0.2.2','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/33.0.1750.152 Chrome/33.0.1750.152 Safari/537.36','','adm/index.php?i=board&mode=registration',1,0,1);
/*!40000 ALTER TABLE `phpbb_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_sessions_keys`
--

DROP TABLE IF EXISTS `phpbb_sessions_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_sessions_keys`
--

LOCK TABLES `phpbb_sessions_keys` WRITE;
/*!40000 ALTER TABLE `phpbb_sessions_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_sessions_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_sitelist`
--

DROP TABLE IF EXISTS `phpbb_sitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_sitelist`
--

LOCK TABLES `phpbb_sitelist` WRITE;
/*!40000 ALTER TABLE `phpbb_sitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_sitelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_smilies`
--

DROP TABLE IF EXISTS `phpbb_smilies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_smilies`
--

LOCK TABLES `phpbb_smilies` WRITE;
/*!40000 ALTER TABLE `phpbb_smilies` DISABLE KEYS */;
INSERT INTO `phpbb_smilies` VALUES (1,':D','Very Happy','icon_e_biggrin.gif',15,17,1,1),(2,':-D','Very Happy','icon_e_biggrin.gif',15,17,2,1),(3,':grin:','Very Happy','icon_e_biggrin.gif',15,17,3,1),(4,':)','Smile','icon_e_smile.gif',15,17,4,1),(5,':-)','Smile','icon_e_smile.gif',15,17,5,1),(6,':smile:','Smile','icon_e_smile.gif',15,17,6,1),(7,';)','Wink','icon_e_wink.gif',15,17,7,1),(8,';-)','Wink','icon_e_wink.gif',15,17,8,1),(9,':wink:','Wink','icon_e_wink.gif',15,17,9,1),(10,':(','Sad','icon_e_sad.gif',15,17,10,1),(11,':-(','Sad','icon_e_sad.gif',15,17,11,1),(12,':sad:','Sad','icon_e_sad.gif',15,17,12,1),(13,':o','Surprised','icon_e_surprised.gif',15,17,13,1),(14,':-o','Surprised','icon_e_surprised.gif',15,17,14,1),(15,':eek:','Surprised','icon_e_surprised.gif',15,17,15,1),(16,':shock:','Shocked','icon_eek.gif',15,17,16,1),(17,':?','Confused','icon_e_confused.gif',15,17,17,1),(18,':-?','Confused','icon_e_confused.gif',15,17,18,1),(19,':???:','Confused','icon_e_confused.gif',15,17,19,1),(20,'8-)','Cool','icon_cool.gif',15,17,20,1),(21,':cool:','Cool','icon_cool.gif',15,17,21,1),(22,':lol:','Laughing','icon_lol.gif',15,17,22,1),(23,':x','Mad','icon_mad.gif',15,17,23,1),(24,':-x','Mad','icon_mad.gif',15,17,24,1),(25,':mad:','Mad','icon_mad.gif',15,17,25,1),(26,':P','Razz','icon_razz.gif',15,17,26,1),(27,':-P','Razz','icon_razz.gif',15,17,27,1),(28,':razz:','Razz','icon_razz.gif',15,17,28,1),(29,':oops:','Embarrassed','icon_redface.gif',15,17,29,1),(30,':cry:','Crying or Very Sad','icon_cry.gif',15,17,30,1),(31,':evil:','Evil or Very Mad','icon_evil.gif',15,17,31,1),(32,':twisted:','Twisted Evil','icon_twisted.gif',15,17,32,1),(33,':roll:','Rolling Eyes','icon_rolleyes.gif',15,17,33,1),(34,':!:','Exclamation','icon_exclaim.gif',15,17,34,1),(35,':?:','Question','icon_question.gif',15,17,35,1),(36,':idea:','Idea','icon_idea.gif',15,17,36,1),(37,':arrow:','Arrow','icon_arrow.gif',15,17,37,1),(38,':|','Neutral','icon_neutral.gif',15,17,38,1),(39,':-|','Neutral','icon_neutral.gif',15,17,39,1),(40,':mrgreen:','Mr. Green','icon_mrgreen.gif',15,17,40,1),(41,':geek:','Geek','icon_e_geek.gif',17,17,41,1),(42,':ugeek:','Uber Geek','icon_e_ugeek.gif',17,18,42,1);
/*!40000 ALTER TABLE `phpbb_smilies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_styles`
--

DROP TABLE IF EXISTS `phpbb_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `theme_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`),
  KEY `template_id` (`template_id`),
  KEY `theme_id` (`theme_id`),
  KEY `imageset_id` (`imageset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_styles`
--

LOCK TABLES `phpbb_styles` WRITE;
/*!40000 ALTER TABLE `phpbb_styles` DISABLE KEYS */;
INSERT INTO `phpbb_styles` VALUES (1,'prosilver','&copy; phpBB Group',1,1,1,1);
/*!40000 ALTER TABLE `phpbb_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_styles_imageset`
--

DROP TABLE IF EXISTS `phpbb_styles_imageset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_styles_imageset` (
  `imageset_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `imageset_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`imageset_id`),
  UNIQUE KEY `imgset_nm` (`imageset_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_styles_imageset`
--

LOCK TABLES `phpbb_styles_imageset` WRITE;
/*!40000 ALTER TABLE `phpbb_styles_imageset` DISABLE KEYS */;
INSERT INTO `phpbb_styles_imageset` VALUES (1,'prosilver','&copy; phpBB Group','prosilver');
/*!40000 ALTER TABLE `phpbb_styles_imageset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_styles_imageset_data`
--

DROP TABLE IF EXISTS `phpbb_styles_imageset_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_styles_imageset_data` (
  `image_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `image_name` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_filename` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `image_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `i_d` (`imageset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_styles_imageset_data`
--

LOCK TABLES `phpbb_styles_imageset_data` WRITE;
/*!40000 ALTER TABLE `phpbb_styles_imageset_data` DISABLE KEYS */;
INSERT INTO `phpbb_styles_imageset_data` VALUES (1,'site_logo','site_logo.gif','',52,139,1),(2,'forum_link','forum_link.gif','',27,27,1),(3,'forum_read','forum_read.gif','',27,27,1),(4,'forum_read_locked','forum_read_locked.gif','',27,27,1),(5,'forum_read_subforum','forum_read_subforum.gif','',27,27,1),(6,'forum_unread','forum_unread.gif','',27,27,1),(7,'forum_unread_locked','forum_unread_locked.gif','',27,27,1),(8,'forum_unread_subforum','forum_unread_subforum.gif','',27,27,1),(9,'topic_moved','topic_moved.gif','',27,27,1),(10,'topic_read','topic_read.gif','',27,27,1),(11,'topic_read_mine','topic_read_mine.gif','',27,27,1),(12,'topic_read_hot','topic_read_hot.gif','',27,27,1),(13,'topic_read_hot_mine','topic_read_hot_mine.gif','',27,27,1),(14,'topic_read_locked','topic_read_locked.gif','',27,27,1),(15,'topic_read_locked_mine','topic_read_locked_mine.gif','',27,27,1),(16,'topic_unread','topic_unread.gif','',27,27,1),(17,'topic_unread_mine','topic_unread_mine.gif','',27,27,1),(18,'topic_unread_hot','topic_unread_hot.gif','',27,27,1),(19,'topic_unread_hot_mine','topic_unread_hot_mine.gif','',27,27,1),(20,'topic_unread_locked','topic_unread_locked.gif','',27,27,1),(21,'topic_unread_locked_mine','topic_unread_locked_mine.gif','',27,27,1),(22,'sticky_read','sticky_read.gif','',27,27,1),(23,'sticky_read_mine','sticky_read_mine.gif','',27,27,1),(24,'sticky_read_locked','sticky_read_locked.gif','',27,27,1),(25,'sticky_read_locked_mine','sticky_read_locked_mine.gif','',27,27,1),(26,'sticky_unread','sticky_unread.gif','',27,27,1),(27,'sticky_unread_mine','sticky_unread_mine.gif','',27,27,1),(28,'sticky_unread_locked','sticky_unread_locked.gif','',27,27,1),(29,'sticky_unread_locked_mine','sticky_unread_locked_mine.gif','',27,27,1),(30,'announce_read','announce_read.gif','',27,27,1),(31,'announce_read_mine','announce_read_mine.gif','',27,27,1),(32,'announce_read_locked','announce_read_locked.gif','',27,27,1),(33,'announce_read_locked_mine','announce_read_locked_mine.gif','',27,27,1),(34,'announce_unread','announce_unread.gif','',27,27,1),(35,'announce_unread_mine','announce_unread_mine.gif','',27,27,1),(36,'announce_unread_locked','announce_unread_locked.gif','',27,27,1),(37,'announce_unread_locked_mine','announce_unread_locked_mine.gif','',27,27,1),(38,'global_read','announce_read.gif','',27,27,1),(39,'global_read_mine','announce_read_mine.gif','',27,27,1),(40,'global_read_locked','announce_read_locked.gif','',27,27,1),(41,'global_read_locked_mine','announce_read_locked_mine.gif','',27,27,1),(42,'global_unread','announce_unread.gif','',27,27,1),(43,'global_unread_mine','announce_unread_mine.gif','',27,27,1),(44,'global_unread_locked','announce_unread_locked.gif','',27,27,1),(45,'global_unread_locked_mine','announce_unread_locked_mine.gif','',27,27,1),(46,'pm_read','topic_read.gif','',27,27,1),(47,'pm_unread','topic_unread.gif','',27,27,1),(48,'icon_back_top','icon_back_top.gif','',11,11,1),(49,'icon_contact_aim','icon_contact_aim.gif','',20,20,1),(50,'icon_contact_email','icon_contact_email.gif','',20,20,1),(51,'icon_contact_icq','icon_contact_icq.gif','',20,20,1),(52,'icon_contact_jabber','icon_contact_jabber.gif','',20,20,1),(53,'icon_contact_msnm','icon_contact_msnm.gif','',20,20,1),(54,'icon_contact_www','icon_contact_www.gif','',20,20,1),(55,'icon_contact_yahoo','icon_contact_yahoo.gif','',20,20,1),(56,'icon_post_delete','icon_post_delete.gif','',20,20,1),(57,'icon_post_info','icon_post_info.gif','',20,20,1),(58,'icon_post_report','icon_post_report.gif','',20,20,1),(59,'icon_post_target','icon_post_target.gif','',9,11,1),(60,'icon_post_target_unread','icon_post_target_unread.gif','',9,11,1),(61,'icon_topic_attach','icon_topic_attach.gif','',10,7,1),(62,'icon_topic_latest','icon_topic_latest.gif','',9,11,1),(63,'icon_topic_newest','icon_topic_newest.gif','',9,11,1),(64,'icon_topic_reported','icon_topic_reported.gif','',14,16,1),(65,'icon_topic_unapproved','icon_topic_unapproved.gif','',14,16,1),(66,'icon_user_warn','icon_user_warn.gif','',20,20,1),(67,'subforum_read','subforum_read.gif','',9,11,1),(68,'subforum_unread','subforum_unread.gif','',9,11,1),(69,'icon_contact_pm','icon_contact_pm.gif','en',20,28,1),(70,'icon_post_edit','icon_post_edit.gif','en',20,42,1),(71,'icon_post_quote','icon_post_quote.gif','en',20,54,1),(72,'icon_user_online','icon_user_online.gif','en',58,58,1),(73,'button_pm_forward','button_pm_forward.gif','en',25,96,1),(74,'button_pm_new','button_pm_new.gif','en',25,84,1),(75,'button_pm_reply','button_pm_reply.gif','en',25,96,1),(76,'button_topic_locked','button_topic_locked.gif','en',25,88,1),(77,'button_topic_new','button_topic_new.gif','en',25,96,1),(78,'button_topic_reply','button_topic_reply.gif','en',25,96,1);
/*!40000 ALTER TABLE `phpbb_styles_imageset_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_styles_template`
--

DROP TABLE IF EXISTS `phpbb_styles_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_styles_template` (
  `template_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `template_storedb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_inherits_id` int(4) unsigned NOT NULL DEFAULT '0',
  `template_inherit_path` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `tmplte_nm` (`template_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_styles_template`
--

LOCK TABLES `phpbb_styles_template` WRITE;
/*!40000 ALTER TABLE `phpbb_styles_template` DISABLE KEYS */;
INSERT INTO `phpbb_styles_template` VALUES (1,'prosilver','&copy; phpBB Group','prosilver','lNg=',0,0,'');
/*!40000 ALTER TABLE `phpbb_styles_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_styles_template_data`
--

DROP TABLE IF EXISTS `phpbb_styles_template_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_styles_template_data` (
  `template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template_filename` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_included` text COLLATE utf8_bin NOT NULL,
  `template_mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `template_data` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `tid` (`template_id`),
  KEY `tfn` (`template_filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_styles_template_data`
--

LOCK TABLES `phpbb_styles_template_data` WRITE;
/*!40000 ALTER TABLE `phpbb_styles_template_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_styles_template_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_styles_theme`
--

DROP TABLE IF EXISTS `phpbb_styles_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_styles_theme` (
  `theme_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_storedb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme_mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `theme_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`theme_id`),
  UNIQUE KEY `theme_name` (`theme_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_styles_theme`
--

LOCK TABLES `phpbb_styles_theme` WRITE;
/*!40000 ALTER TABLE `phpbb_styles_theme` DISABLE KEYS */;
INSERT INTO `phpbb_styles_theme` VALUES (1,'prosilver','&copy; phpBB Group','prosilver',1,0,'');
/*!40000 ALTER TABLE `phpbb_styles_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_topics`
--

DROP TABLE IF EXISTS `phpbb_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies_real` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_length` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `topic_approved` (`topic_approved`),
  KEY `forum_appr_last` (`forum_id`,`topic_approved`,`topic_last_post_id`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_topics`
--

LOCK TABLES `phpbb_topics` WRITE;
/*!40000 ALTER TABLE `phpbb_topics` DISABLE KEYS */;
INSERT INTO `phpbb_topics` VALUES (1,2,0,0,1,0,'Welcome to phpBB3',2,1398294888,0,0,0,0,0,0,1,'admin','AA0000',1,2,'admin','AA0000','Welcome to phpBB3',1398294888,972086460,0,0,0,'',0,0,1,0,0);
/*!40000 ALTER TABLE `phpbb_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_topics_posted`
--

DROP TABLE IF EXISTS `phpbb_topics_posted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_topics_posted`
--

LOCK TABLES `phpbb_topics_posted` WRITE;
/*!40000 ALTER TABLE `phpbb_topics_posted` DISABLE KEYS */;
INSERT INTO `phpbb_topics_posted` VALUES (2,1,1);
/*!40000 ALTER TABLE `phpbb_topics_posted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_topics_track`
--

DROP TABLE IF EXISTS `phpbb_topics_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_topics_track`
--

LOCK TABLES `phpbb_topics_track` WRITE;
/*!40000 ALTER TABLE `phpbb_topics_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_topics_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_topics_watch`
--

DROP TABLE IF EXISTS `phpbb_topics_watch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_topics_watch`
--

LOCK TABLES `phpbb_topics_watch` WRITE;
/*!40000 ALTER TABLE `phpbb_topics_watch` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_topics_watch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_user_group`
--

DROP TABLE IF EXISTS `phpbb_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_user_group`
--

LOCK TABLES `phpbb_user_group` WRITE;
/*!40000 ALTER TABLE `phpbb_user_group` DISABLE KEYS */;
INSERT INTO `phpbb_user_group` VALUES (1,1,0,0),(2,2,0,0),(4,2,0,0),(5,2,1,0),(6,3,0,0),(6,4,0,0),(6,5,0,0),(6,6,0,0),(6,7,0,0),(6,8,0,0),(6,9,0,0),(6,10,0,0),(6,11,0,0),(6,12,0,0),(6,13,0,0),(6,14,0,0),(6,15,0,0),(6,16,0,0),(6,17,0,0),(6,18,0,0),(6,19,0,0),(6,20,0,0),(6,21,0,0),(6,22,0,0),(6,23,0,0),(6,24,0,0),(6,25,0,0),(6,26,0,0),(6,27,0,0),(6,28,0,0),(6,29,0,0),(6,30,0,0),(6,31,0,0),(6,32,0,0),(6,33,0,0),(6,34,0,0),(6,35,0,0),(6,36,0,0),(6,37,0,0),(6,38,0,0),(6,39,0,0),(6,40,0,0),(6,41,0,0),(6,42,0,0),(6,43,0,0),(6,44,0,0),(6,45,0,0),(6,46,0,0),(6,47,0,0);
/*!40000 ALTER TABLE `phpbb_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_users`
--

DROP TABLE IF EXISTS `phpbb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_pass_convert` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` decimal(5,2) NOT NULL DEFAULT '0.00',
  `user_dst` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_options` int(11) unsigned NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_from` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_icq` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_aim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_yim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_msnm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_website` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_occ` text COLLATE utf8_bin NOT NULL,
  `user_interests` text COLLATE utf8_bin NOT NULL,
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_users`
--

LOCK TABLES `phpbb_users` WRITE;
/*!40000 ALTER TABLE `phpbb_users` DISABLE KEYS */;
INSERT INTO `phpbb_users` VALUES (1,2,1,'',0,'',1398294888,'Anonymous','anonymous','',0,0,'',0,'',0,0,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'d M Y H:i',1,0,'',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','5bebcdf9435436ea',1,0,0),(2,3,5,'zik0zjzik0zjzik0xs\ni1cjyo000000\nzik0zjzhb2tc',0,'10.0.2.2',1398294888,'admin','admin','$H$9WXz35gDXp9zHu/57H6kTgLPzu6jK80',0,0,'test@example.com',253391860216,'',0,0,0,'','',0,0,0,0,0,0,1,'en',0.00,0,'D M d, Y g:i a',1,1,'AA0000',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,1,1,1,1,230271,'',0,0,0,'','','','','','','','','','','','','','','586ee842638db056',1,0,0),(3,2,6,'',0,'',1398294895,'AdsBot [Google]','adsbot [google]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','b486c1fb0cc5a915',0,0,0),(4,2,6,'',0,'',1398294895,'Alexa [Bot]','alexa [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','519b2d5810e97328',0,0,0),(5,2,6,'',0,'',1398294895,'Alta Vista [Bot]','alta vista [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','ff15e37bf55ab846',0,0,0),(6,2,6,'',0,'',1398294895,'Ask Jeeves [Bot]','ask jeeves [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','1f88dcbfbda2120b',0,0,0),(7,2,6,'',0,'',1398294895,'Baidu [Spider]','baidu [spider]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','7e050e2afd2bce86',0,0,0),(8,2,6,'',0,'',1398294895,'Bing [Bot]','bing [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','d7eea10dee488608',0,0,0),(9,2,6,'',0,'',1398294895,'Exabot [Bot]','exabot [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','3ee7567c157fcff3',0,0,0),(10,2,6,'',0,'',1398294895,'FAST Enterprise [Crawler]','fast enterprise [crawler]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','f20a025e48066a3a',0,0,0),(11,2,6,'',0,'',1398294895,'FAST WebCrawler [Crawler]','fast webcrawler [crawler]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','5886a8976c72ae44',0,0,0),(12,2,6,'',0,'',1398294895,'Francis [Bot]','francis [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','7e7574ecdbbfba5a',0,0,0),(13,2,6,'',0,'',1398294895,'Gigabot [Bot]','gigabot [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','88f4a2b3809e4913',0,0,0),(14,2,6,'',0,'',1398294895,'Google Adsense [Bot]','google adsense [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','b9cdde36d6219e0f',0,0,0),(15,2,6,'',0,'',1398294895,'Google Desktop','google desktop','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','a6828e1bda48c4bd',0,0,0),(16,2,6,'',0,'',1398294895,'Google Feedfetcher','google feedfetcher','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','e22117230a27f6dc',0,0,0),(17,2,6,'',0,'',1398294895,'Google [Bot]','google [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','573ba07d23c7d0cf',0,0,0),(18,2,6,'',0,'',1398294895,'Heise IT-Markt [Crawler]','heise it-markt [crawler]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','c40ab8061c5071d6',0,0,0),(19,2,6,'',0,'',1398294895,'Heritrix [Crawler]','heritrix [crawler]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','82caf70dfe507506',0,0,0),(20,2,6,'',0,'',1398294895,'IBM Research [Bot]','ibm research [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','112bf638d8711ccb',0,0,0),(21,2,6,'',0,'',1398294895,'ICCrawler - ICjobs','iccrawler - icjobs','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','23bdd11acd3e3591',0,0,0),(22,2,6,'',0,'',1398294895,'ichiro [Crawler]','ichiro [crawler]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','4745b6d74c8c3c49',0,0,0),(23,2,6,'',0,'',1398294895,'Majestic-12 [Bot]','majestic-12 [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','b0dfd0b200e495d8',0,0,0),(24,2,6,'',0,'',1398294895,'Metager [Bot]','metager [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','a3d1ea2168efc744',0,0,0),(25,2,6,'',0,'',1398294895,'MSN NewsBlogs','msn newsblogs','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','65132bbdb674056f',0,0,0),(26,2,6,'',0,'',1398294895,'MSN [Bot]','msn [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','13588a79f2880b1c',0,0,0),(27,2,6,'',0,'',1398294895,'MSNbot Media','msnbot media','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','149f9c09efc86990',0,0,0),(28,2,6,'',0,'',1398294895,'Nutch [Bot]','nutch [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','a9b3c17a2c0d0e4d',0,0,0),(29,2,6,'',0,'',1398294895,'Online link [Validator]','online link [validator]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','9e23f4faf1507c55',0,0,0),(30,2,6,'',0,'',1398294895,'psbot [Picsearch]','psbot [picsearch]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','3309911cb30772ac',0,0,0),(31,2,6,'',0,'',1398294895,'Sensis [Crawler]','sensis [crawler]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','177d046a6e5b7f93',0,0,0),(32,2,6,'',0,'',1398294895,'SEO Crawler','seo crawler','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','39a39ad9a26b999e',0,0,0),(33,2,6,'',0,'',1398294895,'Seoma [Crawler]','seoma [crawler]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','1fe0e443529774e0',0,0,0),(34,2,6,'',0,'',1398294895,'SEOSearch [Crawler]','seosearch [crawler]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','24f8b1e33235d10f',0,0,0),(35,2,6,'',0,'',1398294895,'Snappy [Bot]','snappy [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','f155c5bc6d666385',0,0,0),(36,2,6,'',0,'',1398294895,'Steeler [Crawler]','steeler [crawler]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','dd5d2e04051c7efe',0,0,0),(37,2,6,'',0,'',1398294895,'Telekom [Bot]','telekom [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','b310d9d7fe57e8ce',0,0,0),(38,2,6,'',0,'',1398294895,'TurnitinBot [Bot]','turnitinbot [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','678b5f0a1d955fe8',0,0,0),(39,2,6,'',0,'',1398294895,'Voyager [Bot]','voyager [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','cc0da35d8c47ae54',0,0,0),(40,2,6,'',0,'',1398294895,'W3 [Sitesearch]','w3 [sitesearch]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','0bb033590f439ef1',0,0,0),(41,2,6,'',0,'',1398294895,'W3C [Linkcheck]','w3c [linkcheck]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','203d2f4d5c81be69',0,0,0),(42,2,6,'',0,'',1398294895,'W3C [Validator]','w3c [validator]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','67ee4782733f1c3f',0,0,0),(43,2,6,'',0,'',1398294895,'YaCy [Bot]','yacy [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','7fc5c328f672d6da',0,0,0),(44,2,6,'',0,'',1398294895,'Yahoo MMCrawler [Bot]','yahoo mmcrawler [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','bd1171d53d9a73e6',0,0,0),(45,2,6,'',0,'',1398294895,'Yahoo Slurp [Bot]','yahoo slurp [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','7a7f511afc95aebb',0,0,0),(46,2,6,'',0,'',1398294895,'Yahoo [Bot]','yahoo [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','c30e5e43c97fe5e0',0,0,0),(47,2,6,'',0,'',1398294895,'YahooSeeker [Bot]','yahooseeker [bot]','',1398294895,0,'',0,'',0,1398294895,0,'','',0,0,0,0,0,0,0,'en',0.00,0,'D M d, Y g:i a',1,0,'9E8DA7',0,0,0,0,-3,0,0,'t','d',0,'t','a',0,1,0,0,1,1,0,230271,'',0,0,0,'','','','','','','','','','','','','','','97496f7129b66925',0,0,0);
/*!40000 ALTER TABLE `phpbb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_warnings`
--

DROP TABLE IF EXISTS `phpbb_warnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `warning_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_warnings`
--

LOCK TABLES `phpbb_warnings` WRITE;
/*!40000 ALTER TABLE `phpbb_warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_warnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_words`
--

DROP TABLE IF EXISTS `phpbb_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_words`
--

LOCK TABLES `phpbb_words` WRITE;
/*!40000 ALTER TABLE `phpbb_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpbb_zebra`
--

DROP TABLE IF EXISTS `phpbb_zebra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpbb_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `foe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpbb_zebra`
--

LOCK TABLES `phpbb_zebra` WRITE;
/*!40000 ALTER TABLE `phpbb_zebra` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_zebra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-23 23:20:24
