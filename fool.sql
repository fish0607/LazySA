/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50638
Source Host           : 127.0.0.1:3306
Source Database       : fool

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2018-06-25 18:27:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for assets_hostinfo
-- ----------------------------
DROP TABLE IF EXISTS `assets_hostinfo`;
CREATE TABLE `assets_hostinfo` (
  `host_id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(50) DEFAULT NULL,
  `public_ip` char(39) DEFAULT NULL,
  `private_ip` char(39) DEFAULT NULL,
  `cpu` varchar(50) DEFAULT NULL,
  `men` varchar(50) DEFAULT NULL,
  `disk` varchar(10) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `port` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `webcode` varchar(50) DEFAULT NULL,
  `webid` varchar(50) DEFAULT NULL,
  `system` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `cost` varchar(500) DEFAULT NULL,
  `idc_name_id` int(11) DEFAULT NULL,
  `group` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`host_id`),
  KEY `assets_hostinfo_idc_name_id_9ee4ed03_fk_assets_idcinfo_idc_id` (`idc_name_id`),
  CONSTRAINT `assets_hostinfo_idc_name_id_9ee4ed03_fk_assets_idcinfo_idc_id` FOREIGN KEY (`idc_name_id`) REFERENCES `assets_idcinfo` (`idc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assets_hostinfo
-- ----------------------------
INSERT INTO `assets_hostinfo` VALUES ('1', 'DEFAULT', '117.103.235.31', '无', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '新马版本 14版测试', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('2', 'DEFAULT', '117.103.235.32', '10.83.10.32', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('3', 'DEFAULT', '117.103.235.33', '10.83.10.33', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('4', 'DEFAULT', '117.103.235.34', '10.83.10.34', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('5', 'DEFAULT', '117.103.235.35', '10.83.10.35', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('6', 'DEFAULT', '117.103.235.36', '10.83.10.36', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('7', 'DEFAULT', '117.103.235.37', '10.83.10.37', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('8', 'DEFAULT', '117.103.235.38', '10.83.10.38', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('9', 'DEFAULT', '117.103.235.39', '10.83.10.39', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('10', 'DEFAULT', '117.103.235.40', '10.83.10.40', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('11', 'DEFAULT', '117.103.235.41', '10.83.10.41', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('12', 'DEFAULT', '117.103.235.42', '10.83.10.42', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('13', 'DEFAULT', '117.103.235.43', '10.83.10.43', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('14', 'DEFAULT', '117.103.235.44', '10.83.10.44', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('15', 'DEFAULT', '117.103.235.45', '10.83.10.45', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('16', 'DEFAULT', '117.103.235.46', '10.83.10.46', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('17', 'DEFAULT', '117.103.235.47', '10.83.10.47', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('18', 'DEFAULT', '117.103.235.48', '10.83.10.48', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('19', 'DEFAULT', '117.103.235.49', '10.83.10.49', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('20', 'DEFAULT', '117.103.235.50', '10.83.10.50', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('21', 'DEFAULT', '117.103.235.51', '10.83.10.51', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('22', 'DEFAULT', '117.103.235.52', '10.83.10.52', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('23', 'DEFAULT', '117.103.235.53', '10.83.10.53', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('24', 'DEFAULT', '117.103.235.54', '10.83.10.54', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('25', 'DEFAULT', '117.103.235.55', '10.83.10.55', '4核', '8G', '40G 100G', 'csadministrator', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('26', 'DEFAULT', '117.103.235.56', '10.83.10.56', '4核', '8G', '40G 100G', 'csadministrator', '6688', '', '-', '-', 'Win2008 R2 x64', '越南', 'CDN', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('27', 'en-57', '47.90.3.57', '10.26.6.123', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@test#201712', '-', 'i-j6c9kugkrfwjoo8l7gg6', 'Win2008 R2 x64', '香港', '台湾繁体测试服-繁体版 C++,photon', '-', '1', '测试服');
INSERT INTO `assets_hostinfo` VALUES ('28', 'WD-182', '139.199.73.182', '10.104.220.3', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '中国 广东 广州', '微端 C++,photon 审核服', '-', '12', 'PC微端');
INSERT INTO `assets_hostinfo` VALUES ('29', 'DEFAULT', '119.29.203.128', '10.135.3.237', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '中国 广东 广州', '微端 C++,photon 14版测试', '-', '12', 'PC微端');
INSERT INTO `assets_hostinfo` VALUES ('30', 'DEFAULT', '119.29.15.164', '10.104.60.151', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '中国 广东 广州', '微端 C++,photon', '-', '12', 'PC微端');
INSERT INTO `assets_hostinfo` VALUES ('31', 'WD-175', '119.29.54.175', '10.135.49.80', '8核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '中国 广东 广州', '微端 C++,photon', '-', '12', 'PC微端');
INSERT INTO `assets_hostinfo` VALUES ('32', 'WD-191', '111.230.104.191', '10.104.42.110', '8核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '中国 广东 广州', 'Photon', '-', '12', 'PC微端');
INSERT INTO `assets_hostinfo` VALUES ('33', 'WD-15', '139.199.184.15', '10.135.15.246', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '中国 广东 广州', 'C', '-', '12', 'PC微端');
INSERT INTO `assets_hostinfo` VALUES ('34', 'DEFAULT', '111.230.12.231', '10.104.101.217', '8核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '中国 广东 广州', 'Photon', '-', '12', 'PC微端');
INSERT INTO `assets_hostinfo` VALUES ('35', 'DEFAULT', '47.88.193.173', '10.25.165.2', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@test#201712', '-', '-', 'Win2008 R2 x64', '新加坡', '测试服 微端 英文测试 C++,photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('36', 'DEFAULT', '47.89.182.236', '172.22.101.96', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@steam#201712', '-', '-', 'Win2008 R2 x64', '美国（弗吉尼亚）', 'Steam版本 login', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('37', 'DEFAULT', '120.26.239.35', '10.117.73.70', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '中国 c++game,gate', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('38', 'DEFAULT', '120.26.228.83', '10.117.57.19', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '中国 c++login', '-', '1', '国服');
INSERT INTO `assets_hostinfo` VALUES ('39', 'DEFAULT', '121.199.32.118', '10.132.37.178', '8核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '中国 photon_Game', '-', '1', '国服');
INSERT INTO `assets_hostinfo` VALUES ('40', 'DEFAULT', '121.199.48.204', '10.132.14.229', '8核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '中国 photon_Game', '-', '1', '国服');
INSERT INTO `assets_hostinfo` VALUES ('41', 'DEFAULT', '121.40.173.148', '10.168.55.138', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '中国 photon电竞侠(跟c++sport同一台)', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('42', 'DEFAULT', '121.40.85.210', '10.168.115.218', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@china#201712', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '中国 photon_Master', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('43', 'DEFAULT', '120.26.45.131', '10.175.194.209', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@test#201712', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '0925英文版测试服-国际服 C++,photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('44', 'DEFAULT', '47.91.78.220', '172.25.92.87', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@en#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '国际服 game,login,Gate', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('45', 'DEFAULT', '47.91.94.225', '172.25.92.89', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@en#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '国际服 photon_master', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('46', 'DEFAULT', '47.90.205.117', '172.22.101.85', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@en#201712', '-', '-', 'Win2008 R2 x64', '美国（弗吉尼亚）', '国际服 photon_master', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('47', 'DEFAULT', '47.88.215.2', '10.27.49.240', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '674873', 'i-t4n90hgivftvdg4vg4a3', 'Win2008 R2 x64', '新加坡', '多国版本_菲律宾_Photon新增', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('48', 'DEFAULT', '47.88.191.159', '10.24.143.159', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@en#201712', '-', '-', 'Win2008 R2 x64', '新加坡', '国际服 game,login,Gate', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('49', 'DEFAULT', '47.88.139.18', '10.45.243.125', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@en#201712', '-', '-', 'Win2008 R2 x64', '新加坡', '英文版', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('50', 'DEFAULT', '47.88.194.54', '10.25.164.139', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@en#201712', '-', '-', 'Win2008 R2 x64', '新加坡', '国际服 photon_master', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('51', 'en-201', '47.88.10.201', '10.172.103.157', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@en#201712', '-', '-', 'Win2008 R2 x64', '美国（硅谷）', '英文版 IOS测试服', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('52', 'DEFAULT', '47.90.60.225', '10.47.37.100', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@en#201712', '-', '-', 'Win2008 R2 x64', '香港', '国际服 photon_master', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('53', 'DEFAULT', '47.89.52.151', '10.26.60.205', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@en#201712', '-', '-', 'Win2008 R2 x64', '香港', '英文版 国际服 game,login,Gate', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('54', 'DEFAULT', '47.90.7.152', '10.26.133.4', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@en#201712', null, null, 'Win2008 R2 x64', '香港', '国际服、中转服', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('55', 'DEFAULT', '47.88.188.244', '10.25.161.104', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@en#201712', '-', '-', 'Win2008 R2 x64', '新加坡', '国际服 C++,photon,DB、IOS测试服', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('56', 'DEFAULT', '47.88.139.220', '10.45.243.191', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'qaz@258@TGB369', '-', '-', 'Win2008 R2 x64', '新加坡', '国际服 C++,photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('57', 'DEFAULT', '47.254.133.141', '172.16.224.16', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '欧洲国际服_Photon', '-', '1', '');
INSERT INTO `assets_hostinfo` VALUES ('58', 'DEFAULT', '47.254.144.39', '172.16.224.17', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '欧洲国际服_C++', '-', '1', '');
INSERT INTO `assets_hostinfo` VALUES ('59', 'DEFAULT', '47.89.182.180', '172.22.101.106', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '美国（弗吉尼亚）', '国际服_Photon', '-', '1', '');
INSERT INTO `assets_hostinfo` VALUES ('60', 'DEFAULT', '47.89.176.253', '172.22.101.107', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '美国（弗吉尼亚）', '国际服_C++', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('61', 'DEFAULT', '47.88.242.45', '10.27.49.245', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '新加坡', '多国版本 新加坡C 国际服', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('62', 'DEFAULT', '210.211.105.75', '10.11.12.75', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '越南', '-', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('63', 'DEFAULT', '210.211.105.76', '10.11.12.76', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '柬埔寨 C++Login', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('64', 'DEFAULT', '210.211.105.77', '10.11.12.77', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '柬埔寨 C++Game', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('65', 'DEFAULT', '210.211.105.78', '10.11.12.78', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '柬埔寨 C++Gate', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('66', 'DEFAULT', '210.211.105.79', '10.11.12.79', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '柬埔寨 C++Gate', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('67', 'DEFAULT', '210.211.105.81', '10.11.12.81', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('68', 'DEFAULT', '210.211.105.82', '10.11.12.82', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('69', 'DEFAULT', '210.211.105.83', '10.11.12.83', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('70', 'DEFAULT', '210.211.105.84', '10.11.12.84', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('71', 'DEFAULT', '210.211.105.85', '10.11.12.85', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('72', 'DEFAULT', '210.211.105.86', '10.11.12.86', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('73', 'DEFAULT', '210.211.105.87', '10.11.12.87', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('74', 'DEFAULT', '210.211.105.88', '10.11.12.88', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('75', 'DEFAULT', '210.211.105.89', '10.11.12.89', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '柬埔寨 C++四合一\n', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('76', 'DEFAULT', '210.211.105.90', '10.11.12.90', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('77', 'DEFAULT', '210.211.105.91', '10.11.12.91', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('78', 'DEFAULT', '210.211.105.92', '10.11.12.92', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@kh#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('79', 'DEFAULT', '47.91.120.99', '172.26.61.150', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@arab#201712', '-', '-', 'Win2008 R2 x64', '阿联酋（迪拜）', '阿拉伯 C++ GAME', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('80', 'DEFAULT', '47.91.120.81', '172.26.61.154', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@arab#201712', '-', '-', 'Win2008 R2 x64', '阿联酋（迪拜）', '阿拉伯 login,Gate', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('81', 'DEFAULT', '47.91.104.93', '172.26.61.165', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@arab#201712', '-', '-', 'Win2008 R2 x64', '阿联酋（迪拜）', '阿拉伯 Gate', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('82', 'DEFAULT', '47.91.106.102', '172.26.61.164', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@arab#201712', '-', '-', 'Win2008 R2 x64', '阿联酋（迪拜）', '阿拉伯 photon_game', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('83', 'DEFAULT', '47.91.110.223', '172.26.61.155', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@arab#201712', '-', '-', 'Win2008 R2 x64', '阿联酋（迪拜）', '阿拉伯 photon_master', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('84', 'DEFAULT', '47.91.107.133', '172.26.61.156', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@arab#201712', '-', '-', 'Win2008 R2 x64', '阿联酋（迪拜）', '阿拉伯 C++sport', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('85', 'DEFAULT', '47.91.104.80', '172.26.61.162', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'qaz258@TGB369', '-', '-', 'Win2008 R2 x64', '阿联酋（迪拜）', '文件中转', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('86', 'DEFAULT', '47.91.73.248', '172.25.95.92', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@lran#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '伊朗 photon_sport', '-', '10', '伊朗');
INSERT INTO `assets_hostinfo` VALUES ('87', 'DEFAULT', '47.91.73.25', '172.25.95.93', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@lran#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '伊朗 photon_game', '-', '10', '伊朗');
INSERT INTO `assets_hostinfo` VALUES ('88', 'DEFAULT', '47.91.74.12', '172.25.95.94', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@lran#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '伊朗 photon_master', '-', '10', '伊朗');
INSERT INTO `assets_hostinfo` VALUES ('89', 'DEFAULT', '47.91.74.242', '172.25.95.87', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@lran#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '伊朗 C++game', '-', '10', '伊朗');
INSERT INTO `assets_hostinfo` VALUES ('90', 'DEFAULT', '47.91.74.247', '172.25.95.88', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@lran#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '伊朗 C++sports', '-', '10', '伊朗');
INSERT INTO `assets_hostinfo` VALUES ('91', 'DEFAULT', '47.91.74.32', '172.25.95.89', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@lran#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '伊朗 C++login，gate，和navicat--DB', '-', '10', '伊朗');
INSERT INTO `assets_hostinfo` VALUES ('92', 'DEFAULT', '47.91.78.210', '172.25.95.98', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@lran#201712', '886327', '-', 'Win2008 R2 x64', '德国（法兰克福）', '伊朗 C++，DB(测试)', '-', '10', '伊朗');
INSERT INTO `assets_hostinfo` VALUES ('93', 'DEFAULT', '118.193.25.6', '10.50.52.8', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@th#201712', '-', '-', 'Win2008 R2 x64', '新加坡', '泰国 正式 Photon Game+Master', '-', '11', '退订');
INSERT INTO `assets_hostinfo` VALUES ('94', 'DEFAULT', '118.193.25.7', '10.50.52.9', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@th#201712', '-', '-', 'Win2008 R2 x64', '新加坡', '泰国 正式 Photon Game', '-', '11', '退订');
INSERT INTO `assets_hostinfo` VALUES ('95', 'DEFAULT', '118.193.25.8', '10.50.52.10', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@th#201712', '-', '-', 'Win2008 R2 x64', '新加坡', '泰国 正式 Game', '-', '11', '退订');
INSERT INTO `assets_hostinfo` VALUES ('96', 'DEFAULT', '118.193.25.9', '10.50.52.11', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@th#201712', '-', '-', 'Win2008 R2 x64', '新加坡', '泰国 正式 Login,Gate', '-', '11', '退订');
INSERT INTO `assets_hostinfo` VALUES ('97', 'DEFAULT', '118.193.25.10', '10.50.52.12', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@th#201712', '-', '-', 'Win2008 R2 x64', '新加坡', '泰国 正式 Sport+Photon', '-', '11', '退订');
INSERT INTO `assets_hostinfo` VALUES ('98', 'DEFAULT', '118.193.25.3', '10.50.52.2', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@th#201712', '-', '-', 'Win2008 R2 x64', '新加坡', '泰国 测试 photon', '-', '11', '退订');
INSERT INTO `assets_hostinfo` VALUES ('99', 'DEFAULT', '47.91.89.87', '172.25.92.95', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 gate 14版正式', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('100', 'DEFAULT', '47.91.91.110', '172.25.92.99', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 gate 14版正式', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('101', 'DEFAULT', '47.91.93.217', '172.25.92.100', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 gate 14版正式', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('102', 'DEFAULT', '47.91.94.200', '172.25.92.97', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 gate 14版正式', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('103', 'DEFAULT', '47.91.75.54', '172.25.92.93', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 C++login,,game 14版正式', '-', '1', '土耳其');
INSERT INTO `assets_hostinfo` VALUES ('104', 'DEFAULT', '47.91.94.132', '172.25.92.107', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 photon  gameserver 14版正式', '-', '1', '土耳其');
INSERT INTO `assets_hostinfo` VALUES ('105', 'DEFAULT', '47.254.131.191', '172.25.92.113', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 photon  gameserver 14版正式', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('106', 'DEFAULT', '47.254.131.31', '172.25.92.110', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 photon  gameserver 14版正式', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('107', 'DEFAULT', '47.91.78.154', '172.25.92.98', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 Photon_Master,Photon_Game 14版正式', '-', '1', '土耳其');
INSERT INTO `assets_hostinfo` VALUES ('108', 'DEFAULT', '47.91.92.45', '172.25.92.111', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 photon  gameserver 14版正式', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('109', 'DEFAULT', '47.91.75.133', '172.25.92.112', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 gate', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('110', 'DEFAULT', '47.91.75.164', '172.25.92.95', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 C++Sport14版正式', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('111', 'DEFAULT', '47.254.129.189', '172.25.92.103', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其 C++,photon 审核服', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('112', 'DEFAULT', '47.254.129.167', '172.25.92.104', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '测试', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('113', 'DEFAULT', '47.254.128.184', '172.25.92.102', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@tr#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '土耳其', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('114', 'DEFAULT', '121.40.91.57', '10.171.209.55', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'qaz258@TGB369', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '土耳其 C++,photon 14版测试', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('115', 'DEFAULT', '117.103.234.21', '10.80.10.21', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 Login', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('116', 'DEFAULT', '117.103.234.22', '10.80.10.22', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 C++Game', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('117', 'DEFAULT', '117.103.234.23', '10.80.10.23', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 Photon_Game', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('118', 'DEFAULT', '117.103.234.24', '10.80.10.24', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 Photon_Game', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('119', 'DEFAULT', '117.103.234.25', '10.80.10.25', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 Photon_Master', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('120', 'DEFAULT', '117.103.234.28', '10.80.10.28', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 C++Sport', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('121', 'DEFAULT', '117.103.234.38', '10.80.10.38', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 Photon_Game', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('122', 'DEFAULT', '117.103.234.39', '10.80.10.39', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 Photon_Game', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('123', 'DEFAULT', '117.103.234.40', '10.80.10.40', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('124', 'DEFAULT', '117.103.234.60', '10.80.10.60', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 文件中转服务器', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('125', 'DEFAULT', '117.103.234.72', '10.80.10.72', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 Photon_Master', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('126', 'DEFAULT', '117.103.234.73', '10.80.10.73', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 Photon_Game', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('127', 'DEFAULT', '117.103.234.74', '10.80.10.74', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 C++Gate', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('128', 'DEFAULT', '117.103.234.75', '10.80.10.75', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 C++Gate', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('129', 'DEFAULT', '117.103.234.76', '10.80.10.76', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 C++Gate', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('130', 'DEFAULT', '117.103.234.77', '10.80.10.77', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 C++Gate', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('131', 'DEFAULT', '117.103.234.78', '10.80.10.78', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 C++Gate', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('132', 'DEFAULT', '117.103.234.85', '10.80.10.85', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 Photon_Game', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('133', 'DEFAULT', '117.103.234.88', '10.80.10.86', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 Photon_Game', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('134', 'DEFAULT', '117.103.234.89', '10.80.10.87', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 Photon_Game', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('135', 'DEFAULT', '117.103.234.90', '10.80.10.90', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南 Photon_Game', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('136', 'DEFAULT', '117.103.234.104', '10.80.10.104', '4核', '8G', '40G 100G', 'phuckich', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南测试服 c++,photon', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('137', 'DEFAULT', '117.103.234.93', '10.80.10.93', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南测试服 c++', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('138', 'DEFAULT', '117.103.234.94', '10.80.10.94', '4核', '8G', '40G 100G', 'cfmobile', '6688', 'Cs@vie#201712', '-', '-', 'Win2008 R2 x64', '越南', '越南测试服 photon', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('139', 'DEFAULT', '121.40.100.68', '10.168.116.218', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@test#201712', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '辅助用电竞侠测试服', '-', '1', '测试服');
INSERT INTO `assets_hostinfo` VALUES ('140', 'DEFAULT', '121.40.216.44', '10.168.91.27', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@test#201712', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '国服审核服，保留', '-', '1', '测试服');
INSERT INTO `assets_hostinfo` VALUES ('141', 'DEFAULT', '121.40.73.21', '10.168.115.253', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@test#201712', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '端游测试服，保留', '-', '1', '测试服');
INSERT INTO `assets_hostinfo` VALUES ('142', 'Blockchain-42-202', '47.254.42.202', '192.168.10.48', '2核', '4G', '40G 500G', 'root', '22', 'Blockchain@2018', '-', 'i-rj9c8xeqe9vofvmzn2i9', 'Ubuntu 16.04 64位', '美国（硅谷）', '区块链测试 何随聪', '556.38', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('143', 'DEFAULT', '121.40.215.68', '10.168.90.2', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@test#201712', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '测试 德国 C++,photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('144', 'DEFAULT', '121.40.128.133', '10.168.38.69', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@test#201712', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '老何的项目测试服', '-', '1', '测试服');
INSERT INTO `assets_hostinfo` VALUES ('145', 'DEFAULT', '47.91.122.106', '172.26.61.157', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@test#201712', '-', '-', 'Win2008 R2 x64', '阿联酋（迪拜）', '阿拉伯苹果审核服', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('146', 'DEFAULT', '47.88.18.40', '10.117.239.69', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@test#201712', '-', '-', 'Win2008 R2 x64', '美国（硅谷）', '阿拉伯苹果审核服', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('147', 'DEFAULT', '47.88.18.35', '10.117.234.55', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@nidong#201712', '-', '-', 'Win2008 R2 x64', '美国（硅谷）', '老何项目', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('148', 'DEFAULT', '47.91.93.89', '172.16.224.6', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@test#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '俄罗斯测试服', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('149', 'DEFAULT', '47.254.132.195', '172.16.224.9', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@russia#201712', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('150', 'DEFAULT', '47.88.247.209', '10.24.140.62', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@phi#201801', '-', '-', 'Win2008 R2 x64', '新加坡', '多国版本 菲律宾Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('151', 'DEFAULT', '47.90.250.123', '172.22.101.102', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@mexico#201801', '-', '-', 'Win2008 R2 x64', '美国（弗吉尼亚）', '多国版本 墨西哥Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('152', 'DEFAULT', '47.91.89.119', '172.16.224.10', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@Ukraine#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本-乌克兰Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('153', 'DEFAULT', '47.254.144.96', '172.16.224.12', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本 德国Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('154', 'DEFAULT', '47.91.73.80', '172.16.224.11', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本-西班牙Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('155', 'DEFAULT', '47.88.254.192', '10.27.49.232', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '新加坡', '多国版本 印尼Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('156', 'DEFAULT', '47.90.245.249', '172.22.101.104', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '美国（弗吉尼亚）', '多国版本 加拿大Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('157', 'DEFAULT', '35.199.93.137', '10.158.0.4', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', 'southamerica-east1-a', '多国版本-哥伦比亚Photon', '-', '3', '退订');
INSERT INTO `assets_hostinfo` VALUES ('158', 'DEFAULT', '35.199.81.70', '10.158.0.5', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', 'southamerica-east1-a', '哥伦比亚C', '-', '3', '退订');
INSERT INTO `assets_hostinfo` VALUES ('159', 'DEFAULT', '35.199.124.215', '10.158.0.6', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', 'southamerica-east1-a', '拉丁美洲国际战斗 C', '-', '3', '退订');
INSERT INTO `assets_hostinfo` VALUES ('160', 'DEFAULT', '35.199.66.82', '10.158.0.7', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', 'southamerica-east1-a', '拉丁美洲国际战斗 Photon', '-', '3', '退订');
INSERT INTO `assets_hostinfo` VALUES ('161', 'DEFAULT', '35.198.34.79', '10.158.0.9', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', 'southamerica-east1-a', '多国版本-智利本地photon', '-', '3', '退订');
INSERT INTO `assets_hostinfo` VALUES ('162', 'DEFAULT', '35.199.89.168', '10.158.0.8', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', 'southamerica-east1-a', '多国版本-秘鲁本地photon', '-', '3', '退订');
INSERT INTO `assets_hostinfo` VALUES ('163', 'DEFAULT', '35.198.22.185', '10.158.0.10', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', 'southamerica-east1-a', '阿根廷本地photon', '-', '3', '退订');
INSERT INTO `assets_hostinfo` VALUES ('164', 'DEFAULT', '47.254.131.221', '172.25.92.115', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本-奥地利Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('165', 'DEFAULT', '47.91.45.155', '172.16.20.36', '2核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', 'i-p0wdg6ny2r65owzxf0yp', 'Win2008 R2 x64', '澳大利亚（悉尼）', '澳大利亚Photon', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('166', 'DEFAULT', '47.91.43.6', '172.16.20.35', '2核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', 'i-p0wdg6ny2r65owzxf0yq', 'Win2008 R2 x64', '澳大利亚（悉尼）', '澳大利亚C', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('167', 'DEFAULT', '47.254.133.145', '172.16.224.13', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本 芬兰C', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('168', 'DEFAULT', '47.91.95.194', '172.16.224.15', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本 英国Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('169', 'DEFAULT', '47.89.185.175', '172.22.101.105', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '美国（弗吉尼亚）', '多国版本 美国Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('170', 'DEFAULT', '47.88.254.243', '10.25.161.161', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '新加坡', '印度Photon', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('171', 'DEFAULT', '47.254.128.37', '172.16.224.22', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本 意大利Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('172', 'DEFAULT', '47.254.130.140', '172.16.224.20', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本 法国Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('173', 'DEFAULT', '47.91.92.60', '172.16.224.21', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本-荷兰Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('174', 'DEFAULT', '47.91.94.163', '172.16.224.18', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本-瑞典Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('175', 'DEFAULT', '47.254.129.6', '172.16.224.19', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本-瑞士Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('176', 'DEFAULT', '47.254.133.23', '172.16.224.26', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本-芬兰_Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('177', 'DEFAULT', '47.254.134.188', '172.16.224.24', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本-挪威Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('178', 'DEFAULT', '47.254.144.80', '172.16.224.23', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本 丹麦Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('179', 'DEFAULT', '47.91.78.1', '172.16.224.25', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本-比利时Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('180', 'DEFAULT', '47.254.130.246', '172.16.224.27', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本-爱尔兰Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('181', 'DEFAULT', '47.88.244.13', '10.27.50.18', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '新加坡', '多国版本 日本, 韩国, 香港, 澳门地区 Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('182', 'DEFAULT', '47.88.243.70', '10.25.164.207', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '新加坡', '日本, 韩国, 香港, 澳门地区 C', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('183', 'TAIWAN-85', '47.88.243.85', '10.24.142.223', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '218859', 'i-t4ngewjcm2skdzywka8c', 'Win2008 R2 x64', '新加坡', '多国版本_台湾_Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('184', 'DEFAULT', '47.88.243.220', '10.24.143.114', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '新加坡', '多国版本_日本_Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('185', 'DEFAULT', '47.88.244.176', '10.24.142.47', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '新加坡', '多国版本_韩国_Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('186', 'DEFAULT', '47.88.244.174', '10.27.50.32', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '新加坡', '多国版本_香港_Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('187', 'DEFAULT', '47.88.244.166', '10.27.49.148', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '新加坡', '多国版本_澳门_Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('188', 'DEFAULT', '47.91.46.37', '172.16.20.41', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '0', '-', 'Win2008 R2 x64', '澳大利亚（悉尼）', '多国版本_新西兰Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('189', 'DEFAULT', '47.91.43.142', '172.16.20.40', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '1', '-', 'Win2008 R2 x64', '澳大利亚（悉尼）', '澳洲国际服_C', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('190', 'DEFAULT', '47.91.43.153', '172.16.20.39', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '澳大利亚（悉尼）', '澳洲国际服_Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('191', 'DEFAULT', '47.254.133.237', '172.16.224.28', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '多国版本_挪威Photon', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('192', 'DEFAULT', '41.33.87.185', '10.96.31.151/10.96.30.151', '4核', '8G', '40G 100G', '', '2048', 'Huawei@cdn#2017', '-', '-', 'CentOS 6.5', '埃及', '华为_cdn源站', '-', '9', '华为');
INSERT INTO `assets_hostinfo` VALUES ('193', 'hz-cmswat-230', '120.26.216.230', '10.117.61.209', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@Chain#20171218', '-', '-', 'CentOS 6.5', '华东1（杭州）', '官网，迁移至 101.37.68.15', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('194', 'DEFAULT', '101.37.68.15', '10.27.112.23', '2核', '4G', '40G 100G', 'root', '2048', 'Cs@Chain#20171218', '-', '-', 'CentOS 6.8', '华东1（杭州）', '中控服务器、测试、官网、H5', '-', '1', '其他');
INSERT INTO `assets_hostinfo` VALUES ('195', 'Dubai-Arab-MasterMySQL-123-31', '47.91.123.31', '172.26.61.152', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.8', '阿联酋（迪拜）', '阿拉伯 Master MySQL', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('196', 'Dubai-Arab-Smb-121-196', '47.91.121.196', '172.26.61.160', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.8', '阿联酋（迪拜）', '阿拉伯 vpn samba', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('197', 'Dubai-Arab-CDN-105-73', '47.91.105.73', '172.26.61.143', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.8', '阿联酋（迪拜）', '阿拉伯 CDN', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('198', 'Dubai-Arab-LogMySQL-106-195', '47.91.106.195', '172.26.61.144', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.8', '阿联酋（迪拜）', '阿拉伯Log数据库', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('199', 'Dubai-Arab-SlaveMySQL-121-160', '47.91.121.160', '172.26.61.148', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.8', '阿联酋（迪拜）', '阿拉伯从数据库服务器', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('200', 'Dubai-Arab-Admin-111-226', '47.91.111.226', '172.26.61.142', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.8', '阿联酋（迪拜）', '阿拉伯后台游戏后台', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('201', 'Dubai-Arab-Admin-122-172', '47.91.122.172', '172.26.61.153', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.8', '阿联酋（迪拜）', '阿拉伯正式服后台', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('202', 'Frankfurt-En-Admin-90-64', '47.91.90.64', '172.25.92.85', '2核', '4G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '德国（法兰克福）', '法兰克福后台', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('203', 'DEFAULT', '47.91.94.177', '172.25.92.86', '8核', '16G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '德国（法兰克福）', '法兰克福数据库', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('204', 'DEFAULT', '47.90.205.146', '172.22.101.89', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '美国（弗吉尼亚）', '英文版 cslog', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('205', 'DEFAULT', '47.89.191.119', '172.22.101.83', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '美国（弗吉尼亚）', '美东_master数据库', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('206', 'DEFAULT', '47.89.189.16', '172.22.101.80', '2核', '4G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '美国（弗吉尼亚）', '美东后台', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('207', 'DEFAULT', '47.88.25.77', '10.117.235.23', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '美国（硅谷）', '英文版 测试 美西_后台_数据库', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('208', 'DEFAULT', '47.90.60.210', '10.47.32.40', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '香港', '英文版-国际服菲律宾后台数据库', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('209', 'DEFAULT', '47.91.145.201', '10.47.34.67', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '香港', 'cslog 英文版', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('210', 'DEFAULT', '47.88.215.149', '10.25.167.53', '2核', '4G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '新加坡', '新加坡后台', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('211', 'DEFAULT', '47.88.192.199', '10.25.162.11', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '新加坡', '英文版 新加坡cslog', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('212', 'DEFAULT', '47.88.195.144', '10.25.164.223', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '新加坡', '新加坡_master数据库', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('213', 'DEFAULT', '47.88.193.24', '10.24.140.48', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '新加坡', 'API', '-', '1', '国际服-新加坡中控');
INSERT INTO `assets_hostinfo` VALUES ('214', 'DEFAULT', '47.88.193.79', '10.25.162.124', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '新加坡', '中控后台 国际服cdn源站', '-', '1', '国际服-新加坡中控');
INSERT INTO `assets_hostinfo` VALUES ('215', 'DEFAULT', '47.88.193.216', '10.25.163.178', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '新加坡', '中控数据库', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('216', 'DEFAULT', '47.88.191.110', '10.25.164.5', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#en', '-', '-', 'CentOS 6.8', '新加坡', 'SDK账号验证服 国际服-新加坡中控', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('217', 'i-t4nb5yqs7wxo9h9yqqts', '47.74.153.31', '192.168.100.243', '2核', '8G', '40G', 'administrator', '3389', 'Tank@2018#ecs', '-', 'i-t4nb5yqs7wxo9h9yqqts', 'Win2012 数据中心 64位 中文', '新加坡', '坦克雄心-机器人', '868', '1', '坦克雄心');
INSERT INTO `assets_hostinfo` VALUES ('218', 'Vietnam-Combodia-Admin-105-71', '210.211.105.71', '10.11.12.71', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@jpz#201712', '-', '-', 'CentOS 6.9', '越南', '柬埔寨后台', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('219', 'Vietnam-Combodia-GameMasterMySQL-105-1', '210.211.105.1', '10.11.12.101', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@jpz#201712', '-', '-', 'CentOS 6.9', '越南', 'csgame_master_柬埔寨', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('220', 'Vietnam-Combodia-GameSlaveMySQL-105-2', '210.211.105.2', '10.11.12.102', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@jpz#201712', '-', '-', 'CentOS 6.9', '越南', 'csgame_backup_柬埔寨', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('221', 'Vietnam-Combodia-LogMasterMySQL-105-3', '210.211.105.3', '10.11.12.103', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@jpz#201712', '-', '-', 'CentOS 6.9', '越南', 'cslog_master_柬埔寨', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('222', 'Vietnam-Combodia-LogSlaveMySQL-105-4', '210.211.105.4', '10.11.12.104', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@jpz#201712', '-', '-', 'CentOS 6.9', '越南', 'cslog_backup_柬埔寨', '-', '11', '柬埔寨');
INSERT INTO `assets_hostinfo` VALUES ('223', 'i-rj91y15z8msa9vy705g6', '47.254.40.92', '192.168.10.47', '2核', '4G', '40G 500G', 'administrator', '3389', 'Nd@ecs.2018', '657420', 'i-rj91y15z8msa9vy705g6', 'Win2008 R2 x64', '美国（硅谷）', '区块链测试 何随聪', '954.00', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('224', 'DEFAULT', '121.40.154.107', '10.168.31.187', '2核', '4G', '40G 100G', 'root', '2048', 'Cs@Chain#20171218', '-', '-', 'CentOS 6.8', '华东1（杭州）', '老何充值验证服务器_后台', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('225', 'DEFAULT', '47.91.75.172', '172.25.95.86', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.9', '德国（法兰克福）', 'cs伊朗后台', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('226', 'DEFAULT', '47.91.77.30', '172.25.95.78', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.5', '德国（法兰克福）', '德国cs测试后台', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('227', 'DEFAULT', '47.91.73.227', '172.25.95.79', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.5', '德国（法兰克福）', '伊朗共享_德国测试数据库', '-', '10', '阿拉伯');
INSERT INTO `assets_hostinfo` VALUES ('228', 'Virginia-Steam-Admin-180-229', '47.89.180.229', '172.22.101.90', '2核', '4G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.8', '美国（弗吉尼亚）', 'Steam版本_后台', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('229', 'Virginia-Steam-MasterMySQL-200-232', '47.90.200.232', '172.22.101.93', '2核', '4G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.8', '美国（弗吉尼亚）', 'Steam版本_主库', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('230', 'Singapore-Thailand-TestAdmin-25-2', '118.193.25.2', '10.50.52.1', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#th', '-', '-', 'CentOS 6.8', '新加坡', '泰国测试服后台', '-', '11', '退订');
INSERT INTO `assets_hostinfo` VALUES ('231', 'Singapore-Thailand-CDN-25-5', '118.193.25.5', '10.50.52.4', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#th', '-', '-', 'CentOS 6.8', '新加坡', '泰国cdn源站', '-', '11', '退订');
INSERT INTO `assets_hostinfo` VALUES ('232', 'Singapore-Thailand-Admin-25-11', '118.193.25.11', '10.50.52.13', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#th', '-', '-', 'CentOS 6.8', '新加坡', '泰国正式服后台', '-', '11', '退订');
INSERT INTO `assets_hostinfo` VALUES ('233', 'Singapore-Thailand-GamgeMySQLSlave-52-5', '118.193.25.13', '内网登陆，10.50.52.6', '4核', '8G', '40G 100G', 'root', '2048', 'qaz258@TGB369', '-', '-', 'CentOS 6.8', '新加坡', '泰国正式服_csgame_backup', '-', '11', '退订');
INSERT INTO `assets_hostinfo` VALUES ('234', 'Singapore-Thailand-GamgeMySQLMaser-52-5', '118.193.25.12', '内网登陆，10.50.52.5', '4核', '8G', '40G 100G', 'root', '2048', 'qaz258@TGB369', '-', '-', 'CentOS 6.8', '新加坡', '泰国正式服_csgame_master', '-', '11', '退订');
INSERT INTO `assets_hostinfo` VALUES ('235', 'Singapore-Thailand-LogMySQL-52-7', '118.193.25.14', '内网登陆，10.50.52.7', '4核', '8G', '40G 100G', 'root', '2048', 'qaz258@TGB369', '-', '-', 'CentOS 6.8', '新加坡', '泰国正式服_cslog', '-', '11', '退订');
INSERT INTO `assets_hostinfo` VALUES ('236', 'Frankfurt-Turkey-MasterMySQL-94-197', '47.91.94.197', '172.25.92.92', '4核', '16G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#tu', '335839', 'i-gw8cxu3idzesskckfufs', 'CentOS 6.8', '德国（法兰克福）', '土耳其master数据库', '-', '1', '土耳其');
INSERT INTO `assets_hostinfo` VALUES ('237', 'Frankfurt-Turkey-CDN-95-219', '47.91.95.219', '172.25.92.96', '2核', '4G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#tu', '-', '-', 'CentOS 6.8', '德国（法兰克福）', '土耳其cdn源站', '-', '1', '土耳其');
INSERT INTO `assets_hostinfo` VALUES ('238', 'Frankfurt-Turkey-SlaveMySQL-90-15', '47.91.90.15', '172.25.92.91', '2核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#tu', '281301', 'i-gw8cxu3idzesskckfufu', 'CentOS 6.8', '德国（法兰克福）', '土耳其backup数据库', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('239', 'Frankfurt-Turkey-Admin-92-144', '47.91.92.144', '172.25.92.94', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#tu', '-', '-', 'CentOS 6.8', '德国（法兰克福）', '土耳其后台', '-', '1', '土耳其');
INSERT INTO `assets_hostinfo` VALUES ('240', 'GuangZhou-PC-Admin-0-73', '139.199.0.73', '10.104.252.9', '8核', '8G', '40G 100G', 'root', '2048', 'Cs@Chain#20171218', '-', '-', 'CentOS 6.8', '中国 广东 广州', '后台', '-', '12', 'PC微端');
INSERT INTO `assets_hostinfo` VALUES ('241', 'GuangZhou-PC-CDN-26-131', '118.89.26.131', '10.135.84.108', '1核', '4G', '40G 100G', 'root', '2048', 'Cs@Chain#20171218', '-', '-', 'CentOS 6.8', '中国 广东 广州', '微端_cdn源站', '-', '12', 'PC微端');
INSERT INTO `assets_hostinfo` VALUES ('242', 'GuangZhou-PC-MySQL-63-183', '118.89.63.183', '10.104.201.135', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@Chain#20171218', '-', '-', 'CentOS 6.8', '中国 广东 广州', '微端_数据库', '-', '12', 'PC微端');
INSERT INTO `assets_hostinfo` VALUES ('243', 'Frankfurt-Iran-Admin-74-37', '47.91.74.36', '172.25.95.90', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#ir', '-', '-', 'CentOS 6.8', '德国（法兰克福）', '伊朗后台', '-', '10', '伊朗');
INSERT INTO `assets_hostinfo` VALUES ('244', 'Frankfurt-Iran-MySQLSlave-88-61', '47.91.88.61', '172.25.95.96', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#ir', '-', '-', 'CentOS 6.8', '德国（法兰克福）', '伊朗备份数据库', '-', '10', '伊朗');
INSERT INTO `assets_hostinfo` VALUES ('245', 'Frankfurt-Iran-MySQLMaster-74-40', '47.91.74.40', '172.25.95.91', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#ir', '-', '-', 'CentOS 6.8', '德国（法兰克福）', '伊朗cs数据库', '-', '10', '伊朗');
INSERT INTO `assets_hostinfo` VALUES ('246', 'Frankfurt-Iran-CND-74-30', '47.91.74.30', '172.25.95.95', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#ir', '-', '-', 'CentOS 6.8', '德国（法兰克福）', '伊朗CDN源站', '-', '10', '伊朗');
INSERT INTO `assets_hostinfo` VALUES ('247', 'Vietnam-TestMySQL-234-102', '117.103.234.102', '10.80.10.102', '4核', '8G', '40G 100G', 'root', '22', 'Cs@nidong#2017#vie', '-', '-', 'CentOS 6.5', '越南', '越南测试数据库', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('248', 'DEFAULT', '117.103.234.36', '10.80.10.36', '4核', '8G', '40G 100G', 'root', '22', 'Cs@nidong#2017#vie', '-', '-', 'CentOS 6.8', '越南', 'Background', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('249', 'Vietnam-Admin-234-37', '117.103.234.37', '10.80.10.37', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@nidong#2017#vie', '-', '-', 'CentOS 6.8', '越南', 'YNBG（越南后台）', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('250', 'Vietnam-SMB-234-102', '117.103.234.42', '10.80.10.42', '4核', '8G', '40G 100G', 'root', '22', 'Cs@nidong#2017#vie', '-', '-', 'CentOS 6.5', '越南', '越南samba', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('251', 'Vietnam-GameSlaveMySQL-234-51', '117.103.234.51', '10.80.10.51', '4核', '8G', '40G 100G', 'root', '22', 'Cs@nidong#2017#vie', '-', '-', 'CentOS 6.5', '越南', 'csgame_backup', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('252', 'Vietnam-LogSlaveMySQL-234-52', '117.103.234.52', '10.80.10.52', '4核', '8G', '40G 100G', 'root', '22', 'Cs@nidong#2017#vie', '-', '-', 'CentOS 6.5', '越南', 'cslog_backup', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('253', 'Vietnam-GameMsaterMySQL-234-53', '117.103.234.53', '10.80.10.53', '4核', '8G', '40G 100G', 'root', '22', 'Cs@nidong#2017#vie', '-', '-', 'CentOS 6.6', '越南', 'csgame_master', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('254', 'Vietnam-LogMsaterMySQL-234-54', '117.103.234.54', '10.80.10.54', '4核', '8G', '40G 100G', 'root', '22', 'Cs@nidong#2017#vie', '-', '-', 'CentOS 6.6', '越南', 'cslog_master', '-', '11', '越南');
INSERT INTO `assets_hostinfo` VALUES ('255', 'DEFAULT', '121.40.57.73', '10.251.235.41', '4核', '4G', '40G 100G', 'root', '2048', 'Cs@Chain#20171218', '-', '-', 'CentOS 6.5', '华东1（杭州）', '国服后台1', '-', '1', '国服');
INSERT INTO `assets_hostinfo` VALUES ('256', 'DEFAULT', '120.26.245.214', '10.117.82.105', '2核', '4G', '40G 500G', 'root', '2048', 'Cs@Chain#20171218', '-', '-', 'CentOS 6.5', '华东1（杭州）', '国服数据库/内部测试数据库', '-', '1', '测试服');
INSERT INTO `assets_hostinfo` VALUES ('257', 'DEFAULT', '114.55.250.83', '10.26.110.158', '2核', '4G', '40G 100G', 'root', '2048', 'Cs@Chain#20171218', '-', '-', 'CentOS 6.5', '华东1（杭州）', '国服后台2/中国 后台API服务器', '-', '1', '国服');
INSERT INTO `assets_hostinfo` VALUES ('258', 'Singapore-Zabbix-194-36', '47.88.194.36', '10.25.164.198', '2核', '4G', '40G 100G', 'root', '2048', 'Zabbix@Ndong#2017', '-', '-', 'CentOS 6.8', '新加坡', 'zabbix 国外', '-', '1', '监控服务器');
INSERT INTO `assets_hostinfo` VALUES ('259', 'HangZhou-Zabbix-155-125', '121.43.155.125', '10.252.148.144', '2核', '4G', '40G 100G', 'root', '2048', 'Zabbix@Ndong#2017', '-', '-', 'CentOS 6.5', '华东1（杭州）', 'nagios 国内', '-', '1', '监控服务器');
INSERT INTO `assets_hostinfo` VALUES ('260', 'DEFAULT', '120.26.56.205', '10.117.217.76', '2核', '4G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.8', '华东1（杭州）', '代练服务器', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('261', 'Singapore-WEB-212-95', '47.88.212.95', '10.25.163.203', '2核', '4G', '40G 100G', 'root', '2048', 'Cs@nidong#2017', '-', '-', 'CentOS 6.8', '新加坡', '新加坡预热站', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('262', 'ShadowsocksRR', '47.89.42.146', '10.26.64.122', '1核', '2G', '40G 100G', 'root', '2048', 'Nidong@vpn#2017', '180228', 'i-j6c9kugkrfwjoo8l7gg6', 'CentOS 6.5', '香港', 'VPN', '260.49', '1', 'VPN');
INSERT INTO `assets_hostinfo` VALUES ('263', 'Dubai-VPN-109-43', '47.91.109.43', '172.26.61.149', '4核', '8G', '40G 100G', 'root', '2048', 'Nidong@vpn#2017', '-', '-', 'CentOS 6.8', '阿联酋（迪拜）', '阿拉伯_香港vpn、MySQL', '-', '10', 'VPN');
INSERT INTO `assets_hostinfo` VALUES ('264', 'HongKong-OpenVPN-34-159', '103.14.34.159', '10.8.5.94', '4核', '8G', '40G 100G', 'root', '2048', 'Nidong@vpn#2017', '-', '-', 'CentOS 6.5', '香港', '香港vpn 原PPTP 过期', '-', '7', '退订');
INSERT INTO `assets_hostinfo` VALUES ('265', 'AWS-SG-51-165', '13.251.51.165', '172.31.16.40', '2核', '4G', '40G 100G', 'root', '2048', 'sg key', '-', '-', 'CentOS 6.9', '香港', '-', '-', '14', 'Blockchain');
INSERT INTO `assets_hostinfo` VALUES ('266', 'Vietnam-XinMa-Admin-235-57', '117.103.235.57', '10.83.10.57', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@nidong#2017#ma', '-', '-', 'CentOS 6.6', '越南', '新马后台', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('267', 'DEFAULT', '117.103.235.26', '10.83.10.26', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@nidong#2017#ma', '-', '-', 'CentOS 6.6', '越南', ' ', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('268', 'Vietnam-XinMa-GameMasterMySQL-235-27', '117.103.235.27', '10.83.10.27', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@nidong#2017#ma', '-', '-', 'CentOS 6.9', '越南', '游戏服数据库（主）', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('269', 'Vietnam-XinMa-GameSlaveMySQL-235-28', '117.103.235.28', '10.83.10.28', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@nidong#2017#ma', '-', '-', 'CentOS 6.9', '越南', '游戏服数据库（从）', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('270', 'Vietnam-XinMa-LogMasterMySQL-235-29', '117.103.235.29', '10.83.10.29', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@nidong#2017#ma', '-', '-', 'CentOS 6.9', '越南', 'Log数据库（主）', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('271', 'Vietnam-XinMa-LogSlaveMySQL-235-30', '117.103.235.30', '10.83.10.30', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@nidong#2017#ma', '-', '-', 'CentOS 6.9', '越南', 'Log数据库（从）', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('272', 'DEFAULT', '117.103.233.130', '10.83.10.130', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@nidong#2017#ma', '-', '-', 'CentOS 6.6', '越南', '备用', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('273', 'DEFAULT', '117.103.233.131', '10.83.10.131', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@nidong#2017#ma', '-', '-', 'CentOS 6.6', '越南', '备用', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('274', 'DEFAULT', '117.103.233.132', '10.83.10.132', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@nidong#2017#ma', '-', '-', 'CentOS 6.6', '越南', '备用', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('275', 'DEFAULT', '117.103.233.133', '10.83.10.133', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@nidong#2017#ma', '-', '-', 'CentOS 6.6', '越南', '备用', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('276', 'Vietnam-XinMa-Centre-235-19', '117.103.235.19', '117.103.235.19', '4核', '8G', '40G 100G', 'root', '2122', 'Cs@nidong#2017#ma', '-', '-', 'CentOS 6.6', '越南', ' ', '-', '11', '新马版本');
INSERT INTO `assets_hostinfo` VALUES ('277', 'Frankfurt-Russia-TestMySQL-72-57', '47.91.72.57', '172.16.224.8', '4核', '8G', '40G 100G', 'root', '2048', 'Cs@test#201712', '-', '-', 'CentOS 6.9', '德国（法兰克福）', '俄罗斯测试服数据库', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('278', 'Frankfurt-Russia-TestAdmin-79-61', '47.91.79.61', '172.16.224.7', '2核', '4G', '40G 100G', 'root', '2048', 'Cs@test#201712', '-', '-', 'CentOS 6.9', '德国（法兰克福）', '俄罗斯测试服后台', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('279', 'Singapore-Philippines-Admin-247-189', '47.88.247.189', '10.25.160.103', '2核', '4G', '40G 100G', 'root', '2048', 'Nd@ecs.2018', '-', '-', 'CentOS 6.9', '新加坡', '菲律宾后台', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('280', 'Virginia-Mexico-Admin-250-17', '47.90.250.17', '172.22.101.103', '2核', '4G', '40G 100G', 'root', '2048', 'Nd@ecs.2018', '-', '-', 'CentOS 6.9', '美国（弗吉尼亚）', '墨西哥后台', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('281', 'AWS-SG-202-91', '13.251.87.14', '172.31.18.221', '4核', '8G', '20G 600G', 'root', '22', 'Blockchain@2018 或者使用key：sg', '-', '-', 'Ubuntu 16.04 64位', '新加坡', '-', '-', '14', 'Blockchain');
INSERT INTO `assets_hostinfo` VALUES ('282', 'DEFAULT', '35.199.93.155', '10.158.0.3', '4核', '8G', '40G 100G', 'root', '2048', '国外key登陆', '-', '-', 'CentOS 6.9', 'southamerica-east1-a', '圣保罗数据库', '-', '3', '退订');
INSERT INTO `assets_hostinfo` VALUES ('283', 'DEFAULT', '47.91.47.111', '172.16.20.38', '2核', '4G', '40G 100G', 'root', '2048', 'Nd@ecs.2018', '-', 'i-p0wdg6ny2r65ot1v6x0d', 'CentOS 6.9', '澳大利亚（悉尼）', '澳大利亚后台', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('284', 'DEFAULT', '47.91.42.157', '172.16.20.37', '4核', '8G', '40G 100G', 'root', '2048', 'Nd@ecs.2018', '-', '-', 'CentOS 6.9', '澳大利亚（悉尼）', '澳大利亚数据库', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('285', 'DEFAULT', '47.254.133.116', '172.16.224.14', '4核', '8G', '40G 100G', 'root', '2048', 'Nd@ecs.2018', '-', '-', 'CentOS 6.9', '德国（法兰克福）', '多国版本 芬兰数据库', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('286', 'Singapore-MySQL-242-219', '47.88.242.219', '10.25.161.125', '4核', '8G', '40G 100G', 'root', '2048', 'Nd@ecs.2018', '-', '-', 'CentOS 6.9', '新加坡', '多国版本 新加坡数据库', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('287', 'Singapore-Admin-242-64', '47.88.242.64', '10.25.167.11', '2核', '4G', '40G 100G', 'root', '2048', 'Nd@ecs.2018', '-', '-', 'CentOS 6.9', '新加坡', '新加坡后台', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('288', 'ShangHai-H5GameWeb-23-121', '120.132.23.121', '10.23.161.212', '2核', '4G', '20G 100G', 'root', '2048', 'qaz@258@TGB369', '-', '-', 'CentOS 6.5', '上海二', 'H5小游戏官网 到期后不续 迁移至 101.37.68.15', '-', '2', '退订');
INSERT INTO `assets_hostinfo` VALUES ('289', '过期', '107.150.117.127', '10.29.93.91', '4核', '8G', '50G', 'administrator', '3389', 'ND@2017#win08', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '20171123测试', '-', '2', '退订');
INSERT INTO `assets_hostinfo` VALUES ('290', 'localhost', '47.254.130.94', '172.25.92.114', '2核', '4G', '50G', 'root', '6688', 'Xmnd##**$(#', '-', '-', 'CentOS 6.8', '德国（法兰克福）', '蓝碧姬 终极坦克测试 无需管理', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('291', 'HD-ZhMySQL-10-5', '47.97.10.5', '10.81.178.38', '8核', '16G', '40G 100G', 'root', '2048', 'Cs@ecs#201801', '829844', 'i-bp1h06giclmus9xzbmyo', 'CentOS 6.9', '华东1（杭州）', '国服数据库', '1550.00', '1', '国服');
INSERT INTO `assets_hostinfo` VALUES ('292', 'Blockchain-132-40', '47.96.132.40', '172.17.10.35', '2核', '4G', '40G 500G', 'root', '22', 'Blockchain@2018', '-', 'i-bp1e2zrpqb374v4z7hhb', 'Ubuntu 16.04 64位', '华东1（杭州）', '区块链测试 何随聪', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('293', 'i-t4n4dscq0vn6533e9e3v', '47.74.248.214', '192.168.100.238', '2核', '4G', '40G 100G', 'root', '22', 'Tank@2018#ecs', '-', 'i-t4n4dscq0vn6533e9e3v', 'Ubuntu 16.04 64位', '新加坡', '普通用户tank', '390.45', '1', '坦克雄心');
INSERT INTO `assets_hostinfo` VALUES ('294', '116', '47.90.209.116', '172.22.101.109', '8核', '16G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '美国（弗吉尼亚）', '美国国际服Photon', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('295', 'Frankfurt-73', '47.254.132.73', '172.16.224.29', '8核', '16G', '40G 100G', 'csadministrator', '2048', 'Cs@ecs#201801', '-', '-', 'Win2008 R2 x64', '德国（法兰克福）', '欧洲国际服Photon', '-', '1', '多国版本');
INSERT INTO `assets_hostinfo` VALUES ('296', 'en-89', '47.89.191.89', '172.22.101.87', '4核', '8G', '40G 100G', 'csadministrator', '2048', 'Cs@en#201712', '995336', 'i-0xi9ott5y0kmfjcf0sq7', 'Win2008 R2 x64', '美国（弗吉尼亚）', '国际服 C', '-', '1', '英文版');
INSERT INTO `assets_hostinfo` VALUES ('297', 'HD-151', '116.62.209.151', '172.16.10.227', '2核', '4G', '40G 100G', 'csadministrator', '2048', 'Audit@ecs#201801', '-', '-', 'Win2008 R2 x64', '华东1（杭州）', '手游版署审核 小白', '-', '1', '退订');
INSERT INTO `assets_hostinfo` VALUES ('298', 'i-t4n4dscq0vn6533e9e3w', '47.74.252.151', '192.168.100.239', '2核', '4G', '40G 100G', 'root', '22', 'Tank@2018#ecs', '-', 'i-t4n4dscq0vn6533e9e3w', 'Ubuntu 16.04 64位', '新加坡', '普通用户tank', '390.45', '1', '坦克雄心');
INSERT INTO `assets_hostinfo` VALUES ('299', 'i-t4n4dscq0vn6533e9e3u', '47.74.253.96', '192.168.100.240', '2核', '4G', '40G 100G', 'root', '22', 'Tank@2018#ecs', '-', 'i-t4n4dscq0vn6533e9e3u', 'Ubuntu 16.04 64位', '新加坡', '普通用户tank', '390.45', '1', '坦克雄心');
INSERT INTO `assets_hostinfo` VALUES ('300', 'i-t4n4dscq0vn6533e9e3x', '47.74.251.116', '192.168.100.241', '2核', '4G', '40G 100G', 'root', '22', 'Tank@2018#ecs', '-', 'i-t4n4dscq0vn6533e9e3x', 'Ubuntu 16.04 64位', '新加坡', '普通用户tank', '390.45', '1', '坦克雄心');
INSERT INTO `assets_hostinfo` VALUES ('301', 'i-t4nc93joel92psnprnui', '47.74.251.40', '192.168.100.242', '2核', '8G', '40G 100G', 'administrator', '3389', 'Tank@2018#ecs', '-', 'i-t4nc93joel92psnprnui', 'Win2012 数据中心 64位 中文', '新加坡', '坦克雄心-机器人', '903', '1', '坦克雄心');
INSERT INTO `assets_hostinfo` VALUES ('302', 'i-uf69wve43n2oml80kfpl', '47.100.191.14', '172.16.10.86', '2核', '2G', '40G 60G', 'root', '22', 'Xk@nd#2018', '-', 'i-uf69wve43n2oml80kfpl', 'Cent OS 6.8 X64', '华东2（上海）', '虚空物语 SDK', '113.85', '1', '虚空物语');
INSERT INTO `assets_hostinfo` VALUES ('303', 'i-uf62fj4e0s8x7qaoh9wz', '47.101.38.240', '172.16.10.89', '2核', '4G', '40G 120G', 'root', '22', 'Xk@nd#2018', '-', 'i-uf62fj4e0s8x7qaoh9wz', 'Cent OS 6.8 X64', '华东2（上海）', '虚空物语 Game1', '253.00', '1', '虚空物语');
INSERT INTO `assets_hostinfo` VALUES ('304', 'i-uf62fj4e0s8x7qaoh9wy', '106.14.172.40', '172.16.10.87', '2核', '4G', '40G 120G', 'root', '22', 'Xk@nd#2018', '-', 'i-uf62fj4e0s8x7qaoh9wy', 'Cent OS 6.8 X64', '华东2（上海）', '虚空物语 Game2', '253.00', '1', '虚空物语');
INSERT INTO `assets_hostinfo` VALUES ('305', 'i-uf62fj4e0s8x7qaoh9x0', '47.100.192.175', '172.16.10.88', '2核', '4G', '40G 120G', 'root', '22', 'Xk@nd#2018', '-', 'i-uf62fj4e0s8x7qaoh9x0', 'Cent OS 6.8 X64', '华东2（上海）', '虚空物语 Game3', '253.00', '1', '虚空物语');
INSERT INTO `assets_hostinfo` VALUES ('306', 'Aly-BlockchainS2', '47.97.107.89', '172.17.10.36', '4核', '8G', '20G 600G', 'root', '22', 'Blockchain@2018 或者使用key：sg', '-', '-', 'Ubuntu 16.04 64位', '华东1（杭州）', '-', '-', '14', 'Blockchain');
INSERT INTO `assets_hostinfo` VALUES ('307', 'i-wz9c03srb2pf8rts556p', '119.23.106.175', '172.16.10.35', '2核', '4G', '40G', 'administrator', '3389', 'Win@test#!2018', '-', '-', 'Win2008 R2 x64', '华南1（深圳）', '俞海-测试 小阳 邱竞力', '-', '14', '测试服');

-- ----------------------------
-- Table structure for assets_idcinfo
-- ----------------------------
DROP TABLE IF EXISTS `assets_idcinfo`;
CREATE TABLE `assets_idcinfo` (
  `idc_id` int(11) NOT NULL AUTO_INCREMENT,
  `idc_name` varchar(50) DEFAULT NULL,
  `login_url` varchar(100) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `provider` varchar(100) DEFAULT NULL,
  `linkman` varchar(100) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assets_idcinfo
-- ----------------------------
INSERT INTO `assets_idcinfo` VALUES ('1', '阿里云-公司', 'https://ecs.console.aliyun.com/#/home', 'cs@ugamehome.com', '123Qwe@@asD', '公司自营', 'dean', '公司账号');
INSERT INTO `assets_idcinfo` VALUES ('2', '公司-Ucloud', 'https://console.ucloud.cn/uhost/uhost', 'cmswat@ugamehome.com', '1qazxsw2#Edc~@', '白', '白', '公司账号');
INSERT INTO `assets_idcinfo` VALUES ('3', '谷歌主账号', 'https://console.cloud.google.com/', 'xiaodong.xd.zhu@gmail.com', 'aa1qazxsw2DVG', 'don', 'don', '公司 谷歌云服务器 The Killbox CO');
INSERT INTO `assets_idcinfo` VALUES ('4', '谷歌-开发者', 'https://developer.amazon.com/iap/M31BGMQPD2X6UH/iap_list.html', 'don@ugamehome.com', 'sd2hu%yuBui', 'don', 'don', '公司谷歌开发者账号');
INSERT INTO `assets_idcinfo` VALUES ('5', 'Zabbix 国外', 'http://zabbix.thekillboxgame.com/', 'admin', 'HJK87HKadda12', 'fish', 'fish', '国外监控');
INSERT INTO `assets_idcinfo` VALUES ('6', 'Zabbix 国内', 'http://121.43.155.125/zabbix/', 'admin', 'HJK87HKadda12', 'fish', 'fish', '国内服务器监控');
INSERT INTO `assets_idcinfo` VALUES ('7', 'Ucloud-VPN', 'https://console.ucloud.cn/uhost/uhost', 'dean@ugamehome.com', '1qazxsw23E', 'dean', 'dean', 'VPN-103.14.34.159');
INSERT INTO `assets_idcinfo` VALUES ('8', '公司内网', ' ', ' ', ' ', ' ', '网络管理员', '公司内网');
INSERT INTO `assets_idcinfo` VALUES ('9', '华为', ' ', ' ', ' ', ' ', ' ', '华为');
INSERT INTO `assets_idcinfo` VALUES ('10', '阿里云-王总', 'https://account-intl.aliyun.com/login/login.htm?spm=a2c49.11131515.0.0.wReYuz', 'sager@dcp.co.ae', 'qhdzjkLEON007', ' ', ' ', '阿拉伯相关服务器');
INSERT INTO `assets_idcinfo` VALUES ('11', '越南', ' ', ' ', ' ', ' ', ' ', null);
INSERT INTO `assets_idcinfo` VALUES ('12', '腾讯云', null, null, null, null, null, null);
INSERT INTO `assets_idcinfo` VALUES ('13', 'SSL 证书', 'https://www.myssl.cn/center-order/sslorderindex.html#content', 'wangy@ugamehome.com', 'Password1', null, 'dean', '域名清单：	*.thekillboxgame.com');
INSERT INTO `assets_idcinfo` VALUES ('14', 'AWS', 'https://console.aws.amazon.com/console/home', 'xyl@ugamehome.com', 'AWS@nd#@nd2018', null, '徐跃龙', null);

-- ----------------------------
-- Table structure for auth_group
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
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add IDC 信息', '7', 'add_idcinfo');
INSERT INTO `auth_permission` VALUES ('20', 'Can change IDC 信息', '7', 'change_idcinfo');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete IDC 信息', '7', 'delete_idcinfo');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 服务器信息', '8', 'add_hostinfo');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 服务器信息', '8', 'change_hostinfo');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 服务器信息', '8', 'delete_hostinfo');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 分组管理', '9', 'add_groupinfo');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 分组管理', '9', 'change_groupinfo');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 分组管理', '9', 'delete_groupinfo');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$100000$sBOEPvzrLhRp$m1TteTMUF8d3u77/twCI7rciqpKU/tUHNsUTjBijLfQ=', '2018-06-25 08:28:08.232520', '1', 'root', '', '', 'yuj0607@163.com', '1', '1', '2018-06-22 05:22:17.357488');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2018-06-22 06:30:41.250360', '1', '管理后台', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2018-06-22 06:36:16.016753', '2', 'Default', '1', '[{\"added\": {}}]', '9', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('9', 'assets', 'groupinfo');
INSERT INTO `django_content_type` VALUES ('8', 'assets', 'hostinfo');
INSERT INTO `django_content_type` VALUES ('7', 'assets', 'idcinfo');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-06-22 05:21:16.578930');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2018-06-22 05:21:19.223696');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2018-06-22 05:21:19.776064');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-06-22 05:21:19.789072');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-06-22 05:21:20.122294');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-06-22 05:21:20.318425');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-06-22 05:21:20.510553');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-06-22 05:21:20.522561');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-06-22 05:21:20.701681');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-06-22 05:21:20.705685');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-06-22 05:21:20.719693');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2018-06-22 05:21:20.901814');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2018-06-22 05:21:21.093943');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2018-06-22 05:21:21.298079');
INSERT INTO `django_migrations` VALUES ('15', 'assets', '0001_initial', '2018-06-22 05:35:19.425368');
INSERT INTO `django_migrations` VALUES ('16', 'assets', '0002_auto_20180622_1342', '2018-06-22 05:42:11.459922');
INSERT INTO `django_migrations` VALUES ('17', 'assets', '0003_auto_20180622_1345', '2018-06-22 05:45:40.773597');
INSERT INTO `django_migrations` VALUES ('18', 'assets', '0004_groupinfo', '2018-06-22 06:28:29.734599');
INSERT INTO `django_migrations` VALUES ('19', 'assets', '0005_auto_20180622_1437', '2018-06-22 06:37:48.172247');
INSERT INTO `django_migrations` VALUES ('20', 'assets', '0006_auto_20180622_1442', '2018-06-22 06:42:39.610653');
INSERT INTO `django_migrations` VALUES ('21', 'assets', '0007_delete_groupinfo', '2018-06-22 06:45:55.351387');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('hhw10ri2sg47cypudbrinj3zpidxdeoc', 'MGExYTcyMGUzOTFlYjMzN2NiYjlkODhkYWFkMzA1ODhiNTBlNDI2Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDhiZWQ3ZjNiNTllZjQyNzdmYTA4NDFmYjExMWUxNWI5MmU5ODI0In0=', '2018-06-23 00:18:43.199549');
INSERT INTO `django_session` VALUES ('j5am2ikok9x7m1r6p223ifma483i05tw', 'MGExYTcyMGUzOTFlYjMzN2NiYjlkODhkYWFkMzA1ODhiNTBlNDI2Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDhiZWQ3ZjNiNTllZjQyNzdmYTA4NDFmYjExMWUxNWI5MmU5ODI0In0=', '2018-06-26 01:08:08.443829');
