/*
Navicat MySQL Data Transfer

Source Server         : MysqlLocal
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : abc

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-03-27 14:48:35
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
-- Table structure for `tbl_aa1`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_aa1`;
CREATE TABLE `tbl_aa1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `udf_attr` float DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_aa1
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_aa2`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_aa2`;
CREATE TABLE `tbl_aa2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `udf_attr` float DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_aa2
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_aa3`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_aa3`;
CREATE TABLE `tbl_aa3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `udf_attr` float DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_aa3
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_aa4`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_aa4`;
CREATE TABLE `tbl_aa4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `udf_attr` float DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_aa4
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_aa5`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_aa5`;
CREATE TABLE `tbl_aa5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `udf_attr` float DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_aa5
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_acm`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acm`;
CREATE TABLE `tbl_acm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_bpd_id` bigint(20) DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  `tbl_cdm_id` bigint(20) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `value_add` float DEFAULT NULL,
  `udf_attr_1` float DEFAULT NULL,
  `udf_attr_2` float DEFAULT NULL,
  `udf_attr_3` float DEFAULT NULL,
  `udf_attr_4` float DEFAULT NULL,
  `udf_attr_5` float DEFAULT NULL,
  `udf_attr_6` float DEFAULT NULL,
  `udf_attr_7` float DEFAULT NULL,
  `udf_attr_8` float DEFAULT NULL,
  `udf_attr_9` float DEFAULT NULL,
  `costtype` varchar(10) DEFAULT NULL,
  `cost_1` float DEFAULT NULL,
  `cost_2` float DEFAULT NULL,
  `cost_3` float DEFAULT NULL,
  `cost_4` float DEFAULT NULL,
  `rate_1` float DEFAULT NULL,
  `rate_2` float DEFAULT NULL,
  `rate_3` float DEFAULT NULL,
  `rate_4` float DEFAULT NULL,
  `rate_t` float DEFAULT NULL,
  `fte` float DEFAULT NULL,
  `fte_cost` float DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `head_count` float DEFAULT NULL,
  `val_cost` float DEFAULT NULL,
  `val_cost_r` float DEFAULT NULL,
  `val_cost_t` float DEFAULT NULL,
  `calcvalpct` float DEFAULT NULL,
  `capacity` float DEFAULT NULL,
  `cap_cost_1` float DEFAULT NULL,
  `cap_cost_2` float DEFAULT NULL,
  `cap_cost_3` float DEFAULT NULL,
  `cap_cost_4` float DEFAULT NULL,
  `cap_cost` float DEFAULT NULL,
  `scap_cost_1` float DEFAULT NULL,
  `scap_cost_2` float DEFAULT NULL,
  `scap_cost_3` float DEFAULT NULL,
  `scap_cost_4` float DEFAULT NULL,
  `cap_rate_1` float DEFAULT NULL,
  `cap_rate_2` float DEFAULT NULL,
  `cap_rate_3` float DEFAULT NULL,
  `cap_rate_4` float DEFAULT NULL,
  `cap_adj` float DEFAULT NULL,
  `udn_acm_1` float DEFAULT NULL,
  `udn_acm_2` float DEFAULT NULL,
  `udn_acm_3` float DEFAULT NULL,
  `udn_acm_4` float DEFAULT NULL,
  `cycle_time` float DEFAULT NULL,
  `resource` varchar(10) DEFAULT NULL,
  `rd_tot_qty` float DEFAULT NULL,
  `budget_amt` float DEFAULT NULL,
  `budget_rate` float DEFAULT NULL,
  `rootpct` float DEFAULT NULL,
  `root_cost` float DEFAULT NULL,
  `scost_1` float DEFAULT NULL,
  `scost_2` float DEFAULT NULL,
  `scost_3` float DEFAULT NULL,
  `scost_4` float DEFAULT NULL,
  `budgettype` varchar(10) DEFAULT NULL,
  `direct_1` float DEFAULT NULL,
  `direct_2` float DEFAULT NULL,
  `direct_3` float DEFAULT NULL,
  `direct_4` float DEFAULT NULL,
  `direct_t` float DEFAULT NULL,
  `budgettime` float DEFAULT NULL,
  `budgetcap` float DEFAULT NULL,
  `budgetchg` float DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_acm
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_bpd`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bpd`;
CREATE TABLE `tbl_bpd` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_bpm_id` bigint(20) DEFAULT NULL,
  `activity` varchar(10) DEFAULT NULL,
  `sequence` float DEFAULT NULL,
  `step_name` varchar(100) DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `value_add` float DEFAULT NULL,
  `nonvalcost` float DEFAULT NULL,
  `fte` float DEFAULT NULL,
  `cap_cost` float DEFAULT NULL,
  `udf_bpd_1` float DEFAULT NULL,
  `udf_bpd_2` float DEFAULT NULL,
  `udn_bpd_1` float DEFAULT NULL,
  `udn_bpd_2` float DEFAULT NULL,
  `udn_bpd_3` float DEFAULT NULL,
  `udn_bpd_4` float DEFAULT NULL,
  `cycle_time` float DEFAULT NULL,
  `targettime` float DEFAULT NULL,
  `bpd_uda_1` float DEFAULT NULL,
  `bpd_uda_2` float DEFAULT NULL,
  `bpd_uda_3` float DEFAULT NULL,
  `bpd_uda_4` float DEFAULT NULL,
  `cost_1` float DEFAULT NULL,
  `cost_2` float DEFAULT NULL,
  `cost_3` float DEFAULT NULL,
  `cost_4` float DEFAULT NULL,
  `cost_t` float DEFAULT NULL,
  `cost_r` float DEFAULT NULL,
  `rd_qty` float DEFAULT NULL,
  `budget_amt` float DEFAULT NULL,
  `head_count` float DEFAULT NULL,
  `shape_name` varchar(50) DEFAULT NULL,
  `shape_num` int(11) DEFAULT NULL,
  `page_num` int(11) DEFAULT NULL,
  `useforcost` float DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `rootcost` float DEFAULT NULL,
  `rootpct` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_bpd
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_bpm`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bpm`;
CREATE TABLE `tbl_bpm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `process` varchar(10) DEFAULT NULL,
  `proc_ext` varchar(10) DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `sten_name` varchar(50) DEFAULT NULL,
  `cap_cost` float DEFAULT NULL,
  `fte` float DEFAULT NULL,
  `value_add` float DEFAULT NULL,
  `nonvalcost` float DEFAULT NULL,
  `bpm_cost_1` float DEFAULT NULL,
  `bpm_cost_2` float DEFAULT NULL,
  `bpm_cost_3` float DEFAULT NULL,
  `bpm_cost_4` float DEFAULT NULL,
  `bpm_costt` float DEFAULT NULL,
  `bpm_uda_1` float DEFAULT NULL,
  `bpm_uda_2` float DEFAULT NULL,
  `bpm_uda_3` float DEFAULT NULL,
  `bpm_uda_4` float DEFAULT NULL,
  `udf_bpm_1` float DEFAULT NULL,
  `udf_bpm_2` float DEFAULT NULL,
  `udn_bpd_1` float DEFAULT NULL,
  `udn_bpd_2` float DEFAULT NULL,
  `cycle_time` float DEFAULT NULL,
  `resource` varchar(10) DEFAULT NULL,
  `rd_tot_qty` float DEFAULT NULL,
  `head_count` float DEFAULT NULL,
  `budget_amt` float DEFAULT NULL,
  `proexclude` float DEFAULT NULL,
  `rootcost` float DEFAULT NULL,
  `rootpct` float DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_bpm
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_cdm`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cdm`;
CREATE TABLE `tbl_cdm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cost_driver` varchar(10) DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  `roundit` float DEFAULT NULL,
  `sudn_cd` float DEFAULT NULL,
  `mudn_cd` float DEFAULT NULL,
  `mudn_uom` float DEFAULT NULL,
  `sweight` float DEFAULT NULL,
  `mweight` float DEFAULT NULL,
  `budgettype` varchar(10) DEFAULT NULL,
  `coefficient` float DEFAULT NULL,
  `constant` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_cdm
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_efx`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_efx`;
CREATE TABLE `tbl_efx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbl_exp_id` int(11) DEFAULT NULL,
  `tbl_emp_id` int(11) DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `cost_nbr` float DEFAULT NULL,
  `rd_qty` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `coeffisient` float DEFAULT NULL,
  `budgettime` float DEFAULT NULL,
  `budgetchg` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_efx
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_emp`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_loc_id` int(11) DEFAULT NULL,
  `employee_id` varchar(9) DEFAULT NULL,
  `ssn` varchar(12) DEFAULT NULL,
  `first` varchar(12) DEFAULT NULL,
  `last` varchar(20) DEFAULT NULL,
  `mi` varchar(1) DEFAULT NULL,
  `wages` float DEFAULT NULL,
  `ot_premium` float DEFAULT NULL,
  `benefits` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `class` varchar(5) DEFAULT NULL,
  `position` varchar(25) DEFAULT NULL,
  `budget_1` float DEFAULT NULL,
  `budget_2` float DEFAULT NULL,
  `head_count` float DEFAULT NULL,
  `fte_count` float DEFAULT NULL,
  `tbl_rdm_id` int(11) DEFAULT NULL,
  `rd_tot_qty` float DEFAULT NULL,
  `bugettype` varchar(10) DEFAULT NULL,
  `cost_nbr` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_exp`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_exp`;
CREATE TABLE `tbl_exp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbl_loc_id` int(11) DEFAULT NULL,
  `account` varchar(10) DEFAULT NULL,
  `descript` varchar(25) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `budget_1` float DEFAULT NULL,
  `budget_2` float DEFAULT NULL,
  `exp_level` int(11) DEFAULT NULL,
  `tbl_rdm_id` int(11) DEFAULT NULL,
  `rd_tot_qty` float DEFAULT NULL,
  `budgettype` varchar(10) DEFAULT NULL,
  `budgetchg` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_exp
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_loc`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_loc`;
CREATE TABLE `tbl_loc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(5) DEFAULT NULL,
  `costcenter` varchar(10) DEFAULT NULL,
  `loc_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_loc
-- ----------------------------

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
  `ref_tbl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES ('1', null, 'P', 'Dashboard', null, null, '1', null);
INSERT INTO `tbl_menu` VALUES ('2', null, 'P', 'Setting', null, null, '1', null);
INSERT INTO `tbl_menu` VALUES ('100', '1', 'C', 'Dashboard 1', 'home/modul/100', 'icon-group_key', '1', null);
INSERT INTO `tbl_menu` VALUES ('200', '2', 'C', 'User Management', 'home/modul/200', 'icon-group', '1', 'tbl_user');
INSERT INTO `tbl_menu` VALUES ('201', '2', 'C', 'User Group', 'home/modul/201', 'icon-group', '1', 'cl_user_group');
INSERT INTO `tbl_menu` VALUES ('202', '2', 'C', 'LogOut', 'login/logout', null, '1', null);

-- ----------------------------
-- Table structure for `tbl_prd`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_prd`;
CREATE TABLE `tbl_prd` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_prm_id` bigint(20) DEFAULT NULL,
  `tbl_cdm_id` bigint(20) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `unweight` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_prd
-- ----------------------------

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
-- Table structure for `tbl_prm`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_prm`;
CREATE TABLE `tbl_prm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prod_id` varchar(10) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  `udn_prm_1` float DEFAULT NULL,
  `udn_prm_2` float DEFAULT NULL,
  `udn_prm_3` float DEFAULT NULL,
  `udn_prm_4` float DEFAULT NULL,
  `udn_prm_5` float DEFAULT NULL,
  `udn_prm_6` float DEFAULT NULL,
  `udf_prm_1` float DEFAULT NULL,
  `udf_prm_2` float DEFAULT NULL,
  `udf_prm_3` float DEFAULT NULL,
  `udf_prm_4` float DEFAULT NULL,
  `udf_prm_5` float DEFAULT NULL,
  `udf_prm_6` float DEFAULT NULL,
  `udf_prm_7` float DEFAULT NULL,
  `udf_prm_8` float DEFAULT NULL,
  `qtyproduce` float DEFAULT NULL,
  `unit_cost` float DEFAULT NULL,
  `abc_cost` float DEFAULT NULL,
  `ovh_cost` float DEFAULT NULL,
  `revenue` float DEFAULT NULL,
  `profitable` float DEFAULT NULL,
  `abc_lower` float DEFAULT NULL,
  `ovh_lower` float DEFAULT NULL,
  `abc_cost_r` float DEFAULT NULL,
  `ovh_cost_r` float DEFAULT NULL,
  `rlu_date` date DEFAULT NULL,
  `rlu_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_prm
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_ptp`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ptp`;
CREATE TABLE `tbl_ptp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prod_idt` varchar(10) DEFAULT NULL,
  `prod_idf` varchar(10) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `sell_price` float DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `revenue` float DEFAULT NULL,
  `tbl_prm_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_ptp
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_rdm`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rdm`;
CREATE TABLE `tbl_rdm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(10) DEFAULT NULL,
  `descript` varchar(40) DEFAULT NULL,
  `rdm_qty` int(11) DEFAULT NULL,
  `budtypeupe` varchar(10) DEFAULT NULL,
  `costnbrupe` float DEFAULT NULL,
  `coeffupe` float DEFAULT NULL,
  `budtypeupx` varchar(10) DEFAULT NULL,
  `costnbrupx` float DEFAULT NULL,
  `coeffupx` float DEFAULT NULL,
  `bydtypeupa` varchar(10) DEFAULT NULL,
  `costnbrupa` float DEFAULT NULL,
  `coeffupa` float DEFAULT NULL,
  `actorpro` float DEFAULT NULL,
  `batch` float DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `constant` float DEFAULT NULL,
  `coefficient` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_rdm
-- ----------------------------

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
