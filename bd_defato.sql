# Migração da Base de Dados MySQL do WordPress
#
# Gerado: Thursday 27. July 2017 03:28 UTC
# Nome do Servidor: localhost
# Banco de Dados: `mehosped_defato`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Apagar qualquer tabela `wp_bannerize` existente
#

DROP TABLE IF EXISTS `wp_bannerize`;


#
# Estrutura da tabela `wp_bannerize`
#

CREATE TABLE `wp_bannerize` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sorter` bigint(20) NOT NULL DEFAULT '0',
  `clickcount` bigint(20) NOT NULL DEFAULT '0',
  `impressions` bigint(20) NOT NULL DEFAULT '0',
  `maximpressions` bigint(20) NOT NULL DEFAULT '0',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `group` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `use_description` char(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `target` varchar(32) NOT NULL DEFAULT '',
  `nofollow` char(1) NOT NULL DEFAULT '0',
  `trash` char(1) NOT NULL DEFAULT '0',
  `mime` varchar(255) NOT NULL DEFAULT '',
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `realpath` varchar(255) NOT NULL DEFAULT '',
  `banner_type` char(1) NOT NULL DEFAULT '1',
  `free_html` text NOT NULL,
  `enabled` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `group` (`group`),
  KEY `enabled` (`enabled`),
  KEY `trash` (`trash`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_bannerize`
#
INSERT INTO `wp_bannerize` ( `id`, `sorter`, `clickcount`, `impressions`, `maximpressions`, `start_date`, `end_date`, `group`, `description`, `use_description`, `url`, `target`, `nofollow`, `trash`, `mime`, `width`, `height`, `filename`, `realpath`, `banner_type`, `free_html`, `enabled`) VALUES
(1, 2, 0, 281, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Pagina Sidebar', 'Banner Pagina Sidebaer Noticias', '0', '', '_blank', '1', '0', '', 0, 0, '', '', '3', '<script async src=\\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\\"></script>\r\n<!-- Anuncio 1 -->\r\n<ins class=\\"adsbygoogle\\"\r\n     style=\\"display:inline-block;width:300px;height:250px\\"\r\n     data-ad-client=\\"ca-pub-3958586347700749\\"\r\n     data-ad-slot=\\"1522700633\\"></ins>\r\n<script>\r\n(adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '1'),
(2, 1, 0, 272, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Pagina 300x600', '', '0', '', '_blank', '0', '0', '', 0, 0, '', '', '3', '<script type=\\"text/javascript\\">\r\n    google_ad_client = \\"ca-pub-3958586347700749\\";\r\n    google_ad_slot = \\"8906366636\\";\r\n    google_ad_width = 300;\r\n    google_ad_height = 600;\r\n</script>\r\n<!-- Anuncio 2 -->\r\n<script type=\\"text/javascript\\"\r\nsrc=\\"//pagead2.googlesyndication.com/pagead/show_ads.js\\">\r\n</script>', '1'),
(3, 0, 0, 2934, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Home 970x90', 'Home 970x90', '0', '', '_blank', '', '0', '', 0, 0, '', '', '3', '<script type=\\"text/javascript\\">\r\n    google_ad_client = \\"ca-pub-3958586347700749\\";\r\n    google_ad_slot = \\"2859833039\\";\r\n    google_ad_width = 970;\r\n    google_ad_height = 90;\r\n</script>\r\n<!-- Anuncio 3 -->\r\n<script type=\\"text/javascript\\"\r\nsrc=\\"//pagead2.googlesyndication.com/pagead/show_ads.js\\">\r\n</script>', '1') ;

#
# Fim do conteúdo da tabela `wp_bannerize`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_bwg_album` existente
#

DROP TABLE IF EXISTS `wp_bwg_album`;


#
# Estrutura da tabela `wp_bwg_album`
#

CREATE TABLE `wp_bwg_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_bwg_album`
#

#
# Fim do conteúdo da tabela `wp_bwg_album`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_bwg_album_gallery` existente
#

DROP TABLE IF EXISTS `wp_bwg_album_gallery`;


#
# Estrutura da tabela `wp_bwg_album_gallery`
#

CREATE TABLE `wp_bwg_album_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_bwg_album_gallery`
#

#
# Fim do conteúdo da tabela `wp_bwg_album_gallery`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_bwg_gallery` existente
#

DROP TABLE IF EXISTS `wp_bwg_gallery`;


#
# Estrutura da tabela `wp_bwg_gallery`
#

CREATE TABLE `wp_bwg_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `page_link` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gallery_type` varchar(32) NOT NULL,
  `gallery_source` varchar(256) NOT NULL,
  `autogallery_image_number` int(4) NOT NULL,
  `update_flag` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_bwg_gallery`
#
INSERT INTO `wp_bwg_gallery` ( `id`, `name`, `slug`, `description`, `page_link`, `preview_image`, `random_preview_image`, `order`, `author`, `published`, `gallery_type`, `gallery_source`, `autogallery_image_number`, `update_flag`) VALUES
(1, 'teste', 'teste', '<p>etetestestsetest</p>', '', '/thumb/Chrysanthemum.jpg', '', 1, 1, 1, '', '', 12, ''),
(2, 'teste2', 'teste2', '<p>Justin Timberlake revela motivo da saída do N’Sync: “Queria outro som”</p>', '', '/thumb/_MG_4666.jpg', '', 2, 1, 1, '', '', 12, '') ;

#
# Fim do conteúdo da tabela `wp_bwg_gallery`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_bwg_image` existente
#

DROP TABLE IF EXISTS `wp_bwg_image`;


#
# Estrutura da tabela `wp_bwg_image`
#

CREATE TABLE `wp_bwg_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gallery_id` bigint(20) NOT NULL,
  `slug` longtext NOT NULL,
  `filename` varchar(255) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `alt` mediumtext NOT NULL,
  `date` varchar(128) NOT NULL,
  `size` varchar(128) NOT NULL,
  `filetype` varchar(128) NOT NULL,
  `resolution` varchar(128) NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) NOT NULL,
  `pricelist_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_bwg_image`
#
INSERT INTO `wp_bwg_image` ( `id`, `gallery_id`, `slug`, `filename`, `image_url`, `thumb_url`, `description`, `alt`, `date`, `size`, `filetype`, `resolution`, `author`, `order`, `published`, `comment_count`, `avg_rating`, `rate_count`, `hit_count`, `redirect_url`, `pricelist_id`) VALUES
(1, 1, '', 'Tulips', '/Tulips.jpg', '/thumb/Tulips.jpg', '\n', '', '05 June 2017, 17:02', '606 KB', 'JPG', '1024 x 768 px', 1, 8, 1, 0, '0', 0, 0, '', 0),
(2, 1, '', 'Desert', '/Desert.jpg', '/thumb/Desert.jpg', '\n', '', '05 June 2017, 17:01', '826 KB', 'JPG', '1024 x 768 px', 1, 7, 1, 0, '0', 0, 0, '', 0),
(3, 1, '', 'Jellyfish', '/Jellyfish.jpg', '/thumb/Jellyfish.jpg', '\n', '', '05 June 2017, 17:01', '757 KB', 'JPG', '1024 x 768 px', 1, 6, 1, 0, '0', 0, 0, '', 0),
(4, 1, '', 'Koala', '/Koala.jpg', '/thumb/Koala.jpg', '\n', '', '05 June 2017, 17:01', '762 KB', 'JPG', '1024 x 768 px', 1, 5, 1, 0, '0', 0, 0, '', 0),
(5, 1, '', 'Lighthouse', '/Lighthouse.jpg', '/thumb/Lighthouse.jpg', '\n', '', '05 June 2017, 17:01', '548 KB', 'JPG', '1024 x 768 px', 1, 4, 1, 0, '0', 0, 0, '', 0),
(6, 1, '', 'Penguins', '/Penguins.jpg', '/thumb/Penguins.jpg', '', '', '05 June 2017, 17:01', '759 KB', 'JPG', '1024 x 768 px', 1, 3, 1, 0, '0', 0, 0, '', 0),
(7, 1, '', 'Hydrangeas', '/Hydrangeas.jpg', '/thumb/Hydrangeas.jpg', '', '', '05 June 2017, 17:01', '581 KB', 'JPG', '1024 x 768 px', 1, 2, 1, 0, '0', 0, 0, '', 0),
(8, 1, '', 'Chrysanthemum', '/Chrysanthemum.jpg', '/thumb/Chrysanthemum.jpg', '\n', '', '05 June 2017, 17:01', '858 KB', 'JPG', '1024 x 768 px', 1, 1, 1, 0, '0', 0, 0, '', 0),
(9, 2, ' MG 4678', ' MG 4678', '/_MG_4678.jpg', '/thumb/_MG_4678.jpg', '', ' MG 4678', '06 June 2017, 02:06', '180 KB', 'JPG', '1200 x 800 px', 1, 22, 1, 0, '0', 0, 0, '', 0),
(10, 2, ' MG 4675', ' MG 4675', '/_MG_4675.jpg', '/thumb/_MG_4675.jpg', '', ' MG 4675', '06 June 2017, 02:06', '173 KB', 'JPG', '1200 x 800 px', 1, 21, 1, 0, '0', 0, 0, '', 0),
(11, 2, ' MG 4676', ' MG 4676', '/_MG_4676.jpg', '/thumb/_MG_4676.jpg', '', ' MG 4676', '06 June 2017, 02:06', '173 KB', 'JPG', '1200 x 800 px', 1, 20, 1, 0, '0', 0, 0, '', 0),
(12, 2, ' MG 4674', ' MG 4674', '/_MG_4674.jpg', '/thumb/_MG_4674.jpg', '', ' MG 4674', '06 June 2017, 02:06', '170 KB', 'JPG', '1200 x 800 px', 1, 19, 1, 0, '0', 0, 0, '', 0),
(13, 2, ' MG 4672', ' MG 4672', '/_MG_4672.jpg', '/thumb/_MG_4672.jpg', '', ' MG 4672', '06 June 2017, 02:06', '161 KB', 'JPG', '1200 x 800 px', 1, 18, 1, 0, '0', 0, 0, '', 0),
(14, 2, ' MG 4670', ' MG 4670', '/_MG_4670.jpg', '/thumb/_MG_4670.jpg', '', ' MG 4670', '06 June 2017, 02:06', '201 KB', 'JPG', '1200 x 800 px', 1, 17, 1, 0, '0', 0, 0, '', 0),
(15, 2, ' MG 4671', ' MG 4671', '/_MG_4671.jpg', '/thumb/_MG_4671.jpg', '', ' MG 4671', '06 June 2017, 02:06', '140 KB', 'JPG', '1200 x 800 px', 1, 16, 1, 0, '0', 0, 0, '', 0),
(16, 2, ' MG 4667', ' MG 4667', '/_MG_4667.jpg', '/thumb/_MG_4667.jpg', '', ' MG 4667', '06 June 2017, 02:06', '151 KB', 'JPG', '1200 x 800 px', 1, 15, 1, 0, '0', 0, 0, '', 0),
(17, 2, ' MG 4660', ' MG 4660', '/_MG_4660.jpg', '/thumb/_MG_4660.jpg', '', ' MG 4660', '06 June 2017, 02:05', '124 KB', 'JPG', '1200 x 800 px', 1, 14, 1, 0, '0', 0, 0, '', 0),
(18, 2, ' MG 4669', ' MG 4669', '/_MG_4669.jpg', '/thumb/_MG_4669.jpg', '', ' MG 4669', '06 June 2017, 02:05', '191 KB', 'JPG', '1200 x 800 px', 1, 13, 1, 0, '0', 0, 0, '', 0),
(19, 2, ' MG 4665', ' MG 4665', '/_MG_4665.jpg', '/thumb/_MG_4665.jpg', '', ' MG 4665', '06 June 2017, 02:05', '106 KB', 'JPG', '1200 x 800 px', 1, 12, 1, 0, '0', 0, 0, '', 0),
(20, 2, ' MG 4666', ' MG 4666', '/_MG_4666.jpg', '/thumb/_MG_4666.jpg', '', ' MG 4666', '06 June 2017, 02:05', '207 KB', 'JPG', '1200 x 800 px', 1, 11, 1, 0, '0', 0, 0, '', 0),
(21, 2, ' MG 4662', ' MG 4662', '/_MG_4662.jpg', '/thumb/_MG_4662.jpg', '', ' MG 4662', '06 June 2017, 02:05', '126 KB', 'JPG', '1200 x 800 px', 1, 10, 1, 0, '0', 0, 0, '', 0),
(22, 2, ' MG 4668', ' MG 4668', '/_MG_4668.jpg', '/thumb/_MG_4668.jpg', '', ' MG 4668', '06 June 2017, 02:05', '212 KB', 'JPG', '1200 x 800 px', 1, 9, 1, 0, '0', 0, 0, '', 0),
(23, 2, 'Tulips', 'Tulips', '/Tulips.jpg', '/thumb/Tulips.jpg', '', 'Tulips', '05 June 2017, 17:02', '606 KB', 'JPG', '1024 x 768 px', 1, 8, 1, 0, '0', 0, 0, '', 0),
(24, 2, 'Penguins', 'Penguins', '/Penguins.jpg', '/thumb/Penguins.jpg', '', 'Penguins', '05 June 2017, 17:01', '759 KB', 'JPG', '1024 x 768 px', 1, 7, 1, 0, '0', 0, 0, '', 0),
(25, 2, 'Lighthouse', 'Lighthouse', '/Lighthouse.jpg', '/thumb/Lighthouse.jpg', '', 'Lighthouse', '05 June 2017, 17:01', '548 KB', 'JPG', '1024 x 768 px', 1, 6, 1, 0, '0', 0, 0, '', 0),
(26, 2, 'Koala', 'Koala', '/Koala.jpg', '/thumb/Koala.jpg', '', 'Koala', '05 June 2017, 17:01', '762 KB', 'JPG', '1024 x 768 px', 1, 5, 1, 0, '0', 0, 0, '', 0),
(27, 2, 'Jellyfish', 'Jellyfish', '/Jellyfish.jpg', '/thumb/Jellyfish.jpg', '', 'Jellyfish', '05 June 2017, 17:01', '757 KB', 'JPG', '1024 x 768 px', 1, 4, 1, 0, '0', 0, 0, '', 0),
(28, 2, 'Desert', 'Desert', '/Desert.jpg', '/thumb/Desert.jpg', '', 'Desert', '05 June 2017, 17:01', '826 KB', 'JPG', '1024 x 768 px', 1, 3, 1, 0, '0', 0, 0, '', 0),
(29, 2, 'Hydrangeas', 'Hydrangeas', '/Hydrangeas.jpg', '/thumb/Hydrangeas.jpg', '', 'Hydrangeas', '05 June 2017, 17:01', '581 KB', 'JPG', '1024 x 768 px', 1, 2, 1, 0, '0', 0, 0, '', 0),
(30, 2, 'Chrysanthemum', 'Chrysanthemum', '/Chrysanthemum.jpg', '/thumb/Chrysanthemum.jpg', '', 'Chrysanthemum', '05 June 2017, 17:01', '858 KB', 'JPG', '1024 x 768 px', 1, 1, 1, 0, '0', 0, 0, '', 0) ;

#
# Fim do conteúdo da tabela `wp_bwg_image`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_bwg_image_comment` existente
#

DROP TABLE IF EXISTS `wp_bwg_image_comment`;


#
# Estrutura da tabela `wp_bwg_image_comment`
#

CREATE TABLE `wp_bwg_image_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `mail` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_bwg_image_comment`
#

#
# Fim do conteúdo da tabela `wp_bwg_image_comment`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_bwg_image_rate` existente
#

DROP TABLE IF EXISTS `wp_bwg_image_rate`;


#
# Estrutura da tabela `wp_bwg_image_rate`
#

CREATE TABLE `wp_bwg_image_rate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) NOT NULL,
  `date` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_bwg_image_rate`
#

#
# Fim do conteúdo da tabela `wp_bwg_image_rate`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_bwg_image_tag` existente
#

DROP TABLE IF EXISTS `wp_bwg_image_tag`;


#
# Estrutura da tabela `wp_bwg_image_tag`
#

CREATE TABLE `wp_bwg_image_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_bwg_image_tag`
#

#
# Fim do conteúdo da tabela `wp_bwg_image_tag`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_bwg_shortcode` existente
#

DROP TABLE IF EXISTS `wp_bwg_shortcode`;


#
# Estrutura da tabela `wp_bwg_shortcode`
#

CREATE TABLE `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_bwg_shortcode`
#
INSERT INTO `wp_bwg_shortcode` ( `id`, `tagtext`) VALUES
(1, ' gallery_type="slideshow" theme_id="1" gallery_id="1" sort_by="order" order_by="asc" slideshow_effect="fade" slideshow_interval="5" slideshow_width="800" slideshow_height="500" enable_slideshow_autoplay="0" enable_slideshow_shuffle="0" enable_slideshow_ctrl="1" enable_slideshow_filmstrip="0" slideshow_filmstrip_height="90" slideshow_enable_title="0" slideshow_title_position="top-right" slideshow_title_full_width="0" slideshow_enable_description="0" slideshow_description_position="bottom-right" enable_slideshow_music="0" slideshow_music_url="" slideshow_effect_duration="1" tag="0" thumb_click_action="open_lightbox" thumb_link_target="1" popup_fullscreen="0" popup_autoplay="0" popup_width="800" popup_height="500" popup_effect="fade" popup_interval="5" popup_enable_filmstrip="0" popup_filmstrip_height="70" popup_enable_ctrl_btn="1" popup_enable_fullscreen="1" popup_enable_info="1" popup_info_always_show="0" popup_info_full_width="0" popup_enable_rate="0" popup_enable_comment="1" popup_hit_counter="0" popup_enable_facebook="1" popup_enable_twitter="1" popup_enable_google="1" popup_enable_pinterest="0" popup_enable_tumblr="0" show_tag_box="0" popup_effect_duration="1" watermark_type="none" watermark_link="https://web-dorado.com"'),
(2, ' gallery_type="slideshow" theme_id="1" gallery_id="2" sort_by="order" order_by="asc" slideshow_effect="fade" slideshow_interval="5" slideshow_width="800" slideshow_height="500" enable_slideshow_autoplay="0" enable_slideshow_shuffle="0" enable_slideshow_ctrl="1" enable_slideshow_filmstrip="0" slideshow_filmstrip_height="90" slideshow_enable_title="0" slideshow_title_position="top-right" slideshow_title_full_width="0" slideshow_enable_description="0" slideshow_description_position="bottom-right" enable_slideshow_music="0" slideshow_music_url="" slideshow_effect_duration="1" tag="0" thumb_click_action="open_lightbox" thumb_link_target="1" popup_fullscreen="0" popup_autoplay="0" popup_width="800" popup_height="500" popup_effect="fade" popup_interval="5" popup_enable_filmstrip="0" popup_filmstrip_height="70" popup_enable_ctrl_btn="1" popup_enable_fullscreen="1" popup_enable_info="1" popup_info_always_show="0" popup_info_full_width="0" popup_enable_rate="0" popup_enable_comment="1" popup_hit_counter="0" popup_enable_facebook="1" popup_enable_twitter="1" popup_enable_google="1" popup_enable_pinterest="0" popup_enable_tumblr="0" show_tag_box="0" popup_effect_duration="1" watermark_type="none" watermark_link="https://web-dorado.com"') ;

#
# Fim do conteúdo da tabela `wp_bwg_shortcode`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_bwg_theme` existente
#

DROP TABLE IF EXISTS `wp_bwg_theme`;


#
# Estrutura da tabela `wp_bwg_theme`
#

CREATE TABLE `wp_bwg_theme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `options` longtext NOT NULL,
  `default_theme` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Conteúdo da tabela `wp_bwg_theme`
#
INSERT INTO `wp_bwg_theme` ( `id`, `name`, `options`, `default_theme`) VALUES
(1, 'Theme 1', '{"thumb_margin":4,"thumb_padding":0,"thumb_border_radius":"0","thumb_border_width":0,"thumb_border_style":"none","thumb_border_color":"CCCCCC","thumb_bg_color":"FFFFFF","thumbs_bg_color":"FFFFFF","thumb_bg_transparent":0,"thumb_box_shadow":"0px 0px 0px #888888","thumb_transparent":100,"thumb_align":"center","thumb_hover_effect":"scale","thumb_hover_effect_value":"1.1","thumb_transition":1,"thumb_title_font_color":"CCCCCC","thumb_title_font_style":"segoe ui","thumb_title_pos":"bottom","thumb_title_font_size":16,"thumb_title_font_weight":"bold","thumb_title_margin":"2px","thumb_title_shadow":"0px 0px 0px #888888","thumb_gal_title_font_color":"CCCCCC","thumb_gal_title_font_style":"segoe ui","thumb_gal_title_font_size":16,"thumb_gal_title_font_weight":"bold","thumb_gal_title_margin":"2px","thumb_gal_title_shadow":"0px 0px 0px #888888","thumb_gal_title_align":"center","page_nav_position":"bottom","page_nav_align":"center","page_nav_number":0,"page_nav_font_size":12,"page_nav_font_style":"segoe ui","page_nav_font_color":"666666","page_nav_font_weight":"bold","page_nav_border_width":1,"page_nav_border_style":"solid","page_nav_border_color":"E3E3E3","page_nav_border_radius":"0","page_nav_margin":"0","page_nav_padding":"3px 6px","page_nav_button_bg_color":"FFFFFF","page_nav_button_bg_transparent":100,"page_nav_box_shadow":"0","page_nav_button_transition":1,"page_nav_button_text":0,"lightbox_overlay_bg_color":"000000","lightbox_overlay_bg_transparent":70,"lightbox_bg_color":"000000","lightbox_ctrl_btn_pos":"bottom","lightbox_ctrl_btn_align":"center","lightbox_ctrl_btn_height":20,"lightbox_ctrl_btn_margin_top":10,"lightbox_ctrl_btn_margin_left":7,"lightbox_ctrl_btn_transparent":100,"lightbox_ctrl_btn_color":"FFFFFF","lightbox_toggle_btn_height":14,"lightbox_toggle_btn_width":100,"lightbox_ctrl_cont_bg_color":"000000","lightbox_ctrl_cont_transparent":65,"lightbox_ctrl_cont_border_radius":4,"lightbox_close_btn_transparent":100,"lightbox_close_btn_bg_color":"000000","lightbox_close_btn_border_width":2,"lightbox_close_btn_border_radius":"16px","lightbox_close_btn_border_style":"none","lightbox_close_btn_border_color":"FFFFFF","lightbox_close_btn_box_shadow":"0","lightbox_close_btn_color":"FFFFFF","lightbox_close_btn_size":10,"lightbox_close_btn_width":20,"lightbox_close_btn_height":20,"lightbox_close_btn_top":"-10","lightbox_close_btn_right":"-10","lightbox_close_btn_full_color":"FFFFFF","lightbox_rl_btn_bg_color":"000000","lightbox_rl_btn_border_radius":"20px","lightbox_rl_btn_border_width":0,"lightbox_rl_btn_border_style":"none","lightbox_rl_btn_border_color":"FFFFFF","lightbox_rl_btn_box_shadow":"","lightbox_rl_btn_color":"FFFFFF","lightbox_rl_btn_height":40,"lightbox_rl_btn_width":40,"lightbox_rl_btn_size":20,"lightbox_close_rl_btn_hover_color":"CCCCCC","lightbox_comment_pos":"left","lightbox_comment_width":400,"lightbox_comment_bg_color":"000000","lightbox_comment_font_color":"CCCCCC","lightbox_comment_font_style":"segoe ui","lightbox_comment_font_size":12,"lightbox_comment_button_bg_color":"616161","lightbox_comment_button_border_color":"666666","lightbox_comment_button_border_width":1,"lightbox_comment_button_border_style":"none","lightbox_comment_button_border_radius":"3px","lightbox_comment_button_padding":"3px 10px","lightbox_comment_input_bg_color":"333333","lightbox_comment_input_border_color":"666666","lightbox_comment_input_border_width":1,"lightbox_comment_input_border_style":"none","lightbox_comment_input_border_radius":"0","lightbox_comment_input_padding":"2px","lightbox_comment_separator_width":1,"lightbox_comment_separator_style":"solid","lightbox_comment_separator_color":"383838","lightbox_comment_author_font_size":14,"lightbox_comment_date_font_size":10,"lightbox_comment_body_font_size":12,"lightbox_comment_share_button_color":"CCCCCC","lightbox_filmstrip_pos":"top","lightbox_filmstrip_rl_bg_color":"3B3B3B","lightbox_filmstrip_rl_btn_size":20,"lightbox_filmstrip_rl_btn_color":"FFFFFF","lightbox_filmstrip_thumb_margin":"0 1px","lightbox_filmstrip_thumb_border_width":1,"lightbox_filmstrip_thumb_border_style":"solid","lightbox_filmstrip_thumb_border_color":"000000","lightbox_filmstrip_thumb_border_radius":"0","lightbox_filmstrip_thumb_deactive_transparent":80,"lightbox_filmstrip_thumb_active_border_width":0,"lightbox_filmstrip_thumb_active_border_color":"FFFFFF","lightbox_rl_btn_style":"fa-chevron","lightbox_rl_btn_transparent":80,"lightbox_bg_transparent":100,"album_compact_back_font_color":"000000","album_compact_back_font_style":"segoe ui","album_compact_back_font_size":16,"album_compact_back_font_weight":"bold","album_compact_back_padding":"0","album_compact_title_font_color":"CCCCCC","album_compact_title_font_style":"segoe ui","album_compact_thumb_title_pos":"bottom","album_compact_title_font_size":16,"album_compact_title_font_weight":"bold","album_compact_title_margin":"2px","album_compact_title_shadow":"0px 0px 0px #888888","album_compact_thumb_margin":4,"album_compact_thumb_padding":0,"album_compact_thumb_border_radius":"0","album_compact_thumb_border_width":0,"album_compact_thumb_border_style":"none","album_compact_thumb_border_color":"CCCCCC","album_compact_thumb_bg_color":"FFFFFF","album_compact_thumbs_bg_color":"FFFFFF","album_compact_thumb_bg_transparent":0,"album_compact_thumb_box_shadow":"0px 0px 0px #888888","album_compact_thumb_transparent":100,"album_compact_thumb_align":"center","album_compact_thumb_hover_effect":"scale","album_compact_thumb_hover_effect_value":"1.1","album_compact_thumb_transition":0,"album_compact_gal_title_font_color":"CCCCCC","album_compact_gal_title_font_style":"segoe ui","album_compact_gal_title_font_size":16,"album_compact_gal_title_font_weight":"bold","album_compact_gal_title_margin":"2px","album_compact_gal_title_shadow":"0px 0px 0px #888888","album_compact_gal_title_align":"center","album_extended_thumb_margin":2,"album_extended_thumb_padding":0,"album_extended_thumb_border_radius":"0","album_extended_thumb_border_width":0,"album_extended_thumb_border_style":"none","album_extended_thumb_border_color":"CCCCCC","album_extended_thumb_bg_color":"FFFFFF","album_extended_thumbs_bg_color":"FFFFFF","album_extended_thumb_bg_transparent":0,"album_extended_thumb_box_shadow":"","album_extended_thumb_transparent":100,"album_extended_thumb_align":"left","album_extended_thumb_hover_effect":"scale","album_extended_thumb_hover_effect_value":"1.1","album_extended_thumb_transition":0,"album_extended_back_font_color":"000000","album_extended_back_font_style":"segoe ui","album_extended_back_font_size":20,"album_extended_back_font_weight":"bold","album_extended_back_padding":"0","album_extended_div_bg_color":"FFFFFF","album_extended_div_bg_transparent":0,"album_extended_div_border_radius":"0 0 0 0","album_extended_div_margin":"0 0 5px 0","album_extended_div_padding":10,"album_extended_div_separator_width":1,"album_extended_div_separator_style":"solid","album_extended_div_separator_color":"E0E0E0","album_extended_thumb_div_bg_color":"FFFFFF","album_extended_thumb_div_border_radius":"0","album_extended_thumb_div_border_width":1,"album_extended_thumb_div_border_style":"solid","album_extended_thumb_div_border_color":"E8E8E8","album_extended_thumb_div_padding":"5px","album_extended_text_div_bg_color":"FFFFFF","album_extended_text_div_border_radius":"0","album_extended_text_div_border_width":1,"album_extended_text_div_border_style":"solid","album_extended_text_div_border_color":"E8E8E8","album_extended_text_div_padding":"5px","album_extended_title_span_border_width":1,"album_extended_title_span_border_style":"none","album_extended_title_span_border_color":"CCCCCC","album_extended_title_font_color":"000000","album_extended_title_font_style":"segoe ui","album_extended_title_font_size":16,"album_extended_title_font_weight":"bold","album_extended_title_margin_bottom":2,"album_extended_title_padding":"2px","album_extended_desc_span_border_width":1,"album_extended_desc_span_border_style":"none","album_extended_desc_span_border_color":"CCCCCC","album_extended_desc_font_color":"000000","album_extended_desc_font_style":"segoe ui","album_extended_desc_font_size":14,"album_extended_desc_font_weight":"normal","album_extended_desc_padding":"2px","album_extended_desc_more_color":"F2D22E","album_extended_desc_more_size":12,"album_extended_gal_title_font_color":"CCCCCC","album_extended_gal_title_font_style":"segoe ui","album_extended_gal_title_font_size":16,"album_extended_gal_title_font_weight":"bold","album_extended_gal_title_margin":"2px","album_extended_gal_title_shadow":"0px 0px 0px #888888","album_extended_gal_title_align":"center","masonry_thumb_padding":4,"masonry_thumb_border_radius":"0","masonry_thumb_border_width":0,"masonry_thumb_border_style":"none","masonry_thumb_border_color":"CCCCCC","masonry_thumbs_bg_color":"FFFFFF","masonry_thumb_bg_transparent":0,"masonry_thumb_transparent":100,"masonry_thumb_align":"center","masonry_thumb_hover_effect":"scale","masonry_thumb_hover_effect_value":"1.1","masonry_thumb_transition":0,"masonry_thumb_gal_title_font_color":"CCCCCC","masonry_thumb_gal_title_font_style":"segoe ui","masonry_thumb_gal_title_font_size":16,"masonry_thumb_gal_title_font_weight":"bold","masonry_thumb_gal_title_margin":"2px","masonry_thumb_gal_title_shadow":"0px 0px 0px #888888","masonry_thumb_gal_title_align":"center","slideshow_cont_bg_color":"000000","slideshow_close_btn_transparent":100,"slideshow_rl_btn_bg_color":"000000","slideshow_rl_btn_border_radius":"20px","slideshow_rl_btn_border_width":0,"slideshow_rl_btn_border_style":"none","slideshow_rl_btn_border_color":"FFFFFF","slideshow_rl_btn_box_shadow":"0px 0px 0px #000000","slideshow_rl_btn_color":"FFFFFF","slideshow_rl_btn_height":40,"slideshow_rl_btn_size":20,"slideshow_rl_btn_width":40,"slideshow_close_rl_btn_hover_color":"CCCCCC","slideshow_filmstrip_pos":"top","slideshow_filmstrip_thumb_border_width":1,"slideshow_filmstrip_thumb_border_style":"solid","slideshow_filmstrip_thumb_border_color":"000000","slideshow_filmstrip_thumb_border_radius":"0","slideshow_filmstrip_thumb_margin":"0 1px","slideshow_filmstrip_thumb_active_border_width":0,"slideshow_filmstrip_thumb_active_border_color":"FFFFFF","slideshow_filmstrip_thumb_deactive_transparent":80,"slideshow_filmstrip_rl_bg_color":"3B3B3B","slideshow_filmstrip_rl_btn_color":"FFFFFF","slideshow_filmstrip_rl_btn_size":20,"slideshow_title_font_size":16,"slideshow_title_font":"segoe ui","slideshow_title_color":"FFFFFF","slideshow_title_opacity":70,"slideshow_title_border_radius":"5px","slideshow_title_background_color":"000000","slideshow_title_padding":"0 0 0 0","slideshow_description_font_size":14,"slideshow_description_font":"segoe ui","slideshow_description_color":"FFFFFF","slideshow_description_opacity":70,"slideshow_description_border_radius":"0","slideshow_description_background_color":"000000","slideshow_description_padding":"5px 10px 5px 10px","slideshow_dots_width":12,"slideshow_dots_height":12,"slideshow_dots_border_radius":"5px","slideshow_dots_background_color":"F2D22E","slideshow_dots_margin":3,"slideshow_dots_active_background_color":"FFFFFF","slideshow_dots_active_border_width":1,"slideshow_dots_active_border_color":"000000","slideshow_play_pause_btn_size":60,"slideshow_rl_btn_style":"fa-chevron","blog_style_margin":"2px","blog_style_padding":"0","blog_style_border_radius":"0","blog_style_border_width":1,"blog_style_border_style":"solid","blog_style_border_color":"F5F5F5","blog_style_bg_color":"FFFFFF","blog_style_transparent":80,"blog_style_box_shadow":"","blog_style_align":"center","blog_style_share_buttons_margin":"5px auto 10px auto","blog_style_share_buttons_border_radius":"0","blog_style_share_buttons_border_width":0,"blog_style_share_buttons_border_style":"none","blog_style_share_buttons_border_color":"000000","blog_style_share_buttons_bg_color":"FFFFFF","blog_style_share_buttons_align":"right","blog_style_img_font_size":16,"blog_style_img_font_family":"segoe ui","blog_style_img_font_color":"000000","blog_style_share_buttons_color":"B3AFAF","blog_style_share_buttons_bg_transparent":0,"blog_style_share_buttons_font_size":20,"blog_style_gal_title_font_color":"CCCCCC","blog_style_gal_title_font_style":"segoe ui","blog_style_gal_title_font_size":16,"blog_style_gal_title_font_weight":"bold","blog_style_gal_title_margin":"2px","blog_style_gal_title_shadow":"0px 0px 0px #888888","blog_style_gal_title_align":"center","image_browser_margin":"2px auto","image_browser_padding":"4px","image_browser_border_radius":"0","image_browser_border_width":1,"image_browser_border_style":"none","image_browser_border_color":"F5F5F5","image_browser_bg_color":"EBEBEB","image_browser_box_shadow":"","image_browser_transparent":80,"image_browser_align":"center","image_browser_image_description_margin":"0px 5px 0px 5px","image_browser_image_description_padding":"8px 8px 8px 8px","image_browser_image_description_border_radius":"0","image_browser_image_description_border_width":1,"image_browser_image_description_border_style":"none","image_browser_image_description_border_color":"FFFFFF","image_browser_image_description_bg_color":"EBEBEB","image_browser_image_description_align":"center","image_browser_img_font_size":15,"image_browser_img_font_family":"segoe ui","image_browser_img_font_color":"000000","image_browser_full_padding":"4px","image_browser_full_border_radius":"0","image_browser_full_border_width":2,"image_browser_full_border_style":"none","image_browser_full_border_color":"F7F7F7","image_browser_full_bg_color":"F5F5F5","image_browser_full_transparent":90,"image_browser_image_title_align":"top","image_browser_gal_title_font_color":"CCCCCC","image_browser_gal_title_font_style":"segoe ui","image_browser_gal_title_font_size":16,"image_browser_gal_title_font_weight":"bold","image_browser_gal_title_margin":"2px","image_browser_gal_title_shadow":"0px 0px 0px #888888","image_browser_gal_title_align":"center","lightbox_info_pos":"top","lightbox_info_align":"right","lightbox_info_bg_color":"000000","lightbox_info_bg_transparent":70,"lightbox_info_border_width":1,"lightbox_info_border_style":"none","lightbox_info_border_color":"000000","lightbox_info_border_radius":"5px","lightbox_info_padding":"5px","lightbox_info_margin":"15px","lightbox_title_color":"FFFFFF","lightbox_title_font_style":"segoe ui","lightbox_title_font_weight":"bold","lightbox_title_font_size":18,"lightbox_description_color":"FFFFFF","lightbox_description_font_style":"segoe ui","lightbox_description_font_weight":"normal","lightbox_description_font_size":14,"lightbox_rate_pos":"bottom","lightbox_rate_align":"right","lightbox_rate_icon":"star","lightbox_rate_color":"F9D062","lightbox_rate_size":20,"lightbox_rate_stars_count":5,"lightbox_rate_padding":"15px","lightbox_rate_hover_color":"F7B50E","lightbox_hit_pos":"bottom","lightbox_hit_align":"left","lightbox_hit_bg_color":"000000","lightbox_hit_bg_transparent":70,"lightbox_hit_border_width":1,"lightbox_hit_border_style":"none","lightbox_hit_border_color":"000000","lightbox_hit_border_radius":"5px","lightbox_hit_padding":"5px","lightbox_hit_margin":"0 5px","lightbox_hit_color":"FFFFFF","lightbox_hit_font_style":"segoe ui","lightbox_hit_font_weight":"normal","lightbox_hit_font_size":14,"masonry_description_font_size":12,"masonry_description_color":"CCCCCC","masonry_description_font_style":"segoe ui","album_masonry_back_font_color":"000000","album_masonry_back_font_style":"segoe ui","album_masonry_back_font_size":16,"album_masonry_back_font_weight":"bold","album_masonry_back_padding":"0","album_masonry_title_font_color":"CCCCCC","album_masonry_title_font_style":"segoe ui","album_masonry_thumb_title_pos":"bottom","album_masonry_title_font_size":16,"album_masonry_title_font_weight":"bold","album_masonry_title_margin":"2px","album_masonry_title_shadow":"0px 0px 0px #888888","album_masonry_thumb_margin":4,"album_masonry_thumb_padding":0,"album_masonry_thumb_border_radius":"0","album_masonry_thumb_border_width":0,"album_masonry_thumb_border_style":"none","album_masonry_thumb_border_color":"CCCCCC","album_masonry_thumb_bg_color":"FFFFFF","album_masonry_thumbs_bg_color":"FFFFFF","album_masonry_thumb_bg_transparent":0,"album_masonry_thumb_box_shadow":"0px 0px 0px #888888","album_masonry_thumb_transparent":100,"album_masonry_thumb_align":"center","album_masonry_thumb_hover_effect":"scale","album_masonry_thumb_hover_effect_value":"1.1","album_masonry_thumb_transition":0,"album_masonry_gal_title_font_color":"CCCCCC","album_masonry_gal_title_font_style":"segoe ui","album_masonry_gal_title_font_size":16,"album_masonry_gal_title_font_weight":"bold","album_masonry_gal_title_margin":"2px","album_masonry_gal_title_shadow":"0px 0px 0px #888888","album_masonry_gal_title_align":"center","mosaic_thumb_padding":4,"mosaic_thumb_border_radius":"0","mosaic_thumb_border_width":0,"mosaic_thumb_border_style":"none","mosaic_thumb_border_color":"CCCCCC","mosaic_thumbs_bg_color":"FFFFFF","mosaic_thumb_bg_transparent":0,"mosaic_thumb_transparent":100,"mosaic_thumb_align":"center","mosaic_thumb_hover_effect":"scale","mosaic_thumb_hover_effect_value":"1.1","mosaic_thumb_title_font_color":"CCCCCC","mosaic_thumb_title_font_style":"segoe ui","mosaic_thumb_title_font_weight":"bold","mosaic_thumb_title_margin":"2px","mosaic_thumb_title_shadow":"0px 0px 0px #888888","mosaic_thumb_title_font_size":16,"mosaic_thumb_gal_title_font_color":"CCCCCC","mosaic_thumb_gal_title_font_style":"segoe ui","mosaic_thumb_gal_title_font_size":16,"mosaic_thumb_gal_title_font_weight":"bold","mosaic_thumb_gal_title_margin":"2px","mosaic_thumb_gal_title_shadow":"0px 0px 0px #888888","mosaic_thumb_gal_title_align":"center","carousel_cont_bg_color":"000000","carousel_cont_btn_transparent":0,"carousel_close_btn_transparent":100,"carousel_rl_btn_bg_color":"000000","carousel_rl_btn_border_radius":"20px","carousel_rl_btn_border_width":0,"carousel_rl_btn_border_style":"none","carousel_rl_btn_border_color":"FFFFFF","carousel_rl_btn_color":"FFFFFF","carousel_rl_btn_height":40,"carousel_rl_btn_size":20,"carousel_play_pause_btn_size":20,"carousel_rl_btn_width":40,"carousel_close_rl_btn_hover_color":"CCCCCC","carousel_rl_btn_style":"fa-chevron","carousel_mergin_bottom":"0.5","carousel_font_family":"segoe ui","carousel_feature_border_width":2,"carousel_feature_border_style":"solid","carousel_feature_border_color":"5D204F","carousel_caption_background_color":"000000","carousel_caption_bottom":0,"carousel_caption_p_mergin":0,"carousel_caption_p_pedding":5,"carousel_caption_p_font_weight":"bold","carousel_caption_p_font_size":14,"carousel_caption_p_color":"white","carousel_title_opacity":100,"carousel_title_border_radius":"5px","mosaic_thumb_transition":1}', 1),
(2, 'Theme 2', '{"thumb_margin":4,"thumb_padding":4,"thumb_border_radius":"0","thumb_border_width":5,"thumb_border_style":"none","thumb_border_color":"FFFFFF","thumb_bg_color":"E8E8E8","thumbs_bg_color":"FFFFFF","thumb_bg_transparent":0,"thumb_box_shadow":"0px 0px 0px #888888","thumb_transparent":100,"thumb_align":"center","thumb_hover_effect":"rotate","thumb_hover_effect_value":"2deg","thumb_transition":1,"thumb_title_font_color":"CCCCCC","thumb_title_font_style":"segoe ui","thumb_title_pos":"bottom","thumb_title_font_size":16,"thumb_title_font_weight":"bold","thumb_title_margin":"5px","thumb_title_shadow":"","thumb_gal_title_font_color":"CCCCCC","thumb_gal_title_font_style":"segoe ui","thumb_gal_title_font_size":16,"thumb_gal_title_font_weight":"bold","thumb_gal_title_margin":"2px","thumb_gal_title_shadow":"0px 0px 0px #888888","thumb_gal_title_align":"center","page_nav_position":"bottom","page_nav_align":"center","page_nav_number":0,"page_nav_font_size":12,"page_nav_font_style":"segoe ui","page_nav_font_color":"666666","page_nav_font_weight":"bold","page_nav_border_width":1,"page_nav_border_style":"none","page_nav_border_color":"E3E3E3","page_nav_border_radius":"0","page_nav_margin":"0","page_nav_padding":"3px 6px","page_nav_button_bg_color":"FCFCFC","page_nav_button_bg_transparent":100,"page_nav_box_shadow":"0","page_nav_button_transition":1,"page_nav_button_text":0,"lightbox_overlay_bg_color":"000000","lightbox_overlay_bg_transparent":70,"lightbox_bg_color":"000000","lightbox_ctrl_btn_pos":"bottom","lightbox_ctrl_btn_align":"center","lightbox_ctrl_btn_height":20,"lightbox_ctrl_btn_margin_top":10,"lightbox_ctrl_btn_margin_left":7,"lightbox_ctrl_btn_transparent":80,"lightbox_ctrl_btn_color":"FFFFFF","lightbox_toggle_btn_height":14,"lightbox_toggle_btn_width":100,"lightbox_ctrl_cont_bg_color":"000000","lightbox_ctrl_cont_transparent":80,"lightbox_ctrl_cont_border_radius":4,"lightbox_close_btn_transparent":95,"lightbox_close_btn_bg_color":"000000","lightbox_close_btn_border_width":0,"lightbox_close_btn_border_radius":"16px","lightbox_close_btn_border_style":"none","lightbox_close_btn_border_color":"FFFFFF","lightbox_close_btn_box_shadow":"","lightbox_close_btn_color":"FFFFFF","lightbox_close_btn_size":10,"lightbox_close_btn_width":20,"lightbox_close_btn_height":20,"lightbox_close_btn_top":"-10","lightbox_close_btn_right":"-10","lightbox_close_btn_full_color":"FFFFFF","lightbox_rl_btn_bg_color":"000000","lightbox_rl_btn_border_radius":"20px","lightbox_rl_btn_border_width":2,"lightbox_rl_btn_border_style":"none","lightbox_rl_btn_border_color":"FFFFFF","lightbox_rl_btn_box_shadow":"","lightbox_rl_btn_color":"FFFFFF","lightbox_rl_btn_height":40,"lightbox_rl_btn_width":40,"lightbox_rl_btn_size":20,"lightbox_close_rl_btn_hover_color":"FFFFFF","lightbox_comment_pos":"left","lightbox_comment_width":400,"lightbox_comment_bg_color":"000000","lightbox_comment_font_color":"CCCCCC","lightbox_comment_font_style":"segoe ui","lightbox_comment_font_size":12,"lightbox_comment_button_bg_color":"333333","lightbox_comment_button_border_color":"666666","lightbox_comment_button_border_width":1,"lightbox_comment_button_border_style":"none","lightbox_comment_button_border_radius":"3px","lightbox_comment_button_padding":"3px 10px","lightbox_comment_input_bg_color":"333333","lightbox_comment_input_border_color":"666666","lightbox_comment_input_border_width":1,"lightbox_comment_input_border_style":"none","lightbox_comment_input_border_radius":"0","lightbox_comment_input_padding":"3px","lightbox_comment_separator_width":1,"lightbox_comment_separator_style":"solid","lightbox_comment_separator_color":"2B2B2B","lightbox_comment_author_font_size":14,"lightbox_comment_date_font_size":10,"lightbox_comment_body_font_size":12,"lightbox_comment_share_button_color":"FFFFFF","lightbox_filmstrip_pos":"top","lightbox_filmstrip_rl_bg_color":"2B2B2B","lightbox_filmstrip_rl_btn_size":20,"lightbox_filmstrip_rl_btn_color":"FFFFFF","lightbox_filmstrip_thumb_margin":"0 1px","lightbox_filmstrip_thumb_border_width":1,"lightbox_filmstrip_thumb_border_style":"none","lightbox_filmstrip_thumb_border_color":"000000","lightbox_filmstrip_thumb_border_radius":"0","lightbox_filmstrip_thumb_deactive_transparent":80,"lightbox_filmstrip_thumb_active_border_width":0,"lightbox_filmstrip_thumb_active_border_color":"FFFFFF","lightbox_rl_btn_style":"fa-chevron","lightbox_rl_btn_transparent":80,"lightbox_bg_transparent":100,"album_compact_back_font_color":"000000","album_compact_back_font_style":"segoe ui","album_compact_back_font_size":14,"album_compact_back_font_weight":"normal","album_compact_back_padding":"0","album_compact_title_font_color":"CCCCCC","album_compact_title_font_style":"segoe ui","album_compact_thumb_title_pos":"bottom","album_compact_title_font_size":16,"album_compact_title_font_weight":"bold","album_compact_title_margin":"5px","album_compact_title_shadow":"","album_compact_thumb_margin":4,"album_compact_thumb_padding":4,"album_compact_thumb_border_radius":"0","album_compact_thumb_border_width":1,"album_compact_thumb_border_style":"none","album_compact_thumb_border_color":"000000","album_compact_thumb_bg_color":"E8E8E8","album_compact_thumbs_bg_color":"FFFFFF","album_compact_thumb_bg_transparent":100,"album_compact_thumb_box_shadow":"","album_compact_thumb_transparent":100,"album_compact_thumb_align":"center","album_compact_thumb_hover_effect":"rotate","album_compact_thumb_hover_effect_value":"2deg","album_compact_thumb_transition":1,"album_compact_gal_title_font_color":"CCCCCC","album_compact_gal_title_font_style":"segoe ui","album_compact_gal_title_font_size":16,"album_compact_gal_title_font_weight":"bold","album_compact_gal_title_margin":"2px","album_compact_gal_title_shadow":"0px 0px 0px #888888","album_compact_gal_title_align":"center","album_extended_thumb_margin":2,"album_extended_thumb_padding":4,"album_extended_thumb_border_radius":"0","album_extended_thumb_border_width":4,"album_extended_thumb_border_style":"none","album_extended_thumb_border_color":"E8E8E8","album_extended_thumb_bg_color":"E8E8E8","album_extended_thumbs_bg_color":"FFFFFF","album_extended_thumb_bg_transparent":100,"album_extended_thumb_box_shadow":"","album_extended_thumb_transparent":100,"album_extended_thumb_align":"left","album_extended_thumb_hover_effect":"rotate","album_extended_thumb_hover_effect_value":"2deg","album_extended_thumb_transition":0,"album_extended_back_font_color":"000000","album_extended_back_font_style":"segoe ui","album_extended_back_font_size":16,"album_extended_back_font_weight":"bold","album_extended_back_padding":"0","album_extended_div_bg_color":"FFFFFF","album_extended_div_bg_transparent":0,"album_extended_div_border_radius":"0","album_extended_div_margin":"0 0 5px 0","album_extended_div_padding":10,"album_extended_div_separator_width":1,"album_extended_div_separator_style":"none","album_extended_div_separator_color":"CCCCCC","album_extended_thumb_div_bg_color":"FFFFFF","album_extended_thumb_div_border_radius":"0","album_extended_thumb_div_border_width":0,"album_extended_thumb_div_border_style":"none","album_extended_thumb_div_border_color":"CCCCCC","album_extended_thumb_div_padding":"0","album_extended_text_div_bg_color":"FFFFFF","album_extended_text_div_border_radius":"0","album_extended_text_div_border_width":1,"album_extended_text_div_border_style":"none","album_extended_text_div_border_color":"CCCCCC","album_extended_text_div_padding":"5px","album_extended_title_span_border_width":1,"album_extended_title_span_border_style":"none","album_extended_title_span_border_color":"CCCCCC","album_extended_title_font_color":"000000","album_extended_title_font_style":"segoe ui","album_extended_title_font_size":16,"album_extended_title_font_weight":"bold","album_extended_title_margin_bottom":2,"album_extended_title_padding":"2px","album_extended_desc_span_border_width":1,"album_extended_desc_span_border_style":"none","album_extended_desc_span_border_color":"CCCCCC","album_extended_desc_font_color":"000000","album_extended_desc_font_style":"segoe ui","album_extended_desc_font_size":14,"album_extended_desc_font_weight":"normal","album_extended_desc_padding":"2px","album_extended_desc_more_color":"FFC933","album_extended_desc_more_size":12,"album_extended_gal_title_font_color":"CCCCCC","album_extended_gal_title_font_style":"segoe ui","album_extended_gal_title_font_size":16,"album_extended_gal_title_font_weight":"bold","album_extended_gal_title_margin":"2px","album_extended_gal_title_shadow":"0px 0px 0px #888888","album_extended_gal_title_align":"center","masonry_thumb_padding":4,"masonry_thumb_border_radius":"2px","masonry_thumb_border_width":1,"masonry_thumb_border_style":"none","masonry_thumb_border_color":"CCCCCC","masonry_thumbs_bg_color":"FFFFFF","masonry_thumb_bg_transparent":0,"masonry_thumb_transparent":80,"masonry_thumb_align":"center","masonry_thumb_hover_effect":"rotate","masonry_thumb_hover_effect_value":"2deg","masonry_thumb_transition":0,"masonry_thumb_gal_title_font_color":"CCCCCC","masonry_thumb_gal_title_font_style":"segoe ui","masonry_thumb_gal_title_font_size":16,"masonry_thumb_gal_title_font_weight":"bold","masonry_thumb_gal_title_margin":"2px","masonry_thumb_gal_title_shadow":"0px 0px 0px #888888","masonry_thumb_gal_title_align":"center","slideshow_cont_bg_color":"000000","slideshow_close_btn_transparent":100,"slideshow_rl_btn_bg_color":"000000","slideshow_rl_btn_border_radius":"20px","slideshow_rl_btn_border_width":0,"slideshow_rl_btn_border_style":"none","slideshow_rl_btn_border_color":"FFFFFF","slideshow_rl_btn_box_shadow":"","slideshow_rl_btn_color":"FFFFFF","slideshow_rl_btn_height":40,"slideshow_rl_btn_size":20,"slideshow_rl_btn_width":40,"slideshow_close_rl_btn_hover_color":"DBDBDB","slideshow_filmstrip_pos":"bottom","slideshow_filmstrip_thumb_border_width":1,"slideshow_filmstrip_thumb_border_style":"none","slideshow_filmstrip_thumb_border_color":"000000","slideshow_filmstrip_thumb_border_radius":"0","slideshow_filmstrip_thumb_margin":"0 1px","slideshow_filmstrip_thumb_active_border_width":0,"slideshow_filmstrip_thumb_active_border_color":"FFFFFF","slideshow_filmstrip_thumb_deactive_transparent":80,"slideshow_filmstrip_rl_bg_color":"303030","slideshow_filmstrip_rl_btn_color":"FFFFFF","slideshow_filmstrip_rl_btn_size":20,"slideshow_title_font_size":16,"slideshow_title_font":"segoe ui","slideshow_title_color":"FFFFFF","slideshow_title_opacity":70,"slideshow_title_border_radius":"5px","slideshow_title_background_color":"000000","slideshow_title_padding":"5px 10px 5px 10px","slideshow_description_font_size":14,"slideshow_description_font":"segoe ui","slideshow_description_color":"FFFFFF","slideshow_description_opacity":70,"slideshow_description_border_radius":"0","slideshow_description_background_color":"000000","slideshow_description_padding":"5px 10px 5px 10px","slideshow_dots_width":10,"slideshow_dots_height":10,"slideshow_dots_border_radius":"10px","slideshow_dots_background_color":"292929","slideshow_dots_margin":1,"slideshow_dots_active_background_color":"292929","slideshow_dots_active_border_width":2,"slideshow_dots_active_border_color":"FFC933","slideshow_play_pause_btn_size":60,"slideshow_rl_btn_style":"fa-chevron","blog_style_margin":"2px","blog_style_padding":"4px","blog_style_border_radius":"0","blog_style_border_width":1,"blog_style_border_style":"none","blog_style_border_color":"CCCCCC","blog_style_bg_color":"E8E8E8","blog_style_transparent":70,"blog_style_box_shadow":"","blog_style_align":"center","blog_style_share_buttons_margin":"5px auto 10px auto","blog_style_share_buttons_border_radius":"0","blog_style_share_buttons_border_width":0,"blog_style_share_buttons_border_style":"none","blog_style_share_buttons_border_color":"000000","blog_style_share_buttons_bg_color":"FFFFFF","blog_style_share_buttons_align":"right","blog_style_img_font_size":16,"blog_style_img_font_family":"segoe ui","blog_style_img_font_color":"000000","blog_style_share_buttons_color":"A1A1A1","blog_style_share_buttons_bg_transparent":0,"blog_style_share_buttons_font_size":20,"blog_style_image_title_align":"top","blog_style_gal_title_font_color":"CCCCCC","blog_style_gal_title_font_style":"segoe ui","blog_style_gal_title_font_size":16,"blog_style_gal_title_font_weight":"bold","blog_style_gal_title_margin":"2px","blog_style_gal_title_shadow":"0px 0px 0px #888888","blog_style_gal_title_align":"center","image_browser_margin":"2px auto","image_browser_padding":"4px","image_browser_border_radius":"2px","image_browser_border_width":1,"image_browser_border_style":"none","image_browser_border_color":"E8E8E8","image_browser_bg_color":"E8E8E8","image_browser_box_shadow":"","image_browser_transparent":80,"image_browser_align":"center","image_browser_image_description_margin":"24px 0px 0px 0px","image_browser_image_description_padding":"8px 8px 8px 8px","image_browser_image_description_border_radius":"0","image_browser_image_description_border_width":1,"image_browser_image_description_border_style":"none","image_browser_image_description_border_color":"FFFFFF","image_browser_image_description_bg_color":"E8E8E8","image_browser_image_description_align":"center","image_browser_img_font_size":14,"image_browser_img_font_family":"segoe ui","image_browser_img_font_color":"000000","image_browser_full_padding":"4px","image_browser_full_border_radius":"0","image_browser_full_border_width":1,"image_browser_full_border_style":"solid","image_browser_full_border_color":"EDEDED","image_browser_full_bg_color":"FFFFFF","image_browser_full_transparent":90,"image_browser_image_title_align":"top","image_browser_gal_title_font_color":"CCCCCC","image_browser_gal_title_font_style":"segoe ui","image_browser_gal_title_font_size":16,"image_browser_gal_title_font_weight":"bold","image_browser_gal_title_margin":"2px","image_browser_gal_title_shadow":"0px 0px 0px #888888","image_browser_gal_title_align":"center","lightbox_info_pos":"top","lightbox_info_align":"right","lightbox_info_bg_color":"000000","lightbox_info_bg_transparent":70,"lightbox_info_border_width":1,"lightbox_info_border_style":"none","lightbox_info_border_color":"000000","lightbox_info_border_radius":"5px","lightbox_info_padding":"5px","lightbox_info_margin":"15px","lightbox_title_color":"FFFFFF","lightbox_title_font_style":"segoe ui","lightbox_title_font_weight":"bold","lightbox_title_font_size":18,"lightbox_description_color":"FFFFFF","lightbox_description_font_style":"segoe ui","lightbox_description_font_weight":"normal","lightbox_description_font_size":14,"lightbox_rate_pos":"bottom","lightbox_rate_align":"right","lightbox_rate_icon":"star","lightbox_rate_color":"F9D062","lightbox_rate_size":20,"lightbox_rate_stars_count":5,"lightbox_rate_padding":"15px","lightbox_rate_hover_color":"F7B50E","lightbox_hit_pos":"bottom","lightbox_hit_align":"left","lightbox_hit_bg_color":"000000","lightbox_hit_bg_transparent":70,"lightbox_hit_border_width":1,"lightbox_hit_border_style":"none","lightbox_hit_border_color":"000000","lightbox_hit_border_radius":"5px","lightbox_hit_padding":"5px","lightbox_hit_margin":"0 5px","lightbox_hit_color":"FFFFFF","lightbox_hit_font_style":"segoe ui","lightbox_hit_font_weight":"normal","lightbox_hit_font_size":14,"masonry_description_font_size":12,"masonry_description_color":"CCCCCC","masonry_description_font_style":"segoe ui","album_masonry_back_font_color":"000000","album_masonry_back_font_style":"segoe ui","album_masonry_back_font_size":14,"album_masonry_back_font_weight":"normal","album_masonry_back_padding":"0","album_masonry_title_font_color":"CCCCCC","album_masonry_title_font_style":"segoe ui","album_masonry_thumb_title_pos":"bottom","album_masonry_title_font_size":16,"album_masonry_title_font_weight":"bold","album_masonry_title_margin":"5px","album_masonry_title_shadow":"","album_masonry_thumb_margin":4,"album_masonry_thumb_padding":4,"album_masonry_thumb_border_radius":"0","album_masonry_thumb_border_width":1,"album_masonry_thumb_border_style":"none","album_masonry_thumb_border_color":"000000","album_masonry_thumb_bg_color":"E8E8E8","album_masonry_thumbs_bg_color":"FFFFFF","album_masonry_thumb_bg_transparent":100,"album_masonry_thumb_box_shadow":"","album_masonry_thumb_transparent":100,"album_masonry_thumb_align":"center","album_masonry_thumb_hover_effect":"rotate","album_masonry_thumb_hover_effect_value":"2deg","album_masonry_thumb_transition":1,"album_masonry_gal_title_font_color":"CCCCCC","album_masonry_gal_title_font_style":"segoe ui","album_masonry_gal_title_font_size":16,"album_masonry_gal_title_font_weight":"bold","album_masonry_gal_title_margin":"2px","album_masonry_gal_title_shadow":"0px 0px 0px #888888","album_masonry_gal_title_align":"center","mosaic_thumb_padding":4,"mosaic_thumb_border_radius":"2px","mosaic_thumb_border_width":1,"mosaic_thumb_border_style":"none","mosaic_thumb_border_color":"CCCCCC","mosaic_thumbs_bg_color":"FFFFFF","mosaic_thumb_bg_transparent":0,"mosaic_thumb_transparent":80,"mosaic_thumb_align":"center","mosaic_thumb_hover_effect":"rotate","mosaic_thumb_hover_effect_value":"2deg","mosaic_thumb_title_font_color":"CCCCCC","mosaic_thumb_title_font_style":"segoe ui","mosaic_thumb_title_font_weight":"bold","mosaic_thumb_title_margin":"2px","mosaic_thumb_title_shadow":"0px 0px 0px #888888","mosaic_thumb_title_font_size":16,"mosaic_thumb_gal_title_font_color":"CCCCCC","mosaic_thumb_gal_title_font_style":"segoe ui","mosaic_thumb_gal_title_font_size":16,"mosaic_thumb_gal_title_font_weight":"bold","mosaic_thumb_gal_title_margin":"2px","mosaic_thumb_gal_title_shadow":"0px 0px 0px #888888","mosaic_thumb_gal_title_align":"center","carousel_cont_bg_color":"000000","carousel_cont_btn_transparent":0,"carousel_close_btn_transparent":100,"carousel_rl_btn_bg_color":"000000","carousel_rl_btn_border_radius":"20px","carousel_rl_btn_border_width":0,"carousel_rl_btn_border_style":"none","carousel_rl_btn_border_color":"FFFFFF","carousel_rl_btn_color":"FFFFFF","carousel_rl_btn_height":40,"carousel_rl_btn_size":20,"carousel_play_pause_btn_size":20,"carousel_rl_btn_width":40,"carousel_close_rl_btn_hover_color":"CCCCCC","carousel_rl_btn_style":"fa-chevron","carousel_mergin_bottom":"0.5","carousel_font_family":"segoe ui","carousel_feature_border_width":2,"carousel_feature_border_style":"solid","carousel_feature_border_color":"5D204F","carousel_caption_background_color":"000000","carousel_caption_bottom":0,"carousel_caption_p_mergin":0,"carousel_caption_p_pedding":5,"carousel_caption_p_font_weight":"bold","carousel_caption_p_font_size":14,"carousel_caption_p_color":"white","carousel_title_opacity":100,"carousel_title_border_radius":"5px","mosaic_thumb_transition":1}', 0) ;

#
# Fim do conteúdo da tabela `wp_bwg_theme`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_cf_form_entries` existente
#

DROP TABLE IF EXISTS `wp_cf_form_entries`;


#
# Estrutura da tabela `wp_cf_form_entries`
#

CREATE TABLE `wp_cf_form_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(18) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `user_id` (`user_id`),
  KEY `date_time` (`datestamp`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_cf_form_entries`
#
INSERT INTO `wp_cf_form_entries` ( `id`, `form_id`, `user_id`, `datestamp`, `status`) VALUES
(1, 'CF595ce58497cb8', 1, '2017-07-05 13:56:27', 'active'),
(2, 'CF595ce58497cb8', 1, '2017-07-05 14:12:16', 'active'),
(3, 'CF595ce58497cb8', 1, '2017-07-10 17:13:16', 'active'),
(4, 'CF595ce58497cb8', 1, '2017-07-10 19:18:54', 'active') ;

#
# Fim do conteúdo da tabela `wp_cf_form_entries`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_cf_form_entry_meta` existente
#

DROP TABLE IF EXISTS `wp_cf_form_entry_meta`;


#
# Estrutura da tabela `wp_cf_form_entry_meta`
#

CREATE TABLE `wp_cf_form_entry_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `process_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_cf_form_entry_meta`
#

#
# Fim do conteúdo da tabela `wp_cf_form_entry_meta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_cf_form_entry_values` existente
#

DROP TABLE IF EXISTS `wp_cf_form_entry_values`;


#
# Estrutura da tabela `wp_cf_form_entry_values`
#

CREATE TABLE `wp_cf_form_entry_values` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `field_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`entry_id`),
  KEY `field_id` (`field_id`),
  KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_cf_form_entry_values`
#
INSERT INTO `wp_cf_form_entry_values` ( `id`, `entry_id`, `field_id`, `slug`, `value`) VALUES
(1, 1, 'fld_1472864', 'mensagem', 'sadsad'),
(2, 1, 'fld_4371347', 'rea_de_interesse', 'Quero anunciar'),
(3, 1, 'fld_4574560', 'nome', 'asdsad'),
(4, 1, 'fld_8063032', 'email', 'wanber@outlook.com'),
(5, 1, 'fld_5930688', 'enviar', 'click'),
(6, 2, 'fld_4371347', 'rea_de_interesse', 'Quero assinar a revista DeFato'),
(7, 2, 'fld_4574560', 'nome', 'Wanber'),
(8, 2, 'fld_8063032', 'email', 'wanber@outlook.com'),
(9, 2, 'fld_1472864', 'mensagem', 'asdasdasdasdsad'),
(10, 2, 'fld_5930688', 'enviar', 'click'),
(11, 3, 'fld_4371347', 'area_de_interesse', 'sugerir_reportagem'),
(12, 3, 'fld_4574560', 'nome', 'Eduardo'),
(13, 3, 'fld_8063032', 'email', 'prof.eduardosm@gmail.com'),
(14, 3, 'fld_1472864', 'mensagem', 'testee'),
(15, 3, 'fld_5930688', 'enviar', 'click'),
(16, 4, 'fld_4371347', 'area_de_interesse', 'anunciar'),
(17, 4, 'fld_4574560', 'nome', 'eu'),
(18, 4, 'fld_8063032', 'email', 'teste@teste.com'),
(19, 4, 'fld_1472864', 'mensagem', 'oi'),
(20, 4, 'fld_5930688', 'enviar', 'click') ;

#
# Fim do conteúdo da tabela `wp_cf_form_entry_values`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_cf_forms` existente
#

DROP TABLE IF EXISTS `wp_cf_forms`;


#
# Estrutura da tabela `wp_cf_forms`
#

CREATE TABLE `wp_cf_forms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(18) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `config` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_cf_forms`
#
INSERT INTO `wp_cf_forms` ( `id`, `form_id`, `type`, `config`) VALUES
(1, 'CF595ce58497cb8', 'primary', 'a:22:{s:13:"_last_updated";s:31:"Mon, 10 Jul 2017 19:25:56 +0000";s:2:"ID";s:15:"CF595ce58497cb8";s:10:"cf_version";s:7:"1.5.2.1";s:4:"name";s:7:"Contato";s:10:"scroll_top";i:0;s:11:"description";s:49:"																																																	";s:7:"success";s:69:"O formulário foi enviado com sucesso. Obrigado.																					";s:10:"db_support";i:1;s:6:"pinned";i:0;s:9:"hide_form";i:1;s:11:"check_honey";i:1;s:12:"avatar_field";N;s:9:"form_ajax";i:1;s:15:"custom_callback";s:0:"";s:11:"layout_grid";a:2:{s:6:"fields";a:7:{s:11:"fld_4371347";s:3:"1:1";s:11:"fld_4574560";s:3:"1:1";s:11:"fld_8063032";s:3:"1:1";s:11:"fld_4681031";s:3:"1:1";s:11:"fld_2289923";s:3:"1:1";s:11:"fld_1472864";s:3:"1:2";s:11:"fld_5930688";s:3:"1:2";}s:9:"structure";s:3:"6:6";}s:6:"fields";a:7:{s:11:"fld_4371347";a:8:{s:2:"ID";s:11:"fld_4371347";s:4:"type";s:8:"dropdown";s:5:"label";s:18:"Área de interesse";s:4:"slug";s:17:"area_de_interesse";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:13:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:14:"default_option";s:0:"";s:9:"auto_type";s:0:"";s:8:"taxonomy";s:8:"category";s:9:"post_type";s:4:"post";s:11:"value_field";s:4:"name";s:11:"orderby_tax";s:4:"name";s:12:"orderby_post";s:4:"name";s:5:"order";s:3:"ASC";s:7:"default";s:0:"";s:11:"show_values";i:1;s:6:"option";a:6:{s:10:"opt1526199";a:3:{s:10:"calc_value";s:14:"Quero anunciar";s:5:"value";s:14:"Quero anunciar";s:5:"label";s:14:"Quero anunciar";}s:10:"opt1997887";a:3:{s:10:"calc_value";s:28:"Quero sugerir uma reportagem";s:5:"value";s:28:"Quero sugerir uma reportagem";s:5:"label";s:28:"Quero sugerir uma reportagem";}s:10:"opt2054169";a:3:{s:10:"calc_value";s:32:"Quero fazer críticas/sugestões";s:5:"value";s:32:"Quero fazer críticas/sugestões";s:5:"label";s:32:"Quero fazer críticas/sugestões";}s:10:"opt1327882";a:3:{s:10:"calc_value";s:14:"Quero reclamar";s:5:"value";s:14:"Quero reclamar";s:5:"label";s:14:"Quero reclamar";}s:10:"opt2094221";a:3:{s:10:"calc_value";s:25:"Quero pedir informações";s:5:"value";s:25:"Quero pedir informações";s:5:"label";s:25:"Quero pedir informações";}s:10:"opt1136613";a:3:{s:10:"calc_value";s:25:"Quero trabalhar na DeFato";s:5:"value";s:25:"Quero trabalhar na DeFato";s:5:"label";s:25:"Quero trabalhar na DeFato";}}}}s:11:"fld_4574560";a:8:{s:2:"ID";s:11:"fld_4574560";s:4:"type";s:4:"text";s:5:"label";s:4:"Nome";s:4:"slug";s:4:"nome";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:5:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"type_override";s:4:"text";s:4:"mask";s:0:"";}}s:11:"fld_8063032";a:8:{s:2:"ID";s:11:"fld_8063032";s:4:"type";s:5:"email";s:5:"label";s:5:"Email";s:4:"slug";s:5:"email";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:3:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";}}s:11:"fld_4681031";a:7:{s:2:"ID";s:11:"fld_4681031";s:4:"type";s:12:"phone_better";s:5:"label";s:8:"Telefone";s:4:"slug";s:8:"telefone";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:3:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";}}s:11:"fld_2289923";a:7:{s:2:"ID";s:11:"fld_2289923";s:4:"type";s:9:"paragraph";s:5:"label";s:9:"Endereço";s:4:"slug";s:7:"endereo";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:4:"rows";i:2;s:7:"default";s:0:"";}}s:11:"fld_1472864";a:8:{s:2:"ID";s:11:"fld_1472864";s:4:"type";s:9:"paragraph";s:5:"label";s:8:"Mensagem";s:4:"slug";s:8:"mensagem";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:4:"rows";i:14;s:7:"default";s:0:"";}}s:11:"fld_5930688";a:7:{s:2:"ID";s:11:"fld_5930688";s:4:"type";s:6:"button";s:5:"label";s:6:"Enviar";s:4:"slug";s:6:"enviar";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:4:"type";s:6:"submit";s:5:"class";s:16:"w-button btn-red";s:6:"target";s:0:"";}}}s:10:"page_names";a:1:{i:0;s:9:"Página 1";}s:6:"mailer";a:9:{s:9:"on_insert";i:1;s:11:"sender_name";s:6:"DeFato";s:12:"sender_email";s:0:"";s:8:"reply_to";s:7:"%email%";s:10:"email_type";s:4:"html";s:10:"recipients";s:18:"contato@defato.com";s:6:"bcc_to";s:0:"";s:13:"email_subject";s:24:"Notificação de Contato";s:13:"email_message";s:9:"{summary}";}s:10:"processors";a:2:{s:11:"fp_10379117";a:5:{s:2:"ID";s:11:"fp_10379117";s:8:"runtimes";a:1:{s:6:"insert";i:1;}s:4:"type";s:21:"conditional_recipient";s:6:"config";a:2:{s:21:"conditional-recipient";s:19:"anuncios@defato.com";s:14:"remove-default";s:2:"on";}s:10:"conditions";a:2:{s:4:"type";s:3:"use";s:5:"group";a:1:{s:13:"rw92460036922";a:1:{s:13:"cl12346372098";a:3:{s:5:"field";s:11:"fld_4371347";s:7:"compare";s:2:"is";s:5:"value";s:10:"opt1526199";}}}}}s:11:"fp_64343987";a:5:{s:2:"ID";s:11:"fp_64343987";s:8:"runtimes";a:1:{s:6:"insert";i:1;}s:4:"type";s:21:"conditional_recipient";s:6:"config";a:2:{s:21:"conditional-recipient";s:20:"sugestoes@defato.com";s:14:"remove-default";s:2:"on";}s:10:"conditions";a:2:{s:4:"type";s:3:"use";s:5:"group";a:1:{s:13:"rw77011451515";a:1:{s:12:"cl7026701495";a:3:{s:5:"field";s:11:"fld_4371347";s:7:"compare";s:2:"is";s:5:"value";s:10:"opt1997887";}}}}}}s:18:"conditional_groups";a:1:{s:15:"_open_condition";s:20:"con_6381195344589970";}s:8:"settings";a:1:{s:10:"responsive";a:1:{s:11:"break_point";s:2:"sm";}}s:7:"version";s:7:"1.5.2.1";}') ;

#
# Fim do conteúdo da tabela `wp_cf_forms`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_cf_tracking` existente
#

DROP TABLE IF EXISTS `wp_cf_tracking`;


#
# Estrutura da tabela `wp_cf_tracking`
#

CREATE TABLE `wp_cf_tracking` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `process_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_cf_tracking`
#

#
# Fim do conteúdo da tabela `wp_cf_tracking`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_cf_tracking_meta` existente
#

DROP TABLE IF EXISTS `wp_cf_tracking_meta`;


#
# Estrutura da tabela `wp_cf_tracking_meta`
#

CREATE TABLE `wp_cf_tracking_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `event_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_cf_tracking_meta`
#

#
# Fim do conteúdo da tabela `wp_cf_tracking_meta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_cn_social_icon` existente
#

DROP TABLE IF EXISTS `wp_cn_social_icon`;


#
# Estrutura da tabela `wp_cn_social_icon`
#

CREATE TABLE `wp_cn_social_icon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `date_upload` varchar(50) DEFAULT NULL,
  `target` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


#
# Conteúdo da tabela `wp_cn_social_icon`
#
INSERT INTO `wp_cn_social_icon` ( `id`, `title`, `url`, `image_url`, `sortorder`, `date_upload`, `target`) VALUES
(1, 'Facebook', 'https://facebook.com/aaaaaaaaaaaaaa', 'fa fa-facebook', 0, '1499340585', 1),
(2, 'Twitter', 'https://twitter.com/', 'fa fa-twitter', 1, '1487164673', 1),
(6, 'Instagram', 'https://bloglovin.com/', 'fa fa-instagram', 5, '1498479679', 1),
(7, 'YouTube', 'https://behance.com/', 'fa fa-youtube-play', 6, '1498479703', 1) ;

#
# Fim do conteúdo da tabela `wp_cn_social_icon`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_commentmeta` existente
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Estrutura da tabela `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_commentmeta`
#

#
# Fim do conteúdo da tabela `wp_commentmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_comments` existente
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Estrutura da tabela `wp_comments`
#

CREATE TABLE `wp_comments` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_comments`
#

#
# Fim do conteúdo da tabela `wp_comments`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_download_log` existente
#

DROP TABLE IF EXISTS `wp_download_log`;


#
# Estrutura da tabela `wp_download_log`
#

CREATE TABLE `wp_download_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'download',
  `user_id` bigint(20) NOT NULL,
  `user_ip` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `download_id` bigint(20) NOT NULL,
  `version_id` bigint(20) NOT NULL,
  `version` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `download_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `download_status` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `download_status_message` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `attribute_name` (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_download_log`
#

#
# Fim do conteúdo da tabela `wp_download_log`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_eo_events` existente
#

DROP TABLE IF EXISTS `wp_eo_events`;


#
# Estrutura da tabela `wp_eo_events`
#

CREATE TABLE `wp_eo_events` (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `StartTime` time NOT NULL,
  `FinishTime` time NOT NULL,
  `event_occurrence` bigint(20) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `StartDate` (`StartDate`),
  KEY `EndDate` (`EndDate`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_eo_events`
#
INSERT INTO `wp_eo_events` ( `event_id`, `post_id`, `StartDate`, `EndDate`, `StartTime`, `FinishTime`, `event_occurrence`) VALUES
(15, 66, '2017-11-19', '2017-11-19', '15:30:00', '15:31:00', 0),
(16, 65, '2017-11-28', '2017-11-28', '12:00:00', '13:00:00', 0),
(17, 52, '2017-12-21', '2017-12-21', '17:30:00', '18:30:00', 0),
(19, 124, '2017-12-29', '2017-12-29', '18:30:00', '19:30:00', 0) ;

#
# Fim do conteúdo da tabela `wp_eo_events`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_eo_venuemeta` existente
#

DROP TABLE IF EXISTS `wp_eo_venuemeta`;


#
# Estrutura da tabela `wp_eo_venuemeta`
#

CREATE TABLE `wp_eo_venuemeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `eo_venue_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `eo_venue_id` (`eo_venue_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_eo_venuemeta`
#
INSERT INTO `wp_eo_venuemeta` ( `meta_id`, `eo_venue_id`, `meta_key`, `meta_value`) VALUES
(1, 18, '_address', 'Avenida Tancredo Neves, 3500'),
(2, 18, '_city', 'Coronel Fabriciano'),
(3, 18, '_state', 'Minas Gerais'),
(4, 18, '_postcode', '35170-056'),
(5, 18, '_country', 'Brasil'),
(6, 18, '_lat', '-19.507716'),
(7, 18, '_lng', '-42.604546'),
(8, 18, '_description', ''),
(9, 37, '_address', 'Praça Luís Ensch, 64'),
(10, 37, '_state', 'Minas Gerais'),
(11, 37, '_country', 'Brasil'),
(12, 37, '_lat', '-19.526929'),
(13, 37, '_lng', '-42.624910'),
(14, 37, '_city', 'Coronel Fabriciano'),
(15, 37, '_postcode', ''),
(16, 37, '_description', ''),
(17, 44, '_address', 'Avenida João Pinheiro'),
(18, 44, '_city', 'Itabira'),
(19, 44, '_state', 'Minas Gerais'),
(20, 44, '_country', 'Brasil'),
(21, 44, '_lat', '-19.625791'),
(22, 44, '_lng', '-43.227047'),
(23, 45, '_address', 'Avenida João Pinheiro'),
(24, 45, '_city', 'Itabira'),
(25, 45, '_state', 'Minas Gerais'),
(26, 45, '_country', 'Brasil'),
(27, 45, '_lat', '-19.625791'),
(28, 45, '_lng', '-43.227047'),
(29, 46, '_city', 'ipatinga'),
(30, 46, '_state', 'Minas Gerais'),
(31, 46, '_lat', '-19.470762'),
(32, 46, '_lng', '-42.548013') ;

#
# Fim do conteúdo da tabela `wp_eo_venuemeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_links` existente
#

DROP TABLE IF EXISTS `wp_links`;


#
# Estrutura da tabela `wp_links`
#

CREATE TABLE `wp_links` (
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
# Conteúdo da tabela `wp_links`
#

#
# Fim do conteúdo da tabela `wp_links`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_ngg_album` existente
#

DROP TABLE IF EXISTS `wp_ngg_album`;


#
# Estrutura da tabela `wp_ngg_album`
#

CREATE TABLE `wp_ngg_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `albumdesc` mediumtext COLLATE utf8_unicode_ci,
  `sortorder` longtext COLLATE utf8_unicode_ci NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_ngg_album`
#

#
# Fim do conteúdo da tabela `wp_ngg_album`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_ngg_gallery` existente
#

DROP TABLE IF EXISTS `wp_ngg_gallery`;


#
# Estrutura da tabela `wp_ngg_gallery`
#

CREATE TABLE `wp_ngg_gallery` (
  `gid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8_unicode_ci,
  `title` mediumtext COLLATE utf8_unicode_ci,
  `galdesc` mediumtext COLLATE utf8_unicode_ci,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `author` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_ngg_gallery`
#
INSERT INTO `wp_ngg_gallery` ( `gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(1, 'teste', 'teste', '/wp-content/gallery/teste', 'teste', NULL, 0, 1, 1, 150) ;

#
# Fim do conteúdo da tabela `wp_ngg_gallery`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_ngg_pictures` existente
#

DROP TABLE IF EXISTS `wp_ngg_pictures`;


#
# Estrutura da tabela `wp_ngg_pictures`
#

CREATE TABLE `wp_ngg_pictures` (
  `pid` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `galleryid` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `alttext` mediumtext COLLATE utf8_unicode_ci,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT '0',
  `sortorder` bigint(20) NOT NULL DEFAULT '0',
  `meta_data` longtext COLLATE utf8_unicode_ci,
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  `updated_at` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_ngg_pictures`
#
INSERT INTO `wp_ngg_pictures` ( `pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(1, 'chrysanthemum', 0, 1, 'Chrysanthemum.jpg', '', 'Chrysanthemum', '2008-03-14 13:59:26', 0, 0, '', 149, 1496681807),
(2, 'desert', 0, 1, 'Desert.jpg', '', 'Desert', '2008-03-14 13:59:26', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJEZXNlcnQuanBnIiwid2lkdGgiOjEwMjQsImhlaWdodCI6NzY4LCJnZW5lcmF0ZWQiOiIwLjE0Mjc2NTAwIDE0OTY2ODE4MDgifSwid2lkdGgiOjEwMjQsImhlaWdodCI6NzY4LCJtZDUiOiJiYTQ1YzhmNjA0NTZhNjcyZTAwM2E4NzVlNDY5ZDBlYiIsImZ1bGwiOnsid2lkdGgiOjEwMjQsImhlaWdodCI6NzY4LCJtZDUiOiJiYTQ1YzhmNjA0NTZhNjcyZTAwM2E4NzVlNDY5ZDBlYiJ9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzX0Rlc2VydC5qcGciLCJnZW5lcmF0ZWQiOiIwLjIzNTY4MjAwIDE0OTY2ODE4MDgifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOjEyMDU1MDMxNjYsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 152, 1496681808),
(3, 'hydrangeas', 0, 1, 'Hydrangeas.jpg', '', 'Hydrangeas', '2008-03-24 16:41:53', 0, 0, '', 154, 1496681809),
(4, 'jellyfish', 0, 1, 'Jellyfish.jpg', '', 'Jellyfish', '2008-02-11 11:32:24', 0, 0, '', 156, 1496681810),
(5, 'koala', 0, 1, 'Koala.jpg', '', 'Koala', '2008-02-11 11:32:43', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJLb2FsYS5qcGciLCJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo3NjgsImdlbmVyYXRlZCI6IjAuNzg3NjQ1MDAgMTQ5NjY4MTgxMCJ9LCJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo3NjgsIm1kNSI6IjJiMDRkZjNlY2MxZDk0YWZkZGZmMDgyZDEzOWM2ZjE1IiwiZnVsbCI6eyJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo3NjgsIm1kNSI6IjJiMDRkZjNlY2MxZDk0YWZkZGZmMDgyZDEzOWM2ZjE1In0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfS29hbGEuanBnIiwiZ2VuZXJhdGVkIjoiMC44NzkzNjEwMCAxNDk2NjgxODEwIn0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjoxMjAyNzI5NTYzLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 158, 1496681810),
(6, 'lighthouse', 0, 1, 'Lighthouse.jpg', '', 'Lighthouse', '2008-02-11 11:32:51', 0, 0, '', 160, 1496681811),
(7, 'penguins', 0, 1, 'Penguins.jpg', '', 'Penguins', '2008-02-18 05:07:31', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJQZW5ndWlucy5qcGciLCJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo3NjgsImdlbmVyYXRlZCI6IjAuNTc4Mjg0MDAgMTQ5NjY4MTgxMiJ9LCJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo3NjgsIm1kNSI6IjlkMzc3YjEwY2U3NzhjNDkzOGIzYzdlMmM2M2EyMjlhIiwiZnVsbCI6eyJ3aWR0aCI6MTAyNCwiaGVpZ2h0Ijo3NjgsIm1kNSI6IjlkMzc3YjEwY2U3NzhjNDkzOGIzYzdlMmM2M2EyMjlhIn0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfUGVuZ3VpbnMuanBnIiwiZ2VuZXJhdGVkIjoiMC42NzAwNzYwMCAxNDk2NjgxODEyIn0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjoxMjAzMzExMjUxLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 162, 1496681812),
(8, 'tulips', 0, 1, 'Tulips.jpg', '', 'Tulips', '2008-02-07 11:33:11', 0, 0, '', 164, 1496681813) ;

#
# Fim do conteúdo da tabela `wp_ngg_pictures`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_options` existente
#

DROP TABLE IF EXISTS `wp_options`;


#
# Estrutura da tabela `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2438 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/defato', 'yes'),
(2, 'home', 'http://localhost/defato', 'yes'),
(3, 'blogname', 'DeFato', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'viniciusodin@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:148:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:25:"^cf-api/([^/]*)/([^/]*)/?";s:49:"index.php?cf_api=$matches[1]&cf_entry=$matches[2]";s:17:"^cf-api/([^/]*)/?";s:28:"index.php?cf_api=$matches[1]";s:13:"ver_agenda/?$";s:25:"index.php?post_type=event";s:43:"ver_agenda/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:38:"ver_agenda/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:30:"ver_agenda/page/([0-9]{1,})/?$";s:43:"index.php?post_type=event&paged=$matches[1]";s:58:"categoria/(.+?)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:53:"categoria/(.+?)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:24:"categoria/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:36:"categoria/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:18:"categoria/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"tag/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"type/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:64:"agenda/locais/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:50:"index.php?event-venue=$matches[1]&feed=$matches[2]";s:59:"agenda/locais/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:50:"index.php?event-venue=$matches[1]&feed=$matches[2]";s:30:"agenda/locais/([^/]+)/embed/?$";s:44:"index.php?event-venue=$matches[1]&embed=true";s:42:"agenda/locais/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?event-venue=$matches[1]&paged=$matches[2]";s:24:"agenda/locais/([^/]+)/?$";s:33:"index.php?event-venue=$matches[1]";s:67:"agenda/categoria/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:53:"index.php?event-category=$matches[1]&feed=$matches[2]";s:62:"agenda/categoria/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:53:"index.php?event-category=$matches[1]&feed=$matches[2]";s:33:"agenda/categoria/([^/]+)/embed/?$";s:47:"index.php?event-category=$matches[1]&embed=true";s:45:"agenda/categoria/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?event-category=$matches[1]&paged=$matches[2]";s:27:"agenda/categoria/([^/]+)/?$";s:36:"index.php?event-category=$matches[1]";s:61:"agenda/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:48:"index.php?event-tag=$matches[1]&feed=$matches[2]";s:56:"agenda/tag/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:48:"index.php?event-tag=$matches[1]&feed=$matches[2]";s:27:"agenda/tag/([^/]+)/embed/?$";s:42:"index.php?event-tag=$matches[1]&embed=true";s:39:"agenda/tag/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?event-tag=$matches[1]&paged=$matches[2]";s:21:"agenda/tag/([^/]+)/?$";s:31:"index.php?event-tag=$matches[1]";s:95:"ver_agenda/em/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:61:"index.php?post_type=event&ondate=$matches[1]&feed=$matches[2]";s:90:"ver_agenda/em/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:61:"index.php?post_type=event&ondate=$matches[1]&feed=$matches[2]";s:61:"ver_agenda/em/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/embed/?$";s:55:"index.php?post_type=event&ondate=$matches[1]&embed=true";s:73:"ver_agenda/em/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/page/?([0-9]{1,})/?$";s:62:"index.php?post_type=event&ondate=$matches[1]&paged=$matches[2]";s:55:"ver_agenda/em/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/?$";s:44:"index.php?post_type=event&ondate=$matches[1]";s:34:"agenda/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"agenda/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"agenda/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"agenda/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"agenda/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"agenda/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"agenda/([^/]+)/embed/?$";s:38:"index.php?event=$matches[1]&embed=true";s:27:"agenda/([^/]+)/trackback/?$";s:32:"index.php?event=$matches[1]&tb=1";s:57:"agenda/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:52:"agenda/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:35:"agenda/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&paged=$matches[2]";s:42:"agenda/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&cpage=$matches[2]";s:31:"agenda/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?event=$matches[1]&page=$matches[2]";s:23:"agenda/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"agenda/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"agenda/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"agenda/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"agenda/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"agenda/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:41:"sp_html5video/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"sp_html5video/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:81:"sp_html5video/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:76:"sp_html5video/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"sp_html5video/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"sp_html5video/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"sp_html5video/([^/]+)/embed/?$";s:61:"index.php?post_type=sp_html5video&name=$matches[1]&embed=true";s:34:"sp_html5video/([^/]+)/trackback/?$";s:55:"index.php?post_type=sp_html5video&name=$matches[1]&tb=1";s:42:"sp_html5video/([^/]+)/page/?([0-9]{1,})/?$";s:68:"index.php?post_type=sp_html5video&name=$matches[1]&paged=$matches[2]";s:49:"sp_html5video/([^/]+)/comment-page-([0-9]{1,})/?$";s:68:"index.php?post_type=sp_html5video&name=$matches[1]&cpage=$matches[2]";s:38:"sp_html5video/([^/]+)(?:/([0-9]+))?/?$";s:67:"index.php?post_type=sp_html5video&name=$matches[1]&page=$matches[2]";s:30:"sp_html5video/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"sp_html5video/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"sp_html5video/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"sp_html5video/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"sp_html5video/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"sp_html5video/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"(feed|rdf|rss|rss2|atom|eo-events)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"comments/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"comments/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:54:"search/(.+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"search/(.+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"author/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"([0-9]{4})/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"(.?.+?)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:50:"([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:45:"([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:25:{i:0;s:65:"acf-advanced-taxonomy-selector/acf-advanced_taxonomy_selector.php";i:1;s:57:"acf-dynamic-year-select-field/acf-dynamic_year_select.php";i:2;s:41:"advanced-custom-fields-pro-master/acf.php";i:3;s:63:"block-specific-plugin-updates/block-specific-plugin-updates.php";i:4;s:30:"caldera-forms/caldera-core.php";i:5;s:36:"category-color/rl_category_color.php";i:6;s:49:"codemirror-file-editor/codemirror-file-editor.php";i:7;s:43:"comments-from-facebook/facebook-comment.php";i:8;s:53:"default-featured-image/set-default-featured-image.php";i:9;s:33:"duplicate-post/duplicate-post.php";i:10;s:39:"easy-social-icons/easy-social-icons.php";i:11;s:35:"event-organiser/event-organiser.php";i:12;s:9:"hello.php";i:13;s:45:"html5-videogallery-plus-player/html5video.php";i:14;s:25:"location-weather/main.php";i:15;s:41:"sassy-social-share/sassy-social-share.php";i:16;s:63:"social-icons-widget-by-wpzoom/social-icons-widget-by-wpzoom.php";i:17;s:37:"tinymce-advanced/tinymce-advanced.php";i:18;s:35:"unite-gallery-lite/unitegallery.php";i:19;s:27:"updraftplus/updraftplus.php";i:20;s:37:"video-thumbnails/video-thumbnails.php";i:21;s:21:"wp-bannerize/main.php";i:22;s:31:"wp-migrate-db/wp-migrate-db.php";i:23;s:58:"wp-responsive-recent-post-slider/wp-recent-post-slider.php";i:24;s:33:"wp-user-avatar/wp-user-avatar.php";}', 'yes'),
(34, 'category_base', '/categoria', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:77:"C:\\Users\\wanbe\\Google Drive\\htdocs\\defato/wp-content/themes/defato/single.php";i:1;s:75:"C:\\Users\\wanbe\\Google Drive\\htdocs\\defato/wp-content/themes/defato/page.php";i:2;s:76:"C:\\Users\\wanbe\\Google Drive\\htdocs\\defato/wp-content/themes/defato/style.css";i:4;s:81:"C:\\Users\\wanbe\\Google Drive\\htdocs\\defato/wp-content/themes/defato/page-fotos.php";i:5;s:83:"C:\\Users\\wanbe\\Google Drive\\htdocs\\defato/wp-content/themes/defato/style-antigo.css";}', 'no'),
(40, 'template', 'defato', 'yes'),
(41, 'stylesheet', 'defato', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:10:"Categorias";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:4:{s:35:"event-organiser/event-organiser.php";s:24:"eventorganiser_uninstall";s:61:"radio-buttons-for-taxonomies/radio-buttons-for-taxonomies.php";a:2:{i:0;s:28:"Radio_Buttons_for_Taxonomies";i:1;s:21:"delete_plugin_options";}s:21:"adrotate/adrotate.php";s:18:"adrotate_uninstall";s:53:"default-featured-image/set-default-featured-image.php";a:2:{i:0;s:22:"default_featured_image";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '389', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:74:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;s:11:"edit_events";b:1;s:14:"publish_events";b:1;s:13:"delete_events";b:1;s:18:"edit_others_events";b:1;s:20:"delete_others_events";b:1;s:19:"read_private_events";b:1;s:13:"manage_venues";b:1;s:23:"manage_event_categories";b:1;s:19:"NextGEN Manage tags";b:1;s:29:"NextGEN Manage others gallery";b:1;s:16:"manage_downloads";b:1;s:15:"dlm_manage_logs";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:8:"search-2";}s:9:"sidebar-2";a:1:{i:0;s:11:"tag_cloud-2";}s:9:"sidebar-3";a:1:{i:0;s:26:"zoom-social-icons-widget-2";}s:9:"sidebar-4";a:1:{i:0;s:12:"categories-2";}s:23:"footer-widget-instagram";a:0:{}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:2:{i:2;a:3:{s:5:"title";s:4:"Tags";s:5:"count";i:0;s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:6:{i:1501152260;a:2:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1501152261;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1501160922;a:1:{s:32:"caldera_forms_tracking_send_rows";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501195489;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501206500;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:8:"top_menu";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1495235201;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:8:"search-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(121, 'can_compress_scripts', '1', 'no'),
(143, 'current_theme', '', 'yes'),
(144, 'theme_mods_defato', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:8:"top_menu";i:4;}}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(147, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(156, 'widget_sp_location_weather_widget_content', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(164, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(179, 'video_thumbnails', 'a:5:{s:10:"save_media";i:1;s:12:"set_featured";i:1;s:10:"post_types";a:1:{i:0;s:4:"post";}s:12:"custom_field";s:0:"";s:7:"version";s:6:"2.12.3";}', 'yes'),
(187, 'tadv_settings', 'a:6:{s:9:"toolbar_1";s:129:"formatselect,bold,italic,backcolor,blockquote,bullist,numlist,alignleft,aligncenter,alignright,alignjustify,link,unlink,undo,redo";s:9:"toolbar_2";s:109:"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,image,forecolor,table,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"options";s:15:"menubar,advlist";s:7:"plugins";s:13:"table,advlist";}', 'yes'),
(188, 'tadv_admin_settings', 'a:1:{s:16:"disabled_editors";s:0:"";}', 'yes'),
(189, 'tadv_version', '4000', 'yes'),
(238, 'widget_colorful_categories_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(239, 'colorful-categories-adbv', '2.0.2', 'yes'),
(242, 'rl_category_meta', 'a:28:{i:0;b:0;i:5;a:1:{s:12:"rl_cat_color";s:7:"#ed1c24";}i:2;a:1:{s:12:"rl_cat_color";s:4:"#000";}i:4;a:0:{}i:11;a:1:{s:12:"rl_cat_color";s:7:"#B37218";}i:12;a:1:{s:12:"rl_cat_color";s:7:"#D10401";}i:13;a:1:{s:12:"rl_cat_color";s:7:"#FDE300";}i:16;a:1:{s:12:"rl_cat_color";s:7:"#32373C";}i:6;a:1:{s:12:"rl_cat_color";s:7:"#ed1c24";}i:9;a:1:{s:12:"rl_cat_color";s:7:"#ed1c24";}i:10;a:1:{s:12:"rl_cat_color";s:7:"#ed1c24";}i:8;a:1:{s:12:"rl_cat_color";s:7:"#ed1c24";}i:18;a:0:{}i:3;a:0:{}i:15;a:1:{s:12:"rl_cat_color";s:1:"#";}i:20;a:1:{s:12:"rl_cat_color";s:7:"#009EE8";}i:32;a:1:{s:12:"rl_cat_color";s:7:"#23b423";}i:34;a:1:{s:12:"rl_cat_color";s:7:"#FF1414";}i:7;a:1:{s:12:"rl_cat_color";s:7:"#333333";}i:17;a:0:{}i:37;a:0:{}i:19;a:1:{s:12:"rl_cat_color";s:7:"#ED3245";}i:39;a:1:{s:12:"rl_cat_color";s:1:"#";}i:14;a:1:{s:12:"rl_cat_color";s:1:"#";}i:42;a:1:{s:12:"rl_cat_color";s:7:"#ed1c24";}i:40;a:1:{s:12:"rl_cat_color";s:7:"#ed1c24";}i:43;a:1:{s:12:"rl_cat_color";s:7:"#ed1c24";}i:41;a:1:{s:12:"rl_cat_color";s:7:"#ed1c24";}}', 'yes'),
(254, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:22:"viniciusodin@gmail.com";s:7:"version";s:5:"4.7.5";s:9:"timestamp";i:1494980971;}', 'no'),
(270, 'duplicate_post_copytitle', '1', 'yes'),
(271, 'duplicate_post_copydate', '0', 'yes'),
(272, 'duplicate_post_copystatus', '0', 'yes'),
(273, 'duplicate_post_copyslug', '1', 'yes'),
(274, 'duplicate_post_copyexcerpt', '1', 'yes'),
(275, 'duplicate_post_copycontent', '1', 'yes'),
(276, 'duplicate_post_copythumbnail', '1', 'yes'),
(277, 'duplicate_post_copytemplate', '1', 'yes'),
(278, 'duplicate_post_copyformat', '1', 'yes'),
(279, 'duplicate_post_copyauthor', '0', 'yes'),
(280, 'duplicate_post_copypassword', '0', 'yes'),
(281, 'duplicate_post_copyattachments', '0', 'yes'),
(282, 'duplicate_post_copychildren', '0', 'yes'),
(283, 'duplicate_post_copycomments', '0', 'yes'),
(284, 'duplicate_post_copymenuorder', '1', 'yes'),
(285, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(286, 'duplicate_post_blacklist', '', 'yes'),
(287, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:"post";i:1;s:4:"page";}', 'yes'),
(288, 'duplicate_post_show_row', '1', 'yes'),
(289, 'duplicate_post_show_adminbar', '1', 'yes'),
(290, 'duplicate_post_show_submitbox', '1', 'yes'),
(291, 'duplicate_post_show_bulkactions', '1', 'yes'),
(292, 'duplicate_post_version', '3.2', 'no'),
(293, 'duplicate_post_show_notice', '0', 'no'),
(359, 'eventorganiser_options', 'a:23:{s:8:"supports";a:6:{i:0;s:6:"author";i:1;s:9:"thumbnail";i:2;s:7:"excerpt";i:3;s:8:"eventtag";i:4;s:5:"title";i:5;s:6:"editor";}s:14:"event_redirect";s:6:"events";s:10:"dateformat";s:5:"d-m-Y";s:9:"prettyurl";i:1;s:9:"templates";s:1:"0";s:9:"addtomenu";b:0;s:17:"excludefromsearch";i:0;s:8:"showpast";i:0;s:12:"group_events";s:0:"";s:9:"url_venue";s:13:"agenda/locais";s:7:"url_cat";s:16:"agenda/categoria";s:7:"url_tag";s:10:"agenda/tag";s:8:"navtitle";s:6:"Events";s:8:"eventtag";i:1;s:4:"feed";i:1;s:16:"runningisnotpast";b:0;s:13:"deleteexpired";i:0;s:11:"disable_css";i:0;s:14:"google_api_key";s:39:"AIzaSyDMN4rCKG8HzHMAGZyNNvCZTqm7CUoe260";s:15:"menu_item_db_id";i:0;s:9:"url_event";s:6:"agenda";s:10:"url_events";s:10:"ver_agenda";s:6:"url_on";s:2:"em";}', 'yes'),
(360, 'eventorganiser_admin_notices', 'a:1:{i:0;s:17:"changedtemplate17";}', 'yes'),
(361, 'widget_eo_events_agenda_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(362, 'widget_eo_event_list_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(363, 'widget_eo_calendar_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(364, 'widget_eo-event-categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(365, 'widget_eo-event-venues', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(366, 'eventorganiser_version', '3.1.10', 'yes'),
(411, 'bpu_update_blocked_plugins', 'wp-responsive-recent-post-slider/wp-recent-post-slider.php', 'yes'),
(517, 'heateor_sss', 'a:69:{s:24:"horizontal_sharing_shape";s:5:"round";s:23:"horizontal_sharing_size";s:2:"30";s:24:"horizontal_sharing_width";s:2:"70";s:25:"horizontal_sharing_height";s:2:"35";s:24:"horizontal_border_radius";s:1:"3";s:29:"horizontal_font_color_default";s:0:"";s:32:"horizontal_sharing_replace_color";s:4:"#fff";s:27:"horizontal_font_color_hover";s:0:"";s:38:"horizontal_sharing_replace_color_hover";s:4:"#fff";s:27:"horizontal_bg_color_default";s:0:"";s:25:"horizontal_bg_color_hover";s:0:"";s:31:"horizontal_border_width_default";s:1:"1";s:31:"horizontal_border_color_default";s:0:"";s:29:"horizontal_border_width_hover";s:1:"1";s:29:"horizontal_border_color_hover";s:7:"#D51F1F";s:27:"horizontal_counter_position";s:5:"right";s:22:"vertical_sharing_shape";s:6:"square";s:21:"vertical_sharing_size";s:2:"35";s:22:"vertical_sharing_width";s:2:"80";s:23:"vertical_sharing_height";s:2:"40";s:22:"vertical_border_radius";s:0:"";s:27:"vertical_font_color_default";s:0:"";s:30:"vertical_sharing_replace_color";s:4:"#fff";s:25:"vertical_font_color_hover";s:0:"";s:36:"vertical_sharing_replace_color_hover";s:4:"#fff";s:25:"vertical_bg_color_default";s:0:"";s:23:"vertical_bg_color_hover";s:0:"";s:29:"vertical_border_width_default";s:0:"";s:29:"vertical_border_color_default";s:0:"";s:27:"vertical_border_width_hover";s:0:"";s:27:"vertical_border_color_hover";s:0:"";s:10:"hor_enable";s:1:"1";s:21:"horizontal_target_url";s:7:"default";s:28:"horizontal_target_url_custom";s:0:"";s:5:"title";s:0:"";s:18:"instagram_username";s:0:"";s:20:"comment_container_id";s:7:"respond";s:23:"horizontal_re_providers";a:4:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:11:"google_plus";i:3;s:8:"whatsapp";}s:21:"hor_sharing_alignment";s:4:"left";s:3:"top";s:1:"1";s:19:"tweet_count_service";s:14:"newsharecounts";s:15:"horizontal_more";s:1:"1";s:19:"vertical_target_url";s:7:"default";s:26:"vertical_target_url_custom";s:0:"";s:27:"vertical_instagram_username";s:0:"";s:29:"vertical_comment_container_id";s:7:"respond";s:21:"vertical_re_providers";a:5:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:11:"google_plus";i:3;s:8:"linkedin";i:4;s:8:"whatsapp";}s:11:"vertical_bg";s:0:"";s:9:"alignment";s:4:"left";s:11:"left_offset";s:3:"-10";s:12:"right_offset";s:3:"-10";s:10:"top_offset";s:3:"100";s:28:"vertical_tweet_count_service";s:14:"newsharecounts";s:21:"vertical_screen_width";s:3:"783";s:23:"horizontal_screen_width";s:3:"783";s:23:"bottom_sharing_position";s:1:"0";s:24:"bottom_sharing_alignment";s:4:"left";s:29:"bottom_sharing_position_radio";s:10:"responsive";s:13:"footer_script";s:1:"1";s:14:"delete_options";s:1:"1";s:31:"share_count_cache_refresh_count";s:2:"10";s:30:"share_count_cache_refresh_unit";s:7:"minutes";s:14:"bitly_username";s:0:"";s:9:"bitly_key";s:0:"";s:8:"language";s:5:"pt_BR";s:16:"twitter_username";s:0:"";s:15:"buffer_username";s:0:"";s:10:"amp_enable";s:1:"1";s:10:"custom_css";s:0:"";}', 'yes'),
(518, 'heateor_sss_version', '3.1.2', 'yes'),
(519, 'widget_heateor_sss_sharing', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(520, 'widget_heateor_sss_floating_sharing', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(521, 'widget_wp_user_avatar_profile', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(522, 'avatar_default_wp_user_avatar', '', 'yes'),
(523, 'wp_user_avatar_allow_upload', '0', 'yes'),
(524, 'wp_user_avatar_disable_gravatar', '0', 'yes'),
(525, 'wp_user_avatar_edit_avatar', '1', 'yes'),
(526, 'wp_user_avatar_resize_crop', '0', 'yes'),
(527, 'wp_user_avatar_resize_h', '96', 'yes'),
(528, 'wp_user_avatar_resize_upload', '0', 'yes'),
(529, 'wp_user_avatar_resize_w', '96', 'yes'),
(530, 'wp_user_avatar_tinymce', '1', 'yes'),
(531, 'wp_user_avatar_upload_size_limit', '2097152', 'yes'),
(532, 'wp_user_avatar_default_avatar_updated', '1', 'yes'),
(533, 'wp_user_avatar_users_updated', '1', 'yes'),
(534, 'wp_user_avatar_media_updated', '1', 'yes'),
(535, 'wpdevart_comment_facebook_app_id', '143480692883123', 'yes'),
(536, 'wpdevart_comments_box_order_type', 'social', 'yes'),
(537, 'wpdevart_comment_title_text', '', 'yes'),
(538, 'wpdevart_comment_title_text_color', '#000000', 'yes'),
(539, 'wpdevart_comment_title_text_font_size', '16', 'yes'),
(540, 'wpdevart_comment_title_text_font_famely', 'Arial,Helvetica Neue,Helvetica,sans-serif', 'yes'),
(541, 'wpdevart_comment_title_text_position', 'left', 'yes'),
(542, 'wpdevart_comments_box_show_in', '{\\"home\\":false,\\"post\\":false,\\"page\\":false}', 'yes'),
(543, 'wpdevart_comments_box_width', '100%', 'yes'),
(544, 'wpdevart_comments_box_count_of_comments', '7', 'yes'),
(545, 'wpdevart_comments_box_locale', 'pt_BR', 'yes'),
(573, 'acf_version', '5.5.14', 'yes'),
(834, 'wpe_settings', '', 'yes'),
(842, 'ngg_run_freemius', '1', 'yes'),
(843, 'fs_active_plugins', 'O:8:"stdClass":2:{s:7:"plugins";a:1:{s:24:"nextgen-gallery/freemius";O:8:"stdClass":3:{s:7:"version";s:7:"1.2.1.5";s:9:"timestamp";i:1498317546;s:11:"plugin_path";s:29:"nextgen-gallery/nggallery.php";}}s:6:"newest";O:8:"stdClass":5:{s:11:"plugin_path";s:29:"nextgen-gallery/nggallery.php";s:8:"sdk_path";s:24:"nextgen-gallery/freemius";s:7:"version";s:7:"1.2.1.5";s:13:"in_activation";b:1;s:9:"timestamp";i:1498317546;}}', 'yes'),
(844, 'fs_debug_mode', '', 'yes'),
(845, 'fs_accounts', 'a:5:{s:11:"plugin_data";a:1:{s:15:"nextgen-gallery";a:16:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:90:"C:\\Users\\wanbe\\Google Drive\\htdocs\\defato/wp-content/plugins/nextgen-gallery/nggallery.php";}s:17:"install_timestamp";i:1496681762;s:16:"sdk_last_version";N;s:11:"sdk_version";s:7:"1.2.1.5";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:5:"2.2.3";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:21:"is_plugin_new_install";b:1;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:13:"mehospeda.com";s:9:"server_ip";s:13:"177.207.187.2";s:9:"is_active";b:1;s:9:"timestamp";i:1496681762;s:7:"version";s:5:"2.2.3";}s:17:"was_plugin_loaded";b:1;s:15:"prev_is_premium";b:0;s:12:"is_anonymous";a:3:{s:2:"is";b:1;s:9:"timestamp";i:1496681770;s:7:"version";s:5:"2.2.3";}s:16:"uninstall_reason";O:8:"stdClass":3:{s:2:"id";s:1:"7";s:4:"info";s:7:"tetetwe";s:12:"is_anonymous";b:0;}}}s:13:"file_slug_map";a:1:{s:29:"nextgen-gallery/nggallery.php";s:15:"nextgen-gallery";}s:7:"plugins";a:1:{s:15:"nextgen-gallery";O:9:"FS_Plugin":16:{s:16:"parent_plugin_id";N;s:5:"title";s:15:"NextGEN Gallery";s:4:"slug";s:15:"nextgen-gallery";s:4:"type";N;s:4:"file";s:29:"nextgen-gallery/nggallery.php";s:7:"version";s:5:"2.2.3";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_009356711cd548837f074e1ef60a4";s:10:"secret_key";N;s:2:"id";s:3:"266";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;}}s:9:"unique_id";s:32:"c21f3712452fcef1b1fe7b9c20804341";s:13:"admin_notices";a:1:{s:15:"nextgen-gallery";a:0:{}}}', 'yes'),
(846, 'ngg_transient_groups', 'a:7:{s:9:"__counter";i:7;s:15:"col_in_wp_posts";a:2:{s:2:"id";i:2;s:7:"enabled";b:1;}s:21:"col_in_wp_ngg_gallery";a:2:{s:2:"id";i:3;s:7:"enabled";b:1;}s:3:"MVC";a:2:{s:2:"id";i:4;s:7:"enabled";b:1;}s:22:"col_in_wp_ngg_pictures";a:2:{s:2:"id";i:5;s:7:"enabled";b:1;}s:27:"displayed_gallery_rendering";a:2:{s:2:"id";i:6;s:7:"enabled";b:1;}s:19:"col_in_wp_ngg_album";a:2:{s:2:"id";i:7;s:7:"enabled";b:1;}}', 'yes'),
(851, 'fs_api_cache', 'a:0:{}', 'yes'),
(853, 'widget_ngg-images', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(854, 'widget_ngg-mrssw', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(855, 'widget_slideshow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(856, 'ngg_options', 'a:72:{s:11:"gallerypath";s:19:"wp-content/gallery/";s:11:"wpmuCSSfile";s:13:"nggallery.css";s:9:"wpmuStyle";b:0;s:9:"wpmuRoles";b:0;s:16:"wpmuImportFolder";b:0;s:13:"wpmuZipUpload";b:0;s:14:"wpmuQuotaCheck";b:0;s:17:"datamapper_driver";s:22:"custom_post_datamapper";s:21:"gallerystorage_driver";s:25:"ngglegacy_gallery_storage";s:20:"maximum_entity_count";i:500;s:17:"router_param_slug";s:9:"nggallery";s:22:"router_param_separator";s:2:"--";s:19:"router_param_prefix";s:0:"";s:9:"deleteImg";b:1;s:9:"swfUpload";b:1;s:13:"usePermalinks";b:0;s:13:"permalinkSlug";s:9:"nggallery";s:14:"graphicLibrary";s:2:"gd";s:14:"imageMagickDir";s:15:"/usr/local/bin/";s:11:"useMediaRSS";b:0;s:18:"galleries_in_feeds";b:0;s:12:"activateTags";i:0;s:10:"appendType";s:4:"tags";s:9:"maxImages";i:7;s:14:"relatedHeading";s:24:"<h3>Related Images:</h3>";s:10:"thumbwidth";i:240;s:11:"thumbheight";i:160;s:8:"thumbfix";b:1;s:12:"thumbquality";i:100;s:8:"imgWidth";i:800;s:9:"imgHeight";i:600;s:10:"imgQuality";i:100;s:9:"imgBackup";b:1;s:13:"imgAutoResize";b:0;s:9:"galImages";s:2:"20";s:17:"galPagedGalleries";i:0;s:10:"galColumns";i:0;s:12:"galShowSlide";b:1;s:12:"galTextSlide";s:16:"[Show slideshow]";s:14:"galTextGallery";s:17:"[Show thumbnails]";s:12:"galShowOrder";s:7:"gallery";s:7:"galSort";s:9:"sortorder";s:10:"galSortDir";s:3:"ASC";s:10:"galNoPages";b:1;s:13:"galImgBrowser";i:0;s:12:"galHiddenImg";i:0;s:10:"galAjaxNav";i:0;s:11:"thumbEffect";s:8:"fancybox";s:9:"thumbCode";s:41:"class="ngg-fancybox" rel="%GALLERY_NAME%"";s:18:"thumbEffectContext";s:14:"nextgen_images";s:5:"wmPos";s:8:"botRight";s:6:"wmXpos";i:5;s:6:"wmYpos";i:5;s:6:"wmType";s:5:"image";s:6:"wmPath";s:0:"";s:6:"wmFont";s:9:"arial.ttf";s:6:"wmSize";i:10;s:6:"wmText";s:6:"DeFato";s:7:"wmColor";s:6:"000000";s:8:"wmOpaque";s:3:"100";s:7:"slideFX";s:4:"fade";s:7:"irWidth";i:600;s:8:"irHeight";i:400;s:12:"irRotatetime";i:10;s:11:"activateCSS";i:1;s:7:"CSSfile";s:13:"nggallery.css";s:28:"always_enable_frontend_logic";b:0;s:22:"dynamic_thumbnail_slug";s:13:"nextgen-image";s:23:"dynamic_stylesheet_slug";s:12:"nextgen-dcss";s:11:"installDate";i:1496681772;s:13:"gallery_count";i:1;s:40:"gallery_created_after_reviews_introduced";b:1;}', 'yes'),
(858, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(859, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(860, 'ngg_db_version', '1.8.1', 'yes'),
(863, 'pope_module_list', 'a:1:{i:20;s:33:"photocrati-dynamic_stylesheet|0.4";}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(905, 'wd_bwg_version', '1.3.45', 'no'),
(906, 'wd_bwg_theme_version', '1.0.0', 'no'),
(907, 'widget_bwp_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(908, 'widget_bwp_gallery_slideshow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(909, 'bwg_admin_notice', 'a:1:{s:15:"two_week_review";a:3:{s:5:"start";s:8:"7/5/2017";s:3:"int";i:14;s:9:"dismissed";i:0;}}', 'yes'),
(912, 'bwg_subscribe_done', '1', 'yes'),
(1078, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1079, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1080, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1246, 'widget_unitegallery-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1247, 'unite_gallery_general_settings', 'a:2:{s:15:"src_output_type";s:5:"thumb";s:15:"edit_permission";s:5:"admin";}', 'yes'),
(1308, 'cnss-width', '17', 'yes'),
(1309, 'cnss-height', '17', 'yes'),
(1310, 'cnss-margin', '4', 'yes'),
(1311, 'cnss-row-count', '', 'yes'),
(1312, 'cnss-vertical-horizontal', 'horizontal', 'yes'),
(1313, 'cnss-text-align', 'right', 'yes'),
(1314, 'cnss-social-profile-links', '', 'yes'),
(1315, 'cnss-social-profile-type', 'Person', 'yes'),
(1316, 'cnss-icon-bg-color', '#fc1414', 'yes'),
(1317, 'cnss-icon-bg-hover-color', '#dd3333', 'yes'),
(1318, 'cnss-icon-color', '#ffffff', 'yes'),
(1319, 'cnss-icon-hover-color', '#0a0a0a', 'yes'),
(1320, 'cnss-icon-shape', 'circle', 'yes'),
(1321, 'cnss-original-icon-color', '0', 'yes'),
(1322, 'widget_cnss_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1325, 'widget_themegrill_social_icons', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1353, 'ai1wm_updater', 'a:0:{}', 'yes'),
(1367, 'dlm_no_access_error', 'You do not have permission to access this download. <a href="http://localhost/defato">Go to homepage</a>', 'yes'),
(1368, 'dlm_no_access_page', '221', 'yes'),
(1369, 'dlm_current_version', '1.9.7', 'yes'),
(1370, 'widget_dlm_widget_downloads', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1371, 'dlm_default_template', '', 'yes'),
(1372, 'dlm_custom_template', '', 'yes'),
(1373, 'dlm_xsendfile_enabled', '', 'yes'),
(1374, 'dlm_hotlink_protection_enabled', '', 'yes'),
(1375, 'dlm_download_endpoint', 'download', 'yes'),
(1376, 'dlm_download_endpoint_value', 'ID', 'yes'),
(1377, 'dlm_generate_hash_md5', '0', 'yes'),
(1378, 'dlm_generate_hash_sha1', '0', 'yes'),
(1379, 'dlm_generate_hash_crc32b', '0', 'yes'),
(1380, 'dlm_enable_logging', '1', 'yes'),
(1381, 'dlm_count_unique_ips', '', 'yes'),
(1382, 'dlm_ip_blacklist', '192.168.0.0/24', 'yes'),
(1383, 'dlm_user_agent_blacklist', 'Googlebot', 'yes'),
(1384, 'dlm_settings_tab_saved', 'general', 'yes'),
(1385, 'dlm_product_errors', 'a:0:{}', 'yes'),
(1388, 'updraft_updraftvault', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-1d97ed0516b413bbfd60e78908fd76ff";a:0:{}}}', 'yes'),
(1389, 'updraft_dropbox', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-227e0591642c25f53c55fcd1e1294dbb";a:0:{}}}', 'yes'),
(1390, 'updraft_s3', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-e372a88de0203b8754612a6dd029b96a";a:0:{}}}', 'yes'),
(1391, 'updraft_cloudfiles', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-6300d49c45f1179ac87aa94ef9866f1f";a:0:{}}}', 'yes'),
(1392, 'updraft_googledrive', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-19acb191e155d540468647a563f73097";a:0:{}}}', 'yes'),
(1393, 'updraft_ftp', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-84383bc108d1f806f4e3a9510173b3c8";a:0:{}}}', 'yes'),
(1394, 'updraft_s3generic', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-c89f99b16322024ff2918cd7df3e442c";a:0:{}}}', 'yes'),
(1395, 'updraft_openstack', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-b8e13e39805279b8ac89f0978a422bff";a:0:{}}}', 'yes'),
(1396, 'updraft_dreamobjects', 'a:2:{s:7:"version";i:1;s:8:"settings";a:1:{s:34:"s-dda14efac0cc8aa906fb2da98e2623c9";a:0:{}}}', 'yes'),
(1397, 'updraftplus-addons_siteid', 'ea76e168450857063ebae4856d3b6e2a', 'no'),
(1398, 'updraft_lastmessage', 'O backup aparentemente foi bem sucedido e está completo agora. (jul 27 00:21:55)', 'yes'),
(1399, 'updraftplus_unlocked_fd', '1', 'no'),
(1400, 'updraftplus_last_lock_time_fd', '2017-07-27 03:21:39', 'no'),
(1401, 'updraftplus_semaphore_fd', '0', 'no'),
(1402, 'updraft_last_scheduled_fd', '1501125699', 'yes'),
(1406, 'updraft_backup_history', 'a:1:{i:1501125699;a:15:{s:7:"plugins";a:1:{i:0;s:54:"backup_2017-07-27-0021_DeFato_aae312592e10-plugins.zip";}s:12:"plugins-size";i:23526890;s:6:"themes";a:1:{i:0;s:53:"backup_2017-07-27-0021_DeFato_aae312592e10-themes.zip";}s:11:"themes-size";i:10648848;s:7:"uploads";a:1:{i:0;s:54:"backup_2017-07-27-0021_DeFato_aae312592e10-uploads.zip";}s:12:"uploads-size";i:52607237;s:6:"others";a:1:{i:0;s:53:"backup_2017-07-27-0021_DeFato_aae312592e10-others.zip";}s:11:"others-size";i:12471677;s:2:"db";s:48:"backup_2017-07-27-0021_DeFato_aae312592e10-db.gz";s:7:"db-size";i:285957;s:9:"checksums";a:2:{s:4:"sha1";a:5:{s:8:"plugins0";s:40:"0918a239b9051b68b0f1687c6cabdab9af30a41a";s:7:"themes0";s:40:"415de350b762c98ddc2904cde6f5199c93b5ba98";s:8:"uploads0";s:40:"6c1be28435838147c4c3e9dba1aa898ed5bda858";s:7:"others0";s:40:"bcfd176034ce278d1fd4dc6db1208861cbc2239c";s:3:"db0";s:40:"d4d65d7ccef7fe217d123cb3378f021c1cef95a7";}s:6:"sha256";a:5:{s:8:"plugins0";s:64:"fc74bbd4dc3a4129f725f81ca30b5da884746871ec6493ee9ec187f37578075f";s:7:"themes0";s:64:"34185431a6951754714a446eba35ed61cef83e0ac114d4fc30a763d87d854d39";s:8:"uploads0";s:64:"433b0142ae45851bffb3eb4e5281ad0e445a6672b78ec9d79640041db7b76baf";s:7:"others0";s:64:"911fc0005c0901e2d6601aae7a500d2805aa349380e771efb9e2d24561f20690";s:3:"db0";s:64:"928522d4f84c350b9b674aa6e139bad4a5d39aef539eb269b8241763c68d144f";}}s:5:"nonce";s:12:"aae312592e10";s:7:"service";a:1:{i:0;s:4:"none";}s:18:"created_by_version";s:6:"1.13.4";s:12:"is_multisite";b:0;}}', 'yes'),
(1407, 'updraft_last_backup', 'a:5:{s:11:"backup_time";i:1501125699;s:12:"backup_array";a:11:{s:7:"plugins";a:1:{i:0;s:54:"backup_2017-07-27-0021_DeFato_aae312592e10-plugins.zip";}s:12:"plugins-size";i:23526890;s:6:"themes";a:1:{i:0;s:53:"backup_2017-07-27-0021_DeFato_aae312592e10-themes.zip";}s:11:"themes-size";i:10648848;s:7:"uploads";a:1:{i:0;s:54:"backup_2017-07-27-0021_DeFato_aae312592e10-uploads.zip";}s:12:"uploads-size";i:52607237;s:6:"others";a:1:{i:0;s:53:"backup_2017-07-27-0021_DeFato_aae312592e10-others.zip";}s:11:"others-size";i:12471677;s:2:"db";s:48:"backup_2017-07-27-0021_DeFato_aae312592e10-db.gz";s:7:"db-size";i:285957;s:9:"checksums";a:2:{s:4:"sha1";a:5:{s:8:"plugins0";s:40:"0918a239b9051b68b0f1687c6cabdab9af30a41a";s:7:"themes0";s:40:"415de350b762c98ddc2904cde6f5199c93b5ba98";s:8:"uploads0";s:40:"6c1be28435838147c4c3e9dba1aa898ed5bda858";s:7:"others0";s:40:"bcfd176034ce278d1fd4dc6db1208861cbc2239c";s:3:"db0";s:40:"d4d65d7ccef7fe217d123cb3378f021c1cef95a7";}s:6:"sha256";a:5:{s:8:"plugins0";s:64:"fc74bbd4dc3a4129f725f81ca30b5da884746871ec6493ee9ec187f37578075f";s:7:"themes0";s:64:"34185431a6951754714a446eba35ed61cef83e0ac114d4fc30a763d87d854d39";s:8:"uploads0";s:64:"433b0142ae45851bffb3eb4e5281ad0e445a6672b78ec9d79640041db7b76baf";s:7:"others0";s:64:"911fc0005c0901e2d6601aae7a500d2805aa349380e771efb9e2d24561f20690";s:3:"db0";s:64:"928522d4f84c350b9b674aa6e139bad4a5d39aef539eb269b8241763c68d144f";}}}s:7:"success";i:1;s:6:"errors";a:0:{}s:12:"backup_nonce";s:12:"aae312592e10";}', 'yes'),
(1417, 'eo-event-category_17', 'a:1:{s:6:"colour";s:7:"#34ade6";}', 'yes'),
(1503, 'widget_zoom-social-icons-widget', 'a:2:{i:2;a:9:{s:5:"title";s:8:"Siga-nos";s:11:"description";s:0:"";s:16:"show-icon-labels";b:1;s:12:"open-new-tab";b:1;s:17:"icon-padding-size";i:5;s:14:"icon-font-size";i:15;s:10:"icon-style";s:11:"with-canvas";s:17:"icon-canvas-style";s:5:"round";s:6:"fields";a:5:{i:0;a:5:{s:3:"url";s:27:"https://facebook.com/wpzoom";s:5:"label";s:8:"Facebook";s:4:"icon";s:8:"facebook";s:8:"icon-kit";s:7:"socicon";s:12:"color-picker";s:7:"#3b5998";}i:1;a:5:{s:3:"url";s:26:"https://twitter.com/wpzoom";s:5:"label";s:7:"Twitter";s:4:"icon";s:7:"twitter";s:8:"icon-kit";s:7:"socicon";s:12:"color-picker";s:7:"#55ACEC";}i:2;a:5:{s:3:"url";s:28:"https://instagram.com/wpzoom";s:5:"label";s:9:"Instagram";s:4:"icon";s:9:"instagram";s:8:"icon-kit";s:7:"socicon";s:12:"color-picker";s:7:"#E1306C";}i:3;a:5:{s:3:"url";s:24:"http://www.google.com.br";s:5:"label";s:7:"Google+";s:4:"icon";s:11:"google-plus";s:8:"icon-kit";s:2:"fa";s:12:"color-picker";s:7:"#d20a00";}i:4;a:5:{s:3:"url";s:24:"http://www.google.com.br";s:5:"label";s:7:"YouTube";s:4:"icon";s:12:"youtube-play";s:8:"icon-kit";s:2:"fa";s:12:"color-picker";s:7:"#d20a00";}}}s:12:"_multiwidget";i:1;}', 'yes'),
(1548, 'category_38_background', '264', 'no'),
(1549, '_category_38_background', 'field_593c498cff944', 'no'),
(1551, 'category_19_background', '264', 'no'),
(1552, '_category_19_background', 'field_593c498cff944', 'no'),
(1554, 'category_16_background', '', 'no'),
(1555, '_category_16_background', 'field_593c498cff944', 'no'),
(1564, 'category_39_background', '92', 'no'),
(1565, '_category_39_background', 'field_593c498cff944', 'no'),
(1644, 'category_14_background', '', 'no'),
(1645, '_category_14_background', 'field_593c498cff944', 'no'),
(1899, 'CF_DB', '6', 'yes'),
(1900, 'widget_caldera_forms_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1902, '_calderaforms_lastupdate', '1.5.3.1', 'yes'),
(1903, '_caldera_forms_styleincludes', 'a:3:{s:5:"alert";b:1;s:4:"form";b:1;s:4:"grid";b:1;}', 'yes'),
(1904, '_caldera_forms_tracking_allowed', 'dismiss', 'yes'),
(1905, '_cf_last_alert_check', '1500299789', 'yes'),
(1906, '_caldera_forms_forms', 'a:1:{s:15:"CF595ce58497cb8";s:15:"CF595ce58497cb8";}', 'no'),
(1910, 'CF595ce58497cb8', 'a:22:{s:13:"_last_updated";s:31:"Mon, 10 Jul 2017 19:25:56 +0000";s:2:"ID";s:15:"CF595ce58497cb8";s:10:"cf_version";s:7:"1.5.2.1";s:4:"name";s:7:"Contato";s:10:"scroll_top";i:0;s:11:"description";s:49:"																																																	";s:7:"success";s:69:"O formulário foi enviado com sucesso. Obrigado.																					";s:10:"db_support";i:1;s:6:"pinned";i:0;s:9:"hide_form";i:1;s:11:"check_honey";i:1;s:12:"avatar_field";N;s:9:"form_ajax";i:1;s:15:"custom_callback";s:0:"";s:11:"layout_grid";a:2:{s:6:"fields";a:7:{s:11:"fld_4371347";s:3:"1:1";s:11:"fld_4574560";s:3:"1:1";s:11:"fld_8063032";s:3:"1:1";s:11:"fld_4681031";s:3:"1:1";s:11:"fld_2289923";s:3:"1:1";s:11:"fld_1472864";s:3:"1:2";s:11:"fld_5930688";s:3:"1:2";}s:9:"structure";s:3:"6:6";}s:6:"fields";a:7:{s:11:"fld_4371347";a:8:{s:2:"ID";s:11:"fld_4371347";s:4:"type";s:8:"dropdown";s:5:"label";s:18:"Área de interesse";s:4:"slug";s:17:"area_de_interesse";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:13:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:14:"default_option";s:0:"";s:9:"auto_type";s:0:"";s:8:"taxonomy";s:8:"category";s:9:"post_type";s:4:"post";s:11:"value_field";s:4:"name";s:11:"orderby_tax";s:4:"name";s:12:"orderby_post";s:4:"name";s:5:"order";s:3:"ASC";s:7:"default";s:0:"";s:11:"show_values";i:1;s:6:"option";a:6:{s:10:"opt1526199";a:3:{s:10:"calc_value";s:14:"Quero anunciar";s:5:"value";s:14:"Quero anunciar";s:5:"label";s:14:"Quero anunciar";}s:10:"opt1997887";a:3:{s:10:"calc_value";s:28:"Quero sugerir uma reportagem";s:5:"value";s:28:"Quero sugerir uma reportagem";s:5:"label";s:28:"Quero sugerir uma reportagem";}s:10:"opt2054169";a:3:{s:10:"calc_value";s:32:"Quero fazer críticas/sugestões";s:5:"value";s:32:"Quero fazer críticas/sugestões";s:5:"label";s:32:"Quero fazer críticas/sugestões";}s:10:"opt1327882";a:3:{s:10:"calc_value";s:14:"Quero reclamar";s:5:"value";s:14:"Quero reclamar";s:5:"label";s:14:"Quero reclamar";}s:10:"opt2094221";a:3:{s:10:"calc_value";s:25:"Quero pedir informações";s:5:"value";s:25:"Quero pedir informações";s:5:"label";s:25:"Quero pedir informações";}s:10:"opt1136613";a:3:{s:10:"calc_value";s:25:"Quero trabalhar na DeFato";s:5:"value";s:25:"Quero trabalhar na DeFato";s:5:"label";s:25:"Quero trabalhar na DeFato";}}}}s:11:"fld_4574560";a:8:{s:2:"ID";s:11:"fld_4574560";s:4:"type";s:4:"text";s:5:"label";s:4:"Nome";s:4:"slug";s:4:"nome";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:5:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"type_override";s:4:"text";s:4:"mask";s:0:"";}}s:11:"fld_8063032";a:8:{s:2:"ID";s:11:"fld_8063032";s:4:"type";s:5:"email";s:5:"label";s:5:"Email";s:4:"slug";s:5:"email";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:3:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";}}s:11:"fld_4681031";a:7:{s:2:"ID";s:11:"fld_4681031";s:4:"type";s:12:"phone_better";s:5:"label";s:8:"Telefone";s:4:"slug";s:8:"telefone";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:3:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";}}s:11:"fld_2289923";a:7:{s:2:"ID";s:11:"fld_2289923";s:4:"type";s:9:"paragraph";s:5:"label";s:9:"Endereço";s:4:"slug";s:7:"endereo";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:4:"rows";i:2;s:7:"default";s:0:"";}}s:11:"fld_1472864";a:8:{s:2:"ID";s:11:"fld_1472864";s:4:"type";s:9:"paragraph";s:5:"label";s:8:"Mensagem";s:4:"slug";s:8:"mensagem";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:4:"rows";i:14;s:7:"default";s:0:"";}}s:11:"fld_5930688";a:7:{s:2:"ID";s:11:"fld_5930688";s:4:"type";s:6:"button";s:5:"label";s:6:"Enviar";s:4:"slug";s:6:"enviar";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:4:"type";s:6:"submit";s:5:"class";s:16:"w-button btn-red";s:6:"target";s:0:"";}}}s:10:"page_names";a:1:{i:0;s:9:"Página 1";}s:6:"mailer";a:9:{s:9:"on_insert";i:1;s:11:"sender_name";s:6:"DeFato";s:12:"sender_email";s:0:"";s:8:"reply_to";s:7:"%email%";s:10:"email_type";s:4:"html";s:10:"recipients";s:18:"contato@defato.com";s:6:"bcc_to";s:0:"";s:13:"email_subject";s:24:"Notificação de Contato";s:13:"email_message";s:9:"{summary}";}s:10:"processors";a:2:{s:11:"fp_10379117";a:5:{s:2:"ID";s:11:"fp_10379117";s:8:"runtimes";a:1:{s:6:"insert";i:1;}s:4:"type";s:21:"conditional_recipient";s:6:"config";a:2:{s:21:"conditional-recipient";s:19:"anuncios@defato.com";s:14:"remove-default";s:2:"on";}s:10:"conditions";a:2:{s:4:"type";s:3:"use";s:5:"group";a:1:{s:13:"rw92460036922";a:1:{s:13:"cl12346372098";a:3:{s:5:"field";s:11:"fld_4371347";s:7:"compare";s:2:"is";s:5:"value";s:10:"opt1526199";}}}}}s:11:"fp_64343987";a:5:{s:2:"ID";s:11:"fp_64343987";s:8:"runtimes";a:1:{s:6:"insert";i:1;}s:4:"type";s:21:"conditional_recipient";s:6:"config";a:2:{s:21:"conditional-recipient";s:20:"sugestoes@defato.com";s:14:"remove-default";s:2:"on";}s:10:"conditions";a:2:{s:4:"type";s:3:"use";s:5:"group";a:1:{s:13:"rw77011451515";a:1:{s:12:"cl7026701495";a:3:{s:5:"field";s:11:"fld_4371347";s:7:"compare";s:2:"is";s:5:"value";s:10:"opt1997887";}}}}}}s:18:"conditional_groups";a:1:{s:15:"_open_condition";s:20:"con_6381195344589970";}s:8:"settings";a:1:{s:10:"responsive";a:1:{s:11:"break_point";s:2:"sm";}}s:7:"version";s:7:"1.5.2.1";}', 'yes'),
(2011, 'eo_notice', 'a:0:{}', 'yes'),
(2041, 'updraftplus_dismissedautobackup', '1506953659', 'yes'),
(2122, 'widget_adrotate_widgets', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2132, 'wp-bannerize', 'a:10:{s:20:"wp_bannerize_version";s:5:"3.1.6";s:19:"clickCounterEnabled";s:1:"1";s:18:"impressionsEnabled";s:1:"1";s:18:"supportWPBannerize";s:1:"0";s:20:"comboWindowModeFlash";s:6:"Window";s:15:"linkDescription";s:1:"0";s:23:"wpBannerizeStyleDefault";s:7:"default";s:16:"wpBannerizeStyle";s:27:"wpBannerizeStyleDefault.css";s:22:"wpBannerizeStyleCustom";s:611:"/**\n * WP Bannerize Frontend Sample styles\n *\n * @author     =undo= <g.fazioli@undolog.com>\n * @copyright  2008-2013\n * @since      3.0\n */\n\ndiv.wp_bannerize div {\n	text-align : center;\n}\n\ndiv.wp_bannerize div span {\n	font-weight : bold;\n	text-align  : center;\n}\n\ndiv.wp_bannerize p.wp-bannerize-support {\n	text-align            : center;\n	padding               : 4px;\n	background            : #eee;\n	-moz-box-shadow       : 0 0 4px #aaa;\n	-webkit-box-shadow    : 0 0 4px #aaa;\n	box-shadow            : 0 0 4px #aaa;\n	-moz-border-radius    : 32px;\n	-webkit-border-radius : 32px;\n	border-radius         : 32px;\n}";s:30:"wpBannerizeNoBannerHTMLMessage";s:7:"<p></p>";}', 'yes'),
(2133, 'widget_wp_bannerize', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2147, 'updraftplus_unlocked_f', '1', 'no'),
(2148, 'updraftplus_last_lock_time_f', '2017-07-18 18:32:56', 'no'),
(2149, 'updraftplus_semaphore_f', '0', 'no'),
(2150, 'updraft_last_scheduled_f', '1500402776', 'yes'),
(2224, 'event-category_children', 'a:0:{}', 'yes'),
(2302, 'category_children', 'a:3:{i:5;a:9:{i:0;i:6;i:1;i:8;i:2;i:9;i:3;i:10;i:4;i:40;i:5;i:41;i:6;i:42;i:7;i:43;i:8;i:48;}i:15;a:7:{i:0;i:11;i:1;i:12;i:2;i:13;i:3;i:14;i:4;i:16;i:5;i:20;i:6;i:35;}i:19;a:1:{i:0;i:39;}}', 'yes'),
(2338, 'dfi_image_id', '456', 'yes'),
(2430, 'updraft_jobdata_4961eb156c67', 'a:2:{s:8:"job_type";s:6:"delete";s:11:"job_time_ms";d:1501125692.0174429416656494140625;}', 'no'),
(2432, 'updraft_jobdata_59795c43063d', 'a:5:{s:8:"job_type";s:8:"download";s:11:"job_time_ms";d:1501125779.056468963623046875;s:30:"dlmessage_1501125699_plugins_0";s:93:"The file was found locally and matched the recorded size from the backup history (22975.5 KB)";s:7:"service";a:1:{i:0;s:4:"none";}s:27:"dlfile_1501125699_plugins_0";s:135:"downloaded:23526890:C:\\Users\\wanbe\\Google Drive\\htdocs\\defato/wp-content/updraft/backup_2017-07-27-0021_DeFato_aae312592e10-plugins.zip";}', 'no'),
(2433, 'updraft_jobdata_59795c430fe0', 'a:5:{s:8:"job_type";s:8:"download";s:11:"job_time_ms";d:1501125781.82909488677978515625;s:29:"dlmessage_1501125699_themes_0";s:93:"The file was found locally and matched the recorded size from the backup history (10399.3 KB)";s:7:"service";a:1:{i:0;s:4:"none";}s:26:"dlfile_1501125699_themes_0";s:134:"downloaded:10648848:C:\\Users\\wanbe\\Google Drive\\htdocs\\defato/wp-content/updraft/backup_2017-07-27-0021_DeFato_aae312592e10-themes.zip";}', 'no'),
(2434, 'updraft_jobdata_59795c430512', 'a:5:{s:8:"job_type";s:8:"download";s:11:"job_time_ms";d:1501125785.4164769649505615234375;s:30:"dlmessage_1501125699_uploads_0";s:93:"The file was found locally and matched the recorded size from the backup history (51374.3 KB)";s:7:"service";a:1:{i:0;s:4:"none";}s:27:"dlfile_1501125699_uploads_0";s:135:"downloaded:52607237:C:\\Users\\wanbe\\Google Drive\\htdocs\\defato/wp-content/updraft/backup_2017-07-27-0021_DeFato_aae312592e10-uploads.zip";}', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2435, 'updraft_jobdata_59795c4305e2', 'a:5:{s:8:"job_type";s:8:"download";s:11:"job_time_ms";d:1501125790.6588420867919921875;s:29:"dlmessage_1501125699_others_0";s:93:"The file was found locally and matched the recorded size from the backup history (12179.4 KB)";s:7:"service";a:1:{i:0;s:4:"none";}s:26:"dlfile_1501125699_others_0";s:134:"downloaded:12471677:C:\\Users\\wanbe\\Google Drive\\htdocs\\defato/wp-content/updraft/backup_2017-07-27-0021_DeFato_aae312592e10-others.zip";}', 'no') ;

#
# Fim do conteúdo da tabela `wp_options`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_postmeta` existente
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Estrutura da tabela `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2634 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4, 5, '_wp_attached_file', '2017/05/trump.jpg'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:840;s:6:"height";i:551;s:4:"file";s:17:"2017/05/trump.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"trump-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"trump-300x197.jpg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"trump-768x504.jpg";s:5:"width";i:768;s:6:"height";i:504;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:17:"trump-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1495232538:1'),
(10, 7, '_thumbnail_id', '5'),
(12, 9, '_edit_last', '1'),
(13, 9, '_edit_lock', '1500352374:1'),
(15, 11, '_wp_attached_file', '2017/05/Secretario-198x130.jpg'),
(16, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:198;s:6:"height";i:130;s:4:"file";s:30:"2017/05/Secretario-198x130.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"Secretario-198x130-150x130.jpg";s:5:"width";i:150;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 12, '_wp_attached_file', '2017/05/15981739978_e8d35925f6_o-840x577.jpg'),
(18, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:840;s:6:"height";i:577;s:4:"file";s:44:"2017/05/15981739978_e8d35925f6_o-840x577.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"15981739978_e8d35925f6_o-840x577-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"15981739978_e8d35925f6_o-840x577-300x206.jpg";s:5:"width";i:300;s:6:"height";i:206;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"15981739978_e8d35925f6_o-840x577-768x528.jpg";s:5:"width";i:768;s:6:"height";i:528;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:44:"15981739978_e8d35925f6_o-840x577-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:31:"Marcos Oliveira/Agência Senado";s:6:"camera";s:9:"NIKON D3S";s:7:"caption";s:304:"Plenário da Câmara dos Deputados durante solenidade de posse da presidente da República, Dilma Rousseff e vice-presidente Michel Temer. \r\rChefes de Estado e autoridades internacionais participam do evento. Em destaque, o presidente da Venezuela Nicolás Maduro. \r\rFoto: Marcos Oliveira/Agência Senado";s:17:"created_timestamp";s:10:"1420125898";s:9:"copyright";s:24:"Senado Federal do Brasil";s:12:"focal_length";s:3:"200";s:3:"iso";s:4:"2000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:23:"Solenidades. Homenagens";s:11:"orientation";s:1:"1";s:8:"keywords";a:4:{i:0;s:9:"plenário";i:1;s:5:"posse";i:2;s:14:"Dilma Rousseff";i:3;s:15:"Nicolás Maduro";}}}'),
(19, 9, '_thumbnail_id', '12'),
(67, 21, '_wp_attached_file', '2017/05/itabira.jpg'),
(68, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:840;s:6:"height";i:470;s:4:"file";s:19:"2017/05/itabira.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"itabira-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"itabira-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"itabira-768x430.jpg";s:5:"width";i:768;s:6:"height";i:430;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:19:"itabira-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:24:"Michael Melo/Metrópoles";s:6:"camera";s:21:"Canon EOS 5D Mark III";s:7:"caption";s:136:"Brasília (DF), 09/10/2015  - Reprovação e abandono nas escolas do Distrito Federal - Colegio Gisno - Foto, Michael Melo/Metrópoles";s:17:"created_timestamp";s:10:"1442316065";s:9:"copyright";s:24:"Michael Melo/Metrópoles";s:12:"focal_length";s:2:"25";s:3:"iso";s:4:"1000";s:13:"shutter_speed";s:4:"0.02";s:5:"title";s:24:"Michael Melo/Metrópoles";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(73, 25, '_wp_attached_file', '2017/05/delatores-da-odebrecht-divergem.jpg'),
(74, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:360;s:4:"file";s:43:"2017/05/delatores-da-odebrecht-divergem.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"delatores-da-odebrecht-divergem-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"delatores-da-odebrecht-divergem-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:43:"delatores-da-odebrecht-divergem-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(75, 25, 'video_thumbnail', '1'),
(83, 28, '_thumbnail_id', '98'),
(84, 28, '_dp_original', '17'),
(85, 28, '_edit_lock', '1495288622:1'),
(86, 28, '_edit_last', '1'),
(96, 32, '_wp_attached_file', '2017/05/Florianopolis_Wikimedia_Avenida_Beira_Mar_Norte_-1180x472.jpg'),
(97, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1180;s:6:"height";i:472;s:4:"file";s:69:"2017/05/Florianopolis_Wikimedia_Avenida_Beira_Mar_Norte_-1180x472.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:69:"Florianopolis_Wikimedia_Avenida_Beira_Mar_Norte_-1180x472-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:69:"Florianopolis_Wikimedia_Avenida_Beira_Mar_Norte_-1180x472-300x120.jpg";s:5:"width";i:300;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:69:"Florianopolis_Wikimedia_Avenida_Beira_Mar_Norte_-1180x472-768x307.jpg";s:5:"width";i:768;s:6:"height";i:307;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:70:"Florianopolis_Wikimedia_Avenida_Beira_Mar_Norte_-1180x472-1024x410.jpg";s:5:"width";i:1024;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:69:"Florianopolis_Wikimedia_Avenida_Beira_Mar_Norte_-1180x472-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(99, 33, '_wp_attached_file', '2017/05/fundo-de-uma-cidade.jpg'),
(100, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:900;s:4:"file";s:31:"2017/05/fundo-de-uma-cidade.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"fundo-de-uma-cidade-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"fundo-de-uma-cidade-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"fundo-de-uma-cidade-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"fundo-de-uma-cidade-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:31:"fundo-de-uma-cidade-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(102, 35, '_thumbnail_id', '95'),
(104, 35, '_dp_original', '30'),
(105, 36, '_thumbnail_id', '92'),
(107, 36, '_dp_original', '28'),
(111, 35, '_edit_lock', '1495232710:1'),
(112, 35, '_edit_last', '1'),
(114, 36, '_edit_lock', '1499184078:1'),
(115, 36, '_edit_last', '1'),
(160, 52, '_eventorganiser_schedule_until', '2017-12-21 17:30:00'),
(161, 52, '_edit_last', '1'),
(162, 52, '_edit_lock', '1500299079:1'),
(163, 52, '_eventorganiser_schedule_start_start', '2017-12-21 17:30:00'),
(164, 52, '_eventorganiser_schedule_start_finish', '2017-12-21 18:30:00'),
(165, 52, '_eventorganiser_schedule_last_start', '2017-12-21 17:30:00'),
(166, 52, '_eventorganiser_schedule_last_finish', '2017-12-21 18:30:00'),
(167, 52, '_eventorganiser_event_schedule', 'a:7:{s:7:"all_day";i:0;s:8:"schedule";s:4:"once";s:13:"schedule_meta";s:0:"";s:9:"frequency";i:1;s:7:"exclude";a:0:{}s:7:"include";a:0:{}s:12:"duration_str";s:55:"+0 year +0 month +0 days +1 hours +0 minutes +0 seconds";}'),
(174, 55, '_thumbnail_id', '89'),
(176, 55, '_dp_original', '41'),
(177, 56, '_video_thumbnail', 'http://localhost/wordpress/wp-content/uploads/2017/05/delatores-da-odebrecht-divergem.jpg'),
(178, 56, '_thumbnail_id', '25'),
(180, 56, '_dp_original', '37'),
(181, 57, '_thumbnail_id', '83'),
(183, 57, '_dp_original', '36'),
(184, 58, '_thumbnail_id', '86'),
(185, 58, '_dp_original', '17'),
(186, 57, '_edit_lock', '1498612872:1'),
(187, 57, '_edit_last', '1'),
(189, 58, '_edit_last', '1'),
(190, 58, '_edit_lock', '1498615162:1'),
(198, 55, '_edit_last', '1'),
(200, 55, '_edit_lock', '1498614973:1'),
(201, 56, '_edit_last', '1'),
(203, 56, '_edit_lock', '1500303414:1'),
(204, 65, '_eventorganiser_schedule_until', '2017-11-28 12:00:00'),
(205, 65, '_edit_lock', '1499997584:1'),
(206, 65, '_edit_last', '1'),
(207, 65, '_eventorganiser_schedule_start_start', '2017-11-28 12:00:00'),
(208, 65, '_eventorganiser_schedule_start_finish', '2017-11-28 13:00:00'),
(209, 65, '_eventorganiser_schedule_last_start', '2017-11-28 12:00:00'),
(210, 65, '_eventorganiser_schedule_last_finish', '2017-11-28 13:00:00'),
(211, 65, '_eventorganiser_event_schedule', 'a:7:{s:7:"all_day";i:0;s:8:"schedule";s:4:"once";s:13:"schedule_meta";s:0:"";s:9:"frequency";i:1;s:7:"exclude";a:0:{}s:7:"include";a:0:{}s:12:"duration_str";s:55:"+0 year +0 month +0 days +1 hours +0 minutes +0 seconds";}'),
(212, 66, '_eventorganiser_schedule_until', '2017-11-19 15:30:00'),
(213, 66, '_edit_lock', '1498658401:1'),
(214, 66, '_edit_last', '1'),
(215, 66, '_eventorganiser_schedule_start_start', '2017-11-19 15:30:00'),
(216, 66, '_eventorganiser_schedule_start_finish', '2017-11-19 15:31:00'),
(217, 66, '_eventorganiser_schedule_last_start', '2017-11-19 15:30:00'),
(218, 66, '_eventorganiser_schedule_last_finish', '2017-11-19 15:31:00'),
(219, 66, '_eventorganiser_event_schedule', 'a:7:{s:7:"all_day";i:0;s:8:"schedule";s:4:"once";s:13:"schedule_meta";s:0:"";s:9:"frequency";i:1;s:7:"exclude";a:0:{}s:7:"include";a:0:{}s:12:"duration_str";s:55:"+0 year +0 month +0 days +0 hours +1 minutes +0 seconds";}'),
(220, 67, '_wp_attached_file', '2017/01/Coldplay1-p-500.jpeg'),
(221, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:318;s:4:"file";s:28:"2017/01/Coldplay1-p-500.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Coldplay1-p-500-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"Coldplay1-p-500-300x191.jpeg";s:5:"width";i:300;s:6:"height";i:191;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:28:"Coldplay1-p-500-300x200.jpeg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(222, 52, '_thumbnail_id', '352'),
(223, 68, '_wp_attached_file', '2017/02/Naruto_sennin.png'),
(224, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:25:"2017/02/Naruto_sennin.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Naruto_sennin-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"Naruto_sennin-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Naruto_sennin-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"Naruto_sennin-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:10:"post_thumb";a:4:{s:4:"file";s:25:"Naruto_sennin-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(225, 65, '_thumbnail_id', '68'),
(231, 71, '_wp_attached_file', '2017/05/mensagens-de-feliz-aniversario-kBDbN-fxl.jpg'),
(232, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:630;s:4:"file";s:52:"2017/05/mensagens-de-feliz-aniversario-kBDbN-fxl.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:52:"mensagens-de-feliz-aniversario-kBDbN-fxl-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:52:"mensagens-de-feliz-aniversario-kBDbN-fxl-300x158.jpg";s:5:"width";i:300;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:52:"mensagens-de-feliz-aniversario-kBDbN-fxl-768x403.jpg";s:5:"width";i:768;s:6:"height";i:403;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:53:"mensagens-de-feliz-aniversario-kBDbN-fxl-1024x538.jpg";s:5:"width";i:1024;s:6:"height";i:538;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:52:"mensagens-de-feliz-aniversario-kBDbN-fxl-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(233, 66, '_thumbnail_id', '71'),
(234, 73, '_menu_item_type', 'custom'),
(235, 73, '_menu_item_menu_item_parent', '0'),
(236, 73, '_menu_item_object_id', '73'),
(237, 73, '_menu_item_object', 'custom'),
(238, 73, '_menu_item_target', ''),
(239, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(240, 73, '_menu_item_xfn', ''),
(241, 73, '_menu_item_url', 'http://localhost/defato/'),
(246, 75, '_edit_last', '1'),
(247, 75, '_edit_lock', '1498607478:1'),
(272, 78, '_wp_attached_file', '2017/05/Author_Holding_Book.png'),
(273, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:390;s:6:"height";i:461;s:4:"file";s:31:"2017/05/Author_Holding_Book.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Author_Holding_Book-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"Author_Holding_Book-254x300.png";s:5:"width";i:254;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:10:"post_thumb";a:4:{s:4:"file";s:31:"Author_Holding_Book-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(274, 79, '_wp_attached_file', '2017/05/foto-1.png'),
(275, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:123;s:6:"height";i:120;s:4:"file";s:18:"2017/05/foto-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(285, 80, '_edit_lock', '1498577211:1'),
(286, 80, '_edit_last', '1'),
(287, 80, 'field_591e63ee091c9', 'a:14:{s:3:"key";s:19:"field_591e63ee091c9";s:5:"label";s:6:"Versal";s:4:"name";s:13:"versal-pagina";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:18:"Versal da notícia";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(289, 80, 'position', 'normal'),
(290, 80, 'layout', 'no_box'),
(291, 80, 'hide_on_screen', 'a:5:{i:0;s:13:"custom_fields";i:1;s:10:"discussion";i:2;s:8:"comments";i:3;s:4:"slug";i:4;s:15:"send-trackbacks";}'),
(294, 78, '_wp_attachment_wp_user_avatar', '4'),
(299, 79, '_wp_attachment_wp_user_avatar', '6'),
(316, 57, '_disabel_wpdevart_facebook_comment', 'enable'),
(317, 57, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(318, 57, 'versal-pagina', 'Professores reclamam'),
(319, 57, '_versal-pagina', 'field_591e63ee091c9'),
(320, 83, '_wp_attached_file', '2017/05/professor-melhore-a-relacao-em-sala-de-aula-com-sua-turma-noticias.jpg'),
(321, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:785;s:6:"height";i:350;s:4:"file";s:78:"2017/05/professor-melhore-a-relacao-em-sala-de-aula-com-sua-turma-noticias.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:78:"professor-melhore-a-relacao-em-sala-de-aula-com-sua-turma-noticias-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:78:"professor-melhore-a-relacao-em-sala-de-aula-com-sua-turma-noticias-300x134.jpg";s:5:"width";i:300;s:6:"height";i:134;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:78:"professor-melhore-a-relacao-em-sala-de-aula-com-sua-turma-noticias-768x342.jpg";s:5:"width";i:768;s:6:"height";i:342;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:78:"professor-melhore-a-relacao-em-sala-de-aula-com-sua-turma-noticias-190x130.jpg";s:5:"width";i:190;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(326, 86, '_wp_attached_file', '2017/05/Urna_eletrônica.jpeg'),
(327, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1999;s:6:"height";i:1311;s:4:"file";s:29:"2017/05/Urna_eletrônica.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"Urna_eletrônica-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"Urna_eletrônica-300x197.jpeg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"Urna_eletrônica-768x504.jpeg";s:5:"width";i:768;s:6:"height";i:504;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"Urna_eletrônica-1024x672.jpeg";s:5:"width";i:1024;s:6:"height";i:672;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:29:"Urna_eletrônica-190x130.jpeg";s:5:"width";i:190;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:9:"NIKON D1H";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1120282289";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"70";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(331, 58, '_disabel_wpdevart_facebook_comment', 'enable'),
(332, 58, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(333, 58, 'versal-pagina', 'Escândalo políticp'),
(334, 58, '_versal-pagina', 'field_591e63ee091c9'),
(356, 56, '_disabel_wpdevart_facebook_comment', 'enable'),
(357, 56, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(358, 56, 'versal-pagina', 'Lula é preso'),
(359, 56, '_versal-pagina', 'field_591e63ee091c9'),
(360, 89, '_wp_attached_file', '2017/05/carmen_lucia-4519974.jpg'),
(361, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:983;s:6:"height";i:705;s:4:"file";s:32:"2017/05/carmen_lucia-4519974.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"carmen_lucia-4519974-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"carmen_lucia-4519974-300x215.jpg";s:5:"width";i:300;s:6:"height";i:215;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"carmen_lucia-4519974-768x551.jpg";s:5:"width";i:768;s:6:"height";i:551;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:32:"carmen_lucia-4519974-190x130.jpg";s:5:"width";i:190;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(365, 55, '_disabel_wpdevart_facebook_comment', 'enable'),
(366, 55, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(367, 55, 'versal-pagina', 'Morte no senado'),
(368, 55, '_versal-pagina', 'field_591e63ee091c9'),
(375, 92, '_wp_attached_file', '2017/05/20150622072736660388o.jpg'),
(376, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:750;s:6:"height";i:498;s:4:"file";s:33:"2017/05/20150622072736660388o.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"20150622072736660388o-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"20150622072736660388o-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:33:"20150622072736660388o-190x130.jpg";s:5:"width";i:190;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(380, 36, '_disabel_wpdevart_facebook_comment', 'enable'),
(381, 36, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(382, 36, 'versal-pagina', 'Lava jato'),
(383, 36, '_versal-pagina', 'field_591e63ee091c9'),
(384, 95, '_wp_attached_file', '2017/05/2017-05-12t212308z_137625788_mt1aci14792216_rtrmadp_3_soccer-england-wba-che.jpg'),
(385, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:534;s:4:"file";s:88:"2017/05/2017-05-12t212308z_137625788_mt1aci14792216_rtrmadp_3_soccer-england-wba-che.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:88:"2017-05-12t212308z_137625788_mt1aci14792216_rtrmadp_3_soccer-england-wba-che-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:88:"2017-05-12t212308z_137625788_mt1aci14792216_rtrmadp_3_soccer-england-wba-che-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:88:"2017-05-12t212308z_137625788_mt1aci14792216_rtrmadp_3_soccer-england-wba-che-768x410.jpg";s:5:"width";i:768;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:88:"2017-05-12t212308z_137625788_mt1aci14792216_rtrmadp_3_soccer-england-wba-che-190x130.jpg";s:5:"width";i:190;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(389, 35, '_disabel_wpdevart_facebook_comment', 'enable'),
(390, 35, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(391, 35, 'versal-pagina', 'Seleção brasileira'),
(392, 35, '_versal-pagina', 'field_591e63ee091c9'),
(410, 28, '_disabel_wpdevart_facebook_comment', 'enable'),
(411, 28, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(412, 28, 'versal-pagina', 'Cão raivoso'),
(413, 28, '_versal-pagina', 'field_591e63ee091c9'),
(414, 98, '_wp_attached_file', '2017/05/sonhar-com-cachorro-1-e1495288554451.jpg'),
(415, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:781;s:6:"height";i:581;s:4:"file";s:48:"2017/05/sonhar-com-cachorro-1-e1495288554451.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"sonhar-com-cachorro-1-e1495288554451-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"sonhar-com-cachorro-1-e1495288554451-300x223.jpg";s:5:"width";i:300;s:6:"height";i:223;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"sonhar-com-cachorro-1-e1495288554451-768x571.jpg";s:5:"width";i:768;s:6:"height";i:571;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:33:"sonhar-com-cachorro-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:48:"sonhar-com-cachorro-1-e1495288554451-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(422, 9, '_disabel_wpdevart_facebook_comment', 'enable'),
(423, 9, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(424, 9, 'versal-pagina', 'Peruviano asco'),
(425, 9, '_versal-pagina', 'field_591e63ee091c9'),
(429, 7, '_disabel_wpdevart_facebook_comment', 'enable'),
(430, 7, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(431, 7, 'versal-pagina', 'EUA'),
(432, 7, '_versal-pagina', 'field_591e63ee091c9'),
(442, 102, '_edit_lock', '1498593812:1'),
(443, 102, '_edit_last', '1'),
(444, 103, '_wp_attached_file', '2017/05/grazi-e1495237608328.jpg'),
(445, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:599;s:6:"height";i:417;s:4:"file";s:32:"2017/05/grazi-e1495237608328.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"grazi-e1495237608328-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"grazi-e1495237608328-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:17:"grazi-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:32:"grazi-e1495237608328-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(446, 102, '_thumbnail_id', '103'),
(450, 102, '_disabel_wpdevart_facebook_comment', 'enable'),
(451, 102, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(452, 102, 'versal-pagina', 'Grazi'),
(453, 102, '_versal-pagina', 'field_591e63ee091c9'),
(456, 105, '_edit_lock', '1495232676:1'),
(457, 105, '_edit_last', '1'),
(458, 106, '_wp_attached_file', '2017/05/fr9202.jpg'),
(459, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:18:"2017/05/fr9202.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"fr9202-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"fr9202-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"fr9202-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"fr9202-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(460, 105, '_thumbnail_id', '106'),
(464, 105, '_disabel_wpdevart_facebook_comment', 'enable'),
(465, 105, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(466, 105, 'versal-pagina', 'Moda'),
(467, 105, '_versal-pagina', 'field_591e63ee091c9'),
(468, 7, 'wpb_post_views_count', '79'),
(469, 102, 'wpb_post_views_count', '63'),
(470, 28, 'wpb_post_views_count', '6'),
(471, 105, 'wpb_post_views_count', '83'),
(472, 35, 'wpb_post_views_count', '15'),
(473, 36, 'wpb_post_views_count', '3'),
(474, 56, 'wpb_post_views_count', '52'),
(475, 58, 'wpb_post_views_count', '15'),
(476, 103, '_wp_attachment_backup_sizes', 'a:3:{s:9:"full-orig";a:3:{s:5:"width";i:600;s:6:"height";i:745;s:4:"file";s:9:"grazi.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:17:"grazi-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:17:"grazi-242x300.jpg";s:5:"width";i:242;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(505, 111, '_menu_item_type', 'custom'),
(506, 111, '_menu_item_menu_item_parent', '0'),
(507, 111, '_menu_item_object_id', '111'),
(508, 111, '_menu_item_object', 'custom'),
(509, 111, '_menu_item_target', ''),
(510, 111, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(511, 111, '_menu_item_xfn', ''),
(512, 111, '_menu_item_url', '#'),
(514, 112, '_menu_item_type', 'custom'),
(515, 112, '_menu_item_menu_item_parent', '0'),
(516, 112, '_menu_item_object_id', '112'),
(517, 112, '_menu_item_object', 'custom'),
(518, 112, '_menu_item_target', ''),
(519, 112, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(520, 112, '_menu_item_xfn', ''),
(521, 112, '_menu_item_url', '#'),
(523, 113, '_menu_item_type', 'taxonomy'),
(524, 113, '_menu_item_menu_item_parent', '112'),
(525, 113, '_menu_item_object_id', '13'),
(526, 113, '_menu_item_object', 'category') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(527, 113, '_menu_item_target', ''),
(528, 113, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(529, 113, '_menu_item_xfn', ''),
(530, 113, '_menu_item_url', ''),
(532, 114, '_menu_item_type', 'taxonomy'),
(533, 114, '_menu_item_menu_item_parent', '112'),
(534, 114, '_menu_item_object_id', '16'),
(535, 114, '_menu_item_object', 'category'),
(536, 114, '_menu_item_target', ''),
(537, 114, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(538, 114, '_menu_item_xfn', ''),
(539, 114, '_menu_item_url', ''),
(541, 115, '_menu_item_type', 'taxonomy'),
(542, 115, '_menu_item_menu_item_parent', '112'),
(543, 115, '_menu_item_object_id', '12'),
(544, 115, '_menu_item_object', 'category'),
(545, 115, '_menu_item_target', ''),
(546, 115, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(547, 115, '_menu_item_xfn', ''),
(548, 115, '_menu_item_url', ''),
(550, 116, '_menu_item_type', 'taxonomy'),
(551, 116, '_menu_item_menu_item_parent', '112'),
(552, 116, '_menu_item_object_id', '11'),
(553, 116, '_menu_item_object', 'category'),
(554, 116, '_menu_item_target', ''),
(555, 116, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(556, 116, '_menu_item_xfn', ''),
(557, 116, '_menu_item_url', ''),
(559, 9, 'wpb_post_views_count', '53'),
(569, 57, 'wpb_post_views_count', '31'),
(570, 55, 'wpb_post_views_count', '24'),
(571, 98, '_wp_attachment_backup_sizes', 'a:4:{s:9:"full-orig";a:3:{s:5:"width";i:965;s:6:"height";i:605;s:4:"file";s:25:"sonhar-com-cachorro-1.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:33:"sonhar-com-cachorro-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:33:"sonhar-com-cachorro-1-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:17:"medium_large-orig";a:4:{s:4:"file";s:33:"sonhar-com-cachorro-1-768x481.jpg";s:5:"width";i:768;s:6:"height";i:481;s:9:"mime-type";s:10:"image/jpeg";}}'),
(573, 75, '_disabel_wpdevart_facebook_comment', 'enable'),
(574, 75, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(575, 120, '_edit_last', '1'),
(576, 120, '_disabel_wpdevart_facebook_comment', 'enable'),
(577, 120, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(578, 120, '_edit_lock', '1500389054:1'),
(579, 122, '_edit_lock', '1500038549:1'),
(580, 122, '_edit_last', '1'),
(581, 122, '_disabel_wpdevart_facebook_comment', 'enable'),
(582, 122, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(583, 124, '_eventorganiser_schedule_until', '2017-12-29 18:30:00'),
(584, 124, '_edit_lock', '1498630401:1'),
(585, 124, '_edit_last', '1'),
(586, 124, '_thumbnail_id', '68'),
(587, 124, '_eventorganiser_schedule_start_start', '2017-12-29 18:30:00'),
(588, 124, '_eventorganiser_schedule_start_finish', '2017-12-29 19:30:00'),
(589, 124, '_eventorganiser_schedule_last_start', '2017-12-29 18:30:00'),
(590, 124, '_eventorganiser_schedule_last_finish', '2017-12-29 19:30:00'),
(591, 124, '_eventorganiser_event_schedule', 'a:7:{s:7:"all_day";i:0;s:8:"schedule";s:4:"once";s:13:"schedule_meta";s:0:"";s:9:"frequency";i:1;s:7:"exclude";a:0:{}s:7:"include";a:0:{}s:12:"duration_str";s:55:"+0 year +0 month +0 days +1 hours +0 minutes +0 seconds";}'),
(592, 124, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(593, 124, 'wpb_post_views_count', '23'),
(598, 127, '_edit_last', '1'),
(599, 127, '_disabel_wpdevart_facebook_comment', 'enable'),
(600, 127, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(601, 127, '_edit_lock', '1496456779:1'),
(602, 129, '_thumbnail_id', '131'),
(603, 129, '_disabel_wpdevart_facebook_comment', 'enable'),
(604, 129, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(605, 129, 'versal-pagina', 'EUA'),
(606, 129, '_versal-pagina', 'field_591e63ee091c9'),
(607, 129, 'wpb_post_views_count', '49'),
(608, 129, '_dp_original', '7'),
(609, 129, '_edit_lock', '1498599951:1'),
(610, 129, '_edit_last', '1'),
(614, 131, '_wp_attached_file', '2017/06/desafio-musical.jpg'),
(615, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:27:"2017/06/desafio-musical.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"desafio-musical-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"desafio-musical-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"desafio-musical-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"desafio-musical-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:27:"desafio-musical-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(616, 131, 'video_thumbnail', '1'),
(617, 129, '_video_thumbnail', 'http://localhost/defato/wp-content/uploads/2017/06/desafio-musical.jpg'),
(620, 132, '_edit_lock', '1498614918:1'),
(621, 132, '_edit_last', '1'),
(622, 132, '_oembed_649d28cd45c69909002f86e556b211c9', '<iframe width="640" height="360" src="https://www.youtube.com/embed/8sisZ6IM2oc?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(623, 132, '_oembed_time_649d28cd45c69909002f86e556b211c9', '1496457239'),
(627, 132, '_disabel_wpdevart_facebook_comment', 'enable'),
(628, 132, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(629, 132, 'versal-pagina', 'video'),
(630, 132, '_versal-pagina', 'field_591e63ee091c9'),
(631, 134, '_wp_attached_file', '2017/06/dota-cancer-build.jpg'),
(632, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:360;s:4:"file";s:29:"2017/06/dota-cancer-build.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"dota-cancer-build-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"dota-cancer-build-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:29:"dota-cancer-build-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(633, 134, 'video_thumbnail', '1'),
(634, 132, '_video_thumbnail', 'http://localhost/defato/wp-content/uploads/2017/06/dota-cancer-build.jpg'),
(635, 132, '_thumbnail_id', '134'),
(636, 135, '_edit_lock', '1498599922:1'),
(637, 135, '_edit_last', '1'),
(641, 135, '_disabel_wpdevart_facebook_comment', 'enable'),
(642, 135, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(643, 135, 'versal-pagina', 'musica'),
(644, 135, '_versal-pagina', 'field_591e63ee091c9'),
(645, 137, '_wp_attached_file', '2017/06/parodia-despacito.jpg'),
(646, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:29:"2017/06/parodia-despacito.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"parodia-despacito-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"parodia-despacito-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"parodia-despacito-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"parodia-despacito-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:29:"parodia-despacito-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(647, 137, 'video_thumbnail', '1'),
(648, 135, '_video_thumbnail', 'http://localhost/defato/wp-content/uploads/2017/06/parodia-despacito.jpg'),
(649, 135, '_thumbnail_id', '137'),
(650, 135, 'wpb_post_views_count', '47'),
(651, 132, 'wpb_post_views_count', '33'),
(662, 137, 'wpb_post_views_count', '0'),
(761, 147, '__defaults_set', '1'),
(762, 147, 'filter', 'raw'),
(763, 147, 'id_field', 'ID') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(764, 148, '__defaults_set', '1'),
(765, 148, 'filter', 'raw'),
(766, 148, 'id_field', 'ID'),
(770, 149, '__defaults_set', '1'),
(771, 149, 'filter', 'raw'),
(772, 149, 'id_field', 'ID'),
(773, 150, '__defaults_set', '1'),
(774, 150, 'filter', 'raw'),
(775, 150, 'id_field', 'ID'),
(776, 151, '__defaults_set', '1'),
(777, 151, 'filter', 'raw'),
(778, 151, 'id_field', 'ID'),
(782, 152, '__defaults_set', '1'),
(783, 152, 'filter', 'raw'),
(784, 152, 'id_field', 'ID'),
(785, 153, '__defaults_set', '1'),
(786, 153, 'filter', 'raw'),
(787, 153, 'id_field', 'ID'),
(791, 154, '__defaults_set', '1'),
(792, 154, 'filter', 'raw'),
(793, 154, 'id_field', 'ID'),
(794, 155, '__defaults_set', '1'),
(795, 155, 'filter', 'raw'),
(796, 155, 'id_field', 'ID'),
(800, 156, '__defaults_set', '1'),
(801, 156, 'filter', 'raw'),
(802, 156, 'id_field', 'ID'),
(803, 157, '__defaults_set', '1'),
(804, 157, 'filter', 'raw'),
(805, 157, 'id_field', 'ID'),
(809, 158, '__defaults_set', '1'),
(810, 158, 'filter', 'raw'),
(811, 158, 'id_field', 'ID'),
(812, 159, '__defaults_set', '1'),
(813, 159, 'filter', 'raw'),
(814, 159, 'id_field', 'ID'),
(818, 160, '__defaults_set', '1'),
(819, 160, 'filter', 'raw'),
(820, 160, 'id_field', 'ID'),
(821, 161, '__defaults_set', '1'),
(822, 161, 'filter', 'raw'),
(823, 161, 'id_field', 'ID'),
(827, 162, '__defaults_set', '1'),
(828, 162, 'filter', 'raw'),
(829, 162, 'id_field', 'ID'),
(830, 163, '__defaults_set', '1'),
(831, 163, 'filter', 'raw'),
(832, 163, 'id_field', 'ID'),
(836, 164, '__defaults_set', '1'),
(837, 164, 'filter', 'raw'),
(838, 164, 'id_field', 'ID'),
(855, 66, 'wpb_post_views_count', '49'),
(856, 169, '_edit_lock', '1498627295:1'),
(857, 169, '_edit_last', '1'),
(858, 170, '_wp_attached_file', '2017/06/MG_4680.jpg'),
(859, 170, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:1000;s:4:"file";s:19:"2017/06/MG_4680.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"MG_4680-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"MG_4680-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"MG_4680-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"MG_4680-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:19:"MG_4680-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.5";s:6:"credit";s:12:"Sanley Neves";s:6:"camera";s:19:"Canon EOS REBEL T3i";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1456779400";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:4:"6400";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(860, 169, '_thumbnail_id', '170'),
(864, 169, '_disabel_wpdevart_facebook_comment', 'enable'),
(865, 169, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(866, 169, 'versal-pagina', 'Fotos'),
(867, 169, '_versal-pagina', 'field_591e63ee091c9'),
(868, 169, 'wpb_post_views_count', '41'),
(870, 173, '_thumbnail_id', '170'),
(871, 173, '_disabel_wpdevart_facebook_comment', 'enable'),
(872, 173, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(873, 173, 'versal-pagina', 'Fotos'),
(874, 173, '_versal-pagina', 'field_591e63ee091c9'),
(875, 173, 'wpb_post_views_count', '20'),
(876, 173, '_dp_original', '169'),
(877, 173, '_edit_lock', '1498627497:1'),
(878, 173, '_edit_last', '1'),
(882, 175, '_thumbnail_id', '170'),
(883, 175, '_disabel_wpdevart_facebook_comment', 'enable'),
(884, 175, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(885, 175, 'versal-pagina', 'Fotos'),
(886, 175, '_versal-pagina', 'field_591e63ee091c9'),
(887, 175, 'wpb_post_views_count', '35'),
(889, 175, '_dp_original', '173'),
(890, 175, '_edit_lock', '1498627253:1'),
(891, 175, '_edit_last', '1'),
(898, 65, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(899, 52, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(900, 52, 'wpb_post_views_count', '57'),
(901, 65, 'wpb_post_views_count', '31'),
(902, 66, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(907, 181, '_edit_lock', '1498610791:1'),
(908, 181, '_edit_last', '1'),
(909, 181, 'field_593c39c875925', 'a:20:{s:3:"key";s:19:"field_593c39c875925";s:5:"label";s:3:"Ano";s:4:"name";s:3:"ano";s:4:"type";s:19:"dynamic_year_select";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:18:"oldest_year_method";s:8:"relative";s:22:"oldest_year_exact_year";s:4:"2017";s:25:"oldest_year_relative_year";s:2:"20";s:35:"oldest_year_relative_year_direction";s:6:"before";s:18:"newest_year_method";s:5:"exact";s:22:"newest_year_exact_year";s:4:"2017";s:25:"newest_year_relative_year";s:2:"20";s:35:"newest_year_relative_year_direction";s:5:"after";s:9:"year_step";s:1:"1";s:8:"order_by";s:13:"chronological";s:18:"current_year_allow";s:1:"0";s:18:"current_year_label";s:7:"Current";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_593c3ac77592a";s:8:"operator";s:2:"==";s:5:"value";s:6:"Ação";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(910, 181, 'field_593c39e675926', 'a:11:{s:3:"key";s:19:"field_593c39e675926";s:5:"label";s:7:"Estreia";s:4:"name";s:7:"estreia";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"date_format";s:7:"yymmddd";s:14:"display_format";s:8:"dd/mm/yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(911, 181, 'field_593c3a4775927', 'a:14:{s:3:"key";s:19:"field_593c3a4775927";s:5:"label";s:4:"Pais";s:4:"name";s:4:"pais";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(912, 181, 'field_593c3a8375928', 'a:14:{s:3:"key";s:19:"field_593c3a8375928";s:5:"label";s:9:"Duração";s:4:"name";s:7:"duracao";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_594de80db72f6";s:8:"operator";s:2:"==";s:5:"value";s:8:"Estréia";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(913, 181, 'field_593c3ab675929', 'a:14:{s:3:"key";s:19:"field_593c3ab675929";s:5:"label";s:13:"Distribuidora";s:4:"name";s:13:"distribuidora";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(914, 181, 'field_593c3ac77592a', 'a:13:{s:3:"key";s:19:"field_593c3ac77592a";s:5:"label";s:7:"Gênero";s:4:"name";s:6:"genero";s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:7:"choices";a:29:{s:6:"Ação";s:6:"Ação";s:10:"Animação";s:10:"Animação";s:8:"Aventura";s:8:"Aventura";s:9:"Chanchada";s:9:"Chanchada";s:18:"Cinema catástrofe";s:18:"Cinema catástrofe";s:8:"Comédia";s:8:"Comédia";s:19:"Comédia romântica";s:19:"Comédia romântica";s:19:"Comédia dramática";s:19:"Comédia dramática";s:18:"Comédia de ação";s:18:"Comédia de ação";s:4:"Cult";s:4:"Cult";s:14:"Documentários";s:14:"Documentários";s:5:"Drama";s:5:"Drama";s:10:"Espionagem";s:10:"Espionagem";s:8:"Erótico";s:8:"Erótico";s:8:"Fantasia";s:8:"Fantasia";s:21:"Faroeste (ou western)";s:21:"Faroeste (ou western)";s:20:"Ficção científica";s:20:"Ficção científica";s:17:"Franchise/Séries";s:17:"Franchise/Séries";s:6:"Guerra";s:6:"Guerra";s:9:"Machinima";s:9:"Machinima";s:7:"Musical";s:7:"Musical";s:10:"Filme noir";s:10:"Filme noir";s:8:"Policial";s:8:"Policial";s:14:"Pornochanchada";s:14:"Pornochanchada";s:13:"Pornográfico";s:13:"Pornográfico";s:7:"Romance";s:7:"Romance";s:8:"Suspense";s:8:"Suspense";s:18:"Terror (ou horror)";s:18:"Terror (ou horror)";s:5:"Trash";s:5:"Trash";}s:12:"other_choice";s:1:"0";s:17:"save_other_choice";s:1:"0";s:13:"default_value";s:0:"";s:6:"layout";s:8:"vertical";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_594de80db72f6";s:8:"operator";s:2:"==";s:5:"value";s:8:"Estréia";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(916, 181, 'position', 'normal'),
(917, 181, 'layout', 'no_box'),
(918, 181, 'hide_on_screen', 'a:5:{i:0;s:13:"custom_fields";i:1;s:10:"discussion";i:2;s:8:"comments";i:3;s:4:"slug";i:4;s:15:"send-trackbacks";}'),
(952, 184, '_edit_last', '1'),
(953, 184, '_disabel_wpdevart_facebook_comment', 'enable'),
(954, 184, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(955, 184, '_edit_lock', '1497119867:1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(957, 186, '_wp_attached_file', '2017/06/timthumb.php_.jpg'),
(958, 186, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:375;s:4:"file";s:25:"2017/06/timthumb.php_.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"timthumb.php_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"timthumb.php_-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:25:"timthumb.php_-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(963, 188, '_wp_attached_file', '2017/06/timthumb.php_-1.jpg'),
(964, 188, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:375;s:4:"file";s:27:"2017/06/timthumb.php_-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"timthumb.php_-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"timthumb.php_-1-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:27:"timthumb.php_-1-250x200.jpg";s:5:"width";i:250;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(994, 190, '_edit_lock', '1498588326:1'),
(995, 190, '_edit_last', '1'),
(996, 190, 'field_593c498cff944', 'a:11:{s:3:"key";s:19:"field_593c498cff944";s:5:"label";s:10:"Background";s:4:"name";s:10:"background";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(998, 190, 'position', 'normal'),
(999, 190, 'layout', 'no_box'),
(1000, 190, 'hide_on_screen', ''),
(1001, 192, '_edit_lock', '1498575271:1'),
(1002, 192, '_edit_last', '1'),
(1012, 195, '_edit_lock', '1498429547:1'),
(1013, 195, '_edit_last', '1'),
(1014, 196, '_wp_attached_file', '2017/06/capa.jpg'),
(1015, 196, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:790;s:4:"file";s:16:"2017/06/capa.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"capa-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"capa-209x300.jpg";s:5:"width";i:209;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:16:"capa-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1023, 195, '_disabel_wpdevart_facebook_comment', 'enable'),
(1024, 195, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1025, 195, 'link_issuu', 'https://issuu.com/grupodefato/docs/prospecto_comercial_defato_sa__de_i'),
(1026, 195, '_link_issuu', 'field_5950382e59139'),
(1027, 195, 'capa', '196'),
(1028, 195, '_capa', 'field_594d7d0b40dd0'),
(1029, 195, 'versal-pagina', 'ss'),
(1030, 195, '_versal-pagina', 'field_591e63ee091c9'),
(1036, 195, '_thumbnail_id', '196'),
(1038, 195, '_oembed_47e22c05cfd4d4d1c8d24d34aff121fe', '{{unknown}}'),
(1040, 181, 'field_594de80db72f6', 'a:12:{s:3:"key";s:19:"field_594de80db72f6";s:5:"label";s:3:"Tag";s:4:"name";s:3:"tag";s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:7:"choices";a:2:{s:8:"Estréia";s:8:"Estréia";s:9:"Em cartaz";s:9:"Em cartaz";}s:13:"default_value";s:0:"";s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:19:"field_593c3ac77592a";s:8:"operator";s:2:"==";s:5:"value";s:6:"Ação";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1050, 200, '_disabel_wpdevart_facebook_comment', 'enable'),
(1051, 200, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1052, 200, 'link_issuu', 'https://issuu.com/grupodefato/docs/jornal_defato_ed_36_-_b'),
(1053, 200, '_link_issuu', 'field_5950382e59139'),
(1054, 200, 'capa', '196'),
(1055, 200, '_capa', 'field_594d7d0b40dd0'),
(1056, 200, 'versal-pagina', 'ss'),
(1057, 200, '_versal-pagina', 'field_591e63ee091c9'),
(1058, 200, '_thumbnail_id', '196'),
(1059, 200, '_oembed_47e22c05cfd4d4d1c8d24d34aff121fe', '{{unknown}}'),
(1060, 200, '_dp_original', '195'),
(1061, 200, '_edit_lock', '1498612936:1'),
(1062, 200, '_edit_last', '1'),
(1064, 195, '_oembed_040fedd6588a6db71848c65ef3f87b67', '<div data-url="https://issuu.com/grupodefato/docs/prospecto_comercial_defato_sa__de_i" style="width: 640px; height: 424px;" class="issuuembed"></div><script type="text/javascript" src="//e.issuu.com/embed.js" async="true"></script>'),
(1065, 195, '_oembed_time_040fedd6588a6db71848c65ef3f87b67', '1498429671'),
(1067, 195, 'wpb_post_views_count', '8'),
(1069, 200, '_oembed_040fedd6588a6db71848c65ef3f87b67', '<div data-url="https://issuu.com/grupodefato/docs/prospecto_comercial_defato_sa__de_i" style="width: 640px; height: 424px;" class="issuuembed"></div><script type="text/javascript" src="//e.issuu.com/embed.js" async="true"></script>'),
(1070, 200, '_oembed_time_040fedd6588a6db71848c65ef3f87b67', '1498611143'),
(1073, 205, '_edit_lock', '1498611149:1'),
(1074, 205, '_edit_last', '1'),
(1075, 205, 'field_5950382e59139', 'a:14:{s:3:"key";s:19:"field_5950382e59139";s:5:"label";s:10:"Link Issuu";s:4:"name";s:10:"link_issuu";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1077, 205, 'position', 'normal'),
(1078, 205, 'layout', 'no_box'),
(1079, 205, 'hide_on_screen', ''),
(1086, 208, '_menu_item_type', 'taxonomy'),
(1087, 208, '_menu_item_menu_item_parent', '0'),
(1088, 208, '_menu_item_object_id', '7'),
(1089, 208, '_menu_item_object', 'category'),
(1090, 208, '_menu_item_target', ''),
(1091, 208, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1092, 208, '_menu_item_xfn', ''),
(1093, 208, '_menu_item_url', ''),
(1094, 208, '_menu_item_orphaned', '1498436796'),
(1104, 210, '_menu_item_type', 'post_type'),
(1105, 210, '_menu_item_menu_item_parent', '0'),
(1106, 210, '_menu_item_object_id', '184'),
(1107, 210, '_menu_item_object', 'page'),
(1108, 210, '_menu_item_target', ''),
(1109, 210, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1110, 210, '_menu_item_xfn', ''),
(1111, 210, '_menu_item_url', ''),
(1113, 211, '_menu_item_type', 'post_type'),
(1114, 211, '_menu_item_menu_item_parent', '0'),
(1115, 211, '_menu_item_object_id', '127'),
(1116, 211, '_menu_item_object', 'page'),
(1117, 211, '_menu_item_target', ''),
(1118, 211, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1119, 211, '_menu_item_xfn', ''),
(1120, 211, '_menu_item_url', ''),
(1140, 214, '_menu_item_type', 'post_type'),
(1141, 214, '_menu_item_menu_item_parent', '0'),
(1142, 214, '_menu_item_object_id', '120'),
(1143, 214, '_menu_item_object', 'page'),
(1144, 214, '_menu_item_target', ''),
(1145, 214, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1146, 214, '_menu_item_xfn', ''),
(1147, 214, '_menu_item_url', ''),
(1149, 215, '_menu_item_type', 'post_type'),
(1150, 215, '_menu_item_menu_item_parent', '0'),
(1151, 215, '_menu_item_object_id', '75'),
(1152, 215, '_menu_item_object', 'page'),
(1153, 215, '_menu_item_target', ''),
(1154, 215, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1155, 215, '_menu_item_xfn', ''),
(1156, 215, '_menu_item_url', ''),
(1187, 225, '_menu_item_type', 'post_type'),
(1188, 225, '_menu_item_menu_item_parent', '0'),
(1189, 225, '_menu_item_object_id', '122'),
(1190, 225, '_menu_item_object', 'page'),
(1191, 225, '_menu_item_target', ''),
(1192, 225, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1193, 225, '_menu_item_xfn', ''),
(1194, 225, '_menu_item_url', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1332, 237, '_wp_attached_file', '2017/05/header_1.png'),
(1333, 237, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:284;s:4:"file";s:20:"2017/05/header_1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"header_1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"header_1-300x85.png";s:5:"width";i:300;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"header_1-768x218.png";s:5:"width";i:768;s:6:"height";i:218;s:9:"mime-type";s:9:"image/png";}s:6:"ug_big";a:4:{s:4:"file";s:20:"header_1-768x218.png";s:5:"width";i:768;s:6:"height";i:218;s:9:"mime-type";s:9:"image/png";}s:10:"post_thumb";a:4:{s:4:"file";s:20:"header_1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1339, 102, 'background', '237'),
(1340, 102, '_background', 'field_593c498cff944'),
(1346, 56, 'background', '264'),
(1347, 56, '_background', 'field_593c498cff944'),
(1383, 242, '_wp_attached_file', '2017/06/a-múmia.jpg'),
(1384, 242, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:654;s:6:"height";i:960;s:4:"file";s:20:"2017/06/a-múmia.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"a-múmia-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"a-múmia-204x300.jpg";s:5:"width";i:204;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:20:"a-múmia-523x768.jpg";s:5:"width";i:523;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:20:"a-múmia-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1425, 245, '_wp_attached_file', '2017/06/conteudo_77771.jpg'),
(1426, 245, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1011;s:6:"height";i:1500;s:4:"file";s:26:"2017/06/conteudo_77771.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"conteudo_77771-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"conteudo_77771-202x300.jpg";s:5:"width";i:202;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"conteudo_77771-768x1139.jpg";s:5:"width";i:768;s:6:"height";i:1139;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"conteudo_77771-690x1024.jpg";s:5:"width";i:690;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:26:"conteudo_77771-518x768.jpg";s:5:"width";i:518;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:26:"conteudo_77771-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1528, 252, '_edit_lock', '1498513600:1'),
(1529, 252, '_edit_last', '1'),
(1545, 252, '_disabel_wpdevart_facebook_comment', 'enable'),
(1546, 252, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1547, 252, 'tag', 'Estréia'),
(1548, 252, '_tag', 'field_594de80db72f6'),
(1549, 252, 'ano', '2017'),
(1550, 252, '_ano', 'field_593c39c875925'),
(1551, 252, 'estreia', '2017061313'),
(1552, 252, '_estreia', 'field_593c39e675926'),
(1553, 252, 'pais', 'Brasil'),
(1554, 252, '_pais', 'field_593c3a4775927'),
(1555, 252, 'duracao', '1h30'),
(1556, 252, '_duracao', 'field_593c3a8375928'),
(1557, 252, 'distribuidora', 'Sony Pictures'),
(1558, 252, '_distribuidora', 'field_593c3ab675929'),
(1559, 252, 'genero', 'Chanchada'),
(1560, 252, '_genero', 'field_593c3ac77592a'),
(1561, 252, '_thumbnail_id', '245'),
(1563, 252, 'wpb_post_views_count', '2'),
(1576, 254, '_edit_lock', '1498512734:1'),
(1577, 254, '_edit_last', '1'),
(1593, 254, '_disabel_wpdevart_facebook_comment', 'enable'),
(1594, 254, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1595, 254, 'tag', 'Em cartaz'),
(1596, 254, '_tag', 'field_594de80db72f6'),
(1597, 254, 'ano', '2017'),
(1598, 254, '_ano', 'field_593c39c875925'),
(1599, 254, 'estreia', '2017062121'),
(1600, 254, '_estreia', 'field_593c39e675926'),
(1601, 254, 'pais', 'Brasil'),
(1602, 254, '_pais', 'field_593c3a4775927'),
(1603, 254, 'duracao', '2h15'),
(1604, 254, '_duracao', 'field_593c3a8375928'),
(1605, 254, 'distribuidora', 'Fox Film do Brasil'),
(1606, 254, '_distribuidora', 'field_593c3ab675929'),
(1607, 254, 'genero', 'Comédia'),
(1608, 254, '_genero', 'field_593c3ac77592a'),
(1609, 254, '_thumbnail_id', '242'),
(1611, 257, '_edit_lock', '1498512821:1'),
(1612, 257, '_edit_last', '1'),
(1613, 257, '_thumbnail_id', '186'),
(1629, 257, '_disabel_wpdevart_facebook_comment', 'enable'),
(1630, 257, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1631, 257, 'tag', 'Estréia'),
(1632, 257, '_tag', 'field_594de80db72f6'),
(1633, 257, 'ano', '2016'),
(1634, 257, '_ano', 'field_593c39c875925'),
(1635, 257, 'estreia', '2017062222'),
(1636, 257, '_estreia', 'field_593c39e675926'),
(1637, 257, 'pais', 'Brasil'),
(1638, 257, '_pais', 'field_593c3a4775927'),
(1639, 257, 'duracao', '1h30'),
(1640, 257, '_duracao', 'field_593c3a8375928'),
(1641, 257, 'distribuidora', 'Sony Pictures'),
(1642, 257, '_distribuidora', 'field_593c3ab675929'),
(1643, 257, 'genero', 'Comédia romântica'),
(1644, 257, '_genero', 'field_593c3ac77592a'),
(1645, 254, 'wpb_post_views_count', '2'),
(1646, 259, '_edit_lock', '1499706798:1'),
(1647, 259, '_edit_last', '1'),
(1648, 259, '_thumbnail_id', '188'),
(1664, 259, '_disabel_wpdevart_facebook_comment', 'enable'),
(1665, 259, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1666, 259, 'tag', 'Em cartaz'),
(1667, 259, '_tag', 'field_594de80db72f6'),
(1668, 259, 'ano', '2014'),
(1669, 259, '_ano', 'field_593c39c875925'),
(1670, 259, 'estreia', '2017061919'),
(1671, 259, '_estreia', 'field_593c39e675926'),
(1672, 259, 'pais', 'Brasil'),
(1673, 259, '_pais', 'field_593c3a4775927'),
(1674, 259, 'duracao', '2h15'),
(1675, 259, '_duracao', 'field_593c3a8375928'),
(1676, 259, 'distribuidora', 'Sony Pictures'),
(1677, 259, '_distribuidora', 'field_593c3ab675929'),
(1678, 259, 'genero', 'Aventura'),
(1679, 259, '_genero', 'field_593c3ac77592a'),
(1695, 192, '_disabel_wpdevart_facebook_comment', 'enable'),
(1696, 192, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1701, 192, 'background', '264'),
(1702, 192, '_background', 'field_593c498cff944'),
(1703, 259, 'wpb_post_views_count', '19'),
(1704, 264, '_wp_attached_file', '2017/05/bg-banner1.png'),
(1705, 264, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:440;s:4:"file";s:22:"2017/05/bg-banner1.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"bg-banner1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"bg-banner1-300x103.png";s:5:"width";i:300;s:6:"height";i:103;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:22:"bg-banner1-768x264.png";s:5:"width";i:768;s:6:"height";i:264;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:23:"bg-banner1-1024x352.png";s:5:"width";i:1024;s:6:"height";i:352;s:9:"mime-type";s:9:"image/png";}s:6:"ug_big";a:4:{s:4:"file";s:22:"bg-banner1-768x264.png";s:5:"width";i:768;s:6:"height";i:264;s:9:"mime-type";s:9:"image/png";}s:10:"post_thumb";a:4:{s:4:"file";s:22:"bg-banner1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1711, 200, 'wpb_post_views_count', '0'),
(1736, 80, 'rule', 'a:5:{s:5:"param";s:8:"taxonomy";s:8:"operator";s:2:"!=";s:5:"value";s:2:"34";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1737, 80, 'rule', 'a:5:{s:5:"param";s:8:"taxonomy";s:8:"operator";s:2:"!=";s:5:"value";s:2:"36";s:8:"order_no";i:1;s:8:"group_no";i:0;}'),
(1738, 80, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:2;s:8:"group_no";i:0;}'),
(1740, 269, '_edit_lock', '1498611238:1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1741, 269, '_edit_last', '1'),
(1742, 269, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1743, 269, 'position', 'normal'),
(1744, 269, 'layout', 'no_box'),
(1745, 269, 'hide_on_screen', 'a:5:{i:0;s:13:"custom_fields";i:1;s:10:"discussion";i:2;s:8:"comments";i:3;s:4:"slug";i:4;s:15:"send-trackbacks";}'),
(1748, 270, '_edit_lock', '1498594863:1'),
(1749, 270, '_edit_last', '1'),
(1750, 271, '_wp_attached_file', '2017/06/diminuator.jpg'),
(1751, 271, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:187;s:4:"file";s:22:"2017/06/diminuator.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"diminuator-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1752, 270, '_thumbnail_id', '271'),
(1758, 270, '_disabel_wpdevart_facebook_comment', 'enable'),
(1759, 270, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1760, 270, 'background', '237'),
(1761, 270, '_background', 'field_593c498cff944'),
(1762, 270, 'versal-pagina', 'SITUAÇÃO ECONÔMICA'),
(1763, 270, '_versal-pagina', 'field_591e63ee091c9'),
(1764, 270, 'wpb_post_views_count', '16'),
(1786, 190, 'rule', 'a:5:{s:5:"param";s:11:"ef_taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:8:"category";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1794, 278, '_edit_lock', '1498628202:1'),
(1795, 278, '_edit_last', '1'),
(1796, 279, '_wp_attached_file', '2017/06/foto_16032017114204.jpg'),
(1797, 279, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:399;s:4:"file";s:31:"2017/06/foto_16032017114204.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"foto_16032017114204-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"foto_16032017114204-300x193.jpg";s:5:"width";i:300;s:6:"height";i:193;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:31:"foto_16032017114204-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1798, 278, '_thumbnail_id', '348'),
(1802, 278, '_disabel_wpdevart_facebook_comment', 'enable'),
(1803, 278, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1804, 278, 'versal-pagina', 'NOVA TEMPORADA'),
(1805, 278, '_versal-pagina', 'field_591e63ee091c9'),
(1808, 278, 'wpb_post_views_count', '16'),
(1818, 270, '_wp_trash_meta_status', 'publish'),
(1819, 270, '_wp_trash_meta_time', '1498595016'),
(1820, 270, '_wp_desired_post_slug', 'valerio-anuncia-que-nao-vai-disputar-a-2a-divisao'),
(1821, 283, '_edit_lock', '1498627990:1'),
(1822, 283, '_edit_last', '1'),
(1823, 283, '_thumbnail_id', '347'),
(1827, 283, '_disabel_wpdevart_facebook_comment', 'enable'),
(1828, 283, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1829, 283, 'versal-pagina', 'Quase fechado'),
(1830, 283, '_versal-pagina', 'field_591e63ee091c9'),
(1831, 283, 'wpb_post_views_count', '14'),
(1857, 181, 'rule', 'a:5:{s:5:"param";s:8:"taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:2:"34";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1860, 205, 'rule', 'a:5:{s:5:"param";s:8:"taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:2:"36";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1866, 294, '_edit_lock', '1500300643:1'),
(1868, 305, '_edit_lock', '1498612855:1'),
(1869, 305, '_edit_last', '1'),
(1871, 294, '_edit_last', '1'),
(1872, 302, '_edit_lock', '1498612813:1'),
(1873, 302, '_edit_last', '1'),
(1874, 309, '_wp_trash_meta_status', 'publish'),
(1875, 309, '_wp_trash_meta_time', '1498612965'),
(1876, 309, '_wp_desired_post_slug', 'group_595304e2bcfc7'),
(1877, 304, '_edit_lock', '1498612828:1'),
(1878, 307, '_edit_lock', '1499999734:1'),
(1880, 307, '_edit_last', '1'),
(1881, 310, '_edit_lock', '1498618925:1'),
(1882, 310, '_edit_last', '1'),
(1885, 310, '_thumbnail_id', '314'),
(1887, 310, '_disabel_wpdevart_facebook_comment', 'enable'),
(1888, 310, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1889, 310, 'versal-pagina', 'CULINÁRIA'),
(1890, 310, '_versal-pagina', 'field_591e63ee091c9'),
(1893, 310, 'wpb_post_views_count', '12'),
(1903, 313, '_wp_attached_file', '2017/06/chef-450x300.jpg'),
(1904, 313, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:300;s:4:"file";s:24:"2017/06/chef-450x300.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"chef-450x300-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"chef-450x300-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:24:"chef-450x300-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1906, 314, '_wp_attached_file', '2017/06/slide_347242_3676423_free.jpg'),
(1907, 314, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:480;s:4:"file";s:37:"2017/06/slide_347242_3676423_free.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"slide_347242_3676423_free-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"slide_347242_3676423_free-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:37:"slide_347242_3676423_free-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1911, 315, '_wp_attached_file', '2017/06/300x300x4-501bcefc6a8c8a9d8e71904d2429c31ea80b8b5bf8bba.jpg'),
(1912, 315, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:67:"2017/06/300x300x4-501bcefc6a8c8a9d8e71904d2429c31ea80b8b5bf8bba.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:67:"300x300x4-501bcefc6a8c8a9d8e71904d2429c31ea80b8b5bf8bba-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:67:"300x300x4-501bcefc6a8c8a9d8e71904d2429c31ea80b8b5bf8bba-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1914, 316, '_wp_attached_file', '2017/06/roberto.jpg'),
(1915, 316, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:19:"2017/06/roberto.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"roberto-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"roberto-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:19:"roberto-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1917, 317, '_edit_lock', '1500407756:1'),
(1918, 317, '_edit_last', '1'),
(1919, 318, '_wp_attached_file', '2017/06/a71q4193_8fcTwi1.jpg'),
(1920, 318, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1066;s:4:"file";s:28:"2017/06/a71q4193_8fcTwi1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"a71q4193_8fcTwi1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"a71q4193_8fcTwi1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"a71q4193_8fcTwi1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"a71q4193_8fcTwi1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:28:"a71q4193_8fcTwi1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:28:"a71q4193_8fcTwi1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1921, 317, '_thumbnail_id', '318'),
(1923, 317, '_disabel_wpdevart_facebook_comment', 'enable'),
(1924, 317, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1925, 317, 'versal-pagina', 'Botafogo'),
(1926, 317, '_versal-pagina', 'field_591e63ee091c9'),
(1929, 317, 'wpb_post_views_count', '3'),
(1930, 320, '_edit_lock', '1499195076:1'),
(1931, 320, '_edit_last', '1'),
(1932, 321, '_wp_attached_file', '2017/06/nat_e_gemeas_085.jpg'),
(1933, 321, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:413;s:4:"file";s:28:"2017/06/nat_e_gemeas_085.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"nat_e_gemeas_085-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"nat_e_gemeas_085-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:28:"nat_e_gemeas_085-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1934, 320, '_thumbnail_id', '321'),
(1936, 320, '_disabel_wpdevart_facebook_comment', 'enable'),
(1937, 320, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1938, 320, 'versal-pagina', 'Famosos'),
(1939, 320, '_versal-pagina', 'field_591e63ee091c9'),
(1942, 320, 'wpb_post_views_count', '10'),
(1943, 323, '_edit_lock', '1500407712:1'),
(1944, 323, '_edit_last', '1'),
(1945, 324, '_wp_attached_file', '2017/06/plenario-da-camara.jpg'),
(1946, 324, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:643;s:4:"file";s:30:"2017/06/plenario-da-camara.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"plenario-da-camara-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"plenario-da-camara-300x193.jpg";s:5:"width";i:300;s:6:"height";i:193;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"plenario-da-camara-768x494.jpg";s:5:"width";i:768;s:6:"height";i:494;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:30:"plenario-da-camara-768x494.jpg";s:5:"width";i:768;s:6:"height";i:494;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:30:"plenario-da-camara-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1947, 323, '_thumbnail_id', '324'),
(1949, 323, '_disabel_wpdevart_facebook_comment', 'enable'),
(1950, 323, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1951, 323, 'versal-pagina', 'Brasilia'),
(1952, 323, '_versal-pagina', 'field_591e63ee091c9'),
(1955, 323, 'wpb_post_views_count', '8'),
(1959, 327, '_edit_lock', '1500351870:1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1960, 327, '_edit_last', '1'),
(1961, 328, '_wp_attached_file', '2017/06/perez.jpg'),
(1962, 328, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:547;s:4:"file";s:17:"2017/06/perez.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"perez-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"perez-300x164.jpg";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"perez-768x420.jpg";s:5:"width";i:768;s:6:"height";i:420;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:17:"perez-768x420.jpg";s:5:"width";i:768;s:6:"height";i:420;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:17:"perez-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1963, 327, '_oembed_3a101007b128d5160d92ffe9bbb7821b', '<iframe width="640" height="360" src="https://www.youtube.com/embed/saIforgUvN0?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(1964, 327, '_oembed_time_3a101007b128d5160d92ffe9bbb7821b', '1500351869'),
(1965, 327, '_thumbnail_id', '328'),
(1967, 327, '_disabel_wpdevart_facebook_comment', 'enable'),
(1968, 327, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1969, 327, 'versal-pagina', 'Venezuela'),
(1970, 327, '_versal-pagina', 'field_591e63ee091c9'),
(1973, 330, '_wp_attached_file', '2017/06/maduro-diz-que-predio-da-suprema.jpg'),
(1974, 330, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:360;s:4:"file";s:44:"2017/06/maduro-diz-que-predio-da-suprema.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"maduro-diz-que-predio-da-suprema-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"maduro-diz-que-predio-da-suprema-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:44:"maduro-diz-que-predio-da-suprema-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1975, 330, 'video_thumbnail', '1'),
(1976, 327, '_video_thumbnail', 'http://localhost/defato/wp-content/uploads/2017/06/maduro-diz-que-predio-da-suprema.jpg'),
(1977, 327, 'wpb_post_views_count', '24'),
(1978, 331, '_edit_lock', '1498627767:1'),
(1979, 331, '_edit_last', '1'),
(1980, 331, '_oembed_806c1217c4cc00c8e6a5336cad36ca5b', '<iframe width="640" height="360" src="https://www.youtube.com/embed/vH1dZjxbu-A?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(1981, 331, '_oembed_time_806c1217c4cc00c8e6a5336cad36ca5b', '1498624347'),
(1983, 331, '_disabel_wpdevart_facebook_comment', 'enable'),
(1984, 331, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(1985, 331, 'versal-pagina', 'Acidente'),
(1986, 331, '_versal-pagina', 'field_591e63ee091c9'),
(1989, 333, '_wp_attached_file', '2017/06/motociclista-bate-em-viaduto-na.jpg'),
(1990, 333, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:360;s:4:"file";s:43:"2017/06/motociclista-bate-em-viaduto-na.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"motociclista-bate-em-viaduto-na-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"motociclista-bate-em-viaduto-na-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:43:"motociclista-bate-em-viaduto-na-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1991, 333, 'video_thumbnail', '1'),
(1992, 331, '_video_thumbnail', 'http://localhost/defato/wp-content/uploads/2017/06/motociclista-bate-em-viaduto-na.jpg'),
(1993, 331, '_thumbnail_id', '334'),
(1994, 331, 'wpb_post_views_count', '15'),
(1995, 334, '_wp_attached_file', '2017/06/bombeiro-ok.jpg'),
(1996, 334, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:840;s:6:"height";i:473;s:4:"file";s:23:"2017/06/bombeiro-ok.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"bombeiro-ok-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"bombeiro-ok-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"bombeiro-ok-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:23:"bombeiro-ok-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:23:"bombeiro-ok-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1999, 335, '_wp_attached_file', '2017/06/moto-1.jpg'),
(2000, 335, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:18:"2017/06/moto-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"moto-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"moto-1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"moto-1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"moto-1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:18:"moto-1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:18:"moto-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2001, 336, '_wp_attached_file', '2017/06/moto-3.jpg'),
(2002, 336, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:840;s:6:"height";i:473;s:4:"file";s:18:"2017/06/moto-3.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"moto-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"moto-3-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"moto-3-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:18:"moto-3-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:18:"moto-3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2003, 337, '_wp_attached_file', '2017/06/moto-4.jpg'),
(2004, 337, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:840;s:6:"height";i:473;s:4:"file";s:18:"2017/06/moto-4.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"moto-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"moto-4-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"moto-4-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:18:"moto-4-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:18:"moto-4-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2013, 339, '_edit_lock', '1498625312:1'),
(2014, 339, '_edit_last', '1'),
(2015, 340, '_wp_attached_file', '2017/06/remedio.jpg'),
(2016, 340, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:840;s:6:"height";i:525;s:4:"file";s:19:"2017/06/remedio.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"remedio-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"remedio-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"remedio-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:19:"remedio-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:19:"remedio-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"8";s:6:"credit";s:24:"Getty Images/iStockphoto";s:6:"camera";s:14:"Canon EOS 600D";s:7:"caption";s:68:"diferent Tablets pills capsule heap mix isolated on white background";s:17:"created_timestamp";s:10:"1436617911";s:9:"copyright";s:13:"phongphan5922";s:12:"focal_length";s:3:"100";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:17:"0.076923076923077";s:5:"title";s:39:"diferent Tablets pills capsule heap mix";s:11:"orientation";s:1:"0";s:8:"keywords";a:32:{i:0;s:7:"Vitamin";i:1;s:4:"Pill";i:2;s:15:"Anti-Depressant";i:3;s:13:"Single Object";i:4;s:19:"Alternative Therapy";i:5;s:10:"Antibiotic";i:6;s:21:"Prescription Medicine";i:7;s:8:"Pharmacy";i:8;s:7:"Capsule";i:9;s:22:"Nutritional Supplement";i:10;s:9:"Flu Virus";i:11;s:11:"Backgrounds";i:12;s:8:"Recovery";i:13;s:10:"Assistance";i:14;s:4:"Care";i:15;s:13:"Multi Colored";i:16;s:5:"White";i:17;s:3:"Red";i:18;s:6:"Colors";i:19;s:4:"Heap";i:20;s:23:"Healthcare And Medicine";i:21;s:7:"Science";i:22;s:10:"Lifestyles";i:23;s:8:"Close-up";i:24;s:10:"Human Hand";i:25;s:6:"Doctor";i:26;s:6:"People";i:27;s:8:"Medicine";i:28;s:9:"Equipment";i:29;s:6:"Bottle";i:30;s:4:"Life";i:31;s:8:"Isolated";}}}'),
(2017, 339, '_thumbnail_id', '340'),
(2019, 339, '_disabel_wpdevart_facebook_comment', 'enable'),
(2020, 339, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(2021, 339, 'versal-pagina', 'Remedio'),
(2022, 339, '_versal-pagina', 'field_591e63ee091c9'),
(2031, 342, '_wp_attached_file', '2017/06/colunista-fernando-weiss.png'),
(2032, 342, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:280;s:6:"height";i:216;s:4:"file";s:36:"2017/06/colunista-fernando-weiss.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"colunista-fernando-weiss-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:10:"post_thumb";a:4:{s:4:"file";s:36:"colunista-fernando-weiss-280x200.png";s:5:"width";i:280;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2033, 342, '_wp_attachment_wp_user_avatar', '5'),
(2034, 342, '_wp_attachment_wp_user_avatar', '2'),
(2043, 346, '_wp_attached_file', '2017/06/colunista-rodrigo-martini.png'),
(2044, 346, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:280;s:6:"height";i:216;s:4:"file";s:37:"2017/06/colunista-rodrigo-martini.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"colunista-rodrigo-martini-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:10:"post_thumb";a:4:{s:4:"file";s:37:"colunista-rodrigo-martini-280x200.png";s:5:"width";i:280;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2046, 346, '_wp_attachment_wp_user_avatar', '3'),
(2051, 347, '_wp_attached_file', '2017/06/barcelona-edilsinho.jpg'),
(2052, 347, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:428;s:4:"file";s:31:"2017/06/barcelona-edilsinho.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"barcelona-edilsinho-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"barcelona-edilsinho-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:31:"barcelona-edilsinho-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.8";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D3000";s:7:"caption";s:36:"????????????????????????????????????";s:17:"created_timestamp";s:10:"1489081497";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"200";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(2054, 348, '_wp_attached_file', '2017/06/foto_28082014172418.jpg'),
(2055, 348, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:425;s:4:"file";s:31:"2017/06/foto_28082014172418.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"foto_28082014172418-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"foto_28082014172418-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:31:"foto_28082014172418-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1409240256";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2058, 351, '_wp_attached_file', '2017/01/logo.png'),
(2059, 351, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:177;s:6:"height";i:82;s:4:"file";s:16:"2017/01/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x82.png";s:5:"width";i:150;s:6:"height";i:82;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2060, 352, '_wp_attached_file', '2017/01/foto_05052017155614.jpg'),
(2061, 352, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:530;s:4:"file";s:31:"2017/01/foto_05052017155614.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"foto_05052017155614-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"foto_05052017155614-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"foto_05052017155614-768x509.jpg";s:5:"width";i:768;s:6:"height";i:509;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:31:"foto_05052017155614-768x509.jpg";s:5:"width";i:768;s:6:"height";i:509;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:31:"foto_05052017155614-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:24:"Bruno Rodrigues da Silva";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1493999222";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2062, 353, '_edit_lock', '1498631071:1'),
(2063, 353, '_edit_last', '1'),
(2065, 353, '_disabel_wpdevart_facebook_comment', 'enable'),
(2066, 353, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(2067, 353, 'versal-pagina', 'Grande Vencedora'),
(2068, 353, '_versal-pagina', 'field_591e63ee091c9'),
(2071, 355, '_wp_attached_file', '2017/06/galeriagr_15062017111254.jpg'),
(2072, 355, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:36:"2017/06/galeriagr_15062017111254.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"galeriagr_15062017111254-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"galeriagr_15062017111254-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:36:"galeriagr_15062017111254-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.2";s:6:"credit";s:0:"";s:6:"camera";s:19:"Canon PowerShot G16";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1497478648";s:9:"copyright";s:0:"";s:12:"focal_length";s:6:"11.976";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:4:"0.05";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(2073, 356, '_wp_attached_file', '2017/06/galeriagr_15062017112927.jpg'),
(2074, 356, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:36:"2017/06/galeriagr_15062017112927.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"galeriagr_15062017112927-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"galeriagr_15062017112927-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:36:"galeriagr_15062017112927-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.2";s:6:"credit";s:0:"";s:6:"camera";s:19:"Canon PowerShot G16";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1497482736";s:9:"copyright";s:0:"";s:12:"focal_length";s:6:"11.359";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(2075, 357, '_wp_attached_file', '2017/06/galeriagr_15062017113115.jpg'),
(2076, 357, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:800;s:4:"file";s:36:"2017/06/galeriagr_15062017113115.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"galeriagr_15062017113115-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"galeriagr_15062017113115-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:36:"galeriagr_15062017113115-576x768.jpg";s:5:"width";i:576;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:36:"galeriagr_15062017113115-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:19:"Canon PowerShot G16";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1497482865";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"6.1";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:17:"0.033333333333333";s:5:"title";s:0:"";s:11:"orientation";s:1:"8";s:8:"keywords";a:0:{}}}'),
(2080, 353, 'wpb_post_views_count', '1'),
(2081, 359, '_disabel_wpdevart_facebook_comment', 'enable'),
(2082, 359, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(2083, 359, 'versal-pagina', 'Grande Vencedora'),
(2084, 359, '_versal-pagina', 'field_591e63ee091c9'),
(2085, 359, 'wpb_post_views_count', '45'),
(2086, 359, '_dp_original', '353'),
(2087, 359, '_edit_lock', '1500397066:1'),
(2090, 359, '_wp_desired_post_slug', ''),
(2091, 353, '_wp_trash_meta_status', 'publish'),
(2092, 353, '_wp_trash_meta_time', '1498631266'),
(2093, 353, '_wp_desired_post_slug', 'barbara-ellen-e-coroada-a-nova-miss-comerciaria-de-itabira'),
(2100, 52, '_wp_old_slug', 'nm-evt__trashed'),
(2101, 361, '_wp_attached_file', '2017/06/nova-imagem-1-1100x619.png'),
(2102, 361, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1100;s:6:"height";i:619;s:4:"file";s:34:"2017/06/nova-imagem-1-1100x619.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"nova-imagem-1-1100x619-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:34:"nova-imagem-1-1100x619-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:34:"nova-imagem-1-1100x619-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:35:"nova-imagem-1-1100x619-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:6:"ug_big";a:4:{s:4:"file";s:34:"nova-imagem-1-1100x619-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:10:"post_thumb";a:4:{s:4:"file";s:34:"nova-imagem-1-1100x619-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2109, 363, '_wp_attached_file', '2017/06/rick-riordan.png'),
(2110, 363, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:308;s:4:"file";s:24:"2017/06/rick-riordan.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"rick-riordan-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"rick-riordan-292x300.png";s:5:"width";i:292;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:10:"post_thumb";a:4:{s:4:"file";s:24:"rick-riordan-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2111, 363, '_wp_attachment_wp_user_avatar', '7'),
(2112, 339, 'wpb_post_views_count', '16'),
(2113, 364, '_edit_lock', '1498658092:1'),
(2114, 364, '_edit_last', '1'),
(2115, 364, '_disabel_wpdevart_facebook_comment', 'enable'),
(2116, 364, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(2117, 364, '_wp_trash_meta_status', 'publish'),
(2118, 364, '_wp_trash_meta_time', '1498658235'),
(2119, 364, '_wp_desired_post_slug', 'ver-agenda'),
(2120, 124, '_wp_old_slug', 'teste__trashed') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2121, 359, '_edit_last', '1'),
(2136, 367, '_menu_item_type', 'taxonomy'),
(2137, 367, '_menu_item_menu_item_parent', '111'),
(2138, 367, '_menu_item_object_id', '42'),
(2139, 367, '_menu_item_object', 'category'),
(2140, 367, '_menu_item_target', ''),
(2141, 367, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2142, 367, '_menu_item_xfn', ''),
(2143, 367, '_menu_item_url', ''),
(2145, 368, '_menu_item_type', 'taxonomy'),
(2146, 368, '_menu_item_menu_item_parent', '111'),
(2147, 368, '_menu_item_object_id', '8'),
(2148, 368, '_menu_item_object', 'category'),
(2149, 368, '_menu_item_target', ''),
(2150, 368, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2151, 368, '_menu_item_xfn', ''),
(2152, 368, '_menu_item_url', ''),
(2154, 369, '_menu_item_type', 'taxonomy'),
(2155, 369, '_menu_item_menu_item_parent', '111'),
(2156, 369, '_menu_item_object_id', '40'),
(2157, 369, '_menu_item_object', 'category'),
(2158, 369, '_menu_item_target', ''),
(2159, 369, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2160, 369, '_menu_item_xfn', ''),
(2161, 369, '_menu_item_url', ''),
(2163, 370, '_menu_item_type', 'taxonomy'),
(2164, 370, '_menu_item_menu_item_parent', '111'),
(2165, 370, '_menu_item_object_id', '10'),
(2166, 370, '_menu_item_object', 'category'),
(2167, 370, '_menu_item_target', ''),
(2168, 370, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2169, 370, '_menu_item_xfn', ''),
(2170, 370, '_menu_item_url', ''),
(2172, 371, '_menu_item_type', 'taxonomy'),
(2173, 371, '_menu_item_menu_item_parent', '111'),
(2174, 371, '_menu_item_object_id', '6'),
(2175, 371, '_menu_item_object', 'category'),
(2176, 371, '_menu_item_target', ''),
(2177, 371, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2178, 371, '_menu_item_xfn', ''),
(2179, 371, '_menu_item_url', ''),
(2181, 372, '_menu_item_type', 'taxonomy'),
(2182, 372, '_menu_item_menu_item_parent', '111'),
(2183, 372, '_menu_item_object_id', '9'),
(2184, 372, '_menu_item_object', 'category'),
(2185, 372, '_menu_item_target', ''),
(2186, 372, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2187, 372, '_menu_item_xfn', ''),
(2188, 372, '_menu_item_url', ''),
(2190, 373, '_menu_item_type', 'taxonomy'),
(2191, 373, '_menu_item_menu_item_parent', '111'),
(2192, 373, '_menu_item_object_id', '43'),
(2193, 373, '_menu_item_object', 'category'),
(2194, 373, '_menu_item_target', ''),
(2195, 373, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2196, 373, '_menu_item_xfn', ''),
(2197, 373, '_menu_item_url', ''),
(2199, 374, '_menu_item_type', 'taxonomy'),
(2200, 374, '_menu_item_menu_item_parent', '111'),
(2201, 374, '_menu_item_object_id', '41'),
(2202, 374, '_menu_item_object', 'category'),
(2203, 374, '_menu_item_target', ''),
(2204, 374, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2205, 374, '_menu_item_xfn', ''),
(2206, 374, '_menu_item_url', ''),
(2211, 377, '_menu_item_type', 'taxonomy'),
(2212, 377, '_menu_item_menu_item_parent', '112'),
(2213, 377, '_menu_item_object_id', '35'),
(2214, 377, '_menu_item_object', 'category'),
(2215, 377, '_menu_item_target', ''),
(2216, 377, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2217, 377, '_menu_item_xfn', ''),
(2218, 377, '_menu_item_url', ''),
(2220, 378, '_menu_item_type', 'taxonomy'),
(2221, 378, '_menu_item_menu_item_parent', '112'),
(2222, 378, '_menu_item_object_id', '20'),
(2223, 378, '_menu_item_object', 'category'),
(2224, 378, '_menu_item_target', ''),
(2225, 378, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2226, 378, '_menu_item_xfn', ''),
(2227, 378, '_menu_item_url', ''),
(2229, 379, '_menu_item_type', 'taxonomy'),
(2230, 379, '_menu_item_menu_item_parent', '112'),
(2231, 379, '_menu_item_object_id', '14'),
(2232, 379, '_menu_item_object', 'category'),
(2233, 379, '_menu_item_target', ''),
(2234, 379, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2235, 379, '_menu_item_xfn', ''),
(2236, 379, '_menu_item_url', ''),
(2239, 359, '_thumbnail_id', '357'),
(2255, 383, '_disabel_wpdevart_facebook_comment', 'enable'),
(2256, 383, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(2257, 383, 'versal-pagina', 'Grande Vencedora'),
(2258, 383, '_versal-pagina', 'field_591e63ee091c9'),
(2259, 383, 'wpb_post_views_count', '41'),
(2261, 383, '_wp_desired_post_slug', ''),
(2262, 383, '_thumbnail_id', '396'),
(2263, 383, '_dp_original', '359'),
(2264, 383, '_edit_last', '1'),
(2265, 383, '_edit_lock', '1499198779:1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2269, 169, 'wpb_fb_comments', '2'),
(2270, 169, 'wpb_fb_comp', '0'),
(2271, 383, 'wpb_fb_comments', '3'),
(2272, 383, 'wpb_fb_comp', '0'),
(2275, 259, 'wpb_fb_comments', '0'),
(2276, 259, 'wpb_fb_comp', '0'),
(2277, 359, 'wpb_fb_comments', '1'),
(2278, 359, 'wpb_fb_comp', '0'),
(2279, 257, 'wpb_post_views_count', '2'),
(2280, 257, 'wpb_fb_comments', '0'),
(2281, 257, 'wpb_fb_comp', '0'),
(2282, 283, 'wpb_fb_comments', '1'),
(2283, 283, 'wpb_fb_comp', '0'),
(2284, 327, 'wpb_fb_comments', '1'),
(2285, 327, 'wpb_fb_comp', '0'),
(2286, 7, 'wpb_fb_comments', '1'),
(2287, 7, 'wpb_fb_comp', '0'),
(2288, 331, 'wpb_fb_comments', '2'),
(2289, 331, 'wpb_fb_comp', '0'),
(2290, 65, 'wpb_fb_comments', '0'),
(2291, 65, 'wpb_fb_comp', '0'),
(2292, 124, 'wpb_fb_comments', '0'),
(2293, 124, 'wpb_fb_comp', '0'),
(2294, 66, 'wpb_fb_comments', '0'),
(2295, 66, 'wpb_fb_comp', '0'),
(2296, 55, 'wpb_fb_comments', '0'),
(2297, 55, 'wpb_fb_comp', '0'),
(2298, 52, 'wpb_fb_comments', '0'),
(2299, 52, 'wpb_fb_comp', '0'),
(2300, 175, 'wpb_fb_comments', '0'),
(2301, 175, 'wpb_fb_comp', '0'),
(2304, 388, '_wp_attached_file', '2017/07/fav.png'),
(2305, 388, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:16;s:6:"height";i:16;s:4:"file";s:15:"2017/07/fav.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2306, 389, '_wp_attached_file', '2017/07/cropped-fav.png'),
(2307, 389, '_wp_attachment_context', 'site-icon'),
(2308, 389, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:23:"2017/07/cropped-fav.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"cropped-fav-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"cropped-fav-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:10:"post_thumb";a:4:{s:4:"file";s:23:"cropped-fav-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:23:"cropped-fav-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:23:"cropped-fav-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:23:"cropped-fav-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:21:"cropped-fav-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2309, 390, '_wp_trash_meta_status', 'publish'),
(2310, 390, '_wp_trash_meta_time', '1499178109'),
(2312, 391, '_edit_lock', '1500438187:1'),
(2313, 391, '_edit_last', '1'),
(2315, 391, '_disabel_wpdevart_facebook_comment', 'enable'),
(2316, 391, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(2317, 391, 'versal-pagina', 'Temer'),
(2318, 391, '_versal-pagina', 'field_591e63ee091c9'),
(2321, 391, 'wpb_post_views_count', '87'),
(2322, 391, 'wpb_fb_comments', '0'),
(2323, 391, 'wpb_fb_comp', '0'),
(2324, 393, '_wp_attached_file', '2017/07/michel-temer-by-abr.jpg'),
(2325, 393, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:753;s:4:"file";s:31:"2017/07/michel-temer-by-abr.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"michel-temer-by-abr-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"michel-temer-by-abr-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"michel-temer-by-abr-768x482.jpg";s:5:"width";i:768;s:6:"height";i:482;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"michel-temer-by-abr-1024x643.jpg";s:5:"width";i:1024;s:6:"height";i:643;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:31:"michel-temer-by-abr-768x482.jpg";s:5:"width";i:768;s:6:"height";i:482;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:31:"michel-temer-by-abr-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2326, 391, '_thumbnail_id', '393'),
(2339, 396, '_wp_attached_file', '2017/06/miss_itabira_2017_1.jpg'),
(2340, 396, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:678;s:6:"height";i:450;s:4:"file";s:31:"2017/06/miss_itabira_2017_1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"miss_itabira_2017_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"miss_itabira_2017_1-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:31:"miss_itabira_2017_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D5100";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1497486612";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"42";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(2342, 397, '_wp_attached_file', '2017/06/galeriagr_15062017111254-1.jpg'),
(2343, 397, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:38:"2017/06/galeriagr_15062017111254-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"galeriagr_15062017111254-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"galeriagr_15062017111254-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:38:"galeriagr_15062017111254-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.2";s:6:"credit";s:0:"";s:6:"camera";s:19:"Canon PowerShot G16";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1497478648";s:9:"copyright";s:0:"";s:12:"focal_length";s:6:"11.976";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:4:"0.05";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(2346, 58, 'wpb_fb_comments', '0'),
(2347, 58, 'wpb_fb_comp', '0'),
(2351, 339, 'wpb_fb_comments', '0'),
(2352, 339, 'wpb_fb_comp', '0'),
(2353, 173, 'wpb_fb_comments', '0'),
(2354, 173, 'wpb_fb_comp', '0'),
(2355, 35, 'wpb_fb_comments', '0'),
(2356, 35, 'wpb_fb_comp', '0'),
(2357, 399, '_menu_item_type', 'custom'),
(2358, 399, '_menu_item_menu_item_parent', '0'),
(2359, 399, '_menu_item_object_id', '399'),
(2360, 399, '_menu_item_object', 'custom'),
(2361, 399, '_menu_item_target', '_blank'),
(2362, 399, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2363, 399, '_menu_item_xfn', ''),
(2364, 399, '_menu_item_url', 'https://issuu.com/grupodefato/docs'),
(2366, 400, '_menu_item_type', 'custom'),
(2367, 400, '_menu_item_menu_item_parent', '0'),
(2368, 400, '_menu_item_object_id', '400'),
(2369, 400, '_menu_item_object', 'custom'),
(2370, 400, '_menu_item_target', ''),
(2371, 400, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2372, 400, '_menu_item_xfn', ''),
(2373, 400, '_menu_item_url', '#'),
(2384, 403, '_edit_lock', '1499707091:1'),
(2385, 403, '_edit_last', '1'),
(2386, 403, '_disabel_wpdevart_facebook_comment', 'enable'),
(2387, 403, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(2397, 323, 'wpb_fb_comments', '0'),
(2398, 323, 'wpb_fb_comp', '0'),
(2418, 412, '_edit_lock', '1500038309:1'),
(2419, 412, '_edit_last', '1'),
(2420, 413, '_wp_attached_file', '2017/07/logo.png'),
(2421, 413, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:177;s:6:"height";i:82;s:4:"file";s:16:"2017/07/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x82.png";s:5:"width";i:150;s:6:"height";i:82;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2422, 412, '_disabel_wpdevart_facebook_comment', 'enable'),
(2423, 412, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(2424, 415, '_menu_item_type', 'post_type'),
(2425, 415, '_menu_item_menu_item_parent', '416'),
(2426, 415, '_menu_item_object_id', '412'),
(2427, 415, '_menu_item_object', 'page'),
(2428, 415, '_menu_item_target', ''),
(2429, 415, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2430, 415, '_menu_item_xfn', ''),
(2431, 415, '_menu_item_url', ''),
(2433, 416, '_menu_item_type', 'custom'),
(2434, 416, '_menu_item_menu_item_parent', '0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2435, 416, '_menu_item_object_id', '416'),
(2436, 416, '_menu_item_object', 'custom'),
(2437, 416, '_menu_item_target', ''),
(2438, 416, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2439, 416, '_menu_item_xfn', ''),
(2440, 416, '_menu_item_url', '#'),
(2442, 417, '_menu_item_type', 'post_type'),
(2443, 417, '_menu_item_menu_item_parent', '416'),
(2444, 417, '_menu_item_object_id', '403'),
(2445, 417, '_menu_item_object', 'page'),
(2446, 417, '_menu_item_target', ''),
(2447, 417, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2448, 417, '_menu_item_xfn', ''),
(2449, 417, '_menu_item_url', ''),
(2457, 393, '_wp_attachment_image_alt', 'Legenda da imagem'),
(2508, 412, '_thumbnail_id', '413'),
(2512, 105, 'wpb_fb_comments', '0'),
(2513, 105, 'wpb_fb_comp', '0'),
(2514, 57, 'wpb_fb_comments', '2'),
(2515, 57, 'wpb_fb_comp', '0'),
(2516, 320, 'wpb_fb_comments', '0'),
(2517, 320, 'wpb_fb_comp', '0'),
(2518, 102, 'wpb_fb_comments', '0'),
(2519, 102, 'wpb_fb_comp', '0'),
(2520, 56, 'wpb_fb_comments', '0'),
(2521, 56, 'wpb_fb_comp', '0'),
(2525, 9, 'wpb_fb_comments', '1'),
(2526, 9, 'wpb_fb_comp', '0'),
(2530, 402, '_edit_lock', '1500038187:1'),
(2531, 221, '_edit_lock', '1500038244:1'),
(2533, 278, 'wpb_fb_comments', '0'),
(2534, 278, 'wpb_fb_comp', '0'),
(2535, 221, '_wp_trash_meta_status', 'publish'),
(2536, 221, '_wp_trash_meta_time', '1500038392'),
(2537, 221, '_wp_desired_post_slug', 'no-access'),
(2538, 402, '_wp_trash_meta_status', 'draft'),
(2539, 402, '_wp_trash_meta_time', '1500038395'),
(2540, 402, '_wp_desired_post_slug', 'caldera_forms_preview'),
(2547, 439, '_edit_lock', '1500295940:1'),
(2548, 439, '_edit_last', '1'),
(2549, 439, '_disabel_wpdevart_facebook_comment', 'enable'),
(2550, 439, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(2551, 439, 'versal-pagina', 'teste'),
(2552, 439, '_versal-pagina', 'field_591e63ee091c9'),
(2561, 439, 'wpb_post_views_count', '5'),
(2562, 439, 'wpb_fb_comments', '0'),
(2563, 439, 'wpb_fb_comp', '0'),
(2565, 445, '_edit_lock', '1500396863:1'),
(2566, 445, '_edit_last', '11'),
(2567, 446, '_wp_attached_file', '2017/07/Chrysanthemum.jpg'),
(2568, 446, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:25:"2017/07/Chrysanthemum.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Chrysanthemum-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Chrysanthemum-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Chrysanthemum-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Chrysanthemum-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:25:"Chrysanthemum-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:25:"Chrysanthemum-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:6:"Corbis";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1205503166";s:9:"copyright";s:32:"© Corbis.  All Rights Reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2569, 445, '_thumbnail_id', '393'),
(2571, 445, '_disabel_wpdevart_facebook_comment', 'enable'),
(2572, 445, '_heateor_sss_meta', 'a:2:{s:7:"sharing";i:0;s:16:"vertical_sharing";i:0;}'),
(2573, 445, 'versal-pagina', 'teste'),
(2574, 445, '_versal-pagina', 'field_591e63ee091c9'),
(2577, 445, 'wpb_post_views_count', '6'),
(2578, 445, 'wpb_fb_comments', '0'),
(2579, 445, 'wpb_fb_comp', '0'),
(2580, 448, '_menu_item_type', 'taxonomy'),
(2581, 448, '_menu_item_menu_item_parent', '416'),
(2582, 448, '_menu_item_object_id', '7'),
(2583, 448, '_menu_item_object', 'category'),
(2584, 448, '_menu_item_target', ''),
(2585, 448, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2586, 448, '_menu_item_xfn', ''),
(2587, 448, '_menu_item_url', ''),
(2589, 449, '_menu_item_type', 'taxonomy'),
(2590, 449, '_menu_item_menu_item_parent', '111'),
(2591, 449, '_menu_item_object_id', '48'),
(2592, 449, '_menu_item_object', 'category'),
(2593, 449, '_menu_item_target', ''),
(2594, 449, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2595, 449, '_menu_item_xfn', ''),
(2596, 449, '_menu_item_url', ''),
(2599, 451, '_menu_item_type', 'post_type'),
(2600, 451, '_menu_item_menu_item_parent', '0'),
(2601, 451, '_menu_item_object_id', '192'),
(2602, 451, '_menu_item_object', 'page'),
(2603, 451, '_menu_item_target', ''),
(2604, 451, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2605, 451, '_menu_item_xfn', ''),
(2606, 451, '_menu_item_url', ''),
(2607, 451, '_menu_item_orphaned', '1500348829'),
(2608, 452, '_menu_item_type', 'taxonomy'),
(2609, 452, '_menu_item_menu_item_parent', '0'),
(2610, 452, '_menu_item_object_id', '39'),
(2611, 452, '_menu_item_object', 'category'),
(2612, 452, '_menu_item_target', ''),
(2613, 452, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2614, 452, '_menu_item_xfn', ''),
(2615, 452, '_menu_item_url', ''),
(2621, 456, '_wp_attached_file', '2017/07/teste-padrão-sem-emenda-jornalismo-notícia-viva-notícia-do-mundo-45302285.jpg'),
(2622, 456, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1300;s:6:"height";i:1000;s:4:"file";s:88:"2017/07/teste-padrão-sem-emenda-jornalismo-notícia-viva-notícia-do-mundo-45302285.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:88:"teste-padrão-sem-emenda-jornalismo-notícia-viva-notícia-do-mundo-45302285-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:88:"teste-padrão-sem-emenda-jornalismo-notícia-viva-notícia-do-mundo-45302285-300x231.jpg";s:5:"width";i:300;s:6:"height";i:231;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:88:"teste-padrão-sem-emenda-jornalismo-notícia-viva-notícia-do-mundo-45302285-768x591.jpg";s:5:"width";i:768;s:6:"height";i:591;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:89:"teste-padrão-sem-emenda-jornalismo-notícia-viva-notícia-do-mundo-45302285-1024x788.jpg";s:5:"width";i:1024;s:6:"height";i:788;s:9:"mime-type";s:10:"image/jpeg";}s:6:"ug_big";a:4:{s:4:"file";s:88:"teste-padrão-sem-emenda-jornalismo-notícia-viva-notícia-do-mundo-45302285-768x591.jpg";s:5:"width";i:768;s:6:"height";i:591;s:9:"mime-type";s:10:"image/jpeg";}s:10:"post_thumb";a:4:{s:4:"file";s:88:"teste-padrão-sem-emenda-jornalismo-notícia-viva-notícia-do-mundo-45302285-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:27:"(c) Jly198 | Dreamstime.com";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(2624, 445, '_wp_trash_meta_status', 'publish'),
(2625, 445, '_wp_trash_meta_time', '1500407712'),
(2626, 445, '_wp_desired_post_slug', 'teste-colunista-bruno'),
(2627, 439, '_wp_trash_meta_status', 'publish'),
(2628, 439, '_wp_trash_meta_time', '1500407718'),
(2629, 439, '_wp_desired_post_slug', 'testando-opcao') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2630, 317, 'wpb_fb_comments', '0'),
(2631, 317, 'wpb_fb_comp', '0'),
(2632, 135, 'wpb_fb_comments', '0'),
(2633, 135, 'wpb_fb_comp', '0') ;

#
# Fim do conteúdo da tabela `wp_postmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_posts` existente
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Estrutura da tabela `wp_posts`
#

CREATE TABLE `wp_posts` (
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
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
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
) ENGINE=InnoDB AUTO_INCREMENT=459 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2017-05-05 22:50:26', '2017-05-06 01:50:26', '', 'trump', '', 'inherit', 'open', 'closed', '', 'trump', '', '', '2017-05-05 22:50:26', '2017-05-06 01:50:26', '', 0, 'http://localhost/defato/wp-content/uploads/2017/05/trump.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 6, '2017-05-05 22:53:46', '2017-05-06 01:53:46', 'Democratas querem incluir recursos para uma série de subsídios ao ObamaCare em um projeto de lei de gastos que vai precisar de apoio democrata para passar no Senado e provavelmente na Câmara. <!--more-->A administração de Trump sinalizou que pode incluir esses recursos em troca de financiamento para a construção do muro na fronteira.\r\n\r\nTrump disse em uma mensagem no Twitter que, sem um acordo, os democratas seriam responsáveis pela eventual falência da lei de saúde. “Os democratas precisam de muito dinheiro para mantê-lo. Caso contrário, o ObamaCare vai morrer muito mais cedo do que qualquer um teria imaginado”, escreveu Trump.\r\n\r\nReince Priebus, chefe de gabinete da Casa Branca, disse no programa da NBC “Meet the Press” que um acordo de saúde pode ou não ocorrer no Congresso nesta semana.\r\n\r\nPor enquanto, a administração de Trump vem mantendo os pagamentos, seguindo um precedente da administração de Barack Obama. Sem os pagamentos compartilhados com seguradoras de saúde, que reduzem os custos de desembolso para cerca de seis milhões de inscritos no programa, as seguradoras avisaram que seriam forçadas a aumentar os prêmios em dois dígitos ou a se retirar totalmente do mercado.\r\n\r\nMas os democratas se recusam a apoiar publicamente o pedido da administração Trump de US$ 1,4 bilhão para construir o muro na fronteira EUA-México. “Os democratas não apoiam o muro, e os republicanos dos Estados da fronteira não apoiam o muro”, disse a democrata Nancy Pelosi, líder da minoria na Câmara dos Representantes, no programa “Meet the Press”. Ela citou uma pesquisa do <i>The Wall Street Journal</i> com legisladores, que mostrou não haver apoio para o muro entre 17 representantes de distritos da fronteira.\r\n\r\nTrump responsabilizou os democratas pela oposição ao muro. “Os democratas não querem que o dinheiro do orçamento vá para o muro na fronteira, apesar do fato de que vai parar as drogas e os integrantes da gangue MS-13”, disse no Twitter. Ele acrescentou em outro tweet que, embora estivesse buscando recursos em negociações do orçamento, o México eventualmente pagaria os EUA pelo muro. “Eventualmente, mas em uma data posterior, para que possamos começar logo, o México estará pagando, de alguma forma, pelo muro tão necessário na fronteira”, escreveu.\r\n\r\nTambém no programa “Meet the Press”, Mick Mulvaney, Diretor de Orçamento da Casa Branca, reiterou a disposição da administração de considerar os pagamentos do ObamaCare como parte das negociações. “Achamos que oferecemos um conjunto razoável de escolhas que eles querem em troca do que queremos”, disse. Fonte: Dow Jones Newswires.', 'Trump considera financiamento do ObamaCare em troca de apoio para muro', '', 'publish', 'open', 'open', '', 'trump-considera-financiamento-do-obamacare-em-troca-de-apoio-para-muro-2', '', '', '2017-05-19 19:22:18', '2017-05-19 22:22:18', '', 0, 'http://localhost/defato/?p=7', 0, 'post', '', 0),
(9, 6, '2017-05-05 22:57:46', '2017-05-06 01:57:46', 'presidente da Venezuela, Nicolás Maduro, afirmou neste domingo (30/4) que o papa Francisco “entregou seu melhor esforço”<!--more--> para que aconteça o diálogo político em seu país e expressou seu respeito às declarações feitas pelo pontífice no sábado (29/4) sobre este mecanismo.\r\n\r\n“Ontem, (membros da oposição) criticaram o papa Francisco. Eu respeito as expressões do papa Francisco, eu o respeito”, disse Maduro em seu programa transmitido pelo emissora estatal VTV.\r\n\r\nO presidente venezuelano disse que a oposição não quer dialogar e que “fogem apavorados” cada vez que ele convoca conversas.', 'Nicolás Maduro diz que papa fez “seu melhor” por diálogo na Venezuela', '', 'publish', 'open', 'open', '', 'nicolas-maduro-diz-que-papa-fez-seu-melhor-por-dialogo-na-venezuela', '', '', '2017-07-18 01:24:52', '2017-07-18 04:24:52', '', 0, 'http://localhost/defato/?p=9', 0, 'post', '', 0),
(11, 1, '2017-05-05 23:00:29', '2017-05-06 02:00:29', '', 'Secretario-198x130', '', 'inherit', 'open', 'closed', '', 'secretario-198x130', '', '', '2017-05-05 23:00:29', '2017-05-06 02:00:29', '', 9, 'http://localhost/defato/wp-content/uploads/2017/05/Secretario-198x130.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2017-05-05 23:02:31', '2017-05-06 02:02:31', '', 'Solenidades. Homenagens', 'Plenário da Câmara dos Deputados durante solenidade de posse da presidente da República, Dilma Rousseff e vice-presidente Michel Temer. \n\nChefes de Estado e autoridades internacionais participam do evento. Em destaque, o presidente da Venezuela Nicolás Maduro. \n\nFoto: Marcos Oliveira/Agência Senado', 'inherit', 'open', 'closed', '', 'solenidades-homenagens', '', '', '2017-05-05 23:02:33', '2017-05-06 02:02:33', '', 9, 'http://localhost/defato/wp-content/uploads/2017/05/15981739978_e8d35925f6_o-840x577.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2017-05-06 00:23:49', '2017-05-06 03:23:49', '', 'Michael Melo/Metrópoles', 'Brasília (DF), 09/10/2015  - Reprovação e abandono nas escolas do Distrito Federal - Colegio Gisno - Foto, Michael Melo/Metrópoles', 'inherit', 'open', 'closed', '', 'michael-melometropoles', '', '', '2017-05-06 00:23:49', '2017-05-06 03:23:49', '', 0, 'http://localhost/defato/wp-content/uploads/2017/05/itabira.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2017-05-06 02:17:35', '2017-05-06 05:17:35', '', 'Delatores da Odebrecht divergem sobre valor repassado a Arruda', '', 'inherit', 'open', 'closed', '', 'delatores-da-odebrecht-divergem-sobre-valor-repassado-a-arruda-2', '', '', '2017-05-06 02:17:35', '2017-05-06 05:17:35', '', 0, 'http://localhost/defato/2017/05/06/delatores-da-odebrecht-divergem-sobre-valor-repassado-a-arruda/delatores-da-odebrecht-divergem-sobre-valor-repassado-a-arruda-2/', 0, 'attachment', 'image/jpeg', 0),
(28, 2, '2017-05-08 09:34:43', '2017-05-08 12:34:43', 'Parado na Câmara Legislativa desde 2015, o Projeto de Lei n° 63/2015 volta a causar polêmica entre os deputados distritais. <!--more-->A matéria, que tem como ponto de maior divergência a abertura de eleições para coordenadores regionais de ensino, foi aprovada na semana passada pela Comissão de Educação, Saúde e Cultura (Cesc). Mas a votação foi dividida. Hoje, não há consenso nem entre os parlamentares nem no Sindicato dos Professores (Sinpro-DF).\r\n\r\nO PL , de autoria de Cristiano Araújo (PSD), recebeu um substitutivo elaborado pelo presidente da Cesc, Wasny de Roure (PT). O petista retirou pontos já existentes no atual Plano Distrital de Educação (PDE), que versa sobre o Sistema de Ensino e a Gestão Democrática nas escolas públicas do DF, mas preservou a eleição para os coordenadores regionais.', 'Cachorro morde dona de casa', '', 'publish', 'open', 'open', '', 'eleicao-para-coordenadores-regionais-de-ensino-causa-divergencia-2', '', '', '2017-05-20 10:55:59', '2017-05-20 13:55:59', '', 0, 'http://localhost/defato/?p=28', 0, 'post', '', 0),
(32, 1, '2017-05-08 09:42:43', '2017-05-08 12:42:43', '', 'Florianopolis_Wikimedia_Avenida_Beira_Mar_Norte_-1180x472', '', 'inherit', 'open', 'closed', '', 'florianopolis_wikimedia_avenida_beira_mar_norte_-1180x472', '', '', '2017-05-08 09:42:43', '2017-05-08 12:42:43', '', 0, 'http://localhost/defato/wp-content/uploads/2017/05/Florianopolis_Wikimedia_Avenida_Beira_Mar_Norte_-1180x472.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2017-05-08 09:43:27', '2017-05-08 12:43:27', '', 'fundo-de-uma-cidade', '', 'inherit', 'open', 'closed', '', 'fundo-de-uma-cidade', '', '', '2017-05-08 09:43:27', '2017-05-08 12:43:27', '', 28, 'http://localhost/defato/wp-content/uploads/2017/05/fundo-de-uma-cidade.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 3, '2017-05-08 09:51:56', '2017-05-08 12:51:56', '<h2 class="content-head__subtitle">Campeão inglês pelo Chelsea, zagueiro não defende o Brasil desde março de 2016 e ainda não havia sido chamado pela atual comissão técnica: \'\'Retomou o alto nível e merece\'\'</h2>\r\n<!--more-->\r\n<div class="mc-column content-text active-extra-styles active-capital-letter" data-block-type="unstyled" data-block-weight="65">\r\n<p class="content-text__container theme-color-primary-first-letter" data-track-category="Link no Texto" data-track-links="">avid Luiz está de volta à Seleção. Ausente desde março de 2016, quando foi chamado pelo então técnico Dunga para os jogos contra Uruguai e Paraguai pelas eliminatórias, o zagueiro voltou a jogar em alto nível e foi campeão inglês pelo Chelsea na semana passada. Suas atuações e versatilidade foram, segundo Tite, os motivos da convocação para os amistosos contra Argentina e Austrália em junho.</p>\r\n\r\n</div>\r\n<div class="mc-column content-media content-media--normal content-video" data-block-type="backstage-video"></div>\r\n<div class="mc-column content-media content-media--normal content-video" data-block-type="backstage-video">\r\n<div class="content-media__container content-media__container--loaded">\r\n<div class="content-video__height"></div>\r\n<div class="content-video__placeholder" data-video-id="5880534"><img class="content-video__placeholder__thumb" title="Tite explica novidades da Seleção Brasileira" src="http://s03.video.glbimg.com/x720/5880534.jpg" alt="Tite explica novidades da Seleção Brasileira" /></div>\r\n</div>\r\n<div class="content-media__description-centered">\r\n<p class="content-media__description"><i class="content-media__description__icon theme-color-primary"> </i> <span class="content-media__description__caption"> Tite explica novidades da Seleção Brasileira </span></p>\r\n\r\n</div>\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="55">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">Depois da Copa do Mundo de 2014, David Luiz foi chamado nove vezes por Dunga. Mas ainda não havia sido convocado pela comissão técnica comandada por Tite. Atualmente, o Chelsea joga com três zagueiros, sendo David um deles. Esquema diferente do utilizado da Seleção, mas nada que impeça a nova oportunidade, segundo o atual treinador.</p>\r\n\r\n</div>', 'David Luiz volta à Seleção após um ano e recebe elogios de Tite: \'\'Polifuncional\'\'', '', 'publish', 'open', 'open', '', 'parado-na-camara-legislativa-desde-2015', '', '', '2017-05-19 19:25:10', '2017-05-19 22:25:10', '', 0, 'http://localhost/defato/?p=35', 0, 'post', '', 0),
(36, 4, '2017-05-08 09:52:21', '2017-05-08 12:52:21', '<h2 class="content-head__subtitle">Ricardo Saud, diretor da JBS, disse que repasse foi feito a pedido do PT para financiar campanha de Temer, então vice de Dilma, em 2014. Dinheiro saiu de cota de R$ 300 milhões do PT.</h2>\r\n<!--more-->\r\n\r\nParado na Câmara Legislativa desde 2015, o Projeto de Lei n° 63/2015 volta a causar polêmica entre os deputados distritais. A matéria, que tem como ponto de maior divergência a abertura de eleições para coordenadores regionais de ensino, foi aprovada na semana passada pela Comissão de Educação, Saúde e Cultura (Cesc). Mas a votação foi dividida. Hoje, não há consenso nem entre os parlamentares nem no Sindicato dos Professores (Sinpro-DF).\r\n\r\nO PL , de autoria de Cristiano Araújo (PSD), recebeu um substitutivo elaborado pelo presidente da Cesc, Wasny de Roure (PT). O petista retirou pontos já existentes no atual Plano Distrital de Educação (PDE), que versa sobre o Sistema de Ensino e a Gestão Democrática nas escolas públicas do DF, mas preservou a eleição para os coordenadores regionais.', 'Delator diz que Temer recebeu R$ 15 milhões e \'guardou 1 milhão no bolso\'', '', 'publish', 'open', 'open', '', 'sindicato-dos-professores-parado', '', '', '2017-07-04 12:53:20', '2017-07-04 15:53:20', '', 0, 'http://localhost/defato/?p=36', 0, 'post', '', 0),
(52, 1, '2017-01-12 17:25:05', '2017-01-12 19:25:05', 'No dia<b> 9 de junho, sexta-feira</b>, a<b> <a href="http://www.soubh.com.br/casas-de-shows/gremio-recreativo-escola-de-samba-academicos-do-cidade-jadim/" rel="nofollow">Quadra da Escola de Samba Cidade Jardim</a></b> (Rua do Mercado , 150 - Conjunto Santa Maria) vai ficar agitada com o<b> Luau do Quando Come - São João</b>, às <b>22h.</b>\r\n\r\nVai rolar muita sofrência, modão e forrózinho gostoso na pista do nosso São João. Os meninos do Chega Chora já prometeram colocar a galera pra cantar junto nessa noite mágica.\r\n\r\n<b>Atrações musicais</b>\r\nBanda Chega Chora\r\nDJ Jaka\r\nDJ Xano\r\n\r\n- Quadrilha do QCSL\r\n- Barraca do Beijo\r\n- Correio Elegante\r\n- Pescaria\r\n- Cadeia\r\n- Quentão\r\n- Comidas Típicas\r\n\r\n<b>Valores</b>\r\nR$ 35 (promocional)\r\nR$ 40 (1º lote)\r\n\r\n<b>Vendas</b>\r\n<a href="https://www.sympla.com.br/luau-do-quando-come---sao-joao__145497" target="_blank" rel="noopener noreferrer">Sympla</a>', 'Lançamento da Revista DeFato', 'Vem aí o lançamento da revista DeFato.', 'publish', 'closed', 'closed', '', 'nm-evt', '', '', '2017-06-28 03:33:01', '2017-06-28 06:33:01', '', 0, 'http://localhost/defato/?post_type=event&#038;p=52', 0, 'event', '', 0),
(55, 2, '2017-05-11 10:24:47', '2017-05-11 13:24:47', 'Parado na Câmara Legislativa desde 2015, o Projeto de Lei n° 63/2015 volta a causar polêmica entre os deputados distritais.<!--more--> A matéria, que tem como ponto de maior divergência a abertura de eleições para coordenadores regionais de ensino, foi aprovada na semana passada pela Comissão de Educação, Saúde e Cultura (Cesc). Mas a votação foi dividida. Hoje, não há consenso nem entre os parlamentares nem no Sindicato dos Professores (Sinpro-DF).\r\n\r\nO PL , de autoria de Cristiano Araújo (PSD), recebeu um substitutivo elaborado pelo presidente da Cesc, Wasny de Roure (PT). O petista retirou pontos já existentes no atual Plano Distrital de Educação (PDE), que versa sobre o Sistema de Ensino e a Gestão Democrática nas escolas públicas do DF, mas preservou a eleição para os coordenadores regionais.', 'Morre presidente do STF', '', 'publish', 'open', 'open', '', 'morre-presidente-do-stf-2', '', '', '2017-06-27 22:58:08', '2017-06-28 01:58:08', '', 0, 'http://localhost/defato/?p=55', 0, 'post', '', 0),
(56, 3, '2017-05-11 10:24:47', '2017-05-11 13:24:47', '<strong>Campanha ao GDF\r\n</strong>Segundo Pacífico, o reforço na campanha ao GDF foi pedido diretamente pelo então candidato do PR. O pleito foi atendido e dividido em duas parcelas. Em junho de 2014, o político teria recebido R$ 500 mil. O dinheiro estaria vinculado à polêmica obra do <a href="http://www.metropoles.com/distrito-federal/politica-df/delacoes-da-odebrecht-revelam-tentaculos-da-lava-jato-em-brasilia" target="_blank" rel="noopener noreferrer">Centro Administrativo do GDF, o Centrad</a>, executada pela Odebrecht em parceria com a brasiliense Via Engenharia.\r\n\r\nTrês meses depois desse aporte, a Odebrecht teria liberado mais R$ 466 mil para o caixa 2 de <a href="http://www.metropoles.com/distrito-federal/justica-distrito-federal/propina-a-arruda-foi-agradecimento-por-obras-no-df-e-ate-goias" target="_blank" rel="noopener noreferrer">Arruda</a>, conforme depoimento de Pacífico. O curioso é que, dessa vez, o dinheiro estaria vinculado a uma obra em outro estado: a construção do VLT de Goiânia. O empreendimento foi executado pela Odebrecht (90%) em parceria com o consórcio da Rede Metropolitana de Transportes Coletivos (10%).\r\n\r\n&nbsp;\r\n\r\n<iframe src="//www.youtube.com/embed/-F01dwnGwDg" width="560" height="314" allowfullscreen="allowfullscreen"></iframe>', 'Lula é preso', '', 'publish', 'open', 'open', '', 'lula-e-preso-2', '', '', '2017-06-27 18:50:13', '2017-06-27 21:50:13', '', 0, 'http://localhost/defato/?p=56', 0, 'post', '', 0),
(57, 2, '2017-05-11 10:25:03', '2017-05-11 13:25:03', 'Parado na Câmara Legislativa desde 2015, o Projeto de Lei n° 63/2015 volta a causar polêmica entre os deputados distritais.<!--more--> A matéria, que tem como ponto de maior divergência a abertura de eleições para coordenadores regionais de ensino, foi aprovada na semana passada pela Comissão de Educação, Saúde e Cultura (Cesc). Mas a votação foi dividida. Hoje, não há consenso nem entre os parlamentares nem no Sindicato dos Professores (Sinpro-DF).\r\n\r\nO PL , de autoria de Cristiano Araújo (PSD), recebeu um substitutivo elaborado pelo presidente da Cesc, Wasny de Roure (PT). O petista retirou pontos já existentes no atual Plano Distrital de Educação (PDE), que versa sobre o Sistema de Ensino e a Gestão Democrática nas escolas públicas do DF, mas preservou a eleição para os coordenadores regionais.', 'Sindicato dos Professores parado', '', 'publish', 'open', 'open', '', 'sindicato-dos-professores-parado-2', '', '', '2017-06-27 22:23:08', '2017-06-28 01:23:08', '', 0, 'http://localhost/defato/?p=57', 0, 'post', '', 0),
(58, 2, '2017-05-11 10:24:48', '2017-05-11 13:24:48', 'Parado na Câmara Legislativa desde 2015, o Projeto de Lei n° 63/2015 volta a causar polêmica entre os deputados distritais.<!--more--> A matéria, que tem como ponto de maior divergência a abertura de eleições para coordenadores regionais de ensino, foi aprovada na semana passada pela Comissão de Educação, Saúde e Cultura (Cesc). Mas a votação foi dividida. Hoje, não há consenso nem entre os parlamentares nem no Sindicato dos Professores (Sinpro-DF).\r\n\r\nO PL , de autoria de Cristiano Araújo (PSD), recebeu um substitutivo elaborado pelo presidente da Cesc, Wasny de Roure (PT). O petista retirou pontos já existentes no atual Plano Distrital de Educação (PDE), que versa sobre o Sistema de Ensino e a Gestão Democrática nas escolas públicas do DF, mas preservou a eleição para os coordenadores regionais.', 'Eleição para coordenadores regionais de ensino causa divergência', '', 'publish', 'open', 'open', '', 'eleicao-para-coordenadores-regionais-de-ensino-causa-divergencia-4', '', '', '2017-06-27 22:59:02', '2017-06-28 01:59:02', '', 0, 'http://localhost/defato/?p=58', 0, 'post', '', 0),
(65, 1, '2017-02-11 12:00:56', '2017-02-11 14:00:56', 'No dia<b> 9 de junho, sexta-feira</b>, a<b> <a href="http://www.soubh.com.br/casas-de-shows/gremio-recreativo-escola-de-samba-academicos-do-cidade-jadim/" rel="nofollow">Quadra da Escola de Samba Cidade Jardim</a></b> (Rua do Mercado , 150 - Conjunto Santa Maria) vai ficar agitada com o<b> Luau do Quando Come - São João</b>, às <b>22h.</b>\r\n\r\nVai rolar muita sofrência, modão e forrózinho gostoso na pista do nosso São João. Os meninos do Chega Chora já prometeram colocar a galera pra cantar junto nessa noite mágica.\r\n\r\n<b>Atrações musicais</b>\r\nBanda Chega Chora\r\nDJ Jaka\r\nDJ Xano\r\n\r\n- Quadrilha do QCSL\r\n- Barraca do Beijo\r\n- Correio Elegante\r\n- Pescaria\r\n- Cadeia\r\n- Quentão\r\n- Comidas Típicas\r\n\r\n<b>Valores</b>\r\nR$ 35 (promocional)\r\nR$ 40 (1º lote)\r\n\r\n<b>Vendas</b>\r\n<a href="https://www.sympla.com.br/luau-do-quando-come---sao-joao__145497" target="_blank" rel="noopener noreferrer">Sympla</a>', 'Corrida Naruto', '', 'publish', 'closed', 'closed', '', 'corrida-naruto', '', '', '2017-07-13 23:02:03', '2017-07-14 02:02:03', '', 0, 'http://localhost/defato/?post_type=event&#038;p=65', 0, 'event', '', 0),
(66, 1, '2017-05-11 15:17:27', '2017-05-11 18:17:27', 'No dia<b> 9 de junho, sexta-feira</b>, a<b> <a href="http://www.soubh.com.br/casas-de-shows/gremio-recreativo-escola-de-samba-academicos-do-cidade-jadim/" rel="nofollow">Quadra da Escola de Samba Cidade Jardim</a></b> (Rua do Mercado , 150 - Conjunto Santa Maria) vai ficar agitada com o<b> Luau do Quando Come - São João</b>, às <b>22h.</b>\r\n\r\nVai rolar muita sofrência, modão e forrózinho gostoso na pista do nosso São João. Os meninos do Chega Chora já prometeram colocar a galera pra cantar junto nessa noite mágica.\r\n\r\n<b>Atrações musicais</b>\r\nBanda Chega Chora\r\nDJ Jaka\r\nDJ Xano\r\n\r\n- Quadrilha do QCSL\r\n- Barraca do Beijo\r\n- Correio Elegante\r\n- Pescaria\r\n- Cadeia\r\n- Quentão\r\n- Comidas Típicas\r\n\r\n<b>Valores</b>\r\nR$ 35 (promocional)\r\nR$ 40 (1º lote)\r\n\r\n<b>Vendas</b>\r\n<a href="https://www.sympla.com.br/luau-do-quando-come---sao-joao__145497" target="_blank" rel="noopener noreferrer">Sympla</a>', 'Aniversário C. Fabriciano', '', 'publish', 'closed', 'closed', '', 'aniversario-coronel-fabriciano', '', '', '2017-06-26 11:51:58', '2017-06-26 14:51:58', '', 0, 'http://localhost/defato/?post_type=event&#038;p=66', 0, 'event', '', 0),
(67, 1, '2017-05-11 16:04:16', '2017-05-11 19:04:16', '', 'Coldplay1-p-500', '', 'inherit', 'open', 'closed', '', 'coldplay1-p-500', '', '', '2017-05-11 16:04:16', '2017-05-11 19:04:16', '', 52, 'http://localhost/defato/wp-content/uploads/2017/01/Coldplay1-p-500.jpeg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2017-05-11 16:05:05', '2017-05-11 19:05:05', '', 'Naruto_sennin', '', 'inherit', 'open', 'closed', '', 'naruto_sennin', '', '', '2017-05-11 16:05:05', '2017-05-11 19:05:05', '', 65, 'http://localhost/defato/wp-content/uploads/2017/02/Naruto_sennin.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2017-05-11 16:06:53', '2017-05-11 19:06:53', '', 'mensagens-de-feliz-aniversario-kBDbN-fxl', '', 'inherit', 'open', 'closed', '', 'mensagens-de-feliz-aniversario-kbdbn-fxl', '', '', '2017-05-11 16:06:53', '2017-05-11 19:06:53', '', 66, 'http://localhost/defato/wp-content/uploads/2017/05/mensagens-de-feliz-aniversario-kBDbN-fxl.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2017-05-15 14:46:03', '2017-05-15 17:46:03', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-3', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 0, 'http://localhost/defato/?p=73', 1, 'nav_menu_item', '', 0),
(75, 1, '2017-05-16 22:26:26', '2017-05-17 01:26:26', '', 'Blogs/Colunas', '', 'publish', 'closed', 'closed', '', 'blogs', '', '', '2017-05-20 11:55:43', '2017-05-20 14:55:43', '', 0, 'http://localhost/defato/?page_id=75', 0, 'page', '', 0),
(78, 1, '2017-05-18 15:47:12', '2017-05-18 18:47:12', '', 'Author_Holding_Book', '', 'inherit', 'open', 'closed', '', 'author_holding_book', '', '', '2017-05-18 15:47:12', '2017-05-18 18:47:12', '', 0, 'http://localhost/defato/wp-content/uploads/2017/05/Author_Holding_Book.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2017-05-18 15:47:13', '2017-05-18 18:47:13', '', 'foto-1', '', 'inherit', 'open', 'closed', '', 'foto-1', '', '', '2017-05-18 15:47:13', '2017-05-18 18:47:13', '', 0, 'http://localhost/defato/wp-content/uploads/2017/05/foto-1.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2017-05-19 00:18:46', '2017-05-19 03:18:46', '', 'Versal', '', 'publish', 'closed', 'closed', '', 'acf_versal', '', '', '2017-06-27 12:27:58', '2017-06-27 15:27:58', '', 0, 'http://localhost/defato/?post_type=acf&#038;p=80', 0, 'acf', '', 0),
(83, 1, '2017-05-19 19:02:44', '2017-05-19 22:02:44', '', 'professor-melhore-a-relacao-em-sala-de-aula-com-sua-turma-noticias', '', 'inherit', 'open', 'closed', '', 'professor-melhore-a-relacao-em-sala-de-aula-com-sua-turma-noticias', '', '', '2017-05-19 19:02:44', '2017-05-19 22:02:44', '', 57, 'http://localhost/defato/wp-content/uploads/2017/05/professor-melhore-a-relacao-em-sala-de-aula-com-sua-turma-noticias.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2017-05-19 19:05:36', '2017-05-19 22:05:36', '', 'Urna_eletrônica', '', 'inherit', 'open', 'closed', '', 'urna_eletronica', '', '', '2017-05-19 19:05:36', '2017-05-19 22:05:36', '', 58, 'http://localhost/defato/wp-content/uploads/2017/05/Urna_eletrônica.jpeg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2017-05-19 19:09:02', '2017-05-19 22:09:02', '', 'carmen_lucia-4519974', '', 'inherit', 'open', 'closed', '', 'carmen_lucia-4519974', '', '', '2017-05-19 19:09:02', '2017-05-19 22:09:02', '', 55, 'http://localhost/defato/wp-content/uploads/2017/05/carmen_lucia-4519974.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2017-05-19 19:11:23', '2017-05-19 22:11:23', '', '20150622072736660388o', 'teste teste', 'inherit', 'open', 'closed', '', '20150622072736660388o', '', '', '2017-07-17 09:18:17', '2017-07-17 12:18:17', '', 36, 'http://localhost/defato/wp-content/uploads/2017/05/20150622072736660388o.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2017-05-19 19:13:06', '2017-05-19 22:13:06', '', '2017-05-12t212308z_137625788_mt1aci14792216_rtrmadp_3_soccer-england-wba-che', '', 'inherit', 'open', 'closed', '', '2017-05-12t212308z_137625788_mt1aci14792216_rtrmadp_3_soccer-england-wba-che', '', '', '2017-05-19 19:13:06', '2017-05-19 22:13:06', '', 35, 'http://localhost/defato/wp-content/uploads/2017/05/2017-05-12t212308z_137625788_mt1aci14792216_rtrmadp_3_soccer-england-wba-che.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2017-05-19 19:18:10', '2017-05-19 22:18:10', '', 'sonhar-com-cachorro-1', '', 'inherit', 'open', 'closed', '', 'sonhar-com-cachorro-1', '', '', '2017-05-19 19:18:10', '2017-05-19 22:18:10', '', 28, 'http://localhost/defato/wp-content/uploads/2017/05/sonhar-com-cachorro-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 4, '2017-05-19 19:24:25', '2017-05-19 22:24:25', '<h3 class="cabecalho__descricao">A atriz compartilhou o clique no Instagram nesta sexta-feira (19.05)</h3>\r\n<!--more-->\r\n\r\nau, Grazi Massafera! A atriz publicou uma foto no Instgaram, nesta sexta-feira (19.05), em que aparece de biquíni e mostra a barriga seca - e chapada. O clique é do fotógrafo Eduardo Bravin, que também postou algumas imagens da atriz.\r\n\r\nSeus seguidores comentaram a imagem com muitos elogios. "Musa", "coisa mais linda" e "maravilhosa" e "tiro" foram alguns.\r\n<div class="foto componente_materia midia-largura-600"><img title="Grazi Massafera (Foto: Reprodução / Instagram)" src="http://s2.glbimg.com/fLMbqb5K1bDhqXN7r9__sU9K1Qk=/e.glbimg.com/og/ed/f/original/2017/05/19/grazi4.jpg" alt="Grazi Massafera (Foto: Reprodução / Instagram)" width="600" height="1067" /><label class="foto-legenda">Grazi Massafera (Foto: Reprodução / Instagram)</label></div>\r\n<div class="foto componente_materia midia-largura-600"><img title="Grazi Massafera (Foto: Reprodução / Instagram)" src="http://s2.glbimg.com/jwiBJHwTWJLVS-oT2DHMYYfCsgc=/e.glbimg.com/og/ed/f/original/2017/05/19/grazi3.jpg" alt="Grazi Massafera (Foto: Reprodução / Instagram)" width="600" height="1067" /><label class="foto-legenda">Grazi Massafera (Foto: Reprodução / Instagram)</label></div>\r\n<div class="foto componente_materia midia-largura-600"><img title="Grazi Massafera (Foto: Reprodução / Instagram)" src="http://s2.glbimg.com/ZJNp-O0dZ8VWRpwHb31zgUiqpd8=/e.glbimg.com/og/ed/f/original/2017/05/19/grazi2_YOzbYqf.jpg" alt="Grazi Massafera (Foto: Reprodução / Instagram)" width="600" height="1067" /></div>', 'Grazi Massafera exibe barriga chapada de biquíni', '', 'publish', 'open', 'open', '', 'grazi-massafera-exibe-barriga-chapada-de-biquini', '', '', '2017-06-27 17:05:46', '2017-06-27 20:05:46', '', 0, 'http://localhost/defato/?p=102', 0, 'post', '', 0),
(103, 1, '2017-05-19 19:24:11', '2017-05-19 22:24:11', '', 'grazi', '', 'inherit', 'open', 'closed', '', 'grazi', '', '', '2017-05-19 19:24:11', '2017-05-19 22:24:11', '', 102, 'http://localhost/defato/wp-content/uploads/2017/05/grazi.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 6, '2017-05-19 19:26:50', '2017-05-19 22:26:50', '<h2 class="content-head__subtitle">‘Na cara eu tenho é close, meu amor! Aceita que dói menos!’</h2>\r\n<!--more-->\r\n<div class="mc-column content-text active-extra-styles active-capital-letter" data-block-type="unstyled" data-block-weight="10">\r\n<p class="content-text__container theme-color-primary-first-letter" data-track-category="Link no Texto" data-track-links=""><a href="http://gshow.globo.com/novelas/a-forca-do-querer/personagem/nonato/">onato</a> (<a href="http://gshow.globo.com/artistas/silvero-pereira/">Silvero Pereira</a>), ou melhor, <strong>Elis Miranda</strong> é muito diva!</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="17">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">Ela anda deslumbrante pela rua, quando alguns caras mal-encarados fazem uma gracinha. E sabe como ela responde?</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles" data-block-type="raw" data-block-weight="12">\r\n<blockquote class="content-blockquote theme-border-color-primary-before">"Na cara eu tenho é close, meu amor! Aceita que dói menos!"</blockquote>\r\n</div>\r\n<div class="mc-column content-media content-media--normal content-photo" data-block-type="backstage-photo">\r\n<div class="content-media__container">\r\n<div class="content-media__image-centered">\r\n<div class="progressive-img can-open-lightbox" data-max-size-url="http://s2.glbimg.com/f82rS-wAaos8pnxkEtS3zoomxm4=/0x0:2000x1333/1600x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg" data-min-size="1008x671" data-max-size="1600x1066" data-min-size-url="http://s2.glbimg.com/CVth2wy_7g5NcmYd-_vOcVsIEV4=/0x0:2000x1333/1008x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg" data-media-index="1">\r\n<div class="placeholder-container"></div>\r\n<img class="progressive-draft" title="Elis Miranda MARAVILHOSA!!! (Foto: Fábio Rocha/Gshow)" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsKCwsNDhIQDQ4RDgsLEBYQERMUFRUVDA8XGBYUGBIUFRT/2wBDAQMEBAUEBQkFBQkUDQsNFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBT/wgARCAARABkDASIAAhEBAxEB/8QAGAAAAwEBAAAAAAAAAAAAAAAAAAQGBQf/xAAXAQADAQAAAAAAAAAAAAAAAAACAwUA/9oADAMBAAIQAxAAAAHkmeyyJWKuRXsZGbgI1xdhUmf/xAAgEAABAwIHAAAAAAAAAAAAAAAEAAIFAzQBBxETFBUW/9oACAEBAAEFAhg+Y6PH1MJjXNf0lFC77WR0ZjXIMkjpZ/nzkNYx1vl9YL//xAAbEQADAAIDAAAAAAAAAAAAAAAAAQIRMSEyQv/aAAgBAwEBPwGstLGxWlxs9SV2Z//EABsRAAICAwEAAAAAAAAAAAAAAAABAjESISJh/9oACAECAQE/AYcvwxb2xVIjR//EACgQAAEDAwEGBwAAAAAAAAAAAAEAAgMEERIhEDE0UWFzFDIzQXKTsf/aAAgBAQAGPwKodhEAIzZnWygZgS3JtymTlrZKd3pa+XmSVxTE4ZWisdeROn5dBokLRvc4ewQpKGJ3hoNGsjG4dVxA+tT/ACaq3tKr7uz/xAAhEAACAQMDBQAAAAAAAAAAAAABESEAEDFhgaGRsdHw8f/aAAgBAQABPyEKC8QGAYEaoGgwvAYU9RTUvGdGNszluwNpkQRpbqJXFgl5NZfEaUQCXNfT+bA9/Wue7W//2gAMAwEAAgADAAAAEEGf/P/EABoRAQACAwEAAAAAAAAAAAAAAAEAESExocH/2gAIAQMBAT8QdKyvsSxEbVqHH1nYz//EABwRAQABBAMAAAAAAAAAAAAAAAEAESExoWFxwf/aAAgBAgEBPxAiC2U1G5krws2PCY+if//EACIQAQEAAgAFBQEAAAAAAAAAAAERACEQMUFR8GFxgaGx4f/aAAgBAQABPxBxndcbGVXVNSy45CEWxv0YI19jEIcmGhpSHRSTCBnmf3IdzWvaHoLAWVzmrECAtr2oeqYs1KNZFc3fy4bvF93Psvxxj//Z" alt="Elis Miranda MARAVILHOSA!!! (Foto: Fábio Rocha/Gshow)" /> <picture> <source srcset="http://s2.glbimg.com/RTXCAJUgVOLHj5UU3Z1j4Kff8o8=/0x0:2000x1333/600x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 1x, http://s2.glbimg.com/Cjql8G5oFTR3oc7HtbiDlAA7phs=/0x0:2000x1333/1200x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 2x" media="(max-width: 1024px)" data-src="http://s2.glbimg.com/RTXCAJUgVOLHj5UU3Z1j4Kff8o8=/0x0:2000x1333/600x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 1x, http://s2.glbimg.com/Cjql8G5oFTR3oc7HtbiDlAA7phs=/0x0:2000x1333/1200x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 2x" /> <source srcset="http://s2.glbimg.com/cRLwy1DV2Uvel7ghMydoSRy6Quw=/0x0:2000x1333/640x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 1x, http://s2.glbimg.com/hE9ZppX4PeQXG7E09bS-GlAQ2gg=/0x0:2000x1333/1280x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 2x" media="(max-width: 1280px)" data-src="http://s2.glbimg.com/cRLwy1DV2Uvel7ghMydoSRy6Quw=/0x0:2000x1333/640x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 1x, http://s2.glbimg.com/hE9ZppX4PeQXG7E09bS-GlAQ2gg=/0x0:2000x1333/1280x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 2x" /> <source srcset="http://s2.glbimg.com/Q70eiePkF2WmiwJO-Qs1isjlTi4=/0x0:2000x1333/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 1x, http://s2.glbimg.com/XsdbU5aSkN7ue1p6QfJeZg0PvY8=/0x0:2000x1333/1968x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 2x" media="(max-width: 1360px)" data-src="http://s2.glbimg.com/Q70eiePkF2WmiwJO-Qs1isjlTi4=/0x0:2000x1333/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 1x, http://s2.glbimg.com/XsdbU5aSkN7ue1p6QfJeZg0PvY8=/0x0:2000x1333/1968x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 2x" /> <source srcset="http://s2.glbimg.com/Jm6nvlYjoPFBcaMxObvgXjHmWbo=/0x0:2000x1333/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 1x, http://s2.glbimg.com/DgvFec_57QvtvJgSbXIKGbNrj3s=/0x0:2000x1333/2000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 2x" media="(min-width: 1361px)" data-src="http://s2.glbimg.com/Jm6nvlYjoPFBcaMxObvgXjHmWbo=/0x0:2000x1333/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 1x, http://s2.glbimg.com/DgvFec_57QvtvJgSbXIKGbNrj3s=/0x0:2000x1333/2000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg 2x" /> <source srcset="http://s2.glbimg.com/Q70eiePkF2WmiwJO-Qs1isjlTi4=/0x0:2000x1333/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg" data-src="http://s2.glbimg.com/Q70eiePkF2WmiwJO-Qs1isjlTi4=/0x0:2000x1333/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg" /> <img class="image content-media__image progressive-loaded" title="Elis Miranda MARAVILHOSA!!! (Foto: Fábio Rocha/Gshow)" src="http://s2.glbimg.com/Q70eiePkF2WmiwJO-Qs1isjlTi4=/0x0:2000x1333/984x0/smart/filters:strip_icc%28%29/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg" alt="Elis Miranda MARAVILHOSA!!! (Foto: Fábio Rocha/Gshow)" data-src="http://s2.glbimg.com/Q70eiePkF2WmiwJO-Qs1isjlTi4=/0x0:2000x1333/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2017/W/t/WsmPVCSty1onTL4Wvr7A/fr9195.jpg" /> </picture></div>\r\n</div>\r\n<div class="content-media__description-centered ">\r\n<p class="content-media__description"><i class="content-media__description__icon theme-color-primary"> </i> <span class="content-media__description__caption"> Elis Miranda MARAVILHOSA!!! (Foto: Fábio Rocha/Gshow) </span></p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="11">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">E sabe o que mais? Ela coloca os marmanjos para correr...</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles" data-block-type="raw" data-block-weight="2">\r\n<div class="content-intertitle">\r\n<h2>#ElisMirandadiva!!!! 💜💜💜💜💜💜💜💜💜💜</h2>\r\n</div>\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="10">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links=""><em><strong>Confira o que mais vai rolar no capítulo de hoje: </strong></em></p>\r\n\r\n</div>\r\n<div class="mc-column content-media content-media--normal content-video" data-block-type="backstage-video"></div>\r\n<div class="mc-column content-media content-media--normal content-video" data-block-type="backstage-video">\r\n<div class="content-media__container content-media__container--loaded">\r\n<div class="content-video__height"></div>\r\n<div class="content-video__placeholder" data-video-id="5876327"><img class="content-video__placeholder__thumb" title="Resumo de 19/5 - Cibele vai atrás de Ruy" src="http://s04.video.glbimg.com/x720/5876327.jpg" alt="Resumo de 19/5 - Cibele vai atrás de Ruy" /></div>\r\n</div>\r\n<div class="content-media__description-centered">\r\n<p class="content-media__description"><i class="content-media__description__icon theme-color-primary"> </i> <span class="content-media__description__caption"> Resumo de 19/5 - Cibele vai atrás de Ruy </span></p>\r\n\r\n</div>\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="25">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">Não perca esta cena que vai ao ar nesta sexta, dia 19/5. <a href="http://gshow.globo.com/novelas/a-forca-do-querer/capitulo/2017/05/19/ritinha-e-jeiza-se-conhecem.html">Saiba mais sobre este capítulo </a>e fique ligado nas <a href="http://gshow.globo.com/novelas/a-forca-do-querer/resumo/semana/20170522-a-20170527">emoções da próxima semana</a>!</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="22">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links=""><a href="http://gshow.globo.com/novelas/a-forca-do-querer/">A Força do Querer</a> é uma novela de <strong>Gloria Perez</strong>, com direção artística de <strong>Rogério Gomes </strong>e direção geral de <strong>Pedro Vasconcelos</strong>.</p>\r\n\r\n</div>\r\n<div class="content-ads content-ads--reveal"></div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="22">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links=""><a href="http://especiais.gshow.globo.com/gshow/appgshow" target="_blank" rel="nofollow noopener noreferrer">Baixe o aplicativo do Gshow gratuitamente </a>na loja do seu smartphone e tablet e acompanhe tudo sobre o entretenimento da TV Globo.</p>\r\n\r\n</div>', 'Elis Miranda dá show de elegância ao enfrentar mal-encarados', '', 'publish', 'open', 'open', '', 'elis-miranda-da-show-de-elegancia-ao-enfrentar-mal-encarados', '', '', '2017-05-19 19:26:50', '2017-05-19 22:26:50', '', 0, 'http://localhost/defato/?p=105', 0, 'post', '', 0),
(106, 1, '2017-05-19 19:26:39', '2017-05-19 22:26:39', '', 'fr9202', '', 'inherit', 'open', 'closed', '', 'fr9202', '', '', '2017-05-19 19:26:39', '2017-05-19 22:26:39', '', 105, 'http://localhost/defato/wp-content/uploads/2017/05/fr9202.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2017-05-19 21:17:51', '2017-05-20 00:17:51', '', 'Cidades', '', 'publish', 'closed', 'closed', '', 'cidades', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 0, 'http://localhost/defato/?p=111', 2, 'nav_menu_item', '', 0),
(112, 1, '2017-05-19 21:17:51', '2017-05-20 00:17:51', '', 'Notícias', '', 'publish', 'closed', 'closed', '', 'noticias', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 0, 'http://localhost/defato/?p=112', 12, 'nav_menu_item', '', 0),
(113, 1, '2017-05-19 21:17:51', '2017-05-20 00:17:51', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 15, 'http://localhost/defato/?p=113', 13, 'nav_menu_item', '', 0),
(114, 1, '2017-05-19 21:17:51', '2017-05-20 00:17:51', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 15, 'http://localhost/defato/?p=114', 14, 'nav_menu_item', '', 0),
(115, 1, '2017-05-19 21:17:51', '2017-05-20 00:17:51', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 15, 'http://localhost/defato/?p=115', 15, 'nav_menu_item', '', 0),
(116, 1, '2017-05-19 21:17:52', '2017-05-20 00:17:52', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 15, 'http://localhost/defato/?p=116', 17, 'nav_menu_item', '', 0),
(120, 1, '2017-06-01 11:13:59', '2017-06-01 14:13:59', '', 'Fotos', '', 'publish', 'closed', 'closed', '', 'fotos', '', '', '2017-06-01 11:13:59', '2017-06-01 14:13:59', '', 0, 'http://localhost/defato/?page_id=120', 0, 'page', '', 0),
(122, 1, '2017-06-02 18:09:45', '2017-06-02 21:09:45', '', 'Agenda', '', 'publish', 'closed', 'closed', '', 'agenda', '', '', '2017-06-02 18:09:45', '2017-06-02 21:09:45', '', 0, 'http://localhost/defato/?page_id=122', 0, 'page', '', 0),
(124, 1, '2017-06-02 18:10:24', '2017-06-02 21:10:24', 'O evento, que acontece em agosto, no Parque de Exposições Virgílio José Gazire, terá as duplas Henrique e Juliano, Zé Neto Cristiano e os “lendários” Milionário e Marciano.\r\n\r\nEmbora as atrações não tenham sido confirmadas oficialmente pela organização do evento, <strong>DeFato Online</strong> apurou junto a empresários ligados ao setor que as contratações estão definidas. Outras apresentações não são descartadas.\r\n\r\n<span style="font-weight: inherit; font-style: inherit;">A organização do evento deverá confirmar as datas e a ordem das apresentações em breve. Segundo apurou </span><strong>DeFato Online</strong><span style="font-weight: inherit; font-style: inherit;">, Henrique e Juliano se apresentariam na quinta-feira, Zé Neto e Cristiano na sexta e Milionário e Marciano no sábado. </span>\r\n\r\nDetalhes sobre a festa, como preços dos ingressos e pontos de vendas também serão divulgados em breve pela organização da Expoita.', 'Expo Usipa 2017', 'A programação da 33ª Exposição Agropecuária e Industrial de Itabira (Expoita) já está definida. ', 'publish', 'closed', 'closed', '', 'teste', '', '', '2017-06-28 11:47:26', '2017-06-28 14:47:26', '', 0, 'http://localhost/defato/?post_type=event&#038;p=124', 0, 'event', '', 0),
(127, 1, '2017-06-02 23:26:44', '2017-06-03 02:26:44', '', 'Tv Defato', '', 'publish', 'closed', 'closed', '', 'tv-defato', '', '', '2017-06-02 23:26:44', '2017-06-03 02:26:44', '', 0, 'http://localhost/defato/?page_id=127', 0, 'page', '', 0),
(129, 1, '2017-06-02 23:30:36', '2017-06-03 02:30:36', 'Democratas querem incluir recursos para uma série de subsídios ao ObamaCare em um projeto de lei de gastos que vai precisar de apoio democrata para passar no Senado e provavelmente na Câmara. <!--more-->A administração de Trump sinalizou que pode incluir esses recursos em troca de financiamento para a construção do muro na fronteira.\r\n\r\nTrump disse em uma mensagem no Twitter que, sem um acordo, os democratas seriam responsáveis pela eventual falência da lei de saúde. “Os democratas precisam de muito dinheiro para mantê-lo. Caso contrário, o ObamaCare vai morrer muito mais cedo do que qualquer um teria imaginado”, escreveu Trump.\r\n\r\nReince Priebus, chefe de gabinete da Casa Branca, disse no programa da NBC “Meet the Press” que um acordo de saúde pode ou não ocorrer no Congresso nesta semana.\r\n\r\nPor enquanto, a administração de Trump vem mantendo os pagamentos, seguindo um precedente da administração de Barack Obama. Sem os pagamentos compartilhados com seguradoras de saúde, que reduzem os custos de desembolso para cerca de seis milhões de inscritos no programa, as seguradoras avisaram que seriam forçadas a aumentar os prêmios em dois dígitos ou a se retirar totalmente do mercado.\r\n\r\n&nbsp;\r\n\r\n<iframe src="//www.youtube.com/embed/NzWjy1TVSUo" width="560" height="314" allowfullscreen="allowfullscreen"></iframe>\r\n\r\nMas os democratas se recusam a apoiar publicamente o pedido da administração Trump de US$ 1,4 bilhão para construir o muro na fronteira EUA-México. “Os democratas não apoiam o muro, e os republicanos dos Estados da fronteira não apoiam o muro”, disse a democrata Nancy Pelosi, líder da minoria na Câmara dos Representantes, no programa “Meet the Press”. Ela citou uma pesquisa do <i>The Wall Street Journal</i> com legisladores, que mostrou não haver apoio para o muro entre 17 representantes de distritos da fronteira.\r\n\r\nTrump responsabilizou os democratas pela oposição ao muro. “Os democratas não querem que o dinheiro do orçamento vá para o muro na fronteira, apesar do fato de que vai parar as drogas e os integrantes da gangue MS-13”, disse no Twitter. Ele acrescentou em outro tweet que, embora estivesse buscando recursos em negociações do orçamento, o México eventualmente pagaria os EUA pelo muro. “Eventualmente, mas em uma data posterior, para que possamos começar logo, o México estará pagando, de alguma forma, pelo muro tão necessário na fronteira”, escreveu.\r\n\r\nTambém no programa “Meet the Press”, Mick Mulvaney, Diretor de Orçamento da Casa Branca, reiterou a disposição da administração de considerar os pagamentos do ObamaCare como parte das negociações. “Achamos que oferecemos um conjunto razoável de escolhas que eles querem em troca do que queremos”, disse. Fonte: Dow Jones Newswires.', 'Desafio musical', '', 'publish', 'open', 'open', '', 'desafio-musical', '', '', '2017-06-27 18:48:06', '2017-06-27 21:48:06', '', 0, 'http://localhost/defato/?p=129', 0, 'post', '', 0),
(131, 1, '2017-06-02 23:30:37', '2017-06-03 02:30:37', '', 'Desafio musical', '', 'inherit', 'open', 'closed', '', 'desafio-musical-2', '', '', '2017-06-02 23:30:37', '2017-06-03 02:30:37', '', 129, 'http://localhost/defato/desafio-musical/desafio-musical-2/', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2017-06-02 23:34:20', '2017-06-03 02:34:20', '<iframe src="//www.youtube.com/embed/8sisZ6IM2oc" width="560" height="314" allowfullscreen="allowfullscreen"></iframe>', 'Dota cancer build', '', 'publish', 'open', 'open', '', 'dota-cancer-build', '', '', '2017-06-27 22:57:24', '2017-06-28 01:57:24', '', 0, 'http://localhost/defato/?p=132', 0, 'post', '', 0),
(134, 1, '2017-06-02 23:34:21', '2017-06-03 02:34:21', '', 'Dota cancer build', '', 'inherit', 'open', 'closed', '', 'dota-cancer-build-2', '', '', '2017-06-02 23:34:21', '2017-06-03 02:34:21', '', 132, 'http://localhost/defato/dota-cancer-build/dota-cancer-build-2/', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2017-06-02 23:35:53', '2017-06-03 02:35:53', '<iframe src="//www.youtube.com/embed/13tqrCMbQlk" width="560" height="314" allowfullscreen="allowfullscreen"></iframe>', 'Paródia Despacito', '', 'publish', 'open', 'open', '', 'parodia-despacito', '', '', '2017-06-27 18:46:37', '2017-06-27 21:46:37', '', 0, 'http://localhost/defato/?p=135', 0, 'post', '', 0),
(137, 1, '2017-06-02 23:35:53', '2017-06-03 02:35:53', '', 'Paródia Despacito', '', 'inherit', 'open', 'closed', '', 'parodia-despacito-2', '', '', '2017-06-02 23:35:53', '2017-06-03 02:35:53', '', 135, 'http://localhost/defato/parodia-despacito/parodia-despacito-2/', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2017-06-05 13:56:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=147', 0, 'ngg_gallery', '', 0),
(148, 1, '2017-06-05 13:56:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=148', 0, 'ngg_pictures', '', 0),
(149, 1, '2017-06-05 13:56:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:47', '2017-06-05 16:56:47', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=149', 0, 'ngg_pictures', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(150, 1, '2017-06-05 13:56:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=150', 0, 'ngg_gallery', '', 0),
(151, 1, '2017-06-05 13:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=151', 0, 'ngg_pictures', '', 0),
(152, 1, '2017-06-05 13:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:48', '2017-06-05 16:56:48', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=152', 0, 'ngg_pictures', '', 0),
(153, 1, '2017-06-05 13:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:48', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=153', 0, 'ngg_pictures', '', 0),
(154, 1, '2017-06-05 13:56:49', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:49', '2017-06-05 16:56:49', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=154', 0, 'ngg_pictures', '', 0),
(155, 1, '2017-06-05 13:56:49', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:49', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=155', 0, 'ngg_pictures', '', 0),
(156, 1, '2017-06-05 13:56:50', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:50', '2017-06-05 16:56:50', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=156', 0, 'ngg_pictures', '', 0),
(157, 1, '2017-06-05 13:56:50', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:50', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=157', 0, 'ngg_pictures', '', 0),
(158, 1, '2017-06-05 13:56:50', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:50', '2017-06-05 16:56:50', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=158', 0, 'ngg_pictures', '', 0),
(159, 1, '2017-06-05 13:56:51', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:51', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=159', 0, 'ngg_pictures', '', 0),
(160, 1, '2017-06-05 13:56:51', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:51', '2017-06-05 16:56:51', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=160', 0, 'ngg_pictures', '', 0),
(161, 1, '2017-06-05 13:56:52', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:52', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=161', 0, 'ngg_pictures', '', 0),
(162, 1, '2017-06-05 13:56:52', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:52', '2017-06-05 16:56:52', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=162', 0, 'ngg_pictures', '', 0),
(163, 1, '2017-06-05 13:56:53', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:53', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=163', 0, 'ngg_pictures', '', 0),
(164, 1, '2017-06-05 13:56:53', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2017-06-05 13:56:53', '2017-06-05 16:56:53', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/defato/?p=164', 0, 'ngg_pictures', '', 0),
(169, 1, '2017-06-05 23:19:54', '2017-06-06 02:19:54', 'Justin Timberlake revelou o motivo pelo qual abandonou o grupo N’Sync. O cantor, após anos de especulação entre os fãs, alegou incompatibilidade musical para a saída da boyband que foi sucesso até o começo dos anos 2000.\r\n\r\nEm entrevista a “The Hollywood Reporter“, Justin Timberlake contou que, enquanto fazia sucesso ao som de hits como “Bye Bye Bye” e “Tearin’ up My Heart”, sentia a necessidade de produzir um outro tipo de música.\r\n\r\n&nbsp;\r\n\r\n[unitegallery teste]', 'Justin Timberlake revela motivo da saída do N’Sync: “Queria outro som”', '', 'publish', 'open', 'open', '', 'justin-timberlake-revela-motivo-da-saida-do-nsync-queria-outro-som', '', '', '2017-06-27 22:56:33', '2017-06-28 01:56:33', '', 0, 'http://localhost/defato/?p=169', 0, 'post', '', 0),
(170, 1, '2017-06-05 23:15:45', '2017-06-06 02:15:45', '', '_MG_4680', '', 'inherit', 'open', 'closed', '', '_mg_4680', '', '', '2017-06-05 23:15:45', '2017-06-06 02:15:45', '', 169, 'http://localhost/defato/wp-content/uploads/2017/06/MG_4680.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2017-06-06 00:06:41', '2017-06-06 03:06:41', 'Justin Timberlake revelou o motivo pelo qual abandonou o grupo N’Sync. O cantor, após anos de especulação entre os fãs, alegou incompatibilidade musical para a saída da boyband que foi sucesso até o começo dos anos 2000.\r\n\r\nEm entrevista a “The Hollywood Reporter“, Justin Timberlake contou que, enquanto fazia sucesso ao som de hits como “Bye Bye Bye” e “Tearin’ up My Heart”, sentia a necessidade de produzir um outro tipo de música.\r\n\r\n[unitegallery teste]', 'Justin Timberlake revela motivo da saída do N’Sync: “Queria outro som”', '', 'publish', 'open', 'open', '', 'justin-timberlake-revela-motivo-da-saida-do-nsync-queria-outro-som-2', '', '', '2017-06-28 02:26:17', '2017-06-28 05:26:17', '', 0, 'http://localhost/defato/?p=173', 0, 'post', '', 0),
(175, 1, '2017-06-06 00:06:53', '2017-06-06 03:06:53', 'Justin Timberlake revelou o motivo pelo qual abandonou o grupo N’Sync. O cantor, após anos de especulação entre os fãs, alegou incompatibilidade musical para a saída da boyband que foi sucesso até o começo dos anos 2000.\r\n\r\nEm entrevista a “The Hollywood Reporter“, Justin Timberlake contou que, enquanto fazia sucesso ao som de hits como “Bye Bye Bye” e “Tearin’ up My Heart”, sentia a necessidade de produzir um outro tipo de música.\r\n\r\n&nbsp;\r\n\r\n[unitegallery teste]\r\n\r\n&nbsp;', 'Justin Timberlake revela motivo da saída do N’Sync: “Queria outro som”', '', 'publish', 'open', 'open', '', 'justin-timberlake-revela-motivo-da-saida-do-nsync-queria-outro-som-3', '', '', '2017-06-28 02:23:09', '2017-06-28 05:23:09', '', 0, 'http://localhost/defato/?p=175', 0, 'post', '', 0),
(181, 1, '2017-06-10 15:34:49', '2017-06-10 18:34:49', '', 'Cinema', '', 'publish', 'closed', 'closed', '', 'acf_cinema', '', '', '2017-06-27 21:48:00', '2017-06-28 00:48:00', '', 0, 'http://localhost/defato/?post_type=acf&#038;p=181', 0, 'acf', '', 0),
(184, 1, '2017-06-10 15:39:03', '2017-06-10 18:39:03', '', 'Cinema', '', 'publish', 'closed', 'closed', '', 'cinema', '', '', '2017-06-10 15:39:03', '2017-06-10 18:39:03', '', 0, 'http://localhost/defato/?page_id=184', 0, 'page', '', 0),
(186, 1, '2017-06-10 15:44:15', '2017-06-10 18:44:15', '', 'timthumb.php', '', 'inherit', 'open', 'closed', '', 'timthumb-php', '', '', '2017-06-10 15:44:15', '2017-06-10 18:44:15', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/timthumb.php_.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2017-06-10 15:46:58', '2017-06-10 18:46:58', '', 'timthumb.php', '', 'inherit', 'open', 'closed', '', 'timthumb-php-2', '', '', '2017-06-10 15:46:58', '2017-06-10 18:46:58', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/timthumb.php_-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 1, '2017-06-10 16:33:54', '2017-06-10 19:33:54', '', 'Em alta', '', 'publish', 'closed', 'closed', '', 'acf_em-alta', '', '', '2017-06-27 15:32:35', '2017-06-27 18:32:35', '', 0, 'http://localhost/defato/?post_type=acf&#038;p=190', 0, 'acf', '', 0),
(192, 1, '2017-06-26 19:46:09', '2017-06-26 22:46:09', '', 'Em Alta', '', 'publish', 'closed', 'closed', '', 'em-alta', '', '', '2017-06-27 11:43:21', '2017-06-27 14:43:21', '', 0, 'http://localhost/defato/?page_id=192', 0, 'page', '', 0),
(195, 1, '2017-06-23 17:43:56', '2017-06-23 20:43:56', 'https://issuu.com/grupodefato/docs/prospecto_comercial_defato_sa__de_i', 'Revista Abril 2017', '', 'publish', 'open', 'open', '', 'revista-abril-2017', '', '', '2017-06-25 19:27:46', '2017-06-25 22:27:46', '', 0, 'http://localhost/defato/?p=195', 0, 'post', '', 0),
(196, 1, '2017-06-23 17:43:49', '2017-06-23 20:43:49', '', 'capa', '', 'inherit', 'open', 'closed', '', 'capa', '', '', '2017-06-23 17:43:49', '2017-06-23 20:43:49', '', 195, 'http://localhost/defato/wp-content/uploads/2017/06/capa.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2017-06-24 14:10:57', '2017-06-24 17:10:57', 'https://issuu.com/grupodefato/docs/prospecto_comercial_defato_sa__de_i', 'Revista Março 2017', '', 'publish', 'open', 'open', '', 'revista-marco-2017', '', '', '2017-06-27 21:52:18', '2017-06-28 00:52:18', '', 0, 'http://localhost/defato/?p=200', 0, 'post', '', 0),
(205, 1, '2017-06-25 19:25:03', '2017-06-25 22:25:03', '', 'Revista', '', 'publish', 'closed', 'closed', '', 'acf_revista', '', '', '2017-06-27 21:52:04', '2017-06-28 00:52:04', '', 0, 'http://localhost/defato/?post_type=acf&#038;p=205', 0, 'acf', '', 0),
(208, 1, '2017-06-25 21:26:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-06-25 21:26:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/defato/?p=208', 1, 'nav_menu_item', '', 0),
(210, 1, '2017-06-25 21:27:29', '2017-06-26 00:27:29', ' ', '', '', 'publish', 'closed', 'closed', '', '210', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 0, 'http://localhost/defato/?p=210', 21, 'nav_menu_item', '', 0),
(211, 1, '2017-06-25 21:27:29', '2017-06-26 00:27:29', ' ', '', '', 'publish', 'closed', 'closed', '', '211', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 0, 'http://localhost/defato/?p=211', 22, 'nav_menu_item', '', 0),
(214, 1, '2017-06-25 21:27:29', '2017-06-26 00:27:29', ' ', '', '', 'publish', 'closed', 'closed', '', '214', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 0, 'http://localhost/defato/?p=214', 23, 'nav_menu_item', '', 0),
(215, 1, '2017-06-25 21:27:29', '2017-06-26 00:27:29', ' ', '', '', 'publish', 'closed', 'closed', '', '215', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 0, 'http://localhost/defato/?p=215', 24, 'nav_menu_item', '', 0),
(221, 1, '2017-06-26 12:14:01', '2017-06-26 15:14:01', '[dlm_no_access]', 'No Access', '', 'trash', 'closed', 'closed', '', 'no-access__trashed', '', '', '2017-07-14 10:19:52', '2017-07-14 13:19:52', '', 0, 'http://localhost/defato/no-access/', 0, 'page', '', 0),
(225, 1, '2017-06-26 14:28:48', '2017-06-26 17:28:48', ' ', '', '', 'publish', 'closed', 'closed', '', '225', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 0, 'http://localhost/defato/?p=225', 20, 'nav_menu_item', '', 0),
(237, 1, '2017-06-26 18:04:55', '2017-06-26 21:04:55', '', 'header_1', '', 'inherit', 'open', 'closed', '', 'header_1', '', '', '2017-06-26 18:04:55', '2017-06-26 21:04:55', '', 102, 'http://localhost/defato/wp-content/uploads/2017/05/header_1.png', 0, 'attachment', 'image/png', 0),
(242, 1, '2017-06-26 18:17:21', '2017-06-26 21:17:21', '', 'a-múmia', '', 'inherit', 'open', 'closed', '', 'a-mumia-2', '', '', '2017-06-26 18:17:21', '2017-06-26 21:17:21', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/a-múmia.jpg', 0, 'attachment', 'image/jpeg', 0),
(245, 1, '2017-06-26 18:22:42', '2017-06-26 21:22:42', '', 'conteudo_77771', '', 'inherit', 'open', 'closed', '', 'conteudo_77771', '', '', '2017-06-26 18:22:42', '2017-06-26 21:22:42', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/conteudo_77771.jpg', 0, 'attachment', 'image/jpeg', 0),
(252, 1, '2017-06-26 18:31:06', '2017-06-26 21:31:06', 'Greg (Jason Drucker) consegue convencer toda a sua família a embarcar numa viagem para ir ao aniversário de 90 anos de sua avó. Mas o que ninguém esperava era que o garoto queria realmente assistir a uma convenção de gamers. A partir daí, muitas palhaçadas começam a acontecer.', 'Wolverine', '', 'publish', 'open', 'open', '', 'wolverine-2', '', '', '2017-06-26 18:39:30', '2017-06-26 21:39:30', '', 0, 'http://localhost/defato/?p=252', 0, 'post', '', 0),
(254, 1, '2017-06-26 18:33:52', '2017-06-26 21:33:52', 'Greg (Jason Drucker) consegue convencer toda a sua família a embarcar numa viagem para ir ao aniversário de 90 anos de sua avó. Mas o que ninguém esperava era que o garoto queria realmente assistir a uma convenção de gamers. A partir daí, muitas palhaçadas começam a acontecer.', 'A Múmia', '', 'publish', 'open', 'open', '', 'a-mumia', '', '', '2017-06-26 18:34:28', '2017-06-26 21:34:28', '', 0, 'http://localhost/defato/?p=254', 0, 'post', '', 0),
(257, 1, '2017-06-26 18:35:32', '2017-06-26 21:35:32', 'Greg (Jason Drucker) consegue convencer toda a sua família a embarcar numa viagem para ir ao aniversário de 90 anos de sua avó. Mas o que ninguém esperava era que o garoto queria realmente assistir a uma convenção de gamers. A partir daí, muit', 'Diary Of A Wimpy Kid: The Long Haul', '', 'publish', 'open', 'open', '', 'diary-of-a-wimpy-kid-the-long-haul', '', '', '2017-06-26 18:35:32', '2017-06-26 21:35:32', '', 0, 'http://localhost/defato/?p=257', 0, 'post', '', 0),
(259, 1, '2017-06-26 18:36:50', '2017-06-26 21:36:50', 'Greg (Jason Drucker) consegue convencer toda a sua família a embarcar numa viagem para ir ao aniversário de 90 anos de sua avó. Mas o que ninguém esperava era que o garoto queria realmente assistir a uma convenção de gamers. A partir daí, muit', 'Spider Man', '', 'publish', 'open', 'open', '', 'spider-man', '', '', '2017-06-26 18:36:50', '2017-06-26 21:36:50', '', 0, 'http://localhost/defato/?p=259', 0, 'post', '', 0),
(264, 1, '2017-06-27 00:11:52', '2017-06-27 03:11:52', '', 'bg-banner1', '', 'inherit', 'open', 'closed', '', 'bg-banner1', '', '', '2017-06-27 00:11:52', '2017-06-27 03:11:52', '', 56, 'http://localhost/defato/wp-content/uploads/2017/05/bg-banner1.png', 0, 'attachment', 'image/png', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(269, 1, '2017-06-27 12:31:52', '2017-06-27 15:31:52', '', 'Ocultar ferramentas não utilizadas', '', 'publish', 'closed', 'closed', '', 'acf_ocultar-ferramentas-nao-utilizadas', '', '', '2017-06-27 12:31:52', '2017-06-27 15:31:52', '', 0, 'http://localhost/defato/?post_type=acf&#038;p=269', 0, 'acf', '', 0),
(270, 1, '2017-06-27 14:09:45', '2017-06-27 17:09:45', '<div class="foto">\r\n<div class="legenda">Valério busca unir com secretária municipal de Educação e com secretária municipal de Esportes, Lazer e Juventude</div>\r\n</div>\r\n<div class="galeria galeria_right">\r\n<div class="label">Galeria de fotos</div>\r\n<div class="clear-both"></div>\r\n</div>\r\n<div class="materia">\r\n\r\nPela primeira vez em 75 anos, o Valério Esporte Clube não participará da Segunda Divisão do Campeonato Mineiro. O anúncio foi feito pelo presidente do clube, Luiz Antônio de Oliveira, o “Precata”, na manhã desta quinta-feira, 4 de maio, no Estádio Israel Pinheiro, em Itabira. Luiz explicou que a decisão foi tomada diante da situação econômica do Valério.\r\n\r\nSegundo Precata, o Valério não pode viver na ilusão de que está tudo bem. “Disputamos campeonatos, mas, por trás não está legal. São dividas, processos e os compromissos do clube não estão em dia”, desabafou. O presidente afirmou que não desistirá e não parará por aqui. “Temos categoria de base em disputa, e, para recomeço, vamos entrar com esporte terceirizado de futsal”, contou.\r\n\r\n<a href="http://www.defatoonline.com.br/noticias/ultimas/16-03-2017/presidente-aponta-divida-de-r-8-milhoes-no-valerio" target="_blank" rel="noopener">A divida do VEC chega a R$ 8 milhões</a>. Os problemas do passado têm refletido diretamente na situação atual do Valério. Há anos na última divisão do Campeonato Mineiro, o clube coleciona campanhas fracassadas e deficitárias a cada temporada. O Valério deve R$ 23.500 à Federação Mineira de Futebol (FMF), consequentes da taxa de liberação do alvará deste ano, pequenos custeios e divida do ano passado.\r\n\r\nEm situação financeira complicada, o Valério tenta parcerias e alternativas para ter boa sorte em 2017. Uma delas é se aproximar dos times amadores de Itabira e cidades vizinhas. Segundo Precata, a saída é reestruturar o clube. “As secretarias de Educação e de Esporte e Lazer está nos dando apoio e força para iniciar”, contou.\r\n\r\nNo ano passado, o Dragão terminou em quinto lugar na hexagonal final da segunda divisão do Campeonato Mineiro.\r\n\r\n</div>', 'Valério anuncia que não vai disputar a 2ª Divisão', '“Não podemos ficar passando uma falsa imagem para a população, de que está tudo certinho e bacana”, disse presidente do Clube', 'trash', 'open', 'open', '', 'valerio-anuncia-que-nao-vai-disputar-a-2a-divisao__trashed', '', '', '2017-06-27 17:23:36', '2017-06-27 20:23:36', '', 0, 'http://localhost/defato/?p=270', 0, 'post', '', 0),
(271, 1, '2017-06-27 14:06:05', '2017-06-27 17:06:05', '', 'diminuator', '', 'inherit', 'open', 'closed', '', 'diminuator', '', '', '2017-06-27 14:06:05', '2017-06-27 17:06:05', '', 270, 'http://localhost/defato/wp-content/uploads/2017/06/diminuator.jpg', 0, 'attachment', 'image/jpeg', 0),
(278, 1, '2017-06-27 17:01:55', '2017-06-27 20:01:55', '<p style="text-align: justify;">A bola ainda vai demorar um pouco a rolar pela Segunda Divisão do Campeonato Mineiro, mas o Valério já se movimenta administrativamente para reunir condições de disputar a competição. Sem dinheiro, com dívidas milionárias e pouco apoio concreto até então, a diretoria mira uma parceria com o futebol amador para se sobressair em 2017. Detalhes do planejamento foram repassados pelo presidente Luiz Antônio de Oliveira “Precata” em entrevista à imprensa na manhã desta quinta-feira, 16 de março.</p>\r\n<p style="text-align: justify;">A mudança de filosofia passa também por novos integrantes da diretoria do Valério. Com larga experiência no futebol amador, José Carlos Felipe, o Felipão, será o novo gerente de Futebol do Dragão. Essa é a sua quarta passagem pelo clube e sua missão será estreitar o laço com os clubes itabiranos. Quem também estará no primeiro escalão do VEC é o ex-jogador Cleidimar Magalhães Silva (Didi), revelado no time itabirano e que agora assume a vice-presidente de Futebol.</p>\r\n<p style="text-align: justify;">Luiz Precata comentou que já conversou com a direção da Liga Itabirana de Futebol Amador (Lifa) para estreitar a relação e obter autorização para dar início às parcerias com os clubes amadores. Agora, o trabalho é procurar cada presidente de agremiação para falar do projeto do Valério. A intenção é que essa parceria seja feita com categorias de base. Dessa forma, potenciais valores dos times amadores seriam aproveitados pelas equipes de acesso do VEC antes de chegarem ao profissional.</p>\r\n<p style="text-align: justify;">“Começamos mais um ano sem recursos, como foi no ano passado. Mas a luta não pode parar. Essa parceria com o amador é uma luz no fim do túnel que a gente vê. Queremos integrar o Valério ao amador de Itabira e de cidades vizinhas para captar talentos. Precisamos agregar talentos ao Valério”, afirmou o presidente.</p>\r\n<p style="text-align: justify;">Precata admitiu que o planejamento não está na velocidade que ele gostaria, “está lento”, segundo avaliou, mas enfatizou que não pensa em deixar o VEC de fora da Segunda Divisão do Campeonato Mineiro. “Seria uma decepção muito grande para a cidade”, comentou. “Jogaremos com o que de melhor tivermos. Se não tivermos parcerias, condições de trazer jogadores mais rodados e experientes, vamos só com o pessoal daqui mesmo. Tenho certeza que dá para fazer algo muito positivo”, completou o presidente, que aproveitou para pedir apoio ao empresariado da cidade: “Estamos com um trabalho sério, honrado. Qualquer ajuda é bem-vinda”.</p>\r\n<p style="text-align: justify;"><strong>Experiência no amador</strong></p>\r\n<p style="text-align: justify;">Nome forte do futebol amador de Itabira, Felipão diz que chega ao Valério com o intuito de usar sua experiência e os relacionamentos que construiu para ajudar a reerguer o Dragão. Na opinião dele, o VEC não pode perder mais tempo e precisa, desde já, iniciar os testes de avaliação com jogadores locais. Outro passo, porém, é definir a comissão técnica.</p>\r\n<p style="text-align: justify;">“Nós temos bons jogadores em Itabira, mas não podemos fazer as coisas em cima da hora. O campeonato começa no dia 29 de julho e acho que esse é o momento de a gente analisar, sentar com o presidente e com a diretoria, para ver a possibilidade de iniciar alguns treinamentos o mais rápido possível. Nós temos alguns jogadores que estão parados e outros do amador que podem fazer o trabalho. Mas é o treinador é que vai avaliar se eles têm condições ou não”, defendeu.</p>\r\n<p style="text-align: justify;"><span style="font-weight: inherit; font-style: inherit;">Questionado se o ex-jogador Mauricinho, hoje técnico das categorias de base do Valério, teria a preferência para assumir o elenco principal, o presidente Luiz Precata não deu certeza. Disse que a única definição é de que ele estará na comissão técnica. “Tenho total confiança no Mauricinho e sei que, se for ele o escolhido, será capaz de fazer grande trabalho”, disse.</span></p>', 'Valério aposta em parceria com futebol amador para sobressair em 2017', 'Em coletiva à imprensa, presidente falou das dificuldades orçamentárias e dos planos para evitar que Valério fique de fora pela primeira vez de uma edição do Campeonato Mineiro', 'publish', 'open', 'open', '', 'valerio-aposta-em-parceria-com-futebol-amador-para-sobressair-em-2017', '', '', '2017-06-28 02:37:17', '2017-06-28 05:37:17', '', 0, 'http://localhost/defato/?p=278', 0, 'post', '', 0),
(279, 1, '2017-06-27 17:01:04', '2017-06-27 20:01:04', '', 'foto_16032017114204', '', 'inherit', 'open', 'closed', '', 'foto_16032017114204', '', '', '2017-06-27 17:01:04', '2017-06-27 20:01:04', '', 278, 'http://localhost/defato/wp-content/uploads/2017/06/foto_16032017114204.jpg', 0, 'attachment', 'image/jpeg', 0),
(283, 1, '2017-06-27 17:26:44', '2017-06-27 20:26:44', '<p style="text-align: justify;">O elenco se reuniu nas dependências do complexo esportivo Israel Pinheiro e conversou brevemente com o treinador Luis Henrique Arantes. Depois, os atletas posaram para fotos e deram entrevistas à imprensa.</p>\r\n<p style="text-align: justify;">De acordo com a comissão técnica, 22 jogadores foram apresentados nessa segunda-feira. Grande parte é de Itabira e de outras cidades da região, como Santa Maria de Itabira, por exemplo. Segundo o assistente técnico e coordenador de Preparação Física, Eduardo Luersen, a média de idade da equipe será próxima de 22 anos. Alguns dos atletas estiveram no elenco valeriano no ano passado e retornam para tentar melhor sorte em 2016.</p>\r\n<p style="text-align: justify;">É o caso do zagueiro Ulisses. Um dos destaques do VEC nos últimos anos, o santa-mariense esteve emprestado ao Uberaba para jogar o Módulo II neste ano e retorna ao Israel Pinheiro. Ele dá a receita para conseguir na atual temporada o que não foi conquistado nas outras. “Nos anos que passaram a gente trabalhou bem, estivemos focados, mas a competição exige um pouco mais, especialmente na parte final. E tenho certeza que nesse elenco que está sendo montado empenho e dedicação não irão faltar”, comentou.</p>\r\n<p style="text-align: justify;">“Experiente” no Valério, Ulisses sabe da tradição do clube e do valor que tem a camisa a camisa vermelha e branca do Dragão. Ele espera que o grupo também seja sabedor disso e lute para conquistar o acesso. “A maioria já sabe que o Valério é um time de camisa, que deve ser respeitado. Embora esteja na Terceira Divisão, esse não é o nosso lugar. E acho que todo grupo já está ciente disso e veio para cá para tirar o Valério dessa situação. Não foi a gente que colocou o clube nesta situação, mas estamos aqui para tirar e fazer o nosso melhor”, afirmou.</p>\r\n<p style="text-align: justify;"><strong>Experiência</strong></p>\r\n<p style="text-align: justify;">A Terceira Divisão do Mineiro será, pelo segundo ano consecutivo, disputada com atletas sub-23. Só poderão ser inscritos cinco jogadores com idade acima desse limite. Um deles é Klivanly Hevany da Silva Lima, ou simplesmente Lima, 25 anos. Revelado pelo Fluminense e com passagem também pelo Coritiba, ele será o atleta com maior bagagem no elenco. O volante, que recentemente sofreu uma grave lesão, enxerga o Valério como um recomeço e espera colaborar para o acesso.</p>\r\n<p style="text-align: justify;">“A expectativa é a melhor possível, principalmente se tratando da tradição que o Valério tem em Minas Gerais. Por eu ser de Belo Horizonte, conheço bem a história. Com a nova comissão técnica e meus colegas, creio que tem tudo para dar certo. Agora é trabalhar. Estamos nos apresentando dois meses antes de começar o campeonato e acho que vamos conseguir nos organizar bem”, comentou o atleta, que sabe que terá uma responsabilidade a mais por ser um dos mais experientes: “É uma responsabilidade boa, porque os mais novos ficam tendo uma visão de como a gente vai se comportar. E aquilo que eu já aprendi por onde passei posso estar passando para eles. Da mesma forma, eles também me ajudarão com o que sabem”.</p>\r\n<p style="text-align: justify;"><strong>Grupo</strong></p>\r\n<p style="text-align: justify;">Mais quatro jogadores chegam ao Valério nesta quinta-feira, 9 de junho. O clube ainda tenta a contratação do atacante Felipe Capixaba, vice-artilheiro da Terceirona no ano passado, quando defendeu o Figueirense, de São João Del Rei, e foi comandado pelo treinador Luis Henrique Arantes. As tratativas estão avançadas e é provável que ele feche contrato com o Dragão.</p>\r\n<p style="text-align: justify;"><span style="font-weight: inherit; font-style: inherit;">Com a chegada da última leva, o grupo estará praticamente fechado. Todos passarão por avaliação médica e exames físicos no decorrer da semana e os resultados poderão sinalizar alguma troca. O elenco também fica no aguardo da peneira que será realizada neste fim de semana, de onde o técnico Luis Henrique já afirmou que espera retirar de “<b><strong style="font-style: inherit;"><a style="font-weight: inherit; font-style: inherit;" href="http://www.defatoonline.com.br/noticias/ultimas/04-06-2016/novo-treinador-espera-tirar-ate-quatro-jogadores-de-peneira-do-valerio">três a quatro jogadores</a></strong></b>”. </span></p>', 'Valério apresenta elenco para disputa da Terceira Divisão', 'O Valério apresentou nessa segunda-feira, 6 de junho, a maioria dos jogadores que atuará na Terceira Divisão do Campeonato Mineiro em 2016. ', 'publish', 'open', 'open', '', 'valerio-apresenta-elenco-para-disputa-da-terceira-divisao', '', '', '2017-06-28 02:32:42', '2017-06-28 05:32:42', '', 0, 'http://localhost/defato/?p=283', 0, 'post', '', 0),
(294, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:15:"category:cinema";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:5:{i:0;s:13:"custom_fields";i:1;s:10:"discussion";i:2;s:8:"comments";i:3;s:4:"slug";i:4;s:15:"send-trackbacks";}s:11:"description";s:0:"";}', 'Cinema', 'cinema', 'publish', 'closed', 'closed', '', 'group_59530346b773f', '', '', '2017-06-27 22:21:48', '2017-06-28 01:21:48', '', 0, 'http://localhost/defato/?post_type=acf-field-group&#038;p=294', 0, 'acf-field-group', '', 0),
(295, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:20:{s:4:"type";s:19:"dynamic_year_select";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:18:"oldest_year_method";s:8:"relative";s:22:"oldest_year_exact_year";i:2017;s:25:"oldest_year_relative_year";i:20;s:35:"oldest_year_relative_year_direction";s:6:"before";s:18:"newest_year_method";s:5:"exact";s:22:"newest_year_exact_year";i:2017;s:25:"newest_year_relative_year";i:20;s:35:"newest_year_relative_year_direction";s:5:"after";s:9:"year_step";i:1;s:8:"order_by";s:13:"chronological";s:18:"current_year_allow";i:0;s:18:"current_year_label";s:7:"Current";s:17:"conditional_logic";i:0;s:12:"current_year";a:2:{s:5:"allow";b:0;s:5:"label";s:7:"Current";}s:11:"oldest_year";a:4:{s:6:"method";s:8:"relative";s:10:"exact_year";s:4:"2017";s:13:"relative_year";i:20;s:23:"relative_year_direction";s:6:"before";}s:11:"newest_year";a:4:{s:6:"method";s:5:"exact";s:10:"exact_year";s:4:"2017";s:13:"relative_year";i:20;s:23:"relative_year_direction";s:5:"after";}}', 'Ano', 'ano', 'publish', 'closed', 'closed', '', 'field_593c39c875925', '', '', '2017-06-27 22:15:50', '2017-06-28 01:15:50', '', 294, 'http://localhost/defato/?post_type=acf-field&p=295', 1, 'acf-field', '', 0),
(296, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:9:{s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"first_day";i:1;s:17:"conditional_logic";i:0;s:13:"return_format";s:5:"d/m/Y";s:14:"display_format";s:5:"d/m/Y";s:11:"save_format";s:7:"yymmddd";}', 'Estreia', 'estreia', 'publish', 'closed', 'closed', '', 'field_593c39e675926', '', '', '2017-06-27 22:15:50', '2017-06-28 01:15:50', '', 294, 'http://localhost/defato/?post_type=acf-field&p=296', 2, 'acf-field', '', 0),
(297, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Pais', 'pais', 'publish', 'closed', 'closed', '', 'field_593c3a4775927', '', '', '2017-06-27 22:15:50', '2017-06-28 01:15:50', '', 294, 'http://localhost/defato/?post_type=acf-field&p=297', 3, 'acf-field', '', 0),
(298, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Duração', 'duracao', 'publish', 'closed', 'closed', '', 'field_593c3a8375928', '', '', '2017-06-27 22:15:50', '2017-06-28 01:15:50', '', 294, 'http://localhost/defato/?post_type=acf-field&p=298', 4, 'acf-field', '', 0),
(299, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Distribuidora', 'distribuidora', 'publish', 'closed', 'closed', '', 'field_593c3ab675929', '', '', '2017-06-27 22:15:50', '2017-06-28 01:15:50', '', 294, 'http://localhost/defato/?post_type=acf-field&p=299', 5, 'acf-field', '', 0),
(300, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:12:{s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:29:{s:6:"Ação";s:6:"Ação";s:10:"Animação";s:10:"Animação";s:8:"Aventura";s:8:"Aventura";s:9:"Chanchada";s:9:"Chanchada";s:18:"Cinema catástrofe";s:18:"Cinema catástrofe";s:8:"Comédia";s:8:"Comédia";s:19:"Comédia romântica";s:19:"Comédia romântica";s:19:"Comédia dramática";s:19:"Comédia dramática";s:18:"Comédia de ação";s:18:"Comédia de ação";s:4:"Cult";s:4:"Cult";s:14:"Documentários";s:14:"Documentários";s:5:"Drama";s:5:"Drama";s:10:"Espionagem";s:10:"Espionagem";s:8:"Erótico";s:8:"Erótico";s:8:"Fantasia";s:8:"Fantasia";s:21:"Faroeste (ou western)";s:21:"Faroeste (ou western)";s:20:"Ficção científica";s:20:"Ficção científica";s:17:"Franchise/Séries";s:17:"Franchise/Séries";s:6:"Guerra";s:6:"Guerra";s:9:"Machinima";s:9:"Machinima";s:7:"Musical";s:7:"Musical";s:10:"Filme noir";s:10:"Filme noir";s:8:"Policial";s:8:"Policial";s:14:"Pornochanchada";s:14:"Pornochanchada";s:13:"Pornográfico";s:13:"Pornográfico";s:7:"Romance";s:7:"Romance";s:8:"Suspense";s:8:"Suspense";s:18:"Terror (ou horror)";s:18:"Terror (ou horror)";s:5:"Trash";s:5:"Trash";}s:12:"other_choice";i:0;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:8:"vertical";s:17:"conditional_logic";i:0;s:10:"allow_null";i:0;s:13:"return_format";s:5:"value";}', 'Gênero', 'genero', 'publish', 'closed', 'closed', '', 'field_593c3ac77592a', '', '', '2017-06-27 22:15:50', '2017-06-28 01:15:50', '', 294, 'http://localhost/defato/?post_type=acf-field&p=300', 6, 'acf-field', '', 0),
(301, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:2:{s:8:"Estréia";s:8:"Estréia";s:9:"Em cartaz";s:9:"Em cartaz";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:17:"conditional_logic";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:11:"placeholder";s:0:"";s:13:"return_format";s:5:"value";}', 'Tag', 'tag', 'publish', 'closed', 'closed', '', 'field_594de80db72f6', '', '', '2017-06-27 22:15:50', '2017-06-28 01:15:50', '', 294, 'http://localhost/defato/?post_type=acf-field&p=301', 0, 'acf-field', '', 0),
(302, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:8:"taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:8:"category";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Em alta', 'em-alta', 'publish', 'closed', 'closed', '', 'group_59530346ccbef', '', '', '2017-06-27 22:22:34', '2017-06-28 01:22:34', '', 0, 'http://localhost/defato/?post_type=acf-field-group&#038;p=302', 0, 'acf-field-group', '', 0),
(303, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";i:0;s:13:"return_format";s:3:"url";s:9:"min_width";i:0;s:10:"min_height";i:0;s:8:"min_size";i:0;s:9:"max_width";i:0;s:10:"max_height";i:0;s:8:"max_size";i:0;s:10:"mime_types";s:0:"";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_593c498cff944', '', '', '2017-06-27 22:15:50', '2017-06-28 01:15:50', '', 302, 'http://localhost/defato/?post_type=acf-field&p=303', 0, 'acf-field', '', 0),
(304, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:5:{i:0;s:13:"custom_fields";i:1;s:10:"discussion";i:2;s:8:"comments";i:3;s:4:"slug";i:4;s:15:"send-trackbacks";}s:11:"description";s:0:"";}', 'Ocultar ferramentas não utilizadas', 'ocultar-ferramentas-nao-utilizadas', 'publish', 'closed', 'closed', '', 'group_59530346d205f', '', '', '2017-06-27 22:15:50', '2017-06-28 01:15:50', '', 0, 'http://localhost/defato/?post_type=acf-field-group&p=304', 0, 'acf-field-group', '', 0),
(305, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:16:"category:revista";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Revista', 'revista', 'publish', 'closed', 'closed', '', 'group_59530346d46de', '', '', '2017-06-27 22:23:16', '2017-06-28 01:23:16', '', 0, 'http://localhost/defato/?post_type=acf-field-group&#038;p=305', 0, 'acf-field-group', '', 0),
(306, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Link Issuu', 'link_issuu', 'publish', 'closed', 'closed', '', 'field_5950382e59139', '', '', '2017-06-27 22:20:37', '2017-06-28 01:20:37', '', 305, 'http://localhost/defato/?post_type=acf-field&#038;p=306', 0, 'acf-field', '', 0),
(307, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:7:{s:8:"location";a:1:{i:0;a:3:{i:0;a:3:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"!=";s:5:"value";s:15:"category:cinema";}i:1;a:3:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"!=";s:5:"value";s:16:"category:revista";}i:2;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:5:{i:0;s:13:"custom_fields";i:1;s:10:"discussion";i:2;s:8:"comments";i:3;s:4:"slug";i:4;s:15:"send-trackbacks";}s:11:"description";s:0:"";}', 'Versal', 'versal', 'publish', 'closed', 'closed', '', 'group_59530346d8c6e', '', '', '2017-06-27 22:24:03', '2017-06-28 01:24:03', '', 0, 'http://localhost/defato/?post_type=acf-field-group&#038;p=307', 0, 'acf-field-group', '', 0),
(308, 1, '2017-06-27 22:15:50', '2017-06-28 01:15:50', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:18:"Versal da notícia";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Versal', 'versal-pagina', 'publish', 'closed', 'closed', '', 'field_591e63ee091c9', '', '', '2017-06-27 22:15:50', '2017-06-28 01:15:50', '', 307, 'http://localhost/defato/?post_type=acf-field&p=308', 0, 'acf-field', '', 0),
(309, 1, '2017-06-27 22:22:42', '2017-06-28 01:22:42', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:5:{i:0;s:13:"custom_fields";i:1;s:10:"discussion";i:2;s:8:"comments";i:3;s:4:"slug";i:4;s:15:"send-trackbacks";}s:11:"description";s:0:"";}', 'Ocultar ferramentas não utilizadas (copiar)', 'ocultar-ferramentas-nao-utilizadas-copiar', 'trash', 'closed', 'closed', '', 'group_595304e2bcfc7__trashed', '', '', '2017-06-27 22:22:45', '2017-06-28 01:22:45', '', 0, 'http://localhost/defato/?post_type=acf-field-group&#038;p=309', 0, 'acf-field-group', '', 0),
(310, 1, '2017-06-27 22:30:31', '2017-06-28 01:30:31', '<p style="text-align: justify;">O carro-chefe do cardápio do evento, que é aberto ao público, será um creme de mandioca com ragu de costela bovina preparada pelo consultor chef Jason Vasconcelos. Segundo ele, a iniciativa tem como propósito apresentar ao público a programação do festival gastronômico, que será realizado de 2 a 9 de julho.</p>\r\n<p style="text-align: justify;">“No dia 2 de julho, teremos a abertura oficial do Ipatinga Gourmet, nos bares do Centro Comercial do Cariru, com degustação de pratos assinados por chefes do Vale do Aço. De 3 a 7 de julho, serão realizadas oficinas de gastronomia na Sala de Treinamento do Hiperconsul, no Shopping do Vale do Aço. Nos dias 8 e 9 de julho, o Festival será realizado no Parque das Cachoeiras”, informa o chef.</p>\r\n<p style="text-align: justify;"><span style="font-weight: inherit; font-style: inherit;">Atrações artísticas completam o programa do Ipatinga Gourmet, uma realização da Fino Trato, gestão cultural, e Sebrae. O evento é viabilizado graças à sua aprovação em edital da Codemig. </span></p>\r\n<p style="text-align: justify;"><b><strong style="font-style: inherit;">SERVIÇO</strong></b></p>\r\n<p style="text-align: justify;">Lançamento do Ipatinga Gourmet; aberto ao público. Dia 27 de junho, a partir das 20h, no Brüder Butiquim (rua Dom Pedro II, 185 - Cidade Nobre).</p>', 'Festival gastronômico Ipatinga Gourmet é lançado no Vale do Aço', 'O Ipatinga Gourmet, festival gastronômico que entra neste ano em sua terceira edição na região do Vale do Aço, será lançado nesta terça-feira, 27 de junho, no Brüder Butiquim, no bairro Cidade Nobre, ao som de Art’Vitrola. ', 'publish', 'open', 'open', '', 'festival-gastronomico-ipatinga-gourmet-e-lancado-no-vale-do-aco', '', '', '2017-06-28 00:04:24', '2017-06-28 03:04:24', '', 0, 'http://localhost/defato/?p=310', 0, 'post', '', 0),
(313, 1, '2017-06-28 00:01:49', '2017-06-28 03:01:49', '', 'chef-450x300', '', 'inherit', 'open', 'closed', '', 'chef-450x300', '', '', '2017-06-28 00:01:49', '2017-06-28 03:01:49', '', 310, 'http://localhost/defato/wp-content/uploads/2017/06/chef-450x300.jpg', 0, 'attachment', 'image/jpeg', 0),
(314, 1, '2017-06-28 00:04:11', '2017-06-28 03:04:11', '', 'slide_347242_3676423_free', '', 'inherit', 'open', 'closed', '', 'slide_347242_3676423_free', '', '', '2017-06-28 00:04:11', '2017-06-28 03:04:11', '', 310, 'http://localhost/defato/wp-content/uploads/2017/06/slide_347242_3676423_free.jpg', 0, 'attachment', 'image/jpeg', 0),
(315, 1, '2017-06-28 00:36:31', '2017-06-28 03:36:31', '', '300x300x4-501bcefc6a8c8a9d8e71904d2429c31ea80b8b5bf8bba', '', 'inherit', 'open', 'closed', '', '300x300x4-501bcefc6a8c8a9d8e71904d2429c31ea80b8b5bf8bba', '', '', '2017-06-28 00:36:31', '2017-06-28 03:36:31', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/300x300x4-501bcefc6a8c8a9d8e71904d2429c31ea80b8b5bf8bba.jpg', 0, 'attachment', 'image/jpeg', 0),
(316, 1, '2017-06-28 00:38:21', '2017-06-28 03:38:21', '', 'roberto', '', 'inherit', 'open', 'closed', '', 'roberto', '', '', '2017-06-28 00:38:21', '2017-06-28 03:38:21', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/roberto.jpg', 0, 'attachment', 'image/jpeg', 0),
(317, 1, '2017-06-28 01:03:09', '2017-06-28 04:03:09', '<div class="mc-column content-text active-extra-styles active-capital-letter" data-block-type="unstyled" data-block-weight="90">\r\n<p class="content-text__container theme-color-primary-first-letter" style="text-align: justify;" data-track-category="Link no Texto" data-track-links="">Botafogo e Montillo têm reunião marcada na tarde desta quarta-feira, em encontro que pode deixar encaminhado o futuro do argentino no clube. O meia foi liberado do treino pelo segundo dia seguido e não deve aparecer no Nilton Santos, mas sim em General Severiano, onde vai realizar um exame de imagem na panturrilha direita e conversar com diretoria e equipe médica alvinegra. Segundo divulgado pelo "Lance!", o jogador, de 33 anos, já cogitou pedir uma rescisão amigável dependendo da gravidade da lesão, que seria a sua quinta em seis meses.</p>\r\n\r\n</div>\r\n<div class="mc-column content-media content-media--normal content-video" style="text-align: justify;" data-block-type="backstage-video">\r\n<div class="content-media__container content-media__container--loaded">\r\n<div class="content-video__video">\r\n<div id="wp3-player-0" class="clappr-player" tabindex="9999" data-player="">\r\n<div class="dfp-ad-overlay dfp-poster-mode" data-ad-overlay=""> <img class="content-video__placeholder__thumb" title="Montillo sai de campo após sentir novamente lesão na panturrilha, aos 07\' do 1º tempo" src="http://s01.video.glbimg.com/x720/5967152.jpg" alt="Montillo sai de campo após sentir novamente lesão na panturrilha, aos 07\' do 1º tempo" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="content-media__description-centered">\r\n<p class="content-media__description"><i class="content-media__description__icon theme-color-primary"></i><span class="content-media__description__caption">Montillo sai de campo após sentir novamente lesão na panturrilha, aos 07\' do 1º tempo.</span></p>\r\n\r\n</div>\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="52">\r\n<p class="content-text__container " style="text-align: justify;" data-track-category="Link no Texto" data-track-links="">Apesar de nunca ter aceitado a devolução de salários, o Botafogo internamente considera a possibilidade de rompimento do contrato, desde que o distrato parta do camisa 7. Um dirigente mais próximo do caso que preferiu não se identificar, porém, analisa que ainda é muito prematuro falar em rescisão.</p>\r\n\r\n</div>', 'Montillo, Botafogo e médicos têm reunião nesta quarta-feira para decidir futuro', 'Meia argentino está liberado do treino pelo segundo dia seguido e passará por exames à tarde na panturrilha direita. Dependendo da gravidade da lesão, não está descartada rescisão amigável', 'publish', 'open', 'open', '', 'montillo-botafogo-e-medicos-tem-reuniao-nesta-quarta-feira-para-decidir-futuro', '', '', '2017-07-18 16:57:56', '2017-07-18 19:57:56', '', 0, 'http://localhost/defato/?p=317', 0, 'post', '', 0),
(318, 1, '2017-06-28 01:02:37', '2017-06-28 04:02:37', '', 'a71q4193_8fcTwi1', '', 'inherit', 'open', 'closed', '', 'a71q4193_8fctwi1', '', '', '2017-06-28 01:02:37', '2017-06-28 04:02:37', '', 317, 'http://localhost/defato/wp-content/uploads/2017/06/a71q4193_8fcTwi1.jpg', 0, 'attachment', 'image/jpeg', 0),
(320, 1, '2017-06-28 01:08:04', '2017-06-28 04:08:04', 'Toda vez que <a href="http://revistaquem.globo.com/famoso/natalia-guimaraes/" target="_blank" rel="noopener">Natália Guimarães</a> compartilha algum vídeo das filhas, <strong>Maya</strong> e <strong>Kiara</strong>, de 3 anos, no Instagram das meninas, as postagens bombam com milhares de curtidas! O sucesso das gêmeas não fica só nas redes sociais. Em uma sessão de fotos no hotel Radisson Blu São Paulo, as pequenas receberam pedidos de selfies e o carinho de fãs, que elogiavam o carisma das duas filhas da Miss Brasil 2007 com <strong>Leandro Scornavacca</strong>, vocalista do KLB.\r\n\r\n"É engraçado o assédio. Uma vez, a gente estava atravessando um semáforo e uma pessoa passou de carro gritando o nome delas. Em uma outra ocasião, uma pessoa parou as meninas para falar que era muito fã delas. A Maya então me perguntou: \'Mãe, o que é fã?". Daí expliquei que o fã era uma pessoa que gostava muito dela e que a seguia no Instagram", conta Natália.\r\n\r\nNão é para menos. Carismáticas e engraçadas, Maya e Kiki se destacam pela desenvoltura. As duas escolhem as próprias roupas, cantam músicas e até contam a história de seus nascimentos como se lembrassem de cada detalhe. "A Maya nasceu primeiro. Ela é um minuto mais velha", diz Kiki. "Eu nasci de cabecinha e a Kiara nasceu de bunda", completa Maya.\r\n\r\nOrgulhosa e toda coruja, Natália se diverte com a personalidade das filhas. "Sempre escuto que as duas são parecidas com o pai, mas vendo fotos da infância, acho que elas são parecidas comigo também. Agora, a personalidade, acho que elas não puxaram a nenhum dos dois. As duas são tão diferentes e tão desinibidas. Isso é delas! A Kiara é bem sem vergonha, fala com todo mundo. A Maya é mais introvertida, mas também quando fica segura, se solta também."\r\n\r\nEm um ensaio exclusivo, Natália brincou com as filhas de maquiagem, se divertiu na banheira do quarto do hotel e falou sobre a criação das meninas', 'Natália Guimarães se diverte em ensaio com gêmeas: "As duas são tão diferentes e tão desinibidas".', 'Apresentadora posa em quarto de hotel e banheira de espuma com as filhas, Kiara e Maya', 'publish', 'open', 'open', '', 'natalia-guimaraes-se-diverte-em-ensaio-com-gemeas-as-duas-sao-tao-diferentes-e-tao-desinibidas', '', '', '2017-07-04 15:22:36', '2017-07-04 18:22:36', '', 0, 'http://localhost/defato/?p=320', 0, 'post', '', 0),
(321, 1, '2017-06-28 01:07:50', '2017-06-28 04:07:50', '', 'nat_e_gemeas_085', '', 'inherit', 'open', 'closed', '', 'nat_e_gemeas_085', '', '', '2017-06-28 01:07:50', '2017-06-28 04:07:50', '', 320, 'http://localhost/defato/wp-content/uploads/2017/06/nat_e_gemeas_085.jpg', 0, 'attachment', 'image/jpeg', 0),
(323, 1, '2017-06-28 01:11:54', '2017-06-28 04:11:54', '<div class="mc-column content-text active-extra-styles active-capital-letter" data-block-type="unstyled" data-block-weight="37">\r\n<p class="content-text__container theme-color-primary-first-letter" style="text-align: justify;" data-track-category="Link no Texto" data-track-links="">A Câmara dos Deputados aprovou no início da madrugada desta quarta-feira (28) uma medida provisória <a href="http://g1.globo.com/politica/noticia/governo-edita-medida-provisoria-para-agilizar-regularizacao-fundiaria.ghtml">enviada pelo governo</a> que prevê novas regras para a regularização fundiária urbana e rural (<em>saiba mais abaixo o que prevê a MP</em>).</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " style="text-align: justify;" data-block-type="unstyled" data-block-weight="51">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">O texto já havia sido aprovado pela Câmara e <a href="http://g1.globo.com/politica/noticia/senado-aprova-mp-que-preve-novas-regras-para-regularizacao-de-terrenos.ghtml">pelo Senado, chegando a ser enviado à sanção do presidente</a> Michel Temer, mas, como os senadores modificaram trechos do projeto, o ministro do Supremo Tribunal Federal (STF) Luís Roberto Barroso atendeu a pedido da oposição e determinou uma nova análise pela Câmara.</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " style="text-align: justify;" data-block-type="unstyled" data-block-weight="22">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">Ao todo, os deputados analisaram oito emendas aprovadas pelo Senado e mantiveram todas, aprovando a MP, portanto, conforme a redação do Senado.</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " style="text-align: justify;" data-block-type="unstyled" data-block-weight="25">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">Após a aprovação da MP no início da madrugada, o presidente da Câmara, Rodrigo Maia (DEM-RJ), informou ao plenário que o texto seguirá para sanção.</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles" style="text-align: justify;" data-block-type="raw" data-block-weight="2">\r\n<div class="content-intertitle">\r\n<h2>A sessão</h2>\r\n</div>\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " style="text-align: justify;" data-block-type="unstyled" data-block-weight="27">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">A chamada ordem do dia (sessão destinada a votações) da Câmara começou por volta das 20h15 de terça e a MP foi aprovada pouco depois das meia-noite.</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " style="text-align: justify;" data-block-type="unstyled" data-block-weight="20">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">Durante toda a sessão parlamentares da base aliada defenderam a MP enquanto a oposição disse que a medida beneficiará "grileiros".</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " style="text-align: justify;" data-block-type="unstyled" data-block-weight="44">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">Em vários momentos da sessão, parlamentares da oposição aproveitaram para criticar o presidente Michel Temer, denunciado pela Procuradoria Geral da República ao Supremo Tribunal Federal por corrupção passiva. Em resposta, aliados do Palácio do Planalto faziam críticas ao ex-presidente Luiz Inácio Lula da Silva.</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles" style="text-align: justify;" data-block-type="raw" data-block-weight="5">\r\n<div class="content-intertitle">\r\n<h2>O que diz a MP</h2>\r\n</div>\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " style="text-align: justify;" data-block-type="unstyled" data-block-weight="33">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">Na prática, a proposta facilita as condições para quem ocupa terreno da União conseguir a escritura. Não serão contempladas, contudo, ocupações iniciadas após 23 de dezembro de 2016, data da publicação da MP.</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " style="text-align: justify;" data-block-type="unstyled" data-block-weight="34">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">Famílias de baixa renda, segundo a proposta, não terão de pagar pela regularização e terão a infraestrutura básica financiada pelo poder público. Elas também ficarão isentas do pagamento do registro de cartório do terreno.</p>\r\n\r\n</div>\r\n<div class="content-ads content-ads--reveal" style="text-align: justify;"></div>', 'Câmara aprova MP que prevê novas regras para regularização de terrenos', 'Texto já havia sido aprovado pelo Senado e enviado a sanção, mas STF determinou nova análise pela Câmara porque texto foi modificado; medida provisória, agora, seguirá para sanção.', 'publish', 'open', 'open', '', 'camara-aprova-mp-que-preve-novas-regras-para-regularizacao-de-terrenos', '', '', '2017-07-18 16:53:22', '2017-07-18 19:53:22', '', 0, 'http://localhost/defato/?p=323', 0, 'post', '', 0),
(324, 1, '2017-06-28 01:10:53', '2017-06-28 04:10:53', '', 'plenario-da-camara', '', 'inherit', 'open', 'closed', '', 'plenario-da-camara', '', '', '2017-06-28 01:10:53', '2017-06-28 04:10:53', '', 323, 'http://localhost/defato/wp-content/uploads/2017/06/plenario-da-camara.jpg', 0, 'attachment', 'image/jpeg', 0),
(327, 1, '2017-06-28 01:21:54', '2017-06-28 04:21:54', '<div class="mc-column content-text active-extra-styles active-capital-letter" data-block-type="unstyled" data-block-weight="42">\r\n<p class="content-text__container theme-color-primary-first-letter" style="text-align: justify;" data-track-category="Link no Texto" data-track-links="">O presidente da Venezuela, Nicolás Maduro, disse nesta terça-feira (27) que um helicóptero da polícia científica atacou a Suprema Corte em Caracas. Segundo ele, algumas granadas foram lançadas contra o prédio, e depois o helicóptero sobrevoou o prédio do Ministério do Interior.</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " style="text-align: justify;" data-block-type="unstyled" data-block-weight="36">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">O presidente de 54 anos, que enfrenta há três meses protestos da oposição e alguma dissidência dentro do governo, disse que as forças especiais venezuelanas estão buscando os que estão por trás do "ataque terrorista armado".</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " style="text-align: justify;" data-block-type="unstyled" data-block-weight="44">\r\n\r\nhttps://www.youtube.com/watch?v=saIforgUvN0\r\n<p data-track-category="Link no Texto" data-track-links=""> "Havia no TSJ uma atividade social, isto poderia ter causado uma tragédia. Atiraram contra o TSJ e depois sobrevoaram o Ministério de Interior e Justiça. Este é o tipo de escalada armada que venho denunciando", disse Maduro, acrescentando que uma das granadas não explodiu.</p>\r\n\r\n</div>\r\n<!--more-->\r\n<div class="mc-column content-text active-extra-styles " style="text-align: justify;" data-block-type="unstyled" data-block-weight="57">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">Maduro também disse que ativou as Forças Armadas "para defender o direito à tranquilidade". "A Força Armada toda foi acionada para defender a tranquilidade. Mais cedo ou mais tarde vamos capturar o helicóptero e os que realizaram este ataque terrorista", assinalou o presidente durante um ato por ocasião do Dia do Jornalista, no Palácio Presidencial de Miraflores.</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="8">\r\n<p class="content-text__container " style="text-align: justify;" data-track-category="Link no Texto" data-track-links="">Nas redes sociais, muitos usuários compartilham a foto do helicóptero exibindo uma faixa com os dizeres "350 Libertad", em referência ao artigo constitucional que permite ignorar os governos que não respeitam as garantias democráticas. Nas imagens é possível observar duas pessoas no helicóptero, sendo uma com o rosto coberto.</p>\r\n<p data-track-category="Link no Texto" data-track-links=""></p>\r\n\r\n</div>', 'Maduro diz que prédio da Suprema Corte da Venezuela foi atacado por helicóptero', 'Presidente diz que acionou as Forças Armadas. Deputados denunciam ataque de civis a Parlamento.', 'publish', 'open', 'open', '', 'maduro-diz-que-predio-da-suprema-corte-da-venezuela-foi-atacado-por-helicoptero', '', '', '2017-07-18 01:24:24', '2017-07-18 04:24:24', '', 0, 'http://localhost/defato/?p=327', 0, 'post', '', 0),
(328, 1, '2017-06-28 01:19:33', '2017-06-28 04:19:33', '', 'perez', '', 'inherit', 'open', 'closed', '', 'perez', '', '', '2017-06-28 01:19:33', '2017-06-28 04:19:33', '', 327, 'http://localhost/defato/wp-content/uploads/2017/06/perez.jpg', 0, 'attachment', 'image/jpeg', 0),
(330, 1, '2017-06-28 01:21:55', '2017-06-28 04:21:55', '', 'Maduro diz que prédio da Suprema Corte da Venezuela foi atacado por helicóptero', '', 'inherit', 'open', 'closed', '', 'maduro-diz-que-predio-da-suprema-corte-da-venezuela-foi-atacado-por-helicoptero-2', '', '', '2017-06-28 01:21:55', '2017-06-28 04:21:55', '', 327, 'http://localhost/defato/maduro-diz-que-predio-da-suprema-corte-da-venezuela-foi-atacado-por-helicoptero/maduro-diz-que-predio-da-suprema-corte-da-venezuela-foi-atacado-por-helicoptero-2/', 0, 'attachment', 'image/jpeg', 0),
(331, 1, '2017-06-28 01:32:52', '2017-06-28 04:32:52', 'Um acidente na L4 Norte, próximo ao Iate Clube, por volta das 22h desta quarta-feira (21/6), vitimou um motociclista. Renato Salviano, 47 anos, colidiu em duas um pilastras do viaduto do local e morreu na hora. O trânsito foi interrompido para a perícia.\r\n\r\n[unitegallery Acidente]\r\n\r\nSegundo informações do Corpo de Bombeiros, com o impacto da batida, a vítima foi arremessada para o outro lado da pista. A moto também parou no sentindo contrário e ficou totalmente despedaçada. Um carro que estava na direção oposta foi atingido por partes da motocicleta, no entanto, a motorista nada sofreu.\r\n\r\nAté a última atualização desta reportagem, os bombeiros não haviam informado o motivo do acidente.\r\n\r\nhttps://www.youtube.com/watch?v=vH1dZjxbu-A', 'Motociclista bate em viaduto na L4 Norte e morre na hora', 'Renato Salviano, 47 anos, não sobreviveu ao impacto. Acidente ocorreu por volta das 22h desta quarta-feira (21/6)', 'publish', 'open', 'open', '', 'motociclista-bate-em-viaduto-na-l4-norte-e-morre-na-hora', '', '', '2017-06-28 02:28:49', '2017-06-28 05:28:49', '', 0, 'http://localhost/defato/?p=331', 0, 'post', '', 0),
(333, 1, '2017-06-28 01:32:54', '2017-06-28 04:32:54', '', 'Motociclista bate em viaduto na L4 Norte e morre na hora', '', 'inherit', 'open', 'closed', '', 'motociclista-bate-em-viaduto-na-l4-norte-e-morre-na-hora-2', '', '', '2017-06-28 01:32:54', '2017-06-28 04:32:54', '', 331, 'http://localhost/defato/motociclista-bate-em-viaduto-na-l4-norte-e-morre-na-hora/motociclista-bate-em-viaduto-na-l4-norte-e-morre-na-hora-2/', 0, 'attachment', 'image/jpeg', 0),
(334, 1, '2017-06-28 01:34:28', '2017-06-28 04:34:28', '', 'bombeiro-ok', '', 'inherit', 'open', 'closed', '', 'bombeiro-ok', '', '', '2017-06-28 01:34:28', '2017-06-28 04:34:28', '', 331, 'http://localhost/defato/wp-content/uploads/2017/06/bombeiro-ok.jpg', 0, 'attachment', 'image/jpeg', 0),
(335, 1, '2017-06-28 01:39:31', '2017-06-28 04:39:31', '', 'moto-1', '', 'inherit', 'open', 'closed', '', 'moto-1', '', '', '2017-06-28 01:39:31', '2017-06-28 04:39:31', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/moto-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(336, 1, '2017-06-28 01:39:33', '2017-06-28 04:39:33', '', 'moto-3', '', 'inherit', 'open', 'closed', '', 'moto-3', '', '', '2017-06-28 01:39:33', '2017-06-28 04:39:33', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/moto-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(337, 1, '2017-06-28 01:39:35', '2017-06-28 04:39:35', '', 'moto-4', '', 'inherit', 'open', 'closed', '', 'moto-4', '', '', '2017-06-28 01:39:35', '2017-06-28 04:39:35', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/moto-4.jpg', 0, 'attachment', 'image/jpeg', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(339, 1, '2017-06-28 01:50:26', '2017-06-28 04:50:26', '<p style="text-align: justify;">Trinta produtos, entre <a href="http://www.metropoles.com/distrito-federal/saude-df/antibioticos-estao-em-falta-ha-mais-de-30-dias-na-rede-publica-do-df">medicamentos</a> e itens fabricados pela empresa Vic Pharma Indústria e Comércio Ltda., destinados à assepsia nos hospitais da rede pública do Distrito Federal, foram proibidos pela Agência Nacional de Vigilância Sanitária (Anvisa). Desde 2 de maio, uma resolução publicada no<em>Diário Oficial da União</em> (DOU) determina a suspensão, a produção, a comercialização e o uso dessas substâncias. No entanto, um mês e duas semanas após a publicação da medida, os itens ainda são usados nas emergências e até mesmo em unidades de terapia intensiva (UTIs) neonatais das unidades de saúde do DF.</p>\r\n\r\n<blockquote>\r\n<p style="text-align: justify;">Denúncias recebidas pelo <strong>Metrópoles</strong> dão conta de que pelo menos quatro grandes unidades da rede estão usando as substâncias: entre eles, o Hospital de Base e os regionais de Ceilândia, Taguatinga e Sobradinho.</p>\r\n<p style="text-align: justify;">Na Resolução nº 1.141, de 27 de abril de 2017, a Anvisa determinou o recolhimento dos produtos por não estarem em conformidade quanto às Boas Práticas de Fabricação (BPF) de medicamentos. Entre os itens, estão tipos de álcool 70%, usado para desinfetar o umbigo de recém-nascidos; e álcool iodado, aplicado em regiões do corpo que passaram por sutura após cirurgias.</p>\r\n</blockquote>', 'Hospitais públicos do DF usam medicamentos proibidos pela Anvisa', 'Secretaria de Saúde ignora veto da agência a 30 produtos da empresa Vic Pharma. Ao menos quatro hospitais do DF têm usado itens vetados', 'publish', 'open', 'open', '', 'hospitais-publicos-do-df-usam-medicamentos-proibidos-pela-anvisa', '', '', '2017-06-28 01:50:26', '2017-06-28 04:50:26', '', 0, 'http://localhost/defato/?p=339', 0, 'post', '', 0),
(340, 1, '2017-06-28 01:49:21', '2017-06-28 04:49:21', '', 'diferent Tablets pills capsule heap mix', 'diferent Tablets pills capsule heap mix isolated on white background', 'inherit', 'open', 'closed', '', 'diferent-tablets-pills-capsule-heap-mix', '', '', '2017-06-28 01:49:21', '2017-06-28 04:49:21', '', 339, 'http://localhost/defato/wp-content/uploads/2017/06/remedio.jpg', 0, 'attachment', 'image/jpeg', 0),
(342, 1, '2017-06-28 02:11:45', '2017-06-28 05:11:45', '', 'colunista-fernando-weiss', '', 'inherit', 'open', 'closed', '', 'colunista-fernando-weiss', '', '', '2017-06-28 02:11:45', '2017-06-28 05:11:45', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/colunista-fernando-weiss.png', 0, 'attachment', 'image/png', 0),
(346, 1, '2017-06-28 02:19:19', '2017-06-28 05:19:19', '', 'colunista-rodrigo-martini', '', 'inherit', 'open', 'closed', '', 'colunista-rodrigo-martini', '', '', '2017-06-28 02:19:19', '2017-06-28 05:19:19', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/colunista-rodrigo-martini.png', 0, 'attachment', 'image/png', 0),
(347, 1, '2017-06-28 02:32:34', '2017-06-28 05:32:34', '', 'barcelona-edilsinho', '????????????????????????????????????', 'inherit', 'open', 'closed', '', 'barcelona-edilsinho', '', '', '2017-06-28 02:32:34', '2017-06-28 05:32:34', '', 283, 'http://localhost/defato/wp-content/uploads/2017/06/barcelona-edilsinho.jpg', 0, 'attachment', 'image/jpeg', 0),
(348, 1, '2017-06-28 02:36:16', '2017-06-28 05:36:16', '', 'foto_28082014172418', '', 'inherit', 'open', 'closed', '', 'foto_28082014172418', '', '', '2017-06-28 02:36:16', '2017-06-28 05:36:16', '', 278, 'http://localhost/defato/wp-content/uploads/2017/06/foto_28082014172418.jpg', 0, 'attachment', 'image/jpeg', 0),
(351, 1, '2017-06-28 02:55:00', '2017-06-28 05:55:00', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-06-28 02:55:00', '2017-06-28 05:55:00', '', 52, 'http://localhost/defato/wp-content/uploads/2017/01/logo.png', 0, 'attachment', 'image/png', 0),
(352, 1, '2017-06-28 02:56:52', '2017-06-28 05:56:52', '', 'foto_05052017155614', '', 'inherit', 'open', 'closed', '', 'foto_05052017155614', '', '', '2017-06-28 02:56:52', '2017-06-28 05:56:52', '', 52, 'http://localhost/defato/wp-content/uploads/2017/01/foto_05052017155614.jpg', 0, 'attachment', 'image/jpeg', 0),
(353, 1, '2017-06-28 03:20:56', '2017-06-28 06:20:56', 'A noite dessa quarta-feira, 14 de junho, consagrou a auxiliar administrativo Bárbara Ellen Gonçalves dos Santos, 19 anos, das Lojas Dular, a nova Miss Comerciária de Itabira. O evento aconteceu no Cia Garden Fest, às margens da MG-129. Entre 13 candidatas, a jovem se destacou e recebeu a coroa pela vitória. Emocionada, disse que não acreditava que poderia faturar o título, e agradeceu a todos os que a incentivaram.\r\n\r\n“É uma emoção muito grande, eu não esperava vencer este concurso. Nunca tive essa coisa de ser modelo ou desfilar. As pessoas sempre me incentivaram e eu nunca acreditei. Desta vez me falaram para vir e eu estou muito feliz. A presença das pessoas da empresa, da minha família, do meu namorado e da família dele, isso tudo me incentivou demais”, comemorou a vencedora da noite, que teve torcida animada durante os desfiles.\r\n\r\n[unitegallery Miss]\r\n\r\nA coroa foi entregue pela Miss Comerciária Itabira 2016, Thaimara Fernandes, que também conquistou o título estadual. A vencedora da edição 2017 levou para casa ainda um cheque no valor de R$ 1 mil, um ensaio fotográfico no estúdio Paulo Sá Fotografias e um Dia de Beleza oferecido pelo Carla Jardim Centro de Beleza, além do troféu e a faixa de miss. Bárbara Ellen também disputará a etapa Estadual do Miss Comerciária, no Hotel Fazenda Tauá, no dia 02 de setembro.\r\n\r\nO segundo lugar ficou Thais Caroline de Araújo, de 21 anos, funcionária da loja Carmen Steffens. Ela ganhou um ensaio fotográfico com Paulo Sá Fotografias com produção de beleza, um kit esportivo Dominante Calçados e Esportes e também um troféu. A terceira colocada foi Maria Eduarda Correa de Souza, 19 anos, da Drogaita. A jovem levou para casa um presente da loja Imaginarium e um troféu.\r\n\r\nO concurso foi dividido em duas fases. Primeiro, as concorrentes desfilaram com a camisa do evento e calça jeans. Depois, com vestidos em trajes de gala. A evolução das meninas foi acompanhada de perto por um corpo de jurados que deram notas avaliando critérios como desenvoltura, simpatia e beleza.\r\n\r\n<span style="font-weight: inherit; font-style: inherit;">O presidente da CDL, Maurício Henrique Martins, comemorou o sucesso do evento, que reuniu grande número de pessoas, entre familiares, colegas de trabalho e representantes do comércio itabirano, além de autoridades políticas, como o presidente da Câmara de Itabira, Neidson Freitas. Para o dirigente lojista, o Miss Comerciária valoriza as mulheres que se dedicam a fazer a economia de Itabira se desenvolver.</span>\r\n\r\n“Nosso principal objetivo com este concurso é valorizar as mulheres que trabalham no comércio, que se dedicam e que se empenham para se tornarem grandes profissionais, que contribuem para o crescimento da empresa. Essa é a verdadeira beleza que queremos ver com este evento, o reconhecimento dessas funcionárias. Todas as 14 participantes estão de parabéns e agora esperamos que a Bárbara nos represente na etapa estadual e ganhe o concurso, assim como aconteceu no ano passado”, disse o presidente.\r\n\r\n&nbsp;', 'Bárbara Ellen é coroada a nova Miss Comerciária de Itabira', 'Jovem é auxiliar administrativo das Lojas Dular, em Itabira', 'trash', 'open', 'open', '', 'barbara-ellen-e-coroada-a-nova-miss-comerciaria-de-itabira__trashed', '', '', '2017-06-28 03:27:46', '2017-06-28 06:27:46', '', 0, 'http://localhost/defato/?p=353', 0, 'post', '', 0),
(355, 1, '2017-06-28 03:22:11', '2017-06-28 06:22:11', '', 'galeriagr_15062017111254', '', 'inherit', 'open', 'closed', '', 'galeriagr_15062017111254', '', '', '2017-06-28 03:22:11', '2017-06-28 06:22:11', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/galeriagr_15062017111254.jpg', 0, 'attachment', 'image/jpeg', 0),
(356, 1, '2017-06-28 03:22:12', '2017-06-28 06:22:12', '', 'galeriagr_15062017112927', '', 'inherit', 'open', 'closed', '', 'galeriagr_15062017112927', '', '', '2017-06-28 03:22:12', '2017-06-28 06:22:12', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/galeriagr_15062017112927.jpg', 0, 'attachment', 'image/jpeg', 0),
(357, 1, '2017-06-28 03:22:14', '2017-06-28 06:22:14', '', 'galeriagr_15062017113115', '', 'inherit', 'open', 'closed', '', 'galeriagr_15062017113115', '', '', '2017-06-28 03:22:14', '2017-06-28 06:22:14', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/galeriagr_15062017113115.jpg', 0, 'attachment', 'image/jpeg', 0),
(359, 1, '2017-06-28 03:27:07', '2017-06-28 06:27:07', 'A noite dessa quarta-feira, 14 de junho, consagrou a auxiliar administrativo Bárbara Ellen Gonçalves dos Santos, 19 anos, das Lojas Dular, a nova Miss Comerciária de Itabira. O evento aconteceu no Cia Garden Fest, às margens da MG-129. Entre 13 candidatas, a jovem se destacou e recebeu a coroa pela vitória. Emocionada, disse que não acreditava que poderia faturar o título, e agradeceu a todos os que a incentivaram.\r\n\r\n[unitegallery Miss]\r\n\r\n“É uma emoção muito grande, eu não esperava vencer este concurso. Nunca tive essa coisa de ser modelo ou desfilar. As pessoas sempre me incentivaram e eu nunca acreditei. Desta vez me falaram para vir e eu estou muito feliz. A presença das pessoas da empresa, da minha família, do meu namorado e da família dele, isso tudo me incentivou demais”, comemorou a vencedora da noite, que teve torcida animada durante os desfiles.\r\n\r\n&nbsp;\r\n\r\nA coroa foi entregue pela Miss Comerciária Itabira 2016, Thaimara Fernandes, que também conquistou o título estadual. A vencedora da edição 2017 levou para casa ainda um cheque no valor de R$ 1 mil, um ensaio fotográfico no estúdio Paulo Sá Fotografias e um Dia de Beleza oferecido pelo Carla Jardim Centro de Beleza, além do troféu e a faixa de miss. Bárbara Ellen também disputará a etapa Estadual do Miss Comerciária, no Hotel Fazenda Tauá, no dia 02 de setembro.\r\n\r\nO segundo lugar ficou Thais Caroline de Araújo, de 21 anos, funcionária da loja Carmen Steffens. Ela ganhou um ensaio fotográfico com Paulo Sá Fotografias com produção de beleza, um kit esportivo Dominante Calçados e Esportes e também um troféu. A terceira colocada foi Maria Eduarda Correa de Souza, 19 anos, da Drogaita. A jovem levou para casa um presente da loja Imaginarium e um troféu.\r\n\r\nO concurso foi dividido em duas fases. Primeiro, as concorrentes desfilaram com a camisa do evento e calça jeans. Depois, com vestidos em trajes de gala. A evolução das meninas foi acompanhada de perto por um corpo de jurados que deram notas avaliando critérios como desenvoltura, simpatia e beleza.\r\n\r\n<span style="font-weight: inherit; font-style: inherit;">O presidente da CDL, Maurício Henrique Martins, comemorou o sucesso do evento, que reuniu grande número de pessoas, entre familiares, colegas de trabalho e representantes do comércio itabirano, além de autoridades políticas, como o presidente da Câmara de Itabira, Neidson Freitas. Para o dirigente lojista, o Miss Comerciária valoriza as mulheres que se dedicam a fazer a economia de Itabira se desenvolver.</span>\r\n\r\n“Nosso principal objetivo com este concurso é valorizar as mulheres que trabalham no comércio, que se dedicam e que se empenham para se tornarem grandes profissionais, que contribuem para o crescimento da empresa. Essa é a verdadeira beleza que queremos ver com este evento, o reconhecimento dessas funcionárias. Todas as 14 participantes estão de parabéns e agora esperamos que a Bárbara nos represente na etapa estadual e ganhe o concurso, assim como aconteceu no ano passado”, disse o presidente.\r\n\r\n&nbsp;', 'Bárbara Ellen é coroada a nova Miss Comerciária de Itabira', 'Jovem é auxiliar administrativo das Lojas Dular, em Itabira', 'publish', 'open', 'open', '', '__trashed', '', '', '2017-07-17 09:37:51', '2017-07-17 12:37:51', '', 0, 'http://localhost/defato/?p=359', 0, 'post', '', 0),
(361, 1, '2017-06-28 09:17:22', '2017-06-28 12:17:22', '', 'nova-imagem-1-1100x619', '', 'inherit', 'open', 'closed', '', 'nova-imagem-1-1100x619', '', '', '2017-06-28 09:17:22', '2017-06-28 12:17:22', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/nova-imagem-1-1100x619.png', 0, 'attachment', 'image/png', 0),
(363, 1, '2017-06-28 09:25:08', '2017-06-28 12:25:08', '', 'rick-riordan', '', 'inherit', 'open', 'closed', '', 'rick-riordan', '', '', '2017-06-28 09:25:08', '2017-06-28 12:25:08', '', 0, 'http://localhost/defato/wp-content/uploads/2017/06/rick-riordan.png', 0, 'attachment', 'image/png', 0),
(364, 1, '2017-06-28 10:56:08', '2017-06-28 13:56:08', '', 'ver agenda', '', 'trash', 'closed', 'closed', '', 'ver-agenda__trashed', '', '', '2017-06-28 10:57:15', '2017-06-28 13:57:15', '', 0, 'http://localhost/defato/?page_id=364', 0, 'page', '', 0),
(367, 1, '2017-06-28 12:16:57', '2017-06-28 15:16:57', ' ', '', '', 'publish', 'closed', 'closed', '', '367', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 5, 'http://localhost/defato/?p=367', 5, 'nav_menu_item', '', 0),
(368, 1, '2017-06-28 12:16:57', '2017-06-28 15:16:57', ' ', '', '', 'publish', 'closed', 'closed', '', '368', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 5, 'http://localhost/defato/?p=368', 6, 'nav_menu_item', '', 0),
(369, 1, '2017-06-28 12:16:57', '2017-06-28 15:16:57', ' ', '', '', 'publish', 'closed', 'closed', '', '369', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 5, 'http://localhost/defato/?p=369', 7, 'nav_menu_item', '', 0),
(370, 1, '2017-06-28 12:16:57', '2017-06-28 15:16:57', ' ', '', '', 'publish', 'closed', 'closed', '', '370', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 5, 'http://localhost/defato/?p=370', 4, 'nav_menu_item', '', 0),
(371, 1, '2017-06-28 12:16:58', '2017-06-28 15:16:58', ' ', '', '', 'publish', 'closed', 'closed', '', '371', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 5, 'http://localhost/defato/?p=371', 8, 'nav_menu_item', '', 0),
(372, 1, '2017-06-28 12:16:58', '2017-06-28 15:16:58', ' ', '', '', 'publish', 'closed', 'closed', '', '372', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 5, 'http://localhost/defato/?p=372', 9, 'nav_menu_item', '', 0),
(373, 1, '2017-06-28 12:16:58', '2017-06-28 15:16:58', ' ', '', '', 'publish', 'closed', 'closed', '', '373', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 5, 'http://localhost/defato/?p=373', 10, 'nav_menu_item', '', 0),
(374, 1, '2017-06-28 12:16:58', '2017-06-28 15:16:58', ' ', '', '', 'publish', 'closed', 'closed', '', '374', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 5, 'http://localhost/defato/?p=374', 11, 'nav_menu_item', '', 0),
(377, 1, '2017-06-28 12:16:58', '2017-06-28 15:16:58', ' ', '', '', 'publish', 'closed', 'closed', '', '377', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 15, 'http://localhost/defato/?p=377', 16, 'nav_menu_item', '', 0),
(378, 1, '2017-06-28 12:16:58', '2017-06-28 15:16:58', ' ', '', '', 'publish', 'closed', 'closed', '', '378', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 15, 'http://localhost/defato/?p=378', 18, 'nav_menu_item', '', 0),
(379, 1, '2017-06-28 12:16:58', '2017-06-28 15:16:58', ' ', '', '', 'publish', 'closed', 'closed', '', '379', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 15, 'http://localhost/defato/?p=379', 19, 'nav_menu_item', '', 0),
(383, 1, '2017-06-28 12:52:23', '2017-06-28 15:52:23', 'A noite dessa quarta-feira, 14 de junho, consagrou a auxiliar administrativo Bárbara Ellen Gonçalves dos Santos, 19 anos, das Lojas Dular, a nova Miss Comerciária de Itabira. O evento aconteceu no Cia Garden Fest, às margens da MG-129. Entre 13 candidatas, a jovem se destacou e recebeu a coroa pela vitória. Emocionada, disse que não acreditava que poderia faturar o título, e agradeceu a todos os que a incentivaram.\r\n\r\n“É uma emoção muito grande, eu não esperava vencer este concurso. Nunca tive essa coisa de ser modelo ou desfilar. As pessoas sempre me incentivaram e eu nunca acreditei. Desta vez me falaram para vir e eu estou muito feliz. A presença das pessoas da empresa, da minha família, do meu namorado e da família dele, isso tudo me incentivou demais”, comemorou a vencedora da noite, que teve torcida animada durante os desfiles.\r\n\r\n[unitegallery Miss]\r\n\r\nA coroa foi entregue pela Miss Comerciária Itabira 2016, Thaimara Fernandes, que também conquistou o título estadual. A vencedora da edição 2017 levou para casa ainda um cheque no valor de R$ 1 mil, um ensaio fotográfico no estúdio Paulo Sá Fotografias e um Dia de Beleza oferecido pelo Carla Jardim Centro de Beleza, além do troféu e a faixa de miss. Bárbara Ellen também disputará a etapa Estadual do Miss Comerciária, no Hotel Fazenda Tauá, no dia 02 de setembro.\r\n\r\nO segundo lugar ficou Thais Caroline de Araújo, de 21 anos, funcionária da loja Carmen Steffens. Ela ganhou um ensaio fotográfico com Paulo Sá Fotografias com produção de beleza, um kit esportivo Dominante Calçados e Esportes e também um troféu. A terceira colocada foi Maria Eduarda Correa de Souza, 19 anos, da Drogaita. A jovem levou para casa um presente da loja Imaginarium e um troféu.\r\n\r\nO concurso foi dividido em duas fases. Primeiro, as concorrentes desfilaram com a camisa do evento e calça jeans. Depois, com vestidos em trajes de gala. A evolução das meninas foi acompanhada de perto por um corpo de jurados que deram notas avaliando critérios como desenvoltura, simpatia e beleza.\r\n\r\n<span style="font-weight: inherit; font-style: inherit;">O presidente da CDL, Maurício Henrique Martins, comemorou o sucesso do evento, que reuniu grande número de pessoas, entre familiares, colegas de trabalho e representantes do comércio itabirano, além de autoridades políticas, como o presidente da Câmara de Itabira, Neidson Freitas. Para o dirigente lojista, o Miss Comerciária valoriza as mulheres que se dedicam a fazer a economia de Itabira se desenvolver.</span>\r\n\r\n“Nosso principal objetivo com este concurso é valorizar as mulheres que trabalham no comércio, que se dedicam e que se empenham para se tornarem grandes profissionais, que contribuem para o crescimento da empresa. Essa é a verdadeira beleza que queremos ver com este evento, o reconhecimento dessas funcionárias. Todas as 14 participantes estão de parabéns e agora esperamos que a Bárbara nos represente na etapa estadual e ganhe o concurso, assim como aconteceu no ano passado”, disse o presidente.\r\n\r\n&nbsp;', 'Bárbara Ellen ganha como Miss Comerciária de Itabira', 'Jovem é auxiliar administrativo das Lojas Dular, em Itabira', 'publish', 'open', 'open', '', 'subcelebridade-faz-pose', '', '', '2017-07-04 17:05:01', '2017-07-04 20:05:01', '', 0, 'http://localhost/defato/?p=383', 0, 'post', '', 0),
(388, 1, '2017-07-04 11:21:33', '2017-07-04 14:21:33', '', 'fav', '', 'inherit', 'open', 'closed', '', 'fav', '', '', '2017-07-04 11:21:33', '2017-07-04 14:21:33', '', 0, 'http://localhost/defato/wp-content/uploads/2017/07/fav.png', 0, 'attachment', 'image/png', 0),
(389, 1, '2017-07-04 11:21:40', '2017-07-04 14:21:40', 'http://localhost/defato/wp-content/uploads/2017/07/cropped-fav.png', 'cropped-fav.png', '', 'inherit', 'open', 'closed', '', 'cropped-fav-png', '', '', '2017-07-04 11:21:40', '2017-07-04 14:21:40', '', 0, 'http://localhost/defato/wp-content/uploads/2017/07/cropped-fav.png', 0, 'attachment', 'image/png', 0),
(390, 1, '2017-07-04 11:21:49', '2017-07-04 14:21:49', '{"site_icon":{"value":389,"type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'fa113da7-667c-4fa3-bba5-467984a47a77', '', '', '2017-07-04 11:21:49', '2017-07-04 14:21:49', '', 0, 'http://localhost/defato/fa113da7-667c-4fa3-bba5-467984a47a77/', 0, 'customize_changeset', '', 0),
(391, 1, '2017-07-04 14:07:43', '2017-07-04 17:07:43', '<div class="mc-column content-text active-extra-styles active-capital-letter" data-block-type="unstyled" data-block-weight="69">\r\n<p class="content-text__container theme-color-primary-first-letter" data-track-category="Link no Texto" data-track-links="">O advogado Antônio Cláudio Mariz de Oliveira afirmou à TV Globo que irá apresentar na tarde desta quarta-feira (5) a defesa do presidente Michel Temer na Comissão de Constituição e Justiça (CCJ) da Câmara. Responsável pela defesa do chefe do Executivo federal, o criminalista disse ainda que vai passar a tarde desta terça (4) fazendo ajustes finais na peça de cerca de 100 páginas que será entregue aos deputados.</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="50">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">Mariz ressaltou à TV Globo que vai alegar na defesa que a gravação feita pelo empresário Joesley Batista em março deste ano, no Palácio do Jaburu – principal prova da acusação do procurador-geral da República, Rodrigo Janot –, é ilegal e não revela nada compremetedor contra o presidente da República.</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="47">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">O criminalista também destacou que lançará na peça de defesa um desafio para que Janot apresente algum indício de que Michel Temer era o beneficiário dos R$ 500 mil entregues em uma pizzaria de São Paulo ao ex-deputado e ex-assessor especial do Planalto Rodrigo Rocha Loures (PMDB-PR).</p>\r\n\r\n</div>\r\n<div class="mc-column content-media content-media--normal content-video" data-block-type="backstage-video">\r\n<div class="content-media__container content-media__container--loaded">\r\n<div class="content-video__video">\r\n<div id="wp3-player-1" class="clappr-player" tabindex="9999" data-player="">\r\n<div class="dfp-ad-overlay dfp-poster-mode" data-ad-overlay="">\r\n\r\n[caption id="" align="alignleft" width="750"]<img class="content-video__placeholder__thumb" title="Comissão de Constituição e Justiça escolhe relator que vai analisar denúncia contra Temer" src="http://s01.video.glbimg.com/x720/5984368.jpg" alt="Comissão de Constituição e Justiça escolhe relator que vai analisar denúncia contra Temer" width="750" height="720" /> Legenda da imagem testando[/caption]\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div class="content-video__placeholder" data-video-id="5984368">Comissão de</div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368"></div>\r\n<div data-video-id="5984368">\r\n\r\n[caption id="attachment_92" align="alignleft" width="750"]<img class="size-full wp-image-92" src="http://localhost/defato/wp-content/uploads/2017/05/20150622072736660388o.jpg" alt="" width="750" height="498" /> teste teste[/caption]\r\n\r\n</div>\r\n<div data-video-id="5984368"></div>\r\n<div class="content-video__placeholder" data-video-id="5984368">Constituição e Justiça escolhe relator que vai analisar denúncia contra Temer</div>\r\n</div>\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="33">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">A Câmara deve abrir na tarde desta terça-feira (4) a primeira sessão que contará como prazo para Temer apresentar a defesa sobre a denúncia de corrupção passiva da Procuradoria Geral da República (PGR).</p>\r\n\r\n</div>\r\n<div class="mc-column content-text active-extra-styles " data-block-type="unstyled" data-block-weight="32">\r\n<p class="content-text__container " data-track-category="Link no Texto" data-track-links="">O limite para a manifestação do presidente é de dez sessões. Depois, ficará a cargo da Comissão de Constituição e Justiça elaborar um parecer recomendando a continuidade ou a rejeição da denúncia.</p>\r\n\r\n</div>', 'Advogado de Temer diz que apresentará nesta quarta na CCJ defesa do presidente', 'Criminalista Antônio Cláudio Mariz tinha tem até 10 sessões do plenário da Câmara para apresentar a defesa sobre a denúncia apresentada pela PGR. Temer é acusado de corrupção passiva.', 'publish', 'open', 'open', '', 'advogado-de-temer-diz-que-apresentara-nesta-quarta-na-ccj-defesa-do-presidente', '', '', '2017-07-19 01:23:05', '2017-07-19 04:23:05', '', 0, 'http://localhost/defato/?p=391', 0, 'post', '', 0),
(393, 1, '2017-07-04 14:10:04', '2017-07-04 17:10:04', 'Legenda da imagem2', 'michel-temer-by-abr', 'Legenda da imagem', 'inherit', 'open', 'closed', '', 'michel-temer-by-abr', '', '', '2017-07-10 00:09:25', '2017-07-10 03:09:25', '', 391, 'http://localhost/defato/wp-content/uploads/2017/07/michel-temer-by-abr.jpg', 0, 'attachment', 'image/jpeg', 0),
(396, 1, '2017-07-04 15:44:59', '2017-07-04 18:44:59', '', 'miss_itabira_2017_1', '', 'inherit', 'open', 'closed', '', 'miss_itabira_2017_1', '', '', '2017-07-04 15:44:59', '2017-07-04 18:44:59', '', 383, 'http://localhost/defato/wp-content/uploads/2017/06/miss_itabira_2017_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(397, 1, '2017-07-04 15:45:30', '2017-07-04 18:45:30', '', 'galeriagr_15062017111254', '', 'inherit', 'open', 'closed', '', 'galeriagr_15062017111254-2', '', '', '2017-07-04 15:45:30', '2017-07-04 18:45:30', '', 383, 'http://localhost/defato/wp-content/uploads/2017/06/galeriagr_15062017111254-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(399, 1, '2017-07-05 09:51:22', '2017-07-05 12:51:22', '', 'Impressos', '', 'publish', 'closed', 'closed', '', 'impressos', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 0, 'http://localhost/defato/?p=399', 25, 'nav_menu_item', '', 0),
(400, 1, '2017-07-05 09:51:22', '2017-07-05 12:51:22', '', 'Classificados', '', 'publish', 'closed', 'closed', '', 'classificados', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 0, 'http://localhost/defato/?p=400', 26, 'nav_menu_item', '', 0),
(402, 1, '2017-07-05 10:52:35', '2017-07-05 13:52:35', '', 'Caldera Forms Preview', '', 'trash', 'closed', 'closed', '', 'caldera_forms_preview__trashed', '', '', '2017-07-14 10:19:56', '2017-07-14 13:19:56', '', 0, 'http://localhost/defato/?page_id=402', 0, 'page', '', 0),
(403, 1, '2017-07-05 10:54:09', '2017-07-05 13:54:09', '[caldera_form id="CF595ce58497cb8"]', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2017-07-05 10:54:09', '2017-07-05 13:54:09', '', 0, 'http://localhost/defato/?page_id=403', 0, 'page', '', 0),
(412, 1, '2017-07-06 08:38:33', '2017-07-06 11:38:33', '<p style="text-align: center;">Grupo DeFato\r\nRevista - Portal de Notícias - Editoração</p>\r\n<img class="size-full wp-image-413 aligncenter" src="http://localhost/defato/wp-content/uploads/2017/07/logo.png" alt="" width="177" height="82" />\r\n<p style="text-align: center;">Diretora Geral / Redação\r\nKelly Eleto\r\nkelly@defatoonline.com.br</p>\r\n<p style="text-align: center;">Editores\r\nSérgio Santiago\r\nsergio@defatoonline.com.br\r\nRodrigo Andrade\r\nrodrigo@defatoonline.com.br</p>\r\n<p style="text-align: center;">Redação\r\nRenato Carvalho\r\nTatiana Santos\r\njornalismo@defatoonline.com.br</p>\r\n<p style="text-align: center;">Diretor Comercial\r\nMarcelo Eleto\r\nmarcelo@defatoonline.com.br</p>\r\n<p style="text-align: center;">Gerente Geral\r\nThais Pires\r\nthais@defatoonline.com.br</p>\r\n<p style="text-align: center;">Departamento de Criação\r\nPablo Carvalho\r\narte@defatoonline.com.br</p>\r\n<p style="text-align: center;">Marketing e Eventos\r\nBruno Rodrigues\r\nbruno@defatoonline.com.br</p>\r\n<p style="text-align: center;">Departamento Comercial\r\nCelinha Pires\r\nSolange Duarte\r\ncomercial@defatoonline.com.br</p>\r\n<p style="text-align: center;">Financeiro\r\nEstefany Pamela\r\nfinanceiro@defatoonline.com.br</p>\r\n<p style="text-align: center;">Endereço:\r\nAv. Duque de Caxias, 240, loja 4\r\nItabira/MG - Brasil - CEP 35900-236</p>\r\n<p style="text-align: center;">Contato\r\nTelefax: 31 3831-3656 / 3831-3020 / 3831-3056\r\ncontato@defatoonline.com.br</p>', 'Expediente', '', 'publish', 'closed', 'closed', '', 'expediente', '', '', '2017-07-14 10:20:49', '2017-07-14 13:20:49', '', 0, 'http://localhost/defato/?page_id=412', 0, 'page', '', 0),
(413, 1, '2017-07-06 08:37:22', '2017-07-06 11:37:22', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2017-07-06 08:37:22', '2017-07-06 11:37:22', '', 412, 'http://localhost/defato/wp-content/uploads/2017/07/logo.png', 0, 'attachment', 'image/png', 0),
(415, 1, '2017-07-06 08:40:01', '2017-07-06 11:40:01', ' ', '', '', 'publish', 'closed', 'closed', '', '415', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 0, 'http://localhost/defato/?p=415', 29, 'nav_menu_item', '', 0),
(416, 1, '2017-07-06 08:40:01', '2017-07-06 11:40:01', '', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 0, 'http://localhost/defato/?p=416', 27, 'nav_menu_item', '', 0),
(417, 1, '2017-07-06 08:40:01', '2017-07-06 11:40:01', '', 'Fale conosco', '', 'publish', 'closed', 'closed', '', 'fale-conosco', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 0, 'http://localhost/defato/?p=417', 28, 'nav_menu_item', '', 0),
(439, 1, '2017-07-17 09:45:27', '2017-07-17 12:45:27', 'teste\r\n\r\nteste\r\n\r\n[unitegallery Defato]\r\n\r\ntestes\r\n\r\n&nbsp;', 'Testando Opção', '', 'trash', 'open', 'open', '', 'testando-opcao__trashed', '', '', '2017-07-18 16:55:18', '2017-07-18 19:55:18', '', 0, 'http://localhost/defato/?p=439', 0, 'post', '', 0),
(445, 11, '2017-07-17 10:52:38', '2017-07-17 13:52:38', '', 'Teste colunista Bruno', '', 'trash', 'open', 'open', '', 'teste-colunista-bruno__trashed', '', '', '2017-07-18 16:55:12', '2017-07-18 19:55:12', '', 0, 'http://localhost/defato/?p=445', 0, 'post', '', 0),
(446, 11, '2017-07-17 10:52:04', '2017-07-17 13:52:04', '', 'Chrysanthemum', '', 'inherit', 'open', 'closed', '', 'chrysanthemum', '', '', '2017-07-17 10:52:04', '2017-07-17 13:52:04', '', 445, 'http://localhost/defato/wp-content/uploads/2017/07/Chrysanthemum.jpg', 0, 'attachment', 'image/jpeg', 0),
(448, 1, '2017-07-17 11:04:40', '2017-07-17 14:04:40', ' ', '', '', 'publish', 'closed', 'closed', '', '448', '', '', '2017-07-17 11:09:11', '2017-07-17 14:09:11', '', 0, 'http://localhost/defato/?p=448', 30, 'nav_menu_item', '', 0),
(449, 1, '2017-07-17 11:09:10', '2017-07-17 14:09:10', ' ', '', '', 'publish', 'closed', 'closed', '', '449', '', '', '2017-07-17 11:09:10', '2017-07-17 14:09:10', '', 5, 'http://localhost/defato/?p=449', 3, 'nav_menu_item', '', 0),
(451, 1, '2017-07-18 00:33:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-07-18 00:33:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/defato/?p=451', 1, 'nav_menu_item', '', 0),
(452, 1, '2017-07-18 00:34:03', '2017-07-18 03:34:03', ' ', '', '', 'publish', 'closed', 'closed', '', '452', '', '', '2017-07-18 00:34:03', '2017-07-18 03:34:03', '', 19, 'http://localhost/defato/?p=452', 1, 'nav_menu_item', '', 0),
(456, 1, '2017-07-18 15:25:06', '2017-07-18 18:25:06', '', 'teste-padrão-sem-emenda-jornalismo-notícia-viva-notícia-do-mundo-45302285', '', 'inherit', 'open', 'closed', '', 'teste-padrao-sem-emenda-jornalismo-noticia-viva-noticia-do-mundo-45302285', '', '', '2017-07-18 15:25:06', '2017-07-18 18:25:06', '', 0, 'http://localhost/defato/wp-content/uploads/2017/07/teste-padrão-sem-emenda-jornalismo-notícia-viva-notícia-do-mundo-45302285.jpg', 0, 'attachment', 'image/jpeg', 0),
(458, 1, '2017-07-27 00:19:34', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-07-27 00:19:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/defato/?p=458', 0, 'post', '', 0) ;

#
# Fim do conteúdo da tabela `wp_posts`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_term_relationships` existente
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Estrutura da tabela `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(7, 2, 0),
(7, 8, 0),
(7, 12, 0),
(7, 14, 0),
(9, 8, 0),
(9, 12, 0),
(9, 25, 0),
(9, 26, 0),
(9, 27, 0),
(9, 50, 0),
(28, 8, 0),
(28, 16, 0),
(35, 9, 0),
(35, 11, 0),
(35, 28, 0),
(35, 29, 0),
(35, 30, 0),
(36, 14, 0),
(36, 21, 0),
(36, 22, 0),
(52, 17, 0),
(52, 45, 0),
(55, 13, 0),
(55, 42, 0),
(56, 13, 0),
(56, 39, 0),
(57, 5, 0),
(57, 6, 0),
(57, 8, 0),
(57, 20, 0),
(58, 35, 0),
(58, 43, 0),
(65, 17, 0),
(65, 18, 0),
(66, 17, 0),
(66, 18, 0),
(73, 4, 0),
(102, 16, 0),
(102, 23, 0),
(102, 24, 0),
(105, 9, 0),
(105, 16, 0),
(105, 31, 0),
(111, 4, 0),
(112, 4, 0),
(113, 4, 0),
(114, 4, 0),
(115, 4, 0),
(116, 4, 0),
(124, 17, 0),
(124, 46, 0),
(129, 7, 0),
(129, 20, 0),
(132, 7, 0),
(132, 20, 0),
(132, 41, 0),
(135, 7, 0),
(135, 16, 0),
(169, 20, 0),
(169, 32, 0),
(169, 40, 0),
(173, 7, 0),
(173, 16, 0),
(175, 16, 0),
(175, 32, 0),
(195, 36, 0),
(200, 36, 0),
(210, 4, 0),
(211, 4, 0),
(214, 4, 0),
(215, 4, 0),
(225, 4, 0),
(252, 34, 0),
(254, 34, 0),
(257, 34, 0),
(259, 34, 0),
(270, 1, 0),
(278, 6, 0),
(278, 11, 0),
(283, 10, 0),
(283, 11, 0),
(310, 10, 0),
(310, 16, 0),
(317, 11, 0),
(317, 50, 0),
(320, 16, 0),
(323, 2, 0),
(323, 13, 0),
(327, 7, 0),
(327, 14, 0),
(327, 49, 0),
(331, 8, 0),
(331, 32, 0),
(331, 35, 0),
(339, 10, 0),
(339, 12, 0),
(353, 6, 0),
(353, 16, 0),
(353, 32, 0),
(359, 6, 0) ;
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(359, 16, 0),
(359, 32, 0),
(367, 4, 0),
(368, 4, 0),
(369, 4, 0),
(370, 4, 0),
(371, 4, 0),
(372, 4, 0),
(373, 4, 0),
(374, 4, 0),
(377, 4, 0),
(378, 4, 0),
(379, 4, 0),
(383, 9, 0),
(383, 20, 0),
(383, 32, 0),
(391, 2, 0),
(391, 13, 0),
(399, 4, 0),
(400, 4, 0),
(415, 4, 0),
(416, 4, 0),
(417, 4, 0),
(439, 12, 0),
(439, 42, 0),
(445, 11, 0),
(448, 4, 0),
(449, 4, 0),
(452, 3, 0) ;

#
# Fim do conteúdo da tabela `wp_term_relationships`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_term_taxonomy` existente
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Estrutura da tabela `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 30),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 5, 3),
(7, 7, 'category', '', 0, 5),
(8, 8, 'category', '', 5, 5),
(9, 9, 'category', '', 5, 3),
(10, 10, 'category', '', 5, 3),
(11, 11, 'category', '', 15, 4),
(12, 12, 'category', '', 15, 3),
(13, 13, 'category', '', 15, 4),
(14, 14, 'category', '', 15, 3),
(15, 15, 'category', '', 0, 0),
(16, 16, 'category', '', 15, 9),
(17, 17, 'event-category', '', 0, 4),
(18, 18, 'event-venue', '', 0, 2),
(19, 19, 'category', '', 0, 0),
(20, 20, 'category', '', 15, 5),
(21, 21, 'post_tag', '', 0, 1),
(22, 22, 'post_tag', '', 0, 1),
(23, 23, 'post_tag', '', 0, 1),
(24, 24, 'post_tag', '', 0, 1),
(25, 25, 'post_tag', '', 0, 1),
(26, 26, 'post_tag', '', 0, 1),
(27, 27, 'post_tag', '', 0, 1),
(28, 28, 'post_tag', '', 0, 1),
(29, 29, 'post_tag', '', 0, 1),
(30, 30, 'post_tag', '', 0, 1),
(31, 31, 'post_tag', '', 0, 1),
(32, 32, 'category', '', 0, 5),
(34, 34, 'category', '', 0, 4),
(35, 35, 'category', '', 15, 2),
(36, 36, 'category', '', 0, 2),
(37, 37, 'event-venue', '', 0, 0),
(39, 39, 'category', '', 19, 1),
(40, 40, 'category', '', 5, 1),
(41, 41, 'category', '', 5, 1),
(42, 42, 'category', '', 5, 1),
(43, 43, 'category', '', 5, 1),
(44, 44, 'event-venue', '', 0, 0),
(45, 45, 'event-venue', '', 0, 1),
(46, 46, 'event-venue', '', 0, 1),
(48, 48, 'category', '', 5, 0),
(49, 49, 'category', '', 0, 1),
(50, 50, 'category', '', 0, 2) ;

#
# Fim do conteúdo da tabela `wp_term_taxonomy`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_termmeta` existente
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Estrutura da tabela `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_termmeta`
#
INSERT INTO `wp_termmeta` ( `meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 14, '_background', 'field_593c498cff944'),
(2, 16, '_background', 'field_593c498cff944'),
(3, 19, '_background', 'field_593c498cff944'),
(5, 39, '_background', 'field_593c498cff944'),
(6, 14, 'background', ''),
(7, 16, 'background', ''),
(8, 19, 'background', '264'),
(10, 39, 'background', '348'),
(11, 42, 'background', ''),
(12, 42, '_background', 'field_593c498cff944'),
(13, 40, 'background', ''),
(14, 40, '_background', 'field_593c498cff944'),
(15, 43, 'background', ''),
(16, 43, '_background', 'field_593c498cff944'),
(17, 41, 'background', ''),
(18, 41, '_background', 'field_593c498cff944'),
(19, 6, 'background', ''),
(20, 6, '_background', 'field_593c498cff944'),
(21, 10, 'background', ''),
(22, 10, '_background', 'field_593c498cff944'),
(23, 8, 'background', ''),
(24, 8, '_background', 'field_593c498cff944'),
(25, 5, 'background', ''),
(26, 5, '_background', 'field_593c498cff944'),
(27, 9, 'background', ''),
(28, 9, '_background', 'field_593c498cff944'),
(29, 48, 'background', ''),
(30, 48, '_background', 'field_593c498cff944'),
(31, 49, 'background', ''),
(32, 49, '_background', 'field_593c498cff944'),
(33, 50, 'background', ''),
(34, 50, '_background', 'field_593c498cff944') ;

#
# Fim do conteúdo da tabela `wp_termmeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_terms` existente
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Estrutura da tabela `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Destaque', 'destaque', 0),
(3, 'Em alta', 'em-alta', 0),
(4, 'Principal', 'principal', 0),
(5, 'Cidades', 'cidades', 0),
(6, 'Itabira', 'itabira', 0),
(7, 'TV DEFATO', 'tv-defato', 0),
(8, 'Governador Valadares', 'governador-valadares', 0),
(9, 'Santa Bárbara', 'santa-barbara', 0),
(10, 'Ipatinga', 'ipatinga', 0),
(11, 'Esportes', 'esportes', 0),
(12, 'Economia', 'economia', 0),
(13, 'Política', 'politica', 0),
(14, 'Mundo', 'mundo', 0),
(15, 'Editoriais', 'editoriais', 0),
(16, 'Entreterimento', 'entreterimento', 0),
(17, 'Evento', 'evento', 0),
(18, 'Unileste', 'unileste', 0),
(19, 'Em alta', 'em-alta', 0),
(20, 'Educação', 'educacao', 0),
(21, 'lava jato', 'lava-jato', 0),
(22, 'lula', 'lula', 0),
(23, 'famosos', 'famosos', 0),
(24, 'grazi', 'grazi', 0),
(25, 'bolivia', 'bolivia', 0),
(26, 'peru', 'peru', 0),
(27, 'asco', 'asco', 0),
(28, 'seleção', 'selecao', 0),
(29, 'brasil', 'brasil', 0),
(30, 'dunga', 'dunga', 0),
(31, 'globo', 'globo', 0),
(32, 'Fotos', 'fotos', 0),
(34, 'Cinema', 'cinema', 0),
(35, 'BR-381', 'br-381', 0),
(36, 'Revista', 'revista', 0),
(37, 'Prefeitura', 'prefeitura', 0),
(39, 'valerio', 'valerio', 0),
(40, 'Guanhães', 'guanhaes', 0),
(41, 'Virginópolis', 'virginopolis', 0),
(42, 'Brasília', 'brasilia', 0),
(43, 'Serro', 'serro', 0),
(44, 'Expoita', 'expoita', 0),
(45, 'DeFato', 'defato', 0),
(46, 'Usipa', 'usipa', 0),
(48, 'Iapu', 'iapu', 0),
(49, 'Destaque TV DeFato', 'destaque-tv-defato', 0),
(50, 'Destaque Noticias', 'destaque-noticias', 0) ;

#
# Fim do conteúdo da tabela `wp_terms`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_unitegallery_categories` existente
#

DROP TABLE IF EXISTS `wp_unitegallery_categories`;


#
# Estrutura da tabela `wp_unitegallery_categories`
#

CREATE TABLE `wp_unitegallery_categories` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `type` tinytext COLLATE utf8_unicode_ci,
  `parent_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_unitegallery_categories`
#
INSERT INTO `wp_unitegallery_categories` ( `id`, `title`, `alias`, `ordering`, `params`, `type`, `parent_id`) VALUES
(1, 'teste', NULL, 1, '', NULL, NULL),
(3, 'Acidente', NULL, 3, '', NULL, NULL),
(4, 'Miss', NULL, 4, '', NULL, NULL),
(5, 'DeFato', NULL, 5, '', NULL, NULL) ;

#
# Fim do conteúdo da tabela `wp_unitegallery_categories`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_unitegallery_galleries` existente
#

DROP TABLE IF EXISTS `wp_unitegallery_galleries`;


#
# Estrutura da tabela `wp_unitegallery_galleries`
#

CREATE TABLE `wp_unitegallery_galleries` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `alias` tinytext COLLATE utf8_unicode_ci,
  `ordering` int(11) NOT NULL,
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_unitegallery_galleries`
#
INSERT INTO `wp_unitegallery_galleries` ( `id`, `type`, `title`, `alias`, `ordering`, `params`) VALUES
(2, 'ug-compact', 'teste', 'teste', 1, '{"title":"teste","alias":"teste","category":"1","full_width":"false","gallery_width":"750","gallery_height":"600","categories":2,"shortcode":"[unitegallery teste]","enable_category_tabs":"false","gallery_min_width":"150","gallery_min_height":"100","theme_panel_position":"bottom","theme_hide_panel_under_width":"480","gallery_skin":"default","gallery_images_preload_type":"minimal","gallery_autoplay":"false","gallery_play_interval":"3000","gallery_pause_on_mouseover":"true","gallery_mousewheel_role":"zoom","gallery_control_keyboard":"true","gallery_carousel":"true","gallery_preserve_ratio":"true","gallery_shuffle":"false","slider_background_color":"#000000","slider_background_opacity":"1","position":"center","margin_top":"0","margin_bottom":"0","margin_left":"0","margin_right":"0","strippanel_padding_top":"8","strippanel_padding_bottom":"8","strippanel_padding_left":"0","strippanel_padding_right":"0","strippanel_background_color":"#000000","strippanel_background_transparent":"false","strippanel_enable_buttons":"false","strippanel_buttons_skin":"","strippanel_padding_buttons":"2","strippanel_buttons_role":"scroll_strip","strippanel_enable_handle":"true","strippanel_handle_align":"top","strippanel_handle_offset":"0","strippanel_handle_skin":"","strip_thumbs_align":"left","strip_space_between_thumbs":"6","strip_scroll_to_thumb_duration":"500","strip_scroll_to_thumb_easing":"easeOutCubic","strip_control_avia":"true","strip_control_touch":"true","strip_thumb_touch_sensetivity":"15","thumb_fixed_size":"true","thumb_width":"88","thumb_height":"50","thumb_resolution":"medium","thumb_border_effect":"true","thumb_border_width":"0","thumb_border_color":"#000000","thumb_over_border_width":"0","thumb_over_border_color":"#d9d9d9","thumb_selected_border_width":"1","thumb_selected_border_color":"#d9d9d9","thumb_round_corners_radius":"0","thumb_color_overlay_effect":"true","thumb_overlay_color":"#000000","thumb_overlay_opacity":"0.4","thumb_overlay_reverse":"false","thumb_image_overlay_effect":"false","thumb_image_overlay_type":"bw","thumb_transition_duration":"200","thumb_transition_easing":"easeOutQuad","thumb_show_loader":"true","thumb_loader_type":"dark","slider_scale_mode":"fill","slider_scale_mode_media":"fill","slider_scale_mode_fullscreen":"down","big_image_resolution":"full","big_image_resolution_mobile":"","slider_controls_always_on":"true","slider_controls_appear_duration":"300","slider_controls_appear_ontap":"true","edit_slider_padding":"false","slider_item_padding_top":"0","slider_item_padding_bottom":"0","slider_item_padding_left":"0","slider_item_padding_right":"0","slider_transition":"slide","slider_transition_speed":"300","slider_transition_easing":"easeInOutQuad","slider_control_swipe":"true","slider_control_zoom":"true","slider_zoom_max_ratio":"6","slider_enable_links":"true","slider_links_newpage":"false","slider_video_enable_closebutton":"true","slider_loader_type":"1","slider_loader_color":"white","slider_enable_bullets":"false","slider_bullets_skin":"","slider_bullets_space_between":"-1","slider_bullets_align_hor":"center","slider_bullets_align_vert":"bottom","slider_bullets_offset_hor":"0","slider_bullets_offset_vert":"10","slider_enable_arrows":"true","slider_arrows_skin":"","slider_arrow_left_align_hor":"left","slider_arrow_left_align_vert":"middle","slider_arrow_left_offset_hor":"20","slider_arrow_left_offset_vert":"0","slider_arrow_right_align_hor":"right","slider_arrow_right_align_vert":"middle","slider_arrow_right_offset_hor":"20","slider_arrow_right_offset_vert":"0","slider_enable_progress_indicator":"true","slider_progress_indicator_type":"pie","slider_progress_indicator_align_hor":"left","slider_progress_indicator_align_vert":"top","slider_progress_indicator_offset_hor":"16","slider_progress_indicator_offset_vert":"36","slider_progressbar_color":"#ffffff","slider_progressbar_opacity":"0.6","slider_progressbar_line_width":"5","slider_progresspie_color1":"#b5b5b5","slider_progresspie_color2":"#e5e5e5","slider_progresspie_stroke_width":"6","slider_progresspie_width":"30","slider_progresspie_height":"30","slider_enable_play_button":"true","slider_play_button_skin":"","slider_play_button_align_hor":"left","slider_play_button_align_vert":"top","slider_play_button_offset_hor":"40","slider_play_button_offset_vert":"8","slider_enable_fullscreen_button":"true","slider_fullscreen_button_skin":"","slider_fullscreen_button_align_hor":"left","slider_fullscreen_button_align_vert":"top","slider_fullscreen_button_offset_hor":"11","slider_fullscreen_button_offset_vert":"9","slider_enable_zoom_panel":"true","slider_zoompanel_skin":"","slider_zoompanel_align_hor":"right","slider_zoompanel_align_vert":"top","slider_zoompanel_offset_hor":"12","slider_zoompanel_offset_vert":"10","slider_enable_text_panel":"false","slider_textpanel_always_on":"true","slider_textpanel_align":"bottom","slider_textpanel_margin":"0","slider_textpanel_text_valign":"middle","slider_textpanel_padding_top":"10","slider_textpanel_padding_bottom":"10","slider_textpanel_height":"-1","slider_textpanel_padding_title_description":"5","slider_textpanel_padding_left":"11","slider_textpanel_padding_right":"11","slider_textpanel_fade_duration":"200","slider_textpanel_enable_title":"true","slider_textpanel_enable_description":"true","slider_textpanel_enable_bg":"true","slider_textpanel_bg_color":"#000000","slider_textpanel_bg_opacity":"0.4","slider_textpanel_css_title":"","slider_textpanel_css_description":"","show_advanced_tab":"false","include_jquery":"true","js_to_body":"false","compress_output":"false","gallery_debug_errors":"false"}'),
(3, 'ug-compact', 'Acidente', 'Acidente', 2, '{"title":"Acidente","alias":"Acidente","category":"3","full_width":"true","gallery_width":"900","gallery_height":"400","categories":3}'),
(4, 'ug-compact', 'Miss', 'Miss', 3, '{"title":"Miss","alias":"Miss","category":"4","full_width":"true","gallery_width":"900","gallery_height":"400","categories":4,"shortcode":"[unitegallery Miss]","enable_category_tabs":"false","gallery_min_width":"150","gallery_min_height":"100","theme_panel_position":"bottom","theme_hide_panel_under_width":"480","gallery_skin":"default","gallery_images_preload_type":"minimal","gallery_autoplay":"false","gallery_play_interval":"3000","gallery_pause_on_mouseover":"true","gallery_mousewheel_role":"zoom","gallery_control_keyboard":"true","gallery_carousel":"true","gallery_preserve_ratio":"true","gallery_shuffle":"false","slider_background_color":"#000000","slider_background_opacity":"1","position":"center","margin_top":"0","margin_bottom":"0","margin_left":"0","margin_right":"0","strippanel_padding_top":"8","strippanel_padding_bottom":"8","strippanel_padding_left":"0","strippanel_padding_right":"0","strippanel_background_color":"#000000","strippanel_background_transparent":"false","strippanel_enable_buttons":"false","strippanel_buttons_skin":"","strippanel_padding_buttons":"2","strippanel_buttons_role":"scroll_strip","strippanel_enable_handle":"true","strippanel_handle_align":"top","strippanel_handle_offset":"0","strippanel_handle_skin":"","strip_thumbs_align":"left","strip_space_between_thumbs":"6","strip_scroll_to_thumb_duration":"500","strip_scroll_to_thumb_easing":"easeOutCubic","strip_control_avia":"true","strip_control_touch":"true","strip_thumb_touch_sensetivity":"15","thumb_fixed_size":"true","thumb_width":"88","thumb_height":"50","thumb_resolution":"medium","thumb_border_effect":"true","thumb_border_width":"0","thumb_border_color":"#000000","thumb_over_border_width":"0","thumb_over_border_color":"#d9d9d9","thumb_selected_border_width":"1","thumb_selected_border_color":"#d9d9d9","thumb_round_corners_radius":"0","thumb_color_overlay_effect":"true","thumb_overlay_color":"#000000","thumb_overlay_opacity":"0.4","thumb_overlay_reverse":"false","thumb_image_overlay_effect":"false","thumb_image_overlay_type":"bw","thumb_transition_duration":"200","thumb_transition_easing":"easeOutQuad","thumb_show_loader":"true","thumb_loader_type":"dark","slider_scale_mode":"fill","slider_scale_mode_media":"fill","slider_scale_mode_fullscreen":"down","big_image_resolution":"full","big_image_resolution_mobile":"","slider_controls_always_on":"true","slider_controls_appear_duration":"300","slider_controls_appear_ontap":"true","edit_slider_padding":"false","slider_item_padding_top":"0","slider_item_padding_bottom":"0","slider_item_padding_left":"0","slider_item_padding_right":"0","slider_transition":"slide","slider_transition_speed":"300","slider_transition_easing":"easeInOutQuad","slider_control_swipe":"true","slider_control_zoom":"true","slider_zoom_max_ratio":"6","slider_enable_links":"true","slider_links_newpage":"false","slider_video_enable_closebutton":"true","slider_loader_type":"1","slider_loader_color":"white","slider_enable_bullets":"false","slider_bullets_skin":"","slider_bullets_space_between":"-1","slider_bullets_align_hor":"center","slider_bullets_align_vert":"bottom","slider_bullets_offset_hor":"0","slider_bullets_offset_vert":"10","slider_enable_arrows":"true","slider_arrows_skin":"","slider_arrow_left_align_hor":"left","slider_arrow_left_align_vert":"middle","slider_arrow_left_offset_hor":"20","slider_arrow_left_offset_vert":"0","slider_arrow_right_align_hor":"right","slider_arrow_right_align_vert":"middle","slider_arrow_right_offset_hor":"20","slider_arrow_right_offset_vert":"0","slider_enable_progress_indicator":"true","slider_progress_indicator_type":"pie","slider_progress_indicator_align_hor":"left","slider_progress_indicator_align_vert":"top","slider_progress_indicator_offset_hor":"16","slider_progress_indicator_offset_vert":"36","slider_progressbar_color":"#ffffff","slider_progressbar_opacity":"0.6","slider_progressbar_line_width":"5","slider_progresspie_color1":"#b5b5b5","slider_progresspie_color2":"#e5e5e5","slider_progresspie_stroke_width":"6","slider_progresspie_width":"30","slider_progresspie_height":"30","slider_enable_play_button":"true","slider_play_button_skin":"","slider_play_button_align_hor":"left","slider_play_button_align_vert":"top","slider_play_button_offset_hor":"40","slider_play_button_offset_vert":"8","slider_enable_fullscreen_button":"true","slider_fullscreen_button_skin":"","slider_fullscreen_button_align_hor":"left","slider_fullscreen_button_align_vert":"top","slider_fullscreen_button_offset_hor":"11","slider_fullscreen_button_offset_vert":"9","slider_enable_zoom_panel":"true","slider_zoompanel_skin":"","slider_zoompanel_align_hor":"right","slider_zoompanel_align_vert":"top","slider_zoompanel_offset_hor":"12","slider_zoompanel_offset_vert":"10","slider_enable_text_panel":"false","slider_textpanel_always_on":"true","slider_textpanel_align":"bottom","slider_textpanel_margin":"0","slider_textpanel_text_valign":"middle","slider_textpanel_padding_top":"10","slider_textpanel_padding_bottom":"10","slider_textpanel_height":"-1","slider_textpanel_padding_title_description":"5","slider_textpanel_padding_left":"11","slider_textpanel_padding_right":"11","slider_textpanel_fade_duration":"200","slider_textpanel_enable_title":"true","slider_textpanel_enable_description":"true","slider_textpanel_enable_bg":"true","slider_textpanel_bg_color":"#000000","slider_textpanel_bg_opacity":"0.4","slider_textpanel_css_title":"","slider_textpanel_css_description":"","show_advanced_tab":"false","include_jquery":"true","js_to_body":"false","compress_output":"false","gallery_debug_errors":"false"}'),
(5, 'ug-compact', 'DeFato', 'Defato', 4, '{"title":"DeFato","alias":"Defato","category":"5","full_width":"false","gallery_width":"900","gallery_height":"400","categories":5,"shortcode":"[unitegallery Defato]","enable_category_tabs":"false","gallery_min_width":"150","gallery_min_height":"100","theme_panel_position":"bottom","theme_hide_panel_under_width":"480","gallery_skin":"default","gallery_images_preload_type":"minimal","gallery_autoplay":"false","gallery_play_interval":"3000","gallery_pause_on_mouseover":"true","gallery_mousewheel_role":"zoom","gallery_control_keyboard":"true","gallery_carousel":"true","gallery_preserve_ratio":"true","gallery_shuffle":"false","slider_background_color":"#000000","slider_background_opacity":"1","position":"center","margin_top":"0","margin_bottom":"0","margin_left":"0","margin_right":"0","strippanel_padding_top":"8","strippanel_padding_bottom":"8","strippanel_padding_left":"0","strippanel_padding_right":"0","strippanel_background_color":"#000000","strippanel_background_transparent":"false","strippanel_enable_buttons":"false","strippanel_buttons_skin":"","strippanel_padding_buttons":"2","strippanel_buttons_role":"scroll_strip","strippanel_enable_handle":"true","strippanel_handle_align":"top","strippanel_handle_offset":"0","strippanel_handle_skin":"","strip_thumbs_align":"left","strip_space_between_thumbs":"6","strip_scroll_to_thumb_duration":"500","strip_scroll_to_thumb_easing":"easeOutCubic","strip_control_avia":"true","strip_control_touch":"true","strip_thumb_touch_sensetivity":"15","thumb_fixed_size":"true","thumb_width":"88","thumb_height":"50","thumb_resolution":"medium","thumb_border_effect":"true","thumb_border_width":"0","thumb_border_color":"#000000","thumb_over_border_width":"0","thumb_over_border_color":"#d9d9d9","thumb_selected_border_width":"1","thumb_selected_border_color":"#d9d9d9","thumb_round_corners_radius":"0","thumb_color_overlay_effect":"true","thumb_overlay_color":"#000000","thumb_overlay_opacity":"0.4","thumb_overlay_reverse":"false","thumb_image_overlay_effect":"false","thumb_image_overlay_type":"bw","thumb_transition_duration":"200","thumb_transition_easing":"easeOutQuad","thumb_show_loader":"true","thumb_loader_type":"dark","slider_scale_mode":"fill","slider_scale_mode_media":"fill","slider_scale_mode_fullscreen":"down","big_image_resolution":"full","big_image_resolution_mobile":"","slider_controls_always_on":"true","slider_controls_appear_duration":"300","slider_controls_appear_ontap":"true","edit_slider_padding":"false","slider_item_padding_top":"0","slider_item_padding_bottom":"0","slider_item_padding_left":"0","slider_item_padding_right":"0","slider_transition":"slide","slider_transition_speed":"300","slider_transition_easing":"easeInOutQuad","slider_control_swipe":"true","slider_control_zoom":"true","slider_zoom_max_ratio":"6","slider_enable_links":"true","slider_links_newpage":"false","slider_video_enable_closebutton":"true","slider_loader_type":"1","slider_loader_color":"white","slider_enable_bullets":"false","slider_bullets_skin":"","slider_bullets_space_between":"-1","slider_bullets_align_hor":"center","slider_bullets_align_vert":"bottom","slider_bullets_offset_hor":"0","slider_bullets_offset_vert":"10","slider_enable_arrows":"true","slider_arrows_skin":"","slider_arrow_left_align_hor":"left","slider_arrow_left_align_vert":"middle","slider_arrow_left_offset_hor":"20","slider_arrow_left_offset_vert":"0","slider_arrow_right_align_hor":"right","slider_arrow_right_align_vert":"middle","slider_arrow_right_offset_hor":"20","slider_arrow_right_offset_vert":"0","slider_enable_progress_indicator":"true","slider_progress_indicator_type":"pie","slider_progress_indicator_align_hor":"left","slider_progress_indicator_align_vert":"top","slider_progress_indicator_offset_hor":"16","slider_progress_indicator_offset_vert":"36","slider_progressbar_color":"#ffffff","slider_progressbar_opacity":"0.6","slider_progressbar_line_width":"5","slider_progresspie_color1":"#b5b5b5","slider_progresspie_color2":"#e5e5e5","slider_progresspie_stroke_width":"6","slider_progresspie_width":"30","slider_progresspie_height":"30","slider_enable_play_button":"true","slider_play_button_skin":"","slider_play_button_align_hor":"left","slider_play_button_align_vert":"top","slider_play_button_offset_hor":"40","slider_play_button_offset_vert":"8","slider_enable_fullscreen_button":"true","slider_fullscreen_button_skin":"","slider_fullscreen_button_align_hor":"left","slider_fullscreen_button_align_vert":"top","slider_fullscreen_button_offset_hor":"11","slider_fullscreen_button_offset_vert":"9","slider_enable_zoom_panel":"true","slider_zoompanel_skin":"","slider_zoompanel_align_hor":"right","slider_zoompanel_align_vert":"top","slider_zoompanel_offset_hor":"12","slider_zoompanel_offset_vert":"10","slider_enable_text_panel":"false","slider_textpanel_always_on":"true","slider_textpanel_align":"bottom","slider_textpanel_margin":"0","slider_textpanel_text_valign":"middle","slider_textpanel_padding_top":"10","slider_textpanel_padding_bottom":"10","slider_textpanel_height":"-1","slider_textpanel_padding_title_description":"5","slider_textpanel_padding_left":"11","slider_textpanel_padding_right":"11","slider_textpanel_fade_duration":"200","slider_textpanel_enable_title":"true","slider_textpanel_enable_description":"true","slider_textpanel_enable_bg":"true","slider_textpanel_bg_color":"#000000","slider_textpanel_bg_opacity":"0.4","slider_textpanel_css_title":"","slider_textpanel_css_description":"","show_advanced_tab":"false","include_jquery":"true","js_to_body":"false","compress_output":"false","gallery_debug_errors":"false"}') ;

#
# Fim do conteúdo da tabela `wp_unitegallery_galleries`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_unitegallery_items` existente
#

DROP TABLE IF EXISTS `wp_unitegallery_items`;


#
# Estrutura da tabela `wp_unitegallery_items`
#

CREATE TABLE `wp_unitegallery_items` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `published` int(2) NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `alias` tinytext COLLATE utf8_unicode_ci,
  `type` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_image` tinytext COLLATE utf8_unicode_ci,
  `url_thumb` tinytext COLLATE utf8_unicode_ci,
  `ordering` int(11) NOT NULL,
  `catid` int(9) NOT NULL,
  `imageid` int(9) DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `contentid` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_unitegallery_items`
#
INSERT INTO `wp_unitegallery_items` ( `id`, `published`, `title`, `alias`, `type`, `url_image`, `url_thumb`, `ordering`, `catid`, `imageid`, `params`, `content`, `contentid`, `parent_id`) VALUES
(1, 1, '_MG_4680', NULL, 'image', 'wp-content/uploads/2017/06/MG_4680.jpg', 'wp-content/uploads/2017/06/MG_4680-300x200.jpg', 1, 1, 170, '[]', NULL, NULL, NULL),
(2, 1, 'Desafio musical', NULL, 'image', 'wp-content/uploads/2017/06/desafio-musical.jpg', 'wp-content/uploads/2017/06/desafio-musical-300x169.jpg', 2, 1, 131, '[]', NULL, NULL, NULL),
(3, 1, 'Paródia Despacito', NULL, 'image', 'wp-content/uploads/2017/06/parodia-despacito.jpg', 'wp-content/uploads/2017/06/parodia-despacito-300x169.jpg', 3, 1, 137, '[]', NULL, NULL, NULL),
(4, 1, 'Dota cancer build', NULL, 'image', 'wp-content/uploads/2017/06/dota-cancer-build.jpg', 'wp-content/uploads/2017/06/dota-cancer-build-300x225.jpg', 4, 1, 134, '[]', NULL, NULL, NULL),
(5, 1, '20150622072736660388o', NULL, 'image', 'wp-content/uploads/2017/05/20150622072736660388o.jpg', 'wp-content/uploads/2017/05/20150622072736660388o-300x199.jpg', 5, 1, 92, '[]', NULL, NULL, NULL),
(6, 1, 'carmen_lucia-4519974', NULL, 'image', 'wp-content/uploads/2017/05/carmen_lucia-4519974.jpg', 'wp-content/uploads/2017/05/carmen_lucia-4519974-300x215.jpg', 6, 1, 89, '[]', NULL, NULL, NULL),
(7, 1, 'Urna_eletrônica', NULL, 'image', 'wp-content/uploads/2017/05/Urna_eletrônica.jpeg', 'wp-content/uploads/2017/05/Urna_eletrônica-300x197.jpeg', 7, 1, 86, '[]', NULL, NULL, NULL),
(8, 1, '2017-05-12t212308z_137625788_mt1aci14792216_rtrmadp_3_soccer-england-wba-che', NULL, 'image', 'wp-content/uploads/2017/05/2017-05-12t212308z_137625788_mt1aci14792216_rtrmadp_3_soccer-england-wba-che.jpg', 'wp-content/uploads/2017/05/2017-05-12t212308z_137625788_mt1aci14792216_rtrmadp_3_soccer-england-wba-che-300x160.jpg', 8, 1, 95, '[]', NULL, NULL, NULL),
(9, 1, 'sonhar-com-cachorro-1', NULL, 'image', 'wp-content/uploads/2017/05/sonhar-com-cachorro-1-e1495288554451.jpg', 'wp-content/uploads/2017/05/sonhar-com-cachorro-1-e1495288554451-300x223.jpg', 9, 1, 98, '[]', NULL, NULL, NULL),
(10, 1, 'grazi', NULL, 'image', 'wp-content/uploads/2017/05/grazi-e1495237608328.jpg', 'wp-content/uploads/2017/05/grazi-e1495237608328-300x209.jpg', 10, 1, 103, '[]', NULL, NULL, NULL),
(11, 1, 'fr9202', NULL, 'image', 'wp-content/uploads/2017/05/fr9202.jpg', 'wp-content/uploads/2017/05/fr9202-300x200.jpg', 11, 1, 106, '[]', NULL, NULL, NULL),
(12, 1, 'professor-melhore-a-relacao-em-sala-de-aula-com-sua-turma-noticias', NULL, 'image', 'wp-content/uploads/2017/05/professor-melhore-a-relacao-em-sala-de-aula-com-sua-turma-noticias.jpg', 'wp-content/uploads/2017/05/professor-melhore-a-relacao-em-sala-de-aula-com-sua-turma-noticias-300x134.jpg', 12, 1, 83, '[]', NULL, NULL, NULL),
(13, 1, 'Coldplay1-p-500', NULL, 'image', 'wp-content/uploads/2017/01/Coldplay1-p-500.jpeg', 'wp-content/uploads/2017/01/Coldplay1-p-500-300x191.jpeg', 13, 1, 67, '[]', NULL, NULL, NULL),
(14, 1, 'moto-1', NULL, 'image', 'wp-content/uploads/2017/06/moto-1.jpg', 'wp-content/uploads/2017/06/moto-1-300x169.jpg', 1, 3, 335, '[]', NULL, NULL, NULL),
(15, 1, 'moto-3', NULL, 'image', 'wp-content/uploads/2017/06/moto-3.jpg', 'wp-content/uploads/2017/06/moto-3-300x169.jpg', 2, 3, 336, '[]', NULL, NULL, NULL),
(16, 1, 'moto-4', NULL, 'image', 'wp-content/uploads/2017/06/moto-4.jpg', 'wp-content/uploads/2017/06/moto-4-300x169.jpg', 3, 3, 337, '[]', NULL, NULL, NULL),
(17, 1, 'galeriagr_15062017111254', NULL, 'image', 'wp-content/uploads/2017/06/galeriagr_15062017111254.jpg', 'wp-content/uploads/2017/06/galeriagr_15062017111254-300x225.jpg', 1, 4, 355, '[]', NULL, NULL, NULL),
(18, 1, 'galeriagr_15062017112927', NULL, 'image', 'wp-content/uploads/2017/06/galeriagr_15062017112927.jpg', 'wp-content/uploads/2017/06/galeriagr_15062017112927-300x225.jpg', 2, 4, 356, '[]', NULL, NULL, NULL),
(19, 1, 'galeriagr_15062017113115', NULL, 'image', 'wp-content/uploads/2017/06/galeriagr_15062017113115.jpg', 'wp-content/uploads/2017/06/galeriagr_15062017113115-225x300.jpg', 3, 4, 357, '[]', NULL, NULL, NULL),
(20, 1, 'galeriagr_15062017111254', NULL, 'image', 'wp-content/uploads/2017/06/galeriagr_15062017111254-1.jpg', 'wp-content/uploads/2017/06/galeriagr_15062017111254-1-300x225.jpg', 4, 4, 397, '[]', NULL, NULL, NULL),
(21, 1, 'galeriagr_15062017112927', NULL, 'image', 'wp-content/uploads/2017/06/galeriagr_15062017112927.jpg', 'wp-content/uploads/2017/06/galeriagr_15062017112927-300x225.jpg', 1, 5, 356, '[]', NULL, NULL, NULL),
(22, 1, 'logo', NULL, 'image', 'wp-content/uploads/2017/07/logo.png', 'wp-content/uploads/2017/07/logo.png', 2, 5, 413, '[]', NULL, NULL, NULL) ;

#
# Fim do conteúdo da tabela `wp_unitegallery_items`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_usermeta` existente
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Estrutura da tabela `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'adrotatefree_39063'),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:1:{s:64:"8bc1a74af855999d6fe10ee3eb3e4fe42bbe6ef63f3cfc8192543fb5292db33f";a:4:{s:10:"expiration";i:1502335171;s:2:"ip";s:15:"187.127.112.158";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0";s:5:"login";i:1501125571;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '458'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&imgsize=full&align=left&advImgDetails=show'),
(18, 1, 'wp_user-settings-time', '1500402339'),
(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:15:"title-attribute";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:7:{i:0;s:23:"acf-group_59530346b773f";i:1;s:23:"acf-group_59530346ccbef";i:2;s:23:"acf-group_59530346d46de";i:3;s:13:"trackbacksdiv";i:4;s:10:"postcustom";i:5;s:16:"commentstatusdiv";i:6;s:7:"slugdiv";}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 2, 'nickname', 'Fabricio'),
(25, 2, 'first_name', 'Fabricio'),
(26, 2, 'last_name', 'Silva'),
(27, 2, 'description', 'Escritor, agraciado com o prêmio JABUTI 2008, possui mais de 40 livros publicados por editoras como Melhoramentos, Ática, Saraiva, Editora do Brasil, Panda Books, Mundo Mirim, Prumo, Paulus, Besouro Box, Escala Educacional, entre outras.'),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'locale', ''),
(34, 2, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(35, 2, 'wp_user_level', '2'),
(36, 2, 'dismissed_wp_pointers', ''),
(37, 1, 'meta-box-order_event', 'a:3:{s:4:"side";s:58:"submitdiv,event-categorydiv,tagsdiv-event-tag,postimagediv";s:6:"normal";s:62:"eventorganiser_detail,postexcerpt,postcustom,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(38, 1, 'screen_layout_event', '2'),
(39, 1, 'closedpostboxes_event', 'a:1:{i:0;s:17:"tagsdiv-event-tag";}'),
(40, 1, 'metaboxhidden_event', 'a:2:{i:0;s:6:"acf_80";i:1;s:7:"slugdiv";}'),
(41, 3, 'nickname', 'Marcelo'),
(42, 3, 'first_name', 'Marcelo'),
(43, 3, 'last_name', 'Odebrecht'),
(44, 3, 'description', 'Escritor, agraciado com o prêmio JABUTI 2008, possui mais de 40 livros publicados por editoras como Melhoramentos, Ática, Saraiva, Editora do Brasil, Panda Books, Mundo Mirim, Prumo, Paulus, Besouro Box, Escala Educacional, entre outras.'),
(45, 3, 'rich_editing', 'true'),
(46, 3, 'comment_shortcuts', 'false'),
(47, 3, 'admin_color', 'fresh'),
(48, 3, 'use_ssl', '0'),
(49, 3, 'show_admin_bar_front', 'true'),
(50, 3, 'locale', ''),
(51, 3, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(52, 3, 'wp_user_level', '2'),
(53, 3, 'wp_user_avatar', '346'),
(54, 3, 'dismissed_wp_pointers', ''),
(55, 2, 'wp_user_avatar', '342'),
(56, 4, 'nickname', 'José'),
(57, 4, 'first_name', 'José'),
(58, 4, 'last_name', 'Alexandre'),
(59, 4, 'description', 'Escritor, agraciado com o prêmio JABUTI 2008, possui mais de 40 livros publicados por editoras como Melhoramentos, Ática, Saraiva, Editora do Brasil, Panda Books, Mundo Mirim, Prumo, Paulus, Besouro Box, Escala Educacional, entre outras.'),
(60, 4, 'rich_editing', 'true'),
(61, 4, 'comment_shortcuts', 'false'),
(62, 4, 'admin_color', 'fresh'),
(63, 4, 'use_ssl', '0'),
(64, 4, 'show_admin_bar_front', 'true'),
(65, 4, 'locale', ''),
(66, 4, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(67, 4, 'wp_user_level', '2'),
(68, 4, 'wp_user_avatar', '78'),
(69, 4, 'dismissed_wp_pointers', ''),
(84, 6, 'nickname', 'Eduardo'),
(85, 6, 'first_name', 'Eduardo'),
(86, 6, 'last_name', 'Siqueira'),
(87, 6, 'description', 'Escritor, agraciado com o prêmio JABUTI 2008, possui mais de 40 livros publicados por editoras como Melhoramentos, Ática, Saraiva, Editora do Brasil, Panda Books, Mundo Mirim, Prumo, Paulus, Besouro Box, Escala Educacional, entre outras.'),
(88, 6, 'rich_editing', 'true'),
(89, 6, 'comment_shortcuts', 'false'),
(90, 6, 'admin_color', 'fresh'),
(91, 6, 'use_ssl', '0'),
(92, 6, 'show_admin_bar_front', 'true'),
(93, 6, 'locale', ''),
(94, 6, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(95, 6, 'wp_user_level', '2'),
(96, 6, 'wp_user_avatar', '79'),
(97, 6, 'dismissed_wp_pointers', ''),
(99, 1, 'community-events-location', 'a:1:{s:2:"ip";s:13:"187.127.112.0";}'),
(100, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(101, 1, 'metaboxhidden_dashboard', 'a:1:{i:0;s:17:"dashboard_primary";}'),
(102, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:38:"dashboard_right_now,dashboard_activity";s:4:"side";s:39:"dashboard_quick_press,dashboard_primary";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(103, 7, 'nickname', 'ricardo'),
(104, 7, 'first_name', 'Ricardo'),
(105, 7, 'last_name', 'Ventura'),
(106, 7, 'description', 'Escritor, agraciado com o prêmio JABUTI 2008, possui mais de 40 livros publicados por editoras como Melhoramentos, Ática, Saraiva, Editora do Brasil, Panda Books, Mundo Mirim, Prumo, Paulus, Besouro Box, Escala Educacional, entre outras.'),
(107, 7, 'rich_editing', 'true'),
(108, 7, 'comment_shortcuts', 'false'),
(109, 7, 'admin_color', 'fresh'),
(110, 7, 'use_ssl', '0'),
(111, 7, 'show_admin_bar_front', 'true'),
(112, 7, 'locale', ''),
(113, 7, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(114, 7, 'wp_user_level', '2'),
(115, 7, 'wp_user_avatar', '363') ;
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(116, 7, 'dismissed_wp_pointers', ''),
(117, 1, 'caldera_forms_activation_ignore_notice', 'true'),
(118, 1, 'cf_pointer_add_element', 'a:1:{i:0;N;}'),
(119, 8, 'nickname', 'cadu'),
(120, 8, 'first_name', 'Carlos'),
(121, 8, 'last_name', 'Eduardo'),
(122, 8, 'description', ''),
(123, 8, 'rich_editing', 'true'),
(124, 8, 'comment_shortcuts', 'false'),
(125, 8, 'admin_color', 'fresh'),
(126, 8, 'use_ssl', '0'),
(127, 8, 'show_admin_bar_front', 'true'),
(128, 8, 'locale', ''),
(129, 8, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(130, 8, 'wp_user_level', '7'),
(131, 8, 'wp_user_avatar', ''),
(132, 8, 'dismissed_wp_pointers', ''),
(134, 8, 'wp_dashboard_quick_press_last_post_id', '421'),
(135, 8, 'community-events-location', 'a:1:{s:2:"ip";s:12:"187.114.27.0";}'),
(151, 10, 'nickname', 'edu'),
(152, 10, 'first_name', 'Edu'),
(153, 10, 'last_name', 'Martins'),
(154, 10, 'description', ''),
(155, 10, 'rich_editing', 'true'),
(156, 10, 'comment_shortcuts', 'false'),
(157, 10, 'admin_color', 'fresh'),
(158, 10, 'use_ssl', '0'),
(159, 10, 'show_admin_bar_front', 'true'),
(160, 10, 'locale', ''),
(161, 10, 'wp_capabilities', 'a:1:{s:11:"contributor";b:1;}'),
(162, 10, 'wp_user_level', '1'),
(163, 10, 'wp_user_avatar', ''),
(164, 10, 'dismissed_wp_pointers', ''),
(166, 10, 'wp_dashboard_quick_press_last_post_id', '422'),
(167, 10, 'community-events-location', 'a:1:{s:2:"ip";s:12:"187.114.27.0";}'),
(168, 10, 'closedpostboxes_dashboard', 'a:1:{i:0;s:19:"dashboard_right_now";}'),
(169, 10, 'metaboxhidden_dashboard', 'a:0:{}'),
(173, 8, 'session_tokens', 'a:1:{s:64:"2735e8e8897f99780741c1fc7ec2f6cd0f76cb0757a6c2ece4248f385b1aed81";a:4:{s:10:"expiration";i:1499831441;s:2:"ip";s:14:"187.114.27.161";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:5:"login";i:1499658641;}}'),
(175, 11, 'nickname', 'bruno'),
(176, 11, 'first_name', 'Bruno'),
(177, 11, 'last_name', 'Rodrigues'),
(178, 11, 'description', 'teste teste teste'),
(179, 11, 'rich_editing', 'true'),
(180, 11, 'comment_shortcuts', 'false'),
(181, 11, 'admin_color', 'fresh'),
(182, 11, 'use_ssl', '0'),
(183, 11, 'show_admin_bar_front', 'true'),
(184, 11, 'locale', ''),
(185, 11, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(186, 11, 'wp_user_level', '2'),
(187, 11, 'wp_user_avatar', ''),
(188, 11, 'dismissed_wp_pointers', ''),
(190, 11, 'wp_dashboard_quick_press_last_post_id', '444'),
(191, 11, 'wp_user-settings', 'libraryContent=browse'),
(192, 11, 'wp_user-settings-time', '1500299556') ;

#
# Fim do conteúdo da tabela `wp_usermeta`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_users` existente
#

DROP TABLE IF EXISTS `wp_users`;


#
# Estrutura da tabela `wp_users`
#

CREATE TABLE `wp_users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Conteúdo da tabela `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B8No02DoyvJJY0q/GhLlD0kF2EhnCK0', 'admin', 'viniciusodin@gmail.com', '', '2017-05-05 22:44:11', '', 0, 'admin'),
(2, 'teste', '$P$BXVbGl4CcM7dPRj45VWnjMmoZjs5Ob1', 'teste', 'thales.rodrigues@politechjr.com.br', '', '2017-05-10 17:28:18', '1494437299:$P$BrlxkjXN6oOhxZCct1q4Voy1KQd3H7.', 0, 'Fabricio Silva'),
(3, 'Marcelo', '$P$BbtWNHvQFWQBn4mI4a6RfOgNnBS7vU.', 'marcelo', 'wanber@outlook.com', '', '2017-05-18 18:47:18', '1495133239:$P$B3jM/kHg/0gh6qtmqln9QggFm0plE30', 0, 'Marcelo Odebrecht'),
(4, 'Jose', '$P$BlVx/M6o3OfNOo5C0tUnfRloq5d237.', 'jose', 'carolina.silva@politechjr.com.br', '', '2017-05-19 16:42:27', '', 0, 'Jose Alexandre'),
(6, 'Eduardo', '$P$Bcg8n/MM7WgPL8/KjrrttC9jkCgRRi.', 'eduardo', 'eduardo@gmail.com', '', '2017-05-19 16:52:29', '', 0, 'Eduardo Siqueira'),
(7, 'ricardo', '$P$BDXzvcn8y/oB/MDNUrcGuXkeRkDopO1', 'ricardo', 'ricardo@gmail.com', '', '2017-06-28 12:17:27', '', 0, 'Ricardo Ventura'),
(8, 'cadu', '$P$B7TacuzhUR8iia4A0JBGcoNPPUcRjd1', 'cadu', 'prof.eduardosm@gmail.com', '', '2017-07-10 03:33:00', '1499657580:$P$BKitiOvJwB5ZxCJaoheq.Gy7d/NSOF1', 0, 'Carlos Eduardo'),
(10, 'edu', '$P$BVbcap0pKX06j1V8tldDVxAQ1XkVES0', 'edu', 'eduardo@unilestemg.br', '', '2017-07-10 03:39:34', '1499657974:$P$B0Ek7xWgzwP7d.eHqV5WxfZC/egG6R.', 0, 'Edu Martins'),
(11, 'bruno', '$P$BqU3iVxmL0rG7E0XbfESOkuUgR1Svd1', 'bruno', 'bruno@defatoonline.com.br', '', '2017-07-17 13:50:19', '1500299420:$P$B2EK8EqyzZkbK2ywTNnLTmTvPV4ixl/', 0, 'Bruno Rodrigues') ;

#
# Fim do conteúdo da tabela `wp_users`
# --------------------------------------------------------



#
# Apagar qualquer tabela `wp_wpeditor_settings` existente
#

DROP TABLE IF EXISTS `wp_wpeditor_settings`;


#
# Estrutura da tabela `wp_wpeditor_settings`
#

CREATE TABLE `wp_wpeditor_settings` (
  `key` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


#
# Conteúdo da tabela `wp_wpeditor_settings`
#
INSERT INTO `wp_wpeditor_settings` ( `key`, `value`) VALUES
('version', '1.2.6.3'),
('upgrade', '1'),
('enable_post_editor', '1'),
('hide_default_plugin_editor', '1'),
('hide_default_theme_editor', '1'),
('replace_plugin_edit_links', '1'),
('enable_plugin_line_numbers', '1'),
('enable_theme_line_numbers', '1'),
('enable_post_line_numbers', '1'),
('enable_plugin_line_wrapping', '1'),
('enable_theme_line_wrapping', '1'),
('enable_post_line_wrapping', '1'),
('enable_plugin_active_line', '1'),
('enable_theme_active_line', '1'),
('enable_post_active_line', '1'),
('plugin_editor_allowed_extensions', 'php~js~css~txt~htm~html~jpg~jpeg~png~gif~sql~po~less~xml'),
('theme_editor_allowed_extensions', 'php~js~css~txt~htm~html~jpg~jpeg~png~gif~sql~po~less~xml'),
('plugin_file_upload', '1'),
('theme_file_upload', '1'),
('plugin_indent_unit', '2'),
('theme_indent_unit', '2'),
('post_indent_unit', '2'),
('admin_page_roles', 'a:3:{s:8:"settings";s:14:"manage_options";s:12:"theme-editor";s:11:"edit_themes";s:13:"plugin-editor";s:12:"edit_plugins";}'),
('run_overview', '1'),
('wp_editor_ajax_nonce_settings_themes', '3433b37fb0'),
('theme_editor_theme', 'blackboard'),
('change_theme_editor_font_size', ''),
('enable_theme_tab_characters', 'spaces'),
('enable_theme_tab_size', ''),
('enable_theme_editor_height', ''),
('theme_create_new', '0'),
('settings_tab', 'themes') ;

#
# Fim do conteúdo da tabela `wp_wpeditor_settings`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

