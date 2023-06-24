/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : supermarket

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 27/04/2021 23:10:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category`  (
  `cateid` int(50) NOT NULL AUTO_INCREMENT COMMENT '类别id',
  `catename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类别名称',
  `isdel` int(50) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`cateid`) USING BTREE,
  INDEX `catename`(`catename`) USING BTREE,
  INDEX `isdel`(`isdel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES (1, '百货类1', 0);
INSERT INTO `tb_category` VALUES (2, '食品类', 0);
INSERT INTO `tb_category` VALUES (3, '零食类', 0);
INSERT INTO `tb_category` VALUES (4, '海鲜类', 0);
INSERT INTO `tb_category` VALUES (5, '熟肉类', 0);
INSERT INTO `tb_category` VALUES (6, '蔬菜类', 0);
INSERT INTO `tb_category` VALUES (7, '生肉类', 0);

-- ----------------------------
-- Table structure for tb_customer
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer`  (
  `custid` int(50) NOT NULL AUTO_INCREMENT,
  `custname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户名',
  `custphone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户电话',
  `custemail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '客户邮箱',
  `custvip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'vip编号',
  PRIMARY KEY (`custid`) USING BTREE,
  INDEX `custname`(`custname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_customer
-- ----------------------------
INSERT INTO `tb_customer` VALUES (3, '王五1', '13688888888', '111111@qq.com', 'opyz52nHM8');
INSERT INTO `tb_customer` VALUES (4, '张小明', '0755-9123131', '213123@sina.com', 'KFXmyTy3As');
INSERT INTO `tb_customer` VALUES (5, '雷生', '027-11011011', '6666@66.com', 'qfQi2XvCM3');
INSERT INTO `tb_customer` VALUES (6, '张三1', '13622222222', '111@qq.com', 'VZwD3ie62m');

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods`  (
  `gid` int(50) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `gname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `gprice` double(50, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `gquantity` int(50) NULL DEFAULT 0 COMMENT '商品数量',
  `providerid` int(50) NULL DEFAULT NULL COMMENT '供货商编号',
  `dangerquantity` int(50) NULL DEFAULT NULL,
  `size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格',
  `goodspackage` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格类型',
  `gnumbering` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品条码',
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES (8, '蛋黄派', 15.00, 8, 2, 0, '500g', '袋', 'QyWIm9D5');
INSERT INTO `tb_goods` VALUES (9, '法式软面包', 36.90, 0, 2, 150, '3000g', '袋', 'cNnmUS50');
INSERT INTO `tb_goods` VALUES (10, '香辣花生', 36.90, 0, 8, 222, '3000g', '袋', 'uw2r8HV1');
INSERT INTO `tb_goods` VALUES (11, '可可甜心', 31.90, 0, 8, 20, '1000g', '袋', 'K2EC2UmX');
INSERT INTO `tb_goods` VALUES (12, '法式软面包', 32.90, 0, 9, 20, '2000g', '袋', 'dAplaVu7');
INSERT INTO `tb_goods` VALUES (13, '米老头', 33.90, 0, 9, 20, '3000g', '袋', 'fqwL1WKh');
INSERT INTO `tb_goods` VALUES (14, '麦香鸡块', 34.90, 0, 9, 20, '4000g', '袋', 'T2av2wDe');
INSERT INTO `tb_goods` VALUES (15, '荷兰豆', 35.90, 0, 9, 20, '100g', '袋', 'GMRc4wLF');
INSERT INTO `tb_goods` VALUES (16, '巧克力威化饼', 36.90, 0, 8, 20, '200g', '袋', 'IJtj8GSE');
INSERT INTO `tb_goods` VALUES (17, '鱿鱼丝', 37.90, 73, 11, 20, '300g', '袋', 'VAyJD2Oc');
INSERT INTO `tb_goods` VALUES (18, '大果粒', 38.90, 0, 11, 20, '40g', '袋', 'zM8TGhZk');
INSERT INTO `tb_goods` VALUES (19, '开心果', 39.90, 0, 11, 20, '50g', '袋', 'yMi96xuf');
INSERT INTO `tb_goods` VALUES (20, '蒜香花生', 11.90, 0, 11, 20, '6g', '袋', '19Ft4vBT');
INSERT INTO `tb_goods` VALUES (21, '雪鱼柳', 20.90, 0, 11, 20, '700g', '袋', '6FyN8NrO');
INSERT INTO `tb_goods` VALUES (22, '牛肉干', 22.90, 0, 11, 20, '800g', '袋', 'wKu4S9xQ');
INSERT INTO `tb_goods` VALUES (23, '正林西瓜子', 322.90, 0, 4, 20, '900g', '袋', 'HExBiHv9');
INSERT INTO `tb_goods` VALUES (24, '牛蹄筋', 32.90, 0, 4, 20, '1000g', '袋', 'A80RL7PG');
INSERT INTO `tb_goods` VALUES (25, '巧克力派', 31.90, 0, 4, 20, '1100g', '袋', '7qnuPWd8');
INSERT INTO `tb_goods` VALUES (26, '北京锅巴', 46.90, 0, 4, 20, '1200g', '袋', '8YfjnonO');
INSERT INTO `tb_goods` VALUES (27, '旺仔QQ糖', 16.90, 0, 3, 20, '1300g', '袋', 'BpukaVmE');
INSERT INTO `tb_goods` VALUES (28, '海苔', 26.90, 0, 3, 20, '1400g', '袋', 'iolcY3re');
INSERT INTO `tb_goods` VALUES (29, '酪夹面包', 56.90, 0, 3, 20, '1500g', '袋', 'RKEPDUHx');
INSERT INTO `tb_goods` VALUES (30, '话梅', 76.90, 0, 3, 20, '1600g', '袋', 'AwZgjFDt');
INSERT INTO `tb_goods` VALUES (31, '草莓蛋卷', 86.90, 0, 2, 20, '1700g', '袋', 'AsTTFph9');
INSERT INTO `tb_goods` VALUES (32, '水晶糖', 116.90, 0, 2, 20, '1800g', '袋', 'rZzoV61l');
INSERT INTO `tb_goods` VALUES (33, '泡芙', 10.90, 0, 2, 20, '200g', '袋', 'hjni4dKK');
INSERT INTO `tb_goods` VALUES (34, '麦芽糖', 11.90, 0, 2, 20, '300g', '袋', 'XAmHJc2G');
INSERT INTO `tb_goods` VALUES (35, '香草冰淇淋', 10.90, 0, 1, 0, '300g', '袋', 'ezDRe8eM');
INSERT INTO `tb_goods` VALUES (36, '饼干', 12.90, 500, 1, 20, '300g', '袋', 'OiSnmltJ');
INSERT INTO `tb_goods` VALUES (37, '煎饼', 13.90, 300, 1, 20, '300g', '袋', 'INaaqWm9');
INSERT INTO `tb_goods` VALUES (38, '跳跳糖', 14.90, 19, 1, 20, '300g', '袋', 'GRvJBWBS');
INSERT INTO `tb_goods` VALUES (39, '唐僧肉', 15.90, 50, 1, 20, '300g', '袋', 'K00ob15T');
INSERT INTO `tb_goods` VALUES (40, '挑豆', 16.90, 100, 1, 20, '400g', '袋', 'p2aYwqsR');
INSERT INTO `tb_goods` VALUES (41, '辣条', 1.00, 0, 1, 20, '20g', '袋', 'G1vTDX7s');
INSERT INTO `tb_goods` VALUES (42, '小饼干', 5.00, 0, 1, 200, '20g', '袋', 'drHWAH0R');

-- ----------------------------
-- Table structure for tb_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_category`;
CREATE TABLE `tb_goods_category`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `categoryid` int(50) NULL DEFAULT NULL,
  `goodsid` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_goods_category
-- ----------------------------
INSERT INTO `tb_goods_category` VALUES (3, 1, 8);

-- ----------------------------
-- Table structure for tb_inport
-- ----------------------------
DROP TABLE IF EXISTS `tb_inport`;
CREATE TABLE `tb_inport`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `inptime` datetime(0) NULL DEFAULT NULL,
  `operateperson` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `number` int(50) NULL DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `inpprice` double NULL DEFAULT NULL,
  `providerid` int(50) NULL DEFAULT NULL,
  `goodsid` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_inport
-- ----------------------------
INSERT INTO `tb_inport` VALUES (5, '2021-01-11 21:06:23', '张三', 450, '', 10, 2, 8);
INSERT INTO `tb_inport` VALUES (6, '2021-02-16 09:22:36', '张三', 20, '', 20, 1, 38);
INSERT INTO `tb_inport` VALUES (7, '2021-03-10 09:27:41', '张三', 19, '', 35, 1, 38);
INSERT INTO `tb_inport` VALUES (8, '2021-03-30 09:28:46', '张三', 1000, '', 5, 1, 35);
INSERT INTO `tb_inport` VALUES (9, '2021-04-16 09:28:55', '张三', 500, '', 10, 1, 36);
INSERT INTO `tb_inport` VALUES (10, '2021-04-16 09:29:09', '张三', 300, '', 3, 1, 37);
INSERT INTO `tb_inport` VALUES (11, '2021-04-16 09:29:21', '张三', 50, '', 1, 1, 39);
INSERT INTO `tb_inport` VALUES (12, '2021-04-16 09:29:33', '张三', 100, '', 2, 1, 40);
INSERT INTO `tb_inport` VALUES (13, '2021-04-16 09:29:41', '张三', 100, '', 8, 11, 17);
INSERT INTO `tb_inport` VALUES (14, '2021-04-16 09:29:50', '张三', 200, '', 3, 8, 10);
INSERT INTO `tb_inport` VALUES (15, '2021-04-16 09:30:02', '张三', 0, '', 10, 9, 12);
INSERT INTO `tb_inport` VALUES (16, '2021-04-17 09:11:57', '李四', 100, '', 20, 2, 8);
INSERT INTO `tb_inport` VALUES (17, '2021-04-17 09:16:39', '李四', 100, '', 10, 2, 8);
INSERT INTO `tb_inport` VALUES (18, '2021-04-17 09:39:14', '李四', 20, '', 10, 1, 35);

-- ----------------------------
-- Table structure for tb_logs
-- ----------------------------
DROP TABLE IF EXISTS `tb_logs`;
CREATE TABLE `tb_logs`  (
  `lid` int(50) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登陆用户',
  `ltime` datetime(0) NULL DEFAULT NULL COMMENT '登陆时间',
  `ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `content` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作类型',
  PRIMARY KEY (`lid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 950 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_logs
-- ----------------------------
INSERT INTO `tb_logs` VALUES (31, 'admin', '2021-04-11 17:12:27', '127.0.0.1', '执行的方法：customerList', '查询操作');
INSERT INTO `tb_logs` VALUES (32, 'admin', '2021-04-11 17:12:28', '127.0.0.1', '执行的方法：providerList', '查询操作');
INSERT INTO `tb_logs` VALUES (33, 'admin', '2021-04-11 17:12:29', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (34, 'admin', '2021-04-11 17:12:29', '127.0.0.1', '执行的方法：categoryList', '查询操作');
INSERT INTO `tb_logs` VALUES (35, 'admin', '2021-04-11 21:03:42', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (36, 'admin', '2021-04-11 21:03:44', '127.0.0.1', '执行的方法：customerList', '查询操作');
INSERT INTO `tb_logs` VALUES (37, 'admin', '2021-04-11 21:03:46', '127.0.0.1', '执行的方法：providerList', '查询操作');
INSERT INTO `tb_logs` VALUES (38, 'admin', '2021-04-11 21:03:48', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (39, 'admin', '2021-04-11 21:03:51', '127.0.0.1', '执行的方法：categoryList', '查询操作');
INSERT INTO `tb_logs` VALUES (40, 'admin', '2021-04-11 21:03:53', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (41, 'admin', '2021-04-11 21:03:54', '127.0.0.1', '执行的方法：outportList', '查询操作');
INSERT INTO `tb_logs` VALUES (42, 'admin', '2021-04-11 21:03:56', '127.0.0.1', '执行的方法：saleList', '查询操作');
INSERT INTO `tb_logs` VALUES (43, 'admin', '2021-04-11 21:04:02', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (44, 'admin', '2021-04-11 21:04:05', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (45, 'admin', '2021-04-11 21:04:06', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (46, 'admin', '2021-04-11 21:04:12', '127.0.0.1', '执行的方法：logList', '删除操作');
INSERT INTO `tb_logs` VALUES (47, 'admin', '2021-04-11 21:04:12', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (48, 'admin', '2021-04-11 21:04:32', '127.0.0.1', '执行的方法：addCustomer', '添加操作');
INSERT INTO `tb_logs` VALUES (49, 'admin', '2021-04-11 21:04:32', '127.0.0.1', '执行的方法：customerList', '查询操作');
INSERT INTO `tb_logs` VALUES (50, 'admin', '2021-04-11 21:04:39', '127.0.0.1', '执行的方法：updateCustomer', '修改操作');
INSERT INTO `tb_logs` VALUES (51, 'admin', '2021-04-11 21:04:39', '127.0.0.1', '执行的方法：customerList', '查询操作');
INSERT INTO `tb_logs` VALUES (52, 'admin', '2021-04-11 21:04:48', '127.0.0.1', '执行的方法：updateCustomer', '修改操作');
INSERT INTO `tb_logs` VALUES (53, 'admin', '2021-04-11 21:04:48', '127.0.0.1', '执行的方法：customerList', '查询操作');
INSERT INTO `tb_logs` VALUES (54, 'admin', '2021-04-11 21:04:56', '127.0.0.1', '执行的方法：customerList', '查询操作');
INSERT INTO `tb_logs` VALUES (55, 'admin', '2021-04-11 21:05:35', '127.0.0.1', '执行的方法：saveGoodsCategory', '添加操作');
INSERT INTO `tb_logs` VALUES (56, 'admin', '2021-04-11 21:05:43', '127.0.0.1', '执行的方法：saveGoodsCategory', '添加操作');
INSERT INTO `tb_logs` VALUES (57, 'admin', '2021-04-11 21:06:23', '127.0.0.1', '执行的方法：updateGoods', '修改操作');
INSERT INTO `tb_logs` VALUES (58, 'admin', '2021-04-11 21:06:23', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (59, 'admin', '2021-04-11 21:06:31', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (60, 'admin', '2021-04-11 21:06:53', '127.0.0.1', '执行的方法：addOutport', '添加操作');
INSERT INTO `tb_logs` VALUES (61, 'admin', '2021-04-11 21:06:53', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (62, 'admin', '2021-04-11 21:07:38', '127.0.0.1', '执行的方法：addsale', '添加操作');
INSERT INTO `tb_logs` VALUES (63, 'admin', '2021-04-11 21:07:50', '127.0.0.1', '执行的方法：addsale', '添加操作');
INSERT INTO `tb_logs` VALUES (64, 'admin', '2021-04-11 21:07:50', '127.0.0.1', '执行的方法：saleList', '查询操作');
INSERT INTO `tb_logs` VALUES (65, 'admin', '2021-04-11 21:08:00', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (67, 'admin', '2021-04-11 21:08:50', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (68, 'admin', '2021-04-11 21:08:56', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (69, 'admin', '2021-04-11 21:09:00', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (70, 'admin', '2021-04-11 21:09:14', '127.0.0.1', '执行的方法：saveUserRole', '添加操作');
INSERT INTO `tb_logs` VALUES (71, 'admin', '2021-04-11 21:09:31', '127.0.0.1', '执行的方法：saveRolePermission', '添加操作');
INSERT INTO `tb_logs` VALUES (73, 'admin', '2021-04-11 21:09:49', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (74, 'admin', '2021-04-11 21:09:53', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (75, 'admin', '2021-04-11 21:09:56', '127.0.0.1', '执行的方法：updateUser', '修改操作');
INSERT INTO `tb_logs` VALUES (76, 'admin', '2021-04-11 21:09:56', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (77, 'admin', '2021-04-11 21:10:14', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (78, 'admin', '2021-04-11 21:10:17', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (79, 'admin', '2021-04-11 21:10:19', '127.0.0.1', '执行的方法：updateUser', '修改操作');
INSERT INTO `tb_logs` VALUES (80, 'admin', '2021-04-11 21:10:20', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (82, 'admin', '2021-04-11 21:10:31', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (83, 'admin', '2021-04-11 21:54:10', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (84, 'admin', '2021-04-11 21:55:57', '127.0.0.1', '执行的方法：saleList', '查询操作');
INSERT INTO `tb_logs` VALUES (85, 'admin', '2021-04-12 09:40:05', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (86, 'admin', '2021-04-12 09:40:10', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (87, 'admin', '2021-04-12 09:40:11', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (88, 'admin', '2021-04-12 09:40:17', '127.0.0.1', '执行的方法：saveUserRole', '添加操作');
INSERT INTO `tb_logs` VALUES (89, 'admin', '2021-04-12 09:40:27', '127.0.0.1', '执行的方法：saveRolePermission', '添加操作');
INSERT INTO `tb_logs` VALUES (91, 'admin', '2021-04-12 09:40:39', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (92, 'admin', '2021-04-12 09:40:41', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (93, 'admin', '2021-04-12 09:40:48', '127.0.0.1', '执行的方法：saveRolePermission', '添加操作');
INSERT INTO `tb_logs` VALUES (95, 'pt', '2021-04-12 09:40:54', '127.0.0.1', '执行的方法：saleList', '查询操作');
INSERT INTO `tb_logs` VALUES (97, 'admin', '2021-04-12 09:41:09', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (98, 'admin', '2021-04-12 09:41:14', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (99, 'admin', '2021-04-12 09:41:31', '127.0.0.1', '执行的方法：saveRolePermission', '添加操作');
INSERT INTO `tb_logs` VALUES (101, 'pt', '2021-04-12 09:41:37', '127.0.0.1', '执行的方法：saleList', '查询操作');
INSERT INTO `tb_logs` VALUES (102, 'admin', '2021-04-16 09:03:12', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (103, 'admin', '2021-04-16 09:03:37', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (104, 'admin', '2021-04-16 09:03:38', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (105, 'admin', '2021-04-16 09:04:05', '127.0.0.1', '执行的方法：providerList', '查询操作');
INSERT INTO `tb_logs` VALUES (106, 'admin', '2021-04-16 09:05:58', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (107, 'admin', '2021-04-16 09:06:01', '127.0.0.1', '执行的方法：customerList', '查询操作');
INSERT INTO `tb_logs` VALUES (108, 'admin', '2021-04-16 09:06:06', '127.0.0.1', '执行的方法：providerList', '查询操作');
INSERT INTO `tb_logs` VALUES (109, 'admin', '2021-04-16 09:06:07', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (110, 'admin', '2021-04-16 09:06:08', '127.0.0.1', '执行的方法：categoryList', '查询操作');
INSERT INTO `tb_logs` VALUES (111, 'admin', '2021-04-16 09:06:10', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (112, 'admin', '2021-04-16 09:06:10', '127.0.0.1', '执行的方法：outportList', '查询操作');
INSERT INTO `tb_logs` VALUES (113, 'admin', '2021-04-16 09:06:13', '127.0.0.1', '执行的方法：saleList', '查询操作');
INSERT INTO `tb_logs` VALUES (114, 'admin', '2021-04-16 09:06:15', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (115, 'admin', '2021-04-16 09:06:16', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (116, 'admin', '2021-04-16 09:10:55', '127.0.0.1', '执行的方法：providerList', '查询操作');
INSERT INTO `tb_logs` VALUES (117, 'admin', '2021-04-16 09:10:58', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (118, 'admin', '2021-04-16 09:11:39', '127.0.0.1', '执行的方法：categoryList', '查询操作');
INSERT INTO `tb_logs` VALUES (119, 'admin', '2021-04-16 09:11:42', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (120, 'admin', '2021-04-16 09:12:59', '127.0.0.1', '执行的方法：addGoods', '添加操作');
INSERT INTO `tb_logs` VALUES (121, 'admin', '2021-04-16 09:12:59', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (122, 'admin', '2021-04-16 09:21:47', '127.0.0.1', '执行的方法：saleList', '查询操作');
INSERT INTO `tb_logs` VALUES (123, 'admin', '2021-04-16 09:21:51', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (124, 'admin', '2021-04-16 09:21:55', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (125, 'admin', '2021-04-16 09:21:56', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (126, 'admin', '2021-04-16 09:21:57', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (127, 'admin', '2021-04-16 09:21:58', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (128, 'admin', '2021-04-16 09:22:03', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (129, 'admin', '2021-04-16 09:22:07', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (130, 'admin', '2021-04-16 09:22:11', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (131, 'admin', '2021-04-16 09:22:16', '127.0.0.1', '执行的方法：categoryList', '查询操作');
INSERT INTO `tb_logs` VALUES (132, 'admin', '2021-04-16 09:22:24', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (133, 'admin', '2021-04-16 09:22:36', '127.0.0.1', '执行的方法：addInport', '添加操作');
INSERT INTO `tb_logs` VALUES (134, 'admin', '2021-04-16 09:22:36', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (135, 'admin', '2021-04-16 09:22:45', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (136, 'admin', '2021-04-16 09:23:11', '127.0.0.1', '执行的方法：addsale', '添加操作');
INSERT INTO `tb_logs` VALUES (137, 'admin', '2021-04-16 09:23:11', '127.0.0.1', '执行的方法：saleList', '查询操作');
INSERT INTO `tb_logs` VALUES (138, 'admin', '2021-04-16 09:23:24', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (139, 'admin', '2021-04-16 09:23:28', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (140, 'admin', '2021-04-16 09:23:32', '127.0.0.1', '执行的方法：outportList', '查询操作');
INSERT INTO `tb_logs` VALUES (141, 'admin', '2021-04-16 09:24:10', '127.0.0.1', '执行的方法：addOutport', '添加操作');
INSERT INTO `tb_logs` VALUES (142, 'admin', '2021-04-16 09:24:10', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (143, 'admin', '2021-04-16 09:24:19', '127.0.0.1', '执行的方法：outportList', '查询操作');
INSERT INTO `tb_logs` VALUES (144, 'admin', '2021-04-16 09:24:26', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (145, 'admin', '2021-04-16 09:24:29', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (146, 'admin', '2021-04-16 09:26:34', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (147, 'admin', '2021-04-16 09:26:50', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (148, 'admin', '2021-04-16 09:26:52', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (149, 'admin', '2021-04-16 09:26:56', '127.0.0.1', '执行的方法：addOutport', '添加操作');
INSERT INTO `tb_logs` VALUES (150, 'admin', '2021-04-16 09:26:56', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (151, 'admin', '2021-04-16 09:27:06', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (152, 'admin', '2021-04-16 09:27:08', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (153, 'admin', '2021-04-16 09:27:11', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (154, 'admin', '2021-04-16 09:27:41', '127.0.0.1', '执行的方法：addInport', '添加操作');
INSERT INTO `tb_logs` VALUES (155, 'admin', '2021-04-16 09:27:41', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (156, 'admin', '2021-04-16 09:27:44', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (157, 'admin', '2021-04-16 09:27:47', '127.0.0.1', '执行的方法：saleList', '查询操作');
INSERT INTO `tb_logs` VALUES (158, 'admin', '2021-04-16 09:28:00', '127.0.0.1', '执行的方法：addsale', '添加操作');
INSERT INTO `tb_logs` VALUES (159, 'admin', '2021-04-16 09:28:16', '127.0.0.1', '执行的方法：addsale', '添加操作');
INSERT INTO `tb_logs` VALUES (160, 'admin', '2021-04-16 09:28:46', '127.0.0.1', '执行的方法：addInport', '添加操作');
INSERT INTO `tb_logs` VALUES (161, 'admin', '2021-04-16 09:28:46', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (162, 'admin', '2021-04-16 09:28:55', '127.0.0.1', '执行的方法：addInport', '添加操作');
INSERT INTO `tb_logs` VALUES (163, 'admin', '2021-04-16 09:28:55', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (164, 'admin', '2021-04-16 09:29:09', '127.0.0.1', '执行的方法：addInport', '添加操作');
INSERT INTO `tb_logs` VALUES (165, 'admin', '2021-04-16 09:29:09', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (166, 'admin', '2021-04-16 09:29:21', '127.0.0.1', '执行的方法：addInport', '添加操作');
INSERT INTO `tb_logs` VALUES (167, 'admin', '2021-04-16 09:29:21', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (168, 'admin', '2021-04-16 09:29:33', '127.0.0.1', '执行的方法：addInport', '添加操作');
INSERT INTO `tb_logs` VALUES (169, 'admin', '2021-04-16 09:29:33', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (170, 'admin', '2021-04-16 09:29:41', '127.0.0.1', '执行的方法：addInport', '添加操作');
INSERT INTO `tb_logs` VALUES (171, 'admin', '2021-04-16 09:29:41', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (172, 'admin', '2021-04-16 09:29:50', '127.0.0.1', '执行的方法：addInport', '添加操作');
INSERT INTO `tb_logs` VALUES (173, 'admin', '2021-04-16 09:29:50', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (174, 'admin', '2021-04-16 09:30:02', '127.0.0.1', '执行的方法：addInport', '添加操作');
INSERT INTO `tb_logs` VALUES (175, 'admin', '2021-04-16 09:30:02', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (176, 'admin', '2021-04-16 09:30:04', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (177, 'admin', '2021-04-16 09:30:05', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (178, 'admin', '2021-04-16 09:30:24', '127.0.0.1', '执行的方法：providerList', '查询操作');
INSERT INTO `tb_logs` VALUES (179, 'admin', '2021-04-16 09:30:24', '127.0.0.1', '执行的方法：customerList', '查询操作');
INSERT INTO `tb_logs` VALUES (180, 'admin', '2021-04-16 09:30:25', '127.0.0.1', '执行的方法：categoryList', '查询操作');
INSERT INTO `tb_logs` VALUES (181, 'admin', '2021-04-16 09:30:28', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (182, 'admin', '2021-04-16 09:31:05', '127.0.0.1', '执行的方法：saveRolePermission', '添加操作');
INSERT INTO `tb_logs` VALUES (183, 'admin', '2021-04-16 09:31:12', '127.0.0.1', '执行的方法：saveRolePermission', '添加操作');
INSERT INTO `tb_logs` VALUES (184, 'admin', '2021-04-16 09:31:26', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (185, 'admin', '2021-04-16 09:32:12', '127.0.0.1', '执行的方法：addRole', '添加操作');
INSERT INTO `tb_logs` VALUES (186, 'admin', '2021-04-16 09:32:12', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (187, 'admin', '2021-04-16 09:32:42', '127.0.0.1', '执行的方法：saveUserRole', '添加操作');
INSERT INTO `tb_logs` VALUES (188, 'admin', '2021-04-16 09:32:46', '127.0.0.1', '执行的方法：saveUserRole', '添加操作');
INSERT INTO `tb_logs` VALUES (189, 'ww', '2021-04-16 09:33:13', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (190, 'ww', '2021-04-16 09:33:17', '127.0.0.1', '执行的方法：customerList', '查询操作');
INSERT INTO `tb_logs` VALUES (191, 'ww', '2021-04-16 09:33:18', '127.0.0.1', '执行的方法：providerList', '查询操作');
INSERT INTO `tb_logs` VALUES (192, 'ww', '2021-04-16 09:33:18', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (193, 'ww', '2021-04-16 09:33:19', '127.0.0.1', '执行的方法：categoryList', '查询操作');
INSERT INTO `tb_logs` VALUES (194, 'ww', '2021-04-16 09:33:40', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (195, 'ww', '2021-04-16 09:33:42', '127.0.0.1', '执行的方法：customerList', '查询操作');
INSERT INTO `tb_logs` VALUES (196, 'ww', '2021-04-16 09:33:42', '127.0.0.1', '执行的方法：providerList', '查询操作');
INSERT INTO `tb_logs` VALUES (197, 'ww', '2021-04-16 09:33:42', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (198, 'ww', '2021-04-16 09:33:43', '127.0.0.1', '执行的方法：categoryList', '查询操作');
INSERT INTO `tb_logs` VALUES (199, 'admin', '2021-04-16 09:35:17', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (200, 'admin', '2021-04-16 09:35:19', '127.0.0.1', '执行的方法：customerList', '查询操作');
INSERT INTO `tb_logs` VALUES (201, 'admin', '2021-04-16 09:35:20', '127.0.0.1', '执行的方法：providerList', '查询操作');
INSERT INTO `tb_logs` VALUES (202, 'admin', '2021-04-16 09:35:25', '127.0.0.1', '执行的方法：goodsList', '查询操作');
INSERT INTO `tb_logs` VALUES (203, 'admin', '2021-04-16 09:36:27', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (204, 'admin', '2021-04-16 09:37:18', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (205, 'admin', '2021-04-16 09:38:04', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (206, 'admin', '2021-04-16 09:38:35', '127.0.0.1', '执行的方法：outportList', '查询操作');
INSERT INTO `tb_logs` VALUES (207, 'admin', '2021-04-16 09:38:37', '127.0.0.1', '执行的方法：saleList', '查询操作');
INSERT INTO `tb_logs` VALUES (208, 'admin', '2021-04-16 14:00:46', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (209, 'admin', '2021-04-16 14:01:03', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (210, 'admin', '2021-04-16 14:01:03', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (211, 'admin', '2021-04-16 14:01:25', '127.0.0.1', '执行的方法：deleteOne', '删除操作');
INSERT INTO `tb_logs` VALUES (212, 'admin', '2021-04-16 14:01:25', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (213, 'admin', '2021-04-16 14:01:30', '127.0.0.1', '执行的方法：deleteOne', '删除操作');
INSERT INTO `tb_logs` VALUES (214, 'admin', '2021-04-16 14:01:30', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (215, 'admin', '2021-04-16 14:01:48', '127.0.0.1', '执行的方法：updateRole', '修改操作');
INSERT INTO `tb_logs` VALUES (216, 'admin', '2021-04-16 14:01:48', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (217, 'admin', '2021-04-16 14:01:57', '127.0.0.1', '执行的方法：saveRolePermission', '添加操作');
INSERT INTO `tb_logs` VALUES (218, 'admin', '2021-04-16 14:02:09', '127.0.0.1', '执行的方法：saveRolePermission', '添加操作');
INSERT INTO `tb_logs` VALUES (219, 'admin', '2021-04-16 14:02:25', '127.0.0.1', '执行的方法：saveRolePermission', '添加操作');
INSERT INTO `tb_logs` VALUES (220, 'admin', '2021-04-16 14:02:46', '127.0.0.1', '执行的方法：updateUser', '修改操作');
INSERT INTO `tb_logs` VALUES (221, 'admin', '2021-04-16 14:02:47', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (222, 'admin', '2021-04-16 14:02:52', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (223, 'admin', '2021-04-16 14:03:16', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (224, 'admin', '2021-04-16 14:03:20', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (225, 'admin', '2021-04-16 14:03:21', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (226, 'admin', '2021-04-16 14:03:29', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (227, 'admin', '2021-04-16 14:03:29', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (228, 'admin', '2021-04-16 14:03:30', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (229, 'admin', '2021-04-16 14:03:30', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (230, 'admin', '2021-04-16 14:03:33', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (231, 'admin', '2021-04-16 14:03:35', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (232, 'admin', '2021-04-16 14:03:35', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (233, 'admin', '2021-04-16 14:03:36', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (234, 'admin', '2021-04-16 14:03:36', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (235, 'admin', '2021-04-16 14:03:36', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (236, 'admin', '2021-04-16 14:03:36', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (237, 'admin', '2021-04-16 14:03:36', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (238, 'admin', '2021-04-16 14:03:37', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (239, 'admin', '2021-04-16 14:03:37', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (240, 'admin', '2021-04-16 14:03:42', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (241, 'admin', '2021-04-16 14:03:44', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (242, 'admin', '2021-04-16 14:03:49', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (243, 'admin', '2021-04-16 14:03:57', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (244, 'admin', '2021-04-16 14:03:59', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (245, 'admin', '2021-04-16 14:04:02', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (246, 'admin', '2021-04-16 14:04:05', '127.0.0.1', '执行的方法：logList', '查询操作');
INSERT INTO `tb_logs` VALUES (247, 'admin', '2021-04-16 14:04:13', '127.0.0.1', '执行的方法：roleList', '查询操作');
INSERT INTO `tb_logs` VALUES (248, 'admin', '2021-04-16 14:04:13', '127.0.0.1', '执行的方法：userList', '查询操作');
INSERT INTO `tb_logs` VALUES (250, 'pt', '2021-04-16 14:04:37', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (251, 'pt', '2021-04-16 14:04:38', '127.0.0.1', '执行的方法：outportList', '查询操作');
INSERT INTO `tb_logs` VALUES (252, 'ww', '2021-04-16 14:13:02', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (253, 'ww', '2021-04-16 14:13:08', '127.0.0.1', '执行的方法：customerList', '查询操作');
INSERT INTO `tb_logs` VALUES (254, 'ww', '2021-04-16 14:13:10', '127.0.0.1', '执行的方法：saleList', '查询操作');
INSERT INTO `tb_logs` VALUES (256, 'pt', '2021-04-16 14:25:41', '127.0.0.1', '执行的方法：inportList', '查询操作');
INSERT INTO `tb_logs` VALUES (257, 'pt', '2021-04-16 14:26:25', '127.0.0.1', '执行的方法：outportList', '查询操作');
INSERT INTO `tb_logs` VALUES (258, 'admin', '2021-04-16 20:40:14', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (259, 'admin', '2021-04-16 20:40:16', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (260, 'admin', '2021-04-16 20:40:21', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (261, 'admin', '2021-04-16 20:42:03', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (262, 'admin', '2021-04-16 20:44:23', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (263, 'admin', '2021-04-16 20:44:42', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (264, 'admin', '2021-04-16 20:45:52', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (265, 'admin', '2021-04-16 20:45:52', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (266, 'admin', '2021-04-16 20:45:52', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (267, 'admin', '2021-04-16 20:46:04', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (268, 'admin', '2021-04-16 20:46:06', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (269, 'admin', '2021-04-16 20:46:08', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (270, 'admin', '2021-04-16 20:46:11', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (271, 'admin', '2021-04-16 20:46:15', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (272, 'admin', '2021-04-16 20:46:19', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (273, 'admin', '2021-04-16 20:46:23', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (274, 'admin', '2021-04-16 20:46:25', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (275, 'admin', '2021-04-16 20:46:26', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (276, 'admin', '2021-04-16 20:46:27', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (277, 'admin', '2021-04-16 20:46:30', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (278, 'admin', '2021-04-16 20:46:30', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (279, 'admin', '2021-04-16 20:46:36', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (280, 'admin', '2021-04-16 20:47:23', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (281, 'admin', '2021-04-16 20:47:35', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (282, 'admin', '2021-04-16 20:47:58', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (283, 'admin', '2021-04-16 20:48:00', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (284, 'admin', '2021-04-16 20:48:04', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (285, 'admin', '2021-04-16 20:48:04', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (286, 'admin', '2021-04-16 20:48:09', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (287, 'admin', '2021-04-16 20:48:18', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (288, 'admin', '2021-04-16 20:48:22', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志删除操作');
INSERT INTO `tb_logs` VALUES (289, 'admin', '2021-04-16 20:48:22', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (290, 'admin', '2021-04-16 20:48:27', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (291, 'admin', '2021-04-16 20:48:31', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志删除操作');
INSERT INTO `tb_logs` VALUES (292, 'admin', '2021-04-16 20:48:31', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (293, 'admin', '2021-04-16 20:48:34', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志删除操作');
INSERT INTO `tb_logs` VALUES (294, 'admin', '2021-04-16 20:48:34', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (295, 'admin', '2021-04-16 20:48:37', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (296, 'admin', '2021-04-16 20:48:38', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (297, 'admin', '2021-04-16 20:48:40', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (298, 'admin', '2021-04-16 21:02:40', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (299, 'admin', '2021-04-16 21:02:53', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (300, 'admin', '2021-04-16 21:02:54', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (301, 'admin', '2021-04-16 21:03:25', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (302, 'pt', '2021-04-16 21:03:49', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (303, 'pt', '2021-04-16 21:03:58', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (304, 'admin', '2021-04-16 21:04:17', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (305, 'admin', '2021-04-16 21:04:20', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (306, 'admin', '2021-04-16 21:04:27', '0:0:0:0:0:0:0:1', '执行的方法：saveRolePermission', '角色添加操作');
INSERT INTO `tb_logs` VALUES (307, 'admin', '2021-04-16 21:04:31', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (308, 'admin', '2021-04-16 21:04:35', '0:0:0:0:0:0:0:1', '执行的方法：saveUserRole', '用户添加操作');
INSERT INTO `tb_logs` VALUES (309, 'pt', '2021-04-16 21:04:40', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (310, 'pt', '2021-04-16 21:04:42', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (311, 'ww', '2021-04-16 21:05:09', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (312, 'ww', '2021-04-16 21:05:13', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (313, 'ww', '2021-04-16 21:05:15', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (314, 'ww', '2021-04-16 21:05:17', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (315, 'ww', '2021-04-16 21:05:20', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (316, 'ww', '2021-04-16 21:05:24', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (317, 'ww', '2021-04-16 21:06:22', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (318, 'admin', '2021-04-16 21:06:32', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (319, 'pt', '2021-04-16 21:06:40', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (320, 'pt', '2021-04-16 21:06:42', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (321, 'pt', '2021-04-16 21:07:11', '0:0:0:0:0:0:0:1', '执行的方法：addOutport', '退货添加操作');
INSERT INTO `tb_logs` VALUES (322, 'pt', '2021-04-16 21:07:11', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (323, 'ww', '2021-04-16 21:08:12', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (324, 'ww', '2021-04-16 21:08:15', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (325, 'ww', '2021-04-16 21:08:44', '0:0:0:0:0:0:0:1', '执行的方法：addGoods', '商品添加操作');
INSERT INTO `tb_logs` VALUES (326, 'ww', '2021-04-16 21:08:44', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (327, 'ww', '2021-04-16 21:09:13', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (328, 'ww', '2021-04-16 21:09:29', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (329, 'pt', '2021-04-16 21:11:21', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (330, 'pt', '2021-04-16 21:11:23', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (331, 'pt', '2021-04-16 21:15:01', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (332, 'ww', '2021-04-16 21:15:16', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (333, 'pt', '2021-04-16 21:18:13', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (334, 'ww', '2021-04-16 21:18:55', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (335, 'ww', '2021-04-16 21:19:21', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (336, 'ww', '2021-04-16 21:48:21', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (337, 'pt', '2021-04-16 21:49:20', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (338, 'pt', '2021-04-16 21:49:23', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (339, 'pt', '2021-04-16 21:49:29', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (340, 'pt', '2021-04-16 21:49:42', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (341, 'pt', '2021-04-16 21:49:43', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (342, 'pt', '2021-04-16 21:49:49', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (343, 'pt', '2021-04-16 21:52:09', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (344, 'pt', '2021-04-16 21:52:10', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (345, 'pt', '2021-04-16 21:52:13', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (346, 'pt', '2021-04-16 21:52:15', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (347, 'admin', '2021-04-16 21:52:20', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (348, 'admin', '2021-04-16 21:52:23', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (349, 'admin', '2021-04-16 21:52:40', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (350, 'admin', '2021-04-16 21:52:48', '0:0:0:0:0:0:0:1', '执行的方法：saveRolePermission', '角色添加操作');
INSERT INTO `tb_logs` VALUES (351, 'ww', '2021-04-16 21:52:58', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (352, 'ww', '2021-04-16 21:53:04', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (353, 'pt', '2021-04-16 21:53:09', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (354, 'pt', '2021-04-16 21:53:11', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (355, 'pt', '2021-04-16 21:54:17', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (356, 'pt', '2021-04-16 21:54:23', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (357, 'pt', '2021-04-16 21:54:24', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (358, 'pt', '2021-04-16 22:03:34', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (359, 'pt', '2021-04-16 22:03:51', '0:0:0:0:0:0:0:1', '执行的方法：addOutport', '退货添加操作');
INSERT INTO `tb_logs` VALUES (360, 'pt', '2021-04-16 22:03:51', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (361, 'pt', '2021-04-16 22:04:00', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (362, 'pt', '2021-04-16 22:04:02', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (363, 'pt', '2021-04-16 22:04:04', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (364, 'pt', '2021-04-16 22:07:50', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (365, 'pt', '2021-04-16 22:07:55', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (366, 'pt', '2021-04-16 22:07:58', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (367, 'pt', '2021-04-16 22:07:59', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (368, 'pt', '2021-04-16 22:08:11', '0:0:0:0:0:0:0:1', '执行的方法：addOutport', '退货添加操作');
INSERT INTO `tb_logs` VALUES (369, 'pt', '2021-04-16 22:08:11', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (370, 'pt', '2021-04-16 22:08:17', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (371, 'pt', '2021-04-16 22:08:24', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (372, 'pt', '2021-04-16 22:14:06', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (373, 'admin', '2021-04-16 22:15:25', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (374, 'admin', '2021-04-16 22:15:28', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (375, 'admin', '2021-04-16 22:18:28', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (376, 'admin', '2021-04-16 22:18:30', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (377, 'admin', '2021-04-16 22:19:53', '0:0:0:0:0:0:0:1', '执行的方法：saveRolePermission', '角色添加操作');
INSERT INTO `tb_logs` VALUES (378, 'pt', '2021-04-16 22:19:58', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (379, 'pt', '2021-04-16 22:20:00', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (380, 'pt', '2021-04-16 22:20:02', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (381, 'pt', '2021-04-16 22:20:03', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (382, 'ww', '2021-04-16 22:27:55', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (383, 'ww', '2021-04-16 22:27:57', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (384, 'ww', '2021-04-16 22:27:59', '127.0.0.1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (385, 'admin', '2021-04-16 22:28:07', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (386, 'admin', '2021-04-16 22:28:09', '127.0.0.1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (387, 'admin', '2021-04-16 22:28:58', '127.0.0.1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (388, 'admin', '2021-04-16 22:29:02', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (389, 'sp', '2021-04-16 22:29:15', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (390, 'hw', '2021-04-16 22:30:05', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (391, 'hw', '2021-04-16 22:30:08', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (392, 'hw', '2021-04-16 22:31:50', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (393, 'hw', '2021-04-16 22:32:10', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (394, 'hw', '2021-04-16 22:33:14', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (395, 'hw', '2021-04-16 22:33:16', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (396, 'hw', '2021-04-16 22:33:23', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (397, 'admin', '2021-04-17 07:15:34', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (398, 'admin', '2021-04-17 07:15:37', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (399, 'admin', '2021-04-17 07:15:38', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (400, 'admin', '2021-04-17 07:16:25', '0:0:0:0:0:0:0:1', '执行的方法：updateRole', '角色修改操作');
INSERT INTO `tb_logs` VALUES (401, 'admin', '2021-04-17 07:16:26', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (402, 'admin', '2021-04-17 07:16:55', '0:0:0:0:0:0:0:1', '执行的方法：updateRole', '角色修改操作');
INSERT INTO `tb_logs` VALUES (403, 'admin', '2021-04-17 07:16:55', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (404, 'sp', '2021-04-17 07:18:05', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (405, 'sp', '2021-04-17 07:18:08', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (406, 'sp', '2021-04-17 07:19:21', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (407, 'sp', '2021-04-17 07:19:21', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (408, 'sp', '2021-04-17 07:19:23', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (409, 'hw', '2021-04-17 07:19:30', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (410, 'hw', '2021-04-17 07:19:32', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (411, 'hw', '2021-04-17 07:20:12', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (412, 'hw', '2021-04-17 07:20:12', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (413, 'hw', '2021-04-17 07:20:13', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (414, 'hw', '2021-04-17 07:20:14', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (415, 'hw', '2021-04-17 07:20:16', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (416, 'admin', '2021-04-17 07:20:58', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (417, 'admin', '2021-04-17 07:21:01', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (418, 'admin', '2021-04-17 07:21:03', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (419, 'sp', '2021-04-17 07:23:16', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (420, 'sp', '2021-04-17 07:23:18', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (421, 'sp', '2021-04-17 07:23:19', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (422, 'sp', '2021-04-17 07:23:34', '0:0:0:0:0:0:0:1', '执行的方法：updateProvider', '供应商修改操作');
INSERT INTO `tb_logs` VALUES (423, 'sp', '2021-04-17 07:23:34', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (424, 'sp', '2021-04-17 07:23:35', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (425, 'sp', '2021-04-17 07:23:36', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (426, 'sp', '2021-04-17 07:23:40', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (427, 'sp', '2021-04-17 07:23:42', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (428, 'sp', '2021-04-17 08:36:59', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (429, 'sp', '2021-04-17 08:37:02', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (430, 'sp', '2021-04-17 08:37:03', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (431, 'hw', '2021-04-17 08:37:52', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (432, 'hw', '2021-04-17 08:37:53', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (433, 'sp', '2021-04-17 08:57:30', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (434, 'hw', '2021-04-17 08:57:35', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (435, 'hw', '2021-04-17 08:57:37', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (436, 'hw', '2021-04-17 08:59:56', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (437, 'hw', '2021-04-17 09:00:43', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (438, 'hw', '2021-04-17 09:01:52', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (439, 'hw', '2021-04-17 09:03:01', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (440, 'hw', '2021-04-17 09:03:54', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (441, 'hw', '2021-04-17 09:05:07', '0:0:0:0:0:0:0:1', '执行的方法：updateGoods', '商品修改操作');
INSERT INTO `tb_logs` VALUES (442, 'hw', '2021-04-17 09:05:07', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (443, 'hw', '2021-04-17 09:05:11', '0:0:0:0:0:0:0:1', '执行的方法：updateGoods', '商品修改操作');
INSERT INTO `tb_logs` VALUES (444, 'hw', '2021-04-17 09:05:11', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (445, 'hw', '2021-04-17 09:05:14', '0:0:0:0:0:0:0:1', '执行的方法：updateGoods', '商品修改操作');
INSERT INTO `tb_logs` VALUES (446, 'hw', '2021-04-17 09:05:14', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (447, 'hw', '2021-04-17 09:05:23', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (448, 'hw', '2021-04-17 09:09:07', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (449, 'hw', '2021-04-17 09:10:56', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (450, 'hw', '2021-04-17 09:10:56', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (451, 'hw', '2021-04-17 09:11:39', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (452, 'hw', '2021-04-17 09:11:57', '0:0:0:0:0:0:0:1', '执行的方法：addInport', '进货添加操作');
INSERT INTO `tb_logs` VALUES (453, 'hw', '2021-04-17 09:11:57', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (454, 'hw', '2021-04-17 09:12:05', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (455, 'hw', '2021-04-17 09:12:32', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (456, 'hw', '2021-04-17 09:14:49', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (457, 'sp', '2021-04-17 09:15:00', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (458, 'sp', '2021-04-17 09:15:02', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (459, 'sp', '2021-04-17 09:15:07', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (460, 'hw', '2021-04-17 09:15:36', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (461, 'hw', '2021-04-17 09:15:38', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (462, 'sp', '2021-04-17 09:16:09', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (463, 'sp', '2021-04-17 09:16:13', '127.0.0.1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (464, 'hw', '2021-04-17 09:16:39', '0:0:0:0:0:0:0:1', '执行的方法：addInport', '进货添加操作');
INSERT INTO `tb_logs` VALUES (465, 'hw', '2021-04-17 09:16:39', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (466, 'sp', '2021-04-17 09:16:45', '127.0.0.1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (467, 'sp', '2021-04-17 09:19:01', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (468, 'sp', '2021-04-17 09:19:18', '127.0.0.1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (469, 'sp', '2021-04-17 09:27:54', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (470, 'sp', '2021-04-17 09:27:56', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (471, 'admin', '2021-04-17 09:29:19', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (472, 'admin', '2021-04-17 09:29:21', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (473, 'admin', '2021-04-17 09:29:21', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (474, 'admin', '2021-04-17 09:29:51', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (475, 'admin', '2021-04-17 09:29:57', '0:0:0:0:0:0:0:1', '执行的方法：saveRolePermission', '角色添加操作');
INSERT INTO `tb_logs` VALUES (476, 'sp', '2021-04-17 09:30:03', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (477, 'sp', '2021-04-17 09:30:09', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (478, 'sp', '2021-04-17 09:30:12', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (479, 'sp', '2021-04-17 09:30:19', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (480, 'sp', '2021-04-17 09:30:20', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (481, 'sp', '2021-04-17 09:30:52', '127.0.0.1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (482, 'sp', '2021-04-17 09:30:52', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (483, 'sp', '2021-04-17 09:31:03', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (484, 'sp', '2021-04-17 09:32:01', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (485, 'sp', '2021-04-17 09:33:24', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (486, 'sp', '2021-04-17 09:33:25', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (487, 'sp', '2021-04-17 09:36:27', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (488, 'sp', '2021-04-17 09:36:45', '127.0.0.1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (489, 'sp', '2021-04-17 09:36:53', '127.0.0.1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (490, 'sp', '2021-04-17 09:36:53', '127.0.0.1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (491, 'hw', '2021-04-17 09:37:08', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (492, 'sp', '2021-04-17 09:37:12', '127.0.0.1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (493, 'sp', '2021-04-17 09:37:16', '127.0.0.1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (494, 'hw', '2021-04-17 09:38:59', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (495, 'hw', '2021-04-17 09:39:14', '0:0:0:0:0:0:0:1', '执行的方法：addInport', '进货添加操作');
INSERT INTO `tb_logs` VALUES (496, 'hw', '2021-04-17 09:39:14', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (497, 'hw', '2021-04-17 09:39:21', '0:0:0:0:0:0:0:1', '执行的方法：addOutport', '退货添加操作');
INSERT INTO `tb_logs` VALUES (498, 'hw', '2021-04-17 09:39:21', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (499, 'hw', '2021-04-17 09:39:28', '0:0:0:0:0:0:0:1', '执行的方法：addOutport', '退货添加操作');
INSERT INTO `tb_logs` VALUES (500, 'hw', '2021-04-17 09:39:28', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (501, 'hw', '2021-04-17 09:39:40', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (502, 'hw', '2021-04-17 09:40:24', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (503, 'hw', '2021-04-17 09:41:05', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (504, 'hw', '2021-04-17 09:42:24', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (505, 'hw', '2021-04-17 09:42:25', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (506, 'hw', '2021-04-17 09:42:32', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (507, 'hw', '2021-04-22 17:46:45', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (508, 'hw', '2021-04-22 17:46:49', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (509, 'hw', '2021-04-22 17:46:53', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (510, 'sp', '2021-04-22 17:47:42', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (511, 'sp', '2021-04-22 17:47:46', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (512, 'sp', '2021-04-22 17:47:55', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (513, 'sp', '2021-04-22 17:48:20', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (514, 'sp', '2021-04-22 17:48:34', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (515, 'sp', '2021-04-22 17:49:03', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (516, 'sp', '2021-04-22 17:49:04', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (517, 'sp', '2021-04-22 17:49:31', '0:0:0:0:0:0:0:1', '执行的方法：addGoods', '商品添加操作');
INSERT INTO `tb_logs` VALUES (518, 'sp', '2021-04-22 17:49:31', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (519, 'sp', '2021-04-22 17:49:34', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (520, 'sp', '2021-04-22 17:49:35', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (521, 'sp', '2021-04-22 17:49:38', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (522, 'sp', '2021-04-22 17:49:46', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (523, 'sp', '2021-04-22 17:51:16', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (524, 'sp', '2021-04-22 17:51:45', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (525, 'sp', '2021-04-22 17:51:45', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (526, 'sp', '2021-04-22 17:51:56', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (527, 'sp', '2021-04-22 17:51:57', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (528, 'sp', '2021-04-22 17:51:58', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (529, 'sp', '2021-04-22 17:51:58', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (530, 'sp', '2021-04-22 17:52:01', '0:0:0:0:0:0:0:1', '执行的方法：categoryList', '类别查询操作');
INSERT INTO `tb_logs` VALUES (531, 'sp', '2021-04-22 17:52:02', '0:0:0:0:0:0:0:1', '执行的方法：providerList', '供应商查询操作');
INSERT INTO `tb_logs` VALUES (532, 'hw', '2021-04-22 17:52:22', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (533, 'hw', '2021-04-22 17:52:24', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (534, 'hw', '2021-04-22 17:52:36', '0:0:0:0:0:0:0:1', '执行的方法：addOutport', '退货添加操作');
INSERT INTO `tb_logs` VALUES (535, 'hw', '2021-04-22 17:52:36', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (536, 'hw', '2021-04-22 17:52:39', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (537, 'hw', '2021-04-22 17:52:40', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (538, 'hw', '2021-04-22 17:52:46', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (539, 'hw', '2021-04-22 17:53:36', '0:0:0:0:0:0:0:1', '执行的方法：addOutport', '退货添加操作');
INSERT INTO `tb_logs` VALUES (540, 'hw', '2021-04-22 17:53:36', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (541, 'hw', '2021-04-22 17:53:41', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (542, 'sp', '2021-04-22 17:53:51', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (543, 'sp', '2021-04-22 17:53:53', '0:0:0:0:0:0:0:1', '执行的方法：customerList', '客户查询操作');
INSERT INTO `tb_logs` VALUES (544, 'sp', '2021-04-22 17:53:53', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (545, 'sp', '2021-04-22 17:53:56', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (546, 'sp', '2021-04-22 17:53:57', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (547, 'sp', '2021-04-22 17:53:57', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (548, 'sp', '2021-04-22 17:53:58', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (549, 'sp', '2021-04-22 17:54:01', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (550, 'sp', '2021-04-22 17:54:03', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (551, 'sp', '2021-04-22 17:54:08', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (552, 'hw', '2021-04-22 17:54:17', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (553, 'hw', '2021-04-22 17:54:19', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (554, 'hw', '2021-04-26 17:04:20', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (555, 'hw', '2021-04-26 17:04:23', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (556, 'sp', '2021-04-26 17:04:28', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (557, 'sp', '2021-04-26 17:04:30', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (558, 'sp', '2021-04-26 17:05:35', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (559, 'hw', '2021-04-26 17:07:07', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (560, 'hw', '2021-04-26 17:07:08', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (561, 'hw', '2021-04-26 17:07:34', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (562, 'hw', '2021-04-26 17:07:35', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (563, 'hw', '2021-04-26 17:08:22', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (564, 'hw', '2021-04-26 17:08:22', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (565, 'hw', '2021-04-26 17:08:28', '0:0:0:0:0:0:0:1', '执行的方法：addOutport', '退货添加操作');
INSERT INTO `tb_logs` VALUES (566, 'hw', '2021-04-26 17:08:29', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (567, 'hw', '2021-04-26 17:09:10', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (568, 'hw', '2021-04-26 17:09:11', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (569, 'hw', '2021-04-26 17:16:55', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (570, 'hw', '2021-04-26 17:16:56', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (571, 'hw', '2021-04-26 17:17:31', '0:0:0:0:0:0:0:1', '执行的方法：addOutport', '退货添加操作');
INSERT INTO `tb_logs` VALUES (572, 'hw', '2021-04-26 17:17:31', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (573, 'hw', '2021-04-26 17:17:36', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (574, 'hw', '2021-04-26 17:17:38', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (575, 'hw', '2021-04-26 17:17:42', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (576, 'sp', '2021-04-26 17:17:51', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (577, 'sp', '2021-04-26 17:17:54', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (578, 'sp', '2021-04-26 17:18:14', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (579, 'sp', '2021-04-26 17:18:43', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (580, 'sp', '2021-04-26 17:32:07', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (581, 'sp', '2021-04-26 17:32:09', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (582, 'sp', '2021-04-26 17:32:26', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (583, 'sp', '2021-04-26 17:32:32', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (584, 'sp', '2021-04-26 17:32:39', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (585, 'sp', '2021-04-26 17:32:39', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (586, 'sp', '2021-04-26 18:14:27', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (587, 'sp', '2021-04-26 18:14:29', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (588, 'sp', '2021-04-26 18:15:22', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (589, 'sp', '2021-04-26 18:16:14', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (590, 'sp', '2021-04-26 18:16:19', '0:0:0:0:0:0:0:1', '执行的方法：addOutsale', '退货添加操作');
INSERT INTO `tb_logs` VALUES (591, 'sp', '2021-04-26 18:16:19', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (592, 'sp', '2021-04-26 18:16:24', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (593, 'admin', '2021-04-26 18:17:34', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (594, 'admin', '2021-04-26 18:17:36', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (595, 'admin', '2021-04-26 18:17:38', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (596, 'admin', '2021-04-26 18:17:55', '0:0:0:0:0:0:0:1', '执行的方法：saveRolePermission', '角色添加操作');
INSERT INTO `tb_logs` VALUES (597, 'sp', '2021-04-26 18:18:00', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (598, 'sp', '2021-04-26 18:18:02', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (599, 'sp', '2021-04-26 18:19:25', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (600, 'sp', '2021-04-26 18:20:07', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (601, 'sp', '2021-04-26 18:21:48', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (602, 'sp', '2021-04-26 18:24:18', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (603, 'sp', '2021-04-26 18:24:20', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (604, 'sp', '2021-04-26 18:24:31', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (605, 'sp', '2021-04-26 18:24:38', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (606, 'sp', '2021-04-26 18:26:49', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (607, 'sp', '2021-04-26 18:28:46', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (608, 'sp', '2021-04-26 18:29:07', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (609, 'sp', '2021-04-26 18:30:59', '0:0:0:0:0:0:0:1', '执行的方法：addOutsale', '退货添加操作');
INSERT INTO `tb_logs` VALUES (610, 'sp', '2021-04-26 18:30:59', '0:0:0:0:0:0:0:1', '执行的方法：addOutsale', '退货添加操作');
INSERT INTO `tb_logs` VALUES (611, 'sp', '2021-04-26 18:30:59', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (612, 'sp', '2021-04-26 18:30:59', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (613, 'sp', '2021-04-26 18:31:06', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (614, 'sp', '2021-04-26 18:31:08', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (615, 'sp', '2021-04-26 18:31:22', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (616, 'sp', '2021-04-26 18:32:36', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (617, 'sp', '2021-04-26 18:32:38', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (618, 'hw', '2021-04-26 18:33:08', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (619, 'hw', '2021-04-26 18:33:12', '0:0:0:0:0:0:0:1', '执行的方法：outportList', '退货查询操作');
INSERT INTO `tb_logs` VALUES (620, 'hw', '2021-04-26 18:33:14', '0:0:0:0:0:0:0:1', '执行的方法：inportList', '进货查询操作');
INSERT INTO `tb_logs` VALUES (621, 'sp', '2021-04-26 18:33:19', '0:0:0:0:0:0:0:1', '执行的方法：goodsList', '商品查询操作');
INSERT INTO `tb_logs` VALUES (622, 'sp', '2021-04-26 18:33:44', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (623, 'sp', '2021-04-26 18:33:44', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (624, 'sp', '2021-04-26 18:34:06', '0:0:0:0:0:0:0:1', '执行的方法：addOutsale', '退货添加操作');
INSERT INTO `tb_logs` VALUES (625, 'sp', '2021-04-26 18:34:06', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (626, 'sp', '2021-04-26 18:34:09', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (627, 'admin', '2021-04-26 18:36:14', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (628, 'admin', '2021-04-26 18:36:16', '0:0:0:0:0:0:0:1', '执行的方法：userList', '用户查询操作');
INSERT INTO `tb_logs` VALUES (629, 'admin', '2021-04-26 18:36:17', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (630, 'admin', '2021-04-26 18:36:28', '0:0:0:0:0:0:0:1', '执行的方法：saveRolePermission', '角色添加操作');
INSERT INTO `tb_logs` VALUES (631, 'sp', '2021-04-26 18:36:37', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (632, 'sp', '2021-04-26 18:36:41', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (633, 'sp', '2021-04-26 18:36:47', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (634, 'sp', '2021-04-26 18:36:48', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (635, 'sp', '2021-04-26 18:36:54', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (636, 'sp', '2021-04-26 18:37:34', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (637, 'sp', '2021-04-26 18:37:36', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (638, 'sp', '2021-04-26 18:38:51', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (639, 'sp', '2021-04-26 18:39:29', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (640, 'sp', '2021-04-26 18:39:35', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (641, 'sp', '2021-04-26 18:39:40', '0:0:0:0:0:0:0:1', '执行的方法：outsaleList', '销售退货查询操作');
INSERT INTO `tb_logs` VALUES (642, 'sp', '2021-04-26 18:39:53', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (643, 'sp', '2021-04-26 18:42:36', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (644, 'sp', '2021-04-26 18:44:51', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (645, 'sp', '2021-04-26 18:44:59', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (646, 'sp', '2021-04-26 18:46:02', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (647, 'sp', '2021-04-26 18:46:21', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (648, 'sp', '2021-04-26 19:10:52', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (649, 'sp', '2021-04-26 19:10:54', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (650, 'sp', '2021-04-26 19:10:59', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (651, 'sp', '2021-04-26 19:11:07', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (652, 'sp', '2021-04-26 19:11:51', '0:0:0:0:0:0:0:1', '执行的方法：saleList', '销售查询操作');
INSERT INTO `tb_logs` VALUES (653, 'sp', '2021-04-26 19:12:05', '0:0:0:0:0:0:0:1', '执行的方法：addsale', '销售添加操作');
INSERT INTO `tb_logs` VALUES (654, 'admin', '2021-04-26 19:55:35', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (655, 'admin', '2021-04-26 19:55:38', '0:0:0:0:0:0:0:1', '执行的方法：roleList', '角色查询操作');
INSERT INTO `tb_logs` VALUES (656, 'admin', '2021-04-26 19:55:44', '0:0:0:0:0:0:0:1', '执行的方法：saveRolePermission', '角色添加操作');
INSERT INTO `tb_logs` VALUES (657, 'admin', '2021-04-26 19:57:58', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (658, 'admin', '2021-04-26 19:59:34', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (659, 'admin', '2021-04-26 20:01:05', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (660, 'admin', '2021-04-27 16:05:53', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (661, 'admin', '2021-04-27 16:09:34', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (662, 'admin', '2021-04-27 16:13:37', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (663, 'admin', '2021-04-27 16:14:59', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (664, 'admin', '2021-04-27 16:19:55', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (665, 'admin', '2021-04-27 16:22:54', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (666, 'admin', '2021-04-27 16:48:50', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (667, 'admin', '2021-04-27 16:50:25', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (668, 'admin', '2021-04-27 16:52:07', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (669, 'admin', '2021-04-27 16:55:12', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (670, 'admin', '2021-04-27 17:02:18', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (671, 'admin', '2021-04-27 17:03:32', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (672, 'admin', '2021-04-27 17:04:41', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (673, 'admin', '2021-04-27 17:09:33', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (674, 'admin', '2021-04-27 17:18:21', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (675, 'admin', '2021-04-27 17:18:32', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (676, 'admin', '2021-04-27 17:24:03', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (677, 'admin', '2021-04-27 17:26:38', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (678, 'admin', '2021-04-27 17:28:22', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (679, 'admin', '2021-04-27 17:34:53', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (680, 'admin', '2021-04-27 17:41:20', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (681, 'admin', '2021-04-27 17:41:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (682, 'admin', '2021-04-27 17:43:07', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (683, 'admin', '2021-04-27 17:43:20', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (684, 'admin', '2021-04-27 17:44:14', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (685, 'admin', '2021-04-27 17:47:28', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (686, 'admin', '2021-04-27 17:49:38', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (687, 'admin', '2021-04-27 17:49:40', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (688, 'admin', '2021-04-27 17:50:03', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (689, 'admin', '2021-04-27 17:50:05', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (690, 'admin', '2021-04-27 17:50:58', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (691, 'admin', '2021-04-27 17:57:27', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (692, 'admin', '2021-04-27 17:57:28', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (693, 'admin', '2021-04-27 17:57:53', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (694, 'admin', '2021-04-27 17:57:55', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (695, 'admin', '2021-04-27 18:01:59', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (696, 'admin', '2021-04-27 18:03:18', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (697, 'admin', '2021-04-27 18:03:18', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (698, 'admin', '2021-04-27 18:03:18', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (699, 'admin', '2021-04-27 18:03:18', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (700, 'admin', '2021-04-27 18:03:21', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (701, 'admin', '2021-04-27 18:03:21', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (702, 'admin', '2021-04-27 18:03:21', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (703, 'admin', '2021-04-27 18:03:21', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (704, 'admin', '2021-04-27 18:03:48', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (705, 'admin', '2021-04-27 18:03:48', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (706, 'admin', '2021-04-27 18:03:48', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (707, 'admin', '2021-04-27 18:03:48', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (708, 'admin', '2021-04-27 18:03:50', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (709, 'admin', '2021-04-27 18:03:50', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (710, 'admin', '2021-04-27 18:03:50', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (711, 'admin', '2021-04-27 18:03:50', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (712, 'admin', '2021-04-27 18:04:22', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (713, 'admin', '2021-04-27 18:04:22', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (714, 'admin', '2021-04-27 18:04:22', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (715, 'admin', '2021-04-27 18:04:22', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (716, 'admin', '2021-04-27 18:04:45', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (717, 'admin', '2021-04-27 18:04:45', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (718, 'admin', '2021-04-27 18:04:45', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (719, 'admin', '2021-04-27 18:04:45', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (720, 'admin', '2021-04-27 18:04:48', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (721, 'admin', '2021-04-27 18:04:48', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (722, 'admin', '2021-04-27 18:04:48', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (723, 'admin', '2021-04-27 18:04:48', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (724, 'admin', '2021-04-27 18:05:27', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (725, 'admin', '2021-04-27 18:05:27', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (726, 'admin', '2021-04-27 18:05:27', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (727, 'admin', '2021-04-27 18:05:27', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (728, 'admin', '2021-04-27 18:05:29', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (729, 'admin', '2021-04-27 18:05:29', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (730, 'admin', '2021-04-27 18:05:29', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (731, 'admin', '2021-04-27 18:05:29', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (732, 'admin', '2021-04-27 18:05:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (733, 'admin', '2021-04-27 18:05:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (734, 'admin', '2021-04-27 18:05:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (735, 'admin', '2021-04-27 18:05:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计报表');
INSERT INTO `tb_logs` VALUES (736, 'admin', '2021-04-27 19:31:49', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (737, 'admin', '2021-04-27 19:31:55', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (738, 'admin', '2021-04-27 19:43:02', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (739, 'admin', '2021-04-27 19:43:03', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (740, 'admin', '2021-04-27 19:43:31', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (741, 'admin', '2021-04-27 20:15:55', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (742, 'admin', '2021-04-27 20:15:56', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (743, 'admin', '2021-04-27 20:22:29', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (744, 'admin', '2021-04-27 20:22:30', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (745, 'admin', '2021-04-27 20:23:21', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (746, 'admin', '2021-04-27 20:23:23', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (747, 'admin', '2021-04-27 20:23:37', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (748, 'admin', '2021-04-27 20:24:33', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (749, 'admin', '2021-04-27 20:24:34', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (750, 'admin', '2021-04-27 20:25:33', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (751, 'admin', '2021-04-27 20:25:33', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (752, 'admin', '2021-04-27 20:25:33', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (753, 'admin', '2021-04-27 20:25:33', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (754, 'admin', '2021-04-27 20:31:52', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (755, 'admin', '2021-04-27 20:34:51', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (756, 'admin', '2021-04-27 20:35:04', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (757, 'admin', '2021-04-27 20:35:04', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (758, 'admin', '2021-04-27 20:35:04', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (759, 'admin', '2021-04-27 20:35:04', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (760, 'admin', '2021-04-27 20:40:24', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (761, 'admin', '2021-04-27 20:40:24', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (762, 'admin', '2021-04-27 20:40:24', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (763, 'admin', '2021-04-27 20:40:24', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (764, 'admin', '2021-04-27 20:41:02', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (765, 'admin', '2021-04-27 20:41:02', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (766, 'admin', '2021-04-27 20:41:02', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (767, 'admin', '2021-04-27 20:41:02', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (768, 'admin', '2021-04-27 20:41:07', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (769, 'admin', '2021-04-27 20:41:07', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (770, 'admin', '2021-04-27 20:41:07', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (771, 'admin', '2021-04-27 20:41:07', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (772, 'admin', '2021-04-27 20:41:15', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (773, 'admin', '2021-04-27 20:41:15', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (774, 'admin', '2021-04-27 20:41:15', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (775, 'admin', '2021-04-27 20:41:16', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (776, 'admin', '2021-04-27 20:41:25', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (777, 'admin', '2021-04-27 20:41:25', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (778, 'admin', '2021-04-27 20:41:25', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (779, 'admin', '2021-04-27 20:41:25', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (780, 'admin', '2021-04-27 20:41:28', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (781, 'admin', '2021-04-27 20:41:28', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (782, 'admin', '2021-04-27 20:41:28', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (783, 'admin', '2021-04-27 20:41:28', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (784, 'admin', '2021-04-27 20:41:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsGoods', '查询统计进货退货报表');
INSERT INTO `tb_logs` VALUES (785, 'admin', '2021-04-27 20:41:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (786, 'admin', '2021-04-27 20:41:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (787, 'admin', '2021-04-27 20:41:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (788, 'admin', '2021-04-27 20:48:56', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (789, 'admin', '2021-04-27 20:48:58', '0:0:0:0:0:0:0:1', '执行的方法：logList', '日志查询操作');
INSERT INTO `tb_logs` VALUES (790, 'admin', '2021-04-27 20:49:01', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (791, 'admin', '2021-04-27 20:49:01', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (792, 'admin', '2021-04-27 20:49:01', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (793, 'admin', '2021-04-27 20:49:30', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (794, 'admin', '2021-04-27 20:49:30', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (795, 'admin', '2021-04-27 20:49:30', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (796, 'admin', '2021-04-27 20:49:33', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (797, 'admin', '2021-04-27 20:49:33', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (798, 'admin', '2021-04-27 20:49:33', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (799, 'admin', '2021-04-27 20:49:33', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (800, 'admin', '2021-04-27 20:50:21', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (801, 'admin', '2021-04-27 20:50:21', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (802, 'admin', '2021-04-27 20:50:21', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (803, 'admin', '2021-04-27 20:50:21', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (804, 'admin', '2021-04-27 20:50:24', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (805, 'admin', '2021-04-27 20:50:24', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (806, 'admin', '2021-04-27 20:50:24', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (807, 'admin', '2021-04-27 20:50:24', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (808, 'admin', '2021-04-27 20:50:27', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (809, 'admin', '2021-04-27 20:50:27', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (810, 'admin', '2021-04-27 20:50:27', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (811, 'admin', '2021-04-27 20:50:27', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (812, 'admin', '2021-04-27 20:50:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (813, 'admin', '2021-04-27 20:50:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (814, 'admin', '2021-04-27 20:50:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (815, 'admin', '2021-04-27 20:50:32', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (816, 'admin', '2021-04-27 20:53:53', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (817, 'admin', '2021-04-27 20:53:53', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (818, 'admin', '2021-04-27 20:53:53', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (819, 'admin', '2021-04-27 20:53:53', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (820, 'admin', '2021-04-27 20:53:56', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (821, 'admin', '2021-04-27 20:53:56', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (822, 'admin', '2021-04-27 20:53:56', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (823, 'admin', '2021-04-27 20:53:56', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (824, 'admin', '2021-04-27 20:53:59', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (825, 'admin', '2021-04-27 20:53:59', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (826, 'admin', '2021-04-27 20:53:59', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (827, 'admin', '2021-04-27 20:53:59', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (828, 'admin', '2021-04-27 20:54:52', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (829, 'admin', '2021-04-27 20:54:52', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (830, 'admin', '2021-04-27 20:54:52', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (831, 'admin', '2021-04-27 20:54:52', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (832, 'admin', '2021-04-27 20:54:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (833, 'admin', '2021-04-27 20:54:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (834, 'admin', '2021-04-27 20:54:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (835, 'admin', '2021-04-27 20:54:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (836, 'admin', '2021-04-27 20:54:57', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (837, 'admin', '2021-04-27 20:54:57', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (838, 'admin', '2021-04-27 20:54:57', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (839, 'admin', '2021-04-27 20:54:57', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (840, 'admin', '2021-04-27 20:55:03', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (841, 'admin', '2021-04-27 20:55:03', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (842, 'admin', '2021-04-27 20:55:03', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (843, 'admin', '2021-04-27 20:55:03', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (844, 'admin', '2021-04-27 20:55:34', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (845, 'admin', '2021-04-27 20:55:34', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (846, 'admin', '2021-04-27 20:55:34', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (847, 'admin', '2021-04-27 20:55:34', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (848, 'admin', '2021-04-27 20:55:36', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (849, 'admin', '2021-04-27 20:55:36', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (850, 'admin', '2021-04-27 20:55:36', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (851, 'admin', '2021-04-27 20:55:36', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (852, 'admin', '2021-04-27 20:59:37', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (853, 'admin', '2021-04-27 20:59:39', '127.0.0.1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (854, 'admin', '2021-04-27 20:59:39', '127.0.0.1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (855, 'admin', '2021-04-27 20:59:39', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (856, 'admin', '2021-04-27 20:59:39', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (857, 'admin', '2021-04-27 20:59:47', '127.0.0.1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (858, 'admin', '2021-04-27 20:59:47', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (859, 'admin', '2021-04-27 20:59:47', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (860, 'admin', '2021-04-27 20:59:47', '127.0.0.1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (861, 'admin', '2021-04-27 20:59:58', '127.0.0.1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (862, 'admin', '2021-04-27 20:59:58', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (863, 'admin', '2021-04-27 20:59:58', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (864, 'admin', '2021-04-27 20:59:58', '127.0.0.1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (865, 'admin', '2021-04-27 21:02:15', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (866, 'admin', '2021-04-27 21:02:15', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (867, 'admin', '2021-04-27 21:02:15', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (868, 'admin', '2021-04-27 21:02:15', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (869, 'admin', '2021-04-27 21:43:52', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (870, 'admin', '2021-04-27 21:43:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (871, 'admin', '2021-04-27 21:43:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (872, 'admin', '2021-04-27 21:43:54', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (873, 'admin', '2021-04-27 21:43:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (874, 'admin', '2021-04-27 21:44:00', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (875, 'admin', '2021-04-27 21:44:00', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (876, 'admin', '2021-04-27 21:44:00', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (877, 'admin', '2021-04-27 21:44:00', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (878, 'admin', '2021-04-27 22:30:38', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (879, 'admin', '2021-04-27 22:34:02', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (880, 'admin', '2021-04-27 22:34:39', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (881, 'admin', '2021-04-27 22:35:35', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (882, 'admin', '2021-04-27 22:37:24', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (883, 'admin', '2021-04-27 22:42:51', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (884, 'admin', '2021-04-27 22:46:59', '127.0.0.1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (885, 'admin', '2021-04-27 22:48:10', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (886, 'admin', '2021-04-27 22:48:11', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (887, 'admin', '2021-04-27 22:50:46', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (888, 'admin', '2021-04-27 22:53:39', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (889, 'admin', '2021-04-27 22:53:50', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (890, 'admin', '2021-04-27 22:53:51', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (891, 'admin', '2021-04-27 22:54:57', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (892, 'admin', '2021-04-27 22:57:44', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (893, 'admin', '2021-04-27 22:57:56', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (894, 'admin', '2021-04-27 22:58:01', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (895, 'admin', '2021-04-27 22:59:12', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (896, 'admin', '2021-04-27 22:59:16', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (897, 'admin', '2021-04-27 23:00:03', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (898, 'admin', '2021-04-27 23:02:10', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (899, 'admin', '2021-04-27 23:02:11', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (900, 'admin', '2021-04-27 23:04:27', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (901, 'admin', '2021-04-27 23:04:29', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (902, 'admin', '2021-04-27 23:04:29', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (903, 'admin', '2021-04-27 23:04:29', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (904, 'admin', '2021-04-27 23:04:29', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (905, 'admin', '2021-04-27 23:04:41', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (906, 'admin', '2021-04-27 23:04:41', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (907, 'admin', '2021-04-27 23:04:41', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (908, 'admin', '2021-04-27 23:04:41', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (909, 'admin', '2021-04-27 23:04:45', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (910, 'admin', '2021-04-27 23:05:03', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (911, 'admin', '2021-04-27 23:05:09', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (912, 'admin', '2021-04-27 23:06:25', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (913, 'admin', '2021-04-27 23:06:27', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (914, 'admin', '2021-04-27 23:06:27', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (915, 'admin', '2021-04-27 23:06:27', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (916, 'admin', '2021-04-27 23:06:27', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (917, 'admin', '2021-04-27 23:07:09', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (918, 'admin', '2021-04-27 23:07:46', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (919, 'admin', '2021-04-27 23:07:47', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (920, 'admin', '2021-04-27 23:07:47', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (921, 'admin', '2021-04-27 23:07:47', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (922, 'admin', '2021-04-27 23:07:47', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (923, 'admin', '2021-04-27 23:08:37', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (924, 'admin', '2021-04-27 23:08:39', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (925, 'admin', '2021-04-27 23:08:39', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (926, 'admin', '2021-04-27 23:08:39', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (927, 'admin', '2021-04-27 23:08:39', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (928, 'admin', '2021-04-27 23:08:49', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (929, 'admin', '2021-04-27 23:08:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (930, 'admin', '2021-04-27 23:08:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (931, 'admin', '2021-04-27 23:08:54', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (932, 'admin', '2021-04-27 23:08:54', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (933, 'admin', '2021-04-27 23:09:03', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (934, 'admin', '2021-04-27 23:09:03', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (935, 'admin', '2021-04-27 23:09:03', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (936, 'admin', '2021-04-27 23:09:03', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (937, 'admin', '2021-04-27 23:10:01', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (938, 'admin', '2021-04-27 23:10:01', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (939, 'admin', '2021-04-27 23:10:01', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (940, 'admin', '2021-04-27 23:10:01', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (941, 'admin', '2021-04-27 23:10:06', '0:0:0:0:0:0:0:1', '执行的方法：login', '登陆操作');
INSERT INTO `tb_logs` VALUES (942, 'admin', '2021-04-27 23:10:08', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (943, 'admin', '2021-04-27 23:10:08', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (944, 'admin', '2021-04-27 23:10:08', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (945, 'admin', '2021-04-27 23:10:08', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');
INSERT INTO `tb_logs` VALUES (946, 'admin', '2021-04-27 23:10:11', '0:0:0:0:0:0:0:1', '执行的方法：statisticsoutGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (947, 'admin', '2021-04-27 23:10:11', '0:0:0:0:0:0:0:1', '执行的方法：statisticsSales', '查询统计销售报表');
INSERT INTO `tb_logs` VALUES (948, 'admin', '2021-04-27 23:10:11', '0:0:0:0:0:0:0:1', '执行的方法：statisticsinGoods', '查询统计退货报表');
INSERT INTO `tb_logs` VALUES (949, 'admin', '2021-04-27 23:10:11', '0:0:0:0:0:0:0:1', '执行的方法：profitStatement', '查询盈利报表');

-- ----------------------------
-- Table structure for tb_outport
-- ----------------------------
DROP TABLE IF EXISTS `tb_outport`;
CREATE TABLE `tb_outport`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `providerid` int(50) NULL DEFAULT NULL,
  `outputtime` datetime(0) NULL DEFAULT NULL,
  `operateperson` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `outprice` double(50, 2) NULL DEFAULT NULL,
  `number` int(50) NULL DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `goodsid` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_outport
-- ----------------------------
INSERT INTO `tb_outport` VALUES (11, 2, '2021-01-10 16:45:57', '张三', 500.00, 50, '过期了', 8);
INSERT INTO `tb_outport` VALUES (12, 2, '2021-02-11 21:06:53', '张三', 500.00, 50, '', 8);
INSERT INTO `tb_outport` VALUES (13, 1, '2021-02-16 09:24:10', '张三', 1580.00, 79, '', 38);
INSERT INTO `tb_outport` VALUES (14, 1, '2021-03-16 09:26:56', '张三', 20.00, 1, '', 38);
INSERT INTO `tb_outport` VALUES (15, 9, '2021-03-16 21:07:11', '李四', 200.00, 20, '', 12);
INSERT INTO `tb_outport` VALUES (16, 9, '2021-04-16 22:03:51', '李四', 300.00, 30, '', 12);
INSERT INTO `tb_outport` VALUES (17, 8, '2021-04-16 22:08:11', '李四', 600.00, 200, '', 10);
INSERT INTO `tb_outport` VALUES (18, 1, '2021-04-17 09:39:21', '李四', 220.00, 22, '', 35);
INSERT INTO `tb_outport` VALUES (19, 1, '2021-04-17 09:39:28', '李四', 1500.00, 150, '', 35);
INSERT INTO `tb_outport` VALUES (20, 1, '2021-04-22 17:52:36', '李四', 2000.00, 200, '11', 35);
INSERT INTO `tb_outport` VALUES (21, 1, '2021-04-22 17:53:36', '李四', 6480.00, 648, '11', 35);
INSERT INTO `tb_outport` VALUES (22, 2, '2021-04-26 17:08:28', '李四', 10000.00, 500, '', 8);
INSERT INTO `tb_outport` VALUES (23, 11, '2021-04-26 17:17:31', '李四', 160.00, 20, '', 17);

-- ----------------------------
-- Table structure for tb_outsale
-- ----------------------------
DROP TABLE IF EXISTS `tb_outsale`;
CREATE TABLE `tb_outsale`  (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `outtime` datetime(0) NULL DEFAULT NULL COMMENT '退货时间',
  `outprice` double(50, 2) NULL DEFAULT NULL COMMENT '退货价格',
  `number` int(50) NULL DEFAULT NULL COMMENT '退货数量',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `goodsid` int(50) NULL DEFAULT NULL,
  `outserial` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退货编号',
  `sid` int(50) NULL DEFAULT NULL,
  `operateperson` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_outsale
-- ----------------------------
INSERT INTO `tb_outsale` VALUES (24, '2020-12-26 18:16:19', 3.00, 3, '', 17, '57UiV35', 9, '王五');
INSERT INTO `tb_outsale` VALUES (27, '2021-03-26 18:34:06', 20.00, 2, '', 8, 'H6s4ZR0', 10, '王五');

-- ----------------------------
-- Table structure for tb_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_permission`;
CREATE TABLE `tb_permission`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `pid` int(50) NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `href` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `percode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spread` int(50) NULL DEFAULT NULL,
  `available` int(50) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_permission
-- ----------------------------
INSERT INTO `tb_permission` VALUES (1, 0, 'menu', '进销存管理系统', NULL, NULL, 1, 1);
INSERT INTO `tb_permission` VALUES (2, 1, 'menu', '基础管理', NULL, '', 0, 1);
INSERT INTO `tb_permission` VALUES (3, 1, 'menu', '进货退货管理', NULL, NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (4, 1, 'menu', '销售管理', NULL, NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (5, 1, 'menu', '系统管理', NULL, NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (6, 1, 'menu', '其他管理', NULL, NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (8, 2, 'menu', '客户管理', '/toCustomer', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (9, 2, 'menu', '供应商管理', '/toProvider', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (10, 2, 'menu', '商品管理', '/toGoods', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (11, 3, 'menu', '商品进货', '/toInport', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (12, 3, 'menu', '商品退货查询', '/toOutport', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (13, 4, 'menu', '商品销售', '/toSale', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (15, 2, 'menu', '商品类别管理', '/toCategory', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (16, 5, 'menu', '权限管理', '/toPermission', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (17, 5, 'menu', '角色管理', '/toRole', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (18, 5, 'menu', '用户管理', '/toUser', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (19, 6, 'menu', '日志管理', '/toLog', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (21, 8, 'permission', '客户查询', NULL, 'customer:view', 0, 1);
INSERT INTO `tb_permission` VALUES (22, 8, 'permission', '客户添加', NULL, 'customer:create', 0, 1);
INSERT INTO `tb_permission` VALUES (23, 8, 'permission', '客户修改', NULL, 'customer:update', 0, 1);
INSERT INTO `tb_permission` VALUES (24, 8, 'permission', '客户删除', NULL, 'customer:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (25, 9, 'permission', '供应商查询', NULL, 'provider:view', 0, 1);
INSERT INTO `tb_permission` VALUES (26, 9, 'permission', '供应商添加', NULL, 'provider:create', 0, 1);
INSERT INTO `tb_permission` VALUES (27, 9, 'permission', '供应商修改', NULL, 'provider:update', 0, 1);
INSERT INTO `tb_permission` VALUES (28, 9, 'permission', '供应商删除', NULL, 'provider:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (29, 10, 'permission', '商品查询', NULL, 'goods:view', 0, 1);
INSERT INTO `tb_permission` VALUES (30, 10, 'permission', '商品添加', NULL, 'goods:create', 0, 1);
INSERT INTO `tb_permission` VALUES (31, 16, 'permission', '添加权限', NULL, 'permission:create', 0, 1);
INSERT INTO `tb_permission` VALUES (32, 16, 'permission', '修改权限', NULL, 'permission:update', 0, 1);
INSERT INTO `tb_permission` VALUES (33, 16, 'permission', '删除权限', NULL, 'permission:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (34, 16, 'permission', '权限查询', NULL, 'permission:view', 0, 1);
INSERT INTO `tb_permission` VALUES (35, 17, 'permission', '添加角色', NULL, 'role:create', 0, 1);
INSERT INTO `tb_permission` VALUES (36, 17, 'permission', '修改角色', NULL, 'role:update', 0, 1);
INSERT INTO `tb_permission` VALUES (37, 17, 'permission', '角色删除', NULL, 'role:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (38, 17, 'permission', '分配权限', NULL, 'role:selectPermission', 0, 1);
INSERT INTO `tb_permission` VALUES (39, 17, 'permission', '角色查询', NULL, 'role:view', 0, 1);
INSERT INTO `tb_permission` VALUES (40, 18, 'permission', '添加用户', NULL, 'user:create', 0, 1);
INSERT INTO `tb_permission` VALUES (41, 18, 'permission', '修改用户', NULL, 'user:update', 0, 1);
INSERT INTO `tb_permission` VALUES (42, 18, 'permission', '删除用户', NULL, 'user:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (43, 18, 'permission', '用户分配角色', NULL, 'user:selectRole', 0, 1);
INSERT INTO `tb_permission` VALUES (44, 18, 'permission', '重置密码', NULL, 'user:resetPwd', 0, 1);
INSERT INTO `tb_permission` VALUES (45, 18, 'permission', '用户查询', NULL, 'user:view', 0, 1);
INSERT INTO `tb_permission` VALUES (46, 19, 'permission', '日志查询', NULL, 'info:view', 0, 1);
INSERT INTO `tb_permission` VALUES (47, 19, 'permission', '日志删除', NULL, 'info:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (48, 19, 'permission', '日志批量删除', NULL, 'info:batchdelete', 0, 1);
INSERT INTO `tb_permission` VALUES (49, 20, 'permission', '公告查询', NULL, 'notice:view', 0, 1);
INSERT INTO `tb_permission` VALUES (50, 20, 'permission', '公告添加', NULL, 'notice:create', 0, 1);
INSERT INTO `tb_permission` VALUES (51, 20, 'permission', '公告修改', NULL, 'notice:update', 0, 1);
INSERT INTO `tb_permission` VALUES (54, 15, 'permission', '类别添加', NULL, 'category:create', 0, 1);
INSERT INTO `tb_permission` VALUES (55, 15, 'permission', '类别修改', NULL, 'category:update', 0, 1);
INSERT INTO `tb_permission` VALUES (56, 15, 'permission', '类别删除', NULL, 'category:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (57, 15, 'permission', '类别查询', NULL, 'category:view', 0, 1);
INSERT INTO `tb_permission` VALUES (58, 10, 'permission', '商品修改', NULL, 'goods:update', 0, 1);
INSERT INTO `tb_permission` VALUES (59, 10, 'permission', '商品删除', NULL, 'goods:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (60, 10, 'permission', '分配类别', NULL, 'goods:selectCategory', 0, 1);
INSERT INTO `tb_permission` VALUES (61, 11, 'permission', '进货查询', NULL, 'inport:view', 0, 1);
INSERT INTO `tb_permission` VALUES (62, 11, 'permission', '进货修改', NULL, 'inport:update', 0, 1);
INSERT INTO `tb_permission` VALUES (63, 11, 'permission', '进货删除', NULL, 'inport:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (64, 11, 'permission', '退货添加', NULL, 'return:create', 0, 1);
INSERT INTO `tb_permission` VALUES (65, 13, 'permission', '销售查询', NULL, 'sale:view', 0, 1);
INSERT INTO `tb_permission` VALUES (66, 13, 'permission', '销售添加', NULL, 'sale:create', 0, 1);
INSERT INTO `tb_permission` VALUES (67, 13, 'permission', '销售删除', NULL, 'sale:delete', 0, 1);
INSERT INTO `tb_permission` VALUES (68, 13, 'permission', '销售修改', NULL, 'sale:update', 0, 1);
INSERT INTO `tb_permission` VALUES (69, 11, 'permission', '进货添加', NULL, 'inport:create', 0, 1);
INSERT INTO `tb_permission` VALUES (70, 11, 'permission', '退货查询', NULL, 'return:view', 0, 1);
INSERT INTO `tb_permission` VALUES (71, 13, 'permission', '销售退货', NULL, 'returnsale:create', 0, 1);
INSERT INTO `tb_permission` VALUES (72, 4, 'menu', '商品销售退货', '/toOutsale', NULL, 0, 1);
INSERT INTO `tb_permission` VALUES (73, 13, 'permission', '销售退货查询', NULL, 'returnsale:view', 0, 1);
INSERT INTO `tb_permission` VALUES (74, 6, 'menu', '统计报表', '/toReport', NULL, 0, 1);

-- ----------------------------
-- Table structure for tb_provider
-- ----------------------------
DROP TABLE IF EXISTS `tb_provider`;
CREATE TABLE `tb_provider`  (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT '供应商编号',
  `providername` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商地址',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商公司联系电话',
  `opername` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '添加人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_provider
-- ----------------------------
INSERT INTO `tb_provider` VALUES (1, '旺旺食品', '仙桃市旺旺食品有限公司', '13622222525', NULL);
INSERT INTO `tb_provider` VALUES (2, '达利园食品', '汉川', '13511211111', NULL);
INSERT INTO `tb_provider` VALUES (3, '娃哈哈集团', '杭州', '13413441111', NULL);
INSERT INTO `tb_provider` VALUES (4, '格力集团', '仙桃', '13622222525', NULL);
INSERT INTO `tb_provider` VALUES (5, '小洋人集团', '汉川', '13511211111', NULL);
INSERT INTO `tb_provider` VALUES (6, '可口可乐', '杭州', '13413441111', NULL);
INSERT INTO `tb_provider` VALUES (7, '卫龙食品', '仙桃', '13622222525', NULL);
INSERT INTO `tb_provider` VALUES (8, '百草味食品', '汉川', '13511211111', NULL);
INSERT INTO `tb_provider` VALUES (9, '良品铺子', '杭州', '13413441111', NULL);
INSERT INTO `tb_provider` VALUES (10, '比比赞', '仙桃', '13622222525', NULL);
INSERT INTO `tb_provider` VALUES (11, '三只松鼠', '汉川', '13511211111', NULL);
INSERT INTO `tb_provider` VALUES (12, '购实惠', '杭州', '13413441111', NULL);
INSERT INTO `tb_provider` VALUES (13, '周黑鸭', '仙桃', '13622222525', NULL);
INSERT INTO `tb_provider` VALUES (14, '好利来', '汉川', '13511211111', NULL);
INSERT INTO `tb_provider` VALUES (26, '百事可乐有限公司', '河北省石家庄市百事可乐股份有限公司', '13633333333', '张三');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `roleid` int(50) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE,
  INDEX `rolename`(`rolename`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, '系统管理员', '拥有角色管理、为角色分配权限、用户管理、为用户分配角色');
INSERT INTO `tb_role` VALUES (2, '货物管理员', '管理进货退货');
INSERT INTO `tb_role` VALUES (4, '商品管理员', '管理商品、商品类别、供应商、客户、商品销售');

-- ----------------------------
-- Table structure for tb_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_permission`;
CREATE TABLE `tb_role_permission`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `role_id` int(50) NULL DEFAULT NULL,
  `permission_id` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_role_per_1`(`role_id`) USING BTREE,
  INDEX `fk_role_per_2`(`permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 491 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_role_permission
-- ----------------------------
INSERT INTO `tb_role_permission` VALUES (362, 2, 1);
INSERT INTO `tb_role_permission` VALUES (363, 2, 3);
INSERT INTO `tb_role_permission` VALUES (364, 2, 11);
INSERT INTO `tb_role_permission` VALUES (365, 2, 61);
INSERT INTO `tb_role_permission` VALUES (366, 2, 62);
INSERT INTO `tb_role_permission` VALUES (367, 2, 63);
INSERT INTO `tb_role_permission` VALUES (368, 2, 64);
INSERT INTO `tb_role_permission` VALUES (369, 2, 69);
INSERT INTO `tb_role_permission` VALUES (370, 2, 70);
INSERT INTO `tb_role_permission` VALUES (371, 2, 12);
INSERT INTO `tb_role_permission` VALUES (433, 4, 1);
INSERT INTO `tb_role_permission` VALUES (434, 4, 2);
INSERT INTO `tb_role_permission` VALUES (435, 4, 8);
INSERT INTO `tb_role_permission` VALUES (436, 4, 21);
INSERT INTO `tb_role_permission` VALUES (437, 4, 22);
INSERT INTO `tb_role_permission` VALUES (438, 4, 23);
INSERT INTO `tb_role_permission` VALUES (439, 4, 24);
INSERT INTO `tb_role_permission` VALUES (440, 4, 9);
INSERT INTO `tb_role_permission` VALUES (441, 4, 25);
INSERT INTO `tb_role_permission` VALUES (442, 4, 26);
INSERT INTO `tb_role_permission` VALUES (443, 4, 27);
INSERT INTO `tb_role_permission` VALUES (444, 4, 28);
INSERT INTO `tb_role_permission` VALUES (445, 4, 10);
INSERT INTO `tb_role_permission` VALUES (446, 4, 29);
INSERT INTO `tb_role_permission` VALUES (447, 4, 30);
INSERT INTO `tb_role_permission` VALUES (448, 4, 58);
INSERT INTO `tb_role_permission` VALUES (449, 4, 59);
INSERT INTO `tb_role_permission` VALUES (450, 4, 60);
INSERT INTO `tb_role_permission` VALUES (451, 4, 15);
INSERT INTO `tb_role_permission` VALUES (452, 4, 54);
INSERT INTO `tb_role_permission` VALUES (453, 4, 55);
INSERT INTO `tb_role_permission` VALUES (454, 4, 56);
INSERT INTO `tb_role_permission` VALUES (455, 4, 57);
INSERT INTO `tb_role_permission` VALUES (456, 4, 4);
INSERT INTO `tb_role_permission` VALUES (457, 4, 13);
INSERT INTO `tb_role_permission` VALUES (458, 4, 65);
INSERT INTO `tb_role_permission` VALUES (459, 4, 66);
INSERT INTO `tb_role_permission` VALUES (460, 4, 67);
INSERT INTO `tb_role_permission` VALUES (461, 4, 68);
INSERT INTO `tb_role_permission` VALUES (462, 4, 71);
INSERT INTO `tb_role_permission` VALUES (463, 4, 73);
INSERT INTO `tb_role_permission` VALUES (464, 4, 72);
INSERT INTO `tb_role_permission` VALUES (465, 1, 1);
INSERT INTO `tb_role_permission` VALUES (466, 1, 5);
INSERT INTO `tb_role_permission` VALUES (467, 1, 16);
INSERT INTO `tb_role_permission` VALUES (468, 1, 31);
INSERT INTO `tb_role_permission` VALUES (469, 1, 32);
INSERT INTO `tb_role_permission` VALUES (470, 1, 33);
INSERT INTO `tb_role_permission` VALUES (471, 1, 34);
INSERT INTO `tb_role_permission` VALUES (472, 1, 17);
INSERT INTO `tb_role_permission` VALUES (473, 1, 35);
INSERT INTO `tb_role_permission` VALUES (474, 1, 36);
INSERT INTO `tb_role_permission` VALUES (475, 1, 37);
INSERT INTO `tb_role_permission` VALUES (476, 1, 38);
INSERT INTO `tb_role_permission` VALUES (477, 1, 39);
INSERT INTO `tb_role_permission` VALUES (478, 1, 18);
INSERT INTO `tb_role_permission` VALUES (479, 1, 40);
INSERT INTO `tb_role_permission` VALUES (480, 1, 41);
INSERT INTO `tb_role_permission` VALUES (481, 1, 42);
INSERT INTO `tb_role_permission` VALUES (482, 1, 43);
INSERT INTO `tb_role_permission` VALUES (483, 1, 44);
INSERT INTO `tb_role_permission` VALUES (484, 1, 45);
INSERT INTO `tb_role_permission` VALUES (485, 1, 6);
INSERT INTO `tb_role_permission` VALUES (486, 1, 19);
INSERT INTO `tb_role_permission` VALUES (487, 1, 46);
INSERT INTO `tb_role_permission` VALUES (488, 1, 47);
INSERT INTO `tb_role_permission` VALUES (489, 1, 48);
INSERT INTO `tb_role_permission` VALUES (490, 1, 74);

-- ----------------------------
-- Table structure for tb_sale
-- ----------------------------
DROP TABLE IF EXISTS `tb_sale`;
CREATE TABLE `tb_sale`  (
  `saleid` int(50) NOT NULL AUTO_INCREMENT,
  `gid` int(50) NOT NULL COMMENT '商品外键',
  `custid` int(50) NULL DEFAULT NULL COMMENT '客户外键',
  `buyquantity` int(50) NULL DEFAULT NULL COMMENT '销售数量',
  `buytime` datetime(0) NULL DEFAULT NULL COMMENT '销售时间',
  `money` double(50, 0) NULL DEFAULT NULL COMMENT '销售金额',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `numbering` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '销售编号',
  `realnumber` int(50) NULL DEFAULT NULL COMMENT '实际销售量',
  PRIMARY KEY (`saleid`) USING BTREE,
  INDEX `fk_shop_sale`(`gid`) USING BTREE,
  INDEX `fk_customer_sale`(`custid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_sale
-- ----------------------------
INSERT INTO `tb_sale` VALUES (1, 8, 3, 20, '2021-01-10 17:28:26', 300, '111', 'admin', 'V4l3KvE', 20);
INSERT INTO `tb_sale` VALUES (2, 8, 4, 20, '2021-02-10 17:28:26', 300, '111', 'admin', 'n9TfSks', 20);
INSERT INTO `tb_sale` VALUES (3, 8, 5, 10, '2021-03-10 17:28:26', 300, '111', 'admin', 'cRkPJ3P', 10);
INSERT INTO `tb_sale` VALUES (4, 8, 3, 30, '2021-04-10 20:34:27', 15, '11', 'admin', 'YWZWZBa', 30);
INSERT INTO `tb_sale` VALUES (5, 8, 3, 20, '2021-04-11 21:07:50', 15, '', 'admin', 'NySfYiQ', 20);
INSERT INTO `tb_sale` VALUES (6, 38, 3, 20, '2021-04-16 09:23:11', 35, '', 'admin', 'kYi3Uen', 20);
INSERT INTO `tb_sale` VALUES (7, 8, 0, 10, '2021-04-17 09:30:52', 10, '', 'sp', 'mOs2nXN', 10);
INSERT INTO `tb_sale` VALUES (8, 8, 0, 1, '2021-04-17 09:36:53', 15, '', 'sp', 'L7RjgfM', 1);
INSERT INTO `tb_sale` VALUES (9, 17, 0, 10, '2021-04-26 17:32:39', 1, '', 'sp', '6LFgXV2', 7);
INSERT INTO `tb_sale` VALUES (10, 8, 0, 3, '2021-04-26 18:33:44', 10, '', 'sp', 'RZzqn1u', 1);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `uid` int(50) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码盐值',
  `uname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `usex` int(50) NULL DEFAULT NULL COMMENT '性别',
  `uphone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机',
  `uemail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `available` int(50) NULL DEFAULT 0 COMMENT '状态 0 启用 1 停用',
  `ucreatetime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `type` int(50) NULL DEFAULT NULL COMMENT '用户类型[0超级管理员 1普通用户]',
  PRIMARY KEY (`uid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `isdel`(`type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'admin', 'e53897b4beaf8f5376ed64bcb0878c7e', '65eef679a0fa4619b7098791db543bce', '张三', 1, '13622225252', '1111111111@qq.com', 1, '2021-04-03 20:11:07', 0);
INSERT INTO `tb_user` VALUES (4, 'hw', 'e78b9327ed15ed77f5522474f3b5f2f1', '83755b60e6b243f6bdb20dd7d8f94ec3', '李四', 1, '13622222222', '132@qq.com', 1, '2021-04-06 17:07:47', 1);
INSERT INTO `tb_user` VALUES (5, 'sp', 'dba0d1185f2f0e28868937b94d026c76', '1dbd977119614c32936a37aa57f3630e', '王五', 1, '13611111111', '111@qq.com', 1, '2021-04-16 09:32:12', 1);

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NULL DEFAULT NULL,
  `role_id` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user_role_1`(`user_id`) USING BTREE,
  INDEX `fk_user_role_2`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES (7, 1, 1);
INSERT INTO `tb_user_role` VALUES (13, 5, 4);
INSERT INTO `tb_user_role` VALUES (15, 4, 2);

SET FOREIGN_KEY_CHECKS = 1;
