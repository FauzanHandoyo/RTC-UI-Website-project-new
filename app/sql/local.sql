-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_articles_meta`
--

DROP TABLE IF EXISTS `wp_articles_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_articles_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL,
  `article_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_articles_meta`
--

LOCK TABLES `wp_articles_meta` WRITE;
/*!40000 ALTER TABLE `wp_articles_meta` DISABLE KEYS */;
INSERT INTO `wp_articles_meta` VALUES (3,35,'https://rtcuifm.medium.com/survival-guide-mahasiswa-puasa-nyaman-tanpa-drama-gerd-38ffa2580f71');
INSERT INTO `wp_articles_meta` VALUES (12,37,'https://rtcuifm.medium.com/swipe-left-pada-buku-elektronik-manfaat-tersembunyi-dari-membaca-buku-cetak-c2552e70c386');
INSERT INTO `wp_articles_meta` VALUES (13,39,'https://rtcuifm.medium.com/ketika-akal-dan-moral-bertemu-haruskah-logika-mengalah-pada-etika-dc01874b1cbf');
INSERT INTO `wp_articles_meta` VALUES (14,40,'https://rtcuifm.medium.com/katanya-sih-personal-colour-analysis-bikin-makin-pd-92e6033f0098');
/*!40000 ALTER TABLE `wp_articles_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ctf_feed_caches`
--

DROP TABLE IF EXISTS `wp_ctf_feed_caches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_ctf_feed_caches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `feed_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cache_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cache_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cron_update` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `feed_id` (`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ctf_feed_caches`
--

LOCK TABLES `wp_ctf_feed_caches` WRITE;
/*!40000 ALTER TABLE `wp_ctf_feed_caches` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_ctf_feed_caches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ctf_feed_locator`
--

DROP TABLE IF EXISTS `wp_ctf_feed_locator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_ctf_feed_locator` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `feed_id` varchar(50) NOT NULL DEFAULT '',
  `post_id` bigint unsigned NOT NULL,
  `html_location` varchar(50) NOT NULL DEFAULT 'unknown',
  `shortcode_atts` longtext NOT NULL,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feed_id` (`feed_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ctf_feed_locator`
--

LOCK TABLES `wp_ctf_feed_locator` WRITE;
/*!40000 ALTER TABLE `wp_ctf_feed_locator` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_ctf_feed_locator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ctf_feeds`
--

DROP TABLE IF EXISTS `wp_ctf_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_ctf_feeds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `feed_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `feed_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `author` bigint unsigned NOT NULL DEFAULT '1',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `author` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ctf_feeds`
--

LOCK TABLES `wp_ctf_feeds` WRITE;
/*!40000 ALTER TABLE `wp_ctf_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_ctf_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ctf_feeds_posts`
--

DROP TABLE IF EXISTS `wp_ctf_feeds_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_ctf_feeds_posts` (
  `record_id` int unsigned NOT NULL AUTO_INCREMENT,
  `id` int unsigned NOT NULL,
  `feed_id` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`record_id`),
  KEY `feed_id` (`feed_id`(100)),
  KEY `type_term` (`term`(140),`type`(51))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ctf_feeds_posts`
--

LOCK TABLES `wp_ctf_feeds_posts` WRITE;
/*!40000 ALTER TABLE `wp_ctf_feeds_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_ctf_feeds_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ctf_posts`
--

DROP TABLE IF EXISTS `wp_ctf_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_ctf_posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `twitter_id` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created_on` datetime DEFAULT NULL,
  `last_requested` date DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL,
  `json_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `media_id` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sizes` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `aspect_ratio` decimal(4,2) NOT NULL DEFAULT '0.00',
  `images_done` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ctf_posts`
--

LOCK TABLES `wp_ctf_posts` WRITE;
/*!40000 ALTER TABLE `wp_ctf_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_ctf_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:16:{i:1750010058;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1750011127;a:1:{s:13:\"ssp_cron_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1750012241;a:1:{s:29:\"ctf_smash_twitter_feed_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1750020854;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1750022654;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1750024454;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1750029950;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1750048301;a:1:{s:15:\"ctf_feed_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1750060457;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1750073150;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1750073155;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1750093927;a:1:{s:13:\"ssp_check_ads\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1750098519;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1750178575;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1750319657;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://rtc.local','on');
INSERT INTO `wp_options` VALUES (3,'home','http://rtc.local','on');
INSERT INTO `wp_options` VALUES (4,'blogname','Radio Telekomunikasi Cipta UI','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','Your Favorite Student Radio In Town','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','0','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','dev-email@wpengine.local','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:117:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"articles/?$\";s:28:\"index.php?post_type=articles\";s:41:\"articles/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=articles&feed=$matches[1]\";s:36:\"articles/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=articles&feed=$matches[1]\";s:28:\"articles/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=articles&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"articles/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"articles/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"articles/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"articles/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"articles/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"articles/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"articles/([^/]+)/embed/?$\";s:41:\"index.php?articles=$matches[1]&embed=true\";s:29:\"articles/([^/]+)/trackback/?$\";s:35:\"index.php?articles=$matches[1]&tb=1\";s:49:\"articles/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?articles=$matches[1]&feed=$matches[2]\";s:44:\"articles/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?articles=$matches[1]&feed=$matches[2]\";s:37:\"articles/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?articles=$matches[1]&paged=$matches[2]\";s:44:\"articles/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?articles=$matches[1]&cpage=$matches[2]\";s:33:\"articles/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?articles=$matches[1]&page=$matches[2]\";s:25:\"articles/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"articles/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"articles/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"articles/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"articles/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"articles/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:9:{i:0;s:44:\"custom-twitter-feeds/custom-twitter-feed.php\";i:1;s:37:\"rtc-plugin/PI-data-manager-plugin.php\";i:2;s:30:\"rtc-plugin/articles-plugin.php\";i:3;s:38:\"rtc-plugin/bph-data-manager-plugin.php\";i:5;s:37:\"rtc-plugin/instagram-posts-plugin.php\";i:6;s:36:\"rtc-plugin/radio-programs-plugin.php\";i:7;s:36:\"rtc-plugin/spotify-charts-plugin.php\";i:8;s:45:\"rtc-plugin/spotify-podcast-manager-plugin.php\";i:9;s:40:\"rtc-plugin/staff-data-manager-plugin.php\";}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','http://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','a:4:{i:0;s:136:\"D:\\Fauzan\\Fauzan Programming\\Web Programming\\Project\\RTC UI Website Project\\app\\public/wp-content/plugins/advanced-custom-fields/acf.php\";i:1;s:136:\"D:\\Fauzan\\Fauzan Programming\\Web Programming\\Project\\RTC UI Website Project\\app\\public/wp-content/plugins/all-bootstrap-blocks/areoi.php\";i:2;s:141:\"D:\\Fauzan\\Fauzan Programming\\Web Programming\\Project\\RTC UI Website Project\\app\\public/wp-content/plugins/website-builder/website-builder.php\";i:3;s:0:\"\";}','off');
INSERT INTO `wp_options` VALUES (41,'template','rtcmaindesign','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','rtcmaindesign','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','58975','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','posts','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','0','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','0','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1752479654','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'initial_db_version','58975','on');
INSERT INTO `wp_options` VALUES (102,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:78:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"edit_podcast\";b:1;s:12:\"read_podcast\";b:1;s:14:\"delete_podcast\";b:1;s:13:\"edit_podcasts\";b:1;s:20:\"edit_others_podcasts\";b:1;s:16:\"publish_podcasts\";b:1;s:21:\"read_private_podcasts\";b:1;s:15:\"delete_podcasts\";b:1;s:23:\"delete_private_podcasts\";b:1;s:25:\"delete_published_podcasts\";b:1;s:22:\"delete_others_podcasts\";b:1;s:21:\"edit_private_podcasts\";b:1;s:23:\"edit_published_podcasts\";b:1;s:15:\"create_podcasts\";b:1;s:18:\"manage_podcast_tax\";b:1;s:14:\"manage_podcast\";b:1;s:27:\"manage_twitter_feed_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:50:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"edit_podcast\";b:1;s:12:\"read_podcast\";b:1;s:14:\"delete_podcast\";b:1;s:13:\"edit_podcasts\";b:1;s:20:\"edit_others_podcasts\";b:1;s:16:\"publish_podcasts\";b:1;s:21:\"read_private_podcasts\";b:1;s:15:\"delete_podcasts\";b:1;s:23:\"delete_private_podcasts\";b:1;s:25:\"delete_published_podcasts\";b:1;s:22:\"delete_others_podcasts\";b:1;s:21:\"edit_private_podcasts\";b:1;s:23:\"edit_published_podcasts\";b:1;s:15:\"create_podcasts\";b:1;s:18:\"manage_podcast_tax\";b:1;s:14:\"manage_podcast\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','on');
INSERT INTO `wp_options` VALUES (103,'fresh_site','0','off');
INSERT INTO `wp_options` VALUES (104,'user_count','1','off');
INSERT INTO `wp_options` VALUES (105,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.7.1\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (126,'theme_mods_twentytwentyfive','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1737115457;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (127,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"8c7d46a72d7d4591fc1dd9485bedb304\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on');
INSERT INTO `wp_options` VALUES (133,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1750000755;s:7:\"checked\";a:1:{s:13:\"rtcmaindesign\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (140,'can_compress_scripts','0','on');
INSERT INTO `wp_options` VALUES (159,'theme_mods_rtcmaindesign','a:7:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:15:\"contact_address\";s:94:\"Pusat Kegiatan Mahasiswa, Jalan Prof. Dr. Fuad Hassan, Beji, Depok 16425, West Java, Indonesia\";s:13:\"contact_phone\";s:14:\"0851-8316-2086\";s:13:\"contact_email\";s:17:\"rtcuifm@gmail.com\";s:22:\"contact_hours_weekdays\";s:36:\"Monday - Saturday: 9:00 AM - 8.30 PM\";s:22:\"contact_hours_weekends\";s:14:\"Sunday: Closed\";}','on');
INSERT INTO `wp_options` VALUES (160,'current_theme','My Custom Theme','auto');
INSERT INTO `wp_options` VALUES (161,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (183,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (184,'recently_activated','a:0:{}','off');
INSERT INTO `wp_options` VALUES (191,'draft_settings','a:4:{s:8:\"settings\";a:3:{s:6:\"config\";s:1517:\"var tailwind = !! tailwind ? tailwind : window.tailwind;\n\ntailwind.config = {\n	important: true,\n	darkMode: \'selector\',\n	theme: {\n		/* max-width responsive breakpoints */\n		screens: {\n			md: { \'max\': \'1023px\' },\n			sm: { \'max\': \'767px\' },\n		},\n		colors: {\n			primary: tailwind.colors.slate,\n			secondary: tailwind.colors.white,\n			text: tailwind.colors.slate,\n			accent: tailwind.colors.sky,\n			transparent: tailwind.colors.transparent,\n			current: tailwind.colors.current,\n		},\n		extend: {\n			boxShadow: {\n				inset: \'inset 0 1px 0 0 rgb(255 255 255 / 20%)\',\n			},\n			colors: {\n				primary: {\n					DEFAULT: tailwind.colors.slate[\'900\']\n				},\n				secondary: {\n					DEFAULT: tailwind.colors.white\n				},\n				text: {\n					DEFAULT: tailwind.colors.slate[\'600\']\n				},\n				accent: {\n					DEFAULT: tailwind.colors.sky[\'500\']\n				}\n			},\n			fontFamily: {\n				primary: [\n					\'Inter\',\n					{\n						fontFeatureSettings: \'\"cv11\", \"ss01\"\',\n						fontVariationSettings: \'\"opsz\" 32\'\n					}\n				],\n				secondary: [\n					\'Inter\',\n					{\n						fontFeatureSettings: \'\"cv11\", \"ss01\"\',\n						fontVariationSettings: \'\"opsz\" 32\'\n					}\n				],\n				text: [\n					\'Inter\',\n					{\n						fontFeatureSettings: \'\"cv11\", \"ss01\"\',\n						fontVariationSettings: \'\"opsz\" 32\'\n					}\n				],\n				accent: [\n					\'Inter\',\n					{\n						fontFeatureSettings: \'\"cv11\", \"ss01\"\',\n						fontVariationSettings: \'\"opsz\" 32\'\n					}\n				],\n			},\n			listStyleType: {\n				circle: \'circle\',\n				square: \'square\',\n			},\n		},\n	},\n	corePlugins: {\n		preflight: false,\n	},\n}\";s:3:\"css\";N;s:6:\"addOns\";a:3:{s:12:\"archiveLabel\";a:1:{s:7:\"enabled\";b:0;}s:9:\"groupLink\";a:1:{s:7:\"enabled\";b:0;}s:8:\"darkMode\";a:1:{s:7:\"enabled\";b:0;}}}s:4:\"mode\";s:11:\"development\";s:6:\"styles\";N;s:7:\"license\";a:2:{s:3:\"key\";s:0:\"\";s:6:\"status\";s:8:\"inactive\";}}','auto');
INSERT INTO `wp_options` VALUES (196,'recovery_mode_email_last_sent','1743877008','auto');
INSERT INTO `wp_options` VALUES (197,'recovery_keys','a:0:{}','off');
INSERT INTO `wp_options` VALUES (264,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (275,'WPLANG','','auto');
INSERT INTO `wp_options` VALUES (276,'new_admin_email','dev-email@wpengine.local','auto');
INSERT INTO `wp_options` VALUES (301,'spotify_client_id','9bc6c8b849764cddaa8b4588e7ffea5d','auto');
INSERT INTO `wp_options` VALUES (302,'spotify_client_secret','7e4283ed1bf24cfd804db487cca7fceb','auto');
INSERT INTO `wp_options` VALUES (345,'instagram_post_1','https://www.instagram.com/p/DFopiliSqHb/embed','auto');
INSERT INTO `wp_options` VALUES (346,'instagram_post_2','https://www.instagram.com/p/DFopeoJSByC/embed','auto');
INSERT INTO `wp_options` VALUES (347,'instagram_post_3','','auto');
INSERT INTO `wp_options` VALUES (428,'category_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (463,'spotify_playlist_ids','a:3:{i:0;s:82:\"https://open.spotify.com/playlist/2bnavp0CQKLhJJfjjBEhYq?si=zAjZFwbDQSywnDWZgMyVbQ\";i:1;s:82:\"https://open.spotify.com/playlist/08u9YureOYitbPVdzbgNaB?si=cUvrcPC8QcCdcc_p2gOYmQ\";i:2;s:82:\"https://open.spotify.com/playlist/6pbHJSdX8MYzrZJ3jMmWfK?si=NuAZJzXuSeCHaWWngXh9xg\";}','auto');
INSERT INTO `wp_options` VALUES (468,'spotify_embed_url','https://open.spotify.com/embed/playlist/6pbHJSdX8MYzrZJ3jMmWfK?utm_source=generator','auto');
INSERT INTO `wp_options` VALUES (469,'spotify_embed_url_1','https://open.spotify.com/embed/playlist/6pbHJSdX8MYzrZJ3jMmWfK?utm_source=generator','auto');
INSERT INTO `wp_options` VALUES (470,'spotify_embed_url_2','https://open.spotify.com/embed/playlist/4gSpTJM115mxvv9XA3l3Nu?utm_source=generator','auto');
INSERT INTO `wp_options` VALUES (471,'spotify_embed_url_3','https://open.spotify.com/embed/playlist/6pbHJSdX8MYzrZJ3jMmWfK?utm_source=generator','auto');
INSERT INTO `wp_options` VALUES (542,'ss_podcasting_exclude_feed_5','on','auto');
INSERT INTO `wp_options` VALUES (544,'ss_podcasting_default_series','5','auto');
INSERT INTO `wp_options` VALUES (545,'widget_podcast-playlist','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (546,'widget_podcast-series','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (547,'widget_single-podcast-episode','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (548,'widget_recent-podcast-episodes','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (549,'ssp_db_version','3.9.0','off');
INSERT INTO `wp_options` VALUES (550,'ssp_version','3.9.0','auto');
INSERT INTO `wp_options` VALUES (551,'ss_podcasting_subscribe_options','a:4:{i:0;s:14:\"apple_podcasts\";i:1;s:8:\"stitcher\";i:2;s:15:\"google_podcasts\";i:3;s:7:\"spotify\";}','auto');
INSERT INTO `wp_options` VALUES (552,'ss_podcasting_episode_description','excerpt','auto');
INSERT INTO `wp_options` VALUES (553,'ss_podcasting_distribution_upgrade_disabled','false','auto');
INSERT INTO `wp_options` VALUES (554,'ss_podcasting_data_title_5','Radio Telekomunikasi Cipta UI','auto');
INSERT INTO `wp_options` VALUES (555,'ss_podcasting_data_description_5','testing','auto');
INSERT INTO `wp_options` VALUES (556,'series_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (557,'ss_podcasting_series_slug','podcasts','auto');
INSERT INTO `wp_options` VALUES (564,'ss_podcasting_review_status','start_since_1744218796','auto');
INSERT INTO `wp_options` VALUES (581,'dpe_spotify_urls','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (586,'acf_first_activated_version','6.3.12','on');
INSERT INTO `wp_options` VALUES (587,'acf_site_health','{\"event_first_activated\":1741631319,\"last_updated\":1741631843,\"event_first_created_field_group\":1741631843}','off');
INSERT INTO `wp_options` VALUES (588,'acf_version','6.3.12','auto');
INSERT INTO `wp_options` VALUES (689,'rtc_general_manager_name','','auto');
INSERT INTO `wp_options` VALUES (690,'rtc_general_manager_image','','auto');
INSERT INTO `wp_options` VALUES (691,'rtc_vice_gm_name','','auto');
INSERT INTO `wp_options` VALUES (692,'rtc_vice_gm_image','','auto');
INSERT INTO `wp_options` VALUES (693,'rtc_secretary_name','','auto');
INSERT INTO `wp_options` VALUES (694,'rtc_secretary_image','','auto');
INSERT INTO `wp_options` VALUES (695,'rtc_finance_manager_name','','auto');
INSERT INTO `wp_options` VALUES (696,'rtc_finance_manager_image','','auto');
INSERT INTO `wp_options` VALUES (697,'rtc_marketing_manager_name','','auto');
INSERT INTO `wp_options` VALUES (698,'rtc_marketing_manager_image','','auto');
INSERT INTO `wp_options` VALUES (699,'rtc_creative_manager_name','','auto');
INSERT INTO `wp_options` VALUES (700,'rtc_creative_manager_image','','auto');
INSERT INTO `wp_options` VALUES (701,'rtc_hr_manager_name','','auto');
INSERT INTO `wp_options` VALUES (702,'rtc_hr_manager_image','','auto');
INSERT INTO `wp_options` VALUES (703,'rtc_station_manager_name','','auto');
INSERT INTO `wp_options` VALUES (704,'rtc_station_manager_image','','auto');
INSERT INTO `wp_options` VALUES (834,'ctf_version','2.3.0','auto');
INSERT INTO `wp_options` VALUES (835,'ctf_usage_tracking','a:2:{s:7:\"enabled\";b:0;s:9:\"last_send\";i:0;}','off');
INSERT INTO `wp_options` VALUES (836,'widget_custom-twitter-feeds-widget','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (839,'ctf_rating_notice','pending','off');
INSERT INTO `wp_options` VALUES (840,'ctf_statuses','a:5:{s:13:\"first_install\";i:1742574640;s:24:\"support_legacy_shortcode\";b:0;s:17:\"first_cron_update\";i:1742704241;s:18:\"smash_twitter_cron\";a:3:{s:15:\"request_counter\";i:0;s:26:\"request_counter_reset_time\";i:1749834146;s:24:\"last_update_process_time\";i:1749834146;}s:12:\"feed_locator\";a:2:{s:10:\"last_check\";i:1750000756;s:11:\"initialized\";i:1746201667;}}','on');
INSERT INTO `wp_options` VALUES (841,'ctf_db_version','1.5','auto');
INSERT INTO `wp_options` VALUES (842,'ctf_notifications','a:4:{s:6:\"update\";i:1746201711;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','auto');
INSERT INTO `wp_options` VALUES (843,'ctf_newuser_notifications','a:4:{s:6:\"update\";i:1742574643;s:4:\"feed\";a:2:{s:6:\"review\";a:6:{s:5:\"title\";s:25:\"How Do You Like {plugin}?\";s:7:\"content\";s:260:\"It\'s great to see that you\'ve been using the <strong>{plugin}</strong> plugin for a while now. Hopefully you\'re happy with it!&nbsp; If so, would you consider leaving a positive review? It really helps to support the plugin and helps others to discover it too!\";s:2:\"id\";s:6:\"review\";s:5:\"image\";s:12:\"sbi-icon.png\";s:4:\"btns\";a:4:{s:7:\"primary\";a:4:{s:3:\"url\";s:12:\"{review-url}\";s:4:\"attr\";a:1:{i:0;s:11:\"targetblank\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:18:\"Sure, I\'d love to!\";}s:7:\"dismiss\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:1:\"1\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:9:\"No thanks\";}s:8:\"complete\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:1:\"1\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:27:\"I\'ve already given a review\";}s:5:\"later\";a:3:{s:3:\"url\";a:1:{s:28:\"sbi_ignore_rating_notice_nag\";s:5:\"later\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:12:\"Ask Me Later\";}}s:4:\"wait\";s:2:\"14\";}s:8:\"discount\";a:8:{s:5:\"title\";s:28:\"Attention {platform} Lovers!\";s:7:\"content\";s:195:\"<strong>Exclusive offer!</strong> We don\'t run promotions very often, but for a limited time we\'re offering <strong>{amount} off</strong> our Pro version to all users of our free {plugin} plugin.\";s:2:\"id\";s:8:\"discount\";s:6:\"amount\";s:3:\"60%\";s:5:\"image\";s:12:\"sbi-icon.png\";s:13:\"image_overlay\";s:7:\"60% off\";s:4:\"btns\";a:2:{s:7:\"primary\";a:4:{s:3:\"url\";s:127:\"https://smashballoon.com/{slug}/?utm_campaign={campaign}&utm_source=notices&utm_medium=newuser&discount={lowerplatform}thankyou\";s:5:\"class\";s:32:\"sbi_notice_dismiss sbi_offer_btn\";s:4:\"text\";s:14:\"Get this offer\";s:4:\"attr\";a:1:{i:0;s:11:\"targetblank\";}}s:7:\"dismiss\";a:3:{s:3:\"url\";a:1:{s:31:\"sbi_ignore_new_user_sale_notice\";s:6:\"always\";}s:5:\"class\";s:18:\"sbi_notice_dismiss\";s:4:\"text\";s:18:\"I\'m not interested\";}}s:4:\"wait\";s:2:\"30\";}}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','auto');
INSERT INTO `wp_options` VALUES (1032,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1750000751;s:15:\"version_checked\";s:5:\"6.8.1\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (1034,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"dev-email@wpengine.local\";s:7:\"version\";s:5:\"6.8.1\";s:9:\"timestamp\";i:1746201661;}','off');
INSERT INTO `wp_options` VALUES (1037,'_transient_health-check-site-status-result','{\"good\":16,\"recommended\":4,\"critical\":0}','on');
INSERT INTO `wp_options` VALUES (1039,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (1040,'ctf_cron_report','a:1:{s:5:\"notes\";a:2:{s:8:\"time_ran\";s:19:\"2025-06-15 16:52:27\";s:20:\"num_found_transients\";i:0;}}','off');
INSERT INTO `wp_options` VALUES (1132,'_site_transient_timeout_php_check_617fc4d260191bf0de418d0d961f5a43','1750438959','off');
INSERT INTO `wp_options` VALUES (1133,'_site_transient_php_check_617fc4d260191bf0de418d0d961f5a43','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `wp_options` VALUES (1143,'_site_transient_timeout_theme_roots','1750002554','off');
INSERT INTO `wp_options` VALUES (1144,'_site_transient_theme_roots','a:1:{s:13:\"rtcmaindesign\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES (1145,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1750000756;s:8:\"response\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.4.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3207824\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3207824\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:30:\"all-bootstrap-blocks/areoi.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:34:\"w.org/plugins/all-bootstrap-blocks\";s:4:\"slug\";s:20:\"all-bootstrap-blocks\";s:6:\"plugin\";s:30:\"all-bootstrap-blocks/areoi.php\";s:11:\"new_version\";s:6:\"1.3.28\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/all-bootstrap-blocks/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/all-bootstrap-blocks.1.3.28.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/all-bootstrap-blocks/assets/icon-256x256.gif?rev=2617070\";s:2:\"1x\";s:73:\"https://ps.w.org/all-bootstrap-blocks/assets/icon-256x256.gif?rev=2617070\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/all-bootstrap-blocks/assets/banner-772x250.png?rev=2669325\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";b:0;s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"7.0\";s:16:\"requires_plugins\";a:0:{}}s:44:\"custom-twitter-feeds/custom-twitter-feed.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:34:\"w.org/plugins/custom-twitter-feeds\";s:4:\"slug\";s:20:\"custom-twitter-feeds\";s:6:\"plugin\";s:44:\"custom-twitter-feeds/custom-twitter-feed.php\";s:11:\"new_version\";s:5:\"2.3.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/custom-twitter-feeds/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-twitter-feeds.2.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/custom-twitter-feeds/assets/icon-256x256.png?rev=2700808\";s:2:\"1x\";s:73:\"https://ps.w.org/custom-twitter-feeds/assets/icon-128x128.png?rev=2700808\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/custom-twitter-feeds/assets/banner-1544x500.png?rev=2679386\";s:2:\"1x\";s:75:\"https://ps.w.org/custom-twitter-feeds/assets/banner-772x250.png?rev=2679386\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"5.6\";s:16:\"requires_plugins\";a:0:{}}s:59:\"seriously-simple-podcasting/seriously-simple-podcasting.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:41:\"w.org/plugins/seriously-simple-podcasting\";s:4:\"slug\";s:27:\"seriously-simple-podcasting\";s:6:\"plugin\";s:59:\"seriously-simple-podcasting/seriously-simple-podcasting.php\";s:11:\"new_version\";s:6:\"3.10.3\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/seriously-simple-podcasting/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/seriously-simple-podcasting.3.10.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/seriously-simple-podcasting/assets/icon-256x256.png?rev=970355\";s:2:\"1x\";s:79:\"https://ps.w.org/seriously-simple-podcasting/assets/icon-128x128.png?rev=970355\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/seriously-simple-podcasting/assets/banner-1544x500.png?rev=1118552\";s:2:\"1x\";s:82:\"https://ps.w.org/seriously-simple-podcasting/assets/banner-772x250.png?rev=1118552\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/seriously-simple-podcasting/assets/banner-1544x500-rtl.png?rev=1284654\";s:2:\"1x\";s:86:\"https://ps.w.org/seriously-simple-podcasting/assets/banner-772x250-rtl.png?rev=1284654\";}s:8:\"requires\";s:3:\"5.3\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:35:\"website-builder/website-builder.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/website-builder\";s:4:\"slug\";s:15:\"website-builder\";s:6:\"plugin\";s:35:\"website-builder/website-builder.php\";s:11:\"new_version\";s:5:\"3.0.9\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/website-builder/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/website-builder.3.0.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/website-builder/assets/icon-256x256.png?rev=3120778\";s:2:\"1x\";s:68:\"https://ps.w.org/website-builder/assets/icon-128x128.png?rev=3120778\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/website-builder/assets/banner-1544x500.png?rev=3120778\";s:2:\"1x\";s:70:\"https://ps.w.org/website-builder/assets/banner-772x250.png?rev=3120778\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}}s:7:\"checked\";a:13:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"6.3.12\";s:30:\"all-bootstrap-blocks/areoi.php\";s:6:\"1.3.26\";s:30:\"rtc-plugin/articles-plugin.php\";s:3:\"1.1\";s:38:\"rtc-plugin/bph-data-manager-plugin.php\";s:3:\"1.0\";s:44:\"custom-twitter-feeds/custom-twitter-feed.php\";s:5:\"2.3.0\";s:35:\"website-builder/website-builder.php\";s:5:\"3.0.9\";s:37:\"rtc-plugin/instagram-posts-plugin.php\";s:3:\"1.0\";s:37:\"rtc-plugin/PI-data-manager-plugin.php\";s:3:\"1.2\";s:36:\"rtc-plugin/radio-programs-plugin.php\";s:3:\"1.0\";s:59:\"seriously-simple-podcasting/seriously-simple-podcasting.php\";s:5:\"3.9.0\";s:36:\"rtc-plugin/spotify-charts-plugin.php\";s:3:\"1.2\";s:45:\"rtc-plugin/spotify-podcast-manager-plugin.php\";s:3:\"1.0\";s:40:\"rtc-plugin/staff-data-manager-plugin.php\";s:3:\"1.0\";}}','off');
INSERT INTO `wp_options` VALUES (1155,'_site_transient_timeout_wp_theme_files_patterns-b7aa9907e5adbc81ede241bad69d5e7e','1750010094','off');
INSERT INTO `wp_options` VALUES (1156,'_site_transient_wp_theme_files_patterns-b7aa9907e5adbc81ede241bad69d5e7e','a:2:{s:7:\"version\";s:0:\"\";s:8:\"patterns\";a:0:{}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (24,12,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (25,12,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (26,12,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (27,12,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (28,12,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (29,12,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (30,12,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (31,12,'_menu_item_url','http://rtc.local/about/');
INSERT INTO `wp_postmeta` VALUES (44,16,'_edit_lock','1742015713:1');
INSERT INTO `wp_postmeta` VALUES (54,19,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (55,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (56,19,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (57,19,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (58,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (59,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (60,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (61,19,'_menu_item_url','http://rtc.local/station/');
INSERT INTO `wp_postmeta` VALUES (63,20,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (64,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (65,20,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (66,20,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (67,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (68,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (69,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (70,20,'_menu_item_url','http://rtc.local/division/');
INSERT INTO `wp_postmeta` VALUES (72,21,'_edit_lock','1738683095:1');
INSERT INTO `wp_postmeta` VALUES (73,23,'_edit_lock','1740677215:1');
INSERT INTO `wp_postmeta` VALUES (101,28,'_edit_lock','1740676153:1');
INSERT INTO `wp_postmeta` VALUES (102,30,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (103,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (104,30,'_menu_item_object_id','30');
INSERT INTO `wp_postmeta` VALUES (105,30,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (106,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (107,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (108,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (109,30,'_menu_item_url','http://rtc.local/contact-us/');
INSERT INTO `wp_postmeta` VALUES (111,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (112,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (113,32,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (114,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (115,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (116,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (117,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (118,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (119,32,'_menu_item_orphaned','1740676591');
INSERT INTO `wp_postmeta` VALUES (120,19,'_wp_old_date','2025-02-04');
INSERT INTO `wp_postmeta` VALUES (121,12,'_wp_old_date','2025-02-04');
INSERT INTO `wp_postmeta` VALUES (122,20,'_wp_old_date','2025-02-04');
INSERT INTO `wp_postmeta` VALUES (124,30,'_wp_old_date','2025-02-04');
INSERT INTO `wp_postmeta` VALUES (125,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (126,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (127,33,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (128,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (129,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (130,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (131,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (132,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (133,33,'_menu_item_orphaned','1740677005');
INSERT INTO `wp_postmeta` VALUES (134,34,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (135,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (136,34,'_menu_item_object_id','34');
INSERT INTO `wp_postmeta` VALUES (137,34,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (138,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (139,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (140,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (141,34,'_menu_item_url','http://rtc.local/artikelis/');
INSERT INTO `wp_postmeta` VALUES (143,23,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (144,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (145,35,'_edit_lock','1740907357:1');
INSERT INTO `wp_postmeta` VALUES (146,36,'_wp_attached_file','2025/03/Screenshot-2025-03-01-222921.png');
INSERT INTO `wp_postmeta` VALUES (147,36,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:857;s:6:\"height\";i:496;s:4:\"file\";s:40:\"2025/03/Screenshot-2025-03-01-222921.png\";s:8:\"filesize\";i:54383;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-03-01-222921-300x174.png\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44720;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-03-01-222921-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17673;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-03-01-222921-768x444.png\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:173244;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (148,35,'_thumbnail_id','36');
INSERT INTO `wp_postmeta` VALUES (149,37,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (150,37,'_edit_lock','1741105739:1');
INSERT INTO `wp_postmeta` VALUES (151,38,'_wp_attached_file','2025/03/Screenshot-2025-02-12-163322.png');
INSERT INTO `wp_postmeta` VALUES (152,38,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:811;s:6:\"height\";i:555;s:4:\"file\";s:40:\"2025/03/Screenshot-2025-02-12-163322.png\";s:8:\"filesize\";i:76327;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-02-12-163322-300x205.png\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21162;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-02-12-163322-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12327;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-02-12-163322-768x526.png\";s:5:\"width\";i:768;s:6:\"height\";i:526;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:76312;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (153,37,'_thumbnail_id','38');
INSERT INTO `wp_postmeta` VALUES (154,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (155,39,'_edit_lock','1741105734:1');
INSERT INTO `wp_postmeta` VALUES (156,39,'_thumbnail_id','38');
INSERT INTO `wp_postmeta` VALUES (157,40,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (158,40,'_edit_lock','1741105888:1');
INSERT INTO `wp_postmeta` VALUES (159,40,'_thumbnail_id','36');
INSERT INTO `wp_postmeta` VALUES (160,40,'custom_author_name','');
INSERT INTO `wp_postmeta` VALUES (161,39,'custom_author_name','');
INSERT INTO `wp_postmeta` VALUES (162,37,'custom_author_name','');
INSERT INTO `wp_postmeta` VALUES (169,44,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (170,44,'_edit_lock','1741631710:1');
INSERT INTO `wp_postmeta` VALUES (177,51,'_edit_lock','1742018055:1');
INSERT INTO `wp_postmeta` VALUES (178,53,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (179,53,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (180,53,'_menu_item_object_id','51');
INSERT INTO `wp_postmeta` VALUES (181,53,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (182,53,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (183,53,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (184,53,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (185,53,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (186,53,'_menu_item_orphaned','1742018097');
INSERT INTO `wp_postmeta` VALUES (187,54,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (188,54,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (189,54,'_menu_item_object_id','28');
INSERT INTO `wp_postmeta` VALUES (190,54,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (191,54,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (192,54,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (193,54,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (194,54,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (195,54,'_menu_item_orphaned','1742018122');
INSERT INTO `wp_postmeta` VALUES (196,55,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (197,55,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (198,55,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (199,55,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (200,55,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (201,55,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (202,55,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (203,55,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (204,55,'_menu_item_orphaned','1742018137');
INSERT INTO `wp_postmeta` VALUES (205,56,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (206,56,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (207,56,'_menu_item_object_id','56');
INSERT INTO `wp_postmeta` VALUES (208,56,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (209,56,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (210,56,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (211,56,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (212,56,'_menu_item_url','http://rtc.local/');
INSERT INTO `wp_postmeta` VALUES (214,12,'_wp_old_date','2025-02-27');
INSERT INTO `wp_postmeta` VALUES (215,20,'_wp_old_date','2025-02-27');
INSERT INTO `wp_postmeta` VALUES (216,19,'_wp_old_date','2025-02-27');
INSERT INTO `wp_postmeta` VALUES (217,34,'_wp_old_date','2025-02-27');
INSERT INTO `wp_postmeta` VALUES (218,30,'_wp_old_date','2025-02-27');
INSERT INTO `wp_postmeta` VALUES (222,62,'_edit_lock','1742111711:1');
INSERT INTO `wp_postmeta` VALUES (223,64,'_edit_lock','1742111937:1');
INSERT INTO `wp_postmeta` VALUES (224,66,'_edit_lock','1742111717:1');
INSERT INTO `wp_postmeta` VALUES (225,68,'_edit_lock','1742111695:1');
INSERT INTO `wp_postmeta` VALUES (229,70,'_edit_lock','1742116742:1');
INSERT INTO `wp_postmeta` VALUES (232,66,'_wp_page_template','division-page/division-child-page/creativechildpage.php');
INSERT INTO `wp_postmeta` VALUES (233,70,'_wp_page_template','division-page/division-child-page/financechildpage.php');
INSERT INTO `wp_postmeta` VALUES (234,68,'_wp_page_template','division-page/division-child-page/humanresourcechildpage.php');
INSERT INTO `wp_postmeta` VALUES (235,62,'_wp_page_template','division-page/division-child-page/marketingchildpage.php');
INSERT INTO `wp_postmeta` VALUES (236,64,'_wp_page_template','division-page/division-child-page/stationchildpage.php');
INSERT INTO `wp_postmeta` VALUES (237,74,'_wp_attached_file','2025/03/PR1.png');
INSERT INTO `wp_postmeta` VALUES (238,74,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:15:\"2025/03/PR1.png\";s:8:\"filesize\";i:1999667;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"PR1-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:125317;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"PR1-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1010530;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"PR1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47053;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"PR1-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:907805;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (239,75,'_wp_attached_file','2025/03/CI1.png');
INSERT INTO `wp_postmeta` VALUES (240,75,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:15:\"2025/03/CI1.png\";s:8:\"filesize\";i:2130005;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"CI1-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:123481;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"CI1-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1043375;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"CI1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45544;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"CI1-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:932380;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (241,76,'_wp_attached_file','2025/03/SMS1.png');
INSERT INTO `wp_postmeta` VALUES (242,76,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:16:\"2025/03/SMS1.png\";s:8:\"filesize\";i:2638278;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"SMS1-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:113483;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"SMS1-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:928456;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"SMS1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42245;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"SMS1-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:835588;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (243,77,'_wp_attached_file','2025/03/GD1.png');
INSERT INTO `wp_postmeta` VALUES (244,77,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:15:\"2025/03/GD1.png\";s:8:\"filesize\";i:1896988;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"GD1-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:117834;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"GD1-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:950746;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"GD1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44041;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"GD1-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:853558;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (245,78,'_wp_attached_file','2025/03/NR1.png');
INSERT INTO `wp_postmeta` VALUES (246,78,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:15:\"2025/03/NR1.png\";s:8:\"filesize\";i:2651610;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"NR1-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:107819;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"NR1-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:880909;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"NR1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39582;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"NR1-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:788562;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (247,79,'_wp_attached_file','2025/03/EO1.png');
INSERT INTO `wp_postmeta` VALUES (248,79,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:15:\"2025/03/EO1.png\";s:8:\"filesize\";i:2077892;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"EO1-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:123345;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"EO1-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1057007;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"EO1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45473;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"EO1-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:947696;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (249,80,'_wp_attached_file','2025/03/CP1.png');
INSERT INTO `wp_postmeta` VALUES (250,80,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:15:\"2025/03/CP1.png\";s:8:\"filesize\";i:1981119;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"CP1-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:119111;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"CP1-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:995680;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"CP1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44307;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"CP1-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:892125;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (251,81,'_wp_attached_file','2025/03/TRD1.png');
INSERT INTO `wp_postmeta` VALUES (252,81,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:16:\"2025/03/TRD1.png\";s:8:\"filesize\";i:1783758;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"TRD1-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:121125;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"TRD1-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:953472;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"TRD1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45824;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"TRD1-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:856893;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (255,83,'_wp_attached_file','2025/03/NON1.png');
INSERT INTO `wp_postmeta` VALUES (256,83,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:16:\"2025/03/NON1.png\";s:8:\"filesize\";i:1963115;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"NON1-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:118187;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"NON1-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:972961;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"NON1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44269;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"NON1-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:873084;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (257,84,'_wp_attached_file','2025/03/PRO1.png');
INSERT INTO `wp_postmeta` VALUES (258,84,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:16:\"2025/03/PRO1.png\";s:8:\"filesize\";i:2101714;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"PRO1-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:121247;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"PRO1-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1023245;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"PRO1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44368;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"PRO1-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:916200;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (261,86,'_wp_attached_file','2025/03/ATF1.png');
INSERT INTO `wp_postmeta` VALUES (262,86,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:16:\"2025/03/ATF1.png\";s:8:\"filesize\";i:2333716;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"ATF1-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:102167;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"ATF1-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:823303;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"ATF1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38343;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"ATF1-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:739094;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (263,87,'_wp_attached_file','2025/03/MD1.png');
INSERT INTO `wp_postmeta` VALUES (264,87,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:15:\"2025/03/MD1.png\";s:8:\"filesize\";i:2066480;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"MD1-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:125768;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"MD1-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1036241;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"MD1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46842;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"MD1-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:928963;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (265,88,'_wp_attached_file','2025/03/CI2-2.png');
INSERT INTO `wp_postmeta` VALUES (266,88,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:17:\"2025/03/CI2-2.png\";s:8:\"filesize\";i:2252110;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"CI2-2-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:126374;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"CI2-2-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1077239;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"CI2-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46091;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"CI2-2-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:961449;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (267,89,'_wp_attached_file','2025/03/CI2.png');
INSERT INTO `wp_postmeta` VALUES (268,89,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:15:\"2025/03/CI2.png\";s:8:\"filesize\";i:2024346;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"CI2-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:123296;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"CI2-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1006375;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"CI2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44802;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"CI2-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:902116;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (269,90,'_wp_attached_file','2025/03/CI3.png');
INSERT INTO `wp_postmeta` VALUES (270,90,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:15:\"2025/03/CI3.png\";s:8:\"filesize\";i:2053943;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"CI3-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:118344;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"CI3-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1003628;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"CI3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43166;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"CI3-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:896637;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (271,91,'_wp_attached_file','2025/03/PR2.png');
INSERT INTO `wp_postmeta` VALUES (272,91,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:15:\"2025/03/PR2.png\";s:8:\"filesize\";i:2476780;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"PR2-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:139596;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"PR2-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1213885;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"PR2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51422;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"PR2-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1083532;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (273,92,'_wp_attached_file','2025/03/PR3-2.png');
INSERT INTO `wp_postmeta` VALUES (274,92,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:17:\"2025/03/PR3-2.png\";s:8:\"filesize\";i:2070122;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"PR3-2-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:124992;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"PR3-2-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1018030;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"PR3-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47454;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"PR3-2-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:911750;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (275,93,'_wp_attached_file','2025/03/PR3.png');
INSERT INTO `wp_postmeta` VALUES (276,93,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:15:\"2025/03/PR3.png\";s:8:\"filesize\";i:2212801;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"PR3-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:126471;}s:5:\"large\";a:5:{s:4:\"file\";s:16:\"PR3-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1095206;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"PR3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47354;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"PR3-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:977727;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (277,94,'_wp_attached_file','2025/03/SMS2.png');
INSERT INTO `wp_postmeta` VALUES (278,94,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:16:\"2025/03/SMS2.png\";s:8:\"filesize\";i:2775488;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"SMS2-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:117796;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"SMS2-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:968251;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"SMS2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42988;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"SMS2-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:870246;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (279,95,'_wp_attached_file','2025/03/SMS3.png');
INSERT INTO `wp_postmeta` VALUES (280,95,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:16:\"2025/03/SMS3.png\";s:8:\"filesize\";i:2553304;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"SMS3-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:115886;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"SMS3-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:915100;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"SMS3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43761;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"SMS3-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:822573;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (281,96,'_wp_attached_file','2025/03/SMS4-2.png');
INSERT INTO `wp_postmeta` VALUES (282,96,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:18:\"2025/03/SMS4-2.png\";s:8:\"filesize\";i:3015116;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"SMS4-2-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:118974;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"SMS4-2-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:984132;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"SMS4-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43886;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"SMS4-2-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:881598;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (283,97,'_wp_attached_file','2025/03/SMS4.png');
INSERT INTO `wp_postmeta` VALUES (284,97,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1500;s:4:\"file\";s:16:\"2025/03/SMS4.png\";s:8:\"filesize\";i:2525490;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"SMS4-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:112067;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"SMS4-819x1024.png\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:926006;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"SMS4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42038;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"SMS4-768x960.png\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:829453;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (285,99,'_wp_attached_file','2025/04/Screenshot-2025-02-09-234701.png');
INSERT INTO `wp_postmeta` VALUES (286,99,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1915;s:6:\"height\";i:993;s:4:\"file\";s:40:\"2025/04/Screenshot-2025-02-09-234701.png\";s:8:\"filesize\";i:593310;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-02-09-234701-300x156.png\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42304;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"Screenshot-2025-02-09-234701-1024x531.png\";s:5:\"width\";i:1024;s:6:\"height\";i:531;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:326774;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-02-09-234701-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17892;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-02-09-234701-768x398.png\";s:5:\"width\";i:768;s:6:\"height\";i:398;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:198710;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"Screenshot-2025-02-09-234701-1536x796.png\";s:5:\"width\";i:1536;s:6:\"height\";i:796;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:591526;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (2,1,'2025-01-15 07:54:15','2025-01-15 07:54:15','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://rtc.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2025-01-15 07:54:15','2025-01-15 07:54:15','',0,'http://rtc.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2025-01-15 07:54:15','2025-01-15 07:54:15','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://rtc.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2025-01-15 07:54:15','2025-01-15 07:54:15','',0,'http://rtc.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2025-01-15 08:07:48','2025-01-15 08:07:48','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2025-01-15 08:07:48','2025-01-15 08:07:48','',0,'http://rtc.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2025-01-17 11:27:29','2025-01-17 11:27:29','{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentyfive','','','2025-01-17 11:27:29','2025-01-17 11:27:29','',0,'http://rtc.local/wp-global-styles-twentytwentyfive/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2025-03-15 05:56:32','2025-02-04 15:14:47','','About','','publish','closed','closed','','home','','','2025-03-15 05:56:32','2025-03-15 05:56:32','',0,'http://rtc.local/?p=12',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2025-02-04 15:21:14','2025-02-04 15:21:14','','About','','publish','closed','closed','','about','','','2025-02-04 15:21:14','2025-02-04 15:21:14','',0,'http://rtc.local/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2025-02-04 15:21:14','2025-02-04 15:21:14','','About','','inherit','closed','closed','','16-revision-v1','','','2025-02-04 15:21:14','2025-02-04 15:21:14','',16,'http://rtc.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2025-03-15 05:56:32','2025-02-04 15:23:02','','Station','','publish','closed','closed','','home-2','','','2025-03-15 05:56:32','2025-03-15 05:56:32','',0,'http://rtc.local/?p=19',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2025-03-15 05:56:32','2025-02-04 15:31:15','','Division','','publish','closed','closed','','division','','','2025-03-15 05:56:32','2025-03-15 05:56:32','',0,'http://rtc.local/?p=20',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2025-02-04 15:31:39','2025-02-04 15:31:39','','Division','','publish','closed','closed','','division','','','2025-02-04 15:31:39','2025-02-04 15:31:39','',0,'http://rtc.local/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2025-02-04 15:31:39','2025-02-04 15:31:39','','Division','','inherit','closed','closed','','21-revision-v1','','','2025-02-04 15:31:39','2025-02-04 15:31:39','',21,'http://rtc.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2025-02-04 15:33:14','2025-02-04 15:33:14','','Articles','','publish','closed','closed','','artikelis','','','2025-02-27 17:26:55','2025-02-27 17:26:55','',0,'http://rtc.local/?page_id=23',0,'page','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2025-02-04 15:33:14','2025-02-04 15:33:14','','Articles','','inherit','closed','closed','','23-revision-v1','','','2025-02-04 15:33:14','2025-02-04 15:33:14','',23,'http://rtc.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2025-02-04 15:37:45','2025-02-04 15:37:45','','Contact Us','','publish','closed','closed','','contact-us','','','2025-02-04 15:37:45','2025-02-04 15:37:45','',0,'http://rtc.local/?page_id=28',0,'page','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2025-02-04 15:37:45','2025-02-04 15:37:45','','Contact Us','','inherit','closed','closed','','28-revision-v1','','','2025-02-04 15:37:45','2025-02-04 15:37:45','',28,'http://rtc.local/?p=29',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2025-03-15 05:56:32','2025-02-04 17:00:33','','Contact Us','','publish','closed','closed','','home-3','','','2025-03-15 05:56:32','2025-03-15 05:56:32','',0,'http://rtc.local/?p=30',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2025-02-27 17:16:31','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-02-27 17:16:31','0000-00-00 00:00:00','',0,'http://rtc.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2025-02-27 17:23:25','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-02-27 17:23:25','0000-00-00 00:00:00','',0,'http://rtc.local/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2025-03-15 05:56:32','2025-02-27 17:24:34','','Articles','','publish','closed','closed','','articles-2','','','2025-03-15 05:56:32','2025-03-15 05:56:32','',0,'http://rtc.local/?p=34',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2025-03-02 08:34:23','2025-03-02 08:34:23','','Survival Guide Mahasiswa: Puasa Nyaman Tanpa Drama Gerd','','publish','closed','closed','','survival-guide-mahasiswa-puasa-nyaman-tanpa-drama-gerd','','','2025-03-02 09:21:08','2025-03-02 09:21:08','',0,'http://rtc.local/?post_type=articles&#038;p=35',0,'articles','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2025-03-02 08:35:39','2025-03-02 08:35:39','','Screenshot 2025-03-01 222921','','inherit','open','closed','','screenshot-2025-03-01-222921','','','2025-03-02 08:35:39','2025-03-02 08:35:39','',35,'http://rtc.local/wp-content/uploads/2025/03/Screenshot-2025-03-01-222921.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (37,1,'2025-03-02 09:25:27','2025-03-02 09:25:27','','Swipe Left pada Buku Elektronik? Manfaat Tersembunyi dari Membaca Buku Cetak','','publish','closed','closed','','swipe-left-pada-buku-elektronik-manfaat-tersembunyi-dari-membaca-buku-cetak','','','2025-03-04 16:30:36','2025-03-04 16:30:36','',0,'http://rtc.local/?post_type=articles&#038;p=37',0,'articles','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2025-03-02 09:25:23','2025-03-02 09:25:23','','Screenshot 2025-02-12 163322','','inherit','open','closed','','screenshot-2025-02-12-163322','','','2025-03-02 09:25:23','2025-03-02 09:25:23','',37,'http://rtc.local/wp-content/uploads/2025/03/Screenshot-2025-02-12-163322.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (39,1,'2025-03-02 09:26:30','2025-03-02 09:26:30','','Ketika Akal dan Moral Bertemu: Haruskah Logika Mengalah pada Etika?','','publish','closed','closed','','ketika-akal-dan-moral-bertemu-haruskah-logika-mengalah-pada-etika','','','2025-03-04 16:30:58','2025-03-04 16:30:58','',0,'http://rtc.local/?post_type=articles&#038;p=39',0,'articles','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2025-03-02 09:33:58','2025-03-02 09:33:58','','Katanya Sih, Personal Colour Analysis Bikin Makin PD!','','publish','closed','closed','','katanya-sih-personal-colour-analysis-bikin-makin-pd','','','2025-03-04 16:31:28','2025-03-04 16:31:28','',0,'http://rtc.local/?post_type=articles&#038;p=40',0,'articles','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2025-03-10 18:37:23','2025-03-10 18:37:23','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Contact Information','contact-information','publish','closed','closed','','group_67cf2f6391a7b','','','2025-03-10 18:37:23','2025-03-10 18:37:23','',0,'http://rtc.local/?post_type=acf-field-group&#038;p=44',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2025-03-10 18:37:23','2025-03-10 18:37:23','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:94:\"Pusat Kegiatan Mahasiswa, Jalan Prof. Dr. Fuad Hassan, Beji, Depok 16425, West Java, Indonesia\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Address','address','publish','closed','closed','','field_67cf2f6330024','','','2025-03-10 18:37:23','2025-03-10 18:37:23','',44,'http://rtc.local/?post_type=acf-field&p=45',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2025-03-10 18:37:23','2025-03-10 18:37:23','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:13:\"(021) 7863521\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Phone','phone','publish','closed','closed','','field_67cf2faa30026','','','2025-03-10 18:37:23','2025-03-10 18:37:23','',44,'http://rtc.local/?post_type=acf-field&p=46',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2025-03-10 18:37:23','2025-03-10 18:37:23','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:19:\"contact@example.com\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Email','email','publish','closed','closed','','field_67cf2fc430027','','','2025-03-10 18:37:23','2025-03-10 18:37:23','',44,'http://rtc.local/?post_type=acf-field&p=47',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2025-03-10 18:37:23','2025-03-10 18:37:23','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:34:\"Monday - Friday: 9:00 AM - 6:00 PM\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Working Hours','monday_-_friday:_9:00_am_-_6:00_pm','publish','closed','closed','','field_67cf2fdc30028','','','2025-03-10 18:37:23','2025-03-10 18:37:23','',44,'http://rtc.local/?post_type=acf-field&p=48',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2025-03-15 05:54:17','2025-03-15 05:54:17','','Station','','publish','closed','closed','','station','','','2025-03-15 05:54:17','2025-03-15 05:54:17','',0,'http://rtc.local/?page_id=51',0,'page','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2025-03-15 05:54:17','2025-03-15 05:54:17','','Station','','inherit','closed','closed','','51-revision-v1','','','2025-03-15 05:54:17','2025-03-15 05:54:17','',51,'http://rtc.local/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2025-03-15 05:54:57','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-03-15 05:54:57','0000-00-00 00:00:00','',0,'http://rtc.local/?p=53',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2025-03-15 05:55:22','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-03-15 05:55:22','0000-00-00 00:00:00','',0,'http://rtc.local/?p=54',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2025-03-15 05:55:37','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2025-03-15 05:55:37','0000-00-00 00:00:00','',0,'http://rtc.local/?p=55',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2025-03-15 05:56:32','2025-03-15 05:56:32','','Home','','publish','closed','closed','','home-4','','','2025-03-15 05:56:32','2025-03-15 05:56:32','',0,'http://rtc.local/?p=56',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2025-03-15 18:11:24','2025-03-15 18:11:24','','BPH Marketing','','publish','closed','closed','','bph-marketing','','','2025-03-16 07:57:35','2025-03-16 07:57:35','',0,'http://rtc.local/?page_id=62',0,'page','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2025-03-15 18:11:24','2025-03-15 18:11:24','','BPH Marketing','','inherit','closed','closed','','62-revision-v1','','','2025-03-15 18:11:24','2025-03-15 18:11:24','',62,'http://rtc.local/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2025-03-15 18:11:32','2025-03-15 18:11:32','','BPH Station','','publish','closed','closed','','bph-station','','','2025-03-16 07:58:14','2025-03-16 07:58:14','',0,'http://rtc.local/?page_id=64',0,'page','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2025-03-15 18:11:32','2025-03-15 18:11:32','','BPH Station','','inherit','closed','closed','','64-revision-v1','','','2025-03-15 18:11:32','2025-03-15 18:11:32','',64,'http://rtc.local/?p=65',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2025-03-15 18:14:56','2025-03-15 18:14:56','','BPH Creative','','publish','closed','closed','','bph-creative','','','2025-03-16 07:55:11','2025-03-16 07:55:11','',0,'http://rtc.local/?page_id=66',0,'page','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2025-03-15 18:14:56','2025-03-15 18:14:56','','BPH Creative','','inherit','closed','closed','','66-revision-v1','','','2025-03-15 18:14:56','2025-03-15 18:14:56','',66,'http://rtc.local/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2025-03-15 18:15:22','2025-03-15 18:15:22','','BPH Human Resource','','publish','closed','closed','','bph-human-resource','','','2025-03-16 07:57:19','2025-03-16 07:57:19','',0,'http://rtc.local/?page_id=68',0,'page','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2025-03-15 18:15:22','2025-03-15 18:15:22','','BPH Human Resource','','inherit','closed','closed','','68-revision-v1','','','2025-03-15 18:15:22','2025-03-15 18:15:22','',68,'http://rtc.local/?p=69',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2025-03-15 18:22:04','2025-03-15 18:22:04','','BPH Finance','','publish','closed','closed','','bph-finance','','','2025-03-16 08:00:35','2025-03-16 08:00:35','',0,'http://rtc.local/?page_id=70',0,'page','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2025-03-15 18:22:04','2025-03-15 18:22:04','','BPH Finance','','inherit','closed','closed','','70-revision-v1','','','2025-03-15 18:22:04','2025-03-15 18:22:04','',70,'http://rtc.local/?p=71',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2025-03-20 14:10:40','2025-03-20 14:10:40','','PR1','','inherit','open','closed','','pr1','','','2025-03-20 14:10:40','2025-03-20 14:10:40','',0,'http://rtc.local/wp-content/uploads/2025/03/PR1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (75,1,'2025-03-20 15:37:33','2025-03-20 15:37:33','','CI1','','inherit','open','closed','','ci1','','','2025-03-20 15:37:33','2025-03-20 15:37:33','',0,'http://rtc.local/wp-content/uploads/2025/03/CI1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (76,1,'2025-03-20 15:39:58','2025-03-20 15:39:58','','SMS1','','inherit','open','closed','','sms1','','','2025-03-20 15:39:58','2025-03-20 15:39:58','',0,'http://rtc.local/wp-content/uploads/2025/03/SMS1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (77,1,'2025-03-20 15:41:07','2025-03-20 15:41:07','','GD1','','inherit','open','closed','','gd1','','','2025-03-20 15:41:07','2025-03-20 15:41:07','',0,'http://rtc.local/wp-content/uploads/2025/03/GD1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (78,1,'2025-03-20 15:48:30','2025-03-20 15:48:30','','NR1','','inherit','open','closed','','nr1','','','2025-03-20 15:48:30','2025-03-20 15:48:30','',0,'http://rtc.local/wp-content/uploads/2025/03/NR1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (79,1,'2025-03-20 16:05:49','2025-03-20 16:05:49','','EO1','','inherit','open','closed','','eo1','','','2025-03-20 16:05:49','2025-03-20 16:05:49','',0,'http://rtc.local/wp-content/uploads/2025/03/EO1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (80,1,'2025-03-20 17:59:37','2025-03-20 17:59:37','','CP1','','inherit','open','closed','','cp1','','','2025-03-20 17:59:37','2025-03-20 17:59:37','',0,'http://rtc.local/wp-content/uploads/2025/03/CP1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (81,1,'2025-03-20 18:07:57','2025-03-20 18:07:57','','TRD1','','inherit','open','closed','','trd1','','','2025-03-20 18:07:57','2025-03-20 18:07:57','',0,'http://rtc.local/wp-content/uploads/2025/03/TRD1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (83,1,'2025-03-20 18:09:47','2025-03-20 18:09:47','','NON1','','inherit','open','closed','','non1','','','2025-03-20 18:09:47','2025-03-20 18:09:47','',0,'http://rtc.local/wp-content/uploads/2025/03/NON1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (84,1,'2025-03-20 18:10:53','2025-03-20 18:10:53','','PRO1','','inherit','open','closed','','pro1','','','2025-03-20 18:10:53','2025-03-20 18:10:53','',0,'http://rtc.local/wp-content/uploads/2025/03/PRO1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (86,1,'2025-03-20 18:11:50','2025-03-20 18:11:50','','ATF1','','inherit','open','closed','','atf1','','','2025-03-20 18:11:50','2025-03-20 18:11:50','',0,'http://rtc.local/wp-content/uploads/2025/03/ATF1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (87,1,'2025-03-20 18:12:38','2025-03-20 18:12:38','','MD1','','inherit','open','closed','','md1','','','2025-03-20 18:12:38','2025-03-20 18:12:38','',0,'http://rtc.local/wp-content/uploads/2025/03/MD1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (88,1,'2025-03-20 19:16:11','2025-03-20 19:16:11','','CI2 (2)','','inherit','open','closed','','ci2-2','','','2025-03-20 19:16:11','2025-03-20 19:16:11','',0,'http://rtc.local/wp-content/uploads/2025/03/CI2-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (89,1,'2025-03-20 19:16:16','2025-03-20 19:16:16','','CI2','','inherit','open','closed','','ci2','','','2025-03-20 19:16:16','2025-03-20 19:16:16','',0,'http://rtc.local/wp-content/uploads/2025/03/CI2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (90,1,'2025-03-20 19:16:21','2025-03-20 19:16:21','','CI3','','inherit','open','closed','','ci3','','','2025-03-20 19:16:21','2025-03-20 19:16:21','',0,'http://rtc.local/wp-content/uploads/2025/03/CI3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (91,1,'2025-03-21 07:14:57','2025-03-21 07:14:57','','PR2','','inherit','open','closed','','pr2','','','2025-03-21 07:14:57','2025-03-21 07:14:57','',0,'http://rtc.local/wp-content/uploads/2025/03/PR2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (92,1,'2025-03-21 07:14:59','2025-03-21 07:14:59','','PR3 (2)','','inherit','open','closed','','pr3-2','','','2025-03-21 07:14:59','2025-03-21 07:14:59','',0,'http://rtc.local/wp-content/uploads/2025/03/PR3-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (93,1,'2025-03-21 07:15:04','2025-03-21 07:15:04','','PR3','','inherit','open','closed','','pr3','','','2025-03-21 07:15:04','2025-03-21 07:15:04','',0,'http://rtc.local/wp-content/uploads/2025/03/PR3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (94,1,'2025-03-21 07:20:15','2025-03-21 07:20:15','','SMS2','','inherit','open','closed','','sms2','','','2025-03-21 07:20:15','2025-03-21 07:20:15','',0,'http://rtc.local/wp-content/uploads/2025/03/SMS2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (95,1,'2025-03-21 07:20:17','2025-03-21 07:20:17','','SMS3','','inherit','open','closed','','sms3','','','2025-03-21 07:20:17','2025-03-21 07:20:17','',0,'http://rtc.local/wp-content/uploads/2025/03/SMS3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (96,1,'2025-03-21 07:20:19','2025-03-21 07:20:19','','SMS4 (2)','','inherit','open','closed','','sms4-2','','','2025-03-21 07:20:19','2025-03-21 07:20:19','',0,'http://rtc.local/wp-content/uploads/2025/03/SMS4-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (97,1,'2025-03-21 07:20:23','2025-03-21 07:20:23','','SMS4','','inherit','open','closed','','sms4','','','2025-03-21 07:20:23','2025-03-21 07:20:23','',0,'http://rtc.local/wp-content/uploads/2025/03/SMS4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (99,1,'2025-04-01 17:02:04','2025-04-01 17:02:04','','Screenshot 2025-02-09 234701','','inherit','open','closed','','screenshot-2025-02-09-234701','','','2025-04-01 17:02:04','2025-04-01 17:02:04','',0,'http://rtc.local/wp-content/uploads/2025/04/Screenshot-2025-02-09-234701.png',0,'attachment','image/png',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_radio_programs`
--

DROP TABLE IF EXISTS `wp_radio_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_radio_programs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_radio_programs`
--

LOCK TABLES `wp_radio_programs` WRITE;
/*!40000 ALTER TABLE `wp_radio_programs` DISABLE KEYS */;
INSERT INTO `wp_radio_programs` VALUES (5,'Whats on World','testing','http://rtc.local/wp-content/uploads/2025/04/Screenshot-2025-02-09-234701.png');
/*!40000 ALTER TABLE `wp_radio_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rtc_bph_leaders`
--

DROP TABLE IF EXISTS `wp_rtc_bph_leaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_rtc_bph_leaders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bph_image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rtc_bph_leaders`
--

LOCK TABLES `wp_rtc_bph_leaders` WRITE;
/*!40000 ALTER TABLE `wp_rtc_bph_leaders` DISABLE KEYS */;
INSERT INTO `wp_rtc_bph_leaders` VALUES (9,'Human Resource Manager','Personalia','http://example.com/uploads/benjamin.jpg');
INSERT INTO `wp_rtc_bph_leaders` VALUES (15,'Marketing Manager','Public Relation','http://rtc.local/wp-content/uploads/2025/03/PR1.png');
INSERT INTO `wp_rtc_bph_leaders` VALUES (16,'Finance Manager','Creative Income','http://rtc.local/wp-content/uploads/2025/03/CI1.png');
INSERT INTO `wp_rtc_bph_leaders` VALUES (17,'Marketing Manager','Social Media Specialist','http://rtc.local/wp-content/uploads/2025/03/SMS1.png');
INSERT INTO `wp_rtc_bph_leaders` VALUES (18,'Marketing Manager','Graphic Design','http://rtc.local/wp-content/uploads/2025/03/GD1.png');
INSERT INTO `wp_rtc_bph_leaders` VALUES (19,'Marketing Manager','News Reporter','http://rtc.local/wp-content/uploads/2025/03/NR1.png');
INSERT INTO `wp_rtc_bph_leaders` VALUES (21,'Creative Manager','Event Organizer','http://rtc.local/wp-content/uploads/2025/03/EO1.png');
INSERT INTO `wp_rtc_bph_leaders` VALUES (22,'Creative Manager','Creative Production','http://rtc.local/wp-content/uploads/2025/03/CP1.png');
INSERT INTO `wp_rtc_bph_leaders` VALUES (23,'Human Resource Manager','TRD','http://rtc.local/wp-content/uploads/2025/03/TRD1.png');
INSERT INTO `wp_rtc_bph_leaders` VALUES (24,'Station Manager','Announcer','http://rtc.local/wp-content/uploads/2025/03/NON1.png');
INSERT INTO `wp_rtc_bph_leaders` VALUES (25,'Station Manager','Producer','http://rtc.local/wp-content/uploads/2025/03/PRO1-1.png');
INSERT INTO `wp_rtc_bph_leaders` VALUES (26,'Station Manager','Audio Tech and Facility','http://rtc.local/wp-content/uploads/2025/03/ATF1.png');
INSERT INTO `wp_rtc_bph_leaders` VALUES (27,'Station Manager','Music Director','http://rtc.local/wp-content/uploads/2025/03/MD1.png');
/*!40000 ALTER TABLE `wp_rtc_bph_leaders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rtc_division_leaders`
--

DROP TABLE IF EXISTS `wp_rtc_division_leaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_rtc_division_leaders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rtc_division_leaders`
--

LOCK TABLES `wp_rtc_division_leaders` WRITE;
/*!40000 ALTER TABLE `wp_rtc_division_leaders` DISABLE KEYS */;
INSERT INTO `wp_rtc_division_leaders` VALUES (1,'General Manager','','http://rtc.local/wp-content/uploads/2025/03/GM.png');
INSERT INTO `wp_rtc_division_leaders` VALUES (3,'General Secretary','Inez','http://rtc.local/wp-content/uploads/2025/03/SEKRE.png');
INSERT INTO `wp_rtc_division_leaders` VALUES (4,'Vice General Manager','Ziza','http://rtc.local/wp-content/uploads/2025/03/VGM.png');
INSERT INTO `wp_rtc_division_leaders` VALUES (5,'Finance Manager','test','http://rtc.local/wp-content/uploads/2025/03/FM.png');
INSERT INTO `wp_rtc_division_leaders` VALUES (6,'Marketing Manager','yessir','http://rtc.local/wp-content/uploads/2025/03/MM.png');
INSERT INTO `wp_rtc_division_leaders` VALUES (7,'Creative Manager','TEST','http://rtc.local/wp-content/uploads/2025/03/CM.png');
INSERT INTO `wp_rtc_division_leaders` VALUES (8,'Human Resource Manager','TEST','http://rtc.local/wp-content/uploads/2025/03/HR.png');
INSERT INTO `wp_rtc_division_leaders` VALUES (9,'Station Manager','YESIIR','http://rtc.local/wp-content/uploads/2025/03/SM.png');
/*!40000 ALTER TABLE `wp_rtc_division_leaders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rtc_staff_images`
--

DROP TABLE IF EXISTS `wp_rtc_staff_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_rtc_staff_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `department` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `staff_image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rtc_staff_images`
--

LOCK TABLES `wp_rtc_staff_images` WRITE;
/*!40000 ALTER TABLE `wp_rtc_staff_images` DISABLE KEYS */;
INSERT INTO `wp_rtc_staff_images` VALUES (3,'Finance Manager','Creative Income','http://rtc.local/wp-content/uploads/2025/03/CI2-2.png');
INSERT INTO `wp_rtc_staff_images` VALUES (4,'Finance Manager','Creative Income','http://rtc.local/wp-content/uploads/2025/03/CI2.png');
INSERT INTO `wp_rtc_staff_images` VALUES (5,'Finance Manager','Creative Income','http://rtc.local/wp-content/uploads/2025/03/CI3.png');
INSERT INTO `wp_rtc_staff_images` VALUES (6,'Marketing Manager','Public Relation','http://rtc.local/wp-content/uploads/2025/03/PR2.png');
INSERT INTO `wp_rtc_staff_images` VALUES (7,'Marketing Manager','Public Relation','http://rtc.local/wp-content/uploads/2025/03/PR3-2.png');
INSERT INTO `wp_rtc_staff_images` VALUES (8,'Marketing Manager','Public Relation','http://rtc.local/wp-content/uploads/2025/03/PR3.png');
INSERT INTO `wp_rtc_staff_images` VALUES (9,'Marketing Manager','Social Media Specialist','http://rtc.local/wp-content/uploads/2025/03/SMS2.png');
INSERT INTO `wp_rtc_staff_images` VALUES (10,'Marketing Manager','Social Media Specialist','http://rtc.local/wp-content/uploads/2025/03/SMS3.png');
/*!40000 ALTER TABLE `wp_rtc_staff_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_spotify_podcasts`
--

DROP TABLE IF EXISTS `wp_spotify_podcasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_spotify_podcasts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `spotify_embed` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_spotify_podcasts`
--

LOCK TABLES `wp_spotify_podcasts` WRITE;
/*!40000 ALTER TABLE `wp_spotify_podcasts` DISABLE KEYS */;
INSERT INTO `wp_spotify_podcasts` VALUES (18,'ssss','<iframe style=\"border-radius:12px\" src=\"https://open.spotify.com/embed/episode/6u2CHj6ddI21nAU8RRTvnM/video?utm_source=generator\" width=\"624\" height=\"351\" frameBorder=\"0\" allowfullscreen=\"\" allow=\"autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture\" loading=\"lazy\"></iframe>');
INSERT INTO `wp_spotify_podcasts` VALUES (19,'dd','<iframe style=\"border-radius:12px\" src=\"https://open.spotify.com/embed/episode/6u2CHj6ddI21nAU8RRTvnM/video?utm_source=generator\" width=\"624\" height=\"351\" frameBorder=\"0\" allowfullscreen=\"\" allow=\"autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture\" loading=\"lazy\"></iframe>');
/*!40000 ALTER TABLE `wp_spotify_podcasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
INSERT INTO `wp_term_relationships` VALUES (12,3,0);
INSERT INTO `wp_term_relationships` VALUES (19,3,0);
INSERT INTO `wp_term_relationships` VALUES (20,3,0);
INSERT INTO `wp_term_relationships` VALUES (30,3,0);
INSERT INTO `wp_term_relationships` VALUES (34,3,0);
INSERT INTO `wp_term_relationships` VALUES (42,5,0);
INSERT INTO `wp_term_relationships` VALUES (43,5,0);
INSERT INTO `wp_term_relationships` VALUES (56,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'series','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,5,'podcast_series_image_settings','');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentyfive','twentytwentyfive',0);
INSERT INTO `wp_terms` VALUES (3,'Menu Name','menu-name',0);
INSERT INTO `wp_terms` VALUES (5,'Radio Telekomunikasi Cipta UI','radio-telekomunikasi-cipta-ui',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','plugin_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','100');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:4:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"editorMode\";s:6:\"visual\";}s:9:\"_modified\";s:24:\"2025-03-16T07:38:41.206Z\";s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}}');
INSERT INTO `wp_usermeta` VALUES (19,1,'session_tokens','a:1:{s:64:\"c7c8ecbe541923cb0b566153587c63242da2e60ff93da6f9f33ee29b6e4ed9a0\";a:4:{s:10:\"expiration\";i:1746374510;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0\";s:5:\"login\";i:1746201710;}}');
INSERT INTO `wp_usermeta` VALUES (20,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','mfold=o&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1742494281');
INSERT INTO `wp_usermeta` VALUES (25,1,'closedpostboxes_articles','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'meta-box-order_articles','a:3:{s:4:\"side\";s:34:\"submitdiv,categorydiv,postimagediv\";s:6:\"normal\";s:30:\"article_link,authordiv,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_articles','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'screen_layout_articles','2');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$wp$2y$10$ZNGRwdQM3wDQTzTkva40NeMAoEFyw3EyeD4XwaPmn1bIgPaJZxEbm','admin','dev-email@wpengine.local','http://rtc.local','2025-01-15 07:54:15','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-16  0:51:40
