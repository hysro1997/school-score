/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50741
 Source Host           : localhost:3306
 Source Schema         : ajxx_score

 Target Server Type    : MySQL
 Target Server Version : 50741
 File Encoding         : 65001

 Date: 14/04/2023 19:41:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exam_class_statictics
-- ----------------------------
DROP TABLE IF EXISTS `exam_class_statictics`;
CREATE TABLE `exam_class_statictics`  (
  `exam_statistics_id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '统计记录ID',
  `grade` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `classes` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `subject` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学科',
  `exam_numbers` int(11) NULL DEFAULT NULL COMMENT '参加考试的人数',
  `full_socre_numbers` int(11) NULL DEFAULT NULL COMMENT '满分人数',
  `excellent_numbers` int(11) NULL DEFAULT NULL COMMENT '优秀人数(优秀-99)',
  `good_numbers` int(11) NULL DEFAULT NULL COMMENT '良好人数(75-优秀)',
  `qualified_numbers` int(11) NULL DEFAULT NULL COMMENT '及格人数(60-75)',
  `unqualified_one_numbers` int(11) NULL DEFAULT NULL COMMENT '不及格人数(55-59)',
  `unqualified_two_numbers` int(11) NULL DEFAULT NULL COMMENT '不及格人数(50-54)',
  `unqualified_three_numbers` int(11) NULL DEFAULT NULL COMMENT '不及格人数(40-49)',
  `unqualified_four_numbers` int(11) NULL DEFAULT NULL COMMENT '不及格人数(40分以下)',
  `total_score` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '全班总分',
  `average_score` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '平均分',
  `qualified_percentage` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '及格率',
  `excellent_percentage` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优秀率',
  `muitiple_score` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '综合分（平均分*40%，及格率*30%，优秀率*30%）',
  `exam_id` bigint(20) NULL DEFAULT NULL COMMENT '考试ID',
  `muitiple_rank` int(5) NULL DEFAULT NULL COMMENT '综合分排名',
  `average_rank` int(5) NULL DEFAULT NULL COMMENT '平均分排名',
  PRIMARY KEY (`exam_statistics_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级成绩统计情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_class_statictics
-- ----------------------------
INSERT INTO `exam_class_statictics` VALUES (00000000000000000020, '一年级', '1班', '语文', 50, 0, 22, 25, 2, 0, 0, 0, 1, '4291.0', '85.82', '98.00%', '44.00%', '76.93', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000021, '一年级', '1班', '数学', 50, 0, 13, 29, 7, 0, 0, 0, 1, '4284.0', '85.68', '98.00%', '26.00%', '71.47', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000022, '三年级', '2班', '语文', 50, 0, 31, 13, 5, 0, 1, 0, 0, '4275.0', '85.50', '98.00%', '62.00%', '82.2', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000023, '三年级', '2班', '数学', 49, 1, 24, 16, 5, 2, 0, 0, 1, '4170.0', '85.10', '93.88%', '51.02%', '77.51', 22, 3, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000024, '三年级', '2班', '英语', 50, 1, 35, 11, 2, 0, 0, 0, 1, '4486.0', '89.72', '98.00%', '72.00%', '86.89', 22, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000025, '三年级', '3班', '语文', 49, 0, 24, 9, 12, 0, 0, 2, 2, '3819.0', '77.94', '91.84%', '48.98%', '73.42', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000026, '三年级', '3班', '数学', 49, 2, 21, 14, 9, 0, 1, 2, 0, '4122.0', '84.12', '93.88%', '46.94%', '75.89', 22, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000028, '三年级', '3班', '英语', 49, 4, 34, 10, 1, 0, 0, 0, 0, '4533.0', '92.51', '100.00%', '77.55%', '90.27', 22, 2, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000029, '三年级', '4班', '语文', 48, 0, 27, 10, 8, 1, 0, 0, 2, '3905.0', '81.35', '93.75%', '56.25%', '77.54', 22, 3, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000030, '三年级', '4班', '数学', 48, 0, 20, 14, 9, 2, 0, 1, 2, '3858.0', '80.38', '89.58%', '41.67%', '71.53', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000031, '三年级', '4班', '英语', 48, 1, 28, 14, 3, 0, 0, 0, 2, '4214.0', '87.79', '95.83%', '60.42%', '81.99', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000032, '三年级', '5班', '语文', 49, 0, 27, 12, 7, 0, 0, 3, 0, '3983.0', '81.29', '93.88%', '55.10%', '77.21', 22, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000033, '三年级', '5班', '数学', 49, 2, 20, 25, 2, 0, 0, 0, 0, '4352.0', '88.82', '100.00%', '44.90%', '79.0', 22, 2, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000034, '三年级', '5班', '英语', 49, 5, 35, 8, 1, 0, 0, 0, 0, '4612.0', '94.12', '100.00%', '81.63%', '92.14', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000035, '三年级', '6班', '语文', 50, 0, 31, 12, 3, 2, 1, 0, 1, '4190.0', '83.80', '92.00%', '62.00%', '79.72', 22, 2, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000036, '三年级', '6班', '数学', 50, 1, 31, 12, 4, 0, 1, 0, 1, '4404.0', '88.08', '96.00%', '64.00%', '83.23', 22, 1, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000037, '三年级', '6班', '英语', 50, 1, 39, 7, 1, 1, 1, 0, 0, '4570.0', '91.40', '96.00%', '80.00%', '89.36', 22, 3, 3);

-- ----------------------------
-- Table structure for exam_excellent_score_line
-- ----------------------------
DROP TABLE IF EXISTS `exam_excellent_score_line`;
CREATE TABLE `exam_excellent_score_line`  (
  `excellent_id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'id',
  `subject` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学科',
  `excellent_score` float NULL DEFAULT NULL COMMENT '优秀分数',
  `grade` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  PRIMARY KEY (`excellent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优秀分数线' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_excellent_score_line
-- ----------------------------
INSERT INTO `exam_excellent_score_line` VALUES (00000000001, '语文', 90, '一年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000002, '数学', 95, '一年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000003, '语文', 90, '二年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000004, '数学', 95, '二年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000005, '语文', 85, '三年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000006, '数学', 90, '三年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000007, '英语', 90, '三年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000008, '语文', 85, '四年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000009, '数学', 90, '四年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000010, '英语', 90, '四年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000011, '语文', 85, '五年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000012, '数学', 90, '五年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000013, '英语', 90, '五年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000014, '语文', 85, '六年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000015, '数学', 90, '六年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000016, '英语', 90, '六年级');

-- ----------------------------
-- Table structure for exam_grade_statistic
-- ----------------------------
DROP TABLE IF EXISTS `exam_grade_statistic`;
CREATE TABLE `exam_grade_statistic`  (
  `exam_grade_statistics_id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '年级数据ID',
  `exam_numbers` int(11) NULL DEFAULT NULL COMMENT '考试人数',
  `triple_qualified_numbers` int(11) NULL DEFAULT NULL COMMENT '三及格人数',
  `triple_excellent_numbers` int(11) NULL DEFAULT NULL COMMENT '三优秀人数',
  `triple_qualified_percentage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '三及格率',
  `triple_excellent_percentage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '三优秀率',
  `muitiple_score` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '综合分',
  `grade` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `classes` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `muitiple_rank` int(5) NULL DEFAULT NULL COMMENT '综合分排名',
  `average_rank` int(5) NULL DEFAULT NULL COMMENT '平均分排名',
  `exam_id` int(11) NULL DEFAULT NULL COMMENT '考试ID',
  `all_score` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总得分',
  `all_score_percentage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '得分率',
  PRIMARY KEY (`exam_grade_statistics_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '年级数据统计情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_grade_statistic
-- ----------------------------
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000002, 49, 46, 22, '93.88%', '44.90%', '76.82', '三年级', '2班', 2, NULL, 22, '12931.0', '87.97%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000003, 49, 45, 20, '91.84%', '40.82%', '73.74', '三年级', '3班', 3, NULL, 22, '12474.0', '84.86%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000004, 48, 43, 16, '89.58%', '33.33%', '70.14', '三年级', '4班', 5, NULL, 22, '11977.0', '83.17%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000005, 49, 46, 16, '93.88%', '32.65%', '73.19', '三年级', '5班', 4, NULL, 22, '12947.0', '88.07%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000006, 50, 46, 24, '92.00%', '48.00%', '77.1', '三年级', '6班', 1, NULL, 22, '13164.0', '87.76%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000007, 50, 49, 10, '98.00%', '20.00%', '69.7', '一年级', '1班', 1, NULL, 22, '8575.0', '85.75%');

-- ----------------------------
-- Table structure for exam_grade_summary
-- ----------------------------
DROP TABLE IF EXISTS `exam_grade_summary`;
CREATE TABLE `exam_grade_summary`  (
  `exam_grade_summary_id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `grade` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `subject` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学科',
  `exam_total_numbers` int(11) NULL DEFAULT NULL COMMENT '考试总人数',
  `grade_total_scores` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级总分',
  `grade_average_score` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级均分',
  `grade_qualified_percentage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级及格率',
  `grade_excellent_percentage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级优秀率',
  `grade_unqualified_numbers` int(11) NULL DEFAULT NULL COMMENT '不及格人数',
  `exam_id` bigint(20) NULL DEFAULT NULL COMMENT '考试ID',
  PRIMARY KEY (`exam_grade_summary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '年级总体情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_grade_summary
-- ----------------------------
INSERT INTO `exam_grade_summary` VALUES (00000000000000000004, '一年级', '语文', 50, '4291.0', '85.82', '98.00%', '44.00%', 1, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000005, '一年级', '数学', 50, '4284.0', '85.68', '98.00%', '26.00%', 1, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000006, '三年级', '语文', 246, '20172.0', '82.00', '93.90%', '56.91%', 15, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000007, '三年级', '数学', 245, '20906.0', '85.33', '94.69%', '49.80%', 13, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000008, '三年级', '英语', 246, '22415.0', '91.12', '97.97%', '74.39%', 5, 22);

-- ----------------------------
-- Table structure for exam_student_scores
-- ----------------------------
DROP TABLE IF EXISTS `exam_student_scores`;
CREATE TABLE `exam_student_scores`  (
  `score_id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '分数ID',
  `grade` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `classes` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `exam_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '考试号',
  `chinese_score` decimal(7, 1) NULL DEFAULT NULL COMMENT '语文分数',
  `maths_score` decimal(7, 1) NULL DEFAULT NULL COMMENT '数学分数',
  `english_score` decimal(7, 1) NULL DEFAULT NULL COMMENT '英语分数',
  `science_score` decimal(7, 1) NULL DEFAULT NULL COMMENT '科学分数',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '录入时间',
  `create_by` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '录入者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `exam_id` bigint(20) NULL DEFAULT NULL COMMENT '考试ID',
  PRIMARY KEY (`score_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生分数情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_student_scores
-- ----------------------------

-- ----------------------------
-- Table structure for exams
-- ----------------------------
DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams`  (
  `exam_id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '考试ID',
  `exam_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考试名称',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enable_flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '启用状态0启用1禁用',
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '各种考试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exams
-- ----------------------------
INSERT INTO `exams` VALUES (00000000000000000022, '202303', '2023-04-04 19:18:59', 'admin', '0');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (22, 'exam_class_statictics', '班级成绩统计情况', NULL, NULL, 'ExamClassStatictics', 'crud', 'com.hysro.scores', 'scores', 'statictics', '班级成绩统计情况', 'hysro', '0', '/', '{\"parentMenuId\":1092}', 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18', NULL);
INSERT INTO `gen_table` VALUES (24, 'exam_grade_statistic', '年级数据统计情况', NULL, NULL, 'ExamGradeStatistic', 'crud', 'com.hysro.scores', 'scores', 'statistic', '年级数据统计情况', 'hysro', '0', '/', '{\"parentMenuId\":1092}', 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24', NULL);
INSERT INTO `gen_table` VALUES (25, 'exam_grade_summary', '年级总体情况', NULL, NULL, 'ExamGradeSummary', 'crud', 'com.hysro.scores', 'scores', 'summary', '年级总体情况', 'hysro', '0', '/', '{\"parentMenuId\":1092}', 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:22:33', NULL);
INSERT INTO `gen_table` VALUES (26, 'exam_student_scores', '学生分数情况', NULL, NULL, 'ExamStudentScores', 'crud', 'com.hysro.scores', 'scores', 'scores', '学生分数情况', 'hysro', '0', '/', '{\"parentMenuId\":1092}', 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 275 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (214, '22', 'exam_statistics_id', '统计记录ID', 'bigint(20) unsigned zerofill', 'Long', 'examStatisticsId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (215, '22', 'grade', '年级', 'varchar(20)', 'String', 'grade', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (216, '22', 'classes', '班级', 'varchar(20)', 'String', 'classes', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (217, '22', 'subject', '学科', 'varchar(20)', 'String', 'subject', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (218, '22', 'exam_numbers', '参加考试的人数', 'int(11)', 'Long', 'examNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (219, '22', 'full_socre_numbers', '满分人数', 'int(11)', 'Long', 'fullSocreNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (220, '22', 'excellent_numbers', '优秀人数(优秀-99)', 'int(11)', 'Long', 'excellentNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (221, '22', 'good_numbers', '良好人数(75-优秀)', 'int(11)', 'Long', 'goodNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (222, '22', 'qualified_numbers', '及格人数(60-75)', 'int(11)', 'Long', 'qualifiedNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (223, '22', 'unqualified_one_numbers', '不及格人数(55-59)', 'int(11)', 'Long', 'unqualifiedOneNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (224, '22', 'unqualified_two_numbers', '不及格人数(50-54)', 'int(11)', 'Long', 'unqualifiedTwoNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (225, '22', 'unqualified_three_numbers', '不及格人数(40-49)', 'int(11)', 'Long', 'unqualifiedThreeNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (226, '22', 'unqualified_four_numbers', '不及格人数(40分以下)', 'int(11)', 'Long', 'unqualifiedFourNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 13, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (227, '22', 'total_score', '全班总分', 'varchar(30)', 'String', 'totalScore', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 14, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (228, '22', 'average_score', '平均分', 'varchar(30)', 'String', 'averageScore', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 15, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (229, '22', 'qualified_percentage', '及格率', 'varchar(30)', 'String', 'qualifiedPercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 16, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (230, '22', 'excellent_percentage', '优秀率', 'varchar(30)', 'String', 'excellentPercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 17, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (231, '22', 'muitiple_score', '综合分（平均分*40%，及格率*30%，优秀率*30%）', 'varchar(30)', 'String', 'muitipleScore', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 18, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (232, '22', 'exam_id', '考试ID', 'bigint(20)', 'Long', 'examId', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 19, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (233, '22', 'muitiple_rank', '综合分排名', 'int(5)', 'Integer', 'muitipleRank', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 20, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (234, '22', 'average_rank', '平均分排名', 'int(5)', 'Integer', 'averageRank', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 21, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18');
INSERT INTO `gen_table_column` VALUES (239, '24', 'exam_grade_statistics_id', '年级数据ID', 'bigint(20) unsigned zerofill', 'Long', 'examGradeStatisticsId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (240, '24', 'exam_numbers', '考试人数', 'int(11)', 'Long', 'examNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (241, '24', 'triple_qualified_numbers', '三及格人数', 'int(11)', 'Long', 'tripleQualifiedNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (242, '24', 'triple_excellent_numbers', '三优秀人数', 'int(11)', 'Long', 'tripleExcellentNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (243, '24', 'triple_qualified_percentage', '三及格率', 'varchar(20)', 'String', 'tripleQualifiedPercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (244, '24', 'triple_excellent_percentage', '三优秀率', 'varchar(20)', 'String', 'tripleExcellentPercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (245, '24', 'muitiple_score', '综合分', 'varchar(20)', 'String', 'muitipleScore', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (246, '24', 'grade', '年级', 'varchar(20)', 'String', 'grade', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (247, '24', 'classes', '班级', 'varchar(20)', 'String', 'classes', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (248, '24', 'muitiple_rank', '综合分排名', 'int(5)', 'Integer', 'muitipleRank', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (249, '24', 'average_rank', '平均分排名', 'int(5)', 'Integer', 'averageRank', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (250, '24', 'exam_id', '考试ID', 'int(11)', 'Long', 'examId', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (251, '24', 'all_score', '总得分', 'varchar(20)', 'String', 'allScore', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 13, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (252, '24', 'all_score_percentage', '得分率', 'varchar(20)', 'String', 'allScorePercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 14, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24');
INSERT INTO `gen_table_column` VALUES (253, '25', 'exam_grade_summary_id', 'ID', 'bigint(20) unsigned zerofill', 'Long', 'examGradeSummaryId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:22:33');
INSERT INTO `gen_table_column` VALUES (254, '25', 'grade', '年级', 'varchar(20)', 'String', 'grade', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:22:33');
INSERT INTO `gen_table_column` VALUES (255, '25', 'subject', '学科', 'varchar(20)', 'String', 'subject', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:22:33');
INSERT INTO `gen_table_column` VALUES (256, '25', 'exam_total_numbers', '考试总人数', 'int(11)', 'Long', 'examTotalNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:22:33');
INSERT INTO `gen_table_column` VALUES (257, '25', 'grade_total_scores', '年级总分', 'varchar(20)', 'String', 'gradeTotalScores', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:22:33');
INSERT INTO `gen_table_column` VALUES (258, '25', 'grade_average_score', '年级均分', 'varchar(20)', 'String', 'gradeAverageScore', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:22:33');
INSERT INTO `gen_table_column` VALUES (259, '25', 'grade_qualified_percentage', '年级及格率', 'varchar(20)', 'String', 'gradeQualifiedPercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:22:33');
INSERT INTO `gen_table_column` VALUES (260, '25', 'grade_excellent_percentage', '年级优秀率', 'varchar(20)', 'String', 'gradeExcellentPercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:22:33');
INSERT INTO `gen_table_column` VALUES (261, '25', 'grade_unqualified_numbers', '不及格人数', 'int(11)', 'Long', 'gradeUnqualifiedNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:22:33');
INSERT INTO `gen_table_column` VALUES (262, '25', 'exam_id', '考试ID', 'bigint(20)', 'Long', 'examId', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:22:33');
INSERT INTO `gen_table_column` VALUES (263, '26', 'score_id', '分数ID', 'bigint(20) unsigned zerofill', 'Long', 'scoreId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49');
INSERT INTO `gen_table_column` VALUES (264, '26', 'grade', '年级', 'varchar(20)', 'String', 'grade', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49');
INSERT INTO `gen_table_column` VALUES (265, '26', 'classes', '班级', 'varchar(20)', 'String', 'classes', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49');
INSERT INTO `gen_table_column` VALUES (266, '26', 'exam_number', '考试号', 'varchar(20)', 'String', 'examNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49');
INSERT INTO `gen_table_column` VALUES (267, '26', 'chinese_score', '语文分数', 'decimal(7,1)', 'BigDecimal', 'chineseScore', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49');
INSERT INTO `gen_table_column` VALUES (268, '26', 'maths_score', '数学分数', 'decimal(7,1)', 'BigDecimal', 'mathsScore', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49');
INSERT INTO `gen_table_column` VALUES (269, '26', 'english_score', '英语分数', 'decimal(7,1)', 'BigDecimal', 'englishScore', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49');
INSERT INTO `gen_table_column` VALUES (270, '26', 'create_time', '录入时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '0', NULL, '0', NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49');
INSERT INTO `gen_table_column` VALUES (271, '26', 'create_by', '录入者', 'varchar(60)', 'String', 'createBy', '0', '0', NULL, '0', NULL, '1', NULL, 'EQ', 'input', '', 9, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49');
INSERT INTO `gen_table_column` VALUES (272, '26', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49');
INSERT INTO `gen_table_column` VALUES (273, '26', 'update_by', '更新者', 'varchar(60)', 'String', 'updateBy', '0', '0', NULL, '0', '0', '0', NULL, 'EQ', 'input', '', 11, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49');
INSERT INTO `gen_table_column` VALUES (274, '26', 'exam_id', '考试ID', 'bigint(20)', 'Long', 'examId', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-03-18 18:56:48', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-03-18 18:56:48', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-03-18 18:56:48', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-03-18 18:56:48', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-03-18 18:56:48', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-03-18 18:56:48', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '安家小学', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-03-18 19:39:19');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '小学部', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-03-18 19:39:37');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '中学部', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-03-18 18:56:45', 'admin', '2023-03-18 19:39:47');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '一年级', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-03-18 19:40:02');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '二年级', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-03-18 19:40:13');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '三年级', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-03-18 19:40:20');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '四年级', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-03-18 19:40:27');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '五年级', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-03-18 19:40:34');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '六年级', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-03-18 18:56:45', 'admin', '2023-03-18 19:41:26');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-03-18 18:56:45', '', NULL);
INSERT INTO `sys_dept` VALUES (200, 101, '0,100,101', '六年级', 6, '若依', '18888888888', 'ry@qq.com', '0', '2', 'admin', '2023-03-18 19:41:06', '', NULL);
INSERT INTO `sys_dept` VALUES (201, 101, '0,100,101', '六年级', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-24 18:19:29', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-03-18 18:56:48', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-03-18 18:56:49', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-03-18 18:56:49', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-03-18 18:56:49', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1200 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 9, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-03-18 18:56:47', 'admin', '2023-03-28 20:00:03', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 12, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2023-03-18 18:56:47', 'admin', '2023-03-23 17:12:54', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 10, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-03-18 18:56:47', 'admin', '2023-03-23 17:12:49', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-03-18 18:56:47', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-03-18 18:56:47', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-03-18 18:56:47', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-03-18 18:56:47', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-03-18 18:56:47', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-03-18 18:56:47', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-03-18 18:56:47', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-03-18 18:56:47', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-03-18 18:56:47', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-03-18 18:56:47', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-03-18 18:56:47', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-03-18 18:56:47', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-03-18 18:56:47', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-03-18 18:56:47', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-03-18 18:56:47', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-03-18 18:56:47', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-03-18 18:56:47', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-03-18 18:56:47', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-03-18 18:56:47', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-03-18 18:56:47', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-03-18 18:56:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '考试', 0, 4, 'examination', NULL, NULL, 1, 0, 'M', '0', '0', '', 'education', 'admin', '2023-03-23 17:12:37', 'admin', '2023-03-23 18:35:46', '');
INSERT INTO `sys_menu` VALUES (1062, '成绩', 0, 5, 'scores', NULL, NULL, 1, 0, 'M', '0', '0', '', 'excel', 'admin', '2023-03-23 17:14:59', 'admin', '2023-03-23 18:35:53', '');
INSERT INTO `sys_menu` VALUES (1163, '考试名称', 1061, 1, 'exams', 'scores/exams/index', NULL, 1, 0, 'C', '0', '0', 'examination:exams:list', '#', 'admin', '2023-04-04 17:55:34', '', NULL, '考试名称菜单');
INSERT INTO `sys_menu` VALUES (1164, '考试名称查询', 1163, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'examination:exams:query', '#', 'admin', '2023-04-04 17:55:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1165, '考试名称新增', 1163, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'examination:exams:add', '#', 'admin', '2023-04-04 17:55:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1166, '考试名称修改', 1163, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'examination:exams:edit', '#', 'admin', '2023-04-04 17:55:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1167, '考试名称删除', 1163, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'examination:exams:remove', '#', 'admin', '2023-04-04 17:55:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1168, '考试名称导出', 1163, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'examination:exams:export', '#', 'admin', '2023-04-04 17:55:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1169, '优秀分数线', 1062, 1, 'line', 'scores/line/index', NULL, 1, 0, 'C', '0', '0', 'scores:line:list', '#', 'admin', '2023-04-04 17:57:13', '', NULL, '优秀分数线菜单');
INSERT INTO `sys_menu` VALUES (1170, '优秀分数线查询', 1169, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:line:query', '#', 'admin', '2023-04-04 17:57:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1171, '优秀分数线新增', 1169, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:line:add', '#', 'admin', '2023-04-04 17:57:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1172, '优秀分数线修改', 1169, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:line:edit', '#', 'admin', '2023-04-04 17:57:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1173, '优秀分数线删除', 1169, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:line:remove', '#', 'admin', '2023-04-04 17:57:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1174, '优秀分数线导出', 1169, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:line:export', '#', 'admin', '2023-04-04 17:57:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1175, '学生分数情况', 1062, 1, 'scores', 'scores/scores/index', NULL, 1, 0, 'C', '0', '0', 'scores:scores:list', '#', 'admin', '2023-04-04 18:21:00', '', NULL, '学生分数情况菜单');
INSERT INTO `sys_menu` VALUES (1176, '学生分数查询', 1175, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:query', '#', 'admin', '2023-04-04 18:21:00', 'admin', '2023-04-04 19:27:07', '');
INSERT INTO `sys_menu` VALUES (1177, '学生分数新增', 1175, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:add', '#', 'admin', '2023-04-04 18:21:00', 'admin', '2023-04-04 19:27:02', '');
INSERT INTO `sys_menu` VALUES (1178, '学生分数修改', 1175, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:edit', '#', 'admin', '2023-04-04 18:21:00', 'admin', '2023-04-04 19:26:56', '');
INSERT INTO `sys_menu` VALUES (1179, '学生分数删除', 1175, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:remove', '#', 'admin', '2023-04-04 18:21:00', 'admin', '2023-04-04 19:26:51', '');
INSERT INTO `sys_menu` VALUES (1180, '学生分数导出', 1175, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:export', '#', 'admin', '2023-04-04 18:21:00', 'admin', '2023-04-04 19:26:45', '');
INSERT INTO `sys_menu` VALUES (1181, '年级总体情况', 1062, 1, 'summary', 'scores/summary/index', NULL, 1, 0, 'C', '0', '0', 'scores:summary:list', '#', 'admin', '2023-04-04 18:22:45', '', NULL, '年级总体情况菜单');
INSERT INTO `sys_menu` VALUES (1182, '年级总体情况查询', 1181, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:query', '#', 'admin', '2023-04-04 18:22:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1183, '年级总体情况新增', 1181, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:add', '#', 'admin', '2023-04-04 18:22:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1184, '年级总体情况修改', 1181, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:edit', '#', 'admin', '2023-04-04 18:22:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1185, '年级总体情况删除', 1181, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:remove', '#', 'admin', '2023-04-04 18:22:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1186, '年级总体情况导出', 1181, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:export', '#', 'admin', '2023-04-04 18:22:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1187, '年级数据统计情况', 1062, 1, 'statistic', 'scores/statistic/index', NULL, 1, 0, 'C', '0', '0', 'scores:statistic:list', '#', 'admin', '2023-04-04 18:24:37', '', NULL, '年级数据统计情况菜单');
INSERT INTO `sys_menu` VALUES (1188, '年级数据统计情况查询', 1187, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statistic:query', '#', 'admin', '2023-04-04 18:24:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1189, '年级数据统计情况新增', 1187, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statistic:add', '#', 'admin', '2023-04-04 18:24:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1190, '年级数据统计情况修改', 1187, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statistic:edit', '#', 'admin', '2023-04-04 18:24:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1191, '年级数据统计情况删除', 1187, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statistic:remove', '#', 'admin', '2023-04-04 18:24:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1192, '年级数据统计情况导出', 1187, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statistic:export', '#', 'admin', '2023-04-04 18:24:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1193, '班级成绩统计情况', 1062, 1, 'statictics', 'scores/statictics/index', NULL, 1, 0, 'C', '0', '0', 'scores:statictics:list', '#', 'admin', '2023-04-04 18:26:28', '', NULL, '班级成绩统计情况菜单');
INSERT INTO `sys_menu` VALUES (1194, '班级成绩统计情况查询', 1193, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statictics:query', '#', 'admin', '2023-04-04 18:26:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1195, '班级成绩统计情况新增', 1193, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statictics:add', '#', 'admin', '2023-04-04 18:26:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1196, '班级成绩统计情况修改', 1193, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statictics:edit', '#', 'admin', '2023-04-04 18:26:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1197, '班级成绩统计情况删除', 1193, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statictics:remove', '#', 'admin', '2023-04-04 18:26:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1198, '班级成绩统计情况导出', 1193, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statictics:export', '#', 'admin', '2023-04-04 18:26:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1199, '学生分数导入', 1175, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'scores:scores:import', '#', 'admin', '2023-04-04 19:26:37', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (3, '安家小学成绩管理系统启用啦', '2', 0x3C703EE595A6E595A6E595A6E595A6E595A6E595A6E595A63C2F703E, '0', 'admin', '2023-03-23 20:11:44', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-03-18 18:56:46', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'jw', '教务主任', 2, '0', 'admin', '2023-03-18 18:56:46', 'admin', '2023-03-23 20:09:48', '');
INSERT INTO `sys_post` VALUES (5, 'njzz', '年级组长', 3, '0', 'admin', '2023-03-23 20:10:06', '', NULL, NULL);
INSERT INTO `sys_post` VALUES (6, 'jyzz', '教研组长', 4, '0', 'admin', '2023-03-23 20:10:24', '', NULL, NULL);
INSERT INTO `sys_post` VALUES (7, 'js', '普通老师', 10, '0', 'admin', '2023-03-23 20:11:00', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-03-18 18:56:46', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 5, '2', 1, 1, '0', '0', 'admin', '2023-03-18 18:56:46', 'admin', '2023-04-04 17:35:08', '普通角色');
INSERT INTO `sys_role` VALUES (3, '管理员', 'premier', 2, '1', 1, 1, '0', '0', 'admin', '2023-03-28 20:25:20', 'admin', '2023-04-04 17:35:17', NULL);
INSERT INTO `sys_role` VALUES (4, '行政', 'administration', 3, '1', 1, 1, '0', '0', 'admin', '2023-03-28 20:51:41', 'admin', '2023-04-04 17:35:13', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 103);
INSERT INTO `sys_role_dept` VALUES (2, 104);
INSERT INTO `sys_role_dept` VALUES (2, 105);
INSERT INTO `sys_role_dept` VALUES (2, 106);
INSERT INTO `sys_role_dept` VALUES (2, 107);
INSERT INTO `sys_role_dept` VALUES (2, 201);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 2);
INSERT INTO `sys_role_menu` VALUES (3, 100);
INSERT INTO `sys_role_menu` VALUES (3, 101);
INSERT INTO `sys_role_menu` VALUES (3, 102);
INSERT INTO `sys_role_menu` VALUES (3, 103);
INSERT INTO `sys_role_menu` VALUES (3, 104);
INSERT INTO `sys_role_menu` VALUES (3, 105);
INSERT INTO `sys_role_menu` VALUES (3, 106);
INSERT INTO `sys_role_menu` VALUES (3, 107);
INSERT INTO `sys_role_menu` VALUES (3, 108);
INSERT INTO `sys_role_menu` VALUES (3, 109);
INSERT INTO `sys_role_menu` VALUES (3, 110);
INSERT INTO `sys_role_menu` VALUES (3, 111);
INSERT INTO `sys_role_menu` VALUES (3, 112);
INSERT INTO `sys_role_menu` VALUES (3, 113);
INSERT INTO `sys_role_menu` VALUES (3, 114);
INSERT INTO `sys_role_menu` VALUES (3, 500);
INSERT INTO `sys_role_menu` VALUES (3, 501);
INSERT INTO `sys_role_menu` VALUES (3, 1000);
INSERT INTO `sys_role_menu` VALUES (3, 1001);
INSERT INTO `sys_role_menu` VALUES (3, 1002);
INSERT INTO `sys_role_menu` VALUES (3, 1003);
INSERT INTO `sys_role_menu` VALUES (3, 1004);
INSERT INTO `sys_role_menu` VALUES (3, 1005);
INSERT INTO `sys_role_menu` VALUES (3, 1006);
INSERT INTO `sys_role_menu` VALUES (3, 1007);
INSERT INTO `sys_role_menu` VALUES (3, 1008);
INSERT INTO `sys_role_menu` VALUES (3, 1009);
INSERT INTO `sys_role_menu` VALUES (3, 1010);
INSERT INTO `sys_role_menu` VALUES (3, 1011);
INSERT INTO `sys_role_menu` VALUES (3, 1012);
INSERT INTO `sys_role_menu` VALUES (3, 1013);
INSERT INTO `sys_role_menu` VALUES (3, 1014);
INSERT INTO `sys_role_menu` VALUES (3, 1015);
INSERT INTO `sys_role_menu` VALUES (3, 1016);
INSERT INTO `sys_role_menu` VALUES (3, 1017);
INSERT INTO `sys_role_menu` VALUES (3, 1018);
INSERT INTO `sys_role_menu` VALUES (3, 1019);
INSERT INTO `sys_role_menu` VALUES (3, 1020);
INSERT INTO `sys_role_menu` VALUES (3, 1021);
INSERT INTO `sys_role_menu` VALUES (3, 1022);
INSERT INTO `sys_role_menu` VALUES (3, 1023);
INSERT INTO `sys_role_menu` VALUES (3, 1024);
INSERT INTO `sys_role_menu` VALUES (3, 1025);
INSERT INTO `sys_role_menu` VALUES (3, 1026);
INSERT INTO `sys_role_menu` VALUES (3, 1027);
INSERT INTO `sys_role_menu` VALUES (3, 1028);
INSERT INTO `sys_role_menu` VALUES (3, 1029);
INSERT INTO `sys_role_menu` VALUES (3, 1030);
INSERT INTO `sys_role_menu` VALUES (3, 1031);
INSERT INTO `sys_role_menu` VALUES (3, 1032);
INSERT INTO `sys_role_menu` VALUES (3, 1033);
INSERT INTO `sys_role_menu` VALUES (3, 1034);
INSERT INTO `sys_role_menu` VALUES (3, 1035);
INSERT INTO `sys_role_menu` VALUES (3, 1036);
INSERT INTO `sys_role_menu` VALUES (3, 1037);
INSERT INTO `sys_role_menu` VALUES (3, 1038);
INSERT INTO `sys_role_menu` VALUES (3, 1039);
INSERT INTO `sys_role_menu` VALUES (3, 1040);
INSERT INTO `sys_role_menu` VALUES (3, 1041);
INSERT INTO `sys_role_menu` VALUES (3, 1042);
INSERT INTO `sys_role_menu` VALUES (3, 1043);
INSERT INTO `sys_role_menu` VALUES (3, 1044);
INSERT INTO `sys_role_menu` VALUES (3, 1045);
INSERT INTO `sys_role_menu` VALUES (3, 1046);
INSERT INTO `sys_role_menu` VALUES (3, 1047);
INSERT INTO `sys_role_menu` VALUES (3, 1048);
INSERT INTO `sys_role_menu` VALUES (3, 1049);
INSERT INTO `sys_role_menu` VALUES (3, 1050);
INSERT INTO `sys_role_menu` VALUES (3, 1051);
INSERT INTO `sys_role_menu` VALUES (3, 1052);
INSERT INTO `sys_role_menu` VALUES (3, 1053);
INSERT INTO `sys_role_menu` VALUES (3, 1054);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '若依', '00', 'ry@163.com', '15888888888', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-04-09 15:48:16', 'admin', '2023-03-18 18:56:46', '', '2023-04-09 15:48:16', '管理员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);

SET FOREIGN_KEY_CHECKS = 1;
