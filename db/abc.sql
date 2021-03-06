/*
Navicat MySQL Data Transfer

Source Server         : Mysql - Localhost
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : pelindo

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2016-02-16 15:22:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cl_center`
-- ----------------------------
DROP TABLE IF EXISTS `cl_center`;
CREATE TABLE `cl_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cl_center
-- ----------------------------
INSERT INTO `cl_center` VALUES ('1', 'Center 1');

-- ----------------------------
-- Table structure for `cl_class`
-- ----------------------------
DROP TABLE IF EXISTS `cl_class`;
CREATE TABLE `cl_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cl_class
-- ----------------------------
INSERT INTO `cl_class` VALUES ('1', 'Class 1');

-- ----------------------------
-- Table structure for `cl_improvment`
-- ----------------------------
DROP TABLE IF EXISTS `cl_improvment`;
CREATE TABLE `cl_improvment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `improvment_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cl_improvment
-- ----------------------------
INSERT INTO `cl_improvment` VALUES ('1', 'Improvement 1');

-- ----------------------------
-- Table structure for `cl_segment`
-- ----------------------------
DROP TABLE IF EXISTS `cl_segment`;
CREATE TABLE `cl_segment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `segment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cl_segment
-- ----------------------------
INSERT INTO `cl_segment` VALUES ('1', 'Segment 1');

-- ----------------------------
-- Table structure for `cl_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `cl_user_group`;
CREATE TABLE `cl_user_group` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `group_user` varchar(200) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cl_user_group
-- ----------------------------
INSERT INTO `cl_user_group` VALUES ('1', 'Administrator', '1');
INSERT INTO `cl_user_group` VALUES ('3', 'Modeler ABC', '1');
INSERT INTO `cl_user_group` VALUES ('4', 'Viewer ABC', '1');

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
  `activity_code` varchar(10) DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `value_add` float DEFAULT NULL,
  `costtype` varchar(10) DEFAULT NULL,
  `fte` float DEFAULT NULL,
  `fte_cost` float DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `head_count` float DEFAULT NULL,
  `val_cost` float DEFAULT NULL,
  `tbl_rdm_id` bigint(20) DEFAULT NULL,
  `rd_tot_qty` float DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `budget` float DEFAULT NULL,
  `standart` float DEFAULT NULL,
  `capacity` float DEFAULT NULL,
  `target_quantity` float DEFAULT NULL,
  `budget_type` varchar(50) DEFAULT NULL,
  `cost_type` varchar(50) DEFAULT NULL,
  `cl_segment_id` int(11) DEFAULT NULL,
  `cl_center_id` int(11) DEFAULT NULL,
  `cl_class_id` int(11) DEFAULT NULL,
  `cl_improvment_id` int(11) DEFAULT NULL,
  `process_time` float DEFAULT NULL,
  `waiting_time` float DEFAULT NULL,
  `inspection_time` float DEFAULT NULL,
  `moving_time` float DEFAULT NULL,
  `nva_cost` float DEFAULT NULL,
  `tbl_process_id` int(11) DEFAULT NULL,
  `tbl_root_couses_id` int(11) DEFAULT NULL,
  `quantity_process` float DEFAULT NULL,
  `inefficiency_cost` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_acm_id` (`id`),
  KEY `idx_acm` (`tbl_model_id`,`tbl_cdm_id`,`activity_code`,`tbl_rdm_id`,`cl_segment_id`,`cl_center_id`,`cl_class_id`,`cl_improvment_id`,`tbl_process_id`,`tbl_root_couses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1123 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_acm
-- ----------------------------
INSERT INTO `tbl_acm` VALUES ('274', null, '2', '13', '10100', 'KEHUMASAN & PROMOSI', null, null, null, null, null, null, null, null, '1', '10', null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('275', '0', '2', '2', '10200', 'AKTIVITAS PPSA', null, null, null, null, null, null, null, null, '1', '10', null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('276', '299', '2', '3', '10201', 'Menerima PPKB dan Kelengkapannya', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, 'Fixed', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('277', '299', '2', '4', '10202', 'Entri Data PPKB yang Diterima', '20', '324', null, null, null, null, null, null, null, null, 'AAAA', '11', '2015', '200000', '200000', '10', null, 'Variable', 'Batch', '1', null, null, null, '34', '234', null, '34', null, '1', null, null, null);
INSERT INTO `tbl_acm` VALUES ('278', null, '2', '5', '10203', 'Rapat Perencanaan Tambat & BM', null, null, null, null, null, null, null, null, '2', '100', null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('279', null, '2', null, '10204', 'Rencana Penetapan Pel. Kapal & Barang', null, null, null, null, null, null, null, null, '2', '40', null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('280', null, '2', null, '10205', 'Entri Data atas PPKB yg telah Ditetapkan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('281', null, '2', '2', '10206', 'Mendistribusikan PPKB ke Unit Operasi', '10', null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('282', null, '2', null, '10207', 'Memproses PPKB Kalimas', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('283', '0', '2', '3', '10300', 'PELAYANAN PROPERTI', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('284', null, '2', '2', '10301', 'Pelayanan Permohonan HPL', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('285', null, '2', '1', '10302', 'Pelayanan Permohonan Air Umum', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('286', null, '2', null, '10303', 'Pelayanan Permohonan Listrik', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('287', null, '2', null, '10304', 'Pelayanan Pengusahaan Iklan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('288', '283', '2', null, '10305', 'Survey Lapangan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('289', null, '2', null, '10306', 'Pengurusan Izin Prinsip', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('290', null, '2', null, '10307', 'Menyusun RAB Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('291', null, '2', null, '10308', 'Menyusun RAB Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('292', null, '2', null, '10309', 'Pembuatan Kontrak Properti', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('293', null, '2', null, '10400', 'MELAYANI KELUHAN PELANGGAN', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('294', null, '2', null, '20100', 'Penyusunan Anggaran', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('295', null, '2', null, '20200', 'Pengendalian Anggaran', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('296', null, '2', null, '20301', 'Penyusunan Laporan Operasional', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('297', null, '2', null, '20302', 'Penyusunan Laporan Keuangan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('298', null, '2', null, '30101', 'Persiapan Operasi Pemanduan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('299', '0', '2', null, '30102', 'MEMANDU KAPAL MASUK', '2000', null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, '1000', null, 'Fixed', 'Unit', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('300', null, '2', null, '30103', 'MEMANDU KAPAL PINDAH', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('301', null, '2', null, '30104', 'MEMANDU KAPAL KELUAR', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('302', null, '2', null, '30105', 'Mencatat & Entri Data Realisasi Pandu', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('303', null, '2', null, '30106', 'Antar Pandu Menuju ke Kapal (BUOY 5)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('304', null, '2', null, '30107', 'Antar Pandu Menuju ke Kapal (REDE)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('305', null, '2', null, '30108', 'Menjemput Pandu di Kapal (BUOY 5)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('306', null, '2', null, '30109', 'Menjemput Pandu di Kapal (REDE)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('307', null, '2', null, '30110', 'Mobilitas Pandu di Darat', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('308', null, '2', null, '30111', 'Komunikasi Radio VHF', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('309', null, '2', null, '30112', 'Aktivitas di Karang Jamuang', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('310', null, '2', null, '30113', 'Menyiapkan Armada Kapal', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('311', null, '2', null, '30114', 'Pemanduan - MPI-S022', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('312', null, '2', null, '30115', 'Pemanduan - MPI-S044', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('313', null, '2', null, '30116', 'Pemanduan - MPI-S045', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('314', null, '2', null, '30117', 'Pemanduan - MPI-S046', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('315', null, '2', null, '30118', 'Pemanduan - MPI-S024', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('316', null, '2', null, '30119', 'Penundaan - KT ARTAMA III', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('317', null, '2', null, '30120', 'Penundaan - KT ANOMAN I', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('318', null, '2', null, '30121', 'Penundaan - KT ANOMAN II', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('319', null, '2', null, '30122', 'Penundaan - KT BIMA IV', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('320', null, '2', null, '30123', 'Penundaan - KT SUBALI II', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('321', null, '2', null, '30124', 'Penundaan - KT SELAT BALI', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('322', null, '2', null, '30125', 'Kepil - KP WANARA III', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('323', null, '2', null, '30126', 'Kepil - KP WANARA IV', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('324', null, '2', null, '30127', 'Kepil - KP WANARA V', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('325', null, '2', null, '30128', 'MELAKUKAN PENUNDAAN', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('326', null, '2', null, '30129', 'KT Menuju/Kembali ke/dari Kapal', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('327', null, '2', null, '30130', 'Melakukan Pengepilan Laut', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('328', null, '2', null, '30131', 'PELAYANAN LABUH', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('329', null, '2', null, '30132', 'Monitoring Kapal Berlabuh', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('330', null, '2', null, '30133', 'Membuat Jurnal Kapal (LT)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('331', null, '2', null, '30134', 'PELAYANAN TAMBAT', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('332', null, '2', null, '30135', 'Monitoring Kapal Tambat', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('333', null, '2', null, '30136', 'Updating Posisi Tambat Kapal', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('334', null, '2', null, '30137', 'Membuat dan Mendistribusikan 2A-2 (LT)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('335', null, '2', null, '30138', 'PELAYANAN AIR TONGKANG', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('336', null, '2', null, '30139', 'PELAYANAN AIR DERMAGA', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('337', null, '2', null, '30140', 'Persiapan Pelayanan Air Kapal', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('338', null, '2', null, '30171', 'Penundaan - KT PATRA TUNDA', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('339', null, '2', null, '30172', 'Penundaan - KT MAJU INDAH', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('340', null, '2', null, '30201', 'Pengawasan Bongkar/Muat', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('341', null, '2', null, '30202', 'Membuat KUB', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('342', null, '2', null, '30203', 'Mengesahkan LKBM', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('343', null, '2', null, '30204', 'Penumpukan Barang', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('344', null, '2', null, '30205', 'Penumpukan Peti Kemas Konvensional', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('345', null, '2', null, '30207', 'PENGAWASAN B/M KALIMAS', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('346', null, '2', null, '30208', 'PAKET DERMAGA KALIMAS', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('347', null, '2', null, '30209', 'Membuat & Mendistribusikan Bentuk 2B', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('348', null, '2', null, '30260', 'USAHA TERMINAL', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('349', null, '2', null, '30261', 'Pelayanan Stevedoring', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('350', null, '2', null, '30262', 'Pelayanan Cargodoring', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('351', null, '2', null, '30264', 'Pelayanan Delivery Charges', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('352', null, '2', null, '30291', 'PELAYANAN DERMAGA (TON)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('353', null, '2', null, '30292', 'PELAYANAN DERMAGA (M3)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('354', null, '2', null, '30293', 'PELAYANAN DERMAGA (EKOR)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('355', null, '2', null, '30294', 'PELAYANAN PENUMPUKAN (TON)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('356', null, '2', null, '30295', 'PELAYANAN PENUMPUKAN (M3)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('357', null, '2', null, '30301', 'MONITORING PROPERTI', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('358', null, '2', null, '30302', 'Monitoring Docking Kapal', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('359', null, '2', null, '30303', 'Pemeriksaan Bahan Berbahaya', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('360', null, '2', null, '30304', 'PEMADAMAN KEBAKARAN', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('361', null, '2', null, '30305', 'Pengawasan Peralatan PMK', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('362', null, '2', null, '30306', 'Memasang Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('363', null, '2', null, '30307', 'Pencatatan Pemakaian Air', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('364', null, '2', null, '30308', 'PELAYANAN AIR TRUK TANGKI', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('365', null, '2', null, '30309', 'PELAYANAN AIR SAMBUNGAN TETAP', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('366', null, '2', null, '30310', 'Memasang Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('367', null, '2', null, '30311', 'OPERASI PENGUSAHAAN LISTRIK', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('368', null, '2', null, '30401', 'PENJUALAN PAS PENUMPANG', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('369', null, '2', null, '30402', 'Penjualan Pas Penumpang', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('370', null, '2', null, '30403', 'RETRIBUSI ALAT', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('371', null, '2', null, '30404', 'RETRIBUSI PARKIR', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('372', null, '2', null, '30501', 'PELAYANAN TERMINAL RO-RO', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('373', null, '2', null, '30502', 'PELAYANAN TERMINAL PENUMPANG', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('374', null, '2', null, '30601', 'PENYEWAAN & PENGUSAHAAN ALAT', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('375', null, '2', null, '40101', 'Perencanaan Teknik', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('376', null, '2', null, '40102', 'Menyusun RAB & RKS', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('377', null, '2', null, '40103', 'Proses Pelelangan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('378', null, '2', null, '40104', 'Pengawasan Pekerjaan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('379', null, '2', null, '40201', 'Pemeliharaan & Kebersihan Terminal', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('380', null, '2', null, '40202', 'Memelihara Armada (Preventif)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('381', null, '2', null, '40203', 'Memelihara Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('382', null, '2', null, '40204', 'Memelihara Pompa Air', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('383', null, '2', null, '40205', 'Memelihara Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('384', null, '2', null, '40206', 'Memelihara Tongkang Air & Tunda', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('385', null, '2', null, '40207', 'Memelihara Kolam Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('386', null, '2', null, '40208', 'Memelihara Fasilitas Tambatan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('387', null, '2', null, '40209', 'Memelihara Peralatan Telkom', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('388', null, '2', null, '40210', 'Memelihara Kendaraan Dinas', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('389', null, '2', null, '40211', 'Memelihara Bangunan, Jalan & Lainnya', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('390', null, '2', null, '40301', 'Perbaikan Kapal', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('391', null, '2', null, '40302', 'Perbaikan Peralatan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('392', null, '2', null, '40303', 'Perbaikan Instalasi Listrik & Air', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('393', null, '2', null, '40304', 'Perbaikan Fasilitas Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('394', null, '2', null, '40401', 'Penyajian Data & Statistik', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('395', null, '2', null, '40402', 'Pengelolaan Perangkat Keras', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('396', null, '2', null, '40403', 'Pengelolaan Perangkat Lunak', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('397', null, '2', null, '40500', 'Manajemen Mutu', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('398', null, '2', null, '40600', 'Penanganan Keamanan & Ketertiban', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('399', null, '2', null, '50101', 'Administrasi Nota Pandu', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('400', null, '2', null, '50102', 'Administrasi Nota Tunda', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('401', null, '2', null, '50103', 'Administrasi Nota Labuh/Tambat', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('402', null, '2', null, '50104', 'Administrasi Nota Air Kapal', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('403', null, '2', null, '50105', 'Administrasi Nota Barang', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('404', null, '2', null, '50106', 'Administrasi Nota Dermaga Kalimas', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('405', null, '2', null, '50107', 'Administrasi Nota Properti', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('406', null, '2', null, '50108', 'Administrasi Pas Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('407', null, '2', null, '50109', 'Administrasi Pas Penumpang', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('408', null, '2', null, '50110', 'Administrasi Retribusi', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('409', null, '2', null, '50200', 'Administrasi Pendapatan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('410', null, '2', null, '50201', 'Menerbitkan & Mendistribusikan Nota (A4)', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('411', null, '2', null, '50202', 'Mengadministrasikan Piutang', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('412', null, '2', null, '50203', 'Menagih Piutang', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('413', null, '2', null, '50301', 'Pengelolaan Kas', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('414', null, '2', null, '50302', 'Pengelolaan Barang Gudang', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('415', null, '2', null, '50303', 'Pembukuan Transaksi', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('416', null, '2', null, '50401', 'Pengembangan Pegawai', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('417', null, '2', null, '50402', 'Administrasi Personalia dan Kesra', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('418', null, '2', null, '50403', 'Kesehatan & K3', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('419', null, '2', null, '50601', 'Administrasi Umum', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('420', null, '2', null, '50602', 'Mengelola Perlengkapan', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('421', null, '2', null, '50603', 'Aktivitas Rumah Tangga', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('422', null, '2', null, '50604', 'Penanganan Hukum', null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('423', null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '100000', '200000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('424', null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '100000', '200000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('425', null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '100000', '200000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('426', null, '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '100000', '200000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('427', null, '2', null, null, null, null, '234', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '100', '2', '3343', '34', '543', '1', null, '3', '2');
INSERT INTO `tbl_acm` VALUES ('428', null, '2', null, null, null, null, '534', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '133', '23', '45', '234', '23', '1', null, null, null);
INSERT INTO `tbl_acm` VALUES ('939', null, '2', '13', '10100', 'KEHUMASAN & PROMOSI', null, null, null, null, null, null, null, null, '1', '10', null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('940', null, '2', '2', '10200', 'AKTIVITAS PPSA', null, null, null, null, null, null, null, null, '1', '10', null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('941', null, '2', '3', '10201', 'Menerima PPKB dan Kelengkapannya', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, 'Fixed', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('942', null, '2', '4', '10202', 'Entri Data PPKB yang Diterima', '20', '324', null, null, null, null, null, null, null, null, 'AAAA', '1', '2016', '200000', '200000', '10', null, 'Variable', 'Batch', '1', null, null, null, '34', '234', null, '34', null, '1', null, null, null);
INSERT INTO `tbl_acm` VALUES ('943', null, '2', '5', '10203', 'Rapat Perencanaan Tambat & BM', null, null, null, null, null, null, null, null, '2', '100', null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('944', null, '2', null, '10204', 'Rencana Penetapan Pel. Kapal & Barang', null, null, null, null, null, null, null, null, '2', '40', null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('945', null, '2', null, '10205', 'Entri Data atas PPKB yg telah Ditetapkan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('946', null, '2', '2', '10206', 'Mendistribusikan PPKB ke Unit Operasi', '10', null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('947', null, '2', null, '10207', 'Memproses PPKB Kalimas', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('948', null, '2', '3', '10300', 'PELAYANAN PROPERTI', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('949', null, '2', '2', '10301', 'Pelayanan Permohonan HPL', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('950', null, '2', '1', '10302', 'Pelayanan Permohonan Air Umum', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('951', null, '2', null, '10303', 'Pelayanan Permohonan Listrik', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('952', null, '2', null, '10304', 'Pelayanan Pengusahaan Iklan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('953', null, '2', null, '10305', 'Survey Lapangan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('954', null, '2', null, '10306', 'Pengurusan Izin Prinsip', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('955', null, '2', null, '10307', 'Menyusun RAB Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('956', null, '2', null, '10308', 'Menyusun RAB Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('957', null, '2', null, '10309', 'Pembuatan Kontrak Properti', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('958', null, '2', null, '10400', 'MELAYANI KELUHAN PELANGGAN', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('959', null, '2', null, '20100', 'Penyusunan Anggaran', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('960', null, '2', null, '20200', 'Pengendalian Anggaran', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('961', null, '2', null, '20301', 'Penyusunan Laporan Operasional', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('962', null, '2', null, '20302', 'Penyusunan Laporan Keuangan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('963', null, '2', null, '30101', 'Persiapan Operasi Pemanduan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('964', null, '2', null, '30102', 'MEMANDU KAPAL MASUK', '2000', null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, '1000', null, 'Fixed', 'Unit', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('965', null, '2', null, '30103', 'MEMANDU KAPAL PINDAH', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('966', null, '2', null, '30104', 'MEMANDU KAPAL KELUAR', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('967', null, '2', null, '30105', 'Mencatat & Entri Data Realisasi Pandu', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('968', null, '2', null, '30106', 'Antar Pandu Menuju ke Kapal (BUOY 5)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('969', null, '2', null, '30107', 'Antar Pandu Menuju ke Kapal (REDE)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('970', null, '2', null, '30108', 'Menjemput Pandu di Kapal (BUOY 5)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('971', null, '2', null, '30109', 'Menjemput Pandu di Kapal (REDE)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('972', null, '2', null, '30110', 'Mobilitas Pandu di Darat', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('973', null, '2', null, '30111', 'Komunikasi Radio VHF', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('974', null, '2', null, '30112', 'Aktivitas di Karang Jamuang', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('975', null, '2', null, '30113', 'Menyiapkan Armada Kapal', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('976', null, '2', null, '30114', 'Pemanduan - MPI-S022', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('977', null, '2', null, '30115', 'Pemanduan - MPI-S044', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('978', null, '2', null, '30116', 'Pemanduan - MPI-S045', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('979', null, '2', null, '30117', 'Pemanduan - MPI-S046', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('980', null, '2', null, '30118', 'Pemanduan - MPI-S024', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('981', null, '2', null, '30119', 'Penundaan - KT ARTAMA III', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('982', null, '2', null, '30120', 'Penundaan - KT ANOMAN I', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('983', null, '2', null, '30121', 'Penundaan - KT ANOMAN II', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('984', null, '2', null, '30122', 'Penundaan - KT BIMA IV', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('985', null, '2', null, '30123', 'Penundaan - KT SUBALI II', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('986', null, '2', null, '30124', 'Penundaan - KT SELAT BALI', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('987', null, '2', null, '30125', 'Kepil - KP WANARA III', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('988', null, '2', null, '30126', 'Kepil - KP WANARA IV', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('989', null, '2', null, '30127', 'Kepil - KP WANARA V', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('990', null, '2', null, '30128', 'MELAKUKAN PENUNDAAN', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('991', null, '2', null, '30129', 'KT Menuju/Kembali ke/dari Kapal', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('992', null, '2', null, '30130', 'Melakukan Pengepilan Laut', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('993', null, '2', null, '30131', 'PELAYANAN LABUH', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('994', null, '2', null, '30132', 'Monitoring Kapal Berlabuh', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('995', null, '2', null, '30133', 'Membuat Jurnal Kapal (LT)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('996', null, '2', null, '30134', 'PELAYANAN TAMBAT', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('997', null, '2', null, '30135', 'Monitoring Kapal Tambat', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('998', null, '2', null, '30136', 'Updating Posisi Tambat Kapal', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('999', null, '2', null, '30137', 'Membuat dan Mendistribusikan 2A-2 (LT)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1000', null, '2', null, '30138', 'PELAYANAN AIR TONGKANG', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1001', null, '2', null, '30139', 'PELAYANAN AIR DERMAGA', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1002', null, '2', null, '30140', 'Persiapan Pelayanan Air Kapal', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1003', null, '2', null, '30171', 'Penundaan - KT PATRA TUNDA', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1004', null, '2', null, '30172', 'Penundaan - KT MAJU INDAH', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1005', null, '2', null, '30201', 'Pengawasan Bongkar/Muat', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1006', null, '2', null, '30202', 'Membuat KUB', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1007', null, '2', null, '30203', 'Mengesahkan LKBM', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1008', null, '2', null, '30204', 'Penumpukan Barang', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1009', null, '2', null, '30205', 'Penumpukan Peti Kemas Konvensional', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1010', null, '2', null, '30207', 'PENGAWASAN B/M KALIMAS', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1011', null, '2', null, '30208', 'PAKET DERMAGA KALIMAS', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1012', null, '2', null, '30209', 'Membuat & Mendistribusikan Bentuk 2B', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1013', null, '2', null, '30260', 'USAHA TERMINAL', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1014', null, '2', null, '30261', 'Pelayanan Stevedoring', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1015', null, '2', null, '30262', 'Pelayanan Cargodoring', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1016', null, '2', null, '30264', 'Pelayanan Delivery Charges', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1017', null, '2', null, '30291', 'PELAYANAN DERMAGA (TON)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1018', null, '2', null, '30292', 'PELAYANAN DERMAGA (M3)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1019', null, '2', null, '30293', 'PELAYANAN DERMAGA (EKOR)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1020', null, '2', null, '30294', 'PELAYANAN PENUMPUKAN (TON)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1021', null, '2', null, '30295', 'PELAYANAN PENUMPUKAN (M3)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1022', null, '2', null, '30301', 'MONITORING PROPERTI', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1023', null, '2', null, '30302', 'Monitoring Docking Kapal', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1024', null, '2', null, '30303', 'Pemeriksaan Bahan Berbahaya', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1025', null, '2', null, '30304', 'PEMADAMAN KEBAKARAN', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1026', null, '2', null, '30305', 'Pengawasan Peralatan PMK', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1027', null, '2', null, '30306', 'Memasang Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1028', null, '2', null, '30307', 'Pencatatan Pemakaian Air', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1029', null, '2', null, '30308', 'PELAYANAN AIR TRUK TANGKI', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1030', null, '2', null, '30309', 'PELAYANAN AIR SAMBUNGAN TETAP', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1031', null, '2', null, '30310', 'Memasang Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1032', null, '2', null, '30311', 'OPERASI PENGUSAHAAN LISTRIK', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1033', null, '2', null, '30401', 'PENJUALAN PAS PENUMPANG', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1034', null, '2', null, '30402', 'Penjualan Pas Penumpang', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1035', null, '2', null, '30403', 'RETRIBUSI ALAT', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1036', null, '2', null, '30404', 'RETRIBUSI PARKIR', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1037', null, '2', null, '30501', 'PELAYANAN TERMINAL RO-RO', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1038', null, '2', null, '30502', 'PELAYANAN TERMINAL PENUMPANG', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1039', null, '2', null, '30601', 'PENYEWAAN & PENGUSAHAAN ALAT', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1040', null, '2', null, '40101', 'Perencanaan Teknik', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1041', null, '2', null, '40102', 'Menyusun RAB & RKS', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1042', null, '2', null, '40103', 'Proses Pelelangan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1043', null, '2', null, '40104', 'Pengawasan Pekerjaan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1044', null, '2', null, '40201', 'Pemeliharaan & Kebersihan Terminal', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1045', null, '2', null, '40202', 'Memelihara Armada (Preventif)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1046', null, '2', null, '40203', 'Memelihara Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1047', null, '2', null, '40204', 'Memelihara Pompa Air', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1048', null, '2', null, '40205', 'Memelihara Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1049', null, '2', null, '40206', 'Memelihara Tongkang Air & Tunda', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1050', null, '2', null, '40207', 'Memelihara Kolam Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1051', null, '2', null, '40208', 'Memelihara Fasilitas Tambatan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1052', null, '2', null, '40209', 'Memelihara Peralatan Telkom', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1053', null, '2', null, '40210', 'Memelihara Kendaraan Dinas', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1054', null, '2', null, '40211', 'Memelihara Bangunan, Jalan & Lainnya', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1055', null, '2', null, '40301', 'Perbaikan Kapal', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1056', null, '2', null, '40302', 'Perbaikan Peralatan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1057', null, '2', null, '40303', 'Perbaikan Instalasi Listrik & Air', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1058', null, '2', null, '40304', 'Perbaikan Fasilitas Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1059', null, '2', null, '40401', 'Penyajian Data & Statistik', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1060', null, '2', null, '40402', 'Pengelolaan Perangkat Keras', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1061', null, '2', null, '40403', 'Pengelolaan Perangkat Lunak', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1062', null, '2', null, '40500', 'Manajemen Mutu', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1063', null, '2', null, '40600', 'Penanganan Keamanan & Ketertiban', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1064', null, '2', null, '50101', 'Administrasi Nota Pandu', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1065', null, '2', null, '50102', 'Administrasi Nota Tunda', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1066', null, '2', null, '50103', 'Administrasi Nota Labuh/Tambat', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1067', null, '2', null, '50104', 'Administrasi Nota Air Kapal', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1068', null, '2', null, '50105', 'Administrasi Nota Barang', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1069', null, '2', null, '50106', 'Administrasi Nota Dermaga Kalimas', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1070', null, '2', null, '50107', 'Administrasi Nota Properti', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1071', null, '2', null, '50108', 'Administrasi Pas Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1072', null, '2', null, '50109', 'Administrasi Pas Penumpang', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1073', null, '2', null, '50110', 'Administrasi Retribusi', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1074', null, '2', null, '50200', 'Administrasi Pendapatan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1075', null, '2', null, '50201', 'Menerbitkan & Mendistribusikan Nota (A4)', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1076', null, '2', null, '50202', 'Mengadministrasikan Piutang', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1077', null, '2', null, '50203', 'Menagih Piutang', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1078', null, '2', null, '50301', 'Pengelolaan Kas', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1079', null, '2', null, '50302', 'Pengelolaan Barang Gudang', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1080', null, '2', null, '50303', 'Pembukuan Transaksi', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1081', null, '2', null, '50401', 'Pengembangan Pegawai', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1082', null, '2', null, '50402', 'Administrasi Personalia dan Kesra', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1083', null, '2', null, '50403', 'Kesehatan & K3', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1084', null, '2', null, '50601', 'Administrasi Umum', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1085', null, '2', null, '50602', 'Mengelola Perlengkapan', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1086', null, '2', null, '50603', 'Aktivitas Rumah Tangga', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1087', null, '2', null, '50604', 'Penanganan Hukum', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1088', null, '4', null, '19100', 'Aktivitas Administrasi', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1090', null, '4', null, '18900', 'Aktivitas Perawatan Kapal Tunda', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1091', null, '4', null, '17700', 'Pencatatan Keluar Masuk Kapal', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1092', null, '4', '41', '14400', 'Pembukuan Utang & Piutang', '1000', null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1093', null, '4', null, '15500', 'Pengelolaan Kas Besar', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1094', null, '4', null, '16900', 'Perawatan Peralatan Navigasi Kapal', null, null, null, null, null, null, null, null, null, null, null, '1', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1111', null, '4', '41', '14400', 'Pembukuan Utang & Piutang', null, null, null, null, null, null, null, null, null, null, null, '2', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1112', null, '4', null, '15500', 'Pengelolaan Kas Besar', null, null, null, null, null, null, null, null, null, null, null, '2', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1113', null, '4', null, '19100', 'Aktivitas Administrasi', null, null, null, null, null, null, null, null, null, null, null, '2', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1114', null, '4', null, '18900', 'Aktivitas Perawatan Kapal Tunda', null, null, null, null, null, null, null, null, null, null, null, '2', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1115', null, '4', null, '17700', 'Pencatatan Keluar Masuk Kapal', null, null, null, null, null, null, null, null, null, null, null, '2', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1116', null, '4', null, '16900', 'Perawatan Peralatan Navigasi Kapal', null, null, null, null, null, null, null, null, null, null, null, '2', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1117', null, '4', '41', '14400', 'Pembukuan Utang & Piutang', null, null, null, null, null, null, null, null, null, null, null, '3', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1118', null, '4', null, '15500', 'Pengelolaan Kas Besar', null, null, null, null, null, null, null, null, null, null, null, '3', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1119', null, '4', null, '16900', 'Perawatan Peralatan Navigasi Kapal', null, null, null, null, null, null, null, null, null, null, null, '3', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1120', null, '4', null, '17700', 'Pencatatan Keluar Masuk Kapal', null, null, null, null, null, null, null, null, null, null, null, '3', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1121', null, '4', null, '18900', 'Aktivitas Perawatan Kapal Tunda', null, null, null, null, null, null, null, null, null, null, null, '3', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm` VALUES ('1122', null, '4', null, '19100', 'Aktivitas Administrasi', null, null, null, null, null, null, null, null, null, null, null, '3', '2016', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tbl_acm_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acm_copy`;
CREATE TABLE `tbl_acm_copy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `tbl_model_id` int(11) DEFAULT NULL,
  `tbl_cdm_id` bigint(20) DEFAULT NULL,
  `activity_code` varchar(10) DEFAULT NULL,
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
  `standart` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_acm_copy
-- ----------------------------
INSERT INTO `tbl_acm_copy` VALUES ('114', null, '1', null, '10100', 'KEHUMASAN & PROMOSI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('115', null, '1', null, '10200', 'AKTIVITAS PPSA', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('116', null, '1', null, '10201', 'Menerima PPKB dan Kelengkapannya', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('117', null, '1', null, '10202', 'Entri Data PPKB yang Diterima', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('118', null, '1', null, '10203', 'Rapat Perencanaan Tambat & BM', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('119', null, '1', null, '10204', 'Rencana Penetapan Pel. Kapal & Barang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('120', null, '1', null, '10205', 'Entri Data atas PPKB yg telah Ditetapkan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('121', null, '1', null, '10206', 'Mendistribusikan PPKB ke Unit Operasi', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('122', null, '1', null, '10207', 'Memproses PPKB Kalimas', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('123', null, '1', null, '10300', 'PELAYANAN PROPERTI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('124', null, '1', null, '10301', 'Pelayanan Permohonan HPL', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('125', null, '1', null, '10302', 'Pelayanan Permohonan Air Umum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('126', null, '1', null, '10303', 'Pelayanan Permohonan Listrik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('127', null, '1', null, '10304', 'Pelayanan Pengusahaan Iklan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('128', null, '1', null, '10305', 'Survey Lapangan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('129', null, '1', null, '10306', 'Pengurusan Izin Prinsip', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('130', null, '1', null, '10307', 'Menyusun RAB Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('131', null, '1', null, '10308', 'Menyusun RAB Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('132', null, '1', null, '10309', 'Pembuatan Kontrak Properti', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('133', null, '1', null, '10400', 'MELAYANI KELUHAN PELANGGAN', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('134', null, '1', null, '20100', 'Penyusunan Anggaran', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('135', null, '1', null, '20200', 'Pengendalian Anggaran', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('136', null, '1', null, '20301', 'Penyusunan Laporan Operasional', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('137', null, '1', null, '20302', 'Penyusunan Laporan Keuangan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('138', null, '1', null, '30101', 'Persiapan Operasi Pemanduan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('139', null, '1', null, '30102', 'MEMANDU KAPAL MASUK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('140', null, '1', null, '30103', 'MEMANDU KAPAL PINDAH', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('141', null, '1', null, '30104', 'MEMANDU KAPAL KELUAR', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('142', null, '1', null, '30105', 'Mencatat & Entri Data Realisasi Pandu', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('143', null, '1', null, '30106', 'Antar Pandu Menuju ke Kapal (BUOY 5)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('144', null, '1', null, '30107', 'Antar Pandu Menuju ke Kapal (REDE)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('145', null, '1', null, '30108', 'Menjemput Pandu di Kapal (BUOY 5)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('146', null, '1', null, '30109', 'Menjemput Pandu di Kapal (REDE)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('147', null, '1', null, '30110', 'Mobilitas Pandu di Darat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('148', null, '1', null, '30111', 'Komunikasi Radio VHF', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('149', null, '1', null, '30112', 'Aktivitas di Karang Jamuang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('150', null, '1', null, '30113', 'Menyiapkan Armada Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('151', null, '1', null, '30114', 'Pemanduan - MPI-S022', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('152', null, '1', null, '30115', 'Pemanduan - MPI-S044', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('153', null, '1', null, '30116', 'Pemanduan - MPI-S045', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('154', null, '1', null, '30117', 'Pemanduan - MPI-S046', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('155', null, '1', null, '30118', 'Pemanduan - MPI-S024', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('156', null, '1', null, '30119', 'Penundaan - KT ARTAMA III', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('157', null, '1', null, '30120', 'Penundaan - KT ANOMAN I', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('158', null, '1', null, '30121', 'Penundaan - KT ANOMAN II', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('159', null, '1', null, '30122', 'Penundaan - KT BIMA IV', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('160', null, '1', null, '30123', 'Penundaan - KT SUBALI II', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('161', null, '1', null, '30124', 'Penundaan - KT SELAT BALI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('162', null, '1', null, '30125', 'Kepil - KP WANARA III', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('163', null, '1', null, '30126', 'Kepil - KP WANARA IV', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('164', null, '1', null, '30127', 'Kepil - KP WANARA V', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('165', null, '1', null, '30128', 'MELAKUKAN PENUNDAAN', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('166', null, '1', null, '30129', 'KT Menuju/Kembali ke/dari Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('167', null, '1', null, '30130', 'Melakukan Pengepilan Laut', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('168', null, '1', null, '30131', 'PELAYANAN LABUH', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('169', null, '1', null, '30132', 'Monitoring Kapal Berlabuh', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('170', null, '1', null, '30133', 'Membuat Jurnal Kapal (LT)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('171', null, '1', null, '30134', 'PELAYANAN TAMBAT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('172', null, '1', null, '30135', 'Monitoring Kapal Tambat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('173', null, '1', null, '30136', 'Updating Posisi Tambat Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('174', null, '1', null, '30137', 'Membuat dan Mendistribusikan 2A-2 (LT)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('175', null, '1', null, '30138', 'PELAYANAN AIR TONGKANG', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('176', null, '1', null, '30139', 'PELAYANAN AIR DERMAGA', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('177', null, '1', null, '30140', 'Persiapan Pelayanan Air Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('178', null, '1', null, '30171', 'Penundaan - KT PATRA TUNDA', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('179', null, '1', null, '30172', 'Penundaan - KT MAJU INDAH', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('180', null, '1', null, '30201', 'Pengawasan Bongkar/Muat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('181', null, '1', null, '30202', 'Membuat KUB', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('182', null, '1', null, '30203', 'Mengesahkan LKBM', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('183', null, '1', null, '30204', 'Penumpukan Barang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('184', null, '1', null, '30205', 'Penumpukan Peti Kemas Konvensional', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('185', null, '1', null, '30207', 'PENGAWASAN B/M KALIMAS', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('186', null, '1', null, '30208', 'PAKET DERMAGA KALIMAS', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('187', null, '1', null, '30209', 'Membuat & Mendistribusikan Bentuk 2B', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('188', null, '1', null, '30260', 'USAHA TERMINAL', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('189', null, '1', null, '30261', 'Pelayanan Stevedoring', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('190', null, '1', null, '30262', 'Pelayanan Cargodoring', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('191', null, '1', null, '30264', 'Pelayanan Delivery Charges', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('192', null, '1', null, '30291', 'PELAYANAN DERMAGA (TON)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('193', null, '1', null, '30292', 'PELAYANAN DERMAGA (M3)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('194', null, '1', null, '30293', 'PELAYANAN DERMAGA (EKOR)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('195', null, '1', null, '30294', 'PELAYANAN PENUMPUKAN (TON)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('196', null, '1', null, '30295', 'PELAYANAN PENUMPUKAN (M3)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('197', null, '1', null, '30301', 'MONITORING PROPERTI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('198', null, '1', null, '30302', 'Monitoring Docking Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('199', null, '1', null, '30303', 'Pemeriksaan Bahan Berbahaya', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('200', null, '1', null, '30304', 'PEMADAMAN KEBAKARAN', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('201', null, '1', null, '30305', 'Pengawasan Peralatan PMK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('202', null, '1', null, '30306', 'Memasang Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('203', null, '1', null, '30307', 'Pencatatan Pemakaian Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('204', null, '1', null, '30308', 'PELAYANAN AIR TRUK TANGKI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('205', null, '1', null, '30309', 'PELAYANAN AIR SAMBUNGAN TETAP', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('206', null, '1', null, '30310', 'Memasang Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('207', null, '1', null, '30311', 'OPERASI PENGUSAHAAN LISTRIK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('208', null, '1', null, '30401', 'PENJUALAN PAS PENUMPANG', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('209', null, '1', null, '30402', 'Penjualan Pas Penumpang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('210', null, '1', null, '30403', 'RETRIBUSI ALAT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('211', null, '1', null, '30404', 'RETRIBUSI PARKIR', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('212', null, '1', null, '30501', 'PELAYANAN TERMINAL RO-RO', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('213', null, '1', null, '30502', 'PELAYANAN TERMINAL PENUMPANG', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('214', null, '1', null, '30601', 'PENYEWAAN & PENGUSAHAAN ALAT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('215', null, '1', null, '40101', 'Perencanaan Teknik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('216', null, '1', null, '40102', 'Menyusun RAB & RKS', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('217', null, '1', null, '40103', 'Proses Pelelangan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('218', null, '1', null, '40104', 'Pengawasan Pekerjaan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('219', null, '1', null, '40201', 'Pemeliharaan & Kebersihan Terminal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('220', null, '1', null, '40202', 'Memelihara Armada (Preventif)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('221', null, '1', null, '40203', 'Memelihara Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('222', null, '1', null, '40204', 'Memelihara Pompa Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('223', null, '1', null, '40205', 'Memelihara Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('224', null, '1', null, '40206', 'Memelihara Tongkang Air & Tunda', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('225', null, '1', null, '40207', 'Memelihara Kolam Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('226', null, '1', null, '40208', 'Memelihara Fasilitas Tambatan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('227', null, '1', null, '40209', 'Memelihara Peralatan Telkom', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('228', null, '1', null, '40210', 'Memelihara Kendaraan Dinas', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('229', null, '1', null, '40211', 'Memelihara Bangunan, Jalan & Lainnya', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('230', null, '1', null, '40301', 'Perbaikan Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('231', null, '1', null, '40302', 'Perbaikan Peralatan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('232', null, '1', null, '40303', 'Perbaikan Instalasi Listrik & Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('233', null, '1', null, '40304', 'Perbaikan Fasilitas Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('234', null, '1', null, '40401', 'Penyajian Data & Statistik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('235', null, '1', null, '40402', 'Pengelolaan Perangkat Keras', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('236', null, '1', null, '40403', 'Pengelolaan Perangkat Lunak', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('237', null, '1', null, '40500', 'Manajemen Mutu', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('238', null, '1', null, '40600', 'Penanganan Keamanan & Ketertiban', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('239', null, '1', null, '50101', 'Administrasi Nota Pandu', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('240', null, '1', null, '50102', 'Administrasi Nota Tunda', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('241', null, '1', null, '50103', 'Administrasi Nota Labuh/Tambat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('242', null, '1', null, '50104', 'Administrasi Nota Air Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('243', null, '1', null, '50105', 'Administrasi Nota Barang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('244', null, '1', null, '50106', 'Administrasi Nota Dermaga Kalimas', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('245', null, '1', null, '50107', 'Administrasi Nota Properti', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('246', null, '1', null, '50108', 'Administrasi Pas Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('247', null, '1', null, '50109', 'Administrasi Pas Penumpang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('248', null, '1', null, '50110', 'Administrasi Retribusi', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('249', null, '1', null, '50200', 'Administrasi Pendapatan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('250', null, '1', null, '50201', 'Menerbitkan & Mendistribusikan Nota (A4)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('251', null, '1', null, '50202', 'Mengadministrasikan Piutang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('252', null, '1', null, '50203', 'Menagih Piutang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('253', null, '1', null, '50301', 'Pengelolaan Kas', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('254', null, '1', null, '50302', 'Pengelolaan Barang Gudang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('255', null, '1', null, '50303', 'Pembukuan Transaksi', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('256', null, '1', null, '50401', 'Pengembangan Pegawai', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('257', null, '1', null, '50402', 'Administrasi Personalia dan Kesra', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('258', null, '1', null, '50403', 'Kesehatan & K3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('259', null, '1', null, '50601', 'Administrasi Umum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('260', null, '1', null, '50602', 'Mengelola Perlengkapan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('261', null, '1', null, '50603', 'Aktivitas Rumah Tangga', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('262', null, '1', null, '50604', 'Penanganan Hukum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('263', '0', '1', null, '30102', 'MEMANDU KAPAL MASUK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('264', '0', '1', null, '30103', 'MEMANDU KAPAL PINDAH', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('265', '0', '1', null, '30104', 'MEMANDU KAPAL KELUAR', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('266', '263', '1', null, '30106', 'Antar Pandu Menuju ke Kapal (BUOY 5)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('269', '264', '1', null, '30114', 'Pemanduan - MPI-S022', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('271', '264', '1', null, '30116', 'Pemanduan - MPI-S045', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('272', '264', '1', null, '30117', 'Pemanduan - MPI-S046', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('273', '264', '1', null, '10100', 'KEHUMASAN & PROMOSI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('274', null, '2', null, '10100', 'KEHUMASAN & PROMOSI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('275', null, '2', null, '10200', 'AKTIVITAS PPSA', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('276', null, '2', null, '10201', 'Menerima PPKB dan Kelengkapannya', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('277', null, '2', null, '10202', 'Entri Data PPKB yang Diterima', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('278', null, '2', null, '10203', 'Rapat Perencanaan Tambat & BM', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('279', null, '2', null, '10204', 'Rencana Penetapan Pel. Kapal & Barang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('280', null, '2', null, '10205', 'Entri Data atas PPKB yg telah Ditetapkan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('281', null, '2', null, '10206', 'Mendistribusikan PPKB ke Unit Operasi', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('282', null, '2', null, '10207', 'Memproses PPKB Kalimas', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('283', null, '2', null, '10300', 'PELAYANAN PROPERTI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('284', null, '2', null, '10301', 'Pelayanan Permohonan HPL', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('285', null, '2', null, '10302', 'Pelayanan Permohonan Air Umum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('286', null, '2', null, '10303', 'Pelayanan Permohonan Listrik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('287', null, '2', null, '10304', 'Pelayanan Pengusahaan Iklan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('288', null, '2', null, '10305', 'Survey Lapangan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('289', null, '2', null, '10306', 'Pengurusan Izin Prinsip', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('290', null, '2', null, '10307', 'Menyusun RAB Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('291', null, '2', null, '10308', 'Menyusun RAB Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('292', null, '2', null, '10309', 'Pembuatan Kontrak Properti', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('293', null, '2', null, '10400', 'MELAYANI KELUHAN PELANGGAN', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('294', null, '2', null, '20100', 'Penyusunan Anggaran', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('295', null, '2', null, '20200', 'Pengendalian Anggaran', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('296', null, '2', null, '20301', 'Penyusunan Laporan Operasional', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('297', null, '2', null, '20302', 'Penyusunan Laporan Keuangan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('298', null, '2', null, '30101', 'Persiapan Operasi Pemanduan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('299', null, '2', null, '30102', 'MEMANDU KAPAL MASUK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('300', null, '2', null, '30103', 'MEMANDU KAPAL PINDAH', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('301', null, '2', null, '30104', 'MEMANDU KAPAL KELUAR', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('302', null, '2', null, '30105', 'Mencatat & Entri Data Realisasi Pandu', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('303', null, '2', null, '30106', 'Antar Pandu Menuju ke Kapal (BUOY 5)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('304', null, '2', null, '30107', 'Antar Pandu Menuju ke Kapal (REDE)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('305', null, '2', null, '30108', 'Menjemput Pandu di Kapal (BUOY 5)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('306', null, '2', null, '30109', 'Menjemput Pandu di Kapal (REDE)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('307', null, '2', null, '30110', 'Mobilitas Pandu di Darat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('308', null, '2', null, '30111', 'Komunikasi Radio VHF', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('309', null, '2', null, '30112', 'Aktivitas di Karang Jamuang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('310', null, '2', null, '30113', 'Menyiapkan Armada Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('311', null, '2', null, '30114', 'Pemanduan - MPI-S022', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('312', null, '2', null, '30115', 'Pemanduan - MPI-S044', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('313', null, '2', null, '30116', 'Pemanduan - MPI-S045', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('314', null, '2', null, '30117', 'Pemanduan - MPI-S046', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('315', null, '2', null, '30118', 'Pemanduan - MPI-S024', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('316', null, '2', null, '30119', 'Penundaan - KT ARTAMA III', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('317', null, '2', null, '30120', 'Penundaan - KT ANOMAN I', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('318', null, '2', null, '30121', 'Penundaan - KT ANOMAN II', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('319', null, '2', null, '30122', 'Penundaan - KT BIMA IV', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('320', null, '2', null, '30123', 'Penundaan - KT SUBALI II', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('321', null, '2', null, '30124', 'Penundaan - KT SELAT BALI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('322', null, '2', null, '30125', 'Kepil - KP WANARA III', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('323', null, '2', null, '30126', 'Kepil - KP WANARA IV', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('324', null, '2', null, '30127', 'Kepil - KP WANARA V', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('325', null, '2', null, '30128', 'MELAKUKAN PENUNDAAN', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('326', null, '2', null, '30129', 'KT Menuju/Kembali ke/dari Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('327', null, '2', null, '30130', 'Melakukan Pengepilan Laut', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('328', null, '2', null, '30131', 'PELAYANAN LABUH', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('329', null, '2', null, '30132', 'Monitoring Kapal Berlabuh', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('330', null, '2', null, '30133', 'Membuat Jurnal Kapal (LT)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('331', null, '2', null, '30134', 'PELAYANAN TAMBAT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('332', null, '2', null, '30135', 'Monitoring Kapal Tambat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('333', null, '2', null, '30136', 'Updating Posisi Tambat Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('334', null, '2', null, '30137', 'Membuat dan Mendistribusikan 2A-2 (LT)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('335', null, '2', null, '30138', 'PELAYANAN AIR TONGKANG', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('336', null, '2', null, '30139', 'PELAYANAN AIR DERMAGA', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('337', null, '2', null, '30140', 'Persiapan Pelayanan Air Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('338', null, '2', null, '30171', 'Penundaan - KT PATRA TUNDA', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('339', null, '2', null, '30172', 'Penundaan - KT MAJU INDAH', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('340', null, '2', null, '30201', 'Pengawasan Bongkar/Muat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('341', null, '2', null, '30202', 'Membuat KUB', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('342', null, '2', null, '30203', 'Mengesahkan LKBM', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('343', null, '2', null, '30204', 'Penumpukan Barang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('344', null, '2', null, '30205', 'Penumpukan Peti Kemas Konvensional', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('345', null, '2', null, '30207', 'PENGAWASAN B/M KALIMAS', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('346', null, '2', null, '30208', 'PAKET DERMAGA KALIMAS', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('347', null, '2', null, '30209', 'Membuat & Mendistribusikan Bentuk 2B', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('348', null, '2', null, '30260', 'USAHA TERMINAL', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('349', null, '2', null, '30261', 'Pelayanan Stevedoring', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('350', null, '2', null, '30262', 'Pelayanan Cargodoring', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('351', null, '2', null, '30264', 'Pelayanan Delivery Charges', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('352', null, '2', null, '30291', 'PELAYANAN DERMAGA (TON)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('353', null, '2', null, '30292', 'PELAYANAN DERMAGA (M3)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('354', null, '2', null, '30293', 'PELAYANAN DERMAGA (EKOR)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('355', null, '2', null, '30294', 'PELAYANAN PENUMPUKAN (TON)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('356', null, '2', null, '30295', 'PELAYANAN PENUMPUKAN (M3)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('357', null, '2', null, '30301', 'MONITORING PROPERTI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('358', null, '2', null, '30302', 'Monitoring Docking Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('359', null, '2', null, '30303', 'Pemeriksaan Bahan Berbahaya', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('360', null, '2', null, '30304', 'PEMADAMAN KEBAKARAN', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('361', null, '2', null, '30305', 'Pengawasan Peralatan PMK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('362', null, '2', null, '30306', 'Memasang Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('363', null, '2', null, '30307', 'Pencatatan Pemakaian Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('364', null, '2', null, '30308', 'PELAYANAN AIR TRUK TANGKI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('365', null, '2', null, '30309', 'PELAYANAN AIR SAMBUNGAN TETAP', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('366', null, '2', null, '30310', 'Memasang Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('367', null, '2', null, '30311', 'OPERASI PENGUSAHAAN LISTRIK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('368', null, '2', null, '30401', 'PENJUALAN PAS PENUMPANG', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('369', null, '2', null, '30402', 'Penjualan Pas Penumpang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('370', null, '2', null, '30403', 'RETRIBUSI ALAT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('371', null, '2', null, '30404', 'RETRIBUSI PARKIR', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('372', null, '2', null, '30501', 'PELAYANAN TERMINAL RO-RO', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('373', null, '2', null, '30502', 'PELAYANAN TERMINAL PENUMPANG', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('374', null, '2', null, '30601', 'PENYEWAAN & PENGUSAHAAN ALAT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('375', null, '2', null, '40101', 'Perencanaan Teknik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('376', null, '2', null, '40102', 'Menyusun RAB & RKS', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('377', null, '2', null, '40103', 'Proses Pelelangan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('378', null, '2', null, '40104', 'Pengawasan Pekerjaan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('379', null, '2', null, '40201', 'Pemeliharaan & Kebersihan Terminal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('380', null, '2', null, '40202', 'Memelihara Armada (Preventif)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('381', null, '2', null, '40203', 'Memelihara Instalasi Listrik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('382', null, '2', null, '40204', 'Memelihara Pompa Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('383', null, '2', null, '40205', 'Memelihara Instalasi Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('384', null, '2', null, '40206', 'Memelihara Tongkang Air & Tunda', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('385', null, '2', null, '40207', 'Memelihara Kolam Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('386', null, '2', null, '40208', 'Memelihara Fasilitas Tambatan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('387', null, '2', null, '40209', 'Memelihara Peralatan Telkom', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('388', null, '2', null, '40210', 'Memelihara Kendaraan Dinas', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('389', null, '2', null, '40211', 'Memelihara Bangunan, Jalan & Lainnya', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('390', null, '2', null, '40301', 'Perbaikan Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('391', null, '2', null, '40302', 'Perbaikan Peralatan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('392', null, '2', null, '40303', 'Perbaikan Instalasi Listrik & Air', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('393', null, '2', null, '40304', 'Perbaikan Fasilitas Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('394', null, '2', null, '40401', 'Penyajian Data & Statistik', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('395', null, '2', null, '40402', 'Pengelolaan Perangkat Keras', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('396', null, '2', null, '40403', 'Pengelolaan Perangkat Lunak', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('397', null, '2', null, '40500', 'Manajemen Mutu', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('398', null, '2', null, '40600', 'Penanganan Keamanan & Ketertiban', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('399', null, '2', null, '50101', 'Administrasi Nota Pandu', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('400', null, '2', null, '50102', 'Administrasi Nota Tunda', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('401', null, '2', null, '50103', 'Administrasi Nota Labuh/Tambat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('402', null, '2', null, '50104', 'Administrasi Nota Air Kapal', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('403', null, '2', null, '50105', 'Administrasi Nota Barang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('404', null, '2', null, '50106', 'Administrasi Nota Dermaga Kalimas', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('405', null, '2', null, '50107', 'Administrasi Nota Properti', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('406', null, '2', null, '50108', 'Administrasi Pas Pelabuhan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('407', null, '2', null, '50109', 'Administrasi Pas Penumpang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('408', null, '2', null, '50110', 'Administrasi Retribusi', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('409', null, '2', null, '50200', 'Administrasi Pendapatan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('410', null, '2', null, '50201', 'Menerbitkan & Mendistribusikan Nota (A4)', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('411', null, '2', null, '50202', 'Mengadministrasikan Piutang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('412', null, '2', null, '50203', 'Menagih Piutang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('413', null, '2', null, '50301', 'Pengelolaan Kas', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('414', null, '2', null, '50302', 'Pengelolaan Barang Gudang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('415', null, '2', null, '50303', 'Pembukuan Transaksi', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('416', null, '2', null, '50401', 'Pengembangan Pegawai', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('417', null, '2', null, '50402', 'Administrasi Personalia dan Kesra', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('418', null, '2', null, '50403', 'Kesehatan & K3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('419', null, '2', null, '50601', 'Administrasi Umum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('420', null, '2', null, '50602', 'Mengelola Perlengkapan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('421', null, '2', null, '50603', 'Aktivitas Rumah Tangga', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('422', null, '2', null, '50604', 'Penanganan Hukum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('423', '0', '2', null, '10100', 'KEHUMASAN & PROMOSI', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('424', '423', '2', null, '10201', 'Menerima PPKB dan Kelengkapannya', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '11', '2015', null);
INSERT INTO `tbl_acm_copy` VALUES ('425', '423', '2', null, '10204', 'Rencana Penetapan Pel. Kapal & Barang', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tbl_acm_copy` VALUES ('426', '423', '2', null, '30102', 'MEMANDU KAPAL MASUK', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tbl_acm_total_cost`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acm_total_cost`;
CREATE TABLE `tbl_acm_total_cost` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_acm_id` bigint(20) DEFAULT NULL,
  `bulan` smallint(6) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `total_cost` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_acm_tot_id` (`id`) USING BTREE,
  KEY `idx_acm_tot` (`tbl_acm_id`,`bulan`,`tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_acm_total_cost
-- ----------------------------
INSERT INTO `tbl_acm_total_cost` VALUES ('1', '1092', '1', '2016', '1675000');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_act_to_act
-- ----------------------------
INSERT INTO `tbl_act_to_act` VALUES ('1', '139', '145', null, null, null, null, null, null, '6', '2015');
INSERT INTO `tbl_act_to_act` VALUES ('6', '145', '143', null, '50', 'Fixed', 'Fixed', '2015-06-08 06:35:57', 'Goyz', '6', '2015');
INSERT INTO `tbl_act_to_act` VALUES ('7', '144', '117', null, null, null, null, null, null, '6', '2015');

-- ----------------------------
-- Table structure for `tbl_are`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_are`;
CREATE TABLE `tbl_are` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_model_id` bigint(20) DEFAULT NULL,
  `tbl_loc_id` bigint(20) DEFAULT NULL,
  `tbl_acm_id` bigint(20) DEFAULT NULL,
  `tbl_emp_id` bigint(20) DEFAULT NULL,
  `tbl_exp_id` bigint(20) DEFAULT NULL,
  `tbl_assets_id` bigint(20) DEFAULT NULL,
  `tbl_acm_child_id` bigint(20) DEFAULT NULL,
  `costcenter` varchar(100) DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `cost_nbr` int(11) DEFAULT NULL,
  `cost` decimal(10,0) DEFAULT NULL,
  `rd_qty` float DEFAULT NULL,
  `tbl_rdm_id` bigint(20) DEFAULT NULL,
  `budget_type` varchar(100) DEFAULT NULL,
  `cost_type` varchar(100) DEFAULT NULL,
  `coefficient` int(11) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `total_cost` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_are_id` (`id`),
  KEY `idx_are` (`tbl_loc_id`,`tbl_acm_id`,`tbl_emp_id`,`tbl_exp_id`,`tbl_assets_id`,`tbl_acm_child_id`,`tbl_rdm_id`,`bulan`,`tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_are
-- ----------------------------
INSERT INTO `tbl_are` VALUES ('1', null, null, '1093', '192', null, null, null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:29:28', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('2', null, null, '1094', '192', null, null, null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:29:28', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('3', null, null, '1091', '192', null, null, null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:29:28', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('4', null, null, '1093', null, '27', null, null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:30:07', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('5', null, null, '1094', null, '27', null, null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:30:07', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('6', null, null, '1091', null, null, '13', null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:31:35', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('7', null, null, '1112', '275', null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 03:36:04', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('8', null, null, '1116', '275', null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 03:36:04', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('9', null, null, '1115', '275', null, null, null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 03:36:04', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('10', null, null, '1112', null, '74', null, null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 03:36:35', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('11', null, null, '1116', null, '74', null, null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 03:36:35', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('12', null, null, '1093', null, '24', null, null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:45:45', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('13', null, null, '1094', null, '24', null, null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:45:45', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('17', null, null, '1093', null, '25', null, null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:52:14', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('18', null, null, '1088', null, '25', null, null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:52:14', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('19', null, null, '1094', null, null, '11', null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:53:10', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('20', null, null, '1090', null, null, '11', null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:53:10', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('21', null, null, '1088', null, null, '12', null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:53:22', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('22', null, null, '1092', null, null, '12', null, null, null, null, null, null, '0', null, null, null, '1', '2016', '2016-02-15 03:53:22', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('23', null, null, '1112', null, '71', null, null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 03:53:41', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('24', null, null, '1116', null, '71', null, null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 03:53:41', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('25', null, null, '1112', null, '72', null, null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 03:53:41', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('26', null, null, '1113', null, '72', null, null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 03:53:41', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('27', null, null, '1115', null, null, '19', null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 04:31:42', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('28', null, null, '1116', null, null, '17', null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 04:31:42', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('29', null, null, '1114', null, null, '17', null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 04:31:42', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('30', null, null, '1113', null, null, '18', null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 04:31:42', 'Goyz Crotz', null);
INSERT INTO `tbl_are` VALUES ('31', null, null, '1111', null, null, '18', null, null, null, null, null, null, '0', null, null, null, '2', '2016', '2016-02-15 04:31:42', 'Goyz Crotz', null);

-- ----------------------------
-- Table structure for `tbl_assets`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_assets`;
CREATE TABLE `tbl_assets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_model_id` bigint(20) DEFAULT NULL,
  `tbl_loc_id` bigint(20) DEFAULT NULL,
  `assets_id` varchar(100) DEFAULT NULL,
  `assets_name` varchar(255) DEFAULT NULL,
  `assets_description` text,
  `cost` float DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `budget_1` float DEFAULT NULL,
  `budget_2` float DEFAULT NULL,
  `tbl_rdm_id` bigint(20) DEFAULT NULL,
  `rd_tot_qty` float DEFAULT NULL,
  `cost_type` varchar(50) DEFAULT NULL,
  `cost_bucket` varchar(50) DEFAULT NULL,
  `bulan` smallint(6) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_id` (`id`),
  KEY `idx_asset` (`tbl_model_id`,`tbl_loc_id`,`assets_id`,`tbl_rdm_id`,`bulan`,`tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_assets
-- ----------------------------
INSERT INTO `tbl_assets` VALUES ('1', '2', '2', '112233', 'Kapal Pandu', 'Kapal Tjoi', '0', '2000000000', '8990000000', null, '1', '2', null, null, '11', '2015', null, null);
INSERT INTO `tbl_assets` VALUES ('2', '2', '2', '222444', 'Kapal Tug', 'Tug Tug', null, '500000000', null, null, '1', '3', null, null, '11', '2015', null, null);
INSERT INTO `tbl_assets` VALUES ('3', '2', '2', '55566', 'Kapal Speed', 'Speedy Gonjales', null, '1500000000', null, null, null, null, null, null, '11', '2015', null, null);
INSERT INTO `tbl_assets` VALUES ('4', '3', '0', '111222333', 'Laptop Toshiba', 'Laptop', null, '5600000', '5600000', '0', null, null, 'fixed', 'unit', '11', '2015', 'Goyz Crotz', '2015-11-22 19:03:36');
INSERT INTO `tbl_assets` VALUES ('5', '3', '0', '333335555', 'Laptop Dell', 'Laptop', null, '7000000', '7000000', '0', null, null, 'variable', 'batch', '11', '2015', 'Goyz Crotz', '2015-11-22 19:03:36');
INSERT INTO `tbl_assets` VALUES ('6', '3', '0', '55556666', 'PC Dell', 'Personal Comp.', null, '3000000', '3000000', '0', null, null, 'step', 'product', '11', '2015', 'Goyz Crotz', '2015-11-22 19:03:36');
INSERT INTO `tbl_assets` VALUES ('7', '3', '0', '77788888', 'Printer', 'Alat Cetak', null, '200000', '200000', '0', null, null, 'variable', 'facility', '11', '2015', 'Goyz Crotz', '2015-11-22 19:03:36');
INSERT INTO `tbl_assets` VALUES ('8', '3', '0', '666677777', 'Scanner', 'Scanning', null, '700000', '700000', '0', null, null, 'fixed', 'product', '11', '2015', 'Goyz Crotz', '2015-11-22 19:03:36');
INSERT INTO `tbl_assets` VALUES ('10', '1', '17', '1726728', 'Laptop Toshiba', 'Laptop Merk Toshiba', '0', '5000000', '0', null, '7', '5', 'fixed', 'unit', '11', '2015', null, null);

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_bpd_id` (`id`),
  KEY `idx_bpd` (`tbl_bpm_id`,`tbl_acm_id`)
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_bpm_id` (`id`)
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_cdm_id` (`id`),
  KEY `idx_cdm` (`tbl_model_id`,`bulan`,`tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_cdm
-- ----------------------------
INSERT INTO `tbl_cdm` VALUES ('1', '2', '10100', 'Jumlah Marketing Media', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('2', '2', '30101', 'GT Pemanduan Masuk', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('3', '2', '30102', 'GT Pemanduan Pindah', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('4', '2', '30103', 'GT Pemanduan Keluar', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('5', '2', '10200', 'Jumlah PPKB', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('6', '2', '10907', 'Jumlah PPKB Kalimas', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('7', '2', '20100', 'Jumlah Cost Centre', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('8', '2', '30104', 'Total GT Pemanduan', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('9', '2', '30105', 'Jumlah PPKB Pandu Masuk', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('10', '2', '30106', 'Jumlah PPKB Pandu Pindah', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('11', '2', '30107', 'Jumlah PPKB Pandu Keluar', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('12', '2', '30108', 'Headcount Pandu', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('13', '2', '10300', 'Jumlah Keluhan', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('14', '2', '10100', 'Jumlah Marketing Media', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('15', '2', '30101', 'GT Pemanduan Masuk', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('16', '2', '30102', 'GT Pemanduan Pindah', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('17', '2', '30103', 'GT Pemanduan Keluar', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('18', '2', '10200', 'Jumlah PPKB', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('19', '2', '10907', 'Jumlah PPKB Kalimas', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('20', '2', '20100', 'Jumlah Cost Centre', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('21', '2', '30104', 'Total GT Pemanduan', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('22', '2', '30105', 'Jumlah PPKB Pandu Masuk', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('23', '2', '30106', 'Jumlah PPKB Pandu Pindah', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('24', '2', '30107', 'Jumlah PPKB Pandu Keluar', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('25', '2', '30108', 'Headcount Pandu', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');
INSERT INTO `tbl_cdm` VALUES ('26', '2', '10300', 'Jumlah Keluhan', '3', '7', '6', '6', '1', '0', '1', '1', '0', '11', '2015');

-- ----------------------------
-- Table structure for `tbl_cust`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cust`;
CREATE TABLE `tbl_cust` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_model_id` bigint(20) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_id` varchar(100) DEFAULT NULL,
  `revenue` float DEFAULT NULL,
  `bulan` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_cust
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_efx`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_efx`;
CREATE TABLE `tbl_efx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbl_model_id` int(11) DEFAULT NULL,
  `tbl_exp_id` int(11) DEFAULT NULL,
  `tbl_emp_id` int(11) DEFAULT NULL,
  `tbl_assets_id` int(11) DEFAULT NULL,
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
  `bulan` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_efx_id` (`id`),
  KEY `idx_efx` (`tbl_exp_id`,`tbl_emp_id`,`tbl_assets_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_efx
-- ----------------------------
INSERT INTO `tbl_efx` VALUES ('1', null, '24', '192', null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '2016', 'Goyz Crotz', '2016-02-15 03:45:03');
INSERT INTO `tbl_efx` VALUES ('2', null, '25', '192', null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '2016', 'Goyz Crotz', '2016-02-15 03:45:03');
INSERT INTO `tbl_efx` VALUES ('3', null, '24', '193', null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '2016', 'Goyz Crotz', '2016-02-15 03:47:20');
INSERT INTO `tbl_efx` VALUES ('7', null, '24', null, '11', null, null, null, null, null, null, null, null, null, null, null, null, '1', '2016', 'Goyz Crotz', '2016-02-15 03:51:57');
INSERT INTO `tbl_efx` VALUES ('8', null, '24', null, '12', null, null, null, null, null, null, null, null, null, null, null, null, '1', '2016', 'Goyz Crotz', '2016-02-15 03:51:57');
INSERT INTO `tbl_efx` VALUES ('9', null, '25', '196', null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '2016', 'Goyz Crotz', '2016-02-15 03:52:22');
INSERT INTO `tbl_efx` VALUES ('10', null, '25', null, '14', null, null, null, null, null, null, null, null, null, null, null, null, '1', '2016', 'Goyz Crotz', '2016-02-15 03:52:31');
INSERT INTO `tbl_efx` VALUES ('13', null, '71', '275', null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2016', 'Goyz Crotz', '2016-02-15 04:20:37');
INSERT INTO `tbl_efx` VALUES ('14', null, '71', '276', null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2016', 'Goyz Crotz', '2016-02-15 04:20:37');
INSERT INTO `tbl_efx` VALUES ('15', null, '72', '275', null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2016', 'Goyz Crotz', '2016-02-15 04:20:38');
INSERT INTO `tbl_efx` VALUES ('16', null, '72', '279', null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2016', 'Goyz Crotz', '2016-02-15 04:20:38');
INSERT INTO `tbl_efx` VALUES ('17', null, '71', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2016', 'Goyz Crotz', '2016-02-15 04:25:55');
INSERT INTO `tbl_efx` VALUES ('18', null, '72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2016', 'Goyz Crotz', '2016-02-15 04:25:55');
INSERT INTO `tbl_efx` VALUES ('19', null, '71', null, '17', null, null, null, null, null, null, null, null, null, null, null, null, '2', '2016', 'Goyz Crotz', '2016-02-15 04:27:04');
INSERT INTO `tbl_efx` VALUES ('20', null, '71', null, '18', null, null, null, null, null, null, null, null, null, null, null, null, '2', '2016', 'Goyz Crotz', '2016-02-15 04:27:04');
INSERT INTO `tbl_efx` VALUES ('21', null, '72', null, '20', null, null, null, null, null, null, null, null, null, null, null, null, '2', '2016', 'Goyz Crotz', '2016-02-15 04:27:04');
INSERT INTO `tbl_efx` VALUES ('22', null, '26', null, '13', null, null, null, null, null, null, null, null, null, null, null, null, '1', '2016', 'Goyz Crotz', '2016-02-15 04:30:00');
INSERT INTO `tbl_efx` VALUES ('23', null, '73', null, '19', null, null, null, null, null, null, null, null, null, null, null, null, '2', '2016', 'Goyz Crotz', '2016-02-15 04:31:42');

-- ----------------------------
-- Table structure for `tbl_emp`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_model_id` bigint(20) DEFAULT NULL,
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
  `cost_type` varchar(50) DEFAULT NULL,
  `cost_bucket` varchar(50) DEFAULT NULL,
  `bugettype` varchar(10) DEFAULT NULL,
  `cost_nbr` float DEFAULT NULL,
  `bulan` smallint(6) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_emp_id` (`id`),
  KEY `idx_emp` (`tbl_model_id`,`tbl_loc_id`,`employee_id`,`tbl_rdm_id`,`bulan`,`tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------
INSERT INTO `tbl_emp` VALUES ('1', '2', '3', '152092046', '', '', 'FERDY ANDREAS PIELOO', '', '6767600', '1000000', '909000', '8676600', '3', 'Pandu Madya I', '6000000', '0', '1', '1', '1', '22', 'fixed', 'batch', '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('2', '2', '3', '154092055', '', '', 'LELAN ANTONIUS', '', '7121720', '0', '0', '7121720', '3', 'Pandu Utama', '7121720', '0', '1', '1', '2', '25', 'variable', '0', '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('3', '2', '261', '167111871', '', '', 'HASNA RIEF KAHARIYAH', '', '5599530', '0', '0', '5599530', '3', 'Asisten Manajer Hukum dan', '5599530', '0', '1', '1', '2', '0', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('4', '2', '33', '520101206', '', '', 'RISWANTO', '', '4593630', '0', '0', '4593630', '3', 'Staf Pelaksana Senior I', '4593630', '0', '1', '1', '4', '66', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('5', '2', '258', '520101215', '', '', 'SAROSA', '', '5242670', '0', '0', '5242670', '3', 'Staf Muda IV', '5242670', '0', '1', '1', '7', '22', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('6', '2', '55', '520103095', '', '', 'SARMIN', '', '4767800', '0', '0', '4767800', '3', 'Staf Pelaksana Senior I', '4767800', '0', '1', '1', '10', '76', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('7', '2', '10', '520201223', '', '', 'MUSLICH', '', '5069440', '0', '0', '5069440', '3', 'Staf Muda IV', '5069440', '0', '1', '1', '10', '0', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('8', '2', '183', '520201227', '', '', 'SUTOPO', '', '5187120', '0', '0', '5187120', '3', 'Staf Muda III', '5187120', '0', '1', '1', '5', '56', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('9', '2', '244', '520201228', '', '', 'SULISTIASTUTI', '', '5082070', '0', '0', '5082070', '3', 'Staf Muda IV', '5082070', '0', '1', '1', '4', '90', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('10', '2', '258', '520301232', '', '', 'MARTINI', '', '5394540', '0', '0', '5394540', '3', 'Staf Muda III', '5394540', '0', '1', '1', '5', '226', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('11', '2', '183', '520301242', '', '', 'SUPENI, SE.', '', '4884330', '0', '0', '4884330', '3', 'Staf Muda IV', '4884330', '0', '1', '1', '5', '67', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('12', '2', '3', '152092046', '', '', 'FERDY ANDREAS PIELOO', '', '67676800', '0', '0', '67676800', '3', 'Pandu Madya I', '5891130', '0', '1', '1', '1', '0', null, null, '1', '4', '10', '2015');
INSERT INTO `tbl_emp` VALUES ('13', '2', '3', '154092055', '', '', 'LELAN ANTONIUS', '', '7121720', '0', '0', '7121720', '3', 'Pandu Utama', '7121720', '0', '1', '1', '2', '0', null, null, '1', '4', '10', '2015');
INSERT INTO `tbl_emp` VALUES ('14', '2', '261', '167111871', '', '', 'HASNA RIEF KAHARIYAH', '', '5599530', '0', '0', '5599530', '3', 'Asisten Manajer Hukum dan', '5599530', '0', '1', '1', '2', '0', null, null, '1', '4', '10', '2015');
INSERT INTO `tbl_emp` VALUES ('15', '2', '33', '520101206', '', '', 'RISWANTO', '', '4593630', '0', '0', '4593630', '3', 'Staf Pelaksana Senior I', '4593630', '0', '1', '1', '4', '0', null, null, '1', '4', '10', '2015');
INSERT INTO `tbl_emp` VALUES ('16', '2', '258', '520101215', '', '', 'SAROSA', '', '5242670', '0', '0', '5242670', '3', 'Staf Muda IV', '5242670', '0', '1', '1', '7', '0', null, null, '1', '4', '10', '2015');
INSERT INTO `tbl_emp` VALUES ('17', '2', '55', '520103095', '', '', 'SARMIN', '', '4767800', '0', '0', '4767800', '3', 'Staf Pelaksana Senior I', '4767800', '0', '1', '1', '10', '0', null, null, '1', '4', '10', '2015');
INSERT INTO `tbl_emp` VALUES ('18', '2', '10', '520201223', '', '', 'MUSLICH', '', '5069440', '0', '0', '5069440', '3', 'Staf Muda IV', '5069440', '0', '1', '1', '10', '0', null, null, '1', '4', '10', '2015');
INSERT INTO `tbl_emp` VALUES ('19', '2', '183', '520201227', '', '', 'SUTOPO', '', '5187120', '0', '0', '5187120', '3', 'Staf Muda III', '5187120', '0', '1', '1', '5', '0', null, null, '1', '4', '10', '2015');
INSERT INTO `tbl_emp` VALUES ('20', '2', '244', '520201228', '', '', 'SULISTIASTUTI', '', '5082070', '0', '0', '5082070', '3', 'Staf Muda IV', '5082070', '0', '1', '1', '4', '0', null, null, '1', '4', '10', '2015');
INSERT INTO `tbl_emp` VALUES ('21', '2', '258', '520301232', '', '', 'MARTINI', '', '5394540', '0', '0', '5394540', '3', 'Staf Muda III', '5394540', '0', '1', '1', '5', '0', null, null, '1', '4', '10', '2015');
INSERT INTO `tbl_emp` VALUES ('22', '2', '183', '520301242', '', '', 'SUPENI, SE.', '', '4884330', '0', '0', '4884330', '3', 'Staf Muda IV', '4884330', '0', '1', '1', '5', '0', null, null, '1', '4', '10', '2015');
INSERT INTO `tbl_emp` VALUES ('121', '1', '2', '540201690', '', '', 'KUDORI', '', '58794100', '0', '0', '58794100', '', '', '0', '0', '1', '1', null, '0', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('122', '1', '3', '590902566', '', '', 'TRISNO DUMADI, S.Sos', '', '50475700', '0', '0', '50475700', '', '', '0', '0', '1', '1', null, '0', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('123', '1', '4', '152092046', '', '', 'FERDY ANDREAS PIELOO', '', '55375100', '0', '0', '55375100', '', '', '0', '0', '1', '1', null, '0', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('124', '1', '5', '154092055', '', '', 'LELAN ANTONIUS', '', '92973300', '0', '0', '92973300', '', '', '0', '0', '1', '1', null, '0', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('125', '1', '6', '520303404', '', '', 'GASPAR ABISLONG', '', '17194000', '0', '0', '17194000', '', '', '0', '0', '1', '1', null, '0', null, null, '1', '4', '11', '2015');
INSERT INTO `tbl_emp` VALUES ('126', '1', '17', '178989797', null, null, 'Tim Developer Sistem', null, '78900000', '700000', '0', '79600000', null, 'Programmer PHP', '0', null, '3', '1', '7', '5', null, null, null, null, '11', '2015');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_emp_act
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_exp`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_exp`;
CREATE TABLE `tbl_exp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbl_model_id` bigint(20) DEFAULT NULL,
  `tbl_loc_id` int(11) DEFAULT NULL,
  `account` varchar(10) DEFAULT NULL,
  `descript` varchar(500) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `budget_1` float DEFAULT NULL,
  `budget_2` float DEFAULT NULL,
  `exp_level` int(11) DEFAULT NULL,
  `tbl_rdm_id` int(11) DEFAULT NULL,
  `rd_tot_qty` float DEFAULT NULL,
  `cost_type` varchar(50) DEFAULT NULL,
  `cost_bucket` varchar(50) DEFAULT NULL,
  `budgettype` varchar(10) DEFAULT NULL,
  `budgetchg` varchar(100) DEFAULT NULL,
  `bulan` smallint(6) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_exp_id` (`id`),
  KEY `idx_exp` (`tbl_model_id`,`tbl_loc_id`,`tbl_rdm_id`,`bulan`,`tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_exp
-- ----------------------------
INSERT INTO `tbl_exp` VALUES ('1', '2', '2', '801.01.00', 'Biaya Penghasilan Pegawai', '52413600', '73217600', '0', '1', '1', '668', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('2', '2', '2', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '414856', '4011210', '0', '1', '2', '789', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('3', '2', '2', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '68400', '4011210', '0', '1', '3', '889', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('4', '2', '2', '801.02.00', 'Biaya Tunjangan PPh Ps.21', '722166', '4011210', '0', '1', '10', '67', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('5', '2', '2', '801.05.04', 'Tunjangan Prestasi', '3850000', '45677300', '0', '1', '9', '889', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('6', '2', '2', '801.05.05', 'Tunjangan Presensi', '684000', '3982070', '0', '1', '8', '226', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('7', '2', '2', '803.01.00', 'Biaya Pemeliharaan Bangn.Faspel.', '44400000', '0', '0', '1', '11', '78', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('8', '2', '2', '803.01.00', 'Biaya Pemeliharaan Bangn.Faspel.', '1723410000', '0', '0', '1', '7', '88', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('9', '2', '2', '804.19.00', 'A.B Pengrk. Plyr.Yg.Ditgh.', '41585000', '5783710000', '0', '1', '8', '0', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('10', '2', '2', '804.20.00', 'A.B Konsultan Unk.Litbang Yg.Dtgh', '3226650', '28765100', '0', '1', '8', '66', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('11', '2', '2', '804.99.00', 'A.B Yang Ditangguhkan Lain-lain', '0', '0', '0', '1', '7', '7', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('12', '2', '195', '807.06.00', 'Biaya Rumah Tangga Masa Kini', '1450800', '67017600', '0', '1', null, '0', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('13', '2', '252', '807.06.00', 'Biaya Rumah Tangga', '54000', '27475900', '0', '1', null, '0', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('14', '2', '2', '801.01.00', 'Biaya Penghasilan Pegawai', '5104820', '73217600', '0', '1', '1', '0', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('15', '2', '6', '801.01.00', 'Biaya Penghasilan Pegawai', '5164000', '82607500', '0', '1', '1', '0', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('16', '2', '172', '801.01.00', 'Biaya Penghasilan Pegawai', '26246400', '453551000', '0', '1', '1', '0', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('17', '2', '171', '801.01.00', 'Biaya Penghasilan Pegawai', '33974200', '501775000', '0', '1', '1', '0', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('18', '2', '163', '801.01.00', 'Biaya Penghasilan Pegawai', '5887180', '54492900', '0', '1', '1', '0', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('19', '2', '79', '801.01.00', 'Biaya Penghasilan Pegawai', '73206800', '1091170000', '0', '1', '1', '0', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('20', '2', '55', '801.01.00', 'Biaya Penghasilan Pegawai', '7700150', '146729000', '0', '1', '1', '0', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('21', '2', '33', '801.01.00', 'Biaya Penghasilan Pegawai', '15678600', '327489000', '0', '1', '1', '0', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('22', '2', '11', '801.01.00', 'Biaya Penghasilan Pegawai', '9460130', '148280000', '0', '1', '1', '0', null, null, '', '', '11', '2015');
INSERT INTO `tbl_exp` VALUES ('23', '1', '12', '803.00.00', 'Biaya Perawatan Software', '6000000', '5000000', null, '1', '11', '2', null, null, null, null, '11', '2015');

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
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_loc_id` (`id`),
  KEY `idx_loc` (`tbl_model_id`,`bulan`,`tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_loc
-- ----------------------------
INSERT INTO `tbl_loc` VALUES ('1', '2', 'PRK', '801.00.00', 'SEGMEN PELY. KAPAL', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('2', '2', 'PRK', '801.01.00', 'Labuh', '6', '2015', '1');
INSERT INTO `tbl_loc` VALUES ('3', '2', 'PRK', '801.02.00', 'Pemanduan', '6', '2015', '1');
INSERT INTO `tbl_loc` VALUES ('4', '2', 'PRK', '801.03.00', 'Penundaan', '6', '2015', '1');
INSERT INTO `tbl_loc` VALUES ('5', '2', 'PRK', '801.04.00', 'Penambatan', '6', '2015', '1');
INSERT INTO `tbl_loc` VALUES ('6', '2', 'PRK', '801.05.00', 'Air Kapal', '6', '2015', '1');
INSERT INTO `tbl_loc` VALUES ('7', '2', 'PRK', '801.99.00', 'Pel. Kapal Lainnya', '6', '2015', '1');
INSERT INTO `tbl_loc` VALUES ('8', '2', 'PRK', '802.00.00', 'SEGMEN PELY. BARANG', '6', '2015', '1');
INSERT INTO `tbl_loc` VALUES ('9', '2', 'PRK', '802.01.00', 'Dermaga', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('10', '2', 'PRK', '802.02.00', 'Gudang', '6', '2015', '9');
INSERT INTO `tbl_loc` VALUES ('11', '2', 'PRK', '802.03.00', 'Lapangan Penumpukan', '6', '2015', '9');
INSERT INTO `tbl_loc` VALUES ('12', '2', 'PRK', '803.00.00', 'SEGMEN PENGUSAHAAN ALAT-ALAT', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('13', '2', 'PRK', '803.01.00', 'Kran Darat', '6', '2015', '12');
INSERT INTO `tbl_loc` VALUES ('14', '2', 'PRK', '803.02.00', 'Kran Apung', '6', '2015', '12');
INSERT INTO `tbl_loc` VALUES ('15', '2', 'PRK', '803.03.00', 'Forklift', '6', '2015', '12');
INSERT INTO `tbl_loc` VALUES ('16', '2', 'PRK', '803.04.00', 'Head Truck', '6', '2015', '12');
INSERT INTO `tbl_loc` VALUES ('17', '2', 'PRK', '803.05.00', 'Chasis', '6', '2015', '12');
INSERT INTO `tbl_loc` VALUES ('18', '2', 'PRK', '803.06.00', 'Tongkang', '6', '2015', '12');
INSERT INTO `tbl_loc` VALUES ('19', '2', 'PRK', '803.07.00', 'BKMP', '6', '2015', '12');
INSERT INTO `tbl_loc` VALUES ('20', '2', 'PRK', '803.08.00', 'Towing Tractor', '6', '2015', '12');
INSERT INTO `tbl_loc` VALUES ('21', '2', 'PRK', '803.09.00', 'Timbangan', '6', '2015', '12');
INSERT INTO `tbl_loc` VALUES ('22', '2', 'PRK', '803.10.00', 'Pemadam Kebakaran', '6', '2015', '12');
INSERT INTO `tbl_loc` VALUES ('23', '2', 'PRK', '803.99.00', 'Pengusahaan Alat Lainnya', '6', '2015', '12');
INSERT INTO `tbl_loc` VALUES ('24', '2', 'PRK', '804.00.00', 'SEGMEN PELY. USAHA B/M', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('25', '2', 'PRK', '804.01.00', 'Per Mata Rantai', '6', '2015', '24');
INSERT INTO `tbl_loc` VALUES ('26', '2', 'PRK', '804.01.01', 'Stevedoring', '6', '2015', '25');
INSERT INTO `tbl_loc` VALUES ('27', '2', 'PRK', '804.01.02', 'Cargodoring', '6', '2015', '25');
INSERT INTO `tbl_loc` VALUES ('28', '2', 'PRK', '804.01.03', 'Overbrengen', '6', '2015', '25');
INSERT INTO `tbl_loc` VALUES ('29', '2', 'PRK', '804.01.04', 'Delivery Charges', '6', '2015', '25');
INSERT INTO `tbl_loc` VALUES ('30', '2', 'PRK', '804.02.00', 'Per Paket', '6', '2015', '24');
INSERT INTO `tbl_loc` VALUES ('31', '2', 'PRK', '804.02.01', 'Barang', '6', '2015', '30');
INSERT INTO `tbl_loc` VALUES ('32', '2', 'PRK', '804.02.02', 'Peti Kemas', '6', '2015', '30');
INSERT INTO `tbl_loc` VALUES ('33', '2', 'PRK', '804.03.00', 'Ro-Ro', '6', '2015', '24');
INSERT INTO `tbl_loc` VALUES ('34', '2', 'PRK', '804.03.01', 'Terminal B/M Kapal Ro-Ro', '6', '2015', '33');
INSERT INTO `tbl_loc` VALUES ('35', '2', 'PRK', '804.03.02', 'Kesejahteraan TKBM Kapal Ro-Ro', '6', '2015', '33');
INSERT INTO `tbl_loc` VALUES ('36', '2', 'PRK', '804.19.00', 'AMORTISASI BIAYA PENGERUKAN DAN ALUR PEL', '6', '2015', '24');
INSERT INTO `tbl_loc` VALUES ('37', '2', 'PRK', '804.25.00', 'AMORT BIAYA PEMELIHARAAN AKTIVA TETAP YG', '6', '2015', '24');
INSERT INTO `tbl_loc` VALUES ('38', '2', 'PRK', '804.99.00', 'Pengsh.Alat B/M Lainnya', '6', '2015', '24');
INSERT INTO `tbl_loc` VALUES ('39', '2', 'PRK', '804.99.02', 'Pengusahaan Kapal Roro', '6', '2015', '38');
INSERT INTO `tbl_loc` VALUES ('40', '2', 'PRK', '805.00.00', 'SEGMEN PELY. TERMINAL CURAH KERING', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('41', '2', 'PRK', '805.01.00', 'Biaya Bongkar Muat', '6', '2015', '40');
INSERT INTO `tbl_loc` VALUES ('42', '2', 'PRK', '805.02.00', 'Biaya Penyimpanan (Silo)', '6', '2015', '40');
INSERT INTO `tbl_loc` VALUES ('43', '2', 'PRK', '806.00.00', 'SEGMEN PELY. TERMINAL CURAH CAIR', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('44', '2', 'PRK', '806.01.00', 'Bongkar Muat', '6', '2015', '43');
INSERT INTO `tbl_loc` VALUES ('45', '2', 'PRK', '806.02.00', 'Penyimpanan (Tangki)', '6', '2015', '43');
INSERT INTO `tbl_loc` VALUES ('46', '2', 'PRK', '806.21.00', 'Kerjasama dengan Mitra Usaha', '6', '2015', '43');
INSERT INTO `tbl_loc` VALUES ('47', '2', 'PRK', '807.00.00', 'SEGMEN PELY. KONSOLIDASI MUATAN', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('48', '2', 'PRK', '807.01.00', 'Stuffing/Stripping', '6', '2015', '47');
INSERT INTO `tbl_loc` VALUES ('49', '2', 'PRK', '807.02.00', 'Unitasi/Paletisasi', '6', '2015', '47');
INSERT INTO `tbl_loc` VALUES ('50', '2', 'PRK', '808.00.00', 'SEGMEN PENGUSAHAAN TBAL', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('51', '2', 'PRK', '808.01.00', 'Pengusahaan Tanah', '6', '2015', '50');
INSERT INTO `tbl_loc` VALUES ('52', '2', 'PRK', '808.01.01', 'BPT Daratan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('53', '2', 'PRK', '808.01.02', 'BPT Perairan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('54', '2', 'PRK', '808.02.00', 'Biaya Pengusahaan Bangunan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('55', '2', 'PRK', '808.03.00', 'Biaya Pengusahaan Air Minum', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('56', '2', 'PRK', '808.04.00', 'Biaya Pengusahaan Listrik', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('57', '2', 'PRK', '808.06.00', 'Biaya diluar Usaha', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('58', '2', 'PRK', '809.00.00', 'SEGMEN PELSUS / DERSUS', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('59', '2', 'PRK', '809.01.00', 'Labuh', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('60', '2', 'PRK', '809.02.00', 'Pemanduan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('61', '2', 'PRK', '809.03.00', 'Penundaan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('62', '2', 'PRK', '809.04.00', 'Penambatan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('63', '2', 'PRK', '809.05.00', 'Dermaga', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('64', '2', 'PRK', '809.99.00', 'Lain-lain', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('65', '2', 'PRK', '810.00.00', 'SEGMEN KSO', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('66', '2', 'PRK', '810.01.00', 'KSO Bangunan Faspel', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('67', '2', 'PRK', '810.02.00', 'KSO Kapal', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('68', '2', 'PRK', '810.02.01', 'KSO Air Kapal', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('69', '2', 'PRK', '810.03.00', 'KSO Alat-alat Faspel', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('70', '2', 'PRK', '810.04.00', 'KSO Instalasi Faspel', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('71', '2', 'PRK', '810.04.01', 'KSO Instalasi Faspel Valas', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('72', '2', 'PRK', '810.05.00', 'KSO Tanah', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('73', '2', 'PRK', '810.06.00', 'KSO  Jalan ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('74', '2', 'PRK', '810.07.00', 'KSO Peralatan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('75', '2', 'PRK', '810.08.00', 'KSO Kendaraan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('76', '2', 'PRK', '810.09.00', 'KSO Emplasemen', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('77', '2', 'PRK', '811.00.00', 'SEGMEN RUPA-RUPA USAHA', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('78', '2', 'PRK', '811.01.00', 'Fasilitas Telepon', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('79', '2', 'PRK', '811.02.00', 'Pas Pelabuhan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('80', '2', 'PRK', '811.03.00', 'Retribusi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('81', '2', 'PRK', '811.04.00', 'Bengkel', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('82', '2', 'PRK', '811.05.00', 'Balai Pendidikan ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('83', '2', 'PRK', '811.06.00', 'Handling Fee', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('84', '2', 'PRK', '811.99.00', 'Rupa-rupa Usaha Lainnya', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('85', '2', 'PRK', '811.99.09', 'Biaya Asset TPS', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('86', '2', 'PRK', '812.00.00', 'SEGMEN PELAYANAN UTPK', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('87', '2', 'PRK', '812.01.00', 'Biaya Pelayanan Kapal', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('88', '2', 'PRK', '812.01.01', 'Biaya Penambatan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('89', '2', 'PRK', '812.01.02', 'Biaya Air Kapal', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('90', '2', 'PRK', '812.02.00', 'Biaya Pelayanan Barang', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('91', '2', 'PRK', '812.02.01', 'Biaya Dermaga', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('92', '2', 'PRK', '812.02.02', 'Biaya Penumpukan Container', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('93', '2', 'PRK', '812.02.03', 'Biaya Penumpukan Barang', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('94', '2', 'PRK', '812.03.00', 'Biaya Pengusahaan TBAL', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('95', '2', 'PRK', '812.03.02', 'Biaya Sewa Bangunan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('96', '2', 'PRK', '812.03.03', 'Biaya Pengusahaan Air Minum', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('97', '2', 'PRK', '812.03.04', 'Biaya Pengusahaan Listrik', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('98', '2', 'PRK', '812.04.00', 'Biaya Operasi Kapal', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('99', '2', 'PRK', '812.04.01', 'Biaya Bongkar Muat', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('100', '2', 'PRK', '812.04.02', 'Biaya Shifting/Stevedoring', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('101', '2', 'PRK', '812.04.03', 'Biaya Buka Tutup Palka', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('102', '2', 'PRK', '812.04.99', 'Biaya Operasi Kapal Lainnya', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('103', '2', 'PRK', '812.05.00', 'Biaya Operasi Lapangan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('104', '2', 'PRK', '812.05.01', 'Biaya Lift Off/On Extra', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('105', '2', 'PRK', '812.05.02', 'Biaya Relokasi ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('106', '2', 'PRK', '812.05.99', 'Biaya Operasi Lapangan Lainnya', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('107', '2', 'PRK', '812.06.00', 'Biaya Operasi CFS', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('108', '2', 'PRK', '812.06.01', 'Biaya Receiving/Delivery', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('109', '2', 'PRK', '812.06.02', 'Biaya Stuff./Strip./Rbh.Status', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('110', '2', 'PRK', '812.06.99', 'Biaya Operasi CFS Lainnya', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('111', '2', 'PRK', '812.07.00', 'Biaya Operasi Lainnya', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('112', '2', 'PRK', '812.07.01', 'Biaya Repair Container', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('113', '2', 'PRK', '812.07.02', 'Biaya Cleaning Container', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('114', '2', 'PRK', '812.08.00', 'Biaya Rupa -rupa Usaha', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('115', '2', 'PRK', '812.08.01', 'Biaya Pas Pelabuhan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('116', '2', 'PRK', '812.08.02', 'Biaya Retribusi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('117', '2', 'PRK', '812.08.03', 'Biaya Monitoring/Reefer Plug', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('118', '2', 'PRK', '812.08.04', 'Biaya PMK', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('119', '2', 'PRK', '812.08.05', 'Biaya Batal Muat/Alih Kapal', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('120', '2', 'PRK', '812.08.06', 'Biaya Trucking', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('121', '2', 'PRK', '812.08.99', 'Biaya Rupa-rupa Lainnya', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('122', '2', 'PRK', '825.00.00', 'BIAYA RUMAH SAKIT PELABUHAN', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('123', '2', 'PRK', '825.01.00', 'Biaya Usaha Pelayanan Medis', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('124', '2', 'PRK', '825.01.01', 'Biaya Klinik Umum', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('125', '2', 'PRK', '825.01.02', 'Biaya Klinik UGD', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('126', '2', 'PRK', '825.01.03', 'Biaya Klinik BKIA', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('127', '2', 'PRK', '825.01.04', 'Biaya Klinik Ambulance/Krt.Jenasah', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('128', '2', 'PRK', '825.01.05', 'Biaya Klinik Luar', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('129', '2', 'PRK', '825.01.06', 'Biaya Klinik Check Up', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('130', '2', 'PRK', '825.01.07', 'Biaya Klinik Gizi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('131', '2', 'PRK', '825.01.08', 'Biaya Klinik Anak', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('132', '2', 'PRK', '825.01.09', 'Biaya Klinik Gigi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('133', '2', 'PRK', '825.01.10', 'Biaya Klinik Jantung', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('134', '2', 'PRK', '825.01.11', 'Biaya Klinik Kandungan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('135', '2', 'PRK', '825.01.12', 'Biaya Klinik Mata', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('136', '2', 'PRK', '825.01.13', 'Biaya Klinik THT', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('137', '2', 'PRK', '825.01.14', 'Biaya Klinik Kulit/Kelamin', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('138', '2', 'PRK', '825.01.15', 'Biaya Specialis Paru', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('139', '2', 'PRK', '825.01.16', 'Biaya Specialis Bedah', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('140', '2', 'PRK', '825.01.17', 'Biaya Specialis Syaraf', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('141', '2', 'PRK', '825.01.18', 'Biaya Specialis Jiwa', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('142', '2', 'PRK', '825.01.19', 'Biaya Specialis Anak', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('143', '2', 'PRK', '825.01.20', 'Biaya Specialis Penyakit Dalam', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('144', '2', 'PRK', '825.01.21', 'Biaya Specialis Psikologi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('145', '2', 'PRK', '825.01.22', 'Biaya Specialis Alergi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('146', '2', 'PRK', '825.01.23', 'Biaya Treat mill', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('147', '2', 'PRK', '825.01.24', 'Biaya Specialis Rehab Medik', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('148', '2', 'PRK', '825.02.00', 'Biaya Usaha Perawatan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('149', '2', 'PRK', '825.02.01', 'Biaya Ruang Rawat Tinggal I', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('150', '2', 'PRK', '825.02.02', 'Biaya Ruang Rawat Tinggal II', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('151', '2', 'PRK', '825.02.03', 'Biaya Ruang Rawat OK', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('152', '2', 'PRK', '825.03.00', 'Biaya Penunjang Medis', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('153', '2', 'PRK', '825.03.01', 'Biaya Laboratorium', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('154', '2', 'PRK', '825.03.02', 'Biaya Radiologi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('155', '2', 'PRK', '825.03.03', 'Biaya Ultrasonografi/USG', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('156', '2', 'PRK', '825.03.04', 'Biaya Instalasi Farmasi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('157', '2', 'PRK', '825.04.00', 'Biaya Rupa-rupa Usaha', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('158', '2', 'PRK', '825.04.01', 'Biaya Pelayanan Kesht.Sekolah', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('159', '2', 'PRK', '825.04.02', 'Biaya Cuci Pakaian', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('160', '2', 'PRK', '825.04.03', 'Biaya Parkir', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('161', '2', 'PRK', '825.04.04', 'Biaya Sewa Bangunan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('162', '2', 'PRK', '850.00.00', 'Biaya OTL Div/Dinas Terminal', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('163', '2', 'PRK', '850.01.00', 'Biaya Kadiv/Kadin Jasa/usaha', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('164', '2', 'PRK', '850.01.01', 'Biaya ManajerTerminal Jamrud', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('165', '2', 'PRK', '850.01.02', 'Biaya ManajerTerminal Mirah,Berlian & Ni', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('166', '2', 'PRK', '850.01.03', 'Biaya Manajer Terminal Kalimas', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('167', '2', 'PRK', '850.02.00', 'Biaya Kadin Kawasan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('168', '2', 'PRK', '850.03.00', 'Biaya Din.Aneka Ush.Um.', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('169', '2', 'PRK', '850.04.00', 'Biaya Din.Perenc.Operasi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('170', '2', 'PRK', '850.05.00', 'Biaya Dinas Pangkalan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('171', '2', 'PRK', '850.05.01', 'Dinas Terminal Jamrud', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('172', '2', 'PRK', '850.05.02', 'Dinas Terminal Mirah, Berlian & Nilam', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('173', '2', 'PRK', '850.05.03', 'Dinas Terminal Kalimas', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('174', '2', 'PRK', '850.06.00', 'Biaya Din.Pengush.Air Tehnik', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('175', '2', 'PRK', '850.07.00', 'Biaya Din.Bina Pelanggan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('176', '2', 'PRK', '850.50.00', null, '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('177', '2', 'PRK', '850.52.00', 'Dinas Pemeliharaan dan Admin', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('178', '2', 'PRK', '850.57.00', null, '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('179', '2', 'PRK', '851.00.00', 'BIAYA OTL DIV/DIN PELAYANAN KAPAL', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('180', '2', 'PRK', '851.01.00', 'Biaya Kadiv/Kadin Pelayanan Kapal', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('181', '2', 'PRK', '851.02.00', 'Biaya Dinas Pemanduan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('182', '2', 'PRK', '851.03.00', 'Biaya Din.Armada', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('183', '2', 'PRK', '851.04.00', 'Biaya Dinas Administrasi Kepanduan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('184', '2', 'PRK', '851.05.00', 'Biaya Dinas Telekomunikasi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('185', '2', 'PRK', '851.06.00', 'Biaya Dinas Administrasi Pemanduan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('186', '2', 'PRK', '851.07.00', 'Biaya Dinas Telkom', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('187', '2', 'PRK', '852.00.00', 'BIAYA OTL DIV/DIN ANEKA USAHA&PROPERTI', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('188', '2', 'PRK', '852.01.00', 'Biaya Kdv/Kdn.Aneka Usaha ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('189', '2', 'PRK', '852.02.00', 'Biaya Dinas Operasi Terminal', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('190', '2', 'PRK', '852.03.00', 'Biaya Dinas Pengsh.Peralatan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('191', '2', 'PRK', '852.04.00', 'Biaya Din.Properti,Pengamanan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('192', '2', 'PRK', '852.05.00', 'Biaya Din.Term.Penump.Umum', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('193', '2', 'PRK', '852.06.00', 'Biaya Dinas Adms.Aneka Usaha', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('194', '2', 'PRK', '852.07.00', 'Biaya Din.Bina Pelngn.', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('195', '2', 'PRK', '852.08.00', 'Biaya Dinas PBK, Depo & Parkir', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('196', '2', 'PRK', '852.50.00', 'Dinas Pangkalan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('197', '2', 'PRK', '853.00.00', 'BIAYA OTL DIV/DIN USH.TRM.SRB.GUNA', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('198', '2', 'PRK', '853.01.00', 'Biaya Kdv./Kdn.Usaha Term.Srb.Guna', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('199', '2', 'PRK', '853.02.00', 'Biaya Dinas Operasi Terminal', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('200', '2', 'PRK', '853.03.00', 'Biaya Dinas Operasi Peti Kemas', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('201', '2', 'PRK', '853.04.00', 'Biaya Dinas Pengusahaan Alat', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('202', '2', 'PRK', '853.05.00', 'Biaya Dinas Adms. Usaha Terminal', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('203', '2', 'PRK', '854.00.00', 'BI.OTL DIV/DIN UTPK (KONVENSIONAL)', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('204', '2', 'PRK', '854.01.00', 'Biaya Kadiv/Kadin Usaha TPK', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('205', '2', 'PRK', '854.02.00', 'Bi.Din.Perenc.Oprs.P.K', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('206', '2', 'PRK', '854.03.00', 'Biaya Dinas Operasi Penumpukan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('207', '2', 'PRK', '854.04.00', 'Biaya Dinas Op.Terminal Batu Bara', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('208', '2', 'PRK', '854.05.00', 'Biaya Dinas Op.Terml.Konvensional', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('209', '2', 'PRK', '854.06.00', 'Biaya Dinas Operasi Peti Kemas', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('210', '2', 'PRK', '854.07.00', 'Biaya Dinas Peralatan Peti Kemas', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('211', '2', 'PRK', '854.08.00', 'Biaya Dinas Administrasi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('212', '2', 'PRK', '854.09.00', 'Biaya Dinas Pengush.Peralatan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('213', '2', 'PRK', '854.10.00', 'Biaya Dinas Bina Pelanggan ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('214', '2', 'PRK', '855.00.00', 'BIAYA OTL UNIT TERMINAL PETI KEMAS', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('215', '2', 'PRK', '855.01.00', 'Biaya OTL Operasi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('216', '2', 'PRK', '855.01.01', 'Biaya Kadiv Operasi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('217', '2', 'PRK', '855.01.02', 'Biaya Dinas Perencanaan ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('218', '2', 'PRK', '855.01.03', 'Biaya Dinas Operasi TPK II', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('219', '2', 'PRK', '855.01.04', 'Biaya Din.Op.Lap.  TPK II', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('220', '2', 'PRK', '855.01.05', 'Biaya Din.Op.Gudang TPK II', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('221', '2', 'PRK', '855.01.06', 'Biaya Din.Op.TPK.I/Antar Pulau', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('222', '2', 'PRK', '855.02.00', 'Biaya OTL Divisi Aneka Usaha', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('223', '2', 'PRK', '855.02.01', 'Biaya Kadiv Aneka Usaha', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('224', '2', 'PRK', '855.02.02', 'Biaya Dinas Usaha Pely. Multimoda', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('225', '2', 'PRK', '855.02.03', 'Biaya Din.Pely.Umum ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('226', '2', 'PRK', '856.00.00', 'Biaya OTL Divisi / Dinas Komersial/PPSA', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('227', '2', 'PRK', '856.01.00', 'Biaya Kadiv Komersial/PPSA', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('228', '2', 'PRK', '856.01.01', 'Biaya Dinas Pelayanan Medis', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('229', '2', 'PRK', '856.01.02', 'Biaya Subdin Pelyn.Medis I', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('230', '2', 'PRK', '856.01.03', 'Biaya Subdin Pelyn. Medis II', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('231', '2', 'PRK', '856.02.00', 'Biaya Dinas Perencanaan Operasi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('232', '2', 'PRK', '856.02.01', 'Biaya Dinas Perawatan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('233', '2', 'PRK', '856.02.02', 'Biaya Subdin Perawatan I', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('234', '2', 'PRK', '856.02.03', 'Biaya Subdin Perawatan II', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('235', '2', 'PRK', '856.03.00', 'Biaya Dinas Analisa & Evaluasi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('236', '2', 'PRK', '856.04.00', 'Biaya Dinas Pemasaran', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('237', '2', 'PRK', '857.00.00', 'Biaya OTL Deputy General Manajer', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('238', '2', 'PRK', '857.01.00', 'Biaya Deputy General Manajer', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('239', '2', 'PRK', '860.00.00', 'BIAYA P.O. DIVISI/DINAS TEHNIK', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('240', '2', 'PRK', '860.01.00', 'Biaya Kadiv/Kadin Tehnik', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('241', '2', 'PRK', '860.02.00', 'Biaya Dinas Bangunan ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('242', '2', 'PRK', '860.03.00', 'Biaya Dinas Peralatan Pelabuhan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('243', '2', 'PRK', '860.04.00', 'Biaya Dinas Pengusahaan Listrik', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('244', '2', 'PRK', '860.05.00', 'Biaya Dinas Perenc. Tehnik', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('245', '2', 'PRK', '860.06.00', 'Biaya Dinas Alat Apung ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('246', '2', 'PRK', '860.07.00', 'Biaya Dinas Umum ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('247', '2', 'PRK', '860.08.00', 'Biaya Dinas Sis.Infor.Hukum ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('248', '2', 'PRK', '861.00.00', 'BIAYA P.O. DIVISI/DINAS KEUANGAN', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('249', '2', 'PRK', '861.01.00', 'Biaya Kdv/Kdn Keuangan ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('250', '2', 'PRK', '861.02.00', 'Biaya Dinas Akuntansi Keuangan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('251', '2', 'PRK', '861.03.00', 'Biaya Dinas Akuntansi Manajemen', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('252', '2', 'PRK', '861.04.00', 'Biaya Dinas Perbendaharaan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('253', '2', 'PRK', '861.05.00', 'Biaya Dinas Administrasi Keuangan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('254', '2', 'PRK', '861.06.00', 'Biaya Dinas Anggaran', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('255', '2', 'PRK', '862.00.00', 'BIAYA P.O. KACAB  UMUM', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('256', '2', 'PRK', '862.01.00', 'Biaya Kepala Cabang', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('257', '2', 'PRK', '862.02.00', 'Biaya Kadiv/Kadin Umum', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('258', '2', 'PRK', '862.03.00', 'Biaya Dinas Personalia', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('259', '2', 'PRK', '862.04.00', 'Biaya Tata Usaha Tangga', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('260', '2', 'PRK', '862.05.00', 'Biaya Sistem Informasi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('261', '2', 'PRK', '862.06.00', 'Biaya Din.Hkm,Hms.Pelanggan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('262', '2', 'PRK', '863.00.00', 'BIAYA P.O. UNIT TERMINAL PETI KEMAS', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('263', '2', 'PRK', '863.01.00', 'Biaya PO Divisi Peralatan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('264', '2', 'PRK', '863.01.01', 'Biaya Kadiv Peralatan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('265', '2', 'PRK', '863.01.02', 'Biaya Din.Prlt.Gent.Crane ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('266', '2', 'PRK', '863.01.03', 'Biaya Din.Perlt.Head Truck ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('267', '2', 'PRK', '863.01.04', 'Biaya Din.Fasilitas Tehnik', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('268', '2', 'PRK', '863.02.00', 'Biaya PO Divisi Keuangan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('269', '2', 'PRK', '863.02.01', 'Biaya Kadiv Keuangan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('270', '2', 'PRK', '863.02.02', 'Biaya Dinas Akuntansi Keuangan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('271', '2', 'PRK', '863.02.03', 'Biaya Dinas Akuntansi Manajemen', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('272', '2', 'PRK', '863.02.04', 'Biaya Dinas Administrasi Keuangan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('273', '2', 'PRK', '863.02.05', 'Biaya Dinas Perbendaharaan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('274', '2', 'PRK', '863.03.00', 'Biaya PO Kepala Unit  Umum', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('275', '2', 'PRK', '863.03.01', 'Biaya Kepala Unit', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('276', '2', 'PRK', '863.03.02', 'Biaya Kadiv Umum', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('277', '2', 'PRK', '863.03.03', 'Biaya Dinas Personalia', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('278', '2', 'PRK', '863.03.04', 'Biaya Dinas TU ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('279', '2', 'PRK', '863.03.05', 'Biaya Dinas Sistem Informasi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('280', '2', 'PRK', '863.03.06', 'Biaya Hukum,Humas Pelanggan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('281', '2', 'PRK', '864.00.00', 'BIAYA PO TEKNOLOGI INFORMASI', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('282', '2', 'PRK', '864.01.00', 'BIAYA KADIV TEKNOLOGI INFORMASI', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('283', '2', 'PRK', '864.01.01', 'Biaya Kepala Dinas Penunjang Medis', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('284', '2', 'PRK', '864.01.02', 'Baiya Subdin Instalasi Farmasi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('285', '2', 'PRK', '864.01.03', 'Biaya Subdin Penunj.Diagnostik', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('286', '2', 'PRK', '864.01.04', 'Biaya Subdin Penunjang', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('287', '2', 'PRK', '864.01.05', 'Biaya Subdin Pemeliharaan Sarana', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('288', '2', 'PRK', '864.02.00', 'BIAYA DINAS JARINGAN DAN STATISTIK', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('289', '2', 'PRK', '864.02.01', 'Biaya Kadin Keuangan ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('290', '2', 'PRK', '864.02.02', 'Biaya Subdin Keuangan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('291', '2', 'PRK', '864.02.03', 'Biaya Subdin TU/RT ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('292', '2', 'PRK', '864.02.04', 'Biaya Subdin Pengl.Sis.Inf.', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('293', '2', 'PRK', '864.03.00', 'BIAYA DINAS PENGOP.APLIKASI DAN DUK.PENG', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('294', '2', 'PRK', '864.03.01', 'Biaya Kepala Rumah Sakit', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('295', '2', 'PRK', '865.00.00', 'BIAYA KASATPAMPEL', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('296', '2', 'PRK', '865.01.00', 'Biaya KasatPamPel', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('297', '2', 'PRK', '865.02.00', 'Biaya Koord. Pam. Dalam Ring Bewaking', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('298', '2', 'PRK', '865.03.00', 'Biaya Koord. Pam. Luar Ring Bewaking', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('299', '2', 'PRK', '880.00.00', 'BIAYA DILUAR USAHA', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('300', '2', 'PRK', '880.01.00', 'Biaya Puskespel/Unit Kesehatan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('301', '2', 'PRK', '880.02.00', 'Biaya Jasa Bank', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('302', '2', 'PRK', '880.03.00', 'Biaya Bunga Deposito', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('303', '2', 'PRK', '880.04.00', 'Biaya Bunga Obligasi', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('304', '2', 'PRK', '880.05.00', 'Biaya Denda ', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('305', '2', 'PRK', '880.06.00', 'Rugi Selisih Kurs', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('306', '2', 'PRK', '880.07.00', 'Rugi Penjualan Surat Berharga', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('307', '2', 'PRK', '880.08.00', 'Rugi Penghapusan Aktiva Tetap', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('308', '2', 'PRK', '880.09.00', 'Rugi Penjualan Barang Persediaan', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('309', '2', 'PRK', '880.10.00', 'Koreksi Laba/Rugi Tahun Lalu', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('310', '2', 'PRK', '880.13.00', 'Biaya Denda Pajak', '6', '2015', null);
INSERT INTO `tbl_loc` VALUES ('311', '2', 'PRK', '880.99.00', 'Biaya Diluar Usaha Lainnya', '6', '2015', null);

-- ----------------------------
-- Table structure for `tbl_location`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_location`;
CREATE TABLE `tbl_location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_model_id` bigint(20) DEFAULT NULL,
  `location_id` varchar(100) DEFAULT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `revenue` float DEFAULT NULL,
  `bulan` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_location_id` (`id`),
  KEY `idx_location` (`tbl_model_id`,`location_id`,`bulan`,`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_location
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
INSERT INTO `tbl_menu` VALUES ('0', null, null, null, null, 'icon-group', '0', null);
INSERT INTO `tbl_menu` VALUES ('1', null, 'p', 'Home', 'home/modul/dashboard/main', 'home_chart', '1', null);
INSERT INTO `tbl_menu` VALUES ('2', null, 'p', 'Modelling', 'home/modul/model/main/100', 'modelling', '1', null);
INSERT INTO `tbl_menu` VALUES ('3', null, 'p', 'Parameter', 'homex/modul/parameter/main/', 'database', '1', null);
INSERT INTO `tbl_menu` VALUES ('4', null, 'p', 'Resources', 'home/modul/resource/main/', 'resource', '1', null);
INSERT INTO `tbl_menu` VALUES ('5', null, 'p', 'Activities', 'home/modul/activity/main/', 'activity', '1', null);
INSERT INTO `tbl_menu` VALUES ('6', null, 'p', 'Cost Object', 'homex/modul/cost_object/main/', 'cost_object', '1', null);
INSERT INTO `tbl_menu` VALUES ('7', null, 'p', 'Report', 'homex/modul/report/main/', 'report', '1', null);
INSERT INTO `tbl_menu` VALUES ('8', null, 'p', 'Setting', 'home/modul/setting/main/', 'data_proses', '1', null);

-- ----------------------------
-- Table structure for `tbl_menu_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu_copy`;
CREATE TABLE `tbl_menu_copy` (
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
-- Records of tbl_menu_copy
-- ----------------------------
INSERT INTO `tbl_menu_copy` VALUES ('1', null, 'P', 'Modeling', null, null, '1', null);
INSERT INTO `tbl_menu_copy` VALUES ('2', null, 'P', 'Data Master', null, null, '0', null);
INSERT INTO `tbl_menu_copy` VALUES ('3', null, 'P', 'Process Master', null, null, '0', null);
INSERT INTO `tbl_menu_copy` VALUES ('4', null, 'P', 'Cost Object', null, null, '0', null);
INSERT INTO `tbl_menu_copy` VALUES ('5', null, 'P', 'Item Master', null, null, '0', null);
INSERT INTO `tbl_menu_copy` VALUES ('6', null, 'P', 'Report', null, null, '1', null);
INSERT INTO `tbl_menu_copy` VALUES ('7', null, 'P', 'Setting', null, null, '1', null);
INSERT INTO `tbl_menu_copy` VALUES ('8', null, 'P', 'Reference', null, null, '1', null);
INSERT INTO `tbl_menu_copy` VALUES ('100', '1', 'C', 'Set Modeling', 'home/modul/model/main/100', 'icon-group_key', '1', null);
INSERT INTO `tbl_menu_copy` VALUES ('101', '1', 'C', 'Mapping Activity', 'home/modul/model/mapping', 'icon-group_key', '1', null);
INSERT INTO `tbl_menu_copy` VALUES ('102', '1', 'C', 'Production', 'homex/modul/model/production', 'icon-group', '1', null);
INSERT INTO `tbl_menu_copy` VALUES ('201', '2', 'C', 'Data Activity Master', 'home/modul/activity_master/main/201', 'icon-group', '0', null);
INSERT INTO `tbl_menu_copy` VALUES ('301', '2', 'C', 'Data Process Master', 'home/modul/process_master/main/301', 'icon-group', '0', null);
INSERT INTO `tbl_menu_copy` VALUES ('401', '4', 'C', 'Data Cost Object', 'home/modul/cost_object/main/401', 'icon-group', '0', null);
INSERT INTO `tbl_menu_copy` VALUES ('501', '2', 'c', 'Data Item Master', 'home/modul/item_master/main/501', 'icon-group', '0', null);
INSERT INTO `tbl_menu_copy` VALUES ('601', '6', 'C', 'Activity', 'home/modul/report/main/601', 'icon-group', '1', null);
INSERT INTO `tbl_menu_copy` VALUES ('602', '6', 'C', 'Activity Attributes', 'home/modul/report/main/602', 'icon-group', '1', null);
INSERT INTO `tbl_menu_copy` VALUES ('603', '6', 'C', 'Activity Driver', 'home/modul/report/main/603', 'icon-group', '1', null);
INSERT INTO `tbl_menu_copy` VALUES ('701', '7', 'C', 'User Management', 'homex/modul/setting/701', 'icon-group', '1', 'tbl_user');
INSERT INTO `tbl_menu_copy` VALUES ('702', '7', 'C', 'User Group', 'homex/modul/setting/702', 'icon-group', '1', 'cl_user_group');
INSERT INTO `tbl_menu_copy` VALUES ('801', '8', 'C', 'Data Reference', 'home/modul/reference/main/801', 'icon-group', '1', null);

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
  `publis` smallint(6) DEFAULT NULL,
  `publis_date` datetime DEFAULT NULL,
  `publis_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_model` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_model
-- ----------------------------
INSERT INTO `tbl_model` VALUES ('1', 'Pelayanan Kapal', 'Testing Ajx', '2015-06-23 09:51:12', 'Goyz', '0', '2016-01-23 18:28:18', 'Goyz');
INSERT INTO `tbl_model` VALUES ('2', 'Model Tester 2', 'Testing Kedua Coy xxx', '2016-01-23 18:28:57', 'Goyz', '1', '2016-01-23 18:29:02', 'Goyz');
INSERT INTO `tbl_model` VALUES ('3', 'Model Percobaan 1', 'Model Untuk Testing Aplikasi Versi 1', '2015-11-22 17:20:27', 'Goyz', '1', '2016-01-23 18:29:05', 'Goyz');
INSERT INTO `tbl_model` VALUES ('4', 'Pelayanan Pandu Kapal', 'Testing Model Pelayanan Pandu Kapal', '2016-01-25 07:25:04', 'Goyz', '0', null, null);

-- ----------------------------
-- Table structure for `tbl_prd`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_prd`;
CREATE TABLE `tbl_prd` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_model_id` int(11) DEFAULT NULL,
  `tbl_prm_id` bigint(20) DEFAULT NULL,
  `tbl_cdm_id` bigint(20) DEFAULT NULL,
  `tbl_acm_id` bigint(20) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `cost_rate` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `unweight` float DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `bulan` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_prd_id` (`id`),
  KEY `idx_prd` (`tbl_model_id`,`tbl_prm_id`,`tbl_cdm_id`,`tbl_acm_id`,`bulan`,`tahun`)
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_prev_group
-- ----------------------------
INSERT INTO `tbl_prev_group` VALUES ('6', '2', '1', '0', '1', '0', '0');
INSERT INTO `tbl_prev_group` VALUES ('7', '2', '2', '0', '1', '0', '0');
INSERT INTO `tbl_prev_group` VALUES ('10', '2', '3', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('11', '2', '2', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('65', '1', '1', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('66', '1', '2', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('67', '1', '3', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('68', '1', '4', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('69', '1', '5', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('70', '1', '6', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('71', '1', '7', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('72', '1', '8', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('81', '4', '1', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('82', '4', '6', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('83', '3', '1', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('84', '3', '2', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('85', '3', '3', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('86', '3', '4', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('87', '3', '5', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('88', '3', '6', '1', '1', '1', '1');
INSERT INTO `tbl_prev_group` VALUES ('89', '3', '8', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `tbl_prm`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_prm`;
CREATE TABLE `tbl_prm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_model_id` int(11) DEFAULT NULL,
  `prod_id` varchar(10) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `descript` text,
  `reduction` float DEFAULT NULL,
  `net_revenue` float DEFAULT NULL,
  `activity_cost` float DEFAULT NULL,
  `direct_cost` float DEFAULT NULL,
  `profit_lost` float DEFAULT NULL,
  `uom` varchar(100) DEFAULT NULL,
  `prod_qty` float DEFAULT NULL,
  `target_qty` float DEFAULT NULL,
  `segment_id` int(11) DEFAULT NULL,
  `service_group_id` int(11) DEFAULT NULL,
  `cost_rate` float DEFAULT NULL,
  `target_rate` float DEFAULT NULL,
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
  `bulan` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_prm_id` (`id`),
  KEY `idx_prm` (`tbl_model_id`,`prod_id`,`segment_id`,`service_group_id`,`bulan`,`tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_prm
-- ----------------------------
INSERT INTO `tbl_prm` VALUES ('1', '2', 'AIR1P011', '1', 'AIR KAPAL PIPA NONREGULER DALAM NEG', '96', '805077', '0', '20312', '0', '155', '0', '0', '1', '2', '0', '0', '20312', '583.576', '11853600', '11853600', '233588000', '221734000', '0', '0', '11853600', '11853600', null, null, '11', '2015', null);
INSERT INTO `tbl_prm` VALUES ('2', '2', 'AIR1T011', '1', 'AIR KAPAL TONGKANG NONREGULER DALAM', '10', '27682', '0', '770', '0', '0', '0', '0', '1', '3', '0', '0', '770', '45432.2', '34982800', '34982800', '11319000', '-23663800', '0', '0', '34982800', '34982800', null, null, '11', '2015', null);
INSERT INTO `tbl_prm` VALUES ('3', '2', 'ALT11000', '1', 'ALAT PEMADAM KEBAKARAN', '0', '0', '0', '0', '0', '0', '0', '0', '1', '4', '0', '0', '0', '0', '9577180', '9577180', '25500', '-9551680', '0', '0', '9577180', '9577180', null, null, '11', '2015', null);
INSERT INTO `tbl_prm` VALUES ('4', '2', 'DER11100', '1', 'DERMAGA UMUM (TON)', '414', '0', null, '0', null, '0', null, '0', null, null, null, null, '719387000', '0.10312', '74183400', '74183400', '996574000', '922391000', '0', '0', '74183400', '74183400', null, null, '11', '2015', null);
INSERT INTO `tbl_prm` VALUES ('5', '2', 'DER11200', '1', 'DERMAGA UMUM (M3)', '147', '0', '0', '0', '0', '0', '0', '0', '1', '5', '0', '0', '138023000', '0.138938', '19176700', '19176700', '237608000', '218431000', '0', '0', '19176700', '19176700', null, null, '11', '2015', null);
INSERT INTO `tbl_prm` VALUES ('6', '2', 'DER11300', '1', 'DERMAGA UMUM (EKOR)', '14', '0', '0', '0', '0', '0', '0', '0', '1', '6', '0', '0', '5733', '205.631', '1178880', '1178880', '9699290', '8520410', '0', '0', '1178880', '1178880', null, null, '11', '2015', null);
INSERT INTO `tbl_prm` VALUES ('7', '2', 'GUD11100', '1', 'GUDANG USAHA (TON)', '206', '0', '0', '0', '0', '0', '0', '0', '1', '2', '0', '0', '14637600', '1.55109', '22704200', '22704200', '26737300', '4033040', '0', '0', '22704200', '22704200', null, null, '11', '2015', null);
INSERT INTO `tbl_prm` VALUES ('8', '2', 'GUD11200', '1', 'GUDANG USAHA (M3)', '221', '0', '0', '0', '0', '0', '0', '0', '1', '3', '0', '0', '42246700', '1.13507', '47952900', '47952900', '69535700', '21582800', '0', '0', '47952900', '47952900', null, null, '11', '2015', null);
INSERT INTO `tbl_prm` VALUES ('9', '2', 'LAP11100', '1', 'LAPANGAN (TON)', '94', '0', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '18341800', '1.34203', '24615200', '24615200', '33252200', '8637080', '0', '0', '24615200', '24615200', null, null, '11', '2015', null);
INSERT INTO `tbl_prm` VALUES ('10', '2', 'LAP11200', '1', 'LAPANGAN (M3)', '109', '0', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '16467900', '1.1882', '19567200', '19567200', '27201600', '7634490', '0', '0', '19567200', '19567200', null, null, '11', '2015', null);
INSERT INTO `tbl_prm` VALUES ('11', '2', 'LIS1B1TR', '1', 'LISTRIK USAHA KECIL', '0', '0', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', '19335', '66.9462', '1294410', '1294410', '14104000', '12809600', '0', '0', '1294410', '1294410', null, null, '11', '2015', null);
INSERT INTO `tbl_prm` VALUES ('12', '2', 'AIR1P011', '1', 'AIR KAPAL PIPA NONREGULER DALAM NEG', '96000', '805077', '9000000', '20312', '0', '0', '0', '0', null, null, '0', '0', '20312', '583.576', '11853600', '11853600', '233588000', '221734000', '0', '0', '11853600', '11853600', null, null, '12', '2015', null);
INSERT INTO `tbl_prm` VALUES ('13', '2', 'AIR1T011', '1', 'AIR KAPAL TONGKANG NONREGULER DALAM', '10', '27682', null, '770', null, '0', null, '0', null, null, null, null, '770', '45432.2', '34982800', '34982800', '11319000', '-23663800', '0', '0', '34982800', '34982800', null, null, '12', '2015', null);
INSERT INTO `tbl_prm` VALUES ('14', '2', 'ALT11000', '1', 'ALAT PEMADAM KEBAKARAN', '0', '0', null, '0', null, '0', null, '0', null, null, null, null, '0', '0', '9577180', '9577180', '25500', '-9551680', '0', '0', '9577180', '9577180', null, null, '12', '2015', null);
INSERT INTO `tbl_prm` VALUES ('15', '2', 'DER11100', '1', 'DERMAGA UMUM (TON)', '414', '0', null, '0', null, '0', null, '0', null, null, null, null, '719387000', '0.10312', '74183400', '74183400', '996574000', '922391000', '0', '0', '74183400', '74183400', null, null, '12', '2015', null);
INSERT INTO `tbl_prm` VALUES ('16', '2', 'DER11200', '1', 'DERMAGA UMUM (M3)', '147', '0', null, '0', null, '0', null, '0', null, null, null, null, '138023000', '0.138938', '19176700', '19176700', '237608000', '218431000', '0', '0', '19176700', '19176700', null, null, '12', '2015', null);
INSERT INTO `tbl_prm` VALUES ('17', '2', 'DER11300', '1', 'DERMAGA UMUM (EKOR)', '14', '0', null, '0', null, '0', null, '0', null, null, null, null, '5733', '205.631', '1178880', '1178880', '9699290', '8520410', '0', '0', '1178880', '1178880', null, null, '12', '2015', null);
INSERT INTO `tbl_prm` VALUES ('18', '2', 'GUD11100', '1', 'GUDANG USAHA (TON)', '206', '0', null, '0', null, '0', null, '0', null, null, null, null, '14637600', '1.55109', '22704200', '22704200', '26737300', '4033040', '0', '0', '22704200', '22704200', null, null, '12', '2015', null);
INSERT INTO `tbl_prm` VALUES ('19', '2', 'GUD11200', '1', 'GUDANG USAHA (M3)', '221', '0', null, '0', null, '0', null, '0', null, null, null, null, '42246700', '1.13507', '47952900', '47952900', '69535700', '21582800', '0', '0', '47952900', '47952900', null, null, '12', '2015', null);
INSERT INTO `tbl_prm` VALUES ('20', '2', 'LAP11100', '1', 'LAPANGAN (TON)', '94', '0', null, '0', null, '0', null, '0', null, null, null, null, '18341800', '1.34203', '24615200', '24615200', '33252200', '8637080', '0', '0', '24615200', '24615200', null, null, '12', '2015', null);
INSERT INTO `tbl_prm` VALUES ('21', '2', 'LAP11200', '1', 'LAPANGAN (M3)', '109', '0', null, '0', null, '0', null, '0', null, null, null, null, '16467900', '1.1882', '19567200', '19567200', '27201600', '7634490', '0', '0', '19567200', '19567200', null, null, '12', '2015', null);
INSERT INTO `tbl_prm` VALUES ('22', '2', 'LIS1B1TR', '1', 'LISTRIK USAHA KECIL', '0', '0', null, '0', null, '0', null, '0', null, null, null, null, '19335', '66.9462', '1294410', '1294410', '14104000', '12809600', '0', '0', '1294410', '1294410', null, null, '12', '2015', null);

-- ----------------------------
-- Table structure for `tbl_process`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_process`;
CREATE TABLE `tbl_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_process
-- ----------------------------
INSERT INTO `tbl_process` VALUES ('1', 'Process 1');

-- ----------------------------
-- Table structure for `tbl_ptp`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ptp`;
CREATE TABLE `tbl_ptp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tbl_cust_id` bigint(20) DEFAULT NULL,
  `tbl_location_id` bigint(20) DEFAULT NULL,
  `tbl_prm_id` bigint(20) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `sell_price` float DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `revenue` float DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `bulan` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
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
  `flag` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_rdm_id` (`id`),
  KEY `idx_rdm` (`tbl_model_id`,`bulan`,`tahun`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_rdm
-- ----------------------------
INSERT INTO `tbl_rdm` VALUES ('1', '2', 'XPND', 'Produksi Pandu', '13998770', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '', '0', '1', null, null, 'X');
INSERT INTO `tbl_rdm` VALUES ('2', '2', 'XJMP', 'Jam Operasi Motor Pandu', '948', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '', '0', '1', null, null, 'X');
INSERT INTO `tbl_rdm` VALUES ('3', '2', 'XJKT', 'Jam Operasi Tunda & Kepil', '1198', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '', '0', '1', null, null, 'X');
INSERT INTO `tbl_rdm` VALUES ('4', '2', 'XDEP03', 'Peny. Alat-Alat Faspel', '21304691', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', null, null, 'A');
INSERT INTO `tbl_rdm` VALUES ('5', '2', 'XDEP01', 'Peny. Bangunan Faspel', '422042182', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', null, null, 'A');
INSERT INTO `tbl_rdm` VALUES ('6', '2', 'XDEP09', 'Peny. Emplasemen', '44028027', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', null, null, 'A');
INSERT INTO `tbl_rdm` VALUES ('7', '2', 'XDEP04', 'Peny. Instalasi Faspel', '18423864', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', null, null, 'E');
INSERT INTO `tbl_rdm` VALUES ('8', '2', 'XDEP06', 'Peny. Jalan & Bangunan', '180944930', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', null, null, 'E');
INSERT INTO `tbl_rdm` VALUES ('9', '2', 'XDEP02', 'Peny. Kapal', '75517417', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '1', '1', null, null, 'E');
INSERT INTO `tbl_rdm` VALUES ('10', '2', 'XDEP08', 'Peny. Kendaraan', '4501984', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', null, null, 'S');
INSERT INTO `tbl_rdm` VALUES ('11', '2', 'XDEP07', 'Peny. Peralatan Kantor', '19574954', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '1', null, null, 'S');

-- ----------------------------
-- Table structure for `tbl_root_couses`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_root_couses`;
CREATE TABLE `tbl_root_couses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root_couses_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_root_couses
-- ----------------------------
INSERT INTO `tbl_root_couses` VALUES ('1', 'Root Couses 1');

-- ----------------------------
-- Table structure for `tbl_seg_servicegroup`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_seg_servicegroup`;
CREATE TABLE `tbl_seg_servicegroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `seg_servicegroup_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_seg_servicegroup
-- ----------------------------
INSERT INTO `tbl_seg_servicegroup` VALUES ('1', null, 'Kapal');
INSERT INTO `tbl_seg_servicegroup` VALUES ('2', '1', 'Air Kapal');
INSERT INTO `tbl_seg_servicegroup` VALUES ('3', '1', 'Labuh');
INSERT INTO `tbl_seg_servicegroup` VALUES ('4', '1', 'Pandu');
INSERT INTO `tbl_seg_servicegroup` VALUES ('5', '1', 'Tambat');
INSERT INTO `tbl_seg_servicegroup` VALUES ('6', '1', 'Tunda');
INSERT INTO `tbl_seg_servicegroup` VALUES ('7', null, 'Non Kapal');
INSERT INTO `tbl_seg_servicegroup` VALUES ('8', '7', 'Non Kapal');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'admin', 'w8nRgzJ8q9W6/04js1nnJwKOHTideqmajzAcg7qmotOyPsh99akca9HqPPuK9U0A8po69U8txljPE/dGpyPTNg==', '1', 'Goyz Crotz', 'goyz87@gmail.com', 'L', '0251-388716', '1');
INSERT INTO `tbl_user` VALUES ('5', 'modeler1', 'M4mVsz5i0hWxnamD5D1Etr9KTQQznHy2UUpi/fdHKr2jH6rfn7lPTCgrqjkNV3jtJEs6/tV24JPL+syRyV0AbA==', '3', 'Modeler ABC 1', 'modeler@abc.com', 'L', '08909928928', '1');
INSERT INTO `tbl_user` VALUES ('6', 'viewer1', '5QZetLH9Ut2JPzFrojEHeMQ5XrvDkcvbja7Ca+DkTqwvfXyGWpfZ1L1lGx2O2BfcoezwhVysQEtzR8TBgnfezQ==', '4', 'Viewer 1', 'viewer@gmail.com', 'P', '08909928928', '1');
