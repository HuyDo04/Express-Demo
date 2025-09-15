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

 Date: 07/07/2025 20:11:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for queues
-- ----------------------------
DROP TABLE IF EXISTS `queues`;
CREATE TABLE `queues`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT 'pending',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `retries_count` int(11) NULL DEFAULT 0,
  `max_retries` int(11) NULL DEFAULT 0,
  `created_at` datetime(0) NULL DEFAULT current_timestamp,
  `updated_at` datetime(0) NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 150 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of queues
-- ----------------------------
INSERT INTO `queues` VALUES (119, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:16:08', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (120, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:22:14', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (121, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:22:15', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (122, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:22:45', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (123, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:22:46', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (124, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:25:08', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (125, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:25:12', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (126, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:30:22', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (127, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:30:22', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (128, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:30:28', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (129, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:42:32', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (130, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:42:33', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (131, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:42:41', '2025-06-26 00:48:54');
INSERT INTO `queues` VALUES (132, 'processing', NULL, NULL, 0, 3, '2025-06-25 17:50:47', '2025-06-26 00:50:47');
INSERT INTO `queues` VALUES (133, 'pending', NULL, NULL, 0, 3, '2025-06-25 18:32:59', '2025-06-26 01:32:59');
INSERT INTO `queues` VALUES (134, 'pending', NULL, NULL, 0, 3, '2025-06-25 18:32:59', '2025-06-26 01:32:59');
INSERT INTO `queues` VALUES (135, 'reject', 'sendVerifyEmailJob', '{\"userId\":141}', 0, 0, '2025-06-26 11:58:24', '2025-06-26 11:59:22');
INSERT INTO `queues` VALUES (136, 'completed', 'sendVerifyEmailJob', '{\"userId\":141}', 0, 0, '2025-06-26 11:59:24', '2025-06-26 11:59:28');
INSERT INTO `queues` VALUES (137, 'completed', 'sendVerifyEmailJob', '{\"userId\":141}', 0, 0, '2025-06-26 12:03:19', '2025-06-26 12:03:24');
INSERT INTO `queues` VALUES (138, 'pending', NULL, NULL, 0, 3, '2025-06-28 03:38:58', '2025-06-28 10:38:58');
INSERT INTO `queues` VALUES (139, 'pending', NULL, NULL, 0, 3, '2025-06-28 03:39:27', '2025-06-28 10:39:27');
INSERT INTO `queues` VALUES (140, 'pending', NULL, NULL, 0, 3, '2025-06-28 03:40:02', '2025-06-28 10:40:02');
INSERT INTO `queues` VALUES (141, 'pending', NULL, NULL, 0, 3, '2025-06-28 03:40:03', '2025-06-28 10:40:03');
INSERT INTO `queues` VALUES (142, 'completed', 'sendVerifyEmailJob', '{\"userId\":141}', 0, 3, '2025-06-28 03:40:14', '2025-06-28 10:40:18');
INSERT INTO `queues` VALUES (143, 'pending', NULL, '{\"userId\":141}', 0, 0, '2025-07-02 11:45:29', '2025-07-02 11:45:29');
INSERT INTO `queues` VALUES (144, 'pending', NULL, '{\"userId\":141}', 0, 0, '2025-07-02 11:47:51', '2025-07-02 11:47:51');
INSERT INTO `queues` VALUES (145, 'pending', NULL, '{\"userId\":141}', 0, 0, '2025-07-02 11:47:53', '2025-07-02 11:47:53');
INSERT INTO `queues` VALUES (146, 'pending', NULL, '{\"userId\":141}', 0, 0, '2025-07-02 11:47:56', '2025-07-02 11:47:56');
INSERT INTO `queues` VALUES (147, 'pending', NULL, '{\"userId\":141}', 0, 0, '2025-07-02 11:48:07', '2025-07-02 11:48:07');
INSERT INTO `queues` VALUES (148, 'completed', 'sendVerifyEmailJob', '{\"userId\":141}', 0, 0, '2025-07-02 11:53:16', '2025-07-02 11:53:19');
INSERT INTO `queues` VALUES (149, 'completed', 'sendVerifyEmailJob', '{\"userId\":141}', 0, 0, '2025-07-02 11:54:15', '2025-07-02 11:54:19');

SET FOREIGN_KEY_CHECKS = 1;
