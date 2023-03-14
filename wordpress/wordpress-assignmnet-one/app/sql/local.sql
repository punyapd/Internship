-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-03-03 06:17:29','2023-03-03 06:17:29','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=910 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://nunu.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://nunu.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','nunu','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:133:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"tttdf/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"tttdf/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"tttdf/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"tttdf/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"tttdf/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"tttdf/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"tttdf/([^/]+)/embed/?$\";s:37:\"index.php?team=$matches[1]&embed=true\";s:26:\"tttdf/([^/]+)/trackback/?$\";s:31:\"index.php?team=$matches[1]&tb=1\";s:34:\"tttdf/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&paged=$matches[2]\";s:41:\"tttdf/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&cpage=$matches[2]\";s:30:\"tttdf/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?team=$matches[1]&page=$matches[2]\";s:22:\"tttdf/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"tttdf/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"tttdf/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"tttdf/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"tttdf/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"tttdf/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"team/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?team_category=$matches[1]&feed=$matches[2]\";s:40:\"team/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?team_category=$matches[1]&feed=$matches[2]\";s:21:\"team/([^/]+)/embed/?$\";s:46:\"index.php?team_category=$matches[1]&embed=true\";s:33:\"team/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?team_category=$matches[1]&paged=$matches[2]\";s:15:\"team/([^/]+)/?$\";s:35:\"index.php?team_category=$matches[1]\";s:36:\"homepage/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"homepage/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"homepage/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"homepage/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"homepage/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"homepage/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"homepage/([^/]+)/embed/?$\";s:41:\"index.php?homepage=$matches[1]&embed=true\";s:29:\"homepage/([^/]+)/trackback/?$\";s:35:\"index.php?homepage=$matches[1]&tb=1\";s:37:\"homepage/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?homepage=$matches[1]&paged=$matches[2]\";s:44:\"homepage/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?homepage=$matches[1]&cpage=$matches[2]\";s:33:\"homepage/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?homepage=$matches[1]&page=$matches[2]\";s:25:\"homepage/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"homepage/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"homepage/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"homepage/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"homepage/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"homepage/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=113&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','firstwptheme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','firstwptheme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','113','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1693376246','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:7:{i:1678731450;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1678731839;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1678774650;a:2:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1678775039;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1678775042;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1679120250;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key',']:fh0X!tAGiGnSc%X4>tvcPVAxs8kHrszqs]?kJP<?rjW;*d$V/qf{}v}~d*rU@3','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','D3M?2%c8[AirT`{L*o 5D`0d}bl?oxmp%>O*~1^t%k>/QAr+vmL#Cl4=SG|1WvjB','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (126,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1677829320;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (129,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (130,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1678748876;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1678690149;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (136,'auth_key','~8]^1T 8DGAm}<84?m#_NNX^)r._N[j^74fV=+{rWpO{]Fq*w6?`6Ih~wUXa* N|','no');
INSERT INTO `wp_options` VALUES (137,'auth_salt','o0dAp(Sb%>gU05D~-V>WP]FeaP>QEW^L+ra0}.l@Fk _iV]hk9-XuQNSq@In1dMh','no');
INSERT INTO `wp_options` VALUES (138,'logged_in_key','#yy&8_#c#h,X~z.WDYr3Nd!xJYB[V!?Ho^pMg7sR[/ a9YCtXDUKfdIDFHZ-8(I_','no');
INSERT INTO `wp_options` VALUES (139,'logged_in_salt','j&q@}tqsosQLO[R6t,Xur~m2Q&6j).:tSw]/O3T-+!kjzdA4M;@mT {#1?FAbq*k','no');
INSERT INTO `wp_options` VALUES (147,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (160,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (168,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (179,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1678690151;s:7:\"checked\";a:4:{s:12:\"firstwptheme\";s:5:\"1.0.0\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (180,'current_theme','FirstWptheme','yes');
INSERT INTO `wp_options` VALUES (181,'theme_mods_firstwptheme','a:10:{i:0;b:0;s:18:\"nav_menu_locations\";a:8:{s:18:\"HeaderMenuLocation\";i:9;s:10:\"BottomMenu\";i:10;s:11:\"BottomMenu1\";i:10;s:7:\"AboutUs\";i:10;s:8:\"whoWeAre\";i:12;s:7:\"ourTeam\";i:13;s:9:\"Resources\";i:14;s:7:\"Contact\";i:15;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:36;s:16:\"header_textcolor\";s:5:\"blank\";s:11:\"header_logo\";i:35;s:11:\"footer_logo\";i:60;s:16:\"leadspace_images\";i:103;s:16:\"leadspace_image1\";i:104;s:16:\"leadspace_image2\";i:103;}','yes');
INSERT INTO `wp_options` VALUES (182,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (199,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (265,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (282,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (449,'site_logo','36','yes');
INSERT INTO `wp_options` VALUES (467,'recovery_mode_email_last_sent','1678358695','yes');
INSERT INTO `wp_options` VALUES (616,'team_category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (880,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (904,'_site_transient_timeout_theme_roots','1678691950','no');
INSERT INTO `wp_options` VALUES (905,'_site_transient_theme_roots','a:4:{s:12:\"firstwptheme\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (906,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1679294953','no');
INSERT INTO `wp_options` VALUES (907,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (909,'_transient_doing_cron','1678748876.3385300636291503906250','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=567 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (4,2,'_edit_lock','1678028051:1');
INSERT INTO `wp_postmeta` VALUES (5,7,'_edit_lock','1677840262:1');
INSERT INTO `wp_postmeta` VALUES (12,10,'_edit_lock','1677840774:1');
INSERT INTO `wp_postmeta` VALUES (13,14,'_edit_lock','1678028018:1');
INSERT INTO `wp_postmeta` VALUES (14,16,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (15,16,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (16,16,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (17,16,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (18,16,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (19,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (20,16,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (21,16,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (22,16,'_menu_item_orphaned','1678024708');
INSERT INTO `wp_postmeta` VALUES (23,17,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (24,17,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (25,17,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (26,17,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (27,17,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (28,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (29,17,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (30,17,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (31,17,'_menu_item_orphaned','1678024708');
INSERT INTO `wp_postmeta` VALUES (32,18,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (33,18,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (34,18,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (35,18,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (36,18,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (37,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (38,18,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (39,18,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (40,18,'_menu_item_orphaned','1678024708');
INSERT INTO `wp_postmeta` VALUES (41,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (42,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (43,19,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (44,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (45,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (46,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (47,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (48,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (50,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (51,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (52,20,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (53,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (54,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (55,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (56,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (57,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (59,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (60,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (61,21,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (62,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (63,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (64,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (65,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (66,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (68,3,'_edit_lock','1678028267:1');
INSERT INTO `wp_postmeta` VALUES (69,25,'_edit_lock','1678028127:1');
INSERT INTO `wp_postmeta` VALUES (70,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (71,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (72,27,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (73,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (74,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (75,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (76,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (77,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (78,27,'_menu_item_orphaned','1678028290');
INSERT INTO `wp_postmeta` VALUES (79,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (80,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (81,28,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (82,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (83,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (84,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (85,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (86,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (87,28,'_menu_item_orphaned','1678028290');
INSERT INTO `wp_postmeta` VALUES (88,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (89,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (90,29,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (91,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (92,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (93,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (94,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (95,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (96,29,'_menu_item_orphaned','1678028290');
INSERT INTO `wp_postmeta` VALUES (97,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (98,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (99,30,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (100,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (101,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (102,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (103,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (104,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (105,30,'_menu_item_orphaned','1678028291');
INSERT INTO `wp_postmeta` VALUES (106,3,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (107,3,'_wp_trash_meta_time','1678028412');
INSERT INTO `wp_postmeta` VALUES (108,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (109,31,'_edit_lock','1678028285:1');
INSERT INTO `wp_postmeta` VALUES (110,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (111,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (112,33,'_menu_item_object_id','31');
INSERT INTO `wp_postmeta` VALUES (113,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (114,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (115,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (116,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (117,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (119,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (120,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (121,34,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (122,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (123,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (124,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (125,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (126,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (128,35,'_wp_attached_file','2023/03/logo.png');
INSERT INTO `wp_postmeta` VALUES (129,35,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:544;s:6:\"height\";i:248;s:4:\"file\";s:16:\"2023/03/logo.png\";s:8:\"filesize\";i:12359;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"logo-300x137.png\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10073;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5287;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (130,36,'_wp_attached_file','2023/03/cropped-logo.png');
INSERT INTO `wp_postmeta` VALUES (131,36,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (132,36,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:544;s:6:\"height\";i:248;s:4:\"file\";s:24:\"2023/03/cropped-logo.png\";s:8:\"filesize\";i:12595;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"cropped-logo-300x137.png\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10073;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5287;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (133,37,'_edit_lock','1678103973:1');
INSERT INTO `wp_postmeta` VALUES (134,37,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (135,37,'_wp_trash_meta_time','1678103976');
INSERT INTO `wp_postmeta` VALUES (136,38,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (137,38,'_wp_trash_meta_time','1678103994');
INSERT INTO `wp_postmeta` VALUES (138,20,'_wp_old_date','2023-03-05');
INSERT INTO `wp_postmeta` VALUES (139,19,'_wp_old_date','2023-03-05');
INSERT INTO `wp_postmeta` VALUES (140,21,'_wp_old_date','2023-03-05');
INSERT INTO `wp_postmeta` VALUES (141,33,'_wp_old_date','2023-03-05');
INSERT INTO `wp_postmeta` VALUES (142,34,'_wp_old_date','2023-03-05');
INSERT INTO `wp_postmeta` VALUES (188,44,'_edit_lock','1678107770:1');
INSERT INTO `wp_postmeta` VALUES (189,44,'_customize_restore_dismissed','1');
INSERT INTO `wp_postmeta` VALUES (190,45,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (191,45,'_wp_trash_meta_time','1678107836');
INSERT INTO `wp_postmeta` VALUES (192,46,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (193,46,'_wp_trash_meta_time','1678107852');
INSERT INTO `wp_postmeta` VALUES (239,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (240,52,'_edit_lock','1678170300:1');
INSERT INTO `wp_postmeta` VALUES (243,54,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (244,54,'_wp_trash_meta_time','1678172815');
INSERT INTO `wp_postmeta` VALUES (245,55,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (246,55,'_wp_trash_meta_time','1678172845');
INSERT INTO `wp_postmeta` VALUES (247,56,'_edit_lock','1678174616:1');
INSERT INTO `wp_postmeta` VALUES (248,56,'_customize_restore_dismissed','1');
INSERT INTO `wp_postmeta` VALUES (249,57,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (250,57,'_wp_trash_meta_time','1678174839');
INSERT INTO `wp_postmeta` VALUES (251,58,'_edit_lock','1678175869:1');
INSERT INTO `wp_postmeta` VALUES (252,58,'_customize_restore_dismissed','1');
INSERT INTO `wp_postmeta` VALUES (253,59,'_edit_lock','1678176085:1');
INSERT INTO `wp_postmeta` VALUES (254,60,'_wp_attached_file','2023/03/logo-lt-1.png');
INSERT INTO `wp_postmeta` VALUES (255,60,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:547;s:6:\"height\";i:248;s:4:\"file\";s:21:\"2023/03/logo-lt-1.png\";s:8:\"filesize\";i:12834;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"logo-lt-1-300x136.png\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10991;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"logo-lt-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5807;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (256,59,'_customize_restore_dismissed','1');
INSERT INTO `wp_postmeta` VALUES (257,61,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (258,61,'_wp_trash_meta_time','1678180637');
INSERT INTO `wp_postmeta` VALUES (259,62,'_edit_lock','1678181332:1');
INSERT INTO `wp_postmeta` VALUES (261,63,'_customize_changeset_uuid','936a3734-25ff-4c6c-9424-262758ae4457');
INSERT INTO `wp_postmeta` VALUES (270,66,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (271,66,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (272,66,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (273,66,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (274,66,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (275,66,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (276,66,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (277,66,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (278,67,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (279,67,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (280,67,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (281,67,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (282,67,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (283,67,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (284,67,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (285,67,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (286,62,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (287,62,'_wp_trash_meta_time','1678181333');
INSERT INTO `wp_postmeta` VALUES (288,71,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (289,71,'_edit_lock','1678201815:1');
INSERT INTO `wp_postmeta` VALUES (290,71,'team_position','boss');
INSERT INTO `wp_postmeta` VALUES (291,71,'team_name','the boss');
INSERT INTO `wp_postmeta` VALUES (292,72,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (293,72,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (294,72,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (295,72,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (296,72,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (297,72,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (298,72,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (299,72,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (301,74,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (302,74,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (303,74,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (304,74,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (305,74,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (306,74,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (307,74,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (308,74,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (309,73,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (310,73,'_wp_trash_meta_time','1678204419');
INSERT INTO `wp_postmeta` VALUES (311,76,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (312,76,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (313,76,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (314,76,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (315,76,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (316,76,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (317,76,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (318,76,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (319,75,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (320,75,'_wp_trash_meta_time','1678204437');
INSERT INTO `wp_postmeta` VALUES (321,77,'_edit_lock','1678204492:1');
INSERT INTO `wp_postmeta` VALUES (323,78,'_customize_changeset_uuid','cb116390-e721-439e-b1aa-4e299eb0798c');
INSERT INTO `wp_postmeta` VALUES (324,79,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (325,79,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (326,79,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (327,79,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (328,79,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (329,79,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (330,79,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (331,79,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (332,81,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (333,81,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (334,81,'_menu_item_object_id','78');
INSERT INTO `wp_postmeta` VALUES (335,81,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (336,81,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (337,81,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (338,81,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (339,81,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (340,77,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (341,77,'_wp_trash_meta_time','1678204522');
INSERT INTO `wp_postmeta` VALUES (342,83,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (343,83,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (344,83,'_menu_item_object_id','78');
INSERT INTO `wp_postmeta` VALUES (345,83,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (346,83,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (347,83,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (348,83,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (349,83,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (350,82,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (351,82,'_wp_trash_meta_time','1678204546');
INSERT INTO `wp_postmeta` VALUES (352,85,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (353,85,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (354,85,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (355,85,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (356,85,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (357,85,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (358,85,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (359,85,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (360,84,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (361,84,'_wp_trash_meta_time','1678204553');
INSERT INTO `wp_postmeta` VALUES (362,87,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (363,87,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (364,87,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (365,87,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (366,87,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (367,87,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (368,87,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (369,87,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (370,86,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (371,86,'_wp_trash_meta_time','1678204560');
INSERT INTO `wp_postmeta` VALUES (372,89,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (373,89,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (374,89,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (375,89,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (376,89,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (377,89,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (378,89,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (379,89,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (380,88,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (381,88,'_wp_trash_meta_time','1678204579');
INSERT INTO `wp_postmeta` VALUES (382,90,'_edit_lock','1678204582:1');
INSERT INTO `wp_postmeta` VALUES (383,91,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (384,91,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (385,91,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (386,91,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (387,91,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (388,91,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (389,91,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (390,91,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (391,90,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (392,90,'_wp_trash_meta_time','1678204583');
INSERT INTO `wp_postmeta` VALUES (393,93,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (394,93,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (395,93,'_menu_item_object_id','78');
INSERT INTO `wp_postmeta` VALUES (396,93,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (397,93,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (398,93,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (399,93,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (400,93,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (401,92,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (402,92,'_wp_trash_meta_time','1678204588');
INSERT INTO `wp_postmeta` VALUES (403,95,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (404,95,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (405,95,'_menu_item_object_id','78');
INSERT INTO `wp_postmeta` VALUES (406,95,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (407,95,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (408,95,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (409,95,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (410,95,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (411,96,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (412,96,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (413,96,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (414,96,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (415,96,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (416,96,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (417,96,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (418,96,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (419,94,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (420,94,'_wp_trash_meta_time','1678204604');
INSERT INTO `wp_postmeta` VALUES (421,98,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (422,98,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (423,98,'_menu_item_object_id','78');
INSERT INTO `wp_postmeta` VALUES (424,98,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (425,98,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (426,98,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (427,98,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (428,98,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (429,99,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (430,99,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (431,99,'_menu_item_object_id','63');
INSERT INTO `wp_postmeta` VALUES (432,99,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (433,99,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (434,99,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (435,99,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (436,99,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (437,97,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (438,97,'_wp_trash_meta_time','1678204628');
INSERT INTO `wp_postmeta` VALUES (439,100,'_edit_lock','1678204642:1');
INSERT INTO `wp_postmeta` VALUES (440,101,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (441,101,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (442,101,'_menu_item_object_id','78');
INSERT INTO `wp_postmeta` VALUES (443,101,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (444,101,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (445,101,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (446,101,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (447,101,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (448,100,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (449,100,'_wp_trash_meta_time','1678204643');
INSERT INTO `wp_postmeta` VALUES (450,102,'_wp_attached_file','2023/03/article1.png');
INSERT INTO `wp_postmeta` VALUES (451,102,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2023/03/article1.png\";s:8:\"filesize\";i:906538;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"article1-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:145277;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"article1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51108;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"article1-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:788455;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (452,103,'_wp_attached_file','2023/03/leadspace-ocean.jpeg');
INSERT INTO `wp_postmeta` VALUES (453,103,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1059;s:6:\"height\";i:1412;s:4:\"file\";s:28:\"2023/03/leadspace-ocean.jpeg\";s:8:\"filesize\";i:474204;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"leadspace-ocean-225x300.jpeg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17472;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"leadspace-ocean-768x1024.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:178719;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"leadspace-ocean-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6693;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"leadspace-ocean-768x1024.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:178719;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:15:\"Kees Streefkerk\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:39:\"https://unsplash.com/photos/Adl90-aXYwA\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:39:\"https://unsplash.com/photos/Adl90-aXYwA\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (454,104,'_wp_attached_file','2023/03/leadspace-sunset.jpeg');
INSERT INTO `wp_postmeta` VALUES (455,104,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:711;s:6:\"height\";i:1067;s:4:\"file\";s:29:\"2023/03/leadspace-sunset.jpeg\";s:8:\"filesize\";i:36095;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"leadspace-sunset-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4238;}s:5:\"large\";a:5:{s:4:\"file\";s:30:\"leadspace-sunset-682x1024.jpeg\";s:5:\"width\";i:682;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27089;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"leadspace-sunset-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2567;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Ivana Cajina\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:39:\"https://unsplash.com/photos/HDd-NQ_AMNQ\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:39:\"https://unsplash.com/photos/HDd-NQ_AMNQ\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (456,105,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (457,105,'_wp_trash_meta_time','1678243185');
INSERT INTO `wp_postmeta` VALUES (458,108,'_edit_lock','1678266899:1');
INSERT INTO `wp_postmeta` VALUES (459,108,'_customize_restore_dismissed','1');
INSERT INTO `wp_postmeta` VALUES (460,109,'_edit_lock','1678267024:1');
INSERT INTO `wp_postmeta` VALUES (461,109,'_customize_restore_dismissed','1');
INSERT INTO `wp_postmeta` VALUES (463,110,'_customize_restore_dismissed','1');
INSERT INTO `wp_postmeta` VALUES (464,112,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (465,112,'_wp_trash_meta_time','1678267645');
INSERT INTO `wp_postmeta` VALUES (466,113,'_edit_lock','1678425924:1');
INSERT INTO `wp_postmeta` VALUES (467,113,'_wp_page_template','templatePart/home-template.php');
INSERT INTO `wp_postmeta` VALUES (468,113,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (469,113,'home_position','PD don');
INSERT INTO `wp_postmeta` VALUES (470,113,'teampd_position','hello');
INSERT INTO `wp_postmeta` VALUES (471,113,'post_position','my position');
INSERT INTO `wp_postmeta` VALUES (472,113,'post_title','about us');
INSERT INTO `wp_postmeta` VALUES (473,113,'post_description','Integer at neque ac metus fringilla dapibus et eu eros. Vivamus vitae finibus dolor. Suspendisse finibus ante in sapien fermentum, quis condimentum turpis consequat.');
INSERT INTO `wp_postmeta` VALUES (474,113,'post_image','http://nunu.local/wp-content/uploads/2023/03/Video.png');
INSERT INTO `wp_postmeta` VALUES (475,113,'about_title','about us');
INSERT INTO `wp_postmeta` VALUES (476,113,'about_description','Integer at neque ac metus fringilla dapibus et eu eros. Vivamus vitae finibus dolor. Suspendisse finibus ante in sapien fermentum, quis condimentum turpis consequat.');
INSERT INTO `wp_postmeta` VALUES (477,113,'about_image','http://nunu.local/wp-content/uploads/2023/03/Video.png');
INSERT INTO `wp_postmeta` VALUES (478,115,'_wp_attached_file','2023/03/article1-1.png');
INSERT INTO `wp_postmeta` VALUES (479,115,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2023/03/article1-1.png\";s:8:\"filesize\";i:906538;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"article1-1-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:145277;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"article1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51108;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"article1-1-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:788455;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (480,116,'_wp_attached_file','2023/03/avatar.png');
INSERT INTO `wp_postmeta` VALUES (481,116,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:306;s:6:\"height\";i:307;s:4:\"file\";s:18:\"2023/03/avatar.png\";s:8:\"filesize\";i:86952;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"avatar-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:82702;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"avatar-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:27555;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (482,117,'_wp_attached_file','2023/03/beatuiful_home.png');
INSERT INTO `wp_postmeta` VALUES (483,117,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:752;s:6:\"height\";i:752;s:4:\"file\";s:26:\"2023/03/beatuiful_home.png\";s:8:\"filesize\";i:673972;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"beatuiful_home-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:151595;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"beatuiful_home-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44287;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (484,118,'_wp_attached_file','2023/03/boat.png');
INSERT INTO `wp_postmeta` VALUES (485,118,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1020;s:6:\"height\";i:576;s:4:\"file\";s:16:\"2023/03/boat.png\";s:8:\"filesize\";i:796229;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"boat-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:88996;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"boat-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:41329;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"boat-768x434.png\";s:5:\"width\";i:768;s:6:\"height\";i:434;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:465397;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (486,119,'_wp_attached_file','2023/03/girl.png');
INSERT INTO `wp_postmeta` VALUES (487,119,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1128;s:6:\"height\";i:992;s:4:\"file\";s:16:\"2023/03/girl.png\";s:8:\"filesize\";i:690530;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"girl-300x264.png\";s:5:\"width\";i:300;s:6:\"height\";i:264;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:78888;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"girl-1024x901.png\";s:5:\"width\";i:1024;s:6:\"height\";i:901;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:578581;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"girl-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29179;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"girl-768x675.png\";s:5:\"width\";i:768;s:6:\"height\";i:675;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:369806;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (488,120,'_wp_attached_file','2023/03/play.png');
INSERT INTO `wp_postmeta` VALUES (489,120,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:68;s:6:\"height\";i:68;s:4:\"file\";s:16:\"2023/03/play.png\";s:8:\"filesize\";i:1096;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (490,121,'_wp_attached_file','2023/03/slideimage.png');
INSERT INTO `wp_postmeta` VALUES (491,121,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1128;s:6:\"height\";i:992;s:4:\"file\";s:22:\"2023/03/slideimage.png\";s:8:\"filesize\";i:690530;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"slideimage-300x264.png\";s:5:\"width\";i:300;s:6:\"height\";i:264;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:78888;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"slideimage-1024x901.png\";s:5:\"width\";i:1024;s:6:\"height\";i:901;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:578581;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"slideimage-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29179;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"slideimage-768x675.png\";s:5:\"width\";i:768;s:6:\"height\";i:675;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:369806;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (492,122,'_wp_attached_file','2023/03/video.mp4');
INSERT INTO `wp_postmeta` VALUES (493,122,'_wp_attachment_metadata','a:10:{s:8:\"filesize\";i:65466608;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:314;s:16:\"length_formatted\";s:4:\"5:14\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1647452377;}');
INSERT INTO `wp_postmeta` VALUES (494,123,'_wp_attached_file','2023/03/Video.png');
INSERT INTO `wp_postmeta` VALUES (495,123,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:924;s:6:\"height\";i:552;s:4:\"file\";s:17:\"2023/03/Video.png\";s:8:\"filesize\";i:906599;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"Video-300x179.png\";s:5:\"width\";i:300;s:6:\"height\";i:179;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:117693;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"Video-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49371;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"Video-768x459.png\";s:5:\"width\";i:768;s:6:\"height\";i:459;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:640388;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (496,113,'about_video','http://nunu.local/wp-content/uploads/2023/03/video.mp4');
INSERT INTO `wp_postmeta` VALUES (497,113,'team_title','Sally Albana - Site Engineer');
INSERT INTO `wp_postmeta` VALUES (498,113,'team_description','“It is not so much for its beauty that the forest makes a claim upon mens hearts, as for that subtle something, that quality of air that emanation from old trees, that so wonderfully changes and renews a weary spirit.”');
INSERT INTO `wp_postmeta` VALUES (499,113,'team_image','http://nunu.local/wp-content/uploads/2023/03/slideimage.png');
INSERT INTO `wp_postmeta` VALUES (500,113,'article_title','Proin pretium risus suscipit viverra mattis. Aliquam non nunc ligula.');
INSERT INTO `wp_postmeta` VALUES (501,113,'article_description','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable world.');
INSERT INTO `wp_postmeta` VALUES (502,113,'article_image','http://nunu.local/wp-content/uploads/2023/03/girl.png');
INSERT INTO `wp_postmeta` VALUES (503,113,'article_date','2023-03-15');
INSERT INTO `wp_postmeta` VALUES (504,113,'seeblog_title','hello');
INSERT INTO `wp_postmeta` VALUES (505,113,'seeblog_description','dkfadkfjadskjfd');
INSERT INTO `wp_postmeta` VALUES (506,113,'testimonials_title','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut porta diam.');
INSERT INTO `wp_postmeta` VALUES (507,113,'testimonials_person','Rani Campbell');
INSERT INTO `wp_postmeta` VALUES (508,113,'testimonials_person_role','CEO OF PEO');
INSERT INTO `wp_postmeta` VALUES (509,113,'testimonials_description','“There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.”');
INSERT INTO `wp_postmeta` VALUES (510,113,'testimonials_image','http://nunu.local/wp-content/uploads/2023/03/slideimage.png');
INSERT INTO `wp_postmeta` VALUES (511,7,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (512,7,'_wp_trash_meta_time','1678430713');
INSERT INTO `wp_postmeta` VALUES (513,7,'_wp_desired_post_slug','who-is-goat');
INSERT INTO `wp_postmeta` VALUES (514,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (515,1,'_wp_trash_meta_time','1678430716');
INSERT INTO `wp_postmeta` VALUES (516,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (517,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (518,125,'_edit_lock','1678430611:1');
INSERT INTO `wp_postmeta` VALUES (519,126,'_edit_lock','1678433198:1');
INSERT INTO `wp_postmeta` VALUES (520,127,'_wp_attached_file','2023/03/article1-2.png');
INSERT INTO `wp_postmeta` VALUES (521,127,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2023/03/article1-2.png\";s:8:\"filesize\";i:906538;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"article1-2-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:145277;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"article1-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51108;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"article1-2-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:788455;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (530,126,'_thumbnail_id','102');
INSERT INTO `wp_postmeta` VALUES (531,129,'_edit_lock','1678438190:1');
INSERT INTO `wp_postmeta` VALUES (534,131,'_wp_attached_file','2023/03/article2.png');
INSERT INTO `wp_postmeta` VALUES (535,131,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2023/03/article2.png\";s:8:\"filesize\";i:712157;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"article2-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:116230;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"article2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47166;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"article2-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:599098;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (536,132,'_wp_attached_file','2023/03/article3.png');
INSERT INTO `wp_postmeta` VALUES (537,132,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2023/03/article3.png\";s:8:\"filesize\";i:623833;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"article3-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:106887;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"article3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37988;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"article3-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:534860;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (538,133,'_wp_attached_file','2023/03/article4.png');
INSERT INTO `wp_postmeta` VALUES (539,133,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2023/03/article4.png\";s:8:\"filesize\";i:455517;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"article4-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:88731;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"article4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33960;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"article4-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:410293;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (540,134,'_wp_attached_file','2023/03/article5.png');
INSERT INTO `wp_postmeta` VALUES (541,134,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2023/03/article5.png\";s:8:\"filesize\";i:560734;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"article5-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:102590;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"article5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39411;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"article5-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:500335;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (542,135,'_wp_attached_file','2023/03/article6.png');
INSERT INTO `wp_postmeta` VALUES (543,135,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2023/03/article6.png\";s:8:\"filesize\";i:379270;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"article6-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:66728;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"article6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:31866;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"article6-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:335517;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (544,136,'_wp_attached_file','2023/03/boyschilling.png');
INSERT INTO `wp_postmeta` VALUES (545,136,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1256;s:6:\"height\";i:946;s:4:\"file\";s:24:\"2023/03/boyschilling.png\";s:8:\"filesize\";i:1925046;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"boyschilling-300x226.png\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:155286;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"boyschilling-1024x771.png\";s:5:\"width\";i:1024;s:6:\"height\";i:771;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1343607;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"boyschilling-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54211;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"boyschilling-768x578.png\";s:5:\"width\";i:768;s:6:\"height\";i:578;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:837251;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (546,137,'_wp_attached_file','2023/03/chill.jpg');
INSERT INTO `wp_postmeta` VALUES (547,137,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:826;s:6:\"height\";i:1239;s:4:\"file\";s:17:\"2023/03/chill.jpg\";s:8:\"filesize\";i:305460;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"chill-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19017;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"chill-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:159259;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"chill-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8717;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"chill-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:191724;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:21:\"Boxed Water Is Better\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:39:\"https://unsplash.com/photos/0boeA7NBluU\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:39:\"https://unsplash.com/photos/0boeA7NBluU\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (550,129,'_thumbnail_id','133');
INSERT INTO `wp_postmeta` VALUES (551,138,'_edit_lock','1678438256:1');
INSERT INTO `wp_postmeta` VALUES (554,138,'_thumbnail_id','131');
INSERT INTO `wp_postmeta` VALUES (555,140,'_edit_lock','1678438305:1');
INSERT INTO `wp_postmeta` VALUES (558,140,'_thumbnail_id','134');
INSERT INTO `wp_postmeta` VALUES (559,142,'_edit_lock','1678438353:1');
INSERT INTO `wp_postmeta` VALUES (562,142,'_thumbnail_id','127');
INSERT INTO `wp_postmeta` VALUES (563,144,'_edit_lock','1678438378:1');
INSERT INTO `wp_postmeta` VALUES (566,144,'_thumbnail_id','135');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-03-03 06:17:29','2023-03-03 06:17:29','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2023-03-10 06:45:16','2023-03-10 06:45:16','',0,'http://nunu.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-03-03 06:17:29','2023-03-03 06:17:29','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://nunu.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Team','','publish','closed','open','','sample-page','','','2023-03-05 14:56:23','2023-03-05 14:56:23','',0,'http://nunu.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-03-03 06:17:29','2023-03-03 06:17:29','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://nunu.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Career','','trash','closed','open','','privacy-policy__trashed','','','2023-03-05 15:00:12','2023-03-05 15:00:12','',0,'http://nunu.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-03-03 06:25:57','2023-03-03 06:25:57','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentythree','','','2023-03-03 06:25:57','2023-03-03 06:25:57','',0,'http://nunu.local/wp-global-styles-twentytwentythree/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-03-03 08:04:38','2023-03-03 08:04:38','<!-- wp:paragraph -->\n<p>messi is goat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Who is GOAT','','trash','open','open','','who-is-goat__trashed','','','2023-03-10 06:45:13','2023-03-10 06:45:13','',0,'http://nunu.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-03-03 06:39:03','2023-03-03 06:39:03','<!-- wp:paragraph -->\n<p>messi is goat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Who is GOAT','','inherit','closed','closed','','7-revision-v1','','','2023-03-03 06:39:03','2023-03-03 06:39:03','',7,'http://nunu.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-03-03 10:45:45','2023-03-03 10:45:45','','about','','publish','closed','closed','','about','','','2023-03-03 10:45:45','2023-03-03 10:45:45','',0,'http://nunu.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-03-03 10:45:45','2023-03-03 10:45:45','','about','','inherit','closed','closed','','10-revision-v1','','','2023-03-03 10:45:45','2023-03-03 10:45:45','',10,'http://nunu.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-03-03 10:47:39','2023-03-03 10:47:39','<!-- wp:navigation-link {\"label\":\"Sample Page\",\"type\":\"page\",\"id\":2,\"url\":\"http://nunu.local/sample-page/\",\"kind\":\"post-type\"} /-->\n\n<!-- wp:navigation-link {\"label\":\"about\",\"type\":\"page\",\"id\":10,\"url\":\"http://nunu.local/about/\",\"kind\":\"post-type\"} /-->','Navigation','','publish','closed','closed','','navigation','','','2023-03-03 10:47:39','2023-03-03 10:47:39','',0,'http://nunu.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-03-03 10:51:07','2023-03-03 10:51:07','<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:navigation {\"ref\":12,\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->','about','','inherit','closed','closed','','10-autosave-v1','','','2023-03-03 10:51:07','2023-03-03 10:51:07','',10,'http://nunu.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-03-03 10:56:58','2023-03-03 10:56:58','','Blog','','publish','closed','closed','','home','','','2023-03-05 14:55:44','2023-03-05 14:55:44','',0,'http://nunu.local/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-03-03 10:56:58','2023-03-03 10:56:58','','Home','','inherit','closed','closed','','14-revision-v1','','','2023-03-03 10:56:58','2023-03-03 10:56:58','',14,'http://nunu.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-03-05 13:58:27','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-03-05 13:58:27','0000-00-00 00:00:00','',0,'http://nunu.local/?p=16',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-03-05 13:58:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-03-05 13:58:28','0000-00-00 00:00:00','',0,'http://nunu.local/?p=17',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-03-05 13:58:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-03-05 13:58:28','0000-00-00 00:00:00','',0,'http://nunu.local/?p=18',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-03-06 13:46:08','2023-03-05 14:05:31',' ','','','publish','closed','closed','','19','','','2023-03-06 13:46:08','2023-03-06 13:46:08','',0,'http://nunu.local/?p=19',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-03-06 13:46:08','2023-03-05 14:05:31',' ','','','publish','closed','closed','','20','','','2023-03-06 13:46:08','2023-03-06 13:46:08','',0,'http://nunu.local/?p=20',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-03-06 13:46:08','2023-03-05 14:05:31',' ','','','publish','closed','closed','','21','','','2023-03-06 13:46:08','2023-03-06 13:46:08','',0,'http://nunu.local/?p=21',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-03-05 14:55:44','2023-03-05 14:55:44','','Blog','','inherit','closed','closed','','14-revision-v1','','','2023-03-05 14:55:44','2023-03-05 14:55:44','',14,'http://nunu.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2023-03-05 14:56:23','2023-03-05 14:56:23','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://nunu.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Team','','inherit','closed','closed','','2-revision-v1','','','2023-03-05 14:56:23','2023-03-05 14:56:23','',2,'http://nunu.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-03-05 14:56:56','2023-03-05 14:56:56','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://nunu.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Career','','inherit','closed','closed','','3-revision-v1','','','2023-03-05 14:56:56','2023-03-05 14:56:56','',3,'http://nunu.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2023-03-05 14:57:29','2023-03-05 14:57:29','','Contact','','publish','closed','closed','','contact','','','2023-03-05 14:57:29','2023-03-05 14:57:29','',0,'http://nunu.local/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2023-03-05 14:57:29','2023-03-05 14:57:29','','Contact','','inherit','closed','closed','','25-revision-v1','','','2023-03-05 14:57:29','2023-03-05 14:57:29','',25,'http://nunu.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2023-03-05 14:58:10','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-03-05 14:58:10','0000-00-00 00:00:00','',0,'http://nunu.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2023-03-05 14:58:10','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-03-05 14:58:10','0000-00-00 00:00:00','',0,'http://nunu.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2023-03-05 14:58:10','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-03-05 14:58:10','0000-00-00 00:00:00','',0,'http://nunu.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2023-03-05 14:58:10','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-03-05 14:58:10','0000-00-00 00:00:00','',0,'http://nunu.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2023-03-05 15:00:27','2023-03-05 15:00:27','','Career','','publish','closed','closed','','career','','','2023-03-05 15:00:27','2023-03-05 15:00:27','',0,'http://nunu.local/?page_id=31',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-03-05 15:00:27','2023-03-05 15:00:27','','Career','','inherit','closed','closed','','31-revision-v1','','','2023-03-05 15:00:27','2023-03-05 15:00:27','',31,'http://nunu.local/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2023-03-06 13:46:08','2023-03-05 15:01:02',' ','','','publish','closed','closed','','33','','','2023-03-06 13:46:08','2023-03-06 13:46:08','',0,'http://nunu.local/?p=33',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2023-03-06 13:46:08','2023-03-05 15:01:02',' ','','','publish','closed','closed','','34','','','2023-03-06 13:46:08','2023-03-06 13:46:08','',0,'http://nunu.local/?p=34',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2023-03-06 11:57:50','2023-03-06 11:57:50','','logo','','inherit','open','closed','','logo','','','2023-03-06 11:57:50','2023-03-06 11:57:50','',0,'http://nunu.local/wp-content/uploads/2023/03/logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (36,1,'2023-03-06 11:58:33','2023-03-06 11:58:33','http://nunu.local/wp-content/uploads/2023/03/cropped-logo.png','cropped-logo.png','','inherit','open','closed','','cropped-logo-png','','','2023-03-06 11:58:33','2023-03-06 11:58:33','',0,'http://nunu.local/wp-content/uploads/2023/03/cropped-logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (37,1,'2023-03-06 11:59:36','2023-03-06 11:59:36','{\n    \"firstwptheme::custom_logo\": {\n        \"value\": 36,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-06 11:59:33\"\n    }\n}','','','trash','closed','closed','','dd9e9b59-d8ba-406d-93f9-0302c52e6180','','','2023-03-06 11:59:36','2023-03-06 11:59:36','',0,'http://nunu.local/?p=37',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2023-03-06 11:59:54','2023-03-06 11:59:54','{\n    \"firstwptheme::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-06 11:59:54\"\n    }\n}','','','trash','closed','closed','','c6fe1eba-48db-4acb-853e-74b50ab26e2a','','','2023-03-06 11:59:54','2023-03-06 11:59:54','',0,'http://nunu.local/c6fe1eba-48db-4acb-853e-74b50ab26e2a/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2023-03-06 13:02:50','0000-00-00 00:00:00','{\n    \"nav_menu_item[41]\": {\n        \"value\": {\n            \"menu_item_parent\": 39,\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://nunu.local/home/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-06 13:02:50\"\n    },\n    \"nav_menu_item[42]\": {\n        \"value\": {\n            \"menu_item_parent\": 39,\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://nunu.local/about/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"about\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-06 13:02:50\"\n    },\n    \"nav_menu_item[40]\": {\n        \"value\": {\n            \"menu_item_parent\": 42,\n            \"object_id\": 25,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://nunu.local/contact/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-06 13:02:50\"\n    },\n    \"nav_menu_item[43]\": {\n        \"value\": {\n            \"menu_item_parent\": 39,\n            \"object_id\": 2,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://nunu.local/sample-page/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Team\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-06 13:02:50\"\n    }\n}','','','auto-draft','closed','closed','','2859f9d6-c1e9-40d7-8712-f21645aed386','','','2023-03-06 13:02:50','0000-00-00 00:00:00','',0,'http://nunu.local/?p=44',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2023-03-06 13:03:55','2023-03-06 13:03:55','{\n    \"nav_menu_item[43]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-06 13:03:55\"\n    }\n}','','','trash','closed','closed','','f69fe0f1-2066-4852-b7f5-b6b32b88d4c3','','','2023-03-06 13:03:55','2023-03-06 13:03:55','',0,'http://nunu.local/f69fe0f1-2066-4852-b7f5-b6b32b88d4c3/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2023-03-06 13:04:12','2023-03-06 13:04:12','{\n    \"nav_menu_item[40]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-06 13:04:12\"\n    }\n}','','','trash','closed','closed','','18a5bbc0-0c79-4556-94a7-b98369f49267','','','2023-03-06 13:04:12','2023-03-06 13:04:12','',0,'http://nunu.local/18a5bbc0-0c79-4556-94a7-b98369f49267/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2023-03-07 06:17:51','2023-03-07 06:17:51','fdkfjdskk jdfsdfj jkdfjdkfjd','Teamf','','publish','open','closed','','teamf','','','2023-03-07 06:27:10','2023-03-07 06:27:10','',0,'http://nunu.local/?post_type=team&#038;p=52',0,'team','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2023-03-07 06:27:25','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2023-03-07 06:27:25','0000-00-00 00:00:00','',0,'http://nunu.local/?post_type=team&p=53',0,'team','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-03-07 07:06:54','2023-03-07 07:06:54','{\n    \"nav_menu_item[39]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:06:54\"\n    },\n    \"nav_menu_item[41]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:06:54\"\n    },\n    \"nav_menu_item[42]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:06:54\"\n    },\n    \"nav_menu_item[49]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://nunu.local/home/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:06:54\"\n    },\n    \"nav_menu_item[47]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 31,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://nunu.local/career/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Career\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:06:54\"\n    }\n}','','','trash','closed','closed','','44cf6339-58e6-4a3d-bc68-2a9835eff9f7','','','2023-03-07 07:06:54','2023-03-07 07:06:54','',0,'http://nunu.local/44cf6339-58e6-4a3d-bc68-2a9835eff9f7/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2023-03-07 07:07:24','2023-03-07 07:07:24','{\n    \"nav_menu_item[51]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:07:24\"\n    },\n    \"nav_menu_item[50]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:07:24\"\n    },\n    \"nav_menu_item[48]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:07:24\"\n    }\n}','','','trash','closed','closed','','ce6d034e-4429-455f-a729-a2b23db35982','','','2023-03-07 07:07:24','2023-03-07 07:07:24','',0,'http://nunu.local/ce6d034e-4429-455f-a729-a2b23db35982/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2023-03-07 07:27:44','0000-00-00 00:00:00','{\n    \"firstwptheme::header_logo\": {\n        \"value\": 35,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:27:44\"\n    }\n}','','','auto-draft','closed','closed','','97acf8f6-2aed-4fdd-933b-0b346639d96f','','','2023-03-07 07:27:44','0000-00-00 00:00:00','',0,'http://nunu.local/?p=56',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2023-03-07 07:40:39','2023-03-07 07:40:39','{\n    \"firstwptheme::header_logo\": {\n        \"value\": 35,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:40:39\"\n    }\n}','','','trash','closed','closed','','1434bd1e-8e16-4a5a-bff7-d7ce23f02b19','','','2023-03-07 07:40:39','2023-03-07 07:40:39','',0,'http://nunu.local/1434bd1e-8e16-4a5a-bff7-d7ce23f02b19/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2023-03-07 07:54:56','0000-00-00 00:00:00','{\n    \"nav_menu_item[47]\": {\n        \"value\": {\n            \"menu_item_parent\": 49,\n            \"object_id\": 31,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://nunu.local/career/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Career\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:54:56\"\n    }\n}','','','auto-draft','closed','closed','','ad6d3bef-5865-4475-bbe1-27d4c351680a','','','2023-03-07 07:54:56','0000-00-00 00:00:00','',0,'http://nunu.local/?p=58',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2023-03-07 07:59:19','0000-00-00 00:00:00','{\n    \"nav_menu_item[47]\": {\n        \"value\": {\n            \"menu_item_parent\": 49,\n            \"object_id\": 31,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://nunu.local/career/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Career\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:59:19\"\n    },\n    \"nav_menu_item[-7833727411119925000]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 49,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"about\",\n            \"url\": \"http://nunu.local/about/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"about\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 07:59:19\"\n    }\n}','','','auto-draft','closed','closed','','e03fab76-412c-4671-96b1-06ac83fd6225','','','2023-03-07 07:59:19','0000-00-00 00:00:00','',0,'http://nunu.local/?p=59',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2023-03-07 09:17:10','2023-03-07 09:17:10','','logo-lt 1','','inherit','open','closed','','logo-lt-1','','','2023-03-07 09:17:10','2023-03-07 09:17:10','',0,'http://nunu.local/wp-content/uploads/2023/03/logo-lt-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-03-07 09:17:17','2023-03-07 09:17:17','{\n    \"firstwptheme::footer_logo\": {\n        \"value\": 60,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 09:17:17\"\n    }\n}','','','trash','closed','closed','','a8ea6d1a-5b11-4690-be67-f80840cd2707','','','2023-03-07 09:17:17','2023-03-07 09:17:17','',0,'http://nunu.local/a8ea6d1a-5b11-4690-be67-f80840cd2707/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-03-07 09:28:52','2023-03-07 09:28:52','{\n    \"nav_menu_item[47]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 09:26:52\"\n    },\n    \"nav_menu_item[49]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 09:27:52\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            63\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 09:27:52\"\n    },\n    \"nav_menu_item[-3905713465038383000]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About Us\",\n            \"url\": \"http://nunu.local/about/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"about\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 09:28:52\"\n    },\n    \"nav_menu_item[-4618263204313876000]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum\",\n            \"url\": \"http://nunu.local/?page_id=63\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 09:28:52\"\n    },\n    \"nav_menu_item[-8684292854849516000]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum\",\n            \"url\": \"http://nunu.local/?page_id=63\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 09:28:52\"\n    }\n}','','','trash','closed','closed','','936a3734-25ff-4c6c-9424-262758ae4457','','','2023-03-07 09:28:52','2023-03-07 09:28:52','',0,'http://nunu.local/?p=62',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2023-03-07 09:28:53','2023-03-07 09:28:53','','lorem ipsum','','publish','closed','closed','','lorem-ipsum','','','2023-03-07 09:28:53','2023-03-07 09:28:53','',0,'http://nunu.local/?page_id=63',0,'page','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2023-03-07 09:28:53','2023-03-07 09:28:53','','lorem ipsum','','inherit','closed','closed','','63-revision-v1','','','2023-03-07 09:28:53','2023-03-07 09:28:53','',63,'http://nunu.local/?p=64',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2023-03-07 15:15:23','2023-03-07 09:28:53',' ','','','publish','closed','closed','','66','','','2023-03-07 15:15:23','2023-03-07 15:15:23','',0,'http://nunu.local/66/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2023-03-07 15:15:23','2023-03-07 09:28:53',' ','','','publish','closed','closed','','67','','','2023-03-07 15:15:23','2023-03-07 15:15:23','',0,'http://nunu.local/67/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-03-07 10:00:11','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2023-03-07 10:00:11','0000-00-00 00:00:00','',0,'http://nunu.local/?post_type=team&p=68',0,'team','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2023-03-07 10:00:41','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2023-03-07 10:00:41','0000-00-00 00:00:00','',0,'http://nunu.local/?post_type=team&p=69',0,'team','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2023-03-07 10:19:44','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2023-03-07 10:19:44','0000-00-00 00:00:00','',0,'http://nunu.local/?post_type=team&p=70',0,'team','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2023-03-07 10:20:21','2023-03-07 10:20:21','i am adding to db','add to db','','publish','open','closed','','add-to-db','','','2023-03-07 10:20:21','2023-03-07 10:20:21','',0,'http://nunu.local/?post_type=team&#038;p=71',0,'team','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2023-03-07 15:52:46','2023-03-07 15:52:46',' ','','','publish','closed','closed','','72','','','2023-03-07 15:52:46','2023-03-07 15:52:46','',0,'http://nunu.local/?p=72',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2023-03-07 15:53:39','2023-03-07 15:53:39','{\n    \"nav_menu_item[-8136262270624176000]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum\",\n            \"url\": \"http://nunu.local/lorem-ipsum/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum\",\n            \"nav_menu_term_id\": 13,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:53:39\"\n    }\n}','','','trash','closed','closed','','ce15ad47-04da-4434-8dd3-6f9d2e4522f4','','','2023-03-07 15:53:39','2023-03-07 15:53:39','',0,'http://nunu.local/ce15ad47-04da-4434-8dd3-6f9d2e4522f4/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2023-03-07 15:53:39','2023-03-07 15:53:39',' ','','','publish','closed','closed','','74','','','2023-03-07 15:53:39','2023-03-07 15:53:39','',0,'http://nunu.local/74/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2023-03-07 15:53:56','2023-03-07 15:53:56','{\n    \"nav_menu_item[-4028972217282916400]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum\",\n            \"url\": \"http://nunu.local/lorem-ipsum/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum\",\n            \"nav_menu_term_id\": 13,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:53:56\"\n    }\n}','','','trash','closed','closed','','ffd5383f-43e8-49cf-848a-930a7058b9df','','','2023-03-07 15:53:56','2023-03-07 15:53:56','',0,'http://nunu.local/ffd5383f-43e8-49cf-848a-930a7058b9df/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2023-03-07 15:53:56','2023-03-07 15:53:56',' ','','','publish','closed','closed','','76','','','2023-03-07 15:53:56','2023-03-07 15:53:56','',0,'http://nunu.local/76/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2023-03-07 15:55:21','2023-03-07 15:55:21','{\n    \"nav_menu_item[-4878949353003266000]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum\",\n            \"url\": \"http://nunu.local/lorem-ipsum/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum\",\n            \"nav_menu_term_id\": 13,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:54:22\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            78\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:55:21\"\n    },\n    \"nav_menu_item[-4041862462346301400]\": {\n        \"value\": {\n            \"object_id\": 78,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum dolor\",\n            \"url\": \"http://nunu.local/?page_id=78\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum dolor\",\n            \"nav_menu_term_id\": 13,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:55:21\"\n    }\n}','','','trash','closed','closed','','cb116390-e721-439e-b1aa-4e299eb0798c','','','2023-03-07 15:55:21','2023-03-07 15:55:21','',0,'http://nunu.local/?p=77',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2023-03-07 15:55:21','2023-03-07 15:55:21','','lorem ipsum dolor','','publish','closed','closed','','lorem-ipsum-dolor','','','2023-03-07 15:55:21','2023-03-07 15:55:21','',0,'http://nunu.local/?page_id=78',0,'page','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2023-03-07 15:55:21','2023-03-07 15:55:21',' ','','','publish','closed','closed','','79','','','2023-03-07 15:55:21','2023-03-07 15:55:21','',0,'http://nunu.local/79/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2023-03-07 15:55:21','2023-03-07 15:55:21','','lorem ipsum dolor','','inherit','closed','closed','','78-revision-v1','','','2023-03-07 15:55:21','2023-03-07 15:55:21','',78,'http://nunu.local/?p=80',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2023-03-07 15:55:22','2023-03-07 15:55:22',' ','','','publish','closed','closed','','81','','','2023-03-07 15:55:22','2023-03-07 15:55:22','',0,'http://nunu.local/81/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2023-03-07 15:55:46','2023-03-07 15:55:46','{\n    \"nav_menu_item[-685608723481970700]\": {\n        \"value\": {\n            \"object_id\": 78,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum dolor\",\n            \"url\": \"http://nunu.local/?page_id=78\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum dolor\",\n            \"nav_menu_term_id\": 15,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:55:46\"\n    }\n}','','','trash','closed','closed','','a2802fcf-f7a8-4a6b-85e7-4c656f277d79','','','2023-03-07 15:55:46','2023-03-07 15:55:46','',0,'http://nunu.local/a2802fcf-f7a8-4a6b-85e7-4c656f277d79/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2023-03-07 15:55:46','2023-03-07 15:55:46',' ','','','publish','closed','closed','','83','','','2023-03-07 15:55:46','2023-03-07 15:55:46','',0,'http://nunu.local/83/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2023-03-07 15:55:53','2023-03-07 15:55:53','{\n    \"nav_menu_item[-7097303182285449000]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum\",\n            \"url\": \"http://nunu.local/lorem-ipsum/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum\",\n            \"nav_menu_term_id\": 15,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:55:53\"\n    }\n}','','','trash','closed','closed','','aa4dd47b-0970-4256-8998-1c72c5b83d41','','','2023-03-07 15:55:53','2023-03-07 15:55:53','',0,'http://nunu.local/aa4dd47b-0970-4256-8998-1c72c5b83d41/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2023-03-07 15:55:53','2023-03-07 15:55:53',' ','','','publish','closed','closed','','85','','','2023-03-07 15:55:53','2023-03-07 15:55:53','',0,'http://nunu.local/85/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2023-03-07 15:55:59','2023-03-07 15:55:59','{\n    \"nav_menu_item[-2660952773510873000]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum\",\n            \"url\": \"http://nunu.local/lorem-ipsum/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum\",\n            \"nav_menu_term_id\": 15,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:55:59\"\n    }\n}','','','trash','closed','closed','','54fc252b-eb6a-4785-a5e3-80642f44e0b9','','','2023-03-07 15:55:59','2023-03-07 15:55:59','',0,'http://nunu.local/54fc252b-eb6a-4785-a5e3-80642f44e0b9/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2023-03-07 15:55:59','2023-03-07 15:55:59',' ','','','publish','closed','closed','','87','','','2023-03-07 15:55:59','2023-03-07 15:55:59','',0,'http://nunu.local/87/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2023-03-07 15:56:18','2023-03-07 15:56:18','{\n    \"nav_menu_item[-88923875980275710]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum\",\n            \"url\": \"http://nunu.local/lorem-ipsum/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum\",\n            \"nav_menu_term_id\": 14,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:56:18\"\n    }\n}','','','trash','closed','closed','','717cff72-1265-4d8f-896d-991b0659c3da','','','2023-03-07 15:56:18','2023-03-07 15:56:18','',0,'http://nunu.local/717cff72-1265-4d8f-896d-991b0659c3da/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2023-03-07 15:56:19','2023-03-07 15:56:19',' ','','','publish','closed','closed','','89','','','2023-03-07 15:56:19','2023-03-07 15:56:19','',0,'http://nunu.local/89/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2023-03-07 15:56:23','2023-03-07 15:56:23','{\n    \"nav_menu_item[-9018543331245060000]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum\",\n            \"url\": \"http://nunu.local/lorem-ipsum/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum\",\n            \"nav_menu_term_id\": 14,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:56:22\"\n    }\n}','','','trash','closed','closed','','2ec2d729-98f1-41e4-a8c6-ffeb92c66e20','','','2023-03-07 15:56:23','2023-03-07 15:56:23','',0,'http://nunu.local/?p=90',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2023-03-07 15:56:23','2023-03-07 15:56:23',' ','','','publish','closed','closed','','91','','','2023-03-07 15:56:23','2023-03-07 15:56:23','',0,'http://nunu.local/91/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2023-03-07 15:56:28','2023-03-07 15:56:28','{\n    \"nav_menu_item[-5175974651388023000]\": {\n        \"value\": {\n            \"object_id\": 78,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum dolor\",\n            \"url\": \"http://nunu.local/?page_id=78\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum dolor\",\n            \"nav_menu_term_id\": 14,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:56:28\"\n    }\n}','','','trash','closed','closed','','97ec65c9-9c45-4020-acb9-e2c94ffc0ce4','','','2023-03-07 15:56:28','2023-03-07 15:56:28','',0,'http://nunu.local/97ec65c9-9c45-4020-acb9-e2c94ffc0ce4/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2023-03-07 15:56:28','2023-03-07 15:56:28',' ','','','publish','closed','closed','','93','','','2023-03-07 15:56:28','2023-03-07 15:56:28','',0,'http://nunu.local/93/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2023-03-07 15:56:43','2023-03-07 15:56:43','{\n    \"nav_menu_item[-5298504091280454000]\": {\n        \"value\": {\n            \"object_id\": 78,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum dolor\",\n            \"url\": \"http://nunu.local/?page_id=78\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum dolor\",\n            \"nav_menu_term_id\": 12,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:56:43\"\n    },\n    \"nav_menu_item[-2126674426354706400]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum\",\n            \"url\": \"http://nunu.local/lorem-ipsum/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum\",\n            \"nav_menu_term_id\": 12,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:56:43\"\n    }\n}','','','trash','closed','closed','','df945c0f-e34d-471b-bac2-9c50809151e1','','','2023-03-07 15:56:43','2023-03-07 15:56:43','',0,'http://nunu.local/df945c0f-e34d-471b-bac2-9c50809151e1/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2023-03-07 15:56:43','2023-03-07 15:56:43',' ','','','publish','closed','closed','','95','','','2023-03-07 15:56:43','2023-03-07 15:56:43','',0,'http://nunu.local/95/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2023-03-07 15:56:43','2023-03-07 15:56:43',' ','','','publish','closed','closed','','96','','','2023-03-07 15:56:43','2023-03-07 15:56:43','',0,'http://nunu.local/96/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2023-03-07 15:57:07','2023-03-07 15:57:07','{\n    \"nav_menu_item[-865290901342629900]\": {\n        \"value\": {\n            \"object_id\": 78,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum dolor\",\n            \"url\": \"http://nunu.local/?page_id=78\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum dolor\",\n            \"nav_menu_term_id\": 12,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:57:07\"\n    },\n    \"nav_menu_item[-6950016940361019000]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum\",\n            \"url\": \"http://nunu.local/lorem-ipsum/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum\",\n            \"nav_menu_term_id\": 12,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:57:07\"\n    }\n}','','','trash','closed','closed','','880b0950-2b54-45ea-8916-11ca386ac298','','','2023-03-07 15:57:07','2023-03-07 15:57:07','',0,'http://nunu.local/880b0950-2b54-45ea-8916-11ca386ac298/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2023-03-07 15:57:07','2023-03-07 15:57:07',' ','','','publish','closed','closed','','98','','','2023-03-07 15:57:07','2023-03-07 15:57:07','',0,'http://nunu.local/98/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2023-03-07 15:57:07','2023-03-07 15:57:07',' ','','','publish','closed','closed','','99','','','2023-03-07 15:57:07','2023-03-07 15:57:07','',0,'http://nunu.local/99/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2023-03-07 15:57:22','2023-03-07 15:57:22','{\n    \"nav_menu_item[-5731663778522046000]\": {\n        \"value\": {\n            \"object_id\": 78,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"lorem ipsum dolor\",\n            \"url\": \"http://nunu.local/?page_id=78\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"lorem ipsum dolor\",\n            \"nav_menu_term_id\": 10,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-07 15:57:22\"\n    }\n}','','','trash','closed','closed','','da938479-c8e9-4eb8-8b40-4f624cb078c0','','','2023-03-07 15:57:22','2023-03-07 15:57:22','',0,'http://nunu.local/?p=100',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2023-03-07 15:57:22','2023-03-07 15:57:22',' ','','','publish','closed','closed','','101','','','2023-03-07 15:57:22','2023-03-07 15:57:22','',0,'http://nunu.local/101/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2023-03-08 02:39:02','2023-03-08 02:39:02','','article1','','inherit','open','closed','','article1','','','2023-03-08 02:39:02','2023-03-08 02:39:02','',0,'http://nunu.local/wp-content/uploads/2023/03/article1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (103,1,'2023-03-08 02:39:03','2023-03-08 02:39:03','','https://unsplash.com/photos/Adl90-aXYwA','https://unsplash.com/photos/Adl90-aXYwA','inherit','open','closed','','https-unsplash-com-photos-adl90-axywa','','','2023-03-08 02:39:03','2023-03-08 02:39:03','',0,'http://nunu.local/wp-content/uploads/2023/03/leadspace-ocean.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (104,1,'2023-03-08 02:39:03','2023-03-08 02:39:03','','https://unsplash.com/photos/HDd-NQ_AMNQ','https://unsplash.com/photos/HDd-NQ_AMNQ','inherit','open','closed','','https-unsplash-com-photos-hdd-nq_amnq','','','2023-03-08 02:39:03','2023-03-08 02:39:03','',0,'http://nunu.local/wp-content/uploads/2023/03/leadspace-sunset.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (105,1,'2023-03-08 02:39:45','2023-03-08 02:39:45','{\n    \"firstwptheme::leadspace_images\": {\n        \"value\": 103,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-08 02:39:45\"\n    }\n}','','','trash','closed','closed','','a7405e55-0a6e-413d-a821-92f38ef471d8','','','2023-03-08 02:39:45','2023-03-08 02:39:45','',0,'http://nunu.local/a7405e55-0a6e-413d-a821-92f38ef471d8/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2023-03-08 06:44:40','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2023-03-08 06:44:40','0000-00-00 00:00:00','',0,'http://nunu.local/?post_type=homepage&p=106',0,'homepage','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2023-03-08 06:54:50','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2023-03-08 06:54:50','0000-00-00 00:00:00','',0,'http://nunu.local/?post_type=homepage&p=107',0,'homepage','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2023-03-08 08:47:28','0000-00-00 00:00:00','{\n    \"firstwptheme::leadspace_image1\": {\n        \"value\": 103,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-08 08:47:28\"\n    }\n}','','','auto-draft','closed','closed','','22124f12-f5d9-44c8-a6fc-644a7f3b1d37','','','2023-03-08 08:47:28','0000-00-00 00:00:00','',0,'http://nunu.local/?p=108',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2023-03-08 09:16:57','0000-00-00 00:00:00','{\n    \"firstwptheme::leadspace_image1\": {\n        \"value\": 103,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-08 09:16:57\"\n    },\n    \"firstwptheme::leadspace_image2\": {\n        \"value\": 104,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-08 09:16:57\"\n    }\n}','','','auto-draft','closed','closed','','19473f85-83d2-44ab-9ed7-c2ae8c3a4413','','','2023-03-08 09:16:57','0000-00-00 00:00:00','',0,'http://nunu.local/?p=109',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2023-03-08 09:19:15','0000-00-00 00:00:00','{\n    \"firstwptheme::leadspace_image1\": {\n        \"value\": 104,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-08 09:19:15\"\n    },\n    \"firstwptheme::leadspace_image2\": {\n        \"value\": 103,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-08 09:19:15\"\n    }\n}','','','auto-draft','closed','closed','','4ff741c5-c2cf-4688-a43c-8e09a623bdc3','','','2023-03-08 09:19:15','0000-00-00 00:00:00','',0,'http://nunu.local/?p=110',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2023-03-08 09:26:36','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2023-03-08 09:26:36','0000-00-00 00:00:00','',0,'http://nunu.local/?post_type=homepage&p=111',0,'homepage','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2023-03-08 09:27:25','2023-03-08 09:27:25','{\n    \"firstwptheme::leadspace_image1\": {\n        \"value\": 104,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-08 09:27:25\"\n    },\n    \"firstwptheme::leadspace_image2\": {\n        \"value\": 103,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-03-08 09:27:25\"\n    }\n}','','','trash','closed','closed','','75a0c592-b5a6-43a2-8dbd-87930271bed6','','','2023-03-08 09:27:25','2023-03-08 09:27:25','',0,'http://nunu.local/75a0c592-b5a6-43a2-8dbd-87930271bed6/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2023-03-08 10:00:04','2023-03-08 10:00:04','','home','','publish','closed','closed','','home-2','','','2023-03-09 14:06:29','2023-03-09 14:06:29','',0,'http://nunu.local/?page_id=113',0,'page','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2023-03-08 10:00:04','2023-03-08 10:00:04','','home','','inherit','closed','closed','','113-revision-v1','','','2023-03-08 10:00:04','2023-03-08 10:00:04','',113,'http://nunu.local/?p=114',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2023-03-09 08:46:44','2023-03-09 08:46:44','','article1','','inherit','open','closed','','article1-2','','','2023-03-09 08:46:44','2023-03-09 08:46:44','',0,'http://nunu.local/wp-content/uploads/2023/03/article1-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (116,1,'2023-03-09 08:46:45','2023-03-09 08:46:45','','avatar','','inherit','open','closed','','avatar','','','2023-03-09 08:46:45','2023-03-09 08:46:45','',0,'http://nunu.local/wp-content/uploads/2023/03/avatar.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (117,1,'2023-03-09 08:46:45','2023-03-09 08:46:45','','beatuiful_home','','inherit','open','closed','','beatuiful_home','','','2023-03-09 08:46:45','2023-03-09 08:46:45','',0,'http://nunu.local/wp-content/uploads/2023/03/beatuiful_home.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (118,1,'2023-03-09 08:46:45','2023-03-09 08:46:45','','boat','','inherit','open','closed','','boat','','','2023-03-09 08:46:45','2023-03-09 08:46:45','',0,'http://nunu.local/wp-content/uploads/2023/03/boat.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (119,1,'2023-03-09 08:46:46','2023-03-09 08:46:46','','girl','','inherit','open','closed','','girl','','','2023-03-09 08:46:46','2023-03-09 08:46:46','',0,'http://nunu.local/wp-content/uploads/2023/03/girl.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (120,1,'2023-03-09 08:46:46','2023-03-09 08:46:46','','play','','inherit','open','closed','','play','','','2023-03-09 08:46:46','2023-03-09 08:46:46','',0,'http://nunu.local/wp-content/uploads/2023/03/play.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (121,1,'2023-03-09 08:46:47','2023-03-09 08:46:47','','slideimage','','inherit','open','closed','','slideimage','','','2023-03-09 08:46:47','2023-03-09 08:46:47','',0,'http://nunu.local/wp-content/uploads/2023/03/slideimage.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (122,1,'2023-03-09 08:46:48','2023-03-09 08:46:48','','video','','inherit','open','closed','','video','','','2023-03-09 08:46:48','2023-03-09 08:46:48','',0,'http://nunu.local/wp-content/uploads/2023/03/video.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (123,1,'2023-03-09 08:46:48','2023-03-09 08:46:48','','Video','','inherit','open','closed','','video-2','','','2023-03-09 08:46:48','2023-03-09 08:46:48','',0,'http://nunu.local/wp-content/uploads/2023/03/Video.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (124,1,'2023-03-10 06:45:16','2023-03-10 06:45:16','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2023-03-10 06:45:16','2023-03-10 06:45:16','',1,'http://nunu.local/?p=124',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2023-03-10 06:45:47','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-03-10 06:45:47','0000-00-00 00:00:00','',0,'http://nunu.local/?p=125',0,'post','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2023-03-10 06:53:15','2023-03-10 06:53:15','<!-- wp:image {\"id\":127,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://nunu.local/wp-content/uploads/2023/03/article1-2.png\" alt=\"\" class=\"wp-image-127\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:calendar /-->','what is your name','','publish','open','open','','what-is-your-name','','','2023-03-10 07:28:58','2023-03-10 07:28:58','',0,'http://nunu.local/?p=126',0,'post','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2023-03-10 06:51:24','2023-03-10 06:51:24','','article1-2','','inherit','open','closed','','article1-2-2','','','2023-03-10 06:51:24','2023-03-10 06:51:24','',126,'http://nunu.local/wp-content/uploads/2023/03/article1-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (128,1,'2023-03-10 06:53:15','2023-03-10 06:53:15','<!-- wp:image {\"id\":127,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://nunu.local/wp-content/uploads/2023/03/article1-2.png\" alt=\"\" class=\"wp-image-127\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:calendar /-->','what is your name','','inherit','closed','closed','','126-revision-v1','','','2023-03-10 06:53:15','2023-03-10 06:53:15','',126,'http://nunu.local/?p=128',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2023-03-10 08:50:40','2023-03-10 08:50:40','','Everything you wanted to know','','publish','open','open','','everything-you-wanted-to-know','','','2023-03-10 08:52:03','2023-03-10 08:52:03','',0,'http://nunu.local/?p=129',0,'post','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2023-03-10 08:50:40','2023-03-10 08:50:40','','Everything you wanted to know','','inherit','closed','closed','','129-revision-v1','','','2023-03-10 08:50:40','2023-03-10 08:50:40','',129,'http://nunu.local/?p=130',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2023-03-10 08:51:27','2023-03-10 08:51:27','','article2','','inherit','open','closed','','article2','','','2023-03-10 08:51:27','2023-03-10 08:51:27','',0,'http://nunu.local/wp-content/uploads/2023/03/article2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (132,1,'2023-03-10 08:51:27','2023-03-10 08:51:27','','article3','','inherit','open','closed','','article3','','','2023-03-10 08:51:27','2023-03-10 08:51:27','',0,'http://nunu.local/wp-content/uploads/2023/03/article3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (133,1,'2023-03-10 08:51:28','2023-03-10 08:51:28','','article4','','inherit','open','closed','','article4','','','2023-03-10 08:51:28','2023-03-10 08:51:28','',0,'http://nunu.local/wp-content/uploads/2023/03/article4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (134,1,'2023-03-10 08:51:28','2023-03-10 08:51:28','','article5','','inherit','open','closed','','article5','','','2023-03-10 08:51:28','2023-03-10 08:51:28','',0,'http://nunu.local/wp-content/uploads/2023/03/article5.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (135,1,'2023-03-10 08:51:29','2023-03-10 08:51:29','','article6','','inherit','open','closed','','article6','','','2023-03-10 08:51:29','2023-03-10 08:51:29','',0,'http://nunu.local/wp-content/uploads/2023/03/article6.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (136,1,'2023-03-10 08:51:29','2023-03-10 08:51:29','','boyschilling','','inherit','open','closed','','boyschilling','','','2023-03-10 08:51:29','2023-03-10 08:51:29','',0,'http://nunu.local/wp-content/uploads/2023/03/boyschilling.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (137,1,'2023-03-10 08:51:30','2023-03-10 08:51:30','','https://unsplash.com/photos/0boeA7NBluU','https://unsplash.com/photos/0boeA7NBluU','inherit','open','closed','','https-unsplash-com-photos-0boea7nbluu','','','2023-03-10 08:51:30','2023-03-10 08:51:30','',0,'http://nunu.local/wp-content/uploads/2023/03/chill.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (138,1,'2023-03-10 08:53:18','2023-03-10 08:53:18','','What can u do to save you blogs from social media attack','','publish','open','open','','what-can-u-do-to-save-you-blogs-from-social-media-attack','','','2023-03-10 08:53:18','2023-03-10 08:53:18','',0,'http://nunu.local/?p=138',0,'post','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2023-03-10 08:53:18','2023-03-10 08:53:18','','What can u do to save you blogs from social media attack','','inherit','closed','closed','','138-revision-v1','','','2023-03-10 08:53:18','2023-03-10 08:53:18','',138,'http://nunu.local/?p=139',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2023-03-10 08:54:07','2023-03-10 08:54:07','','White Paper: Call to NASA for Low-Cost Innovation, New Talent Pipeline in Missions','','publish','open','open','','white-paper-call-to-nasa-for-low-cost-innovation-new-talent-pipeline-in-missions','','','2023-03-10 08:54:07','2023-03-10 08:54:07','',0,'http://nunu.local/?p=140',0,'post','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2023-03-10 08:54:07','2023-03-10 08:54:07','','White Paper: Call to NASA for Low-Cost Innovation, New Talent Pipeline in Missions','','inherit','closed','closed','','140-revision-v1','','','2023-03-10 08:54:07','2023-03-10 08:54:07','',140,'http://nunu.local/?p=141',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2023-03-10 08:54:43','2023-03-10 08:54:43','','Becoming Friends with a Mars Rover','','publish','open','open','','becoming-friends-with-a-mars-rover','','','2023-03-10 08:54:43','2023-03-10 08:54:43','',0,'http://nunu.local/?p=142',0,'post','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2023-03-10 08:54:43','2023-03-10 08:54:43','','Becoming Friends with a Mars Rover','','inherit','closed','closed','','142-revision-v1','','','2023-03-10 08:54:43','2023-03-10 08:54:43','',142,'http://nunu.local/?p=143',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2023-03-10 08:55:18','2023-03-10 08:55:18','','Some Assembly Required: Documentation in Mars Rover Design','','publish','open','open','','some-assembly-required-documentation-in-mars-rover-design','','','2023-03-10 08:55:18','2023-03-10 08:55:18','',0,'http://nunu.local/?p=144',0,'post','',0);
INSERT INTO `wp_posts` VALUES (145,1,'2023-03-10 08:55:18','2023-03-10 08:55:18','','Some Assembly Required: Documentation in Mars Rover Design','','inherit','closed','closed','','144-revision-v1','','','2023-03-10 08:55:18','2023-03-10 08:55:18','',144,'http://nunu.local/?p=145',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (19,9,0);
INSERT INTO `wp_term_relationships` VALUES (20,9,0);
INSERT INTO `wp_term_relationships` VALUES (21,9,0);
INSERT INTO `wp_term_relationships` VALUES (33,9,0);
INSERT INTO `wp_term_relationships` VALUES (34,9,0);
INSERT INTO `wp_term_relationships` VALUES (52,11,0);
INSERT INTO `wp_term_relationships` VALUES (66,10,0);
INSERT INTO `wp_term_relationships` VALUES (67,10,0);
INSERT INTO `wp_term_relationships` VALUES (72,15,0);
INSERT INTO `wp_term_relationships` VALUES (74,13,0);
INSERT INTO `wp_term_relationships` VALUES (76,13,0);
INSERT INTO `wp_term_relationships` VALUES (79,13,0);
INSERT INTO `wp_term_relationships` VALUES (81,13,0);
INSERT INTO `wp_term_relationships` VALUES (83,15,0);
INSERT INTO `wp_term_relationships` VALUES (85,15,0);
INSERT INTO `wp_term_relationships` VALUES (87,15,0);
INSERT INTO `wp_term_relationships` VALUES (89,14,0);
INSERT INTO `wp_term_relationships` VALUES (91,14,0);
INSERT INTO `wp_term_relationships` VALUES (93,14,0);
INSERT INTO `wp_term_relationships` VALUES (95,12,0);
INSERT INTO `wp_term_relationships` VALUES (96,12,0);
INSERT INTO `wp_term_relationships` VALUES (98,12,0);
INSERT INTO `wp_term_relationships` VALUES (99,12,0);
INSERT INTO `wp_term_relationships` VALUES (101,10,0);
INSERT INTO `wp_term_relationships` VALUES (126,18,0);
INSERT INTO `wp_term_relationships` VALUES (129,20,0);
INSERT INTO `wp_term_relationships` VALUES (138,18,0);
INSERT INTO `wp_term_relationships` VALUES (140,16,0);
INSERT INTO `wp_term_relationships` VALUES (142,17,0);
INSERT INTO `wp_term_relationships` VALUES (144,19,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'team_category','i am team ',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentythree','twentytwentythree',0);
INSERT INTO `wp_terms` VALUES (7,'Messi','messi',0);
INSERT INTO `wp_terms` VALUES (8,'Fifa','fifa',0);
INSERT INTO `wp_terms` VALUES (9,'main menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (10,'AboutUs','aboutus',0);
INSERT INTO `wp_terms` VALUES (11,'teamQ','teamq',0);
INSERT INTO `wp_terms` VALUES (12,'whoWeAre','whoweare',0);
INSERT INTO `wp_terms` VALUES (13,'ourTeam','ourteam',0);
INSERT INTO `wp_terms` VALUES (14,'Resources','resources',0);
INSERT INTO `wp_terms` VALUES (15,'Contact','contact',0);
INSERT INTO `wp_terms` VALUES (16,'news','news',0);
INSERT INTO `wp_terms` VALUES (17,'travel','travel',0);
INSERT INTO `wp_terms` VALUES (18,'blogs','blogs',0);
INSERT INTO `wp_terms` VALUES (19,'facts','facts',0);
INSERT INTO `wp_terms` VALUES (20,'global','global',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','punya');
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
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"7aea4cff1e189d25778994d104f3536bf403c0363e916afcca51006e2f129e1c\";a:4:{s:10:\"expiration\";i:1678429064;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1678256264;}s:64:\"bd1860fc79a68f5843d164177cd830d8027c371dd708402125b7bda81efc4deb\";a:4:{s:10:\"expiration\";i:1678597447;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1678424647;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-03-10T08:51:53.292Z\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','15');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1678104836');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_page','a:2:{i:0;s:15:\"seeblog_metabox\";i:1;s:15:\"article_metabox\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'meta-box-order_page','a:3:{s:6:\"normal\";s:31:\"seeblog_metabox,article_metabox\";s:8:\"advanced\";s:26:\"post_metabox,about_metabox\";s:4:\"side\";s:12:\"team_metabox\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
INSERT INTO `wp_users` VALUES (1,'punya','$P$BJok8sq7sUX.sew6bfUYwu6S.Tg3rs.','punya','dev-email@wpengine.local','http://nunu.local','2023-03-03 06:17:28','',0,'punya');
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

-- Dump completed on 2023-03-14  4:52:57
