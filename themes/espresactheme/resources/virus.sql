# WordPress MySQL database migration
#
# Generated: Tuesday 15. November 2016 23:03 UTC
# Hostname: localhost
# Database: `espresac`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_espresac_commentmeta`
#

DROP TABLE IF EXISTS `wp_espresac_commentmeta`;


#
# Table structure of table `wp_espresac_commentmeta`
#

CREATE TABLE `wp_espresac_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_espresac_commentmeta`
#

#
# End of data contents of table `wp_espresac_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_espresac_comments`
#

DROP TABLE IF EXISTS `wp_espresac_comments`;


#
# Table structure of table `wp_espresac_comments`
#

CREATE TABLE `wp_espresac_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_espresac_comments`
#
INSERT INTO `wp_espresac_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-11-14 15:12:55', '2016-11-14 15:12:55', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_espresac_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_espresac_links`
#

DROP TABLE IF EXISTS `wp_espresac_links`;


#
# Table structure of table `wp_espresac_links`
#

CREATE TABLE `wp_espresac_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_espresac_links`
#

#
# End of data contents of table `wp_espresac_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_espresac_options`
#

DROP TABLE IF EXISTS `wp_espresac_options`;


#
# Table structure of table `wp_espresac_options`
#

CREATE TABLE `wp_espresac_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1093 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_espresac_options`
#
INSERT INTO `wp_espresac_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/espresac', 'yes'),
(2, 'home', 'http://localhost/espresac', 'yes'),
(3, 'blogname', 'Espresac Web', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jgomez@ingenioart.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:209:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:20:"theme-slider-home/?$";s:37:"index.php?post_type=theme-slider-home";s:50:"theme-slider-home/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=theme-slider-home&feed=$matches[1]";s:45:"theme-slider-home/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=theme-slider-home&feed=$matches[1]";s:37:"theme-slider-home/page/([0-9]{1,})/?$";s:55:"index.php?post_type=theme-slider-home&paged=$matches[1]";s:17:"theme-projects/?$";s:34:"index.php?post_type=theme-projects";s:47:"theme-projects/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-projects&feed=$matches[1]";s:42:"theme-projects/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-projects&feed=$matches[1]";s:34:"theme-projects/page/([0-9]{1,})/?$";s:52:"index.php?post_type=theme-projects&paged=$matches[1]";s:17:"theme-products/?$";s:34:"index.php?post_type=theme-products";s:47:"theme-products/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-products&feed=$matches[1]";s:42:"theme-products/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?post_type=theme-products&feed=$matches[1]";s:34:"theme-products/page/([0-9]{1,})/?$";s:52:"index.php?post_type=theme-products&paged=$matches[1]";s:23:"theme-gallery-images/?$";s:40:"index.php?post_type=theme-gallery-images";s:53:"theme-gallery-images/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=theme-gallery-images&feed=$matches[1]";s:48:"theme-gallery-images/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=theme-gallery-images&feed=$matches[1]";s:40:"theme-gallery-images/page/([0-9]{1,})/?$";s:58:"index.php?post_type=theme-gallery-images&paged=$matches[1]";s:23:"theme-gallery-videos/?$";s:40:"index.php?post_type=theme-gallery-videos";s:53:"theme-gallery-videos/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=theme-gallery-videos&feed=$matches[1]";s:48:"theme-gallery-videos/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=theme-gallery-videos&feed=$matches[1]";s:40:"theme-gallery-videos/page/([0-9]{1,})/?$";s:58:"index.php?post_type=theme-gallery-videos&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"wpmf-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:49:"wpmf-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:30:"wpmf-category/([^/]+)/embed/?$";s:46:"index.php?wpmf-category=$matches[1]&embed=true";s:42:"wpmf-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wpmf-category=$matches[1]&paged=$matches[2]";s:24:"wpmf-category/([^/]+)/?$";s:35:"index.php?wpmf-category=$matches[1]";s:58:"producto_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?producto_category=$matches[1]&feed=$matches[2]";s:53:"producto_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?producto_category=$matches[1]&feed=$matches[2]";s:34:"producto_category/([^/]+)/embed/?$";s:50:"index.php?producto_category=$matches[1]&embed=true";s:46:"producto_category/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?producto_category=$matches[1]&paged=$matches[2]";s:28:"producto_category/([^/]+)/?$";s:39:"index.php?producto_category=$matches[1]";s:45:"theme-slider-home/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"theme-slider-home/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"theme-slider-home/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"theme-slider-home/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"theme-slider-home/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"theme-slider-home/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"theme-slider-home/([^/]+)/embed/?$";s:50:"index.php?theme-slider-home=$matches[1]&embed=true";s:38:"theme-slider-home/([^/]+)/trackback/?$";s:44:"index.php?theme-slider-home=$matches[1]&tb=1";s:58:"theme-slider-home/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?theme-slider-home=$matches[1]&feed=$matches[2]";s:53:"theme-slider-home/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?theme-slider-home=$matches[1]&feed=$matches[2]";s:46:"theme-slider-home/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?theme-slider-home=$matches[1]&paged=$matches[2]";s:53:"theme-slider-home/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?theme-slider-home=$matches[1]&cpage=$matches[2]";s:42:"theme-slider-home/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?theme-slider-home=$matches[1]&page=$matches[2]";s:34:"theme-slider-home/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"theme-slider-home/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"theme-slider-home/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"theme-slider-home/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"theme-slider-home/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"theme-slider-home/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"theme-projects/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"theme-projects/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"theme-projects/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-projects/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-projects/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"theme-projects/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"theme-projects/([^/]+)/embed/?$";s:47:"index.php?theme-projects=$matches[1]&embed=true";s:35:"theme-projects/([^/]+)/trackback/?$";s:41:"index.php?theme-projects=$matches[1]&tb=1";s:55:"theme-projects/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-projects=$matches[1]&feed=$matches[2]";s:50:"theme-projects/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-projects=$matches[1]&feed=$matches[2]";s:43:"theme-projects/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?theme-projects=$matches[1]&paged=$matches[2]";s:50:"theme-projects/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?theme-projects=$matches[1]&cpage=$matches[2]";s:39:"theme-projects/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?theme-projects=$matches[1]&page=$matches[2]";s:31:"theme-projects/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"theme-projects/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"theme-projects/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-projects/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-projects/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"theme-projects/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:42:"theme-products/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"theme-products/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"theme-products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"theme-products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"theme-products/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"theme-products/([^/]+)/embed/?$";s:47:"index.php?theme-products=$matches[1]&embed=true";s:35:"theme-products/([^/]+)/trackback/?$";s:41:"index.php?theme-products=$matches[1]&tb=1";s:55:"theme-products/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-products=$matches[1]&feed=$matches[2]";s:50:"theme-products/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?theme-products=$matches[1]&feed=$matches[2]";s:43:"theme-products/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?theme-products=$matches[1]&paged=$matches[2]";s:50:"theme-products/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?theme-products=$matches[1]&cpage=$matches[2]";s:39:"theme-products/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?theme-products=$matches[1]&page=$matches[2]";s:31:"theme-products/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"theme-products/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"theme-products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"theme-products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"theme-products/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:"theme-gallery-images/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:58:"theme-gallery-images/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:78:"theme-gallery-images/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"theme-gallery-images/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"theme-gallery-images/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:54:"theme-gallery-images/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"theme-gallery-images/([^/]+)/embed/?$";s:53:"index.php?theme-gallery-images=$matches[1]&embed=true";s:41:"theme-gallery-images/([^/]+)/trackback/?$";s:47:"index.php?theme-gallery-images=$matches[1]&tb=1";s:61:"theme-gallery-images/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?theme-gallery-images=$matches[1]&feed=$matches[2]";s:56:"theme-gallery-images/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?theme-gallery-images=$matches[1]&feed=$matches[2]";s:49:"theme-gallery-images/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?theme-gallery-images=$matches[1]&paged=$matches[2]";s:56:"theme-gallery-images/([^/]+)/comment-page-([0-9]{1,})/?$";s:60:"index.php?theme-gallery-images=$matches[1]&cpage=$matches[2]";s:45:"theme-gallery-images/([^/]+)(?:/([0-9]+))?/?$";s:59:"index.php?theme-gallery-images=$matches[1]&page=$matches[2]";s:37:"theme-gallery-images/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"theme-gallery-images/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"theme-gallery-images/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"theme-gallery-images/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"theme-gallery-images/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"theme-gallery-images/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:"theme-gallery-videos/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:58:"theme-gallery-videos/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:78:"theme-gallery-videos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"theme-gallery-videos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:73:"theme-gallery-videos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:54:"theme-gallery-videos/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"theme-gallery-videos/([^/]+)/embed/?$";s:53:"index.php?theme-gallery-videos=$matches[1]&embed=true";s:41:"theme-gallery-videos/([^/]+)/trackback/?$";s:47:"index.php?theme-gallery-videos=$matches[1]&tb=1";s:61:"theme-gallery-videos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?theme-gallery-videos=$matches[1]&feed=$matches[2]";s:56:"theme-gallery-videos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?theme-gallery-videos=$matches[1]&feed=$matches[2]";s:49:"theme-gallery-videos/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?theme-gallery-videos=$matches[1]&paged=$matches[2]";s:56:"theme-gallery-videos/([^/]+)/comment-page-([0-9]{1,})/?$";s:60:"index.php?theme-gallery-videos=$matches[1]&cpage=$matches[2]";s:45:"theme-gallery-videos/([^/]+)(?:/([0-9]+))?/?$";s:59:"index.php?theme-gallery-videos=$matches[1]&page=$matches[2]";s:37:"theme-gallery-videos/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"theme-gallery-videos/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"theme-gallery-videos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"theme-gallery-videos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"theme-gallery-videos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"theme-gallery-videos/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:2;s:33:"duplicate-post/duplicate-post.php";i:3;s:37:"error-log-viewer/error-log-viewer.php";i:4;s:31:"live-admin-customzier/index.php";i:5;s:19:"optimus/optimus.php";i:6;s:35:"wp-media-folder/wp-media-folder.php";i:7;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'espresactheme', 'yes'),
(41, 'stylesheet', 'espresactheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:4:{s:27:"autoptimize/autoptimize.php";s:21:"autoptimize_uninstall";s:31:"cache-enabler/cache-enabler.php";a:2:{i:0;s:13:"Cache_Enabler";i:1;s:12:"on_uninstall";}s:37:"error-log-viewer/error-log-viewer.php";s:18:"rrrlgvwr_uninstall";s:19:"optimus/optimus.php";a:2:{i:0;s:7:"Optimus";i:1;s:21:"handle_uninstall_hook";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_espresac_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'es_PE', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_espresac_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:6:{i:1479265977;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1479266709;a:1:{s:36:"check_plugin_updates-wp-media-folder";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1479309276;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1479309909;a:1:{s:15:"ao_cachechecker";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1479313352;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(121, 'can_compress_scripts', '1', 'no'),
(138, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1479137085;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(139, 'current_theme', 'Espresac Theme', 'yes'),
(140, 'theme_mods_espresactheme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:2;}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, 'recently_activated', 'a:2:{s:27:"autoptimize/autoptimize.php";i:1479138788;s:31:"cache-enabler/cache-enabler.php";i:1479138767;}', 'yes'),
(143, 'autoptimize_version', '2.1.0', 'yes'),
(144, 'cache', 'a:0:{}', 'yes'),
(147, 'wpmf_use_taxonomy', '1', 'yes'),
(148, 'rrrlgvwr_options', 'a:10:{s:21:"plugin_option_version";s:5:"1.0.4";s:21:"php_error_log_visible";i:0;s:11:"lines_count";i:10;s:16:"confirm_filesize";i:0;s:14:"error_log_path";s:0:"";s:17:"count_visible_log";i:0;s:14:"frequency_send";i:1;s:8:"hour_day";i:3600;s:23:"display_settings_notice";i:1;s:22:"suggest_feature_banner";i:1;}', 'yes'),
(152, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:5:"1.9.0";}}}', 'yes'),
(153, 'duplicate_post_copytitle', '1', 'yes'),
(154, 'duplicate_post_copydate', '', 'yes'),
(155, 'duplicate_post_copystatus', '', 'yes'),
(156, 'duplicate_post_copyslug', '1', 'yes'),
(157, 'duplicate_post_copyexcerpt', '1', 'yes'),
(158, 'duplicate_post_copycontent', '1', 'yes'),
(159, 'duplicate_post_copypassword', '', 'yes'),
(160, 'duplicate_post_copyattachments', '', 'yes'),
(161, 'duplicate_post_copychildren', '', 'yes'),
(162, 'duplicate_post_copycomments', '', 'yes'),
(163, 'duplicate_post_taxonomies_blacklist', '', 'yes'),
(164, 'duplicate_post_blacklist', '', 'yes'),
(165, 'duplicate_post_types_enabled', 'a:7:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:17:"theme-slider-home";i:3;s:14:"theme-projects";i:4;s:14:"theme-products";i:5;s:20:"theme-gallery-images";i:6;s:20:"theme-gallery-videos";}', 'yes'),
(166, 'duplicate_post_show_row', '1', 'yes'),
(167, 'duplicate_post_show_adminbar', '1', 'yes'),
(168, 'duplicate_post_show_submitbox', '1', 'yes'),
(170, 'wpmf_gallery_image_size_value', '["thumbnail","medium","large","full"]', 'yes'),
(171, 'wpmf_padding_masonry', '5', 'yes'),
(172, 'wpmf_padding_portfolio', '10', 'yes'),
(173, 'wpmf_usegellery', '1', 'yes'),
(174, 'wpmf_useorder', '1', 'yes'),
(175, 'wpmf_folder_option1', '0', 'yes'),
(176, 'wpmf_option_override', '0', 'yes'),
(177, 'wpmf_active_media', '0', 'yes'),
(178, 'wpmf_folder_option2', '1', 'yes'),
(179, 'wpmf_option_searchall', '0', 'yes'),
(180, 'wpmf_usegellery_lightbox', '1', 'yes'),
(181, 'wpmf_media_rename', '0', 'yes'),
(182, 'wpmf_patern_rename', '{sitename} - {foldername} - #', 'yes'),
(183, 'wpmf_rename_number', '0', 'yes'),
(184, 'wpmf_option_media_remove', '0', 'yes'),
(185, 'wpmf_default_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(186, 'wpmf_selected_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(187, 'wpmf_weight_default', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(188, 'wpmf_weight_selected', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(189, 'wpmf_color_singlefile', '{"bgdownloadlink":"#444444","hvdownloadlink":"#888888","fontdownloadlink":"#ffffff","hoverfontcolor":"#ffffff"}', 'yes'),
(190, 'wpmf_option_singlefile', '0', 'yes'),
(191, 'external_updates-wp-media-folder', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1479224159;s:14:"checkedVersion";s:5:"3.3.3";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:15:"wp-media-folder";s:7:"version";s:5:"3.8.5";s:8:"homepage";s:61:"https://www.joomunited.com/wordpress-products/wp-media-folder";s:12:"download_url";s:120:"https://www.joomunited.com/index.php?option=com_juupdater&task=download.download&extension=wp-media-folder&version=3.8.5";s:14:"upgrade_notice";s:29:"Upgrade to the latest version";s:8:"filename";s:35:"wp-media-folder/wp-media-folder.php";}}', 'no'),
(251, 'theme_settings', 'a:17:{s:18:"theme_phone_text_1";s:12:"(01) 2773990";s:18:"theme_phone_text_2";s:0:"";s:16:"theme_cel_text_1";s:9:"989090559";s:16:"theme_cel_text_2";s:0:"";s:16:"theme_email_text";s:22:"ventas@espresac.com.pe";s:18:"theme_address_text";s:62:"Av. Dos - Mz- D8 lt 8 Urb Los Cedros \nSanta Anita - Lima Perú";s:19:"theme_atention_text";s:0:"";s:19:"theme_meta_brochure";s:0:"";s:20:"theme_social_fb_text";s:39:"https://www.facebook.com/Ingenioartweb/";s:25:"theme_social_twitter_text";s:39:"https://www.facebook.com/Ingenioartweb/";s:25:"theme_social_youtube_text";s:39:"https://www.facebook.com/Ingenioartweb/";s:27:"theme_social_instagram_text";s:0:"";s:26:"theme_social_linkedin_text";s:0:"";s:23:"theme_social_gplus_text";s:0:"";s:27:"theme_social_pinterest_text";s:0:"";s:17:"theme_mision_text";s:336:"Ser una Empresa Constructora orientada a satisfacer altos estándares de calidad en nuestras obras así como en la Gerencia de Proyectos a nivel nacional. Basada en un grupo humano integrado e identificado con los valores de honestidad, Responsabilidad y compromiso generando beneficios a sus accionistas y bienestar a sus trabajadores.";s:17:"theme_vision_text";s:336:"Ser una Empresa Constructora orientada a satisfacer altos estándares de calidad en nuestras obras así como en la Gerencia de Proyectos a nivel nacional. Basada en un grupo humano integrado e identificado con los valores de honestidad, Responsabilidad y compromiso generando beneficios a sus accionistas y bienestar a sus trabajadores.";}', 'yes'),
(268, '_wpmf_import_notice_flag', 'no', 'yes'),
(316, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(367, 'duplicate_post_title_prefix', '', 'yes'),
(368, 'duplicate_post_title_suffix', '', 'yes'),
(369, 'duplicate_post_increase_menu_order_by', '', 'yes'),
(370, 'duplicate_post_roles', 'a:2:{i:0;s:13:"administrator";i:1;s:6:"editor";}', 'yes'),
(815, 'producto_category_children', 'a:0:{}', 'yes'),
(996, 'wpmf-category_children', 'a:0:{}', 'yes'),
(1092, 'duplicate_post_version', '3.0.3', 'no') ;

#
# End of data contents of table `wp_espresac_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_espresac_postmeta`
#

DROP TABLE IF EXISTS `wp_espresac_postmeta`;


#
# Table structure of table `wp_espresac_postmeta`
#

CREATE TABLE `wp_espresac_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_espresac_postmeta`
#
INSERT INTO `wp_espresac_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1479140548'),
(4, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1479140427:1'),
(7, 5, 'mbox_order_post', '1'),
(8, 5, 'mb_featured_banner', ''),
(9, 5, 'mb_image_gallery', ''),
(10, 5, 'theme_featured_item_check', 'off'),
(11, 5, 'mbox_order_post', '1'),
(12, 7, '_edit_last', '1'),
(13, 7, 'mbox_order_post', '2'),
(14, 7, 'mb_featured_banner', ''),
(15, 7, 'mb_image_gallery', ',47,47,47'),
(16, 7, 'theme_featured_item_check', 'off'),
(17, 7, 'mbox_order_post', '2'),
(18, 7, '_edit_lock', '1479229800:1'),
(19, 9, '_edit_last', '1'),
(20, 9, '_edit_lock', '1479140458:1'),
(21, 9, 'mbox_order_post', '3'),
(22, 9, 'mb_featured_banner', ''),
(23, 9, 'mb_image_gallery', ''),
(24, 9, 'theme_featured_item_check', 'off'),
(25, 9, 'mbox_order_post', '3'),
(26, 11, '_edit_last', '1'),
(27, 11, '_edit_lock', '1479232445:1'),
(28, 11, 'mbox_order_post', '4'),
(29, 11, 'mb_featured_banner', ''),
(30, 11, 'mb_image_gallery', ''),
(31, 11, 'theme_featured_item_check', 'off'),
(32, 11, 'mbox_order_post', '4'),
(33, 13, '_edit_last', '1'),
(34, 13, '_edit_lock', '1479240362:1'),
(35, 13, 'mbox_order_post', '5'),
(36, 13, 'mb_featured_banner', ''),
(37, 13, 'mb_image_gallery', ''),
(38, 13, 'theme_featured_item_check', 'off'),
(39, 13, 'mbox_order_post', '5'),
(40, 15, '_edit_last', '1'),
(41, 15, 'mbox_order_post', '6'),
(42, 15, 'mb_featured_banner', ''),
(43, 15, 'mb_image_gallery', ''),
(44, 15, 'theme_featured_item_check', 'off'),
(45, 15, 'mbox_order_post', '6'),
(46, 15, '_edit_lock', '1479140510:1'),
(47, 17, '_edit_last', '1'),
(48, 17, '_edit_lock', '1479140524:1'),
(49, 17, 'mbox_order_post', '7'),
(50, 17, 'mb_featured_banner', ''),
(51, 17, 'mb_image_gallery', ''),
(52, 17, 'theme_featured_item_check', 'off'),
(53, 17, 'mbox_order_post', '7'),
(63, 20, '_menu_item_type', 'post_type'),
(64, 20, '_menu_item_menu_item_parent', '0'),
(65, 20, '_menu_item_object_id', '15'),
(66, 20, '_menu_item_object', 'page'),
(67, 20, '_menu_item_target', ''),
(68, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 20, '_menu_item_xfn', ''),
(70, 20, '_menu_item_url', ''),
(72, 21, '_menu_item_type', 'post_type'),
(73, 21, '_menu_item_menu_item_parent', '0'),
(74, 21, '_menu_item_object_id', '17'),
(75, 21, '_menu_item_object', 'page'),
(76, 21, '_menu_item_target', ''),
(77, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 21, '_menu_item_xfn', ''),
(79, 21, '_menu_item_url', ''),
(81, 22, '_menu_item_type', 'post_type'),
(82, 22, '_menu_item_menu_item_parent', '0'),
(83, 22, '_menu_item_object_id', '7'),
(84, 22, '_menu_item_object', 'page'),
(85, 22, '_menu_item_target', ''),
(86, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 22, '_menu_item_xfn', ''),
(88, 22, '_menu_item_url', ''),
(90, 23, '_menu_item_type', 'post_type'),
(91, 23, '_menu_item_menu_item_parent', '0'),
(92, 23, '_menu_item_object_id', '13'),
(93, 23, '_menu_item_object', 'page'),
(94, 23, '_menu_item_target', ''),
(95, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 23, '_menu_item_xfn', ''),
(97, 23, '_menu_item_url', ''),
(99, 24, '_menu_item_type', 'post_type'),
(100, 24, '_menu_item_menu_item_parent', '0'),
(101, 24, '_menu_item_object_id', '5'),
(102, 24, '_menu_item_object', 'page'),
(103, 24, '_menu_item_target', ''),
(104, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 24, '_menu_item_xfn', ''),
(106, 24, '_menu_item_url', ''),
(108, 25, '_menu_item_type', 'post_type'),
(109, 25, '_menu_item_menu_item_parent', '0'),
(110, 25, '_menu_item_object_id', '11'),
(111, 25, '_menu_item_object', 'page'),
(112, 25, '_menu_item_target', ''),
(113, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 25, '_menu_item_xfn', '') ;
INSERT INTO `wp_espresac_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(115, 25, '_menu_item_url', ''),
(117, 26, '_menu_item_type', 'post_type'),
(118, 26, '_menu_item_menu_item_parent', '0'),
(119, 26, '_menu_item_object_id', '9'),
(120, 26, '_menu_item_object', 'page'),
(121, 26, '_menu_item_target', ''),
(122, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(123, 26, '_menu_item_xfn', ''),
(124, 26, '_menu_item_url', ''),
(126, 27, '_edit_last', '1'),
(127, 27, '_edit_lock', '1479142186:1'),
(128, 28, '_wp_attached_file', '2016/11/sample-slider.jpg'),
(129, 28, 'wpmf_size', '115028'),
(130, 28, 'wpmf_filetype', 'jpg'),
(131, 28, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:580;s:4:"file";s:25:"2016/11/sample-slider.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"sample-slider-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"sample-slider-300x91.jpg";s:5:"width";i:300;s:6:"height";i:91;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"sample-slider-768x232.jpg";s:5:"width";i:768;s:6:"height";i:232;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"sample-slider-1024x309.jpg";s:5:"width";i:1024;s:6:"height";i:309;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"sample-slider-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:25:"sample-slider-784x237.jpg";s:5:"width";i:784;s:6:"height";i:237;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"5";s:8:"quantity";d:86;s:4:"webp";i:0;}}'),
(132, 27, '_thumbnail_id', '28'),
(133, 27, 'mbox_order_post', '1'),
(134, 27, 'mb_image_gallery', ''),
(135, 27, 'theme_featured_item_check', 'off'),
(136, 27, 'mb_rev_slider_select', 'parallaxtoleft'),
(137, 29, '_thumbnail_id', '28'),
(138, 29, 'mbox_order_post', '1'),
(139, 29, 'mb_image_gallery', ''),
(140, 29, 'theme_featured_item_check', 'off'),
(141, 29, 'mb_rev_slider_select', 'parallaxtoleft'),
(142, 29, '_dp_original', '27'),
(143, 29, '_edit_last', '1'),
(144, 29, '_edit_lock', '1479142370:1'),
(145, 30, '_thumbnail_id', '28'),
(146, 30, 'mbox_order_post', '1'),
(147, 30, 'mb_image_gallery', ''),
(148, 30, 'theme_featured_item_check', 'off'),
(149, 30, 'mb_rev_slider_select', 'parallaxtoleft'),
(151, 30, '_dp_original', '29'),
(152, 30, '_edit_last', '1'),
(153, 30, '_edit_lock', '1479142380:1'),
(154, 31, '_edit_last', '1'),
(155, 31, '_edit_lock', '1479146520:1'),
(156, 32, '_wp_attached_file', '2016/11/sample-products.jpg'),
(157, 32, 'wpmf_size', '66661'),
(158, 32, 'wpmf_filetype', 'jpg'),
(159, 32, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:980;s:6:"height";i:722;s:4:"file";s:27:"2016/11/sample-products.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"sample-products-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"sample-products-300x221.jpg";s:5:"width";i:300;s:6:"height";i:221;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"sample-products-768x566.jpg";s:5:"width";i:768;s:6:"height";i:566;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"sample-products-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:27:"sample-products-475x350.jpg";s:5:"width";i:475;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"5";s:8:"quantity";d:100;s:4:"webp";i:0;}}'),
(160, 31, '_thumbnail_id', '32'),
(161, 31, 'mbox_order_post', '3'),
(162, 31, 'mb_image_gallery', ''),
(163, 31, 'theme_featured_item_check', 'off'),
(164, 31, 'mb_code_product', ''),
(165, 31, 'product_price', 'a:2:{s:6:"normal";s:0:"";s:5:"offer";s:0:"";}'),
(166, 31, 'mb_size_product', ''),
(167, 33, '_thumbnail_id', '32'),
(168, 33, 'mbox_order_post', '2'),
(169, 33, 'mb_image_gallery', ''),
(170, 33, 'theme_featured_item_check', 'off'),
(171, 33, 'mb_code_product', ''),
(172, 33, 'product_price', 'a:2:{s:6:"normal";s:0:"";s:5:"offer";s:0:"";}'),
(173, 33, 'mb_size_product', ''),
(174, 33, '_dp_original', '31'),
(175, 33, '_edit_last', '1'),
(176, 33, '_edit_lock', '1479146683:1'),
(177, 34, '_thumbnail_id', '32'),
(178, 34, 'mbox_order_post', '1'),
(179, 34, 'mb_image_gallery', ',51,51,51'),
(180, 34, 'theme_featured_item_check', 'off'),
(181, 34, 'mb_code_product', ''),
(182, 34, 'product_price', 'a:2:{s:6:"normal";s:0:"";s:5:"offer";s:0:"";}'),
(183, 34, 'mb_size_product', ''),
(185, 34, '_dp_original', '33'),
(186, 34, '_edit_last', '1'),
(187, 34, '_edit_lock', '1479231976:1'),
(188, 38, '_edit_last', '1'),
(189, 38, '_edit_lock', '1479238694:1'),
(190, 39, '_wp_attached_file', '2016/11/sample-project.jpg'),
(191, 39, 'wpmf_size', '39848'),
(192, 39, 'wpmf_filetype', 'jpg'),
(193, 39, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:600;s:6:"height";i:360;s:4:"file";s:26:"2016/11/sample-project.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"sample-project-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"sample-project-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"sample-project-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:26:"sample-project-583x350.jpg";s:5:"width";i:583;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"5";s:8:"quantity";d:100;s:4:"webp";i:0;}}'),
(194, 38, '_thumbnail_id', '39'),
(195, 38, 'mbox_order_post', '1'),
(196, 38, 'mb_image_gallery', ',39,39,39'),
(197, 38, 'theme_featured_item_check', 'off'),
(198, 40, '_thumbnail_id', '39'),
(199, 40, 'mbox_order_post', '2'),
(200, 40, 'mb_image_gallery', ''),
(201, 40, 'theme_featured_item_check', 'off'),
(202, 40, '_dp_original', '38'),
(203, 40, '_edit_last', '1'),
(204, 40, '_edit_lock', '1479153209:1'),
(205, 41, '_thumbnail_id', '39'),
(206, 41, 'mbox_order_post', '3'),
(207, 41, 'mb_image_gallery', ''),
(208, 41, 'theme_featured_item_check', 'off'),
(210, 41, '_dp_original', '40'),
(211, 41, '_edit_last', '1'),
(212, 41, '_edit_lock', '1479153236:1'),
(213, 42, '_dp_original', '1'),
(214, 42, '_edit_last', '1'),
(217, 42, '_edit_lock', '1479155350:1'),
(219, 44, '_dp_original', '42'),
(220, 44, '_edit_last', '1'),
(223, 44, '_edit_lock', '1479155552:1'),
(224, 7, '_wp_page_template', 'page-templates/page-nosotros.php') ;
INSERT INTO `wp_espresac_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(225, 47, '_wp_attached_file', '2016/11/nosotros_constructora_inmobiliaria_proyectos_edificaciones_estructurales_2.jpg'),
(226, 47, 'wpmf_size', '270606'),
(227, 47, 'wpmf_filetype', 'jpg'),
(228, 47, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:980;s:6:"height";i:873;s:4:"file";s:86:"2016/11/nosotros_constructora_inmobiliaria_proyectos_edificaciones_estructurales_2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:86:"nosotros_constructora_inmobiliaria_proyectos_edificaciones_estructurales_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:86:"nosotros_constructora_inmobiliaria_proyectos_edificaciones_estructurales_2-300x267.jpg";s:5:"width";i:300;s:6:"height";i:267;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:86:"nosotros_constructora_inmobiliaria_proyectos_edificaciones_estructurales_2-768x684.jpg";s:5:"width";i:768;s:6:"height";i:684;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:86:"nosotros_constructora_inmobiliaria_proyectos_edificaciones_estructurales_2-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:86:"nosotros_constructora_inmobiliaria_proyectos_edificaciones_estructurales_2-393x350.jpg";s:5:"width";i:393;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"8";s:8:"quantity";d:67;s:4:"webp";i:0;}}'),
(229, 48, '_menu_item_type', 'post_type'),
(230, 48, '_menu_item_menu_item_parent', '26'),
(231, 48, '_menu_item_object_id', '34'),
(232, 48, '_menu_item_object', 'theme-products'),
(233, 48, '_menu_item_target', ''),
(234, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(235, 48, '_menu_item_xfn', ''),
(236, 48, '_menu_item_url', ''),
(238, 49, '_menu_item_type', 'post_type'),
(239, 49, '_menu_item_menu_item_parent', '26'),
(240, 49, '_menu_item_object_id', '33'),
(241, 49, '_menu_item_object', 'theme-products'),
(242, 49, '_menu_item_target', ''),
(243, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(244, 49, '_menu_item_xfn', ''),
(245, 49, '_menu_item_url', ''),
(247, 50, '_menu_item_type', 'post_type'),
(248, 50, '_menu_item_menu_item_parent', '26'),
(249, 50, '_menu_item_object_id', '31'),
(250, 50, '_menu_item_object', 'theme-products'),
(251, 50, '_menu_item_target', ''),
(252, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(253, 50, '_menu_item_xfn', ''),
(254, 50, '_menu_item_url', ''),
(256, 51, '_wp_attached_file', '2016/11/carousel_productos.jpg'),
(257, 51, 'wpmf_size', '13308'),
(258, 51, 'wpmf_filetype', 'jpg'),
(259, 51, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:448;s:6:"height";i:262;s:4:"file";s:30:"2016/11/carousel_productos.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"carousel_productos-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"carousel_productos-300x175.jpg";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:30:"carousel_productos-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"5";s:8:"quantity";d:100;s:4:"webp";i:0;}}'),
(260, 11, '_wp_page_template', 'page-templates/page-projects.php'),
(261, 52, '_thumbnail_id', '39'),
(262, 52, 'mbox_order_post', '4'),
(263, 52, 'mb_image_gallery', ''),
(264, 52, 'theme_featured_item_check', 'off'),
(266, 52, '_dp_original', '41'),
(267, 52, '_edit_last', '1'),
(268, 52, '_edit_lock', '1479236887:1'),
(269, 53, '_edit_last', '1'),
(270, 53, '_edit_lock', '1479238891:1'),
(271, 54, '_wp_attached_file', '2016/11/sample-gallery.jpg'),
(272, 54, 'wpmf_size', '38543'),
(273, 54, 'wpmf_filetype', 'jpg'),
(274, 54, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:980;s:6:"height";i:599;s:4:"file";s:26:"2016/11/sample-gallery.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"sample-gallery-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"sample-gallery-300x183.jpg";s:5:"width";i:300;s:6:"height";i:183;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"sample-gallery-768x469.jpg";s:5:"width";i:768;s:6:"height";i:469;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"sample-gallery-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:26:"sample-gallery-573x350.jpg";s:5:"width";i:573;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:2:"12";s:8:"quantity";d:100;s:4:"webp";i:0;}}'),
(275, 53, '_thumbnail_id', '54'),
(276, 53, 'mbox_order_post', '1'),
(277, 53, 'mb_image_gallery', ''),
(278, 53, 'theme_featured_item_check', 'off'),
(279, 55, '_thumbnail_id', '54'),
(280, 55, 'mbox_order_post', '1'),
(281, 55, 'mb_image_gallery', ''),
(282, 55, 'theme_featured_item_check', 'off'),
(283, 55, '_dp_original', '53'),
(284, 55, '_edit_last', '1'),
(285, 55, '_edit_lock', '1479239048:1'),
(286, 56, '_thumbnail_id', '54'),
(287, 56, 'mbox_order_post', '1'),
(288, 56, 'mb_image_gallery', ''),
(289, 56, 'theme_featured_item_check', 'off'),
(291, 56, '_dp_original', '55'),
(292, 56, '_edit_last', '1'),
(293, 56, '_edit_lock', '1479239057:1'),
(294, 57, '_thumbnail_id', '54'),
(295, 57, 'mbox_order_post', '1'),
(296, 57, 'mb_image_gallery', ''),
(297, 57, 'theme_featured_item_check', 'off'),
(299, 57, '_dp_original', '56'),
(300, 57, '_edit_last', '1'),
(301, 57, '_edit_lock', '1479239065:1'),
(302, 13, '_wp_page_template', 'page-templates/page-images.php'),
(303, 58, '_thumbnail_id', '54'),
(304, 58, 'mbox_order_post', '1'),
(305, 58, 'mb_image_gallery', ''),
(306, 58, 'theme_featured_item_check', 'off'),
(308, 58, '_dp_original', '57'),
(309, 59, '_thumbnail_id', '54'),
(310, 59, 'mbox_order_post', '1'),
(311, 59, 'mb_image_gallery', ''),
(312, 59, 'theme_featured_item_check', 'off'),
(314, 59, '_dp_original', '58'),
(315, 60, '_thumbnail_id', '54'),
(316, 60, 'mbox_order_post', '1'),
(317, 60, 'mb_image_gallery', ''),
(318, 60, 'theme_featured_item_check', 'off'),
(320, 60, '_dp_original', '59'),
(321, 61, '_thumbnail_id', '54'),
(322, 61, 'mbox_order_post', '1'),
(323, 61, 'mb_image_gallery', ''),
(324, 61, 'theme_featured_item_check', 'off'),
(326, 61, '_dp_original', '60') ;

#
# End of data contents of table `wp_espresac_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_espresac_posts`
#

DROP TABLE IF EXISTS `wp_espresac_posts`;


#
# Table structure of table `wp_espresac_posts`
#

CREATE TABLE `wp_espresac_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_espresac_posts`
#
INSERT INTO `wp_espresac_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-11-14 15:12:55', '2016-11-14 15:12:55', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2016-11-14 15:12:55', '2016-11-14 15:12:55', '', 0, 'http://localhost/espresac/?p=1', 0, 'post', '', 1),
(2, 1, '2016-11-14 15:12:55', '2016-11-14 15:12:55', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/espresac/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2016-11-14 16:22:28', '2016-11-14 16:22:28', '', 0, 'http://localhost/espresac/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-11-14 15:14:37', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-11-14 15:14:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/espresac/?p=3', 0, 'post', '', 0),
(4, 1, '2016-11-14 16:22:28', '2016-11-14 16:22:28', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/espresac/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-11-14 16:22:28', '2016-11-14 16:22:28', '', 2, 'http://localhost/espresac/2016/11/14/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2016-11-14 16:22:46', '2016-11-14 16:22:46', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2016-11-14 16:22:46', '2016-11-14 16:22:46', '', 0, 'http://localhost/espresac/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-11-14 16:22:46', '2016-11-14 16:22:46', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-11-14 16:22:46', '2016-11-14 16:22:46', '', 5, 'http://localhost/espresac/2016/11/14/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-11-14 16:23:02', '2016-11-14 16:23:02', 'Somos una empresa que fusiona la experiencia la Ingeniería y el talento humano para brindar soluciones integrales a nuestros clientes.\r\nEstamos a la vanguardia con los continuos cambios de procesos y tecnología para poder estar a la altura y competencias del mercado. Teniendo muy en cuenta que lo que hacemos será visto, usado y habitado por nuestros clientes; siendo nuestra prioridad la Calidad, Seguridad y puntualidad en nuestros proyectos; buscando así ser líderes en los segmentos donde actuamos y siendo reconocidos como la empresa constructora más confiable, superando las expectativas de nuestros clientes.', 'Empresa', 'we help interesting companies create and improve industry products and services through long lasting and mutually rewarding relationships.\r\n\r\nwe help interesting companies create and improve industry products and services through long lasting and mutually rewarding relationships.we help interesting companies create and improve industry products and.', 'publish', 'closed', 'closed', '', 'empresa', '', '', '2016-11-14 22:50:29', '2016-11-14 22:50:29', '', 0, 'http://localhost/espresac/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-11-14 16:23:02', '2016-11-14 16:23:02', '', 'Empresa', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-11-14 16:23:02', '2016-11-14 16:23:02', '', 7, 'http://localhost/espresac/2016/11/14/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-11-14 16:23:17', '2016-11-14 16:23:17', '', 'Productos', '', 'publish', 'closed', 'closed', '', 'productos', '', '', '2016-11-14 16:23:17', '2016-11-14 16:23:17', '', 0, 'http://localhost/espresac/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-11-14 16:23:17', '2016-11-14 16:23:17', '', 'Productos', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-11-14 16:23:17', '2016-11-14 16:23:17', '', 9, 'http://localhost/espresac/2016/11/14/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-11-14 16:23:31', '2016-11-14 16:23:31', '', 'Obras Realizadas', '', 'publish', 'closed', 'closed', '', 'obras-realizadas', '', '', '2016-11-15 17:54:05', '2016-11-15 17:54:05', '', 0, 'http://localhost/espresac/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-11-14 16:23:31', '2016-11-14 16:23:31', '', 'Obras Realizadas', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-11-14 16:23:31', '2016-11-14 16:23:31', '', 11, 'http://localhost/espresac/2016/11/14/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-11-14 16:23:45', '2016-11-14 16:23:45', '', 'Galería', '', 'publish', 'closed', 'closed', '', 'galeria', '', '', '2016-11-15 20:06:02', '2016-11-15 20:06:02', '', 0, 'http://localhost/espresac/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-11-14 16:23:45', '2016-11-14 16:23:45', '', 'Galería', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-11-14 16:23:45', '2016-11-14 16:23:45', '', 13, 'http://localhost/espresac/2016/11/14/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-11-14 16:24:08', '2016-11-14 16:24:08', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-11-14 16:24:08', '2016-11-14 16:24:08', '', 0, 'http://localhost/espresac/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-11-14 16:24:08', '2016-11-14 16:24:08', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-11-14 16:24:08', '2016-11-14 16:24:08', '', 15, 'http://localhost/espresac/2016/11/14/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-11-14 16:24:22', '2016-11-14 16:24:22', '', 'Contáctenos', '', 'publish', 'closed', 'closed', '', 'contactenos', '', '', '2016-11-14 16:24:22', '2016-11-14 16:24:22', '', 0, 'http://localhost/espresac/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-11-14 16:24:22', '2016-11-14 16:24:22', '', 'Contáctenos', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-11-14 16:24:22', '2016-11-14 16:24:22', '', 17, 'http://localhost/espresac/2016/11/14/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-11-14 16:24:40', '2016-11-14 16:24:40', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2016-11-14 23:00:07', '2016-11-14 23:00:07', '', 0, 'http://localhost/espresac/?p=20', 9, 'nav_menu_item', '', 0),
(21, 1, '2016-11-14 16:24:40', '2016-11-14 16:24:40', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2016-11-14 23:00:07', '2016-11-14 23:00:07', '', 0, 'http://localhost/espresac/?p=21', 10, 'nav_menu_item', '', 0),
(22, 1, '2016-11-14 16:24:40', '2016-11-14 16:24:40', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2016-11-14 23:00:05', '2016-11-14 23:00:05', '', 0, 'http://localhost/espresac/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2016-11-14 16:24:40', '2016-11-14 16:24:40', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2016-11-14 23:00:07', '2016-11-14 23:00:07', '', 0, 'http://localhost/espresac/?p=23', 8, 'nav_menu_item', '', 0),
(24, 1, '2016-11-14 16:24:41', '2016-11-14 16:24:41', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2016-11-14 23:00:05', '2016-11-14 23:00:05', '', 0, 'http://localhost/espresac/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2016-11-14 16:24:41', '2016-11-14 16:24:41', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-11-14 23:00:07', '2016-11-14 23:00:07', '', 0, 'http://localhost/espresac/?p=25', 7, 'nav_menu_item', '', 0),
(26, 1, '2016-11-14 16:24:41', '2016-11-14 16:24:41', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-11-14 23:00:05', '2016-11-14 23:00:05', '', 0, 'http://localhost/espresac/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2016-11-14 16:51:59', '2016-11-14 16:51:59', '', 'Soluciones en Prefabricados', '', 'publish', 'open', 'closed', '', 'soluciones-en-prefabricados', '', '', '2016-11-14 16:52:06', '2016-11-14 16:52:06', '', 0, 'http://localhost/espresac/?post_type=theme-slider-home&#038;p=27', 0, 'theme-slider-home', '', 0),
(28, 1, '2016-11-14 16:51:39', '2016-11-14 16:51:39', '', 'sample-slider', '', 'inherit', 'open', 'closed', '', 'sample-slider', '', '', '2016-11-14 16:51:39', '2016-11-14 16:51:39', '', 27, 'http://localhost/espresac/wp-content/uploads/2016/11/sample-slider.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2016-11-14 16:52:42', '2016-11-14 16:52:42', '', 'Soluciones en Prefabricados 2', '', 'publish', 'open', 'closed', '', 'soluciones-en-prefabricados-2', '', '', '2016-11-14 16:52:49', '2016-11-14 16:52:49', '', 0, 'http://localhost/espresac/?post_type=theme-slider-home&#038;p=29', 0, 'theme-slider-home', '', 0),
(30, 1, '2016-11-14 16:52:53', '2016-11-14 16:52:53', '', 'Soluciones en Prefabricados 3', '', 'publish', 'open', 'closed', '', 'soluciones-en-prefabricados-3', '', '', '2016-11-14 16:53:00', '2016-11-14 16:53:00', '', 0, 'http://localhost/espresac/?post_type=theme-slider-home&#038;p=30', 0, 'theme-slider-home', '', 0),
(31, 1, '2016-11-14 18:04:20', '2016-11-14 18:04:20', '', 'Adoquines', '', 'publish', 'open', 'closed', '', 'adoquines', '', '', '2016-11-14 18:04:20', '2016-11-14 18:04:20', '', 0, 'http://localhost/espresac/?post_type=theme-products&#038;p=31', 0, 'theme-products', '', 0),
(32, 1, '2016-11-14 18:04:00', '2016-11-14 18:04:00', '', 'sample-products', '', 'inherit', 'open', 'closed', '', 'sample-products', '', '', '2016-11-14 18:04:00', '2016-11-14 18:04:00', '', 31, 'http://localhost/espresac/wp-content/uploads/2016/11/sample-products.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2016-11-14 18:04:28', '2016-11-14 18:04:28', '', 'Baldosas', '', 'publish', 'open', 'closed', '', 'baldosas', '', '', '2016-11-14 18:04:43', '2016-11-14 18:04:43', '', 0, 'http://localhost/espresac/?post_type=theme-products&#038;p=33', 0, 'theme-products', '', 0),
(34, 1, '2016-11-14 18:04:45', '2016-11-14 18:04:45', '', 'Bancas', '', 'publish', 'open', 'closed', '', 'bancas', '', '', '2016-11-15 17:16:15', '2016-11-15 17:16:15', '', 0, 'http://localhost/espresac/?post_type=theme-products&#038;p=34', 0, 'theme-products', '', 0),
(35, 1, '2016-11-14 19:28:32', '2016-11-14 19:28:32', '', 'Empresa', 'we help interesting companies create and improve industry products and services \r\nthrough long lasting and mutually rewarding relationships.\r\n\r\nwe help interesting companies create and improve industry products and services \r\nthrough long lasting and mutually rewarding relationships.we help interesting companies create and improve industry products and.', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-11-14 19:28:32', '2016-11-14 19:28:32', '', 7, 'http://localhost/espresac/2016/11/14/7-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-11-14 19:31:13', '2016-11-14 19:31:13', '', 'Empresa', 'we help interesting companies create and improve industry products and services through long lasting and mutually rewarding relationships.\r\n\r\nwe help interesting companies create and improve industry products and services \r\nthrough long lasting and mutually rewarding relationships.we help interesting companies create and improve industry products and.', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-11-14 19:31:13', '2016-11-14 19:31:13', '', 7, 'http://localhost/espresac/2016/11/14/7-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-11-14 19:35:30', '2016-11-14 19:35:30', '', 'Empresa', 'we help interesting companies create and improve industry products and services through long lasting and mutually rewarding relationships.\r\n\r\nwe help interesting companies create and improve industry products and services through long lasting and mutually rewarding relationships.we help interesting companies create and improve industry products and.', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-11-14 19:35:30', '2016-11-14 19:35:30', '', 7, 'http://localhost/espresac/2016/11/14/7-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-11-14 19:52:54', '2016-11-14 19:52:54', '', 'Muro Perimétrico Obra Av. Arriola Lima', '', 'publish', 'open', 'closed', '', 'muro-perimetrico-obra-av-arriola-lima', '', '', '2016-11-15 19:24:23', '2016-11-15 19:24:23', '', 0, 'http://localhost/espresac/?post_type=theme-projects&#038;p=38', 0, 'theme-projects', '', 0),
(39, 1, '2016-11-14 19:52:43', '2016-11-14 19:52:43', '', 'sample-project', '', 'inherit', 'open', 'closed', '', 'sample-project', '', '', '2016-11-14 19:52:43', '2016-11-14 19:52:43', '', 38, 'http://localhost/espresac/wp-content/uploads/2016/11/sample-project.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2016-11-14 19:53:23', '2016-11-14 19:53:23', '', 'Muro Perimétrico Obra Av. Arriola Lima', '', 'publish', 'open', 'closed', '', 'muro-perimetrico-obra-av-arriola-lima-2', '', '', '2016-11-14 19:53:29', '2016-11-14 19:53:29', '', 0, 'http://localhost/espresac/?post_type=theme-projects&#038;p=40', 0, 'theme-projects', '', 0),
(41, 1, '2016-11-14 19:53:43', '2016-11-14 19:53:43', '', 'Muro Perimétrico Obra Av. Arriola Lima', '', 'publish', 'open', 'closed', '', 'muro-perimetrico-obra-av-arriola-lima-3', '', '', '2016-11-14 19:53:56', '2016-11-14 19:53:56', '', 0, 'http://localhost/espresac/?post_type=theme-projects&#038;p=41', 0, 'theme-projects', '', 0),
(42, 1, '2016-11-14 20:29:02', '2016-11-14 20:29:02', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo-2', '', '', '2016-11-14 20:29:10', '2016-11-14 20:29:10', '', 0, 'http://localhost/espresac/?p=42', 0, 'post', '', 0),
(43, 1, '2016-11-14 20:29:10', '2016-11-14 20:29:10', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2016-11-14 20:29:10', '2016-11-14 20:29:10', '', 42, 'http://localhost/espresac/2016/11/14/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-11-14 20:29:14', '2016-11-14 20:29:14', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo-3', '', '', '2016-11-14 20:32:32', '2016-11-14 20:32:32', '', 0, 'http://localhost/espresac/?p=44', 0, 'post', '', 0),
(45, 1, '2016-11-14 20:32:32', '2016-11-14 20:32:32', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-11-14 20:32:32', '2016-11-14 20:32:32', '', 44, 'http://localhost/espresac/2016/11/14/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-11-14 22:35:13', '2016-11-14 22:35:13', 'Somos una empresa que fusiona la experiencia la Ingeniería y el talento humano para brindar soluciones integrales a nuestros clientes.\r\nEstamos a la vanguardia con los continuos cambios de procesos y tecnología para poder estar a la altura y competencias del mercado. Teniendo muy en cuenta que lo que hacemos será visto, usado y habitado por nuestros clientes; siendo nuestra prioridad la Calidad, Seguridad y puntualidad en nuestros proyectos; buscando así ser líderes en los segmentos donde actuamos y siendo reconocidos como la empresa constructora más confiable, superando las expectativas de nuestros clientes.', 'Empresa', 'we help interesting companies create and improve industry products and services through long lasting and mutually rewarding relationships.\r\n\r\nwe help interesting companies create and improve industry products and services through long lasting and mutually rewarding relationships.we help interesting companies create and improve industry products and.', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-11-14 22:35:13', '2016-11-14 22:35:13', '', 7, 'http://localhost/espresac/2016/11/14/7-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2016-11-14 22:46:42', '2016-11-14 22:46:42', '', 'nosotros_constructora_inmobiliaria_proyectos_edificaciones_estructurales_2', '', 'inherit', 'open', 'closed', '', 'nosotros_constructora_inmobiliaria_proyectos_edificaciones_estructurales_2', '', '', '2016-11-14 22:46:42', '2016-11-14 22:46:42', '', 7, 'http://localhost/espresac/wp-content/uploads/2016/11/nosotros_constructora_inmobiliaria_proyectos_edificaciones_estructurales_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2016-11-14 23:00:05', '2016-11-14 23:00:05', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2016-11-14 23:00:05', '2016-11-14 23:00:05', '', 0, 'http://localhost/espresac/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2016-11-14 23:00:06', '2016-11-14 23:00:06', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2016-11-14 23:00:06', '2016-11-14 23:00:06', '', 0, 'http://localhost/espresac/?p=49', 5, 'nav_menu_item', '', 0),
(50, 1, '2016-11-14 23:00:07', '2016-11-14 23:00:07', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2016-11-14 23:00:07', '2016-11-14 23:00:07', '', 0, 'http://localhost/espresac/?p=50', 6, 'nav_menu_item', '', 0),
(51, 1, '2016-11-15 17:15:51', '2016-11-15 17:15:51', '', 'carousel_productos', '', 'inherit', 'open', 'closed', '', 'carousel_productos', '', '', '2016-11-15 17:15:51', '2016-11-15 17:15:51', '', 34, 'http://localhost/espresac/wp-content/uploads/2016/11/carousel_productos.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2016-11-15 19:08:01', '2016-11-15 19:08:01', '', 'Muro Perimétrico Obra Av. Arriola Lima', '', 'publish', 'open', 'closed', '', 'muro-perimetrico-obra-av-arriola-lima-4', '', '', '2016-11-15 19:08:07', '2016-11-15 19:08:07', '', 0, 'http://localhost/espresac/?post_type=theme-projects&#038;p=52', 0, 'theme-projects', '', 0),
(53, 1, '2016-11-15 19:43:52', '2016-11-15 19:43:52', '', 'Imágen 1', '', 'publish', 'open', 'closed', '', 'imagen-1', '', '', '2016-11-15 22:42:03', '2016-11-15 22:42:03', '', 0, 'http://localhost/espresac/?post_type=theme-gallery-images&#038;p=53', 0, 'theme-gallery-images', '', 0),
(54, 1, '2016-11-15 19:43:04', '2016-11-15 19:43:04', '', 'sample-gallery', '', 'inherit', 'open', 'closed', '', 'sample-gallery', '', '', '2016-11-15 19:43:04', '2016-11-15 19:43:04', '', 53, 'http://localhost/espresac/wp-content/uploads/2016/11/sample-gallery.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2016-11-15 19:44:03', '2016-11-15 19:44:03', '', 'Imágen 1', '', 'publish', 'open', 'closed', '', 'imagen-1-2', '', '', '2016-11-15 22:42:03', '2016-11-15 22:42:03', '', 0, 'http://localhost/espresac/?post_type=theme-gallery-images&#038;p=55', 0, 'theme-gallery-images', '', 0),
(56, 1, '2016-11-15 19:44:10', '2016-11-15 19:44:10', '', 'Imágen 1', '', 'publish', 'open', 'closed', '', 'imagen-1-3', '', '', '2016-11-15 22:42:03', '2016-11-15 22:42:03', '', 0, 'http://localhost/espresac/?post_type=theme-gallery-images&#038;p=56', 0, 'theme-gallery-images', '', 0),
(57, 1, '2016-11-15 19:44:19', '2016-11-15 19:44:19', '', 'Imágen 1', '', 'publish', 'open', 'closed', '', 'imagen-1-4', '', '', '2016-11-15 22:42:02', '2016-11-15 22:42:02', '', 0, 'http://localhost/espresac/?post_type=theme-gallery-images&#038;p=57', 0, 'theme-gallery-images', '', 0),
(58, 1, '2016-11-15 22:42:02', '2016-11-15 22:42:02', '', 'Imágen 1', '', 'publish', 'open', 'closed', '', 'imagen-1-7', '', '', '2016-11-15 22:42:02', '2016-11-15 22:42:02', '', 0, 'http://localhost/espresac/?post_type=theme-gallery-images&#038;p=58', 0, 'theme-gallery-images', '', 0),
(59, 1, '2016-11-15 22:42:02', '2016-11-15 22:42:02', '', 'Imágen 1', '', 'publish', 'open', 'closed', '', 'imagen-1-6', '', '', '2016-11-15 22:42:02', '2016-11-15 22:42:02', '', 0, 'http://localhost/espresac/?post_type=theme-gallery-images&#038;p=59', 0, 'theme-gallery-images', '', 0),
(60, 1, '2016-11-15 22:42:02', '2016-11-15 22:42:02', '', 'Imágen 1', '', 'publish', 'open', 'closed', '', 'imagen-1-5', '', '', '2016-11-15 22:42:02', '2016-11-15 22:42:02', '', 0, 'http://localhost/espresac/?post_type=theme-gallery-images&#038;p=60', 0, 'theme-gallery-images', '', 0),
(61, 1, '2016-11-15 22:41:46', '0000-00-00 00:00:00', '', 'Imágen 1', '', 'draft', 'open', 'closed', '', '', '', '', '2016-11-15 22:41:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/espresac/?post_type=theme-gallery-images&p=61', 0, 'theme-gallery-images', '', 0) ;

#
# End of data contents of table `wp_espresac_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_espresac_term_relationships`
#

DROP TABLE IF EXISTS `wp_espresac_term_relationships`;


#
# Table structure of table `wp_espresac_term_relationships`
#

CREATE TABLE `wp_espresac_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_espresac_term_relationships`
#
INSERT INTO `wp_espresac_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(28, 3, 0),
(32, 4, 0),
(39, 5, 0),
(42, 1, 0),
(44, 1, 0),
(47, 6, 0),
(48, 2, 0),
(49, 2, 0),
(50, 2, 0),
(51, 4, 0),
(54, 7, 0) ;

#
# End of data contents of table `wp_espresac_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_espresac_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_espresac_term_taxonomy`;


#
# Table structure of table `wp_espresac_term_taxonomy`
#

CREATE TABLE `wp_espresac_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_espresac_term_taxonomy`
#
INSERT INTO `wp_espresac_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 10),
(3, 3, 'wpmf-category', '', 0, 0),
(4, 4, 'wpmf-category', '', 0, 2),
(5, 5, 'wpmf-category', '', 0, 0),
(6, 6, 'wpmf-category', '', 0, 1),
(7, 7, 'wpmf-category', '', 0, 0) ;

#
# End of data contents of table `wp_espresac_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_espresac_termmeta`
#

DROP TABLE IF EXISTS `wp_espresac_termmeta`;


#
# Table structure of table `wp_espresac_termmeta`
#

CREATE TABLE `wp_espresac_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_espresac_termmeta`
#

#
# End of data contents of table `wp_espresac_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_espresac_terms`
#

DROP TABLE IF EXISTS `wp_espresac_terms`;


#
# Table structure of table `wp_espresac_terms`
#

CREATE TABLE `wp_espresac_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_espresac_terms`
#
INSERT INTO `wp_espresac_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menú Principal', 'menu-principal', 0),
(3, 'SLIDER HOME', 'slider-home', 1),
(4, 'PRODUCTOS', 'productos', 1),
(5, 'PROJECTOS', 'projectos', 1),
(6, 'NOSOTROS', 'nosotros', 1),
(7, 'GALERÍA IMÁGENES', 'galeria-imagenes', 1) ;

#
# End of data contents of table `wp_espresac_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_espresac_usermeta`
#

DROP TABLE IF EXISTS `wp_espresac_usermeta`;


#
# Table structure of table `wp_espresac_usermeta`
#

CREATE TABLE `wp_espresac_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_espresac_usermeta`
#
INSERT INTO `wp_espresac_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'espresac'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_espresac_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_espresac_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_espresac_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'session_tokens', 'a:11:{s:64:"8821946713c117566dbbf1aaf783380b1f1b839bd1f8000ad07dac09dc5bdb44";a:4:{s:10:"expiration";i:1479310860;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1479138060;}s:64:"a5c970c805848fcb45f80c2e960eee8713c575e45afe99228cc9254ef30e0483";a:4:{s:10:"expiration";i:1479311558;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1479138758;}s:64:"151df3d8bb1cdfdfb8c36ea1035825ab1cb9acec79a34b9badcd6c1917f56f29";a:4:{s:10:"expiration";i:1479319393;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1479146593;}s:64:"9f55c60566ed44d8734344dcc1207121e99c299ed9d270373883f1a20cfe3f41";a:4:{s:10:"expiration";i:1479332674;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1479159874;}s:64:"366f1ab686c8d848e4a2b336e1b770c94189bee7786d07a4afe4e8a171b928c4";a:4:{s:10:"expiration";i:1479333891;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1479161091;}s:64:"0cb33690f237a9044c385e0dd6e285bb640438b89a29e50950db829b96425b89";a:4:{s:10:"expiration";i:1479336804;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1479164004;}s:64:"919797526b43a1b78d80a602861f18b8bc9753a7bb799be5732b4bd38759c275";a:4:{s:10:"expiration";i:1479396958;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1479224158;}s:64:"f8072aef65931f4c205a5feaa9a54d0b8b531c8b33a0dc9cec0dca7bdcd2d067";a:4:{s:10:"expiration";i:1479399265;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1479226465;}s:64:"4ebebad7e8c57d6f015a3f1687297c9129d80cc6bf13f837e4dd1b4052dcaf63";a:4:{s:10:"expiration";i:1479421653;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1479248853;}s:64:"03dfeee02f49b74d718d1348e35f592e3e0c98983c86648bbcf591316c2649ec";a:4:{s:10:"expiration";i:1479422487;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1479249687;}s:64:"88fe1490345138faf6026d08cbdf803f498376c78bbd54187a21be68453f0b4d";a:4:{s:10:"expiration";i:1479423765;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1479250965;}}'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:31:"add-post-type-theme-slider-home";i:1;s:34:"add-post-type-theme-gallery-images";i:2;s:34:"add-post-type-theme-gallery-videos";i:3;s:12:"add-post_tag";i:4;s:15:"add-post_format";i:5;s:21:"add-producto_category";}'),
(19, 1, 'wp_espresac_user-settings', 'libraryContent=browse&hidetb=1'),
(20, 1, 'wp_espresac_user-settings-time', '1479162931'),
(21, 1, 'closedpostboxes_theme-products', 'a:3:{i:0;s:28:"mb-featured-custom-post-type";i:1;s:15:"mb-code-product";i:2;s:16:"mb-price-product";}'),
(22, 1, 'metaboxhidden_theme-products', 'a:1:{i:0;s:7:"slugdiv";}'),
(23, 1, 'closedpostboxes_page', 'a:1:{i:0;s:12:"revisionsdiv";}'),
(24, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(25, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:76:"mb_order_tposts,mb_featured_banner_mbox,submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:110:"mb_attached_images_meta_box,postexcerpt,postcustom,revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(26, 1, 'screen_layout_page', '2'),
(27, 1, 'nav_menu_recently_edited', '2'),
(28, 1, 'closedpostboxes_nav-menus', 'a:0:{}') ;

#
# End of data contents of table `wp_espresac_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_espresac_users`
#

DROP TABLE IF EXISTS `wp_espresac_users`;


#
# Table structure of table `wp_espresac_users`
#

CREATE TABLE `wp_espresac_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_espresac_users`
#
INSERT INTO `wp_espresac_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJvjMLWgKoYvjhi0Fh8hVCGKtdTNLk1', 'admin', 'jgomez@ingenioart.com', '', '2016-11-14 15:12:54', '', 0, 'admin') ;

#
# End of data contents of table `wp_espresac_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

