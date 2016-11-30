/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : jxufe

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-11-30 20:32:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('1000', '运输部');
INSERT INTO `t_department` VALUES ('1001', '影视部');
INSERT INTO `t_department` VALUES ('1002', '人力资源部');
INSERT INTO `t_department` VALUES ('1003', '财务部');

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employ_name` varchar(10) NOT NULL,
  `sex` int(1) DEFAULT NULL,
  `salary` float(8,2) DEFAULT NULL,
  `photo` varchar(100) DEFAULT 'd:imges/head.png',
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('10000', '刘卜铷', '1', '2500.05', 'd:imges/head.png', '1000');
INSERT INTO `t_employee` VALUES ('10001', '唐嫣', '0', '3000.02', 'd:imges/head.png', '1001');
INSERT INTO `t_employee` VALUES ('10002', '陈奕迅', '1', '35000.30', 'd:imges/head.png', '1000');
INSERT INTO `t_employee` VALUES ('10003', '周杰伦', '1', '2000.60', 'd:imges/head.png', '1002');
