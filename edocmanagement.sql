
create database edoc_category;
use edoc_category;
/*
 Navicat MySQL Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50549
 Source Host           : localhost:3306
 Source Schema         : edocmanagement

 Target Server Type    : MySQL
 Target Server Version : 50549
 File Encoding         : 65001

 Date: 09/04/2019 20:03:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for edoc_category
-- ----------------------------
DROP TABLE IF EXISTS `edoc_category`;
CREATE TABLE `edoc_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of edoc_category
-- ----------------------------
INSERT INTO `edoc_category` VALUES (1, '体育');
INSERT INTO `edoc_category` VALUES (2, '八卦');
INSERT INTO `edoc_category` VALUES (3, '电竞');

-- ----------------------------
-- Table structure for edoc_entry
-- ----------------------------
DROP TABLE IF EXISTS `edoc_entry`;
CREATE TABLE `edoc_entry`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL COMMENT '文档编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文档名称',
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文档摘要',
  `uploadUser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createDate` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of edoc_entry
-- ----------------------------
INSERT INTO `edoc_entry` VALUES (1, 1, '詹姆斯吃龙虾', '好吃', '韦德', '2019-04-09 20:00:06');
INSERT INTO `edoc_entry` VALUES (2, 1, '大赛帮', '很大', '詹姆斯', '2019-04-10 20:00:31');
INSERT INTO `edoc_entry` VALUES (3, 2, '杨幂脚臭', '确实臭', '我啊', '2019-04-11 20:01:17');
INSERT INTO `edoc_entry` VALUES (4, 2, '杨过瘦小', '小手', '年', '2019-04-04 20:01:47');
INSERT INTO `edoc_entry` VALUES (5, 3, 'RNG赢了', '很帅', '111', '2019-04-03 20:02:47');
INSERT INTO `edoc_entry` VALUES (6, 3, 'KT赢了', '很强', '222', '2019-04-05 20:03:18');

SET FOREIGN_KEY_CHECKS = 1;
