/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : wall

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 08/04/2024 11:28:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

create database wall;

-- ----------------------------
-- Table structure for t_option
-- ----------------------------
DROP TABLE IF EXISTS `t_option`;
CREATE TABLE `t_option`  (
                             `option_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置键',
                             `option_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '配置内容',
                             `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
                             `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
                             PRIMARY KEY (`option_key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_option
-- ----------------------------
INSERT INTO `t_option` VALUES ('beian', '', 'system', '2023-03-02 10:31:17');
INSERT INTO `t_option` VALUES ('coverCompress', '0.8', 'system', '2023-08-22 17:16:05');
INSERT INTO `t_option` VALUES ('expireDate', '120', 'system', '2023-03-02 10:31:17');
INSERT INTO `t_option` VALUES ('homeTitle', '🏞️ 相册画廊', 'system', '2023-03-02 10:31:17');
INSERT INTO `t_option` VALUES ('initTagId', '359a40cad7d44f3205151bc67a875cb7', 'system', '2023-03-02 10:31:17');
INSERT INTO `t_option` VALUES ('layout', '2', 'system', '2024-02-21 20:42:47');
INSERT INTO `t_option` VALUES ('saveFilePath', 'ROOT', 'system', '2023-03-02 10:31:17');
INSERT INTO `t_option` VALUES ('secret', '6fa7add4-b8a2-11ed-93d8-525400d73e0b', 'system', '2023-03-02 10:31:17');
INSERT INTO `t_option` VALUES ('welcome', '1', 'system', '2024-04-04 17:14:08');

-- ----------------------------
-- Table structure for t_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_resource`;
CREATE TABLE `t_resource`  (
                               `resource_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源编号',
                               `title` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题标题描述',
                               `cover_path` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '封面路径',
                               `resource_path` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '资源物理存储路径',
                               `resource_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源类型（1、图片 2、视频',
                               `tag_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '标签编号（可多个，以英文逗号隔开）',
                               `source_type` tinyint(2) NULL DEFAULT NULL COMMENT '资源来源（1、本地资源 2、图床URL）',
                               `resource_format` tinyint(2) NULL DEFAULT NULL COMMENT '资源格式（1、普通格式 2、VR全景格式）',
                               `visible_flag` tinyint(2) NULL DEFAULT NULL COMMENT '可见状态（1、为可见 0、为不可见）',
                               `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
                               `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
                               `modify_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改者',
                               `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
                               PRIMARY KEY (`resource_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_resource
-- ----------------------------
-- INSERT INTO `t_resource` VALUES ('003c291d7c678ecaf0793e13a95aaed4', '心怀浪漫宇宙，也珍惜人间日常。', 'api/static/7c9c8741-5134-4285-bd72-2061f66d877d_cover.jpg', 'api/static/7c9c8741-5134-4285-bd72-2061f66d877d.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:48', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('0790a069d75bf562d2cd96a2eff23429', '每一步都要走在热爱中。', 'api/static/6aa0f7e4-7e4f-4b51-9af0-917f77e64bb5_cover.jpg', 'api/static/6aa0f7e4-7e4f-4b51-9af0-917f77e64bb5.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:46', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('173a715ec493283369d0a17a2c602e3a', '有趣有盼，不负心中热爱。', 'api/static/087f712e-caa5-4177-9e6d-91f73bf6987f_cover.jpg', 'api/static/087f712e-caa5-4177-9e6d-91f73bf6987f.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:47', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('21871c44f4033d1180f130f843df359a', '我相信你，将不畏世界。', 'api/static/f29f6996-8e59-4d6b-bdb5-2ba00135d710_cover.jpg', 'api/static/f29f6996-8e59-4d6b-bdb5-2ba00135d710.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:43', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('3805ab27b3fe3e97ca7e6ab7a2989dec', '那就在一起，黄昏与四季。', 'api/static/4e997f0c-5bef-48a9-8cc9-7d81652819cd_cover.jpg', 'api/static/4e997f0c-5bef-48a9-8cc9-7d81652819cd.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:45', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('3d5912d589f5424ba8fb0bbee4fba82c', '你是不灭星光，日复一日的美梦。', 'api/static/32669c03-bf9d-46a4-9cad-ab83d4b4fecd_cover.jpg', 'api/static/32669c03-bf9d-46a4-9cad-ab83d4b4fecd.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:48', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('520389a9e6748b032568f5bc069352d6', '把快乐放进重点反复背诵。', 'api/static/28d9da5c-f1e3-412c-97b0-a92961e5e615_cover.jpg', 'api/static/28d9da5c-f1e3-412c-97b0-a92961e5e615.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:42', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('585064dfdd8bec358fc661add4db99a0', '在这个冬天，和更好的自己碰面。', 'api/static/121bf9e3-2537-49a8-be38-6cc7167ef5fc_cover.jpg', 'api/static/121bf9e3-2537-49a8-be38-6cc7167ef5fc.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:47', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('5f555bd1b8ecd454b95e6ca6fdc1771a', '期待生活有惊喜，盼望事事有回应。', 'api/static/875e2b9b-a017-4d7a-828e-1e15b50ee09e_cover.jpg', 'api/static/875e2b9b-a017-4d7a-828e-1e15b50ee09e.mp4', '2', '359a40cad7d44f3205151bc67a875cb7,65ddef22a81c288db5dd61341ff55e7e,', 1, 1, 1, 'admin', '2024-04-08 11:17:35', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('637b878d1df545fbc9f3ee71d29f3cc3', '记得要奔走在自己的热爱里。', 'api/static/01916f19-6291-4904-96f0-fcf9684897a8_cover.jpg', 'api/static/01916f19-6291-4904-96f0-fcf9684897a8.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:44', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('76ca334c736aff0e5c86a49a2e38796d', '祝你有一天能和重要的人相逢。', 'api/static/02cdc0d8-a16c-4c9b-8147-75d1ca404f2d_cover.jpg', 'api/static/02cdc0d8-a16c-4c9b-8147-75d1ca404f2d.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:45', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('86dccd832c57903af591aae97b03038b', '这是很长，很好的人生。', 'api/static/1e978861-dd35-440c-88a1-d947ec4f8020_cover.jpg', 'api/static/1e978861-dd35-440c-88a1-d947ec4f8020.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:43', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('9ba7e487e816cd7e18053e41e3f23f67', '书要好好读，喜欢的人要好好争取。', 'api/static/debbac5e-6e25-46d2-8b41-fe8dba661d8a_cover.jpg', 'api/static/debbac5e-6e25-46d2-8b41-fe8dba661d8a.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:44', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('a6b3773980a1f19829960fc24e33140d', '好好睡一觉，就是人生重启的方式。', 'api/static/609da5c3-ffa6-4f89-9b54-69a04956b93e_cover.jpg', 'api/static/609da5c3-ffa6-4f89-9b54-69a04956b93e.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:44', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('b4c71744be9ae08f8c91a9932f3197ac', '有趣都藏在无聊日子里。', 'api/static/a9c0536b-5ef1-4c39-86cb-4a8e889322f1_cover.jpg', 'api/static/a9c0536b-5ef1-4c39-86cb-4a8e889322f1.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:44', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('bd67961266b37cba27974d1fc8ed11fe', '请你参与我的冬天。', 'api/static/33e5454a-61d6-4002-9715-ad124cc5f463_cover.jpg', 'api/static/33e5454a-61d6-4002-9715-ad124cc5f463.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:43', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('c6d67df31478aa10d5acda084d479287', '希望这个冬天爱与运气同在。', 'api/static/65441bf9-c700-4e4a-ac77-27f6e5d9f203_cover.jpg', 'api/static/65441bf9-c700-4e4a-ac77-27f6e5d9f203.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:44', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('cfb454e26a8dae9951e4fdfc93f22401', '生活总有一些不期而遇的温暖。', 'api/static/23a0b024-976b-4841-bc01-e441d36170d8_cover.jpg', 'api/static/23a0b024-976b-4841-bc01-e441d36170d8.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:46', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('cfd22793fab1869bfccf66f3bd92237c', '这世上总有一朵花是为我们开着的。', 'api/static/8cb13337-e920-472d-b871-7e146f3116b1_cover.jpg', 'api/static/8cb13337-e920-472d-b871-7e146f3116b1.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:47', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('d3912b80340bf9944951a690c69f7082', '每个人的花期都不一样。', 'api/static/53cd6fbd-ec20-4eb2-b243-e500e018b7ac_cover.jpg', 'api/static/53cd6fbd-ec20-4eb2-b243-e500e018b7ac.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:46', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('d7c0328ab0e9284a1c8a6834be5c18d5', '你终会是一个人宇宙限量贩售的快乐。', 'api/static/28bc18e5-71b7-4c62-8b40-15a99a302e05_cover.jpg', 'api/static/28bc18e5-71b7-4c62-8b40-15a99a302e05.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:45', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('da0e7c2e19069ea51e15164d99b05c00', '日子照旧，梦想暴富。', 'api/static/d0350ed5-23e2-4e8b-9e18-09428df94ae7_cover.jpg', 'api/static/d0350ed5-23e2-4e8b-9e18-09428df94ae7.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:43', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('f718b5b7a0da1ec8d71fd7d5531bdb54', '山脉360°全景展示', 'api/static/4f0a0712-8709-4474-ba99-dd41470b8fef_cover.jpg', 'api/static/4f0a0712-8709-4474-ba99-dd41470b8fef.jpg', '1', 'b4aaf0311f299f58344e5ef5be25ebd6,', 1, 2, 1, 'admin', '2024-04-08 11:16:18', NULL, NULL);
-- INSERT INTO `t_resource` VALUES ('fb1974771b6600e1fe498af38ceb86b7', '温柔是黑暗世界里永恒的光。', 'api/static/92f1217f-9bbd-41a9-9212-7a7839214d2c_cover.jpg', 'api/static/92f1217f-9bbd-41a9-9212-7a7839214d2c.jpg', '1', '359a40cad7d44f3205151bc67a875cb7,', 1, 1, 1, 'admin', '2024-04-08 11:14:42', NULL, NULL);

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
                          `tag_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签编号',
                          `tag_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签名称',
                          `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
                          `sort` tinyint(100) NULL DEFAULT NULL COMMENT '排序',
                          `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
                          `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
                          `modify_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改者',
                          `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
                          PRIMARY KEY (`tag_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES ('359a40cad7d44f3205151bc67a875cb7', '🏷️ 日常', '', 1, 'admin', '2023-03-02 10:38:37', 'admin', '2024-04-08 11:18:43');
INSERT INTO `t_tag` VALUES ('65ddef22a81c288db5dd61341ff55e7e', '🎥 视频', '', 3, 'admin', '2023-03-02 11:09:43', 'admin', '2024-04-07 19:08:45');
INSERT INTO `t_tag` VALUES ('b4aaf0311f299f58344e5ef5be25ebd6', '🕶️ VR全景', '', 2, 'admin', '2024-04-07 11:32:00', 'admin', '2024-04-07 19:08:43');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
                           `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户编号',
                           `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
                           `pass_word` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
                           `sex` tinyint(4) NULL DEFAULT NULL COMMENT '性别（1为男，2为女）',
                           `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话手机',
                           `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
                           `last_time` datetime(0) NULL DEFAULT NULL COMMENT '最后登录的时间',
                           `sort` tinyint(255) NULL DEFAULT NULL COMMENT '排序',
                           `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
                           `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
                           `modify_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改者',
                           `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
                           PRIMARY KEY (`user_id`) USING BTREE,
                           UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('0e191174de65f483d360f0d01e37aa65', 'admin', 'P2wsjLdEqPa2ZzrcjqWiSfTU90+MGLtt/QyxAuBls0UNqXvEfRsDPTlW4GFIfnvP', 1, NULL, NULL, '2024-04-08 11:10:58', 1, 'system', '2023-03-02 10:31:18', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
