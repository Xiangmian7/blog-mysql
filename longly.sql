/*
 Navicat Premium Data Transfer

 Source Server         : yqj
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : longly

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 01/07/2023 13:26:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `classify` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `user_id` int NOT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (66, '第一篇文章标题', 'Vue 是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，不仅易于上手，还便于与第三方库或既有项目整合。另一方面，当与现代化的工具链以及各种支持类库结合使用时，Vue 也完全能够为复杂的单页应用提供驱动。', '前端', NULL, 1, '2023-06-30 17:39:35', '2023-06-30 17:39:35');
INSERT INTO `article` VALUES (67, '第二篇文章标题', 'JavaScript（简称“JS”）是一种具有函数优先的轻量级，解释型或即时编译型的编程语言。虽然它是作为开发Web页面的脚本语言而出名，但是它也被用到了很多非浏览器环境中，JavaScript基于原型编程、多范式的动态脚本语言，并且支持面向对象、命令式、声明式、函数式编程范式。', '前端', NULL, 1, '2023-06-30 17:40:44', '2023-06-30 17:40:44');
INSERT INTO `article` VALUES (68, 'mysql数据库学习', 'JavaScript（简称“JS”）是一种具有函数优先的轻量级，解释型或即时编译型的编程语言。虽然它是作为开发Web页面的脚本语言而出名，但是它也被用到了很多非浏览器环境中，JavaScript基于原型编程、多范式的动态脚本语言，并且支持面向对象、命令式、声明式、函数式编程范式。 [1]', '开发', NULL, 1, '2023-06-30 17:42:28', '2023-06-30 17:42:28');
INSERT INTO `article` VALUES (69, 'react框架', 'React是用于构建用户界面的JavaScript库， [1] 起源于Facebook的内部项目，该公司对市场上所有 JavaScript MVC框架都不满意，决定自行开发一套，用于架设Instagram的网站。于2013年5月开源。', '前端', NULL, 1, '2023-06-30 17:44:07', '2023-06-30 17:44:07');
INSERT INTO `article` VALUES (70, 'elementplusUI框架', 'Element Plus 是一个基于 Vue 3 的高质量 UI 组件库。它包含了丰富的组件和扩展功能，例如表格、表单、按钮、导航、通知等，让开发者能够快速构建高质量的 Web 应用。Element Plus 的设计理念是：提供开箱即用的 UI 组件和扩展功能，帮助开发者快速构建应用程序，同时提供详细的文档和教程，让开发者更好地掌握和使用 Element Plus。', 'UI框架', NULL, 1, '2023-06-30 17:45:36', '2023-06-30 17:45:36');

-- ----------------------------
-- Table structure for article_label
-- ----------------------------
DROP TABLE IF EXISTS `article_label`;
CREATE TABLE `article_label`  (
  `article_id` int NOT NULL,
  `label_id` int NOT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`article_id`, `label_id`) USING BTREE,
  INDEX `label_id`(`label_id` ASC) USING BTREE,
  CONSTRAINT `article_label_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `article_label_ibfk_2` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_label
-- ----------------------------
INSERT INTO `article_label` VALUES (66, 47, '2023-06-30 17:39:35', '2023-06-30 17:39:35');
INSERT INTO `article_label` VALUES (66, 48, '2023-06-30 17:39:35', '2023-06-30 17:39:35');
INSERT INTO `article_label` VALUES (67, 49, '2023-06-30 17:40:44', '2023-06-30 17:40:44');
INSERT INTO `article_label` VALUES (67, 50, '2023-06-30 17:40:44', '2023-06-30 17:40:44');
INSERT INTO `article_label` VALUES (68, 51, '2023-06-30 17:42:28', '2023-06-30 17:42:28');
INSERT INTO `article_label` VALUES (68, 52, '2023-06-30 17:42:28', '2023-06-30 17:42:28');
INSERT INTO `article_label` VALUES (69, 48, '2023-06-30 17:44:07', '2023-06-30 17:44:07');
INSERT INTO `article_label` VALUES (69, 53, '2023-06-30 17:44:07', '2023-06-30 17:44:07');
INSERT INTO `article_label` VALUES (70, 54, '2023-06-30 17:45:36', '2023-06-30 17:45:36');
INSERT INTO `article_label` VALUES (70, 55, '2023-06-30 17:45:36', '2023-06-30 17:45:36');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avatar` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `article_id` int NULL DEFAULT NULL,
  `comment_id` int NULL DEFAULT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comment_id`(`comment_id` ASC) USING BTREE,
  INDEX `article_id`(`article_id` ASC) USING BTREE,
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for friendchain
-- ----------------------------
DROP TABLE IF EXISTS `friendchain`;
CREATE TABLE `friendchain`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatarUrl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `websiteDescription` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `websiteUrl` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friendchain
-- ----------------------------
INSERT INTO `friendchain` VALUES (3, 'https://p.luckyz.top/i/2023/04/26/64491b66defdd.jpg', '相眠', '心似双丝网，中有千千结', 'https://blog.luckyz.top', '2023-06-30 17:54:25', '2023-06-30 17:54:25');

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES (47, 'vue', '2023-06-30 17:39:35', '2023-06-30 17:39:35');
INSERT INTO `label` VALUES (48, '前端框架', '2023-06-30 17:39:35', '2023-06-30 17:39:35');
INSERT INTO `label` VALUES (49, 'js', '2023-06-30 17:40:44', '2023-06-30 17:40:44');
INSERT INTO `label` VALUES (50, '编程语言', '2023-06-30 17:40:44', '2023-06-30 17:40:44');
INSERT INTO `label` VALUES (51, 'MySQL', '2023-06-30 17:42:28', '2023-06-30 17:42:28');
INSERT INTO `label` VALUES (52, '数据库', '2023-06-30 17:42:28', '2023-06-30 17:42:28');
INSERT INTO `label` VALUES (53, 'react', '2023-06-30 17:44:07', '2023-06-30 17:44:07');
INSERT INTO `label` VALUES (54, 'elementplus', '2023-06-30 17:45:36', '2023-06-30 17:45:36');
INSERT INTO `label` VALUES (55, '前端ui框架', '2023-06-30 17:45:36', '2023-06-30 17:45:36');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avatar` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `message_id` int NULL DEFAULT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `message_id`(`message_id` ASC) USING BTREE,
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (111, '叶千菁', 'http://q2.qlogo.cn/headimg_dl?dst_uin=2028880294&spec=100', 'hello，world！！！', NULL, '2023-06-30 17:48:39', '2023-06-30 17:48:39');
INSERT INTO `message` VALUES (112, '心悸', 'http://q2.qlogo.cn/headimg_dl?dst_uin=50599484&spec=100', '建站成功啦！！！', NULL, '2023-06-30 17:49:20', '2023-06-30 17:49:20');

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mimetype` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `size` int NOT NULL,
  `article_id` int NOT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `article_id`(`article_id` ASC) USING BTREE,
  CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of picture
-- ----------------------------

-- ----------------------------
-- Table structure for tool
-- ----------------------------
DROP TABLE IF EXISTS `tool`;
CREATE TABLE `tool`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tool
-- ----------------------------
INSERT INTO `tool` VALUES (25, '阿里巴巴矢量图标库', 'https://www.iconfont.cn/help/detail?spm=a313x.7781069.1998910419.d8cf4382a&helptype=code', '2023-06-30 17:52:12', '2023-06-30 17:52:12');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'yqj741452', 'f2391dff40d2719777dcab2c55842aa9', '2023-03-18 12:53:45', '2023-03-18 12:53:45');

SET FOREIGN_KEY_CHECKS = 1;
