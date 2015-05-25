/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : notas

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-25 06:23:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add permission', '1', 'add_permission');
INSERT INTO `auth_permission` VALUES ('2', 'Can change permission', '1', 'change_permission');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete permission', '1', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO `auth_permission` VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO `auth_permission` VALUES ('7', 'Can add user', '3', 'add_user');
INSERT INTO `auth_permission` VALUES ('8', 'Can change user', '3', 'change_user');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete user', '3', 'delete_user');
INSERT INTO `auth_permission` VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('16', 'Can add site', '6', 'add_site');
INSERT INTO `auth_permission` VALUES ('17', 'Can change site', '6', 'change_site');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete site', '6', 'delete_site');
INSERT INTO `auth_permission` VALUES ('19', 'Can add log entry', '7', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('20', 'Can change log entry', '7', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete log entry', '7', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('22', 'Can add tbl1 paciente', '8', 'add_tbl1paciente');
INSERT INTO `auth_permission` VALUES ('23', 'Can change tbl1 paciente', '8', 'change_tbl1paciente');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete tbl1 paciente', '8', 'delete_tbl1paciente');
INSERT INTO `auth_permission` VALUES ('25', 'Can add tbl2 nota', '9', 'add_tbl2nota');
INSERT INTO `auth_permission` VALUES ('26', 'Can change tbl2 nota', '9', 'change_tbl2nota');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete tbl2 nota', '9', 'delete_tbl2nota');
INSERT INTO `auth_permission` VALUES ('31', 'Can add tbl3 ingreso', '11', 'add_tbl3ingreso');
INSERT INTO `auth_permission` VALUES ('32', 'Can change tbl3 ingreso', '11', 'change_tbl3ingreso');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete tbl3 ingreso', '11', 'delete_tbl3ingreso');
INSERT INTO `auth_permission` VALUES ('34', 'Can add cie10', '12', 'add_cie10');
INSERT INTO `auth_permission` VALUES ('35', 'Can change cie10', '12', 'change_cie10');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete cie10', '12', 'delete_cie10');
INSERT INTO `auth_permission` VALUES ('37', 'Can add ca_camas', '13', 'add_ca_camas');
INSERT INTO `auth_permission` VALUES ('38', 'Can change ca_camas', '13', 'change_ca_camas');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete ca_camas', '13', 'delete_ca_camas');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'dante', '', '', 'dante.arkade7@gmail.com', 'pbkdf2_sha256$10000$Iql8wr0ObLwE$/6HvVjtIWNAmnOH8JEIwpxpI1QLe/YXcqtEEyOfxJy0=', '1', '1', '1', '2015-05-25 08:14:23', '2015-02-16 06:54:53');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `ca_camas`
-- ----------------------------
DROP TABLE IF EXISTS `ca_camas`;
CREATE TABLE `ca_camas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seccion` varchar(765) NOT NULL,
  `cama` varchar(765) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ca_camas
-- ----------------------------
INSERT INTO `ca_camas` VALUES ('1', '5to sur', '501 a');
INSERT INTO `ca_camas` VALUES ('2', '5to sur', '501 b');
INSERT INTO `ca_camas` VALUES ('3', '5to sur', '502');
INSERT INTO `ca_camas` VALUES ('4', '5to sur', '503');
INSERT INTO `ca_camas` VALUES ('5', '5to sur', '504');
INSERT INTO `ca_camas` VALUES ('6', '5to sur', '505');
INSERT INTO `ca_camas` VALUES ('7', '5to sur', '506');
INSERT INTO `ca_camas` VALUES ('8', '5to sur', '507');
INSERT INTO `ca_camas` VALUES ('9', '5to sur', '508');
INSERT INTO `ca_camas` VALUES ('10', '5to sur', '509');
INSERT INTO `ca_camas` VALUES ('11', '5to sur', '510');
INSERT INTO `ca_camas` VALUES ('12', '5to sur', '511');
INSERT INTO `ca_camas` VALUES ('13', '5to sur', '512');
INSERT INTO `ca_camas` VALUES ('14', '5to sur', '513');
INSERT INTO `ca_camas` VALUES ('15', '5to sur', '514');
INSERT INTO `ca_camas` VALUES ('16', '5to sur', '515');
INSERT INTO `ca_camas` VALUES ('17', '5to sur', '516');
INSERT INTO `ca_camas` VALUES ('18', '5to sur', '517');
INSERT INTO `ca_camas` VALUES ('19', '5to sur', '518');
INSERT INTO `ca_camas` VALUES ('20', '5to sur', '519');
INSERT INTO `ca_camas` VALUES ('21', '5to sur', '520');
INSERT INTO `ca_camas` VALUES ('22', '5to sur', '521');
INSERT INTO `ca_camas` VALUES ('23', '5to sur', '522');
INSERT INTO `ca_camas` VALUES ('24', '5to sur', '523');
INSERT INTO `ca_camas` VALUES ('25', '5to sur', '524');
INSERT INTO `ca_camas` VALUES ('26', '5to sur', '525');
INSERT INTO `ca_camas` VALUES ('27', '5to sur', '526');
INSERT INTO `ca_camas` VALUES ('28', '5to sur', '527');
INSERT INTO `ca_camas` VALUES ('29', '5to norte', '528');
INSERT INTO `ca_camas` VALUES ('30', '5to norte', '529');
INSERT INTO `ca_camas` VALUES ('31', '5to norte', '530');
INSERT INTO `ca_camas` VALUES ('32', '5to norte', '531');
INSERT INTO `ca_camas` VALUES ('33', '5to norte', '532');
INSERT INTO `ca_camas` VALUES ('34', '5to norte', '533');
INSERT INTO `ca_camas` VALUES ('35', '5to norte', '534');
INSERT INTO `ca_camas` VALUES ('36', '5to norte', '535');
INSERT INTO `ca_camas` VALUES ('37', '5to norte', '536');
INSERT INTO `ca_camas` VALUES ('38', '5to norte', '537');
INSERT INTO `ca_camas` VALUES ('39', '5to norte', '538');
INSERT INTO `ca_camas` VALUES ('40', '5to norte', '539');
INSERT INTO `ca_camas` VALUES ('41', '5to norte', '540');
INSERT INTO `ca_camas` VALUES ('42', '5to norte', '541');
INSERT INTO `ca_camas` VALUES ('43', '5to norte', '542');
INSERT INTO `ca_camas` VALUES ('44', '5to norte', '543');
INSERT INTO `ca_camas` VALUES ('45', '5to norte', '544');
INSERT INTO `ca_camas` VALUES ('46', '5to norte', '545');
INSERT INTO `ca_camas` VALUES ('47', '5to norte', '546');
INSERT INTO `ca_camas` VALUES ('48', '5to norte', '547');
INSERT INTO `ca_camas` VALUES ('49', '5to norte', '548');
INSERT INTO `ca_camas` VALUES ('50', '5to norte', '549');
INSERT INTO `ca_camas` VALUES ('51', '5to norte', '550');
INSERT INTO `ca_camas` VALUES ('52', '5to norte', '551');
INSERT INTO `ca_camas` VALUES ('53', '5to norte', '552');
INSERT INTO `ca_camas` VALUES ('54', '5to norte', '553');
INSERT INTO `ca_camas` VALUES ('55', '5to norte', '554');
INSERT INTO `ca_camas` VALUES ('56', '6to sur', '601 a');
INSERT INTO `ca_camas` VALUES ('57', '6to sur', '601 b');
INSERT INTO `ca_camas` VALUES ('58', '6to sur', '602');
INSERT INTO `ca_camas` VALUES ('59', '6to sur', '603');
INSERT INTO `ca_camas` VALUES ('60', '6to sur', '604');
INSERT INTO `ca_camas` VALUES ('61', '6to sur', '605');
INSERT INTO `ca_camas` VALUES ('62', '6to sur', '606');
INSERT INTO `ca_camas` VALUES ('63', '6to sur', '607');
INSERT INTO `ca_camas` VALUES ('64', '6to sur', '608');
INSERT INTO `ca_camas` VALUES ('65', '6to sur', '609');
INSERT INTO `ca_camas` VALUES ('66', '6to sur', '610');
INSERT INTO `ca_camas` VALUES ('67', '6to sur', '611');
INSERT INTO `ca_camas` VALUES ('68', '6to sur', '612');
INSERT INTO `ca_camas` VALUES ('69', '6to sur', '613');
INSERT INTO `ca_camas` VALUES ('70', '6to sur', '614');
INSERT INTO `ca_camas` VALUES ('71', '6to sur', '615');
INSERT INTO `ca_camas` VALUES ('72', '6to sur', '616');
INSERT INTO `ca_camas` VALUES ('73', '6to sur', '617');
INSERT INTO `ca_camas` VALUES ('74', '6to sur', '618');
INSERT INTO `ca_camas` VALUES ('75', '6to sur', '619');
INSERT INTO `ca_camas` VALUES ('76', '6to sur', '620');
INSERT INTO `ca_camas` VALUES ('77', '6to sur', '621');
INSERT INTO `ca_camas` VALUES ('78', '6to sur', '622');
INSERT INTO `ca_camas` VALUES ('79', '6to sur', '623');
INSERT INTO `ca_camas` VALUES ('80', '6to sur', '624');
INSERT INTO `ca_camas` VALUES ('81', '6to sur', '625');
INSERT INTO `ca_camas` VALUES ('82', '6to sur', '626');
INSERT INTO `ca_camas` VALUES ('83', '6to sur', '627');
INSERT INTO `ca_camas` VALUES ('84', '6to norte', '628');
INSERT INTO `ca_camas` VALUES ('85', '6to norte', '629');
INSERT INTO `ca_camas` VALUES ('86', '6to norte', '630');
INSERT INTO `ca_camas` VALUES ('87', '6to norte', '631');
INSERT INTO `ca_camas` VALUES ('88', '6to norte', '632');
INSERT INTO `ca_camas` VALUES ('89', '6to norte', '633');
INSERT INTO `ca_camas` VALUES ('90', '6to norte', '634');
INSERT INTO `ca_camas` VALUES ('91', '6to norte', '635');
INSERT INTO `ca_camas` VALUES ('92', '6to norte', '636');
INSERT INTO `ca_camas` VALUES ('93', '6to norte', '637');
INSERT INTO `ca_camas` VALUES ('94', '6to norte', '638');
INSERT INTO `ca_camas` VALUES ('95', '6to norte', '639');
INSERT INTO `ca_camas` VALUES ('96', '6to norte', '640');
INSERT INTO `ca_camas` VALUES ('97', '6to norte', '641');
INSERT INTO `ca_camas` VALUES ('98', '6to norte', '642');
INSERT INTO `ca_camas` VALUES ('99', '6to norte', '643');
INSERT INTO `ca_camas` VALUES ('100', '6to norte', '644');
INSERT INTO `ca_camas` VALUES ('101', '6to norte', '645');
INSERT INTO `ca_camas` VALUES ('102', '6to norte', '646');
INSERT INTO `ca_camas` VALUES ('103', '6to norte', '647');
INSERT INTO `ca_camas` VALUES ('104', '6to norte', '648');
INSERT INTO `ca_camas` VALUES ('105', '6to norte', '649');
INSERT INTO `ca_camas` VALUES ('106', '6to norte', '650');
INSERT INTO `ca_camas` VALUES ('107', '6to norte', '651');
INSERT INTO `ca_camas` VALUES ('108', '6to norte', '652');
INSERT INTO `ca_camas` VALUES ('109', '6to norte', '653');
INSERT INTO `ca_camas` VALUES ('110', '6to norte', '654');

-- ----------------------------
-- Table structure for `cie_10`
-- ----------------------------
DROP TABLE IF EXISTS `cie_10`;
CREATE TABLE `cie_10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Clave` varchar(765) NOT NULL,
  `Nombre` varchar(765) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cie_10
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'permission', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('2', 'group', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('3', 'user', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('4', 'content type', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'session', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'site', 'sites', 'site');
INSERT INTO `django_content_type` VALUES ('7', 'log entry', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('8', 'tbl1 paciente', 'captura', 'tbl1paciente');
INSERT INTO `django_content_type` VALUES ('9', 'tbl2 nota', 'captura', 'tbl2nota');
INSERT INTO `django_content_type` VALUES ('11', 'tbl3 ingreso', 'captura', 'tbl3ingreso');
INSERT INTO `django_content_type` VALUES ('12', 'cie10', 'captura', 'cie10');
INSERT INTO `django_content_type` VALUES ('13', 'ca_camas', 'captura', 'ca_camas');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('3247548720de5bf0f214b11f4f0b7b37', 'YzM4ZjkyYTVlZjJmZWVjODBiOTU4MzMxMjBlOTFiMjUxYzEwNWJiODqAAn1xAShVBXN0YWZmiFUS\nX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFj\na2VuZHECVQ1fYXV0aF91c2VyX2lkigEBVQd1c3VhcmlvWAUAAABkYW50ZXEDdS4=\n', '2015-03-13 21:13:46');
INSERT INTO `django_session` VALUES ('5ad0d876121240a355966d19e8f4c22c', 'YzM4ZjkyYTVlZjJmZWVjODBiOTU4MzMxMjBlOTFiMjUxYzEwNWJiODqAAn1xAShVBXN0YWZmiFUS\nX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFj\na2VuZHECVQ1fYXV0aF91c2VyX2lkigEBVQd1c3VhcmlvWAUAAABkYW50ZXEDdS4=\n', '2015-06-05 18:52:41');
INSERT INTO `django_session` VALUES ('9b377c78e3ff1fd947af812b8955100b', 'YjRlMzNjNTNjM2M3YThlZGQ2NmFjM2M2MjEzNjdjZTA1OTk1Yjk2YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAlUN\nX2F1dGhfdXNlcl9pZIoBAXUu\n', '2015-03-05 13:52:29');
INSERT INTO `django_session` VALUES ('9d6cdba5b3b3ee570db7429b9fa56632', 'ZmMyNmEzYTBiOTNmMjA4YTBjOWY2Nzg2ZTUzZWNkMmZhMjAyMzY4NjqAAn1xAShVB3VzdWFyaW9Y\nBQAAAGRhbnRlcQJVDV9hdXRoX3VzZXJfaWSKAQFVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdv\nLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxA1UFc3RhZmaIdS4=\n', '2015-06-08 08:14:23');
INSERT INTO `django_session` VALUES ('9e8dec21ad25ca91951e408e643fd823', 'ZWY4ZGUwZWZhZDBhNDI5ZTBjMjEzMGQ1NDE0YTVhMWE1NDVjNmNhMzqAAn1xAShVBXN0YWZmcQKI\nVRJfYXV0aF91c2VyX2JhY2tlbmRxA1UpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2Rl\nbEJhY2tlbmRxBFUNX2F1dGhfdXNlcl9pZHEFigEBVQd1c3VhcmlvcQZYBQAAAGRhbnRlcQd1Lg==\n', '2015-04-18 19:49:39');
INSERT INTO `django_session` VALUES ('e9687bf4b0203365116893126ad85d05', 'ZWY4ZGUwZWZhZDBhNDI5ZTBjMjEzMGQ1NDE0YTVhMWE1NDVjNmNhMzqAAn1xAShVBXN0YWZmcQKI\nVRJfYXV0aF91c2VyX2JhY2tlbmRxA1UpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2Rl\nbEJhY2tlbmRxBFUNX2F1dGhfdXNlcl9pZHEFigEBVQd1c3VhcmlvcQZYBQAAAGRhbnRlcQd1Lg==\n', '2015-03-31 19:02:44');

-- ----------------------------
-- Table structure for `django_site`
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_site
-- ----------------------------
INSERT INTO `django_site` VALUES ('1', 'example.com', 'example.com');

-- ----------------------------
-- Table structure for `estructura_ech`
-- ----------------------------
DROP TABLE IF EXISTS `estructura_ech`;
CREATE TABLE `estructura_ech` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of estructura_ech
-- ----------------------------
INSERT INTO `estructura_ech` VALUES ('1', 'Hoja frontal');
INSERT INTO `estructura_ech` VALUES ('2', 'Historia clínica');
INSERT INTO `estructura_ech` VALUES ('3', 'Notas de urgencias');
INSERT INTO `estructura_ech` VALUES ('4', 'Notas de evolución');
INSERT INTO `estructura_ech` VALUES ('5', 'Notas de revisión ');
INSERT INTO `estructura_ech` VALUES ('6', 'Notas de interconsulta');
INSERT INTO `estructura_ech` VALUES ('7', 'Nota pre-operatoria');
INSERT INTO `estructura_ech` VALUES ('8', 'Nota de egreso');
INSERT INTO `estructura_ech` VALUES ('9', 'Hoja de indicaciones médicas');
INSERT INTO `estructura_ech` VALUES ('10', 'Auxiliares de diagnóstico');
INSERT INTO `estructura_ech` VALUES ('11', 'Hojas de transfusiones');
INSERT INTO `estructura_ech` VALUES ('12', 'Carta de consentimiento informado');
INSERT INTO `estructura_ech` VALUES ('13', 'Hoja de egreso voluntario');
INSERT INTO `estructura_ech` VALUES ('14', 'Hoja de notificación al ministerio publico');
INSERT INTO `estructura_ech` VALUES ('15', 'Nota de defunción o muerte fetal');
INSERT INTO `estructura_ech` VALUES ('16', 'Analisis clínico');

-- ----------------------------
-- Table structure for `tbl1_paciente`
-- ----------------------------
DROP TABLE IF EXISTS `tbl1_paciente`;
CREATE TABLE `tbl1_paciente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sexo` varchar(8) NOT NULL,
  `edad` int(11) NOT NULL,
  `nombre` varchar(135) NOT NULL,
  `nss` varchar(135) NOT NULL,
  `estado` varchar(135) NOT NULL,
  `escolaridad` varchar(135) NOT NULL,
  `religion` varchar(135) NOT NULL,
  `ocupacion` varchar(135) NOT NULL,
  `estado_civil` varchar(135) NOT NULL,
  `tipo_interrogatorio` varchar(135) NOT NULL,
  `status` varchar(135) DEFAULT 'Alta',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl1_paciente
-- ----------------------------
INSERT INTO `tbl1_paciente` VALUES ('2', 'Femenino', '52', 'algo', '2103918029', 'chimalpa', 'nada', 'nada', 'nada', 'soltero', 'mixto', '');
INSERT INTO `tbl1_paciente` VALUES ('3', 'Femenino', '52', 'algo', '2103918029', 'chimalpa', 'nada', 'nada', 'nada', 'soltero', 'mixto', '');
INSERT INTO `tbl1_paciente` VALUES ('4', 'Femenino', '52', 'algo', '2103918029', 'chimalpa', 'nada', 'No reportada', 'nada', 'soltero', 'Mixto', '');
INSERT INTO `tbl1_paciente` VALUES ('5', 'Femenino', '45', 'algo', '12239891', 'Mexico', 'Pasante', 'No reportada', 'nada', 'soltero', 'Mixto', '');

-- ----------------------------
-- Table structure for `tbl2_nota`
-- ----------------------------
DROP TABLE IF EXISTS `tbl2_nota`;
CREATE TABLE `tbl2_nota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tbl1` int(11) NOT NULL,
  `tipo_nota` varchar(135) NOT NULL,
  `descripcion` varchar(135) NOT NULL,
  `hospital` varchar(135) NOT NULL,
  `medico` varchar(135) NOT NULL,
  `cama` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl2_nota_2a930295` (`id_tbl1`),
  CONSTRAINT `id_tbl1_refs_id_5b837d0d` FOREIGN KEY (`id_tbl1`) REFERENCES `tbl1_paciente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl2_nota
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl3_ingreso`
-- ----------------------------
DROP TABLE IF EXISTS `tbl3_ingreso`;
CREATE TABLE `tbl3_ingreso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tbl1` int(11) NOT NULL,
  `antecedentes_heredofamiliares` varchar(135) NOT NULL,
  `antecedentes_personales_no_patologicos` varchar(135) NOT NULL,
  `antecedentes_personales_patologicos` varchar(135) NOT NULL,
  `padecimiento_actual` varchar(135) NOT NULL,
  `ta` varchar(135) NOT NULL,
  `fc` varchar(135) NOT NULL,
  `fr` varchar(135) NOT NULL,
  `temp` varchar(135) NOT NULL,
  `sat` varchar(135) NOT NULL,
  `peso` varchar(135) NOT NULL,
  `talla` varchar(135) NOT NULL,
  `imc` varchar(135) NOT NULL,
  `laboratorio` varchar(135) NOT NULL,
  `gabinete` varchar(135) NOT NULL,
  `diagnostico_sindromaticos` varchar(135) NOT NULL,
  `diagnostico_nosologico` varchar(135) NOT NULL,
  `diagnostico_diferencial` varchar(135) NOT NULL,
  `apache` varchar(135) NOT NULL,
  `plan_comentario` varchar(135) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl3_ingreso_2a930295` (`id_tbl1`),
  CONSTRAINT `id_tbl1_refs_id_5f28a8dc` FOREIGN KEY (`id_tbl1`) REFERENCES `tbl1_paciente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl3_ingreso
-- ----------------------------
