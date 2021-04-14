-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2021 at 02:00 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccsmechanical`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-04-08 18:06:14', '2021-04-08 18:06:14', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/CCSDevelopment', 'yes'),
(2, 'home', 'http://localhost/CCSDevelopment', 'yes'),
(3, 'blogname', 'CCS Mechanical - Quality climate control systems for Ocala &amp; Central Florida', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sandeeptiwari626@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twenty-twenty-one-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1633457173', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:7:{i:1618401975;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1618423574;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618423575;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1618423639;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618423641;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618596375;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617994037;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1618390899;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618390906;s:7:\"checked\";a:4:{s:23:\"twenty-twenty-one-child\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(127, '_site_transient_timeout_browser_83f75fe8d5c2f40c243760c04f60cc4e', '1618510040', 'no'),
(128, '_site_transient_browser_83f75fe8d5c2f40c243760c04f60cc4e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"89.0.4389.114\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, '_site_transient_timeout_php_check_27ba000775e29cd0fe5915760b10a2bf', '1618510041', 'no'),
(130, '_site_transient_php_check_27ba000775e29cd0fe5915760b10a2bf', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(148, '_site_transient_timeout_php_check_8c0181da100b1c7d1f637c18117d0149', '1618512645', 'no'),
(149, '_site_transient_php_check_8c0181da100b1c7d1f637c18117d0149', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(161, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":7,\"critical\":1}', 'yes'),
(171, 'theme_mods_twenty-twenty-one-child', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:4;}}', 'yes'),
(172, 'current_theme', 'Twenty Twenty-One Child', 'yes'),
(173, 'theme_switched', '', 'yes'),
(175, 'recovery_mode_email_last_sent', '1617996078', 'yes'),
(198, 'recently_activated', 'a:0:{}', 'yes'),
(204, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618390900;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(205, 'acf_version', '5.9.5', 'yes'),
(225, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(232, '_site_transient_timeout_theme_roots', '1618400903', 'no'),
(233, '_site_transient_theme_roots', 'a:4:{s:23:\"twenty-twenty-one-child\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_customize_draft_post_name', 'create-your-website-with-blocks'),
(4, 5, '_customize_changeset_uuid', '47145526-f1a8-4aa7-ac76-951d521de072'),
(5, 6, '_customize_draft_post_name', 'about'),
(6, 6, '_customize_changeset_uuid', '47145526-f1a8-4aa7-ac76-951d521de072'),
(7, 7, '_customize_draft_post_name', 'contact'),
(8, 7, '_customize_changeset_uuid', '47145526-f1a8-4aa7-ac76-951d521de072'),
(9, 8, '_customize_draft_post_name', 'blog'),
(10, 8, '_customize_changeset_uuid', '47145526-f1a8-4aa7-ac76-951d521de072'),
(11, 10, '_edit_lock', '1618332513:1'),
(12, 10, '_wp_page_template', 'home-page.php'),
(13, 12, '_edit_last', '1'),
(14, 12, '_edit_lock', '1618332241:1'),
(15, 10, '_edit_last', '1'),
(16, 10, 'about_us', 'About <span>Us</span>'),
(17, 10, '_about_us', 'field_6072c2ec8749d'),
(18, 11, 'about_us', 'About Us'),
(19, 11, '_about_us', 'field_6072c2ec8749d'),
(20, 14, 'about_us', 'About <span>Us</span>'),
(21, 14, '_about_us', 'field_6072c2ec8749d'),
(22, 10, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(23, 10, '_about_us_content', 'field_6072c971996db'),
(24, 16, 'about_us', 'About <span>Us</span>'),
(25, 16, '_about_us', 'field_6072c2ec8749d'),
(26, 16, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a\r\nfocus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial\r\nbuildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(27, 16, '_about_us_content', 'field_6072c971996db'),
(28, 17, 'about_us', 'About <span>Us</span>'),
(29, 17, '_about_us', 'field_6072c2ec8749d'),
(30, 17, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial\r\nbuildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(31, 17, '_about_us_content', 'field_6072c971996db'),
(32, 18, 'about_us', 'About <span>Us</span>'),
(33, 18, '_about_us', 'field_6072c2ec8749d'),
(34, 18, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(35, 18, '_about_us_content', 'field_6072c971996db'),
(36, 19, 'about_us', 'About <span>Us</span>'),
(37, 19, '_about_us', 'field_6072c2ec8749d'),
(38, 19, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(39, 19, '_about_us_content', 'field_6072c971996db'),
(40, 10, 'verticle_integration', 'Verticle Integration <span> Offer Quality Assurance</span>'),
(41, 10, '_verticle_integration', 'field_6072ce00e8a75'),
(42, 19, 'verticle_integration', 'Verticle Integration <span> Offer Quality Assurance</span>'),
(43, 19, '_verticle_integration', 'field_6072ce00e8a75'),
(44, 10, 'verticle_integration_content', 'Under the leadership of the family patriarch, CCS Mechanical started as an installer of residential ductwork in 1969.\r\nBy 1984, with Louie Wise Jr. at the helm, CCS Mechanical expanded into commerical, industrial and public works projects. CCS Mechanical has built a solid reputation through fair business dealing and striving to be on the leading edge of HVAC technology. As a leading business in Ocala, Florida, CCS Mechanical believes that a strong community is\r\nbuilt through community service and therefore is active with various local charitable organizations. Today, with 62\r\nemployees, CCS Mechanical firmly looks forward to the future.\r\n<p class=\"VintRgt-head\">Our Vision</p>\r\n\r\n<ul class=\"VintList\">\r\n 	<li>Moving into the third generation of family ownership, CCS Mechanical continues the\r\nhighest level of quality workmanship.</li>\r\n 	<li>Successful integration of training and education into our work place provides an\r\nenvironment conducive to employee safety, productivity and growth.</li>\r\n 	<li>Using state of the art technology, we will create cost effective solutions while\r\nmaintaining our competitiveness.</li>\r\n 	<li>CCS Mechanical will achieve a more visible corporate imagethrough quality projects,\r\nindustry leading innovations and community service.</li>\r\n</ul>'),
(45, 10, '_verticle_integration_content', 'field_6072ceee47008'),
(46, 22, 'about_us', 'About <span>Us</span>'),
(47, 22, '_about_us', 'field_6072c2ec8749d'),
(48, 22, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(49, 22, '_about_us_content', 'field_6072c971996db'),
(50, 22, 'verticle_integration', 'Verticle Integration <span> Offer Quality Assurance</span>'),
(51, 22, '_verticle_integration', 'field_6072ce00e8a75'),
(52, 22, 'verticle_integration_content', 'Under the leadership of the family patriarch, CCS Mechanical started as an installer of residential\r\nductwork in 1969.\r\nBy 1984, with Louie Wise Jr. at the helm, CCS Mechanical expanded into commerical, industrial and public\r\nworks projects.\r\nCCS Mechanical has built a solid reputation through fair business dealing and striving to be on the\r\nleading edge of HVAC\r\ntechnology. As a leading business in Ocala, Florida, CCS Mechanical believes that a strong community is\r\nbuilt through\r\ncommunity service and therefore is active with various local charitable organizations. Today, with 62\r\nemployees,\r\nCCS Mechanical firmly looks forward to the future.'),
(53, 22, '_verticle_integration_content', 'field_6072ceee47008'),
(54, 23, 'about_us', 'About <span>Us</span>'),
(55, 23, '_about_us', 'field_6072c2ec8749d'),
(56, 23, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(57, 23, '_about_us_content', 'field_6072c971996db'),
(58, 23, 'verticle_integration', 'Verticle Integration <span> Offer Quality Assurance</span>'),
(59, 23, '_verticle_integration', 'field_6072ce00e8a75'),
(60, 23, 'verticle_integration_content', 'Under the leadership of the family patriarch, CCS Mechanical started as an installer of residential\r\nductwork in 1969. By 1984, with Louie Wise Jr. at the helm, CCS Mechanical expanded into commerical, industrial and public works projects. CCS Mechanical has built a solid reputation through fair business dealing and striving to be on the leading edge of HVAC technology. As a leading business in Ocala, Florida, CCS Mechanical believes that a strong community is built through community service and therefore is active with various local charitable organizations. Today, with 62 employees, CCS Mechanical firmly looks forward to the future.'),
(61, 23, '_verticle_integration_content', 'field_6072ceee47008'),
(62, 24, 'about_us', 'About <span>Us</span>'),
(63, 24, '_about_us', 'field_6072c2ec8749d'),
(64, 24, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(65, 24, '_about_us_content', 'field_6072c971996db'),
(66, 24, 'verticle_integration', 'Verticle Integration <span> Offer Quality Assurance</span>'),
(67, 24, '_verticle_integration', 'field_6072ce00e8a75'),
(68, 24, 'verticle_integration_content', 'Under the leadership of the family patriarch, CCS Mechanical started as an installer of residential ductwork in 1969. By 1984, with Louie Wise Jr. at the helm, CCS Mechanical expanded into commerical, industrial and public works projects. CCS Mechanical has built a solid reputation through fair business dealing and striving to be on the leading edge of HVAC technology. As a leading business in Ocala, Florida, CCS Mechanical believes that a strong community is built through community service and therefore is active with various local charitable organizations. Today, with 62 employees, CCS Mechanical firmly looks forward to the future.'),
(69, 24, '_verticle_integration_content', 'field_6072ceee47008'),
(70, 25, 'about_us', 'About <span>Us</span>'),
(71, 25, '_about_us', 'field_6072c2ec8749d'),
(72, 25, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(73, 25, '_about_us_content', 'field_6072c971996db'),
(74, 25, 'verticle_integration', 'Verticle Integration <span> Offer Quality Assurance</span>'),
(75, 25, '_verticle_integration', 'field_6072ce00e8a75'),
(76, 25, 'verticle_integration_content', 'Under the leadership of the family patriarch, CCS Mechanical started as an installer of residential ductwork in 1969.\r\nBy 1984, with Louie Wise Jr. at the helm, CCS Mechanical expanded into commerical, industrial and public works projects. CCS Mechanical has built a solid reputation through fair business dealing and striving to be on the leading edge of HVAC technology. As a leading business in Ocala, Florida, CCS Mechanical believes that a strong community is\r\nbuilt through community service and therefore is active with various local charitable organizations. Today, with 62\r\nemployees, CCS Mechanical firmly looks forward to the future.\r\n<p class=\"VintRgt-head\">Our Vision</p>\r\n\r\n<ul class=\"VintList\">\r\n 	<li>Moving into the third generation of family ownership, CCS Mechanical continues the\r\nhighest level of quality workmanship.</li>\r\n 	<li>Successful integration of training and education into our work place provides an\r\nenvironment conducive to employee safety, productivity and growth.</li>\r\n 	<li>Using state of the art technology, we will create cost effective solutions while\r\nmaintaining our competitiveness.</li>\r\n 	<li>CCS Mechanical will achieve a more visible corporate imagethrough quality projects,\r\nindustry leading innovations and community service.</li>\r\n</ul>'),
(77, 25, '_verticle_integration_content', 'field_6072ceee47008'),
(78, 10, 'ccs_mechanical', 'CCS Mechanical <span> Qualified Markets</span>'),
(79, 10, '_ccs_mechanical', 'field_6072d3f7fe2a8'),
(80, 25, 'ccs_mechanical', 'CCS Mechanical <span> Qualified Markets</span>'),
(81, 25, '_ccs_mechanical', 'field_6072d3f7fe2a8'),
(82, 10, 'newsletter', 'Newsletter <span>Archive</span>'),
(83, 10, '_newsletter', 'field_6072d6ac56fef'),
(84, 25, 'newsletter', 'Newsletter <span>Archive</span>'),
(85, 25, '_newsletter', 'field_6072d6ac56fef'),
(86, 10, 'newsletter_content', 'Our monthly newsletter is published and distributed to CCS Mechanical employees. It is a great source for local building mechanical industry news and events. You can find the latest and past newsletter issues listed above in Adobe Acrobat PDF format. You should download the latest version of Adobe Acrobat Reader if you do not currently have it installed on your computer.'),
(87, 10, '_newsletter_content', 'field_6072d7337a3cf'),
(88, 29, 'about_us', 'About <span>Us</span>'),
(89, 29, '_about_us', 'field_6072c2ec8749d'),
(90, 29, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(91, 29, '_about_us_content', 'field_6072c971996db'),
(92, 29, 'verticle_integration', 'Verticle Integration <span> Offer Quality Assurance</span>'),
(93, 29, '_verticle_integration', 'field_6072ce00e8a75'),
(94, 29, 'verticle_integration_content', 'Under the leadership of the family patriarch, CCS Mechanical started as an installer of residential ductwork in 1969.\r\nBy 1984, with Louie Wise Jr. at the helm, CCS Mechanical expanded into commerical, industrial and public works projects. CCS Mechanical has built a solid reputation through fair business dealing and striving to be on the leading edge of HVAC technology. As a leading business in Ocala, Florida, CCS Mechanical believes that a strong community is\r\nbuilt through community service and therefore is active with various local charitable organizations. Today, with 62\r\nemployees, CCS Mechanical firmly looks forward to the future.\r\n<p class=\"VintRgt-head\">Our Vision</p>\r\n\r\n<ul class=\"VintList\">\r\n 	<li>Moving into the third generation of family ownership, CCS Mechanical continues the\r\nhighest level of quality workmanship.</li>\r\n 	<li>Successful integration of training and education into our work place provides an\r\nenvironment conducive to employee safety, productivity and growth.</li>\r\n 	<li>Using state of the art technology, we will create cost effective solutions while\r\nmaintaining our competitiveness.</li>\r\n 	<li>CCS Mechanical will achieve a more visible corporate imagethrough quality projects,\r\nindustry leading innovations and community service.</li>\r\n</ul>'),
(95, 29, '_verticle_integration_content', 'field_6072ceee47008'),
(96, 29, 'ccs_mechanical', 'CCS Mechanical <span> Qualified Markets</span>'),
(97, 29, '_ccs_mechanical', 'field_6072d3f7fe2a8'),
(98, 29, 'newsletter', 'Newsletter <span>Archive</span>'),
(99, 29, '_newsletter', 'field_6072d6ac56fef'),
(100, 29, 'newsletter_content', 'Our monthly newsletter is published and distributed to CCS Mechanical employees. It is a great source for local building mechanical industry news and events. You can find the latest and past newsletter issues listed above in Adobe Acrobat PDF format. You should download the latest version of Adobe Acrobat Reader if you do not currently have it installed on your computer.'),
(101, 29, '_newsletter_content', 'field_6072d7337a3cf'),
(102, 31, '_wp_attached_file', '2021/04/Intigration-Image.png'),
(103, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:622;s:6:\"height\";i:453;s:4:\"file\";s:29:\"2021/04/Intigration-Image.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Intigration-Image-300x218.png\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Intigration-Image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 10, 'verticle_integration_image', '31'),
(105, 10, '_verticle_integration_image', 'field_6072e07be6b9f'),
(106, 32, 'about_us', 'About <span>Us</span>'),
(107, 32, '_about_us', 'field_6072c2ec8749d'),
(108, 32, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(109, 32, '_about_us_content', 'field_6072c971996db'),
(110, 32, 'verticle_integration', 'Verticle Integration <span> Offer Quality Assurance</span>'),
(111, 32, '_verticle_integration', 'field_6072ce00e8a75'),
(112, 32, 'verticle_integration_content', 'Under the leadership of the family patriarch, CCS Mechanical started as an installer of residential ductwork in 1969.\r\nBy 1984, with Louie Wise Jr. at the helm, CCS Mechanical expanded into commerical, industrial and public works projects. CCS Mechanical has built a solid reputation through fair business dealing and striving to be on the leading edge of HVAC technology. As a leading business in Ocala, Florida, CCS Mechanical believes that a strong community is\r\nbuilt through community service and therefore is active with various local charitable organizations. Today, with 62\r\nemployees, CCS Mechanical firmly looks forward to the future.\r\n<p class=\"VintRgt-head\">Our Vision</p>\r\n\r\n<ul class=\"VintList\">\r\n 	<li>Moving into the third generation of family ownership, CCS Mechanical continues the\r\nhighest level of quality workmanship.</li>\r\n 	<li>Successful integration of training and education into our work place provides an\r\nenvironment conducive to employee safety, productivity and growth.</li>\r\n 	<li>Using state of the art technology, we will create cost effective solutions while\r\nmaintaining our competitiveness.</li>\r\n 	<li>CCS Mechanical will achieve a more visible corporate imagethrough quality projects,\r\nindustry leading innovations and community service.</li>\r\n</ul>'),
(113, 32, '_verticle_integration_content', 'field_6072ceee47008'),
(114, 32, 'ccs_mechanical', 'CCS Mechanical <span> Qualified Markets</span>'),
(115, 32, '_ccs_mechanical', 'field_6072d3f7fe2a8'),
(116, 32, 'newsletter', 'Newsletter <span>Archive</span>'),
(117, 32, '_newsletter', 'field_6072d6ac56fef'),
(118, 32, 'newsletter_content', 'Our monthly newsletter is published and distributed to CCS Mechanical employees. It is a great source for local building mechanical industry news and events. You can find the latest and past newsletter issues listed above in Adobe Acrobat PDF format. You should download the latest version of Adobe Acrobat Reader if you do not currently have it installed on your computer.'),
(119, 32, '_newsletter_content', 'field_6072d7337a3cf'),
(120, 32, 'verticle_integration_image', '31'),
(121, 32, '_verticle_integration_image', 'field_6072e07be6b9f'),
(122, 33, 'about_us', 'About <span>Us</span>'),
(123, 33, '_about_us', 'field_6072c2ec8749d'),
(124, 33, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(125, 33, '_about_us_content', 'field_6072c971996db'),
(126, 33, 'verticle_integration', 'Verticle Integration <span> Offer Quality Assurance</span>'),
(127, 33, '_verticle_integration', 'field_6072ce00e8a75'),
(128, 33, 'verticle_integration_content', 'Under the leadership of the family patriarch, CCS Mechanical started as an installer of residential ductwork in 1969.\r\nBy 1984, with Louie Wise Jr. at the helm, CCS Mechanical expanded into commerical, industrial and public works projects. CCS Mechanical has built a solid reputation through fair business dealing and striving to be on the leading edge of HVAC technology. As a leading business in Ocala, Florida, CCS Mechanical believes that a strong community is\r\nbuilt through community service and therefore is active with various local charitable organizations. Today, with 62\r\nemployees, CCS Mechanical firmly looks forward to the future.\r\n<p class=\"VintRgt-head\">Our Vision</p>\r\n\r\n<ul class=\"VintList\">\r\n 	<li>Moving into the third generation of family ownership, CCS Mechanical continues the\r\nhighest level of quality workmanship.</li>\r\n 	<li>Successful integration of training and education into our work place provides an\r\nenvironment conducive to employee safety, productivity and growth.</li>\r\n 	<li>Using state of the art technology, we will create cost effective solutions while\r\nmaintaining our competitiveness.</li>\r\n 	<li>CCS Mechanical will achieve a more visible corporate imagethrough quality projects,\r\nindustry leading innovations and community service.</li>\r\n</ul>'),
(129, 33, '_verticle_integration_content', 'field_6072ceee47008'),
(130, 33, 'ccs_mechanical', 'CCS Mechanical <span> Qualified Markets</span>'),
(131, 33, '_ccs_mechanical', 'field_6072d3f7fe2a8'),
(132, 33, 'newsletter', 'Newsletter <span>Archive</span>'),
(133, 33, '_newsletter', 'field_6072d6ac56fef'),
(134, 33, 'newsletter_content', 'Our monthly newsletter is published and distributed to CCS Mechanical employees. It is a great source for local building mechanical industry news and events. You can find the latest and past newsletter issues listed above in Adobe Acrobat PDF format. You should download the latest version of Adobe Acrobat Reader if you do not currently have it installed on your computer.'),
(135, 33, '_newsletter_content', 'field_6072d7337a3cf'),
(136, 33, 'verticle_integration_image', '31'),
(137, 33, '_verticle_integration_image', 'field_6072e07be6b9f'),
(138, 35, '_wp_attached_file', '2021/04/About-Us.jpg'),
(139, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:699;s:6:\"height\";i:543;s:4:\"file\";s:20:\"2021/04/About-Us.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"About-Us-300x233.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"About-Us-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 10, 'about_us_image', '37'),
(141, 10, '_about_us_image', 'field_6072e41d32036'),
(142, 36, 'about_us', 'About <span>Us</span>'),
(143, 36, '_about_us', 'field_6072c2ec8749d'),
(144, 36, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(145, 36, '_about_us_content', 'field_6072c971996db'),
(146, 36, 'verticle_integration', 'Verticle Integration <span> Offer Quality Assurance</span>'),
(147, 36, '_verticle_integration', 'field_6072ce00e8a75'),
(148, 36, 'verticle_integration_content', 'Under the leadership of the family patriarch, CCS Mechanical started as an installer of residential ductwork in 1969.\r\nBy 1984, with Louie Wise Jr. at the helm, CCS Mechanical expanded into commerical, industrial and public works projects. CCS Mechanical has built a solid reputation through fair business dealing and striving to be on the leading edge of HVAC technology. As a leading business in Ocala, Florida, CCS Mechanical believes that a strong community is\r\nbuilt through community service and therefore is active with various local charitable organizations. Today, with 62\r\nemployees, CCS Mechanical firmly looks forward to the future.\r\n<p class=\"VintRgt-head\">Our Vision</p>\r\n\r\n<ul class=\"VintList\">\r\n 	<li>Moving into the third generation of family ownership, CCS Mechanical continues the\r\nhighest level of quality workmanship.</li>\r\n 	<li>Successful integration of training and education into our work place provides an\r\nenvironment conducive to employee safety, productivity and growth.</li>\r\n 	<li>Using state of the art technology, we will create cost effective solutions while\r\nmaintaining our competitiveness.</li>\r\n 	<li>CCS Mechanical will achieve a more visible corporate imagethrough quality projects,\r\nindustry leading innovations and community service.</li>\r\n</ul>'),
(149, 36, '_verticle_integration_content', 'field_6072ceee47008'),
(150, 36, 'ccs_mechanical', 'CCS Mechanical <span> Qualified Markets</span>'),
(151, 36, '_ccs_mechanical', 'field_6072d3f7fe2a8'),
(152, 36, 'newsletter', 'Newsletter <span>Archive</span>'),
(153, 36, '_newsletter', 'field_6072d6ac56fef'),
(154, 36, 'newsletter_content', 'Our monthly newsletter is published and distributed to CCS Mechanical employees. It is a great source for local building mechanical industry news and events. You can find the latest and past newsletter issues listed above in Adobe Acrobat PDF format. You should download the latest version of Adobe Acrobat Reader if you do not currently have it installed on your computer.'),
(155, 36, '_newsletter_content', 'field_6072d7337a3cf'),
(156, 36, 'verticle_integration_image', '31'),
(157, 36, '_verticle_integration_image', 'field_6072e07be6b9f'),
(158, 36, 'about_us_image', '35'),
(159, 36, '_about_us_image', 'field_6072e41d32036'),
(160, 37, '_wp_attached_file', '2021/04/About-Us-1.jpg'),
(161, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:699;s:6:\"height\";i:543;s:4:\"file\";s:22:\"2021/04/About-Us-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"About-Us-1-300x233.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"About-Us-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 38, 'about_us', 'About <span>Us</span>'),
(163, 38, '_about_us', 'field_6072c2ec8749d'),
(164, 38, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(165, 38, '_about_us_content', 'field_6072c971996db'),
(166, 38, 'verticle_integration', 'Verticle Integration <span> Offer Quality Assurance</span>'),
(167, 38, '_verticle_integration', 'field_6072ce00e8a75'),
(168, 38, 'verticle_integration_content', 'Under the leadership of the family patriarch, CCS Mechanical started as an installer of residential ductwork in 1969.\r\nBy 1984, with Louie Wise Jr. at the helm, CCS Mechanical expanded into commerical, industrial and public works projects. CCS Mechanical has built a solid reputation through fair business dealing and striving to be on the leading edge of HVAC technology. As a leading business in Ocala, Florida, CCS Mechanical believes that a strong community is\r\nbuilt through community service and therefore is active with various local charitable organizations. Today, with 62\r\nemployees, CCS Mechanical firmly looks forward to the future.\r\n<p class=\"VintRgt-head\">Our Vision</p>\r\n\r\n<ul class=\"VintList\">\r\n 	<li>Moving into the third generation of family ownership, CCS Mechanical continues the\r\nhighest level of quality workmanship.</li>\r\n 	<li>Successful integration of training and education into our work place provides an\r\nenvironment conducive to employee safety, productivity and growth.</li>\r\n 	<li>Using state of the art technology, we will create cost effective solutions while\r\nmaintaining our competitiveness.</li>\r\n 	<li>CCS Mechanical will achieve a more visible corporate imagethrough quality projects,\r\nindustry leading innovations and community service.</li>\r\n</ul>'),
(169, 38, '_verticle_integration_content', 'field_6072ceee47008'),
(170, 38, 'ccs_mechanical', 'CCS Mechanical <span> Qualified Markets</span>'),
(171, 38, '_ccs_mechanical', 'field_6072d3f7fe2a8'),
(172, 38, 'newsletter', 'Newsletter <span>Archive</span>'),
(173, 38, '_newsletter', 'field_6072d6ac56fef'),
(174, 38, 'newsletter_content', 'Our monthly newsletter is published and distributed to CCS Mechanical employees. It is a great source for local building mechanical industry news and events. You can find the latest and past newsletter issues listed above in Adobe Acrobat PDF format. You should download the latest version of Adobe Acrobat Reader if you do not currently have it installed on your computer.'),
(175, 38, '_newsletter_content', 'field_6072d7337a3cf'),
(176, 38, 'verticle_integration_image', '31'),
(177, 38, '_verticle_integration_image', 'field_6072e07be6b9f'),
(178, 38, 'about_us_image', '37'),
(179, 38, '_about_us_image', 'field_6072e41d32036'),
(180, 39, 'about_us', 'About <span>Us</span>'),
(181, 39, '_about_us', 'field_6072c2ec8749d'),
(182, 39, 'about_us_content', 'Established in 1969, CCS Mechanical, Inc. has become one of Florida\'s premiere specialty contractors\r\nwith a focus on mechanical systems for schools, hospitals, correctional institutions, industrial facilities,\r\nand commercial buildings of all types.\r\n\r\nProduct knowledge and project diversity compliment our solid business practices and diligent work\r\nethic.'),
(183, 39, '_about_us_content', 'field_6072c971996db'),
(184, 39, 'verticle_integration', 'Verticle Integration <span> Offer Quality Assurance</span>'),
(185, 39, '_verticle_integration', 'field_6072ce00e8a75'),
(186, 39, 'verticle_integration_content', 'Under the leadership of the family patriarch, CCS Mechanical started as an installer of residential ductwork in 1969.\r\nBy 1984, with Louie Wise Jr. at the helm, CCS Mechanical expanded into commerical, industrial and public works projects. CCS Mechanical has built a solid reputation through fair business dealing and striving to be on the leading edge of HVAC technology. As a leading business in Ocala, Florida, CCS Mechanical believes that a strong community is\r\nbuilt through community service and therefore is active with various local charitable organizations. Today, with 62\r\nemployees, CCS Mechanical firmly looks forward to the future.\r\n<p class=\"VintRgt-head\">Our Vision</p>\r\n\r\n<ul class=\"VintList\">\r\n 	<li>Moving into the third generation of family ownership, CCS Mechanical continues the\r\nhighest level of quality workmanship.</li>\r\n 	<li>Successful integration of training and education into our work place provides an\r\nenvironment conducive to employee safety, productivity and growth.</li>\r\n 	<li>Using state of the art technology, we will create cost effective solutions while\r\nmaintaining our competitiveness.</li>\r\n 	<li>CCS Mechanical will achieve a more visible corporate imagethrough quality projects,\r\nindustry leading innovations and community service.</li>\r\n</ul>'),
(187, 39, '_verticle_integration_content', 'field_6072ceee47008'),
(188, 39, 'ccs_mechanical', 'CCS Mechanical <span> Qualified Markets</span>'),
(189, 39, '_ccs_mechanical', 'field_6072d3f7fe2a8'),
(190, 39, 'newsletter', 'Newsletter <span>Archive</span>'),
(191, 39, '_newsletter', 'field_6072d6ac56fef'),
(192, 39, 'newsletter_content', 'Our monthly newsletter is published and distributed to CCS Mechanical employees. It is a great source for local building mechanical industry news and events. You can find the latest and past newsletter issues listed above in Adobe Acrobat PDF format. You should download the latest version of Adobe Acrobat Reader if you do not currently have it installed on your computer.'),
(193, 39, '_newsletter_content', 'field_6072d7337a3cf'),
(194, 39, 'verticle_integration_image', '31'),
(195, 39, '_verticle_integration_image', 'field_6072e07be6b9f'),
(196, 39, 'about_us_image', '37'),
(197, 39, '_about_us_image', 'field_6072e41d32036'),
(198, 40, '_edit_lock', '1618333724:1'),
(199, 40, '_wp_page_template', 'about-us.php'),
(230, 45, '_menu_item_type', 'custom'),
(231, 45, '_menu_item_menu_item_parent', '0'),
(232, 45, '_menu_item_object_id', '45'),
(233, 45, '_menu_item_object', 'custom'),
(234, 45, '_menu_item_target', ''),
(235, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 45, '_menu_item_xfn', ''),
(237, 45, '_menu_item_url', '#'),
(239, 46, '_menu_item_type', 'custom'),
(240, 46, '_menu_item_menu_item_parent', '0'),
(241, 46, '_menu_item_object_id', '46'),
(242, 46, '_menu_item_object', 'custom'),
(243, 46, '_menu_item_target', ''),
(244, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(245, 46, '_menu_item_xfn', ''),
(246, 46, '_menu_item_url', '#'),
(248, 47, '_menu_item_type', 'custom'),
(249, 47, '_menu_item_menu_item_parent', '0'),
(250, 47, '_menu_item_object_id', '47'),
(251, 47, '_menu_item_object', 'custom'),
(252, 47, '_menu_item_target', ''),
(253, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(254, 47, '_menu_item_xfn', ''),
(255, 47, '_menu_item_url', '#'),
(257, 48, '_edit_lock', '1618398987:1'),
(258, 48, '_wp_page_template', 'approach.php'),
(259, 50, '_menu_item_type', 'post_type'),
(260, 50, '_menu_item_menu_item_parent', '0'),
(261, 50, '_menu_item_object_id', '48'),
(262, 50, '_menu_item_object', 'page'),
(263, 50, '_menu_item_target', ''),
(264, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(265, 50, '_menu_item_xfn', ''),
(266, 50, '_menu_item_url', ''),
(267, 50, '_menu_item_orphaned', '1618399150'),
(268, 51, '_menu_item_type', 'post_type'),
(269, 51, '_menu_item_menu_item_parent', '0'),
(270, 51, '_menu_item_object_id', '48'),
(271, 51, '_menu_item_object', 'page'),
(272, 51, '_menu_item_target', ''),
(273, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(274, 51, '_menu_item_xfn', ''),
(275, 51, '_menu_item_url', ''),
(277, 52, '_menu_item_type', 'post_type'),
(278, 52, '_menu_item_menu_item_parent', '0'),
(279, 52, '_menu_item_object_id', '40'),
(280, 52, '_menu_item_object', 'page'),
(281, 52, '_menu_item_target', ''),
(282, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(283, 52, '_menu_item_xfn', ''),
(284, 52, '_menu_item_url', ''),
(295, 54, '_edit_lock', '1618401615:1'),
(296, 54, '_wp_page_template', 'Projects.php'),
(297, 56, '_menu_item_type', 'post_type'),
(298, 56, '_menu_item_menu_item_parent', '0'),
(299, 56, '_menu_item_object_id', '54'),
(300, 56, '_menu_item_object', 'page'),
(301, 56, '_menu_item_target', ''),
(302, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(303, 56, '_menu_item_xfn', ''),
(304, 56, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-08 18:06:14', '2021-04-08 18:06:14', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-04-08 18:06:14', '2021-04-08 18:06:14', '', 0, 'http://localhost/CCSDevelopment/?p=1', 0, 'post', '', 1),
(2, 1, '2021-04-08 18:06:14', '2021-04-08 18:06:14', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/CCSDevelopment/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-04-08 18:06:14', '2021-04-08 18:06:14', '', 0, 'http://localhost/CCSDevelopment/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-04-08 18:06:14', '2021-04-08 18:06:14', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/CCSDevelopment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-04-08 18:06:14', '2021-04-08 18:06:14', '', 0, 'http://localhost/CCSDevelopment/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-04-08 18:07:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-08 18:07:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/CCSDevelopment/?p=4', 0, 'post', '', 0),
(5, 1, '2021-04-09 18:47:05', '0000-00-00 00:00:00', '\r\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\r\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\r\n					<!-- /wp:heading -->\r\n\r\n					<!-- wp:spacer -->\r\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\r\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\r\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\r\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://localhost/CCSDevelopment/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Trémières&#8221; by Berthe Morisot\"/></figure>\r\n					<!-- /wp:image -->\r\n\r\n					<!-- wp:spacer -->\r\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\r\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://localhost/CCSDevelopment/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot\"/></figure>\r\n					<!-- /wp:image --></div>\r\n					<!-- /wp:column -->\r\n\r\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\r\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\r\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\r\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://localhost/CCSDevelopment/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Young Woman in Mauve&#8221; by Berthe Morisot\"/></figure>\r\n					<!-- /wp:image --></div>\r\n					<!-- /wp:column --></div>\r\n					<!-- /wp:columns -->\r\n\r\n					<!-- wp:spacer {\"height\":50} -->\r\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\r\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\r\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\r\n					<h3>Add block patterns</h3>\r\n					<!-- /wp:heading -->\r\n\r\n					<!-- wp:paragraph -->\r\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\r\n					<!-- /wp:paragraph --></div>\r\n					<!-- /wp:column -->\r\n\r\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\r\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\r\n					<h3>Frame your images</h3>\r\n					<!-- /wp:heading -->\r\n\r\n					<!-- wp:paragraph -->\r\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\r\n					<!-- /wp:paragraph --></div>\r\n					<!-- /wp:column -->\r\n\r\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\r\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\r\n					<h3>Overlap columns</h3>\r\n					<!-- /wp:heading -->\r\n\r\n					<!-- wp:paragraph -->\r\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\r\n					<!-- /wp:paragraph --></div>\r\n					<!-- /wp:column --></div>\r\n					<!-- /wp:columns -->\r\n\r\n					<!-- wp:spacer -->\r\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\r\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\r\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\r\n					<p class=\"has-huge-font-size\">Need help?</p>\r\n					<!-- /wp:paragraph -->\r\n\r\n					<!-- wp:spacer {\"height\":75} -->\r\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer -->\r\n\r\n					<!-- wp:columns -->\r\n					<div class=\"wp-block-columns\"><!-- wp:column -->\r\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\r\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\r\n					<!-- /wp:paragraph --></div>\r\n					<!-- /wp:column -->\r\n\r\n					<!-- wp:column -->\r\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\r\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\r\n					<!-- /wp:paragraph --></div>\r\n					<!-- /wp:column --></div>\r\n					<!-- /wp:columns -->\r\n\r\n					<!-- wp:spacer {\"height\":20} -->\r\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\r\n					<!-- /wp:spacer --></div></div>\r\n					<!-- /wp:cover -->', 'Create your website with blocks', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-09 18:47:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/CCSDevelopment/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-04-09 18:47:05', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-09 18:47:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/CCSDevelopment/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-04-09 18:47:05', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-09 18:47:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/CCSDevelopment/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-04-09 18:47:05', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-09 18:47:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/CCSDevelopment/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-04-09 18:47:05', '0000-00-00 00:00:00', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/CCSDevelopment/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 6,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"twenty-twenty-one-child::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Secondary menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"twenty-twenty-one-child::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    },\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-2\": [\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-04-09 18:47:05\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '47145526-f1a8-4aa7-ac76-951d521de072', '', '', '2021-04-09 18:47:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/CCSDevelopment/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2021-04-09 20:15:48', '2021-04-09 20:15:48', '', 'Home page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2021-04-11 12:01:36', '2021-04-11 12:01:36', '', 0, 'http://localhost/CCSDevelopment/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-04-09 20:15:48', '2021-04-09 20:15:48', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-09 20:15:48', '2021-04-09 20:15:48', '', 10, 'http://localhost/CCSDevelopment/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-04-11 09:39:50', '2021-04-11 09:39:50', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"home-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home page', 'home-page', 'publish', 'closed', 'closed', '', 'group_6072c2860288e', '', '', '2021-04-11 12:03:45', '2021-04-11 12:03:45', '', 0, 'http://localhost/CCSDevelopment/?post_type=acf-field-group&#038;p=12', 0, 'acf-field-group', '', 0),
(13, 1, '2021-04-11 09:39:50', '2021-04-11 09:39:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:8:\"About Us\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'About us', 'about_us', 'publish', 'closed', 'closed', '', 'field_6072c2ec8749d', '', '', '2021-04-11 09:39:50', '2021-04-11 09:39:50', '', 12, 'http://localhost/CCSDevelopment/?post_type=acf-field&p=13', 0, 'acf-field', '', 0),
(14, 1, '2021-04-11 09:55:39', '2021-04-11 09:55:39', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 09:55:39', '2021-04-11 09:55:39', '', 10, 'http://localhost/CCSDevelopment/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-04-11 10:04:15', '2021-04-11 10:04:15', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'About us content', 'about_us_content', 'publish', 'closed', 'closed', '', 'field_6072c971996db', '', '', '2021-04-11 11:57:49', '2021-04-11 11:57:49', '', 12, 'http://localhost/CCSDevelopment/?post_type=acf-field&#038;p=15', 2, 'acf-field', '', 0),
(16, 1, '2021-04-11 10:04:40', '2021-04-11 10:04:40', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 10:04:40', '2021-04-11 10:04:40', '', 10, 'http://localhost/CCSDevelopment/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-04-11 10:05:27', '2021-04-11 10:05:27', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 10:05:27', '2021-04-11 10:05:27', '', 10, 'http://localhost/CCSDevelopment/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-04-11 10:05:44', '2021-04-11 10:05:44', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 10:05:44', '2021-04-11 10:05:44', '', 10, 'http://localhost/CCSDevelopment/?p=18', 0, 'revision', '', 0),
(19, 1, '2021-04-11 10:06:56', '2021-04-11 10:06:56', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 10:06:56', '2021-04-11 10:06:56', '', 10, 'http://localhost/CCSDevelopment/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-04-11 10:23:27', '2021-04-11 10:23:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:58:\"Verticle Integration <span> Offer Quality Assurance</span>\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Verticle Integration', 'verticle_integration', 'publish', 'closed', 'closed', '', 'field_6072ce00e8a75', '', '', '2021-04-11 11:57:49', '2021-04-11 11:57:49', '', 12, 'http://localhost/CCSDevelopment/?post_type=acf-field&#038;p=20', 3, 'acf-field', '', 0),
(21, 1, '2021-04-11 10:27:26', '2021-04-11 10:27:26', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Verticle Integration content', 'verticle_integration_content', 'publish', 'closed', 'closed', '', 'field_6072ceee47008', '', '', '2021-04-11 11:57:49', '2021-04-11 11:57:49', '', 12, 'http://localhost/CCSDevelopment/?post_type=acf-field&#038;p=21', 5, 'acf-field', '', 0),
(22, 1, '2021-04-11 10:28:56', '2021-04-11 10:28:56', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 10:28:56', '2021-04-11 10:28:56', '', 10, 'http://localhost/CCSDevelopment/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-04-11 10:31:26', '2021-04-11 10:31:26', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 10:31:26', '2021-04-11 10:31:26', '', 10, 'http://localhost/CCSDevelopment/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-04-11 10:32:53', '2021-04-11 10:32:53', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 10:32:53', '2021-04-11 10:32:53', '', 10, 'http://localhost/CCSDevelopment/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-04-11 10:35:17', '2021-04-11 10:35:17', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 10:35:17', '2021-04-11 10:35:17', '', 10, 'http://localhost/CCSDevelopment/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-04-11 10:48:54', '2021-04-11 10:48:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:46:\"CCS Mechanical <span> Qualified Markets</span>\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'CCS Mechanical', 'ccs_mechanical', 'publish', 'closed', 'closed', '', 'field_6072d3f7fe2a8', '', '', '2021-04-11 11:57:49', '2021-04-11 11:57:49', '', 12, 'http://localhost/CCSDevelopment/?post_type=acf-field&#038;p=26', 6, 'acf-field', '', 0),
(27, 1, '2021-04-11 11:00:18', '2021-04-11 11:00:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:31:\"Newsletter <span>Archive</span>\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Newsletter', 'newsletter', 'publish', 'closed', 'closed', '', 'field_6072d6ac56fef', '', '', '2021-04-11 11:57:49', '2021-04-11 11:57:49', '', 12, 'http://localhost/CCSDevelopment/?post_type=acf-field&#038;p=27', 7, 'acf-field', '', 0),
(28, 1, '2021-04-11 11:04:44', '2021-04-11 11:04:44', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Newsletter content', 'newsletter_content', 'publish', 'closed', 'closed', '', 'field_6072d7337a3cf', '', '', '2021-04-11 11:57:49', '2021-04-11 11:57:49', '', 12, 'http://localhost/CCSDevelopment/?post_type=acf-field&#038;p=28', 8, 'acf-field', '', 0),
(29, 1, '2021-04-11 11:05:14', '2021-04-11 11:05:14', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 11:05:14', '2021-04-11 11:05:14', '', 10, 'http://localhost/CCSDevelopment/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-04-11 11:42:47', '2021-04-11 11:42:47', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Verticle Integration image', 'verticle_integration_image', 'publish', 'closed', 'closed', '', 'field_6072e07be6b9f', '', '', '2021-04-11 11:57:49', '2021-04-11 11:57:49', '', 12, 'http://localhost/CCSDevelopment/?post_type=acf-field&#038;p=30', 4, 'acf-field', '', 0),
(31, 1, '2021-04-11 11:44:09', '2021-04-11 11:44:09', '', 'Intigration-Image', '', 'inherit', 'open', 'closed', '', 'intigration-image', '', '', '2021-04-11 11:44:09', '2021-04-11 11:44:09', '', 10, 'http://localhost/CCSDevelopment/wp-content/uploads/2021/04/Intigration-Image.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2021-04-11 11:44:18', '2021-04-11 11:44:18', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 11:44:18', '2021-04-11 11:44:18', '', 10, 'http://localhost/CCSDevelopment/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-04-11 11:49:59', '2021-04-11 11:49:59', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 11:49:59', '2021-04-11 11:49:59', '', 10, 'http://localhost/CCSDevelopment/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-04-11 11:57:49', '2021-04-11 11:57:49', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'About us Image', 'about_us_image', 'publish', 'closed', 'closed', '', 'field_6072e41d32036', '', '', '2021-04-11 12:03:45', '2021-04-11 12:03:45', '', 12, 'http://localhost/CCSDevelopment/?post_type=acf-field&#038;p=34', 1, 'acf-field', '', 0),
(35, 1, '2021-04-11 11:58:29', '2021-04-11 11:58:29', '', 'About-Us', '', 'inherit', 'open', 'closed', '', 'about-us', '', '', '2021-04-11 11:58:29', '2021-04-11 11:58:29', '', 10, 'http://localhost/CCSDevelopment/wp-content/uploads/2021/04/About-Us.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2021-04-11 11:58:36', '2021-04-11 11:58:36', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 11:58:36', '2021-04-11 11:58:36', '', 10, 'http://localhost/CCSDevelopment/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-04-11 12:00:15', '2021-04-11 12:00:15', '', 'About-Us', '', 'inherit', 'open', 'closed', '', 'about-us-2', '', '', '2021-04-11 12:00:15', '2021-04-11 12:00:15', '', 10, 'http://localhost/CCSDevelopment/wp-content/uploads/2021/04/About-Us-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2021-04-11 12:00:23', '2021-04-11 12:00:23', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 12:00:23', '2021-04-11 12:00:23', '', 10, 'http://localhost/CCSDevelopment/?p=38', 0, 'revision', '', 0),
(39, 1, '2021-04-11 12:01:36', '2021-04-11 12:01:36', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-04-11 12:01:36', '2021-04-11 12:01:36', '', 10, 'http://localhost/CCSDevelopment/?p=39', 0, 'revision', '', 0),
(40, 1, '2021-04-13 16:49:15', '2021-04-13 16:49:15', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-04-13 16:51:32', '2021-04-13 16:51:32', '', 0, 'http://localhost/CCSDevelopment/?page_id=40', 0, 'page', '', 0),
(41, 1, '2021-04-13 16:49:15', '2021-04-13 16:49:15', '', 'About us', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-04-13 16:49:15', '2021-04-13 16:49:15', '', 40, 'http://localhost/CCSDevelopment/?p=41', 0, 'revision', '', 0),
(45, 1, '2021-04-14 09:36:29', '2021-04-14 09:34:41', '', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2021-04-14 09:36:29', '2021-04-14 09:36:29', '', 0, 'http://localhost/CCSDevelopment/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2021-04-14 09:36:29', '2021-04-14 09:34:41', '', 'Newsletters', '', 'publish', 'closed', 'closed', '', 'newsletters', '', '', '2021-04-14 09:36:29', '2021-04-14 09:36:29', '', 0, 'http://localhost/CCSDevelopment/?p=46', 2, 'nav_menu_item', '', 0),
(47, 1, '2021-04-14 09:36:29', '2021-04-14 09:34:41', '', 'Vendor', '', 'publish', 'closed', 'closed', '', 'vendor', '', '', '2021-04-14 09:36:29', '2021-04-14 09:36:29', '', 0, 'http://localhost/CCSDevelopment/?p=47', 3, 'nav_menu_item', '', 0),
(48, 1, '2021-04-14 11:18:40', '2021-04-14 11:18:40', '', 'Approach', '', 'publish', 'closed', 'closed', '', 'approach', '', '', '2021-04-14 11:18:40', '2021-04-14 11:18:40', '', 0, 'http://localhost/CCSDevelopment/?page_id=48', 0, 'page', '', 0),
(49, 1, '2021-04-14 11:18:40', '2021-04-14 11:18:40', '', 'Approach', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2021-04-14 11:18:40', '2021-04-14 11:18:40', '', 48, 'http://localhost/CCSDevelopment/?p=49', 0, 'revision', '', 0),
(50, 1, '2021-04-14 11:19:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-04-14 11:19:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/CCSDevelopment/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2021-04-14 11:41:36', '2021-04-14 11:21:07', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2021-04-14 11:41:36', '2021-04-14 11:41:36', '', 0, 'http://localhost/CCSDevelopment/?p=51', 2, 'nav_menu_item', '', 0),
(52, 1, '2021-04-14 11:41:36', '2021-04-14 11:21:07', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2021-04-14 11:41:36', '2021-04-14 11:41:36', '', 0, 'http://localhost/CCSDevelopment/?p=52', 1, 'nav_menu_item', '', 0),
(54, 1, '2021-04-14 11:41:14', '2021-04-14 11:41:14', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2021-04-14 11:41:14', '2021-04-14 11:41:14', '', 0, 'http://localhost/CCSDevelopment/?page_id=54', 0, 'page', '', 0),
(55, 1, '2021-04-14 11:41:14', '2021-04-14 11:41:14', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2021-04-14 11:41:14', '2021-04-14 11:41:14', '', 54, 'http://localhost/CCSDevelopment/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-04-14 11:41:36', '2021-04-14 11:41:36', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2021-04-14 11:41:36', '2021-04-14 11:41:36', '', 0, 'http://localhost/CCSDevelopment/?p=56', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'top right menu', 'top-right-menu', 0),
(4, 'top left menu', 'top-left-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(45, 3, 0),
(46, 3, 0),
(47, 3, 0),
(51, 4, 0),
(52, 4, 0),
(56, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"d8c9f16a297aaff9f7f11374918c101405ee15f3153eb49bd45d3e902f44f7f9\";a:4:{s:10:\"expiration\";i:1618078038;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1617905238;}s:64:\"e34a97ca579a1a0717f62d3297c21f4625b49fc372cd71d8c3e3bd7bed54d948\";a:4:{s:10:\"expiration\";i:1619117444;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1617907844;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1618141454'),
(20, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(22, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BerTJEqIpVDHYhy10N/fZw0bGNfiTv.', 'admin', 'sandeeptiwari626@gmail.com', 'http://localhost/CCSDevelopment', '2021-04-08 18:06:14', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
