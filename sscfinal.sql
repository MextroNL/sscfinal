-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2018 at 03:09 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sscfinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_hugeit_slider_slide`
--

CREATE TABLE `wp_hugeit_slider_slide` (
  `id` int(11) UNSIGNED NOT NULL,
  `slider_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `in_new_tab` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `type` enum('image','video','post') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(5) UNSIGNED NOT NULL,
  `post_term_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_show_title` int(1) UNSIGNED DEFAULT NULL,
  `post_show_description` int(1) UNSIGNED DEFAULT NULL,
  `post_go_to_post` int(1) UNSIGNED DEFAULT NULL,
  `post_max_post_count` int(4) UNSIGNED DEFAULT NULL,
  `video_quality` int(5) UNSIGNED DEFAULT NULL,
  `video_volume` int(3) UNSIGNED DEFAULT NULL,
  `video_show_controls` int(1) UNSIGNED DEFAULT NULL,
  `video_show_info` int(1) UNSIGNED DEFAULT NULL,
  `video_control_color` int(8) UNSIGNED DEFAULT NULL,
  `draft` int(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_hugeit_slider_slide`
--

INSERT INTO `wp_hugeit_slider_slide` (`id`, `slider_id`, `title`, `description`, `url`, `attachment_id`, `in_new_tab`, `type`, `order`, `post_term_id`, `post_show_title`, `post_show_description`, `post_go_to_post`, `post_max_post_count`, `video_quality`, `video_volume`, `video_show_controls`, `video_show_info`, `video_control_color`, `draft`) VALUES
(4, 2, '', '', '', 17, 0, 'image', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_hugeit_slider_slider`
--

CREATE TABLE `wp_hugeit_slider_slider` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'My New Slider',
  `width` int(4) UNSIGNED NOT NULL DEFAULT '600',
  `height` int(4) UNSIGNED NOT NULL DEFAULT '375',
  `effect` enum('none','cube_h','cube_v','fade','slice_h','slice_v','slide_h','slide_v','scale_out','scale_in','block_scale','kaleidoscope','fan','blind_h','blind_v','random') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `pause_time` int(5) UNSIGNED NOT NULL DEFAULT '4000',
  `change_speed` int(5) UNSIGNED NOT NULL DEFAULT '1000',
  `position` enum('left','right','center') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'center',
  `show_loading_icon` int(1) UNSIGNED DEFAULT '0',
  `navigate_by` enum('dot','thumbnail','none') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `pause_on_hover` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `video_autoplay` int(1) UNSIGNED DEFAULT '0',
  `random` int(1) UNSIGNED DEFAULT '0',
  `lightbox` int(1) UNSIGNED DEFAULT '0',
  `slide_effect` enum('effect_1','effect_2','effect_3','effect_4','effect_5','effect_6','effect_7','effect_8','effect_9','effect_10') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'effect_1',
  `open_close_effect` enum('none','unfold','unfold_r','blowup','blowup_r','roadrunner','roadrunner_r','runner','runner_r','rotate','rotate_r') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `arrows_style` enum('arrows_1','arrows_2','arrows_3','arrows_4','arrows_5','arrows_6') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'arrows_1',
  `itemscount` int(2) UNSIGNED NOT NULL DEFAULT '5',
  `view` enum('none','carousel1','thumb_view') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `controls` int(1) UNSIGNED DEFAULT '1',
  `fullscreen` int(1) UNSIGNED DEFAULT '1',
  `vertical` int(1) UNSIGNED DEFAULT '0',
  `thumbposition` int(1) UNSIGNED DEFAULT '0',
  `thumbcontrols` int(1) UNSIGNED DEFAULT '0',
  `dragdrop` int(1) UNSIGNED DEFAULT '0',
  `swipe` int(1) UNSIGNED DEFAULT '1',
  `thumbdragdrop` int(1) UNSIGNED DEFAULT '0',
  `thumbswipe` int(1) UNSIGNED DEFAULT '0',
  `titleonoff` int(1) UNSIGNED DEFAULT '1',
  `desconoff` int(1) UNSIGNED DEFAULT '1',
  `titlesymbollimit` int(3) UNSIGNED NOT NULL DEFAULT '20',
  `descsymbollimit` int(3) UNSIGNED NOT NULL DEFAULT '70',
  `pager` int(1) UNSIGNED DEFAULT '1',
  `mode` enum('slide','fade') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'slide',
  `vthumbwidth` int(3) UNSIGNED NOT NULL DEFAULT '100',
  `hthumbheight` int(3) UNSIGNED NOT NULL DEFAULT '80',
  `thumbitem` int(3) UNSIGNED NOT NULL DEFAULT '10',
  `thumbmargin` int(2) UNSIGNED NOT NULL DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_hugeit_slider_slider`
--

INSERT INTO `wp_hugeit_slider_slider` (`id`, `name`, `width`, `height`, `effect`, `pause_time`, `change_speed`, `position`, `show_loading_icon`, `navigate_by`, `pause_on_hover`, `video_autoplay`, `random`, `lightbox`, `slide_effect`, `open_close_effect`, `arrows_style`, `itemscount`, `view`, `controls`, `fullscreen`, `vertical`, `thumbposition`, `thumbcontrols`, `dragdrop`, `swipe`, `thumbdragdrop`, `thumbswipe`, `titleonoff`, `desconoff`, `titlesymbollimit`, `descsymbollimit`, `pager`, `mode`, `vthumbwidth`, `hthumbheight`, `thumbitem`, `thumbmargin`) VALUES
(2, 'My New Slider', 600, 375, 'none', 4000, 1000, 'center', 0, 'none', 1, 0, 0, 1, 'effect_1', 'none', 'arrows_1', 5, 'none', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 20, 70, 1, 'slide', 100, 80, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_reslider_sliders`
--

CREATE TABLE `wp_huge_it_reslider_sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `slide` longtext COLLATE utf8mb4_unicode_ci,
  `style` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_huge_it_reslider_sliders`
--

INSERT INTO `wp_huge_it_reslider_sliders` (`id`, `title`, `type`, `params`, `time`, `slide`, `style`, `custom`) VALUES
(2, 'First Slider', 'simple', '{\"lightbox\":\"0\",\"slide_effect\":\"effect_1\",\"open_close_effect\":\"none\",\"arrows_style\":\"arrows_1\",\"imageframes\":\"0\",\"imagefilters\":\"0\",\"sortimagesby\":\"0\",\"sharing\":{\"show\":{\"facebook\":0,\"twitter\":0,\"googleplus\":0,\"pinterest\":0,\"linkedin\":0,\"tumblr\":0},\"type\":0},\"autoplay\":1,\"pauseonhover\":1,\"rightclickprotection\":1,\"behavior\":\"0\",\"effect\":{\"type\":3,\"duration\":1500,\"interval\":1000},\"thumbnails\":{\"show\":0,\"positioning\":0},\"custom\":{\"type\":\"text\"},\"title\":{\"show\":1,\"position\":\"1\",\"style\":{\"width\":213,\"height\":61,\"left\":\"571.375px\",\"top\":\"14.7031px\",\"color\":\"FFFFFF\",\"opacity\":0,\"font\":{\"size\":18},\"border\":{\"color\":\"FFFFFF\",\"width\":1,\"radius\":2},\"background\":{\"color\":\"FFFFFF\",\"hover\":\"30FF4F\"}}},\"description\":{\"show\":1,\"position\":\"1\",\"style\":{\"width\":768,\"height\":116,\"left\":\"16.375px\",\"top\":\"345.703px\",\"color\":\"FFFFFF\",\"opacity\":80,\"font\":{\"size\":14},\"border\":{\"color\":\"3478FF\",\"width\":0,\"radius\":2},\"background\":{\"color\":\"000000\",\"hover\":\"000000\"}}},\"arrows\":{\"show\":2,\"type\":1,\"style\":{\"background\":{\"width\":\"49\",\"height\":\"49\",\"left\":\"91px 46px\",\"right\":\"-44px 1px\",\"hover\":{\"left\":\"91px 46px\",\"right\":\"-44px 1px\"}}}},\"bullets\":{\"show\":0,\"type\":\"0\",\"position\":0,\"autocenter\":\"0\",\"rows\":1,\"s_x\":10,\"s_y\":10,\"orientation\":1,\"style\":{\"background\":{\"width\":\"60\",\"height\":\"60\",\"color\":{\"hover\":\"646464\",\"active\":\"30FF4F\",\"link\":\"CCCCCC\"}},\"position\":{\"top\":\"16px\",\"left\":\"10px\"}}}}', '2016-05-02 10:58:58', 'NULL', '{\"background\":\"blue;\",\"border\":\"1px solid red;\",\"color\":\"yellow\",\"width\":\"800\",\"height\":\"480\",\"marginLeft\":\"0\",\"marginRight\":\"0\",\"marginTop\":\"0\",\"marginBottom\":\"0\"}', '{}'),
(3, 'Hallo', 'simple', '{\"lightbox\":0,\"slide_effect\":\"effect_1\",\"open_close_effect\":\"none\",\"arrows_style\":\"arrows_1\",\"imageframes\":0,\"imagefilters\":0,\"sortimagesby\":0,\"sharing\":{\"show\":{\"facebook\":0,\"twitter\":0,\"googleplus\":0,\"pinterest\":0,\"linkedin\":0,\"tumblr\":0},\"type\":1},\"autoplay\":1,\"pauseonhover\":1,\"rightclickprotection\":1,\"behavior\":2,\"effect\":{\"type\":0,\"duration\":1500,\"interval\":1000},\"thumbnails\":{\"show\":0,\"positioning\":0},\"custom\":{\"type\":\"button\",\"show\":1,\"style\":{\"width\":\"100\",\"height\":\"50\",\"left\":\"100px\",\"top\":\"200px\",\"color\":\"000000\",\"opacity\":\"50\",\"font\":{\"size\":\"14\"},\"border\":{\"color\":\"3478FF\",\"width\":\"2\",\"radius\":\"10\"},\"background\":{\"color\":\"E8FF81\",\"hover\":\"30FF4F\"}}},\"title\":{\"show\":1,\"position\":\"1\",\"style\":{\"width\":150,\"height\":60,\"left\":\"244.188px\",\"top\":\"33.1875px\",\"color\":\"FFFFFF\",\"opacity\":70,\"font\":{\"size\":16},\"border\":{\"color\":\"FFFFFF\",\"width\":0,\"radius\":2},\"background\":{\"color\":\"CCCCCC\",\"hover\":\"000000\"}}},\"description\":{\"show\":1,\"position\":\"1\",\"style\":{\"width\":200,\"height\":60,\"left\":\"222.141px\",\"top\":\"94.8906px\",\"color\":\"FFFFFF\",\"opacity\":70,\"font\":{\"size\":14},\"border\":{\"color\":\"FFFFFF\",\"width\":0,\"radius\":2},\"background\":{\"color\":\"CCCCCC\",\"hover\":\"000000\"}}},\"arrows\":{\"show\":0,\"type\":1,\"style\":{\"background\":{\"width\":\"49\",\"height\":\"49\",\"left\":\"91px 46px\",\"right\":\"-44px 1px\",\"hover\":{\"left\":\"91px 46px\",\"right\":\"-44px 1px\"},\"free\":{\"width\":\"49\",\"height\":\"49\",\"left\":\"91px 46px\",\"right\":\"-44px 1px\",\"hover\":{\"left\":\"91px 46px\",\"right\":\"-44px 1px\"}}}}},\"bullets\":{\"show\":0,\"type\":\"0\",\"position\":0,\"autocenter\":\"0\",\"rows\":1,\"s_x\":10,\"s_y\":10,\"orientation\":1,\"style\":{\"background\":{\"width\":\"60\",\"height\":\"60\",\"color\":{\"hover\":\"646464\",\"active\":\"30FF4F\",\"link\":\"CCCCCC\"}},\"position\":{\"top\":\"16px\",\"left\":\"10px\",\"free\":{\"top\":\"16px\",\"left\":\"10px\"}}}}}', '2018-01-15 08:15:23', NULL, '{\"background\":\"blue;\",\"border\":\"1px solid red;\",\"color\":\"yellow\",\"width\":\"800\",\"height\":\"480\",\"marginLeft\":\"0\",\"marginRight\":\"0\",\"marginTop\":\"0\",\"marginBottom\":\"0\"}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_it_reslider_slides`
--

CREATE TABLE `wp_huge_it_reslider_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliderid` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `slide` longtext COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_link_new_tab` tinyint(1) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_huge_it_reslider_slides`
--

INSERT INTO `wp_huge_it_reslider_slides` (`id`, `title`, `sliderid`, `published`, `slide`, `description`, `image_link`, `image_link_new_tab`, `thumbnail`, `custom`, `ordering`, `type`) VALUES
(6, 'CABS', 1, 1, NULL, 'Lorem ipsum dolor sit amet, ne verear elaboraret mel. Ea sed quaestio pericula. Vel ludus pericula ex, euripidis conceptam abhorreant an sed. Vis ad apeirian antiopam molestiae..', '', 0, 'http://localhost/sscfinal/wp-content/plugins/slider/Front_images/Default/1.jpg', '{}', 5, ''),
(7, 'MESSY EVENING', 1, 1, NULL, 'Lorem ipsum dolor sit amet, ne verear elaboraret mel. Ea sed quaestio pericula. Vel ludus pericula ex, euripidis conceptam abhorreant an sed. Vis ad apeirian antiopam molestiae.. ', '', 0, 'http://localhost/sscfinal/wp-content/plugins/slider/Front_images/Default/2.jpg', '{}', 4, ''),
(8, 'UMBRELLA', 1, 1, NULL, 'Lorem ipsum dolor sit amet, ne verear elaboraret mel. Ea sed quaestio pericula. Vel ludus pericula ex, euripidis conceptam abhorreant an sed. Vis ad apeirian antiopam molestiae.. ', '', 0, 'http://localhost/sscfinal/wp-content/plugins/slider/Front_images/Default/3.jpg', '{}', 3, ''),
(9, 'OLD TRAM', 1, 1, NULL, 'Lorem ipsum dolor sit amet, ne verear elaboraret mel. Ea sed quaestio pericula. Vel ludus pericula ex, euripidis conceptam abhorreant an sed. Vis ad apeirian antiopam molestiae.. ', '', 0, 'http://localhost/sscfinal/wp-content/plugins/slider/Front_images/Default/4.jpg', '{}', 2, ''),
(10, 'THE MIXTURE ', 1, 1, NULL, 'Lorem ipsum dolor sit amet, ne verear elaboraret mel. Ea sed quaestio pericula. Vel ludus pericula ex, euripidis conceptam abhorreant an sed. Vis ad apeirian antiopam molestiae..', '', 0, 'http://localhost/sscfinal/wp-content/plugins/slider/Front_images/Default/5.jpg', '{}', 1, ''),
(11, 'plantheader', 3, 1, NULL, '', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/plantheader.png', '{}', 1, ''),
(12, 'headervergader', 3, 1, NULL, '', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/headervergader.png', '{}', 2, '');

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_image_storage`
--

CREATE TABLE `wp_nextend2_image_storage` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `image` text NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_image_storage`
--

INSERT INTO `wp_nextend2_image_storage` (`id`, `hash`, `image`, `value`) VALUES
(1, 'f2a68e848a9954006285eff0a99c7f22', '$upload$/2018/01/plantheader.png', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(2, 'f76daeed4d8443e26f4b6cab295274be', '$upload$/2018/01/headervergader.png', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(3, '7148fa26ad6dd9ee953b6c3f5f30c99d', 'https://smartslider3.com/sample/programmer.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(4, '6681af77aa8c9f342a3f8a98939dca43', 'https://smartslider3.com/sample/free1.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(5, '2ebcc61fcb32c829e4927fbfd782ff7a', 'https://smartslider3.com/sample/photographer.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_section_storage`
--

CREATE TABLE `wp_nextend2_section_storage` (
  `id` int(11) NOT NULL,
  `application` varchar(20) NOT NULL,
  `section` varchar(128) NOT NULL,
  `referencekey` varchar(128) NOT NULL,
  `value` mediumtext NOT NULL,
  `system` int(11) NOT NULL DEFAULT '0',
  `editable` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_section_storage`
--

INSERT INTO `wp_nextend2_section_storage` (`id`, `application`, `section`, `referencekey`, `value`, `system`, `editable`) VALUES
(10000, 'system', 'global', 'n2_ss3_version', '3.2.12', 1, 1),
(10001, 'smartslider', 'sliderChanged', '2', '1', 0, 1),
(10002, 'smartslider', 'tutorial', 'free', '1', 0, 1),
(10003, 'smartslider', 'sliderChanged', '1', '0', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_generators`
--

CREATE TABLE `wp_nextend2_smartslider3_generators` (
  `id` int(11) NOT NULL,
  `group` varchar(254) NOT NULL,
  `type` varchar(254) NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `params` mediumtext NOT NULL,
  `time` datetime NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders`
--

INSERT INTO `wp_nextend2_smartslider3_sliders` (`id`, `title`, `type`, `params`, `time`, `thumbnail`, `ordering`) VALUES
(1, 'Sample Slider', 'simple', '{\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"thumbnail\":\"\",\"align\":\"normal\",\"backgroundMode\":\"fill\",\"animation\":\"horizontal\",\"animation-duration\":\"600\",\"background-animation\":\"\",\"background-animation-speed\":\"normal\",\"width\":\"1200\",\"height\":\"600\",\"fontsize\":\"16\",\"margin\":\"0|*|0|*|0|*|0\",\"responsive-mode\":\"fullwidth\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveForceFull\":\"1\",\"responsiveForceFullOverflowX\":\"body\",\"responsiveForceFullHorizontalSelector\":\"body\",\"responsiveSliderOrientation\":\"width_and_height\",\"responsiveSlideWidth\":\"1\",\"responsiveSlideWidthMax\":\"3000\",\"responsiveSlideWidthDesktopLandscape\":\"0\",\"responsiveSlideWidthMaxDesktopLandscape\":\"1600\",\"responsiveSlideWidthTablet\":\"0\",\"responsiveSlideWidthMaxTablet\":\"980\",\"responsiveSlideWidthTabletLandscape\":\"0\",\"responsiveSlideWidthMaxTabletLandscape\":\"1200\",\"responsiveSlideWidthMobile\":\"0\",\"responsiveSlideWidthMaxMobile\":\"480\",\"responsiveSlideWidthMobileLandscape\":\"0\",\"responsiveSlideWidthMaxMobileLandscape\":\"740\",\"responsiveSlideWidthConstrainHeight\":\"0\",\"autoplay\":\"1\",\"autoplayDuration\":\"8000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"overflow-hidden-page\":\"0\",\"clear-both\":\"0\",\"remove-spaces-from-parents\":\"\",\"hide-siblings\":\"\",\"callbacks\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-previous\":\"$ss$\\/plugins\\/widgetarrow\\/image\\/image\\/previous\\/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widgetbullet\":\"transition\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-show-image\":\"1\",\"widget-bullet-thumbnail-width\":\"120\",\"widget-bullet-thumbnail-height\":\"81\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDsifV19\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-position-mode\":\"simple\",\"widget-bullet-position-area\":\"12\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-position-horizontal\":\"left\",\"widget-bullet-position-horizontal-position\":\"0\",\"widget-bullet-position-horizontal-unit\":\"px\",\"widget-bullet-position-vertical\":\"top\",\"widget-bullet-position-vertical-position\":\"0\",\"widget-bullet-position-vertical-unit\":\"px\",\"widget-bullet-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwYWIiLCJwYWRkaW5nIjoiNXwqfDV8Knw1fCp8NXwqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiI1MCIsImV4dHJhIjoibWFyZ2luOiA0cHg7In0seyJleHRyYSI6IiIsImJhY2tncm91bmRjb2xvciI6IjA5YjQ3NGZmIn1dfQ==\",\"widget-bullet-bar\":\"\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widgets\":\"arrow\"}', '2015-11-01 14:14:20', '', 0),
(2, 'Slider', 'simple', '{\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"thumbnail\":\"\",\"align\":\"center\",\"backgroundMode\":\"fill\",\"animation\":\"horizontal\",\"animation-duration\":\"800\",\"background-animation\":\"\",\"background-animation-speed\":\"normal\",\"width\":\"1920\",\"height\":\"500\",\"fontsize\":\"16\",\"margin\":\"0|*|0|*|0|*|0\",\"responsive-mode\":\"auto\",\"responsiveScaleDown\":\"1\",\"responsiveScaleUp\":\"0\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveSlideWidthMax\":\"3000\",\"autoplay\":\"1\",\"autoplayDuration\":\"8000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"optimize\":\"1\",\"optimize-quality\":\"100\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"playWhenVisible\":\"0\",\"playWhenVisibleAt\":\"50\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"overflow-hidden-page\":\"0\",\"clear-both\":\"0\",\"remove-spaces-from-parents\":\"\",\"hide-siblings\":\"\",\"callbacks\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-previous\":\"$ss$\\/plugins\\/widgetarrow\\/image\\/image\\/previous\\/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widgetbullet\":\"disabled\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"100\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDtiYWNrZ3JvdW5kLXNpemU6Y292ZXI7In1dfQ==\",\"widget-bullet-thumbnail-side\":\"before\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widgets\":\"shadow\"}', '2018-01-15 08:22:16', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders_xref`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders_xref` (
  `group_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders_xref`
--

INSERT INTO `wp_nextend2_smartslider3_sliders_xref` (`group_id`, `slider_id`, `ordering`) VALUES
(0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_slides`
--

CREATE TABLE `wp_nextend2_smartslider3_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_slides`
--

INSERT INTO `wp_nextend2_smartslider3_slides` (`id`, `title`, `slider`, `publish_up`, `publish_down`, `published`, `first`, `slide`, `description`, `thumbnail`, `params`, `ordering`, `generator_id`) VALUES
(1, 'Slide One', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Martin Dwyer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Martin Dwyer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Application Developer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Application Developer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/developerthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/programmer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 0, 0);

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
(1, 'siteurl', 'http://localhost/sscfinal', 'yes'),
(2, 'home', 'http://localhost/sscfinal', 'yes'),
(3, 'blogname', 'SSC', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hamish1999@yahoo.co.uk', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:23:\"ml-slider/ml-slider.php\";i:3;s:35:\"secondary-title/secondary-title.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:56:\"C:\\xampp\\htdocs\\sscfinal/wp-content/themes/SSC/style.css\";i:1;s:79:\"C:\\xampp\\htdocs\\sscfinal/wp-content/plugins/smart-slider-3/editor/shortcode.php\";i:2;s:77:\"C:\\xampp\\htdocs\\sscfinal/wp-content/plugins/smart-slider-3/smart-slider-3.php\";i:3;s:67:\"C:\\xampp\\htdocs\\sscfinal/wp-content/plugins/ml-slider/ml-slider.php\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'SSC', 'yes'),
(41, 'stylesheet', 'SSC', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:75:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;s:28:\"easingslider_publish_sliders\";b:1;s:25:\"easingslider_edit_sliders\";b:1;s:30:\"easingslider_duplicate_sliders\";b:1;s:27:\"easingslider_delete_sliders\";b:1;s:28:\"easingslider_manage_settings\";b:1;s:26:\"easingslider_manage_addons\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:48:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;s:28:\"easingslider_publish_sliders\";b:1;s:25:\"easingslider_edit_sliders\";b:1;s:30:\"easingslider_duplicate_sliders\";b:1;s:27:\"easingslider_delete_sliders\";b:1;s:28:\"easingslider_manage_settings\";b:1;s:26:\"easingslider_manage_addons\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:16:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:28:\"easingslider_publish_sliders\";b:1;s:25:\"easingslider_edit_sliders\";b:1;s:30:\"easingslider_duplicate_sliders\";b:1;s:27:\"easingslider_delete_sliders\";b:1;s:28:\"easingslider_manage_settings\";b:1;s:26:\"easingslider_manage_addons\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:11:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:28:\"easingslider_publish_sliders\";b:1;s:25:\"easingslider_edit_sliders\";b:1;s:30:\"easingslider_duplicate_sliders\";b:1;s:27:\"easingslider_delete_sliders\";b:1;s:28:\"easingslider_manage_settings\";b:1;s:26:\"easingslider_manage_addons\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:8:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:28:\"easingslider_publish_sliders\";b:1;s:25:\"easingslider_edit_sliders\";b:1;s:30:\"easingslider_duplicate_sliders\";b:1;s:27:\"easingslider_delete_sliders\";b:1;s:28:\"easingslider_manage_settings\";b:1;s:26:\"easingslider_manage_addons\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:5:{i:1519820988;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1519821059;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1519821280;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1519899009;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1515673873;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"hamish1999@yahoo.co.uk\";s:7:\"version\";s:5:\"4.9.4\";s:9:\"timestamp\";i:1518012859;}', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(135, 'current_theme', '', 'yes'),
(136, 'theme_mods_SSC', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:11;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(137, 'theme_switched', '', 'yes'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'ms_hide_all_ads_until', '1516883518', 'yes'),
(153, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(155, 'metaslider_tour_cancelled_on', 'step_view_shortcode', 'yes'),
(157, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(166, 'secondary_title_post_types', 'a:0:{}', 'yes'),
(167, 'secondary_title_categories', 'a:0:{}', 'yes'),
(168, 'secondary_title_post_ids', 'a:0:{}', 'yes'),
(169, 'secondary_title_auto_show', 'off', 'yes'),
(170, 'secondary_title_title_format', '%secondary_title%: %title%', 'yes'),
(171, 'secondary_title_input_field_position', 'above', 'yes'),
(172, 'secondary_title_only_show_in_main_post', 'off', 'yes'),
(173, 'secondary_title_use_in_permalinks', '', 'yes'),
(174, 'secondary_title_permalinks_position', '', 'yes'),
(175, 'secondary_title_column_position', 'right', 'yes'),
(176, 'secondary_title_feed_auto_show', '', 'yes'),
(177, 'secondary_title_feed_title_format', '', 'yes'),
(178, 'secondary_title_include_in_search', 'on', 'yes'),
(193, 'ml-slider_children', 'a:0:{}', 'yes'),
(235, 'hugeit_slider_title_for_crop_image', 'Slider crop image', 'yes'),
(236, 'hugeit_slider_crop_image', 'stretch', 'yes'),
(237, 'hugeit_slider_title_for_title_color', 'Slider title color', 'yes'),
(238, 'hugeit_slider_title_color', '000000', 'yes'),
(239, 'hugeit_slider_title_for_title_font_size', 'Slider title font size', 'yes'),
(240, 'hugeit_slider_title_font_size', '13', 'yes'),
(241, 'hugeit_slider_title_for_description_color', 'Slider description color', 'yes'),
(242, 'hugeit_slider_description_color', 'ffffff', 'yes'),
(243, 'hugeit_slider_title_for_description_font_size', 'Slider description font size', 'yes'),
(244, 'hugeit_slider_description_font_size', '13', 'yes'),
(245, 'hugeit_slider_title_for_title_position', 'Slider title position', 'yes'),
(246, 'hugeit_slider_title_position', '33', 'yes'),
(247, 'hugeit_slider_title_for_description_position', 'Slider description position', 'yes'),
(248, 'hugeit_slider_description_position', '31', 'yes'),
(249, 'hugeit_slider_title_for_title_border_size', 'Slider Title border size', 'yes'),
(250, 'hugeit_slider_title_border_size', '0', 'yes'),
(251, 'hugeit_slider_title_for_title_border_color', 'Slider title border color', 'yes'),
(252, 'hugeit_slider_title_border_color', 'ffffff', 'yes'),
(253, 'hugeit_slider_title_for_title_border_radius', 'Slider title border radius', 'yes'),
(254, 'hugeit_slider_title_border_radius', '4', 'yes'),
(255, 'hugeit_slider_title_for_description_border_size', 'Slider description border size', 'yes'),
(256, 'hugeit_slider_description_border_size', '0', 'yes'),
(257, 'hugeit_slider_title_for_description_border_color', 'Slider description border color', 'yes'),
(258, 'hugeit_slider_description_border_color', 'ffffff', 'yes'),
(259, 'hugeit_slider_title_for_description_border_radius', 'Slider description border radius', 'yes'),
(260, 'hugeit_slider_description_border_radius', '0', 'yes'),
(261, 'hugeit_slider_title_for_slideshow_border_size', 'Slider border size', 'yes'),
(262, 'hugeit_slider_slideshow_border_size', '0', 'yes'),
(263, 'hugeit_slider_title_for_slideshow_border_color', 'Slider border color', 'yes'),
(264, 'hugeit_slider_slideshow_border_color', 'ffffff', 'yes'),
(265, 'hugeit_slider_title_for_slideshow_border_radius', 'Slider border radius', 'yes'),
(266, 'hugeit_slider_slideshow_border_radius', '0', 'yes'),
(267, 'hugeit_slider_title_for_navigation_type', 'Slider navigation type', 'yes'),
(268, 'hugeit_slider_navigation_type', '1', 'yes'),
(269, 'hugeit_slider_title_for_navigation_position', 'Slider navigation position', 'yes'),
(270, 'hugeit_slider_navigation_position', 'top', 'yes'),
(271, 'hugeit_slider_title_for_title_background_color', 'Slider title background color', 'yes'),
(272, 'hugeit_slider_title_background_color', 'ffffff', 'yes'),
(273, 'hugeit_slider_title_for_description_background_color', 'Slider description background color', 'yes'),
(274, 'hugeit_slider_description_background_color', '000000', 'yes'),
(275, 'hugeit_slider_title_for_slider_background_color', 'Slider slider background color', 'yes'),
(276, 'hugeit_slider_slider_background_color', 'ffffff', 'yes'),
(277, 'hugeit_slider_title_for_slider_background_color_transparency', 'Slider slider background color transparency', 'yes'),
(278, 'hugeit_slider_slider_background_color_transparency', '1', 'yes'),
(279, 'hugeit_slider_title_for_active_dot_color', 'Slider active dot color', 'yes'),
(280, 'hugeit_slider_active_dot_color', 'ffffff', 'yes'),
(281, 'hugeit_slider_title_for_dot_color', 'Slider dots color', 'yes'),
(282, 'hugeit_slider_dot_color', '000000', 'yes'),
(283, 'hugeit_slider_title_for_loading_icon_type', 'Slider Loading Image', 'yes'),
(284, 'hugeit_slider_loading_icon_type', '1', 'yes'),
(285, 'hugeit_slider_title_for_description_width', 'Slider description width', 'yes'),
(286, 'hugeit_slider_description_width', '70', 'yes'),
(287, 'hugeit_slider_title_for_description_height', 'Slider description height', 'yes'),
(288, 'hugeit_slider_description_height', '50', 'yes'),
(289, 'hugeit_slider_title_for_description_background_transparency', 'Slider description background transparency', 'yes'),
(290, 'hugeit_slider_description_background_transparency', '0.7', 'yes'),
(291, 'hugeit_slider_title_for_description_text_align', 'Description text-align', 'yes'),
(292, 'hugeit_slider_description_text_align', 'justify', 'yes'),
(293, 'hugeit_slider_title_for_title_width', 'Slider title width', 'yes'),
(294, 'hugeit_slider_title_width', '30', 'yes'),
(295, 'hugeit_slider_title_for_title_background_transparency', 'Slider title background transparency', 'yes'),
(296, 'hugeit_slider_title_background_transparency', '0.7', 'yes'),
(297, 'hugeit_slider_title_for_title_text_align', 'Title text-align', 'yes'),
(298, 'hugeit_slider_title_text_align', 'right', 'yes'),
(299, 'hugeit_slider_title_for_title_has_margin', 'Title has margin', 'yes'),
(300, 'hugeit_slider_title_has_margin', '1', 'yes'),
(301, 'hugeit_slider_title_for_description_has_margin', 'Description has margin', 'yes'),
(302, 'hugeit_slider_description_has_margin', '1', 'yes'),
(303, 'hugeit_slider_title_for_show_arrows', 'Slider show left right arrows', 'yes'),
(304, 'hugeit_slider_show_arrows', '1', 'yes'),
(305, 'hugeit_slider_title_for_thumb_count_slides', 'Thumbnail Background Color', 'yes'),
(306, 'hugeit_slider_thumb_count_slides', '3', 'yes'),
(307, 'hugeit_slider_thumb_background_color', 'ffffff', 'yes'),
(308, 'hugeit_slider_title_for_thumb_passive_color', 'Passive Thumbnail Color', 'yes'),
(309, 'hugeit_slider_thumb_passive_color', 'ffffff', 'yes'),
(310, 'hugeit_slider_title_for_thumb_height', 'Slider Thumb Height', 'yes'),
(311, 'hugeit_slider_thumb_height', '100', 'yes'),
(312, 'hugeit_slider_title_for_share_buttons', 'Share buttons', 'yes'),
(313, 'hugeit_slider_share_buttons', '1', 'yes'),
(314, 'hugeit_slider_title_for_share_buttons_facebook', 'Facebook', 'yes'),
(315, 'hugeit_slider_share_buttons_facebook', '1', 'yes'),
(316, 'hugeit_slider_title_for_share_buttons_twitter', 'Twitter', 'yes'),
(317, 'hugeit_slider_share_buttons_twitter', '1', 'yes'),
(318, 'hugeit_slider_title_for_share_buttons_gp', 'Google Plus', 'yes'),
(319, 'hugeit_slider_share_buttons_gp', '1', 'yes'),
(320, 'hugeit_slider_title_for_share_buttons_pinterest', 'Pinterest', 'yes'),
(321, 'hugeit_slider_share_buttons_pinterest', '1', 'yes'),
(322, 'hugeit_slider_title_for_share_buttons_linkedin', 'Linkedin', 'yes'),
(323, 'hugeit_slider_share_buttons_linkedin', '1', 'yes'),
(324, 'hugeit_slider_title_for_share_buttons_tumblr', 'Tumblr', 'yes'),
(325, 'hugeit_slider_share_buttons_tumblr', '1', 'yes'),
(326, 'hugeit_slider_title_for_share_buttons_style', 'Share buttons style', 'yes'),
(327, 'hugeit_slider_title_for_share_buttons_hover_style', 'Share buttons hover style', 'yes'),
(328, 'hugeit_slider_version', '4.0.6', 'yes'),
(329, 'widget_hugeit_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(333, 'wds_global_options', '{\"default_layer_fweight\":\"normal\",\"default_layer_start\":1000,\"default_layer_effect_in\":\"none\",\"default_layer_duration_eff_in\":1000,\"default_layer_infinite_in\":1,\"default_layer_end\":3000,\"default_layer_effect_out\":\"none\",\"default_layer_duration_eff_out\":1000,\"default_layer_infinite_out\":1,\"default_layer_add_class\":\"\",\"default_layer_ffamily\":\"arial\",\"default_layer_google_fonts\":0,\"loading_gif\":0,\"register_scripts\":0,\"spider_uploader\":0,\"possib_add_ffamily\":\"\",\"possib_add_ffamily_google\":\"\"}', 'yes'),
(334, 'wds_version', '1.2.2', 'no'),
(335, 'wds_version_1.0.46', '1', 'no'),
(336, 'wds_theme_version', '1.0.0', 'no'),
(337, 'widget_wdslider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(338, 'wds_admin_notice', 'a:1:{s:15:\"two_week_review\";a:2:{s:5:\"start\";s:9:\"1/26/2018\";s:3:\"int\";i:14;}}', 'yes'),
(357, 'wds_subscribe_done', '1', 'yes'),
(363, 'widget_hugeit_reslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(367, 'n2_ss3_version', '3.2.12', 'yes'),
(368, 'widget_smartslider3', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(376, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"4.9.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1516010116;s:7:\"version\";s:5:\"4.9.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(381, 'widget_rich_web_photo_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(386, 'easingslider_settings', 'a:2:{s:14:\"load_in_footer\";b:0;s:11:\"remove_data\";b:0;}', 'yes'),
(387, 'easingslider_license', 'a:2:{s:3:\"key\";s:0:\"\";s:6:\"status\";s:0:\"\";}', 'yes'),
(388, 'easingslider_version', '3.0.8', 'yes'),
(389, 'widget_easingslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(458, 'category_children', 'a:0:{}', 'yes'),
(530, 'ms_ads_first_seen_on', '1517223300', 'yes'),
(642, 'ai1wm_secret_key', 'kv0WObT4XHvz', 'yes'),
(643, 'ai1wm_status', 'a:3:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:205:\"<a href=\"http://localhost/sscfinal/wp-content/ai1wm-backups/localhost-sscfinal-20180202-101024-662.wpress\" class=\"ai1wm-button-green ai1wm-emphasize\"><span>Download localhost</span><em>Size: 46 MB</em></a>\";s:5:\"title\";N;}', 'yes'),
(644, 'ai1wm_updater', 'a:0:{}', 'yes'),
(646, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(660, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1519805187;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(784, '_site_transient_timeout_browser_b876c8fd7fc402e60530b64622320f7a', '1520338477', 'no'),
(785, '_site_transient_browser_b876c8fd7fc402e60530b64622320f7a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"63.0.3239.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(788, '_transient_timeout_plugin_slugs', '1519820082', 'no'),
(789, '_transient_plugin_slugs', 'a:6:{i:0;s:19:\"akismet/akismet.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:9:\"hello.php\";i:4;s:23:\"ml-slider/ml-slider.php\";i:5;s:35:\"secondary-title/secondary-title.php\";}', 'no'),
(812, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1519805193;s:7:\"checked\";a:4:{s:3:\"SSC\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"1.8\";s:15:\"twentyseventeen\";s:3:\"1.3\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.1.9.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.4.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.4.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(813, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1519805194;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.62\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"4.9.2\";s:9:\"hello.php\";s:3:\"1.6\";s:23:\"ml-slider/ml-slider.php\";s:5:\"3.6.7\";s:35:\"secondary-title/secondary-title.php\";s:5:\"1.9.2\";}s:8:\"response\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.63\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.63.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1268186\";s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186\";s:7:\"default\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1691996\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1691996\";s:7:\"default\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1691996\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:5:\"3.7.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ml-slider.3.7.0.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-128x128.png?rev=1809294\";s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1809294\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1823436\";s:7:\"default\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1823436\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1686195\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1686195\";s:7:\"default\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1686195\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"secondary-title/secondary-title.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/secondary-title\";s:4:\"slug\";s:15:\"secondary-title\";s:6:\"plugin\";s:35:\"secondary-title/secondary-title.php\";s:11:\"new_version\";s:5:\"1.9.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/secondary-title/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/secondary-title.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:68:\"https://ps.w.org/secondary-title/assets/icon-128x128.png?rev=1787770\";s:0:\"\";s:68:\"https://ps.w.org/secondary-title/assets/icon-250x250.png?rev=1787771\";s:7:\"default\";s:68:\"https://ps.w.org/secondary-title/assets/icon-128x128.png?rev=1787770\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/secondary-title/assets/banner-772x250.png?rev=1787760\";s:7:\"default\";s:70:\"https://ps.w.org/secondary-title/assets/banner-772x250.png?rev=1787760\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, 'ml-slider_settings', 'a:35:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"300\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:5:\"false\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(3, 5, '_wp_attached_file', '2018/01/call-answer.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:23:\"2018/01/call-answer.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"call-answer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"call-answer-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:23:\"call-answer-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:23:\"call-answer-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_attached_file', '2018/01/envelope.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:20:\"2018/01/envelope.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"envelope-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"envelope-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:20:\"envelope-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:20:\"envelope-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_wp_attached_file', '2018/01/Face.png'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:16:\"2018/01/Face.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"Face-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"Face-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:16:\"Face-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:16:\"Face-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 8, '_wp_attached_file', '2018/01/facebook-logo-in-circular-button-outlined-social-symbol.png'),
(10, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:67:\"2018/01/facebook-logo-in-circular-button-outlined-social-symbol.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:67:\"facebook-logo-in-circular-button-outlined-social-symbol-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:67:\"facebook-logo-in-circular-button-outlined-social-symbol-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:67:\"facebook-logo-in-circular-button-outlined-social-symbol-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:67:\"facebook-logo-in-circular-button-outlined-social-symbol-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 9, '_wp_attached_file', '2018/01/facebook-placeholder-for-locate-places-on-maps.png'),
(12, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:58:\"2018/01/facebook-placeholder-for-locate-places-on-maps.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"facebook-placeholder-for-locate-places-on-maps-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"facebook-placeholder-for-locate-places-on-maps-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:58:\"facebook-placeholder-for-locate-places-on-maps-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:58:\"facebook-placeholder-for-locate-places-on-maps-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 10, '_wp_attached_file', '2018/01/header2.png'),
(14, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1346;s:6:\"height\";i:532;s:4:\"file\";s:19:\"2018/01/header2.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"header2-250x99.png\";s:5:\"width\";i:250;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"header2-768x304.png\";s:5:\"width\";i:768;s:6:\"height\";i:304;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"header2-700x277.png\";s:5:\"width\";i:700;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:18:\"header2-120x47.png\";s:5:\"width\";i:120;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:19:\"header2-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:19:\"header2-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 11, '_wp_attached_file', '2018/01/header3.png'),
(16, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1346;s:6:\"height\";i:532;s:4:\"file\";s:19:\"2018/01/header3.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"header3-250x99.png\";s:5:\"width\";i:250;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"header3-768x304.png\";s:5:\"width\";i:768;s:6:\"height\";i:304;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"header3-700x277.png\";s:5:\"width\";i:700;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:18:\"header3-120x47.png\";s:5:\"width\";i:120;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:19:\"header3-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 12, '_wp_attached_file', '2018/01/header5.png'),
(18, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1346;s:6:\"height\";i:532;s:4:\"file\";s:19:\"2018/01/header5.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"header5-250x99.png\";s:5:\"width\";i:250;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"header5-768x304.png\";s:5:\"width\";i:768;s:6:\"height\";i:304;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"header5-700x277.png\";s:5:\"width\";i:700;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:18:\"header5-120x47.png\";s:5:\"width\";i:120;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:19:\"header5-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 13, '_wp_attached_file', '2018/01/header6.png'),
(20, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1346;s:6:\"height\";i:532;s:4:\"file\";s:19:\"2018/01/header6.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"header6-250x99.png\";s:5:\"width\";i:250;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"header6-768x304.png\";s:5:\"width\";i:768;s:6:\"height\";i:304;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"header6-700x277.png\";s:5:\"width\";i:700;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:18:\"header6-120x47.png\";s:5:\"width\";i:120;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:19:\"header6-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 14, '_wp_attached_file', '2018/01/header7.png'),
(22, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1346;s:6:\"height\";i:532;s:4:\"file\";s:19:\"2018/01/header7.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"header7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"header7-250x99.png\";s:5:\"width\";i:250;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"header7-768x304.png\";s:5:\"width\";i:768;s:6:\"height\";i:304;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"header7-700x277.png\";s:5:\"width\";i:700;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:18:\"header7-120x47.png\";s:5:\"width\";i:120;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:19:\"header7-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 15, '_wp_attached_file', '2018/01/headerboekje.png'),
(24, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1346;s:6:\"height\";i:532;s:4:\"file\";s:24:\"2018/01/headerboekje.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"headerboekje-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"headerboekje-250x99.png\";s:5:\"width\";i:250;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"headerboekje-768x304.png\";s:5:\"width\";i:768;s:6:\"height\";i:304;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"headerboekje-700x277.png\";s:5:\"width\";i:700;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:23:\"headerboekje-120x47.png\";s:5:\"width\";i:120;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:24:\"headerboekje-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:24:\"headerboekje-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 16, '_wp_attached_file', '2018/01/headercontact.png'),
(26, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1346;s:6:\"height\";i:532;s:4:\"file\";s:25:\"2018/01/headercontact.png\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"headercontact-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"headercontact-250x99.png\";s:5:\"width\";i:250;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"headercontact-768x304.png\";s:5:\"width\";i:768;s:6:\"height\";i:304;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"headercontact-700x277.png\";s:5:\"width\";i:700;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:24:\"headercontact-120x47.png\";s:5:\"width\";i:120;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:25:\"headercontact-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:25:\"headercontact-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"meta-slider-resized-1200x300\";a:4:{s:4:\"file\";s:26:\"headercontact-1200x300.png\";s:5:\"width\";i:1200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"meta-slider-resized-1198x300\";a:4:{s:4:\"file\";s:26:\"headercontact-1198x300.png\";s:5:\"width\";i:1198;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"meta-slider-resized-1346x210\";a:4:{s:4:\"file\";s:26:\"headercontact-1346x210.png\";s:5:\"width\";i:1346;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"meta-slider-resized-0x0\";a:4:{s:4:\"file\";s:21:\"headercontact-0x0.png\";s:5:\"width\";i:1346;s:6:\"height\";i:532;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 17, '_wp_attached_file', '2018/01/headervergader.png'),
(28, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1346;s:6:\"height\";i:532;s:4:\"file\";s:26:\"2018/01/headervergader.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"headervergader-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"headervergader-250x99.png\";s:5:\"width\";i:250;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"headervergader-768x304.png\";s:5:\"width\";i:768;s:6:\"height\";i:304;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"headervergader-700x277.png\";s:5:\"width\";i:700;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:25:\"headervergader-120x47.png\";s:5:\"width\";i:120;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:26:\"headervergader-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:26:\"headervergader-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 18, '_wp_attached_file', '2018/01/ICONEN.zip'),
(30, 19, '_wp_attached_file', '2018/01/idee.png'),
(31, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:16:\"2018/01/idee.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"idee-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"idee-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:16:\"idee-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:16:\"idee-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:16:\"idee-700x300.png\";s:5:\"width\";i:256;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 20, '_wp_attached_file', '2018/01/In.png'),
(33, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:14:\"2018/01/In.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"In-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"In-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:14:\"In-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:14:\"In-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-256x109\";a:4:{s:4:\"file\";s:14:\"In-256x109.png\";s:5:\"width\";i:256;s:6:\"height\";i:109;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 21, '_wp_attached_file', '2018/01/ivs_klein.png'),
(35, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:102;s:6:\"height\";i:30;s:4:\"file\";s:21:\"2018/01/ivs_klein.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 22, '_wp_attached_file', '2018/01/laptop.png'),
(37, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:18:\"2018/01/laptop.png\";s:5:\"sizes\";a:1:{s:5:\"small\";a:4:{s:4:\"file\";s:18:\"laptop-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 23, '_wp_attached_file', '2018/01/linkedin.png'),
(39, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:20:\"2018/01/linkedin.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"linkedin-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"linkedin-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:20:\"linkedin-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:20:\"linkedin-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 24, '_wp_attached_file', '2018/01/logo.png'),
(41, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:397;s:6:\"height\";i:406;s:4:\"file\";s:16:\"2018/01/logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-250x256.png\";s:5:\"width\";i:250;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:16:\"logo-120x123.png\";s:5:\"width\";i:120;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:16:\"logo-397x200.png\";s:5:\"width\";i:397;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 25, '_wp_attached_file', '2018/01/map.png'),
(43, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:15:\"2018/01/map.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"map-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"map-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:15:\"map-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:15:\"map-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 26, '_wp_attached_file', '2018/01/monitor.png'),
(45, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:19:\"2018/01/monitor.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"monitor-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"monitor-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:19:\"monitor-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:19:\"monitor-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 27, '_wp_attached_file', '2018/01/motherboard-1.png'),
(47, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:25:\"2018/01/motherboard-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"motherboard-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"motherboard-1-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:25:\"motherboard-1-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:25:\"motherboard-1-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 28, '_wp_attached_file', '2018/01/plantheader.png'),
(49, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1346;s:6:\"height\";i:532;s:4:\"file\";s:23:\"2018/01/plantheader.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"plantheader-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"plantheader-250x99.png\";s:5:\"width\";i:250;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"plantheader-768x304.png\";s:5:\"width\";i:768;s:6:\"height\";i:304;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"plantheader-700x277.png\";s:5:\"width\";i:700;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:22:\"plantheader-120x47.png\";s:5:\"width\";i:120;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:23:\"plantheader-700x200.png\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"640x400\";}}}'),
(50, 29, '_wp_attached_file', '2018/01/rating.png'),
(51, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:18:\"2018/01/rating.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"rating-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"rating-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:18:\"rating-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:18:\"rating-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 30, '_wp_attached_file', '2018/01/smartphone-1.png'),
(53, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:24:\"2018/01/smartphone-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"smartphone-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"smartphone-1-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:24:\"smartphone-1-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:24:\"smartphone-1-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 31, '_wp_attached_file', '2018/01/smartphone-2.png'),
(55, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:24:\"2018/01/smartphone-2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"smartphone-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"smartphone-2-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:24:\"smartphone-2-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:24:\"smartphone-2-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 32, '_wp_attached_file', '2018/01/Twitt.png'),
(57, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:17:\"2018/01/Twitt.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Twitt-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Twitt-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:17:\"Twitt-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:17:\"Twitt-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 33, '_wp_attached_file', '2018/01/twitter-circular-button.png'),
(59, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:35:\"2018/01/twitter-circular-button.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"twitter-circular-button-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"twitter-circular-button-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:35:\"twitter-circular-button-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:35:\"twitter-circular-button-256x200.png\";s:5:\"width\";i:256;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 34, '_thumbnail_id', '15'),
(61, 34, '_wp_attachment_image_alt', ''),
(62, 34, 'ml-slider_type', 'image'),
(63, 35, '_thumbnail_id', '19'),
(64, 35, '_wp_attachment_image_alt', ''),
(65, 35, 'ml-slider_type', 'image'),
(66, 15, '_wp_attachment_backup_sizes', 'a:1:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:73:\"C:xampphtdocssscfinal/wp-content/uploads/2018/01/headerboekje-700x300.png\";s:4:\"file\";s:24:\"headerboekje-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(67, 19, '_wp_attachment_backup_sizes', 'a:1:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:65:\"C:xampphtdocssscfinal/wp-content/uploads/2018/01/idee-700x300.png\";s:4:\"file\";s:16:\"idee-700x300.png\";s:5:\"width\";i:256;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(68, 35, '_wp_desired_post_slug', 'slider-4-image-2'),
(69, 34, 'ml-slider_crop_position', 'center-center'),
(70, 35, 'ml-slider_crop_position', 'center-center'),
(122, 50, '_edit_last', '1'),
(123, 50, '_edit_lock', '1515746263:1'),
(124, 50, '_oembed_07cff39f4da042384835462fe9aa3099', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/umxb8LL9TP0?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(125, 50, '_oembed_time_07cff39f4da042384835462fe9aa3099', '1515674451'),
(128, 52, '_edit_last', '1'),
(129, 52, '_edit_lock', '1515674616:1'),
(132, 52, '_oembed_07cff39f4da042384835462fe9aa3099', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/umxb8LL9TP0?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(133, 52, '_oembed_time_07cff39f4da042384835462fe9aa3099', '1515674633'),
(134, 54, '_edit_last', '1'),
(135, 54, '_edit_lock', '1519378502:1'),
(140, 57, '_edit_last', '1'),
(143, 57, '_edit_lock', '1515675682:1'),
(144, 59, '_edit_last', '1'),
(145, 59, '_edit_lock', '1517402201:1'),
(148, 57, '_thumbnail_id', '22'),
(151, 57, '_secondary_title', 'Ontdek wie wij zijn en wat wij doen.'),
(152, 54, '_thumbnail_id', '27'),
(155, 54, '_secondary_title', 'Bekijk hier een lijst met de afgeronde SSC projecten.'),
(156, 59, '_thumbnail_id', '31'),
(159, 59, '_secondary_title', 'Neem hier contact met ons op en wij reageren zo snel mogelijk.'),
(160, 59, '_oembed_07cff39f4da042384835462fe9aa3099', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/umxb8LL9TP0?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(161, 59, '_oembed_time_07cff39f4da042384835462fe9aa3099', '1515674980'),
(170, 34, '_wp_desired_post_slug', 'slider-4-image'),
(171, 62, 'ml-slider_settings', 'a:35:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:8:\"slidelow\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"300\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(172, 63, '_thumbnail_id', '10'),
(173, 63, '_wp_attachment_image_alt', ''),
(174, 63, 'ml-slider_type', 'image'),
(175, 10, '_wp_attachment_backup_sizes', 'a:1:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:68:\"C:xampphtdocssscfinal/wp-content/uploads/2018/01/header2-700x300.png\";s:4:\"file\";s:19:\"header2-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(176, 63, 'ml-slider_crop_position', 'center-center'),
(180, 63, '_wp_desired_post_slug', 'slider-4-image'),
(181, 64, 'ml-slider_settings', 'a:35:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"300\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:5:\"false\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(182, 65, '_thumbnail_id', '17'),
(183, 65, '_wp_attachment_image_alt', ''),
(184, 65, 'ml-slider_type', 'image'),
(185, 17, '_wp_attachment_backup_sizes', 'a:1:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:75:\"C:xampphtdocssscfinal/wp-content/uploads/2018/01/headervergader-700x300.png\";s:4:\"file\";s:26:\"headervergader-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(186, 65, 'ml-slider_crop_position', 'center-center'),
(187, 66, '_thumbnail_id', '20'),
(188, 66, '_wp_attachment_image_alt', ''),
(189, 66, 'ml-slider_type', 'image'),
(190, 20, '_wp_attachment_backup_sizes', 'a:1:{s:15:\"resized-256x109\";a:5:{s:4:\"path\";s:63:\"C:xampphtdocssscfinal/wp-content/uploads/2018/01/In-256x109.png\";s:4:\"file\";s:14:\"In-256x109.png\";s:5:\"width\";i:256;s:6:\"height\";i:109;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(191, 66, 'ml-slider_crop_position', 'center-center'),
(192, 64, '_wp_desired_post_slug', 'new-slideshow-3'),
(193, 62, '_wp_desired_post_slug', 'new-slideshow-2'),
(194, 65, '_wp_desired_post_slug', 'slider-62-image'),
(195, 66, '_wp_desired_post_slug', 'slider-62-image-2'),
(196, 4, '_wp_desired_post_slug', 'new-slideshow'),
(197, 67, 'ml-slider_settings', 'a:35:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"300\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:4:\"true\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(198, 68, '_thumbnail_id', '17'),
(199, 68, '_wp_attachment_image_alt', ''),
(200, 68, 'ml-slider_type', 'image'),
(201, 16, '_wp_attachment_backup_sizes', 'a:5:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:74:\"C:xampphtdocssscfinal/wp-content/uploads/2018/01/headercontact-700x300.png\";s:4:\"file\";s:25:\"headercontact-700x300.png\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"resized-1200x300\";a:5:{s:4:\"path\";s:75:\"C:xampphtdocssscfinal/wp-content/uploads/2018/01/headercontact-1200x300.png\";s:4:\"file\";s:26:\"headercontact-1200x300.png\";s:5:\"width\";i:1200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"resized-1198x300\";a:5:{s:4:\"path\";s:75:\"C:xampphtdocssscfinal/wp-content/uploads/2018/01/headercontact-1198x300.png\";s:4:\"file\";s:26:\"headercontact-1198x300.png\";s:5:\"width\";i:1198;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"resized-1346x210\";a:5:{s:4:\"path\";s:75:\"C:xampphtdocssscfinal/wp-content/uploads/2018/01/headercontact-1346x210.png\";s:4:\"file\";s:26:\"headercontact-1346x210.png\";s:5:\"width\";i:1346;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"resized-0x0\";a:5:{s:4:\"path\";s:70:\"C:xampphtdocssscfinal/wp-content/uploads/2018/01/headercontact-0x0.png\";s:4:\"file\";s:21:\"headercontact-0x0.png\";s:5:\"width\";i:1346;s:6:\"height\";i:532;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(202, 68, 'ml-slider_crop_position', 'center-center'),
(205, 50, '_secondary_title', ''),
(254, 50, '_oembed_5010dd1b5d2abe9f8b31de0008215dfb', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/umxb8LL9TP0?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(255, 50, '_oembed_time_5010dd1b5d2abe9f8b31de0008215dfb', '1515746290'),
(256, 59, '_oembed_5010dd1b5d2abe9f8b31de0008215dfb', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/umxb8LL9TP0?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(257, 59, '_oembed_time_5010dd1b5d2abe9f8b31de0008215dfb', '1515746292'),
(262, 80, '_edit_last', '1'),
(263, 80, '_edit_lock', '1515747234:1'),
(266, 80, '_secondary_title', ''),
(269, 83, '_edit_last', '1'),
(270, 83, '_edit_lock', '1517483646:1'),
(273, 83, '_secondary_title', ''),
(274, 80, '_thumbnail_id', '19'),
(277, 83, '_oembed_5010dd1b5d2abe9f8b31de0008215dfb', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/umxb8LL9TP0?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(278, 83, '_oembed_time_5010dd1b5d2abe9f8b31de0008215dfb', '1515747374'),
(279, 85, '_wp_attached_file', 'hugeit-slider/slide1.jpg'),
(280, 86, '_wp_attached_file', 'hugeit-slider/slide2.jpg'),
(281, 87, '_wp_attached_file', 'hugeit-slider/slide3.jpg'),
(290, 90, 'sa_slide1_content', '<div style=\'text-align: center; padding-bottom: 10px;\'>\n<div><img src=\'http://localhost/sscfinal/wp-content/plugins/slide-anything/images/sample_logo1.png\' alt=\'Logo 1\' /></div>\n<h3>Company Name</h3>\n<p>Lorem ipsum dolor sit amet, cu usu cibo vituperata, id ius probo maiestatis inciderint, sit eu vide volutpat.</p>\n</div>\n'),
(291, 90, 'sa_slide1_image_id', ''),
(292, 90, 'sa_slide1_image_pos', 'left top'),
(293, 90, 'sa_slide1_image_size', 'contain'),
(294, 90, 'sa_slide1_image_repeat', 'no-repeat'),
(295, 90, 'sa_slide1_image_color', '#f4cccc'),
(296, 90, 'sa_slide1_link_url', ''),
(297, 90, 'sa_slide1_link_target', '_self'),
(298, 90, 'sa_slide1_popup_type', 'NONE'),
(299, 90, 'sa_slide1_popup_imageid', ''),
(300, 90, 'sa_slide1_popup_imagetitle', ''),
(301, 90, 'sa_slide1_popup_video_id', ''),
(302, 90, 'sa_slide1_popup_video_type', ''),
(303, 90, 'sa_slide1_popup_background', 'no'),
(304, 90, 'sa_slide1_popup_html', ''),
(305, 90, 'sa_slide1_popup_shortcode', '0'),
(306, 90, 'sa_slide1_popup_bgcol', '#ffffff'),
(307, 90, 'sa_slide1_popup_width', '600'),
(308, 90, 'sa_slide2_content', '<div style=\'text-align: center; padding-bottom: 10px;\'>\n<div><img src=\'http://localhost/sscfinal/wp-content/plugins/slide-anything/images/sample_logo2.png\' alt=\'Logo 2\' /></div>\n<h3>Company Name</h3>\n<p>Lorem ipsum dolor sit amet, cu usu cibo vituperata, id ius probo maiestatis inciderint, sit eu vide volutpat.</p>\n</div>\n'),
(309, 90, 'sa_slide2_image_id', ''),
(310, 90, 'sa_slide2_image_pos', 'left top'),
(311, 90, 'sa_slide2_image_size', 'contain'),
(312, 90, 'sa_slide2_image_repeat', 'no-repeat'),
(313, 90, 'sa_slide2_image_color', '#d9ead3'),
(314, 90, 'sa_slide2_link_url', ''),
(315, 90, 'sa_slide2_link_target', '_self'),
(316, 90, 'sa_slide2_popup_type', 'NONE'),
(317, 90, 'sa_slide2_popup_imageid', ''),
(318, 90, 'sa_slide2_popup_imagetitle', ''),
(319, 90, 'sa_slide2_popup_video_id', ''),
(320, 90, 'sa_slide2_popup_video_type', ''),
(321, 90, 'sa_slide2_popup_background', 'no'),
(322, 90, 'sa_slide2_popup_html', ''),
(323, 90, 'sa_slide2_popup_shortcode', '0'),
(324, 90, 'sa_slide2_popup_bgcol', '#ffffff'),
(325, 90, 'sa_slide2_popup_width', '600'),
(326, 90, 'sa_slide3_content', '<div style=\'text-align: center; padding-bottom: 10px;\'>\n<div><img src=\'http://localhost/sscfinal/wp-content/plugins/slide-anything/images/sample_logo3.png\' alt=\'Logo 3\' /></div>\n<h3>Company Name</h3>\n<p>Lorem ipsum dolor sit amet, cu usu cibo vituperata, id ius probo maiestatis inciderint, sit eu vide volutpat.</p>\n</div>\n'),
(327, 90, 'sa_slide3_image_id', ''),
(328, 90, 'sa_slide3_image_pos', 'left top'),
(329, 90, 'sa_slide3_image_size', 'contain'),
(330, 90, 'sa_slide3_image_repeat', 'no-repeat'),
(331, 90, 'sa_slide3_image_color', '#fce5cd'),
(332, 90, 'sa_slide3_link_url', ''),
(333, 90, 'sa_slide3_link_target', '_self'),
(334, 90, 'sa_slide3_popup_type', 'NONE'),
(335, 90, 'sa_slide3_popup_imageid', ''),
(336, 90, 'sa_slide3_popup_imagetitle', ''),
(337, 90, 'sa_slide3_popup_video_id', ''),
(338, 90, 'sa_slide3_popup_video_type', '');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(339, 90, 'sa_slide3_popup_background', 'no'),
(340, 90, 'sa_slide3_popup_html', ''),
(341, 90, 'sa_slide3_popup_shortcode', '0'),
(342, 90, 'sa_slide3_popup_bgcol', '#ffffff'),
(343, 90, 'sa_slide3_popup_width', '600'),
(344, 90, 'sa_slide4_content', '<div style=\'text-align: center; padding-bottom: 10px;\'>\n<div><img src=\'http://localhost/sscfinal/wp-content/plugins/slide-anything/images/sample_logo4.png\' alt=\'Logo 4\' /></div>\n<h3>Company Name</h3>\n<p>Lorem ipsum dolor sit amet, cu usu cibo vituperata, id ius probo maiestatis inciderint, sit eu vide volutpat.</p>\n</div>\n'),
(345, 90, 'sa_slide4_image_id', ''),
(346, 90, 'sa_slide4_image_pos', 'left top'),
(347, 90, 'sa_slide4_image_size', 'contain'),
(348, 90, 'sa_slide4_image_repeat', 'no-repeat'),
(349, 90, 'sa_slide4_image_color', '#d0e0e3'),
(350, 90, 'sa_slide4_link_url', ''),
(351, 90, 'sa_slide4_link_target', '_self'),
(352, 90, 'sa_slide4_popup_type', 'NONE'),
(353, 90, 'sa_slide4_popup_imageid', ''),
(354, 90, 'sa_slide4_popup_imagetitle', ''),
(355, 90, 'sa_slide4_popup_video_id', ''),
(356, 90, 'sa_slide4_popup_video_type', ''),
(357, 90, 'sa_slide4_popup_background', 'no'),
(358, 90, 'sa_slide4_popup_html', ''),
(359, 90, 'sa_slide4_popup_shortcode', '0'),
(360, 90, 'sa_slide4_popup_bgcol', '#ffffff'),
(361, 90, 'sa_slide4_popup_width', '600'),
(362, 90, 'sa_slide5_content', '<div style=\'text-align: center; padding-bottom: 10px;\'>\n<div><img src=\'http://localhost/sscfinal/wp-content/plugins/slide-anything/images/sample_logo5.png\' alt=\'Logo 5\' /></div>\n<h3>Company Name</h3>\n<p>Lorem ipsum dolor sit amet, cu usu cibo vituperata, id ius probo maiestatis inciderint, sit eu vide volutpat.</p>\n</div>\n'),
(363, 90, 'sa_slide5_image_id', ''),
(364, 90, 'sa_slide5_image_pos', 'left top'),
(365, 90, 'sa_slide5_image_size', 'contain'),
(366, 90, 'sa_slide5_image_repeat', 'no-repeat'),
(367, 90, 'sa_slide5_image_color', '#fff2cc'),
(368, 90, 'sa_slide5_link_url', ''),
(369, 90, 'sa_slide5_link_target', '_self'),
(370, 90, 'sa_slide5_popup_type', 'NONE'),
(371, 90, 'sa_slide5_popup_imageid', ''),
(372, 90, 'sa_slide5_popup_imagetitle', ''),
(373, 90, 'sa_slide5_popup_video_id', ''),
(374, 90, 'sa_slide5_popup_video_type', ''),
(375, 90, 'sa_slide5_popup_background', 'no'),
(376, 90, 'sa_slide5_popup_html', ''),
(377, 90, 'sa_slide5_popup_shortcode', '0'),
(378, 90, 'sa_slide5_popup_bgcol', '#ffffff'),
(379, 90, 'sa_slide5_popup_width', '600'),
(380, 90, 'sa_slide6_content', '<div style=\'text-align: center; padding-bottom: 10px;\'>\n<div><img src=\'http://localhost/sscfinal/wp-content/plugins/slide-anything/images/sample_logo6.png\' alt=\'Logo 6\' /></div>\n<h3>Company Name</h3>\n<p>Lorem ipsum dolor sit amet, cu usu cibo vituperata, id ius probo maiestatis inciderint, sit eu vide volutpat.</p>\n</div>\n'),
(381, 90, 'sa_slide6_image_id', ''),
(382, 90, 'sa_slide6_image_pos', 'left top'),
(383, 90, 'sa_slide6_image_size', 'contain'),
(384, 90, 'sa_slide6_image_repeat', 'no-repeat'),
(385, 90, 'sa_slide6_image_color', '#cfe2f3'),
(386, 90, 'sa_slide6_link_url', ''),
(387, 90, 'sa_slide6_link_target', '_self'),
(388, 90, 'sa_slide6_popup_type', 'NONE'),
(389, 90, 'sa_slide6_popup_imageid', ''),
(390, 90, 'sa_slide6_popup_imagetitle', ''),
(391, 90, 'sa_slide6_popup_video_id', ''),
(392, 90, 'sa_slide6_popup_video_type', ''),
(393, 90, 'sa_slide6_popup_background', 'no'),
(394, 90, 'sa_slide6_popup_html', ''),
(395, 90, 'sa_slide6_popup_shortcode', '0'),
(396, 90, 'sa_slide6_popup_bgcol', '#ffffff'),
(397, 90, 'sa_slide6_popup_width', '600'),
(398, 90, 'sa_slide7_content', '<div style=\'text-align: center; padding-bottom: 10px;\'>\n<div><img src=\'http://localhost/sscfinal/wp-content/plugins/slide-anything/images/sample_logo7.png\' alt=\'Logo 7\' /></div>\n<h3>Company Name</h3>\n<p>Lorem ipsum dolor sit amet, cu usu cibo vituperata, id ius probo maiestatis inciderint, sit eu vide volutpat.</p>\n</div>\n'),
(399, 90, 'sa_slide7_image_id', ''),
(400, 90, 'sa_slide7_image_pos', 'left top'),
(401, 90, 'sa_slide7_image_size', 'contain'),
(402, 90, 'sa_slide7_image_repeat', 'no-repeat'),
(403, 90, 'sa_slide7_image_color', '#d9d2e9'),
(404, 90, 'sa_slide7_link_url', ''),
(405, 90, 'sa_slide7_link_target', '_self'),
(406, 90, 'sa_slide7_popup_type', 'NONE'),
(407, 90, 'sa_slide7_popup_imageid', ''),
(408, 90, 'sa_slide7_popup_imagetitle', ''),
(409, 90, 'sa_slide7_popup_video_id', ''),
(410, 90, 'sa_slide7_popup_video_type', ''),
(411, 90, 'sa_slide7_popup_background', 'no'),
(412, 90, 'sa_slide7_popup_html', ''),
(413, 90, 'sa_slide7_popup_shortcode', '0'),
(414, 90, 'sa_slide7_popup_bgcol', '#ffffff'),
(415, 90, 'sa_slide7_popup_width', '600'),
(416, 90, 'sa_slide8_content', '<div style=\'text-align: center; padding-bottom: 10px;\'>\n<div><img src=\'http://localhost/sscfinal/wp-content/plugins/slide-anything/images/sample_logo8.png\' alt=\'Logo 8\' /></div>\n<h3>Company Name</h3>\n<p>Lorem ipsum dolor sit amet, cu usu cibo vituperata, id ius probo maiestatis inciderint, sit eu vide volutpat.</p>\n</div>\n'),
(417, 90, 'sa_slide8_image_id', ''),
(418, 90, 'sa_slide8_image_pos', 'left top'),
(419, 90, 'sa_slide8_image_size', 'contain'),
(420, 90, 'sa_slide8_image_repeat', 'no-repeat'),
(421, 90, 'sa_slide8_image_color', '#ead1dc'),
(422, 90, 'sa_slide8_link_url', ''),
(423, 90, 'sa_slide8_link_target', '_self'),
(424, 90, 'sa_slide8_popup_type', 'NONE'),
(425, 90, 'sa_slide8_popup_imageid', ''),
(426, 90, 'sa_slide8_popup_imagetitle', ''),
(427, 90, 'sa_slide8_popup_video_id', ''),
(428, 90, 'sa_slide8_popup_video_type', ''),
(429, 90, 'sa_slide8_popup_background', 'no'),
(430, 90, 'sa_slide8_popup_html', ''),
(431, 90, 'sa_slide8_popup_shortcode', '0'),
(432, 90, 'sa_slide8_popup_bgcol', '#ffffff'),
(433, 90, 'sa_slide8_popup_width', '600'),
(434, 90, 'sa_disable_visual_editor', '0'),
(435, 90, 'sa_num_slides', '8'),
(436, 90, 'sa_slide_duration', '4'),
(437, 90, 'sa_slide_transition', '0.3'),
(438, 90, 'sa_loop_slider', '1'),
(439, 90, 'sa_stop_hover', '1'),
(440, 90, 'sa_nav_arrows', '1'),
(441, 90, 'sa_pagination', '1'),
(442, 90, 'sa_shortcodes', '0'),
(443, 90, 'sa_random_order', '1'),
(444, 90, 'sa_reverse_order', '0'),
(445, 90, 'sa_mouse_drag', '1'),
(446, 90, 'sa_touch_drag', '1'),
(447, 90, 'sa_items_width1', '1'),
(448, 90, 'sa_items_width2', '2'),
(449, 90, 'sa_items_width3', '3'),
(450, 90, 'sa_items_width4', '4'),
(451, 90, 'sa_items_width5', '4'),
(452, 90, 'sa_items_width6', '4'),
(453, 90, 'sa_transition', 'fade'),
(454, 90, 'sa_css_id', 'sample_slider'),
(455, 90, 'sa_background_color', '#fafafa'),
(456, 90, 'sa_border_width', '1'),
(457, 90, 'sa_border_color', '#f0f0f0'),
(458, 90, 'sa_border_radius', '5'),
(459, 90, 'sa_wrapper_padd_top', '8'),
(460, 90, 'sa_wrapper_padd_right', '8'),
(461, 90, 'sa_wrapper_padd_bottom', '8'),
(462, 90, 'sa_wrapper_padd_left', '8'),
(463, 90, 'sa_slide_min_height_perc', '50'),
(464, 90, 'sa_slide_padding_tb', '5'),
(465, 90, 'sa_slide_padding_lr', '5'),
(466, 90, 'sa_slide_margin_lr', '0'),
(467, 90, 'sa_autohide_arrows', '1'),
(468, 90, 'sa_slide_icons_location', 'Center Center'),
(469, 90, 'sa_slide_icons_visible', '0'),
(470, 90, 'sa_slide_icons_color', 'white'),
(471, 91, '_easingslider', 'a:19:{s:9:\"randomize\";b:0;s:6:\"slides\";a:1:{i:0;O:8:\"stdClass\":9:{s:13:\"attachment_id\";i:28;s:4:\"type\";s:5:\"image\";s:3:\"alt\";s:0:\"\";s:4:\"link\";s:4:\"none\";s:7:\"linkUrl\";s:0:\"\";s:15:\"linkTargetBlank\";b:0;s:5:\"title\";s:0:\"\";s:3:\"url\";N;s:2:\"id\";i:1;}}s:5:\"width\";i:640;s:6:\"height\";i:400;s:10:\"full_width\";b:1;s:14:\"image_resizing\";b:1;s:11:\"auto_height\";b:0;s:17:\"transition_effect\";s:4:\"fade\";s:19:\"transition_duration\";i:400;s:12:\"lazy_loading\";b:1;s:6:\"arrows\";b:1;s:12:\"arrows_hover\";b:0;s:15:\"arrows_position\";s:6:\"inside\";s:10:\"pagination\";b:1;s:16:\"pagination_hover\";b:0;s:19:\"pagination_position\";s:6:\"inside\";s:19:\"pagination_location\";s:13:\"bottom-center\";s:16:\"playback_enabled\";b:1;s:14:\"playback_pause\";i:4000;}'),
(484, 93, '_edit_last', '1'),
(485, 93, '_wp_page_template', 'contact-page.php'),
(486, 93, '_secondary_title', ''),
(487, 93, '_edit_lock', '1519382534:1'),
(488, 95, '_edit_last', '1'),
(489, 95, '_edit_lock', '1519378494:1'),
(490, 95, '_wp_page_template', 'projecten-page.php'),
(491, 95, '_secondary_title', ''),
(492, 97, '_edit_last', '1'),
(493, 97, '_edit_lock', '1516193439:1'),
(494, 97, '_wp_page_template', 'overons-page.php'),
(495, 97, '_secondary_title', ''),
(503, 102, '_edit_last', '1'),
(504, 102, '_edit_lock', '1516193743:1'),
(505, 102, '_wp_page_template', 'index.php'),
(506, 102, '_secondary_title', ''),
(543, 102, '_oembed_5010dd1b5d2abe9f8b31de0008215dfb', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/umxb8LL9TP0?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(544, 102, '_oembed_time_5010dd1b5d2abe9f8b31de0008215dfb', '1516193933'),
(545, 108, '_edit_last', '1'),
(546, 108, '_edit_lock', '1517432410:1'),
(547, 108, '_thumbnail_id', '15'),
(550, 108, '_secondary_title', ''),
(551, 110, '_edit_last', '1'),
(552, 110, '_edit_lock', '1517431155:1'),
(553, 110, '_thumbnail_id', '16'),
(556, 110, '_secondary_title', ''),
(557, 112, '_edit_last', '1'),
(558, 112, '_edit_lock', '1519381909:1'),
(562, 112, '_secondary_title', ''),
(563, 114, '_edit_last', '1'),
(564, 114, '_edit_lock', '1516197947:1'),
(565, 114, '_thumbnail_id', '10'),
(568, 114, '_secondary_title', ''),
(569, 116, '_edit_last', '1'),
(570, 116, '_edit_lock', '1516198137:1'),
(571, 116, '_thumbnail_id', '14'),
(574, 116, '_secondary_title', ''),
(575, 118, '_edit_last', '1'),
(576, 118, '_edit_lock', '1519378509:1'),
(577, 118, '_thumbnail_id', '12'),
(580, 118, '_secondary_title', ''),
(581, 120, '_edit_last', '1'),
(582, 120, '_edit_lock', '1516197218:1'),
(583, 120, '_thumbnail_id', '29'),
(586, 120, '_secondary_title', ''),
(587, 120, '_oembed_5010dd1b5d2abe9f8b31de0008215dfb', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/umxb8LL9TP0?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(588, 120, '_oembed_time_5010dd1b5d2abe9f8b31de0008215dfb', '1516277474'),
(589, 128, '_edit_last', '1'),
(590, 128, '_edit_lock', '1517403565:1'),
(599, 132, '_form', '<label> Naam* [text* your-name] </label>\n    \n\n<label> E-mail* [email* your-email] </label>\n    \n\n<label> Uw vraag* [textarea your-message] </label>\n    \n<br><br><br><br><br><br><br>\n[submit \"Verzend\"]'),
(600, 132, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:20:\"SSC \"[your-subject]\"\";s:6:\"sender\";s:36:\"[your-name] <hamish1999@yahoo.co.uk>\";s:9:\"recipient\";s:22:\"hamish1999@yahoo.co.uk\";s:4:\"body\";s:167:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on SSC (http://localhost/sscfinal)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(601, 132, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:20:\"SSC \"[your-subject]\"\";s:6:\"sender\";s:28:\"SSC <hamish1999@yahoo.co.uk>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:109:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on SSC (http://localhost/sscfinal)\";s:18:\"additional_headers\";s:32:\"Reply-To: hamish1999@yahoo.co.uk\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(602, 132, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(603, 132, '_additional_settings', ''),
(604, 132, '_locale', 'en_US'),
(605, 133, '_edit_last', '1'),
(606, 133, '_edit_lock', '1516308785:1'),
(607, 133, '_thumbnail_id', '25'),
(610, 133, '_secondary_title', ''),
(611, 133, '_oembed_5010dd1b5d2abe9f8b31de0008215dfb', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/umxb8LL9TP0?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(612, 133, '_oembed_time_5010dd1b5d2abe9f8b31de0008215dfb', '1516308665'),
(613, 135, '_edit_last', '1'),
(614, 135, '_edit_lock', '1516311327:1'),
(617, 135, '_secondary_title', ''),
(618, 135, '_oembed_5010dd1b5d2abe9f8b31de0008215dfb', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/umxb8LL9TP0?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(619, 135, '_oembed_time_5010dd1b5d2abe9f8b31de0008215dfb', '1516309375'),
(620, 138, '_form', '<label> Naam* [text* your-name 40x1] </label>\n\n<label> Achternaam* [text* your-name 40x1] </label>\n\n<label> Email* [email* your-email 40x1] </label>\n\n<label> Telefoon* [number your-number-676 40x1] </label>\n\n<label> Projectnaam* [text your-projectnaam 40x1] </label>\n\n<label> Omschrijving* [textarea your-message] </label>\n<br><br><br><br><br><br><br>\n[submit \"Verzend\"]\n<br><br><br><br><br><br><br>'),
(621, 138, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:20:\"SSC \"[your-subject]\"\";s:6:\"sender\";s:36:\"[your-name] <hamish1999@yahoo.co.uk>\";s:9:\"recipient\";s:22:\"hamish1999@yahoo.co.uk\";s:4:\"body\";s:167:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on SSC (http://localhost/sscfinal)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(622, 138, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:20:\"SSC \"[your-subject]\"\";s:6:\"sender\";s:28:\"SSC <hamish1999@yahoo.co.uk>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:109:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on SSC (http://localhost/sscfinal)\";s:18:\"additional_headers\";s:32:\"Reply-To: hamish1999@yahoo.co.uk\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(623, 138, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(624, 138, '_additional_settings', ''),
(625, 138, '_locale', 'en_US'),
(626, 139, '_edit_last', '1'),
(627, 139, '_edit_lock', '1517402332:1'),
(628, 139, '_wp_page_template', 'projectenaanvraag-page.php'),
(629, 139, '_secondary_title', ''),
(666, 139, '_thumbnail_id', '26'),
(667, 148, '_edit_last', '1'),
(668, 148, '_edit_lock', '1517402299:1'),
(669, 148, '_thumbnail_id', '26'),
(672, 148, '_secondary_title', 'Vraag hier uw project aan!'),
(676, 148, '_oembed_5010dd1b5d2abe9f8b31de0008215dfb', '<iframe width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/umxb8LL9TP0?feature=oembed\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(677, 148, '_oembed_time_5010dd1b5d2abe9f8b31de0008215dfb', '1517407365'),
(718, 159, '_wp_trash_meta_status', 'publish'),
(719, 159, '_wp_trash_meta_time', '1517433067'),
(720, 160, '_wp_trash_meta_status', 'publish'),
(721, 160, '_wp_trash_meta_time', '1517433081'),
(722, 161, '_wp_trash_meta_status', 'publish'),
(723, 161, '_wp_trash_meta_time', '1517433131'),
(724, 162, '_menu_item_type', 'post_type'),
(725, 162, '_menu_item_menu_item_parent', '0'),
(726, 162, '_menu_item_object_id', '102'),
(727, 162, '_menu_item_object', 'page'),
(728, 162, '_menu_item_target', ''),
(729, 162, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(730, 162, '_menu_item_xfn', ''),
(731, 162, '_menu_item_url', ''),
(733, 163, '_menu_item_type', 'post_type'),
(734, 163, '_menu_item_menu_item_parent', '0'),
(735, 163, '_menu_item_object_id', '97'),
(736, 163, '_menu_item_object', 'page'),
(737, 163, '_menu_item_target', ''),
(738, 163, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(739, 163, '_menu_item_xfn', ''),
(740, 163, '_menu_item_url', ''),
(742, 164, '_menu_item_type', 'post_type'),
(743, 164, '_menu_item_menu_item_parent', '0'),
(744, 164, '_menu_item_object_id', '95'),
(745, 164, '_menu_item_object', 'page'),
(746, 164, '_menu_item_target', ''),
(747, 164, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(748, 164, '_menu_item_xfn', ''),
(749, 164, '_menu_item_url', ''),
(751, 165, '_menu_item_type', 'post_type'),
(752, 165, '_menu_item_menu_item_parent', '0'),
(753, 165, '_menu_item_object_id', '93'),
(754, 165, '_menu_item_object', 'page'),
(755, 165, '_menu_item_target', ''),
(756, 165, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(757, 165, '_menu_item_xfn', ''),
(758, 165, '_menu_item_url', ''),
(763, 168, '_wp_attached_file', '2018/01/AAEAAQAAAAAAAAvnAAAAJDNjMzE5YWM2LTA5YTEtNDBjMy04MDJmLThhMDQ5ODRjMzZjOA-1.jpg'),
(764, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:84:\"2018/01/AAEAAQAAAAAAAAvnAAAAJDNjMzE5YWM2LTA5YTEtNDBjMy04MDJmLThhMDQ5ODRjMzZjOA-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:84:\"AAEAAQAAAAAAAAvnAAAAJDNjMzE5YWM2LTA5YTEtNDBjMy04MDJmLThhMDQ5ODRjMzZjOA-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:84:\"AAEAAQAAAAAAAAvnAAAAJDNjMzE5YWM2LTA5YTEtNDBjMy04MDJmLThhMDQ5ODRjMzZjOA-1-250x141.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:84:\"AAEAAQAAAAAAAAvnAAAAJDNjMzE5YWM2LTA5YTEtNDBjMy04MDJmLThhMDQ5ODRjMzZjOA-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:84:\"AAEAAQAAAAAAAAvnAAAAJDNjMzE5YWM2LTA5YTEtNDBjMy04MDJmLThhMDQ5ODRjMzZjOA-1-700x394.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:83:\"AAEAAQAAAAAAAAvnAAAAJDNjMzE5YWM2LTA5YTEtNDBjMy04MDJmLThhMDQ5ODRjMzZjOA-1-120x68.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:84:\"AAEAAQAAAAAAAAvnAAAAJDNjMzE5YWM2LTA5YTEtNDBjMy04MDJmLThhMDQ5ODRjMzZjOA-1-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(765, 112, '_thumbnail_id', '168');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2018-01-11 12:32:00', '2018-01-11 12:32:00', '', 'New Slideshow', '', 'trash', 'closed', 'closed', '', 'new-slideshow__trashed', '', '', '2018-01-11 13:53:10', '2018-01-11 13:53:10', '', 0, 'http://localhost/sscfinal/?post_type=ml-slider&#038;p=4', 0, 'ml-slider', '', 0),
(5, 1, '2018-01-11 12:33:00', '2018-01-11 12:33:00', '', 'call-answer', '', 'inherit', 'open', 'closed', '', 'call-answer', '', '', '2018-01-11 12:33:00', '2018-01-11 12:33:00', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/call-answer.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2018-01-11 12:33:01', '2018-01-11 12:33:01', '', 'envelope', '', 'inherit', 'open', 'closed', '', 'envelope', '', '', '2018-01-11 12:33:01', '2018-01-11 12:33:01', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/envelope.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2018-01-11 12:33:01', '2018-01-11 12:33:01', '', 'Face', '', 'inherit', 'open', 'closed', '', 'face', '', '', '2018-01-11 12:33:01', '2018-01-11 12:33:01', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/Face.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2018-01-11 12:33:02', '2018-01-11 12:33:02', '', 'facebook-logo-in-circular-button-outlined-social-symbol', '', 'inherit', 'open', 'closed', '', 'facebook-logo-in-circular-button-outlined-social-symbol', '', '', '2018-01-11 12:33:02', '2018-01-11 12:33:02', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/facebook-logo-in-circular-button-outlined-social-symbol.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2018-01-11 12:33:02', '2018-01-11 12:33:02', '', 'facebook-placeholder-for-locate-places-on-maps', '', 'inherit', 'open', 'closed', '', 'facebook-placeholder-for-locate-places-on-maps', '', '', '2018-01-11 12:33:02', '2018-01-11 12:33:02', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/facebook-placeholder-for-locate-places-on-maps.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2018-01-11 12:33:03', '2018-01-11 12:33:03', '', 'header2', '', 'inherit', 'open', 'closed', '', 'header2', '', '', '2018-01-11 12:33:03', '2018-01-11 12:33:03', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/header2.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2018-01-11 12:33:05', '2018-01-11 12:33:05', '', 'header3', '', 'inherit', 'open', 'closed', '', 'header3', '', '', '2018-01-11 12:33:05', '2018-01-11 12:33:05', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/header3.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2018-01-11 12:33:06', '2018-01-11 12:33:06', '', 'header5', '', 'inherit', 'open', 'closed', '', 'header5', '', '', '2018-01-11 12:33:06', '2018-01-11 12:33:06', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/header5.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2018-01-11 12:33:07', '2018-01-11 12:33:07', '', 'header6', '', 'inherit', 'open', 'closed', '', 'header6', '', '', '2018-01-11 12:33:07', '2018-01-11 12:33:07', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/header6.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2018-01-11 12:33:09', '2018-01-11 12:33:09', '', 'header7', '', 'inherit', 'open', 'closed', '', 'header7', '', '', '2018-01-11 12:33:09', '2018-01-11 12:33:09', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/header7.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2018-01-11 12:33:10', '2018-01-11 12:33:10', '', 'headerboekje', '', 'inherit', 'open', 'closed', '', 'headerboekje', '', '', '2018-01-11 12:33:10', '2018-01-11 12:33:10', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/headerboekje.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2018-01-11 12:33:11', '2018-01-11 12:33:11', '', 'headercontact', '', 'inherit', 'open', 'closed', '', 'headercontact', '', '', '2018-01-11 12:33:11', '2018-01-11 12:33:11', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/headercontact.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2018-01-11 12:33:13', '2018-01-11 12:33:13', '', 'headervergader', '', 'inherit', 'open', 'closed', '', 'headervergader', '', '', '2018-01-11 12:33:13', '2018-01-11 12:33:13', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/headervergader.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2018-01-11 12:33:14', '2018-01-11 12:33:14', '', 'ICONEN', '', 'inherit', 'open', 'closed', '', 'iconen', '', '', '2018-01-11 12:33:14', '2018-01-11 12:33:14', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/ICONEN.zip', 0, 'attachment', 'application/zip', 0),
(19, 1, '2018-01-11 12:33:15', '2018-01-11 12:33:15', '', 'idee', '', 'inherit', 'open', 'closed', '', 'idee', '', '', '2018-01-11 12:33:15', '2018-01-11 12:33:15', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/idee.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2018-01-11 12:33:15', '2018-01-11 12:33:15', '', 'In', '', 'inherit', 'open', 'closed', '', 'in', '', '', '2018-01-11 12:33:15', '2018-01-11 12:33:15', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/In.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2018-01-11 12:33:16', '2018-01-11 12:33:16', '', 'ivs_klein', '', 'inherit', 'open', 'closed', '', 'ivs_klein', '', '', '2018-01-11 12:33:16', '2018-01-11 12:33:16', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/ivs_klein.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2018-01-11 12:33:16', '2018-01-11 12:33:16', '', 'laptop', '', 'inherit', 'open', 'closed', '', 'laptop', '', '', '2018-01-11 12:33:16', '2018-01-11 12:33:16', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/laptop.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2018-01-11 12:33:16', '2018-01-11 12:33:16', '', 'linkedin', '', 'inherit', 'open', 'closed', '', 'linkedin', '', '', '2018-01-11 12:33:16', '2018-01-11 12:33:16', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/linkedin.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2018-01-11 12:33:17', '2018-01-11 12:33:17', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-01-11 12:33:17', '2018-01-11 12:33:17', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/logo.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2018-01-11 12:33:17', '2018-01-11 12:33:17', '', 'map', '', 'inherit', 'open', 'closed', '', 'map', '', '', '2018-01-11 12:33:17', '2018-01-11 12:33:17', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/map.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2018-01-11 12:33:18', '2018-01-11 12:33:18', '', 'monitor', '', 'inherit', 'open', 'closed', '', 'monitor', '', '', '2018-01-11 12:33:18', '2018-01-11 12:33:18', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/monitor.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2018-01-11 12:33:18', '2018-01-11 12:33:18', '', 'motherboard (1)', '', 'inherit', 'open', 'closed', '', 'motherboard-1', '', '', '2018-01-11 12:33:18', '2018-01-11 12:33:18', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/motherboard-1.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2018-01-11 12:33:19', '2018-01-11 12:33:19', '', 'plantheader', '', 'inherit', 'open', 'closed', '', 'plantheader', '', '', '2018-01-11 12:33:19', '2018-01-11 12:33:19', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/plantheader.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2018-01-11 12:33:20', '2018-01-11 12:33:20', '', 'rating', '', 'inherit', 'open', 'closed', '', 'rating', '', '', '2018-01-11 12:33:20', '2018-01-11 12:33:20', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/rating.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2018-01-11 12:33:20', '2018-01-11 12:33:20', '', 'smartphone (1)', '', 'inherit', 'open', 'closed', '', 'smartphone-1', '', '', '2018-01-11 12:33:20', '2018-01-11 12:33:20', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/smartphone-1.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2018-01-11 12:33:21', '2018-01-11 12:33:21', '', 'smartphone (2)', '', 'inherit', 'open', 'closed', '', 'smartphone-2', '', '', '2018-01-11 12:33:21', '2018-01-11 12:33:21', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/smartphone-2.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2018-01-11 12:33:21', '2018-01-11 12:33:21', '', 'Twitt', '', 'inherit', 'open', 'closed', '', 'twitt', '', '', '2018-01-11 12:33:21', '2018-01-11 12:33:21', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/Twitt.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2018-01-11 12:33:22', '2018-01-11 12:33:22', '', 'twitter-circular-button', '', 'inherit', 'open', 'closed', '', 'twitter-circular-button', '', '', '2018-01-11 12:33:22', '2018-01-11 12:33:22', '', 0, 'http://localhost/sscfinal/wp-content/uploads/2018/01/twitter-circular-button.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2018-01-11 12:33:51', '2018-01-11 12:33:51', '', 'Slider 4 - image', '', 'trash', 'closed', 'closed', '', 'slider-4-image__trashed', '', '', '2018-01-11 13:12:41', '2018-01-11 13:12:41', '', 0, 'http://localhost/sscfinal/?post_type=ml-slide&#038;p=34', 0, 'ml-slide', '', 0),
(35, 1, '2018-01-11 12:33:52', '2018-01-11 12:33:52', '', 'Slider 4 - image', '', 'trash', 'closed', 'closed', '', 'slider-4-image-2__trashed', '', '', '2018-01-11 12:34:15', '2018-01-11 12:34:15', '', 0, 'http://localhost/sscfinal/?post_type=ml-slide&#038;p=35', 4, 'ml-slide', '', 0),
(50, 1, '2018-01-11 12:40:51', '2018-01-11 12:40:51', 'https://www.youtube.com/watch?v=umxb8LL9TP0', 'youtube video', '', 'publish', 'open', 'open', '', 'youtube-video', '', '', '2018-01-12 08:38:07', '2018-01-12 08:38:07', '', 0, 'http://localhost/sscfinal/?p=50', 0, 'post', '', 0),
(51, 1, '2018-01-11 12:40:51', '2018-01-11 12:40:51', 'https://www.youtube.com/embed/umxb8LL9TP0', 'youtube video', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-01-11 12:40:51', '2018-01-11 12:40:51', '', 50, 'http://localhost/sscfinal/2018/01/11/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-01-11 12:43:41', '2018-01-11 12:43:41', '<div class=\"_h8t\">\r\n<div class=\"_5wd9 direction_ltr\">\r\n<div class=\"_5wde _n4o\">\r\n<div class=\"_5w1r _3_om _5wdf\">\r\n<div class=\"_4gx_\">\r\n<div class=\"_d97\"><span class=\"_5yl5\">Het Shared Service Center is een leerbedrijf voor studenten, door studenten. Dit houd in dat de gehele omgeving word georganiseerd door de studenten zelf, van projectgroepen tot het management. De belangrijkste factoren binnen onze formule zijn de externe opdrachtgever en de expert. Wij werken graag samen met bedrijven die ons iets kunnen bij brengen of uit kunnen dagen iets nieuws te leren. Ook werken wij veel samen met experts die ons helpen met de complexere gedeeltes van de ICT, zodat we onze kennis direct uit het veld krijgen.</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;', 'Leerbedrijf Shared Service Center', '', 'publish', 'open', 'open', '', 'leerbedrijf-shared-service-center', '', '', '2018-01-11 12:43:41', '2018-01-11 12:43:41', '', 0, 'http://localhost/sscfinal/?p=52', 0, 'post', '', 0),
(53, 1, '2018-01-11 12:43:41', '2018-01-11 12:43:41', '<div class=\"_h8t\">\r\n<div class=\"_5wd9 direction_ltr\">\r\n<div class=\"_5wde _n4o\">\r\n<div class=\"_5w1r _3_om _5wdf\">\r\n<div class=\"_4gx_\">\r\n<div class=\"_d97\"><span class=\"_5yl5\">Het Shared Service Center is een leerbedrijf voor studenten, door studenten. Dit houd in dat de gehele omgeving word georganiseerd door de studenten zelf, van projectgroepen tot het management. De belangrijkste factoren binnen onze formule zijn de externe opdrachtgever en de expert. Wij werken graag samen met bedrijven die ons iets kunnen bij brengen of uit kunnen dagen iets nieuws te leren. Ook werken wij veel samen met experts die ons helpen met de complexere gedeeltes van de ICT, zodat we onze kennis direct uit het veld krijgen.</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;', 'Leerbedrijf Shared Service Center', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-01-11 12:43:41', '2018-01-11 12:43:41', '', 52, 'http://localhost/sscfinal/2018/01/11/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-01-11 12:46:14', '2018-01-11 12:46:14', '', 'Projecten', '', 'publish', 'open', 'open', '', 'onze-werkzaamheden', '', '', '2018-01-11 12:53:26', '2018-01-11 12:53:26', '', 0, 'http://localhost/sscfinal/?p=54', 0, 'post', '', 0),
(55, 1, '2018-01-11 12:46:14', '2018-01-11 12:46:14', '', 'Onze werkzaamheden', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-01-11 12:46:14', '2018-01-11 12:46:14', '', 54, 'http://localhost/sscfinal/2018/01/11/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-01-11 12:46:22', '2018-01-11 12:46:22', '', 'Projecten', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-01-11 12:46:22', '2018-01-11 12:46:22', '', 54, 'http://localhost/sscfinal/2018/01/11/54-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-01-11 12:46:28', '2018-01-11 12:46:28', '', 'Over ons', '', 'publish', 'open', 'open', '', 'over-ons', '', '', '2018-01-11 12:53:07', '2018-01-11 12:53:07', '', 0, 'http://localhost/sscfinal/?p=57', 0, 'post', '', 0),
(58, 1, '2018-01-11 12:46:28', '2018-01-11 12:46:28', '', 'Over ons', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-01-11 12:46:28', '2018-01-11 12:46:28', '', 57, 'http://localhost/sscfinal/2018/01/11/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-01-11 12:46:43', '2018-01-11 12:46:43', '', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2018-01-11 12:53:55', '2018-01-11 12:53:55', '', 0, 'http://localhost/sscfinal/?p=59', 0, 'post', '', 0),
(60, 1, '2018-01-11 12:46:43', '2018-01-11 12:46:43', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-01-11 12:46:43', '2018-01-11 12:46:43', '', 59, 'http://localhost/sscfinal/2018/01/11/59-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-01-11 13:12:43', '2018-01-11 13:12:43', '', 'New Slideshow', '', 'trash', 'closed', 'closed', '', 'new-slideshow-2__trashed', '', '', '2018-01-11 13:53:05', '2018-01-11 13:53:05', '', 0, 'http://localhost/sscfinal/?post_type=ml-slider&#038;p=62', 0, 'ml-slider', '', 0),
(63, 1, '2018-01-11 13:12:53', '2018-01-11 13:12:53', '', 'Slider 4 - image', '', 'trash', 'closed', 'closed', '', 'slider-4-image__trashed-2', '', '', '2018-01-11 13:41:04', '2018-01-11 13:41:04', '', 0, 'http://localhost/sscfinal/?post_type=ml-slide&#038;p=63', 0, 'ml-slide', '', 0),
(64, 1, '2018-01-11 13:41:09', '2018-01-11 13:41:09', '', 'New Slideshow', '', 'trash', 'closed', 'closed', '', 'new-slideshow-3__trashed', '', '', '2018-01-11 13:53:00', '2018-01-11 13:53:00', '', 0, 'http://localhost/sscfinal/?post_type=ml-slider&#038;p=64', 0, 'ml-slider', '', 0),
(65, 1, '2018-01-11 13:41:21', '2018-01-11 13:41:21', '', 'Slider 62 - image', '', 'trash', 'closed', 'closed', '', 'slider-62-image__trashed', '', '', '2018-01-11 13:53:05', '2018-01-11 13:53:05', '', 0, 'http://localhost/sscfinal/?post_type=ml-slide&#038;p=65', 0, 'ml-slide', '', 0),
(66, 1, '2018-01-11 13:52:36', '2018-01-11 13:52:36', '', 'Slider 62 - image', '', 'trash', 'closed', 'closed', '', 'slider-62-image-2__trashed', '', '', '2018-01-11 13:53:05', '2018-01-11 13:53:05', '', 0, 'http://localhost/sscfinal/?post_type=ml-slide&#038;p=66', 1, 'ml-slide', '', 0),
(67, 1, '2018-01-11 13:55:11', '2018-01-11 13:55:11', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2018-02-22 19:42:04', '2018-02-22 19:42:04', '', 0, 'http://localhost/sscfinal/?post_type=ml-slider&#038;p=67', 0, 'ml-slider', '', 0),
(68, 1, '2018-01-11 13:55:20', '2018-01-11 13:55:20', '', 'Slider 67 - image', 'Shared Service Center', 'publish', 'closed', 'closed', '', 'slider-67-image', '', '', '2018-02-22 19:42:04', '2018-02-22 19:42:04', '', 0, 'http://localhost/sscfinal/?post_type=ml-slide&#038;p=68', 0, 'ml-slide', '', 0),
(69, 1, '2018-01-11 14:11:05', '2018-01-11 14:11:05', '', 'youtube video', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-01-11 14:11:05', '2018-01-11 14:11:05', '', 50, 'http://localhost/sscfinal/2018/01/11/50-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-01-12 08:21:58', '2018-01-12 08:21:58', 'https://www.youtube.com/embed/umxb8LL9TP0', 'youtube video', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-01-12 08:21:58', '2018-01-12 08:21:58', '', 50, 'http://localhost/sscfinal/2018/01/12/50-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-01-12 08:36:08', '2018-01-12 08:36:08', '&lt;iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/umxb8LL9TP0\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen&gt;&lt;/iframe&gt;', 'youtube video', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-01-12 08:36:08', '2018-01-12 08:36:08', '', 50, 'http://localhost/sscfinal/2018/01/12/50-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-01-12 08:37:24', '2018-01-12 08:37:24', 'https://www.youtube.com/watch?v=umxb8LL9TP0', 'youtube video', '', 'inherit', 'closed', 'closed', '', '50-autosave-v1', '', '', '2018-01-12 08:37:24', '2018-01-12 08:37:24', '', 50, 'http://localhost/sscfinal/2018/01/12/50-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2018-01-12 08:38:07', '2018-01-12 08:38:07', 'https://www.youtube.com/watch?v=umxb8LL9TP0', 'youtube video', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-01-12 08:38:07', '2018-01-12 08:38:07', '', 50, 'http://localhost/sscfinal/2018/01/12/50-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-01-12 08:51:40', '2018-01-12 08:51:40', 'Wij werken graag met projecten van bedrijven, dit doen wij omdat de kennis die we hiermee vergaren direct aansluit op de arbeidsmarkt en wij daardoor dus betere ICT-specialisten opleiden. Naast het ontwerpen en realiseren van informatiesystemen zorgen wij ook voor het beheer van het systeem, indien dat wenselijk is. Wilt u meer horen over de mogelijkheden? Neem dan contact met ons op.', 'Onze werkzaamheden', '', 'publish', 'open', 'open', '', 'onze-werkzaamheden-2', '', '', '2018-01-12 08:55:06', '2018-01-12 08:55:06', '', 0, 'http://localhost/sscfinal/?p=80', 0, 'post', '', 0),
(81, 1, '2018-01-12 08:51:40', '2018-01-12 08:51:40', '', 'Onze werkzaamheden', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-01-12 08:51:40', '2018-01-12 08:51:40', '', 80, 'http://localhost/sscfinal/2018/01/12/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-01-12 08:52:39', '2018-01-12 08:52:39', 'Wij werken graag met projecten van bedrijven, dit doen wij omdat de kennis die we hiermee vergaren direct aansluit op de arbeidsmarkt en wij daardoor dus betere ICT-specialisten opleiden. Naast het ontwerpen en realiseren van informatiesystemen zorgen wij ook voor het beheer van het systeem, indien dat wenselijk is. Wilt u meer horen over de mogelijkheden? Neem dan contact met ons op.', 'Onze werkzaamheden', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-01-12 08:52:39', '2018-01-12 08:52:39', '', 80, 'http://localhost/sscfinal/2018/01/12/80-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-01-12 08:53:36', '2018-01-12 08:53:36', '<div class=\"_h8t\">\r\n<div class=\"_5wd9 direction_ltr\">\r\n<div class=\"_5wde _n4o\">\r\n<div class=\"_5w1r _3_om _5wdf\">\r\n<div class=\"_4gx_\">\r\n<div class=\"_d97\"><span class=\"_5yl5\">Het Shared Service Center is een leerbedrijf voor studenten, door studenten. Dit houd in dat de gehele omgeving word georganiseerd door de studenten zelf, van projectgroepen tot het management. De belangrijkste factoren binnen onze formule zijn de externe opdrachtgever en de expert. Wij werken graag samen met bedrijven die ons iets kunnen bij brengen of uit kunnen dagen iets nieuws te leren. Ook werken wij veel samen met experts die ons helpen met de complexere gedeeltes van de ICT, zodat we onze kennis direct uit het veld krijgen.</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;', 'Leerbedrijf Shared Service Center', '', 'publish', 'open', 'open', '', 'leerbedrijf-shared-service-center-2', '', '', '2018-01-12 08:53:36', '2018-01-12 08:53:36', '', 0, 'http://localhost/sscfinal/?p=83', 0, 'post', '', 0),
(84, 1, '2018-01-12 08:53:36', '2018-01-12 08:53:36', '<div class=\"_h8t\">\r\n<div class=\"_5wd9 direction_ltr\">\r\n<div class=\"_5wde _n4o\">\r\n<div class=\"_5w1r _3_om _5wdf\">\r\n<div class=\"_4gx_\">\r\n<div class=\"_d97\"><span class=\"_5yl5\">Het Shared Service Center is een leerbedrijf voor studenten, door studenten. Dit houd in dat de gehele omgeving word georganiseerd door de studenten zelf, van projectgroepen tot het management. De belangrijkste factoren binnen onze formule zijn de externe opdrachtgever en de expert. Wij werken graag samen met bedrijven die ons iets kunnen bij brengen of uit kunnen dagen iets nieuws te leren. Ook werken wij veel samen met experts die ons helpen met de complexere gedeeltes van de ICT, zodat we onze kennis direct uit het veld krijgen.</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;', 'Leerbedrijf Shared Service Center', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-01-12 08:53:36', '2018-01-12 08:53:36', '', 83, 'http://localhost/sscfinal/2018/01/12/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-01-12 09:05:22', '2018-01-12 09:05:22', '', 'Huge-IT First Slide.', '', 'inherit', 'open', 'closed', '', 'huge-it-first-slide', '', '', '2018-01-12 09:05:22', '2018-01-12 09:05:22', '', 0, 'http://localhost/sscfinal/huge-it-first-slide/', 0, 'attachment', 'jpg', 0),
(86, 1, '2018-01-12 09:05:23', '2018-01-12 09:05:23', '', 'Huge-IT Second Slide.', '', 'inherit', 'open', 'closed', '', 'huge-it-second-slide', '', '', '2018-01-12 09:05:23', '2018-01-12 09:05:23', '', 0, 'http://localhost/sscfinal/huge-it-second-slide/', 0, 'attachment', 'jpg', 0),
(87, 1, '2018-01-12 09:05:23', '2018-01-12 09:05:23', '', 'Huge-IT Third Slide.', '', 'inherit', 'open', 'closed', '', 'huge-it-third-slide', '', '', '2018-01-12 09:05:23', '2018-01-12 09:05:23', '', 0, 'http://localhost/sscfinal/huge-it-third-slide/', 0, 'attachment', 'jpg', 0),
(88, 1, '2018-01-15 07:46:41', '2018-01-15 07:46:41', '[SliderPreview]', 'Preview', '', 'publish', 'closed', 'closed', '', 'preview', '', '', '2018-01-15 07:46:41', '2018-01-15 07:46:41', '', 0, 'http://localhost/sscfinal/wds-slider/preview/', 0, 'wds-slider', '', 0),
(90, 1, '2018-01-15 10:24:44', '2018-01-15 10:24:44', '', 'Sample Slider', '', 'publish', 'closed', 'closed', '', 'sample-slider', '', '', '2018-01-15 10:24:44', '2018-01-15 10:24:44', '', 0, 'http://localhost/sscfinal/2018/01/15/sample-slider/', 0, 'sa_slider', '', 0),
(91, 1, '2018-01-15 10:33:13', '2018-01-15 10:33:13', '', 'hallo', '', 'publish', 'closed', 'closed', '', 'no-title', '', '', '2018-01-15 10:33:46', '2018-01-15 10:33:46', '', 0, 'http://localhost/sscfinal/?post_type=easingslider&#038;p=91', 0, 'easingslider', '', 0),
(93, 1, '2018-01-17 12:51:21', '2018-01-17 12:51:21', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-01-17 12:51:59', '2018-01-17 12:51:59', '', 0, 'http://localhost/sscfinal/?page_id=93', 0, 'page', '', 0),
(94, 1, '2018-01-17 12:51:21', '2018-01-17 12:51:21', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-01-17 12:51:21', '2018-01-17 12:51:21', '', 93, 'http://localhost/sscfinal/2018/01/17/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-01-17 12:52:20', '2018-01-17 12:52:20', '', 'Projecten', '', 'publish', 'closed', 'closed', '', 'projecten', '', '', '2018-02-23 09:36:56', '2018-02-23 09:36:56', '', 0, 'http://localhost/sscfinal/?page_id=95', 0, 'page', '', 0),
(96, 1, '2018-01-17 12:52:20', '2018-01-17 12:52:20', '', 'Projecten', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-01-17 12:52:20', '2018-01-17 12:52:20', '', 95, 'http://localhost/sscfinal/2018/01/17/95-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-01-17 12:53:01', '2018-01-17 12:53:01', '', 'Over ons', '', 'publish', 'closed', 'closed', '', 'over-ons', '', '', '2018-01-17 12:53:01', '2018-01-17 12:53:01', '', 0, 'http://localhost/sscfinal/?page_id=97', 0, 'page', '', 0),
(98, 1, '2018-01-17 12:53:01', '2018-01-17 12:53:01', '', 'Over ons', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-01-17 12:53:01', '2018-01-17 12:53:01', '', 97, 'http://localhost/sscfinal/2018/01/17/97-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-01-17 12:58:03', '2018-01-17 12:58:03', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-01-17 12:58:03', '2018-01-17 12:58:03', '', 0, 'http://localhost/sscfinal/?page_id=102', 0, 'page', '', 0),
(103, 1, '2018-01-17 12:58:03', '2018-01-17 12:58:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2018-01-17 12:58:03', '2018-01-17 12:58:03', '', 102, 'http://localhost/sscfinal/2018/01/17/102-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-01-17 13:13:53', '2018-01-17 13:13:53', 'Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis', 'Toetsenbord en muis', '', 'publish', 'open', 'open', '', 'project-6', '', '', '2018-01-31 20:42:02', '2018-01-31 20:42:02', '', 0, 'http://localhost/sscfinal/?p=108', 0, 'post', '', 0),
(109, 1, '2018-01-17 13:13:53', '2018-01-17 13:13:53', '', 'Project 6', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-01-17 13:13:53', '2018-01-17 13:13:53', '', 108, 'http://localhost/sscfinal/2018/01/17/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-01-17 13:14:43', '2018-01-17 13:14:43', 'Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon', 'Telefoon', '', 'publish', 'open', 'open', '', 'project-5', '', '', '2018-01-31 20:41:34', '2018-01-31 20:41:34', '', 0, 'http://localhost/sscfinal/?p=110', 0, 'post', '', 0),
(111, 1, '2018-01-17 13:14:43', '2018-01-17 13:14:43', '', 'Project 5', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2018-01-17 13:14:43', '2018-01-17 13:14:43', '', 110, 'http://localhost/sscfinal/2018/01/17/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-01-17 13:15:06', '2018-01-17 13:15:06', '', 'Ethernet aanleggen', '', 'publish', 'open', 'open', '', 'project-4', '', '', '2018-02-23 09:39:26', '2018-02-23 09:39:26', '', 0, 'http://localhost/sscfinal/?p=112', 0, 'post', '', 0),
(113, 1, '2018-01-17 13:15:06', '2018-01-17 13:15:06', '', 'Project 4', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-01-17 13:15:06', '2018-01-17 13:15:06', '', 112, 'http://localhost/sscfinal/2018/01/17/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-01-17 13:15:27', '2018-01-17 13:15:27', '', 'Kantoor', '', 'publish', 'open', 'open', '', 'project-3', '', '', '2018-01-17 14:08:08', '2018-01-17 14:08:08', '', 0, 'http://localhost/sscfinal/?p=114', 0, 'post', '', 0),
(115, 1, '2018-01-17 13:15:27', '2018-01-17 13:15:27', '', 'Project 3', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2018-01-17 13:15:27', '2018-01-17 13:15:27', '', 114, 'http://localhost/sscfinal/2018/01/17/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-01-17 13:15:40', '2018-01-17 13:15:40', '', 'Boek', '', 'publish', 'open', 'open', '', 'project-2', '', '', '2018-01-17 14:08:54', '2018-01-17 14:08:54', '', 0, 'http://localhost/sscfinal/?p=116', 0, 'post', '', 0),
(117, 1, '2018-01-17 13:15:40', '2018-01-17 13:15:40', '', 'Project 2', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-01-17 13:15:40', '2018-01-17 13:15:40', '', 116, 'http://localhost/sscfinal/2018/01/17/116-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-01-17 13:15:56', '2018-01-17 13:15:56', '', 'Chip', '', 'publish', 'open', 'open', '', 'project-1', '', '', '2018-01-17 14:08:30', '2018-01-17 14:08:30', '', 0, 'http://localhost/sscfinal/?p=118', 0, 'post', '', 0),
(119, 1, '2018-01-17 13:15:56', '2018-01-17 13:15:56', '', 'Project 1', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2018-01-17 13:15:56', '2018-01-17 13:15:56', '', 118, 'http://localhost/sscfinal/2018/01/17/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-01-17 13:16:41', '2018-01-17 13:16:41', '', 'Onze afgeronde projecten', '', 'publish', 'open', 'open', '', 'onze-afgeronde-projecten', '', '', '2018-01-17 13:16:41', '2018-01-17 13:16:41', '', 0, 'http://localhost/sscfinal/?p=120', 0, 'post', '', 0),
(121, 1, '2018-01-17 13:16:41', '2018-01-17 13:16:41', '', 'Onze afgeronde projecten', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2018-01-17 13:16:41', '2018-01-17 13:16:41', '', 120, 'http://localhost/sscfinal/2018/01/17/120-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-01-17 14:06:56', '2018-01-17 14:06:56', '', 'Toetsenbord en muis', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-01-17 14:06:56', '2018-01-17 14:06:56', '', 108, 'http://localhost/sscfinal/2018/01/17/108-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-01-17 14:07:18', '2018-01-17 14:07:18', '', 'Telefoon', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2018-01-17 14:07:18', '2018-01-17 14:07:18', '', 110, 'http://localhost/sscfinal/2018/01/17/110-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-01-17 14:07:51', '2018-01-17 14:07:51', '', 'Kamerplant', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-01-17 14:07:51', '2018-01-17 14:07:51', '', 112, 'http://localhost/sscfinal/2018/01/17/112-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-01-17 14:08:08', '2018-01-17 14:08:08', '', 'Kantoor', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2018-01-17 14:08:08', '2018-01-17 14:08:08', '', 114, 'http://localhost/sscfinal/2018/01/17/114-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-01-17 14:08:30', '2018-01-17 14:08:30', '', 'Chip', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2018-01-17 14:08:30', '2018-01-17 14:08:30', '', 118, 'http://localhost/sscfinal/2018/01/17/118-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-01-17 14:08:54', '2018-01-17 14:08:54', '', 'Boek', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-01-17 14:08:54', '2018-01-17 14:08:54', '', 116, 'http://localhost/sscfinal/2018/01/17/116-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-01-18 12:48:07', '0000-00-00 00:00:00', '', 'Kamerplantbeschrijving', '', 'draft', 'open', 'open', '', '', '', '', '2018-01-18 12:48:07', '2018-01-18 12:48:07', '', 0, 'http://localhost/sscfinal/?p=128', 0, 'post', '', 0),
(132, 1, '2018-01-18 20:40:41', '2018-01-18 20:40:41', '<label> Naam* [text* your-name] </label>\r\n    \r\n\r\n<label> E-mail* [email* your-email] </label>\r\n    \r\n\r\n<label> Uw vraag* [textarea your-message] </label>\r\n    \r\n<br><br><br><br><br><br><br>\r\n[submit \"Verzend\"]\n1\nSSC \"[your-subject]\"\n[your-name] <hamish1999@yahoo.co.uk>\nhamish1999@yahoo.co.uk\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on SSC (http://localhost/sscfinal)\nReply-To: [your-email]\n\n\n\n\nSSC \"[your-subject]\"\nSSC <hamish1999@yahoo.co.uk>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on SSC (http://localhost/sscfinal)\nReply-To: hamish1999@yahoo.co.uk\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-02-27 13:08:11', '2018-02-27 13:08:11', '', 0, 'http://localhost/sscfinal/?post_type=wpcf7_contact_form&#038;p=132', 0, 'wpcf7_contact_form', '', 0),
(133, 1, '2018-01-18 20:45:37', '2018-01-18 20:45:37', 'Vul hieronder uw gegevens in om ons een email te versturen met uw vraag! Wij zullen zo snel mogelijk reageren.', 'Neem contact met ons op', '', 'publish', 'open', 'open', '', 'neem-contact-met-ons-op', '', '', '2018-01-18 20:45:37', '2018-01-18 20:45:37', '', 0, 'http://localhost/sscfinal/?p=133', 0, 'post', '', 0),
(134, 1, '2018-01-18 20:45:37', '2018-01-18 20:45:37', 'Vul hieronder uw gegevens in om ons een email te versturen met uw vraag! Wij zullen zo snel mogelijk reageren.', 'Neem contact met ons op', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2018-01-18 20:45:37', '2018-01-18 20:45:37', '', 133, 'http://localhost/sscfinal/2018/01/18/133-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-01-18 20:56:16', '2018-01-18 20:56:16', '[contact-form-7 id=\"7\" title=\"Contact\"]', 'Contactformulier', '', 'publish', 'open', 'open', '', 'contactformulier', '', '', '2018-01-18 20:56:16', '2018-01-18 20:56:16', '', 0, 'http://localhost/sscfinal/?p=135', 0, 'post', '', 0),
(136, 1, '2018-01-18 20:56:16', '2018-01-18 20:56:16', '[contact-form-7 id=\"7\" title=\"Contact\"]', 'Contactformulier', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2018-01-18 20:56:16', '2018-01-18 20:56:16', '', 135, 'http://localhost/sscfinal/2018/01/18/135-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2018-01-31 11:59:03', '2018-01-31 11:59:03', '<label> Naam* [text* your-name 40x1] </label>\r\n\r\n<label> Achternaam* [text* your-name 40x1] </label>\r\n\r\n<label> Email* [email* your-email 40x1] </label>\r\n\r\n<label> Telefoon* [number your-number-676 40x1] </label>\r\n\r\n<label> Projectnaam* [text your-projectnaam 40x1] </label>\r\n\r\n<label> Omschrijving* [textarea your-message] </label>\r\n<br><br><br><br><br><br><br>\r\n[submit \"Verzend\"]\r\n<br><br><br><br><br><br><br>\n1\nSSC \"[your-subject]\"\n[your-name] <hamish1999@yahoo.co.uk>\nhamish1999@yahoo.co.uk\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on SSC (http://localhost/sscfinal)\nReply-To: [your-email]\n\n\n\n\nSSC \"[your-subject]\"\nSSC <hamish1999@yahoo.co.uk>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on SSC (http://localhost/sscfinal)\nReply-To: hamish1999@yahoo.co.uk\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Projectaanvragen', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2018-02-27 13:07:53', '2018-02-27 13:07:53', '', 0, 'http://localhost/sscfinal/?post_type=wpcf7_contact_form&#038;p=138', 0, 'wpcf7_contact_form', '', 0),
(139, 1, '2018-01-31 12:10:23', '2018-01-31 12:10:23', '', 'Projectaanvraag', '', 'publish', 'closed', 'closed', '', 'projectaanvraag', '', '', '2018-01-31 12:42:07', '2018-01-31 12:42:07', '', 0, 'http://localhost/sscfinal/?page_id=139', 0, 'page', '', 0),
(140, 1, '2018-01-31 12:10:23', '2018-01-31 12:10:23', '', 'Projectaanvraag', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-01-31 12:10:23', '2018-01-31 12:10:23', '', 139, 'http://localhost/sscfinal/2018/01/31/139-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2018-01-31 12:11:15', '2018-01-31 12:11:15', '[contact-form-7 id=\"138\" title=\"Projectaanvragen\"]', 'Projectaanvraag', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-01-31 12:11:15', '2018-01-31 12:11:15', '', 139, 'http://localhost/sscfinal/2018/01/31/139-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-01-31 12:18:25', '2018-01-31 12:18:25', '', 'Projectaanvraag', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-01-31 12:18:25', '2018-01-31 12:18:25', '', 139, 'http://localhost/sscfinal/2018/01/31/139-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-01-31 12:18:41', '2018-01-31 12:18:41', 'Vraag hier uw project aan!', 'Projectaanvraag', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-01-31 12:18:41', '2018-01-31 12:18:41', '', 139, 'http://localhost/sscfinal/2018/01/31/139-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-01-31 12:39:31', '2018-01-31 12:39:31', '', 'Projectaanvraag', '', 'publish', 'open', 'open', '', 'projectaanvraag', '', '', '2018-01-31 12:39:31', '2018-01-31 12:39:31', '', 0, 'http://localhost/sscfinal/?p=148', 0, 'post', '', 0),
(149, 1, '2018-01-31 12:39:31', '2018-01-31 12:39:31', '', 'Projectaanvraag', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2018-01-31 12:39:31', '2018-01-31 12:39:31', '', 148, 'http://localhost/sscfinal/2018/01/31/148-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2018-01-31 12:40:59', '2018-01-31 12:40:59', '', 'Projectaanvraag', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2018-01-31 12:40:59', '2018-01-31 12:40:59', '', 139, 'http://localhost/sscfinal/2018/01/31/139-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2018-01-31 20:41:34', '2018-01-31 20:41:34', 'Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon Dit is een mooie telefoon', 'Telefoon', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2018-01-31 20:41:34', '2018-01-31 20:41:34', '', 110, 'http://localhost/sscfinal/2018/01/31/110-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2018-01-31 20:42:02', '2018-01-31 20:42:02', 'Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis Dit is een toetsenbord en muis', 'Toetsenbord en muis', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-01-31 20:42:02', '2018-01-31 20:42:02', '', 108, 'http://localhost/sscfinal/2018/01/31/108-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2018-01-31 21:11:05', '2018-01-31 21:11:05', '{\n    \"nav_menu_item[155]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 102,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/sscfinal/home/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[156]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 97,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/sscfinal/over-ons/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Over ons\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[157]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 95,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/sscfinal/projecten/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Projecten\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2966e60-5255-42bf-aa31-5c4725fc9583', '', '', '2018-01-31 21:11:05', '2018-01-31 21:11:05', '', 0, 'http://localhost/sscfinal/2018/01/31/f2966e60-5255-42bf-aa31-5c4725fc9583/', 0, 'customize_changeset', '', 0),
(160, 1, '2018-01-31 21:11:20', '2018-01-31 21:11:20', '{\n    \"nav_menu_item[155]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 102,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/sscfinal/home/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[156]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 97,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/sscfinal/over-ons/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Over ons\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[157]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 95,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/sscfinal/projecten/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 10,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Projecten\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '857dda57-2f0f-4bf7-923d-5701c21cd01c', '', '', '2018-01-31 21:11:20', '2018-01-31 21:11:20', '', 0, 'http://localhost/sscfinal/2018/01/31/857dda57-2f0f-4bf7-923d-5701c21cd01c/', 0, 'customize_changeset', '', 0),
(161, 1, '2018-01-31 21:12:04', '2018-01-31 21:12:04', '{\n    \"nav_menu[7]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    },\n    \"nav_menu[10]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '742ea1b2-1a42-43af-aa53-2f0201bbe48d', '', '', '2018-01-31 21:12:04', '2018-01-31 21:12:04', '', 0, 'http://localhost/sscfinal/2018/01/31/742ea1b2-1a42-43af-aa53-2f0201bbe48d/', 0, 'customize_changeset', '', 0),
(162, 1, '2018-01-31 21:18:01', '2018-01-31 21:18:01', ' ', '', '', 'publish', 'closed', 'closed', '', '162', '', '', '2018-01-31 21:18:01', '2018-01-31 21:18:01', '', 0, 'http://localhost/sscfinal/?p=162', 1, 'nav_menu_item', '', 0),
(163, 1, '2018-01-31 21:18:01', '2018-01-31 21:18:01', ' ', '', '', 'publish', 'closed', 'closed', '', '163', '', '', '2018-01-31 21:18:01', '2018-01-31 21:18:01', '', 0, 'http://localhost/sscfinal/?p=163', 2, 'nav_menu_item', '', 0),
(164, 1, '2018-01-31 21:18:01', '2018-01-31 21:18:01', ' ', '', '', 'publish', 'closed', 'closed', '', '164', '', '', '2018-01-31 21:18:01', '2018-01-31 21:18:01', '', 0, 'http://localhost/sscfinal/?p=164', 3, 'nav_menu_item', '', 0),
(165, 1, '2018-01-31 21:18:01', '2018-01-31 21:18:01', ' ', '', '', 'publish', 'closed', 'closed', '', '165', '', '', '2018-01-31 21:18:01', '2018-01-31 21:18:01', '', 0, 'http://localhost/sscfinal/?p=165', 4, 'nav_menu_item', '', 0),
(168, 1, '2018-02-23 09:39:16', '2018-02-23 09:39:16', '', 'AAEAAQAAAAAAAAvnAAAAJDNjMzE5YWM2LTA5YTEtNDBjMy04MDJmLThhMDQ5ODRjMzZjOA', '', 'inherit', 'open', 'closed', '', 'aaeaaqaaaaaaaavnaaaajdnjmze5ywm2lta5ytetndbjmy04mdjmlthhmdq5odrjmzzjoa', '', '', '2018-02-23 09:39:16', '2018-02-23 09:39:16', '', 112, 'http://localhost/sscfinal/wp-content/uploads/2018/01/AAEAAQAAAAAAAAvnAAAAJDNjMzE5YWM2LTA5YTEtNDBjMy04MDJmLThhMDQ5ODRjMzZjOA-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2018-02-23 09:39:26', '2018-02-23 09:39:26', '', 'Ethernet aanleggen', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-02-23 09:39:26', '2018-02-23 09:39:26', '', 112, 'http://localhost/sscfinal/2018/02/23/112-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_photo_slider_instal`
--

CREATE TABLE `wp_rich_web_photo_slider_instal` (
  `id` int(10) UNSIGNED NOT NULL,
  `SL_Img_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Img_Description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Img_Url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Link_Url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Link_NewTab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sl_Number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_photo_slider_instal`
--

INSERT INTO `wp_rich_web_photo_slider_instal` (`id`, `SL_Img_Title`, `Sl_Img_Description`, `Sl_Img_Url`, `Sl_Link_Url`, `Sl_Link_NewTab`, `Sl_Number`) VALUES
(1, '', '', 'http://localhost/sscfinal/wp-content/uploads/2018/01/plantheader.png', '', 'undefined', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_photo_slider_manager`
--

CREATE TABLE `wp_rich_web_photo_slider_manager` (
  `id` int(10) UNSIGNED NOT NULL,
  `Slider_Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Slider_IMGS_Quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_photo_slider_manager`
--

INSERT INTO `wp_rich_web_photo_slider_manager` (`id`, `Slider_Title`, `Slider_Type`, `Slider_IMGS_Quantity`) VALUES
(1, 'hallo', 'Slider Navigation 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect1`
--

CREATE TABLE `wp_rich_web_slider_effect1` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_SlS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_SlSS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_PoH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_BoxS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_BoxSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_IBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_TUp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArOp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHOp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArHEff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArBoxW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavPB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavCC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_ArPFT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_Sl1_NavPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect1`
--

INSERT INTO `wp_rich_web_slider_effect1` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_web_Sl1_SlS`, `rich_web_Sl1_SlSS`, `rich_web_Sl1_PoH`, `rich_web_Sl1_W`, `rich_web_Sl1_H`, `rich_web_Sl1_BoxS`, `rich_web_Sl1_BoxSC`, `rich_web_Sl1_IBW`, `rich_web_Sl1_IBS`, `rich_web_Sl1_IBC`, `rich_web_Sl1_IBR`, `rich_web_Sl1_TBgC`, `rich_web_Sl1_TC`, `rich_web_Sl1_TTA`, `rich_web_Sl1_TFS`, `rich_web_Sl1_TFF`, `rich_web_Sl1_TUp`, `rich_web_Sl1_ArBgC`, `rich_web_Sl1_ArOp`, `rich_web_Sl1_ArType`, `rich_web_Sl1_ArHBgC`, `rich_web_Sl1_ArHOp`, `rich_web_Sl1_ArHEff`, `rich_web_Sl1_ArBoxW`, `rich_web_Sl1_NavW`, `rich_web_Sl1_NavH`, `rich_web_Sl1_NavPB`, `rich_web_Sl1_NavBW`, `rich_web_Sl1_NavBS`, `rich_web_Sl1_NavBC`, `rich_web_Sl1_NavBR`, `rich_web_Sl1_NavCC`, `rich_web_Sl1_NavHC`, `rich_web_Sl1_ArPFT`, `rich_web_Sl1_NavPos`) VALUES
(1, '1', 'Slider Navigation 1', 'Slider Navigation', 'true', '3', 'true', '750', '400', 'true', '#0084aa', '10', 'solid', '#ffffff', '0', '#0084aa', '#ffffff', 'center', '10', 'Aldhabi', 'true', '#1e73be', '82', '1', '#1e73be', '80', 'slide out', '50', '8', '8', '8', '1', 'solid', '#ffffff', '20', '#0084aa', '#ffffff', '35', 'bottom'),
(2, '1', 'Slider Navigation 1', 'Slider Navigation', 'true', '3', 'true', '750', '400', 'true', '#0084aa', '10', 'solid', '#ffffff', '0', '#0084aa', '#ffffff', 'center', '10', 'Aldhabi', 'true', '#1e73be', '82', '1', '#1e73be', '80', 'slide out', '50', '8', '8', '8', '1', 'solid', '#ffffff', '20', '#0084aa', '#ffffff', '35', 'bottom'),
(3, '3', 'Slider Navigation 2', 'Slider Navigation', 'true', '3', 'true', '380', '450', 'true', '#0084aa', '0', 'none', '#ffffff', '0', '#0084aa', '#ffffff', 'center', '10', 'Aldhabi', 'true', 'rgba(30,115,190,0.6)', '100', '2', '#1e73be', '100', 'flip out', '50', '8', '8', '8', '1', 'solid', '#ffffff', '20', '#0084aa', '#1967aa', '40', 'bottom'),
(4, '3', 'Slider Navigation 2', 'Slider Navigation', 'true', '3', 'true', '380', '450', 'true', '#0084aa', '0', 'none', '#ffffff', '0', '#0084aa', '#ffffff', 'center', '10', 'Aldhabi', 'true', 'rgba(30,115,190,0.6)', '100', '2', '#1e73be', '100', 'flip out', '50', '8', '8', '8', '1', 'solid', '#ffffff', '20', '#0084aa', '#1967aa', '40', 'bottom');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect1_loader`
--

CREATE TABLE `wp_rich_web_slider_effect1_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_NSL_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect1_loader`
--

INSERT INTO `wp_rich_web_slider_effect1_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_NSL_L_Show`, `Rich_Web_NSL_LT_Show`, `Rich_Web_NSL_LT`, `Rich_Web_NSL_L_BgC`, `Rich_Web_NSL_L_T`, `Rich_Web_NSL_LT_T`, `Rich_Web_NSL_LT_FS`, `Rich_Web_NSL_LT_FF`, `Rich_Web_NSL_LT_C`, `Rich_Web_NSL_L_T1_C`, `Rich_Web_NSL_L_T2_C`, `Rich_Web_NSL_L_T3_C`, `Rich_Web_NSL_LT_T2_BC`, `Rich_Web_NSL_L_C`, `Rich_Web_NSL_LT_T2_AnC`, `Rich_Web_NSL_LT_T3_BgC`, `Rich_Web_NSL_L_S`, `Rich_Web_NSL_Loading_Show`) VALUES
(1, '1', 'true', 'true', 'Loading', '#ffffff', 'Type 4', 'Type 4', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#ffffff', '#dd3333', 'small', 'true'),
(2, '1', 'true', 'true', 'Loading', '#ffffff', 'Type 4', 'Type 4', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#ffffff', '#dd3333', 'small', 'true'),
(3, '3', 'true', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0066bf', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0066bf', '#ffffff', '#dd3333', 'middle', 'true'),
(4, '3', 'true', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0066bf', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0066bf', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect2`
--

CREATE TABLE `wp_rich_web_slider_effect2` (
  `id` int(10) UNSIGNED NOT NULL,
  `richideo_EN_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_BIB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_P` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_SD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_Op` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Cont_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_TTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DSC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_DTA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_LHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Video_ArrShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_AC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Link_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_CS_Link_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect2`
--

INSERT INTO `wp_rich_web_slider_effect2` (`id`, `richideo_EN_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_CS_BIB`, `rich_CS_P`, `rich_CS_Loop`, `rich_CS_SD`, `rich_CS_AT`, `rich_CS_Cont_BgC`, `rich_CS_Cont_BSC`, `rich_CS_Cont_W`, `rich_CS_Cont_H`, `rich_CS_Cont_Op`, `rich_CS_Cont_BW`, `rich_CS_Cont_BS`, `rich_CS_Cont_BC`, `rich_CS_Cont_BR`, `rich_CS_Video_TShow`, `rich_CS_Video_TC`, `rich_CS_Video_TSC`, `rich_CS_Video_TFS`, `rich_CS_Video_TFF`, `rich_CS_Video_TTA`, `rich_CS_Video_DShow`, `rich_CS_Video_DC`, `rich_CS_Video_DSC`, `rich_CS_Video_DFS`, `rich_CS_Video_DFF`, `rich_CS_Video_DTA`, `rich_CS_Video_Show`, `rich_CS_Video_W`, `rich_CS_Video_H`, `rich_CS_LFS`, `rich_CS_LFF`, `rich_CS_LC`, `rich_CS_LT`, `rich_CS_LBgC`, `rich_CS_LBC`, `rich_CS_LBR`, `rich_CS_LPos`, `rich_CS_LHBgC`, `rich_CS_LHC`, `rich_CS_Video_ArrShow`, `rich_CS_AFS`, `rich_CS_AC`, `rich_CS_Icon`, `rich_CS_Link_BW`, `rich_CS_Link_BS`) VALUES
(1, '5', 'Content Slider', 'Content Slider', 'true', 'true', 'true', '10', 'bounceUp', '#0084aa', '#0084aa', '650', '400', '50', '0', 'solid', '#898989', '0', 'true', '#ffffff', '#ffffff', '20', 'Aldhabi', 'left', 'true', '#ffffff', '#ffffff', '18', 'Aldhabi', 'left', 'true', '36', 'on', '16', 'Vijaya', '#ffffff', 'View More', '#007da0', '#ffffff', '0', 'left', '#0084aa', '#000000', 'true', '30', '#ffffff', '3', '1', 'solid'),
(2, '5', 'Content Slider', 'Content Slider', 'true', 'true', 'true', '10', 'bounceUp', '#0084aa', '#0084aa', '650', '400', '50', '0', 'solid', '#898989', '0', 'true', '#ffffff', '#ffffff', '20', 'Aldhabi', 'left', 'true', '#ffffff', '#ffffff', '18', 'Aldhabi', 'left', 'true', '36', 'on', '16', 'Vijaya', '#ffffff', 'View More', '#007da0', '#ffffff', '0', 'left', '#0084aa', '#000000', 'true', '30', '#ffffff', '3', '1', 'solid'),
(3, '7', 'Content-Slider', 'Content Slider', 'true', 'true', 'true', '20', 'bounce3', '#0084aa', '#0084aa', '800', '400', '100', '0', 'solid', '#898989', '0', 'true', '#ffffff', '#ffffff', '20', 'Aldhabi', 'left', 'true', '#ffffff', '#ffffff', '18', 'Aldhabi', 'left', 'true', '36', 'on', '16', 'Vijaya', '#ffffff', 'View More', '#007893', '#ffffff', '10', 'left', '#3190aa', '#ffffff', 'true', '30', '#ffffff', '3', '1', 'solid'),
(4, '7', 'Content-Slider', 'Content Slider', 'true', 'true', 'true', '20', 'bounce3', '#0084aa', '#0084aa', '800', '400', '100', '0', 'solid', '#898989', '0', 'true', '#ffffff', '#ffffff', '20', 'Aldhabi', 'left', 'true', '#ffffff', '#ffffff', '18', 'Aldhabi', 'left', 'true', '36', 'on', '16', 'Vijaya', '#ffffff', 'View More', '#007893', '#ffffff', '10', 'left', '#3190aa', '#ffffff', 'true', '30', '#ffffff', '3', '1', 'solid');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect2_loader`
--

CREATE TABLE `wp_rich_web_slider_effect2_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ContSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect2_loader`
--

INSERT INTO `wp_rich_web_slider_effect2_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_ContSl_L_Show`, `Rich_Web_ContSl_LT_Show`, `Rich_Web_ContSl_LT`, `Rich_Web_ContSl_L_BgC`, `Rich_Web_ContSl_L_T`, `Rich_Web_ContSl_LT_T`, `Rich_Web_ContSl_LT_FS`, `Rich_Web_ContSl_LT_FF`, `Rich_Web_ContSl_LT_C`, `Rich_Web_ContSl_L_T1_C`, `Rich_Web_ContSl_L_T2_C`, `Rich_Web_ContSl_L_T3_C`, `Rich_Web_ContSl_LT_T2_BC`, `Rich_Web_ContSl_L_C`, `Rich_Web_ContSl_LT_T2_AnC`, `Rich_Web_ContSl_LT_T3_BgC`, `Rich_Web_ContSl_L_S`, `Rich_Web_ContSl_Loading_Show`) VALUES
(1, '5', 'true', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#000000', '#357ebf', '#0066bf', '#145b91', 'rgba(30,115,190,0.54)', '#dd9933', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '5', 'true', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#000000', '#357ebf', '#0066bf', '#145b91', 'rgba(30,115,190,0.54)', '#dd9933', '#ffffff', '#dd3333', 'middle', 'true'),
(3, '7', 'true', 'false', 'Loading', '#ffffff', 'Type 3', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#000000', '#ffffff', '#dd3333', 'middle', 'true'),
(4, '7', 'true', 'false', 'Loading', '#ffffff', 'Type 3', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#000000', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect3`
--

CREATE TABLE `wp_rich_web_slider_effect3` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_animation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_SShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_SShow_Speed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Anim_Dur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Ic_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_PPL_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Randomize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Height` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Box_Shadow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Shadow_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Text_Align` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Desc_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Font_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Text_Shadow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Title_Text_Align` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Font_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Font_Family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Border_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Bg_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Link_Hover_Transparency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Icon_Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Icon_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_fsl_Hover_Icon_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect3`
--

INSERT INTO `wp_rich_web_slider_effect3` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `rich_fsl_animation`, `rich_fsl_SShow`, `rich_fsl_SShow_Speed`, `rich_fsl_Anim_Dur`, `rich_fsl_Ic_Show`, `rich_fsl_PPL_Show`, `rich_fsl_Randomize`, `rich_fsl_Loop`, `rich_fsl_Width`, `rich_fsl_Height`, `rich_fsl_Border_Width`, `rich_fsl_Border_Style`, `rich_fsl_Border_Color`, `rich_fsl_Box_Shadow`, `rich_fsl_Shadow_Color`, `rich_fsl_Desc_Show`, `rich_fsl_Desc_Size`, `rich_fsl_Desc_Color`, `rich_fsl_Desc_Font_Family`, `rich_fsl_Desc_Text_Align`, `rich_fsl_Desc_Bg_Color`, `rich_fsl_Desc_Transparency`, `rich_fsl_Title_Font_Size`, `rich_fsl_Title_Color`, `rich_fsl_Title_Text_Shadow`, `rich_fsl_Title_Font_Family`, `rich_fsl_Title_Text_Align`, `rich_fsl_Link_Text`, `rich_fsl_Link_Border_Width`, `rich_fsl_Link_Border_Style`, `rich_fsl_Link_Border_Color`, `rich_fsl_Link_Font_Size`, `rich_fsl_Link_Color`, `rich_fsl_Link_Font_Family`, `rich_fsl_Link_Bg_Color`, `rich_fsl_Link_Transparency`, `rich_fsl_Link_Hover_Border_Color`, `rich_fsl_Link_Hover_Bg_Color`, `rich_fsl_Link_Hover_Color`, `rich_fsl_Link_Hover_Transparency`, `rich_fsl_Icon_Size`, `rich_fsl_Icon_Type`, `rich_fsl_Hover_Icon_Type`) VALUES
(1, '9', 'Fashion Slider 1', 'Fashion Slider', 'fade', '1', '3', '3', '1', '', '', '1', '750', '390', '0', 'solid', '#ffffff', '35', '#606060', 'on', '15', '#ffffff', 'Aldhabi', 'left', 'rgba(0,132,170,0.75)', '', '18', '#ffffff', '0', 'Aldhabi', 'center', 'View More', '0', 'solid', '#0084aa', '19', '#0084aa', 'Vijaya', 'rgba(255,255,255,0.65)', '', '#0084aa', '#0084aa', 'rgba(255,255,255,0.65)', '', '30', '1', '12'),
(2, '10', 'Fashion Slider 2', 'Fashion Slider', 'fade', '1', '3', '3', '1', '', '', '1', '600', '300', '4', 'solid', '#ffffff', '30', '#0084aa', 'on', '15', '#0084aa', 'Aldhabi', 'left', 'rgba(255,255,255,0.65)', '', '18', '#0084aa', '0', 'Aldhabi', 'center', 'View More', '0', 'solid', '#0084aa', '19', '#0084aa', 'Vijaya', 'rgba(255,255,255,0.65)', '', '#0084aa', '#0084aa', 'rgba(255,255,255,0.65)', '', '30', '1', '12');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect3_loader`
--

CREATE TABLE `wp_rich_web_slider_effect3_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect3_loader`
--

INSERT INTO `wp_rich_web_slider_effect3_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_FSl_L_Show`, `Rich_Web_FSl_LT_Show`, `Rich_Web_FSl_LT`, `Rich_Web_FSl_L_BgC`, `Rich_Web_FSl_L_T`, `Rich_Web_FSl_LT_T`, `Rich_Web_FSl_LT_FS`, `Rich_Web_FSl_LT_FF`, `Rich_Web_FSl_LT_C`, `Rich_Web_FSl_L_T1_C`, `Rich_Web_FSl_L_T2_C`, `Rich_Web_FSl_L_T3_C`, `Rich_Web_FSl_LT_T2_BC`, `Rich_Web_FSl_L_C`, `Rich_Web_FSl_LT_T2_AnC`, `Rich_Web_FSl_LT_T3_BgC`, `Rich_Web_FSl_L_S`, `Rich_Web_FSl_Loading_Show`) VALUES
(1, '9', 'false', 'true', 'Loading', '#ffffff', 'Type 4', 'Type 1', '18', 'Vijaya', '#0066bf', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'large', 'true'),
(2, '10', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '17', 'Aldhabi', '#000000', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect4`
--

CREATE TABLE `wp_rich_web_slider_effect4` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxSShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxSType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_BxC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TDABgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TDAPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TCC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArHBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArHBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArLeft` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArRight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_CT_ArTextFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect4`
--

INSERT INTO `wp_rich_web_slider_effect4` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_CT_W`, `Rich_Web_Sl_CT_H`, `Rich_Web_Sl_CT_BW`, `Rich_Web_Sl_CT_BS`, `Rich_Web_Sl_CT_BC`, `Rich_Web_Sl_CT_BxSShow`, `Rich_Web_Sl_CT_BxSType`, `Rich_Web_Sl_CT_BxS`, `Rich_Web_Sl_CT_BxC`, `Rich_Web_Sl_CT_TDABgC`, `Rich_Web_Sl_CT_TDAPos`, `Rich_Web_Sl_CT_LBgC`, `Rich_Web_Sl_CT_TFS`, `Rich_Web_Sl_CT_TFF`, `Rich_Web_Sl_CT_TCC`, `Rich_Web_Sl_CT_TC`, `Rich_Web_Sl_CT_ArBgC`, `Rich_Web_Sl_CT_ArBR`, `Rich_Web_Sl_CT_ArType`, `Rich_Web_Sl_CT_ArHBC`, `Rich_Web_Sl_CT_ArHBR`, `Rich_Web_Sl_CT_ArText`, `Rich_Web_Sl_CT_ArLeft`, `Rich_Web_Sl_CT_ArRight`, `Rich_Web_Sl_CT_ArTextC`, `Rich_Web_Sl_CT_ArTextFS`, `Rich_Web_Sl_CT_ArTextFF`) VALUES
(1, '11', 'Circle Thumbnails', 'Circle Thumbnails', '750', '410', '7', 'solid', '#ffffff', 'true', 'true', '8', '#009491', '#009491', 'bottom', '#009491', '23', 'Vijaya', '#ffffff', '#cccccc', '#007573', '25', '1', '#009491', '30', 'true', 'Prev', 'Next', '#ffffff', '20', 'Vijaya'),
(2, '12', 'Circle Thumbnails 2', 'Circle Thumbnails', '650', '370', '7', 'solid', '#ffffff', 'true', 'false', '20', '#009491', 'rgba(0,148,145,0.6)', 'top', 'rgba(0,148,145,0.6)', '23', 'Vijaya', '#ffffff', '#cccccc', '#007573', '25', '1', '#009491', '30', 'true', 'Prev', 'Next', 'rgba(255,255,255,0.6)', '20', 'Vijaya');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect4_loader`
--

CREATE TABLE `wp_rich_web_slider_effect4_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CircleSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect4_loader`
--

INSERT INTO `wp_rich_web_slider_effect4_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_CircleSl_L_Show`, `Rich_Web_CircleSl_LT_Show`, `Rich_Web_CircleSl_LT`, `Rich_Web_CircleSl_L_BgC`, `Rich_Web_CircleSl_L_T`, `Rich_Web_CircleSl_LT_T`, `Rich_Web_CircleSl_LT_FS`, `Rich_Web_CircleSl_LT_FF`, `Rich_Web_CircleSl_LT_C`, `Rich_Web_CircleSl_L_T1_C`, `Rich_Web_CircleSl_L_T2_C`, `Rich_Web_CircleSl_L_T3_C`, `Rich_Web_CircleSl_LT_T2_BC`, `Rich_Web_CircleSl_L_C`, `Rich_Web_CircleSl_LT_T2_AnC`, `Rich_Web_CircleSl_LT_T3_BgC`, `Rich_Web_CircleSl_L_S`, `Rich_Web_CircleSl_Loading_Show`) VALUES
(1, '11', 'false', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 3', '15', 'Abadi MT Condensed Light', '#ffffff', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#dd9933', '#ffffff', '#009491', 'middle', 'true'),
(2, '12', 'true', 'false', 'Loading', '#ffffff', 'Type 4', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#009491', '#1e73be', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect5`
--

CREATE TABLE `wp_rich_web_slider_effect5` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) NOT NULL,
  `rich_web_slider_name` varchar(255) NOT NULL,
  `rich_web_slider_type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxShShow` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxShType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxSh` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_BoxShC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IH` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_IBR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_ICBW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_ICBS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_ICBC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TFS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_TFF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_THBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_THC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_OC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShShow` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxSh` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Pop_BoxShC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_BR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_HBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_HC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_Type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_Text` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_IType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_L_FF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_BR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_HBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_HC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_Type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_Text` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_IType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PI_FF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BW` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_BR` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_HBgC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_HC` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_Type` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_FF` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_IType` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_Next` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_Arr_Prev` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PCI_FS` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PCI_C` varchar(255) NOT NULL,
  `Rich_Web_Sl_SC_PCI_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_rich_web_slider_effect5`
--

INSERT INTO `wp_rich_web_slider_effect5` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_SC_BW`, `Rich_Web_Sl_SC_BS`, `Rich_Web_Sl_SC_BC`, `Rich_Web_Sl_SC_BoxShShow`, `Rich_Web_Sl_SC_BoxShType`, `Rich_Web_Sl_SC_BoxSh`, `Rich_Web_Sl_SC_BoxShC`, `Rich_Web_Sl_SC_IW`, `Rich_Web_Sl_SC_IH`, `Rich_Web_Sl_SC_IBW`, `Rich_Web_Sl_SC_IBS`, `Rich_Web_Sl_SC_IBC`, `Rich_Web_Sl_SC_IBR`, `Rich_Web_Sl_SC_ICBW`, `Rich_Web_Sl_SC_ICBS`, `Rich_Web_Sl_SC_ICBC`, `Rich_Web_Sl_SC_TBgC`, `Rich_Web_Sl_SC_TC`, `Rich_Web_Sl_SC_TFS`, `Rich_Web_Sl_SC_TFF`, `Rich_Web_Sl_SC_THBgC`, `Rich_Web_Sl_SC_THC`, `Rich_Web_Sl_SC_Pop_OC`, `Rich_Web_Sl_SC_Pop_BW`, `Rich_Web_Sl_SC_Pop_BC`, `Rich_Web_Sl_SC_Pop_BoxShShow`, `Rich_Web_Sl_SC_Pop_BoxShType`, `Rich_Web_Sl_SC_Pop_BoxSh`, `Rich_Web_Sl_SC_Pop_BoxShC`, `Rich_Web_Sl_SC_L_BgC`, `Rich_Web_Sl_SC_L_C`, `Rich_Web_Sl_SC_L_FS`, `Rich_Web_Sl_SC_L_BW`, `Rich_Web_Sl_SC_L_BS`, `Rich_Web_Sl_SC_L_BC`, `Rich_Web_Sl_SC_L_BR`, `Rich_Web_Sl_SC_L_HBgC`, `Rich_Web_Sl_SC_L_HC`, `Rich_Web_Sl_SC_L_Type`, `Rich_Web_Sl_SC_L_Text`, `Rich_Web_Sl_SC_L_IType`, `Rich_Web_Sl_SC_L_FF`, `Rich_Web_Sl_SC_PI_BgC`, `Rich_Web_Sl_SC_PI_C`, `Rich_Web_Sl_SC_PI_FS`, `Rich_Web_Sl_SC_PI_BW`, `Rich_Web_Sl_SC_PI_BS`, `Rich_Web_Sl_SC_PI_BC`, `Rich_Web_Sl_SC_PI_BR`, `Rich_Web_Sl_SC_PI_HBgC`, `Rich_Web_Sl_SC_PI_HC`, `Rich_Web_Sl_SC_PI_Type`, `Rich_Web_Sl_SC_PI_Text`, `Rich_Web_Sl_SC_PI_IType`, `Rich_Web_Sl_SC_PI_FF`, `Rich_Web_Sl_SC_Arr_BgC`, `Rich_Web_Sl_SC_Arr_C`, `Rich_Web_Sl_SC_Arr_FS`, `Rich_Web_Sl_SC_Arr_BW`, `Rich_Web_Sl_SC_Arr_BS`, `Rich_Web_Sl_SC_Arr_BC`, `Rich_Web_Sl_SC_Arr_BR`, `Rich_Web_Sl_SC_Arr_HBgC`, `Rich_Web_Sl_SC_Arr_HC`, `Rich_Web_Sl_SC_Arr_Type`, `Rich_Web_Sl_SC_Arr_FF`, `Rich_Web_Sl_SC_Arr_IType`, `Rich_Web_Sl_SC_Arr_Next`, `Rich_Web_Sl_SC_Arr_Prev`, `Rich_Web_Sl_SC_PCI_FS`, `Rich_Web_Sl_SC_PCI_C`, `Rich_Web_Sl_SC_PCI_Type`) VALUES
(1, '13', 'Slider Carousel 1', 'Slider Carousel', '2', 'solid', '#ffffff', 'true', 'true', '15', '#0084aa', '270', '150', '4', 'solid', '#ffffff', '0', '0', 'solid', '#b5b5b5', '#0084aa', '#ffffff', '23', 'Vijaya', '#ffffff', '#0084aa', 'rgba(0,132,170,0.85)', '10', '#ffffff', 'true', 'false', '50', '#ffffff', 'rgba(255,255,255,0.7)', '#0084aa', '18', '0', 'solid', '#ffffff', '3', 'rgba(0,132,170,0.7)', '#ffffff', 'text', 'More', 'link', 'Vijaya', 'rgba(0,132,170,0.7)', '#ffffff', '18', '0', 'solid', '#0084aa', '3', 'rgba(255,255,255,0.7)', '#0084aa', 'text', 'Picture', 'picture-o', 'Gabriola', 'rgba(255,255,255,0.6)', '#0084aa', '20', '0', 'solid', '#6a90d8', '10', 'rgba(0,132,170,0.6)', '#ffffff', 'icon', 'Gabriola', 'angle', 'Next', 'Prev', '35', '#0084aa', 'home'),
(2, '13', 'Slider Carousel 1', 'Slider Carousel', '2', 'solid', '#ffffff', 'true', 'true', '15', '#0084aa', '270', '150', '4', 'solid', '#ffffff', '0', '0', 'solid', '#b5b5b5', '#0084aa', '#ffffff', '23', 'Vijaya', '#ffffff', '#0084aa', 'rgba(0,132,170,0.85)', '10', '#ffffff', 'true', 'false', '50', '#ffffff', 'rgba(255,255,255,0.7)', '#0084aa', '18', '0', 'solid', '#ffffff', '3', 'rgba(0,132,170,0.7)', '#ffffff', 'text', 'More', 'link', 'Vijaya', 'rgba(0,132,170,0.7)', '#ffffff', '18', '0', 'solid', '#0084aa', '3', 'rgba(255,255,255,0.7)', '#0084aa', 'text', 'Picture', 'picture-o', 'Gabriola', 'rgba(255,255,255,0.6)', '#0084aa', '20', '0', 'solid', '#6a90d8', '10', 'rgba(0,132,170,0.6)', '#ffffff', 'icon', 'Gabriola', 'angle', 'Next', 'Prev', '35', '#0084aa', 'home'),
(3, '15', 'Slider Carousel 2', 'Slider Carousel', '5', 'solid', '#ffffff', 'true', 'false', '25', '#0084aa', '270', '150', '5', 'solid', '#ffffff', '15', '0', 'solid', '#b5b5b5', '#0084aa', '#ffffff', '23', 'Vijaya', '#ffffff', '#0084aa', 'rgba(0,132,170,0.75)', '10', '#ffffff', 'true', 'false', '50', '#ffffff', 'rgba(255,255,255,0.5)', '#0084aa', '16', '0', 'solid', '#ffffff', '3', 'rgba(0,132,170,0.5)', '#ffffff', 'icon', 'More', 'link', 'Vijaya', 'rgba(0,132,170,0.5)', '#ffffff', '18', '0', 'solid', '#0084aa', '3', 'rgba(255,255,255,0.5)', '#0084aa', 'icon', 'Picture', 'picture-o', 'Gabriola', 'rgba(255,255,255,0.5)', '#0084aa', '20', '0', 'solid', '#6a90d8', '10', 'rgba(0,132,170,0.5)', '#ffffff', 'icon', 'Gabriola', 'angle-double', 'Next', 'Prev', '35', '#0084aa', 'times'),
(4, '15', 'Slider Carousel 2', 'Slider Carousel', '5', 'solid', '#ffffff', 'true', 'false', '25', '#0084aa', '270', '150', '5', 'solid', '#ffffff', '15', '0', 'solid', '#b5b5b5', '#0084aa', '#ffffff', '23', 'Vijaya', '#ffffff', '#0084aa', 'rgba(0,132,170,0.75)', '10', '#ffffff', 'true', 'false', '50', '#ffffff', 'rgba(255,255,255,0.5)', '#0084aa', '16', '0', 'solid', '#ffffff', '3', 'rgba(0,132,170,0.5)', '#ffffff', 'icon', 'More', 'link', 'Vijaya', 'rgba(0,132,170,0.5)', '#ffffff', '18', '0', 'solid', '#0084aa', '3', 'rgba(255,255,255,0.5)', '#0084aa', 'icon', 'Picture', 'picture-o', 'Gabriola', 'rgba(255,255,255,0.5)', '#0084aa', '20', '0', 'solid', '#6a90d8', '10', 'rgba(0,132,170,0.5)', '#ffffff', 'icon', 'Gabriola', 'angle-double', 'Next', 'Prev', '35', '#0084aa', 'times');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect5_loader`
--

CREATE TABLE `wp_rich_web_slider_effect5_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_HT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_H_OvC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_CarSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect5_loader`
--

INSERT INTO `wp_rich_web_slider_effect5_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_CarSl_L_Show`, `Rich_Web_CarSl_LT_Show`, `Rich_Web_CarSl_LT`, `Rich_Web_CarSl_L_BgC`, `Rich_Web_CarSl_L_T`, `Rich_Web_CarSl_LT_T`, `Rich_Web_CarSl_LT_FS`, `Rich_Web_CarSl_LT_FF`, `Rich_Web_CarSl_LT_C`, `Rich_Web_CarSl_L_T1_C`, `Rich_Web_CarSl_L_T2_C`, `Rich_Web_CarSl_L_T3_C`, `Rich_Web_CarSl_LT_T2_BC`, `Rich_Web_CarSl_L_C`, `Rich_Web_CarSl_LT_T2_AnC`, `Rich_Web_CarSl_LT_T3_BgC`, `Rich_Web_CarSl_HT`, `Rich_Web_CarSl_H_OvC`, `Rich_Web_CarSl_L_S`, `Rich_Web_CarSl_Loading_Show`) VALUES
(1, '13', 'true', 'true', 'Loading', '#ffffff', 'Type 3', 'Type 4', '18', 'Aharoni', '#1e73be', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#1e73be', '#ffffff', '#1e73be', '11', '#dd3333', 'middle', 'true'),
(2, '15', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 3', '17', 'Aharoni', '#ffffff', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#1e73be', '11', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect6`
--

CREATE TABLE `wp_rich_web_slider_effect6` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_TS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SVis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_CS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SLoop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SSc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_SlPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_ShNavBut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_I_BoxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_T_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_T_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Nav_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_FS_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect6`
--

INSERT INTO `wp_rich_web_slider_effect6` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_FS_BgC`, `Rich_Web_Sl_FS_AP`, `Rich_Web_Sl_FS_TS`, `Rich_Web_Sl_FS_PT`, `Rich_Web_Sl_FS_SS`, `Rich_Web_Sl_FS_SVis`, `Rich_Web_Sl_FS_CS`, `Rich_Web_Sl_FS_SLoop`, `Rich_Web_Sl_FS_SSc`, `Rich_Web_Sl_FS_SlPos`, `Rich_Web_Sl_FS_ShNavBut`, `Rich_Web_Sl_FS_I_W`, `Rich_Web_Sl_FS_I_H`, `Rich_Web_Sl_FS_I_BW`, `Rich_Web_Sl_FS_I_BS`, `Rich_Web_Sl_FS_I_BC`, `Rich_Web_Sl_FS_I_BR`, `Rich_Web_Sl_FS_I_BoxShShow`, `Rich_Web_Sl_FS_I_BoxShType`, `Rich_Web_Sl_FS_I_BoxSh`, `Rich_Web_Sl_FS_I_BoxShC`, `Rich_Web_Sl_FS_T_C`, `Rich_Web_Sl_FS_T_FF`, `Rich_Web_Sl_FS_Nav_Show`, `Rich_Web_Sl_FS_Nav_W`, `Rich_Web_Sl_FS_Nav_H`, `Rich_Web_Sl_FS_Nav_BW`, `Rich_Web_Sl_FS_Nav_BS`, `Rich_Web_Sl_FS_Nav_BC`, `Rich_Web_Sl_FS_Nav_BR`, `Rich_Web_Sl_FS_Nav_PB`, `Rich_Web_Sl_FS_Nav_CC`, `Rich_Web_Sl_FS_Nav_HC`, `Rich_Web_Sl_FS_Nav_C`, `Rich_Web_Sl_FS_Arr_Show`, `Rich_Web_Sl_FS_Arr_Type`, `Rich_Web_Sl_FS_Arr_S`, `Rich_Web_Sl_FS_Arr_C`) VALUES
(1, '17', 'Flexible Slider 1', 'Flexible Slider', '#0084aa', 'true', '400', '4', '1', 'true', '6', 'true', '200', 'center', 'true', '225', '225', '5', 'solid', '#ffffff', '134', 'true', 'false', '33', '#0084aa', '#0084aa', 'Aldhabi', 'true', '15', '10', '1', 'solid', '#0084aa', '15', '3', '#0084aa', '#0066bf', '#ffffff', 'true', 'angle', '40', '#ffffff'),
(2, '17', 'Flexible Slider 1', 'Flexible Slider', '#0084aa', 'true', '400', '4', '1', 'true', '6', 'true', '200', 'center', 'true', '225', '225', '5', 'solid', '#ffffff', '134', 'true', 'false', '33', '#0084aa', '#0084aa', 'Aldhabi', 'true', '15', '10', '1', 'solid', '#0084aa', '15', '3', '#0084aa', '#0066bf', '#ffffff', 'true', 'angle', '40', '#ffffff'),
(3, '19', 'Flexible Slider 2', 'Flexible Slider', '#0084aa', 'true', '400', '4', '1', 'true', '6', 'true', '200', 'center', 'true', '225', '225', '5', 'solid', '#ffffff', '0', 'true', 'true', '33', '#0084aa', '#0084aa', 'Aldhabi', 'true', '15', '10', '1', 'solid', '#0084aa', '15', '3', '#0084aa', '#0066bf', '#ffffff', 'true', 'angle', '40', '#ffffff'),
(4, '19', 'Flexible Slider 2', 'Flexible Slider', '#0084aa', 'true', '400', '4', '1', 'true', '6', 'true', '200', 'center', 'true', '225', '225', '5', 'solid', '#ffffff', '0', 'true', 'true', '33', '#0084aa', '#0084aa', 'Aldhabi', 'true', '15', '10', '1', 'solid', '#0084aa', '15', '3', '#0084aa', '#0066bf', '#ffffff', 'true', 'angle', '40', '#ffffff'),
(5, '33', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect6_loader`
--

CREATE TABLE `wp_rich_web_slider_effect6_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_FlexibleSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect6_loader`
--

INSERT INTO `wp_rich_web_slider_effect6_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_FlexibleSl_L_Show`, `Rich_Web_FlexibleSl_LT_Show`, `Rich_Web_FlexibleSl_LT`, `Rich_Web_FlexibleSl_L_BgC`, `Rich_Web_FlexibleSl_L_T`, `Rich_Web_FlexibleSl_LT_T`, `Rich_Web_FlexibleSl_LT_FS`, `Rich_Web_FlexibleSl_LT_FF`, `Rich_Web_FlexibleSl_LT_C`, `Rich_Web_FlexibleSl_L_T1_C`, `Rich_Web_FlexibleSl_L_T2_C`, `Rich_Web_FlexibleSl_L_T3_C`, `Rich_Web_FlexibleSl_LT_T2_BC`, `Rich_Web_FlexibleSl_L_C`, `Rich_Web_FlexibleSl_LT_T2_AnC`, `Rich_Web_FlexibleSl_LT_T3_BgC`, `Rich_Web_FlexibleSl_L_S`, `Rich_Web_FlexibleSl_Loading_Show`) VALUES
(1, '17', 'true', 'false', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd8282', '#c9c9c9', '#000000', 'rgba(30,115,190,0.54)', '#ffffff', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '19', 'true', 'false', 'Loading', '#ffffff', 'Type 3', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#ffffff', '#dd3333', 'middle', 'true'),
(3, '33', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect7`
--

CREATE TABLE `wp_rich_web_slider_effect7` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Tr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_DC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LBR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LHC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LHBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_RT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Arr_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_DS_Nav_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect7`
--

INSERT INTO `wp_rich_web_slider_effect7` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_DS_AP`, `Rich_Web_Sl_DS_PT`, `Rich_Web_Sl_DS_Tr`, `Rich_Web_Sl_DS_H`, `Rich_Web_Sl_DS_BW`, `Rich_Web_Sl_DS_BS`, `Rich_Web_Sl_DS_BC`, `Rich_Web_Sl_DS_TFS`, `Rich_Web_Sl_DS_TFF`, `Rich_Web_Sl_DS_TC`, `Rich_Web_Sl_DS_DFS`, `Rich_Web_Sl_DS_DFF`, `Rich_Web_Sl_DS_DC`, `Rich_Web_Sl_DS_LFS`, `Rich_Web_Sl_DS_LFF`, `Rich_Web_Sl_DS_LC`, `Rich_Web_Sl_DS_LBgC`, `Rich_Web_Sl_DS_LBW`, `Rich_Web_Sl_DS_LBS`, `Rich_Web_Sl_DS_LBC`, `Rich_Web_Sl_DS_LBR`, `Rich_Web_Sl_DS_LHC`, `Rich_Web_Sl_DS_LHBgC`, `Rich_Web_Sl_DS_LT`, `Rich_Web_Sl_DS_Arr_Show`, `Rich_Web_Sl_DS_Arr_LT`, `Rich_Web_Sl_DS_Arr_RT`, `Rich_Web_Sl_DS_Arr_C`, `Rich_Web_Sl_DS_Arr_BgC`, `Rich_Web_Sl_DS_Arr_BW`, `Rich_Web_Sl_DS_Arr_BS`, `Rich_Web_Sl_DS_Arr_BC`, `Rich_Web_Sl_DS_Arr_BR`, `Rich_Web_Sl_DS_Arr_HC`, `Rich_Web_Sl_DS_Arr_HBgC`, `Rich_Web_Sl_DS_Nav_W`, `Rich_Web_Sl_DS_Nav_H`, `Rich_Web_Sl_DS_Nav_PB`, `Rich_Web_Sl_DS_Nav_BW`, `Rich_Web_Sl_DS_Nav_BS`, `Rich_Web_Sl_DS_Nav_BC`, `Rich_Web_Sl_DS_Nav_BR`, `Rich_Web_Sl_DS_Nav_C`, `Rich_Web_Sl_DS_Nav_HC`, `Rich_Web_Sl_DS_Nav_CC`) VALUES
(1, '21', 'Dynamic Slider 1', 'Dynamic Slider', 'true', '5', 'true', '250', '4', 'solid', '#ffffff', '15', 'Aldhabi', '#ffffff', '14', 'Aldhabi', '#598fbf', '16', 'Aldhabi', '#ffffff', '#dd3333', '0', 'dotted', '#4a1fc1', '0', '#dd3333', '#ffffff', 'View', 'true', 'Prev', 'Next', '#ffffff', '#0084aa', '0', 'solid', '#16a309', '46', '#ffffff', '#5598aa', '11', '12', '5', '1', 'solid', '#ffffff', '50', '#0084aa', '#dd3333', '#ffffff'),
(2, '22', 'Dynamic Slider 2', 'Dynamic Slider', 'true', '5', 'true', '400', '4', 'solid', '#ffffff', '18', 'Aldhabi', '#598fbf', '16', 'Aldhabi', '#ffffff', '16', 'Aldhabi', '#ffffff', 'rgba(221,51,51,0)', '1', 'solid', '#ffffff', '0', '#0084aa', 'rgba(255,255,255,0)', 'View More', 'true', 'Prev', 'Next', '#0084aa', 'rgba(255,255,255,0.45)', '0', 'solid', '#000000', '46', '#0084aa', '#ffffff', '10', '10', '5', '1', 'solid', '#ffffff', '50', '#0084aa', '#ffffff', '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect7_loader`
--

CREATE TABLE `wp_rich_web_slider_effect7_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_ImgT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_DynamicSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect7_loader`
--

INSERT INTO `wp_rich_web_slider_effect7_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_DynamicSl_L_Show`, `Rich_Web_DynamicSl_LT_Show`, `Rich_Web_DynamicSl_LT`, `Rich_Web_DynamicSl_L_BgC`, `Rich_Web_DynamicSl_L_T`, `Rich_Web_DynamicSl_LT_T`, `Rich_Web_DynamicSl_LT_FS`, `Rich_Web_DynamicSl_LT_FF`, `Rich_Web_DynamicSl_LT_C`, `Rich_Web_DynamicSl_L_T1_C`, `Rich_Web_DynamicSl_L_T2_C`, `Rich_Web_DynamicSl_L_T3_C`, `Rich_Web_DynamicSl_LT_T2_BC`, `Rich_Web_DynamicSl_L_C`, `Rich_Web_DynamicSl_LT_T2_AnC`, `Rich_Web_DynamicSl_LT_T3_BgC`, `Rich_Web_DynamicSl_ImgT`, `Rich_Web_DynamicSl_L_S`, `Rich_Web_DynamicSl_Loading_Show`) VALUES
(1, '21', 'true', 'true', 'Loading', '#ffffff', 'Type 3', 'Type 2', '21', 'Gabriola', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#007596', '#0084aa', '#dd3333', 'Type 2', 'middle', 'true'),
(2, '22', 'true', 'true', 'LOADING', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#0084aa', '#0084aa', '#dd3333', 'Type 1', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect8`
--

CREATE TABLE `wp_rich_web_slider_effect8` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_BoxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_AP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_PH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Loop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_PT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_PB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_CBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_HBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Nav_Pos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_StC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_SS_SpC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_OvC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_Pop_ArrC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_Sl_TSL_CIC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect8`
--

INSERT INTO `wp_rich_web_slider_effect8` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_Sl_TSL_W`, `Rich_Web_Sl_TSL_H`, `Rich_Web_Sl_TSL_BW`, `Rich_Web_Sl_TSL_BS`, `Rich_Web_Sl_TSL_BC`, `Rich_Web_Sl_TSL_BR`, `Rich_Web_Sl_TSL_BoxShShow`, `Rich_Web_Sl_TSL_BoxShType`, `Rich_Web_Sl_TSL_BoxSh`, `Rich_Web_Sl_TSL_BoxShC`, `Rich_Web_Sl_TSL_CM`, `Rich_Web_Sl_TSL_TA`, `Rich_Web_Sl_TSL_AP`, `Rich_Web_Sl_TSL_PH`, `Rich_Web_Sl_TSL_Loop`, `Rich_Web_Sl_TSL_PT`, `Rich_Web_Sl_TSL_CS`, `Rich_Web_Sl_TSL_Nav_Show`, `Rich_Web_Sl_TSL_Nav_W`, `Rich_Web_Sl_TSL_Nav_H`, `Rich_Web_Sl_TSL_Nav_PB`, `Rich_Web_Sl_TSL_Nav_BC`, `Rich_Web_Sl_TSL_Nav_BR`, `Rich_Web_Sl_TSL_Nav_CBC`, `Rich_Web_Sl_TSL_Nav_HBC`, `Rich_Web_Sl_TSL_Nav_Pos`, `Rich_Web_Sl_TSL_SS_Show`, `Rich_Web_Sl_TSL_SS_W`, `Rich_Web_Sl_TSL_SS_H`, `Rich_Web_Sl_TSL_SS_BC`, `Rich_Web_Sl_TSL_SS_BR`, `Rich_Web_Sl_TSL_SS_StC`, `Rich_Web_Sl_TSL_SS_SpC`, `Rich_Web_Sl_TSL_Arr_Show`, `Rich_Web_Sl_TSL_Arr_Type`, `Rich_Web_Sl_TSL_Arr_S`, `Rich_Web_Sl_TSL_Arr_C`, `Rich_Web_Sl_TSL_Pop_OvC`, `Rich_Web_Sl_TSL_Pop_BW`, `Rich_Web_Sl_TSL_Pop_BS`, `Rich_Web_Sl_TSL_Pop_BC`, `Rich_Web_Sl_TSL_Pop_BR`, `Rich_Web_Sl_TSL_Pop_BgC`, `Rich_Web_Sl_TSL_TFS`, `Rich_Web_Sl_TSL_TFF`, `Rich_Web_Sl_TSL_TC`, `Rich_Web_Sl_TSL_Pop_ArrType`, `Rich_Web_Sl_TSL_Pop_ArrS`, `Rich_Web_Sl_TSL_Pop_ArrC`, `Rich_Web_Sl_TSL_CIT`, `Rich_Web_Sl_TSL_CIS`, `Rich_Web_Sl_TSL_CIC`) VALUES
(1, '23', 'Thumbnails Slider & Lightbox 1', 'Thumbnails Slider & Lightbox', '700', '425', '5', 'solid', '#598fbf', '0', 'true', 'false', '32', '#598fbf', 'vertical', 'true', 'true', 'true', 'true', '5', '500', 'true', '50', '50', '4', '#ffffff', '0', '#598fbf', '#598fbf', 'bottom', 'true', '10', '10', '#598fbf', '8', '#598fbf', '#ffffff', 'true', '9', '39', '#ffffff', 'rgba(89,143,191,0.85)', '0', 'solid', '#ffffff', '0', 'rgba(89,143,191,0)', '27', 'Gabriola', '#ffffff', 'angle-double', '27', '#ffffff', 'times-circle', '28', 'rgba(255,255,255,0.86)'),
(2, '24', 'Thumbnails Slider & Lightbox 2', 'Thumbnails Slider & Lightbox', '700', '425', '5', 'solid', '#ffffff', '0', 'true', 'true', '15', '#598fbf', 'fade', 'false', 'true', 'true', 'false', '5', '500', 'true', '25', '25', '6', 'rgba(255,255,255,0.43)', '20', 'rgba(89,143,191,0.46)', 'rgba(89,143,191,0.41)', 'top', 'false', '10', '10', '#598fbf', '8', '#598fbf', '#ffffff', 'true', '9', '39', '#ffffff', 'rgba(89,143,191,0.85)', '0', 'solid', '#ffffff', '0', 'rgba(89,143,191,0)', '27', 'Gabriola', '#ffffff', 'angle-double', '27', '#ffffff', 'times-circle', '28', 'rgba(255,255,255,0.86');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect8_loader`
--

CREATE TABLE `wp_rich_web_slider_effect8_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_ThSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect8_loader`
--

INSERT INTO `wp_rich_web_slider_effect8_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_ThSl_L_Show`, `Rich_Web_ThSl_LT_Show`, `Rich_Web_ThSl_LT`, `Rich_Web_ThSl_L_BgC`, `Rich_Web_ThSl_L_T`, `Rich_Web_ThSl_LT_T`, `Rich_Web_ThSl_LT_FS`, `Rich_Web_ThSl_LT_FF`, `Rich_Web_ThSl_LT_C`, `Rich_Web_ThSl_L_T1_C`, `Rich_Web_ThSl_L_T2_C`, `Rich_Web_ThSl_L_T3_C`, `Rich_Web_ThSl_LT_T2_BC`, `Rich_Web_ThSl_L_C`, `Rich_Web_ThSl_LT_T2_AnC`, `Rich_Web_ThSl_LT_T3_BgC`, `Rich_Web_ThSl_L_S`, `Rich_Web_ThSl_Loading_Show`) VALUES
(1, '23', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 1', '15', 'Abadi MT Condensed Light', '#828282', '#dd9933', '#dd9933', '#dd3333', '#000000', '#dd3333', '#ffffff', '#dd3333', 'middle', 'true'),
(2, '24', 'true', 'false', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#000000', '#606060', '#b7b7b7', '#000000', '#ffffff', '#81d742', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect9`
--

CREATE TABLE `wp_rich_web_slider_effect9` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_BShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Img_BShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_TSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_TShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Title_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_TSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_TShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AcSL_Link_Text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect9`
--

INSERT INTO `wp_rich_web_slider_effect9` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_AcSL_W`, `Rich_Web_AcSL_H`, `Rich_Web_AcSL_BW`, `Rich_Web_AcSL_BS`, `Rich_Web_AcSL_BC`, `Rich_Web_AcSL_BSh`, `Rich_Web_AcSL_BShC`, `Rich_Web_AcSL_Img_W`, `Rich_Web_AcSL_Img_BSh`, `Rich_Web_AcSL_Img_BShC`, `Rich_Web_AcSL_Title_FS`, `Rich_Web_AcSL_Title_FF`, `Rich_Web_AcSL_Title_C`, `Rich_Web_AcSL_Title_TSh`, `Rich_Web_AcSL_Title_TShC`, `Rich_Web_AcSL_Title_BgC`, `Rich_Web_AcSL_Link_FS`, `Rich_Web_AcSL_Link_FF`, `Rich_Web_AcSL_Link_C`, `Rich_Web_AcSL_Link_TSh`, `Rich_Web_AcSL_Link_TShC`, `Rich_Web_AcSL_Link_BgC`, `Rich_Web_AcSL_Link_Text`) VALUES
(1, '25', 'Accordion 1', 'Accordion Slider', '720', '350', '7', 'solid', '#eaeaea', '14', '#0084aa', '596', '2', '#eaeaea', '16', 'Aldhabi', '#ffffff', '3', '#ffffff', 'rgba(0,132,170,0.65)', '16', 'Vijaya', '#0084aa', '3', '#0084aa', 'rgba(255,255,255,0.6)', 'View . . .'),
(2, '25', 'Accordion 1', 'Accordion Slider', '720', '350', '7', 'solid', '#eaeaea', '14', '#0084aa', '596', '2', '#eaeaea', '16', 'Aldhabi', '#ffffff', '3', '#ffffff', 'rgba(0,132,170,0.65)', '16', 'Vijaya', '#0084aa', '3', '#0084aa', 'rgba(255,255,255,0.6)', 'View . . .'),
(3, '27', 'Accordion 2', 'Accordion Slider', '720', '350', '7', 'solid', '#ffffff', '14', '#0084aa', '572', '3', '#ffffff', '16', 'Aldhabi', '#0084aa', '3', '#ffffff', 'rgba(255,255,255,0.8)', '16', 'Vijaya', '#ffffff', '3', 'rgba(0,132,170,0.5)', 'rgba(255,255,255,0.6)', 'View . . .'),
(4, '27', 'Accordion 2', 'Accordion Slider', '720', '350', '7', 'solid', '#ffffff', '14', '#0084aa', '572', '3', '#ffffff', '16', 'Aldhabi', '#0084aa', '3', '#ffffff', 'rgba(255,255,255,0.8)', '16', 'Vijaya', '#ffffff', '3', 'rgba(0,132,170,0.5)', 'rgba(255,255,255,0.6)', 'View . . .');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect9_loader`
--

CREATE TABLE `wp_rich_web_slider_effect9_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AccSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect9_loader`
--

INSERT INTO `wp_rich_web_slider_effect9_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_AccSl_L_Show`, `Rich_Web_AccSl_LT_Show`, `Rich_Web_AccSl_LT`, `Rich_Web_AccSl_L_BgC`, `Rich_Web_AccSl_L_T`, `Rich_Web_AccSl_LT_T`, `Rich_Web_AccSl_LT_FS`, `Rich_Web_AccSl_LT_FF`, `Rich_Web_AccSl_LT_C`, `Rich_Web_AccSl_L_T1_C`, `Rich_Web_AccSl_L_T2_C`, `Rich_Web_AccSl_L_T3_C`, `Rich_Web_AccSl_LT_T2_BC`, `Rich_Web_AccSl_L_C`, `Rich_Web_AccSl_LT_T2_AnC`, `Rich_Web_AccSl_LT_T3_BgC`, `Rich_Web_AccSl_L_S`, `Rich_Web_AccSl_Loading_Show`) VALUES
(1, '25', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '17', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#00688e', '#dd3333', 'middle', 'true'),
(2, '25', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '17', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#00688e', '#dd3333', 'middle', 'true'),
(3, '27', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#007087', '#dd3333', 'middle', 'true'),
(4, '27', 'false', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '13', 'Abadi MT Condensed Light', '#0084aa', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#ffffff', '#007087', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect10`
--

CREATE TABLE `wp_rich_web_slider_effect10` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rich_web_slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_BSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_ShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_ET` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_SSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_SShChT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_TA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_T_ShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_CC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_N_M` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_Sh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_Ic_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L1_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L2_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnSL_L3_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect10`
--

INSERT INTO `wp_rich_web_slider_effect10` (`id`, `rich_web_slider_ID`, `rich_web_slider_name`, `rich_web_slider_type`, `Rich_Web_AnSL_W`, `Rich_Web_AnSL_H`, `Rich_Web_AnSL_BW`, `Rich_Web_AnSL_BS`, `Rich_Web_AnSL_BC`, `Rich_Web_AnSL_BR`, `Rich_Web_AnSL_BSh`, `Rich_Web_AnSL_ShC`, `Rich_Web_AnSL_ET`, `Rich_Web_AnSL_SSh`, `Rich_Web_AnSL_SShChT`, `Rich_Web_AnSL_T_FS`, `Rich_Web_AnSL_T_FF`, `Rich_Web_AnSL_T_C`, `Rich_Web_AnSL_T_BgC`, `Rich_Web_AnSL_T_TA`, `Rich_Web_AnSL_T_Sh`, `Rich_Web_AnSL_T_ShC`, `Rich_Web_AnSL_N_Sh`, `Rich_Web_AnSL_N_S`, `Rich_Web_AnSL_N_BW`, `Rich_Web_AnSL_N_BC`, `Rich_Web_AnSL_N_BgC`, `Rich_Web_AnSL_N_BS`, `Rich_Web_AnSL_N_HBgC`, `Rich_Web_AnSL_N_CC`, `Rich_Web_AnSL_N_M`, `Rich_Web_AnSL_Ic_Sh`, `Rich_Web_AnSL_Ic_T`, `Rich_Web_AnSL_Ic_S`, `Rich_Web_AnSL_Ic_C`, `Rich_Web_AnSL_L_BgC`, `Rich_Web_AnSL_L_T`, `Rich_Web_AnSL_L_FS`, `Rich_Web_AnSL_L_FF`, `Rich_Web_AnSL_L_C`, `Rich_Web_AnSL_L1_T`, `Rich_Web_AnSL_L2_T`, `Rich_Web_AnSL_L3_T`) VALUES
(1, '29', 'Animation Slider 1', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '10', '#000000', '4', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(0,0,0,0.3)', 'center', '5', 'Image', 'true', '13', '1', 'rgba(0,0,0,0.15)', 'rgba(0,0,0,0.15)', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-angle-double', '40', '#ffffff', '#000000', 'Loading. Please Wait...', '16', 'Abadi MT Condensed Light', '#ffffff', '#ffffff', '#1e73be', '#bababa'),
(2, '29', 'Animation Slider 1', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '10', '#000000', '4', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(0,0,0,0.3)', 'center', '5', 'Image', 'true', '13', '1', 'rgba(0,0,0,0.15)', 'rgba(0,0,0,0.15)', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-angle-double', '40', '#ffffff', '#000000', 'Loading. Please Wait...', '16', 'Abadi MT Condensed Light', '#ffffff', '#ffffff', '#1e73be', '#bababa'),
(3, '31', 'Animation Slider 2', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '0', 'rgba(0,0,0,0)', '6', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(30,115,190,0.3)', 'center', '5', 'Icon', 'false', '13', '1', '#1e73be', '#1e73be', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-caret', '50', 'rgba(30,115,190,0.8)', '#000000', 'Loading. Please Wait...', '16', 'Abadi MT Condensed Light', '#ffffff', '#ffffff', '#1e73be', '#bababa'),
(4, '31', 'Animation Slider 2', 'Animation Slider', '700', '536', '0', 'none', '#1e73be', '0', '0', 'rgba(0,0,0,0)', '6', 'true', '5500', '22', 'Abadi MT Condensed Light', '#ffffff', 'rgba(30,115,190,0.3)', 'center', '5', 'Icon', 'false', '13', '1', '#1e73be', '#1e73be', 'Type 1', 'rgba(255,255,255,0.4)', 'rgba(0,0,0,0.3)', '3', 'true', 'rich_web rich_web-caret', '50', 'rgba(30,115,190,0.8)', '#000000', 'Loading. Please Wait...', '16', 'Abadi MT Condensed Light', '#ffffff', '#ffffff', '#1e73be', '#bababa');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effect10_loader`
--

CREATE TABLE `wp_rich_web_slider_effect10_loader` (
  `id` int(10) UNSIGNED NOT NULL,
  `rich_web_slider_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T1_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T2_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_T3_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T2_AnC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_LT_T3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_L_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rich_Web_AnimSl_Loading_Show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effect10_loader`
--

INSERT INTO `wp_rich_web_slider_effect10_loader` (`id`, `rich_web_slider_ID`, `Rich_Web_AnimSl_L_Show`, `Rich_Web_AnimSl_LT_Show`, `Rich_Web_AnimSl_LT`, `Rich_Web_AnimSl_L_BgC`, `Rich_Web_AnimSl_L_T`, `Rich_Web_AnimSl_LT_T`, `Rich_Web_AnimSl_LT_FS`, `Rich_Web_AnimSl_LT_FF`, `Rich_Web_AnimSl_LT_C`, `Rich_Web_AnimSl_L_T1_C`, `Rich_Web_AnimSl_L_T2_C`, `Rich_Web_AnimSl_L_T3_C`, `Rich_Web_AnimSl_LT_T2_BC`, `Rich_Web_AnimSl_L_C`, `Rich_Web_AnimSl_LT_T2_AnC`, `Rich_Web_AnimSl_LT_T3_BgC`, `Rich_Web_AnimSl_L_S`, `Rich_Web_AnimSl_Loading_Show`) VALUES
(1, '29', 'true', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd3333', '#dd0000', '#990700', 'rgba(30,115,190,0.54)', '#dd0000', '#dd3333', '#dd3333', 'middle', 'true'),
(2, '29', 'true', 'true', 'Loading', '#ffffff', 'Type 1', 'Type 2', '13', 'Abadi MT Condensed Light', '#dd3333', '#dd3333', '#dd0000', '#990700', 'rgba(30,115,190,0.54)', '#dd0000', '#dd3333', '#dd3333', 'middle', 'true'),
(3, '31', 'true', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '15', 'Abadi MT Condensed Light', '#004da0', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#1e73be', '#1e73be', '#dd3333', 'middle', 'true'),
(4, '31', 'true', 'true', 'Loading', '#ffffff', 'Type 2', 'Type 2', '15', 'Abadi MT Condensed Light', '#004da0', '#dd9933', '#dd9933', '#dd3333', 'rgba(30,115,190,0.54)', '#1e73be', '#1e73be', '#dd3333', 'middle', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_effects_data`
--

CREATE TABLE `wp_rich_web_slider_effects_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_effects_data`
--

INSERT INTO `wp_rich_web_slider_effects_data` (`id`, `slider_name`, `slider_type`) VALUES
(1, 'Slider Navigation 1', 'Slider Navigation'),
(2, 'Slider Navigation 1', 'Slider Navigation'),
(3, 'Slider Navigation 2', 'Slider Navigation'),
(4, 'Slider Navigation 2', 'Slider Navigation'),
(5, 'Content Slider', 'Content Slider'),
(6, 'Content Slider', 'Content Slider'),
(7, 'Content-Slider', 'Content Slider'),
(8, 'Content-Slider', 'Content Slider'),
(9, 'Fashion Slider 1', 'Fashion Slider'),
(10, 'Fashion Slider 2', 'Fashion Slider'),
(11, 'Circle Thumbnails', 'Circle Thumbnails'),
(12, 'Circle Thumbnails 2', 'Circle Thumbnails'),
(13, 'Slider Carousel 1', 'Slider Carousel'),
(14, 'Slider Carousel 1', 'Slider Carousel'),
(15, 'Slider Carousel 2', 'Slider Carousel'),
(16, 'Slider Carousel 2', 'Slider Carousel'),
(17, 'Flexible Slider 1', 'Flexible Slider'),
(18, 'Flexible Slider 1', 'Flexible Slider'),
(19, 'Flexible Slider 2', 'Flexible Slider'),
(20, 'Flexible Slider 2', 'Flexible Slider'),
(21, 'Dynamic Slider 1', 'Dynamic Slider'),
(22, 'Dynamic Slider 2', 'Dynamic Slider'),
(23, 'Thumbnails Slider & Lightbox 1', 'Thumbnails Slider & Lightbox'),
(24, 'Thumbnails Slider & Lightbox 2', 'Thumbnails Slider & Lightbox'),
(25, 'Accordion 1', 'Accordion Slider'),
(26, 'Accordion 1', 'Accordion Slider'),
(27, 'Accordion 2', 'Accordion Slider'),
(28, 'Accordion 2', 'Accordion Slider'),
(29, 'Animation Slider 1', 'Animation Slider'),
(30, 'Animation Slider 1', 'Animation Slider'),
(31, 'Animation Slider 2', 'Animation Slider'),
(32, 'Animation Slider 2', 'Animation Slider'),
(33, 'Flexible Slider 1', 'Flexible Slider');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_font_family`
--

CREATE TABLE `wp_rich_web_slider_font_family` (
  `id` int(10) UNSIGNED NOT NULL,
  `Font_family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_font_family`
--

INSERT INTO `wp_rich_web_slider_font_family` (`id`, `Font_family`) VALUES
(1, 'Abadi MT Condensed Light'),
(2, 'Abadi MT Condensed Light'),
(3, 'Aharoni'),
(4, 'Aharoni'),
(5, 'Aldhabi'),
(6, 'Aldhabi'),
(7, 'Andalus'),
(8, 'Andalus'),
(9, 'Angsana New'),
(10, 'Angsana New'),
(11, 'AngsanaUPC'),
(12, 'AngsanaUPC'),
(13, 'Aparajita'),
(14, 'Aparajita'),
(15, 'Arabic Typesetting'),
(16, 'Arabic Typesetting'),
(17, 'Arial'),
(18, 'Arial'),
(19, 'Arial Black'),
(20, 'Arial Black'),
(21, 'Batang'),
(22, 'Batang'),
(23, 'BatangChe'),
(24, 'BatangChe'),
(25, 'Browallia New'),
(26, 'Browallia New'),
(27, 'BrowalliaUPC'),
(28, 'BrowalliaUPC'),
(29, 'Calibri'),
(30, 'Calibri'),
(31, 'Calibri Light'),
(32, 'Calibri Light'),
(33, 'Calisto MT'),
(34, 'Calisto MT'),
(35, 'Cambria'),
(36, 'Cambria'),
(37, 'Candara'),
(38, 'Candara'),
(39, 'Century Gothic'),
(40, 'Century Gothic'),
(41, 'Comic Sans MS'),
(42, 'Comic Sans MS'),
(43, 'Consolas'),
(44, 'Consolas'),
(45, 'Constantia'),
(46, 'Constantia'),
(47, 'Copperplate Gothic'),
(48, 'Copperplate Gothic'),
(49, 'Copperplate Gothic Light'),
(50, 'Copperplate Gothic Light'),
(51, 'Corbel'),
(52, 'Corbel'),
(53, 'Cordia New'),
(54, 'Cordia New'),
(55, 'CordiaUPC'),
(56, 'CordiaUPC'),
(57, 'Courier New'),
(58, 'Courier New'),
(59, 'DaunPenh'),
(60, 'DaunPenh'),
(61, 'David'),
(62, 'David'),
(63, 'DFKai-SB'),
(64, 'DFKai-SB'),
(65, 'DilleniaUPC'),
(66, 'DilleniaUPC'),
(67, 'DokChampa'),
(68, 'DokChampa'),
(69, 'Dotum'),
(70, 'Dotum'),
(71, 'DotumChe'),
(72, 'DotumChe'),
(73, 'Ebrima'),
(74, 'Ebrima'),
(75, 'Estrangelo Edessa'),
(76, 'Estrangelo Edessa'),
(77, 'EucrosiaUPC'),
(78, 'EucrosiaUPC'),
(79, 'Euphemia'),
(80, 'Euphemia'),
(81, 'FangSong'),
(82, 'FangSong'),
(83, 'Franklin Gothic Medium'),
(84, 'Franklin Gothic Medium'),
(85, 'FrankRuehl'),
(86, 'FrankRuehl'),
(87, 'FreesiaUPC'),
(88, 'FreesiaUPC'),
(89, 'Gabriola'),
(90, 'Gabriola'),
(91, 'Gadugi'),
(92, 'Gadugi'),
(93, 'Gautami'),
(94, 'Gautami'),
(95, 'Georgia'),
(96, 'Georgia'),
(97, 'Gisha'),
(98, 'Gisha'),
(99, 'Gulim'),
(100, 'Gulim'),
(101, 'GulimChe'),
(102, 'GulimChe'),
(103, 'Gungsuh'),
(104, 'Gungsuh'),
(105, 'GungsuhChe'),
(106, 'GungsuhChe'),
(107, 'Impact'),
(108, 'Impact'),
(109, 'IrisUPC'),
(110, 'IrisUPC'),
(111, 'Iskoola Pota'),
(112, 'Iskoola Pota'),
(113, 'JasmineUPC'),
(114, 'JasmineUPC'),
(115, 'KaiTi'),
(116, 'KaiTi'),
(117, 'Kalinga'),
(118, 'Kalinga'),
(119, 'Kartika'),
(120, 'Kartika'),
(121, 'Khmer UI'),
(122, 'Khmer UI'),
(123, 'KodchiangUPC'),
(124, 'KodchiangUPC'),
(125, 'Kokila'),
(126, 'Kokila'),
(127, 'Lao UI'),
(128, 'Lao UI'),
(129, 'Latha'),
(130, 'Latha'),
(131, 'Leelawadee'),
(132, 'Leelawadee'),
(133, 'Levenim MT'),
(134, 'Levenim MT'),
(135, 'LilyUPC'),
(136, 'LilyUPC'),
(137, 'Lucida Console'),
(138, 'Lucida Console'),
(139, 'Lucida Handwriting Italic'),
(140, 'Lucida Handwriting Italic'),
(141, 'Lucida Sans Unicode'),
(142, 'Lucida Sans Unicode'),
(143, 'Malgun Gothic'),
(144, 'Malgun Gothic'),
(145, 'Mangal'),
(146, 'Mangal'),
(147, 'Manny ITC'),
(148, 'Manny ITC'),
(149, 'Marlett'),
(150, 'Marlett'),
(151, 'Meiryo'),
(152, 'Meiryo'),
(153, 'Meiryo UI'),
(154, 'Meiryo UI'),
(155, 'Microsoft Himalaya'),
(156, 'Microsoft Himalaya'),
(157, 'Microsoft JhengHei'),
(158, 'Microsoft JhengHei'),
(159, 'Microsoft JhengHei UI'),
(160, 'Microsoft JhengHei UI'),
(161, 'Microsoft New Tai Lue'),
(162, 'Microsoft New Tai Lue'),
(163, 'Microsoft PhagsPa'),
(164, 'Microsoft PhagsPa'),
(165, 'Microsoft Sans Serif'),
(166, 'Microsoft Sans Serif'),
(167, 'Microsoft Tai Le'),
(168, 'Microsoft Tai Le'),
(169, 'Microsoft Uighur'),
(170, 'Microsoft Uighur'),
(171, 'Microsoft YaHei'),
(172, 'Microsoft YaHei'),
(173, 'Microsoft YaHei UI'),
(174, 'Microsoft YaHei UI'),
(175, 'Microsoft Yi Baiti'),
(176, 'Microsoft Yi Baiti'),
(177, 'MingLiU_HKSCS'),
(178, 'MingLiU_HKSCS'),
(179, 'MingLiU_HKSCS-ExtB'),
(180, 'MingLiU_HKSCS-ExtB'),
(181, 'Miriam'),
(182, 'Miriam'),
(183, 'Mongolian Baiti'),
(184, 'Mongolian Baiti'),
(185, 'MoolBoran'),
(186, 'MoolBoran'),
(187, 'MS UI Gothic'),
(188, 'MS UI Gothic'),
(189, 'MV Boli'),
(190, 'MV Boli'),
(191, 'Myanmar Text'),
(192, 'Myanmar Text'),
(193, 'Narkisim'),
(194, 'Narkisim'),
(195, 'Nirmala UI'),
(196, 'Nirmala UI'),
(197, 'News Gothic MT'),
(198, 'News Gothic MT'),
(199, 'NSimSun'),
(200, 'NSimSun'),
(201, 'Nyala'),
(202, 'Nyala'),
(203, 'Palatino Linotype'),
(204, 'Palatino Linotype'),
(205, 'Plantagenet Cherokee'),
(206, 'Plantagenet Cherokee'),
(207, 'Raavi'),
(208, 'Raavi'),
(209, 'Rod'),
(210, 'Rod'),
(211, 'Sakkal Majalla'),
(212, 'Sakkal Majalla'),
(213, 'Segoe Print'),
(214, 'Segoe Print'),
(215, 'Segoe Script'),
(216, 'Segoe Script'),
(217, 'Segoe UI Symbol'),
(218, 'Segoe UI Symbol'),
(219, 'Shonar Bangla'),
(220, 'Shonar Bangla'),
(221, 'Shruti'),
(222, 'Shruti'),
(223, 'SimHei'),
(224, 'SimHei'),
(225, 'SimKai'),
(226, 'SimKai'),
(227, 'Simplified Arabic'),
(228, 'Simplified Arabic'),
(229, 'SimSun'),
(230, 'SimSun'),
(231, 'SimSun-ExtB'),
(232, 'SimSun-ExtB'),
(233, 'Sylfaen'),
(234, 'Sylfaen'),
(235, 'Tahoma'),
(236, 'Tahoma'),
(237, 'Times New Roman'),
(238, 'Times New Roman'),
(239, 'Traditional Arabic'),
(240, 'Traditional Arabic'),
(241, 'Trebuchet MS'),
(242, 'Trebuchet MS'),
(243, 'Tunga'),
(244, 'Tunga'),
(245, 'Utsaah'),
(246, 'Utsaah'),
(247, 'Vani'),
(248, 'Vani'),
(249, 'Vijaya'),
(250, 'Vijaya');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rich_web_slider_id`
--

CREATE TABLE `wp_rich_web_slider_id` (
  `id` int(10) UNSIGNED NOT NULL,
  `Slider_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rich_web_slider_id`
--

INSERT INTO `wp_rich_web_slider_id` (`id`, `Slider_ID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, '4', '4', 0),
(4, '62', '62', 0),
(5, '64', '64', 0),
(6, '67', '67', 0),
(8, 'Projecten', 'projecten', 0),
(9, 'Over ons content', 'over-ons', 0),
(11, 'Navigatiemenu', 'navigatiemenu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(34, 2, 0),
(35, 2, 0),
(50, 1, 0),
(52, 1, 0),
(54, 1, 0),
(57, 1, 0),
(59, 1, 0),
(63, 2, 0),
(65, 4, 0),
(66, 4, 0),
(68, 6, 0),
(80, 1, 0),
(83, 1, 0),
(108, 8, 0),
(110, 8, 0),
(112, 8, 0),
(114, 8, 0),
(116, 8, 0),
(118, 8, 0),
(120, 1, 0),
(128, 1, 0),
(133, 1, 0),
(135, 1, 0),
(148, 1, 0),
(162, 11, 0),
(163, 11, 0),
(164, 11, 0),
(165, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 11),
(2, 2, 'ml-slider', '', 0, 0),
(4, 4, 'ml-slider', '', 0, 0),
(5, 5, 'ml-slider', '', 0, 0),
(6, 6, 'ml-slider', '', 0, 1),
(8, 8, 'category', '', 0, 6),
(9, 9, 'category', 'over ons', 0, 0),
(11, 11, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'SSC'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:\"bf34da9d53a222c5056df89af68f533f9b9f3b8c8bb970fd9af0c9538540f09e\";a:4:{s:10:\"expiration\";i:1519906475;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1519733675;}}'),
(16, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&hidetb=1&advImgDetails=show&imgsize=full&mfold=o&urlbutton=post&editor_plain_text_paste_warning=1&unfold=1'),
(17, 1, 'wp_user-settings-time', '1517401117'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '166'),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '11'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(25, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:21:\"dashboard_quick_press\";}'),
(26, 1, 'metaboxhidden_dashboard', 'a:0:{}');

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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'SSC', '$P$BHVsDySX253oIzdnRU1FUM1DnouWLX1', 'ssc', 'hamish1999@yahoo.co.uk', '', '2018-01-11 12:29:45', '', 0, 'SSC');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wdslayer`
--

CREATE TABLE `wp_wdslayer` (
  `id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `slide_id` bigint(20) NOT NULL,
  `type` varchar(8) NOT NULL,
  `depth` bigint(20) NOT NULL,
  `text` mediumtext NOT NULL,
  `link` mediumtext NOT NULL,
  `left` int(4) NOT NULL,
  `top` int(4) NOT NULL,
  `start` bigint(20) NOT NULL,
  `end` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `color` varchar(8) NOT NULL,
  `size` bigint(20) NOT NULL,
  `ffamily` varchar(32) NOT NULL,
  `fweight` varchar(8) NOT NULL,
  `padding` varchar(32) NOT NULL,
  `fbgcolor` varchar(8) NOT NULL,
  `transparent` int(4) NOT NULL,
  `border_width` int(4) NOT NULL,
  `border_style` varchar(16) NOT NULL,
  `border_color` varchar(8) NOT NULL,
  `border_radius` varchar(32) NOT NULL,
  `shadow` varchar(127) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `image_width` int(4) NOT NULL,
  `image_height` int(4) NOT NULL,
  `image_scale` varchar(8) NOT NULL,
  `alt` varchar(127) NOT NULL,
  `imgtransparent` int(4) NOT NULL,
  `social_button` varchar(16) NOT NULL,
  `hover_color` varchar(8) NOT NULL,
  `layer_effect_in` varchar(32) NOT NULL,
  `duration_eff_in` bigint(20) NOT NULL,
  `layer_effect_out` varchar(32) NOT NULL,
  `duration_eff_out` bigint(20) NOT NULL,
  `target_attr_layer` tinyint(1) NOT NULL,
  `hotp_width` int(4) NOT NULL,
  `hotp_fbgcolor` varchar(8) NOT NULL,
  `hotp_border_width` int(4) NOT NULL,
  `hotp_border_style` varchar(16) NOT NULL,
  `hotp_border_color` varchar(8) NOT NULL,
  `hotp_border_radius` varchar(32) NOT NULL,
  `hotp_text_position` varchar(6) NOT NULL,
  `google_fonts` int(1) NOT NULL,
  `add_class` varchar(127) NOT NULL,
  `layer_video_loop` tinyint(1) NOT NULL,
  `youtube_rel_layer_video` tinyint(1) NOT NULL,
  `hotspot_animation` tinyint(1) NOT NULL,
  `layer_callback_list` varchar(32) NOT NULL,
  `hotspot_text_display` varchar(8) NOT NULL,
  `hover_color_text` varchar(8) NOT NULL,
  `text_alignment` varchar(8) NOT NULL,
  `link_to_slide` int(4) NOT NULL,
  `align_layer` tinyint(1) NOT NULL,
  `static_layer` tinyint(1) NOT NULL,
  `infinite_in` int(4) NOT NULL DEFAULT '1',
  `infinite_out` int(4) NOT NULL DEFAULT '1',
  `min_size` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wdsslide`
--

CREATE TABLE `wp_wdsslide` (
  `id` int(11) NOT NULL,
  `slider_id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `type` varchar(128) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `link` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `target_attr_slide` tinyint(1) NOT NULL,
  `youtube_rel_video` tinyint(1) NOT NULL,
  `video_loop` tinyint(1) NOT NULL,
  `fillmode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wdsslide`
--

INSERT INTO `wp_wdsslide` (`id`, `slider_id`, `title`, `type`, `image_url`, `thumb_url`, `published`, `link`, `order`, `target_attr_slide`, `youtube_rel_video`, `video_loop`, `fillmode`) VALUES
(1, 1, '{\"title\":\"Slide 1\",\"att_width\":\"\",\"att_height\":\"\",\"video_duration\":\"\"}', 'image', '{site_url}/wp-content/uploads/2018/01/headercontact.png', '{site_url}/wp-content/uploads/2018/01/headercontact-150x150.png', 1, '', 1, 1, 0, 0, 'fill');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wdsslider`
--

CREATE TABLE `wp_wdsslider` (
  `id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `full_width` tinyint(1) NOT NULL,
  `auto_height` tinyint(1) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL,
  `align` varchar(8) NOT NULL,
  `effect` varchar(16) NOT NULL,
  `time_intervval` int(4) NOT NULL,
  `autoplay` tinyint(1) NOT NULL,
  `shuffle` tinyint(1) NOT NULL,
  `music` tinyint(1) NOT NULL,
  `music_url` mediumtext NOT NULL,
  `preload_images` tinyint(1) NOT NULL,
  `background_color` varchar(8) NOT NULL,
  `background_transparent` int(4) NOT NULL,
  `glb_border_width` int(4) NOT NULL,
  `glb_border_style` varchar(16) NOT NULL,
  `glb_border_color` varchar(8) NOT NULL,
  `glb_border_radius` varchar(32) NOT NULL,
  `glb_margin` int(4) NOT NULL,
  `glb_box_shadow` varchar(127) NOT NULL,
  `image_right_click` tinyint(1) NOT NULL,
  `layer_out_next` tinyint(1) NOT NULL,
  `prev_next_butt` tinyint(1) NOT NULL,
  `play_paus_butt` tinyint(1) NOT NULL,
  `navigation` varchar(16) NOT NULL,
  `rl_butt_style` varchar(16) NOT NULL,
  `rl_butt_size` int(4) NOT NULL,
  `pp_butt_size` int(4) NOT NULL,
  `butts_color` varchar(8) NOT NULL,
  `butts_transparent` int(4) NOT NULL,
  `hover_color` varchar(8) NOT NULL,
  `nav_border_width` int(4) NOT NULL,
  `nav_border_style` varchar(16) NOT NULL,
  `nav_border_color` varchar(8) NOT NULL,
  `nav_border_radius` varchar(32) NOT NULL,
  `nav_bg_color` varchar(8) NOT NULL,
  `bull_position` varchar(16) NOT NULL,
  `bull_style` varchar(20) NOT NULL,
  `bull_size` int(4) NOT NULL,
  `bull_color` varchar(8) NOT NULL,
  `bull_act_color` varchar(8) NOT NULL,
  `bull_margin` int(4) NOT NULL,
  `film_pos` varchar(16) NOT NULL,
  `film_thumb_width` int(4) NOT NULL,
  `film_thumb_height` int(4) NOT NULL,
  `film_bg_color` varchar(8) NOT NULL,
  `film_tmb_margin` int(4) NOT NULL,
  `film_act_border_width` int(4) NOT NULL,
  `film_act_border_style` varchar(16) NOT NULL,
  `film_act_border_color` varchar(8) NOT NULL,
  `film_dac_transparent` int(4) NOT NULL,
  `built_in_watermark_type` varchar(16) NOT NULL,
  `built_in_watermark_position` varchar(16) NOT NULL,
  `built_in_watermark_size` int(4) NOT NULL,
  `built_in_watermark_url` mediumtext NOT NULL,
  `built_in_watermark_text` mediumtext NOT NULL,
  `built_in_watermark_font_size` int(4) NOT NULL,
  `built_in_watermark_font` varchar(16) NOT NULL,
  `built_in_watermark_color` varchar(8) NOT NULL,
  `built_in_watermark_opacity` int(4) NOT NULL,
  `css` mediumtext NOT NULL,
  `timer_bar_type` varchar(16) NOT NULL,
  `timer_bar_size` int(4) NOT NULL,
  `timer_bar_color` varchar(8) NOT NULL,
  `timer_bar_transparent` int(4) NOT NULL,
  `spider_uploader` tinyint(1) NOT NULL,
  `stop_animation` tinyint(1) NOT NULL,
  `right_butt_url` varchar(255) NOT NULL,
  `left_butt_url` varchar(255) NOT NULL,
  `right_butt_hov_url` varchar(255) NOT NULL,
  `left_butt_hov_url` varchar(255) NOT NULL,
  `rl_butt_img_or_not` varchar(8) NOT NULL,
  `bullets_img_main_url` varchar(255) NOT NULL,
  `bullets_img_hov_url` varchar(255) NOT NULL,
  `bull_butt_img_or_not` varchar(8) NOT NULL,
  `play_paus_butt_img_or_not` varchar(8) NOT NULL,
  `play_butt_url` varchar(255) NOT NULL,
  `play_butt_hov_url` varchar(255) NOT NULL,
  `paus_butt_url` varchar(255) NOT NULL,
  `paus_butt_hov_url` varchar(255) NOT NULL,
  `start_slide_num` int(4) NOT NULL,
  `effect_duration` int(6) NOT NULL,
  `carousel` tinyint(1) NOT NULL,
  `carousel_image_counts` int(4) NOT NULL,
  `carousel_image_parameters` varchar(8) NOT NULL,
  `carousel_fit_containerWidth` tinyint(1) NOT NULL,
  `carousel_width` int(4) NOT NULL,
  `parallax_effect` tinyint(1) NOT NULL,
  `mouse_swipe_nav` tinyint(1) NOT NULL,
  `bull_hover` int(1) NOT NULL,
  `touch_swipe_nav` tinyint(1) NOT NULL,
  `mouse_wheel_nav` tinyint(1) NOT NULL,
  `keyboard_nav` tinyint(1) NOT NULL,
  `possib_add_ffamily` varchar(255) NOT NULL,
  `show_thumbnail` tinyint(1) NOT NULL,
  `thumb_size` varchar(8) NOT NULL,
  `fixed_bg` tinyint(1) NOT NULL,
  `smart_crop` tinyint(1) NOT NULL,
  `crop_image_position` varchar(16) NOT NULL,
  `javascript` text NOT NULL,
  `carousel_degree` int(4) NOT NULL,
  `carousel_grayscale` int(4) NOT NULL,
  `carousel_transparency` int(4) NOT NULL,
  `bull_back_act_color` varchar(8) NOT NULL,
  `bull_back_color` varchar(8) NOT NULL,
  `bull_radius` varchar(32) NOT NULL,
  `possib_add_google_fonts` tinyint(1) NOT NULL,
  `possib_add_ffamily_google` varchar(255) NOT NULL,
  `slider_loop` tinyint(1) NOT NULL,
  `hide_on_mobile` int(4) NOT NULL,
  `twoway_slideshow` tinyint(1) NOT NULL,
  `full_width_for_mobile` int(4) NOT NULL,
  `order_dir` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wdsslider`
--

INSERT INTO `wp_wdsslider` (`id`, `name`, `published`, `full_width`, `auto_height`, `width`, `height`, `align`, `effect`, `time_intervval`, `autoplay`, `shuffle`, `music`, `music_url`, `preload_images`, `background_color`, `background_transparent`, `glb_border_width`, `glb_border_style`, `glb_border_color`, `glb_border_radius`, `glb_margin`, `glb_box_shadow`, `image_right_click`, `layer_out_next`, `prev_next_butt`, `play_paus_butt`, `navigation`, `rl_butt_style`, `rl_butt_size`, `pp_butt_size`, `butts_color`, `butts_transparent`, `hover_color`, `nav_border_width`, `nav_border_style`, `nav_border_color`, `nav_border_radius`, `nav_bg_color`, `bull_position`, `bull_style`, `bull_size`, `bull_color`, `bull_act_color`, `bull_margin`, `film_pos`, `film_thumb_width`, `film_thumb_height`, `film_bg_color`, `film_tmb_margin`, `film_act_border_width`, `film_act_border_style`, `film_act_border_color`, `film_dac_transparent`, `built_in_watermark_type`, `built_in_watermark_position`, `built_in_watermark_size`, `built_in_watermark_url`, `built_in_watermark_text`, `built_in_watermark_font_size`, `built_in_watermark_font`, `built_in_watermark_color`, `built_in_watermark_opacity`, `css`, `timer_bar_type`, `timer_bar_size`, `timer_bar_color`, `timer_bar_transparent`, `spider_uploader`, `stop_animation`, `right_butt_url`, `left_butt_url`, `right_butt_hov_url`, `left_butt_hov_url`, `rl_butt_img_or_not`, `bullets_img_main_url`, `bullets_img_hov_url`, `bull_butt_img_or_not`, `play_paus_butt_img_or_not`, `play_butt_url`, `play_butt_hov_url`, `paus_butt_url`, `paus_butt_hov_url`, `start_slide_num`, `effect_duration`, `carousel`, `carousel_image_counts`, `carousel_image_parameters`, `carousel_fit_containerWidth`, `carousel_width`, `parallax_effect`, `mouse_swipe_nav`, `bull_hover`, `touch_swipe_nav`, `mouse_wheel_nav`, `keyboard_nav`, `possib_add_ffamily`, `show_thumbnail`, `thumb_size`, `fixed_bg`, `smart_crop`, `crop_image_position`, `javascript`, `carousel_degree`, `carousel_grayscale`, `carousel_transparency`, `bull_back_act_color`, `bull_back_color`, `bull_radius`, `possib_add_google_fonts`, `possib_add_ffamily_google`, `slider_loop`, `hide_on_mobile`, `twoway_slideshow`, `full_width_for_mobile`, `order_dir`) VALUES
(1, 'home', 1, 2, 0, 900, 400, 'center', 'fade', 5, 1, 0, 0, '', 1, '000000', 100, 0, 'none', '000000', '', 0, '', 0, 0, 1, 0, 'hover', 'fa-angle', 40, 40, '000000', 100, '000000', 0, 'none', 'FFFFFF', '20px', 'FFFFFF', 'bottom', 'fa-square-o', 20, 'FFFFFF', 'FFFFFF', 3, 'none', 100, 50, '000000', 0, 0, 'none', 'FFFFFF', 50, 'none', 'middle-center', 15, '{site_url}/wp-content/plugins/slider-wd/images/watermark.png', 'web-dorado.com', 20, 'arial.ttf', 'FFFFFF', 70, '', 'top', 5, 'BBBBBB', 50, 0, 0, '{site_url}/wp-content/plugins/slider-wd/images/arrow/arrow11/1/2.png', '{site_url}/wp-content/plugins/slider-wd/images/arrow/arrow11/1/1.png', '{site_url}/wp-content/plugins/slider-wd/images/arrow/arrow11/1/4.png', '{site_url}/wp-content/plugins/slider-wd/images/arrow/arrow11/1/3.png', 'style', '{site_url}/wp-content/plugins/slider-wd/images/bullet/bullet1/1/1.png', '{site_url}/wp-content/plugins/slider-wd/images/bullet/bullet1/1/2.png', 'style', 'style', '{site_url}/wp-content/plugins/slider-wd/images/button/button4/1/1.png', '{site_url}/wp-content/plugins/slider-wd/images/button/button4/1/2.png', '{site_url}/wp-content/plugins/slider-wd/images/button/button4/1/3.png', '{site_url}/wp-content/plugins/slider-wd/images/button/button4/1/4.png', 1, 800, 0, 7, '0.85', 0, 1000, 0, 0, 1, 1, 0, 0, '', 0, '0.3', 0, 0, 'center center', '{}', 0, 0, 0, '000000', 'CCCCCC', '20px', 0, '', 1, 0, 0, 0, 'asc');

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
-- Indexes for table `wp_hugeit_slider_slide`
--
ALTER TABLE `wp_hugeit_slider_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_hugeit_slider_slider`
--
ALTER TABLE `wp_hugeit_slider_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_huge_it_reslider_sliders`
--
ALTER TABLE `wp_huge_it_reslider_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_huge_it_reslider_slides`
--
ALTER TABLE `wp_huge_it_reslider_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application` (`application`,`section`,`referencekey`),
  ADD KEY `application_2` (`application`,`section`);

--
-- Indexes for table `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_nextend2_smartslider3_sliders_xref`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders_xref`
  ADD PRIMARY KEY (`group_id`,`slider_id`);

--
-- Indexes for table `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_rich_web_photo_slider_instal`
--
ALTER TABLE `wp_rich_web_photo_slider_instal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_photo_slider_manager`
--
ALTER TABLE `wp_rich_web_photo_slider_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect1`
--
ALTER TABLE `wp_rich_web_slider_effect1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect1_loader`
--
ALTER TABLE `wp_rich_web_slider_effect1_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect2`
--
ALTER TABLE `wp_rich_web_slider_effect2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect2_loader`
--
ALTER TABLE `wp_rich_web_slider_effect2_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect3`
--
ALTER TABLE `wp_rich_web_slider_effect3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect3_loader`
--
ALTER TABLE `wp_rich_web_slider_effect3_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect4`
--
ALTER TABLE `wp_rich_web_slider_effect4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect4_loader`
--
ALTER TABLE `wp_rich_web_slider_effect4_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect5`
--
ALTER TABLE `wp_rich_web_slider_effect5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect5_loader`
--
ALTER TABLE `wp_rich_web_slider_effect5_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect6`
--
ALTER TABLE `wp_rich_web_slider_effect6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect6_loader`
--
ALTER TABLE `wp_rich_web_slider_effect6_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect7`
--
ALTER TABLE `wp_rich_web_slider_effect7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect7_loader`
--
ALTER TABLE `wp_rich_web_slider_effect7_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect8`
--
ALTER TABLE `wp_rich_web_slider_effect8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect8_loader`
--
ALTER TABLE `wp_rich_web_slider_effect8_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect9`
--
ALTER TABLE `wp_rich_web_slider_effect9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect9_loader`
--
ALTER TABLE `wp_rich_web_slider_effect9_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect10`
--
ALTER TABLE `wp_rich_web_slider_effect10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effect10_loader`
--
ALTER TABLE `wp_rich_web_slider_effect10_loader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_effects_data`
--
ALTER TABLE `wp_rich_web_slider_effects_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_font_family`
--
ALTER TABLE `wp_rich_web_slider_font_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rich_web_slider_id`
--
ALTER TABLE `wp_rich_web_slider_id`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_wdslayer`
--
ALTER TABLE `wp_wdslayer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wdsslide`
--
ALTER TABLE `wp_wdsslide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wdsslider`
--
ALTER TABLE `wp_wdsslider`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_hugeit_slider_slide`
--
ALTER TABLE `wp_hugeit_slider_slide`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_hugeit_slider_slider`
--
ALTER TABLE `wp_hugeit_slider_slider`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_huge_it_reslider_sliders`
--
ALTER TABLE `wp_huge_it_reslider_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_huge_it_reslider_slides`
--
ALTER TABLE `wp_huge_it_reslider_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;

--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=815;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=766;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `wp_rich_web_photo_slider_instal`
--
ALTER TABLE `wp_rich_web_photo_slider_instal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_rich_web_photo_slider_manager`
--
ALTER TABLE `wp_rich_web_photo_slider_manager`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect1`
--
ALTER TABLE `wp_rich_web_slider_effect1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect1_loader`
--
ALTER TABLE `wp_rich_web_slider_effect1_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect2`
--
ALTER TABLE `wp_rich_web_slider_effect2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect2_loader`
--
ALTER TABLE `wp_rich_web_slider_effect2_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect3`
--
ALTER TABLE `wp_rich_web_slider_effect3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect3_loader`
--
ALTER TABLE `wp_rich_web_slider_effect3_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect4`
--
ALTER TABLE `wp_rich_web_slider_effect4`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect4_loader`
--
ALTER TABLE `wp_rich_web_slider_effect4_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect5`
--
ALTER TABLE `wp_rich_web_slider_effect5`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect5_loader`
--
ALTER TABLE `wp_rich_web_slider_effect5_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect6`
--
ALTER TABLE `wp_rich_web_slider_effect6`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect6_loader`
--
ALTER TABLE `wp_rich_web_slider_effect6_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect7`
--
ALTER TABLE `wp_rich_web_slider_effect7`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect7_loader`
--
ALTER TABLE `wp_rich_web_slider_effect7_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect8`
--
ALTER TABLE `wp_rich_web_slider_effect8`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect8_loader`
--
ALTER TABLE `wp_rich_web_slider_effect8_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect9`
--
ALTER TABLE `wp_rich_web_slider_effect9`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect9_loader`
--
ALTER TABLE `wp_rich_web_slider_effect9_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect10`
--
ALTER TABLE `wp_rich_web_slider_effect10`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effect10_loader`
--
ALTER TABLE `wp_rich_web_slider_effect10_loader`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_effects_data`
--
ALTER TABLE `wp_rich_web_slider_effects_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_font_family`
--
ALTER TABLE `wp_rich_web_slider_font_family`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `wp_rich_web_slider_id`
--
ALTER TABLE `wp_rich_web_slider_id`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wdslayer`
--
ALTER TABLE `wp_wdslayer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wdsslide`
--
ALTER TABLE `wp_wdsslide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wdsslider`
--
ALTER TABLE `wp_wdsslider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
