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

 Date: 07/07/2025 20:12:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category_product
-- ----------------------------
DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `category_id` int(11) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id_foreign`(`category_id`) USING BTREE,
  INDEX `product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_product
-- ----------------------------
INSERT INTO `category_product` VALUES (1, 1, 1);
INSERT INTO `category_product` VALUES (2, 2, 1);
INSERT INTO `category_product` VALUES (3, 5, 2);
INSERT INTO `category_product` VALUES (4, 6, 2);

SET FOREIGN_KEY_CHECKS = 1;
