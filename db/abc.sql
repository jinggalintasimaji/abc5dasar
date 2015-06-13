/*
Navicat MySQL Data Transfer

Source Server         : Mysql - Localhost
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : pelindo

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2015-06-13 10:03:29
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
  `pid` bigint(20) DEFAULT NULL,
  `tbl_model_id` int(11) DEFAULT NULL,
  `tbl_cdm_id` bigint(20) DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `value_add` float DEFAULT NULL,
  `udf_attr_1` varchar(200) DEFAULT NULL,
  `udf_attr_2` varchar(200) DEFAULT NULL,
  `udf_attr_3` varchar(200) DEFAULT NULL,
  `udf_attr_4` varchar(200) DEFAULT NULL,
  `udf_attr_5` varchar(200) DEFAULT NULL,
  `udf_attr_6` varchar(200) DEFAULT NULL,
  `udf_attr_7` varchar(200) DEFAULT NULL,
  `udf_attr_8` varchar(200) DEFAULT NULL,
  `udf_attr_9` varchar(200) DEFAULT NULL,
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
  `tbl_rdm_id` bigint(20) DEFAULT NULL,
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
  `bulan` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `activity_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_acm
-- ----------------------------
INSERT INTO `tbl_acm` VALUES ('114', null, '1', null, 'KEHUMASAN & PROMOSI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10100');
INSERT INTO `tbl_acm` VALUES ('115', null, '1', null, 'AKTIVITAS PPSA', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10200');
INSERT INTO `tbl_acm` VALUES ('116', null, '1', null, 'Menerima PPKB dan Kelengkapannya', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10201');
INSERT INTO `tbl_acm` VALUES ('117', null, '1', null, 'Entri Data PPKB yang Diterima', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10202');
INSERT INTO `tbl_acm` VALUES ('118', null, '1', null, 'Rapat Perencanaan Tambat & BM', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10203');
INSERT INTO `tbl_acm` VALUES ('119', null, '1', null, 'Rencana Penetapan Pel. Kapal & Barang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10204');
INSERT INTO `tbl_acm` VALUES ('120', null, '1', null, 'Entri Data atas PPKB yg telah Ditetapkan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10205');
INSERT INTO `tbl_acm` VALUES ('121', null, '1', null, 'Mendistribusikan PPKB ke Unit Operasi', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10206');
INSERT INTO `tbl_acm` VALUES ('122', null, '1', null, 'Memproses PPKB Kalimas', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10207');
INSERT INTO `tbl_acm` VALUES ('123', null, '1', null, 'PELAYANAN PROPERTI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10300');
INSERT INTO `tbl_acm` VALUES ('124', null, '1', null, 'Pelayanan Permohonan HPL', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10301');
INSERT INTO `tbl_acm` VALUES ('125', null, '1', null, 'Pelayanan Permohonan Air Umum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10302');
INSERT INTO `tbl_acm` VALUES ('126', null, '1', null, 'Pelayanan Permohonan Listrik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10303');
INSERT INTO `tbl_acm` VALUES ('127', null, '1', null, 'Pelayanan Pengusahaan Iklan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10304');
INSERT INTO `tbl_acm` VALUES ('128', null, '1', null, 'Survey Lapangan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10305');
INSERT INTO `tbl_acm` VALUES ('129', null, '1', null, 'Pengurusan Izin Prinsip', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10306');
INSERT INTO `tbl_acm` VALUES ('130', null, '1', null, 'Menyusun RAB Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10307');
INSERT INTO `tbl_acm` VALUES ('131', null, '1', null, 'Menyusun RAB Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10308');
INSERT INTO `tbl_acm` VALUES ('132', null, '1', null, 'Pembuatan Kontrak Properti', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10309');
INSERT INTO `tbl_acm` VALUES ('133', null, '1', null, 'MELAYANI KELUHAN PELANGGAN', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '10400');
INSERT INTO `tbl_acm` VALUES ('134', null, '1', null, 'Penyusunan Anggaran', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '20100');
INSERT INTO `tbl_acm` VALUES ('135', null, '1', null, 'Pengendalian Anggaran', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '20200');
INSERT INTO `tbl_acm` VALUES ('136', null, '1', null, 'Penyusunan Laporan Operasional', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '20301');
INSERT INTO `tbl_acm` VALUES ('137', null, '1', null, 'Penyusunan Laporan Keuangan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '20302');
INSERT INTO `tbl_acm` VALUES ('138', null, '1', null, 'Persiapan Operasi Pemanduan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30101');
INSERT INTO `tbl_acm` VALUES ('139', '0', '1', null, 'MEMANDU KAPAL MASUK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30102');
INSERT INTO `tbl_acm` VALUES ('140', '0', '1', null, 'MEMANDU KAPAL PINDAH', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30103');
INSERT INTO `tbl_acm` VALUES ('141', '0', '1', null, 'MEMANDU KAPAL KELUAR', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30104');
INSERT INTO `tbl_acm` VALUES ('142', null, '1', null, 'Mencatat & Entri Data Realisasi Pandu', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30105');
INSERT INTO `tbl_acm` VALUES ('143', '140', '1', null, 'Antar Pandu Menuju ke Kapal (BUOY 5)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30106');
INSERT INTO `tbl_acm` VALUES ('144', '141', '1', null, 'Antar Pandu Menuju ke Kapal (REDE)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30107');
INSERT INTO `tbl_acm` VALUES ('145', '139', '1', null, 'Menjemput Pandu di Kapal (BUOY 5)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30108');
INSERT INTO `tbl_acm` VALUES ('146', '139', '1', null, 'Menjemput Pandu di Kapal (REDE)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30109');
INSERT INTO `tbl_acm` VALUES ('147', null, '1', null, 'Mobilitas Pandu di Darat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30110');
INSERT INTO `tbl_acm` VALUES ('148', null, '1', null, 'Komunikasi Radio VHF', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30111');
INSERT INTO `tbl_acm` VALUES ('149', null, '1', null, 'Aktivitas di Karang Jamuang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30112');
INSERT INTO `tbl_acm` VALUES ('150', null, '1', null, 'Menyiapkan Armada Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30113');
INSERT INTO `tbl_acm` VALUES ('151', null, '1', null, 'Pemanduan - MPI-S022', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30114');
INSERT INTO `tbl_acm` VALUES ('152', null, '1', null, 'Pemanduan - MPI-S044', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30115');
INSERT INTO `tbl_acm` VALUES ('153', null, '1', null, 'Pemanduan - MPI-S045', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30116');
INSERT INTO `tbl_acm` VALUES ('154', null, '1', null, 'Pemanduan - MPI-S046', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30117');
INSERT INTO `tbl_acm` VALUES ('155', null, '1', null, 'Pemanduan - MPI-S024', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30118');
INSERT INTO `tbl_acm` VALUES ('156', null, '1', null, 'Penundaan - KT ARTAMA III', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30119');
INSERT INTO `tbl_acm` VALUES ('157', null, '1', null, 'Penundaan - KT ANOMAN I', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30120');
INSERT INTO `tbl_acm` VALUES ('158', null, '1', null, 'Penundaan - KT ANOMAN II', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30121');
INSERT INTO `tbl_acm` VALUES ('159', null, '1', null, 'Penundaan - KT BIMA IV', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30122');
INSERT INTO `tbl_acm` VALUES ('160', null, '1', null, 'Penundaan - KT SUBALI II', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30123');
INSERT INTO `tbl_acm` VALUES ('161', null, '1', null, 'Penundaan - KT SELAT BALI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30124');
INSERT INTO `tbl_acm` VALUES ('162', null, '1', null, 'Kepil - KP WANARA III', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30125');
INSERT INTO `tbl_acm` VALUES ('163', null, '1', null, 'Kepil - KP WANARA IV', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30126');
INSERT INTO `tbl_acm` VALUES ('164', null, '1', null, 'Kepil - KP WANARA V', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30127');
INSERT INTO `tbl_acm` VALUES ('165', null, '1', null, 'MELAKUKAN PENUNDAAN', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30128');
INSERT INTO `tbl_acm` VALUES ('166', null, '1', null, 'KT Menuju/Kembali ke/dari Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30129');
INSERT INTO `tbl_acm` VALUES ('167', null, '1', null, 'Melakukan Pengepilan Laut', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30130');
INSERT INTO `tbl_acm` VALUES ('168', null, '1', null, 'PELAYANAN LABUH', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30131');
INSERT INTO `tbl_acm` VALUES ('169', null, '1', null, 'Monitoring Kapal Berlabuh', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30132');
INSERT INTO `tbl_acm` VALUES ('170', null, '1', null, 'Membuat Jurnal Kapal (LT)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30133');
INSERT INTO `tbl_acm` VALUES ('171', null, '1', null, 'PELAYANAN TAMBAT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30134');
INSERT INTO `tbl_acm` VALUES ('172', null, '1', null, 'Monitoring Kapal Tambat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30135');
INSERT INTO `tbl_acm` VALUES ('173', null, '1', null, 'Updating Posisi Tambat Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30136');
INSERT INTO `tbl_acm` VALUES ('174', null, '1', null, 'Membuat dan Mendistribusikan 2A-2 (LT)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30137');
INSERT INTO `tbl_acm` VALUES ('175', null, '1', null, 'PELAYANAN AIR TONGKANG', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30138');
INSERT INTO `tbl_acm` VALUES ('176', null, '1', null, 'PELAYANAN AIR DERMAGA', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30139');
INSERT INTO `tbl_acm` VALUES ('177', null, '1', null, 'Persiapan Pelayanan Air Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30140');
INSERT INTO `tbl_acm` VALUES ('178', null, '1', null, 'Penundaan - KT PATRA TUNDA', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30171');
INSERT INTO `tbl_acm` VALUES ('179', null, '1', null, 'Penundaan - KT MAJU INDAH', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30172');
INSERT INTO `tbl_acm` VALUES ('180', null, '1', null, 'Pengawasan Bongkar/Muat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30201');
INSERT INTO `tbl_acm` VALUES ('181', null, '1', null, 'Membuat KUB', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30202');
INSERT INTO `tbl_acm` VALUES ('182', null, '1', null, 'Mengesahkan LKBM', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30203');
INSERT INTO `tbl_acm` VALUES ('183', null, '1', null, 'Penumpukan Barang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30204');
INSERT INTO `tbl_acm` VALUES ('184', null, '1', null, 'Penumpukan Peti Kemas Konvensional', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30205');
INSERT INTO `tbl_acm` VALUES ('185', null, '1', null, 'PENGAWASAN B/M KALIMAS', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30207');
INSERT INTO `tbl_acm` VALUES ('186', null, '1', null, 'PAKET DERMAGA KALIMAS', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30208');
INSERT INTO `tbl_acm` VALUES ('187', null, '1', null, 'Membuat & Mendistribusikan Bentuk 2B', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30209');
INSERT INTO `tbl_acm` VALUES ('188', null, '1', null, 'USAHA TERMINAL', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30260');
INSERT INTO `tbl_acm` VALUES ('189', null, '1', null, 'Pelayanan Stevedoring', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30261');
INSERT INTO `tbl_acm` VALUES ('190', null, '1', null, 'Pelayanan Cargodoring', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30262');
INSERT INTO `tbl_acm` VALUES ('191', null, '1', null, 'Pelayanan Delivery Charges', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30264');
INSERT INTO `tbl_acm` VALUES ('192', null, '1', null, 'PELAYANAN DERMAGA (TON)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30291');
INSERT INTO `tbl_acm` VALUES ('193', null, '1', null, 'PELAYANAN DERMAGA (M3)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30292');
INSERT INTO `tbl_acm` VALUES ('194', null, '1', null, 'PELAYANAN DERMAGA (EKOR)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30293');
INSERT INTO `tbl_acm` VALUES ('195', null, '1', null, 'PELAYANAN PENUMPUKAN (TON)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30294');
INSERT INTO `tbl_acm` VALUES ('196', null, '1', null, 'PELAYANAN PENUMPUKAN (M3)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30295');
INSERT INTO `tbl_acm` VALUES ('197', null, '1', null, 'MONITORING PROPERTI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30301');
INSERT INTO `tbl_acm` VALUES ('198', null, '1', null, 'Monitoring Docking Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30302');
INSERT INTO `tbl_acm` VALUES ('199', null, '1', null, 'Pemeriksaan Bahan Berbahaya', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30303');
INSERT INTO `tbl_acm` VALUES ('200', null, '1', null, 'PEMADAMAN KEBAKARAN', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30304');
INSERT INTO `tbl_acm` VALUES ('201', null, '1', null, 'Pengawasan Peralatan PMK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30305');
INSERT INTO `tbl_acm` VALUES ('202', null, '1', null, 'Memasang Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30306');
INSERT INTO `tbl_acm` VALUES ('203', null, '1', null, 'Pencatatan Pemakaian Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30307');
INSERT INTO `tbl_acm` VALUES ('204', null, '1', null, 'PELAYANAN AIR TRUK TANGKI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30308');
INSERT INTO `tbl_acm` VALUES ('205', null, '1', null, 'PELAYANAN AIR SAMBUNGAN TETAP', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30309');
INSERT INTO `tbl_acm` VALUES ('206', null, '1', null, 'Memasang Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30310');
INSERT INTO `tbl_acm` VALUES ('207', null, '1', null, 'OPERASI PENGUSAHAAN LISTRIK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30311');
INSERT INTO `tbl_acm` VALUES ('208', null, '1', null, 'PENJUALAN PAS PENUMPANG', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30401');
INSERT INTO `tbl_acm` VALUES ('209', null, '1', null, 'Penjualan Pas Penumpang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30402');
INSERT INTO `tbl_acm` VALUES ('210', null, '1', null, 'RETRIBUSI ALAT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30403');
INSERT INTO `tbl_acm` VALUES ('211', null, '1', null, 'RETRIBUSI PARKIR', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30404');
INSERT INTO `tbl_acm` VALUES ('212', null, '1', null, 'PELAYANAN TERMINAL RO-RO', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30501');
INSERT INTO `tbl_acm` VALUES ('213', null, '1', null, 'PELAYANAN TERMINAL PENUMPANG', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30502');
INSERT INTO `tbl_acm` VALUES ('214', null, '1', null, 'PENYEWAAN & PENGUSAHAAN ALAT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30601');
INSERT INTO `tbl_acm` VALUES ('215', null, '1', null, 'Perencanaan Teknik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40101');
INSERT INTO `tbl_acm` VALUES ('216', null, '1', null, 'Menyusun RAB & RKS', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40102');
INSERT INTO `tbl_acm` VALUES ('217', null, '1', null, 'Proses Pelelangan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40103');
INSERT INTO `tbl_acm` VALUES ('218', null, '1', null, 'Pengawasan Pekerjaan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40104');
INSERT INTO `tbl_acm` VALUES ('219', null, '1', null, 'Pemeliharaan & Kebersihan Terminal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40201');
INSERT INTO `tbl_acm` VALUES ('220', null, '1', null, 'Memelihara Armada (Preventif)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40202');
INSERT INTO `tbl_acm` VALUES ('221', null, '1', null, 'Memelihara Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40203');
INSERT INTO `tbl_acm` VALUES ('222', null, '1', null, 'Memelihara Pompa Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40204');
INSERT INTO `tbl_acm` VALUES ('223', null, '1', null, 'Memelihara Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40205');
INSERT INTO `tbl_acm` VALUES ('224', null, '1', null, 'Memelihara Tongkang Air & Tunda', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40206');
INSERT INTO `tbl_acm` VALUES ('225', null, '1', null, 'Memelihara Kolam Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40207');
INSERT INTO `tbl_acm` VALUES ('226', null, '1', null, 'Memelihara Fasilitas Tambatan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40208');
INSERT INTO `tbl_acm` VALUES ('227', null, '1', null, 'Memelihara Peralatan Telkom', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40209');
INSERT INTO `tbl_acm` VALUES ('228', null, '1', null, 'Memelihara Kendaraan Dinas', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40210');
INSERT INTO `tbl_acm` VALUES ('229', null, '1', null, 'Memelihara Bangunan, Jalan & Lainnya', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40211');
INSERT INTO `tbl_acm` VALUES ('230', null, '1', null, 'Perbaikan Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40301');
INSERT INTO `tbl_acm` VALUES ('231', null, '1', null, 'Perbaikan Peralatan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40302');
INSERT INTO `tbl_acm` VALUES ('232', null, '1', null, 'Perbaikan Instalasi Listrik & Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40303');
INSERT INTO `tbl_acm` VALUES ('233', null, '1', null, 'Perbaikan Fasilitas Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40304');
INSERT INTO `tbl_acm` VALUES ('234', null, '1', null, 'Penyajian Data & Statistik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40401');
INSERT INTO `tbl_acm` VALUES ('235', null, '1', null, 'Pengelolaan Perangkat Keras', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40402');
INSERT INTO `tbl_acm` VALUES ('236', null, '1', null, 'Pengelolaan Perangkat Lunak', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40403');
INSERT INTO `tbl_acm` VALUES ('237', null, '1', null, 'Manajemen Mutu', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40500');
INSERT INTO `tbl_acm` VALUES ('238', null, '1', null, 'Penanganan Keamanan & Ketertiban', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40600');
INSERT INTO `tbl_acm` VALUES ('239', null, '1', null, 'Administrasi Nota Pandu', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50101');
INSERT INTO `tbl_acm` VALUES ('240', null, '1', null, 'Administrasi Nota Tunda', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50102');
INSERT INTO `tbl_acm` VALUES ('241', null, '1', null, 'Administrasi Nota Labuh/Tambat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50103');
INSERT INTO `tbl_acm` VALUES ('242', null, '1', null, 'Administrasi Nota Air Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50104');
INSERT INTO `tbl_acm` VALUES ('243', null, '1', null, 'Administrasi Nota Barang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50105');
INSERT INTO `tbl_acm` VALUES ('244', null, '1', null, 'Administrasi Nota Dermaga Kalimas', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50106');
INSERT INTO `tbl_acm` VALUES ('245', null, '1', null, 'Administrasi Nota Properti', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50107');
INSERT INTO `tbl_acm` VALUES ('246', null, '1', null, 'Administrasi Pas Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50108');
INSERT INTO `tbl_acm` VALUES ('247', null, '1', null, 'Administrasi Pas Penumpang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50109');
INSERT INTO `tbl_acm` VALUES ('248', null, '1', null, 'Administrasi Retribusi', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50110');
INSERT INTO `tbl_acm` VALUES ('249', null, '1', null, 'Administrasi Pendapatan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50200');
INSERT INTO `tbl_acm` VALUES ('250', null, '1', null, 'Menerbitkan & Mendistribusikan Nota (A4)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50201');
INSERT INTO `tbl_acm` VALUES ('251', null, '1', null, 'Mengadministrasikan Piutang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50202');
INSERT INTO `tbl_acm` VALUES ('252', null, '1', null, 'Menagih Piutang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50203');
INSERT INTO `tbl_acm` VALUES ('253', null, '1', null, 'Pengelolaan Kas', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50301');
INSERT INTO `tbl_acm` VALUES ('254', null, '1', null, 'Pengelolaan Barang Gudang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50302');
INSERT INTO `tbl_acm` VALUES ('255', null, '1', null, 'Pembukuan Transaksi', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50303');
INSERT INTO `tbl_acm` VALUES ('256', null, '1', null, 'Pengembangan Pegawai', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50401');
INSERT INTO `tbl_acm` VALUES ('257', null, '1', null, 'Administrasi Personalia dan Kesra', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50402');
INSERT INTO `tbl_acm` VALUES ('258', null, '1', null, 'Kesehatan & K3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50403');
INSERT INTO `tbl_acm` VALUES ('259', null, '1', null, 'Administrasi Umum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50601');
INSERT INTO `tbl_acm` VALUES ('260', null, '1', null, 'Mengelola Perlengkapan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50602');
INSERT INTO `tbl_acm` VALUES ('261', null, '1', null, 'Aktivitas Rumah Tangga', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50603');
INSERT INTO `tbl_acm` VALUES ('262', null, '1', null, 'Penanganan Hukum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '50604');

-- ----------------------------
-- Table structure for `tbl_act_to_act`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_act_to_act`;
CREATE TABLE `tbl_act_to_act` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_acm_id` bigint(20) DEFAULT NULL,
  `tbl_acm_child_id` bigint(20) DEFAULT NULL,
  `rd_qty` float DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `cost_type` varchar(100) DEFAULT NULL,
  `budget_type` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_act_to_act
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_are`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_are`;
CREATE TABLE `tbl_are` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_loc_id` bigint(20) DEFAULT NULL,
  `tbl_acm_id` bigint(20) DEFAULT NULL,
  `tbl_emp_id` bigint(20) DEFAULT NULL,
  `tbl_exp_id` bigint(20) DEFAULT NULL,
  `costcenter` varchar(100) DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `cost_nbr` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `rd_qty` float DEFAULT NULL,
  `tbl_rdm_id` bigint(20) DEFAULT NULL,
  `budget_type` varchar(100) DEFAULT NULL,
  `cost_type` varchar(100) DEFAULT NULL,
  `coefficient` int(11) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_are
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_bpd`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_bpd`;
CREATE TABLE `tbl_bpd` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_bpm_id` bigint(20) DEFAULT NULL,
  `tbl_acm_id` bigint(20) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_bpd
-- ----------------------------
INSERT INTO `tbl_bpd` VALUES ('2', '1', '3', '1', 'xxxxx', '10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

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
  `udf_bpm_1` varchar(200) DEFAULT NULL,
  `udf_bpm_2` varchar(200) DEFAULT NULL,
  `udn_bpd_1` varchar(200) DEFAULT NULL,
  `udn_bpd_2` varchar(200) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_bpm
-- ----------------------------
INSERT INTO `tbl_bpm` VALUES ('2', '002', null, 'Tes 2', '2.00', null, null, '10', '100', null, null, null, null, null, null, null, null, null, null, 'xxx', 'Tus', 'Tas', 'Tis', '10', null, null, null, null, '20', null, '100', null);
INSERT INTO `tbl_bpm` VALUES ('3', '002', null, 'Tes 2gg', '2.00', null, null, '10', '100', null, null, null, null, null, null, null, null, null, null, 'xxx', 'Tus', 'Tas', 'Tis', '10', null, null, null, null, '20', null, '100', null);

-- ----------------------------
-- Table structure for `tbl_cdm`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cdm`;
CREATE TABLE `tbl_cdm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_model_id` int(11) DEFAULT NULL,
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
  `bulan` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
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
  `input_rate` float DEFAULT NULL,
  `output_rate` float DEFAULT NULL,
  `costcenter_desc` varchar(200) DEFAULT NULL,
  `budget_type` varchar(100) DEFAULT NULL,
  `cost_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_efx
-- ----------------------------
INSERT INTO `tbl_efx` VALUES ('1', '1', null, '10', '100', null, null, null, null, null, null, null, 'xx1', 'Fixed', 'Fixed');

-- ----------------------------
-- Table structure for `tbl_emp`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_loc_id` int(11) DEFAULT NULL,
  `tbl_model_id` int(11) DEFAULT NULL,
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
  `bulan` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=457 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------
INSERT INTO `tbl_emp` VALUES ('1', '3', '1', '152092046', '', '', 'FERDY ANDREAS PIELOO', '', '5891130', '0', '0', '5891130', '3', 'Pandu Madya I', '5891130', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('2', '3', '1', '154092055', '', '', 'LELAN ANTONIUS', '', '7121720', '0', '0', '7121720', '3', 'Pandu Utama', '7121720', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('3', '261', '1', '167111871', '', '', 'HASNA RIEF KAHARIYAH', '', '5599530', '0', '0', '5599530', '3', 'Asisten Manajer Hukum dan', '5599530', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('4', '33', '1', '520101206', '', '', 'RISWANTO', '', '4593630', '0', '0', '4593630', '3', 'Staf Pelaksana Senior I', '4593630', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('5', '258', '1', '520101215', '', '', 'SAROSA', '', '5242670', '0', '0', '5242670', '3', 'Staf Muda IV', '5242670', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('6', '55', '1', '520103095', '', '', 'SARMIN', '', '4767800', '0', '0', '4767800', '3', 'Staf Pelaksana Senior I', '4767800', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('7', '10', '1', '520201223', '', '', 'MUSLICH', '', '5069440', '0', '0', '5069440', '3', 'Staf Muda IV', '5069440', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('8', '183', '1', '520201227', '', '', 'SUTOPO', '', '5187120', '0', '0', '5187120', '3', 'Staf Muda III', '5187120', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('9', '244', '1', '520201228', '', '', 'SULISTIASTUTI', '', '5082070', '0', '0', '5082070', '3', 'Staf Muda IV', '5082070', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('10', '258', '1', '520301232', '', '', 'MARTINI', '', '5394540', '0', '0', '5394540', '3', 'Staf Muda III', '5394540', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('11', '183', '1', '520301242', '', '', 'SUPENI, SE.', '', '4884330', '0', '0', '4884330', '3', 'Staf Muda IV', '4884330', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('12', '259', '1', '520301247', '', '', 'SUPRAPTO', '', '5047880', '0', '0', '5047880', '3', 'Staf Muda IV', '5047880', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('13', '181', '1', '520303400', '', '', 'ANAK AGUNG RAI TJIPT', '', '5871470', '0', '0', '5871470', '3', 'Asisten Manajer Pemanduan', '5871470', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('14', '3', '1', '520303404', '', '', 'GASPAR ABISLONG', '', '5731350', '0', '0', '5731350', '3', 'Pandu Madya I', '5731350', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('15', '10', '1', '520401252', '', '', 'MAHIR SAKTI', '', '4033410', '0', '0', '4033410', '3', 'Pelaksana Pelay. Gudang, ', '4033410', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('16', '79', '1', '520401255', '', '', 'SUMARDI', '', '4757650', '0', '0', '4757650', '3', 'Pelaksana Senior Pas Pela', '4757650', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('17', '238', '1', '520401261', '', '', 'MASRIN ADI, Drs.,MM.', '', '13851800', '0', '0', '13851800', '3', 'Deputi General Manajer Bi', '13851800', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('18', '259', '1', '520401266', '', '', 'GANDUL MARDIONO', '', '6303360', '0', '0', '6303360', '3', 'Asisten Manajer Tata Usah', '6303360', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('19', '79', '1', '520401272', '', '', 'MARGONO', '', '4486220', '0', '0', '4486220', '3', 'Pelaksana Senior Pelayara', '4486220', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('20', '181', '1', '520403243', '', '', 'MOHAMAD TOHIR', '', '5347310', '0', '0', '5347310', '3', 'Staf Muda IV', '5347310', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('21', '33', '1', '520501273', '', '', 'MOCH.GOFAR SUWARNO', '', '4593630', '0', '0', '4593630', '3', 'Pelaksana Senior Terminal', '4593630', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('22', '243', '1', '520501280', '', '', 'SUWITO, ST', '', '4607020', '0', '0', '4607020', '3', 'Pelaksana Senior Jaringan', '4607020', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('23', '3', '1', '520501282', '', '', 'HERRY SOETOPO', '', '4114200', '0', '0', '4114200', '3', 'Staf Pelaksana Junior I', '4114200', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('24', '193', '1', '520501283', '', '', 'SUTININGSIH, SE.', '', '4496520', '0', '0', '4496520', '3', 'Pelaksana Senior Usaha Pr', '4496520', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('25', '171', '1', '520501287', '', '', 'ANANG ASJARI, S.Sos.', '', '5187550', '0', '0', '5187550', '3', 'Staf Muda III', '5187550', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('26', '236', '1', '520501290', '', '', 'SOETRISNO, S. Sos', '', '6445410', '0', '0', '6445410', '3', 'Staf Muda II', '6445410', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('27', '195', '1', '520501291', '', '', 'HARI WINARNO, Drs. M', '', '4758990', '0', '0', '4758990', '3', 'Staf Muda IV', '4758990', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('28', '252', '1', '520501294', '', '', 'SRI ISSUWARNI', '', '4918040', '0', '0', '4918040', '3', 'Staf Muda IV', '4918040', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('29', '193', '1', '520501295', '', '', 'ARIBOWO, SE.', '', '7057540', '0', '0', '7057540', '3', 'Asisten Manajer Usaha Pro', '7057540', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('30', '259', '1', '520503238', '', '', 'SADJADIN MIRIYANTO', '', '3494550', '0', '0', '3494550', '3', 'Pelaksana Junior Rumah Ta', '3494550', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('31', '79', '1', '520601302', '', '', 'SOEPARNO', '', '4464000', '0', '0', '4464000', '3', 'Pelaksana Senior Pas Pela', '4464000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('32', '261', '1', '520601306', '', '', 'HERI SANTOSO, SH.', '', '5047780', '0', '0', '5047780', '3', 'Staf Muda IV', '5047780', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('33', '79', '1', '520601310', '', '', 'JITNO SUROSO', '', '4606150', '0', '0', '4606150', '3', 'Staf Pelaksana Senior I', '4606150', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('34', '10', '1', '520601311', '', '', 'ARIYANTO', '', '4475010', '0', '0', '4475010', '3', 'Kepala Gudang, Lapangan P', '4475010', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('35', '79', '1', '520601313', '', '', 'MOCHAMAD DIMJATI', '', '5059370', '0', '0', '5059370', '3', 'Staf Muda IV', '5059370', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('36', '171', '1', '520601315', '', '', 'SUPARDI, Drs.', '', '5983300', '0', '0', '5983300', '3', 'Staf Muda II', '5983300', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('37', '241', '1', '520603646', '', '', 'MA\'ARI', '', '3637940', '0', '0', '3637940', '3', 'Pelaksana Junior Kebersih', '3637940', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('38', '9', '1', '520701327', '', '', 'BATARA CHAIRUDDIN RA', '', '4736780', '0', '0', '4736780', '3', 'Staf Muda IV', '4736780', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('39', '195', '1', '520701337', '', '', 'MUSTAFA, S. Sos', '', '5769700', '0', '0', '5769700', '3', 'Supervisor Depo dan Perpa', '5769700', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('40', '243', '1', '520701338', '', '', 'DJAJADI SUTJIPTO ADH', '', '4895060', '0', '0', '4895060', '3', 'Staf Muda IV', '4895060', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('41', '10', '1', '520801343', '', '', 'AFFANDIE', '', '4264410', '0', '0', '4264410', '3', 'Pelaksana Pelay. Gudang, ', '4264410', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('42', '261', '1', '520801344', '', '', 'PUSNO EKO SAPUTRO, S', '', '6687340', '0', '0', '6687340', '3', 'Staf Muda II', '6687340', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('43', '10', '1', '520801349', '', '', 'MOHAMMAD YUSUF', '', '4357760', '0', '0', '4357760', '3', 'Kepala Gudang, Lapangan P', '4357760', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('44', '192', '1', '520801350', '', '', 'MUDJENI, SE', '', '5785630', '0', '0', '5785630', '3', 'Supervisor Pelayanan Term', '5785630', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('45', '10', '1', '520801352', '', '', 'KUSRIANTO', '', '4353710', '0', '0', '4353710', '3', 'Pelaksana Pelayanan Gudan', '4353710', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('46', '183', '1', '520801362', '', '', 'SUNARJO', '', '5035940', '0', '0', '5035940', '3', 'Staf Muda IV', '5035940', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('47', '252', '1', '520901368', '', '', 'IMAM SOEHADI, S.Sos', '', '5183950', '0', '0', '5183950', '3', 'Supervisor Pendapatan', '5183950', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('48', '192', '1', '520901371', '', '', 'SUWIGNJO', '', '4463880', '0', '0', '4463880', '3', 'Staf Pelaksana Senior I', '4463880', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('49', '195', '1', '520901375', '', '', 'MOCH. AFFANDI, SH.', '', '6287110', '0', '0', '6287110', '3', 'Asisten Manajer PBK, Depo', '6287110', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('50', '241', '1', '520901376', '', '', 'KARMOYONO', '', '6979740', '0', '0', '6979740', '3', 'Staf Muda II', '6979740', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('51', '195', '1', '520901379', '', '', 'MARUKI', '', '4387820', '0', '0', '4387820', '3', 'Staf Pelaksana Senior II', '4387820', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('52', '231', '1', '520901386', '', '', 'INDRO PRIJANTO', '', '5047160', '0', '0', '5047160', '3', 'Staf Muda IV', '5047160', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('53', '195', '1', '521001391', '', '', 'SUHARTONO', '', '5206600', '0', '0', '5206600', '3', 'Staf Muda IV', '5206600', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('54', '251', '1', '521001404', '', '', 'EDY SUTORO', '', '4604360', '0', '0', '4604360', '3', 'Pelaksana Senior Anggaran', '4604360', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('55', '252', '1', '521001406', '', '', 'NURSIGIT MARDIJANTI', '', '4637660', '0', '0', '4637660', '3', 'Pelaksana Senior Hutang P', '4637660', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('56', '9', '1', '521101407', '', '', 'DWI WIDODO', '', '4127990', '0', '0', '4127990', '3', 'Staf Pelaksana Senior II', '4127990', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('57', '195', '1', '521101412', '', '', 'SURATNO', '', '4779160', '0', '0', '4779160', '3', 'Staf Pelaksana Senior I', '4779160', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('58', '243', '1', '521101414', '', '', 'MOCH. ADENAN, ST', '', '4756630', '0', '0', '4756630', '3', 'Pelaksana Senior Jaringan', '4756630', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('59', '250', '1', '521101416', '', '', 'SAHRU', '', '4617880', '0', '0', '4617880', '3', 'Staf Pelaksana Senior I', '4617880', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('60', '171', '1', '521201418', '', '', 'ACHMAD ZAKARIJA', '', '4615320', '0', '0', '4615320', '3', 'Staf Pelaksana Senior I', '4615320', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('61', '231', '1', '521201426', '', '', 'SRI KOERNIANI, Dra.', '', '4497270', '0', '0', '4497270', '3', 'Pelaksana Senior Pengenda', '4497270', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('62', '3', '1', '521203098', '', '', 'MUHAMMAD SAID JAFAR,', '', '6621320', '0', '0', '6621320', '3', 'Pandu Madya I', '6621320', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('63', '3', '1', '521203407', '', '', 'THOMAS RUBEN', '', '5731440', '0', '0', '5731440', '3', 'Pandu Madya I', '5731440', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('64', '181', '1', '530101442', '', '', 'SUTRISNO', '', '5150760', '0', '0', '5150760', '3', 'Supervisor Pemanduan, Pen', '5150760', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('65', '11', '1', '530101443', '', '', 'MOHAMMAD YUSUP', '', '3988490', '0', '0', '3988490', '3', 'Pelaksana Junior Lapangan', '3988490', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('66', '193', '1', '530101446', '', '', 'SUBAKRI', '', '4474610', '0', '0', '4474610', '3', 'Pelaksana Senior Usaha Pr', '4474610', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('67', '181', '1', '530103004', '', '', 'ZAENAL FANANI', '', '4626880', '0', '0', '4626880', '3', 'Operator Senior  Radio Te', '4626880', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('68', '251', '1', '530201456', '', '', 'MINARDI, S.Sos', '', '5786920', '0', '0', '5786920', '3', 'Supervisor Kemitraan dan ', '5786920', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('69', '252', '1', '530201457', '', '', 'SUTIKNO', '', '4628110', '0', '0', '4628110', '3', 'Pelaksana Senior Pendapat', '4628110', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('70', '195', '1', '530201461', '', '', 'SUKIMIN', '', '4139230', '0', '0', '4139230', '3', 'Staf Pelaksana Senior II', '4139230', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('71', '10', '1', '530201463', '', '', 'ABDUL MANAN', '', '4323050', '0', '0', '4323050', '3', 'Pelaksana Senior Administ', '4323050', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('72', '10', '1', '530201466', '', '', 'SUMARDJO', '', '3999750', '0', '0', '3999750', '3', 'Pelaksana Junior Gudang, ', '3999750', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('73', '251', '1', '530301468', '', '', 'SUPRIJADI, BA.', '', '7055870', '0', '0', '7055870', '3', 'Asisten Manajer Akuntansi', '7055870', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('74', '231', '1', '530301475', '', '', 'MOCH.TOKIN, SE.', '', '4376240', '0', '0', '4376240', '3', 'Pelaksana Perencanaan dan', '4376240', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('75', '79', '1', '530301476', '', '', 'SUJANTO, S.Sos', '', '4627140', '0', '0', '4627140', '3', 'Pelaksana Senior Pas Pela', '4627140', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('76', '192', '1', '530301483', '', '', 'SLAMET', '', '4252630', '0', '0', '4252630', '3', 'Pelaksana Pelayanan Term.', '4252630', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('77', '181', '1', '530301485', '', '', 'MOENTOHA', '', '4506510', '0', '0', '4506510', '3', 'Pelaksana Pemanduan, Penu', '4506510', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('78', '10', '1', '530401494', '', '', 'SUMALI', '', '4127990', '0', '0', '4127990', '3', 'Pelaksana Pelay. Gudang, ', '4127990', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('79', '231', '1', '530401506', '', '', 'SASMITO, S. Sos', '', '5036840', '0', '0', '5036840', '3', 'Staf Muda IV', '5036840', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('80', '243', '1', '530401513', '', '', 'SUWITO', '', '4374900', '0', '0', '4374900', '3', 'Pelaksana Jaringan Listri', '4374900', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('81', '195', '1', '530501517', '', '', 'MUSLIMIN, SE.', '', '5184360', '0', '0', '5184360', '3', 'Supervisor PBK', '5184360', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('82', '244', '1', '530501519', '', '', 'DJONLIK, Ir.', '', '5175960', '0', '0', '5175960', '3', 'Staf Muda III', '5175960', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('83', '171', '1', '530501524', '', '', 'JESAJA ELISA SENGKEY', '', '5560510', '0', '0', '5560510', '3', 'Supervisor Pelayanan Kade', '5560510', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('84', '288', '1', '530501526', '', '', 'WASIYEM', '', '4399360', '0', '0', '4399360', '3', 'Pelaksana Teknis Perangka', '4399360', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('85', '9', '1', '530501527', '', '', 'RUSTAMADJI, Drs. Ec.', '', '5770350', '0', '0', '5770350', '3', 'Supervisor Pelayaran Loka', '5770350', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('86', '183', '1', '530501529', '', '', 'SIJANTO, Drs.', '', '7038980', '0', '0', '7038980', '3', 'Asisten Manajer Tatalaksa', '7038980', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('87', '3', '1', '530503414', '', '', 'ACHMAD KASIM TAWULO', '', '5387140', '0', '0', '5387140', '3', 'Pandu Madya II', '5387140', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('88', '195', '1', '530601539', '', '', 'MUSTAFA', '', '4263930', '0', '0', '4263930', '3', 'Staf Pelaksana Senior II', '4263930', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('89', '10', '1', '530601543', '', '', 'MOCH. MANSUR', '', '4474610', '0', '0', '4474610', '3', 'Kepala Gudang, Lap. Penum', '4474610', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('90', '193', '1', '530701551', '', '', 'TOJIB KUSNANTO, S.So', '', '5379850', '0', '0', '5379850', '3', 'Supervisor Usaha Properti', '5379850', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('91', '11', '1', '530701552', '', '', 'YONO MUALIM', '', '4117520', '0', '0', '4117520', '3', 'Pelaksana Lapangan Penump', '4117520', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('92', '243', '1', '530701556', '', '', 'TRIYULI RADIANTO', '', '4374410', '0', '0', '4374410', '3', 'Pelaksana Jaringan Listri', '4374410', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('93', '9', '1', '530701560', '', '', 'SULADI, SE', '', '4615090', '0', '0', '4615090', '3', 'Pelaksana Senior Pelayara', '4615090', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('94', '10', '1', '530701563', '', '', 'SUHERMAN', '', '4365510', '0', '0', '4365510', '3', 'Pelaksana Pelay. Gudang 3', '4365510', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('95', '244', '1', '530701565', '', '', 'SUTINAH', '', '4638810', '0', '0', '4638810', '3', 'Pelaksana Senior  Adminis', '4638810', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('96', '33', '1', '530801572', '', '', 'SUWANTO, SE.', '', '4323360', '0', '0', '4323360', '3', 'Pelaksana Senior Pelayana', '4323360', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('97', '79', '1', '530801576', '', '', 'MIADI', '', '4376970', '0', '0', '4376970', '3', 'Pelaksana Pas Pelabuhan', '4376970', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('98', '261', '1', '530801577', '', '', 'SRI SUKATRINI', '', '4638510', '0', '0', '4638510', '3', 'Pelaksana Senior Perikata', '4638510', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('99', '79', '1', '530801578', '', '', 'SISWANOE, S. Sos', '', '4114020', '0', '0', '4114020', '3', 'Pelaksana Senior Pas Pela', '4114020', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('100', '235', '1', '530801580', '', '', 'MARJONO', '', '4464000', '0', '0', '4464000', '3', 'Pelaksana Senior Analisa ', '4464000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('101', '252', '1', '530901591', '', '', 'SUDARMADJI', '', '4346320', '0', '0', '4346320', '3', 'Pelaksana Senior Pendapat', '4346320', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('102', '193', '1', '530901594', '', '', 'TOMMY MONOARFA', '', '4486220', '0', '0', '4486220', '3', 'Pelaksana Senior Usaha Pr', '4486220', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('103', '252', '1', '530901596', '', '', 'SUPRIJADI', '', '4475630', '0', '0', '4475630', '3', 'Pelaksana Senior  Gudang ', '4475630', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('104', '193', '1', '530901599', '', '', 'MOH.GUFRON', '', '4345320', '0', '0', '4345320', '3', 'Pelaksana Senior Usaha Pr', '4345320', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('105', '250', '1', '530901603', '', '', 'SOFIA ZEDJA WODA, SE', '', '4638660', '0', '0', '4638660', '3', 'Pelaksana Senior Verifika', '4638660', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('106', '258', '1', '530901605', '', '', 'SU\'UD', '', '4486220', '0', '0', '4486220', '3', 'Pelaksana Senior Administ', '4486220', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('107', '192', '1', '530901610', '', '', 'SUPRAT, SE', '', '4745430', '0', '0', '4745430', '3', 'Pelaksana Senior Pelayana', '4745430', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('108', '3', '1', '530903378', '', '', 'SUWONO', '', '5908590', '0', '0', '5908590', '3', 'Pandu Madya I', '5908590', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('109', '231', '1', '531001611', '', '', 'SLAMET WAHJUDI, S.So', '', '5769800', '0', '0', '5769800', '3', 'Supervisor Perencanaan da', '5769800', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('110', '236', '1', '531001614', '', '', 'EDY SUSANTO', '', '4594720', '0', '0', '4594720', '3', 'Pelaksana Senior Promosi ', '4594720', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('111', '172', '1', '531101622', '', '', 'CHAIRIL ANWAR, S. So', '', '5768910', '0', '0', '5768910', '3', 'Supervisor Pelayaran Raky', '5768910', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('112', '235', '1', '531101631', '', '', 'SUTJIPTO, Drs.,MM.', '', '5751670', '0', '0', '5751670', '3', 'Supervisor Analisa dan Ev', '5751670', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('113', '171', '1', '531101636', '', '', 'SULIADI, S.Sos', '', '4895490', '0', '0', '4895490', '3', 'Staf Muda IV', '4895490', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('114', '244', '1', '531101637', '', '', 'MISDI', '', '5364180', '0', '0', '5364180', '3', 'Supervisor Sigi', '5364180', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('115', '252', '1', '531201645', '', '', 'SUYOTO', '', '4375270', '0', '0', '4375270', '3', 'Pelaksana Hutang Piutang', '4375270', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('116', '250', '1', '531201651', '', '', 'SUWARNO, SE.', '', '6506840', '0', '0', '6506840', '3', 'Asisten Manajer Akuntansi', '6506840', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('117', '79', '1', '531201654', '', '', 'SUATNO, SE.', '', '4506690', '0', '0', '4506690', '3', 'Pelaksana Pas Pelabuhan B', '4506690', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('118', '10', '1', '531201657', '', '', 'MOCH. SUPRAPTO, SE.', '', '4615090', '0', '0', '4615090', '3', 'Pelaksana Senior Gudang, ', '4615090', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('119', '183', '1', '531201658', '', '', 'HAMZAH MACHFUD, Drs.', '', '5752200', '0', '0', '5752200', '3', 'Supervisor Pengusahaan', '5752200', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('120', '252', '1', '540201689', '', '', 'YUS RUSLI, S.Sos', '', '6820200', '0', '0', '6820200', '3', 'Supervisor Kassa dan Guda', '6820200', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('121', '2', '1', '540201690', '', '', 'KUDORI', '', '4616340', '0', '0', '4616340', '3', 'Pelaksana Senior Labuh', '4616340', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('122', '252', '1', '540201691', '', '', 'SUKARDJI', '', '5346990', '0', '0', '5346990', '3', 'Supervisor Hutang Piutang', '5346990', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('123', '257', '1', '540301703', '', '', 'EDHY PRASETYO, Drs.', '', '10240000', '0', '0', '10240000', '3', 'Manajer Personalia dan Um', '10240000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('124', '258', '1', '540301710', '', '', 'TEGUH BUDI SETIAWAN,', '', '5948580', '0', '0', '5948580', '3', 'Staf Muda I', '5948580', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('125', '55', '1', '540401718', '', '', 'MUDJIONO', '', '4495450', '0', '0', '4495450', '3', 'Pelaksana Usaha Air dan L', '4495450', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('126', '251', '1', '540401724', '', '', 'ILHAM SUGIHARTO, S. ', '', '5768490', '0', '0', '5768490', '3', 'Supervisor Anggaran', '5768490', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('127', '297', '1', '540501746', '', '', 'SUJONO', '', '3828200', '0', '0', '3828200', '3', 'Anggota Pengamanan Pelabu', '3828200', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('128', '261', '1', '540501865', '', '', 'MULYADI, SH.', '', '5344650', '0', '0', '5344650', '3', 'Supervisor Perikatan', '5344650', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('129', '297', '1', '540601750', '', '', 'SUPARNO', '', '4606630', '0', '0', '4606630', '3', 'Kepala Area Pengamanan Pe', '4606630', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('130', '79', '1', '540601751', '', '', 'HODDIN, S.Sos', '', '4605880', '0', '0', '4605880', '3', 'Pelaksana Senior Pas Pela', '4605880', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('131', '252', '1', '540601754', '', '', 'SITI AMINAH', '', '5080740', '0', '0', '5080740', '3', 'Staf Muda IV', '5080740', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('132', '10', '1', '540601757', '', '', 'MOCH.SHOLEH, S.Sos', '', '4474510', '0', '0', '4474510', '3', 'Kepala Gudang 300, 301, 3', '4474510', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('133', '10', '1', '540601758', '', '', 'SUGIHARTO', '', '4605270', '0', '0', '4605270', '3', 'Kepala Gudang, Lapangan P', '4605270', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('134', '171', '1', '540601763', '', '', 'ABUBAKAR SIDIK', '', '4726160', '0', '0', '4726160', '3', 'Staf Muda IV', '4726160', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('135', '10', '1', '540601765', '', '', 'TEGUH SISWANTO', '', '4253250', '0', '0', '4253250', '3', 'Pelaksana Administrasi', '4253250', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('136', '55', '1', '540701778', '', '', 'MUKTASAN', '', '3989010', '0', '0', '3989010', '3', 'Pelaksana Junior Usaha Ai', '3989010', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('137', '9', '1', '540701779', '', '', 'DIGDO WINARTO, S.Sos', '', '5363610', '0', '0', '5363610', '3', 'Supervisor Pelayanan Kade', '5363610', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('138', '231', '1', '540701780', '', '', 'SUROSO, Drs.', '', '6744280', '0', '0', '6744280', '3', 'Asisten Manajer Perencana', '6744280', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('139', '195', '1', '540701782', '', '', 'HARIJANTO', '', '5047070', '0', '0', '5047070', '3', 'Staf Muda IV', '5047070', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('140', '244', '1', '540701787', '', '', 'SATIMIN', '', '5058580', '0', '0', '5058580', '3', 'Surveyor', '5058580', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('141', '11', '1', '540701791', '', '', 'WARDJOELI, SE', '', '4323480', '0', '0', '4323480', '3', 'Pelaksana Senior Lapangan', '4323480', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('142', '10', '1', '540701795', '', '', 'ISA HARIADI, S. Sos', '', '4452380', '0', '0', '4452380', '3', 'Kepala Gudang, Lapangan d', '4452380', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('143', '252', '1', '540701800', '', '', 'KUSNAN', '', '4616090', '0', '0', '4616090', '3', 'Pelaksana Senior Pendapat', '4616090', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('144', '79', '1', '540801806', '', '', 'BAGIO BUDI LAKSANA', '', '4519320', '0', '0', '4519320', '3', 'Pelaksana Pas Pelabuhan', '4519320', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('145', '243', '1', '540801812', '', '', 'ISNI', '', '4364550', '0', '0', '4364550', '3', 'Pelaksana Jaringan Listri', '4364550', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('146', '250', '1', '540801814', '', '', 'SUYONO', '', '4981820', '0', '0', '4981820', '3', 'Supervisor Perpajakan', '4981820', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('147', '195', '1', '540801817', '', '', 'SISWADI, Drs.', '', '6762400', '0', '0', '6762400', '3', 'Asisten Manajer Operasi T', '6762400', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('148', '172', '1', '540801819', '', '', 'BAMBANG IRAWAN, S.So', '', '4604850', '0', '0', '4604850', '3', 'Staf Pelaksana Senior I', '4604850', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('149', '79', '1', '540801825', '', '', 'SUHARTO DWI RAHAYU R', '', '4475010', '0', '0', '4475010', '3', 'Pelaksana Senior Pas Pela', '4475010', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('150', '183', '1', '541001852', '', '', 'GUNAR RIJANTO', '', '4334680', '0', '0', '4334680', '3', 'Pelaksana Senior Administ', '4334680', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('151', '79', '1', '541001862', '', '', 'KASMADI', '', '4354500', '0', '0', '4354500', '3', 'Pelaksana Pelayanan Gudan', '4354500', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('152', '9', '1', '541001866', '', '', 'SUPIYADI', '', '4365510', '0', '0', '4365510', '3', 'Pelaksana Pelayanan Kade', '4365510', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('153', '171', '1', '541101870', '', '', 'DIRMAN', '', '4593630', '0', '0', '4593630', '3', 'Pelaksana Senior Pelayana', '4593630', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('154', '259', '1', '541101881', '', '', 'JEKTY SUMARNI', '', '5080650', '0', '0', '5080650', '3', 'Staf Muda IV', '5080650', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('155', '195', '1', '541101882', '', '', 'SUTARMAN', '', '4364840', '0', '0', '4364840', '3', 'Staf Pelaksana Senior II', '4364840', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('156', '192', '1', '541201883', '', '', 'ARYONO HARYOTO', '', '4385970', '0', '0', '4385970', '3', 'Pelaksana Usaha Air dan L', '4385970', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('157', '243', '1', '541201884', '', '', 'SUTJIPTO, S. Sos', '', '5328920', '0', '0', '5328920', '3', 'Supervisor Jaringan Listr', '5328920', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('158', '192', '1', '541201895', '', '', 'DJUREMI', '', '4345320', '0', '0', '4345320', '3', 'Pelaksana Senior Pelayana', '4345320', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('159', '10', '1', '541201899', '', '', 'EKO SANTOSA', '', '4204350', '0', '0', '4204350', '3', 'Kepala Gudang, Lapangan P', '4204350', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('160', '297', '1', '541201904', '', '', 'MOH. ALWI', '', '4658060', '0', '0', '4658060', '3', 'Pelaksana Pengamanan Pela', '4658060', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('161', '250', '1', '550101914', '', '', 'MAKIN, S.Sos', '', '4616520', '0', '0', '4616520', '3', 'Staf Pelaksana Senior I', '4616520', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('162', '192', '1', '550101915', '', '', 'ARBADI, S.Sos', '', '5733300', '0', '0', '5733300', '3', 'Supervisor Usaha Air & Li', '5733300', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('163', '181', '1', '550101917', '', '', 'TOTOK SUGIARTO', '', '4755320', '0', '0', '4755320', '3', 'Pelaksana Senior Pemandua', '4755320', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('164', '79', '1', '550101922', '', '', 'SUNARTO', '', '4242450', '0', '0', '4242450', '3', 'Pelaksana Pelayanan Pas P', '4242450', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('165', '195', '1', '550201939', '', '', 'SUWITO', '', '4364670', '0', '0', '4364670', '3', 'Staf Pelaksana Senior II', '4364670', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('166', '9', '1', '550301940', '', '', 'SUDJILIN, SE', '', '4453310', '0', '0', '4453310', '3', 'Pelaksana Senior Pelayana', '4453310', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('167', '243', '1', '550301942', '', '', 'HARIONO, S. Sos', '', '4894680', '0', '0', '4894680', '3', 'Staf Muda IV', '4894680', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('168', '79', '1', '550301961', '', '', 'SUGIARTO', '', '4364000', '0', '0', '4364000', '3', 'Pelaksana Pas Pelabuhan', '4364000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('169', '9', '1', '550301962', '', '', 'SLAMET', '', '4387350', '0', '0', '4387350', '3', 'Pelaksana Pelayanan Kade', '4387350', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('170', '3', '1', '550303387', '', '', 'RACHMAT HURIANTO', '', '5563000', '0', '0', '5563000', '3', 'Pandu Madya I', '5563000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('171', '79', '1', '550401964', '', '', 'SUBANDI, S.Sos', '', '4253700', '0', '0', '4253700', '3', 'Pelaksana Pelayanan Pas P', '4253700', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('172', '171', '1', '550401966', '', '', 'MUHAMMAD SURIANSYAH,', '', '7373440', '0', '0', '7373440', '3', 'Asisten Manajer Operasi T', '7373440', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('173', '195', '1', '550401967', '', '', 'ZAINAL AHMAD THAYIB', '', '4129010', '0', '0', '4129010', '3', 'Staf Pelaksana Senior II', '4129010', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('174', '251', '1', '550401969', '', '', 'KOESJANTO', '', '4453030', '0', '0', '4453030', '3', 'Pelaksana Senior  Kemitra', '4453030', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('175', '231', '1', '550401973', '', '', 'SOETOJO, Drs., MM.', '', '5751400', '0', '0', '5751400', '3', 'Supervisor Pengendalian d', '5751400', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('176', '231', '1', '550501975', '', '', 'WARSONO, S.Sos.', '', '4463450', '0', '0', '4463450', '3', 'Pelaksana Senior Perencan', '4463450', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('177', '195', '1', '550501977', '', '', 'GUMONO', '', '4376010', '0', '0', '4376010', '3', 'Staf Pelaksana Senior II', '4376010', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('178', '231', '1', '550501981', '', '', 'SOLIKIN, Drs.', '', '4616700', '0', '0', '4616700', '3', 'Pelaksana Senior Perencan', '4616700', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('179', '181', '1', '550501983', '', '', 'IMAM GHOZALI, S.Sos', '', '5771050', '0', '0', '5771050', '3', 'Supervisor Labuh', '5771050', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('180', '79', '1', '550501984', '', '', 'SUGIANTO', '', '4334250', '0', '0', '4334250', '3', 'Pelaksana Senior Pas Pela', '4334250', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('181', '10', '1', '550501986', '', '', 'MOCHAMMAD ISMAIL, S.', '', '4604360', '0', '0', '4604360', '3', 'Kepala Gudang, Lap. Penum', '4604360', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('182', '195', '1', '550501991', '', '', 'SUKIMIN', '', '4254940', '0', '0', '4254940', '3', 'Staf Pelaksana Junior I', '4254940', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('183', '192', '1', '550602004', '', '', 'ARIJO', '', '4475980', '0', '0', '4475980', '3', 'Pelaksana Senior Pelayana', '4475980', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('184', '193', '1', '550602013', '', '', 'FATMAWATI AZIS', '', '4637990', '0', '0', '4637990', '3', 'Pelaksana Senior Usaha Pr', '4637990', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('185', '183', '1', '550702017', '', '', 'TOMO PRAYITNO', '', '4255260', '0', '0', '4255260', '3', 'Pelaksana Junior Administ', '4255260', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('186', '288', '1', '550702022', '', '', 'DEDY SUPARDI, S.Sos', '', '6029310', '0', '0', '6029310', '3', 'Asisten Manajer Sistem Ja', '6029310', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('187', '235', '1', '550702024', '', '', 'EDY SUSANTO', '', '4352910', '0', '0', '4352910', '3', 'Pelaksana Analisa dan Eva', '4352910', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('188', '244', '1', '550802034', '', '', 'MOCH SAID', '', '4657830', '0', '0', '4657830', '3', 'Pelaksana Sigi', '4657830', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('189', '231', '1', '550802042', '', '', 'MOEDJITO, S.Sos.', '', '4334760', '0', '0', '4334760', '3', 'Pelaksana Senior Perencan', '4334760', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('190', '241', '1', '550802048', '', '', 'HARDJO SUDAMAY', '', '4615940', '0', '0', '4615940', '3', 'Pelaksana Senior Bangunan', '4615940', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('191', '10', '1', '550902050', '', '', 'ABDUL HADI, S.Sos', '', '4474510', '0', '0', '4474510', '3', 'Pelaksana Senior Administ', '4474510', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('192', '181', '1', '550902051', '', '', 'SRI WAHYUNI, SH', '', '4497360', '0', '0', '4497360', '3', 'Pelaksana Senior Pemandua', '4497360', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('193', '241', '1', '550902057', '', '', 'BUDI WAHJONO', '', '5770350', '0', '0', '5770350', '3', 'Supervisor Bangunan Darat', '5770350', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('194', '171', '1', '550902059', '', '', 'SUHARTOJO', '', '4464000', '0', '0', '4464000', '3', 'Pelaksana Senior Administ', '4464000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('195', '244', '1', '551002064', '', '', 'SUTARYO', '', '5752640', '0', '0', '5752640', '3', 'Supervisor Administrasi', '5752640', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('196', '79', '1', '551002068', '', '', 'MASRUM EFFENDI', '', '4375520', '0', '0', '4375520', '3', 'Pelaksana Pas Pelabuhan M', '4375520', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('197', '181', '1', '551102077', '', '', 'AHMAD SUBKI', '', '5381520', '0', '0', '5381520', '3', 'Supervisor Telekomunikasi', '5381520', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('198', '79', '1', '551202107', '', '', 'KARMONO', '', '4507750', '0', '0', '4507750', '3', 'Pelaksana Pelayanan Pas P', '4507750', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('199', '192', '1', '551202108', '', '', 'UDAYANA R.', '', '4138500', '0', '0', '4138500', '3', 'Pelaksana Pelayanan Term.', '4138500', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('200', '192', '1', '551203124', '', '', 'MOCH. SUKEMI', '', '4241570', '0', '0', '4241570', '3', 'Pelaksana Pelayanan Term.', '4241570', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('201', '172', '1', '560102116', '', '', 'SANGKAN PANJAITAN', '', '4725160', '0', '0', '4725160', '3', 'Staf Muda IV', '4725160', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('202', '261', '1', '560102123', '', '', 'MOCH. DJAINURI', '', '4464000', '0', '0', '4464000', '3', 'Pelaksana Senior Humas', '4464000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('203', '288', '1', '560202130', '', '', 'HARI ROSIDI', '', '4883890', '0', '0', '4883890', '3', 'Analis Sistem Bisnis, Jar', '4883890', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('204', '259', '1', '560203266', '', '', 'MATTASAN', '', '3620330', '0', '0', '3620330', '3', 'Pelaksana Junior Rumah Ta', '3620330', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('205', '195', '1', '560302132', '', '', 'TEGUH SUPRAYITNO', '', '4616180', '0', '0', '4616180', '3', 'Kepala Unit PBK', '4616180', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('206', '259', '1', '560302136', '', '', 'HARI SANTOSO', '', '3988490', '0', '0', '3988490', '3', 'Staf Pelaksana Junior I', '3988490', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('207', '79', '1', '560302138', '', '', 'BAMBANG HENDRI SISWO', '', '4214220', '0', '0', '4214220', '3', 'Pelaksana Senior Pas Pela', '4214220', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('208', '33', '1', '560402147', '', '', 'SUGIANTO', '', '4128820', '0', '0', '4128820', '3', 'Pelaksana Pelayanan Termi', '4128820', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('209', '163', '1', '560402154', '', '', 'GATOT SUPRIJONO, SE.', '', '9633660', '0', '0', '9633660', '3', 'Manajer Pelayanan Termina', '9633660', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('210', '252', '1', '560403644', '', '', 'YASKUR', '', '3778660', '0', '0', '3778660', '3', 'Pelaksana Pendapatan', '3778660', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('211', '181', '1', '560502162', '', '', 'EDY SUNARYO', '', '4333980', '0', '0', '4333980', '3', 'Operator Senior  Radio Te', '4333980', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('212', '9', '1', '560502169', '', '', 'SUPRIJONO', '', '4127990', '0', '0', '4127990', '3', 'Pelaksana Pelayanan Kade', '4127990', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('213', '79', '1', '560502174', '', '', 'MAT DJUPRI, S.Sos', '', '4117290', '0', '0', '4117290', '3', 'Pelaksana Pelayanan Pas P', '4117290', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('214', '3', '1', '560503432', '', '', 'ASCHWIN TAMBELANGI', '', '5731350', '0', '0', '5731350', '3', 'Pandu Madya I', '5731350', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('215', '258', '1', '560602183', '', '', 'BAMBANG SUTRISNO, Dr', '', '5327810', '0', '0', '5327810', '3', 'Supervisor Administrasi  ', '5327810', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('216', '258', '1', '560602189', '', '', 'ENDANG HARIJATI, S. ', '', '6814580', '0', '0', '6814580', '3', 'Asisten Manajer SDM', '6814580', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('217', '195', '1', '560603030', '', '', 'TOERIMAN', '', '4518890', '0', '0', '4518890', '3', 'Staf Pelaksana Senior II', '4518890', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('218', '3', '1', '560603408', '', '', 'SIMMASE TAHIR', '', '5388440', '0', '0', '5388440', '3', 'Pandu Madya II', '5388440', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('219', '236', '1', '560702206', '', '', 'KASIYO', '', '4150030', '0', '0', '4150030', '3', 'Pelaksana Kerjasama Usaha', '4150030', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('220', '243', '1', '560702207', '', '', 'SEGER MULYONO, S. So', '', '4485640', '0', '0', '4485640', '3', 'Pelaksana Senior Jaringan', '4485640', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('221', '172', '1', '560702213', '', '', 'SUNOTO', '', '4476240', '0', '0', '4476240', '3', 'Staf Pelaksana Senior I', '4476240', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('222', '3', '1', '560703388', '', '', 'AKUDDIN PATTA', '', '5909650', '0', '0', '5909650', '3', 'Pandu Madya I', '5909650', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('223', '243', '1', '560802219', '', '', 'EDY AGOES SOEGITO, S', '', '4463450', '0', '0', '4463450', '3', 'Pelaksana Senior Peralata', '4463450', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('224', '55', '1', '560802220', '', '', 'AGUS HARIJONO', '', '4495870', '0', '0', '4495870', '3', 'Pelaksana Usaha Air dan L', '4495870', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('225', '171', '1', '560802227', '', '', 'EDY PRIYONO, S. Sos', '', '5203650', '0', '0', '5203650', '3', 'Supervisor Terminal Penum', '5203650', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('226', '236', '1', '560802231', '', '', 'BAMBANG SETYARTO, Dr', '', '5346690', '0', '0', '5346690', '3', 'Supervisor Kerjasama Usah', '5346690', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('227', '180', '1', '560803375', '', '', 'AFIUDDIN, CAPT.', '', '9164750', '0', '0', '9164750', '3', 'Manajer Pelayanan Kapal', '9164750', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('228', '79', '1', '560902242', '', '', 'MOHAMMAD RIDNOADI, S', '', '3989010', '0', '0', '3989010', '3', 'Pelaksana Junior Pas Pela', '3989010', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('229', '236', '1', '561002247', '', '', 'PUDJOJONO', '', '4883890', '0', '0', '4883890', '3', 'Staf Muda IV', '4883890', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('230', '6', '1', '561002248', '', '', 'SUPRAPTO', '', '4451850', '0', '0', '4451850', '3', 'Pelaksana Senior Usaha Ai', '4451850', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('231', '231', '1', '561002251', '', '', 'RUFINUS KAY BETEKENE', '', '4334680', '0', '0', '4334680', '3', 'Pelaksana Senior Perencan', '4334680', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('232', '192', '1', '561002255', '', '', 'ELLY SETYAWATI, S.So', '', '4367310', '0', '0', '4367310', '3', 'Pelaksana Senior Pelayana', '4367310', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('233', '181', '1', '561102262', '', '', 'JUDY HERMANTO SUTRIS', '', '4011740', '0', '0', '4011740', '3', 'Pelaksana Junior Pemandua', '4011740', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('234', '10', '1', '561202268', '', '', 'NURUL KOMARI', '', '4616520', '0', '0', '4616520', '3', 'Pelaksana Senior I', '4616520', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('235', '79', '1', '561202271', '', '', 'AGUS WIDIANTORO KRES', '', '4323360', '0', '0', '4323360', '3', 'Pelaksana Senior Pas Pela', '4323360', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('236', '252', '1', '561202273', '', '', 'INDAH RISMAWATI, S.S', '', '6815400', '0', '0', '6815400', '3', 'Asisten Manajer Perbendah', '6815400', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('237', '10', '1', '561202274', '', '', 'SAMSUL HADI, S.Sos', '', '4334680', '0', '0', '4334680', '3', 'Staf Pelaksana Senior I', '4334680', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('238', '10', '1', '570102285', '', '', 'SALIHAN', '', '4464000', '0', '0', '4464000', '3', 'Kepala Gudang, Lap. Penum', '4464000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('239', '243', '1', '570103707', '', '', 'SUATMAN', '', '3620000', '0', '0', '3620000', '3', 'Pelaksana Junior Jaringan', '3620000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('240', '181', '1', '570202288', '', '', 'KUSNAN', '', '4323050', '0', '0', '4323050', '3', 'Operator Senior Radio Tel', '4323050', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('241', '250', '1', '570202289', '', '', 'ACHMAD SUPARDI', '', '5751670', '0', '0', '5751670', '3', 'Supervisor Verifikasi', '5751670', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('242', '193', '1', '570202294', '', '', 'SUPRAJOGO, S. Sos', '', '4463960', '0', '0', '4463960', '3', 'Pelaksana Senior Usaha Pr', '4463960', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('243', '195', '1', '570202295', '', '', 'SUMANTRI', '', '4605580', '0', '0', '4605580', '3', 'Kepala Unit PBK', '4605580', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('244', '79', '1', '570302303', '', '', 'MOHAMMAD ALIBUDIN', '', '4128240', '0', '0', '4128240', '3', 'Pelaksana Pas Pelabuhan', '4128240', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('245', '297', '1', '570303105', '', '', 'NOERHASAN', '', '3916340', '0', '0', '3916340', '3', 'Anggota Pengamanan Pelabu', '3916340', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('246', '3', '1', '570303379', '', '', 'HASAN BASALAMAH, SH.', '', '5890420', '0', '0', '5890420', '3', 'Pandu Madya I', '5890420', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('247', '3', '1', '570303389', '', '', 'MARDI MANOARFA', '', '5753580', '0', '0', '5753580', '3', 'Pandu Madya II', '5753580', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('248', '243', '1', '570402306', '', '', 'SUBIYAKTO', '', '4474610', '0', '0', '4474610', '3', 'Pelaksana Senior Jaringan', '4474610', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('249', '195', '1', '570402308', '', '', 'MUSOFAH', '', '3989080', '0', '0', '3989080', '3', 'Pelaksana Junior PBK', '3989080', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('250', '9', '1', '570402309', '', '', 'MARHAMAH, S.Sos', '', '4496830', '0', '0', '4496830', '3', 'Staf Pelaksana Senior I', '4496830', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('251', '195', '1', '570502319', '', '', 'ADI SUMARNO, SH.', '', '5038030', '0', '0', '5038030', '3', 'Staf Muda IV', '5038030', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('252', '181', '1', '570502320', '', '', 'KHOIRIL ANAM', '', '4324380', '0', '0', '4324380', '3', 'Teknisi Senior Radio Tele', '4324380', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('253', '10', '1', '570602327', '', '', 'UNTUNG SUKIRIN', '', '4128550', '0', '0', '4128550', '3', 'Pelaksana Pelay. Gudang, ', '4128550', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('254', '241', '1', '570603844', '', '', 'MATASAN', '', '3802060', '0', '0', '3802060', '3', 'Staf Pelaksana Junior II', '3802060', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('255', '250', '1', '570702335', '', '', 'SUGIJANTO, SE.', '', '4464370', '0', '0', '4464370', '3', 'Pelaksana Senior Perpajak', '4464370', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('256', '79', '1', '570702338', '', '', 'MOENARI', '', '4452380', '0', '0', '4452380', '3', 'Pelaksana Senior Pelayana', '4452380', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('257', '6', '1', '570702343', '', '', 'SUNARJADI', '', '4323960', '0', '0', '4323960', '3', 'Pelaksana Senior Usaha Ai', '4323960', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('258', '3', '1', '570703380', '', '', 'M. MEGA', '', '5713030', '0', '0', '5713030', '3', 'Pandu Madya I', '5713030', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('259', '231', '1', '570802348', '', '', 'RIJANTO BE.', '', '4873900', '0', '0', '4873900', '3', 'Staf Muda IV', '4873900', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('260', '195', '1', '570802349', '', '', 'SUBIJANTONO', '', '4364960', '0', '0', '4364960', '3', 'Staf Pelaksana Senior II', '4364960', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('261', '227', '1', '570802350', '', '', 'I PUTU ARIAWAN, S.So', '', '9163430', '0', '0', '9163430', '3', 'Manajer Komersial / PPSA', '9163430', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('262', '10', '1', '570802351', '', '', 'MU\'ANAM JUNAIDI, S.S', '', '4335170', '0', '0', '4335170', '3', 'Kepala Gudang, Lapangan d', '4335170', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('263', '79', '1', '570802354', '', '', 'HADI MUTOHAR', '', '3989080', '0', '0', '3989080', '3', 'Pelaksana Junior Pas Pela', '3989080', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('264', '258', '1', '570902361', '', '', 'MOCHAMMAD FATIR RAHM', '', '4242840', '0', '0', '4242840', '3', 'Pelaksana Administrasi SD', '4242840', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('265', '181', '1', '571002376', '', '', 'RIDUWAN', '', '4464530', '0', '0', '4464530', '3', 'Pelaksana Senior Pemandua', '4464530', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('266', '9', '1', '571002382', '', '', 'SUKARDI', '', '4242700', '0', '0', '4242700', '3', 'Pelaksana Pelayaran Rakya', '4242700', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('267', '252', '1', '571102389', '', '', 'MOCH.YUSUF', '', '4736180', '0', '0', '4736180', '3', 'Staf Muda IV', '4736180', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('268', '181', '1', '571202392', '', '', 'SUGIANTO', '', '4334770', '0', '0', '4334770', '3', 'Operator Senior  Radio Te', '4334770', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('269', '252', '1', '571202399', '', '', 'MATSIDI', '', '4605580', '0', '0', '4605580', '3', 'Pelaksana Senior Pendapat', '4605580', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('270', '231', '1', '571202403', '', '', 'MASIRAT, S.Sos', '', '4117210', '0', '0', '4117210', '3', 'Pelaksana Perencanaan dan', '4117210', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('271', '192', '1', '571202405', '', '', 'R. DIDIK SOEWARSO', '', '4324380', '0', '0', '4324380', '3', 'Staf Pelaksana Senior I', '4324380', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('272', '231', '1', '571202406', '', '', 'SOEDEWO, S.Sos.', '', '4335170', '0', '0', '4335170', '3', 'Pelaksana Senior Perencan', '4335170', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('273', '3', '1', '571203381', '', '', 'ANDI SUHERMAN', '', '6307740', '0', '0', '6307740', '3', 'Pandu Utama', '6307740', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('274', '193', '1', '580302423', '', '', 'KUSWANTO, S.Sos', '', '5363060', '0', '0', '5363060', '3', 'Supervisor Usaha Properti', '5363060', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('275', '9', '1', '580302425', '', '', 'MACHMUD', '', '4365300', '0', '0', '4365300', '3', 'Pelaksana Pelayanan Kade', '4365300', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('276', '79', '1', '580303235', '', '', 'DIKUN', '', '3879870', '0', '0', '3879870', '3', 'Pelaksana Pas Pelabuhan M', '3879870', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('277', '3', '1', '580303405', '', '', 'MULYANTO', '', '5563000', '0', '0', '5563000', '3', 'Pandu Madya II', '5563000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('278', '259', '1', '580402427', '', '', 'ARIEF EKO SUSILO', '', '5560170', '0', '0', '5560170', '3', 'Supervisor Tata Usaha', '5560170', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('279', '261', '1', '580402430', '', '', 'MARTINI', '', '4398000', '0', '0', '4398000', '3', 'Pelaksana Perikatan', '4398000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('280', '183', '1', '580403237', '', '', 'KARNO', '', '3499140', '0', '0', '3499140', '3', 'Pelaksana Junior Administ', '3499140', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('281', '259', '1', '580502437', '', '', 'SUBANI, S. Sos', '', '5149190', '0', '0', '5149190', '3', 'Supervisor Rumah Tangga', '5149190', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('282', '243', '1', '580502440', '', '', 'SUMARJONO', '', '4364550', '0', '0', '4364550', '3', 'Pelaksana Jaringan Listri', '4364550', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('283', '192', '1', '580502443', '', '', 'SUNARTO', '', '4506690', '0', '0', '4506690', '3', 'Pelaksana Pelayanan Term.', '4506690', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('284', '256', '1', '580502451', '', '', 'ACHMAD BAROTO, Ir. M', '', '13715000', '0', '0', '13715000', '3', 'General Manajer Cabang Pe', '13715000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('285', '192', '1', '580603265', '', '', 'MOHAMMAD SALEH', '', '4023490', '0', '0', '4023490', '3', 'Pelaksana Pelayanan Term.', '4023490', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('286', '192', '1', '580702464', '', '', 'RISKAN', '', '4102500', '0', '0', '4102500', '3', 'Pelaksana Junior Pelayana', '4102500', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('287', '10', '1', '580702465', '', '', 'SUKARNO, S.Sos', '', '4334680', '0', '0', '4334680', '3', 'Kepala Gudang, Lapangan P', '4334680', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('288', '3', '1', '580703399', '', '', 'ABDUL HARIS AKBANI', '', '6127790', '0', '0', '6127790', '3', 'Pandu Madya I', '6127790', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('289', '258', '1', '580802466', '', '', 'KOESMARTINI', '', '4248660', '0', '0', '4248660', '3', 'Pelaksana Senior Kesejaht', '4248660', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('290', '79', '1', '580802477', '', '', 'M. ALI', '', '4335080', '0', '0', '4335080', '3', 'Pelaksana Senior Pas Pela', '4335080', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('291', '181', '1', '580802478', '', '', 'SUHARDJI, Bc.HK', '', '4127990', '0', '0', '4127990', '3', 'Pelaksana Pemanduan, Penu', '4127990', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('292', '244', '1', '580802479', '', '', 'BAMBANG BOEDIRAHARDJ', '', '6722680', '0', '0', '6722680', '3', 'Staf Muda I', '6722680', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('293', '10', '1', '580803032', '', '', 'SUDIRO SETIAWAN, S.S', '', '4333980', '0', '0', '4333980', '3', 'Kepala Gudang, Lap. Penum', '4333980', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('294', '3', '1', '580803382', '', '', 'AGUS HANAFI, S.IP', '', '6128510', '0', '0', '6128510', '3', 'Pandu Madya I', '6128510', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('295', '195', '1', '580903242', '', '', 'MULYANTO', '', '3552280', '0', '0', '3552280', '3', 'Pelaksana Junior PBK', '3552280', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('296', '10', '1', '581002486', '', '', 'HARTONO, S.Sos', '', '4324090', '0', '0', '4324090', '3', 'Pelaksana Senior Gudang, ', '4324090', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('297', '172', '1', '581003139', '', '', 'SAMSUL HIDAYAT, Ir.', '', '3777740', '0', '0', '3777740', '3', 'Pelaksana Jaringan Listri', '3777740', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('298', '231', '1', '581102489', '', '', 'BAMBANG WIDJATMOKO, ', '', '4345590', '0', '0', '4345590', '3', 'Pelaksana Senior Pengenda', '4345590', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('299', '259', '1', '581103042', '', '', 'BERNADUS PRASETYO UT', '', '5166380', '0', '0', '5166380', '3', 'Supervisor Arsip', '5166380', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('300', '181', '1', '581103312', '', '', 'ABDUL MUKSIN S.Y.', '', '3880400', '0', '0', '3880400', '3', 'Pelaksana Junior Pemandua', '3880400', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('301', '3', '1', '581103402', '', '', 'YACOB SILAS', '', '5561880', '0', '0', '5561880', '3', 'Pandu Madya I', '5561880', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('302', '79', '1', '581202500', '', '', 'MOH. SALEH', '', '4115190', '0', '0', '4115190', '3', 'Pelaksana Junior Pas Pela', '4115190', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('303', '10', '1', '590102502', '', '', 'SULIONO', '', '4242970', '0', '0', '4242970', '3', 'Staf Pelaksana Senior II', '4242970', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('304', '183', '1', '590102504', '', '', 'CHARNADI', '', '5328310', '0', '0', '5328310', '3', 'Supervisor Administrasi P', '5328310', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('305', '231', '1', '590102505', '', '', 'MAS SUMANTRI, S.Sos.', '', '4736180', '0', '0', '4736180', '3', 'Staf Muda IV', '4736180', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('306', '231', '1', '590202509', '', '', 'ARDIANSJAH', '', '4127990', '0', '0', '4127990', '3', 'Pelaksana Perencanaan dan', '4127990', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('307', '195', '1', '590202512', '', '', 'MOCH. MUCHID', '', '4333980', '0', '0', '4333980', '3', 'Kepala Unit PBK', '4333980', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('308', '235', '1', '590302516', '', '', 'SUPARTI, S.Sos', '', '4367310', '0', '0', '4367310', '3', 'Pelaksana Senior Analisa ', '4367310', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('309', '241', '1', '590402521', '', '', 'MARDI', '', '4103190', '0', '0', '4103190', '3', 'Pelaksana Junior Kebersih', '4103190', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('310', '79', '1', '590402524', '', '', 'GITA SYAIFUL SAIDI', '', '4214120', '0', '0', '4214120', '3', 'Pelaksana Senior Pas Pela', '4214120', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('311', '171', '1', '590402526', '', '', 'SUKAMTO', '', '5148490', '0', '0', '5148490', '3', 'Supervisor Pelayanan Bara', '5148490', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('312', '10', '1', '590402528', '', '', 'SUPARNA', '', '4323110', '0', '0', '4323110', '3', 'Kepala Gudang, Lap. Penum', '4323110', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('313', '297', '1', '590502537', '', '', 'AGUS WIBOWO', '', '3880770', '0', '0', '3880770', '3', 'Pelaksana Junior Pengaman', '3880770', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('314', '172', '1', '590502539', '', '', 'MARDIJOKO', '', '4117290', '0', '0', '4117290', '3', 'Staf Pelaksana Senior II', '4117290', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('315', '79', '1', '590602542', '', '', 'MOKHAMAD SULTON, S.S', '', '4127890', '0', '0', '4127890', '3', 'Pelaksana Pas Pelabuhan', '4127890', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('316', '79', '1', '590602543', '', '', 'POEDYO SOEMANTO, S.S', '', '4333980', '0', '0', '4333980', '3', 'Pelaksana Senior Pas Pela', '4333980', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('317', '241', '1', '590702545', '', '', 'TARJONO, S.Sos., ST.', '', '5871470', '0', '0', '5871470', '3', 'Asisten Manajer Bangunan ', '5871470', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('318', '10', '1', '590702546', '', '', 'MUHAMMAD RODHI ATAYA', '', '4203420', '0', '0', '4203420', '3', 'Staf Pelaksana Senior I', '4203420', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('319', '10', '1', '590702551', '', '', 'DARMADJI', '', '4335040', '0', '0', '4335040', '3', 'Pelaksana Senior Gudang, ', '4335040', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('320', '261', '1', '590802554', '', '', 'ENDANG SETIORINI, SH', '', '5220380', '0', '0', '5220380', '3', 'Supervisor Bantuan Hukum ', '5220380', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('321', '195', '1', '590902563', '', '', 'TRIMO', '', '4242970', '0', '0', '4242970', '3', 'Staf Pelaksana Senior II', '4242970', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('322', '2', '1', '590902566', '', '', 'TRISNO DUMADI, S.Sos', '', '4127990', '0', '0', '4127990', '3', 'Pelaksana Labuh', '4127990', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('323', '172', '1', '590903214', '', '', 'AGUS SUHARTONO, MM', '', '6764600', '0', '0', '6764600', '3', 'Asisten Manajer Operasi T', '6764600', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('324', '181', '1', '591002569', '', '', 'JOKO GANDI PERMANA', '', '4334640', '0', '0', '4334640', '3', 'Operator Senior Radio Tel', '4334640', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('325', '192', '1', '591102578', '', '', 'DJAMALLUDIN', '', '3989180', '0', '0', '3989180', '3', 'Pelaksana Junior Pelayana', '3989180', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('326', '259', '1', '591202579', '', '', 'ABDUL KODIR, SE', '', '4365720', '0', '0', '4365720', '3', 'Pelaksana Rumah Tangga', '4365720', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('327', '9', '1', '591202583', '', '', 'ACHMAD MUDJIONO', '', '4127680', '0', '0', '4127680', '3', 'Pelaksana Pelayanan Kade', '4127680', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('328', '183', '1', '591202584', '', '', 'WIDARI SUTOKO', '', '4335040', '0', '0', '4335040', '3', 'Pelaksana Senior Administ', '4335040', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('329', '259', '1', '600102590', '', '', 'KARTO', '', '4010020', '0', '0', '4010020', '3', 'Pelaksana Kearsipan', '4010020', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('330', '183', '1', '600102592', '', '', 'SUHARTONO, S. Sos', '', '4453980', '0', '0', '4453980', '3', 'Pelaksana Senior Pengusah', '4453980', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('331', '193', '1', '600202598', '', '', 'EMY SUKARTI, S.Sos.', '', '4367550', '0', '0', '4367550', '3', 'Pelaksana Senior Administ', '4367550', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('332', '258', '1', '600202599', '', '', 'FERIANI EKO PANGAJOM', '', '5053200', '0', '0', '5053200', '3', 'Supervisor Pengembangan S', '5053200', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('333', '181', '1', '600202601', '', '', 'SUMIADI', '', '3880250', '0', '0', '3880250', '3', 'Pelaksana Junior Pemandua', '3880250', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('334', '33', '1', '600402609', '', '', 'NELSON', '', '4010020', '0', '0', '4010020', '3', 'Pelaksana Pelayanan', '4010020', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('335', '297', '1', '600402612', '', '', 'MUHAMMAD ALIM', '', '3999840', '0', '0', '3999840', '3', 'Staf Pelaksana Junior I', '3999840', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('336', '296', '1', '600402613', '', '', 'BUDI SETIYONO, SH., ', '', '7304530', '0', '0', '7304530', '3', 'Kepala Satpampel', '7304530', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('337', '79', '1', '600502614', '', '', 'SUGENG PURNOMO', '', '4203130', '0', '0', '4203130', '3', 'Pelaksana Senior Pas Pela', '4203130', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('338', '195', '1', '600502618', '', '', 'SUPRAYITNO', '', '4346780', '0', '0', '4346780', '3', 'Kepala Unit PBK', '4346780', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('339', '293', '1', '600602621', '', '', 'TUKUL, S.Sos', '', '6047180', '0', '0', '6047180', '3', 'Asisten Manajer Pengopera', '6047180', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('340', '3', '1', '600603834', '', '', 'JIMMY CHRISTIAN MAWU', '', '4989160', '0', '0', '4989160', '3', 'Pandu Madya II', '4989160', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('341', '33', '1', '600703240', '', '', 'MA\'IN', '', '3552280', '0', '0', '3552280', '3', 'Pelaksana Junior Pelayana', '3552280', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('342', '10', '1', '600802626', '', '', 'WACHID AGUSNO', '', '4127990', '0', '0', '4127990', '3', 'Staf Pelaksana Senior II', '4127990', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('343', '231', '1', '600802629', '', '', 'AGUS UTOMO EKO PUTRO', '', '4117290', '0', '0', '4117290', '3', 'Pelaksana Perencanaan dan', '4117290', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('344', '183', '1', '601002638', '', '', 'WIWIK SULASTRI, S.So', '', '4368510', '0', '0', '4368510', '3', 'Pelaksana Senior Administ', '4368510', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('345', '3', '1', '601203410', '', '', 'SUHARDI', '', '5260870', '0', '0', '5260870', '3', 'Pandu Madya I', '5260870', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('346', '258', '1', '610502677', '', '', 'SURYONO', '', '5347390', '0', '0', '5347390', '3', 'Supervisor Kesejahteraan ', '5347390', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('347', '259', '1', '610602682', '', '', 'DWI YANI RETNOWATI', '', '4639720', '0', '0', '4639720', '3', 'Staf Pelaksana Senior I', '4639720', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('348', '181', '1', '610802690', '', '', 'SUGIYANTO', '', '4347430', '0', '0', '4347430', '3', 'Operator Senior Radio Tel', '4347430', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('349', '172', '1', '610802691', '', '', 'SUYONO, S. Sos.', '', '5167880', '0', '0', '5167880', '3', 'Supervisor Pelayanan Bara', '5167880', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('350', '235', '1', '610802692', '', '', 'MOCH.TOHIR, S.Sos', '', '5542740', '0', '0', '5542740', '3', 'Supervisor Analisa dan Ev', '5542740', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('351', '10', '1', '610902695', '', '', 'SIS SUWANDI', '', '4242970', '0', '0', '4242970', '3', 'Pelaksana Pelayaran Rakya', '4242970', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('352', '3', '1', '610903441', '', '', 'MASHURI', '', '4988140', '0', '0', '4988140', '3', 'Pandu Madya II', '4988140', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('353', '231', '1', '611002700', '', '', 'MARGINI, Dra.', '', '4161320', '0', '0', '4161320', '3', 'Pelaksana Pengendalian da', '4161320', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('354', '3', '1', '611003443', '', '', 'E. DWI AGUNG SAROSO', '', '5405780', '0', '0', '5405780', '3', 'Pandu Madya II', '5405780', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('355', '249', '1', '611003523', '', '', 'BILL LIBRYANT YULLER', '', '10207900', '0', '0', '10207900', '3', 'Manajer Keuangan', '10207900', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('356', '172', '1', '611202708', '', '', 'GATOT SETIYO IRIANTO', '', '4335080', '0', '0', '4335080', '3', 'Senior Staf I', '4335080', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('357', '79', '1', '620103254', '', '', 'SOEHARDJOKO', '', '3857160', '0', '0', '3857160', '3', 'Pelaksana Pelayanan Pas P', '3857160', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('358', '10', '1', '620202713', '', '', 'SUBANDRI', '', '4335170', '0', '0', '4335170', '3', 'Pelaksana Senior Gudang, ', '4335170', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('359', '240', '1', '620302717', '', '', 'BASORI, Ir., M.MT', '', '9637120', '0', '0', '9637120', '3', 'Manajer Teknik', '9637120', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('360', '79', '1', '620502724', '', '', 'DIDIK HERDIANTO', '', '3989080', '0', '0', '3989080', '3', 'Pelaksana Junior Pas Pela', '3989080', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('361', '231', '1', '620502725', '', '', 'RACHMAD BASUKI', '', '4117290', '0', '0', '4117290', '3', 'Pelaksana Perencanaan dan', '4117290', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('362', '79', '1', '620502727', '', '', 'ABDUL MANAN, S.Sos', '', '4464280', '0', '0', '4464280', '3', 'Pelaksana Senior Pas Pela', '4464280', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('363', '183', '1', '620602729', '', '', 'NANANG MUDJIONO', '', '4606190', '0', '0', '4606190', '3', 'Pelaksana Senior Administ', '4606190', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('364', '192', '1', '620702732', '', '', 'MOH. ICHSAN, SE.', '', '4335170', '0', '0', '4335170', '3', 'Pelaksana Senior Usaha Ai', '4335170', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('365', '235', '1', '620702734', '', '', 'MOCH.MASRUR, Drs.,MM', '', '4852030', '0', '0', '4852030', '3', 'Supervisor Promosi dan Bi', '4852030', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('366', '3', '1', '620703581', '', '', 'BAMBANG ARIFIN', '', '5109020', '0', '0', '5109020', '3', 'Pandu Madya II', '5109020', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('367', '3', '1', '620703582', '', '', 'SYAMSUL HUDA', '', '4598420', '0', '0', '4598420', '3', 'Pandu Muda I', '4598420', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('368', '235', '1', '620902737', '', '', 'HARTOWO, S.Sos', '', '4127990', '0', '0', '4127990', '3', 'Pelaksana Analisa dan Eva', '4127990', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('369', '195', '1', '620902739', '', '', 'MUNADI', '', '4365280', '0', '0', '4365280', '3', 'Staf Pelaksana Senior II', '4365280', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('370', '11', '1', '621002741', '', '', 'CHOIRIL', '', '4022060', '0', '0', '4022060', '3', 'Pelaksana Pelayanan Lapan', '4022060', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('371', '193', '1', '621002742', '', '', 'KETUT BUDIARTHA, Drs', '', '5753730', '0', '0', '5753730', '3', 'Supervisor Usaha Properti', '5753730', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('372', '252', '1', '621203256', '', '', 'SUYONO', '', '3936360', '0', '0', '3936360', '3', 'Pelaksana Senior Penghasi', '3936360', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('373', '33', '1', '630103250', '', '', 'SRI HARTANTO', '', '3552280', '0', '0', '3552280', '3', 'Staf Pelaksana Junior I', '3552280', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('374', '192', '1', '630202750', '', '', 'ERNA NURHAYATI, Dra,', '', '6103760', '0', '0', '6103760', '3', 'Asisten Manajer Aneka Usa', '6103760', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('375', '3', '1', '630203415', '', '', 'MALDI', '', '5109020', '0', '0', '5109020', '3', 'Pandu Madya II', '5109020', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('376', '3', '1', '630303832', '', '', 'SUBAGIYO', '', '4493740', '0', '0', '4493740', '3', 'Pandu Muda I', '4493740', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('377', '259', '1', '630503264', '', '', 'ACHMAD AMROINI', '', '3772780', '0', '0', '3772780', '3', 'Pelaksana Tata Usaha', '3772780', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('378', '79', '1', '630903118', '', '', 'ARIES MOCHAMAD HASAN', '', '4010020', '0', '0', '4010020', '3', 'Pelaksana Pas Pelabuhan N', '4010020', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('379', '3', '1', '630903577', '', '', 'PRAMUDJI', '', '5109020', '0', '0', '5109020', '3', 'Pandu Madya II', '5109020', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('380', '181', '1', '631003120', '', '', 'TAJI', '', '3989010', '0', '0', '3989010', '3', 'Pelaksana Junior Pemandua', '3989010', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('381', '259', '1', '640203258', '', '', 'AMTONO', '', '3576230', '0', '0', '3576230', '3', 'Pelaksana Junior Kearsipa', '3576230', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('382', '3', '1', '640303585', '', '', 'MARTHEN WAWOLUMAYA', '', '4989070', '0', '0', '4989070', '3', 'Pandu Madya II', '4989070', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('383', '3', '1', '640403830', '', '', 'BAHARA, MM.', '', '5109040', '0', '0', '5109040', '3', 'Pandu Madya II', '5109040', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('384', '172', '1', '640503107', '', '', 'SUPRIYATININGSIH', '', '4161320', '0', '0', '4161320', '3', 'Pelaksana Pengawasan & Pe', '4161320', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('385', '252', '1', '640703259', '', '', 'TUWUH', '', '3793070', '0', '0', '3793070', '3', 'Pelaksana Pendapatan', '3793070', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('386', '192', '1', '640703262', '', '', 'JUDI RACHMANSJAH', '', '3551830', '0', '0', '3551830', '3', 'Pelaksana Junior Pelayana', '3551830', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('387', '3', '1', '640803411', '', '', 'AGUS PUDJOTOMO,SE', '', '5108660', '0', '0', '5108660', '3', 'Pandu Madya II', '5108660', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('388', '3', '1', '641203412', '', '', 'MURTINA HARYADI', '', '5109010', '0', '0', '5109010', '3', 'Pandu Madya II', '5109010', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('389', '3', '1', '650203442', '', '', 'M.AMIROEL KOESNI', '', '5260820', '0', '0', '5260820', '3', 'Pandu Madya I', '5260820', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('390', '231', '1', '650403261', '', '', 'WIDODO', '', '3868810', '0', '0', '3868810', '3', 'Pelaksana Perencanaan dan', '3868810', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('391', '252', '1', '650603241', '', '', 'MARYONO NURAFAN, SE.', '', '3936360', '0', '0', '3936360', '3', 'Pelaksana Senior Hutang P', '3936360', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('392', '193', '1', '650703609', '', '', 'ENI SURYANI, SH.', '', '3969640', '0', '0', '3969640', '3', 'Pelaksana Senior Usaha Pr', '3969640', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('393', '3', '1', '650703955', '', '', 'SUCIPTO', '', '4493490', '0', '0', '4493490', '3', 'Pandu Muda I', '4493490', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('394', '250', '1', '650903263', '', '', 'ZULFIKAR ALIMAKHIS', '', '4023490', '0', '0', '4023490', '3', 'Pelaksana Senior Verifika', '4023490', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('395', '3', '1', '651103440', '', '', 'IRWANSYAH, MM.', '', '5108350', '0', '0', '5108350', '3', 'Pandu Madya II', '5108350', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('396', '195', '1', '651203265', '', '', 'SUKANDAR', '', '3547220', '0', '0', '3547220', '3', 'Staf Pelaksana Junior I', '3547220', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('397', '3', '1', '660303576', '', '', 'WARASSIKUN', '', '4989070', '0', '0', '4989070', '3', 'Pandu Madya II', '4989070', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('398', '250', '1', '660303710', '', '', 'MU\'AROFAH, Dra.', '', '4547670', '0', '0', '4547670', '3', 'Supervisor Pembukuan', '4547670', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('399', '3', '1', '660503956', '', '', 'JOKO PRIYONO', '', '5328380', '0', '0', '5328380', '3', 'Pandu Madya II', '5328380', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('400', '193', '1', '670203314', '', '', 'WIDJI SANTOSO, SE.', '', '3778220', '0', '0', '3778220', '3', 'Pelaksana Usaha Properti ', '3778220', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('401', '259', '1', '670303308', '', '', 'SLAMET RIYANTO, SE.', '', '3937510', '0', '0', '3937510', '3', 'Pelaksana Senior Tata Usa', '3937510', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('402', '195', '1', '671003618', '', '', 'NUNUK PUDJIWINARNI, ', '', '3970010', '0', '0', '3970010', '3', 'Pelaksana Senior Depo & P', '3970010', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('403', '282', '1', '680103592', '', '', 'FIRMANIANSYAH, S.Kom', '', '6240620', '0', '0', '6240620', '3', 'Manajer Teknologi Informa', '6240620', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('404', '258', '1', '680103734', '', '', 'PURWANI TRANGWESTI, ', '', '4315310', '0', '0', '4315310', '3', 'Psikolog Muda', '4315310', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('405', '251', '1', '680503848', '', '', 'SUKARIYADI RUDI MEID', '', '4515290', '0', '0', '4515290', '3', 'Supervisor Analisa Kesist', '4515290', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('406', '244', '1', '680803843', '', '', 'ARDIONO', '', '3625930', '0', '0', '3625930', '3', 'Pelaksana Junior Administ', '3625930', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('407', '251', '1', '680903301', '', '', 'ANDIK SUBAGIO, SE.', '', '3936780', '0', '0', '3936780', '3', 'Pelaksana Senior Analisa ', '3936780', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('408', '3', '1', '681003958', '', '', 'HENDRA SISWANTO', '', '4876050', '0', '0', '4876050', '3', 'Pandu Madya II', '4876050', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('409', '79', '1', '681103307', '', '', 'ZAINAL ARIFIN', '', '3551830', '0', '0', '3551830', '3', 'Pelaksana Junior Pas Pela', '3551830', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('410', '193', '1', '681203628', '', '', 'LASIARA, SE', '', '3778510', '0', '0', '3778510', '3', 'Pelaksana Usaha Properti ', '3778510', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('411', '251', '1', '681203661', '', '', 'RATNA SARI, SE.', '', '3969640', '0', '0', '3969640', '3', 'Staf Pelaksana Senior I', '3969640', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('412', '33', '1', '690103559', '', '', 'SUGIONO', '', '3494220', '0', '0', '3494220', '3', 'Staf Pelaksana Junior I', '3494220', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('413', '243', '1', '690303586', '', '', 'KARTIKO ADI, ST. MM.', '', '5282190', '0', '0', '5282190', '3', 'Asisten Manajer Listrik d', '5282190', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('414', '236', '1', '690403768', '', '', 'PUTUT SRI MULJANTO, ', '', '5265360', '0', '0', '5265360', '3', 'Asisten Manajer Pemasaran', '5265360', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('415', '297', '1', '690703306', '', '', 'TONI SUHARTONO', '', '3562360', '0', '0', '3562360', '3', 'Staf Pelaksana Junior I', '3562360', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('416', '259', '1', '690803309', '', '', 'AGUS PRAJITNO', '', '4023330', '0', '0', '4023330', '3', 'Pelaksana Senior Tata Usa', '4023330', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('417', '250', '1', '690903527', '', '', 'TENNY IVONEKE, SE.', '', '4520280', '0', '0', '4520280', '3', 'Staf Muda III', '4520280', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('418', '252', '1', '691003313', '', '', 'SURYONO', '', '3868810', '0', '0', '3868810', '3', 'Pelaksana Hutang Piutang', '3868810', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('419', '259', '1', '691103486', '', '', 'FAUJI', '', '3858000', '0', '0', '3858000', '3', 'Pelaksana Rumah Tangga', '3858000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('420', '252', '1', '700103302', '', '', 'HARUN ROSID', '', '3777900', '0', '0', '3777900', '3', 'Pelaksana Hutang Piutang', '3777900', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('421', '243', '1', '700103305', '', '', 'SOEIRWAN', '', '3552330', '0', '0', '3552330', '3', 'Pelaksana Junior Jaringan', '3552330', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('422', '252', '1', '700403457', '', '', 'WIWIK KUSWINARTI, SE', '', '3969250', '0', '0', '3969250', '3', 'Kasir', '3969250', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('423', '244', '1', '700503736', '', '', 'PRASETYO, ST', '', '4515310', '0', '0', '4515310', '3', 'Supervisor Perencanaan', '4515310', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('424', '3', '1', '700703583', '', '', 'MATRUFI, SE', '', '5109020', '0', '0', '5109020', '3', 'Pandu Madya II', '5109020', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('425', '3', '1', '700703839', '', '', 'SUGENG TRI WALUYO, S', '', '4989160', '0', '0', '4989160', '3', 'Pandu Madya II', '4989160', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('426', '252', '1', '701103311', '', '', 'SUPRAYITNO', '', '3858000', '0', '0', '3858000', '3', 'Pelaksana Hutang Piutang', '3858000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('427', '3', '1', '701203953', '', '', 'SUKO MURJONO', '', '4493490', '0', '0', '4493490', '3', 'Pandu Muda I', '4493490', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('428', '3', '1', '710303954', '', '', 'DJOKO SUWARNO', '', '4493490', '0', '0', '4493490', '3', 'Pandu Muda I', '4493490', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('429', '252', '1', '710603312', '', '', 'SUDARJI, A.Md', '', '3858000', '0', '0', '3858000', '3', 'Pelaksana Hutang Piutang', '3858000', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('430', '288', '1', '710703522', '', '', 'AHSAN FAHRUZI, SE.', '', '3710150', '0', '0', '3710150', '3', 'Pelaksana Senior Statisti', '3710150', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('431', '3', '1', '720203578', '', '', 'PANTJA DJATMIKO RACH', '', '5109020', '0', '0', '5109020', '3', 'Pandu Madya II', '5109020', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('432', '3', '1', '720203579', '', '', 'ZAINAL ABIDIN, SE.', '', '4989070', '0', '0', '4989070', '3', 'Pandu Madya II', '4989070', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('433', '241', '1', '720303777', '', '', 'HENDIEK EKO SETIANTO', '', '4515310', '0', '0', '4515310', '3', 'Supervisor Bangunan Darat', '4515310', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('434', '3', '1', '720503957', '', '', 'WAHYUDI SETYO NUGROH', '', '4988910', '0', '0', '4988910', '3', 'Pandu Madya II', '4988910', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('435', '235', '1', '720703763', '', '', 'AHMAD NIZAR, SE', '', '5155520', '0', '0', '5155520', '3', 'Asisten Manajer Analisa d', '5155520', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('436', '259', '1', '720803934', '', '', 'TRIONO', '', '3489320', '0', '0', '3489320', '3', 'Pelaksana Junior Rumah Ta', '3489320', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('437', '241', '1', '730403776', '', '', 'JOKO NOERHUDHA, ST', '', '4515310', '0', '0', '4515310', '3', 'Supervisor Bangunan Panta', '4515310', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('438', '261', '1', '730703623', '', '', 'FITRI KAMALUDDIN, SH', '', '4223050', '0', '0', '4223050', '3', 'Staf Muda IV', '4223050', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('439', '183', '1', '730703863', '', '', 'YULIA DHARMASTUTI, S', '', '3814760', '0', '0', '3814760', '3', 'Pelaksana Pengusahaan', '3814760', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('440', '252', '1', '731003864', '', '', 'NUR ANDAYANI, SE', '', '3743260', '0', '0', '3743260', '3', 'Pelaksana Hutang Piutang', '3743260', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('441', '3', '1', '731103960', '', '', 'PRAMBUDIONO', '', '4493490', '0', '0', '4493490', '3', 'Pandu Muda I', '4493490', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('442', '3', '1', '740604068', '', '', 'ANDI RUKKA', '', '4794120', '0', '0', '4794120', '3', 'Pandu Madya II', '4794120', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('443', '252', '1', '740703673', '', '', 'ADRI SUPRIYADI', '', '3970880', '0', '0', '3970880', '3', 'Pelaksana Senior Hutang P', '3970880', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('444', '261', '1', '740803796', '', '', 'DHANY RACHMAD AGUSTI', '', '3936110', '0', '0', '3936110', '3', 'Pelaksana Senior Humas', '3936110', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('445', '192', '1', '740803861', '', '', 'EMI PURWANINGSIH', '', '3815560', '0', '0', '3815560', '3', 'Pelaksana Administrasi', '3815560', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('446', '172', '1', '750703505', '', '', 'TEGUH PRASETYO ADI W', '', '3505320', '0', '0', '3505320', '3', 'Staf Pelaksana Junior I', '3505320', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('447', '241', '1', '750703852', '', '', 'ELIN YULIANTI, S.KM.', '', '3970770', '0', '0', '3970770', '3', 'Pelaksana Senior Kebersih', '3970770', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('448', '259', '1', '760803862', '', '', 'SRIKIT PRISTIANA', '', '3971150', '0', '0', '3971150', '3', 'Sekretaris General Manaje', '3971150', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('449', '251', '1', '760903866', '', '', 'IFTITAHUR ROKHMAH', '', '3814760', '0', '0', '3814760', '3', 'Pelaksana Analisa Kesiste', '3814760', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('450', '258', '1', '761103865', '', '', 'ANIK SUTILAWATI, SE.', '', '3815510', '0', '0', '3815510', '3', 'Pelaksana Pengembangan SD', '3815510', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('451', '243', '1', '761104033', '', '', 'ACHMAD YUSAK MACHRUS', '', '4515400', '0', '0', '4515400', '3', 'Supervisor Peralatan', '4515400', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('452', '250', '1', '770604190', '', '', 'YONI SETIAWAN, A.Md.', '', '3594720', '0', '0', '3594720', '3', 'Staf Pelaksana Senior II', '3594720', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('453', '252', '1', '771003859', '', '', 'ERNAWATI', '', '3743650', '0', '0', '3743650', '3', 'Pelaksana Administrasi Gu', '3743650', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('454', '250', '1', '780904168', '', '', 'PUSPASARI, SE., Ak.', '', '3743790', '0', '0', '3743790', '3', 'Pelaksana Senior Pembukua', '3743790', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('455', '244', '1', '801004170', '', '', 'YAS AMALISKA, ST', '', '3743790', '0', '0', '3743790', '3', 'Staf Pelaksana Senior I', '3743790', '0', '1', '1', null, '0', '1', '4', '6', '2015');
INSERT INTO `tbl_emp` VALUES ('456', '261', '1', '810104169', '', '', 'UMI SYARIFAH AMBARWA', '', '3743580', '0', '0', '3743580', '3', 'Staf Pelaksana Senior I', '3743580', '0', '1', '1', null, '0', '1', '4', '6', '2015');

-- ----------------------------
-- Table structure for `tbl_emp_act`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp_act`;
CREATE TABLE `tbl_emp_act` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_emp_id` bigint(20) DEFAULT NULL,
  `tbl_acm_id` bigint(20) DEFAULT NULL,
  `costcenter_desc` varchar(200) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `cost_type` varchar(100) DEFAULT NULL,
  `budget_type` varchar(100) DEFAULT NULL,
  `input_rate` float DEFAULT NULL,
  `output_rate` float DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_emp_act
-- ----------------------------
INSERT INTO `tbl_emp_act` VALUES ('4', '1', '3', 'tesss', '8', '100', 'Fixed', 'Fixed', '0', '0', '2015-05-14 08:32:18', 'Goyz');
INSERT INTO `tbl_emp_act` VALUES ('5', '3', '3', 'XXX', null, null, null, null, null, null, '2015-05-14 09:57:35', 'Goyz');
INSERT INTO `tbl_emp_act` VALUES ('6', '4', '3', 'GG', null, null, null, null, null, null, '2015-05-14 09:57:40', 'Goyz');
INSERT INTO `tbl_emp_act` VALUES ('7', '1', '4', 'tesss', '8', '100', 'Fixed', 'Fixed', '0', '0', '2015-05-14 08:32:18', 'Goyz');
INSERT INTO `tbl_emp_act` VALUES ('8', '1', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tbl_exp`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_exp`;
CREATE TABLE `tbl_exp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbl_loc_id` int(11) DEFAULT NULL,
  `tbl_model_id` int(11) DEFAULT NULL,
  `account` varchar(10) DEFAULT NULL,
  `descript` varchar(500) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `budget_1` float DEFAULT NULL,
  `budget_2` float DEFAULT NULL,
  `exp_level` int(11) DEFAULT NULL,
  `tbl_rdm_id` int(11) DEFAULT NULL,
  `rd_tot_qty` float DEFAULT NULL,
  `budgettype` varchar(10) DEFAULT NULL,
  `budgetchg` varchar(100) DEFAULT NULL,
  `bulan` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1029 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_exp
-- ----------------------------
INSERT INTO `tbl_exp` VALUES ('1', '195', '1', '807.06.00', 'Biaya Rumah Tangga', '1450800', '67017600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('2', '252', '1', '807.06.00', 'Biaya Rumah Tangga', '54000', '27475900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('3', '2', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '5104820', '73217600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('4', '6', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '5164000', '82607500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('5', '172', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '26246400', '453551000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('6', '171', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '33974200', '501775000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('7', '163', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '5887180', '54492900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('8', '79', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '73206800', '1091170000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('9', '55', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '7700150', '146729000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('10', '33', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '15678600', '327489000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('11', '11', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '9460130', '148280000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('12', '10', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '66167400', '1160010000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('13', '9', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '29295000', '470361000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('14', '244', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '32920700', '433334000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('15', '243', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '39830000', '601474000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('16', '241', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '27252500', '423145000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('17', '240', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '5888000', '88883900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('18', '238', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '8518400', '106210000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('19', '236', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '17458600', '219786000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('20', '235', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '22168000', '310094000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('21', '231', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '57313000', '793224000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('22', '227', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '5528890', '67467300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('23', '6', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '311816', '4782880', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('24', '3', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '18104200', '200474000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('25', '2', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '339512', '4011210', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('26', '297', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '16643300', '184258000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('27', '296', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '4154350', '28531800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('28', '293', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '3437610', '72076100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('29', '288', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '12772400', '166872000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('30', '282', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '3241300', '43420200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('31', '261', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '32762100', '417013000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('32', '251', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '985000', '54231000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('33', '293', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1135000', '25251300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('34', '250', '1', '808.99.00', 'Biaya Umum Lainnya', '14650000', '262933000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('35', '11', '1', '801.05.04', 'Tunjangan Prestasi', '6450000', '93130300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('36', '10', '1', '801.05.04', 'Tunjangan Prestasi', '43050000', '730498000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('37', '9', '1', '801.05.04', 'Tunjangan Prestasi', '18600000', '295325000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('38', '6', '1', '801.05.04', 'Tunjangan Prestasi', '3300000', '50233400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('39', '3', '1', '801.05.04', 'Tunjangan Prestasi', '96350000', '1229880000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('40', '2', '1', '801.05.04', 'Tunjangan Prestasi', '3300000', '45677300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('41', '296', '1', '801.05.03', 'Tunjangan Struktural', '2550000', '8913650', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('42', '293', '1', '801.05.03', 'Tunjangan Struktural', '1500000', '7672660', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('43', '288', '1', '801.05.03', 'Tunjangan Struktural', '1500000', '8764760', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('44', '282', '1', '801.05.03', 'Tunjangan Struktural', '2550000', '11564500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('45', '261', '1', '801.05.03', 'Tunjangan Struktural', '7800000', '31273600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('46', '259', '1', '801.05.03', 'Tunjangan Struktural', '5400000', '32137000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('47', '258', '1', '801.05.03', 'Tunjangan Struktural', '5400000', '30400100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('48', '257', '1', '801.05.03', 'Tunjangan Struktural', '2800000', '12166000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('49', '256', '1', '801.05.03', 'Tunjangan Struktural', '4500000', '19810800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('50', '252', '1', '801.05.03', 'Tunjangan Struktural', '5400000', '32868200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('51', '251', '1', '801.05.03', 'Tunjangan Struktural', '5400000', '28114900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('52', '250', '1', '801.05.03', 'Tunjangan Struktural', '5400000', '29131900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('53', '249', '1', '801.05.03', 'Tunjangan Struktural', '2800000', '14515100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('54', '244', '1', '801.05.03', 'Tunjangan Struktural', '7064000', '27640300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('55', '243', '1', '801.05.03', 'Tunjangan Struktural', '4200000', '25245400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('56', '241', '1', '801.05.03', 'Tunjangan Struktural', '6600000', '34363100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('57', '240', '1', '801.05.03', 'Tunjangan Struktural', '2800000', '13887000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('58', '238', '1', '801.05.03', 'Tunjangan Struktural', '4000000', '17309500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('59', '236', '1', '801.05.03', 'Tunjangan Struktural', '4200000', '20789900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('60', '235', '1', '801.05.03', 'Tunjangan Struktural', '5400000', '25784000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('61', '231', '1', '801.05.03', 'Tunjangan Struktural', '4200000', '28247800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('62', '227', '1', '801.05.03', 'Tunjangan Struktural', '2800000', '13633000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('63', '195', '1', '801.05.03', 'Tunjangan Struktural', '8168000', '38925600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('64', '193', '1', '801.05.03', 'Tunjangan Struktural', '5400000', '30816900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('65', '192', '1', '801.05.03', 'Tunjangan Struktural', '4200000', '26511000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('66', '188', '1', '801.05.03', 'Tunjangan Struktural', '2800000', '13679600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('67', '183', '1', '801.05.03', 'Tunjangan Struktural', '4200000', '28963100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('68', '181', '1', '801.05.03', 'Tunjangan Struktural', '5400000', '33929700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('69', '180', '1', '801.05.03', 'Tunjangan Struktural', '2800000', '12894600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('70', '173', '1', '801.05.03', 'Tunjangan Struktural', '1200000', '5469830', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('71', '172', '1', '801.05.03', 'Tunjangan Struktural', '3000000', '24156600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('72', '171', '1', '801.05.03', 'Tunjangan Struktural', '6600000', '33322200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('73', '163', '1', '801.05.03', 'Tunjangan Struktural', '2800000', '11286600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('74', '9', '1', '801.05.03', 'Tunjangan Struktural', '2400000', '10748200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('75', '3', '1', '801.05.03', 'Tunjangan Struktural', '24158000', '175185000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('76', '297', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '1008870', '11470200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('77', '296', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '900182', '4781760', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('78', '293', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '559577', '6958110', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('79', '288', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '1152650', '13790000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('80', '282', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '749326', '6131380', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('81', '261', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '3842850', '41540000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('82', '259', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '4053580', '39396200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('83', '258', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '3455660', '45068600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('84', '257', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '1667800', '10688900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('85', '256', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '2912100', '35577600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('86', '252', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '5452800', '71071000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('87', '251', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '2872140', '34656900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('88', '250', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '3190040', '31969400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('89', '249', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '1635220', '20207300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('90', '244', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '3497290', '38843100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('91', '243', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '3400770', '41371500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('92', '241', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '3229580', '32566100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('93', '240', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '1499130', '14483300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('94', '238', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '2792750', '22744100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('95', '236', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '2227540', '22051800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('96', '235', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '2396140', '27004600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('97', '231', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '4780230', '58753600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('98', '227', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '1384540', '12677600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('99', '195', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '7572110', '76000100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('100', '193', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '4474720', '47602600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('101', '192', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '4341040', '50598200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('102', '188', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '906625', '18209700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('103', '183', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '3572580', '45832900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('104', '181', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '4705410', '47743500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('105', '180', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '1386300', '14802200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('106', '173', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '3507810', '8098450', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('107', '172', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '2339060', '32967300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('108', '305', '1', '809.06.00', 'Rugi Selisih Kurs', '425074000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('109', '79', '1', '808.99.00', 'Biaya Umum Lainnya', '3920000', '34613000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('110', '181', '1', '803.07.00', 'Biaya Pemeliharaan Peralatan', '1150000', '14667200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('111', '172', '1', '803.07.00', 'Biaya Pemeliharaan Peralatan', '565000', '11716000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('112', '259', '1', '808.06.00', 'Biaya Promosi', '250000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('113', '297', '1', '801.05.04', 'Tunjangan Prestasi', '10800000', '117873000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('114', '296', '1', '801.05.04', 'Tunjangan Prestasi', '2250000', '16647100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('115', '293', '1', '801.05.04', 'Tunjangan Prestasi', '2050000', '25291900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('116', '288', '1', '801.05.04', 'Tunjangan Prestasi', '8650000', '88842900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('117', '282', '1', '801.05.04', 'Tunjangan Prestasi', '2250000', '26898200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('118', '261', '1', '801.05.04', 'Tunjangan Prestasi', '21350000', '256903000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('119', '259', '1', '801.05.04', 'Tunjangan Prestasi', '31750000', '415278000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('120', '258', '1', '801.05.04', 'Tunjangan Prestasi', '19700000', '268696000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('121', '257', '1', '801.05.04', 'Tunjangan Prestasi', '2250000', '26822300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('122', '256', '1', '801.05.04', 'Tunjangan Prestasi', '2540000', '33726400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('123', '252', '1', '801.05.04', 'Tunjangan Prestasi', '42700000', '569786000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('124', '251', '1', '801.05.04', 'Tunjangan Prestasi', '15850000', '195384000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('125', '250', '1', '801.05.04', 'Tunjangan Prestasi', '20800000', '255442000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('126', '249', '1', '801.05.04', 'Tunjangan Prestasi', '2250000', '28037200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('127', '244', '1', '801.05.04', 'Tunjangan Prestasi', '19550000', '252242000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('128', '243', '1', '801.05.04', 'Tunjangan Prestasi', '25600000', '344122000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('129', '241', '1', '801.05.04', 'Tunjangan Prestasi', '17300000', '236482000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('130', '240', '1', '801.05.04', 'Tunjangan Prestasi', '2250000', '36238100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('131', '238', '1', '801.05.04', 'Tunjangan Prestasi', '2540000', '31752200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('132', '236', '1', '801.05.04', 'Tunjangan Prestasi', '11000000', '135046000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('133', '235', '1', '801.05.04', 'Tunjangan Prestasi', '14050000', '188796000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('134', '231', '1', '801.05.04', 'Tunjangan Prestasi', '36100000', '449694000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('135', '227', '1', '801.05.04', 'Tunjangan Prestasi', '2250000', '28037200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('136', '195', '1', '801.05.04', 'Tunjangan Prestasi', '51000000', '635610000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('137', '193', '1', '801.05.04', 'Tunjangan Prestasi', '24100000', '358754000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('138', '192', '1', '801.05.04', 'Tunjangan Prestasi', '33250000', '384460000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('139', '188', '1', '801.05.04', 'Tunjangan Prestasi', '2250000', '28037200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('140', '183', '1', '801.05.04', 'Tunjangan Prestasi', '23950000', '333602000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('141', '181', '1', '801.05.04', 'Tunjangan Prestasi', '35050000', '460757000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('142', '180', '1', '801.05.04', 'Tunjangan Prestasi', '2250000', '25759200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('143', '173', '1', '801.05.04', 'Tunjangan Prestasi', '32850000', '49205300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('144', '172', '1', '801.05.04', 'Tunjangan Prestasi', '17050000', '281318000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('145', '171', '1', '801.05.04', 'Tunjangan Prestasi', '19850000', '264111000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('146', '163', '1', '801.05.04', 'Tunjangan Prestasi', '2250000', '21203100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('147', '79', '1', '801.05.04', 'Tunjangan Prestasi', '47400000', '698302000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('148', '55', '1', '801.05.04', 'Tunjangan Prestasi', '4800000', '87055600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('149', '33', '1', '801.05.04', 'Tunjangan Prestasi', '11100000', '219718000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('150', '171', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '3957150', '47308800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('151', '163', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '1496490', '13555600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('152', '79', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '4722710', '69511900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('153', '55', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '480183', '9670060', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('154', '33', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '876056', '15947000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('155', '11', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '541423', '9063860', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('156', '10', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '4354140', '73617500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('157', '9', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '2426650', '32914900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('158', '259', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '47250900', '702452000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('159', '258', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '31838100', '539592000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('160', '257', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '6322250', '68382400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('161', '256', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '8262880', '105566000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('162', '252', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '63658700', '906333000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('163', '251', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '25626500', '364447000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('164', '250', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '32017700', '402264000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('165', '249', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '6322640', '81116800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('166', '195', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '81689400', '1042290000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('167', '193', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '39416200', '604043000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('168', '192', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '52118400', '627957000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('169', '188', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '3924870', '71792800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('170', '183', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '39371800', '581487000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('171', '181', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '56204900', '792518000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('172', '180', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '5528450', '69521200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('173', '173', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '50903900', '129842000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('174', '3', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '141009000', '1860350000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('175', '243', '1', '807.06.00', 'Biaya Rumah Tangga', '632400', '21821200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('176', '259', '1', '807.06.00', 'Biaya Rumah Tangga', '5662500', '248146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('177', '258', '1', '808.15.00', 'Biaya Bantuan Sosial', '2000000', '51170000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('178', '297', '1', '808.99.00', 'Biaya Umum Lainnya', '21150000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('179', '258', '1', '808.11.00', 'Biaya Olah Raga ', '2000000', '257788000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('180', '259', '1', '808.06.00', 'Biaya Promosi', '2000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('181', '259', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '1800000', '287101000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('182', '251', '1', '807.01.00', 'Biaya Cetak  Copy', '1490800', '14500900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('183', '79', '1', '802.09.00', 'Biaya Bahan Pas Pelabuhan', '7162500', '204127000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('184', '241', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '8816450', '6916180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('185', '259', '1', '808.06.00', 'Biaya Promosi', '27350000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('186', '180', '1', '803.08.00', 'Biaya Pemeliharaan Kendaraan', '410550', '14741400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('187', '173', '1', '802.01.00', 'Biaya Bahan Bakar', '270000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('188', '172', '1', '802.01.00', 'Biaya Bahan Bakar', '360000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('189', '171', '1', '802.01.00', 'Biaya Bahan Bakar', '6030000', '4242260', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('190', '163', '1', '802.01.00', 'Biaya Bahan Bakar', '1125000', '832843', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('191', '251', '1', '802.01.00', 'Biaya Bahan Bakar', '360000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('192', '250', '1', '802.01.00', 'Biaya Bahan Bakar', '180000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('193', '252', '1', '802.01.00', 'Biaya Bahan Bakar', '2340000', '3892920', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('194', '249', '1', '802.01.00', 'Biaya Bahan Bakar', '1125000', '1247270', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('195', '3', '1', '802.01.00', 'Biaya Bahan Bakar', '7312500', '2770320', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('196', '192', '1', '802.01.00', 'Biaya Bahan Bakar', '10813800', '3345310', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('197', '193', '1', '802.01.00', 'Biaya Bahan Bakar', '1080000', '724124', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('198', '188', '1', '802.01.00', 'Biaya Bahan Bakar', '1125000', '885207', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('199', '259', '1', '802.01.00', 'Biaya Bahan Bakar', '2250000', '5595290', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('200', '298', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '8077500', '70897100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('201', '297', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '450000', '5186550000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('202', '296', '1', '802.01.00', 'Biaya Bahan Bakar', '1125000', '340203', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('203', '282', '1', '802.01.00', 'Biaya Bahan Bakar', '1125000', '885207', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('204', '227', '1', '802.01.00', 'Biaya Bahan Bakar', '1125000', '885207', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('205', '183', '1', '802.01.00', 'Biaya Bahan Bakar', '180000', '168065', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('206', '180', '1', '802.01.00', 'Biaya Bahan Bakar', '1125000', '845311', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('207', '243', '1', '802.01.00', 'Biaya Bahan Bakar', '4320000', '4242760', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('208', '241', '1', '802.01.00', 'Biaya Bahan Bakar', '4365000', '5823970', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('209', '244', '1', '802.01.00', 'Biaya Bahan Bakar', '180000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('210', '240', '1', '802.01.00', 'Biaya Bahan Bakar', '1125000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('211', '257', '1', '802.01.00', 'Biaya Bahan Bakar', '3235000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('212', '261', '1', '802.01.00', 'Biaya Bahan Bakar', '180000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('213', '257', '1', '802.01.00', 'Biaya Bahan Bakar', '1125000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('214', '238', '1', '802.01.00', 'Biaya Bahan Bakar', '1125000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('215', '256', '1', '802.01.00', 'Biaya Bahan Bakar', '1125000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('216', '259', '1', '803.08.00', 'Biaya Pemeliharaan Kendaraan', '804000', '11304100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('217', '241', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '1453300', '6916180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('218', '3', '1', '802.01.00', 'Biaya Bahan Bakar', '900000', '2770320', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('219', '33', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '2641520', '123129000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('220', '171', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '26642', '184001000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('221', '9', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '95659', '138682000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('222', '33', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '455691', '123129000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('223', '181', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '946506', '288538000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('224', '183', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '355915', '306871000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('225', '192', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '19000', '96746200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('226', '195', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '138855', '335628000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('227', '258', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '1231860', '256644000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('228', '256', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '79430', '16621900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('229', '252', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '1119020', '339409000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('230', '251', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '51565', '75321600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('231', '250', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '183402', '149269000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('232', '244', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '123750', '134353000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('233', '243', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '379320', '384316000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('234', '241', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '153650', '153947000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('235', '235', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '107900', '104643000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('236', '259', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '24000', '90894400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('237', '244', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '461785', '134353000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('238', '236', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '957125', '60220400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('239', '172', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '150020', '131750000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('240', '171', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '204494', '184001000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('241', '10', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '21250', '331623000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('242', '259', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '252513', '90894400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('243', '298', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '767735', '47359500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('244', '297', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '124350', '42196500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('245', '261', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '12173', '125824000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('246', '259', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '19000', '90894400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('247', '298', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '760930', '47359500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('248', '297', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '300739', '42196500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('249', '261', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '413626', '125824000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('250', '259', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '445924', '90894400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('251', '258', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '799037', '256644000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('252', '256', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '133430', '16621900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('253', '252', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '895197', '339409000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('254', '250', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '337875', '149269000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('255', '244', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '207500', '134353000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('256', '243', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '424391', '384316000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('257', '241', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '32820', '153947000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('258', '236', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '346310', '60220400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('259', '195', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '1315660', '335628000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('260', '193', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '137500', '151635000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('261', '192', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '277986', '96746200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('262', '183', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '198751', '306871000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('263', '181', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '186467', '288538000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('264', '297', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '8840000', '5186550000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('265', '297', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '11560000', '5186550000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('266', '251', '1', '808.06.00', 'Biaya Promosi', '7500000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('267', '259', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '868000', '287101000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('268', '3', '1', '802.11.00', 'Biaya Perlengkapan', '1413000', '104146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('269', '188', '1', '803.08.00', 'Biaya Pemeliharaan Kendaraan', '3243320', '5234400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('270', '3', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '874446', '630389000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('271', '181', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '514941', '288538000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('272', '2', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '48259', '27849100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('273', '79', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '1603730', '436587000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('274', '33', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '148154', '123129000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('275', '10', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '258425', '331623000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('276', '172', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '841381', '131750000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('277', '171', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '282640', '184001000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('278', '231', '1', '801.05.07', 'Tunjangan Cuti', '8836000', '53926100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('279', '195', '1', '801.05.07', 'Tunjangan Cuti', '4498000', '78639300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('280', '193', '1', '801.05.07', 'Tunjangan Cuti', '2021000', '34986300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('281', '173', '1', '801.05.07', 'Tunjangan Cuti', '2768000', '10416100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('282', '172', '1', '801.05.07', 'Tunjangan Cuti', '4859000', '28371400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('283', '171', '1', '801.05.07', 'Tunjangan Cuti', '2768000', '34001800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('284', '79', '1', '801.05.07', 'Tunjangan Cuti', '2640000', '69322800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('285', '10', '1', '801.05.07', 'Tunjangan Cuti', '9835000', '84437600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('286', '9', '1', '801.05.07', 'Tunjangan Cuti', '2336000', '35337600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('287', '256', '1', '803.08.00', 'Biaya Pemeliharaan Kendaraan', '2994000', '12358600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('288', '252', '1', '801.05.07', 'Tunjangan Cuti', '5318000', '61062200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('289', '236', '1', '801.05.07', 'Tunjangan Cuti', '2768000', '15759400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('290', '235', '1', '801.05.07', 'Tunjangan Cuti', '3482000', '22822900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('291', '193', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '278276', '151635000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('292', '183', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '252270', '306871000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('293', '3', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '327269', '630389000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('294', '79', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '70931', '436587000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('295', '172', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '2596560', '131750000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('296', '296', '1', '803.07.00', 'Biaya Pemeliharaan Peralatan', '1450000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('297', '241', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '2109050', '153947000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('298', '192', '1', '807.06.00', 'Biaya Rumah Tangga', '355600', '38585000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('299', '238', '1', '801.06.00', 'Biaya Insentif Pegawai', '780000', '8302840', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('300', '183', '1', '808.99.00', 'Biaya Umum Lainnya', '3450000', '36939900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('301', '3', '1', '801.06.00', 'Biaya Insentif Pegawai', '0', '498451000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('302', '3', '1', '802.03.00', 'Biaya Bahan Makanan', '0', '323435000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('303', '192', '1', '808.14.00', 'Biaya Pendidikan SDM', '0', '3861620', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('304', '241', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '0', '6916180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('305', '10', '1', '803.03.00', 'Biaya Pemeliharaan Alat-2 Faspel', '0', '37450100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('306', '9', '1', '803.03.00', 'Biaya Pemeliharaan Alat-2 Faspel', '0', '136749000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('307', '55', '1', '802.04.00', 'Biaya Langganan Air', '0', '1076070000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('308', '3', '1', '802.01.00', 'Biaya Bahan Bakar', '0', '2770320', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('309', '259', '1', '801.05.05', 'Tunjangan Presensi', '0', '34710700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('310', '256', '1', '801.06.00', 'Biaya Insentif Pegawai', '820000', '15983200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('311', '183', '1', '801.06.00', 'Biaya Insentif Pegawai', '3655000', '63827400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('312', '3', '1', '801.06.00', 'Biaya Insentif Pegawai', '40583700', '498451000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('313', '181', '1', '801.06.00', 'Biaya Insentif Pegawai', '6060000', '95693800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('314', '180', '1', '801.06.00', 'Biaya Insentif Pegawai', '740000', '11281600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('315', '241', '1', '803.09.00', 'Biaya Pemeliharaan Emplasemen', '4822500', '1571180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('316', '258', '1', '808.15.00', 'Biaya Bantuan Sosial', '1000000', '51170000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('317', '3', '1', '802.11.00', 'Biaya Perlengkapan', '3825000', '104146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('318', '79', '1', '802.09.00', 'Biaya Bahan Pas Pelabuhan', '3555000', '204127000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('319', '241', '1', '803.08.00', 'Biaya Pemeliharaan Kendaraan', '1954000', '130728000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('320', '297', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '639600', '5186550000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('321', '192', '1', '808.08.00', 'Biaya Pajak Kendaraan', '262000', '3436200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('322', '163', '1', '808.08.00', 'Biaya Pajak Kendaraan', '476000', '3957420', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('323', '243', '1', '808.08.00', 'Biaya Pajak Kendaraan', '288000', '6535930', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('324', '241', '1', '808.08.00', 'Biaya Pajak Kendaraan', '1701000', '17023400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('325', '259', '1', '808.08.00', 'Biaya Pajak Kendaraan', '209000', '29120600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('326', '288', '1', '804.07.00', 'Biaya Penyusutan Peralatan', '683333', '3153680000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('327', '195', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '1687500', '335628000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('328', '261', '1', '807.06.00', 'Biaya Rumah Tangga', '249600', '4289700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('329', '259', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '808000', '29018400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('330', '259', '1', '807.06.00', 'Biaya Rumah Tangga', '336000', '248146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('331', '258', '1', '807.06.00', 'Biaya Rumah Tangga', '272000', '10443700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('332', '173', '1', '807.06.00', 'Biaya Rumah Tangga', '1692000', '34234400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('333', '172', '1', '807.06.00', 'Biaya Rumah Tangga', '204800', '75557600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('334', '171', '1', '807.06.00', 'Biaya Rumah Tangga', '350400', '95984700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('335', '243', '1', '807.06.00', 'Biaya Rumah Tangga', '1269000', '21821200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('336', '236', '1', '807.06.00', 'Biaya Rumah Tangga', '153600', '5408930', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('337', '235', '1', '807.06.00', 'Biaya Rumah Tangga', '172800', '2061110', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('338', '181', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '270000', '24460400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('339', '10', '1', '803.01.00', 'Biaya Pemeliharaan Bangn.Faspel.', '3436000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('340', '252', '1', '807.06.00', 'Biaya Rumah Tangga', '390400', '27475900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('341', '251', '1', '807.06.00', 'Biaya Rumah Tangga', '212800', '10609800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('342', '250', '1', '807.06.00', 'Biaya Rumah Tangga', '144000', '16247700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('343', '288', '1', '807.06.00', 'Biaya Rumah Tangga', '192000', '5934580', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('344', '183', '1', '807.06.00', 'Biaya Rumah Tangga', '339200', '9178820', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('345', '195', '1', '807.06.00', 'Biaya Rumah Tangga', '6460200', '67017600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('346', '193', '1', '807.06.00', 'Biaya Rumah Tangga', '289600', '35556400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('347', '231', '1', '807.06.00', 'Biaya Rumah Tangga', '468800', '37795600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('348', '192', '1', '807.06.00', 'Biaya Rumah Tangga', '1603000', '38585000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('349', '173', '1', '807.06.00', 'Biaya Rumah Tangga', '425000', '34234400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('350', '252', '1', '807.06.00', 'Biaya Rumah Tangga', '18000', '27475900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('351', '10', '1', '807.06.00', 'Biaya Rumah Tangga', '380000', '4554490', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('352', '241', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1787000', '13451200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('353', '259', '1', '807.06.00', 'Biaya Rumah Tangga', '1250000', '248146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('354', '259', '1', '808.06.00', 'Biaya Promosi', '1500000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('355', '258', '1', '808.14.00', 'Biaya Pendidikan SDM', '525000', '295674000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('356', '288', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '150000', '26381400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('357', '243', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '375000', '6096780', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('358', '181', '1', '807.06.00', 'Biaya Rumah Tangga', '2218730', '6263640', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('359', '259', '1', '807.06.00', 'Biaya Rumah Tangga', '1800000', '248146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('360', '259', '1', '808.06.00', 'Biaya Promosi', '1000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('361', '259', '1', '808.06.00', 'Biaya Promosi', '2000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('362', '258', '1', '808.14.00', 'Biaya Pendidikan SDM', '150000', '295674000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('363', '79', '1', '807.06.00', 'Biaya Rumah Tangga', '334800', '7212030', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('364', '171', '1', '807.06.00', 'Biaya Rumah Tangga', '1488000', '95984700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('365', '171', '1', '807.06.00', 'Biaya Rumah Tangga', '24000', '95984700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('366', '172', '1', '807.06.00', 'Biaya Rumah Tangga', '1413600', '75557600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('367', '231', '1', '807.06.00', 'Biaya Rumah Tangga', '741500', '37795600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('368', '171', '1', '807.06.00', 'Biaya Rumah Tangga', '994600', '95984700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('369', '193', '1', '807.06.00', 'Biaya Rumah Tangga', '1371800', '35556400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('370', '252', '1', '807.06.00', 'Biaya Rumah Tangga', '796700', '27475900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('371', '171', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '1071250', '184001000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('372', '259', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '230814', '90894400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('373', '298', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '510180', '47359500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('374', '297', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '153738', '42196500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('375', '296', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '30301', '1497970', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('376', '259', '1', '807.06.00', 'Biaya Rumah Tangga', '3900000', '248146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('377', '259', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '5688860', '90894400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('378', '235', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '5420900', '104643000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('379', '231', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '905415', '251121000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('380', '243', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '9901350', '384316000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('381', '172', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '5835720', '131750000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('382', '297', '1', '807.06.00', 'Biaya Rumah Tangga', '1149600', '1003070', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('383', '183', '1', '807.06.00', 'Biaya Rumah Tangga', '364400', '9178820', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('384', '183', '1', '807.06.00', 'Biaya Rumah Tangga', '395000', '9178820', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('385', '195', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '643745', '335628000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('386', '193', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '36533', '151635000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('387', '6', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '350015', '28141700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('388', '183', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '507826', '306871000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('389', '3', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '254914', '630389000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('390', '79', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '32100', '436587000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('391', '33', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '292021', '123129000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('392', '172', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '948696', '131750000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('393', '9', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '104500', '138682000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('394', '249', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '870000', '13660300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('395', '79', '1', '808.20.01', 'Biaya Kontribusi Pajak Parkir Pemkot', '500000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('396', '258', '1', '808.14.00', 'Biaya Pendidikan SDM', '355000', '295674000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('397', '181', '1', '801.05.07', 'Tunjangan Cuti', '2669000', '51740500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('398', '173', '1', '801.05.07', 'Tunjangan Cuti', '2768000', '10416100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('399', '171', '1', '801.05.07', 'Tunjangan Cuti', '2736000', '34001800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('400', '79', '1', '801.05.07', 'Tunjangan Cuti', '5344000', '69322800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('401', '10', '1', '801.05.07', 'Tunjangan Cuti', '2336000', '84437600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('402', '9', '1', '801.05.07', 'Tunjangan Cuti', '2640000', '35337600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('403', '3', '1', '801.05.07', 'Tunjangan Cuti', '9093000', '143527000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('404', '195', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '4165000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('405', '261', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '301003', '125824000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('406', '259', '1', '808.06.00', 'Biaya Promosi', '6348000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('407', '241', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '5514500', '6916180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('408', '252', '1', '801.05.07', 'Tunjangan Cuti', '2768000', '61062200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('409', '243', '1', '801.05.07', 'Tunjangan Cuti', '5638000', '41974200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('410', '236', '1', '801.05.07', 'Tunjangan Cuti', '5206000', '15759400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('411', '235', '1', '801.05.07', 'Tunjangan Cuti', '4976000', '22822900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('412', '231', '1', '801.05.07', 'Tunjangan Cuti', '17660000', '53926100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('413', '192', '1', '801.05.07', 'Tunjangan Cuti', '5921000', '46179600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('414', '259', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '69972', '90894400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('415', '258', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '574845', '256644000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('416', '252', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '391567', '339409000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('417', '250', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '660331', '149269000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('418', '244', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '107770', '134353000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('419', '243', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '538624', '384316000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('420', '236', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '456242', '60220400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('421', '231', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '79210', '251121000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('422', '259', '1', '808.06.00', 'Biaya Promosi', '2000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('423', '244', '1', '807.06.00', 'Biaya Rumah Tangga', '545600', '8142370', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('424', '288', '1', '807.06.00', 'Biaya Rumah Tangga', '219900', '5934580', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('425', '259', '1', '807.06.00', 'Biaya Rumah Tangga', '1946800', '248146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('426', '261', '1', '803.07.00', 'Biaya Pemeliharaan Peralatan', '965000', '9071740', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('427', '241', '1', '803.09.00', 'Biaya Pemeliharaan Emplasemen', '6907000', '1571180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('428', '2', '1', '801.05.05', 'Tunjangan Presensi', '246000', '3982070', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('429', '3', '1', '801.05.05', 'Tunjangan Presensi', '13098000', '252407000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('430', '11', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '60000', '9063860', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('431', '11', '1', '801.05.05', 'Tunjangan Presensi', '600000', '16033300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('432', '10', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '435600', '73617500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('433', '10', '1', '801.05.05', 'Tunjangan Presensi', '4356000', '120892000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('434', '9', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '192750', '32914900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('435', '9', '1', '801.05.05', 'Tunjangan Presensi', '1927500', '51014900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('436', '6', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '32400', '4782880', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('437', '6', '1', '801.05.05', 'Tunjangan Presensi', '324000', '6027900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('438', '3', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '1309800', '200474000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('439', '250', '1', '803.07.00', 'Biaya Pemeliharaan Peralatan', '1610000', '28322600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('440', '250', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1515000', '35512700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('441', '288', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '505000', '26381400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('442', '250', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1080000', '35512700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('443', '297', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '96300', '11470200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('444', '297', '1', '801.05.05', 'Tunjangan Presensi', '963000', '17344700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('445', '296', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '26250', '4781760', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('446', '296', '1', '801.05.05', 'Tunjangan Presensi', '262500', '2762790', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('447', '293', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '25200', '6958110', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('448', '293', '1', '801.05.05', 'Tunjangan Presensi', '252000', '4677710', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('449', '288', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '111700', '13790000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('450', '288', '1', '801.05.05', 'Tunjangan Presensi', '1117000', '15503600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('451', '282', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '24000', '6131380', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('452', '282', '1', '801.05.05', 'Tunjangan Presensi', '240000', '5521770', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('453', '261', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '174550', '41540000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('454', '261', '1', '801.05.05', 'Tunjangan Presensi', '1745500', '46001600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('455', '259', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '302350', '39396200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('456', '259', '1', '801.05.05', 'Tunjangan Presensi', '3023500', '34710700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('457', '258', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '211500', '45068600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('458', '258', '1', '801.05.05', 'Tunjangan Presensi', '2115000', '45223700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('459', '257', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '28500', '10688900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('460', '257', '1', '801.05.05', 'Tunjangan Presensi', '285000', '3938690', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('461', '256', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '32000', '35577600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('462', '256', '1', '801.05.05', 'Tunjangan Presensi', '320000', '6040080', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('463', '252', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '461700', '71071000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('464', '252', '1', '801.05.05', 'Tunjangan Presensi', '4617000', '98101800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('465', '251', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '179400', '34656900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('466', '251', '1', '801.05.05', 'Tunjangan Presensi', '1794000', '37202500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('467', '250', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '250850', '31969400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('468', '250', '1', '801.05.05', 'Tunjangan Presensi', '2508500', '48623600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('469', '249', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '30000', '20207300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('470', '249', '1', '801.05.05', 'Tunjangan Presensi', '300000', '5468500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('471', '244', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '161000', '38843100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('472', '244', '1', '801.05.05', 'Tunjangan Presensi', '1610000', '42093300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('473', '243', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '257850', '41371500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('474', '243', '1', '801.05.05', 'Tunjangan Presensi', '2578500', '58061200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('475', '241', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '163050', '32566100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('476', '241', '1', '801.05.05', 'Tunjangan Presensi', '1630500', '39424200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('477', '240', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '19500', '14483300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('478', '240', '1', '801.05.05', 'Tunjangan Presensi', '195000', '3740040', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('479', '238', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '32000', '22744100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('480', '238', '1', '801.05.05', 'Tunjangan Presensi', '320000', '6040080', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('481', '236', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '93450', '22051800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('482', '236', '1', '801.05.05', 'Tunjangan Presensi', '934500', '21788700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('483', '235', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '124250', '27004600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('484', '235', '1', '801.05.05', 'Tunjangan Presensi', '1242500', '28017600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('485', '231', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '460450', '58753600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('486', '231', '1', '801.05.05', 'Tunjangan Presensi', '4604500', '88092600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('487', '227', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '23250', '12677600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('488', '227', '1', '801.05.05', 'Tunjangan Presensi', '232500', '4098520', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('489', '195', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '505050', '76000100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('490', '195', '1', '801.05.05', 'Tunjangan Presensi', '5050500', '110718000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('491', '193', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '229400', '47602600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('492', '193', '1', '801.05.05', 'Tunjangan Presensi', '2294000', '53249500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('493', '192', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '296350', '50598200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('494', '192', '1', '801.05.05', 'Tunjangan Presensi', '2963500', '62329400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('495', '183', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '243550', '45832900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('496', '183', '1', '801.05.05', 'Tunjangan Presensi', '2435500', '72921600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('497', '181', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '434050', '47743500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('498', '181', '1', '801.05.05', 'Tunjangan Presensi', '4340500', '88886500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('499', '180', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '21000', '14802200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('500', '180', '1', '801.05.05', 'Tunjangan Presensi', '210000', '4167020', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('501', '173', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '364200', '8098450', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('502', '173', '1', '801.05.05', 'Tunjangan Presensi', '3642000', '8330990', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('503', '172', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '185250', '32967300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('504', '172', '1', '801.05.05', 'Tunjangan Presensi', '1852500', '45523600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('505', '171', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '161750', '47308800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('506', '171', '1', '801.05.05', 'Tunjangan Presensi', '1617500', '39938700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('507', '163', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '23250', '13555600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('508', '163', '1', '801.05.05', 'Tunjangan Presensi', '232500', '3128120', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('509', '79', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '458100', '69511900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('510', '79', '1', '801.05.05', 'Tunjangan Presensi', '4581000', '107491000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('511', '55', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '64000', '9670060', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('512', '55', '1', '801.05.05', 'Tunjangan Presensi', '640000', '13663200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('513', '33', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '134100', '15947000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('514', '33', '1', '801.05.05', 'Tunjangan Presensi', '1341000', '28200200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('515', '2', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '24600', '4011210', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('516', '259', '1', '808.06.00', 'Biaya Promosi', '5000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('517', '192', '1', '803.01.00', 'Biaya Pemeliharaan Bangn.Faspel.', '4964750', '628083000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('518', '243', '1', '803.04.00', 'Biaya Pemeliharaan Instalasi Faspel', '2688000', '1030720000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('519', '192', '1', '803.01.00', 'Biaya Pemeliharaan Bangn.Faspel.', '9264750', '628083000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('520', '227', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '2033600', '8805430', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('521', '171', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '315000', '19121800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('522', '252', '1', '807.99.00', 'Biaya Administrasi Lainnya', '354000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('523', '258', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '420400', '4804750', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('524', '251', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '4760000', '9649950', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('525', '231', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '288000', '7364830', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('526', '183', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '170000', '10731400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('527', '258', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '350000', '4804750', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('528', '288', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '200000', '26381400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('529', '79', '1', '802.09.00', 'Biaya Bahan Pas Pelabuhan', '10000000', '204127000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('530', '259', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '10000000', '287101000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('531', '238', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '135250', '2484710', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('532', '256', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '167650', '3235750', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('533', '297', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '0', '5186550000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('534', '297', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '0', '5186550000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('535', '258', '1', '806.10.00', 'Biaya Sewa Tenaga Kerja', '0', '1647650000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('536', '258', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '26000', '45068600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('537', '258', '1', '801.05.05', 'Tunjangan Presensi', '260000', '45223700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('538', '244', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '28000', '38843100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('539', '244', '1', '801.05.05', 'Tunjangan Presensi', '280000', '42093300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('540', '241', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '94821', '1626890', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('541', '259', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '94821', '1626890', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('542', '227', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '88000', '1337570', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('543', '282', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '88000', '1368800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('544', '180', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '88000', '1368800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('545', '163', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '88000', '3221260', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('546', '249', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '88000', '3221260', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('547', '188', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '94750', '1625210', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('548', '257', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '94750', '1625210', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('549', '195', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '28000', '76000100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('550', '195', '1', '801.05.05', 'Tunjangan Presensi', '280000', '110718000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('551', '188', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '30000', '18209700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('552', '188', '1', '801.05.05', 'Tunjangan Presensi', '300000', '2808460', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('553', '297', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '464000', '5186550000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('554', '298', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '580500', '70897100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('555', '250', '1', '807.05.00', 'Biaya Rapat  Rapat', '2300000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('556', '259', '1', '808.06.00', 'Biaya Promosi', '2000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('557', '171', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '140580', '2949570', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('558', '249', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '229143', '3221260', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('559', '163', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '229143', '3221260', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('560', '240', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '81583', '1285700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('561', '243', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '147220', '1190170', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('562', '22', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '475656', '16356700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('563', '22', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '773804', '16356700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('564', '22', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '773804', '16356700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('565', '171', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '94821', '2949570', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('566', '305', '1', '809.06.00', 'Rugi Selisih Kurs', '26880000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('567', '288', '1', '804.99.00', 'A.B Yang Ditangguhkan Lain-lain', '225265000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('568', '9', '1', '804.25.00', 'A.B Pemelh.A.T Yang Ditangguhkan', '37083300', '100731000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('569', '9', '1', '804.25.00', 'A.B Pemelh.A.T Yang Ditangguhkan', '15875000', '100731000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('570', '241', '1', '804.25.00', 'A.B Pemelh.A.T Yang Ditangguhkan', '2206470', '17111800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('571', '171', '1', '804.25.00', 'A.B Pemelh.A.T Yang Ditangguhkan', '5182370', '51151900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('572', '288', '1', '804.25.00', 'A.B Pemelh.A.T Yang Ditangguhkan', '30054200', '280323000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('573', '2', '1', '804.20.00', 'A.B Konsultan Unk.Litbang Yg.Dtgh', '3226650', '28765100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('574', '9', '1', '804.20.00', 'A.B Konsultan Unk.Litbang Yg.Dtgh', '18579700', '152035000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('575', '259', '1', '804.20.00', 'A.B Konsultan Unk.Litbang Yg.Dtgh', '8896090', '116418000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('576', '2', '1', '804.19.00', 'A.B Pengrk. Plyr.Yg.Ditgh.', '41585000', '5783710000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('577', '252', '1', '805.06.00', 'Biaya Asuransi Jalan ', '83836', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('578', '171', '1', '805.06.00', 'Biaya Asuransi Jalan ', '23434', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('579', '259', '1', '805.06.00', 'Biaya Asuransi Jalan ', '710624', '8990000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('580', '193', '1', '805.08.00', 'Biaya Asuransi Kendaraan', '140580', '1136490', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('581', '297', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '3000000', '5186550000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('582', '188', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '900000', '5579910', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('583', '296', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '900000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('584', '192', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '750000', '4613990', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('585', '243', '1', '803.04.00', 'Biaya Pemeliharaan Instalasi Faspel', '9395000', '1030720000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('586', '9', '1', '801.05.07', 'Tunjangan Cuti', '2550000', '35337600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('587', '79', '1', '801.05.07', 'Tunjangan Cuti', '2360000', '69322800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('588', '171', '1', '801.05.07', 'Tunjangan Cuti', '10599000', '34001800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('589', '259', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '42660', '129528000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('590', '183', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '52140', '2196450', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('591', '3', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '303180', '16453900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('592', '11', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '2070560', '53926800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('593', '52', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '8747', '315503000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('594', '79', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '1942720', '38451300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('595', '54', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '763446', '224362000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('596', '84', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '3525460', '1993430000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('597', '243', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '2590290', '42840000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('598', '84', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '14356300', '1993430000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('599', '38', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '437334', '5310990', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('600', '252', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '2027220', '24618600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('601', '183', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '16400', '2196450', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('602', '10', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '158534', '1925230', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('603', '54', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '167042', '224362000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('604', '52', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '885088', '315503000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('605', '231', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '2756140', '22313800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('606', '241', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '1070270', '97799400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('607', '259', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '7717250', '129528000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('608', '243', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '234680', '42840000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('609', '173', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '1188330', '59878700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('610', '183', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '112328', '2196450', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('611', '22', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '798100', '9692140', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('612', '3', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '287000', '16453900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('613', '172', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '471534', '159091000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('614', '84', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '41218000', '1993430000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('615', '173', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '3742380', '59878700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('616', '241', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '11565400', '97799400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('617', '171', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '5557430', '360239000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('618', '51', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '20475300', '186489000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('619', '172', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '11593800', '159091000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('620', '84', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '93111600', '1993430000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('621', '52', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '25270600', '315503000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('622', '259', '1', '804.04.00', 'Biaya Penyusutan Instalasi Faspel', '2500', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('623', '243', '1', '804.04.00', 'Biaya Penyusutan Instalasi Faspel', '201688', '4055350', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('624', '84', '1', '804.04.00', 'Biaya Penyusutan Instalasi Faspel', '11266300', '174444000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('625', '173', '1', '804.04.00', 'Biaya Penyusutan Instalasi Faspel', '484591', '7503220', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('626', '56', '1', '804.04.00', 'Biaya Penyusutan Instalasi Faspel', '18066700', '286254000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('627', '293', '1', '804.04.00', 'Biaya Penyusutan Instalasi Faspel', '1600000', '24812500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('628', '54', '1', '804.04.00', 'Biaya Penyusutan Instalasi Faspel', '179306', '2776310', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('629', '11', '1', '804.04.00', 'Biaya Penyusutan Instalasi Faspel', '601958', '9320480', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('630', '243', '1', '804.04.00', 'Biaya Penyusutan Instalasi Faspel', '671167', '4055350', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('631', '243', '1', '804.04.00', 'Biaya Penyusutan Instalasi Faspel', '60225', '4055350', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('632', '55', '1', '804.04.00', 'Biaya Penyusutan Instalasi Faspel', '7744740', '98791800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('633', '241', '1', '804.03.00', 'Biaya Penyusutan Alat-2 Faspel', '2795460', '118625000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('634', '192', '1', '804.03.00', 'Biaya Penyusutan Alat-2 Faspel', '938939', '11267200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('635', '241', '1', '804.03.00', 'Biaya Penyusutan Alat-2 Faspel', '7089960', '118625000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('636', '171', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '230730', '2939770', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('637', '51', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '169897', '2194320', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('638', '54', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '6071790', '77423000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('639', '84', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '127582000', '6029540000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('640', '11', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '225575000', '2834960000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('641', '84', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '1589960', '6029540000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('642', '10', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '46349000', '591008000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('643', '5', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '750140', '60563500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('644', '5', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '2861040', '60563500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('645', '84', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '324555000', '6029540000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('646', '9', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '31094600', '337359000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('647', '52', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '2191', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('648', '5', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '806819', '60563500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('649', '84', '1', '804.01.00', 'Biaya Penyusutan Bangunan Faspel', '19130200', '6029540000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('650', '192', '1', '804.07.00', 'Biaya Penyusutan Peralatan', '3850000', '49217300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('651', '171', '1', '804.07.00', 'Biaya Penyusutan Peralatan', '1150100', '12756400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('652', '22', '1', '804.07.00', 'Biaya Penyusutan Peralatan', '12483300', '159583000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('653', '256', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '416594', '5059120', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('654', '288', '1', '804.07.00', 'Biaya Penyusutan Peralatan', '23891600', '3153680000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('655', '231', '1', '804.07.00', 'Biaya Penyusutan Peralatan', '9013980', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('656', '259', '1', '804.07.00', 'Biaya Penyusutan Peralatan', '2607540', '73496200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('657', '252', '1', '804.07.00', 'Biaya Penyusutan Peralatan', '2531250', '32358800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('658', '84', '1', '804.04.00', 'Biaya Penyusutan Instalasi Faspel', '2258980', '174444000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('659', '5', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '371303', '4509110', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('660', '11', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '298700', '53926800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('661', '84', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '7702120', '1993430000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('662', '172', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '1058390', '159091000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('663', '52', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '49047', '315503000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('664', '171', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '24106500', '360239000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('665', '79', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '1223550', '38451300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('666', '54', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '23259600', '224362000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('667', '259', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '3260150', '129528000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('668', '84', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '2857030', '1993430000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('669', '54', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '30500', '224362000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('670', '11', '1', '804.06.00', 'Biaya Penyusutan Jalan ', '1958130', '53926800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('671', '84', '1', '804.09.00', 'Biaya Penyusutan Emplasemen', '1939660', '424183000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('672', '51', '1', '804.09.00', 'Biaya Penyusutan Emplasemen', '452331', '26817000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('673', '54', '1', '804.09.00', 'Biaya Penyusutan Emplasemen', '7444160', '68615700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('674', '84', '1', '804.09.00', 'Biaya Penyusutan Emplasemen', '30617600', '424183000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('675', '52', '1', '804.09.00', 'Biaya Penyusutan Emplasemen', '584307', '16551900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('676', '11', '1', '804.09.00', 'Biaya Penyusutan Emplasemen', '3329200', '22358900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('677', '54', '1', '804.09.00', 'Biaya Penyusutan Emplasemen', '409978', '68615700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('678', '51', '1', '804.09.00', 'Biaya Penyusutan Emplasemen', '2292050', '26817000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('679', '171', '1', '804.08.00', 'Biaya Penyusutan Kendaraan', '3446210', '39151400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('680', '188', '1', '804.08.00', 'Biaya Penyusutan Kendaraan', '2966670', '54328100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('681', '249', '1', '804.08.00', 'Biaya Penyusutan Kendaraan', '2853260', '51634300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('682', '256', '1', '804.08.00', 'Biaya Penyusutan Kendaraan', '3750000', '121761000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('683', '243', '1', '804.08.00', 'Biaya Penyusutan Kendaraan', '8480230', '124776000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('684', '241', '1', '804.08.00', 'Biaya Penyusutan Kendaraan', '4094400', '74980000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('685', '193', '1', '804.08.00', 'Biaya Penyusutan Kendaraan', '1744390', '7986210', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('686', '259', '1', '804.08.00', 'Biaya Penyusutan Kendaraan', '1397270', '25588100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('687', '250', '1', '808.99.00', 'Biaya Umum Lainnya', '9150000', '262933000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('688', '180', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '2037000', '8456970', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('689', '256', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '2237000', '102897000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('690', '79', '1', '802.09.00', 'Biaya Bahan Pas Pelabuhan', '14665000', '204127000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('691', '258', '1', '801.05.07', 'Tunjangan Cuti', '9130000', '30807800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('692', '250', '1', '801.05.07', 'Tunjangan Cuti', '3482000', '28764200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('693', '244', '1', '801.05.07', 'Tunjangan Cuti', '5503000', '25428300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('694', '243', '1', '801.05.07', 'Tunjangan Cuti', '2905000', '41974200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('695', '236', '1', '801.05.07', 'Tunjangan Cuti', '3134000', '15759400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('696', '231', '1', '801.05.07', 'Tunjangan Cuti', '7782000', '53926100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('697', '192', '1', '801.05.07', 'Tunjangan Cuti', '4903000', '46179600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('698', '181', '1', '801.05.07', 'Tunjangan Cuti', '4976000', '51740500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('699', '173', '1', '801.05.07', 'Tunjangan Cuti', '2550000', '10416100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('700', '192', '1', '807.06.00', 'Biaya Rumah Tangga', '378000', '38585000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('701', '252', '1', '807.06.00', 'Biaya Rumah Tangga', '639000', '27475900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('702', '259', '1', '807.06.00', 'Biaya Rumah Tangga', '675000', '248146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('703', '258', '1', '807.06.00', 'Biaya Rumah Tangga', '270000', '10443700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('704', '259', '1', '807.06.00', 'Biaya Rumah Tangga', '513000', '248146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('705', '235', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1887000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('706', '227', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '2037000', '8805430', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('707', '3', '1', '808.99.00', 'Biaya Umum Lainnya', '1200000', '9300500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('708', '261', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1887000', '19142400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('709', '288', '1', '807.06.00', 'Biaya Rumah Tangga', '279000', '5934580', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('710', '231', '1', '807.06.00', 'Biaya Rumah Tangga', '2448000', '37795600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('711', '192', '1', '807.06.00', 'Biaya Rumah Tangga', '279000', '38585000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('712', '251', '1', '807.06.00', 'Biaya Rumah Tangga', '162000', '10609800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('713', '250', '1', '807.06.00', 'Biaya Rumah Tangga', '1125000', '16247700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('714', '252', '1', '807.06.00', 'Biaya Rumah Tangga', '1224000', '27475900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('715', '259', '1', '807.06.00', 'Biaya Rumah Tangga', '2637000', '248146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('716', '171', '1', '807.06.00', 'Biaya Rumah Tangga', '1395000', '95984700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('717', '193', '1', '807.06.00', 'Biaya Rumah Tangga', '2376000', '35556400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('718', '163', '1', '804.08.00', 'Biaya Penyusutan Kendaraan', '5819920', '144534000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('719', '250', '1', '808.99.00', 'Biaya Umum Lainnya', '8500000', '262933000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('720', '171', '1', '808.14.00', 'Biaya Pendidikan SDM', '7948000', '18654500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('721', '244', '1', '807.06.00', 'Biaya Rumah Tangga', '36000', '8142370', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('722', '181', '1', '807.06.00', 'Biaya Rumah Tangga', '441000', '6263640', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('723', '171', '1', '807.06.00', 'Biaya Rumah Tangga', '1863000', '95984700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('724', '171', '1', '807.06.00', 'Biaya Rumah Tangga', '3888000', '95984700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('725', '173', '1', '807.06.00', 'Biaya Rumah Tangga', '981000', '34234400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('726', '172', '1', '807.06.00', 'Biaya Rumah Tangga', '4311000', '75557600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('727', '163', '1', '801.05.07', 'Tunjangan Cuti', '5887000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('728', '10', '1', '801.05.07', 'Tunjangan Cuti', '5046000', '84437600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('729', '2', '1', '801.05.07', 'Tunjangan Cuti', '2768000', '4915280', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('730', '33', '1', '803.01.00', 'Biaya Pemeliharaan Bangn.Faspel.', '2700000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('731', '192', '1', '803.01.00', 'Biaya Pemeliharaan Bangn.Faspel.', '1642500', '628083000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('732', '282', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '900000', '3126790', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('733', '259', '1', '803.08.00', 'Biaya Pemeliharaan Kendaraan', '15450000', '11304100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('734', '231', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '1006190', '251121000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('735', '250', '1', '808.99.00', 'Biaya Umum Lainnya', '150000', '262933000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('736', '259', '1', '803.09.00', 'Biaya Pemeliharaan Emplasemen', '2750000', '6782270', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('737', '259', '1', '808.06.00', 'Biaya Promosi', '8000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('738', '259', '1', '808.06.00', 'Biaya Promosi', '5000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('739', '236', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '1117640', '60220400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('740', '231', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '983567', '251121000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('741', '181', '1', '808.99.00', 'Biaya Umum Lainnya', '730000', '19604600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('742', '181', '1', '802.03.00', 'Biaya Bahan Makanan', '2023000', '36223400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('743', '3', '1', '802.03.00', 'Biaya Bahan Makanan', '22421000', '323435000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('744', '250', '1', '808.99.00', 'Biaya Umum Lainnya', '9250000', '262933000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('745', '231', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '453391', '251121000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('746', '163', '1', '803.08.00', 'Biaya Pemeliharaan Kendaraan', '1105000', '30699000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('747', '259', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '969500', '1115880000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('748', '288', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '12094000', '193919000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('749', '288', '1', '803.07.00', 'Biaya Pemeliharaan Peralatan', '23000000', '409673000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('750', '241', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '47248300', '6916180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('751', '259', '1', '808.99.00', 'Biaya Umum Lainnya', '25000000', '638607000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('752', '33', '1', '801.05.07', 'Tunjangan Cuti', '4596000', '22213600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('753', '181', '1', '801.05.07', 'Tunjangan Cuti', '3482000', '51740500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('754', '193', '1', '801.05.07', 'Tunjangan Cuti', '3302000', '34986300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('755', '241', '1', '801.05.07', 'Tunjangan Cuti', '2021000', '36983300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('756', '298', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '8287500', '70897100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('757', '297', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '10837500', '5186550000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('758', '241', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1665340', '13451200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('759', '259', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1665340', '29018400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('760', '181', '1', '803.04.00', 'Biaya Pemeliharaan Instalasi Faspel', '9750000', '38905700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('761', '259', '1', '808.06.00', 'Biaya Promosi', '1000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('762', '250', '1', '807.06.00', 'Biaya Rumah Tangga', '234000', '16247700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('763', '259', '1', '807.06.00', 'Biaya Rumah Tangga', '2160000', '248146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('764', '259', '1', '808.06.00', 'Biaya Promosi', '1000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('765', '252', '1', '807.06.00', 'Biaya Rumah Tangga', '468000', '27475900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('766', '251', '1', '807.06.00', 'Biaya Rumah Tangga', '242000', '10609800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('767', '250', '1', '807.06.00', 'Biaya Rumah Tangga', '184000', '16247700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('768', '288', '1', '807.06.00', 'Biaya Rumah Tangga', '240000', '5934580', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('769', '261', '1', '807.06.00', 'Biaya Rumah Tangga', '316000', '4289700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('770', '259', '1', '807.06.00', 'Biaya Rumah Tangga', '372000', '248146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('771', '258', '1', '807.06.00', 'Biaya Rumah Tangga', '442000', '10443700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('772', '173', '1', '807.06.00', 'Biaya Rumah Tangga', '1512000', '34234400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('773', '172', '1', '807.06.00', 'Biaya Rumah Tangga', '284000', '75557600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('774', '171', '1', '807.06.00', 'Biaya Rumah Tangga', '424000', '95984700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('775', '243', '1', '807.06.00', 'Biaya Rumah Tangga', '1134000', '21821200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('776', '236', '1', '807.06.00', 'Biaya Rumah Tangga', '216000', '5408930', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('777', '235', '1', '807.06.00', 'Biaya Rumah Tangga', '168000', '2061110', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('778', '231', '1', '807.06.00', 'Biaya Rumah Tangga', '660000', '37795600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('779', '192', '1', '807.06.00', 'Biaya Rumah Tangga', '1524000', '38585000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('780', '193', '1', '807.06.00', 'Biaya Rumah Tangga', '318000', '35556400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('781', '195', '1', '807.06.00', 'Biaya Rumah Tangga', '5700000', '67017600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('782', '183', '1', '807.06.00', 'Biaya Rumah Tangga', '438000', '9178820', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('783', '231', '1', '808.14.00', 'Biaya Pendidikan SDM', '1005000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('784', '195', '1', '808.14.00', 'Biaya Pendidikan SDM', '1005000', '20482400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('785', '259', '1', '808.06.00', 'Biaya Promosi', '2500000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('786', '297', '1', '801.05.07', 'Tunjangan Cuti', '4962000', '10321800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('787', '259', '1', '801.05.07', 'Tunjangan Cuti', '2360000', '47233500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('788', '252', '1', '801.05.07', 'Tunjangan Cuti', '2768000', '61062200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('789', '251', '1', '801.05.07', 'Tunjangan Cuti', '2162000', '21569000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('790', '250', '1', '801.05.07', 'Tunjangan Cuti', '2768000', '28764200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('791', '244', '1', '801.05.07', 'Tunjangan Cuti', '3134000', '25428300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('792', '195', '1', '801.05.07', 'Tunjangan Cuti', '2736000', '78639300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('793', '192', '1', '801.05.07', 'Tunjangan Cuti', '2669000', '46179600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('794', '173', '1', '801.05.07', 'Tunjangan Cuti', '19635000', '10416100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('795', '10', '1', '801.05.07', 'Tunjangan Cuti', '12912000', '84437600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('796', '241', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '42931800', '6916180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('797', '258', '1', '803.07.00', 'Biaya Pemeliharaan Peralatan', '550000', '24804000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('798', '259', '1', '807.06.00', 'Biaya Rumah Tangga', '5552500', '248146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('799', '180', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '2037000', '8456970', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('800', '301', '1', '809.02.00', 'Biaya Jasa Bank', '500', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('801', '296', '1', '808.14.00', 'Biaya Pendidikan SDM', '2637000', '16671400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('802', '259', '1', '808.06.00', 'Biaya Promosi', '3000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('803', '259', '1', '807.05.00', 'Biaya Rapat  Rapat', '940000', '124863000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('804', '259', '1', '808.06.00', 'Biaya Promosi', '2500000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('805', '259', '1', '808.06.00', 'Biaya Promosi', '4000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('806', '258', '1', '808.11.00', 'Biaya Olah Raga ', '1000000', '257788000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('807', '259', '1', '808.06.00', 'Biaya Promosi', '3000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('808', '241', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '6200000', '6916180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('809', '33', '1', '803.01.00', 'Biaya Pemeliharaan Bangn.Faspel.', '9058350', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('810', '10', '1', '801.04.00', 'Biaya Lembur', '2978830', '57324300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('811', '9', '1', '801.04.00', 'Biaya Lembur', '748532', '20525000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('812', '6', '1', '801.04.00', 'Biaya Lembur', '300000', '3266310', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('813', '259', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '868000', '287101000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('814', '259', '1', '803.09.00', 'Biaya Pemeliharaan Emplasemen', '150000', '6782270', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('815', '252', '1', '807.06.00', 'Biaya Rumah Tangga', '72000', '27475900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('816', '243', '1', '807.06.00', 'Biaya Rumah Tangga', '632400', '21821200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('817', '195', '1', '807.06.00', 'Biaya Rumah Tangga', '1450800', '67017600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('818', '172', '1', '801.04.00', 'Biaya Lembur', '150000', '19245900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('819', '249', '1', '808.14.00', 'Biaya Pendidikan SDM', '640000', '33184600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('820', '173', '1', '807.06.00', 'Biaya Rumah Tangga', '24000', '34234400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('821', '172', '1', '807.06.00', 'Biaya Rumah Tangga', '1413600', '75557600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('822', '171', '1', '807.06.00', 'Biaya Rumah Tangga', '1525200', '95984700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('823', '10', '1', '807.06.00', 'Biaya Rumah Tangga', '480000', '4554490', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('824', '79', '1', '807.06.00', 'Biaya Rumah Tangga', '334800', '7212030', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('825', '252', '1', '807.06.00', 'Biaya Rumah Tangga', '24000', '27475900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('826', '173', '1', '807.06.00', 'Biaya Rumah Tangga', '515000', '34234400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('827', '33', '1', '801.04.00', 'Biaya Lembur', '900000', '21039200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('828', '250', '1', '808.14.00', 'Biaya Pendidikan SDM', '630000', '36076100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('829', '297', '1', '801.04.00', 'Biaya Lembur', '300000', '7574180', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('830', '288', '1', '801.04.00', 'Biaya Lembur', '300000', '4475930', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('831', '252', '1', '801.04.00', 'Biaya Lembur', '277374', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('832', '251', '1', '801.04.00', 'Biaya Lembur', '150000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('833', '250', '1', '801.04.00', 'Biaya Lembur', '900000', '2993910', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('834', '243', '1', '801.04.00', 'Biaya Lembur', '922890', '12802200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('835', '235', '1', '801.04.00', 'Biaya Lembur', '450000', '10057600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('836', '231', '1', '801.04.00', 'Biaya Lembur', '2700000', '34065200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('837', '195', '1', '801.04.00', 'Biaya Lembur', '2400000', '50699400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('838', '192', '1', '801.04.00', 'Biaya Lembur', '1902090', '38326700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('839', '173', '1', '801.04.00', 'Biaya Lembur', '2195220', '6167260', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('840', '172', '1', '801.04.00', 'Biaya Lembur', '450000', '19245900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('841', '171', '1', '801.04.00', 'Biaya Lembur', '417243', '18764100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('842', '79', '1', '801.04.00', 'Biaya Lembur', '3687540', '51708900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('843', '55', '1', '801.04.00', 'Biaya Lembur', '407994', '4475790', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('844', '11', '1', '801.04.00', 'Biaya Lembur', '592428', '7326310', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('845', '251', '1', '803.07.00', 'Biaya Pemeliharaan Peralatan', '1805000', '31454900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('846', '231', '1', '803.07.00', 'Biaya Pemeliharaan Peralatan', '27113000', '1008260000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('847', '79', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '4773180', '436587000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('848', '173', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '34203000', '141100000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('849', '171', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '5757540', '184001000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('850', '288', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '10198000', '193919000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('851', '195', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '1738580', '335628000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('852', '259', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '0', '1115880000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('853', '192', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '203888', '96746200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('854', '189', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '85952', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('855', '79', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '510589', '436587000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('856', '33', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '9432', '123129000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('857', '10', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '272339', '331623000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('858', '172', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '1769920', '131750000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('859', '171', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '190183', '184001000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('860', '55', '1', '802.04.00', 'Biaya Langganan Air', '0', '1076070000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('861', '70', '1', '806.04.00', 'Biaya KSMU Instalasi Fasilitas Pelb.', '27464.8', '9000000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('862', '236', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '90750', '60220400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('863', '181', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '186475', '288538000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('864', '241', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '196476000', '6916180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('865', '259', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '30797', '90894400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('866', '259', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '286855', '90894400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('867', '298', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '705474', '47359500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('868', '297', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '161351', '42196500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('869', '288', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '139590', '193919000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('870', '258', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '875449', '256644000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('871', '256', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '211102', '16621900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('872', '252', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '1292320', '339409000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('873', '251', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '476485', '75321600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('874', '250', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '806160', '149269000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('875', '244', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '25790', '134353000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('876', '243', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '336675', '384316000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('877', '236', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '97290', '60220400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('878', '231', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '95000', '251121000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('879', '195', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '2092120', '335628000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('880', '193', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '327640', '151635000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('881', '250', '1', '807.05.00', 'Biaya Rapat  Rapat', '1098000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('882', '250', '1', '808.99.00', 'Biaya Umum Lainnya', '7550000', '262933000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('883', '231', '1', '808.99.00', 'Biaya Umum Lainnya', '10086000', '15987300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('884', '259', '1', '808.06.00', 'Biaya Promosi', '5000000', '1030630000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('885', '240', '1', '803.08.00', 'Biaya Pemeliharaan Kendaraan', '1805000', '2466760', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('886', '261', '1', '801.05.07', 'Tunjangan Cuti', '3134000', '30600600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('887', '259', '1', '801.05.07', 'Tunjangan Cuti', '2980000', '47233500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('888', '258', '1', '801.05.07', 'Tunjangan Cuti', '3134000', '30807800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('889', '251', '1', '801.05.07', 'Tunjangan Cuti', '3482000', '21569000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('890', '241', '1', '801.05.07', 'Tunjangan Cuti', '2194000', '36983300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('891', '235', '1', '801.05.07', 'Tunjangan Cuti', '8869000', '22822900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('892', '195', '1', '801.05.07', 'Tunjangan Cuti', '15470000', '78639300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('893', '173', '1', '801.05.07', 'Tunjangan Cuti', '2550000', '10416100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('894', '172', '1', '801.05.07', 'Tunjangan Cuti', '2980000', '28371400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('895', '79', '1', '801.05.07', 'Tunjangan Cuti', '12354000', '69322800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('896', '11', '1', '801.05.07', 'Tunjangan Cuti', '2523000', '11129100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('897', '10', '1', '801.05.07', 'Tunjangan Cuti', '2768000', '84437600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('898', '9', '1', '801.05.07', 'Tunjangan Cuti', '7654000', '35337600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('899', '241', '1', '802.04.00', 'Biaya Langganan Air', '9400000', '120124000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('900', '33', '1', '802.04.00', 'Biaya Langganan Air', '3150000', '26841400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('901', '181', '1', '802.04.00', 'Biaya Langganan Air', '460000', '16563300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('902', '172', '1', '802.04.00', 'Biaya Langganan Air', '2260000', '33502400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('903', '192', '1', '802.04.00', 'Biaya Langganan Air', '3460000', '51681700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('904', '243', '1', '802.04.00', 'Biaya Langganan Air', '1550000', '25854900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('905', '259', '1', '802.04.00', 'Biaya Langganan Air', '25070000', '240418000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('906', '70', '1', '806.04.00', 'Biaya KSMU Instalasi Fasilitas Pelb.', '896905000', '9000000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('907', '192', '1', '808.14.00', 'Biaya Pendidikan SDM', '4837000', '3861620', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('908', '3', '1', '807.06.00', 'Biaya Rumah Tangga', '2225000', '4259370', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('909', '251', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '7384800', '364447000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('910', '288', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '246160', '13790000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('911', '288', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '4923200', '166872000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('912', '251', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '369240', '34656900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('913', '250', '1', '808.99.00', 'Biaya Umum Lainnya', '7450000', '262933000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('914', '293', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '4923200', '72076100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('915', '243', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '492320', '41371500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('916', '243', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '9846400', '601474000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('917', '259', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '615400', '39396200', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('918', '259', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '12308000', '702452000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('919', '258', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '861560', '45068600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('920', '258', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '17231200', '539592000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('921', '252', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '369240', '71071000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('922', '252', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '7384800', '71071000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('923', '293', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '246160', '6958110', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('924', '181', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '7384800', '47743500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('925', '173', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '369240', '8098450', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('926', '173', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '7384800', '129842000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('927', '171', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '369240', '47308800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('928', '171', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '7384800', '501775000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('929', '231', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '492320', '58753600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('930', '231', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '9846400', '793224000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('931', '241', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '369240', '32566100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('932', '241', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '7384800', '423145000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('933', '261', '1', '808.15.00', 'Biaya Bantuan Sosial', '1000000', '11847600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('934', '193', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '123080', '47602600', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('935', '193', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '2461600', '604043000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('936', '195', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '123080', '76000100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('937', '195', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '2461600', '1042290000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('938', '183', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '123080', '45832900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('939', '183', '1', '801.01.00', 'Biaya Penghasilan Pegawai', '2461600', '581487000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('940', '181', '1', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '369240', '47743500', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('941', '193', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '122000', '16964700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('942', '236', '1', '807.01.00', 'Biaya Cetak  Copy', '2469000', '9580060', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('943', '259', '1', '803.09.00', 'Biaya Pemeliharaan Emplasemen', '3150000', '6782270', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('944', '171', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '1672850', '19121800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('945', '252', '1', '807.01.00', 'Biaya Cetak  Copy', '8987000', '300628000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('946', '22', '1', '802.05.00', 'Biaya Langganan Listrik', '933560', '13618800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('947', '241', '1', '802.05.00', 'Biaya Langganan Listrik', '187610', '2580360', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('948', '256', '1', '802.05.00', 'Biaya Langganan Listrik', '849165', '9864900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('949', '241', '1', '803.01.00', 'Biaya Pemeliharaan Bangn.Faspel.', '0', '1695060000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('950', '10', '1', '803.03.00', 'Biaya Pemeliharaan Alat-2 Faspel', '23621000', '37450100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('951', '9', '1', '803.03.00', 'Biaya Pemeliharaan Alat-2 Faspel', '86252000', '136749000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('952', '258', '1', '808.17.00', 'Biaya Perawatan Kesehatan', '696258000', '256644000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('953', '258', '1', '802.11.00', 'Biaya Perlengkapan', '10420000', '7222220', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('954', '311', '1', '809.99.00', 'Biaya Diluar Usaha Lainnya', '12536600', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('955', '288', '1', '803.04.00', 'Biaya Pemeliharaan Instalasi Faspel', '2740000', '150429000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('956', '301', '1', '809.02.00', 'Biaya Jasa Bank', '36000', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('957', '301', '1', '809.02.00', 'Biaya Jasa Bank', '392000', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('958', '252', '1', '808.99.00', 'Biaya Umum Lainnya', '4', '65579800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('959', '301', '1', '809.02.00', 'Biaya Jasa Bank', '5', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('960', '252', '1', '808.99.00', 'Biaya Umum Lainnya', '3', '65579800', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('961', '301', '1', '809.02.00', 'Biaya Jasa Bank', '148000', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('962', '301', '1', '809.02.00', 'Biaya Jasa Bank', '83500', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('963', '301', '1', '809.02.00', 'Biaya Jasa Bank', '20000', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('964', '301', '1', '809.02.00', 'Biaya Jasa Bank', '46000', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('965', '301', '1', '809.02.00', 'Biaya Jasa Bank', '5.66', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('966', '301', '1', '809.02.00', 'Biaya Jasa Bank', '6.2', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('967', '301', '1', '809.02.00', 'Biaya Jasa Bank', '6.75', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('968', '301', '1', '809.02.00', 'Biaya Jasa Bank', '6.86', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('969', '301', '1', '809.02.00', 'Biaya Jasa Bank', '7.5', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('970', '241', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '25974800', '6916180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('971', '241', '1', '803.01.00', 'Biaya Pemeliharaan Bangn.Faspel.', '20664400', '1695060000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('972', '241', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '46143100', '6916180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('973', '259', '1', '803.07.00', 'Biaya Pemeliharaan Peralatan', '5392000', '111800000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('974', '240', '1', '808.10.00', 'Biaya Konsultan', '62992', '164874000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('975', '63', '1', '808.20.00', 'Biaya Kontribusi Pemda', '1760460', '32956700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('976', '62', '1', '808.20.00', 'Biaya Kontribusi Pemda', '42032100', '487043000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('977', '55', '1', '808.99.00', 'Biaya Umum Lainnya', '0', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('978', '55', '1', '802.04.00', 'Biaya Langganan Air', '155783000', '1076070000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('979', '3', '1', '802.11.00', 'Biaya Perlengkapan', '3173600', '104146000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('980', '3', '1', '806.08.00', 'Biaya Sewa Kendaraan', '23400000', '342750000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('981', '297', '1', '808.04.00', 'Biaya Keamanan Pelabuhan', '306391000', '5186550000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('982', '258', '1', '806.10.00', 'Biaya Sewa Tenaga Kerja', '136985000', '1647650000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('983', '241', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '196476000', '6916180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('984', '241', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '72857700', '6916180000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('985', '259', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '54446800', '1115880000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('986', '252', '1', '807.03.00', 'Biaya Pengiriman Surat ', '1500000', '29892900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('987', '252', '1', '802.09.00', 'Biaya Bahan Pas Pelabuhan', '320900', '40419300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('988', '252', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '108976', '63212900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('989', '259', '1', '803.06.00', 'Biaya Pemelh.Jalan ', '1899400', '1115880000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('990', '259', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '1644520', '236371000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('991', '256', '1', '802.04.00', 'Biaya Langganan Air', '331140', '6857550', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('992', '259', '1', '802.04.00', 'Biaya Langganan Air', '184640', '240418000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('993', '259', '1', '802.04.00', 'Biaya Langganan Air', '282140', '240418000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('994', '258', '1', '802.04.00', 'Biaya Langganan Air', '639140', '139400000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('995', '244', '1', '807.03.00', 'Biaya Pengiriman Surat ', '125000', '2884400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('996', '183', '1', '807.03.00', 'Biaya Pengiriman Surat ', '125000', '2884400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('997', '259', '1', '807.03.00', 'Biaya Pengiriman Surat ', '375000', '14618400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('998', '22', '1', '802.04.00', 'Biaya Langganan Air', '1380640', '12292100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('999', '55', '1', '802.04.00', 'Biaya Langganan Air', '89142000', '1076070000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1000', '55', '1', '802.04.00', 'Biaya Langganan Air', '113382000', '1076070000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1001', '55', '1', '802.04.00', 'Biaya Langganan Air', '95922000', '1076070000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1002', '79', '1', '802.09.00', 'Biaya Bahan Pas Pelabuhan', '16300000', '204127000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1003', '171', '1', '802.11.00', 'Biaya Perlengkapan', '5000000', '26635700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1004', '259', '1', '802.05.00', 'Biaya Langganan Listrik', '6259110', '71154400', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1005', '243', '1', '802.05.00', 'Biaya Langganan Listrik', '11110300', '149782000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1006', '251', '1', '808.99.00', 'Biaya Umum Lainnya', '1539000', '114346000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1007', '251', '1', '807.01.00', 'Biaya Cetak  Copy', '951800', '14500900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1008', '56', '1', '802.05.00', 'Biaya Langganan Listrik', '2141840000', '23545300000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1009', '259', '1', '808.99.00', 'Biaya Umum Lainnya', '21850000', '638607000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1010', '171', '1', '807.01.00', 'Biaya Cetak  Copy', '9775270', '50462100', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1011', '288', '1', '803.07.00', 'Biaya Pemeliharaan Peralatan', '44000000', '409673000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1012', '250', '1', '808.99.00', 'Biaya Umum Lainnya', '5000000', '262933000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1013', '301', '1', '809.02.00', 'Biaya Jasa Bank', '5000', '500000000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1014', '241', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '9580000', '0', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1015', '188', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1435', '5579910', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1016', '227', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1435', '8805430', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1017', '249', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1435', '13660300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1018', '188', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1950000', '5579910', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1019', '227', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1950000', '8805430', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1020', '249', '1', '808.01.00', 'Biaya Perjalanan Dinas / Pindah', '1950000', '13660300', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1021', '238', '1', '803.08.00', 'Biaya Pemeliharaan Kendaraan', '5091470', '13726900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1022', '258', '1', '808.14.00', 'Biaya Pendidikan SDM', '4490000', '295674000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1023', '79', '1', '802.05.00', 'Biaya Langganan Listrik', '271245', '5023710', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1024', '192', '1', '807.06.00', 'Biaya Rumah Tangga', '508000', '38585000', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1025', '252', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '3617650', '63212900', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1026', '236', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '8856970', '8762610', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1027', '259', '1', '807.01.00', 'Biaya Cetak  Copy', '7803530', '73631700', '0', '1', null, '0', '', '', '6', '2015');
INSERT INTO `tbl_exp` VALUES ('1028', '259', '1', '807.02.00', 'Biaya Kertas -2 Tulis', '2029910', '236371000', '0', '1', null, '0', '', '', '6', '2015');

-- ----------------------------
-- Table structure for `tbl_loc`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_loc`;
CREATE TABLE `tbl_loc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbl_model_id` int(11) DEFAULT NULL,
  `location` varchar(5) DEFAULT NULL,
  `costcenter` varchar(10) DEFAULT NULL,
  `loc_name` varchar(40) DEFAULT NULL,
  `bulan` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_loc
-- ----------------------------
INSERT INTO `tbl_loc` VALUES ('1', '1', 'PRK', '801.00.00', 'SEGMEN PELY. KAPAL', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('2', '1', 'PRK', '801.01.00', 'Labuh', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('3', '1', 'PRK', '801.02.00', 'Pemanduan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('4', '1', 'PRK', '801.03.00', 'Penundaan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('5', '1', 'PRK', '801.04.00', 'Penambatan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('6', '1', 'PRK', '801.05.00', 'Air Kapal', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('7', '1', 'PRK', '801.99.00', 'Pel. Kapal Lainnya', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('8', '1', 'PRK', '802.00.00', 'SEGMEN PELY. BARANG', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('9', '1', 'PRK', '802.01.00', 'Dermaga', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('10', '1', 'PRK', '802.02.00', 'Gudang', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('11', '1', 'PRK', '802.03.00', 'Lapangan Penumpukan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('12', '1', 'PRK', '803.00.00', 'SEGMEN PENGUSAHAAN ALAT-ALAT', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('13', '1', 'PRK', '803.01.00', 'Kran Darat', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('14', '1', 'PRK', '803.02.00', 'Kran Apung', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('15', '1', 'PRK', '803.03.00', 'Forklift', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('16', '1', 'PRK', '803.04.00', 'Head Truck', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('17', '1', 'PRK', '803.05.00', 'Chasis', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('18', '1', 'PRK', '803.06.00', 'Tongkang', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('19', '1', 'PRK', '803.07.00', 'BKMP', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('20', '1', 'PRK', '803.08.00', 'Towing Tractor', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('21', '1', 'PRK', '803.09.00', 'Timbangan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('22', '1', 'PRK', '803.10.00', 'Pemadam Kebakaran', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('23', '1', 'PRK', '803.99.00', 'Pengusahaan Alat Lainnya', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('24', '1', 'PRK', '804.00.00', 'SEGMEN PELY. USAHA B/M', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('25', '1', 'PRK', '804.01.00', 'Per Mata Rantai', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('26', '1', 'PRK', '804.01.01', 'Stevedoring', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('27', '1', 'PRK', '804.01.02', 'Cargodoring', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('28', '1', 'PRK', '804.01.03', 'Overbrengen', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('29', '1', 'PRK', '804.01.04', 'Delivery Charges', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('30', '1', 'PRK', '804.02.00', 'Per Paket', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('31', '1', 'PRK', '804.02.01', 'Barang', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('32', '1', 'PRK', '804.02.02', 'Peti Kemas', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('33', '1', 'PRK', '804.03.00', 'Ro-Ro', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('34', '1', 'PRK', '804.03.01', 'Terminal B/M Kapal Ro-Ro', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('35', '1', 'PRK', '804.03.02', 'Kesejahteraan TKBM Kapal Ro-Ro', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('36', '1', 'PRK', '804.19.00', 'AMORTISASI BIAYA PENGERUKAN DAN ALUR PEL', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('37', '1', 'PRK', '804.25.00', 'AMORT BIAYA PEMELIHARAAN AKTIVA TETAP YG', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('38', '1', 'PRK', '804.99.00', 'Pengsh.Alat B/M Lainnya', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('39', '1', 'PRK', '804.99.02', 'Pengusahaan Kapal Roro', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('40', '1', 'PRK', '805.00.00', 'SEGMEN PELY. TERMINAL CURAH KERING', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('41', '1', 'PRK', '805.01.00', 'Biaya Bongkar Muat', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('42', '1', 'PRK', '805.02.00', 'Biaya Penyimpanan (Silo)', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('43', '1', 'PRK', '806.00.00', 'SEGMEN PELY. TERMINAL CURAH CAIR', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('44', '1', 'PRK', '806.01.00', 'Bongkar Muat', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('45', '1', 'PRK', '806.02.00', 'Penyimpanan (Tangki)', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('46', '1', 'PRK', '806.21.00', 'Kerjasama dengan Mitra Usaha', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('47', '1', 'PRK', '807.00.00', 'SEGMEN PELY. KONSOLIDASI MUATAN', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('48', '1', 'PRK', '807.01.00', 'Stuffing/Stripping', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('49', '1', 'PRK', '807.02.00', 'Unitasi/Paletisasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('50', '1', 'PRK', '808.00.00', 'SEGMEN PENGUSAHAAN TBAL', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('51', '1', 'PRK', '808.01.00', 'Pengusahaan Tanah', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('52', '1', 'PRK', '808.01.01', 'BPT Daratan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('53', '1', 'PRK', '808.01.02', 'BPT Perairan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('54', '1', 'PRK', '808.02.00', 'Biaya Pengusahaan Bangunan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('55', '1', 'PRK', '808.03.00', 'Biaya Pengusahaan Air Minum', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('56', '1', 'PRK', '808.04.00', 'Biaya Pengusahaan Listrik', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('57', '1', 'PRK', '808.06.00', 'Biaya diluar Usaha', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('58', '1', 'PRK', '809.00.00', 'SEGMEN PELSUS / DERSUS', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('59', '1', 'PRK', '809.01.00', 'Labuh', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('60', '1', 'PRK', '809.02.00', 'Pemanduan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('61', '1', 'PRK', '809.03.00', 'Penundaan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('62', '1', 'PRK', '809.04.00', 'Penambatan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('63', '1', 'PRK', '809.05.00', 'Dermaga', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('64', '1', 'PRK', '809.99.00', 'Lain-lain', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('65', '1', 'PRK', '810.00.00', 'SEGMEN KSO', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('66', '1', 'PRK', '810.01.00', 'KSO Bangunan Faspel', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('67', '1', 'PRK', '810.02.00', 'KSO Kapal', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('68', '1', 'PRK', '810.02.01', 'KSO Air Kapal', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('69', '1', 'PRK', '810.03.00', 'KSO Alat-alat Faspel', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('70', '1', 'PRK', '810.04.00', 'KSO Instalasi Faspel', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('71', '1', 'PRK', '810.04.01', 'KSO Instalasi Faspel Valas', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('72', '1', 'PRK', '810.05.00', 'KSO Tanah', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('73', '1', 'PRK', '810.06.00', 'KSO  Jalan ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('74', '1', 'PRK', '810.07.00', 'KSO Peralatan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('75', '1', 'PRK', '810.08.00', 'KSO Kendaraan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('76', '1', 'PRK', '810.09.00', 'KSO Emplasemen', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('77', '1', 'PRK', '811.00.00', 'SEGMEN RUPA-RUPA USAHA', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('78', '1', 'PRK', '811.01.00', 'Fasilitas Telepon', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('79', '1', 'PRK', '811.02.00', 'Pas Pelabuhan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('80', '1', 'PRK', '811.03.00', 'Retribusi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('81', '1', 'PRK', '811.04.00', 'Bengkel', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('82', '1', 'PRK', '811.05.00', 'Balai Pendidikan ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('83', '1', 'PRK', '811.06.00', 'Handling Fee', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('84', '1', 'PRK', '811.99.00', 'Rupa-rupa Usaha Lainnya', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('85', '1', 'PRK', '811.99.09', 'Biaya Asset TPS', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('86', '1', 'PRK', '812.00.00', 'SEGMEN PELAYANAN UTPK', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('87', '1', 'PRK', '812.01.00', 'Biaya Pelayanan Kapal', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('88', '1', 'PRK', '812.01.01', 'Biaya Penambatan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('89', '1', 'PRK', '812.01.02', 'Biaya Air Kapal', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('90', '1', 'PRK', '812.02.00', 'Biaya Pelayanan Barang', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('91', '1', 'PRK', '812.02.01', 'Biaya Dermaga', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('92', '1', 'PRK', '812.02.02', 'Biaya Penumpukan Container', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('93', '1', 'PRK', '812.02.03', 'Biaya Penumpukan Barang', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('94', '1', 'PRK', '812.03.00', 'Biaya Pengusahaan TBAL', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('95', '1', 'PRK', '812.03.02', 'Biaya Sewa Bangunan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('96', '1', 'PRK', '812.03.03', 'Biaya Pengusahaan Air Minum', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('97', '1', 'PRK', '812.03.04', 'Biaya Pengusahaan Listrik', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('98', '1', 'PRK', '812.04.00', 'Biaya Operasi Kapal', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('99', '1', 'PRK', '812.04.01', 'Biaya Bongkar Muat', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('100', '1', 'PRK', '812.04.02', 'Biaya Shifting/Stevedoring', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('101', '1', 'PRK', '812.04.03', 'Biaya Buka Tutup Palka', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('102', '1', 'PRK', '812.04.99', 'Biaya Operasi Kapal Lainnya', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('103', '1', 'PRK', '812.05.00', 'Biaya Operasi Lapangan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('104', '1', 'PRK', '812.05.01', 'Biaya Lift Off/On Extra', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('105', '1', 'PRK', '812.05.02', 'Biaya Relokasi ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('106', '1', 'PRK', '812.05.99', 'Biaya Operasi Lapangan Lainnya', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('107', '1', 'PRK', '812.06.00', 'Biaya Operasi CFS', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('108', '1', 'PRK', '812.06.01', 'Biaya Receiving/Delivery', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('109', '1', 'PRK', '812.06.02', 'Biaya Stuff./Strip./Rbh.Status', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('110', '1', 'PRK', '812.06.99', 'Biaya Operasi CFS Lainnya', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('111', '1', 'PRK', '812.07.00', 'Biaya Operasi Lainnya', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('112', '1', 'PRK', '812.07.01', 'Biaya Repair Container', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('113', '1', 'PRK', '812.07.02', 'Biaya Cleaning Container', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('114', '1', 'PRK', '812.08.00', 'Biaya Rupa -rupa Usaha', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('115', '1', 'PRK', '812.08.01', 'Biaya Pas Pelabuhan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('116', '1', 'PRK', '812.08.02', 'Biaya Retribusi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('117', '1', 'PRK', '812.08.03', 'Biaya Monitoring/Reefer Plug', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('118', '1', 'PRK', '812.08.04', 'Biaya PMK', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('119', '1', 'PRK', '812.08.05', 'Biaya Batal Muat/Alih Kapal', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('120', '1', 'PRK', '812.08.06', 'Biaya Trucking', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('121', '1', 'PRK', '812.08.99', 'Biaya Rupa-rupa Lainnya', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('122', '1', 'PRK', '825.00.00', 'BIAYA RUMAH SAKIT PELABUHAN', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('123', '1', 'PRK', '825.01.00', 'Biaya Usaha Pelayanan Medis', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('124', '1', 'PRK', '825.01.01', 'Biaya Klinik Umum', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('125', '1', 'PRK', '825.01.02', 'Biaya Klinik UGD', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('126', '1', 'PRK', '825.01.03', 'Biaya Klinik BKIA', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('127', '1', 'PRK', '825.01.04', 'Biaya Klinik Ambulance/Krt.Jenasah', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('128', '1', 'PRK', '825.01.05', 'Biaya Klinik Luar', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('129', '1', 'PRK', '825.01.06', 'Biaya Klinik Check Up', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('130', '1', 'PRK', '825.01.07', 'Biaya Klinik Gizi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('131', '1', 'PRK', '825.01.08', 'Biaya Klinik Anak', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('132', '1', 'PRK', '825.01.09', 'Biaya Klinik Gigi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('133', '1', 'PRK', '825.01.10', 'Biaya Klinik Jantung', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('134', '1', 'PRK', '825.01.11', 'Biaya Klinik Kandungan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('135', '1', 'PRK', '825.01.12', 'Biaya Klinik Mata', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('136', '1', 'PRK', '825.01.13', 'Biaya Klinik THT', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('137', '1', 'PRK', '825.01.14', 'Biaya Klinik Kulit/Kelamin', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('138', '1', 'PRK', '825.01.15', 'Biaya Specialis Paru', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('139', '1', 'PRK', '825.01.16', 'Biaya Specialis Bedah', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('140', '1', 'PRK', '825.01.17', 'Biaya Specialis Syaraf', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('141', '1', 'PRK', '825.01.18', 'Biaya Specialis Jiwa', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('142', '1', 'PRK', '825.01.19', 'Biaya Specialis Anak', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('143', '1', 'PRK', '825.01.20', 'Biaya Specialis Penyakit Dalam', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('144', '1', 'PRK', '825.01.21', 'Biaya Specialis Psikologi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('145', '1', 'PRK', '825.01.22', 'Biaya Specialis Alergi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('146', '1', 'PRK', '825.01.23', 'Biaya Treat mill', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('147', '1', 'PRK', '825.01.24', 'Biaya Specialis Rehab Medik', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('148', '1', 'PRK', '825.02.00', 'Biaya Usaha Perawatan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('149', '1', 'PRK', '825.02.01', 'Biaya Ruang Rawat Tinggal I', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('150', '1', 'PRK', '825.02.02', 'Biaya Ruang Rawat Tinggal II', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('151', '1', 'PRK', '825.02.03', 'Biaya Ruang Rawat OK', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('152', '1', 'PRK', '825.03.00', 'Biaya Penunjang Medis', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('153', '1', 'PRK', '825.03.01', 'Biaya Laboratorium', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('154', '1', 'PRK', '825.03.02', 'Biaya Radiologi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('155', '1', 'PRK', '825.03.03', 'Biaya Ultrasonografi/USG', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('156', '1', 'PRK', '825.03.04', 'Biaya Instalasi Farmasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('157', '1', 'PRK', '825.04.00', 'Biaya Rupa-rupa Usaha', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('158', '1', 'PRK', '825.04.01', 'Biaya Pelayanan Kesht.Sekolah', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('159', '1', 'PRK', '825.04.02', 'Biaya Cuci Pakaian', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('160', '1', 'PRK', '825.04.03', 'Biaya Parkir', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('161', '1', 'PRK', '825.04.04', 'Biaya Sewa Bangunan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('162', '1', 'PRK', '850.00.00', 'Biaya OTL Div/Dinas Terminal', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('163', '1', 'PRK', '850.01.00', 'Biaya Kadiv/Kadin Jasa/usaha', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('164', '1', 'PRK', '850.01.01', 'Biaya ManajerTerminal Jamrud', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('165', '1', 'PRK', '850.01.02', 'Biaya ManajerTerminal Mirah,Berlian & Ni', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('166', '1', 'PRK', '850.01.03', 'Biaya Manajer Terminal Kalimas', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('167', '1', 'PRK', '850.02.00', 'Biaya Kadin Kawasan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('168', '1', 'PRK', '850.03.00', 'Biaya Din.Aneka Ush.Um.', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('169', '1', 'PRK', '850.04.00', 'Biaya Din.Perenc.Operasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('170', '1', 'PRK', '850.05.00', 'Biaya Dinas Pangkalan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('171', '1', 'PRK', '850.05.01', 'Dinas Terminal Jamrud', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('172', '1', 'PRK', '850.05.02', 'Dinas Terminal Mirah, Berlian & Nilam', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('173', '1', 'PRK', '850.05.03', 'Dinas Terminal Kalimas', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('174', '1', 'PRK', '850.06.00', 'Biaya Din.Pengush.Air Tehnik', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('175', '1', 'PRK', '850.07.00', 'Biaya Din.Bina Pelanggan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('176', '1', 'PRK', '850.50.00', null, '6', '2015');
INSERT INTO `tbl_loc` VALUES ('177', '1', 'PRK', '850.52.00', 'Dinas Pemeliharaan dan Admin', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('178', '1', 'PRK', '850.57.00', null, '6', '2015');
INSERT INTO `tbl_loc` VALUES ('179', '1', 'PRK', '851.00.00', 'BIAYA OTL DIV/DIN PELAYANAN KAPAL', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('180', '1', 'PRK', '851.01.00', 'Biaya Kadiv/Kadin Pelayanan Kapal', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('181', '1', 'PRK', '851.02.00', 'Biaya Dinas Pemanduan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('182', '1', 'PRK', '851.03.00', 'Biaya Din.Armada', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('183', '1', 'PRK', '851.04.00', 'Biaya Dinas Administrasi Kepanduan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('184', '1', 'PRK', '851.05.00', 'Biaya Dinas Telekomunikasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('185', '1', 'PRK', '851.06.00', 'Biaya Dinas Administrasi Pemanduan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('186', '1', 'PRK', '851.07.00', 'Biaya Dinas Telkom', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('187', '1', 'PRK', '852.00.00', 'BIAYA OTL DIV/DIN ANEKA USAHA&PROPERTI', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('188', '1', 'PRK', '852.01.00', 'Biaya Kdv/Kdn.Aneka Usaha ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('189', '1', 'PRK', '852.02.00', 'Biaya Dinas Operasi Terminal', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('190', '1', 'PRK', '852.03.00', 'Biaya Dinas Pengsh.Peralatan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('191', '1', 'PRK', '852.04.00', 'Biaya Din.Properti,Pengamanan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('192', '1', 'PRK', '852.05.00', 'Biaya Din.Term.Penump.Umum', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('193', '1', 'PRK', '852.06.00', 'Biaya Dinas Adms.Aneka Usaha', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('194', '1', 'PRK', '852.07.00', 'Biaya Din.Bina Pelngn.', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('195', '1', 'PRK', '852.08.00', 'Biaya Dinas PBK, Depo & Parkir', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('196', '1', 'PRK', '852.50.00', 'Dinas Pangkalan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('197', '1', 'PRK', '853.00.00', 'BIAYA OTL DIV/DIN USH.TRM.SRB.GUNA', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('198', '1', 'PRK', '853.01.00', 'Biaya Kdv./Kdn.Usaha Term.Srb.Guna', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('199', '1', 'PRK', '853.02.00', 'Biaya Dinas Operasi Terminal', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('200', '1', 'PRK', '853.03.00', 'Biaya Dinas Operasi Peti Kemas', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('201', '1', 'PRK', '853.04.00', 'Biaya Dinas Pengusahaan Alat', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('202', '1', 'PRK', '853.05.00', 'Biaya Dinas Adms. Usaha Terminal', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('203', '1', 'PRK', '854.00.00', 'BI.OTL DIV/DIN UTPK (KONVENSIONAL)', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('204', '1', 'PRK', '854.01.00', 'Biaya Kadiv/Kadin Usaha TPK', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('205', '1', 'PRK', '854.02.00', 'Bi.Din.Perenc.Oprs.P.K', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('206', '1', 'PRK', '854.03.00', 'Biaya Dinas Operasi Penumpukan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('207', '1', 'PRK', '854.04.00', 'Biaya Dinas Op.Terminal Batu Bara', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('208', '1', 'PRK', '854.05.00', 'Biaya Dinas Op.Terml.Konvensional', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('209', '1', 'PRK', '854.06.00', 'Biaya Dinas Operasi Peti Kemas', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('210', '1', 'PRK', '854.07.00', 'Biaya Dinas Peralatan Peti Kemas', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('211', '1', 'PRK', '854.08.00', 'Biaya Dinas Administrasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('212', '1', 'PRK', '854.09.00', 'Biaya Dinas Pengush.Peralatan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('213', '1', 'PRK', '854.10.00', 'Biaya Dinas Bina Pelanggan ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('214', '1', 'PRK', '855.00.00', 'BIAYA OTL UNIT TERMINAL PETI KEMAS', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('215', '1', 'PRK', '855.01.00', 'Biaya OTL Operasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('216', '1', 'PRK', '855.01.01', 'Biaya Kadiv Operasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('217', '1', 'PRK', '855.01.02', 'Biaya Dinas Perencanaan ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('218', '1', 'PRK', '855.01.03', 'Biaya Dinas Operasi TPK II', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('219', '1', 'PRK', '855.01.04', 'Biaya Din.Op.Lap.  TPK II', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('220', '1', 'PRK', '855.01.05', 'Biaya Din.Op.Gudang TPK II', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('221', '1', 'PRK', '855.01.06', 'Biaya Din.Op.TPK.I/Antar Pulau', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('222', '1', 'PRK', '855.02.00', 'Biaya OTL Divisi Aneka Usaha', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('223', '1', 'PRK', '855.02.01', 'Biaya Kadiv Aneka Usaha', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('224', '1', 'PRK', '855.02.02', 'Biaya Dinas Usaha Pely. Multimoda', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('225', '1', 'PRK', '855.02.03', 'Biaya Din.Pely.Umum ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('226', '1', 'PRK', '856.00.00', 'Biaya OTL Divisi / Dinas Komersial/PPSA', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('227', '1', 'PRK', '856.01.00', 'Biaya Kadiv Komersial/PPSA', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('228', '1', 'PRK', '856.01.01', 'Biaya Dinas Pelayanan Medis', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('229', '1', 'PRK', '856.01.02', 'Biaya Subdin Pelyn.Medis I', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('230', '1', 'PRK', '856.01.03', 'Biaya Subdin Pelyn. Medis II', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('231', '1', 'PRK', '856.02.00', 'Biaya Dinas Perencanaan Operasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('232', '1', 'PRK', '856.02.01', 'Biaya Dinas Perawatan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('233', '1', 'PRK', '856.02.02', 'Biaya Subdin Perawatan I', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('234', '1', 'PRK', '856.02.03', 'Biaya Subdin Perawatan II', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('235', '1', 'PRK', '856.03.00', 'Biaya Dinas Analisa & Evaluasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('236', '1', 'PRK', '856.04.00', 'Biaya Dinas Pemasaran', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('237', '1', 'PRK', '857.00.00', 'Biaya OTL Deputy General Manajer', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('238', '1', 'PRK', '857.01.00', 'Biaya Deputy General Manajer', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('239', '1', 'PRK', '860.00.00', 'BIAYA P.O. DIVISI/DINAS TEHNIK', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('240', '1', 'PRK', '860.01.00', 'Biaya Kadiv/Kadin Tehnik', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('241', '1', 'PRK', '860.02.00', 'Biaya Dinas Bangunan ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('242', '1', 'PRK', '860.03.00', 'Biaya Dinas Peralatan Pelabuhan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('243', '1', 'PRK', '860.04.00', 'Biaya Dinas Pengusahaan Listrik', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('244', '1', 'PRK', '860.05.00', 'Biaya Dinas Perenc. Tehnik', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('245', '1', 'PRK', '860.06.00', 'Biaya Dinas Alat Apung ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('246', '1', 'PRK', '860.07.00', 'Biaya Dinas Umum ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('247', '1', 'PRK', '860.08.00', 'Biaya Dinas Sis.Infor.Hukum ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('248', '1', 'PRK', '861.00.00', 'BIAYA P.O. DIVISI/DINAS KEUANGAN', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('249', '1', 'PRK', '861.01.00', 'Biaya Kdv/Kdn Keuangan ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('250', '1', 'PRK', '861.02.00', 'Biaya Dinas Akuntansi Keuangan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('251', '1', 'PRK', '861.03.00', 'Biaya Dinas Akuntansi Manajemen', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('252', '1', 'PRK', '861.04.00', 'Biaya Dinas Perbendaharaan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('253', '1', 'PRK', '861.05.00', 'Biaya Dinas Administrasi Keuangan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('254', '1', 'PRK', '861.06.00', 'Biaya Dinas Anggaran', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('255', '1', 'PRK', '862.00.00', 'BIAYA P.O. KACAB  UMUM', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('256', '1', 'PRK', '862.01.00', 'Biaya Kepala Cabang', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('257', '1', 'PRK', '862.02.00', 'Biaya Kadiv/Kadin Umum', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('258', '1', 'PRK', '862.03.00', 'Biaya Dinas Personalia', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('259', '1', 'PRK', '862.04.00', 'Biaya Tata Usaha Tangga', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('260', '1', 'PRK', '862.05.00', 'Biaya Sistem Informasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('261', '1', 'PRK', '862.06.00', 'Biaya Din.Hkm,Hms.Pelanggan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('262', '1', 'PRK', '863.00.00', 'BIAYA P.O. UNIT TERMINAL PETI KEMAS', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('263', '1', 'PRK', '863.01.00', 'Biaya PO Divisi Peralatan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('264', '1', 'PRK', '863.01.01', 'Biaya Kadiv Peralatan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('265', '1', 'PRK', '863.01.02', 'Biaya Din.Prlt.Gent.Crane ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('266', '1', 'PRK', '863.01.03', 'Biaya Din.Perlt.Head Truck ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('267', '1', 'PRK', '863.01.04', 'Biaya Din.Fasilitas Tehnik', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('268', '1', 'PRK', '863.02.00', 'Biaya PO Divisi Keuangan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('269', '1', 'PRK', '863.02.01', 'Biaya Kadiv Keuangan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('270', '1', 'PRK', '863.02.02', 'Biaya Dinas Akuntansi Keuangan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('271', '1', 'PRK', '863.02.03', 'Biaya Dinas Akuntansi Manajemen', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('272', '1', 'PRK', '863.02.04', 'Biaya Dinas Administrasi Keuangan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('273', '1', 'PRK', '863.02.05', 'Biaya Dinas Perbendaharaan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('274', '1', 'PRK', '863.03.00', 'Biaya PO Kepala Unit  Umum', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('275', '1', 'PRK', '863.03.01', 'Biaya Kepala Unit', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('276', '1', 'PRK', '863.03.02', 'Biaya Kadiv Umum', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('277', '1', 'PRK', '863.03.03', 'Biaya Dinas Personalia', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('278', '1', 'PRK', '863.03.04', 'Biaya Dinas TU ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('279', '1', 'PRK', '863.03.05', 'Biaya Dinas Sistem Informasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('280', '1', 'PRK', '863.03.06', 'Biaya Hukum,Humas Pelanggan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('281', '1', 'PRK', '864.00.00', 'BIAYA PO TEKNOLOGI INFORMASI', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('282', '1', 'PRK', '864.01.00', 'BIAYA KADIV TEKNOLOGI INFORMASI', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('283', '1', 'PRK', '864.01.01', 'Biaya Kepala Dinas Penunjang Medis', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('284', '1', 'PRK', '864.01.02', 'Baiya Subdin Instalasi Farmasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('285', '1', 'PRK', '864.01.03', 'Biaya Subdin Penunj.Diagnostik', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('286', '1', 'PRK', '864.01.04', 'Biaya Subdin Penunjang', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('287', '1', 'PRK', '864.01.05', 'Biaya Subdin Pemeliharaan Sarana', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('288', '1', 'PRK', '864.02.00', 'BIAYA DINAS JARINGAN DAN STATISTIK', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('289', '1', 'PRK', '864.02.01', 'Biaya Kadin Keuangan ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('290', '1', 'PRK', '864.02.02', 'Biaya Subdin Keuangan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('291', '1', 'PRK', '864.02.03', 'Biaya Subdin TU/RT ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('292', '1', 'PRK', '864.02.04', 'Biaya Subdin Pengl.Sis.Inf.', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('293', '1', 'PRK', '864.03.00', 'BIAYA DINAS PENGOP.APLIKASI DAN DUK.PENG', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('294', '1', 'PRK', '864.03.01', 'Biaya Kepala Rumah Sakit', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('295', '1', 'PRK', '865.00.00', 'BIAYA KASATPAMPEL', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('296', '1', 'PRK', '865.01.00', 'Biaya KasatPamPel', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('297', '1', 'PRK', '865.02.00', 'Biaya Koord. Pam. Dalam Ring Bewaking', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('298', '1', 'PRK', '865.03.00', 'Biaya Koord. Pam. Luar Ring Bewaking', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('299', '1', 'PRK', '880.00.00', 'BIAYA DILUAR USAHA', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('300', '1', 'PRK', '880.01.00', 'Biaya Puskespel/Unit Kesehatan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('301', '1', 'PRK', '880.02.00', 'Biaya Jasa Bank', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('302', '1', 'PRK', '880.03.00', 'Biaya Bunga Deposito', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('303', '1', 'PRK', '880.04.00', 'Biaya Bunga Obligasi', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('304', '1', 'PRK', '880.05.00', 'Biaya Denda ', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('305', '1', 'PRK', '880.06.00', 'Rugi Selisih Kurs', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('306', '1', 'PRK', '880.07.00', 'Rugi Penjualan Surat Berharga', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('307', '1', 'PRK', '880.08.00', 'Rugi Penghapusan Aktiva Tetap', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('308', '1', 'PRK', '880.09.00', 'Rugi Penjualan Barang Persediaan', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('309', '1', 'PRK', '880.10.00', 'Koreksi Laba/Rugi Tahun Lalu', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('310', '1', 'PRK', '880.13.00', 'Biaya Denda Pajak', '6', '2015');
INSERT INTO `tbl_loc` VALUES ('311', '1', 'PRK', '880.99.00', 'Biaya Diluar Usaha Lainnya', '6', '2015');

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
INSERT INTO `tbl_menu` VALUES ('1', null, 'P', 'Modeling', null, null, '1', null);
INSERT INTO `tbl_menu` VALUES ('2', null, 'P', 'Data Master', null, null, '1', null);
INSERT INTO `tbl_menu` VALUES ('3', null, 'P', 'Process Master', null, null, '0', null);
INSERT INTO `tbl_menu` VALUES ('4', null, 'P', 'Cost Object', null, null, '1', null);
INSERT INTO `tbl_menu` VALUES ('5', null, 'P', 'Item Master', null, null, '0', null);
INSERT INTO `tbl_menu` VALUES ('6', null, 'P', 'Report', null, null, '1', null);
INSERT INTO `tbl_menu` VALUES ('7', null, 'P', 'Setting', null, null, '1', null);
INSERT INTO `tbl_menu` VALUES ('8', null, 'P', 'Reference', null, null, '1', null);
INSERT INTO `tbl_menu` VALUES ('100', '1', 'C', 'Set Modeling', 'home/modul/model/main/100', 'icon-group_key', '1', null);
INSERT INTO `tbl_menu` VALUES ('101', '1', 'C', 'Mapping Activity', 'home/modul/model/mapping', 'icon-group_key', '1', null);
INSERT INTO `tbl_menu` VALUES ('201', '2', 'C', 'Data Activity Master', 'home/modul/activity_master/main/201', 'icon-group', '1', null);
INSERT INTO `tbl_menu` VALUES ('301', '2', 'C', 'Data Process Master', 'home/modul/process_master/main/301', 'icon-group', '1', null);
INSERT INTO `tbl_menu` VALUES ('401', '4', 'C', 'Data Cost Object', 'home/modul/cost_object/main/401', 'icon-group', '1', null);
INSERT INTO `tbl_menu` VALUES ('501', '2', 'c', 'Data Item Master', 'home/modul/item_master/main/501', 'icon-group', '1', null);
INSERT INTO `tbl_menu` VALUES ('601', '6', 'C', 'Activity', 'home/modul/report/main/601', 'icon-group', '1', null);
INSERT INTO `tbl_menu` VALUES ('602', '6', 'C', 'Activity Attributes', 'home/modul/report/main/602', 'icon-group', '1', null);
INSERT INTO `tbl_menu` VALUES ('603', '6', 'C', 'Activity Driver', 'home/modul/report/main/603', 'icon-group', '1', null);
INSERT INTO `tbl_menu` VALUES ('701', '7', 'C', 'User Management', 'homex/modul/setting/701', 'icon-group', '1', 'tbl_user');
INSERT INTO `tbl_menu` VALUES ('702', '7', 'C', 'User Group', 'homex/modul/setting/702', 'icon-group', '1', 'cl_user_group');
INSERT INTO `tbl_menu` VALUES ('801', '8', 'C', 'Data Reference', 'home/modul/reference/main/801', 'icon-group', '1', null);

-- ----------------------------
-- Table structure for `tbl_model`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_model`;
CREATE TABLE `tbl_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_model` varchar(200) DEFAULT NULL,
  `deskripsi` text,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_model
-- ----------------------------
INSERT INTO `tbl_model` VALUES ('1', 'Model Tester', 'Testing Ajx', '2015-05-29 09:55:43', 'Goyz');
INSERT INTO `tbl_model` VALUES ('2', 'Model Tester 2', 'Testing Kedua Coy xxx', '2015-05-22 06:20:21', 'Goyz');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_prev_group
-- ----------------------------
INSERT INTO `tbl_prev_group` VALUES ('1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('2', '1', '100', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('3', '1', '2', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('5', '1', '201', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('6', '2', '1', '0', '1', '0', '0');
INSERT INTO `tbl_prev_group` VALUES ('7', '2', '100', '0', '1', '0', '0');
INSERT INTO `tbl_prev_group` VALUES ('9', '1', '202', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('10', '2', '202', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('11', '2', '2', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('13', '1', '3', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('14', '1', '301', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('15', '1', '4', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('16', '1', '401', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('17', '1', '5', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('18', '1', '501', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('19', '1', '6', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('20', '1', '601', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('21', '1', '602', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('22', '1', '603', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('23', '1', '7', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('24', '1', '701', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('25', '1', '702', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('26', '1', '801', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('27', '1', '8', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('28', '1', '101', '1', '1', '1', '1');

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
  `tbl_model_id` int(11) DEFAULT NULL,
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
  `bulan` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'admin', 'w8nRgzJ8q9W6/04js1nnJwKOHTideqmajzAcg7qmotOyPsh99akca9HqPPuK9U0A8po69U8txljPE/dGpyPTNg==', '1', 'Goyz Crotz', 'goyz87@gmail.com', 'L', '0251-388716', '1');
INSERT INTO `tbl_user` VALUES ('2', 'user', 'w8nRgzJ8q9W6/04js1nnJwKOHTideqmajzAcg7qmotOyPsh99akca9HqPPuK9U0A8po69U8txljPE/dGpyPTNg==', '2', 'User Guest', null, 'L', null, '1');
INSERT INTO `tbl_user` VALUES ('4', 'user_2', 'R2s+MzlfaarWwB2lVu9qQX5V1jEjKvkfMuZHnmzayO2kB4Engg9px0X3OtpYlhMx1ADCOlkDcC3pvjo5OvIlMg==', '2', 'User Guest 2', 'guest@gmail.com', 'L', '021-99889898', '1');
