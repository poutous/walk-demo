/*
 Navicat Premium Data Transfer

 Source Server         : walkdemo
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : walkdemodb

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 14/10/2019 13:38:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for seq_file_id
-- ----------------------------
DROP TABLE IF EXISTS `seq_file_id`;
CREATE TABLE `seq_file_id`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `MAX_ID` bigint(20) NOT NULL DEFAULT 99998888 COMMENT '自增ID最大值',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for seq_log_id
-- ----------------------------
DROP TABLE IF EXISTS `seq_log_id`;
CREATE TABLE `seq_log_id`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `MAX_ID` bigint(20) NOT NULL DEFAULT 99998888 COMMENT '自增ID最大值',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5082 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of seq_log_id
-- ----------------------------
INSERT INTO `seq_log_id` VALUES (5055, 99998888);
INSERT INTO `seq_log_id` VALUES (5056, 99998888);
INSERT INTO `seq_log_id` VALUES (5057, 99998888);
INSERT INTO `seq_log_id` VALUES (5058, 99998888);
INSERT INTO `seq_log_id` VALUES (5059, 99998888);
INSERT INTO `seq_log_id` VALUES (5060, 99998888);
INSERT INTO `seq_log_id` VALUES (5061, 99998888);
INSERT INTO `seq_log_id` VALUES (5062, 99998888);
INSERT INTO `seq_log_id` VALUES (5063, 99998888);
INSERT INTO `seq_log_id` VALUES (5064, 99998888);
INSERT INTO `seq_log_id` VALUES (5065, 99998888);
INSERT INTO `seq_log_id` VALUES (5066, 99998888);
INSERT INTO `seq_log_id` VALUES (5067, 99998888);
INSERT INTO `seq_log_id` VALUES (5068, 99998888);
INSERT INTO `seq_log_id` VALUES (5069, 99998888);
INSERT INTO `seq_log_id` VALUES (5070, 99998888);
INSERT INTO `seq_log_id` VALUES (5071, 99998888);
INSERT INTO `seq_log_id` VALUES (5072, 99998888);
INSERT INTO `seq_log_id` VALUES (5073, 99998888);
INSERT INTO `seq_log_id` VALUES (5074, 99998888);
INSERT INTO `seq_log_id` VALUES (5075, 99998888);
INSERT INTO `seq_log_id` VALUES (5076, 99998888);
INSERT INTO `seq_log_id` VALUES (5077, 99998888);
INSERT INTO `seq_log_id` VALUES (5078, 99998888);
INSERT INTO `seq_log_id` VALUES (5079, 99998888);
INSERT INTO `seq_log_id` VALUES (5080, 99998888);
INSERT INTO `seq_log_id` VALUES (5081, 99998888);

-- ----------------------------
-- Table structure for seq_notice_id
-- ----------------------------
DROP TABLE IF EXISTS `seq_notice_id`;
CREATE TABLE `seq_notice_id`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `MAX_ID` bigint(20) NOT NULL DEFAULT 99998888 COMMENT '自增ID最大值',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for seq_role_code
-- ----------------------------
DROP TABLE IF EXISTS `seq_role_code`;
CREATE TABLE `seq_role_code`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `MAX_ID` bigint(20) NOT NULL DEFAULT 999888 COMMENT '自增ID最大值',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for seq_user_id
-- ----------------------------
DROP TABLE IF EXISTS `seq_user_id`;
CREATE TABLE `seq_user_id`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `MAX_ID` bigint(20) NOT NULL DEFAULT 99998888 COMMENT '自增ID最大值',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for td_b_reward_rule
-- ----------------------------
DROP TABLE IF EXISTS `td_b_reward_rule`;
CREATE TABLE `td_b_reward_rule`  (
  `rule_id` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '规则ID',
  `rule_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规则对象编码',
  `rule_operator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运算符',
  `rule_value` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则值',
  `rule_exp` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则表达式。当此值非空时忽略rule_operator与rule_value的组合',
  `reward_money` bigint(10) NOT NULL COMMENT '佣金金额。单位分',
  `rule_state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '规则状态。1：在用；0：失效',
  `rule_desc` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则值解释',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`rule_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单佣金规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of td_b_reward_rule
-- ----------------------------
INSERT INTO `td_b_reward_rule` VALUES (1, 'PRODUCT_ID', 'in', '90063345,90155946', '', 100, '1', '腾讯大王卡,腾讯天王卡', '');
INSERT INTO `td_b_reward_rule` VALUES (2, 'PRODUCT_ID', 'in', '90356344,90356346,90356341', NULL, 500, '1', '4G畅爽冰激凌国内流量套餐-129元/月,4G畅爽冰激凌国内流量套餐-199元/月,4G畅爽冰激凌国内流量套餐-99元/月', NULL);
INSERT INTO `td_b_reward_rule` VALUES (3, 'PRODUCT_ID', 'in', '90131367', NULL, 1000, '1', '畅爽全国冰激凌套餐398元档', '');
INSERT INTO `td_b_reward_rule` VALUES (5, 'ADVANCE_PAY', NULL, NULL, '>=50 and <100', 100, '1', '', '预存大于等于50小于100');
INSERT INTO `td_b_reward_rule` VALUES (6, 'ADVANCE_PAY', NULL, NULL, '>=100 and <300', 200, '1', '', '预存大于等于100小于300');
INSERT INTO `td_b_reward_rule` VALUES (7, 'ADVANCE_PAY', NULL, NULL, '>=300 and <500', 300, '1', '', '预存大于等于300小于500');
INSERT INTO `td_b_reward_rule` VALUES (8, 'ADVANCE_PAY', '>', '500', '', 500, '1', '', '预存大于500');

-- ----------------------------
-- Table structure for td_b_systemguimenu
-- ----------------------------
DROP TABLE IF EXISTS `td_b_systemguimenu`;
CREATE TABLE `td_b_systemguimenu`  (
  `MENU_ID` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单项标识：默认为“子系统编码＋四位序列”',
  `PARENT_MENU_ID` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级菜单项标识',
  `SUBSYS_CODE` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '子系统编码',
  `MENU_TITLE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `MENU_TEXT` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单说明',
  `IMAGE_INDEX` decimal(4, 0) NULL DEFAULT NULL COMMENT '图标索引',
  `SHOW_ORDER` decimal(8, 0) NULL DEFAULT NULL COMMENT '显示顺序',
  `TOOLBAR_INDEX` decimal(2, 0) NULL DEFAULT NULL COMMENT '工具条索引',
  `DEVIDE_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分隔类型',
  `CLASS_LEVEL` decimal(2, 0) NULL DEFAULT NULL COMMENT '级别',
  `DISPLAY_MODE` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示方式',
  `RIGHT_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限编码',
  `SHORT_KEY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快捷键',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新员工',
  `UPDATE_DEPART_ID` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新部门',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份编码',
  PRIMARY KEY (`MENU_ID`) USING BTREE,
  INDEX `IDX_TD_B_SYSMENU_RIGHTCODE`(`RIGHT_CODE`) USING BTREE,
  INDEX `IDX_TD_B_SYSMENU_SUBSYS`(`SUBSYS_CODE`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '保存BOSS系统所有GUI菜单信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of td_b_systemguimenu
-- ----------------------------
INSERT INTO `td_b_systemguimenu` VALUES ('DEM0000', NULL, 'DEM', '根节点', '根节点', NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, '根节点', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMA000', 'DEM0000', 'DEM', 'demo示例', 'demo示例', 2, 10, NULL, NULL, 1, NULL, NULL, NULL, 'demo示例', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMA100', 'DEMA000', 'DEM', 'demo示例', 'demo示例', NULL, 20, NULL, NULL, 2, NULL, NULL, NULL, 'demo示例', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMA101', 'DEMA100', 'DEM', '用户管理', '用户管理', NULL, 10, NULL, NULL, 3, NULL, 'DEMA101', NULL, '用户管理', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMA102', 'DEMA100', 'DEM', '佣金规则', '佣金规则', NULL, 20, NULL, NULL, 3, NULL, 'DEMA102', NULL, '佣金规则', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMA103', 'DEMA100', 'DEM', 'API服务调用示例', 'API服务调用示例', NULL, 30, NULL, NULL, 3, NULL, 'DEMA103', NULL, 'API服务调用示例', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMP000', 'DEM0000', 'DEM', '平台管理', '平台管理', 9, 20, NULL, NULL, 1, NULL, NULL, NULL, '平台管理', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMP100', 'DEMP000', 'DEM', '平台管理', '平台管理', NULL, 10, NULL, NULL, 2, NULL, NULL, NULL, '平台管理', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMP101', 'DEMP100', 'DEM', '我的导出', '我的导出', NULL, 10, NULL, NULL, 3, NULL, 'DEMP101', NULL, '我的导出', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMP102', 'DEMP100', 'DEM', '流程模型管理', '流程模型管理', NULL, 20, NULL, NULL, 3, NULL, 'DEMP102', NULL, '流程模型管理', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMP103', 'DEMP100', 'DEM', '在线会话管理', '在线会话管理', NULL, 30, NULL, NULL, 3, NULL, 'DEMP103', NULL, '在线会话管理', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMP104', 'DEMP100', 'DEM', '静态参数表缓存管理', '静态参数表缓存管理', NULL, 40, NULL, NULL, 3, NULL, 'DEMP104', NULL, '静态参数表缓存管理', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMP105', 'DEMP100', 'DEM', '缓存管理', '缓存管理', NULL, 50, NULL, NULL, 3, NULL, 'DEMP105', NULL, '缓存管理', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMP106', 'DEMP100', 'DEM', '队列管理', '队列管理', NULL, 60, NULL, NULL, 3, NULL, 'DEMP106', NULL, '队列管理', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');
INSERT INTO `td_b_systemguimenu` VALUES ('DEMP107', 'DEMP100', 'DEM', '发布/订阅管理', '发布/订阅管理', NULL, 70, NULL, NULL, 3, NULL, 'DEMP107', NULL, '发布/订阅管理', '2016-12-27 20:46:41', 'SUPERUSR', '00000', '97');

-- ----------------------------
-- Table structure for td_m_app_cfg
-- ----------------------------
DROP TABLE IF EXISTS `td_m_app_cfg`;
CREATE TABLE `td_m_app_cfg`  (
  `APP_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '程序ID',
  `APP_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '程序名称',
  `APP_KEY` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '程序加密key',
  `APP_STATE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '程序状态。1：正常；0：无效；4：锁定',
  `SIGN_CHECK` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '是否校验签名。0：不校验；1：校验',
  `SIGN_FREQ` decimal(10, 0) NOT NULL DEFAULT 1 COMMENT '签名使用次数，默认1次',
  `URL_CHECK` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '是否校验url权限。0：不校验；1：校验',
  `START_DATE` datetime NULL DEFAULT NULL,
  `END_DATE` datetime NULL DEFAULT NULL,
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '97' COMMENT '归属省份',
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `RSVALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `RSVALUE2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  PRIMARY KEY (`APP_ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '接入程序信息配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of td_m_app_cfg
-- ----------------------------
INSERT INTO `td_m_app_cfg` VALUES ('APIDEMO1', 'apidemo专用', 'EF396BF7CF6DF7B3F7027CE381F811BDE723DA13F758B7DB', '1', '0', 10, '1', '2017-03-28 00:00:00', '2050-03-28 00:00:00', '97', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for td_m_area
-- ----------------------------
DROP TABLE IF EXISTS `td_m_area`;
CREATE TABLE `td_m_area`  (
  `AREA_CODE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地域编码：由系统维护人员或者设计人员进行编码，对程序控制判断起主导作用，因此不能随意修改、删除！编码具有一定的含义，可以是有意义的拼音字母或者英文所写等',
  `AREA_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地域名称',
  `AREA_FRAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地域关系节点串：体现地域之间上下级关系的节点串，由地域编码拼接组成',
  `THIS_TAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '当前系统标志：0－非当前地域，1－当前地域',
  `USE_TAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务开放标志：0－禁止，1－开放',
  `EXTEND_TAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '异地业务标志：0－禁止，1－开放',
  `ORDER_NO` decimal(3, 0) NOT NULL COMMENT '序号：每个地域编码对应一个数字序号，便于排序或者它用',
  `USER_AREA_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '在任何一段时间内编码唯一',
  `PARENT_AREA_CODE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级地域编码',
  `START_DATE` datetime NOT NULL COMMENT '起始有效时间',
  `END_DATE` datetime NULL DEFAULT NULL COMMENT '终止有效时间',
  `AREA_LEVEL` decimal(2, 0) NULL DEFAULT NULL COMMENT '地域级别：其中10－省，20－地州，30－业务区，其它抽象出来的级别在对应的区间范围之中',
  `VALIDFLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '有效标记：0－有效，1－失效（注销）',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `RSVALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冗余字段1',
  `RSVALUE2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冗余字段2',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_STAFF_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新员工',
  `UPDATE_DEPART_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新部门',
  `CUC_AREA_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总部编码',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份编码',
  PRIMARY KEY (`AREA_CODE`) USING BTREE,
  INDEX `IDX_TD_M_AREA_FRAME`(`AREA_FRAME`) USING BTREE,
  INDEX `IDX_TD_M_AREA_LEVEL`(`AREA_LEVEL`) USING BTREE,
  INDEX `IDX_TD_M_AREA_USRCODE`(`USER_AREA_CODE`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实现省、地州和业务区信息的保存，同时支持这些之外更多层次抽象的地域关系保存' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of td_m_area
-- ----------------------------
INSERT INTO `td_m_area` VALUES ('972115', '五大连池市', '00970456972115', '1', '1', '1', 60, '972115', '0456', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:15:24', 'LEVELUP', '00000', '972115', NULL);
INSERT INTO `td_m_area` VALUES ('974204', '齐齐哈尔市区', '00970452974204', '1', '1', '1', 161, '974204', '0452', '2011-10-14 00:00:00', '2050-12-31 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:17:19', 'LEVELUP', '00000', '974204', NULL);
INSERT INTO `td_m_area` VALUES ('972108', '宁安市', '00970453972108', '1', '1', '1', 90, '972108', '0453', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:32', 'LEVELUP', '00000', '972108', NULL);
INSERT INTO `td_m_area` VALUES ('972032', '克东县', '00970452972032', '1', '1', '1', 140, '972032', '0452', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:33', 'LEVELUP', '00000', '972032', NULL);
INSERT INTO `td_m_area` VALUES ('972118', '兰西县', '00970455972118', '1', '1', '1', 30, '972118', '0455', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:58', 'LEVELUP', '00000', '972118', NULL);
INSERT INTO `td_m_area` VALUES ('972119', '青冈县', '00970455972119', '1', '1', '1', 40, '972119', '0455', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:59', 'LEVELUP', '00000', '972119', NULL);
INSERT INTO `td_m_area` VALUES ('972120', '庆安县', '00970455972120', '1', '1', '1', 50, '972120', '0455', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:00', 'LEVELUP', '00000', '972120', NULL);
INSERT INTO `td_m_area` VALUES ('0467', '鸡西市', '00970467', '1', '1', '1', 67, '991', '0097', '2011-04-14 00:00:00', '2038-09-06 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:16:35', 'LEVELUP', '00000', '991', NULL);
INSERT INTO `td_m_area` VALUES ('972042', '虎林市', '00970467972042', '1', '1', '1', 80, '972042', '0467', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:36', 'LEVELUP', '00000', '972042', NULL);
INSERT INTO `td_m_area` VALUES ('972043', '密山市', '00970467972043', '1', '1', '1', 90, '972043', '0467', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:36', 'LEVELUP', '00000', '972043', NULL);
INSERT INTO `td_m_area` VALUES ('972056', '集贤县(市县)', '00970469972056', '1', '1', '1', 50, '972056', '0469', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:44', 'LEVELUP', '00000', '972056', NULL);
INSERT INTO `td_m_area` VALUES ('972057', '友谊县（市县）', '00970469972057', '1', '1', '1', 60, '972057', '0469', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:45', 'LEVELUP', '00000', '972057', NULL);
INSERT INTO `td_m_area` VALUES ('972034', '讷河市', '00970452972034', '1', '1', '1', 160, '972034', '0452', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:15:59', 'LEVELUP', '00000', '972034', NULL);
INSERT INTO `td_m_area` VALUES ('0454', '佳木斯', '00970454', '1', '1', '1', 54, '976', '0097', '2011-04-14 00:00:00', '2038-09-01 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:16:01', 'LEVELUP', '00000', '976', NULL);
INSERT INTO `td_m_area` VALUES ('972094', '同江分局', '00970454972094', '1', '1', '1', 90, '972094', '0454', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:03', 'LEVELUP', '00000', '972094', NULL);
INSERT INTO `td_m_area` VALUES ('973099', '建三江分局', '00970454973099', '1', '1', '1', 104, '973099', '0454', '2011-07-07 00:00:00', '2038-08-29 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:16:04', 'LEVELUP', '00000', '973099', NULL);
INSERT INTO `td_m_area` VALUES ('972117', '望奎县', '00970455972117', '1', '1', '1', 20, '972117', '0455', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:56', 'LEVELUP', '00000', '972117', NULL);
INSERT INTO `td_m_area` VALUES ('972033', '拜泉县', '00970452972033', '1', '1', '1', 150, '972033', '0452', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:56', 'LEVELUP', '00000', '972033', NULL);
INSERT INTO `td_m_area` VALUES ('972090', '桦南分局', '00970454972090', '1', '1', '1', 50, '972090', '0454', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:43', 'LEVELUP', '00000', '972090', NULL);
INSERT INTO `td_m_area` VALUES ('972010', '方正县', '00970451972010', '1', '1', '1', 100, '972010', '0451', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:32', 'LEVELUP', '00000', '972010', NULL);
INSERT INTO `td_m_area` VALUES ('974170', '鹤岗市区', '00970468974170', '1', '1', '1', 82, '974170', '0468', '2011-10-14 00:00:00', '2050-12-31 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:17:28', 'LEVELUP', '00000', '974170', NULL);
INSERT INTO `td_m_area` VALUES ('972016', '双城市', '00970451972016', '1', '1', '1', 160, '972016', '0451', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:29', 'LEVELUP', '00000', '972016', NULL);
INSERT INTO `td_m_area` VALUES ('972770', '红兴隆（市县）', '00970469972770', '1', '1', '1', 90, '972770', '0469', '2011-07-07 00:00:00', '2038-08-29 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:16:20', 'LEVELUP', '00000', '972770', NULL);
INSERT INTO `td_m_area` VALUES ('972026', '龙江县', '00970452972026', '1', '1', '1', 80, '972026', '0452', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:56', 'LEVELUP', '00000', '972026', NULL);
INSERT INTO `td_m_area` VALUES ('0456', '黑河', '00970456', '1', '1', '1', 56, '990', '0097', '2011-04-14 00:00:00', '2038-09-05 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:17:13', 'LEVELUP', '00000', '990', NULL);
INSERT INTO `td_m_area` VALUES ('972029', '甘南县', '00970452972029', '1', '1', '1', 110, '972029', '0452', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:16', 'LEVELUP', '00000', '972029', NULL);
INSERT INTO `td_m_area` VALUES ('972093', '抚远分局', '00970454972093', '1', '1', '1', 80, '972093', '0454', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:37', 'LEVELUP', '00000', '972093', NULL);
INSERT INTO `td_m_area` VALUES ('972009', '依兰县', '00970451972009', '1', '1', '1', 90, '972009', '0451', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:13', 'LEVELUP', '00000', '972009', NULL);
INSERT INTO `td_m_area` VALUES ('974146', '七台河市区(市县)', '00970464974146', '1', '1', '1', 41, '974146', '0464', '2011-10-13 00:00:00', '2050-12-31 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:18:03', 'LEVELUP', '00000', '974146', NULL);
INSERT INTO `td_m_area` VALUES ('972051', '绥滨县', '00970468972051', '1', '1', '1', 80, '972051', '0468', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:05', 'LEVELUP', '00000', '972051', NULL);
INSERT INTO `td_m_area` VALUES ('972126', '呼玛县', '00970457972126', '1', '1', '1', 10, '972126', '0457', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:05', 'LEVELUP', '00000', '972126', NULL);
INSERT INTO `td_m_area` VALUES ('972095', '富锦分局', '00970454972095', '1', '1', '1', 100, '972095', '0454', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:46', 'LEVELUP', '00000', '972095', NULL);
INSERT INTO `td_m_area` VALUES ('972123', '安达市', '00970455972123', '1', '1', '1', 80, '972123', '0455', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:02', 'LEVELUP', '00000', '972123', NULL);
INSERT INTO `td_m_area` VALUES ('972111', '嫩江县', '00970456972111', '1', '1', '1', 20, '972111', '0456', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:06', 'LEVELUP', '00000', '972111', NULL);
INSERT INTO `td_m_area` VALUES ('972112', '逊克县', '00970456972112', '1', '1', '1', 30, '972112', '0456', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:07', 'LEVELUP', '00000', '972112', NULL);
INSERT INTO `td_m_area` VALUES ('972125', '海伦市', '00970455972125', '1', '1', '1', 100, '972125', '0455', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:11', 'LEVELUP', '00000', '972125', NULL);
INSERT INTO `td_m_area` VALUES ('972018', '五常市', '00970451972018', '1', '1', '1', 180, '972018', '0451', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:34', 'LEVELUP', '00000', '972018', NULL);
INSERT INTO `td_m_area` VALUES ('0452', '齐齐哈尔', '00970452', '1', '1', '1', 52, '973', '0097', '2011-04-14 00:00:00', '2038-08-31 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:18:38', 'LEVELUP', '00000', '973', NULL);
INSERT INTO `td_m_area` VALUES ('972028', '泰来县', '00970452972028', '1', '1', '1', 100, '972028', '0452', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:39', 'LEVELUP', '00000', '972028', NULL);
INSERT INTO `td_m_area` VALUES ('972104', '东宁市', '00970453972104', '1', '1', '1', 50, '972104', '0453', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:40', 'LEVELUP', '00000', '972104', NULL);
INSERT INTO `td_m_area` VALUES ('972106', '绥芬河市', '00970453972106', '1', '1', '1', 70, '972106', '0453', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:41', 'LEVELUP', '00000', '972106', NULL);
INSERT INTO `td_m_area` VALUES ('972107', '海林市', '00970453972107', '1', '1', '1', 80, '972107', '0453', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:41', 'LEVELUP', '00000', '972107', NULL);
INSERT INTO `td_m_area` VALUES ('972092', '汤原分局', '00970454972092', '1', '1', '1', 70, '972092', '0454', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:19:00', 'LEVELUP', '00000', '972092', NULL);
INSERT INTO `td_m_area` VALUES ('972124', '肇东市', '00970455972124', '1', '1', '1', 90, '972124', '0455', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:19:02', 'LEVELUP', '00000', '972124', NULL);
INSERT INTO `td_m_area` VALUES ('972007', '呼兰区', '00970451972007', '1', '1', '1', 70, '972007', '0451', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:29', 'LEVELUP', '00000', '972007', NULL);
INSERT INTO `td_m_area` VALUES ('972008', '阿城区', '00970451972008', '1', '1', '1', 80, '972008', '0451', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:30', 'LEVELUP', '00000', '972008', NULL);
INSERT INTO `td_m_area` VALUES ('974196', '佳木斯市区', '00970454974196', '1', '1', '1', 105, '974196', '0454', '2011-10-14 00:00:00', '2050-12-31 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:16:19', 'LEVELUP', '00000', '974196', NULL);
INSERT INTO `td_m_area` VALUES ('974279', '牡丹江市区', '00970453974279', '1', '1', '1', 103, '974279', '0453', '2011-10-19 00:00:00', '2050-12-31 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:15:53', 'LEVELUP', '00000', '974279', NULL);
INSERT INTO `td_m_area` VALUES ('0455', '绥化', '00970455', '1', '1', '1', 55, '989', '0097', '2011-04-14 00:00:00', '2038-09-04 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:15:54', 'LEVELUP', '00000', '989', NULL);
INSERT INTO `td_m_area` VALUES ('972012', '巴彦县', '00970451972012', '1', '1', '1', 120, '972012', '0451', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:50', 'LEVELUP', '00000', '972012', NULL);
INSERT INTO `td_m_area` VALUES ('972109', '穆棱市', '00970453972109', '1', '1', '1', 100, '972109', '0453', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:53', 'LEVELUP', '00000', '972109', NULL);
INSERT INTO `td_m_area` VALUES ('972031', '克山县', '00970452972031', '1', '1', '1', 130, '972031', '0452', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:17', 'LEVELUP', '00000', '972031', NULL);
INSERT INTO `td_m_area` VALUES ('0469', '双鸭山', '00970469', '1', '1', '1', 69, '994', '0097', '2011-04-14 00:00:00', '2038-09-09 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:18:20', 'LEVELUP', '00000', '994', NULL);
INSERT INTO `td_m_area` VALUES ('972058', '宝清县（市县）', '00970469972058', '1', '1', '1', 70, '972058', '0469', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:21', 'LEVELUP', '00000', '972058', NULL);
INSERT INTO `td_m_area` VALUES ('972065', '肇州县', '00970459972065', '1', '1', '1', 60, '972065', '0459', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:40', 'LEVELUP', '00000', '972065', NULL);
INSERT INTO `td_m_area` VALUES ('972066', '肇源县', '00970459972066', '1', '1', '1', 70, '972066', '0459', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:41', 'LEVELUP', '00000', '972066', NULL);
INSERT INTO `td_m_area` VALUES ('972013', '木兰县', '00970451972013', '1', '1', '1', 130, '972013', '0451', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:49', 'LEVELUP', '00000', '972013', NULL);
INSERT INTO `td_m_area` VALUES ('972015', '延寿县', '00970451972015', '1', '1', '1', 150, '972015', '0451', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:50', 'LEVELUP', '00000', '972015', NULL);
INSERT INTO `td_m_area` VALUES ('974147', '鸡西市区', '00970467974147', '1', '1', '1', 91, '974147', '0467', '2011-10-14 00:00:00', '2050-12-31 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:15:30', 'LEVELUP', '00000', '974147', NULL);
INSERT INTO `td_m_area` VALUES ('974174', '黑河市', '00970456974174', '1', '1', '1', 61, '974174', '0456', '2011-10-14 00:00:00', '2050-12-31 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-18 14:20:53', 'LEVELUP', '00000', '974174', NULL);
INSERT INTO `td_m_area` VALUES ('972027', '依安县', '00970452972027', '1', '1', '1', 90, '972027', '0452', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:15:46', 'LEVELUP', '00000', '972027', NULL);
INSERT INTO `td_m_area` VALUES ('972128', '漠河县', '00970457972128', '1', '1', '1', 30, '972128', '0457', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:07', 'LEVELUP', '00000', '972128', NULL);
INSERT INTO `td_m_area` VALUES ('972041', '鸡东县', '00970467972041', '1', '1', '1', 70, '972041', '0467', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:00', 'LEVELUP', '00000', '972041', NULL);
INSERT INTO `td_m_area` VALUES ('0458', '伊春', '00970458', '1', '1', '1', 58, '996', '0097', '2011-04-14 00:00:00', '2038-09-11 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:18:10', 'LEVELUP', '00000', '996', NULL);
INSERT INTO `td_m_area` VALUES ('972017', '尚志市', '00970451972017', '1', '1', '1', 170, '972017', '0451', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:52', 'LEVELUP', '00000', '972017', NULL);
INSERT INTO `td_m_area` VALUES ('972030', '富裕县', '00970452972030', '1', '1', '1', 120, '972030', '0452', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:54', 'LEVELUP', '00000', '972030', NULL);
INSERT INTO `td_m_area` VALUES ('974181', '绥化市县', '00970455974181', '1', '1', '1', 102, '974181', '0455', '2011-10-14 00:00:00', '2050-12-31 00:00:00', 30, '0', '后台更新区域名称', NULL, NULL, '2012-12-11 15:19:04', 'LEVELUP', '00000', '974181', NULL);
INSERT INTO `td_m_area` VALUES ('972114', '北安市', '00970456972114', '1', '1', '1', 50, '972114', '0456', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:19:07', 'LEVELUP', '00000', '972114', NULL);
INSERT INTO `td_m_area` VALUES ('972014', '通河县', '00970451972014', '1', '1', '1', 140, '972014', '0451', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:17', 'LEVELUP', '00000', '972014', NULL);
INSERT INTO `td_m_area` VALUES ('0459', '大庆', '00970459', '1', '1', '1', 59, '981', '0097', '2011-04-14 00:00:00', '2038-09-02 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:16:27', 'LEVELUP', '00000', '981', NULL);
INSERT INTO `td_m_area` VALUES ('972068', '杜尔伯特蒙古族自治县', '00970459972068', '1', '1', '1', 90, '972068', '0459', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:29', 'LEVELUP', '00000', '972068', NULL);
INSERT INTO `td_m_area` VALUES ('974191', '大庆市区', '00970459974191', '1', '1', '1', 91, '974191', '0459', '2011-10-14 00:00:00', '2050-12-31 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:16:29', 'LEVELUP', '00000', '974191', NULL);
INSERT INTO `td_m_area` VALUES ('0453', '牡丹江市', '00970453', '1', '1', '1', 53, '988', '0097', '2011-04-14 00:00:00', '2038-09-03 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:16:31', 'LEVELUP', '00000', '988', NULL);
INSERT INTO `td_m_area` VALUES ('972121', '明水县', '00970455972121', '1', '1', '1', 60, '972121', '0455', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:15:56', 'LEVELUP', '00000', '972121', NULL);
INSERT INTO `td_m_area` VALUES ('972122', '绥棱县', '00970455972122', '1', '1', '1', 70, '972122', '0455', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:08', 'LEVELUP', '00000', '972122', NULL);
INSERT INTO `td_m_area` VALUES ('972113', '孙吴县', '00970456972113', '1', '1', '1', 40, '972113', '0456', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:58', 'LEVELUP', '00000', '972113', NULL);
INSERT INTO `td_m_area` VALUES ('0468', '鹤岗', '00970468', '1', '1', '1', 68, '993', '0097', '2011-04-14 00:00:00', '2038-09-08 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:16:54', 'LEVELUP', '00000', '993', NULL);
INSERT INTO `td_m_area` VALUES ('972067', '林甸县', '00970459972067', '1', '1', '1', 80, '972067', '0459', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:15:41', 'LEVELUP', '00000', '972067', NULL);
INSERT INTO `td_m_area` VALUES ('972105', '林口市', '00970453972105', '1', '1', '1', 60, '972105', '0453', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:17', 'LEVELUP', '00000', '972105', NULL);
INSERT INTO `td_m_area` VALUES ('972011', '宾　县', '00970451972011', '1', '1', '1', 110, '972011', '0451', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:15:36', 'LEVELUP', '00000', '972011', NULL);
INSERT INTO `td_m_area` VALUES ('972059', '饶河县（市县）', '00970469972059', '1', '1', '1', 80, '972059', '0469', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:47', 'LEVELUP', '00000', '972059', NULL);
INSERT INTO `td_m_area` VALUES ('0451', '哈尔滨', '00970451', '1', '1', '1', 51, '971', '0097', '2011-04-14 00:00:00', '2038-08-30 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:17:57', 'LEVELUP', '00000', '971', NULL);
INSERT INTO `td_m_area` VALUES ('972091', '桦川分局', '00970454972091', '1', '1', '1', 60, '972091', '0454', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:22', 'LEVELUP', '00000', '972091', NULL);
INSERT INTO `td_m_area` VALUES ('0464', '七台河', '00970464', '1', '1', '1', 64, '992', '0097', '2011-04-14 00:00:00', '2038-09-07 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:17:23', 'LEVELUP', '00000', '992', NULL);
INSERT INTO `td_m_area` VALUES ('972099', '勃利县分公司(市县)', '00970464972099', '1', '1', '1', 40, '972099', '0464', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:23', 'LEVELUP', '00000', '972099', NULL);
INSERT INTO `td_m_area` VALUES ('972050', '萝北县', '00970468972050', '1', '1', '1', 70, '972050', '0468', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:17:27', 'LEVELUP', '00000', '972050', NULL);
INSERT INTO `td_m_area` VALUES ('974164', '双鸭山市（市区）', '00970469974164', '1', '1', '1', 91, '974164', '0469', '2011-10-14 00:00:00', '2050-12-31 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:16:21', 'LEVELUP', '00000', '974164', NULL);
INSERT INTO `td_m_area` VALUES ('0457', '大兴安岭', '00970457', '1', '1', '1', 57, '995', '0097', '2011-04-14 00:00:00', '2038-09-10 00:00:00', 20, '0', ' ', NULL, NULL, '2012-12-11 15:16:21', 'LEVELUP', '00000', '995', NULL);
INSERT INTO `td_m_area` VALUES ('972127', '塔河县', '00970457972127', '1', '1', '1', 20, '972127', '0457', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:22', 'LEVELUP', '00000', '972127', NULL);
INSERT INTO `td_m_area` VALUES ('973334', '呼中区', '00970457973334', '1', '1', '1', 33, '973334', '0457', '2011-07-08 00:00:00', '2038-08-29 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:16:23', 'LEVELUP', '00000', '973334', NULL);
INSERT INTO `td_m_area` VALUES ('974180', '大兴安岭市区', '00970457974180', '1', '1', '1', 35, '974180', '0457', '2011-10-14 00:00:00', '2050-12-31 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:16:23', 'LEVELUP', '00000', '974180', NULL);
INSERT INTO `td_m_area` VALUES ('972084', '嘉荫县', '00970458972084', '1', '1', '1', 160, '972084', '0458', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:16:24', 'LEVELUP', '00000', '972084', NULL);
INSERT INTO `td_m_area` VALUES ('97aa4q', '昂昂溪区', '0097045297aa4q', '1', '1', '1', 162, '97aa4q', '0452', '2014-12-24 00:00:00', NULL, 30, '0', NULL, NULL, NULL, '2015-01-19 08:27:23', 'LEVELUP', '00000', '97aa4q', NULL);
INSERT INTO `td_m_area` VALUES ('97aa53', '碾子山区', '0097045297aa53', '1', '1', '1', 165, '97aa53', '0452', '2014-12-24 00:00:00', '2050-12-31 00:00:00', 30, '0', NULL, NULL, NULL, '2015-01-19 08:28:10', 'LEVELUP', '00000', '97aa53', NULL);
INSERT INTO `td_m_area` VALUES ('973332', '松岭区', '00970457973332', '1', '1', '1', 31, '973332', '0457', '2011-07-08 00:00:00', '2038-08-29 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:18:25', 'LEVELUP', '00000', '973332', NULL);
INSERT INTO `td_m_area` VALUES ('973333', '新林区', '00970457973333', '1', '1', '1', 32, '973333', '0457', '2011-07-08 00:00:00', '2038-08-29 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:18:25', 'LEVELUP', '00000', '973333', NULL);
INSERT INTO `td_m_area` VALUES ('972085', '铁力市', '00970458972085', '1', '1', '1', 170, '972085', '0458', '2011-04-14 00:00:00', '2038-08-29 00:00:00', 30, '0', '黑龙江', NULL, NULL, '2012-12-11 15:18:26', 'LEVELUP', '00000', '972085', NULL);
INSERT INTO `td_m_area` VALUES ('97a4yi', '伊春(市县)', '0097045897a4yi', '1', '1', '1', 1, '97a4yi', '0458', '2012-07-27 00:00:00', '2038-08-29 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:18:27', 'LEVELUP', '00000', '97a4yi', NULL);
INSERT INTO `td_m_area` VALUES ('97aa4y', '梅里斯区', '0097045297aa4y', '1', '1', '1', 164, '97aa4y', '0452', '2014-12-24 00:00:00', NULL, 30, '0', NULL, NULL, NULL, '2015-01-19 08:27:39', 'LEVELUP', '00000', '97aa4y', NULL);
INSERT INTO `td_m_area` VALUES ('97aa4t', '富拉尔基区', '0097045297aa4t', '1', '1', '1', 163, '97aa4t', '0452', '2014-12-24 00:00:00', NULL, 30, '0', NULL, NULL, NULL, '2015-01-19 08:27:39', 'LEVELUP', '00000', '97aa4t', NULL);
INSERT INTO `td_m_area` VALUES ('974214', '哈尔滨市区', '00970451974214', '1', '1', '1', 215, '974214', '0451', '2011-10-14 00:00:00', '2050-12-31 00:00:00', 30, '0', ' ', NULL, NULL, '2012-12-11 15:18:35', 'LEVELUP', '00000', '974214', NULL);
INSERT INTO `td_m_area` VALUES ('97', '黑龙江', '0097', '1', '1', '1', 0, '97', NULL, '2011-04-14 00:00:00', '2038-08-29 00:00:00', 10, '0', ' ', NULL, NULL, '2012-12-11 15:16:53', 'LEVELUP', '00000', '97', NULL);

-- ----------------------------
-- Table structure for td_m_dataright
-- ----------------------------
DROP TABLE IF EXISTS `td_m_dataright`;
CREATE TABLE `td_m_dataright`  (
  `DATA_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DATA_NAME` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DATA_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CLASS_CODE` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RIGHT_TYPE` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1000',
  `HELP_INDEX` decimal(12, 0) NULL DEFAULT NULL,
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RIGHT_MODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DR_COMBINA',
  `RIGHT_OBJ` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `COMB_TAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `PROVINCE_CODE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USE_TAG` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`DATA_CODE`, `PROVINCE_CODE`) USING BTREE,
  INDEX `IDX_TD_M_DATARIGHT_REL_CLASS`(`CLASS_CODE`) USING BTREE,
  INDEX `TD_M_DATARIGHT_IND`(`PROVINCE_CODE`, `RIGHT_OBJ`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for td_m_depart
-- ----------------------------
DROP TABLE IF EXISTS `td_m_depart`;
CREATE TABLE `td_m_depart`  (
  `DEPART_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门ID',
  `DEPART_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门编码',
  `DEPART_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `DEPART_KIND_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '渠道类别编码。td_m_departkind',
  `DEPART_FRAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门/渠道关系节点串：由部门/渠道标识拼接而成关系串，可以用LIKE方法查询相关部门的所有下级信息，便于查询和统计。',
  `VALIDFLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '有效标记：0－有效，1－失效（注销）',
  `AREA_CODE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属地域编码。与RSVALUE3相同',
  `PARENT_DEPART_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级部门ID',
  `MANAGER_ID` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '渠道管理部门标识：只有渠道类型的部门才可能有值',
  `MANAGER_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门管理者',
  `ORDER_NO` decimal(3, 0) NOT NULL COMMENT '序号：树状结构信息生成时的显示顺序(同级部门/渠道的优先级关系)',
  `USER_DEPART_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户部门编码：在任何一段时间内编码唯一，便于记录用户老系统的部门编码信息，从而使用户输入老系统编码自动定位新系统编码，给业务办理提供方便。',
  `START_DATE` datetime NULL DEFAULT NULL,
  `END_DATE` datetime NULL DEFAULT NULL,
  `DEPART_LEVEL` decimal(2, 0) NULL DEFAULT NULL COMMENT '部门级别：表示当前部门/渠道在整个部门/渠道结构中层次位置关系。',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `RSVALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门等级。1：省级部门；2：地市级部门；3：区县级部门。注意：与DEPART_LEVEL有区别',
  `RSVALUE2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地市编码',
  `RSVALUE3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区县编码。与AREA_CODE相同',
  `RSVALUE4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用',
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新员工',
  `UPDATE_DEPART_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新部门/渠道',
  `REAL_KIND_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '暂未用',
  `CUC_DEPART_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总部BSDM编码',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份编码',
  PRIMARY KEY (`DEPART_ID`) USING BTREE,
  INDEX `IDX_DEPART_DEPART_FRAME`(`DEPART_FRAME`) USING BTREE,
  INDEX `IDX_DEPART_PARENT_DEPART_ID`(`PARENT_DEPART_ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of td_m_depart
-- ----------------------------
INSERT INTO `td_m_depart` VALUES ('9710254', '9710254', '哈尔滨市分公司', '001', '97102519710254', '0', '974214', '9710251', NULL, NULL, 3, '9710254', '2011-06-08 00:00:00', '2050-12-31 00:00:00', 2, '后台更新BSS编码', NULL, '0451', '0451', NULL, '2013-12-10 23:50:14', 'LEVELUP', '00000', '001', NULL, '97');
INSERT INTO `td_m_depart` VALUES ('9717016', '9717016', '哈尔滨市区分公司', '002', '971025197102549717016', '0', '0451', '9710254', NULL, NULL, 999, '9717016', '2012-12-10 00:00:00', '2062-12-31 00:00:00', 3, ' ', NULL, '0451', '0451', NULL, '2013-01-16 10:20:01', 'LEVELUP', '00000', '002', NULL, '97');
INSERT INTO `td_m_depart` VALUES ('9710279', '9710279', '哈尔滨市依兰县分公司', '002', '971025197102549710279', '0', '972009', '9710254', NULL, NULL, 1, '9710279', '2011-06-08 00:00:00', '2063-01-04 00:00:00', 3, '后台更新BSS编码', NULL, '0451', '972009', NULL, '2013-12-10 23:50:14', 'LEVELUP', '00000', '002', NULL, '97');
INSERT INTO `td_m_depart` VALUES ('9710278', '9710278', '哈尔滨市延寿县分公司', '002', '971025197102549710278', '0', '972015', '9710254', NULL, NULL, 1, '9710278', '2011-06-08 00:00:00', '2063-01-04 00:00:00', 3, '后台更新BSS编码', NULL, '0451', '972015', NULL, '2013-12-10 23:50:14', 'LEVELUP', '00000', '002', NULL, '97');
INSERT INTO `td_m_depart` VALUES ('9710277', '9710277', '哈尔滨市五常市分公司', '002', '971025197102549710277', '0', '972018', '9710254', NULL, NULL, 1, '9710277', '2011-06-08 00:00:00', '2063-01-04 00:00:00', 3, '后台更新BSS编码', NULL, '0451', '972018', NULL, '2013-12-10 23:50:14', 'LEVELUP', '00000', '002', NULL, '97');
INSERT INTO `td_m_depart` VALUES ('9710276', '9710276', '哈尔滨市双城市分公司', '002', '971025197102549710276', '0', '972016', '9710254', NULL, NULL, 1, '9710276', '2011-06-08 00:00:00', '2063-01-04 00:00:00', 3, '后台更新BSS编码', NULL, '0451', '972016', NULL, '2013-12-10 23:50:14', 'LEVELUP', '00000', '002', NULL, '97');
INSERT INTO `td_m_depart` VALUES ('9710275', '9710275', '哈尔滨市尚志市分公司', '002', '971025197102549710275', '0', '972017', '9710254', NULL, NULL, 1, '9710275', '2011-06-08 00:00:00', '2063-01-04 00:00:00', 3, '后台更新BSS编码', NULL, '0451', '972017', NULL, '2013-12-10 23:50:14', 'LEVELUP', '00000', '002', NULL, '97');
INSERT INTO `td_m_depart` VALUES ('9710274', '9710274', '哈尔滨市木兰县分公司', '002', '971025197102549710274', '0', '972013', '9710254', NULL, NULL, 1, '9710274', '2011-06-08 00:00:00', '2063-01-04 00:00:00', 3, '后台更新BSS编码', NULL, '0451', '972013', NULL, '2013-12-10 23:50:14', 'LEVELUP', '00000', '002', NULL, '97');
INSERT INTO `td_m_depart` VALUES ('9710273', '9710273', '哈尔滨市呼兰区分公司', '002', '971025197102549710273', '0', '972007', '9710254', NULL, NULL, 1, '9710273', '2011-06-08 00:00:00', '2063-01-04 00:00:00', 3, '后台更新BSS编码', NULL, '0451', '972007', NULL, '2013-12-10 23:50:14', 'LEVELUP', '00000', '002', NULL, '97');
INSERT INTO `td_m_depart` VALUES ('9710272', '9710272', '哈尔滨市方正县分公司', '002', '971025197102549710272', '0', '972010', '9710254', NULL, NULL, 1, '9710272', '2011-06-08 00:00:00', '2063-01-04 00:00:00', 3, '后台更新BSS编码', NULL, '0451', '972010', NULL, '2013-12-10 23:50:14', 'LEVELUP', '00000', '002', NULL, '97');
INSERT INTO `td_m_depart` VALUES ('9710271', '9710271', '哈尔滨市巴彦县分公司', '002', '971025197102549710271', '0', '972012', '9710254', NULL, NULL, 1, '9710271', '2011-06-08 00:00:00', '2063-01-04 00:00:00', 3, '后台更新BSS编码', NULL, '0451', '972012', NULL, '2013-12-10 23:50:14', 'LEVELUP', '00000', '002', NULL, '97');
INSERT INTO `td_m_depart` VALUES ('9710251', '9710251', '黑龙江省公司', '001', '9710251', '0', '97', NULL, NULL, NULL, 3, '9709466', '2012-07-12 00:00:00', '2050-12-31 00:00:00', 1, ' ', NULL, '97', '97', NULL, '2012-12-26 02:51:34', 'LEVELUP', '00000', '001', NULL, '97');
INSERT INTO `td_m_depart` VALUES ('9764263', '9764263', '七台河市分公司', '001', '97102519764263', '0', '0464', '9710251', NULL, NULL, 0, '9710254', '2011-06-08 00:00:00', '2050-12-31 00:00:00', 2, '后台更新BSS编码', NULL, '0464', '0464', NULL, '2019-09-21 01:40:40', 'LEVELUP', '00000', '001', '9764263', '97');
INSERT INTO `td_m_depart` VALUES ('9711469', '9711469', '鹤岗市分公司', '001', '97102519711469', '0', '0468', '9710251', NULL, NULL, 13, '9711469', '2012-09-05 00:00:00', '2050-12-31 00:00:00', 2, '后台更新BSS编码', NULL, '0468', '0468', NULL, '2019-09-21 01:40:40', 'INTEFACE', '00000', '001', '9711469', '97');
INSERT INTO `td_m_depart` VALUES ('9710257', '9710257', '佳木斯市分公司', '002', '97102519710257', '0', '0454', '9710251', NULL, NULL, 0, '9710257', '2011-06-08 00:00:00', '2062-12-13 00:00:00', 2, '后台更新BSS编码', NULL, '0454', '0454', NULL, '2019-09-21 01:40:40', 'LEVELUP', '00000', '002', '9710257', '97');
INSERT INTO `td_m_depart` VALUES ('9710258', '9710258', '鸡西市分公司', '001', '97102519710258', '0', '0467', '9710251', NULL, NULL, 0, '9710258', '2011-06-08 00:00:00', '2050-12-31 00:00:00', 2, '后台更新BSS编码', NULL, '0467', '0467', NULL, '2019-09-21 01:40:40', 'LEVELUP', '00000', '001', '9710258', '97');
INSERT INTO `td_m_depart` VALUES ('9711298', '9711298', '大庆市分公司', '001', '97102519711298', '0', '0459', '9710251', NULL, NULL, 8, '9711298', '2011-06-08 00:00:00', '2050-12-31 00:00:00', 2, '后台更新BSS编码', NULL, '0459', '0459', NULL, '2019-09-21 01:40:40', 'INTEFACE', '00000', '001', '9711298', '97');
INSERT INTO `td_m_depart` VALUES ('9710255', '9710255', '齐齐哈尔市分公司', '002', '97102519710255', '0', '0452', '9710251', NULL, NULL, 0, '9710255', '2012-09-05 00:00:00', '2062-11-28 00:00:00', 2, '后台更新BSS编码', NULL, '0452', '0452', NULL, '2019-09-21 01:40:40', 'LEVELUP', '00000', '002', '9710255', '97');
INSERT INTO `td_m_depart` VALUES ('9710256', '9710256', '牡丹江市分公司', '001', '97102519710256', '0', '0453', '9710251', NULL, NULL, 5, '9710256', '2012-07-16 00:00:00', '2050-12-31 00:00:00', 2, '后台更新BSS编码', NULL, '0453', '0453', NULL, '2019-09-21 01:40:40', 'INTEFACE', '00000', '001', '9710256', '97');
INSERT INTO `td_m_depart` VALUES ('9710259', '9710259', '双鸭山市分公司', '002', '97102519710259', '0', '0469', '9710251', NULL, NULL, 0, '9710259', '2011-06-08 00:00:00', '2062-11-28 00:00:00', 2, '后台更新BSS编码', NULL, '0469', '0469', NULL, '2019-09-21 01:40:40', 'LEVELUP', '00000', '002', '9710259', '97');
INSERT INTO `td_m_depart` VALUES ('9710260', '9710260', '黑河市分公司', '002', '97102519710260', '0', '0456', '9710251', NULL, NULL, 0, '9710260', '2011-06-08 00:00:00', '2062-11-28 00:00:00', 2, '后台更新BSS编码', NULL, '0456', '0456', NULL, '2019-09-21 01:40:40', 'LEVELUP', '00000', '002', '9710260', '97');
INSERT INTO `td_m_depart` VALUES ('9710261', '9710261', '大兴安岭地区分公司', '002', '97102519710261', '0', '0457', '9710251', NULL, NULL, 0, '9710261', '2011-06-08 00:00:00', '2062-11-28 00:00:00', 2, '后台更新BSS编码', NULL, '0457', '0457', NULL, '2019-09-21 01:40:40', 'LEVELUP', '00000', '002', '9710261', '97');
INSERT INTO `td_m_depart` VALUES ('9710262', '9710262', '绥化市分公司', '001', '97102519710262', '0', '0455', '9710251', NULL, NULL, 7, '9710262', '2011-06-08 00:00:00', '2050-12-31 00:00:00', 2, '后台更新BSS编码', NULL, '0455', '0455', NULL, '2019-09-21 01:40:40', 'LEVELUP', '00000', '001', '9710262', '97');
INSERT INTO `td_m_depart` VALUES ('9710264', '9710264', '伊春市分公司', '001', '97102519710264', '0', '0458', '9710251', NULL, NULL, 11, '9710264', '2011-06-08 00:00:00', '2050-12-31 00:00:00', 2, NULL, NULL, '0458', '0458', NULL, '2019-09-21 01:40:40', 'LEVELUP', '00000', '001', '9710264', '97');

-- ----------------------------
-- Table structure for td_m_file
-- ----------------------------
DROP TABLE IF EXISTS `td_m_file`;
CREATE TABLE `td_m_file`  (
  `FILE_ID` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件标识',
  `FILE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名称',
  `FILE_TYPE` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `FILE_KIND` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件性质',
  `FILE_PATH` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `FILE_SIZE` decimal(12, 0) NULL DEFAULT NULL COMMENT '文件大小',
  `CREA_STAFF` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建员工',
  `CREA_TIME` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`FILE_ID`) USING BTREE,
  INDEX `IDX_TD_M_FILE_STAFF`(`CREA_STAFF`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for td_m_funcright
-- ----------------------------
DROP TABLE IF EXISTS `td_m_funcright`;
CREATE TABLE `td_m_funcright`  (
  `RIGHT_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限编码：对于菜单权限－子系统编码＋有意义的英文说明(界面名称或者功能简称)；对于界面控件操作权限－窗体类名＋按钮名',
  `RIGHT_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `CLASS_CODE` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类编码：将相同功能组合为一类，由我们定义，与子系统有不同之处',
  `RIGHT_ATTR` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限属性：0－菜单权限，1－界面控件权限(首页PORTAL)，2－系统特权',
  `MOD_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块编码：子系统编码＋三位序列报表组作为有意义编码，编码可以为30位',
  `HELP_INDEX` decimal(12, 0) NULL DEFAULT NULL COMMENT '帮助索引',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新员工：这些权限编码基本由程序员设定，因此无需要“更新部门”字段。',
  `UPDATE_DEPART_ID` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新部门',
  `RSRV_STR1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否开放默认以员工归属部门作为权限部门 1：开放 0：不开放',
  `RSRV_STR2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页portal 默认是否可见 0：默认不可见 1：默认可见',
  `RSRV_STR3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页portal 默认顺序',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '17' COMMENT '省份编码',
  `USE_TAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '在用标记。1：在用；0：失效',
  PRIMARY KEY (`RIGHT_CODE`) USING BTREE,
  INDEX `IDX_TD_M_FUNCRIGHT_CLASSCODE`(`CLASS_CODE`) USING BTREE,
  INDEX `IDX_TD_M_FUNCRIGHT_MODCODE`(`MOD_CODE`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '保存菜单、按钮以及相关操作特权等权限信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of td_m_funcright
-- ----------------------------
INSERT INTO `td_m_funcright` VALUES ('DEMA101', '用户管理', 'DEM', '0', 'DEMA101', NULL, '用户管理', '2019-10-08 13:43:02', 'SUPERUSR', '00000', NULL, NULL, NULL, '97', '1');
INSERT INTO `td_m_funcright` VALUES ('DEMA102', '佣金规则', 'DEM', '0', 'DEMA102', NULL, '佣金规则', '2019-10-08 13:43:02', 'SUPERUSR', '00000', NULL, NULL, NULL, '97', '1');
INSERT INTO `td_m_funcright` VALUES ('DEMA103', 'API服务调用示例', 'DEM', '0', 'DEMA103', NULL, 'API服务调用示例', '2019-10-08 13:43:02', 'SUPERUSR', '00000', NULL, NULL, NULL, '97', '1');
INSERT INTO `td_m_funcright` VALUES ('DEMP101', '我的导出', 'DEM', '0', 'DEMP101', NULL, '我的导出', '2019-10-08 13:43:02', 'SUPERUSR', '00000', NULL, NULL, NULL, '97', '1');
INSERT INTO `td_m_funcright` VALUES ('DEMP102', '流程模型管理', 'DEM', '0', 'DEMP102', NULL, '流程模型管理', '2019-10-08 13:43:02', 'SUPERUSR', '00000', NULL, NULL, NULL, '97', '1');
INSERT INTO `td_m_funcright` VALUES ('DEMP103', '在线会话管理', 'DEM', '0', 'DEMP103', NULL, '在线会话管理', '2019-10-08 13:43:02', 'SUPERUSR', '00000', NULL, NULL, NULL, '97', '1');
INSERT INTO `td_m_funcright` VALUES ('DEMP104', '静态参数表缓存管理', 'DEM', '0', 'DEMP104', NULL, '静态参数表缓存管理', '2019-10-08 13:43:02', 'SUPERUSR', '00000', NULL, NULL, NULL, '97', '1');
INSERT INTO `td_m_funcright` VALUES ('DEMP105', '缓存管理', 'DEM', '0', 'DEMP105', NULL, '缓存管理', '2019-10-08 13:43:02', 'SUPERUSR', '00000', NULL, NULL, NULL, '97', '1');
INSERT INTO `td_m_funcright` VALUES ('DEMP106', '队列管理', 'DEM', '0', 'DEMP106', NULL, '队列管理', '2019-10-08 13:43:02', 'SUPERUSR', '00000', NULL, NULL, NULL, '97', '1');
INSERT INTO `td_m_funcright` VALUES ('DEMP107', '发布/订阅管理', 'DEM', '0', 'DEMP107', NULL, '发布/订阅管理', '2019-10-08 13:43:02', 'SUPERUSR', '00000', NULL, NULL, NULL, '97', '1');

-- ----------------------------
-- Table structure for td_m_group
-- ----------------------------
DROP TABLE IF EXISTS `td_m_group`;
CREATE TABLE `td_m_group`  (
  `GROUP_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '群组ID。编码规则：省份编码+群组类型编码+4位数字或小写字母组合，总计8位',
  `GROUP_NAME` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '群组名称',
  `GROUP_TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '群组类型。00：订单组；10：能人组；',
  `PARENT_GROUP_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级群组ID',
  `GROUP_FRAME` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '群组节点串',
  `GROUP_LEVEL` decimal(2, 0) NOT NULL COMMENT '群组级别。',
  `VALIDFLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '有效标识。0：有效；1：无效',
  `START_DATE` datetime NOT NULL COMMENT '生效日期',
  `END_DATE` datetime NOT NULL COMMENT '失效日期',
  `AREA_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区县编码',
  `EPARCHY_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地市编码',
  `PROVINCE_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份编码',
  `ORDER_NO` decimal(3, 0) NOT NULL COMMENT '排序字段',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `CREATE_STAFF_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建员工ID',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_STAFF_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新员工ID',
  `REMARK` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `RSVALUE1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段1',
  `RSVALUE2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段2',
  `RSVALUE3` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段3',
  `RSVALUE4` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '老系统能人组ID',
  PRIMARY KEY (`GROUP_ID`) USING BTREE,
  INDEX `IDX_GROUP_PARENT_GROUP_ID`(`PARENT_GROUP_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for td_m_role
-- ----------------------------
DROP TABLE IF EXISTS `td_m_role`;
CREATE TABLE `td_m_role`  (
  `ROLE_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编码',
  `ROLE_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `ROLE_ATTR` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色属性：0－功能权限角色，1－数据权限角色',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新员工',
  `UPDATE_DEPART_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新部门',
  `VALIDFLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '有效标识 0：有效 1：无效',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '17' COMMENT '省份编码',
  `RIGHT_CLASS` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '权限类别',
  `EPARCHY_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地市编码',
  `CREATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建员工',
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_CODE`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '保存角色编码参数信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of td_m_role
-- ----------------------------
INSERT INTO `td_m_role` VALUES ('7001', 'demo示例', '0', 'demo示例', '2019-07-18 14:19:00', '', '', '0', '97', '1', '0451', 'SUPERUSR', '2019-04-12 09:58:23');
INSERT INTO `td_m_role` VALUES ('7002', '平台管理', '0', '平台管理', '2019-07-15 19:55:58', '', NULL, '0', '97', '1', '0451', 'SUPERUSR', '2019-09-11 11:25:23');

-- ----------------------------
-- Table structure for td_m_staff
-- ----------------------------
DROP TABLE IF EXISTS `td_m_staff`;
CREATE TABLE `td_m_staff`  (
  `STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工ID',
  `DEPART_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门ID',
  `STAFF_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工名称',
  `JOB_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作岗位 10：管理员；20：订单人员；00：其它；详情看TD_S_STATIC.JOB_CODE',
  `SEX` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别 1：男，0：女',
  `BIRTHDAY` datetime NULL DEFAULT NULL,
  `EMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作邮箱',
  `USER_PID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号码',
  `SERIAL_NUMBER` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  `DIMISSION_TAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '离职标识。0：在职，1：离职',
  `START_DATE` datetime NULL DEFAULT NULL,
  `END_DATE` datetime NULL DEFAULT NULL,
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `RSVALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `RSVALUE2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份编码',
  `HOME_CHOICE` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页选择。登录后可选择首页。根据TD_S_STATIC表中配置的TYPE_ID取首页列表',
  `SUPER_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '超级工号标识。1：是；0：否',
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `CREATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `STAFF_SYS` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '工号来源系统。TD_S_STATIC.STAFF_SYS',
  `AUTH_TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'BSS' COMMENT '密码认证方式。TD_S_STATIC.AUTH_TYPE',
  UNIQUE INDEX `PK_TD_M_STAFF`(`STAFF_ID`) USING BTREE,
  INDEX `IDX_TD_M_STAFF_DEPARTID`(`DEPART_ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of td_m_staff
-- ----------------------------
INSERT INTO `td_m_staff` VALUES ('walkdemo', '9710251', 'walkdemo', '', '1', '2019-07-18 00:00:00', 'walkdemo@163.com', '-1', '6666669989', '0', '2001-12-31 00:00:00', '2050-12-31 00:00:00', '', NULL, NULL, '97', NULL, '0', '2018-11-29 15:47:45', '', '2019-07-18 14:24:31', 'walkdemo', '2', 'BSS');

-- ----------------------------
-- Table structure for td_m_staff_group
-- ----------------------------
DROP TABLE IF EXISTS `td_m_staff_group`;
CREATE TABLE `td_m_staff_group`  (
  `STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工ID',
  `GROUP_ID` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作组ID',
  `START_DATE` datetime NULL DEFAULT NULL COMMENT '生效日期',
  `END_DATE` datetime NULL DEFAULT NULL COMMENT '失效日期',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `CREATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '更新人',
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `REMARK` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`STAFF_ID`, `GROUP_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工工作组关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for td_m_staff_log
-- ----------------------------
DROP TABLE IF EXISTS `td_m_staff_log`;
CREATE TABLE `td_m_staff_log`  (
  `LOG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志ID',
  `LOG_REMARK` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作备注',
  `STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工ID',
  `DEPART_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门ID',
  `STAFF_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工名称',
  `JOB_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作岗位 1：商品管理员；2：订单生产人员；',
  `SEX` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别 1：男，0：女',
  `BIRTHDAY` datetime NULL DEFAULT NULL,
  `EMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作邮箱',
  `USER_PID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号码',
  `SERIAL_NUMBER` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  `DIMISSION_TAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '离职标识。0：在职，1：离职',
  `START_DATE` datetime NULL DEFAULT NULL,
  `END_DATE` datetime NULL DEFAULT NULL,
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `RSVALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `RSVALUE2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '17' COMMENT '省份编码',
  `HOME_CHOICE` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页选择。登录后可选择首页。根据TD_S_STATIC表中配置的TYPE_ID取首页列表',
  `SUPER_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '超级工号标识。1：是；0：否',
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `CREATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`LOG_ID`, `STAFF_ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作员信息日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for td_m_user
-- ----------------------------
DROP TABLE IF EXISTS `td_m_user`;
CREATE TABLE `td_m_user`  (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USER_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `REAL_NAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `PASSWORD` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `SEX` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别 1：男，0：女',
  `BIRTHDAY` datetime NULL DEFAULT NULL COMMENT '生日',
  `EMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作邮箱',
  `USER_PID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号码',
  `SERIAL_NUMBER` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `FILE_ID` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件ID',
  `USER_STATE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '有效标识。0：有效，1：无效',
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `CREATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`USER_ID`) USING BTREE,
  UNIQUE INDEX `td_m_user`(`USER_NAME`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2019071900001733 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of td_m_user
-- ----------------------------
INSERT INTO `td_m_user` VALUES (2019061800001676, 'walkdemo', 'walkdemo', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1', '2018-11-15 20:16:08', '11@qq.com', '222', '11111111111', NULL, '1', 'walkdemo测试账号', '2018-11-15 20:17:51', NULL, NULL, NULL);
INSERT INTO `td_m_user` VALUES (2019071800001675, 'test1', '测试用户1', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '0', '1995-12-05 00:00:00', '11@qq.com', '111111111111111111', '13222222222', NULL, '1', NULL, '2019-07-18 16:43:08', 'liubing26', NULL, NULL);
INSERT INTO `td_m_user` VALUES (2019070800000754, 'test2', '测试用户2', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1', NULL, '11@qq.com', '11111111111', '11111111111', NULL, '1', NULL, '2019-07-08 10:05:43', 'liubing26', '2019-10-08 09:58:40', 'walkdemo');
INSERT INTO `td_m_user` VALUES (2019071100001066, 'test3', '测试用户3', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1', '1995-12-05 00:00:00', '22@qq.com', '211111111111111111', '13522222223', NULL, '1', NULL, '2019-07-11 09:38:01', 'liubing26', NULL, NULL);
INSERT INTO `td_m_user` VALUES (2019071100001065, 'test4', '测试用户4', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '0', '1995-12-05 00:00:00', '11@qq.com', '111111111111111111', '13222222222', NULL, '1', NULL, '2019-07-11 09:38:01', 'liubing26', NULL, NULL);
INSERT INTO `td_m_user` VALUES (2019071200001177, 'test5', '测试用户5', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1', '1995-12-05 00:00:00', '22@qq.com', '211111111111111111', '13522222223', NULL, '1', NULL, '2019-07-12 11:01:36', 'liubing26', NULL, NULL);
INSERT INTO `td_m_user` VALUES (2019070900000800, 'test6', '测试用户6', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1', NULL, '11@qq.com', '2', '22222222222', NULL, '1', NULL, '2019-07-09 09:42:38', 'liubing26', '2019-10-08 09:58:50', 'walkdemo');

-- ----------------------------
-- Table structure for td_s_jobinfo
-- ----------------------------
DROP TABLE IF EXISTS `td_s_jobinfo`;
CREATE TABLE `td_s_jobinfo`  (
  `EPARCHY_CODE` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地市',
  `JOB_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作岗位编码',
  `JOB_INFO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作信息',
  `RSRV_TAG1` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPDATE_DEPART_ID` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`EPARCHY_CODE`, `JOB_CODE`, `RSRV_TAG1`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作岗位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for td_s_modfile
-- ----------------------------
DROP TABLE IF EXISTS `td_s_modfile`;
CREATE TABLE `td_s_modfile`  (
  `MOD_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块编码：子系统编码＋三位序列报表组作为有意义编码，编码可以为30位',
  `MOD_NAME` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块名称',
  `MOD_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '库文件类型：0－GUI的DLL文件，1－WEB地址',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新员工',
  `UPDATE_DEPART_ID` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新部门',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份编码',
  PRIMARY KEY (`MOD_CODE`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '保存GUI的DLL文件编码信息和WEB地址URL信息等' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of td_s_modfile
-- ----------------------------
INSERT INTO `td_s_modfile` VALUES ('DEMA101', '/webdemo/forward/demo/user/UserManager', '1', '用户管理', '2019-10-08 13:43:06', 'SUPERUSR', '00000', '97');
INSERT INTO `td_s_modfile` VALUES ('DEMA102', '/webdemo/forward/demo/reward/RewardManager', '1', '佣金规则', '2019-10-08 13:43:06', 'SUPERUSR', '00000', '97');
INSERT INTO `td_s_modfile` VALUES ('DEMA103', '/webdemo/forward/demo/callapi/ListDemo', '1', 'API服务调用示例', '2019-10-08 13:43:06', 'SUPERUSR', '00000', '97');
INSERT INTO `td_s_modfile` VALUES ('DEMP101', '/webdemo/common/exportLog/toPage', '1', '我的导出', '2019-10-08 13:43:06', 'SUPERUSR', '00000', '97');
INSERT INTO `td_s_modfile` VALUES ('DEMP102', '/webdemo/forward/act/model/ActModelList', '1', '流程模型管理', '2019-10-08 13:43:06', 'SUPERUSR', '00000', '97');
INSERT INTO `td_s_modfile` VALUES ('DEMP103', '/webdemo/console/session/go/sessionManager', '1', '在线会话管理', '2019-10-08 13:43:06', 'SUPERUSR', '00000', '97');
INSERT INTO `td_s_modfile` VALUES ('DEMP104', '/webdemo/console/staticparam/go/staticParamCacheManager', '1', '静态参数表缓存管理', '2019-10-08 13:43:06', 'SUPERUSR', '00000', '97');
INSERT INTO `td_s_modfile` VALUES ('DEMP105', '/webdemo/console/cache/go/cacheManager', '1', '缓存管理', '2019-10-08 13:43:06', 'SUPERUSR', '00000', '97');
INSERT INTO `td_s_modfile` VALUES ('DEMP106', '/webdemo/console/queue/go/queueManager', '1', '队列管理', '2019-10-08 13:43:06', 'SUPERUSR', '00000', '97');
INSERT INTO `td_s_modfile` VALUES ('DEMP107', '/webdemo/console/pubsub/go/pubSubManager', '1', '发布/订阅管理', '2019-10-08 13:43:06', 'SUPERUSR', '00000', '97');

-- ----------------------------
-- Table structure for td_s_outsys
-- ----------------------------
DROP TABLE IF EXISTS `td_s_outsys`;
CREATE TABLE `td_s_outsys`  (
  `SYS_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统ID',
  `SYS_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统编码',
  `SYS_NAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统名称',
  `SYS_DESCRIBE` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统描述',
  `SYS_BELONG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统归属。1：省份系统；2：总部系统',
  `SYS_ICON` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统图标。class名称',
  `SHOW_ORDER` decimal(5, 0) NULL DEFAULT NULL COMMENT '显示顺序',
  `NET_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网络类型。1：内网；2：外网',
  `HOME_ADDR` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页地址',
  `LOGIN_ADDR` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录地址。某些系统需要预先调用特殊url进行登陆',
  `LOGOUT_ADDR` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退出地址',
  `HOME_OPEN_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页打开方式。1：post；2：get',
  `AUTH_ADDR` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码校验地址',
  `AUTH_SVC` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码校验服务名称',
  `VALID_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '有效标识。1：有效。0：无效',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `CREATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建员工',
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新员工',
  `RSVALUE1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `RSVALUE2` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `RSVALUE3` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`SYS_ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for td_s_province_config
-- ----------------------------
DROP TABLE IF EXISTS `td_s_province_config`;
CREATE TABLE `td_s_province_config`  (
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份编码。四位编码',
  `PROVINCE_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份编码。两位编码',
  `PROVINCE_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份名称',
  PRIMARY KEY (`PROVINCE_CODE`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of td_s_province_config
-- ----------------------------
INSERT INTO `td_s_province_config` VALUES ('97', 'HLCU', '黑龙江省');
INSERT INTO `td_s_province_config` VALUES ('85', 'GZCU', '贵州省');

-- ----------------------------
-- Table structure for td_s_static
-- ----------------------------
DROP TABLE IF EXISTS `td_s_static`;
CREATE TABLE `td_s_static`  (
  `TYPE_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DATA_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DATA_NAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `VALID_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARA_CODE1` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARA_CODE2` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARA_CODE3` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ORDER_NO` decimal(10, 0) NULL DEFAULT 0,
  PRIMARY KEY (`TYPE_ID`, `DATA_ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of td_s_static
-- ----------------------------
INSERT INTO `td_s_static` VALUES ('VALID_FLAG', '0', '有效', '1', '97', NULL, NULL, NULL, 10);
INSERT INTO `td_s_static` VALUES ('VALID_FLAG', '1', '无效', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('STAFF_SYS', '1', '系统自建', '1', '97', NULL, NULL, NULL, 10);
INSERT INTO `td_s_static` VALUES ('STAFF_SYS', '2', 'BSS系统', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('DIMISSION_TAG', '0', '在职', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('DIMISSION_TAG', '1', '离职', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('ROLE_ROLEATTR', 'S', '服务角色', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('ROLE_ROLEATTR', 'H', '活动角色', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('ROLE_ROLEATTR', 'P', '产品角色', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('ROLE_ROLEATTR', '1', '数据角色', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('ROLE_ROLEATTR', 'D', '资费角色', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('ROLE_ROLEATTR', 'X', 'SP角色', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('ROLE_ROLEATTR', '2', '域权角色', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('ROLE_ROLEATTR', 'K', '包角色', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('ROLE_ROLEATTR', '0', '功能角色', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('ROLE_VALIDFLAG', '0', '有效', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('ROLE_VALIDFLAG', '1', '无效', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('SEX', '1', '男', '1', '97', NULL, NULL, NULL, 10);
INSERT INTO `td_s_static` VALUES ('SEX', '0', '女', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('EXPORTLOG_STATE', '0', '导出中', '1', '97', NULL, NULL, NULL, 10);
INSERT INTO `td_s_static` VALUES ('EXPORTLOG_STATE', '1', '导出成功', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('EXPORTLOG_STATE', '2', '导出失败', '1', '97', NULL, NULL, NULL, 30);
INSERT INTO `td_s_static` VALUES ('EXPORTLOG_MODE', '1', '同步', '1', '97', NULL, NULL, NULL, 10);
INSERT INTO `td_s_static` VALUES ('EXPORTLOG_MODE', '2', '异步', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('ROLE_ROLESTATUS', '1', '失效', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('USER_STATE', '0', '无效', '1', '97', NULL, NULL, NULL, 10);
INSERT INTO `td_s_static` VALUES ('USER_STATE', '1', '有效', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('REWARD_RULECODE_DESC', 'ADVANCE_PAY', '预存款', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('REWARD_RULECODE_DESC', 'PRODUCT_ID', '产品', '1', '97', NULL, NULL, NULL, 10);
INSERT INTO `td_s_static` VALUES ('ROLE_ROLESTATUS', '0', '有效', '1', '97', NULL, NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '11', '北京', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '13', '天津', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '18', '河北', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '19', '山西', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '10', '内蒙古', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '91', '辽宁', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '90', '吉林', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '97', '黑龙江', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '17', '山东', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '76', '河南', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '31', '上海', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '34', '江苏', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '36', '浙江', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '30', '安徽', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '38', '福建', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '75', '江西', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '71', '湖北', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '74', '湖南', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '51', '广东', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '59', '广西', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '50', '海南', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '83', '重庆', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '81', '四川', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '85', '贵州', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '86', '云南', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '79', '西藏', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '84', '陕西', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '87', '甘肃', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '70', '青海', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '88', '宁夏', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('PROVINCE_CODE', '89', '新疆', '1', '97', '', NULL, NULL, 0);
INSERT INTO `td_s_static` VALUES ('RIGHT_ATTR', '0', '菜单权限', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('RIGHT_ATTR', '1', '界面控件权限', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('RIGHT_ATTR', '2', '系统特权', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('USE_TAG', '0', '失效', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('USE_TAG', '1', '在用', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('SUPER_FLAG', '0', '否', '1', '97', NULL, NULL, NULL, 20);
INSERT INTO `td_s_static` VALUES ('SUPER_FLAG', '1', '是', '1', '97', NULL, NULL, NULL, 10);

-- ----------------------------
-- Table structure for tf_m_notice
-- ----------------------------
DROP TABLE IF EXISTS `tf_m_notice`;
CREATE TABLE `tf_m_notice`  (
  `NOTICE_ID` decimal(8, 0) NOT NULL,
  `NAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CONTENT` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `START_TIME` datetime NULL DEFAULT NULL,
  `END_TIME` datetime NULL DEFAULT NULL,
  `CREATE_STAFF_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `PICTURE_ID` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`NOTICE_ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tf_m_notice_area
-- ----------------------------
DROP TABLE IF EXISTS `tf_m_notice_area`;
CREATE TABLE `tf_m_notice_area`  (
  `NOTICE_ID` decimal(8, 0) NOT NULL,
  `AREA_CODE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`NOTICE_ID`, `AREA_CODE`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tf_m_rolefuncright
-- ----------------------------
DROP TABLE IF EXISTS `tf_m_rolefuncright`;
CREATE TABLE `tf_m_rolefuncright`  (
  `ROLE_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编码',
  `RIGHT_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限编码',
  `EXTEND_VALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附加值1：用来保存一些附加信息，如数据减免最大金额等',
  `EXTEND_VALUE2` decimal(8, 0) NULL DEFAULT NULL COMMENT '附加值2：用来保存一些附加的数值信息',
  `RSVALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `RSVALUE2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新员工',
  `UPDATE_DEPART_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新部门',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '17' COMMENT '省份编码',
  `RIGHT_TAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '权限标志：0－无效，1－有效',
  PRIMARY KEY (`ROLE_CODE`, `RIGHT_CODE`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '保存相关功能权限的角色信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tf_m_rolefuncright
-- ----------------------------
INSERT INTO `tf_m_rolefuncright` VALUES ('7001', 'DEMA101', NULL, NULL, NULL, NULL, '2019-10-08 13:46:44', 'SUPERUSR', '00000', '97', '1');
INSERT INTO `tf_m_rolefuncright` VALUES ('7001', 'DEMA102', NULL, NULL, NULL, NULL, '2019-10-08 13:46:44', 'SUPERUSR', '00000', '97', '1');
INSERT INTO `tf_m_rolefuncright` VALUES ('7001', 'DEMA103', NULL, NULL, NULL, NULL, '2019-10-08 13:46:44', 'SUPERUSR', '00000', '97', '1');
INSERT INTO `tf_m_rolefuncright` VALUES ('7002', 'DEMP101', NULL, NULL, NULL, NULL, '2019-10-08 13:47:01', 'SUPERUSR', '00000', '97', '1');
INSERT INTO `tf_m_rolefuncright` VALUES ('7002', 'DEMP102', NULL, NULL, NULL, NULL, '2019-10-08 13:47:01', 'SUPERUSR', '00000', '97', '1');
INSERT INTO `tf_m_rolefuncright` VALUES ('7002', 'DEMP103', NULL, NULL, NULL, NULL, '2019-10-08 13:47:01', 'SUPERUSR', '00000', '97', '1');
INSERT INTO `tf_m_rolefuncright` VALUES ('7002', 'DEMP104', NULL, NULL, NULL, NULL, '2019-10-08 13:47:01', 'SUPERUSR', '00000', '97', '1');
INSERT INTO `tf_m_rolefuncright` VALUES ('7002', 'DEMP105', NULL, NULL, NULL, NULL, '2019-10-08 13:47:01', 'SUPERUSR', '00000', '97', '1');
INSERT INTO `tf_m_rolefuncright` VALUES ('7002', 'DEMP106', NULL, NULL, NULL, NULL, '2019-10-08 13:47:01', 'SUPERUSR', '00000', '97', '1');
INSERT INTO `tf_m_rolefuncright` VALUES ('7002', 'DEMP107', NULL, NULL, NULL, NULL, '2019-10-08 13:47:01', 'SUPERUSR', '00000', '97', '1');

-- ----------------------------
-- Table structure for tf_m_rolefuncright_log
-- ----------------------------
DROP TABLE IF EXISTS `tf_m_rolefuncright_log`;
CREATE TABLE `tf_m_rolefuncright_log`  (
  `LOG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LOG_REMARK` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ROLE_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RIGHT_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EXTEND_VALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EXTEND_VALUE2` decimal(8, 0) NULL DEFAULT NULL,
  `RSVALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RSVALUE2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPDATE_DEPART_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`, `ROLE_CODE`, `RIGHT_CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tf_m_stafffuncright
-- ----------------------------
DROP TABLE IF EXISTS `tf_m_stafffuncright`;
CREATE TABLE `tf_m_stafffuncright`  (
  `STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工编码',
  `RIGHT_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限或角色编码：可能是单个的权限编码，也可能是角色编码',
  `RIGHT_ATTR` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限属性：0－功能权限，1－功能角色权限',
  `EXTEND_VALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附加值1：当权限属性是0时有效',
  `EXTEND_VALUE2` decimal(8, 0) NULL DEFAULT 0 COMMENT '附加值2：当权限属性是0时有效',
  `RIGHT_TAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限标志：0－无效，1－有效',
  `RSVALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冗余字段1',
  `RSVALUE2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冗余字段2',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `ACCREDIT_TIME` datetime NULL DEFAULT NULL,
  `ACCREDIT_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权员工',
  `DEPART_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限部门',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份编码',
  PRIMARY KEY (`STAFF_ID`, `RIGHT_CODE`) USING BTREE,
  UNIQUE INDEX `PK_TF_M_STAFFFUNCRIGHT`(`STAFF_ID`, `RIGHT_CODE`, `DEPART_ID`) USING BTREE,
  INDEX `IDX_TF_M_STAFFFUNCRIGHT_RIGHT`(`RIGHT_CODE`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '保存员工的所有功能权限/角色信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tf_m_stafffuncright
-- ----------------------------
INSERT INTO `tf_m_stafffuncright` VALUES ('walkdemo', '7001', '1', NULL, 0, '1', NULL, NULL, NULL, '2019-10-08 13:47:25', 'SUPERUSR', '9710251', '97');
INSERT INTO `tf_m_stafffuncright` VALUES ('walkdemo', '7002', '1', NULL, 0, '1', NULL, NULL, NULL, '2019-10-08 13:47:34', 'SUPERUSR', '9710251', '97');

-- ----------------------------
-- Table structure for tf_m_stafffuncright_log
-- ----------------------------
DROP TABLE IF EXISTS `tf_m_stafffuncright_log`;
CREATE TABLE `tf_m_stafffuncright_log`  (
  `STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RIGHT_CODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RIGHT_ATTR` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EXTEND_VALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EXTEND_VALUE2` decimal(8, 0) NULL DEFAULT NULL,
  `RIGHT_TAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RSVALUE1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RSVALUE2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ACCREDIT_TIME` datetime NULL DEFAULT NULL,
  `ACCREDIT_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DEPART_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LOG_REMARK` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tf_m_staffpasswd
-- ----------------------------
DROP TABLE IF EXISTS `tf_m_staffpasswd`;
CREATE TABLE `tf_m_staffpasswd`  (
  `STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工编码',
  `STAFF_PASSWD` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工密码',
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新员工',
  `UPDATE_DEPART_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新部门',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份编码',
  `RSVALUE1` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1  0-老密码  1-已经修改为新密码加密方式  null-新密码加密方式',
  PRIMARY KEY (`STAFF_ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '保存加密后的员工密码信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tf_m_staffpasswd
-- ----------------------------
INSERT INTO `tf_m_staffpasswd` VALUES ('walkdemo', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-07-18 14:32:21', 'walkdemo', '00000', '97', NULL);

-- ----------------------------
-- Table structure for tf_m_staffpasswd_log
-- ----------------------------
DROP TABLE IF EXISTS `tf_m_staffpasswd_log`;
CREATE TABLE `tf_m_staffpasswd_log`  (
  `LOG_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志ID',
  `LOG_REMARK` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作备注',
  `STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工编码',
  `STAFF_PASSWD` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工密码',
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新员工',
  `UPDATE_DEPART_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新部门',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份编码',
  PRIMARY KEY (`LOG_ID`, `STAFF_ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '密码日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tl_m_accesslog
-- ----------------------------
DROP TABLE IF EXISTS `tl_m_accesslog`;
CREATE TABLE `tl_m_accesslog`  (
  `log_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志ID',
  `menu_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单编码',
  `access_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '菜单url',
  `access_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  `access_month` decimal(2, 0) NULL DEFAULT NULL COMMENT '访问月份',
  `create_staff_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_depart_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人部门',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单访问日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tl_m_accesslog
-- ----------------------------
INSERT INTO `tl_m_accesslog` VALUES ('20191008141028005055', 'DEMA101', '/webdemo/forward/demo/user/UserManager', '2019-10-08 14:10:28', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141030005056', 'DEMA102', '/webdemo/forward/demo/reward/RewardManager', '2019-10-08 14:10:30', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141056005057', 'DEMP101', '/webdemo/common/exportLog/toPage', '2019-10-08 14:10:56', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141057005058', 'DEMP106', '/webdemo/console/queue/go/queueManager', '2019-10-08 14:10:57', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141100005059', 'DEMP104', '/webdemo/console/staticparam/go/staticParamCacheManager', '2019-10-08 14:11:00', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141143005060', 'DEMP105', '/webdemo/console/cache/go/cacheManager', '2019-10-08 14:11:43', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141145005061', 'DEMP104', '/webdemo/console/staticparam/go/staticParamCacheManager', '2019-10-08 14:11:45', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141146005062', 'DEMP103', '/webdemo/console/session/go/sessionManager', '2019-10-08 14:11:46', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141148005063', 'DEMP102', '/webdemo/forward/act/model/ActModelList', '2019-10-08 14:11:48', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141150005064', 'DEMP101', '/webdemo/common/exportLog/toPage', '2019-10-08 14:11:50', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141152005065', 'DEMP107', '/webdemo/console/pubsub/go/pubSubManager', '2019-10-08 14:11:52', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141424005066', 'DEMA101', '/webdemo/forward/demo/user/UserManager', '2019-10-08 14:14:24', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141442005067', 'DEMA103', '/webdemo/forward/demo/callapi/ListDemo', '2019-10-08 14:14:42', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191008141831005068', 'DEMA101', '/webdemo/forward/demo/user/UserManager', '2019-10-08 14:18:31', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014102726005069', 'DEMA101', '/webdemo/forward/demo/user/UserManager', '2019-10-14 10:27:26', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014102731005070', 'DEMA102', '/webdemo/forward/demo/reward/RewardManager', '2019-10-14 10:27:31', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014102732005071', 'DEMA103', '/webdemo/forward/demo/callapi/ListDemo', '2019-10-14 10:27:32', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014102739005072', 'DEMP101', '/webdemo/common/exportLog/toPage', '2019-10-14 10:27:39', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014102740005073', 'DEMP102', '/webdemo/forward/act/model/ActModelList', '2019-10-14 10:27:40', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014102741005074', 'DEMP103', '/webdemo/console/session/go/sessionManager', '2019-10-14 10:27:41', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014102742005075', 'DEMP105', '/webdemo/console/cache/go/cacheManager', '2019-10-14 10:27:42', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014102743005076', 'DEMP105', '/webdemo/console/cache/go/cacheManager', '2019-10-14 10:27:43', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014102743005077', 'DEMP106', '/webdemo/console/queue/go/queueManager', '2019-10-14 10:27:43', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014105158005078', 'DEMA101', '/webdemo/forward/demo/user/UserManager', '2019-10-14 10:51:58', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014121321005079', 'DEMA101', '/webdemo/forward/demo/user/UserManager', '2019-10-14 12:13:21', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014121331005080', 'DEMA101', '/webdemo/forward/demo/user/UserManager', '2019-10-14 12:13:31', 10, 'walkdemo', '9710251', NULL);
INSERT INTO `tl_m_accesslog` VALUES ('20191014121441005081', 'DEMA102', '/webdemo/forward/demo/reward/RewardManager', '2019-10-14 12:14:41', 10, 'walkdemo', '9710251', NULL);

-- ----------------------------
-- Table structure for tl_m_exportlog
-- ----------------------------
DROP TABLE IF EXISTS `tl_m_exportlog`;
CREATE TABLE `tl_m_exportlog`  (
  `LOG_ID` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志流水',
  `EXPORT_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '导出文件名称',
  `EXPORT_MODE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '导出模式。1：同步。2：异步',
  `EXPORT_STATE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '导出状态。0：导出中；1：导出成功；2：导出失败；3：预约导出中',
  `EXPORT_PATH` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导出路径。注意：同步方式导出后会删除该路径下文件，避免占用过多磁盘空间。',
  `REQ_URI` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求URI',
  `PARAMS` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `TOTAL` decimal(20, 0) NULL DEFAULT NULL COMMENT '总记录数',
  `FILE_SIZE` decimal(20, 0) NULL DEFAULT NULL COMMENT '导出文件大小。单位：字节',
  `OPERATE_IP` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作IP',
  `CREATE_STAFF` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `APPOINTMENT_TIME` datetime NULL DEFAULT NULL COMMENT '预约导出时间',
  `FINISH_TIME` datetime NULL DEFAULT NULL COMMENT '导出完成时间',
  `CHANNEL_NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '频道名称。预约导出时使用',
  `RETRY_NUMS` decimal(5, 0) NULL DEFAULT NULL COMMENT '重试次数',
  `ERROR_INFO` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '错误信息',
  `REMARK` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`LOG_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '导出日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tl_m_stafflog
-- ----------------------------
DROP TABLE IF EXISTS `tl_m_stafflog`;
CREATE TABLE `tl_m_stafflog`  (
  `LOG_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志ID',
  `STAFF_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工ID',
  `IN_TIME` datetime NULL DEFAULT NULL,
  `OUT_TIME` datetime NULL DEFAULT NULL,
  `SUBSYS_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统编码。默认O2O',
  `IN_IP` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录IP',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `PROVINCE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '17' COMMENT '省份编码',
  PRIMARY KEY (`LOG_ID`) USING BTREE,
  INDEX `IDX_TL_M_STAFFLOG_IN_TIME`(`IN_TIME`) USING BTREE,
  INDEX `IDX_TL_M_STAFFLOG_STAFF_ID`(`STAFF_ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- View structure for td_s_param
-- ----------------------------
DROP VIEW IF EXISTS `td_s_param`;
CREATE ALGORITHM = UNDEFINED DEFINER = `walkdemo`@`%` SQL SECURITY DEFINER VIEW `td_s_param` AS select `d`.`TYPE_ID` AS `TYPE_ID`,`d`.`DATA_ID` AS `DATA_ID`,`d`.`DATA_NAME` AS `DATA_NAME`,`d`.`VALID_FLAG` AS `VALID_FLAG`,`d`.`PROVINCE_CODE` AS `PROVINCE_CODE`,`d`.`PARA_CODE1` AS `para_code1`,`d`.`PARA_CODE2` AS `PARA_CODE2`,`d`.`PARA_CODE3` AS `PARA_CODE3`,`d`.`ORDER_NO` AS `order_no` from `td_s_static` `d`;

-- ----------------------------
-- View structure for v_stafffuncright
-- ----------------------------
DROP VIEW IF EXISTS `v_stafffuncright`;
CREATE ALGORITHM = UNDEFINED DEFINER = `walkdemo`@`%` SQL SECURITY DEFINER VIEW `v_stafffuncright` AS select `a`.`STAFF_ID` AS `STAFF_ID`,`a`.`RIGHT_CODE` AS `RIGHT_CODE`,`b`.`RIGHT_NAME` AS `RIGHT_NAME`,'0' AS `RIGHT_ATTR` from (`tf_m_stafffuncright` `a` join `td_m_funcright` `b`) where ((`a`.`RIGHT_CODE` = `b`.`RIGHT_CODE`) and (`a`.`RIGHT_ATTR` = '0') and (`a`.`RIGHT_TAG` = '1') and (`b`.`USE_TAG` = '1')) union select `a`.`STAFF_ID` AS `STAFF_ID`,`c`.`RIGHT_CODE` AS `RIGHT_CODE`,`c`.`RIGHT_NAME` AS `RIGHT_NAME`,'0' AS `RIGHT_ATTR` from (((`tf_m_stafffuncright` `a` join `tf_m_rolefuncright` `b`) join `td_m_funcright` `c`) join `td_m_role` `d`) where ((`a`.`RIGHT_CODE` = `b`.`ROLE_CODE`) and (`b`.`RIGHT_CODE` = `c`.`RIGHT_CODE`) and (`b`.`ROLE_CODE` = `d`.`ROLE_CODE`) and (`a`.`RIGHT_ATTR` = '1') and (`a`.`RIGHT_TAG` = '1') and (`b`.`RIGHT_TAG` = '1') and (`c`.`USE_TAG` = '1') and (`d`.`VALIDFLAG` = '0')) union all select `a`.`STAFF_ID` AS `STAFF_ID`,`a`.`RIGHT_CODE` AS `RIGHT_CODE`,`d`.`ROLE_NAME` AS `ROLE_NAME`,'1' AS `RIGHT_ATTR` from (`tf_m_stafffuncright` `a` join `td_m_role` `d`) where ((`a`.`RIGHT_CODE` = `d`.`ROLE_CODE`) and (`a`.`RIGHT_TAG` = '1') and (`d`.`VALIDFLAG` = '0'));

SET FOREIGN_KEY_CHECKS = 1;
