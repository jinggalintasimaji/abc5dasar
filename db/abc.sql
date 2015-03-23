/*
Navicat MySQL Data Transfer

Source Server         : MysqlLocal
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : abc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-03-23 14:19:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cl_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `cl_user_group`;
CREATE TABLE `cl_user_group` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `group_user` varchar(200) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cl_user_group
-- ----------------------------
INSERT INTO `cl_user_group` VALUES ('1', 'Administrator', '1');
INSERT INTO `cl_user_group` VALUES ('2', 'Guest', '1');

-- ----------------------------
-- Table structure for `tbl_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `id` smallint(6) NOT NULL,
  `parent_id` smallint(6) DEFAULT NULL,
  `type_menu` varchar(1) DEFAULT NULL,
  `nama_menu` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `icon_menu` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES ('1', null, 'P', 'Dashboard', null, null, '1');
INSERT INTO `tbl_menu` VALUES ('2', null, 'P', 'Setting', null, null, '1');
INSERT INTO `tbl_menu` VALUES ('100', '1', 'C', 'Dashboard 1', 'home/modul/100', 'icon-group_key', '1');
INSERT INTO `tbl_menu` VALUES ('200', '2', 'C', 'User Management', 'home/modul/200', 'icon-group', '1');
INSERT INTO `tbl_menu` VALUES ('201', '2', 'C', 'User Group', 'home/modul/201', 'icon-group', '1');
INSERT INTO `tbl_menu` VALUES ('202', '2', 'C', 'LogOut', 'login/logout', null, '1');

-- ----------------------------
-- Table structure for `tbl_prev_group`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_prev_group`;
CREATE TABLE `tbl_prev_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cl_user_group_id` smallint(6) DEFAULT NULL,
  `tbl_menu_id` int(11) DEFAULT NULL,
  `buat` smallint(6) DEFAULT NULL,
  `baca` smallint(6) DEFAULT NULL,
  `ubah` smallint(6) DEFAULT NULL,
  `hapus` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_prev_group
-- ----------------------------
INSERT INTO `tbl_prev_group` VALUES ('1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('2', '1', '100', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('3', '1', '2', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('4', '1', '200', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('5', '1', '201', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('6', '2', '1', '0', '1', '0', '0');
INSERT INTO `tbl_prev_group` VALUES ('7', '2', '100', '0', '1', '0', '0');
INSERT INTO `tbl_prev_group` VALUES ('9', '1', '202', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('10', '2', '202', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('11', '2', '2', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `cl_user_group_id` smallint(6) DEFAULT NULL,
  `nama_lengkap` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL,
  `tlp` varchar(15) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'goyz', 'eRuaCnTE754NHKNbPkeCHItt1ViJh/Nz5coPwx9K80khBoaRJLozwWlVKYpt1DIEjklv65vK83gTrxkwvHZKgw', '1', 'Goyz Crotz', 'goyz87@gmail.com', 'L', '0251-388716', '1');
INSERT INTO `tbl_user` VALUES ('2', 'user', 'eRuaCnTE754NHKNbPkeCHItt1ViJh/Nz5coPwx9K80khBoaRJLozwWlVKYpt1DIEjklv65vK83gTrxkwvHZKgw', '2', 'User Guest', null, 'L', null, '1');
