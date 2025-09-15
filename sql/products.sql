/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MariaDB
 Source Server Version : 110802
 Source Host           : localhost:3306
 Source Schema         : tiktok_clone

 Target Server Type    : MariaDB
 Target Server Version : 110802
 File Encoding         : 65001

 Date: 07/07/2025 20:12:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Giày Nike001');
INSERT INTO `products` VALUES (2, 'Giày Adidas');
INSERT INTO `products` VALUES (5, 'Giày Nike002');
INSERT INTO `products` VALUES (6, 'Giày Adidas002');

SET FOREIGN_KEY_CHECKS = 1;
