/*
 Navicat Premium Data Transfer

 Source Server         : MySQL5.7
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : localhost:3306
 Source Schema         : scoreentry

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : 65001

 Date: 25/06/2020 17:29:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'java');
INSERT INTO `course` VALUES (2, 'html');
INSERT INTO `course` VALUES (3, 'css');
INSERT INTO `course` VALUES (4, 'mysql');
INSERT INTO `course` VALUES (5, 'spring');
INSERT INTO `course` VALUES (6, 'mybatis');
INSERT INTO `course` VALUES (7, 'hive');
INSERT INTO `course` VALUES (8, 'spark');
INSERT INTO `course` VALUES (9, 'mapredcue');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `s_id` bigint(20) NOT NULL,
  `c_id` bigint(20) NULL DEFAULT NULL,
  `score` int(255) NULL DEFAULT NULL,
  `type` enum('期中','期末') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `s_id`(`s_id`) USING BTREE,
  INDEX `c_id`(`c_id`) USING BTREE,
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `score_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (1, 1, 98, '期中');
INSERT INTO `score` VALUES (1, 1, 98, '期中');
INSERT INTO `score` VALUES (1, 2, 45, '期末');
INSERT INTO `score` VALUES (1, 2, 45, '期中');
INSERT INTO `score` VALUES (1, 3, 23, '期末');
INSERT INTO `score` VALUES (1, 3, 23, '期末');
INSERT INTO `score` VALUES (1, 4, 123, '期末');
INSERT INTO `score` VALUES (1, 4, 123, '期末');
INSERT INTO `score` VALUES (1, 5, 53, '期中');
INSERT INTO `score` VALUES (1, 5, 53, '期中');
INSERT INTO `score` VALUES (1, 6, 45, '期中');
INSERT INTO `score` VALUES (1, 6, 45, '期末');
INSERT INTO `score` VALUES (1, 7, 58, '期末');
INSERT INTO `score` VALUES (1, 7, 58, '期末');
INSERT INTO `score` VALUES (1, 8, 12, '期末');
INSERT INTO `score` VALUES (1, 8, 12, '期中');
INSERT INTO `score` VALUES (1, 9, 12, '期末');
INSERT INTO `score` VALUES (2, 1, 12, '期末');
INSERT INTO `score` VALUES (1, 9, 12, '期中');
INSERT INTO `score` VALUES (2, 2, 52, '期中');
INSERT INTO `score` VALUES (2, 1, 12, '期中');
INSERT INTO `score` VALUES (2, 3, 36, '期末');
INSERT INTO `score` VALUES (2, 2, 52, '期中');
INSERT INTO `score` VALUES (2, 4, 98, '期末');
INSERT INTO `score` VALUES (2, 5, 78, '期中');
INSERT INTO `score` VALUES (2, 3, 36, '期末');
INSERT INTO `score` VALUES (2, 6, 95, '期中');
INSERT INTO `score` VALUES (2, 4, 98, '期末');
INSERT INTO `score` VALUES (2, 7, 98, '期中');
INSERT INTO `score` VALUES (2, 5, 78, '期中');
INSERT INTO `score` VALUES (2, 8, 95, '期末');
INSERT INTO `score` VALUES (2, 6, 95, '期中');
INSERT INTO `score` VALUES (2, 9, 95, '期中');
INSERT INTO `score` VALUES (2, 7, 98, '期中');
INSERT INTO `score` VALUES (3, 1, 56, '期中');
INSERT INTO `score` VALUES (2, 8, 95, '期中');
INSERT INTO `score` VALUES (3, 2, 97, '期中');
INSERT INTO `score` VALUES (2, 9, 95, '期中');
INSERT INTO `score` VALUES (3, 3, 98, '期中');
INSERT INTO `score` VALUES (3, 1, 56, '期中');
INSERT INTO `score` VALUES (3, 4, 94, '期中');
INSERT INTO `score` VALUES (3, 2, 97, '期中');
INSERT INTO `score` VALUES (3, 5, 94, '期中');
INSERT INTO `score` VALUES (3, 3, 98, '期中');
INSERT INTO `score` VALUES (3, 6, 96, '期中');
INSERT INTO `score` VALUES (3, 4, 94, '期中');
INSERT INTO `score` VALUES (3, 7, 96, '期末');
INSERT INTO `score` VALUES (3, 5, 94, '期中');
INSERT INTO `score` VALUES (3, 8, 95, '期中');
INSERT INTO `score` VALUES (3, 6, 96, '期中');
INSERT INTO `score` VALUES (3, 9, 85, '期中');
INSERT INTO `score` VALUES (3, 7, 96, '期末');
INSERT INTO `score` VALUES (4, 1, 86, '期中');
INSERT INTO `score` VALUES (3, 8, 95, '期中');
INSERT INTO `score` VALUES (4, 2, 53, '期中');
INSERT INTO `score` VALUES (3, 9, 85, '期中');
INSERT INTO `score` VALUES (4, 3, 56, '期末');
INSERT INTO `score` VALUES (4, 1, 86, '期中');
INSERT INTO `score` VALUES (4, 4, 23, '期中');
INSERT INTO `score` VALUES (4, 2, 53, '期中');
INSERT INTO `score` VALUES (4, 5, 56, '期中');
INSERT INTO `score` VALUES (4, 6, 89, '期末');
INSERT INTO `score` VALUES (4, 3, 56, '期末');
INSERT INTO `score` VALUES (4, 7, 79, '期末');
INSERT INTO `score` VALUES (4, 4, 23, '期中');
INSERT INTO `score` VALUES (4, 8, 79, '期中');
INSERT INTO `score` VALUES (4, 5, 56, '期中');
INSERT INTO `score` VALUES (4, 9, 86, '期中');
INSERT INTO `score` VALUES (4, 6, 89, '期中');
INSERT INTO `score` VALUES (4, 7, 79, '期中');
INSERT INTO `score` VALUES (4, 8, 79, '期中');
INSERT INTO `score` VALUES (4, 9, 86, '期中');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `id` bigint(11) NOT NULL,
  `sex` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (1, '男', '郑首年');
INSERT INTO `students` VALUES (2, '男', '姜斌');
INSERT INTO `students` VALUES (3, '女', '谢培');
INSERT INTO `students` VALUES (4, '女', '周晶');

SET FOREIGN_KEY_CHECKS = 1;
