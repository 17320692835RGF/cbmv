/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : cbmv

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 04/10/2021 16:25:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin_info
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_info`;
CREATE TABLE `t_admin_info`  (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `admin_pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `admin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_admin_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_custlist_info
-- ----------------------------
DROP TABLE IF EXISTS `t_custlist_info`;
CREATE TABLE `t_custlist_info`  (
  `custlist_id` int NOT NULL AUTO_INCREMENT COMMENT '客户id',
  `custlist_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户姓名',
  `custlist_mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户手机号',
  `custlist_nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户昵称',
  `custlist_headimg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户头像',
  `custlist_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '客户密码',
  `custlist_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '客户注册时间',
  PRIMARY KEY (`custlist_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_custlist_info
-- ----------------------------
INSERT INTO `t_custlist_info` VALUES (11, '田萌萌', '17831958162', '田萌萌', 'weiheerzhan.png', '123456', '2021-10-03 09:59:40');

-- ----------------------------
-- Table structure for t_subjlist
-- ----------------------------
DROP TABLE IF EXISTS `t_subjlist`;
CREATE TABLE `t_subjlist`  (
  `subjlist_id` int NOT NULL AUTO_INCREMENT COMMENT '技术ID',
  `subjlist_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技术编号',
  `subjlist_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技术名称',
  `subjlist_des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '技术描述',
  `subjlsit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`subjlist_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_subjlist
-- ----------------------------
INSERT INTO `t_subjlist` VALUES (1, '01', '猫科', '猫科动物（Felidae）：是哺乳纲、食肉目、猫科动物下的动物。分为2亚科即猫亚科和豹亚科。共有14属38种。', '2021-10-04 10:35:32');
INSERT INTO `t_subjlist` VALUES (2, '03', '犬科', '犬科动物是地球上较为成功的一种肉食哺乳动物。 犬科家族包括大约三十七种现存的 灰狼 ', '2021-10-04 10:34:20');
INSERT INTO `t_subjlist` VALUES (3, '04', '鱼类', '鱼纲动物是脊索动物门中种数最多的一类,终生在水中生活,以鳃呼吸,用鳍运动并维持身体平衡,听觉器只有内耳,多数体被鳞片,身体温度随环境变化,是变温动物。', '2021-10-04 10:33:53');
INSERT INTO `t_subjlist` VALUES (4, '05', '两栖', '两栖动物既有从鱼类继承下来适于水生的性状，如卵和幼体的形态及产卵方式等；又有新生的适应于陆栖的性状，如感觉器、运动装置及呼吸循环系统', '2021-10-04 10:32:48');
INSERT INTO `t_subjlist` VALUES (5, '06', '鸟类', '飞禽的总称，是适应于陆地和空中生活的高等脊椎动物。长羽毛，能维持身体的恒温;胸部有突起的龙骨突，全身骨骼多空隙，内充气体，故身体轻便', '2021-10-04 10:31:02');
INSERT INTO `t_subjlist` VALUES (6, '07', '爬行', '爬行动物是在3.15亿年前由两栖动物进化而来动物类群。心脏有两心房两心室，心室有不完全隔膜，体温不恒定的动物类群，是真正适应陆栖生活的变温脊椎动物', '2021-10-04 10:25:59');
INSERT INTO `t_subjlist` VALUES (7, '08', '软体', '软体动物最主要的特征就是身体柔软，并无内骨骼，大部分呈左右对称、不分节，它们外层皮肤会自背部折皱形成外套膜包围全身，并能够分泌保护用的石灰质介壳', '2021-10-04 10:20:01');
INSERT INTO `t_subjlist` VALUES (8, '09', '节肢', '节肢动物（Arthropoda）是身体分节、附肢也分节的动物，是动物界中种类最多、数量最大、分布最广的一类，常见的 鲎 、蜘蛛、蝎子、 水蚤 、虾、蟹、蜈蚣、蝗 虫、蝴蝶等都属于节肢动物', '2021-10-04 10:18:36');

-- ----------------------------
-- Table structure for t_umlist_info
-- ----------------------------
DROP TABLE IF EXISTS `t_umlist_info`;
CREATE TABLE `t_umlist_info`  (
  `umlist_id` int NOT NULL AUTO_INCREMENT COMMENT '后台用户ID',
  `umlist_pwd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '后台密码',
  `umlist_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `umlist_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `umlist_card` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户身份证',
  `umlist_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`umlist_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_umlist_info
-- ----------------------------
INSERT INTO `t_umlist_info` VALUES (1, '123456', '赵旭芝', '18207385496', '430521199905021254', '2019-03-06 17:55:12');
INSERT INTO `t_umlist_info` VALUES (2, '123456', '最代码', '13520109202', '430521131313131313', '2019-09-06 23:01:15');
INSERT INTO `t_umlist_info` VALUES (3, '123456', '雷思宇', '15273666981', '430521199904023388', '2019-03-07 08:56:20');
INSERT INTO `t_umlist_info` VALUES (4, '123456', '罗云轩', '17608410680', '430521199804090133', '2019-02-28 16:43:19');
INSERT INTO `t_umlist_info` VALUES (6, '123456', '甜蜜蜜', '17831958162', '370784198204171836', '2021-10-03 15:39:48');
INSERT INTO `t_umlist_info` VALUES (7, '123456', '田昊', '17831958162', '370784198204171836', '2021-10-04 10:23:46');
INSERT INTO `t_umlist_info` VALUES (8, '123456', '黄庭', '17320692835', '370784198204171836', '2021-10-04 10:24:44');

-- ----------------------------
-- Table structure for t_user_info
-- ----------------------------
DROP TABLE IF EXISTS `t_user_info`;
CREATE TABLE `t_user_info`  (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `user_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `user_nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `user_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_user_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_video
-- ----------------------------
DROP TABLE IF EXISTS `t_video`;
CREATE TABLE `t_video`  (
  `video_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '视频id',
  `video_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '视频名称',
  `tech_direction` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '技术方向',
  `lecturer` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主讲老师',
  `video_num` int NULL DEFAULT NULL COMMENT '播放次数',
  `fabulous_num` int NULL DEFAULT NULL COMMENT '点赞数',
  `collect_num` int NULL DEFAULT NULL COMMENT '收藏数',
  `cover_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '封面图片地址',
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上传时间',
  `upLoader` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '上传人',
  `video_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '视频地址',
  `video_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '视频描述',
  PRIMARY KEY (`video_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of t_video
-- ----------------------------
INSERT INTO `t_video` VALUES ('44f147dd4ba644aabf5bf7eef18230a2', '【白狮混剪】世界上最美的狮子', '猫科', '郭俊展', 1, 0, 0, '【白狮混剪】世界上最美的狮子.png', '2021-10-04 16:20:03', '黄庭', '【白狮混剪】世界上最美的狮子.mp4', '分为');
INSERT INTO `t_video` VALUES ('4f2431fa3236421599fe51729b1f8a7b', '“生来为了出众，何必费力合群”', '猫科', '任国锋', 0, 0, 0, '“生来为了出众，何必费力合群”.png', '2021-10-04 16:18:36', '黄庭', '“生来为了出众，何必费力合群”.mp4', '非常好');
INSERT INTO `t_video` VALUES ('c256cd1993654edfa42f89171452a49e', '“我想活下去！”', '两栖', '黄庭', 0, 0, 0, '“我想活下去！”.png', '2021-10-04 16:19:23', '黄庭', '“我想活下去！”.mp4', '分');
INSERT INTO `t_video` VALUES ('fd4b9701a271478da937e9a4a86b3aca', '【猎豹混剪】就快亿点点', '猫科', '张鹏飞', 1, 0, 0, '【猎豹混剪】就快亿点点.png', '2021-10-04 16:20:47', '黄庭', '【猎豹混剪】就快亿点点.mp4', '分为');

-- ----------------------------
-- Table structure for u_user_statistics
-- ----------------------------
DROP TABLE IF EXISTS `u_user_statistics`;
CREATE TABLE `u_user_statistics`  (
  `statistics_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '统计id',
  `staticics` int NULL DEFAULT NULL COMMENT '2.登录3.点赞4，播放',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间，默认系统时间',
  `video_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '视频id',
  `user_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户名',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`statistics_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of u_user_statistics
-- ----------------------------
INSERT INTO `u_user_statistics` VALUES ('00bdb85383484c8cbae14b9582e98998', 3, '2019-03-07 09:24:40', '00597f5bd9234e8da7caee63526075b9', '赵旭芝', '18207385496');
INSERT INTO `u_user_statistics` VALUES ('019e2606ddcf4f9b839af43c9cd8c3a7', 4, '2019-02-28 17:33:05', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('027ad313fe8d4cb599221e8c9b5df8f4', 4, '2021-10-03 18:07:11', '760dbe5ab3dd48b79ac1d5d795b0fe48', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('073b4d216ea94cedaca141a428587bd2', 4, '2019-02-28 18:23:13', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('0740d531e745413f83793fe416d361ab', 1, '2019-03-06 18:24:44', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('08b72a6747a9411092435cdf6b534672', 2, '2019-02-26 23:36:59', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('095c1290872c4463b6f9e84f67eaedfa', 1, '2019-03-06 18:24:40', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('09a1d73e2d95400ebe6179a17d58868f', 2, '2019-02-27 10:49:33', NULL, '张三', NULL);
INSERT INTO `u_user_statistics` VALUES ('0aa8ec4a3b28415f8d7fcc8956dad62f', 2, '2019-02-28 14:05:13', NULL, '张田', NULL);
INSERT INTO `u_user_statistics` VALUES ('0b3c3e805ce74a15b26e318cf3c27b12', 1, '2019-03-06 18:24:37', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('0d4b3ca7f87446428b0f048c34ad7d1b', 4, '2019-03-07 09:23:52', 'f39c596f178f48f09d190f5391aa18f1', '雷思宇', NULL);
INSERT INTO `u_user_statistics` VALUES ('0f0bb18ef7074a519ad5390e65039867', 2, '2019-02-28 20:15:04', NULL, 'Lisa', NULL);
INSERT INTO `u_user_statistics` VALUES ('0f37c485190b475c92f315bdf86515e7', 2, '2019-02-28 11:17:58', NULL, '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('119e6325fc484beb95a5bd29640299a1', 2, '2019-02-28 18:04:26', NULL, '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('11c65a84afc2428eabf6ce344442d024', 4, '2019-02-28 18:38:45', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('11ea3b1461a3446ca18590f7acf0ce15', 1, '2019-03-06 18:24:39', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('123456', 3, '2019-02-27 09:47:17', NULL, '123456', NULL);
INSERT INTO `u_user_statistics` VALUES ('1359a2549c924d67bb269558004a61b2', 2, '2019-02-26 23:39:45', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('1483f3f869564a99953644bed239c95c', 4, '2019-02-28 18:23:57', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('14f9f93e44324a0faf4b8d8894b96345', 1, '2019-03-06 18:24:38', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('177b5ca2cdc741eabae4debdbb453dc9', 1, '2019-03-06 18:24:40', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('17cb70c35ada48498ba6a284bb9eec92', 2, '2019-02-27 16:24:48', NULL, '李四', NULL);
INSERT INTO `u_user_statistics` VALUES ('17d046e313c041b7a2fafe2e4ad12096', 1, '2019-03-07 09:22:38', '00597f5bd9234e8da7caee63526075b9', '雷思宇', '15273666981');
INSERT INTO `u_user_statistics` VALUES ('1b6aa8c77f12401cac35ee9536434671', 2, '2021-10-03 11:00:16', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('1be98d77be514ff3ba8e538a183bca85', 4, '2019-03-06 18:20:43', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('1bf24a7cb83b47a192b43bbe343b42ef', 4, '2019-03-07 09:22:54', '53431bfe4f9147f7ac71f8543c89a7bc', '雷思宇', NULL);
INSERT INTO `u_user_statistics` VALUES ('1cdef0e75e4343a6af2fa46f52050240', 2, '2019-02-26 20:01:51', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('1e5e008531934ebc87e80d0176a1580f', 4, '2019-03-07 09:22:37', '00597f5bd9234e8da7caee63526075b9', '雷思宇', NULL);
INSERT INTO `u_user_statistics` VALUES ('200921677d3b469085a6261537a0d04d', 4, '2019-02-28 22:06:45', 'f39c596f178f48f09d190f5391aa18f1', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('211258a454904dedb2369657d956bf34', 4, '2019-02-28 20:09:09', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('213f28d7b3f645ffb5455e35f0215d7c', 2, '2019-02-26 20:09:42', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('219d197402304deb9c5790817b0ea3cf', 2, '2021-10-04 15:11:03', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('21c3efa4cb034a69ba3fa8f1e7820280', 4, '2019-03-07 09:24:05', '37ca05b4a0644fed88347433a77aa254', '雷思宇', NULL);
INSERT INTO `u_user_statistics` VALUES ('221427bd162249c1a650081b22444f8f', 4, '2019-02-28 18:03:04', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('230c497a13444fe78a05f1d276477c13', 3, '2019-03-06 19:05:52', 'b92d5889ab474dce9361a32618fd16a8', 'Rose', '16207385451');
INSERT INTO `u_user_statistics` VALUES ('2350b61698da4a4a9912309c4da91359', 4, '2019-03-07 09:24:49', '37ca05b4a0644fed88347433a77aa254', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('23bf85ab444248889efdbe8b7f1ec322', 4, '2019-03-06 18:01:45', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('23ea80d0bc294d2b9165f0f1026c858b', 4, '2019-03-06 18:02:16', '37ca05b4a0644fed88347433a77aa254', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('24268d94d2d34842b1b0c30525c7f39a', 4, '2019-03-06 18:02:20', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('2616bec70b6447cd985a3b84697bf241', 4, '2019-02-28 18:03:26', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('261fab63109e4a609ceeeb85036a5bc6', 1, '2019-03-06 18:24:41', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('26e5e36c8ec04a71ae5a999720e9bed0', 4, '2019-03-06 18:02:01', 'f39c596f178f48f09d190f5391aa18f1', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('2791a3e18f0244d391704640bfc84230', 4, '2021-10-03 10:00:33', '00597f5bd9234e8da7caee63526075b9', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('27e7ead90769485d95eee0a0a922b030', 2, '2019-02-28 20:06:14', NULL, '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('28469a4f2d1f4d73aee8941ccbe46555', 2, '2019-02-26 21:47:47', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('285a74a877e245bcad08ffdd421a5f46', 1, '2019-03-06 18:24:41', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('289d2f6f08a544a39036be9cc80ddcc5', 4, '2019-02-28 18:35:59', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('2a13c7fd5c384912b898f73244fd0300', 2, '2019-02-26 20:19:56', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('2c0e61bb9cb64e69b65c12440368d857', 1, '2019-03-07 09:24:06', '37ca05b4a0644fed88347433a77aa254', '雷思宇', '15273666981');
INSERT INTO `u_user_statistics` VALUES ('2c27afd12d154e4bae4241ae637a418d', 2, '2019-02-26 23:43:19', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('2c3293eb5cb64a80af8f35f08e6c6ebf', 2, '2019-02-26 20:59:38', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('2c3f6b1e095c4dc994d06bb4e9b6d65b', 4, '2019-02-28 20:06:19', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('2c77367606bb4e0cbfd8ab1e5b2001a7', 2, '2021-10-04 15:02:19', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('2eb6d469930e4315b0bab1e1381988d2', 2, '2019-02-26 23:32:49', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('2fea99575c92489e90c2ef745d71fff2', 2, '2021-10-04 16:24:14', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('3074ed3a32fc466d8e5bd222f3cf5dcd', 1, '2019-03-06 18:24:41', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('3107dca1060e4c12bfb592ae58641f4b', 2, '2021-10-04 15:15:23', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('313f0aa54a654564b80a8c8bfeccf658', 1, '2019-03-06 19:05:24', '53431bfe4f9147f7ac71f8543c89a7bc', 'Rose', '16207385451');
INSERT INTO `u_user_statistics` VALUES ('31fee0a51d974ff485ab2c08c8e5a2d9', 1, '2019-03-06 18:24:42', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('32b1713bce54471599e386f1909d1e62', 2, '2019-03-05 20:06:24', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('33656737e8534833abd98c10dd8ed3b9', 1, '2019-03-06 18:24:41', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('343f709b55734f02b51e69c1221e2657', 2, '2019-03-01 20:48:45', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('34ffeaffb78a4f66a0af31f4d056ee0a', 4, '2019-03-07 09:19:35', '00597f5bd9234e8da7caee63526075b9', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('35051d3e272e45fda59778f39e31b3ac', 3, '2019-03-07 09:24:51', '37ca05b4a0644fed88347433a77aa254', '赵旭芝', '18207385496');
INSERT INTO `u_user_statistics` VALUES ('3509b22f57874790bc792a52e42fc4fe', 1, '2019-03-07 09:23:53', 'f39c596f178f48f09d190f5391aa18f1', '雷思宇', '15273666981');
INSERT INTO `u_user_statistics` VALUES ('354f9c50d70747ffbdb68c89e84870d7', 4, '2019-03-06 19:05:31', 'f39c596f178f48f09d190f5391aa18f1', 'Rose', NULL);
INSERT INTO `u_user_statistics` VALUES ('359668185e514ef8a0169c9f445ef551', 4, '2019-02-28 20:07:45', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('3631dc32ae524a02997945ed92e14430', 2, '2019-02-26 21:18:31', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('36ab9d2ea1904ba59810b2a712092036', 4, '2019-02-28 22:12:43', '37ca05b4a0644fed88347433a77aa254', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('36ddb0566041458289afdcc74f17ea19', 1, '2019-03-06 18:24:38', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('373295b06b8b4e27b60c7af530d0419f', 2, '2019-02-26 18:04:38', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('378a051aca994cf49167280db4a596dc', 3, '2019-03-07 09:23:53', 'f39c596f178f48f09d190f5391aa18f1', '雷思宇', '15273666981');
INSERT INTO `u_user_statistics` VALUES ('3986c9724d214361b198b13ef512430b', 4, '2019-02-28 17:46:34', 'd02959e8c75d40f6ba36aa06628e2b72', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('39a7573be6464aa8affa15101af31108', 1, '2019-03-06 18:24:39', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('39befceaac4843e9978c4c8fc66f43f3', 2, '2019-02-28 14:05:31', NULL, '张田', NULL);
INSERT INTO `u_user_statistics` VALUES ('3a58e7ee9a7f4118bfb4ceb72dd85d17', 2, '2019-02-27 09:11:31', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('3b1995fd46054ffb95e2cf510e9a27f5', 2, '2019-03-06 18:20:41', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('3b3e28dac9104316a44178ba094f1236', 4, '2019-03-07 09:18:30', '37ca05b4a0644fed88347433a77aa254', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('3de2bbdc2a894f02808f27053a0de4f5', 4, '2021-10-03 15:07:20', 'ebce544c5043492788a29487a305fbc8', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('3deb8d4c1524492fa15787d6c737e144', 4, '2019-02-28 22:02:51', 'd02959e8c75d40f6ba36aa06628e2b72', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('412e58e796184652ac1c2722adf17bd1', 4, '2019-03-07 09:20:01', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('4158c82425e742048fa13c10f8e17586', 2, '2019-02-26 20:44:05', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('4354772854404fd68b30f42bc5c3ca1f', 4, '2019-03-06 18:02:08', 'f39c596f178f48f09d190f5391aa18f1', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('44332fc35dd840f6b6ff06cfa5a231ef', 4, '2021-10-04 15:33:34', '66e482c1d7a24208849712a4f1cde9ac', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('4505bd0099b04caead03c58205ba7afd', 2, '2019-02-26 21:29:48', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('45d819dde19a439da7a7b8a16a523039', 2, '2019-02-26 21:46:09', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('46df72ce04e94ace96e05b8b3745758e', 4, '2019-02-28 16:29:05', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('485f75c481064dd0b8d95692a09ad379', 4, '2019-02-28 18:03:23', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('48a267de8ab24db89eee63460599795d', 2, '2021-10-04 15:06:25', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('4a05b34398fc4ca5972f2cd91c3cce1f', 1, '2019-03-06 18:24:39', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('4a7e4279ab6843db8cf6005d21a6cdf9', 4, '2019-03-06 19:05:42', 'b92d5889ab474dce9361a32618fd16a8', 'Rose', NULL);
INSERT INTO `u_user_statistics` VALUES ('4ac23e84d83d446ebcd9a20f627e1e63', 2, '2019-02-26 21:25:00', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('4cd99dae5e174b25b5f8e7ba4bdc403a', 1, '2019-03-06 18:24:43', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('4d8851cca7774e5d8d3fa4581ff05984', 4, '2019-02-28 18:02:09', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('4db9ef205be44a8389963c3bb2c6afbc', 4, '2019-02-28 17:32:33', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('4e435bda51db4f90830ff4be8b0297f4', 2, '2021-10-03 18:02:25', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('4e8dc1a63a2841a98ad51825105bb0b9', 1, '2021-10-03 18:05:56', '760dbe5ab3dd48b79ac1d5d795b0fe48', '田萌萌', '17831958162');
INSERT INTO `u_user_statistics` VALUES ('5017a836b35a4646bd14839fd684d8aa', 4, '2019-02-28 17:41:47', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('519e78b1329e424f9a2134e2f52afe8f', 1, '2019-03-06 18:24:37', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('52da8d5e18f842d692d471ccdfe952f8', 1, '2019-03-06 18:24:43', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('52f9cf5758fa448bb1d5f982f5d80d97', 4, '2021-10-04 09:03:54', 'fa3b204984ce4cf0a0a7be5893e2b672', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('538a7a9d63b94092b98f2c6cb7f3b1f5', 2, '2019-02-26 22:16:44', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('539b0da668264e8083453a6c711d1c41', 4, '2021-10-04 16:24:17', 'fd4b9701a271478da937e9a4a86b3aca', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('5448548e671c4f38995f40e3c181deed', 4, '2019-02-28 18:04:02', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('55d47e6039c94d7e9412c9cbdd264219', 2, '2019-02-28 11:16:36', NULL, '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('59600f6b33854edab64777df46c6b806', 2, '2019-02-26 20:39:17', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('59af774a072a40319a7091864d89bd65', 4, '2021-10-03 10:50:51', 'ebce544c5043492788a29487a305fbc8', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('59b7835f6b8040d8ba04ca09d116c716', 4, '2019-02-28 21:02:51', 'd02959e8c75d40f6ba36aa06628e2b72', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('5a87fc95660c41adb4b56634e26a61bb', 3, '2019-03-07 09:22:39', '00597f5bd9234e8da7caee63526075b9', '雷思宇', '15273666981');
INSERT INTO `u_user_statistics` VALUES ('5a9411db3ab44cacbbe443afcf9a02bd', 4, '2021-10-04 15:02:22', '66e482c1d7a24208849712a4f1cde9ac', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('5ae73705e7d748f1899194a82fa36508', 4, '2019-03-07 09:21:35', 'f0c45c58b1c14a7fa578b671254664c7', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('5f82f322c7764f2da32366141e600626', 4, '2019-03-06 19:04:15', '37ca05b4a0644fed88347433a77aa254', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('612d4277729c4502be05ce05661fa834', 4, '2019-02-28 17:41:47', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('617931746e1d444e89e5f86f318ba5ac', 4, '2019-03-07 09:25:15', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('61a2eda20f294f199506714acdcca708', 4, '2019-02-28 22:02:58', 'd02959e8c75d40f6ba36aa06628e2b72', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('63089b25411b45e7a59b4d1c607247ae', 2, '2019-02-28 16:26:41', NULL, '猪崽子', NULL);
INSERT INTO `u_user_statistics` VALUES ('64f2584802684b2dbf5620e3ee0b11a8', 3, '2019-03-07 09:24:46', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', '18207385496');
INSERT INTO `u_user_statistics` VALUES ('679ecd0bc7e14bc5a5b248644b1d7088', 2, '2021-10-03 14:23:41', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('68bffc20b9be4e0ea1dcf05ad6beb491', 2, '2019-02-26 20:16:11', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('696f305c25a54e048b9d6dfb7afa5aa5', 4, '2019-02-28 18:32:46', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('6b2133f5e8ed45fd916ffb016f9b048d', 2, '2021-10-03 10:12:45', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('6bc9251db6524efa97d88da224ebb424', 2, '2019-03-05 20:08:58', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('6c1cacf8a1ac444a80e4470d6ab1c05e', 2, '2019-03-05 20:37:03', NULL, 'lisa', NULL);
INSERT INTO `u_user_statistics` VALUES ('6c92395640764b898a536d0d50662755', 2, '2019-03-05 20:04:57', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('6de9bed070c24bf99acb61db6fde36e5', 4, '2019-02-28 17:41:48', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('6e0523d902bc4536b61b5e49cc8a2d11', 4, '2021-10-04 16:24:25', '44f147dd4ba644aabf5bf7eef18230a2', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('6e1cf92aa70343c99046d69e362b86e3', 1, '2019-03-06 18:24:42', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('6e7473f8c22b4b4cab5b2c79a84eb28d', 2, '2019-02-26 21:51:57', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('70b42809f2574d22b7f2c146ebd1d22a', 2, '2019-03-06 17:50:41', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('70fbad3ebd834d1a8f006f815bef9e2b', 4, '2019-03-06 17:50:47', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('732ba843053b4715b8d514f7fc94973b', 4, '2019-03-06 18:23:59', '53431bfe4f9147f7ac71f8543c89a7bc', '雷思宇', NULL);
INSERT INTO `u_user_statistics` VALUES ('73c9773733bf4ce69241f4adddc263ff', 2, '2019-02-26 22:16:55', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('73f023fd1e9744babd3adbb7bdf80d34', 2, '2019-02-27 10:46:49', NULL, '<a href=\'#\'>张三</a>', NULL);
INSERT INTO `u_user_statistics` VALUES ('75b2c42c584d4c72865a61c9a3426f24', 2, '2021-10-03 10:00:17', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('77eed6da72f645c7b80aa641f734fafb', 4, '2019-02-28 17:46:26', '37ca05b4a0644fed88347433a77aa254', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('78775377835d4474be6da45df1b64611', 4, '2019-02-28 17:31:42', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('796ffe8b50644c9db5bf52a9a3abfed0', 4, '2021-10-04 15:02:56', '66e482c1d7a24208849712a4f1cde9ac', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('79e6aebe7a8f4ec091f5990147a41400', 4, '2019-03-07 09:25:10', '00597f5bd9234e8da7caee63526075b9', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('7a3ff55f15124685bb3d8cfd1f33095c', 4, '2021-10-03 10:12:47', 'ebce544c5043492788a29487a305fbc8', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('7abd7a3bb7004d2e9704b1a525c2fffe', 1, '2019-03-07 09:25:12', '00597f5bd9234e8da7caee63526075b9', '赵旭芝', '18207385496');
INSERT INTO `u_user_statistics` VALUES ('7b150cc754284c219dd6d3bdfa1280c1', 4, '2019-03-07 09:18:47', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('7b68fe900a894122adb39ac1354cba9d', 4, '2019-03-07 09:20:24', '37ca05b4a0644fed88347433a77aa254', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('7bc50f6ed7054633a841608e12fef1c5', 2, '2021-10-04 15:19:41', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('7c7eb3ece7954b078789eba141114d47', 2, '2019-03-05 19:54:56', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('7c88650868a145a0bcbd8c6a29281a7a', 4, '2019-03-06 18:24:13', '53431bfe4f9147f7ac71f8543c89a7bc', '雷思宇', NULL);
INSERT INTO `u_user_statistics` VALUES ('7ca6b7c9390048e5a64d0fa90ef8002a', 4, '2019-02-28 18:36:20', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('7cae8ec2c9f04dedbdc41612d52cb727', 1, '2019-03-06 18:24:40', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('7db9f434ce7043d9ad9a241950178cfe', 4, '2019-02-28 18:03:35', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('7ddd2c2caf4b439e94256a3e8361eff8', 4, '2021-10-04 15:06:28', '66e482c1d7a24208849712a4f1cde9ac', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('808906899de54f7f9f20c0374166876c', 2, '2019-03-05 20:07:39', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('81313cc5e0ec4d46892875fcb724fb52', 2, '2019-02-28 16:27:25', NULL, '苹果', NULL);
INSERT INTO `u_user_statistics` VALUES ('826b1e4370ec4b04bb81c597196912cd', 4, '2019-03-06 19:03:19', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('8313d1b2b073432d8c0bbcbf73ab3c85', 4, '2021-10-03 18:04:46', '760dbe5ab3dd48b79ac1d5d795b0fe48', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('83a442e18d634ac1a680de301e0ed549', 4, '2019-02-28 18:03:36', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('856060f09b694f99a05144cc9ba871f2', 4, '2019-03-06 19:06:23', '37ca05b4a0644fed88347433a77aa254', '张田', NULL);
INSERT INTO `u_user_statistics` VALUES ('85bf94a7ce5d4215ad2127755e64b8a9', 1, '2019-03-06 18:24:42', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('8652b179d079410ca2b59f19c94ca7db', 2, '2019-02-28 20:02:01', NULL, '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('86c8d80e6b764a848f07f697e2c19400', 2, '2019-02-26 20:02:11', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('8705a7cb9e9f488d94d64794e2b37905', 2, '2019-02-27 16:24:59', NULL, '李四', NULL);
INSERT INTO `u_user_statistics` VALUES ('89a479f8c9cf4aff8a234244dc736faf', 4, '2019-03-07 09:18:11', 'f0c45c58b1c14a7fa578b671254664c7', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('8a7fbe47861d4dd4a46d774e50d41758', 4, '2019-03-07 09:20:39', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('8b2a0b51159e46f1acb32866a0ed15ed', 3, '2019-03-07 09:18:39', 'd02959e8c75d40f6ba36aa06628e2b72', '赵旭芝', '18207385496');
INSERT INTO `u_user_statistics` VALUES ('8b4fa7532b304a34b19d33af012d1549', 4, '2019-02-28 17:31:50', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('8b731c314b374a0daba1ab997ee8ed62', 2, '2019-02-26 20:09:32', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('8bc0f0b044bf464fa25bbbc4f32f1e6c', 1, '2019-03-06 18:24:41', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('8bceeb64a81348c380cb8a37875b5e6f', 4, '2019-02-28 18:38:33', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('8c5c84d8f1c74fdbbfbc44812f43925c', 2, '2019-03-06 18:01:41', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('8e8e639133d34ba8a4d528460fd43d87', 4, '2021-10-04 15:11:06', '66e482c1d7a24208849712a4f1cde9ac', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('8e9827af9482448d9245e15fe327b88c', 4, '2019-02-28 18:03:53', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('8eaa78285a694ea1a3b52c5c9c2db3cd', 4, '2019-02-28 18:04:00', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('8f848b5da1bd41c38e558f18c341c0d8', 4, '2019-03-06 17:53:17', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('8faec973e3dc4f5c84525fa4d694fe0e', 4, '2019-03-06 18:02:24', 'f39c596f178f48f09d190f5391aa18f1', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('8fd1c4e87f2b4daf90e69ad1b11948a4', 4, '2019-03-07 09:03:41', '00597f5bd9234e8da7caee63526075b9', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('8feec0a26c984e1e8eff3246df37ace1', 4, '2019-03-07 09:23:40', '53431bfe4f9147f7ac71f8543c89a7bc', '雷思宇', NULL);
INSERT INTO `u_user_statistics` VALUES ('90f3e0e2e4f0466d9e17af9551b0a44c', 1, '2019-03-07 09:18:43', 'd02959e8c75d40f6ba36aa06628e2b72', '赵旭芝', '18207385496');
INSERT INTO `u_user_statistics` VALUES ('91bcb4fa3d154a23b122ec1e81177d4f', 4, '2019-02-28 18:23:37', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('91c30fdeca064cbe91ad26d399fc0300', 4, '2019-03-07 09:19:39', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('94e066d3b0ab4cdf9cb6227e29de2b0a', 1, '2019-03-06 18:24:44', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('952f50b393284410aea09fdd96a9d1e2', 4, '2019-02-28 18:31:50', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('9622c95a3fce49f7b76f30fa12a8b392', 4, '2019-03-06 19:55:28', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('9682204cf18542e39dbc3823544172ba', 1, '2019-03-06 18:24:43', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('97e390c1d05c4a6885833b4dda176ac3', 4, '2019-02-28 16:55:19', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('9897f0d461d24f198bb225bec0771997', 1, '2019-03-06 18:24:38', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('99143d35f92043a8b1ce772d1338981e', 1, '2019-03-06 18:24:44', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('9a8d34abda9648cd9030bcdee44febed', 4, '2019-02-28 18:04:32', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('9ac1178c47d4402da7a7411390a78324', 4, '2019-02-28 17:41:44', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('9b4bf21b9ff2490f9b66c64ee6ecb408', 2, '2019-03-06 17:53:14', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('9cbe71cd7633407bbd64b10702913703', 2, '2019-02-26 23:53:16', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('9cdd957d55b947e1b25e80b627929e2c', 4, '2019-02-28 17:43:06', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('9cdf843a538d43a99ad996669bf81ee2', 1, '2019-03-06 18:24:43', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('9cedb452d95e4e088379724904769acf', 4, '2019-02-28 18:03:35', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('9dbe7b69a75c45bf9630dff9ff97afa1', 4, '2019-02-28 17:29:52', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('9e75d02e49904f3ca743134c671178a8', 4, '2021-10-03 11:00:47', 'ebce544c5043492788a29487a305fbc8', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('9f29953832cf4c62afb91d70d2927cd0', 4, '2019-03-06 19:04:27', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('9ff27aa181e44f6eb1d46f74ec190121', 2, '2021-10-03 10:50:35', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('a209a09c0ba3497c8bab0a505ceacedb', 4, '2019-02-28 18:39:04', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('a578150083f84a0cb8f3d931ed269ca4', 2, '2019-02-28 20:09:05', NULL, '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('a614674e35c148ef94564f172d4ca946', 4, '2019-02-28 18:35:54', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('a62ab5b2f2cc46b1bf26bb75662143ee', 4, '2019-03-06 18:02:12', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('a87533a9de4d48bcaf82c871b2898805', 2, '2019-02-26 20:09:24', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('a95ce5e2a729458a8884316c71ada0d5', 3, '2019-03-07 09:21:59', 'b92d5889ab474dce9361a32618fd16a8', '赵旭芝', '18207385496');
INSERT INTO `u_user_statistics` VALUES ('aa7604e4803b436a9e3beb3732005ed6', 1, '2019-03-07 09:23:59', '53431bfe4f9147f7ac71f8543c89a7bc', '雷思宇', '15273666981');
INSERT INTO `u_user_statistics` VALUES ('aa7c9f98d3214af59af0694e0e0db7bd', 4, '2019-03-06 19:05:19', '53431bfe4f9147f7ac71f8543c89a7bc', 'Rose', NULL);
INSERT INTO `u_user_statistics` VALUES ('aae4dd92d5eb476593c78cfe400ba024', 4, '2019-02-28 17:29:45', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('ab47a7b580c34d96a4f0858a968045b5', 2, '2019-02-28 18:39:02', NULL, '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('ab81a2da288547108fe1b61c662cf8ec', 4, '2019-03-07 09:20:12', 'f39c596f178f48f09d190f5391aa18f1', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('abe290a2830d49c1928398a10185b8a3', 4, '2019-02-28 18:02:36', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('ac54de7b744d4092b095ec0995455321', 1, '2019-03-06 19:05:44', 'b92d5889ab474dce9361a32618fd16a8', 'Rose', '16207385451');
INSERT INTO `u_user_statistics` VALUES ('adad6bdb9cbc4e0e81285ada6df3c465', 2, '2021-10-04 15:13:03', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('ade53ee6bd494ed189d91717a851e7b3', 4, '2019-02-28 18:32:11', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('b071f35e533a4b1097f056c2b3d5b370', 2, '2019-02-28 20:14:56', NULL, 'Lisa', NULL);
INSERT INTO `u_user_statistics` VALUES ('b3186e82e12048b191cc7a27889290cd', 2, '2019-02-26 21:42:38', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('b31f96e8364245ec8e41454b9af254c7', 4, '2019-02-28 18:38:14', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('b33cfcb51205461eb86d90d598dfb2e9', 4, '2019-02-28 20:30:43', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('b3c5c77324fa478caaeb1dad4d34eb85', 4, '2019-03-07 09:18:26', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('b3ded425d0f74ddc824ec69a28ae15b9', 1, '2019-03-06 18:24:43', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('b430c32b107e4192b8851a8c59987e3f', 2, '2019-02-28 16:26:52', NULL, '猪崽子', NULL);
INSERT INTO `u_user_statistics` VALUES ('b44b381ec3d44074956d374366c89913', 4, '2021-10-04 15:03:02', '66e482c1d7a24208849712a4f1cde9ac', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('b46029cdcb2b4d9baf410edb485e384c', 4, '2019-02-28 22:00:02', 'd02959e8c75d40f6ba36aa06628e2b72', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('b5ce9cc0b3ed46a088bda8d6cb626e3f', 4, '2019-02-28 18:03:05', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('b6f9179cbce042aa834202b370015220', 1, '2019-03-07 09:25:16', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', '18207385496');
INSERT INTO `u_user_statistics` VALUES ('b893071e8ca44267bfb82a2bb735d91b', 1, '2019-03-06 18:24:41', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('b8abe79a065a4297ba4e097e01beb01f', 2, '2019-02-26 20:02:02', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('b9c3782549ff480bac1989e599527c41', 2, '2019-03-04 19:56:59', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('b9d9d62e783b4193b37726edb59be976', 4, '2019-03-07 09:19:43', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('beaeba6b7ead4088952af1a929de7541', 4, '2019-02-28 16:30:04', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('bf2cbba150824fa1a616a230f513f0ea', 4, '2019-02-28 18:04:48', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('bffc987d923f4d8a9332fe9d948c8786', 4, '2019-02-28 18:38:16', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('c01cd6cedb46400e9cd08f90858eb1eb', 4, '2019-02-28 18:38:28', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('c09761851ec14bd692621502ed3f77ff', 4, '2021-10-04 15:19:44', '66e482c1d7a24208849712a4f1cde9ac', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('c0ec780654fa43659e6de0db41835045', 4, '2019-03-07 09:21:42', 'b92d5889ab474dce9361a32618fd16a8', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('c213b731b900453c9ed2c90c213253fe', 4, '2019-02-28 17:31:46', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('c21ecabadc1345f39a3085b94bb1c6a4', 4, '2019-02-28 17:31:39', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('c2657b2db1a24e418d6cc89a5bf13c8c', 2, '2019-03-07 09:25:07', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('c2c4a157362a485082ff493f8dcea494', 1, '2019-03-06 18:24:39', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('c6045be0fcf449579b5332b11b402893', 4, '2021-10-03 10:00:41', '2ecc6e0a57ff4ac3a23378f8ba7c545c', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('c8487cd497b547f8b60fa6d0847eaddd', 3, '2019-03-06 19:05:39', 'f39c596f178f48f09d190f5391aa18f1', 'Rose', '16207385451');
INSERT INTO `u_user_statistics` VALUES ('c8813965ea4343eaa392d62b514a4402', 4, '2019-02-28 18:03:01', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('c883330d8f89498e8575e60290e60376', 4, '2019-03-07 09:19:26', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('ca4f70572bf7438db27d85f6b18d0490', 4, '2019-03-06 18:19:47', 'f39c596f178f48f09d190f5391aa18f1', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('cb16db0a97514aca83e5c742ad188035', 2, '2019-02-26 23:37:28', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('cbc792547b90499ebdf2786c24ff1db6', 2, '2019-02-28 14:05:38', NULL, '张田', NULL);
INSERT INTO `u_user_statistics` VALUES ('cc238a5d30dd40a78e83add5335ea587', 4, '2019-02-28 17:30:32', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('cc552db4ec1042839e2f3e961b12fbcc', 4, '2019-03-07 09:17:20', 'b92d5889ab474dce9361a32618fd16a8', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('cca7d54e3b514761a3ae2be6f0499980', 3, '2019-03-07 09:23:31', '53431bfe4f9147f7ac71f8543c89a7bc', '雷思宇', '15273666981');
INSERT INTO `u_user_statistics` VALUES ('cd666b9b7dec4d29b55b773be4433936', 4, '2021-10-03 10:00:25', '2ecc6e0a57ff4ac3a23378f8ba7c545c', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('ce2f122832f5498db38d8133aac7d858', 4, '2019-03-06 19:04:35', 'f39c596f178f48f09d190f5391aa18f1', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('ce45b11a90ad4502aee456d5b75cb146', 1, '2019-03-06 18:24:42', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('cfac11778896449fa32bb47488cfe358', 4, '2019-02-28 18:04:28', '23b6ddfa327a4e7b9c6ea8111ce1aff4', '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('d078fdd8ee5e4fb58d65160fdbcb48d9', 4, '2019-03-07 09:20:33', 'f39c596f178f48f09d190f5391aa18f1', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('d111968bfb104018a5f67dee44bf4fb7', 1, '2019-03-06 19:05:45', 'b92d5889ab474dce9361a32618fd16a8', 'Rose', '16207385451');
INSERT INTO `u_user_statistics` VALUES ('d252a5a0332f4890b923ec0a9bb2b402', 1, '2019-03-07 09:21:47', 'b92d5889ab474dce9361a32618fd16a8', '赵旭芝', '18207385496');
INSERT INTO `u_user_statistics` VALUES ('d283b35268fa4e88a79f899a1eee04bd', 2, '2019-02-28 11:48:56', NULL, '苹果', NULL);
INSERT INTO `u_user_statistics` VALUES ('d3687aa70e6e44559f74f27a1cd9cdb2', 4, '2019-03-07 09:20:02', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('d4b9a615ee9b421587909822d50d442e', 2, '2019-02-28 18:32:09', NULL, '橙子', NULL);
INSERT INTO `u_user_statistics` VALUES ('d4ead35396fa4647b6854830c2d48e50', 4, '2019-02-28 18:38:41', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('d6c232e1d574423abd65c0b7d1ee64a9', 4, '2019-02-28 20:40:32', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('d7509012b1384e5a9b4d7d9ad31ef979', 2, '2019-03-04 19:54:34', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('d7c9b4a1e2a2456797ced7cc59ae6882', 1, '2019-03-07 09:24:50', '37ca05b4a0644fed88347433a77aa254', '赵旭芝', '18207385496');
INSERT INTO `u_user_statistics` VALUES ('d7f2d565f7b74029808f778bab0c080e', 4, '2019-02-28 18:03:58', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('d8b26507c7b04ca2b18ea3e2c76d1c99', 1, '2019-03-06 18:24:42', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('d8b2d027e28c4550b18f5ebcea59ed6c', 1, '2019-03-06 18:24:40', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('d91f1d2994174034a6683909a8c9f702', 4, '2021-10-04 15:15:26', '66e482c1d7a24208849712a4f1cde9ac', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('d9333b2fd18e484281e61b464b74606e', 4, '2019-03-07 09:24:44', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('da0cece4558747c5a9d52450b7f117e1', 3, '2019-03-07 09:24:06', '37ca05b4a0644fed88347433a77aa254', '雷思宇', '15273666981');
INSERT INTO `u_user_statistics` VALUES ('dae75408598f4ae588e1c8db2933ecfc', 4, '2019-03-06 19:05:36', 'f39c596f178f48f09d190f5391aa18f1', 'Rose', NULL);
INSERT INTO `u_user_statistics` VALUES ('dbaa59a36f844ecfa979b8f4fa92b9d4', 4, '2019-02-28 20:15:07', '23b6ddfa327a4e7b9c6ea8111ce1aff4', 'Lisa', NULL);
INSERT INTO `u_user_statistics` VALUES ('dc24758e0abf44c49c1d1b04fb3e4961', 2, '2019-02-27 09:10:54', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('dc553d7a2c1444aca0882b3115c97827', 2, '2019-02-28 14:05:58', NULL, '张田', NULL);
INSERT INTO `u_user_statistics` VALUES ('dd90fd60eee34d71b53fb183deecaf5f', 2, '2019-02-26 23:31:22', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('de06001326a642528fb307a83d4bd368', 4, '2019-02-28 16:27:28', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('de8ba7acf1f146c8bc54d80075f5a425', 4, '2019-02-28 20:15:14', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('e03c213394f945479e6b22ae25f05554', 2, '2019-02-26 20:38:44', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('e1d9d2f340844ba681053ff63eb02619', 4, '2019-02-28 17:46:21', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('e237465d6ea04e8ba05d635e3aa1e99f', 4, '2021-10-04 15:13:06', '66e482c1d7a24208849712a4f1cde9ac', '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('e3b4709d41aa45be87542d37d312f4c3', 1, '2019-03-06 18:24:44', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('e3e8f092155f4f029d72ee657a22f20f', 2, '2019-02-28 22:00:44', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('e3f59a38993549b9a854a0aa223746dd', 2, '2021-10-03 15:07:16', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('e40225ffbc664af3a241e4f3b21731cf', 4, '2019-02-28 22:02:23', 'd02959e8c75d40f6ba36aa06628e2b72', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('e6f00380c5694e449bd66a227b2300ab', 1, '2019-03-06 19:07:08', '37ca05b4a0644fed88347433a77aa254', '张田', '17608410680');
INSERT INTO `u_user_statistics` VALUES ('e7f9a99f577e4bcc8fcdbd12f209e9d6', 4, '2019-02-28 22:00:26', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('e816c61d06b9497a926cab470ac8c2bf', 4, '2019-03-06 18:01:57', '53431bfe4f9147f7ac71f8543c89a7bc', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('e9793b16c1e34a5480648ceca51a5dd1', 4, '2019-02-28 17:43:09', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('ea6a6cded1ce40ff95e0e28fdd87413b', 1, '2019-03-06 18:24:39', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('eae4f0ddb3e4437eb351e3dd977edf1c', 1, '2019-03-06 18:24:42', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('eba1a186c5e24d4b89fefb32868e8351', 2, '2019-02-26 23:34:22', NULL, '欧文', NULL);
INSERT INTO `u_user_statistics` VALUES ('ec39015e62e84467926a1c413943c397', 4, '2019-02-28 18:38:30', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('ec98704238b347a7ab780fb603593484', 4, '2019-02-28 22:00:10', 'f0c45c58b1c14a7fa578b671254664c7', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('ee40d24792574f86a792e8c346408a7b', 4, '2019-03-07 09:18:35', 'd02959e8c75d40f6ba36aa06628e2b72', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('eebc5f825f2d44eaa557222bc86f00d1', 2, '2021-10-04 09:03:47', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('f0d7e8dc524f46c0ba461b1f391299bd', 2, '2021-10-03 10:36:03', NULL, '田萌萌', NULL);
INSERT INTO `u_user_statistics` VALUES ('f19f2e5728e84ab5913f041cb2e176c5', 1, '2019-03-06 18:24:40', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('f2cc997882354b9e9d5ba6b3a8419cb5', 4, '2019-02-28 18:38:32', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('f4d8fe7639a047949379e4f7c06a6143', 3, '2021-10-03 18:05:55', '760dbe5ab3dd48b79ac1d5d795b0fe48', '田萌萌', '17831958162');
INSERT INTO `u_user_statistics` VALUES ('f66d094c6c2f44ef82f0c16645b551f2', 2, '2019-03-05 20:10:27', NULL, '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('fa6f0e6934764412b354d66e5bd7b62b', 4, '2019-02-28 16:27:02', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('fbed3040e2af4d7ebdd0569eb2d3f252', 4, '2019-03-07 09:24:34', '00597f5bd9234e8da7caee63526075b9', '赵旭芝', NULL);
INSERT INTO `u_user_statistics` VALUES ('fc95ceedc64447bf83832a9a48579958', 2, '2019-02-28 14:05:49', NULL, '张田', NULL);
INSERT INTO `u_user_statistics` VALUES ('fd4fd4f7fad84626abed8edb9c068bb2', 2, '2019-02-27 10:48:28', NULL, '<a href=\'#\'>张三</a>', NULL);
INSERT INTO `u_user_statistics` VALUES ('fda4ef46f4474da0b7a2ddece1cb7fc3', 1, '2019-03-06 18:24:41', '53431bfe4f9147f7ac71f8543c89a7bc', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('fdc29648adc847349f9dcf81d9437913', 4, '2019-02-28 17:41:47', '23b6ddfa327a4e7b9c6ea8111ce1aff4', NULL, NULL);
INSERT INTO `u_user_statistics` VALUES ('ffa5792f6841488092560f842a4f0ac5', 4, '2019-03-07 09:23:57', '53431bfe4f9147f7ac71f8543c89a7bc', '雷思宇', NULL);

SET FOREIGN_KEY_CHECKS = 1;
