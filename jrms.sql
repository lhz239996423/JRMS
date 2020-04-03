/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : jrms
Target Host     : localhost:3306
Target Database : jrms
Date: 2012-10-21 17:48:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `clientName` varchar(255) default NULL,
  `clientTelephone` varchar(255) default NULL,
  `clientAddress` varchar(255) default NULL,
  `clientEmail` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('李想', '56567788', '北京', '5566@163.com');
INSERT INTO `client` VALUES ('孟想', '65656655', '北京', '6565@163.com');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `clientName` varchar(255) default NULL,
  `contactName` varchar(255) default NULL,
  `contactContents` varchar(255) default NULL,
  `contactStart` varchar(255) default NULL,
  `contactEnd` varchar(255) default NULL,
  `StaffName` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('李想', '笔记本购买', '购买50台笔记本', '2012年12月1日', '10年', '小李');
INSERT INTO `contact` VALUES ('孟想', '台式机', '订台式机100台', '2012年12月26日', '10年', '小李');

-- ----------------------------
-- Table structure for cs
-- ----------------------------
DROP TABLE IF EXISTS `cs`;
CREATE TABLE `cs` (
  `clientName` varchar(255) default NULL,
  `clientOpinion` varchar(255) default NULL,
  `StaffName` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs
-- ----------------------------
INSERT INTO `cs` VALUES ('李想', '电脑经常死机郁闷中...', '小李');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productName` varchar(255) default NULL,
  `productModel` varchar(255) default NULL,
  `productNumber` varchar(255) default NULL,
  `productPrice` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('联想笔记本', 'lx6600', '2000', '3600元');
INSERT INTO `product` VALUES ('中国龙台式机', 'China6600', '8000', '5000元');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `staffName` varchar(255) default NULL,
  `staffSex` varchar(255) default NULL,
  `staffAge` varchar(255) default NULL,
  `staffEducation` varchar(255) default NULL,
  `staffDepartment` varchar(255) default NULL,
  `staffDate` varchar(255) default NULL,
  `staffDuty` varchar(255) default NULL,
  `staffWage` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('小李', '女', '36', '硕士', '市场部', '2000年5月16日', '市场部销售主管', '12000');

-- ----------------------------
-- Table structure for date
-- ----------------------------
DROP TABLE IF EXISTS `date`;
CREATE TABLE `date` (
  `userName` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `thing` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of date
-- ----------------------------
INSERT INTO `date` VALUES ('linhaize', '2013-10-13', '去看海！');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `userName` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `contentType` varchar(255) default NULL,
  `size` varchar(255) default NULL,
  `filePath` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `userName` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `workPlace` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `QQ` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friends
-- ----------------------------
INSERT INTO `friends` VALUES ('linhaize', '小明', '67677788', 'xiaoming@163.com', '北京', '北京', '100010');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userName` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `birth` varchar(30) NOT NULL,
  `nation` varchar(30) NOT NULL,
  `edu` varchar(30) NOT NULL,
  `work` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('linhaize', '123', '林海泽', '男', '1978-01-01', '汉族', '硕士', '教师', '56565656', '北京', 'linhaize@163.com');
