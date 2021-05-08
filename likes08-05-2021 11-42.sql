#
# TABLE STRUCTURE FOR: likes
#

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'id пользователя',
  `resource_id` bigint(20) unsigned NOT NULL COMMENT 'id записи ресурса',
  `resource_type_id` int(8) unsigned NOT NULL COMMENT 'id ресурса',
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `likes_fk_1` (`user_id`),
  KEY `resource_type_id` (`resource_type_id`),
  CONSTRAINT `likes_fk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`resource_type_id`) REFERENCES `resource_types` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='лайки пользователей';

INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('4', '299', '101', 101, '1995-02-08 02:11:22');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('5', '300', '102', 102, '1994-11-28 14:18:50');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('6', '301', '103', 103, '1983-05-05 18:20:58');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('7', '302', '104', 104, '1997-07-22 12:54:12');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('8', '303', '105', 105, '2020-06-11 03:36:35');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('9', '304', '106', 106, '2007-11-13 23:50:23');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('10', '305', '107', 107, '1976-11-05 17:24:39');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('11', '306', '108', 108, '2017-06-03 21:04:45');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('12', '307', '109', 109, '1990-12-16 15:32:16');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('13', '309', '110', 110, '1992-06-23 16:33:12');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('14', '310', '101', 101, '2000-08-06 12:03:21');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('15', '312', '102', 102, '1975-04-09 03:46:12');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('16', '316', '103', 103, '1971-10-31 18:58:58');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('17', '321', '104', 104, '2015-04-25 20:29:14');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('18', '322', '105', 105, '2010-04-20 12:50:40');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('19', '326', '106', 106, '1993-01-22 03:55:36');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('20', '328', '107', 107, '1972-11-16 13:38:22');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('21', '332', '108', 108, '1995-07-09 23:44:19');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('22', '333', '109', 109, '2010-03-22 03:41:10');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('23', '334', '110', 110, '1997-09-15 20:50:18');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('24', '335', '101', 101, '2013-04-07 15:03:46');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('25', '337', '102', 102, '2018-01-21 17:53:19');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('26', '338', '103', 103, '2004-08-10 03:58:08');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('27', '342', '104', 104, '1970-10-17 08:29:56');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('28', '343', '105', 105, '1970-02-19 10:59:29');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('29', '344', '106', 106, '1983-02-18 00:25:37');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('30', '345', '107', 107, '1995-08-24 21:21:03');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('31', '346', '108', 108, '1981-09-28 13:56:46');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('32', '349', '109', 109, '2009-01-18 11:44:27');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('33', '350', '110', 110, '1979-05-11 21:50:39');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('34', '352', '101', 101, '2008-09-30 14:04:30');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('35', '355', '102', 102, '1981-06-26 09:51:38');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('36', '356', '103', 103, '1977-12-28 14:03:04');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('37', '357', '104', 104, '1992-03-10 22:38:29');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('38', '358', '105', 105, '2019-02-02 20:21:26');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('39', '360', '106', 106, '1999-04-08 03:22:03');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('40', '361', '107', 107, '2003-12-28 11:40:36');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('41', '362', '108', 108, '1994-03-29 14:25:02');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('42', '364', '109', 109, '2001-11-14 17:54:46');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('43', '365', '110', 110, '1985-04-16 16:02:23');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('44', '366', '101', 101, '2006-07-22 01:26:00');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('45', '368', '102', 102, '1971-12-20 13:42:30');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('46', '369', '103', 103, '1991-07-27 04:46:24');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('47', '371', '104', 104, '1978-09-20 10:41:19');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('48', '372', '105', 105, '1978-12-25 08:03:28');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('49', '374', '106', 106, '2004-08-09 21:53:54');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('50', '375', '107', 107, '2002-08-26 04:14:52');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('51', '376', '108', 108, '1975-08-29 06:54:31');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('52', '377', '109', 109, '1979-01-22 22:52:35');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('53', '378', '110', 110, '1979-08-17 01:30:05');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('54', '379', '101', 101, '1986-10-10 17:31:05');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('55', '380', '102', 102, '2009-10-11 08:12:06');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('56', '381', '103', 103, '2018-06-12 16:36:20');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('57', '382', '104', 104, '1975-10-21 17:00:26');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('58', '383', '105', 105, '1992-05-09 06:22:02');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('59', '384', '106', 106, '1989-06-28 23:02:46');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('60', '385', '107', 107, '1993-10-20 11:36:11');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('61', '386', '108', 108, '1981-12-15 01:52:48');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('62', '387', '109', 109, '1978-02-18 05:41:20');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('63', '388', '110', 110, '2010-10-09 14:46:28');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('64', '391', '101', 101, '2002-10-14 09:11:10');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('65', '392', '102', 102, '2019-06-10 20:48:17');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('66', '394', '103', 103, '1982-11-10 13:05:06');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('67', '395', '104', 104, '1979-08-07 07:39:58');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('68', '299', '105', 105, '2008-04-16 19:36:46');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('69', '300', '106', 106, '1993-12-08 11:37:19');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('70', '301', '107', 107, '2020-07-14 22:57:14');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('71', '302', '108', 108, '2001-06-22 03:52:51');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('72', '303', '109', 109, '1977-09-22 17:31:11');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('73', '304', '110', 110, '1987-03-22 09:27:11');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('74', '305', '101', 101, '1991-08-16 19:22:43');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('75', '306', '102', 102, '2012-10-18 22:52:11');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('76', '307', '103', 103, '1989-01-05 04:56:19');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('77', '309', '104', 104, '2002-02-11 22:09:02');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('78', '310', '105', 105, '1999-04-07 13:40:23');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('79', '312', '106', 106, '1970-05-04 01:05:12');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('80', '316', '107', 107, '1977-01-03 12:26:18');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('81', '321', '108', 108, '1986-11-20 10:56:18');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('82', '322', '109', 109, '2011-10-21 11:56:07');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('83', '326', '110', 110, '1974-03-22 15:37:00');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('84', '328', '101', 101, '1983-12-14 16:09:13');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('85', '332', '102', 102, '2019-08-28 08:21:15');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('86', '333', '103', 103, '1997-07-22 20:43:41');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('87', '334', '104', 104, '1976-06-03 13:17:43');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('88', '335', '105', 105, '1980-08-04 13:51:37');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('89', '337', '106', 106, '2001-10-02 19:25:13');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('90', '338', '107', 107, '1985-08-18 11:08:14');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('91', '342', '108', 108, '1983-10-13 13:24:41');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('92', '343', '109', 109, '2005-06-08 03:59:12');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('93', '344', '110', 110, '2011-12-30 19:01:46');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('94', '345', '101', 101, '2010-04-15 16:18:18');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('95', '346', '102', 102, '1979-01-17 15:20:49');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('96', '349', '103', 103, '2007-03-14 01:49:38');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('97', '350', '104', 104, '1986-11-27 06:27:30');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('98', '352', '105', 105, '1973-06-01 01:02:37');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('99', '355', '106', 106, '1986-11-30 16:48:57');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('100', '356', '107', 107, '1973-09-03 20:54:32');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('101', '357', '108', 108, '2015-03-18 08:44:35');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('102', '358', '109', 109, '2010-12-13 07:15:31');
INSERT INTO `likes` (`id`, `user_id`, `resource_id`, `resource_type_id`, `created_at`) VALUES ('103', '360', '110', 110, '1972-12-17 08:15:15');


