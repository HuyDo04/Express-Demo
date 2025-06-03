/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : localhost:3306
 Source Schema         : tiktokclone_dev

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 03/06/2025 12:43:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `sid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `updated_at` datetime(0) NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('03cf8dea-252b-4d8b-b564-a189152e58ee', NULL, '2025-06-03 12:25:47', '2025-06-03 12:25:47');
INSERT INTO `sessions` VALUES ('10f69283-9b6e-40d9-96fd-99d225aa6185', NULL, '2025-06-03 12:20:06', '2025-06-03 12:20:06');
INSERT INTO `sessions` VALUES ('1313e36e-448e-49e9-a56b-b6dfa1f74f47', '{\"userId\":121}', '2025-06-03 12:33:26', '2025-06-03 12:34:59');
INSERT INTO `sessions` VALUES ('16047727-64c8-404f-8adc-69aa5bebe9bc', NULL, '2025-06-03 12:25:38', '2025-06-03 12:25:38');
INSERT INTO `sessions` VALUES ('1647b46a-6e60-4a56-a51c-ae1406049d31', '{\"userId\":121}', '2025-06-03 12:38:08', '2025-06-03 12:38:15');
INSERT INTO `sessions` VALUES ('4ae7afa3-bc24-4d3f-90ba-0a12049d2d7d', '{}', '2025-06-03 12:26:02', '2025-06-03 12:26:02');
INSERT INTO `sessions` VALUES ('4e1dc3b5-d011-475d-a4c2-7c9031bcf30b', '{}', '2025-06-03 12:30:00', '2025-06-03 12:30:00');
INSERT INTO `sessions` VALUES ('50e1d383-dca0-4007-8ec1-b006e8dbd9f5', '{\"name\":\"nguyen van a\",\"userId\":121}', '2025-06-02 17:31:50', '2025-06-03 11:43:39');
INSERT INTO `sessions` VALUES ('65270f0e-56df-41ec-8554-e11044cdff70', NULL, '2025-06-03 12:25:46', '2025-06-03 12:25:46');
INSERT INTO `sessions` VALUES ('68bac218-7bf6-457c-a133-66ba4349a614', '{\"userId\":121}', '2025-06-03 12:36:20', '2025-06-03 12:36:28');
INSERT INTO `sessions` VALUES ('71d5ad8f-c9a4-487f-819e-49553ceb67ac', NULL, '2025-06-03 12:18:47', '2025-06-03 12:18:47');
INSERT INTO `sessions` VALUES ('72b9ece5-0226-422b-ae3b-0f65c6b961b8', NULL, '2025-06-03 12:25:45', '2025-06-03 12:25:45');
INSERT INTO `sessions` VALUES ('7cd9d81b-b4ba-438f-9bd3-01f3fbed7d95', NULL, '2025-06-03 12:25:48', '2025-06-03 12:25:48');
INSERT INTO `sessions` VALUES ('9b602834-df1f-43d7-96cf-5dff5d6d6122', '{\"userId\":121}', '2025-06-03 12:22:04', '2025-06-03 12:22:21');
INSERT INTO `sessions` VALUES ('a080206f-09e8-476a-94cc-ac1981c01d68', NULL, '2025-06-03 12:18:50', '2025-06-03 12:18:50');
INSERT INTO `sessions` VALUES ('a7ceb06a-aee2-4117-b424-eb481cb10a13', NULL, '2025-06-03 12:19:07', '2025-06-03 12:19:07');
INSERT INTO `sessions` VALUES ('aaf6c9c1-3d14-4904-84da-c8b77ce1ac80', NULL, '2025-06-03 12:18:44', '2025-06-03 12:18:44');
INSERT INTO `sessions` VALUES ('b2351fc4-1ee9-42b3-a4ca-a3ee8b758abd', NULL, '2025-06-03 12:25:47', '2025-06-03 12:25:47');
INSERT INTO `sessions` VALUES ('c665cde6-7640-4f03-be61-6bb906c5700c', NULL, '2025-06-03 12:28:36', '2025-06-03 12:28:36');
INSERT INTO `sessions` VALUES ('cebe28e6-010c-40fa-a6ca-74d3a9103a4f', NULL, '2025-06-03 12:28:01', '2025-06-03 12:28:01');
INSERT INTO `sessions` VALUES ('d137d4e7-1c45-4958-9757-b42decce73aa', NULL, '2025-06-03 12:25:47', '2025-06-03 12:25:47');
INSERT INTO `sessions` VALUES ('e5b0ae28-ff1d-4a41-976f-316be65825da', NULL, '2025-06-03 12:25:45', '2025-06-03 12:25:45');
INSERT INTO `sessions` VALUES ('fcf2212f-dd8b-423e-90fd-5071e806a835', NULL, '2025-06-03 12:25:46', '2025-06-03 12:25:46');

SET FOREIGN_KEY_CHECKS = 1;
