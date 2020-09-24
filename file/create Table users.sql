/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50627
Source Host           : 100.0.101.3:3306
Source Database       : jdbc

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2019-11-27 16:19:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'zs', '123456', 'zs@sina.com', '1980-12-04');
INSERT INTO `users` VALUES ('2', 'lisi', '123456', 'lisi@sina.com', '1981-12-04');
INSERT INTO `users` VALUES ('3', 'wangwu', '123456', 'wangwu@sina.com', '1979-12-04');
