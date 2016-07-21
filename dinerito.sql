/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50534
 Source Host           : localhost
 Source Database       : dinerito

 Target Server Type    : MySQL
 Target Server Version : 50534
 File Encoding         : utf-8

 Date: 07/21/2016 11:41:50 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `ENTITIES`
-- ----------------------------
DROP TABLE IF EXISTS `ENTITIES`;
CREATE TABLE `ENTITIES` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `ENTITIES`
-- ----------------------------
BEGIN;
INSERT INTO `ENTITIES` VALUES ('1', 'USERS', 'tabla de usuarios'), ('2', 'CLIENTS', 'tabla de clientes'), ('3', 'OFFICES', 'tabla de oficinas'), ('4', 'AREAS', 'tabla de areas'), ('5', 'RECORDS', 'tabla de registros'), ('6', 'INTERNALCLIENTS', 'tabla de clientes internos');
COMMIT;

-- ----------------------------
--  Table structure for `ROLES`
-- ----------------------------
DROP TABLE IF EXISTS `ROLES`;
CREATE TABLE `ROLES` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `ROLES`
-- ----------------------------
BEGIN;
INSERT INTO `ROLES` VALUES ('1', 'Autenticado'), ('2', 'Administrador');
COMMIT;

-- ----------------------------
--  Table structure for `USERS`
-- ----------------------------
DROP TABLE IF EXISTS `USERS`;
CREATE TABLE `USERS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `status` char(1) DEFAULT '1',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `USERS`
-- ----------------------------
BEGIN;
INSERT INTO `USERS` VALUES ('1', 'lucho', '123', null, '1', '2'), ('2', 'gen', '123', '1464128188701', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `baby_categories`
-- ----------------------------
DROP TABLE IF EXISTS `baby_categories`;
CREATE TABLE `baby_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `fa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `baby_categories`
-- ----------------------------
BEGIN;
INSERT INTO `baby_categories` VALUES ('1', 'despierta', 'check-circle'), ('2', 'toma leche', 'check-circle'), ('3', 'duerme', 'check-circle'), ('4', 'cambio panal', 'check-circle');
COMMIT;

-- ----------------------------
--  Table structure for `baby_records`
-- ----------------------------
DROP TABLE IF EXISTS `baby_records`;
CREATE TABLE `baby_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_time` varchar(40) DEFAULT NULL,
  `status` char(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `baby_records`
-- ----------------------------
BEGIN;
INSERT INTO `baby_records` VALUES ('78', '1', null, '2016-05-21 14:34:33', '1463859273897', '0'), ('79', '1', null, '2016-05-21 14:34:50', '1463859290872', '0'), ('80', '2', null, '2016-05-21 14:34:55', '1463859295760', '0'), ('81', '3', null, '2016-05-21 14:34:57', '1463859297246', '0'), ('82', '4', null, '2016-05-21 14:34:58', '1463859298760', '0'), ('83', '1', null, '2016-05-21 14:35:01', '1463859301853', '0'), ('84', '1', null, '2016-05-21 14:35:03', '1463859303388', '0'), ('85', '2', null, '2016-05-21 14:35:04', '1463859304334', '0'), ('86', '3', null, '2016-05-21 14:35:16', '1463859316116', '0'), ('87', '1', null, '2016-05-21 14:35:32', '1463859332112', '0'), ('88', '1', null, '2016-05-21 14:35:36', '1463859336778', '0'), ('89', '1', null, '2016-05-21 14:40:49', '1463859649093', '1'), ('90', '4', null, '2016-05-21 15:17:18', '1463861838192', '1'), ('91', '3', null, '2016-05-21 15:23:03', '1463862183510', '1'), ('92', '4', null, '2016-05-21 17:19:40', '1463865580438', '0'), ('93', '3', null, '2016-05-21 17:21:03', '1463865660427', '0'), ('94', '2', null, '2016-05-21 17:21:26', '1463865686101', '0'), ('95', '1', null, '2016-05-21 17:25:39', '1463865940086', '0'), ('96', '1', null, '2016-05-21 18:08:10', '1463868489891', '1'), ('97', '2', null, '2016-05-21 18:15:06', '1463868906015', '1'), ('98', '3', null, '2016-05-21 18:27:27', '1463869646854', '1'), ('99', '1', null, '2016-05-21 18:33:08', '1463869987876', '1'), ('100', '2', null, '2016-05-21 18:33:11', '1463869991807', '1'), ('101', '3', null, '2016-05-21 19:15:26', '1463872526006', '1'), ('102', '1', null, '2016-05-21 20:31:58', '1463877118586', '1'), ('103', '3', null, '2016-05-21 20:33:36', '1463877215787', '1'), ('104', '1', null, '2016-05-21 21:34:15', '1463880857021', '1'), ('105', '2', null, '2016-05-21 21:34:17', '1463880859258', '1'), ('106', '3', null, '2016-05-21 21:54:15', '1463882056378', '1'), ('107', '1', null, '2016-05-21 22:15:09', '1463883309699', '1'), ('108', '3', null, '2016-05-21 22:58:40', '1463885920432', '1'), ('109', '1', null, '2016-05-21 23:16:36', '1463886996051', '1'), ('110', '2', null, '2016-05-21 23:22:20', '1463887341646', '1'), ('111', '3', null, '2016-05-21 23:37:40', '1463888260841', '1'), ('112', '4', null, '2016-05-22 00:09:41', '1463890181076', '1'), ('113', '1', null, '2016-05-22 00:13:30', '1463890410186', '1'), ('114', '3', null, '2016-05-22 00:24:31', '1463891071184', '1'), ('115', '4', null, '2016-05-22 00:24:33', '1463891073375', '0'), ('116', '3', null, '2016-05-22 00:28:22', '1463891303588', '1'), ('117', '1', null, '2016-05-22 00:41:22', '1463892082027', '1'), ('118', '3', null, '2016-05-22 00:46:57', '1463892417620', '1'), ('119', '1', null, '2016-05-22 02:26:28', '1463898387871', '1'), ('120', '2', null, '2016-05-22 02:30:47', '1463898647439', '1'), ('121', '3', null, '2016-05-22 03:15:46', '1463901347933', '1'), ('122', '1', null, '2016-05-22 06:45:27', '1463913927255', '1'), ('123', '2', null, '2016-05-22 06:45:28', '1463913927936', '1'), ('124', '1', null, '2016-05-22 09:34:44', '1463924084271', '1'), ('125', '2', null, '2016-05-22 09:42:27', '1463924547054', '1'), ('126', '1', null, '2016-05-22 10:12:16', '1463926336229', '0'), ('127', '3', null, '2016-05-22 10:32:52', '1463927572410', '1'), ('128', '1', null, '2016-05-22 12:28:24', '1463934504387', '1'), ('129', '2', null, '2016-05-22 12:40:25', '1463935225047', '1'), ('130', '1', null, '2016-05-22 15:24:23', '1463948663004', '1'), ('131', '2', null, '2016-05-22 15:24:27', '1463948667556', '1'), ('132', '3', null, '2016-05-22 15:24:28', '1463948668316', '1'), ('133', '4', null, '2016-05-22 15:24:28', '1463948668921', '1'), ('134', '1', null, '2016-05-22 15:26:12', '1463948772445', '1'), ('135', '1', null, '2016-05-22 15:28:11', '1463948891034', '1'), ('136', '1', null, '2016-05-22 15:28:13', '1463948893441', '0'), ('137', '1', null, '2016-05-22 15:28:14', '1463948894109', '0'), ('138', '1', null, '2016-05-22 15:28:14', '1463948894773', '0'), ('139', '2', null, '2016-06-06 21:43:16', '1465267396776', '1'), ('140', '2', null, '2016-06-06 21:43:17', '1465267397775', '1'), ('141', '2', null, '2016-06-06 21:43:19', '1465267399741', '1'), ('142', '1', null, '2016-06-06 21:43:22', '1465267401680', '1'), ('143', '2', null, '2016-06-06 21:43:23', '1465267403407', '1'), ('144', '3', null, '2016-06-06 21:43:24', '1465267404166', '1'), ('145', '4', null, '2016-06-06 21:43:24', '1465267404977', '0'), ('146', '2', null, '2016-06-06 21:43:26', '1465267406702', '0'), ('147', '1', null, '2016-06-06 21:43:28', '1465267408068', '0'), ('148', '2', null, '2016-06-06 21:44:20', '1465267460904', '0'), ('149', '2', null, '2016-06-06 21:44:22', '1465267462352', '0'), ('150', '2', null, '2016-06-06 21:44:22', '1465267462746', '0'), ('151', '2', null, '2016-06-06 21:44:23', '1465267463014', '0'), ('152', '2', null, '2016-06-06 21:44:23', '1465267463218', '0'), ('153', '2', null, '2016-06-06 21:44:23', '1465267463438', '0'), ('154', '2', null, '2016-06-06 21:44:23', '1465267463644', '0'), ('155', '1', null, '2016-06-06 21:44:37', '1465267477580', '1'), ('156', '2', null, '2016-06-06 21:44:38', '1465267478189', '1'), ('157', '3', null, '2016-06-06 21:44:38', '1465267478682', '1'), ('158', '4', null, '2016-06-06 21:44:39', '1465267479131', '1'), ('159', '2', null, '2016-06-07 00:03:31', '1465272211803', '1'), ('160', '2', null, '2016-06-07 00:41:31', '1465274490983', '1'), ('161', '2', null, '2016-06-07 23:32:45', '1465356766698', '1');
COMMIT;

-- ----------------------------
--  Table structure for `money_accounts`
-- ----------------------------
DROP TABLE IF EXISTS `money_accounts`;
CREATE TABLE `money_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `money_accounts`
-- ----------------------------
BEGIN;
INSERT INTO `money_accounts` VALUES ('1', 'CMR', '1', '1', null), ('2', 'Diners', '1', '1', null), ('3', 'Provis', '1', '1', null), ('4', 'Debito', '1', '1', null), ('5', 'Efectivo', '1', '1', null), ('6', 'OH', '1', '1', null);
COMMIT;

-- ----------------------------
--  Table structure for `money_categories`
-- ----------------------------
DROP TABLE IF EXISTS `money_categories`;
CREATE TABLE `money_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `money_categories`
-- ----------------------------
BEGIN;
INSERT INTO `money_categories` VALUES ('1', 'comida', '1', '1', null), ('2', 'pasaje', '1', '1', null), ('3', 'mercado', '1', '1', null), ('4', 'bebe', '1', '1', null), ('5', 'otro', '1', '1', null);
COMMIT;

-- ----------------------------
--  Table structure for `money_records`
-- ----------------------------
DROP TABLE IF EXISTS `money_records`;
CREATE TABLE `money_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` bigint(100) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `money_records`
-- ----------------------------
BEGIN;
INSERT INTO `money_records` VALUES ('4', '1464930000000', '4', '4', '115.00', 'Leche y pañal para génesis', '1', '2016-06-03 02:17:51', '1'), ('5', '1464930000000', '5', '1', '10.00', 'Almuerzo', '1', '2016-06-03 02:18:20', '1'), ('6', '1464930000000', '5', '5', '10.00', 'Pasaje señora Julia', '1', '2016-06-03 10:36:49', '1'), ('7', '1464930000000', '4', '1', '4.00', 'Pan', '1', '2016-06-03 12:03:06', '1'), ('8', '1464930000000', '5', '5', '20.00', 'Pasaje señora Julia', '1', '2016-06-03 22:10:34', '1'), ('9', '1465016400000', '5', '2', '0.50', 'Para la chamba', '1', '2016-06-04 02:56:12', '1'), ('10', '1465016400000', '1', '1', '35.00', 'Pizza nocturna', '1', '2016-06-04 03:44:35', '1'), ('11', '1464325200000', '1', '5', '339.00', 'Extractora', '1', '2016-06-04 14:08:19', '1'), ('12', '1465016400000', '5', '1', '16.00', 'Almuerzo sabatino', '1', '2016-06-04 17:11:43', '2'), ('13', '1465016400000', '5', '5', '25.80', 'Vino para mi mamá :D', '1', '2016-06-04 21:25:26', '2'), ('14', '1465016400000', '6', '3', '257.06', 'Mercado', '1', '2016-06-04 21:28:18', '2'), ('15', '1465102800000', '5', '1', '57.80', 'Pizza con mama y Jessica', '1', '2016-06-05 16:14:49', '2'), ('16', '1465102800000', '5', '2', '20.00', 'Día de elecciones', '1', '2016-06-05 16:15:29', '2'), ('17', '1465102800000', '5', '2', '17.00', 'Pasaje de Genesis votación', '1', '2016-06-06 02:43:10', '2'), ('18', '1465189200000', '5', '1', '12.00', 'DesayUno', '1', '2016-06-06 10:46:37', '2'), ('19', '1465189200000', '5', '2', '1.00', 'Pasaje al metro', '1', '2016-06-06 10:46:49', '2'), ('20', '1465189200000', '5', '1', '11.00', 'Almuerzo hackatohn', '1', '2016-06-06 13:37:17', '2'), ('23', '1465275600000', '5', '1', '7.00', 'Desayuno', '1', '2016-06-07 10:24:34', '1'), ('24', '1465362000000', '1', '1', '33.80', 'KFC cena', '1', '2016-06-08 21:38:49', '2'), ('25', '1465448400000', '5', '1', '10.00', 'Almuerzo', '1', '2016-06-09 16:52:08', '1'), ('26', '1465448400000', '5', '1', '20.00', 'Comida de Genesis', '1', '2016-06-09 22:05:23', '2'), ('27', '1465534800000', '5', '1', '21.00', 'Almuerzo', '1', '2016-06-10 15:45:12', '2'), ('28', '1465534800000', '5', '2', '11.00', 'Taxi y Varro para recojer  DNI', '1', '2016-06-10 17:44:24', '1'), ('29', '1465534800000', '2', '2', '3.50', 'Uber', '1', '2016-06-10 21:05:41', '1'), ('30', '1465534800000', '3', '3', '150.00', 'Sobra 73', '1', '2016-06-10 22:56:04', '1'), ('31', '1465534800000', '6', '3', '83.00', 'Mercado sumado con provis', '1', '2016-06-10 22:56:30', '1'), ('32', '1465534800000', '4', '4', '110.00', 'Leche', '1', '2016-06-10 23:00:19', '1'), ('33', '1465534800000', '4', '5', '2.00', 'Paracetamol', '1', '2016-06-10 23:16:40', '1'), ('34', '1465707600000', '5', '5', '33.00', 'Gas', '1', '2016-06-12 11:45:51', '1'), ('35', '1465707600000', '5', '5', '78.00', 'Cumple sienna vinos y más', '1', '2016-06-12 17:01:35', '1'), ('36', '1465707600000', '1', '1', '64.00', 'Pizza cumple mes sienna', '1', '2016-06-12 22:28:22', '1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
