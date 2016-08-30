/*
Navicat MySQL Data Transfer

Source Server         : hotparty
Source Server Version : 50629
Source Host           : rm-bp1lsirpx5f5j5yq7o.mysql.rds.aliyuncs.com:3306
Source Database       : hotparty

Target Server Type    : MYSQL
Target Server Version : 50629
File Encoding         : 65001

Date: 2016-08-30 17:44:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for party_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `party_goods_info`;
CREATE TABLE `party_goods_info` (
  `id` varchar(32) NOT NULL,
  `goodslink` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `date` varchar(32) DEFAULT NULL,
  `valid` char(1) DEFAULT NULL,
  `tag` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_goods_info
-- ----------------------------

-- ----------------------------
-- Table structure for party_goods_publish
-- ----------------------------
DROP TABLE IF EXISTS `party_goods_publish`;
CREATE TABLE `party_goods_publish` (
  `id` varchar(32) NOT NULL,
  `vedioID` varchar(32) DEFAULT NULL,
  `goodsID` varchar(32) DEFAULT NULL,
  `userID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_goods_publish
-- ----------------------------

-- ----------------------------
-- Table structure for party_hot_player
-- ----------------------------
DROP TABLE IF EXISTS `party_hot_player`;
CREATE TABLE `party_hot_player` (
  `id` varchar(32) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `series` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_hot_player
-- ----------------------------
INSERT INTO `party_hot_player` VALUES ('11111', '12341', '1');
INSERT INTO `party_hot_player` VALUES ('12111', '12342', '2');
INSERT INTO `party_hot_player` VALUES ('293969B6DECC459CB78BD743268E87ED', '9070E7F1032248589F830D4F3681E61F', '9');
INSERT INTO `party_hot_player` VALUES ('524E8968480349178DB3B6B7BC66E434', '43B7C917C6C44574BC4E7795A193AEF6', '1');

-- ----------------------------
-- Table structure for party_prefer_vedio
-- ----------------------------
DROP TABLE IF EXISTS `party_prefer_vedio`;
CREATE TABLE `party_prefer_vedio` (
  `id` varchar(32) NOT NULL,
  `vedioID` varchar(32) DEFAULT NULL,
  `series` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_prefer_vedio
-- ----------------------------
INSERT INTO `party_prefer_vedio` VALUES ('1111111111', '1234567890', '1');
INSERT INTO `party_prefer_vedio` VALUES ('1111111112', '1234567891', '2');

-- ----------------------------
-- Table structure for party_user
-- ----------------------------
DROP TABLE IF EXISTS `party_user`;
CREATE TABLE `party_user` (
  `id` varchar(32) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `md5code` varchar(64) NOT NULL,
  `status` varchar(12) NOT NULL,
  `registerdate` varchar(32) NOT NULL,
  `lastlogindate` varchar(32) DEFAULT NULL,
  `isremember` char(1) NOT NULL COMMENT 'If to remember the password',
  `type` char(1) NOT NULL COMMENT 'type of user, manager or user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_user
-- ----------------------------
INSERT INTO `party_user` VALUES ('43B7C917C6C44574BC4E7795A193AEF6', 'player', 'yy3244-7198-8489791-10675721453575112', '4AAC014FD33343AAB03C7252AFE22209', '1', '2016-08-30 04:08:57', null, '1', '1');
INSERT INTO `party_user` VALUES ('5E50AE8606114A159C302B59CD906EC9', 'admin', 'yy-admin', 'E6B0B83E1BE5453D928769A56A3E6D46', '1', '2016-08-16 11:18:10', null, '1', '0');
INSERT INTO `party_user` VALUES ('61A1BD1BCAE44D51AA1CC142F77B755D', 'sunc', '123', 'AA07D3642A4A4823AC4C3CA8DA812CE4', '1', '2016-08-08 07:17:53', null, '1', '2');
INSERT INTO `party_user` VALUES ('7E58D7CEC29E479FA9CA5C63D9EDF287', 'username', 'password', '44817A90DE364B69A684F729D381B093', '1', '2016-08-08 05:52:31', null, '1', '2');
INSERT INTO `party_user` VALUES ('9070E7F1032248589F830D4F3681E61F', 'test', 'yy9-113107-517033-45115-54-3478-1253839-76-10', '289364B913AD45BD876657CF73EE42B3', '1', '2016-08-29 04:28:34', null, '1', '1');
INSERT INTO `party_user` VALUES ('B093449E174449B7BDEE8596ACCE60F1', 'Qq', 'Qq', '52E2EB23F5A24E2FA5374B0A2393A5A7', '1', '2016-08-17 08:03:42', null, '1', '2');
INSERT INTO `party_user` VALUES ('C860E2672CDF4DDDB0594809522B0220', 'username', 'password', '255E371973B44E80A2FE55F43A6F50AE', '1', '2016-08-08 05:52:31', null, '1', '2');
INSERT INTO `party_user` VALUES ('F80CEE85AC6B40D5B29F02F431CA6309', 'cl', '123', '292E2204C77740899470A74369FEF6D3', '1', '2016-08-08 05:27:15', null, '1', '2');
INSERT INTO `party_user` VALUES ('FC6E60352C60494EA1476FA951C4E848', 'ss', 'sâs', 'ECE7E5665BB24D33A2270E2CF2335B92', '1', '2016-08-14 07:47:12', null, '1', '2');

-- ----------------------------
-- Table structure for party_user_details
-- ----------------------------
DROP TABLE IF EXISTS `party_user_details`;
CREATE TABLE `party_user_details` (
  `id` varchar(32) NOT NULL,
  `username` varchar(64) NOT NULL,
  `nickname` varchar(64) DEFAULT NULL,
  `aboutme` varchar(255) DEFAULT NULL,
  `headimage` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(12) DEFAULT NULL,
  `interest` varchar(255) DEFAULT NULL,
  `region` varchar(64) DEFAULT NULL,
  `platform` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_user_details
-- ----------------------------
INSERT INTO `party_user_details` VALUES ('12341', '7721', '花花公子', '花花公子', 'http://js.a.yximgs.com/uhead/AB/2016/08/03/10/BMjAxNjA4MDMxMDMxMjlfMTYxNjAxMjU2XzFfaGQ1.jpg', '22', '男', '游泳', '武汉', 'HotParty');
INSERT INTO `party_user_details` VALUES ('12342', '8831', 'alsj', 'alsj', 'http://js.a.yximgs.com/uhead/AB/2016/08/14/19/BMjAxNjA4MTQxOTQ4MjNfMTkyMTcyNjZfMV9oZDk5.jpg', '21', '女', '摄影', '武汉', 'HotParty');

-- ----------------------------
-- Table structure for party_user_favorites
-- ----------------------------
DROP TABLE IF EXISTS `party_user_favorites`;
CREATE TABLE `party_user_favorites` (
  `id` varchar(32) NOT NULL,
  `userID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_user_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for party_vedio_info
-- ----------------------------
DROP TABLE IF EXISTS `party_vedio_info`;
CREATE TABLE `party_vedio_info` (
  `id` varchar(32) NOT NULL,
  `vediolink` varchar(255) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `date` varchar(32) DEFAULT NULL,
  `browsers` int(11) DEFAULT NULL,
  `valid` char(1) DEFAULT NULL,
  `tag` varchar(64) DEFAULT NULL,
  `vedioimage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_vedio_info
-- ----------------------------
INSERT INTO `party_vedio_info` VALUES ('123432', 'http://alimov2.a.yximgs.com/udata/W_fiYvt2EqWX8_en.mp4', '用压力锅给呼了点鸡胸肉、', '2016-08-09 17:30:07', '1', '1', '猫星人', 'http://ali2.a.yximgs.com/upic/2016/08/14/21/BMjAxNjA4MTQyMTI4NDVfMjA3NTAyMTkwXzk3Njk5OTgwMl8xXzM=.jpg');
INSERT INTO `party_vedio_info` VALUES ('123442', 'http://alimov2.a.yximgs.com/udata/W_fiYvt2EqWX8_en.mp4', '用压力锅给呼了点鸡胸肉、', '2016-08-09 17:30:07', '1', '1', '猫星人', 'http://ali2.a.yximgs.com/upic/2016/08/14/21/BMjAxNjA4MTQyMTI4NDVfMjA3NTAyMTkwXzk3Njk5OTgwMl8xXzM=.jpg');
INSERT INTO `party_vedio_info` VALUES ('1234421', 'http://alimov2.a.yximgs.com/udata/W_fiYvt2EqWX8_en.mp4', '用压力锅给呼了点鸡胸肉、', '2016-08-09 17:30:07', '1', '1', '猫星人', 'http://ali2.a.yximgs.com/upic/2016/08/14/21/BMjAxNjA4MTQyMTI4NDVfMjA3NTAyMTkwXzk3Njk5OTgwMl8xXzM=.jpg');
INSERT INTO `party_vedio_info` VALUES ('123451', 'http://alimov2.a.yximgs.com/udata/W_fiYvt2EqWX8_en.mp4', '用压力锅给呼了点鸡胸肉、', '2016-08-09 17:30:07', '1', '1', '猫星人', 'http://ali2.a.yximgs.com/upic/2016/08/14/21/BMjAxNjA4MTQyMTI4NDVfMjA3NTAyMTkwXzk3Njk5OTgwMl8xXzM=.jpg');
INSERT INTO `party_vedio_info` VALUES ('123452', 'http://alimov2.a.yximgs.com/udata/W_fiYvt2EqWX8_en.mp4', '用压力锅给呼了点鸡胸肉、', '2016-08-09 17:30:07', '1', '1', '猫星人', 'http://ali2.a.yximgs.com/upic/2016/08/14/21/BMjAxNjA4MTQyMTI4NDVfMjA3NTAyMTkwXzk3Njk5OTgwMl8xXzM=.jpg');
INSERT INTO `party_vedio_info` VALUES ('1234567890', 'http://alimov2.a.yximgs.com/udata/W_fiYvt2EqWX8_en.mp4', '用压力锅给呼了点鸡胸肉、全喵开造、芬迪造饱了开始洗脸了', '2016-08-09 17:30:07', '3', '1', '猫星人', 'http://ali2.a.yximgs.com/upic/2016/08/14/21/BMjAxNjA4MTQyMTI4NDVfMjA3NTAyMTkwXzk3Njk5OTgwMl8xXzM=.jpg');
INSERT INTO `party_vedio_info` VALUES ('1234567891', 'http://js.a.yximgs.com/upic/2016/08/15/06/BMjAxNjA4MTUwNjEwMjZfMjcwMTkzOTI5Xzk3Nzc2MjUzMl8yXzM=.mp4', '辽宁马犬基地', '2016-08-09 17:30:07', '1', '1', '辽宁马犬基地', 'http://js.a.yximgs.com/upic/2016/08/15/06/BMjAxNjA4MTUwNjEwMjZfMjcwMTkzOTI5Xzk3Nzc2MjUzMl8yXzM=.jpg');
INSERT INTO `party_vedio_info` VALUES ('1234567892', 'http://alimov2.a.yximgs.com/udata/W_fiYvt2EqWX8_en.mp4', '用压力锅给呼了点鸡胸肉、全喵开造', '2016-08-09 17:30:07', '5', '1', '猫星人', 'http://ali2.a.yximgs.com/upic/2016/08/14/21/BMjAxNjA4MTQyMTI4NDVfMjA3NTAyMTkwXzk3Njk5OTgwMl8xXzM=.jpg');
INSERT INTO `party_vedio_info` VALUES ('1234567893', 'http://alimov2.a.yximgs.com/udata/W_fiYvt2EqWX8_en.mp4', '用压力锅给呼了点鸡胸肉、', '2016-08-09 17:30:07', '2', '1', '猫星人', 'http://ali2.a.yximgs.com/upic/2016/08/14/21/BMjAxNjA4MTQyMTI4NDVfMjA3NTAyMTkwXzk3Njk5OTgwMl8xXzM=.jpg');
INSERT INTO `party_vedio_info` VALUES ('1634421', 'http://alimov2.a.yximgs.com/udata/W_fiYvt2EqWX8_en.mp4', '用压力锅给呼了点鸡胸肉、', '2016-08-09 17:30:07', '1', '1', '猫星人', 'http://ali2.a.yximgs.com/upic/2016/08/14/21/BMjAxNjA4MTQyMTI4NDVfMjA3NTAyMTkwXzk3Njk5OTgwMl8xXzM=.jpg');
INSERT INTO `party_vedio_info` VALUES ('1634471', 'http://alimov2.a.yximgs.com/udata/W_fiYvt2EqWX8_en.mp4', '用压力锅给呼了点鸡胸肉、', '2016-08-09 17:30:07', '1', '1', '猫星人', 'http://ali2.a.yximgs.com/upic/2016/08/14/21/BMjAxNjA4MTQyMTI4NDVfMjA3NTAyMTkwXzk3Njk5OTgwMl8xXzM=.jpg');

-- ----------------------------
-- Table structure for party_vedio_publish
-- ----------------------------
DROP TABLE IF EXISTS `party_vedio_publish`;
CREATE TABLE `party_vedio_publish` (
  `id` varchar(32) NOT NULL,
  `vedioID` varchar(32) DEFAULT NULL,
  `userID` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of party_vedio_publish
-- ----------------------------
INSERT INTO `party_vedio_publish` VALUES ('12', '1234567890', '12341');
INSERT INTO `party_vedio_publish` VALUES ('13', '1234567891', '12342');
INSERT INTO `party_vedio_publish` VALUES ('14', '1634471', 'F80CEE85AC6B40D5B29F02F431CA6309');
INSERT INTO `party_vedio_publish` VALUES ('15', '1634421', '8DADC44C0E6347A090B378A630903A3D');
INSERT INTO `party_vedio_publish` VALUES ('16', '123452', '61A1BD1BCAE44D51AA1CC142F77B755D');
INSERT INTO `party_vedio_publish` VALUES ('17', '1234421', '7E58D7CEC29E479FA9CA5C63D9EDF287');
INSERT INTO `party_vedio_publish` VALUES ('18', '123442', 'FC6E60352C60494EA1476FA951C4E848');
INSERT INTO `party_vedio_publish` VALUES ('', null, '12341');
INSERT INTO `party_vedio_publish` VALUES ('', null, '12341');
INSERT INTO `party_vedio_publish` VALUES ('', null, '12342');
