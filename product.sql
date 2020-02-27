/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : product

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 27/02/2020 19:13:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `custname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `vip` int(1) NULL DEFAULT NULL COMMENT '0：普通客户 1：大客户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, '张三', '北京', '18698521236', 0);
INSERT INTO `customers` VALUES (2, '李四', '上海', '13258964874', 0);
INSERT INTO `customers` VALUES (3, '王五', '郑州', '15987456325', 0);
INSERT INTO `customers` VALUES (4, '史蒂夫', '美国', '25689', 1);
INSERT INTO `customers` VALUES (5, '贝尔', '德国', '16464', 1);
INSERT INTO `customers` VALUES (6, '彭家坪', '天津', '19587463254', 1);
INSERT INTO `customers` VALUES (7, '史蒂夫', '郑州', '11111', 0);
INSERT INTO `customers` VALUES (25, '谷歌', '美国', '404', 1);
INSERT INTO `customers` VALUES (26, '微软', '天津', '1221', 1);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `price` double(255, 2) NULL DEFAULT NULL COMMENT '价格',
  `number` int(11) NULL DEFAULT NULL COMMENT '数量',
  `pdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '气动元件', 23.00, 55, '水暖器件', 'p1.jpg');
INSERT INTO `product` VALUES (2, '三通球阀', 12.00, 99, '水暖器件', 'p2.jpg');
INSERT INTO `product` VALUES (3, '4分内牙铜网通', 19.00, 50, '水暖器件', 'p3.jpg');
INSERT INTO `product` VALUES (4, '水暖器件', 25.00, 66, '水暖器件', 'p4.jpg');
INSERT INTO `product` VALUES (5, '过滤器', 29.00, 47, '水暖器件', 'p5.jpg');
INSERT INTO `product` VALUES (6, '内螺纹铜管帽', 33.00, 79, '水暖器件', 'p6.jpg');
INSERT INTO `product` VALUES (8, '啊啊啊', 22.00, 68, '测试', '97caa1b9-ee36-4cdc-9091-14bda8a2479e.png');

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `count` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  `money` double(255, 0) NULL DEFAULT NULL COMMENT '总金额',
  `sdate` date NULL DEFAULT NULL COMMENT '销售时间',
  `saler` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售人员',
  `type` int(255) NULL DEFAULT NULL COMMENT '销售类型：0：线上 1：线下',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES (1, '气动元件q', 100, 2300, '2020-02-13', '张三', 0);
INSERT INTO `sales` VALUES (2, '三通球阀', 100, 1200, '2020-02-20', '李四', 0);
INSERT INTO `sales` VALUES (3, '4分内牙铜网通', 100, 1900, '2020-02-23', '张三', 1);
INSERT INTO `sales` VALUES (4, '过滤器', 999, 89890, '2020-02-01', '王五', 1);
INSERT INTO `sales` VALUES (5, '内螺纹铜管帽', 666, 69696, '2020-02-13', '李四', 1);
INSERT INTO `sales` VALUES (6, 'qwe', 222, 222, '2020-02-26', 'aa', 1);
INSERT INTO `sales` VALUES (7, '水龙头', 18, 888, '2020-02-13', '王五', 0);
INSERT INTO `sales` VALUES (8, '水泵', 9, 999, '2020-02-20', '张三', 0);

-- ----------------------------
-- Table structure for sys_log_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_login`;
CREATE TABLE `sys_log_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logintime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 286 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log_login
-- ----------------------------
INSERT INTO `sys_log_login` VALUES (276, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 09:23:21');
INSERT INTO `sys_log_login` VALUES (277, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 09:48:19');
INSERT INTO `sys_log_login` VALUES (278, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 09:49:50');
INSERT INTO `sys_log_login` VALUES (279, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 09:50:59');
INSERT INTO `sys_log_login` VALUES (280, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 09:52:47');
INSERT INTO `sys_log_login` VALUES (281, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 09:56:30');
INSERT INTO `sys_log_login` VALUES (282, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 10:04:40');
INSERT INTO `sys_log_login` VALUES (283, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 10:09:37');
INSERT INTO `sys_log_login` VALUES (284, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 11:10:11');
INSERT INTO `sys_log_login` VALUES (285, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 11:10:24');

-- ----------------------------
-- Table structure for sys_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `open` int(255) NULL DEFAULT NULL COMMENT '0不打1打开',
  `isParent` int(255) NULL DEFAULT NULL COMMENT '0非父节点1父节点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES (1, 0, '水暖器件管理系统', '', 1, 1);
INSERT INTO `sys_menus` VALUES (2, 1, '客户管理', '', 1, 1);
INSERT INTO `sys_menus` VALUES (3, 1, '产品管理', 'productManager.jsp', 0, 0);
INSERT INTO `sys_menus` VALUES (4, 1, '销售管理', '', 1, 1);
INSERT INTO `sys_menus` VALUES (6, 4, '线上销售', 'onlineSales.jsp', 0, 0);
INSERT INTO `sys_menus` VALUES (7, 4, '线下销售', 'offlineSales.jsp', 0, 0);
INSERT INTO `sys_menus` VALUES (14, 1, '数据统计', '', 1, 1);
INSERT INTO `sys_menus` VALUES (15, 14, '客户地区统计', 'customerShow.jsp', 0, 0);
INSERT INTO `sys_menus` VALUES (16, 14, '产品信息统计', 'productShow.jsp', 0, 0);
INSERT INTO `sys_menus` VALUES (23, 2, '普通客户', 'customersManage.jsp', 0, 0);
INSERT INTO `sys_menus` VALUES (24, 2, '大客户', 'BigcustomersManage.jsp', 0, 0);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`rid`, `mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);
INSERT INTO `sys_role_menu` VALUES (1, 23);
INSERT INTO `sys_role_menu` VALUES (1, 24);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 7);
INSERT INTO `sys_role_menu` VALUES (2, 8);
INSERT INTO `sys_role_menu` VALUES (2, 9);
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 5);
INSERT INTO `sys_role_menu` VALUES (3, 10);
INSERT INTO `sys_role_menu` VALUES (3, 11);
INSERT INTO `sys_role_menu` VALUES (3, 12);
INSERT INTO `sys_role_menu` VALUES (3, 13);
INSERT INTO `sys_role_menu` VALUES (3, 18);
INSERT INTO `sys_role_menu` VALUES (3, 21);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 14);
INSERT INTO `sys_role_menu` VALUES (4, 15);
INSERT INTO `sys_role_menu` VALUES (4, 16);
INSERT INTO `sys_role_menu` VALUES (4, 17);
INSERT INTO `sys_role_menu` VALUES (4, 20);
INSERT INTO `sys_role_menu` VALUES (14, 2);
INSERT INTO `sys_role_menu` VALUES (14, 3);
INSERT INTO `sys_role_menu` VALUES (14, 6);
INSERT INTO `sys_role_menu` VALUES (14, 7);
INSERT INTO `sys_role_menu` VALUES (14, 8);
INSERT INTO `sys_role_menu` VALUES (14, 9);
INSERT INTO `sys_role_menu` VALUES (15, 3);
INSERT INTO `sys_role_menu` VALUES (15, 4);
INSERT INTO `sys_role_menu` VALUES (15, 6);
INSERT INTO `sys_role_menu` VALUES (15, 7);
INSERT INTO `sys_role_menu` VALUES (15, 8);
INSERT INTO `sys_role_menu` VALUES (16, 15);

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`, `rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (3, 1);
INSERT INTO `sys_role_user` VALUES (3, 2);
INSERT INTO `sys_role_user` VALUES (3, 3);
INSERT INTO `sys_role_user` VALUES (3, 4);
INSERT INTO `sys_role_user` VALUES (4, 2);
INSERT INTO `sys_role_user` VALUES (5, 3);
INSERT INTO `sys_role_user` VALUES (8, 4);

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roledesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES (1, '超级管理员', '拥有所有菜单权限');
INSERT INTO `sys_roles` VALUES (2, '业务管理员', '拥有所以业务菜单');
INSERT INTO `sys_roles` VALUES (3, '系统管理员', '管理系统');
INSERT INTO `sys_roles` VALUES (4, '数据统计管理员', '数据统计管理员');
INSERT INTO `sys_roles` VALUES (15, 'JZJ', 'qq');
INSERT INTO `sys_roles` VALUES (16, '啊啊1', '啊啊1');

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(255) NULL DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(255) NULL DEFAULT 2 COMMENT '1，超级管理员,2，系统用户',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES (1, 'a', '4313341334413', '超级管理员', 1, '武汉', '134441331311', '1', 'CEO', 1);
INSERT INTO `sys_users` VALUES (3, 'zhangsan', '3413334134131131', '张三', 1, '武汉', '134131313111', '123456', 'BA', 2);
INSERT INTO `sys_users` VALUES (4, 'lisi', '43311341311314341', '李四', 1, '武汉', '1341314113131', '123456', '扫地的', 2);
INSERT INTO `sys_users` VALUES (5, 'wangwu', '4313133131331312', '王五', 1, '武汉', '13413131131', '123456', '领导', 2);
INSERT INTO `sys_users` VALUES (8, 'zhaoliu', '431333133312221', '赵六', 1, '武汉', '135133331131', '123456', 'BA', 2);

SET FOREIGN_KEY_CHECKS = 1;
