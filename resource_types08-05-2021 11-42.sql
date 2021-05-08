#
# TABLE STRUCTURE FOR: resource_types
#

DROP TABLE IF EXISTS `resource_types`;

CREATE TABLE `resource_types` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор типа ресурса',
  `name` varchar(255) DEFAULT NULL COMMENT 'Название ресурса',
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='Типы ресурсов';

INSERT INTO `resource_types` (`id`, `name`, `created_at`) VALUES (101, 'qui', '2002-10-31 02:01:23');
INSERT INTO `resource_types` (`id`, `name`, `created_at`) VALUES (102, 'enim', '1976-12-14 15:12:42');
INSERT INTO `resource_types` (`id`, `name`, `created_at`) VALUES (103, 'aut', '1987-12-01 20:24:07');
INSERT INTO `resource_types` (`id`, `name`, `created_at`) VALUES (104, 'veniam', '1975-08-11 12:24:20');
INSERT INTO `resource_types` (`id`, `name`, `created_at`) VALUES (105, 'velit', '1994-02-21 06:45:08');
INSERT INTO `resource_types` (`id`, `name`, `created_at`) VALUES (106, 'vitae', '1991-10-07 17:42:35');
INSERT INTO `resource_types` (`id`, `name`, `created_at`) VALUES (107, 'consequuntur', '2016-02-27 22:22:03');
INSERT INTO `resource_types` (`id`, `name`, `created_at`) VALUES (108, 'qui', '2018-09-07 13:23:20');
INSERT INTO `resource_types` (`id`, `name`, `created_at`) VALUES (109, 'odit', '1970-11-14 15:01:56');
INSERT INTO `resource_types` (`id`, `name`, `created_at`) VALUES (110, 'nemo', '1980-03-18 04:33:15');


