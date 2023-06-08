/*
 Navicat Premium Data Transfer

 Source Server         : lgd
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : ssm_hbb

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 24/06/2022 11:03:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cart_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `ice_id` int(0) NOT NULL COMMENT '绑定商品id',
  `total` int(0) NULL DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`cart_id`) USING BTREE,
  INDEX `ice`(`ice_id`) USING BTREE,
  CONSTRAINT `ice` FOREIGN KEY (`ice_id`) REFERENCES `ice` (`ice_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (45, 4, 1);

-- ----------------------------
-- Table structure for ice
-- ----------------------------
DROP TABLE IF EXISTS `ice`;
CREATE TABLE `ice`  (
  `ice_id` int(0) NOT NULL AUTO_INCREMENT,
  `ice_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ice_price` double(10, 2) NOT NULL,
  `ice_data` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ice_status` int(0) NULL DEFAULT NULL COMMENT '0可出售1不可出售',
  `ice_images` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ice
-- ----------------------------
INSERT INTO `ice` VALUES (1, '花脸雪糕', 8.00, '2022-06-12', 100, '/static/images/花脸雪糕.jpg');
INSERT INTO `ice` VALUES (2, '蓝莓圣代', 6.00, '2022-06-12', 111, '/static/images/蓝莓圣代.jpg');
INSERT INTO `ice` VALUES (3, '绿舌头', 4.00, '2022-06-12', 123, '/static/images/绿舌头.jpg');
INSERT INTO `ice` VALUES (4, '巧乐兹', 7.00, '2022-06-12', 322, '/static/images/巧乐兹.jpg');
INSERT INTO `ice` VALUES (5, '趣享杯', 9.00, '2022-06-12', 113, '/static/images/趣享杯.jpg');
INSERT INTO `ice` VALUES (6, '三色糕', 4.00, '2022-06-12', 115, '/static/images/三色糕.jpg');
INSERT INTO `ice` VALUES (7, '水果陀', 3.00, '2022-06-12', 114, '/static/images/水果陀.jpg');
INSERT INTO `ice` VALUES (12, '草莓圣代', 6.00, '2022-06-20', 124, '/static/images/草莓圣代.jpg');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `order_user_fk`(`user_id`) USING BTREE,
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 1);
INSERT INTO `order` VALUES (4, 1);
INSERT INTO `order` VALUES (5, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_pass` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_status` int(0) NULL DEFAULT 1 COMMENT '0用户1管理员',
  `user_yue` double(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '李国栋', '123', 0, 1000);
INSERT INTO `user` VALUES (2, '王立业', '123', 1, 10);
INSERT INTO `user` VALUES (3, '孙浩男', '123', 1, 20);
INSERT INTO `user` VALUES (13, '大超', '123', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
