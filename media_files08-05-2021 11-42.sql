#
# TABLE STRUCTURE FOR: media_files
#

DROP TABLE IF EXISTS `media_files`;

CREATE TABLE `media_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `resource_type_id` int(8) unsigned NOT NULL COMMENT 'id типа ресурса',
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'id пользователя',
  `fileName` varchar(255) NOT NULL COMMENT 'имя файла на диске',
  `fileRealName` varchar(255) NOT NULL COMMENT 'имя файла при загрузке',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'файл добавлен',
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `resource_type_id` (`resource_type_id`),
  CONSTRAINT `media_files_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_files_ibfk_2` FOREIGN KEY (`resource_type_id`) REFERENCES `resource_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('1', 101, '299', 'totam', 'sed', '1972-11-14 04:29:17');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('2', 102, '300', 'cupiditate', 'magnam', '2005-09-06 09:24:20');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('3', 103, '301', 'ut', 'pariatur', '1998-09-12 16:48:15');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('4', 104, '302', 'blanditiis', 'rerum', '1993-08-22 07:12:40');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('5', 105, '303', 'qui', 'aut', '1994-08-03 18:11:31');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('6', 106, '304', 'distinctio', 'voluptatem', '1992-02-23 10:17:48');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('7', 107, '305', 'sapiente', 'illum', '1970-04-13 00:24:47');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('8', 108, '306', 'et', 'numquam', '1985-09-03 00:28:26');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('9', 109, '307', 'ducimus', 'itaque', '2005-04-05 02:41:35');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('10', 110, '309', 'natus', 'fugit', '2003-02-07 10:17:46');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('11', 101, '310', 'vel', 'sunt', '1974-03-24 04:56:54');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('12', 102, '312', 'aperiam', 'explicabo', '1982-04-19 02:18:33');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('13', 103, '316', 'deleniti', 'voluptate', '2006-06-23 17:49:11');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('14', 104, '321', 'dolorem', 'sunt', '2012-08-10 12:22:11');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('15', 105, '322', 'occaecati', 'quo', '1985-11-18 00:40:21');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('16', 106, '326', 'quae', 'debitis', '1992-02-19 07:40:52');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('17', 107, '328', 'nihil', 'harum', '1978-09-17 22:55:44');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('18', 108, '332', 'ea', 'et', '1972-04-24 17:21:52');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('19', 109, '333', 'officiis', 'et', '1977-11-05 21:38:03');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('20', 110, '334', 'dolor', 'eos', '1992-03-08 23:27:51');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('21', 101, '335', 'expedita', 'veniam', '1984-12-17 14:39:17');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('22', 102, '337', 'omnis', 'et', '2010-03-29 20:47:31');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('23', 103, '338', 'neque', 'quae', '2011-02-20 15:50:12');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('24', 104, '342', 'incidunt', 'earum', '2008-09-14 03:53:37');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('25', 105, '343', 'vel', 'reprehenderit', '2007-11-06 10:48:31');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('26', 106, '344', 'quibusdam', 'beatae', '1983-01-05 01:29:30');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('27', 107, '345', 'doloremque', 'tenetur', '1994-07-30 18:26:43');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('28', 108, '346', 'fugiat', 'consequuntur', '1976-05-15 07:20:45');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('29', 109, '349', 'consequuntur', 'sapiente', '1982-04-29 11:45:58');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('30', 110, '350', 'tenetur', 'perspiciatis', '1995-02-21 19:12:41');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('31', 101, '352', 'cumque', 'quaerat', '1987-09-09 00:14:08');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('32', 102, '355', 'natus', 'atque', '1998-12-12 01:45:54');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('33', 103, '356', 'sint', 'nulla', '1971-12-16 13:45:35');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('34', 104, '357', 'et', 'molestias', '1983-02-28 02:16:55');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('35', 105, '358', 'sit', 'inventore', '2008-12-04 10:10:57');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('36', 106, '360', 'nihil', 'vitae', '2000-07-19 03:35:33');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('37', 107, '361', 'reprehenderit', 'id', '2010-01-22 03:02:12');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('38', 108, '362', 'repellendus', 'quo', '1983-01-02 03:49:07');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('39', 109, '364', 'aut', 'ratione', '2020-02-14 18:34:56');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('40', 110, '365', 'autem', 'quaerat', '1970-12-10 17:33:02');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('41', 101, '366', 'eos', 'voluptatem', '1986-10-05 12:33:11');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('42', 102, '368', 'quia', 'nostrum', '2010-10-11 10:08:32');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('43', 103, '369', 'dolorum', 'vero', '2003-06-06 15:12:10');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('44', 104, '371', 'harum', 'sed', '1976-09-14 22:21:59');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('45', 105, '372', 'non', 'aut', '1996-09-11 08:16:24');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('46', 106, '374', 'illum', 'ipsam', '1985-10-24 04:14:15');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('47', 107, '375', 'ut', 'et', '1998-09-01 15:37:25');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('48', 108, '376', 'minus', 'numquam', '2010-11-16 01:29:14');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('49', 109, '377', 'facilis', 'facilis', '1993-10-26 12:25:15');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('50', 110, '378', 'est', 'eos', '1998-05-22 23:25:40');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('51', 101, '379', 'quas', 'itaque', '1976-01-25 20:57:47');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('52', 102, '380', 'voluptatum', 'consectetur', '2016-10-29 05:19:14');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('53', 103, '381', 'vitae', 'architecto', '1983-08-01 07:19:53');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('54', 104, '382', 'in', 'cumque', '2016-02-23 00:41:52');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('55', 105, '383', 'autem', 'veniam', '2002-02-11 13:55:55');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('56', 106, '384', 'repudiandae', 'ut', '1988-09-07 19:14:12');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('57', 107, '385', 'fugiat', 'officia', '2003-11-19 14:03:13');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('58', 108, '386', 'molestiae', 'assumenda', '1972-11-17 22:24:03');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('59', 109, '387', 'saepe', 'natus', '2015-07-29 13:02:33');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('60', 110, '388', 'ea', 'quam', '2010-11-29 23:29:48');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('61', 101, '391', 'in', 'et', '1974-06-05 15:42:56');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('62', 102, '392', 'minus', 'eos', '1987-01-10 17:54:37');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('63', 103, '394', 'ut', 'qui', '2015-10-31 21:48:39');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('64', 104, '395', 'accusantium', 'quia', '1990-01-27 21:58:45');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('65', 105, '299', 'non', 'et', '1991-12-28 12:43:09');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('66', 106, '300', 'laboriosam', 'in', '1985-09-22 08:09:28');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('67', 107, '301', 'mollitia', 'quidem', '2014-05-29 12:53:24');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('68', 108, '302', 'voluptatem', 'consequatur', '1996-07-12 16:59:38');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('69', 109, '303', 'eius', 'sed', '1994-09-30 00:38:34');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('70', 110, '304', 'est', 'at', '2010-03-02 08:36:15');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('71', 101, '305', 'doloribus', 'dolore', '1988-04-27 06:04:21');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('72', 102, '306', 'numquam', 'et', '1972-12-13 02:53:32');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('73', 103, '307', 'repellendus', 'sint', '1985-04-25 15:53:20');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('74', 104, '309', 'rem', 'earum', '1993-08-20 03:28:26');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('75', 105, '310', 'ab', 'beatae', '1983-07-12 20:26:35');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('76', 106, '312', 'fugit', 'autem', '1998-04-24 03:41:47');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('77', 107, '316', 'nemo', 'ipsum', '2017-01-10 06:05:47');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('78', 108, '321', 'ea', 'quis', '1999-03-09 06:12:46');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('79', 109, '322', 'quaerat', 'eum', '2010-12-13 10:29:03');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('80', 110, '326', 'harum', 'in', '1998-12-13 12:19:34');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('81', 101, '328', 'et', 'harum', '2008-08-05 04:22:04');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('82', 102, '332', 'non', 'quia', '1992-01-04 08:08:47');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('83', 103, '333', 'nihil', 'ipsum', '1978-09-20 11:07:13');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('84', 104, '334', 'atque', 'qui', '2007-02-12 19:41:13');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('85', 105, '335', 'tempora', 'quo', '2021-02-14 11:14:59');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('86', 106, '337', 'odio', 'non', '1981-11-24 17:44:41');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('87', 107, '338', 'laudantium', 'non', '1995-05-16 21:29:55');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('88', 108, '342', 'modi', 'cum', '1970-02-18 18:27:34');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('89', 109, '343', 'odio', 'velit', '2005-06-16 23:43:26');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('90', 110, '344', 'aliquam', 'maiores', '1980-02-08 15:44:22');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('91', 101, '345', 'atque', 'voluptas', '2001-11-29 15:35:37');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('92', 102, '346', 'quia', 'quia', '1988-11-11 05:30:02');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('93', 103, '349', 'earum', 'cum', '2004-06-26 20:24:14');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('94', 104, '350', 'rerum', 'optio', '2007-08-13 20:22:30');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('95', 105, '352', 'est', 'dolor', '2020-06-16 16:10:31');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('96', 106, '355', 'impedit', 'ut', '1979-09-03 15:31:08');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('97', 107, '356', 'sequi', 'vel', '2020-12-08 14:08:15');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('98', 108, '357', 'error', 'ipsam', '1998-02-04 15:02:11');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('99', 109, '358', 'laboriosam', 'eos', '2012-11-05 13:38:14');
INSERT INTO `media_files` (`id`, `resource_type_id`, `user_id`, `fileName`, `fileRealName`, `created_at`) VALUES ('100', 110, '360', 'ducimus', 'unde', '2009-02-10 19:29:46');


