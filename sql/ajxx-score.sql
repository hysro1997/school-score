/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50741
 Source Host           : localhost:3306
 Source Schema         : ajxx-score

 Target Server Type    : MySQL
 Target Server Version : 50741
 File Encoding         : 65001

 Date: 01/04/2023 15:18:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exam_class_statictics
-- ----------------------------
DROP TABLE IF EXISTS `exam_class_statictics`;
CREATE TABLE `exam_class_statictics`  (
  `exam_statistics_id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '统计记录ID',
  `grade` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `classes` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `subject` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学科',
  `exam_numbers` int(11) NULL DEFAULT NULL COMMENT '参加考试的人数',
  `full_socre_numbers` int(11) NULL DEFAULT NULL COMMENT '满分人数',
  `excellent_numbers` int(11) NULL DEFAULT NULL COMMENT '优秀人数',
  `good_numbers` int(11) NULL DEFAULT NULL COMMENT '良好人数',
  `qualified_numbers` int(11) NULL DEFAULT NULL COMMENT '及格人数',
  `unqualified_one_numbers` int(11) NULL DEFAULT NULL COMMENT '不及格人数(55-59)',
  `unqualified_two_numbers` int(11) NULL DEFAULT NULL COMMENT '不及格人数(50-54)',
  `unqualified_three_numbers` int(11) NULL DEFAULT NULL COMMENT '不及格人数(40-49)',
  `unqualified_four_numbers` int(11) NULL DEFAULT NULL COMMENT '不及格人数(40分以下)',
  `total_score` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '全班总分',
  `average_score` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '平均分',
  `qualified_percentage` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '及格率',
  `excellent_percentage` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优秀率',
  `mutiple_score` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '综合分（平均分*40%，及格率*30%，优秀率*30%）',
  `exam_id` bigint(20) NULL DEFAULT NULL COMMENT '考试ID',
  `rate` int(5) NULL DEFAULT NULL COMMENT '排名',
  PRIMARY KEY (`exam_statistics_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 486 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级成绩统计情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_class_statictics
-- ----------------------------
INSERT INTO `exam_class_statictics` VALUES (00000000000000000457, '三年级', '1班', '语文', 50, 0, 38, 9, 2, 0, 0, 0, 1, '4291.00', '85.82', '98.00', '76.00', '86.53', 18, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000458, '三年级', '1班', '数学', 50, 0, 25, 17, 7, 0, 0, 0, 1, '4284.00', '85.68', '98.00', '50.00', '78.67', 18, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000459, '三年级', '1班', '英语', 50, 2, 42, 5, 0, 0, 0, 0, 1, '4654.00', '93.08', '98.00', '88.00', '93.03', 18, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000460, '三年级', '2班', '语文', 50, 0, 31, 13, 5, 0, 1, 0, 0, '4275.00', '85.50', '98.00', '62.00', '82.20', 18, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000461, '三年级', '2班', '数学', 49, 1, 24, 16, 5, 2, 0, 0, 1, '4170.00', '85.10', '93.88', '51.02', '77.51', 18, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000462, '三年级', '2班', '英语', 50, 1, 35, 11, 2, 0, 0, 0, 1, '4486.00', '89.72', '98.00', '72.00', '86.89', 18, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000463, '三年级', '3班', '语文', 49, 0, 24, 9, 12, 0, 0, 2, 2, '3819.00', '77.94', '91.84', '48.98', '73.42', 18, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000464, '三年级', '3班', '数学', 49, 2, 21, 14, 9, 0, 1, 2, 0, '4122.00', '84.12', '93.88', '46.94', '75.89', 18, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000465, '三年级', '3班', '英语', 49, 4, 34, 10, 1, 0, 0, 0, 0, '4533.00', '92.51', '100.00', '77.55', '90.27', 18, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000483, '二年级', '4班', '语文', 44, 0, 0, 21, 15, 1, 2, 4, 1, '3109.00', '70.66', '81.82', '0.00', '52.81', 20, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000484, '二年级', '4班', '数学', 44, 0, 1, 19, 12, 2, 1, 5, 4, '2902.00', '65.95', '72.73', '2.27', '48.88', 20, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000485, '四年级', '3班', '数学', 1, 0, 1, 0, 0, 0, 0, 0, 0, '91.00', '91.00', '100.00', '100.00', '96.40', 20, 1);

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
  `triple_qualified_percentage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '三及格率',
  `triple_excellent_percentage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '三优秀率',
  `muitiple_score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '综合分',
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `classes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `rate` int(5) NULL DEFAULT NULL COMMENT '排名',
  `exam_id` int(11) NULL DEFAULT NULL COMMENT '考试ID',
  `all_score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总得分',
  `all_score_percentage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '得分率',
  PRIMARY KEY (`exam_grade_statistics_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '年级数据统计情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_grade_statistic
-- ----------------------------
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000046, 50, 49, 23, '98.00', '46.00', '78.48', '三年级', '1班', 1, 18, '13229.0', '88.19');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000047, 50, 46, 22, '92.00', '44.00', '75.52', '三年级', '2班', 2, 18, '12931.0', '86.79');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000048, 49, 45, 20, '91.84', '40.82', '73.74', '三年级', '3班', 3, 18, '12474.0', '84.86');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000055, 44, 29, 0, '65.91', '0.00', '47.10', '二年级', '4班', 1, 20, '6011.0', '68.31');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000056, 1, 0, 0, '0.00', '0.00', '36.40', '四年级', '3班', 1, 20, '91.0', '91.00');

-- ----------------------------
-- Table structure for exam_grade_summary
-- ----------------------------
DROP TABLE IF EXISTS `exam_grade_summary`;
CREATE TABLE `exam_grade_summary`  (
  `exam_grade_summary_id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学科',
  `exam_total_numbers` int(11) NULL DEFAULT NULL COMMENT '考试总人数',
  `grade_total_scores` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级总分',
  `grade_average_score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级均分',
  `grade_qualified_percentage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级及格率',
  `grade_excellent_percentage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级优秀率',
  `grade_unqualified_numbers` int(11) NULL DEFAULT NULL COMMENT '不及格人数',
  `exam_id` bigint(20) NULL DEFAULT NULL COMMENT '考试ID',
  PRIMARY KEY (`exam_grade_summary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '年级总体情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_grade_summary
-- ----------------------------
INSERT INTO `exam_grade_summary` VALUES (00000000000000000031, '三年级', '语文', 149, '12385.00', '83.12', '95.97%', '62.42%', 6, 18);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000032, '三年级', '数学', 149, '12576.00', '84.97', '94.63%', '48.99%', 7, 18);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000033, '三年级', '英语', 149, '13673.00', '91.77', '98.66%', '79.19%', 2, 18);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000045, '二年级', '语文', 44, '3109.00', '70.66', '81.82%', '0.00%', 8, 20);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000046, '二年级', '数学', 44, '2902.00', '65.95', '72.73%', '2.27%', 12, 20);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000047, '四年级', '数学', 1, '91.00', '91.00', '100.00%', '100.00%', 0, 20);

-- ----------------------------
-- Table structure for exam_student_scores
-- ----------------------------
DROP TABLE IF EXISTS `exam_student_scores`;
CREATE TABLE `exam_student_scores`  (
  `score_id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '分数ID',
  `grade` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `classes` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `exam_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考试号',
  `subject` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学科',
  `score` decimal(7, 2) NULL DEFAULT NULL COMMENT '分数',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '录入时间',
  `create_by` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '录入者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `exam_id` bigint(20) NULL DEFAULT NULL COMMENT '考试ID',
  PRIMARY KEY (`score_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1137 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生分数情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_student_scores
-- ----------------------------
INSERT INTO `exam_student_scores` VALUES (00000000000000000601, '三年级', '1班', '101', '语文', 85.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000602, '三年级', '1班', '102', '语文', 86.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000603, '三年级', '1班', '103', '语文', 78.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000604, '三年级', '1班', '104', '语文', 85.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000605, '三年级', '1班', '105', '语文', 87.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000606, '三年级', '1班', '106', '语文', 90.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000607, '三年级', '1班', '107', '语文', 87.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000608, '三年级', '1班', '108', '语文', 87.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000609, '三年级', '1班', '109', '语文', 94.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000610, '三年级', '1班', '110', '语文', 89.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000611, '三年级', '1班', '111', '语文', 91.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000612, '三年级', '1班', '112', '语文', 85.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000613, '三年级', '1班', '113', '语文', 84.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000614, '三年级', '1班', '114', '语文', 87.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000615, '三年级', '1班', '115', '语文', 92.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000616, '三年级', '1班', '116', '语文', 88.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000617, '三年级', '1班', '117', '语文', 86.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000618, '三年级', '1班', '118', '语文', 85.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000619, '三年级', '1班', '119', '语文', 90.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000620, '三年级', '1班', '120', '语文', 93.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000621, '三年级', '1班', '121', '语文', 82.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000622, '三年级', '1班', '122', '语文', 86.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000623, '三年级', '1班', '123', '语文', 86.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000624, '三年级', '1班', '124', '语文', 90.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000625, '三年级', '1班', '125', '语文', 0.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000626, '三年级', '1班', '126', '语文', 83.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000627, '三年级', '1班', '127', '语文', 88.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000628, '三年级', '1班', '128', '语文', 78.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000629, '三年级', '1班', '129', '语文', 94.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000630, '三年级', '1班', '130', '语文', 89.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000631, '三年级', '1班', '131', '语文', 90.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000632, '三年级', '1班', '132', '语文', 93.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000633, '三年级', '1班', '133', '语文', 84.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000634, '三年级', '1班', '134', '语文', 97.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000635, '三年级', '1班', '135', '语文', 93.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000636, '三年级', '1班', '136', '语文', 97.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000637, '三年级', '1班', '137', '语文', 79.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000638, '三年级', '1班', '138', '语文', 92.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000639, '三年级', '1班', '139', '语文', 93.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000640, '三年级', '1班', '140', '语文', 92.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000641, '三年级', '1班', '141', '语文', 90.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000642, '三年级', '1班', '142', '语文', 98.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000643, '三年级', '1班', '143', '语文', 70.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000644, '三年级', '1班', '144', '语文', 73.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000645, '三年级', '1班', '145', '语文', 92.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000646, '三年级', '1班', '146', '语文', 91.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000647, '三年级', '1班', '147', '语文', 80.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000648, '三年级', '1班', '148', '语文', 94.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000649, '三年级', '1班', '149', '语文', 76.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000650, '三年级', '1班', '150', '语文', 92.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000651, '三年级', '1班', '101', '数学', 90.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000652, '三年级', '1班', '102', '数学', 83.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000653, '三年级', '1班', '103', '数学', 85.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000654, '三年级', '1班', '104', '数学', 92.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000655, '三年级', '1班', '105', '数学', 89.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000656, '三年级', '1班', '106', '数学', 93.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000657, '三年级', '1班', '107', '数学', 80.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000658, '三年级', '1班', '108', '数学', 95.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000659, '三年级', '1班', '109', '数学', 69.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000660, '三年级', '1班', '110', '数学', 94.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000661, '三年级', '1班', '111', '数学', 80.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000662, '三年级', '1班', '112', '数学', 95.00, '2023-03-27 21:26:30', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000663, '三年级', '1班', '113', '数学', 87.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000664, '三年级', '1班', '114', '数学', 90.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000665, '三年级', '1班', '115', '数学', 97.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000666, '三年级', '1班', '116', '数学', 73.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000667, '三年级', '1班', '117', '数学', 92.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000668, '三年级', '1班', '118', '数学', 78.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000669, '三年级', '1班', '119', '数学', 98.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000670, '三年级', '1班', '120', '数学', 89.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000671, '三年级', '1班', '121', '数学', 74.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000672, '三年级', '1班', '122', '数学', 79.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000673, '三年级', '1班', '123', '数学', 93.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000674, '三年级', '1班', '124', '数学', 96.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000675, '三年级', '1班', '125', '数学', 0.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000676, '三年级', '1班', '126', '数学', 73.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000677, '三年级', '1班', '127', '数学', 87.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000678, '三年级', '1班', '128', '数学', 80.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000679, '三年级', '1班', '129', '数学', 87.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000680, '三年级', '1班', '130', '数学', 96.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000681, '三年级', '1班', '131', '数学', 94.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000682, '三年级', '1班', '132', '数学', 95.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000683, '三年级', '1班', '133', '数学', 90.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000684, '三年级', '1班', '134', '数学', 91.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000685, '三年级', '1班', '135', '数学', 96.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000686, '三年级', '1班', '136', '数学', 96.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000687, '三年级', '1班', '137', '数学', 71.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000688, '三年级', '1班', '138', '数学', 74.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000689, '三年级', '1班', '139', '数学', 97.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000690, '三年级', '1班', '140', '数学', 91.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000691, '三年级', '1班', '141', '数学', 92.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000692, '三年级', '1班', '142', '数学', 98.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000693, '三年级', '1班', '143', '数学', 83.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000694, '三年级', '1班', '144', '数学', 72.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000695, '三年级', '1班', '145', '数学', 95.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000696, '三年级', '1班', '146', '数学', 98.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000697, '三年级', '1班', '147', '数学', 79.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000698, '三年级', '1班', '148', '数学', 88.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000699, '三年级', '1班', '149', '数学', 83.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000700, '三年级', '1班', '150', '数学', 87.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000701, '三年级', '1班', '101', '英语', 98.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000702, '三年级', '1班', '102', '英语', 92.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000703, '三年级', '1班', '103', '英语', 89.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000704, '三年级', '1班', '104', '英语', 97.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000705, '三年级', '1班', '105', '英语', 97.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000706, '三年级', '1班', '106', '英语', 100.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000707, '三年级', '1班', '107', '英语', 90.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000708, '三年级', '1班', '108', '英语', 98.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000709, '三年级', '1班', '109', '英语', 94.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000710, '三年级', '1班', '110', '英语', 95.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000711, '三年级', '1班', '111', '英语', 99.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000712, '三年级', '1班', '112', '英语', 86.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000713, '三年级', '1班', '113', '英语', 98.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000714, '三年级', '1班', '114', '英语', 96.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000715, '三年级', '1班', '115', '英语', 98.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000716, '三年级', '1班', '116', '英语', 93.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000717, '三年级', '1班', '117', '英语', 95.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000718, '三年级', '1班', '118', '英语', 95.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000719, '三年级', '1班', '119', '英语', 95.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000720, '三年级', '1班', '120', '英语', 97.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000721, '三年级', '1班', '121', '英语', 90.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000722, '三年级', '1班', '122', '英语', 94.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000723, '三年级', '1班', '123', '英语', 93.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000724, '三年级', '1班', '124', '英语', 96.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000725, '三年级', '1班', '125', '英语', 29.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000726, '三年级', '1班', '126', '英语', 93.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000727, '三年级', '1班', '127', '英语', 97.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000728, '三年级', '1班', '128', '英语', 97.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000729, '三年级', '1班', '129', '英语', 92.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000730, '三年级', '1班', '130', '英语', 95.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000731, '三年级', '1班', '131', '英语', 94.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000732, '三年级', '1班', '132', '英语', 99.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000733, '三年级', '1班', '133', '英语', 95.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000734, '三年级', '1班', '134', '英语', 95.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000735, '三年级', '1班', '135', '英语', 100.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000736, '三年级', '1班', '136', '英语', 99.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000737, '三年级', '1班', '137', '英语', 86.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000738, '三年级', '1班', '138', '英语', 97.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000739, '三年级', '1班', '139', '英语', 91.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000740, '三年级', '1班', '140', '英语', 99.00, '2023-03-27 21:26:31', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000741, '三年级', '1班', '141', '英语', 96.00, '2023-03-27 21:26:32', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000742, '三年级', '1班', '142', '英语', 95.00, '2023-03-27 21:26:32', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000743, '三年级', '1班', '143', '英语', 92.00, '2023-03-27 21:26:32', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000744, '三年级', '1班', '144', '英语', 87.00, '2023-03-27 21:26:32', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000745, '三年级', '1班', '145', '英语', 94.00, '2023-03-27 21:26:32', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000746, '三年级', '1班', '146', '英语', 95.00, '2023-03-27 21:26:32', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000747, '三年级', '1班', '147', '英语', 90.00, '2023-03-27 21:26:32', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000748, '三年级', '1班', '148', '英语', 97.00, '2023-03-27 21:26:32', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000749, '三年级', '1班', '149', '英语', 79.00, '2023-03-27 21:26:32', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000750, '三年级', '1班', '150', '英语', 96.00, '2023-03-27 21:26:32', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000751, '三年级', '2班', '201', '语文', 77.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000752, '三年级', '2班', '202', '语文', 71.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000753, '三年级', '2班', '203', '语文', 75.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000754, '三年级', '2班', '204', '语文', 96.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000755, '三年级', '2班', '205', '语文', 88.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000756, '三年级', '2班', '206', '语文', 72.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000757, '三年级', '2班', '207', '语文', 92.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000758, '三年级', '2班', '208', '语文', 84.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000759, '三年级', '2班', '209', '语文', 95.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000760, '三年级', '2班', '210', '语文', 77.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000761, '三年级', '2班', '211', '语文', 90.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000762, '三年级', '2班', '212', '语文', 90.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000763, '三年级', '2班', '213', '语文', 80.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000764, '三年级', '2班', '214', '语文', 89.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000765, '三年级', '2班', '215', '语文', 80.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000766, '三年级', '2班', '216', '语文', 91.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000767, '三年级', '2班', '217', '语文', 96.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000768, '三年级', '2班', '218', '语文', 92.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000769, '三年级', '2班', '219', '语文', 91.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000770, '三年级', '2班', '220', '语文', 94.00, '2023-03-27 21:26:41', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000771, '三年级', '2班', '221', '语文', 96.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000772, '三年级', '2班', '222', '语文', 93.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000773, '三年级', '2班', '223', '语文', 95.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000774, '三年级', '2班', '224', '语文', 79.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000775, '三年级', '2班', '225', '语文', 84.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000776, '三年级', '2班', '226', '语文', 83.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000777, '三年级', '2班', '227', '语文', 87.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000778, '三年级', '2班', '228', '语文', 88.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000779, '三年级', '2班', '229', '语文', 82.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000780, '三年级', '2班', '230', '语文', 90.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000781, '三年级', '2班', '231', '语文', 91.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000782, '三年级', '2班', '232', '语文', 87.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000783, '三年级', '2班', '233', '语文', 85.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000784, '三年级', '2班', '234', '语文', 91.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000785, '三年级', '2班', '235', '语文', 93.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000786, '三年级', '2班', '236', '语文', 70.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000787, '三年级', '2班', '237', '语文', 83.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000788, '三年级', '2班', '238', '语文', 90.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000789, '三年级', '2班', '239', '语文', 92.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000790, '三年级', '2班', '240', '语文', 89.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000791, '三年级', '2班', '241', '语文', 89.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000792, '三年级', '2班', '242', '语文', 72.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000793, '三年级', '2班', '243', '语文', 91.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000794, '三年级', '2班', '244', '语文', 95.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000795, '三年级', '2班', '245', '语文', 94.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000796, '三年级', '2班', '246', '语文', 84.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000797, '三年级', '2班', '247', '语文', 82.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000798, '三年级', '2班', '248', '语文', 85.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000799, '三年级', '2班', '249', '语文', 61.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000800, '三年级', '2班', '250', '语文', 54.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000801, '三年级', '2班', '201', '数学', 80.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000802, '三年级', '2班', '202', '数学', 57.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000803, '三年级', '2班', '203', '数学', 57.00, '2023-03-27 21:26:42', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000804, '三年级', '2班', '204', '数学', 95.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000805, '三年级', '2班', '205', '数学', 97.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000806, '三年级', '2班', '206', '数学', NULL, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000807, '三年级', '2班', '207', '数学', 90.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000808, '三年级', '2班', '208', '数学', 96.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000809, '三年级', '2班', '209', '数学', 97.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000810, '三年级', '2班', '210', '数学', 88.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000811, '三年级', '2班', '211', '数学', 100.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000812, '三年级', '2班', '212', '数学', 68.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000813, '三年级', '2班', '213', '数学', 89.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000814, '三年级', '2班', '214', '数学', 94.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000815, '三年级', '2班', '215', '数学', 74.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000816, '三年级', '2班', '216', '数学', 94.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000817, '三年级', '2班', '217', '数学', 97.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000818, '三年级', '2班', '218', '数学', 97.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000819, '三年级', '2班', '219', '数学', 79.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000820, '三年级', '2班', '220', '数学', 90.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000821, '三年级', '2班', '221', '数学', 86.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000822, '三年级', '2班', '222', '数学', 85.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000823, '三年级', '2班', '223', '数学', 90.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000824, '三年级', '2班', '224', '数学', 94.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000825, '三年级', '2班', '225', '数学', 78.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000826, '三年级', '2班', '226', '数学', 63.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000827, '三年级', '2班', '227', '数学', 79.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000828, '三年级', '2班', '228', '数学', 86.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000829, '三年级', '2班', '229', '数学', 80.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000830, '三年级', '2班', '230', '数学', 94.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000831, '三年级', '2班', '231', '数学', 99.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000832, '三年级', '2班', '232', '数学', 92.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000833, '三年级', '2班', '233', '数学', 89.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000834, '三年级', '2班', '234', '数学', 94.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000835, '三年级', '2班', '235', '数学', 84.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000836, '三年级', '2班', '236', '数学', 76.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000837, '三年级', '2班', '237', '数学', 84.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000838, '三年级', '2班', '238', '数学', 96.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000839, '三年级', '2班', '239', '数学', 92.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000840, '三年级', '2班', '240', '数学', 94.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000841, '三年级', '2班', '241', '数学', 96.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000842, '三年级', '2班', '242', '数学', 72.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000843, '三年级', '2班', '243', '数学', 94.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000844, '三年级', '2班', '244', '数学', 97.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000845, '三年级', '2班', '245', '数学', 99.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000846, '三年级', '2班', '246', '数学', 80.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000847, '三年级', '2班', '247', '数学', 75.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000848, '三年级', '2班', '248', '数学', 95.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000849, '三年级', '2班', '249', '数学', 65.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000850, '三年级', '2班', '250', '数学', 23.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000851, '三年级', '2班', '201', '英语', 87.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000852, '三年级', '2班', '202', '英语', 60.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000853, '三年级', '2班', '203', '英语', 83.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000854, '三年级', '2班', '204', '英语', 97.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000855, '三年级', '2班', '205', '英语', 94.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000856, '三年级', '2班', '206', '英语', 85.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000857, '三年级', '2班', '207', '英语', 92.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000858, '三年级', '2班', '208', '英语', 94.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000859, '三年级', '2班', '209', '英语', 95.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000860, '三年级', '2班', '210', '英语', 79.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000861, '三年级', '2班', '211', '英语', 90.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000862, '三年级', '2班', '212', '英语', 96.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000863, '三年级', '2班', '213', '英语', 77.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000864, '三年级', '2班', '214', '英语', 99.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000865, '三年级', '2班', '215', '英语', 90.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000866, '三年级', '2班', '216', '英语', 91.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000867, '三年级', '2班', '217', '英语', 99.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000868, '三年级', '2班', '218', '英语', 95.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000869, '三年级', '2班', '219', '英语', 93.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000870, '三年级', '2班', '220', '英语', 96.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000871, '三年级', '2班', '221', '英语', 96.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000872, '三年级', '2班', '222', '英语', 97.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000873, '三年级', '2班', '223', '英语', 91.00, '2023-03-27 21:26:43', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000874, '三年级', '2班', '224', '英语', 93.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000875, '三年级', '2班', '225', '英语', 75.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000876, '三年级', '2班', '226', '英语', 92.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000877, '三年级', '2班', '227', '英语', 87.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000878, '三年级', '2班', '228', '英语', 95.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000879, '三年级', '2班', '229', '英语', 90.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000880, '三年级', '2班', '230', '英语', 97.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000881, '三年级', '2班', '231', '英语', 96.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000882, '三年级', '2班', '232', '英语', 97.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000883, '三年级', '2班', '233', '英语', 89.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000884, '三年级', '2班', '234', '英语', 94.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000885, '三年级', '2班', '235', '英语', 93.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000886, '三年级', '2班', '236', '英语', 77.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000887, '三年级', '2班', '237', '英语', 93.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000888, '三年级', '2班', '238', '英语', 97.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000889, '三年级', '2班', '239', '英语', 97.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000890, '三年级', '2班', '240', '英语', 97.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000891, '三年级', '2班', '241', '英语', 97.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000892, '三年级', '2班', '242', '英语', 65.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000893, '三年级', '2班', '243', '英语', 99.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000894, '三年级', '2班', '244', '英语', 100.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000895, '三年级', '2班', '245', '英语', 97.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000896, '三年级', '2班', '246', '英语', 85.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000897, '三年级', '2班', '247', '英语', 93.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000898, '三年级', '2班', '248', '英语', 89.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000899, '三年级', '2班', '249', '英语', 90.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000900, '三年级', '2班', '250', '英语', 36.00, '2023-03-27 21:26:44', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000901, '三年级', '3班', '301', '语文', 72.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000902, '三年级', '3班', '302', '语文', 89.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000903, '三年级', '3班', '303', '语文', 99.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000904, '三年级', '3班', '304', '语文', 87.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000905, '三年级', '3班', '305', '语文', 44.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000906, '三年级', '3班', '306', '语文', 62.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000907, '三年级', '3班', '307', '语文', 85.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000908, '三年级', '3班', '308', '语文', 89.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000909, '三年级', '3班', '309', '语文', 76.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000910, '三年级', '3班', '310', '语文', 90.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000911, '三年级', '3班', '311', '语文', 84.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000912, '三年级', '3班', '312', '语文', 77.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000913, '三年级', '3班', '313', '语文', 65.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000914, '三年级', '3班', '314', '语文', 80.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000915, '三年级', '3班', '315', '语文', 72.00, '2023-03-27 21:26:53', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000916, '三年级', '3班', '316', '语文', 61.00, '2023-03-27 21:26:55', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000917, '三年级', '3班', '317', '语文', 91.00, '2023-03-27 21:26:55', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000918, '三年级', '3班', '318', '语文', 94.00, '2023-03-27 21:26:55', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000919, '三年级', '3班', '319', '语文', 86.00, '2023-03-27 21:26:55', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000920, '三年级', '3班', '320', '语文', 74.00, '2023-03-27 21:26:55', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000921, '三年级', '3班', '321', '语文', 80.00, '2023-03-27 21:26:55', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000922, '三年级', '3班', '322', '语文', 61.00, '2023-03-27 21:26:55', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000923, '三年级', '3班', '323', '语文', 38.00, '2023-03-27 21:26:55', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000924, '三年级', '3班', '324', '语文', 86.00, '2023-03-27 21:26:55', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000925, '三年级', '3班', '325', '语文', 67.00, '2023-03-27 21:26:55', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000926, '三年级', '3班', '326', '语文', 60.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000927, '三年级', '3班', '327', '语文', 36.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000928, '三年级', '3班', '328', '语文', 93.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000929, '三年级', '3班', '329', '语文', 94.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000930, '三年级', '3班', '330', '语文', 79.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000931, '三年级', '3班', '331', '语文', 85.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000932, '三年级', '3班', '332', '语文', 45.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000933, '三年级', '3班', '333', '语文', 66.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000934, '三年级', '3班', '334', '语文', 69.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000935, '三年级', '3班', '335', '语文', 87.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000936, '三年级', '3班', '336', '语文', 85.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000937, '三年级', '3班', '337', '语文', 82.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000938, '三年级', '3班', '338', '语文', 63.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000939, '三年级', '3班', '339', '语文', 95.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000940, '三年级', '3班', '340', '语文', 91.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000941, '三年级', '3班', '341', '语文', 86.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000942, '三年级', '3班', '342', '语文', 89.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000943, '三年级', '3班', '343', '语文', 89.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000944, '三年级', '3班', '344', '语文', 88.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000945, '三年级', '3班', '345', '语文', 89.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000946, '三年级', '3班', '346', '语文', 87.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000947, '三年级', '3班', '347', '语文', 84.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000948, '三年级', '3班', '348', '语文', 88.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000949, '三年级', '3班', '349', '语文', 80.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000950, '三年级', '3班', '301', '数学', 72.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000951, '三年级', '3班', '302', '数学', 95.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000952, '三年级', '3班', '303', '数学', 98.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000953, '三年级', '3班', '304', '数学', 94.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000954, '三年级', '3班', '305', '数学', 53.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000955, '三年级', '3班', '306', '数学', 89.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000956, '三年级', '3班', '307', '数学', 98.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000957, '三年级', '3班', '308', '数学', 85.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000958, '三年级', '3班', '309', '数学', 77.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000959, '三年级', '3班', '310', '数学', 99.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000960, '三年级', '3班', '311', '数学', 94.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000961, '三年级', '3班', '312', '数学', 88.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000962, '三年级', '3班', '313', '数学', 68.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000963, '三年级', '3班', '314', '数学', 75.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000964, '三年级', '3班', '315', '数学', 62.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000965, '三年级', '3班', '316', '数学', 75.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000966, '三年级', '3班', '317', '数学', 95.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000967, '三年级', '3班', '318', '数学', 93.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000968, '三年级', '3班', '319', '数学', 94.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000969, '三年级', '3班', '320', '数学', 73.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000970, '三年级', '3班', '321', '数学', 87.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000971, '三年级', '3班', '322', '数学', 62.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000972, '三年级', '3班', '323', '数学', 66.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000973, '三年级', '3班', '324', '数学', 94.00, '2023-03-27 21:26:56', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000974, '三年级', '3班', '325', '数学', 74.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000975, '三年级', '3班', '326', '数学', 79.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000976, '三年级', '3班', '327', '数学', 43.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000977, '三年级', '3班', '328', '数学', 89.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000978, '三年级', '3班', '329', '数学', 98.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000979, '三年级', '3班', '330', '数学', 87.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000980, '三年级', '3班', '331', '数学', 92.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000981, '三年级', '3班', '332', '数学', 46.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000982, '三年级', '3班', '333', '数学', 68.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000983, '三年级', '3班', '334', '数学', 78.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000984, '三年级', '3班', '335', '数学', 98.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000985, '三年级', '3班', '336', '数学', 93.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000986, '三年级', '3班', '337', '数学', 87.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000987, '三年级', '3班', '338', '数学', 70.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000988, '三年级', '3班', '339', '数学', 100.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000989, '三年级', '3班', '340', '数学', 100.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000990, '三年级', '3班', '341', '数学', 95.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000991, '三年级', '3班', '342', '数学', 94.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000992, '三年级', '3班', '343', '数学', 94.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000993, '三年级', '3班', '344', '数学', 83.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000994, '三年级', '3班', '345', '数学', 96.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000995, '三年级', '3班', '346', '数学', 89.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000996, '三年级', '3班', '347', '数学', 93.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000997, '三年级', '3班', '348', '数学', 96.00, '2023-03-27 21:26:57', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000998, '三年级', '3班', '349', '数学', 94.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000000999, '三年级', '3班', '301', '英语', 88.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001000, '三年级', '3班', '302', '英语', 100.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001001, '三年级', '3班', '303', '英语', 100.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001002, '三年级', '3班', '304', '英语', 97.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001003, '三年级', '3班', '305', '英语', 81.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001004, '三年级', '3班', '306', '英语', 91.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001005, '三年级', '3班', '307', '英语', 95.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001006, '三年级', '3班', '308', '英语', 98.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001007, '三年级', '3班', '309', '英语', 93.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001008, '三年级', '3班', '310', '英语', 96.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001009, '三年级', '3班', '311', '英语', 98.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001010, '三年级', '3班', '312', '英语', 99.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001011, '三年级', '3班', '313', '英语', 85.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001012, '三年级', '3班', '314', '英语', 90.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001013, '三年级', '3班', '315', '英语', 85.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001014, '三年级', '3班', '316', '英语', 90.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001015, '三年级', '3班', '317', '英语', 97.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001016, '三年级', '3班', '318', '英语', 95.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001017, '三年级', '3班', '319', '英语', 94.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001018, '三年级', '3班', '320', '英语', 94.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001019, '三年级', '3班', '321', '英语', 95.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001020, '三年级', '3班', '322', '英语', 88.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001021, '三年级', '3班', '323', '英语', 76.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001022, '三年级', '3班', '324', '英语', 95.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001023, '三年级', '3班', '325', '英语', 86.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001024, '三年级', '3班', '326', '英语', 87.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001025, '三年级', '3班', '327', '英语', 60.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001026, '三年级', '3班', '328', '英语', 99.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001027, '三年级', '3班', '329', '英语', 100.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001028, '三年级', '3班', '330', '英语', 91.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001029, '三年级', '3班', '331', '英语', 98.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001030, '三年级', '3班', '332', '英语', 88.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001031, '三年级', '3班', '333', '英语', 86.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001032, '三年级', '3班', '334', '英语', 91.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001033, '三年级', '3班', '335', '英语', 100.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001034, '三年级', '3班', '336', '英语', 95.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001035, '三年级', '3班', '337', '英语', 96.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001036, '三年级', '3班', '338', '英语', 91.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001037, '三年级', '3班', '339', '英语', 99.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001038, '三年级', '3班', '340', '英语', 90.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001039, '三年级', '3班', '341', '英语', 95.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001040, '三年级', '3班', '342', '英语', 98.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001041, '三年级', '3班', '343', '英语', 96.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001042, '三年级', '3班', '344', '英语', 95.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001043, '三年级', '3班', '345', '英语', 93.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001044, '三年级', '3班', '346', '英语', 93.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001045, '三年级', '3班', '347', '英语', 94.00, '2023-03-27 21:26:58', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001046, '三年级', '3班', '348', '英语', 96.00, '2023-03-27 21:26:59', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001047, '三年级', '3班', '349', '英语', 96.00, '2023-03-27 21:26:59', 'admin', NULL, NULL, 18);
INSERT INTO `exam_student_scores` VALUES (00000000000000001048, '二年级', '4班', '2401', '语文', 80.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001049, '二年级', '4班', '2402', '语文', 65.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001050, '二年级', '4班', '2403', '语文', 86.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001051, '二年级', '4班', '2404', '语文', 72.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001052, '二年级', '4班', '2405', '语文', 75.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001053, '二年级', '4班', '2406', '语文', 82.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001054, '二年级', '4班', '2407', '语文', 72.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001055, '二年级', '4班', '2408', '语文', 66.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001056, '二年级', '4班', '2410', '语文', 78.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001057, '二年级', '4班', '2411', '语文', 78.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001058, '二年级', '4班', '2412', '语文', 75.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001059, '二年级', '4班', '2413', '语文', 84.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001060, '二年级', '4班', '2414', '语文', 81.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001061, '二年级', '4班', '2415', '语文', 48.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001062, '二年级', '4班', '2416', '语文', 66.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001063, '二年级', '4班', '2417', '语文', 49.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001064, '二年级', '4班', '2418', '语文', 58.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001065, '二年级', '4班', '2419', '语文', 73.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001066, '二年级', '4班', '2420', '语文', 66.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001067, '二年级', '4班', '2421', '语文', 74.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001068, '二年级', '4班', '2422', '语文', 79.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001069, '二年级', '4班', '2423', '语文', 74.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001070, '二年级', '4班', '2424', '语文', 83.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001071, '二年级', '4班', '2425', '语文', 78.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001072, '二年级', '4班', '2426', '语文', 79.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001073, '二年级', '4班', '2427', '语文', 50.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001074, '二年级', '4班', '2428', '语文', 66.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001075, '二年级', '4班', '2429', '语文', 87.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001076, '二年级', '4班', '2430', '语文', 86.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001077, '二年级', '4班', '2431', '语文', 76.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001078, '二年级', '4班', '2432', '语文', 76.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001079, '二年级', '4班', '2433', '语文', 42.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001080, '二年级', '4班', '2434', '语文', 80.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001081, '二年级', '4班', '2435', '语文', 69.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001082, '二年级', '4班', '2436', '语文', 86.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001083, '二年级', '4班', '2437', '语文', 65.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001084, '二年级', '4班', '2438', '语文', 54.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001085, '二年级', '4班', '2439', '语文', 74.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001086, '二年级', '4班', '2440', '语文', 64.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001087, '二年级', '4班', '2441', '语文', 76.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001088, '二年级', '4班', '2442', '语文', 33.00, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001089, '二年级', '4班', '2443', '语文', 66.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001090, '二年级', '4班', '2444', '语文', 48.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001091, '二年级', '4班', '2445', '语文', 78.50, '2023-03-29 20:08:44', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001092, '二年级', '4班', '2401', '数学', 75.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001093, '二年级', '4班', '2402', '数学', 78.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001094, '二年级', '4班', '2403', '数学', 76.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001095, '二年级', '4班', '2404', '数学', 63.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001096, '二年级', '4班', '2405', '数学', 73.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001097, '二年级', '4班', '2406', '数学', 84.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001098, '二年级', '4班', '2407', '数学', 82.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001099, '二年级', '4班', '2408', '数学', 60.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001100, '二年级', '4班', '2410', '数学', 76.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001101, '二年级', '4班', '2411', '数学', 88.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001102, '二年级', '4班', '2412', '数学', 61.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001103, '二年级', '4班', '2413', '数学', 87.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001104, '二年级', '4班', '2414', '数学', 86.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001105, '二年级', '4班', '2415', '数学', 52.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001106, '二年级', '4班', '2416', '数学', 44.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001107, '二年级', '4班', '2417', '数学', 64.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001108, '二年级', '4班', '2418', '数学', 65.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001109, '二年级', '4班', '2419', '数学', 77.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001110, '二年级', '4班', '2420', '数学', 64.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001111, '二年级', '4班', '2421', '数学', 55.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001112, '二年级', '4班', '2422', '数学', 85.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001113, '二年级', '4班', '2423', '数学', 77.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001114, '二年级', '4班', '2424', '数学', 94.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001115, '二年级', '4班', '2425', '数学', 77.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001116, '二年级', '4班', '2426', '数学', 85.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001117, '二年级', '4班', '2427', '数学', 29.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001118, '二年级', '4班', '2428', '数学', 41.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001119, '二年级', '4班', '2429', '数学', 75.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001120, '二年级', '4班', '2430', '数学', 97.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001121, '二年级', '4班', '2431', '数学', 73.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001122, '二年级', '4班', '2432', '数学', 56.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001123, '二年级', '4班', '2433', '数学', 12.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001124, '二年级', '4班', '2434', '数学', 73.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001125, '二年级', '4班', '2435', '数学', 85.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001126, '二年级', '4班', '2436', '数学', 82.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001127, '二年级', '4班', '2437', '数学', 41.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001128, '二年级', '4班', '2438', '数学', 68.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001129, '二年级', '4班', '2439', '数学', 67.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001130, '二年级', '4班', '2440', '数学', 29.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001131, '二年级', '4班', '2441', '数学', 61.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001132, '二年级', '4班', '2442', '数学', 11.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001133, '二年级', '4班', '2443', '数学', 49.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001134, '二年级', '4班', '2444', '数学', 46.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001135, '二年级', '4班', '2445', '数学', 79.00, '2023-03-29 20:08:45', 'admin', NULL, NULL, 20);
INSERT INTO `exam_student_scores` VALUES (00000000000000001136, '四年级', '3班', '4301', '数学', 91.00, '2023-03-29 20:45:07', '孙豪', NULL, NULL, 20);

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '各种考试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exams
-- ----------------------------
INSERT INTO `exams` VALUES (00000000000000000009, '2022-2023春期中考试', '2023-03-24 21:50:05', NULL, '1');
INSERT INTO `exams` VALUES (00000000000000000010, '2022-2023春第一次月考', '2023-03-25 07:33:15', NULL, '1');
INSERT INTO `exams` VALUES (00000000000000000011, '2022-2023春第一周周考', '2023-03-25 07:33:31', NULL, '1');
INSERT INTO `exams` VALUES (00000000000000000012, '第4次考试', '2023-03-25 08:41:04', NULL, '1');
INSERT INTO `exams` VALUES (00000000000000000013, '第五次考试', '2023-03-25 08:44:29', NULL, '1');
INSERT INTO `exams` VALUES (00000000000000000014, '666考试', '2023-03-25 08:44:38', NULL, '1');
INSERT INTO `exams` VALUES (00000000000000000015, '7752412考试', '2023-03-25 08:44:50', NULL, '1');
INSERT INTO `exams` VALUES (00000000000000000016, '8范德萨考试', '2023-03-25 08:44:57', NULL, '1');
INSERT INTO `exams` VALUES (00000000000000000017, '9特斯拉考试', '2023-03-25 08:45:03', NULL, '1');
INSERT INTO `exams` VALUES (00000000000000000018, '哈哈哈哈满了10', '2023-03-25 08:45:10', NULL, '1');
INSERT INTO `exams` VALUES (00000000000000000019, '超慢了怎么办', '2023-03-25 08:45:18', NULL, '1');
INSERT INTO `exams` VALUES (00000000000000000020, '鬼知道什么考试', '2023-03-28 19:29:36', 'admin', '1');

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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (16, 'exam_class_statictics', '班级成绩统计情况', 'exams', 'exam_id', 'ExamClassStatictics', 'sub', 'com.hysro.scores', 'scores', 'staticticsclass', '班级成绩统计情况', 'hysro', '0', '/', '{\"parentMenuId\":\"1092\"}', 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55', NULL);
INSERT INTO `gen_table` VALUES (17, 'exam_excellent_score_line', '优秀分数线', NULL, NULL, 'ExamExcellentScoreLine', 'crud', 'com.hysro.scores', 'scores', 'line', '优秀分数线', 'hysro', '0', '/', '{\"parentMenuId\":\"1092\"}', 'admin', '2023-03-23 18:13:33', '', '2023-03-23 20:24:09', NULL);
INSERT INTO `gen_table` VALUES (18, 'exam_grade_statistic', '年级数据统计情况', 'exams', 'exam_id', 'ExamGradeStatistic', 'sub', 'com.hysro.scores', 'scores', 'statisticsgrade', '年级数据统计情况', 'hysro', '0', '/', '{\"parentMenuId\":\"1092\"}', 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:20:03', NULL);
INSERT INTO `gen_table` VALUES (19, 'exam_student_scores', '学生分数情况', 'exams', 'exam_id', 'ExamStudentScores', 'sub', 'com.hysro.scores', 'scores', 'scores', '学生分数情况', 'hysro', '0', '/', '{\"parentMenuId\":\"1092\"}', 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:18:44', NULL);
INSERT INTO `gen_table` VALUES (20, 'exams', '各种考试', NULL, NULL, 'Exams', 'crud', 'com.hysro.scores', 'examination', 'exams', '各种考试', 'hysro', '0', '/', '{\"parentMenuId\":\"1091\"}', 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:30:10', NULL);
INSERT INTO `gen_table` VALUES (21, 'exam_grade_summary', '年级总体情况', NULL, NULL, 'ExamGradeSummary', 'crud', 'com.hysro.scores', 'scores', 'summary', '年级总体情况', 'hysro', '0', '/', '{\"parentMenuId\":1147}', 'admin', '2023-03-28 20:00:54', '', '2023-03-28 20:08:39', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 214 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (151, '16', 'exam_statistics_id', '统计记录ID', 'bigint(20)', 'Long', 'examStatisticsId', '1', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (152, '16', 'grade', '年级', 'varchar(60)', 'String', 'grade', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (154, '16', 'subject', '学科', 'varchar(60)', 'String', 'subject', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (155, '16', 'exam_numbers', '参加考试的人数', 'int(11)', 'Long', 'examNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (156, '16', 'full_socre_numbers', '满分人数', 'int(11)', 'Long', 'fullSocreNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (157, '16', 'excellent_numbers', '优秀人数', 'int(11)', 'Long', 'excellentNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (158, '16', 'good_numbers', '良好人数', 'int(11)', 'Long', 'goodNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (159, '16', 'qualified_numbers', '及格人数', 'int(11)', 'Long', 'qualifiedNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (160, '16', 'unqualified_one_numbers', '不及格人数(55-59)', 'int(11)', 'Long', 'unqualifiedOneNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (161, '16', 'unqualified_two_numbers', '不及格人数(50-54)', 'int(11)', 'Long', 'unqualifiedTwoNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (162, '16', 'unqualified_three_numbers', '不及格人数(40-49)', 'int(11)', 'Long', 'unqualifiedThreeNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (163, '16', 'unqualified_four_numbers', '不及格人数(40分以下)', 'int(11)', 'Long', 'unqualifiedFourNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 13, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (164, '16', 'total_score', '全班总分', 'varchar(255)', 'String', 'totalScore', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 14, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (165, '16', 'average_score', '平均分', 'varchar(255)', 'String', 'averageScore', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 15, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (166, '16', 'qualified_percentage', '及格率', 'varchar(255)', 'String', 'qualifiedPercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 16, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (167, '16', 'excellent_percentage', '优秀率', 'varchar(255)', 'String', 'excellentPercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 17, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (168, '16', 'mutiple_score', '综合分（平均分*40%，及格率*30%，优秀率*30%）', 'varchar(255)', 'String', 'mutipleScore', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 18, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (169, '16', 'exam_id', '考试ID', 'bigint(20)', 'Long', 'examId', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 19, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (170, '16', 'rate', '排名', 'int(5)', 'Integer', 'rate', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 20, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (171, '17', 'excellent_id', 'id', 'int(11)', 'Long', 'excellentId', '1', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 20:24:09');
INSERT INTO `gen_table_column` VALUES (172, '17', 'subject', '学科', 'varchar(60)', 'String', 'subject', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 20:24:09');
INSERT INTO `gen_table_column` VALUES (173, '17', 'excellent_score', '优秀分数', 'float', 'Long', 'excellentScore', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 20:24:09');
INSERT INTO `gen_table_column` VALUES (174, '17', 'grade', '年级', 'varchar(60)', 'String', 'grade', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 20:24:09');
INSERT INTO `gen_table_column` VALUES (175, '18', 'exam_grade_statistics_id', '年级数据ID', 'bigint(20)', 'Long', 'examGradeStatisticsId', '1', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:20:03');
INSERT INTO `gen_table_column` VALUES (176, '18', 'exam_numbers', '考试人数', 'int(11)', 'Long', 'examNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:20:03');
INSERT INTO `gen_table_column` VALUES (177, '18', 'triple_qualified_numbers', '三及格人数', 'int(11)', 'Long', 'tripleQualifiedNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:20:03');
INSERT INTO `gen_table_column` VALUES (178, '18', 'triple_excellent_numbers', '三优秀人数', 'int(11)', 'Long', 'tripleExcellentNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:20:03');
INSERT INTO `gen_table_column` VALUES (179, '18', 'triple_qualified_percentage', '三及格率', 'varchar(255)', 'String', 'tripleQualifiedPercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:20:03');
INSERT INTO `gen_table_column` VALUES (180, '18', 'triple_excellent_percentage', '三优秀率', 'varchar(255)', 'String', 'tripleExcellentPercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:20:03');
INSERT INTO `gen_table_column` VALUES (181, '18', 'muitiple_score', '综合分', 'varchar(255)', 'String', 'muitipleScore', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:20:03');
INSERT INTO `gen_table_column` VALUES (182, '18', 'grade', '年级', 'varchar(255)', 'String', 'grade', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:20:03');
INSERT INTO `gen_table_column` VALUES (184, '18', 'rate', '排名', 'int(5)', 'Integer', 'rate', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:20:03');
INSERT INTO `gen_table_column` VALUES (185, '18', 'exam_id', '考试ID', 'int(11)', 'Long', 'examId', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:20:03');
INSERT INTO `gen_table_column` VALUES (186, '19', 'score_id', '分数ID', 'bigint(20)', 'Long', 'scoreId', '1', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:18:44');
INSERT INTO `gen_table_column` VALUES (187, '19', 'grade', '年级', 'varchar(60)', 'String', 'grade', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:18:44');
INSERT INTO `gen_table_column` VALUES (189, '19', 'exam_number', '考试号', 'varchar(20)', 'String', 'examNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:18:44');
INSERT INTO `gen_table_column` VALUES (190, '19', 'subject', '学科', 'varchar(20)', 'String', 'subject', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:18:44');
INSERT INTO `gen_table_column` VALUES (191, '19', 'score', '分数', 'decimal(5,2)', 'BigDecimal', 'score', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:18:44');
INSERT INTO `gen_table_column` VALUES (192, '19', 'create_time', '录入时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:18:44');
INSERT INTO `gen_table_column` VALUES (193, '19', 'create_by', '录入者', 'varchar(60)', 'String', 'createBy', '0', '0', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:18:44');
INSERT INTO `gen_table_column` VALUES (194, '19', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:18:44');
INSERT INTO `gen_table_column` VALUES (195, '19', 'update_by', '更新者', 'varchar(60)', 'String', 'updateBy', '0', '0', NULL, '0', '0', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:18:44');
INSERT INTO `gen_table_column` VALUES (196, '19', 'exam_id', '考试ID', 'bigint(20)', 'Long', 'examId', '0', '0', NULL, '1', '0', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:18:44');
INSERT INTO `gen_table_column` VALUES (197, '20', 'exam_id', '考试ID', 'bigint(20)', 'Long', 'examId', '1', '0', NULL, '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:30:10');
INSERT INTO `gen_table_column` VALUES (198, '20', 'exam_name', '考试名称', 'varchar(255)', 'String', 'examName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:30:10');
INSERT INTO `gen_table_column` VALUES (199, '20', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '0', '0', '0', NULL, 'EQ', 'datetime', '', 3, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:30:10');
INSERT INTO `gen_table_column` VALUES (200, '20', 'create_by', '创建者', 'varchar(255)', 'String', 'createBy', '0', '0', NULL, '0', '0', '0', NULL, 'EQ', 'input', '', 4, 'admin', '2023-03-23 18:13:33', '', '2023-03-23 19:30:10');
INSERT INTO `gen_table_column` VALUES (201, '19', 'classes', '班级', 'varchar(60)', 'String', 'classes', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, '', '2023-03-23 19:07:51', '', '2023-03-23 19:18:44');
INSERT INTO `gen_table_column` VALUES (202, '18', 'classes', '班级', 'varchar(255)', 'String', 'classes', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 9, '', '2023-03-23 19:07:53', '', '2023-03-23 19:20:03');
INSERT INTO `gen_table_column` VALUES (203, '16', 'classes', '班级', 'varchar(60)', 'String', 'classes', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 3, '', '2023-03-23 19:07:56', '', '2023-03-23 19:21:55');
INSERT INTO `gen_table_column` VALUES (204, '21', 'exam_grade_summary_id', 'ID', 'bigint(20) unsigned zerofill', 'Long', 'examGradeSummaryId', '1', '1', NULL, '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-28 20:00:54', '', '2023-03-28 20:08:39');
INSERT INTO `gen_table_column` VALUES (205, '21', 'grade', '年级', 'varchar(255)', 'String', 'grade', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-28 20:00:54', '', '2023-03-28 20:08:39');
INSERT INTO `gen_table_column` VALUES (206, '21', 'subject', '学科', 'varchar(255)', 'String', 'subject', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-28 20:00:54', '', '2023-03-28 20:08:39');
INSERT INTO `gen_table_column` VALUES (207, '21', 'exam_total_numbers', '考试总人数', 'int(11)', 'Long', 'examTotalNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-03-28 20:00:54', '', '2023-03-28 20:08:39');
INSERT INTO `gen_table_column` VALUES (208, '21', 'grade_total_scores', '年级总分', 'varchar(255)', 'String', 'gradeTotalScores', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-03-28 20:00:54', '', '2023-03-28 20:08:39');
INSERT INTO `gen_table_column` VALUES (209, '21', 'grade_average_score', '年级均分', 'varchar(255)', 'String', 'gradeAverageScore', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-03-28 20:00:54', '', '2023-03-28 20:08:39');
INSERT INTO `gen_table_column` VALUES (210, '21', 'grade_qualified_percentage', '年级及格率', 'varchar(255)', 'String', 'gradeQualifiedPercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-03-28 20:00:54', '', '2023-03-28 20:08:39');
INSERT INTO `gen_table_column` VALUES (211, '21', 'grade_excellent_percentage', '年级优秀率', 'varchar(255)', 'String', 'gradeExcellentPercentage', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-03-28 20:00:54', '', '2023-03-28 20:08:39');
INSERT INTO `gen_table_column` VALUES (212, '21', 'grade_unqualified_numbers', '不及格人数', 'int(11)', 'Long', 'gradeUnqualifiedNumbers', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-03-28 20:00:54', '', '2023-03-28 20:08:39');
INSERT INTO `gen_table_column` VALUES (213, '21', 'exam_id', '考试ID', 'bigint(20)', 'Long', 'examId', '0', '0', NULL, '0', '0', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-03-28 20:00:54', '', '2023-03-28 20:08:39');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1160 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_menu` VALUES (1091, '考试', 0, 4, 'examination', NULL, NULL, 1, 0, 'M', '0', '0', '', 'education', 'admin', '2023-03-23 17:12:37', 'admin', '2023-03-23 18:35:46', '');
INSERT INTO `sys_menu` VALUES (1092, '成绩', 0, 5, 'scores', NULL, NULL, 1, 0, 'M', '0', '0', '', 'excel', 'admin', '2023-03-23 17:14:59', 'admin', '2023-03-23 18:35:53', '');
INSERT INTO `sys_menu` VALUES (1123, '考试管理', 1091, 1, 'exams', 'examination/exams/index', NULL, 1, 0, 'C', '0', '0', 'examination:exams:list', 'nested', 'admin', '2023-03-23 19:24:26', 'admin', '2023-03-23 20:18:13', '各种考试菜单');
INSERT INTO `sys_menu` VALUES (1124, '各种考试查询', 1123, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'examination:exams:query', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1125, '各种考试新增', 1123, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'examination:exams:add', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1126, '各种考试修改', 1123, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'examination:exams:edit', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1127, '各种考试删除', 1123, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'examination:exams:remove', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1128, '各种考试导出', 1123, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'examination:exams:export', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1129, '优秀分数线', 1092, 1, 'line', 'scores/line/index', NULL, 1, 0, 'C', '0', '0', 'scores:line:list', 'swagger', 'admin', '2023-03-23 19:24:26', 'admin', '2023-03-23 20:18:36', '优秀分数线菜单');
INSERT INTO `sys_menu` VALUES (1130, '优秀分数线查询', 1129, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:line:query', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1131, '优秀分数线新增', 1129, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:line:add', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1132, '优秀分数线修改', 1129, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:line:edit', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1133, '优秀分数线删除', 1129, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:line:remove', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1134, '优秀分数线导出', 1129, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:line:export', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1135, '学生分数情况', 1092, 1, 'scores', 'scores/scores/index', NULL, 1, 0, 'C', '0', '0', 'scores:scores:list', 'documentation', 'admin', '2023-03-23 19:24:26', 'admin', '2023-03-23 20:19:18', '学生分数情况菜单');
INSERT INTO `sys_menu` VALUES (1136, '学生分数情况查询', 1135, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:query', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1137, '学生分数情况新增', 1135, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:add', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1138, '学生分数情况修改', 1135, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:edit', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1139, '学生分数情况删除', 1135, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:remove', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1140, '学生分数情况导出', 1135, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:export', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1141, '班级成绩统计', 1092, 1, 'staticticsclass', 'scores/staticticsclass/index', NULL, 1, 0, 'C', '0', '0', 'scores:staticticsclass:list', 'logininfor', 'admin', '2023-03-23 19:24:26', 'admin', '2023-03-28 18:52:18', '班级成绩统计情况菜单');
INSERT INTO `sys_menu` VALUES (1142, '班级成绩统计情况查询', 1141, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:staticticsclass:query', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1143, '班级成绩统计情况新增', 1141, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:staticticsclass:add', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1144, '班级成绩统计情况修改', 1141, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:staticticsclass:edit', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1145, '班级成绩统计情况删除', 1141, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:staticticsclass:remove', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1146, '班级成绩统计情况导出', 1141, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:staticticsclass:export', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1147, '年级数据统计', 1092, 1, 'statisticsgrade', 'scores/statisticsgrade/index', NULL, 1, 0, 'C', '0', '0', 'scores:statisticsgrade:list', 'cascader', 'admin', '2023-03-23 19:24:26', 'admin', '2023-03-28 18:52:30', '年级数据统计情况菜单');
INSERT INTO `sys_menu` VALUES (1148, '年级数据统计情况查询', 1147, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statisticsgrade:query', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1149, '年级数据统计情况新增', 1147, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statisticsgrade:add', '#', 'admin', '2023-03-23 19:24:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1150, '年级数据统计情况修改', 1147, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statisticsgrade:edit', '#', 'admin', '2023-03-23 19:24:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1151, '年级数据统计情况删除', 1147, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statisticsgrade:remove', '#', 'admin', '2023-03-23 19:24:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1152, '年级数据统计情况导出', 1147, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statisticsgrade:export', '#', 'admin', '2023-03-23 19:24:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1153, '学生分数情况导入', 1135, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'scores:scores:import', '#', 'admin', '2023-03-25 10:40:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1154, '年级总体情况', 1092, 1, 'summary', 'scores/summary/index', NULL, 1, 0, 'C', '0', '0', 'scores:summary:list', 'druid', 'admin', '2023-03-28 20:11:51', 'admin', '2023-03-28 20:15:31', '年级总体情况菜单');
INSERT INTO `sys_menu` VALUES (1155, '年级总体情况查询', 1154, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:query', '#', 'admin', '2023-03-28 20:11:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1156, '年级总体情况新增', 1154, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:add', '#', 'admin', '2023-03-28 20:11:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1157, '年级总体情况修改', 1154, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:edit', '#', 'admin', '2023-03-28 20:11:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1158, '年级总体情况删除', 1154, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:remove', '#', 'admin', '2023-03-28 20:11:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1159, '年级总体情况导出', 1154, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:export', '#', 'admin', '2023-03-28 20:11:51', '', NULL, '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.ruoyi.web.controller.monitor.SysOperlogController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-01 15:16:38', 68);

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
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 5, '2', 1, 1, '0', '0', 'admin', '2023-03-18 18:56:46', '黄海波', '2023-03-29 20:37:59', '普通角色');
INSERT INTO `sys_role` VALUES (3, '管理员', 'premier', 2, '1', 1, 1, '0', '0', 'admin', '2023-03-28 20:25:20', 'admin', '2023-03-28 20:25:32', NULL);
INSERT INTO `sys_role` VALUES (4, '行政', 'administration', 3, '1', 1, 1, '0', '0', 'admin', '2023-03-28 20:51:41', '', NULL, NULL);

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
INSERT INTO `sys_role_menu` VALUES (2, 1092);
INSERT INTO `sys_role_menu` VALUES (2, 1135);
INSERT INTO `sys_role_menu` VALUES (2, 1136);
INSERT INTO `sys_role_menu` VALUES (2, 1137);
INSERT INTO `sys_role_menu` VALUES (2, 1153);
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
INSERT INTO `sys_role_menu` VALUES (3, 1091);
INSERT INTO `sys_role_menu` VALUES (3, 1092);
INSERT INTO `sys_role_menu` VALUES (3, 1123);
INSERT INTO `sys_role_menu` VALUES (3, 1124);
INSERT INTO `sys_role_menu` VALUES (3, 1125);
INSERT INTO `sys_role_menu` VALUES (3, 1126);
INSERT INTO `sys_role_menu` VALUES (3, 1127);
INSERT INTO `sys_role_menu` VALUES (3, 1128);
INSERT INTO `sys_role_menu` VALUES (3, 1129);
INSERT INTO `sys_role_menu` VALUES (3, 1130);
INSERT INTO `sys_role_menu` VALUES (3, 1131);
INSERT INTO `sys_role_menu` VALUES (3, 1132);
INSERT INTO `sys_role_menu` VALUES (3, 1133);
INSERT INTO `sys_role_menu` VALUES (3, 1134);
INSERT INTO `sys_role_menu` VALUES (3, 1135);
INSERT INTO `sys_role_menu` VALUES (3, 1136);
INSERT INTO `sys_role_menu` VALUES (3, 1137);
INSERT INTO `sys_role_menu` VALUES (3, 1138);
INSERT INTO `sys_role_menu` VALUES (3, 1139);
INSERT INTO `sys_role_menu` VALUES (3, 1140);
INSERT INTO `sys_role_menu` VALUES (3, 1141);
INSERT INTO `sys_role_menu` VALUES (3, 1142);
INSERT INTO `sys_role_menu` VALUES (3, 1143);
INSERT INTO `sys_role_menu` VALUES (3, 1144);
INSERT INTO `sys_role_menu` VALUES (3, 1145);
INSERT INTO `sys_role_menu` VALUES (3, 1146);
INSERT INTO `sys_role_menu` VALUES (3, 1147);
INSERT INTO `sys_role_menu` VALUES (3, 1148);
INSERT INTO `sys_role_menu` VALUES (3, 1149);
INSERT INTO `sys_role_menu` VALUES (3, 1150);
INSERT INTO `sys_role_menu` VALUES (3, 1151);
INSERT INTO `sys_role_menu` VALUES (3, 1152);
INSERT INTO `sys_role_menu` VALUES (3, 1153);
INSERT INTO `sys_role_menu` VALUES (3, 1154);
INSERT INTO `sys_role_menu` VALUES (3, 1155);
INSERT INTO `sys_role_menu` VALUES (3, 1156);
INSERT INTO `sys_role_menu` VALUES (3, 1157);
INSERT INTO `sys_role_menu` VALUES (3, 1158);
INSERT INTO `sys_role_menu` VALUES (3, 1159);
INSERT INTO `sys_role_menu` VALUES (4, 1091);
INSERT INTO `sys_role_menu` VALUES (4, 1092);
INSERT INTO `sys_role_menu` VALUES (4, 1123);
INSERT INTO `sys_role_menu` VALUES (4, 1124);
INSERT INTO `sys_role_menu` VALUES (4, 1128);
INSERT INTO `sys_role_menu` VALUES (4, 1129);
INSERT INTO `sys_role_menu` VALUES (4, 1130);
INSERT INTO `sys_role_menu` VALUES (4, 1134);
INSERT INTO `sys_role_menu` VALUES (4, 1135);
INSERT INTO `sys_role_menu` VALUES (4, 1136);
INSERT INTO `sys_role_menu` VALUES (4, 1137);
INSERT INTO `sys_role_menu` VALUES (4, 1138);
INSERT INTO `sys_role_menu` VALUES (4, 1139);
INSERT INTO `sys_role_menu` VALUES (4, 1140);
INSERT INTO `sys_role_menu` VALUES (4, 1141);
INSERT INTO `sys_role_menu` VALUES (4, 1142);
INSERT INTO `sys_role_menu` VALUES (4, 1146);
INSERT INTO `sys_role_menu` VALUES (4, 1147);
INSERT INTO `sys_role_menu` VALUES (4, 1148);
INSERT INTO `sys_role_menu` VALUES (4, 1152);
INSERT INTO `sys_role_menu` VALUES (4, 1153);
INSERT INTO `sys_role_menu` VALUES (4, 1154);
INSERT INTO `sys_role_menu` VALUES (4, 1155);
INSERT INTO `sys_role_menu` VALUES (4, 1159);

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
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '若依', '00', 'ry@163.com', '15888888888', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-04-01 15:14:39', 'admin', '2023-03-18 18:56:46', '', '2023-04-01 15:14:38', '管理员');
INSERT INTO `sys_user` VALUES (2, 100, '黄黄黄', '黄黄黄', '00', 'ry@qq.com', '15666666666', '0', '', '$2a$10$XzBFdVK1rNgHXLY.iqOyk.ulvB58.vEo6Txwehb2TBajYTIGSRd12', '0', '0', '127.0.0.1', '2023-03-29 20:45:28', 'admin', '2023-03-18 18:56:46', 'admin', '2023-04-01 15:16:14', '管理员');
INSERT INTO `sys_user` VALUES (3, 106, '桃桃淘', '桃桃淘', '00', '', '', '0', '', '$2a$10$VBeo.cb2hYqEAHttnlZr4u8h5e8wm0rU5DllJzYbUxH.Y6dpNYv2u', '0', '0', '127.0.0.1', '2023-03-29 20:30:33', 'admin', '2023-03-23 20:12:27', 'admin', '2023-04-01 15:16:22', NULL);
INSERT INTO `sys_user` VALUES (4, 104, '浩浩好', '浩浩好', '00', '', '', '0', '/profile/avatar/2023/03/29/blob_20230329203008A001.png', '$2a$10$tV/30G9C5NQqpjhb.Ik6K.SiURLGQ8geuH1lSnDnykaDEXXEv8Fr.', '0', '0', '127.0.0.1', '2023-03-29 20:44:41', 'admin', '2023-03-29 20:20:44', 'admin', '2023-04-01 15:16:28', NULL);

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
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (3, 5);
INSERT INTO `sys_user_post` VALUES (4, 7);

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
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (2, 3);
INSERT INTO `sys_user_role` VALUES (3, 2);
INSERT INTO `sys_user_role` VALUES (3, 4);
INSERT INTO `sys_user_role` VALUES (4, 2);

SET FOREIGN_KEY_CHECKS = 1;
