-- --------------------------------------------------------

--
-- Database: `opencart`
--

-- --------------------------------------------------------

SET sql_mode = '';
--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(10, 'Parallax-1', 1),
(15, 'slideshow', 1),
(14, 'slideshow2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=188 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(187, 14, '', 'catalog/slide-5.png', 2),
(186, 14, '', 'catalog/slide-4.png', 1),
(185, 14, '', 'catalog/slide-6.png', 0),
(178, 15, '', 'catalog/slide-3.jpg', 3),
(184, 10, '', 'catalog/parallax-1.jpg', 0),
(177, 15, '', 'catalog/slide-2.jpg', 2),
(176, 15, '', 'catalog/slide-1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(99, 1, 9, 'slide-1', ''),
(100, 1, 9, 'slide-2', ''),
(101, 1, 9, 'slide-3', ''),
(99, 2, 9, 'slide-1', ''),
(100, 2, 9, 'slide-2', ''),
(101, 2, 9, 'slide-3', ''),
(99, 3, 9, 'slide-1', ''),
(100, 3, 9, 'slide-2', ''),
(101, 3, 9, 'slide-3', ''),
(184, 3, 10, 'parallax-1', '&lt;div class=&quot;cnt_left&quot;&gt;\r\n&lt;h1&gt;sale &lt;span&gt;15% off&lt;/span&gt;&lt;/h1&gt;\r\n&lt;p&gt;Praesent vestibulum aenean nonummy endrerit mauris Cum sociis natoque Magnis dis parturient montes. Ascetur ridiculus mus. Nulla du. Fusce feugiatmale suada odio. Morbi nunc odio gravida at cursus nec \r\nluctus a lorem. Maecenas tristique orci ac sem uis ultricies pharetra. \r\nmagna onec accumsan malesuada orci. Donec sit amet eros. &lt;/p&gt;\r\n&lt;a class=&quot;btn-mod&quot; href=&quot;index.php?route=product/category&amp;path=18&quot;&gt;click here&lt;/a&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;cnt_right&quot;&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Praesent vestibulum aenean&lt;/li&gt; \r\n&lt;li&gt;nonummy endrerit mauris&lt;/li&gt; \r\n&lt;li&gt;sociis natoque Magnis dis&lt;/li&gt; \r\n&lt;li&gt;parturient montes Ascetur&lt;/li&gt; \r\n&lt;li&gt;Fusce feugiatmale suada &lt;/li&gt; \r\n&lt;li&gt;Morbi nunc odio gravida at &lt;/li&gt; \r\n&lt;li&gt;luctus a lorem Maecenas&lt;/li&gt; \r\n&lt;li&gt;tristique orci ac sem uis &lt;/li&gt; \r\n&lt;li&gt;ultricies pharetra  &lt;/li&gt; \r\n&lt;li&gt;magna onec accumsan &lt;/li&gt; \r\n&lt;/ul&gt;\r\n&lt;/div&gt;'),
(187, 3, 14, 'slide-5', '&lt;h1&gt;modern сottages\r\n&lt;span&gt;\r\nover 150 offers\r\n&lt;/span&gt;\r\n&lt;/h1&gt;\r\n&lt;a class=&quot;btn-mod&quot; href=&quot;index.php?route=product/category&amp;path=20&quot;&gt;click here&lt;/a&gt;'),
(187, 2, 14, 'slide-5', '&lt;h1&gt;modern сottages\r\n&lt;span&gt;\r\nover 150 offers\r\n&lt;/span&gt;\r\n&lt;/h1&gt;\r\n&lt;a class=&quot;btn-mod&quot; href=&quot;index.php?route=product/category&amp;path=20&quot;&gt;click here&lt;/a&gt;'),
(184, 1, 10, 'parallax-1', '&lt;div class=&quot;cnt_left&quot;&gt;\r\n&lt;h1&gt;sale &lt;span&gt;15% off&lt;/span&gt;&lt;/h1&gt;\r\n&lt;p&gt;Praesent vestibulum aenean nonummy endrerit mauris Cum sociis natoque Magnis dis parturient montes. Ascetur ridiculus mus. Nulla du. Fusce feugiatmale suada odio. Morbi nunc odio gravida at cursus nec \r\nluctus a lorem. Maecenas tristique orci ac sem uis ultricies pharetra. \r\nmagna onec accumsan malesuada orci. Donec sit amet eros. &lt;/p&gt;\r\n&lt;a class=&quot;btn-mod&quot; href=&quot;index.php?route=product/category&amp;path=18&quot;&gt;click here&lt;/a&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;cnt_right&quot;&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Praesent vestibulum aenean&lt;/li&gt; \r\n&lt;li&gt;nonummy endrerit mauris&lt;/li&gt; \r\n&lt;li&gt;sociis natoque Magnis dis&lt;/li&gt; \r\n&lt;li&gt;parturient montes Ascetur&lt;/li&gt; \r\n&lt;li&gt;Fusce feugiatmale suada &lt;/li&gt; \r\n&lt;li&gt;Morbi nunc odio gravida at &lt;/li&gt; \r\n&lt;li&gt;luctus a lorem Maecenas&lt;/li&gt; \r\n&lt;li&gt;tristique orci ac sem uis &lt;/li&gt; \r\n&lt;li&gt;ultricies pharetra  &lt;/li&gt; \r\n&lt;li&gt;magna onec accumsan &lt;/li&gt; \r\n&lt;/ul&gt;\r\n&lt;/div&gt;'),
(187, 1, 14, 'slide-5', '&lt;h1&gt;modern сottages\r\n&lt;span&gt;\r\nover 150 offers\r\n&lt;/span&gt;\r\n&lt;/h1&gt;\r\n&lt;a class=&quot;btn-mod&quot; href=&quot;index.php?route=product/category&amp;path=20&quot;&gt;click here&lt;/a&gt;'),
(186, 3, 14, 'slide-4', '&lt;h1&gt;modern сottages\r\n&lt;span&gt;\r\nover 150 offers\r\n&lt;/span&gt;\r\n&lt;/h1&gt;\r\n&lt;a class=&quot;btn-mod&quot; href=&quot;index.php?route=product/category&amp;path=18&quot;&gt;click here&lt;/a&gt;'),
(178, 3, 15, 'slide-3', ''),
(186, 2, 14, 'slide-4', '&lt;h1&gt;modern сottages\r\n&lt;span&gt;\r\nover 150 offers\r\n&lt;/span&gt;\r\n&lt;/h1&gt;\r\n&lt;a class=&quot;btn-mod&quot; href=&quot;index.php?route=product/category&amp;path=18&quot;&gt;click here&lt;/a&gt;'),
(178, 2, 15, 'slide-3', ''),
(178, 1, 15, 'slide-3', ''),
(177, 3, 15, 'slide-2', ''),
(177, 2, 15, 'slide-2', ''),
(186, 1, 14, 'slide-4', '&lt;h1&gt;modern сottages\r\n&lt;span&gt;\r\nover 150 offers\r\n&lt;/span&gt;\r\n&lt;/h1&gt;\r\n&lt;a class=&quot;btn-mod&quot; href=&quot;index.php?route=product/category&amp;path=18&quot;&gt;click here&lt;/a&gt;'),
(185, 3, 14, 'slide-6', '&lt;h1&gt;modern сottages\r\n&lt;span&gt;\r\nover 150 offers\r\n&lt;/span&gt;\r\n&lt;/h1&gt;\r\n&lt;a class=&quot;btn-mod&quot; href=&quot;index.php?route=product/category&amp;path=25&quot;&gt;click here&lt;/a&gt;'),
(185, 2, 14, 'slide-6', '&lt;h1&gt;modern сottages\r\n&lt;span&gt;\r\nover 150 offers\r\n&lt;/span&gt;\r\n&lt;/h1&gt;\r\n&lt;a class=&quot;btn-mod&quot; href=&quot;index.php?route=product/category&amp;path=25&quot;&gt;click here&lt;/a&gt;'),
(177, 1, 15, 'slide-2', ''),
(176, 3, 15, 'slide-1', ''),
(176, 2, 15, 'slide-1', ''),
(176, 1, 15, 'slide-1', ''),
(184, 2, 10, 'parallax-1', '&lt;div class=&quot;cnt_left&quot;&gt;\r\n&lt;h1&gt;sale &lt;span&gt;15% off&lt;/span&gt;&lt;/h1&gt;\r\n&lt;p&gt;Praesent vestibulum aenean nonummy endrerit mauris Cum sociis natoque Magnis dis parturient montes. Ascetur ridiculus mus. Nulla du. Fusce feugiatmale suada odio. Morbi nunc odio gravida at cursus nec \r\nluctus a lorem. Maecenas tristique orci ac sem uis ultricies pharetra. \r\nmagna onec accumsan malesuada orci. Donec sit amet eros. &lt;/p&gt;\r\n&lt;a class=&quot;btn-mod&quot; href=&quot;index.php?route=product/category&amp;path=18&quot;&gt;click here&lt;/a&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;cnt_right&quot;&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Praesent vestibulum aenean&lt;/li&gt; \r\n&lt;li&gt;nonummy endrerit mauris&lt;/li&gt; \r\n&lt;li&gt;sociis natoque Magnis dis&lt;/li&gt; \r\n&lt;li&gt;parturient montes Ascetur&lt;/li&gt; \r\n&lt;li&gt;Fusce feugiatmale suada &lt;/li&gt; \r\n&lt;li&gt;Morbi nunc odio gravida at &lt;/li&gt; \r\n&lt;li&gt;luctus a lorem Maecenas&lt;/li&gt; \r\n&lt;li&gt;tristique orci ac sem uis &lt;/li&gt; \r\n&lt;li&gt;ultricies pharetra  &lt;/li&gt; \r\n&lt;li&gt;magna onec accumsan &lt;/li&gt; \r\n&lt;/ul&gt;\r\n&lt;/div&gt;'),
(185, 1, 14, 'slide-6', '&lt;h1&gt;modern сottages\r\n&lt;span&gt;\r\nover 150 offers\r\n&lt;/span&gt;\r\n&lt;/h1&gt;\r\n&lt;a class=&quot;btn-mod&quot; href=&quot;index.php?route=product/category&amp;path=25&quot;&gt;click here&lt;/a&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=459 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(458, 'module', 'carousel'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(456, 'module', 'tm_newsletter'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(428, 'module', 'parallax'),
(433, 'module', 'bestseller'),
(434, 'module', 'latest'),
(435, 'module', 'special'),
(436, 'module', 'affiliate'),
(437, 'module', 'information'),
(438, 'module', 'tm_slideshow'),
(442, 'module', 'tm_google_map'),
(440, 'module', 'olark'),
(449, 'module', 'tm_social_list'),
(455, 'module', 'html'),
(457, 'module', 'tm_newsletter_popup');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=734 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(684, 4, 'account', 'column_left', 1),
(680, 8, 'special.67', 'column_left', 2),
(675, 12, 'olark.50', 'footer_top', 1),
(672, 7, 'latest.69', 'column_left', 2),
(671, 7, 'account', 'column_left', 1),
(666, 3, 'featured.28', 'column_left', 1),
(661, 10, 'bestseller.43', 'column_left', 2),
(656, 6, 'featured.28', 'column_left', 2),
(660, 10, 'olark.50', 'footer_top', 1),
(706, 9, 'latest.69', 'column_left', 2),
(700, 13, 'olark.50', 'footer_top', 1),
(693, 5, 'featured.28', 'column_left', 2),
(679, 8, 'account', 'column_left', 1),
(655, 6, 'olark.50', 'footer_top', 1),
(716, 1, 'tm_newsletter.72', 'footer_top', 1),
(665, 3, 'bestseller.43', 'column_left', 2),
(664, 3, 'account', 'column_left', 1),
(692, 5, 'olark.50', 'footer_top', 1),
(696, 2, 'olark.50', 'footer_top', 1),
(705, 9, 'olark.50', 'footer_top', 1),
(715, 1, 'tm_google_map.54', 'footer_top', 2),
(714, 1, 'parallax.34', 'content_bottom', 1),
(713, 1, 'carousel.74', 'content_top', 2),
(654, 6, 'account', 'column_left', 1),
(659, 10, 'affiliate', 'column_left', 1),
(670, 7, 'olark.50', 'footer_top', 1),
(678, 8, 'olark.50', 'footer_top', 1),
(683, 4, 'bestseller.43', 'column_left', 2),
(691, 5, 'account', 'column_left', 1),
(699, 13, 'bestseller.43', 'column_left', 1),
(704, 9, 'account', 'column_left', 1),
(712, 1, 'html.70', 'content_top', 1),
(711, 1, 'tm_slideshow.46', 'header_top', 1),
(710, 1, 'featured.51', 'content_top', 3),
(709, 1, 'olark.50', 'footer_top', 1),
(657, 6, 'tm_google_map.54', 'footer_top', 2),
(658, 6, 'tm_newsletter.72', 'footer_top', 1),
(662, 10, 'tm_newsletter.72', 'footer_top', 1),
(663, 10, 'tm_google_map.54', 'footer_top', 2),
(667, 3, 'olark.50', 'footer_top', 1),
(668, 3, 'tm_newsletter.72', 'footer_top', 1),
(669, 3, 'tm_google_map.54', 'footer_top', 2),
(673, 7, 'tm_newsletter.72', 'footer_top', 1),
(674, 7, 'tm_google_map.54', 'footer_top', 2),
(676, 12, 'tm_newsletter.72', 'footer_top', 2),
(677, 12, 'tm_google_map.54', 'footer_top', 3),
(681, 8, 'tm_newsletter.72', 'footer_top', 1),
(682, 8, 'tm_google_map.54', 'footer_top', 2),
(685, 4, 'olark.50', 'footer_top', 1),
(686, 4, 'tm_newsletter.72', 'footer_top', 1),
(687, 4, 'tm_google_map.54', 'footer_top', 2),
(733, 11, 'tm_newsletter.72', 'footer_top', 1),
(694, 5, 'tm_newsletter.72', 'footer_top', 1),
(695, 5, 'tm_google_map.54', 'footer_top', 2),
(697, 2, 'tm_newsletter.72', 'footer_top', 1),
(698, 2, 'tm_google_map.54', 'footer_top', 2),
(701, 13, 'latest.69', 'column_left', 2),
(702, 13, 'tm_newsletter.72', 'footer_top', 1),
(703, 13, 'tm_google_map.54', 'footer_top', 2),
(707, 9, 'tm_newsletter.72', 'footer_top', 1),
(708, 9, 'tm_google_map.54', 'footer_top', 2),
(717, 1, 'tm_newsletter_popup.73', 'content_top', 0),
(732, 11, 'olark.50', 'footer_top', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=203 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(183, 6, 0, 'account/%'),
(184, 10, 0, 'affiliate/%'),
(185, 3, 0, 'product/category'),
(195, 1, 0, 'common/home'),
(192, 2, 0, 'product/product'),
(202, 11, 0, 'information/information'),
(186, 7, 0, 'checkout/%'),
(188, 8, 0, 'information/contact'),
(194, 9, 0, 'information/sitemap'),
(189, 4, 0, ''),
(191, 5, 0, 'product/manufacturer'),
(187, 12, 0, 'product/compare'),
(193, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(28, 'Featured  Aside', 'featured', 'a:6:{s:4:"name";s:15:"Featured  Aside";s:7:"product";a:8:{i:0;s:2:"43";i:1;s:2:"40";i:2;s:2:"30";i:3;s:2:"42";i:4;s:2:"33";i:5;s:2:"46";i:6;s:2:"32";i:7;s:2:"28";}s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(34, 'Parralax-1', 'parallax', 'a:5:{s:4:"name";s:10:"Parralax-1";s:9:"banner_id";s:2:"10";s:5:"width";s:4:"2050";s:6:"height";s:4:"1231";s:6:"status";s:1:"1";}'),
(51, 'Featured Home', 'featured', 'a:6:{s:4:"name";s:13:"Featured Home";s:7:"product";a:5:{i:0;s:2:"35";i:1;s:2:"33";i:2;s:2:"28";i:3;s:2:"47";i:4;s:2:"30";}s:5:"limit";s:1:"4";s:5:"width";s:3:"270";s:6:"height";s:3:"283";s:6:"status";s:1:"1";}'),
(46, 'Tm Slideshow', 'tm_slideshow', 'a:5:{s:4:"name";s:12:"Tm Slideshow";s:9:"banner_id";s:2:"15";s:5:"width";s:4:"2050";s:6:"height";s:4:"1004";s:6:"status";s:1:"1";}'),
(50, 'Olark Chat', 'olark', 'a:4:{s:4:"name";s:10:"Olark Chat";s:13:"olark_version";s:5:"2.0.0";s:13:"olark_site_id";s:16:"7830-582-10-3714";s:6:"status";s:1:"1";}'),
(72, 'newsletter', 'tm_newsletter', 'a:3:{s:4:"name";s:10:"newsletter";s:6:"status";s:1:"1";s:25:"tm_newsletter_description";a:3:{i:1;a:1:{s:11:"description";s:81:"Subscribe to our newsletter to receive news,\r\nupdates, and onother stuff by email";}i:2;a:1:{s:11:"description";s:81:"Subscribe to our newsletter to receive news,\r\nupdates, and onother stuff by email";}i:3;a:1:{s:11:"description";s:81:"Subscribe to our newsletter to receive news,\r\nupdates, and onother stuff by email";}}}'),
(43, 'Bestsellers Aside', 'bestseller', 'a:5:{s:4:"name";s:17:"Bestsellers Aside";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(48, 'Specials Home', 'special', 'a:5:{s:4:"name";s:13:"Specials Home";s:5:"limit";s:1:"4";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(54, 'Google Map', 'tm_google_map', 'a:16:{s:4:"name";s:10:"Google Map";s:17:"tm_google_map_key";s:39:"AIzaSyDDB4F9UiMGC-MlU2x6jy38DbxFdxAq3eQ";s:6:"status";s:1:"1";s:18:"tm_google_map_zoom";s:2:"14";s:18:"tm_google_map_type";s:1:"1";s:20:"tm_google_map_sensor";s:4:"true";s:19:"tm_google_map_width";s:4:"100%";s:20:"tm_google_map_height";s:5:"406px";s:20:"tm_google_map_styles";s:2495:"[{&quot;featureType&quot;:&quot;all&quot;,&quot;elementType&quot;:&quot;labels.text.fill&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:36},{&quot;color&quot;:&quot;#000000&quot;},{&quot;lightness&quot;:40}]},{&quot;featureType&quot;:&quot;all&quot;,&quot;elementType&quot;:&quot;labels.text.stroke&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;on&quot;},{&quot;color&quot;:&quot;#000000&quot;},{&quot;lightness&quot;:16}]},{&quot;featureType&quot;:&quot;all&quot;,&quot;elementType&quot;:&quot;labels.icon&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;administrative&quot;,&quot;elementType&quot;:&quot;geometry.fill&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#000000&quot;},{&quot;lightness&quot;:20}]},{&quot;featureType&quot;:&quot;administrative&quot;,&quot;elementType&quot;:&quot;geometry.stroke&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#000000&quot;},{&quot;lightness&quot;:17},{&quot;weight&quot;:1.2}]},{&quot;featureType&quot;:&quot;landscape&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#000000&quot;},{&quot;lightness&quot;:20}]},{&quot;featureType&quot;:&quot;poi&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#000000&quot;},{&quot;lightness&quot;:21}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;geometry.fill&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#000000&quot;},{&quot;lightness&quot;:17}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;geometry.stroke&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#000000&quot;},{&quot;lightness&quot;:29},{&quot;weight&quot;:0.2}]},{&quot;featureType&quot;:&quot;road.arterial&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#000000&quot;},{&quot;lightness&quot;:18}]},{&quot;featureType&quot;:&quot;road.local&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#000000&quot;},{&quot;lightness&quot;:16}]},{&quot;featureType&quot;:&quot;transit&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#000000&quot;},{&quot;lightness&quot;:19}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#000000&quot;},{&quot;lightness&quot;:17}]}]";s:24:"tm_google_map_disable_ui";s:5:"false";s:25:"tm_google_map_scrollwheel";s:5:"false";s:23:"tm_google_map_draggable";s:4:"true";s:20:"tm_google_map_marker";s:22:"catalog/marker_map.png";s:27:"tm_google_map_marker_active";s:29:"catalog/marker_map_active.png";s:26:"tm_google_map_marker_width";s:2:"40";s:27:"tm_google_map_marker_height";s:2:"40";}'),
(74, 'slideshow2', 'carousel', 'a:5:{s:4:"name";s:10:"slideshow2";s:9:"banner_id";s:2:"14";s:5:"width";s:4:"1170";s:6:"height";s:3:"444";s:6:"status";s:1:"1";}'),
(73, 'newsletter-popup', 'tm_newsletter_popup', 'a:7:{s:4:"name";s:16:"newsletter-popup";s:19:"newsletter_popup_bg";s:0:"";s:25:"newsletter_popup_bg_width";s:0:"";s:26:"newsletter_popup_bg_height";s:0:"";s:23:"newsletter_popup_cookie";s:1:"1";s:31:"tm_newsletter_popup_description";a:3:{i:1;a:2:{s:5:"title";s:51:"subscribe&lt;span&gt;to our newsletter&lt;/span&gt;";s:11:"description";s:143:"Sign up for our exclusive email list \r\nand be the first to know about new products, special offers, store event and other discount information.";}i:2;a:2:{s:5:"title";s:51:"subscribe&lt;span&gt;to our newsletter&lt;/span&gt;";s:11:"description";s:143:"Sign up for our exclusive email list \r\nand be the first to know about new products, special offers, store event and other discount information.";}i:3;a:2:{s:5:"title";s:51:"subscribe&lt;span&gt;to our newsletter&lt;/span&gt;";s:11:"description";s:143:"Sign up for our exclusive email list \r\nand be the first to know about new products, special offers, store event and other discount information.";}}s:6:"status";s:1:"1";}'),
(66, 'BestSellers Home', 'bestseller', 'a:5:{s:4:"name";s:16:"BestSellers Home";s:5:"limit";s:1:"4";s:5:"width";s:3:"270";s:6:"height";s:3:"283";s:6:"status";s:1:"1";}'),
(67, 'Specials Aside', 'special', 'a:5:{s:4:"name";s:14:"Specials Aside";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(68, 'Latest Home', 'latest', 'a:5:{s:4:"name";s:11:"Latest Home";s:5:"limit";s:1:"4";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(69, 'Latest Aside', 'latest', 'a:5:{s:4:"name";s:12:"Latest Aside";s:5:"limit";s:1:"1";s:5:"width";s:3:"270";s:6:"height";s:3:"270";s:6:"status";s:1:"1";}'),
(70, 'custom_block', 'html', 'a:3:{s:4:"name";s:12:"custom_block";s:18:"module_description";a:3:{i:1;a:2:{s:5:"title";s:12:"custom_block";s:11:"description";s:942:"&lt;div class=&quot;custom_cnt&quot;&gt;\r\n&lt;h1&gt;\r\nWelcome!\r\n&lt;/h1&gt;\r\n\r\n\r\n&lt;h2&gt;\r\nPraesent vestibulum aenean nonummy endrerit mauris \r\nCum sociis natoque Magnis dis parturient montes. \r\n&lt;/h2&gt;\r\n\r\n\r\n&lt;div class=&quot;paragraph&quot;&gt;\r\n&lt;p class=&quot;left&quot;&gt;\r\nPraesent vestibulum aenean nonummy endrerit mauris Cum sociis natoque Magnis dis parturient montes. Ascetur ridiculus mus. Nulla du. Fusce \r\nfeugiatmale suada odio. Morbi nunc odio gravida at cursus nec luctus \r\na lorem. Maecenas tristique orci ac sem uis ultricies pharetra\r\n&lt;/p&gt;\r\n\r\n\r\n&lt;p class=&quot;right&quot;&gt;\r\nPraesent vestibulum aenean nonummy endrerit mauris Cum sociis natoque Magnis dis parturient montes. Ascetur ridiculus mus. Nulla du. Fusce \r\nfeugiatmale suada odio. Morbi nunc odio gravida at cursus nec luctus \r\na lorem. Maecenas tristique orci ac sem uis ultricies pharetra\r\n&lt;/p&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n";}i:2;a:2:{s:5:"title";s:12:"custom_block";s:11:"description";s:942:"&lt;div class=&quot;custom_cnt&quot;&gt;\r\n&lt;h1&gt;\r\nWelcome!\r\n&lt;/h1&gt;\r\n\r\n\r\n&lt;h2&gt;\r\nPraesent vestibulum aenean nonummy endrerit mauris \r\nCum sociis natoque Magnis dis parturient montes. \r\n&lt;/h2&gt;\r\n\r\n\r\n&lt;div class=&quot;paragraph&quot;&gt;\r\n&lt;p class=&quot;left&quot;&gt;\r\nPraesent vestibulum aenean nonummy endrerit mauris Cum sociis natoque Magnis dis parturient montes. Ascetur ridiculus mus. Nulla du. Fusce \r\nfeugiatmale suada odio. Morbi nunc odio gravida at cursus nec luctus \r\na lorem. Maecenas tristique orci ac sem uis ultricies pharetra\r\n&lt;/p&gt;\r\n\r\n\r\n&lt;p class=&quot;right&quot;&gt;\r\nPraesent vestibulum aenean nonummy endrerit mauris Cum sociis natoque Magnis dis parturient montes. Ascetur ridiculus mus. Nulla du. Fusce \r\nfeugiatmale suada odio. Morbi nunc odio gravida at cursus nec luctus \r\na lorem. Maecenas tristique orci ac sem uis ultricies pharetra\r\n&lt;/p&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n";}i:3;a:2:{s:5:"title";s:12:"custom_block";s:11:"description";s:942:"&lt;div class=&quot;custom_cnt&quot;&gt;\r\n&lt;h1&gt;\r\nWelcome!\r\n&lt;/h1&gt;\r\n\r\n\r\n&lt;h2&gt;\r\nPraesent vestibulum aenean nonummy endrerit mauris \r\nCum sociis natoque Magnis dis parturient montes. \r\n&lt;/h2&gt;\r\n\r\n\r\n&lt;div class=&quot;paragraph&quot;&gt;\r\n&lt;p class=&quot;left&quot;&gt;\r\nPraesent vestibulum aenean nonummy endrerit mauris Cum sociis natoque Magnis dis parturient montes. Ascetur ridiculus mus. Nulla du. Fusce \r\nfeugiatmale suada odio. Morbi nunc odio gravida at cursus nec luctus \r\na lorem. Maecenas tristique orci ac sem uis ultricies pharetra\r\n&lt;/p&gt;\r\n\r\n\r\n&lt;p class=&quot;right&quot;&gt;\r\nPraesent vestibulum aenean nonummy endrerit mauris Cum sociis natoque Magnis dis parturient montes. Ascetur ridiculus mus. Nulla du. Fusce \r\nfeugiatmale suada odio. Morbi nunc odio gravida at cursus nec luctus \r\na lorem. Maecenas tristique orci ac sem uis ultricies pharetra\r\n&lt;/p&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n";}}s:6:"status";s:1:"1";}');
