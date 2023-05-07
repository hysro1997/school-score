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

 Date: 07/05/2023 11:59:08
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
) ENGINE = InnoDB AUTO_INCREMENT = 635 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级成绩统计情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_class_statictics
-- ----------------------------
INSERT INTO `exam_class_statictics` VALUES (00000000000000000511, '四年级', '1班', '语文', 50, 0, 38, 9, 2, 0, 0, 0, 1, '4291.0', '85.82', '98.00%', '76.00%', '85.55', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000512, '四年级', '1班', '数学', 50, 0, 25, 17, 7, 0, 0, 0, 1, '4284.0', '85.68', '98.00%', '50.00%', '75.1', 22, 2, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000513, '四年级', '1班', '英语', 50, 2, 42, 5, 0, 0, 0, 0, 1, '4654.0', '93.08', '98.00%', '88.00%', '92.52', 22, 1, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000514, '四年级', '2班', '语文', 50, 0, 31, 13, 5, 0, 1, 0, 0, '4275.0', '85.50', '98.00%', '62.00%', '79.85', 22, 2, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000515, '四年级', '2班', '数学', 49, 1, 24, 16, 5, 2, 0, 0, 1, '4170.0', '85.10', '93.88%', '51.02%', '74.1', 22, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000516, '四年级', '2班', '英语', 50, 1, 35, 11, 2, 0, 0, 0, 1, '4486.0', '89.72', '98.00%', '72.00%', '85.12', 22, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000517, '四年级', '3班', '语文', 49, 0, 24, 9, 12, 0, 0, 2, 2, '3819.0', '77.94', '91.84%', '48.98%', '70.53', 22, 6, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000518, '四年级', '3班', '数学', 49, 2, 21, 14, 9, 0, 1, 2, 0, '4122.0', '84.12', '93.88%', '46.94%', '72.18', 22, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000519, '四年级', '3班', '英语', 49, 4, 34, 10, 1, 0, 0, 0, 0, '4533.0', '92.51', '100.00%', '77.55%', '88.77', 22, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000520, '四年级', '4班', '语文', 48, 0, 27, 10, 8, 1, 0, 0, 2, '3905.0', '81.35', '93.75%', '56.25%', '75.03', 22, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000521, '四年级', '4班', '数学', 48, 0, 20, 14, 9, 2, 0, 1, 2, '3858.0', '80.38', '89.58%', '41.67%', '67.66', 22, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000522, '四年级', '4班', '英语', 48, 1, 28, 14, 3, 0, 0, 0, 2, '4214.0', '87.79', '95.83%', '60.42%', '79.25', 22, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000523, '四年级', '5班', '语文', 49, 0, 27, 12, 7, 0, 0, 3, 0, '3983.0', '81.29', '93.88%', '55.10%', '74.59', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000524, '四年级', '5班', '数学', 49, 2, 20, 25, 2, 0, 0, 0, 0, '4352.0', '88.82', '100.00%', '44.90%', '74.61', 22, 3, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000525, '四年级', '5班', '英语', 49, 5, 35, 8, 1, 0, 0, 0, 0, '4612.0', '94.12', '100.00%', '81.63%', '90.89', 22, 2, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000526, '四年级', '6班', '语文', 50, 0, 31, 12, 3, 2, 1, 0, 1, '4190.0', '83.80', '92.00%', '62.00%', '77.54', 22, 3, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000527, '四年级', '6班', '数学', 50, 1, 31, 12, 4, 0, 1, 0, 1, '4404.0', '88.08', '96.00%', '64.00%', '80.82', 22, 1, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000528, '四年级', '6班', '英语', 50, 1, 39, 7, 1, 1, 1, 0, 0, '4570.0', '91.40', '96.00%', '80.00%', '88.22', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000529, '四年级', '7班', '语文', 49, 0, 21, 18, 5, 1, 1, 2, 1, '3924.0', '80.08', '89.80%', '42.86%', '68.11', 22, 7, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000530, '四年级', '7班', '数学', 49, 0, 25, 15, 5, 0, 2, 1, 1, '4163.0', '84.96', '91.84%', '51.02%', '73.45', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000531, '四年级', '7班', '英语', 48, 8, 30, 8, 1, 1, 0, 0, 0, '4475.0', '93.23', '97.92%', '79.17%', '89.01', 22, 3, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000532, '五年级', '9班', '语文', 1, 0, 1, 0, 0, 0, 0, 0, 0, '85.0', '85.00', '100.00%', '100.00%', '95.5', 22, 1, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000533, '五年级', '9班', '数学', 1, 0, 1, 0, 0, 0, 0, 0, 0, '90.0', '90.00', '100.00%', '100.00%', '97.0', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000534, '五年级', '9班', '英语', 1, 0, 1, 0, 0, 0, 0, 0, 0, '98.0', '98.00', '100.00%', '100.00%', '99.4', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000535, '五年级', '1班', '语文', 50, 0, 38, 9, 2, 0, 0, 0, 1, '4291.0', '85.82', '98.00%', '76.00%', '85.55', 22, 2, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000536, '五年级', '1班', '数学', 50, 0, 25, 17, 7, 0, 0, 0, 1, '4284.0', '85.68', '98.00%', '50.00%', '75.1', 22, 3, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000537, '五年级', '1班', '英语', 50, 2, 42, 5, 0, 0, 0, 0, 1, '4654.0', '93.08', '98.00%', '88.00%', '92.52', 22, 2, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000538, '五年级', '2班', '语文', 50, 0, 31, 13, 5, 0, 1, 0, 0, '4275.0', '85.50', '98.00%', '62.00%', '79.85', 22, 3, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000539, '五年级', '2班', '数学', 49, 1, 24, 16, 5, 2, 0, 0, 1, '4170.0', '85.10', '93.88%', '51.02%', '74.1', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000540, '五年级', '2班', '英语', 50, 1, 35, 11, 2, 0, 0, 0, 1, '4486.0', '89.72', '98.00%', '72.00%', '85.12', 22, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000541, '五年级', '3班', '语文', 49, 0, 24, 9, 12, 0, 0, 2, 2, '3819.0', '77.94', '91.84%', '48.98%', '70.53', 22, 7, 8);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000542, '五年级', '3班', '数学', 49, 2, 21, 14, 9, 0, 1, 2, 0, '4122.0', '84.12', '93.88%', '46.94%', '72.18', 22, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000543, '五年级', '3班', '英语', 49, 4, 34, 10, 1, 0, 0, 0, 0, '4533.0', '92.51', '100.00%', '77.55%', '88.77', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000544, '五年级', '4班', '语文', 48, 0, 27, 10, 8, 1, 0, 0, 2, '3905.0', '81.35', '93.75%', '56.25%', '75.03', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000545, '五年级', '4班', '数学', 48, 0, 20, 14, 9, 2, 0, 1, 2, '3858.0', '80.38', '89.58%', '41.67%', '67.66', 22, 8, 8);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000546, '五年级', '4班', '英语', 48, 1, 28, 14, 3, 0, 0, 0, 2, '4214.0', '87.79', '95.83%', '60.42%', '79.25', 22, 8, 8);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000547, '五年级', '5班', '语文', 49, 0, 27, 12, 7, 0, 0, 3, 0, '3983.0', '81.29', '93.88%', '55.10%', '74.59', 22, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000548, '五年级', '5班', '数学', 49, 2, 20, 25, 2, 0, 0, 0, 0, '4352.0', '88.82', '100.00%', '44.90%', '74.61', 22, 4, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000549, '五年级', '5班', '英语', 49, 5, 35, 8, 1, 0, 0, 0, 0, '4612.0', '94.12', '100.00%', '81.63%', '90.89', 22, 3, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000550, '五年级', '6班', '语文', 50, 0, 31, 12, 3, 2, 1, 0, 1, '4190.0', '83.80', '92.00%', '62.00%', '77.54', 22, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000551, '五年级', '6班', '数学', 50, 1, 31, 12, 4, 0, 1, 0, 1, '4404.0', '88.08', '96.00%', '64.00%', '80.82', 22, 2, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000552, '五年级', '6班', '英语', 50, 1, 39, 7, 1, 1, 1, 0, 0, '4570.0', '91.40', '96.00%', '80.00%', '88.22', 22, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000553, '五年级', '7班', '语文', 49, 0, 21, 18, 5, 1, 1, 2, 1, '3924.0', '80.08', '89.80%', '42.86%', '68.11', 22, 8, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000554, '五年级', '7班', '数学', 49, 0, 25, 15, 5, 0, 2, 1, 1, '4163.0', '84.96', '91.84%', '51.02%', '73.45', 22, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000555, '五年级', '7班', '英语', 48, 8, 30, 8, 1, 1, 0, 0, 0, '4475.0', '93.23', '97.92%', '79.17%', '89.01', 22, 4, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000556, '一年级', '1班', '语文', 50, 0, 22, 25, 2, 0, 0, 0, 1, '4291.0', '85.82', '98.00%', '44.00%', '72.75', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000557, '一年级', '1班', '数学', 50, 0, 25, 17, 7, 0, 0, 0, 1, '4284.0', '85.68', '98.00%', '50.00%', '75.1', 22, 2, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000558, '一年级', '2班', '语文', 50, 0, 22, 22, 5, 0, 1, 0, 0, '4275.0', '85.50', '98.00%', '44.00%', '72.65', 22, 2, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000559, '一年级', '2班', '数学', 49, 1, 24, 16, 5, 2, 0, 0, 1, '4170.0', '85.10', '93.88%', '51.02%', '74.1', 22, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000560, '一年级', '3班', '语文', 49, 0, 8, 25, 12, 0, 0, 2, 2, '3819.0', '77.94', '91.84%', '16.33%', '57.47', 22, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000561, '一年级', '3班', '数学', 49, 2, 21, 14, 9, 0, 1, 2, 0, '4122.0', '84.12', '93.88%', '46.94%', '72.18', 22, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000562, '一年级', '4班', '语文', 48, 0, 19, 18, 8, 1, 0, 0, 2, '3905.0', '81.35', '93.75%', '39.58%', '68.36', 22, 3, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000563, '一年级', '4班', '数学', 48, 0, 20, 14, 9, 2, 0, 1, 2, '3858.0', '80.38', '89.58%', '41.67%', '67.66', 22, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000564, '一年级', '5班', '语文', 49, 0, 14, 25, 7, 0, 0, 3, 0, '3983.0', '81.29', '93.88%', '28.57%', '63.98', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000565, '一年级', '5班', '数学', 49, 2, 20, 25, 2, 0, 0, 0, 0, '4352.0', '88.82', '100.00%', '44.90%', '74.61', 22, 3, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000566, '一年级', '6班', '语文', 50, 0, 19, 24, 3, 2, 1, 0, 1, '4190.0', '83.80', '92.00%', '38.00%', '67.94', 22, 4, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000567, '一年级', '6班', '数学', 50, 1, 31, 12, 4, 0, 1, 0, 1, '4404.0', '88.08', '96.00%', '64.00%', '80.82', 22, 1, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000568, '一年级', '7班', '语文', 49, 0, 11, 28, 5, 1, 1, 2, 1, '3924.0', '80.08', '89.80%', '22.45%', '59.94', 22, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000569, '一年级', '7班', '数学', 49, 0, 25, 15, 5, 0, 2, 1, 1, '4163.0', '84.96', '91.84%', '51.02%', '73.45', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000570, '二年级', '1班', '语文', 2, 0, 2, 0, 0, 0, 0, 0, 0, '196.0', '98.00', '100.00%', '100.00%', '99.4', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000571, '二年级', '1班', '数学', 2, 0, 2, 0, 0, 0, 0, 0, 0, '193.0', '96.50', '100.00%', '100.00%', '98.95', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000600, '二年级', '1班', '语文', 50, 0, 22, 25, 2, 0, 0, 0, 1, '4291.0', '85.82', '98.00%', '44.00%', '72.75', 44, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000601, '二年级', '1班', '数学', 50, 0, 25, 17, 7, 0, 0, 0, 1, '4284.0', '85.68', '98.00%', '50.00%', '75.1', 44, 2, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000602, '二年级', '2班', '语文', 50, 0, 22, 22, 5, 0, 1, 0, 0, '4275.0', '85.50', '98.00%', '44.00%', '72.65', 44, 2, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000603, '二年级', '2班', '数学', 49, 1, 24, 16, 5, 2, 0, 0, 1, '4170.0', '85.10', '93.88%', '51.02%', '74.1', 44, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000604, '二年级', '3班', '语文', 49, 0, 8, 25, 12, 0, 0, 2, 2, '3819.0', '77.94', '91.84%', '16.33%', '57.47', 44, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000605, '二年级', '3班', '数学', 49, 2, 21, 14, 9, 0, 1, 2, 0, '4122.0', '84.12', '93.88%', '46.94%', '72.18', 44, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000606, '二年级', '4班', '语文', 48, 0, 19, 18, 8, 1, 0, 0, 2, '3905.0', '81.35', '93.75%', '39.58%', '68.36', 44, 3, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000607, '二年级', '4班', '数学', 48, 0, 20, 14, 9, 2, 0, 1, 2, '3858.0', '80.38', '89.58%', '41.67%', '67.66', 44, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000608, '二年级', '5班', '语文', 49, 0, 14, 25, 7, 0, 0, 3, 0, '3983.0', '81.29', '93.88%', '28.57%', '63.98', 44, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000609, '二年级', '5班', '数学', 49, 2, 20, 25, 2, 0, 0, 0, 0, '4352.0', '88.82', '100.00%', '44.90%', '74.61', 44, 3, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000610, '二年级', '6班', '语文', 50, 0, 19, 24, 3, 2, 1, 0, 1, '4190.0', '83.80', '92.00%', '38.00%', '67.94', 44, 4, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000611, '二年级', '6班', '数学', 50, 1, 31, 12, 4, 0, 1, 0, 1, '4404.0', '88.08', '96.00%', '64.00%', '80.82', 44, 1, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000612, '二年级', '7班', '语文', 49, 0, 11, 28, 5, 1, 1, 2, 1, '3924.0', '80.08', '89.80%', '22.45%', '59.94', 44, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000613, '二年级', '7班', '数学', 49, 0, 25, 15, 5, 0, 2, 1, 1, '4163.0', '84.96', '91.84%', '51.02%', '73.45', 44, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000614, '三年级', '1班', '语文', 50, 0, 38, 9, 2, 0, 0, 0, 1, '4291.0', '85.82', '98.00%', '76.00%', '85.55', 44, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000615, '三年级', '1班', '数学', 50, 0, 25, 17, 7, 0, 0, 0, 1, '4284.0', '85.68', '98.00%', '50.00%', '75.1', 44, 2, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000616, '三年级', '1班', '英语', 50, 2, 42, 5, 0, 0, 0, 0, 1, '4654.0', '93.08', '98.00%', '88.00%', '92.52', 44, 1, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000617, '三年级', '7班', '语文', 49, 0, 21, 18, 5, 1, 1, 2, 1, '3924.0', '80.08', '89.80%', '42.86%', '68.11', 44, 7, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000618, '三年级', '7班', '数学', 49, 0, 25, 15, 5, 0, 2, 1, 1, '4163.0', '84.96', '91.84%', '51.02%', '73.45', 44, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000619, '三年级', '7班', '英语', 48, 8, 30, 8, 1, 1, 0, 0, 0, '4475.0', '93.23', '97.92%', '79.17%', '89.01', 44, 3, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000620, '三年级', '6班', '语文', 50, 0, 31, 12, 3, 2, 1, 0, 1, '4190.0', '83.80', '92.00%', '62.00%', '77.54', 44, 3, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000621, '三年级', '6班', '数学', 50, 1, 31, 12, 4, 0, 1, 0, 1, '4404.0', '88.08', '96.00%', '64.00%', '80.82', 44, 1, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000622, '三年级', '6班', '英语', 50, 1, 39, 7, 1, 1, 1, 0, 0, '4570.0', '91.40', '96.00%', '80.00%', '88.22', 44, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000623, '三年级', '5班', '语文', 49, 0, 27, 12, 7, 0, 0, 3, 0, '3983.0', '81.29', '93.88%', '55.10%', '74.59', 44, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000624, '三年级', '5班', '数学', 49, 2, 20, 25, 2, 0, 0, 0, 0, '4352.0', '88.82', '100.00%', '44.90%', '74.61', 44, 3, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000625, '三年级', '5班', '英语', 49, 5, 35, 8, 1, 0, 0, 0, 0, '4612.0', '94.12', '100.00%', '81.63%', '90.89', 44, 2, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000626, '三年级', '4班', '语文', 48, 0, 27, 10, 8, 1, 0, 0, 2, '3905.0', '81.35', '93.75%', '56.25%', '75.03', 44, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000627, '三年级', '4班', '数学', 48, 0, 20, 14, 9, 2, 0, 1, 2, '3858.0', '80.38', '89.58%', '41.67%', '67.66', 44, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000628, '三年级', '4班', '英语', 48, 1, 28, 14, 3, 0, 0, 0, 2, '4214.0', '87.79', '95.83%', '60.42%', '79.25', 44, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000629, '三年级', '3班', '语文', 49, 0, 24, 9, 12, 0, 0, 2, 2, '3819.0', '77.94', '91.84%', '48.98%', '70.53', 44, 6, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000630, '三年级', '3班', '数学', 49, 2, 21, 14, 9, 0, 1, 2, 0, '4122.0', '84.12', '93.88%', '46.94%', '72.18', 44, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000631, '三年级', '3班', '英语', 49, 4, 34, 10, 1, 0, 0, 0, 0, '4533.0', '92.51', '100.00%', '77.55%', '88.77', 44, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000632, '三年级', '2班', '语文', 50, 0, 31, 13, 5, 0, 1, 0, 0, '4275.0', '85.50', '98.00%', '62.00%', '79.85', 44, 2, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000633, '三年级', '2班', '数学', 49, 1, 24, 16, 5, 2, 0, 0, 1, '4170.0', '85.10', '93.88%', '51.02%', '74.1', 44, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000634, '三年级', '2班', '英语', 50, 1, 35, 11, 2, 0, 0, 0, 1, '4486.0', '89.72', '98.00%', '72.00%', '85.12', 44, 6, 6);

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
INSERT INTO `exam_excellent_score_line` VALUES (00000000002, '数学', 90, '一年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000003, '语文', 90, '二年级');
INSERT INTO `exam_excellent_score_line` VALUES (00000000004, '数学', 90, '二年级');
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
) ENGINE = InnoDB AUTO_INCREMENT = 219 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '年级数据统计情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_grade_statistic
-- ----------------------------
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000168, 50, 49, 23, '98.00%', '46.00%', '74.26', '四年级', '1班', 1, NULL, 22, '13229.0', '88.19%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000169, 49, 46, 22, '93.88%', '44.90%', '72.51', '四年级', '2班', 3, NULL, 22, '12931.0', '87.97%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000170, 49, 45, 20, '91.84%', '40.82%', '69.34', '四年级', '3班', 4, NULL, 22, '12474.0', '84.86%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000171, 48, 43, 16, '89.58%', '33.33%', '65.16', '四年级', '4班', 6, NULL, 22, '11977.0', '83.17%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000172, 49, 46, 16, '93.88%', '32.65%', '67.64', '四年级', '5班', 5, NULL, 22, '12947.0', '88.07%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000173, 50, 46, 24, '92.00%', '48.00%', '73.13', '四年级', '6班', 2, NULL, 22, '13164.0', '87.76%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000174, 48, 42, 13, '87.50%', '27.08%', '63.25', '四年级', '7班', 7, NULL, 22, '12562.0', '87.24%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000175, 1, 1, 1, '100.00%', '100.00%', '97.3', '五年级', '9班', 1, NULL, 22, '273.0', '91.00%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000176, 50, 49, 23, '98.00%', '46.00%', '74.26', '五年级', '1班', 2, NULL, 22, '13229.0', '88.19%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000177, 49, 46, 22, '93.88%', '44.90%', '72.51', '五年级', '2班', 4, NULL, 22, '12931.0', '87.97%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000178, 49, 45, 20, '91.84%', '40.82%', '69.34', '五年级', '3班', 5, NULL, 22, '12474.0', '84.86%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000179, 48, 43, 16, '89.58%', '33.33%', '65.16', '五年级', '4班', 7, NULL, 22, '11977.0', '83.17%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000180, 49, 46, 16, '93.88%', '32.65%', '67.64', '五年级', '5班', 6, NULL, 22, '12947.0', '88.07%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000181, 50, 46, 24, '92.00%', '48.00%', '73.13', '五年级', '6班', 3, NULL, 22, '13164.0', '87.76%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000182, 48, 42, 13, '87.50%', '27.08%', '63.25', '五年级', '7班', 8, NULL, 22, '12562.0', '87.24%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000183, 50, 49, 15, '98.00%', '30.00%', '67.12', '一年级', '1班', 2, NULL, 22, '8575.0', '85.75%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000184, 49, 46, 17, '93.88%', '34.69%', '67.89', '一年级', '2班', 1, NULL, 22, '8445.0', '86.17%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000185, 49, 45, 7, '91.84%', '14.29%', '57.58', '一年级', '3班', 6, NULL, 22, '7941.0', '81.03%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000186, 48, 43, 15, '89.58%', '31.25%', '63.63', '一年级', '4班', 4, NULL, 22, '7763.0', '80.86%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000187, 49, 46, 9, '93.88%', '18.37%', '61.03', '一年级', '5班', 5, NULL, 22, '8335.0', '85.05%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000188, 50, 46, 17, '92.00%', '34.00%', '66.98', '一年级', '6班', 3, NULL, 22, '8594.0', '85.94%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000189, 49, 43, 7, '87.76%', '14.29%', '56.8', '一年级', '7班', 7, NULL, 22, '8087.0', '82.52%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000190, 2, 2, 2, '100.00%', '100.00%', '99.18', '二年级', '1班', 1, NULL, 22, '389.0', '97.25%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000205, 50, 49, 15, '98.00%', '30.00%', '67.12', '二年级', '1班', 2, NULL, 44, '8575.0', '85.75%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000206, 49, 46, 17, '93.88%', '34.69%', '67.89', '二年级', '2班', 1, NULL, 44, '8445.0', '86.17%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000207, 49, 45, 7, '91.84%', '14.29%', '57.58', '二年级', '3班', 6, NULL, 44, '7941.0', '81.03%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000208, 48, 43, 15, '89.58%', '31.25%', '63.63', '二年级', '4班', 4, NULL, 44, '7763.0', '80.86%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000209, 49, 46, 9, '93.88%', '18.37%', '61.03', '二年级', '5班', 5, NULL, 44, '8335.0', '85.05%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000210, 50, 46, 17, '92.00%', '34.00%', '66.98', '二年级', '6班', 3, NULL, 44, '8594.0', '85.94%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000211, 49, 43, 7, '87.76%', '14.29%', '56.8', '二年级', '7班', 7, NULL, 44, '8087.0', '82.52%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000212, 50, 49, 23, '98.00%', '46.00%', '74.26', '三年级', '1班', 1, NULL, 44, '13229.0', '88.19%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000213, 48, 42, 13, '87.50%', '27.08%', '63.25', '三年级', '7班', 7, NULL, 44, '12562.0', '87.24%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000214, 50, 46, 24, '92.00%', '48.00%', '73.13', '三年级', '6班', 2, NULL, 44, '13164.0', '87.76%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000215, 49, 46, 16, '93.88%', '32.65%', '67.64', '三年级', '5班', 5, NULL, 44, '12947.0', '88.07%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000216, 48, 43, 16, '89.58%', '33.33%', '65.16', '三年级', '4班', 6, NULL, 44, '11977.0', '83.17%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000217, 49, 45, 20, '91.84%', '40.82%', '69.34', '三年级', '3班', 4, NULL, 44, '12474.0', '84.86%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000218, 49, 46, 22, '93.88%', '44.90%', '72.51', '三年级', '2班', 3, NULL, 44, '12931.0', '87.97%');

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
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '年级总体情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_grade_summary
-- ----------------------------
INSERT INTO `exam_grade_summary` VALUES (00000000000000000047, '四年级', '语文', 345, '28387.0', '82.28', '93.91%', '57.68%', 21, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000048, '四年级', '数学', 344, '29353.0', '85.33', '94.77%', '50.00%', 18, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000049, '四年级', '英语', 344, '31544.0', '91.70', '97.97%', '77.03%', 7, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000050, '五年级', '语文', 346, '28472.0', '82.29', '93.93%', '57.80%', 21, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000051, '五年级', '数学', 345, '29443.0', '85.34', '94.78%', '50.14%', 18, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000052, '五年级', '英语', 345, '31642.0', '91.72', '97.97%', '77.10%', 7, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000053, '一年级', '语文', 345, '28387.0', '82.28', '93.91%', '33.33%', 21, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000054, '一年级', '数学', 344, '29353.0', '85.33', '94.77%', '50.00%', 18, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000055, '二年级', '语文', 2, '196.0', '98.00', '100.00%', '100.00%', 0, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000056, '二年级', '数学', 2, '193.0', '96.50', '100.00%', '100.00%', 0, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000057, '二年级', '语文', 345, '28387.0', '82.28', '93.91%', '33.33%', 21, 44);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000058, '二年级', '数学', 344, '29353.0', '85.33', '94.77%', '50.00%', 18, 44);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000059, '三年级', '语文', 345, '28387.0', '82.28', '93.91%', '57.68%', 21, 44);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000060, '三年级', '数学', 344, '29353.0', '85.33', '94.77%', '50.00%', 18, 44);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000061, '三年级', '英语', 344, '31544.0', '91.70', '97.97%', '77.03%', 7, 44);

-- ----------------------------
-- Table structure for exam_muitiple_calculation
-- ----------------------------
DROP TABLE IF EXISTS `exam_muitiple_calculation`;
CREATE TABLE `exam_muitiple_calculation`  (
  `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `excellent` int(3) NOT NULL,
  `qualified` int(3) NOT NULL,
  `average` int(3) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '综合分算法表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_muitiple_calculation
-- ----------------------------
INSERT INTO `exam_muitiple_calculation` VALUES (1, 40, 30, 30);
INSERT INTO `exam_muitiple_calculation` VALUES (2, 40, 30, 30);

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
  `total_points` decimal(7, 1) NULL DEFAULT NULL COMMENT '三门总分',
  PRIMARY KEY (`score_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4495 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生分数情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_student_scores
-- ----------------------------
INSERT INTO `exam_student_scores` VALUES (00000000000000000001, '四年级', '1班', '40101', 85.0, 90.0, 98.0, NULL, '2023-04-17 17:41:40', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000002, '四年级', '1班', '40102', 86.0, 83.0, 92.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000003, '四年级', '1班', '40103', 78.0, 85.0, 89.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000004, '四年级', '1班', '40104', 85.0, 92.0, 97.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000005, '四年级', '1班', '40105', 87.0, 89.0, 97.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000006, '四年级', '1班', '40106', 90.0, 93.0, 100.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000007, '四年级', '1班', '40107', 87.0, 80.0, 90.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000008, '四年级', '1班', '40108', 87.0, 95.0, 98.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000009, '四年级', '1班', '40109', 94.0, 69.0, 94.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000010, '四年级', '1班', '40110', 89.0, 94.0, 95.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000011, '四年级', '1班', '40111', 91.0, 80.0, 99.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000012, '四年级', '1班', '40112', 85.0, 95.0, 86.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000013, '四年级', '1班', '40113', 84.0, 87.0, 98.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000014, '四年级', '1班', '40114', 87.0, 90.0, 96.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000015, '四年级', '1班', '40115', 92.0, 97.0, 98.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000016, '四年级', '1班', '40116', 88.0, 73.0, 93.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000017, '四年级', '1班', '40117', 86.0, 92.0, 95.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000018, '四年级', '1班', '40118', 85.0, 78.0, 95.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000019, '四年级', '1班', '40119', 90.0, 98.0, 95.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000020, '四年级', '1班', '40120', 93.0, 89.0, 97.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000021, '四年级', '1班', '40121', 82.0, 74.0, 90.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000022, '四年级', '1班', '40122', 86.0, 79.0, 94.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000023, '四年级', '1班', '40123', 86.0, 93.0, 93.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000024, '四年级', '1班', '40124', 90.0, 96.0, 96.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000025, '四年级', '1班', '40125', 0.0, 0.0, 29.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000026, '四年级', '1班', '40126', 83.0, 73.0, 93.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000027, '四年级', '1班', '40127', 88.0, 87.0, 97.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000028, '四年级', '1班', '40128', 78.0, 80.0, 97.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000029, '四年级', '1班', '40129', 94.0, 87.0, 92.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000030, '四年级', '1班', '40130', 89.0, 96.0, 95.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000031, '四年级', '1班', '40131', 90.0, 94.0, 94.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000032, '四年级', '1班', '40132', 93.0, 95.0, 99.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000033, '四年级', '1班', '40133', 84.0, 90.0, 95.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000034, '四年级', '1班', '40134', 97.0, 91.0, 95.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000035, '四年级', '1班', '40135', 93.0, 96.0, 100.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000036, '四年级', '1班', '40136', 97.0, 96.0, 99.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000037, '四年级', '1班', '40137', 79.0, 71.0, 86.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000038, '四年级', '1班', '40138', 92.0, 74.0, 97.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000039, '四年级', '1班', '40139', 93.0, 97.0, 91.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000040, '四年级', '1班', '40140', 92.0, 91.0, 99.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000041, '四年级', '1班', '40141', 90.0, 92.0, 96.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:55', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000042, '四年级', '1班', '40142', 98.0, 98.0, 95.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000043, '四年级', '1班', '40143', 70.0, 83.0, 92.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000044, '四年级', '1班', '40144', 73.0, 72.0, 87.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000045, '四年级', '1班', '40145', 92.0, 95.0, 94.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000046, '四年级', '1班', '40146', 91.0, 98.0, 95.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000047, '四年级', '1班', '40147', 80.0, 79.0, 90.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000048, '四年级', '1班', '40148', 94.0, 88.0, 97.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000049, '四年级', '1班', '40149', 76.0, 83.0, 79.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000050, '四年级', '1班', '40150', 92.0, 87.0, 96.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000051, '四年级', '2班', '40201', 77.0, 80.0, 87.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000052, '四年级', '2班', '40202', 71.0, 57.0, 60.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000053, '四年级', '2班', '40203', 75.0, 57.0, 83.0, NULL, '2023-04-17 17:41:41', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000054, '四年级', '2班', '40204', 96.0, 95.0, 97.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000055, '四年级', '2班', '40205', 88.0, 97.0, 94.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000056, '四年级', '2班', '40206', 72.0, NULL, 85.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000057, '四年级', '2班', '40207', 92.0, 90.0, 92.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000058, '四年级', '2班', '40208', 84.0, 96.0, 94.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000059, '四年级', '2班', '40209', 95.0, 97.0, 95.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000060, '四年级', '2班', '40210', 77.0, 88.0, 79.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000061, '四年级', '2班', '40211', 90.0, 100.0, 90.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000062, '四年级', '2班', '40212', 90.0, 68.0, 96.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000063, '四年级', '2班', '40213', 80.0, 89.0, 77.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000064, '四年级', '2班', '40214', 89.0, 94.0, 99.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000065, '四年级', '2班', '40215', 80.0, 74.0, 90.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000066, '四年级', '2班', '40216', 91.0, 94.0, 91.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000067, '四年级', '2班', '40217', 96.0, 97.0, 99.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000068, '四年级', '2班', '40218', 92.0, 97.0, 95.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000069, '四年级', '2班', '40219', 91.0, 79.0, 93.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000070, '四年级', '2班', '40220', 94.0, 90.0, 96.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000071, '四年级', '2班', '40221', 96.0, 86.0, 96.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000072, '四年级', '2班', '40222', 93.0, 85.0, 97.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000073, '四年级', '2班', '40223', 95.0, 90.0, 91.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000074, '四年级', '2班', '40224', 79.0, 94.0, 93.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000075, '四年级', '2班', '40225', 84.0, 78.0, 75.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000076, '四年级', '2班', '40226', 83.0, 63.0, 92.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000077, '四年级', '2班', '40227', 87.0, 79.0, 87.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000078, '四年级', '2班', '40228', 88.0, 86.0, 95.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000079, '四年级', '2班', '40229', 82.0, 80.0, 90.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000080, '四年级', '2班', '40230', 90.0, 94.0, 97.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000081, '四年级', '2班', '40231', 91.0, 99.0, 96.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000082, '四年级', '2班', '40232', 87.0, 92.0, 97.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000083, '四年级', '2班', '40233', 85.0, 89.0, 89.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000084, '四年级', '2班', '40234', 91.0, 94.0, 94.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000085, '四年级', '2班', '40235', 93.0, 84.0, 93.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000086, '四年级', '2班', '40236', 70.0, 76.0, 77.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000087, '四年级', '2班', '40237', 83.0, 84.0, 93.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000088, '四年级', '2班', '40238', 90.0, 96.0, 97.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000089, '四年级', '2班', '40239', 92.0, 92.0, 97.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000090, '四年级', '2班', '40240', 89.0, 94.0, 97.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000091, '四年级', '2班', '40241', 89.0, 96.0, 97.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000092, '四年级', '2班', '40242', 72.0, 72.0, 65.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000093, '四年级', '2班', '40243', 91.0, 94.0, 99.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000094, '四年级', '2班', '40244', 95.0, 97.0, 100.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000095, '四年级', '2班', '40245', 94.0, 99.0, 97.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000096, '四年级', '2班', '40246', 84.0, 80.0, 85.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000097, '四年级', '2班', '40247', 82.0, 75.0, 93.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000098, '四年级', '2班', '40248', 85.0, 95.0, 89.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000099, '四年级', '2班', '40249', 61.0, 65.0, 90.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000100, '四年级', '2班', '40250', 54.0, 23.0, 36.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000101, '四年级', '3班', '40301', 72.0, 72.0, 88.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000102, '四年级', '3班', '40302', 89.0, 95.0, 100.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000103, '四年级', '3班', '40303', 99.0, 98.0, 100.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000104, '四年级', '3班', '40304', 87.0, 94.0, 97.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000105, '四年级', '3班', '40305', 44.0, 53.0, 81.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000106, '四年级', '3班', '40306', 62.0, 89.0, 91.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000107, '四年级', '3班', '40307', 85.0, 98.0, 95.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000108, '四年级', '3班', '40308', 89.0, 85.0, 98.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000109, '四年级', '3班', '40309', 76.0, 77.0, 93.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000110, '四年级', '3班', '40310', 90.0, 99.0, 96.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:56', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000111, '四年级', '3班', '40311', 84.0, 94.0, 98.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000112, '四年级', '3班', '40312', 77.0, 88.0, 99.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000113, '四年级', '3班', '40313', 65.0, 68.0, 85.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000114, '四年级', '3班', '40314', 80.0, 75.0, 90.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000115, '四年级', '3班', '40315', 72.0, 62.0, 85.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000116, '四年级', '3班', '40316', 61.0, 75.0, 90.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000117, '四年级', '3班', '40317', 91.0, 95.0, 97.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000118, '四年级', '3班', '40318', 94.0, 93.0, 95.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000119, '四年级', '3班', '40319', 86.0, 94.0, 94.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000120, '四年级', '3班', '40320', 74.0, 73.0, 94.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000121, '四年级', '3班', '40321', 80.0, 87.0, 95.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000122, '四年级', '3班', '40322', 61.0, 62.0, 88.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000123, '四年级', '3班', '40323', 38.0, 66.0, 76.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000124, '四年级', '3班', '40324', 86.0, 94.0, 95.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000125, '四年级', '3班', '40325', 67.0, 74.0, 86.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000126, '四年级', '3班', '40326', 60.0, 79.0, 87.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000127, '四年级', '3班', '40327', 36.0, 43.0, 60.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000128, '四年级', '3班', '40328', 93.0, 89.0, 99.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000129, '四年级', '3班', '40329', 94.0, 98.0, 100.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000130, '四年级', '3班', '40330', 79.0, 87.0, 91.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000131, '四年级', '3班', '40331', 85.0, 92.0, 98.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000132, '四年级', '3班', '40332', 45.0, 46.0, 88.0, NULL, '2023-04-17 17:41:42', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000133, '四年级', '3班', '40333', 66.0, 68.0, 86.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000134, '四年级', '3班', '40334', 69.0, 78.0, 91.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000135, '四年级', '3班', '40335', 87.0, 98.0, 100.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000136, '四年级', '3班', '40336', 85.0, 93.0, 95.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000137, '四年级', '3班', '40337', 82.0, 87.0, 96.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000138, '四年级', '3班', '40338', 63.0, 70.0, 91.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000139, '四年级', '3班', '40339', 95.0, 100.0, 99.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000140, '四年级', '3班', '40340', 91.0, 100.0, 90.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000141, '四年级', '3班', '40341', 86.0, 95.0, 95.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000142, '四年级', '3班', '40342', 89.0, 94.0, 98.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000143, '四年级', '3班', '40343', 89.0, 94.0, 96.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000144, '四年级', '3班', '40344', 88.0, 83.0, 95.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000145, '四年级', '3班', '40345', 89.0, 96.0, 93.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000146, '四年级', '3班', '40346', 87.0, 89.0, 93.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000147, '四年级', '3班', '40347', 84.0, 93.0, 94.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000148, '四年级', '3班', '40348', 88.0, 96.0, 96.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000149, '四年级', '3班', '40349', 80.0, 94.0, 96.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000150, '四年级', '4班', '40401', 89.0, 95.0, 96.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000151, '四年级', '4班', '40402', 90.0, 96.0, 92.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000152, '四年级', '4班', '40403', 90.0, 79.0, 90.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000153, '四年级', '4班', '40404', 73.0, 74.0, 95.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000154, '四年级', '4班', '40405', 96.0, 92.0, 97.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000155, '四年级', '4班', '40406', 85.0, 84.0, 94.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000156, '四年级', '4班', '40407', 83.0, 95.0, 73.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000157, '四年级', '4班', '40408', 91.0, 97.0, 98.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000158, '四年级', '4班', '40409', 73.0, 69.0, 75.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000159, '四年级', '4班', '40410', 74.0, 61.0, 92.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000160, '四年级', '4班', '40411', 88.0, 89.0, 89.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000161, '四年级', '4班', '40412', 62.0, 57.0, 90.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000162, '四年级', '4班', '40413', NULL, NULL, NULL, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000163, '四年级', '4班', '40414', 91.0, 93.0, 98.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000164, '四年级', '4班', '40415', 80.0, 63.0, 87.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000165, '四年级', '4班', '40416', 86.0, 91.0, 95.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000166, '四年级', '4班', '40417', 90.0, 96.0, 94.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000167, '四年级', '4班', '40418', 90.0, 91.0, 99.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000168, '四年级', '4班', '40419', 94.0, 84.0, 98.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000169, '四年级', '4班', '40420', 87.0, 97.0, 96.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000170, '四年级', '4班', '40421', 76.0, 81.0, 88.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000171, '四年级', '4班', '40422', 65.0, 87.0, 71.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000172, '四年级', '4班', '40423', 96.0, 96.0, 100.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000173, '四年级', '4班', '40424', 87.0, 87.0, 88.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:57', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000174, '四年级', '4班', '40425', 93.0, 92.0, 96.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000175, '四年级', '4班', '40426', 85.0, 70.0, 97.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000176, '四年级', '4班', '40427', 80.0, 84.0, 88.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000177, '四年级', '4班', '40428', 90.0, 95.0, 93.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000178, '四年级', '4班', '40429', 92.0, 93.0, 92.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000179, '四年级', '4班', '40430', 59.0, 55.0, 80.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000180, '四年级', '4班', '40431', 82.0, 83.0, 94.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000181, '四年级', '4班', '40432', 91.0, 90.0, 94.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000182, '四年级', '4班', '40433', 22.0, 35.0, 33.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000183, '四年级', '4班', '40434', 90.0, 63.0, 92.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000184, '四年级', '4班', '40435', 81.0, 88.0, 87.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000185, '四年级', '4班', '40436', 81.0, 76.0, 81.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000186, '四年级', '4班', '40437', 92.0, 90.0, 86.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000187, '四年级', '4班', '40438', 60.0, 69.0, 91.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000188, '四年级', '4班', '40439', 83.0, 94.0, 88.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000189, '四年级', '4班', '40440', 69.0, 49.0, 92.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000190, '四年级', '4班', '40441', 84.0, 68.0, 85.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000191, '四年级', '4班', '40442', 23.0, 12.0, 33.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000192, '四年级', '4班', '40443', 79.0, 76.0, 68.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000193, '四年级', '4班', '40444', 92.0, 88.0, 96.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000194, '四年级', '4班', '40445', 88.0, 86.0, 90.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000195, '四年级', '4班', '40446', 95.0, 96.0, 94.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000196, '四年级', '4班', '40447', 71.0, 67.0, 85.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000197, '四年级', '4班', '40448', 94.0, 95.0, 89.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000198, '四年级', '4班', '40449', 93.0, 90.0, 95.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000199, '四年级', '5班', '40501', 86.0, 86.0, 96.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000200, '四年级', '5班', '40502', 85.0, 93.0, 94.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000201, '四年级', '5班', '40503', 77.0, 91.0, 97.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000202, '四年级', '5班', '40504', 80.0, 82.0, 94.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000203, '四年级', '5班', '40505', 92.0, 87.0, 97.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000204, '四年级', '5班', '40506', 87.0, 92.0, 99.0, NULL, '2023-04-17 17:41:43', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000205, '四年级', '5班', '40507', 68.0, 89.0, 90.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000206, '四年级', '5班', '40508', 43.0, 79.0, 72.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000207, '四年级', '5班', '40509', 92.0, 93.0, 99.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000208, '四年级', '5班', '40510', 90.0, 99.0, 97.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000209, '四年级', '5班', '40511', 91.0, 97.0, 97.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000210, '四年级', '5班', '40512', 87.0, 98.0, 96.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000211, '四年级', '5班', '40513', 79.0, 89.0, 97.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000212, '四年级', '5班', '40514', 88.0, 89.0, 88.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000213, '四年级', '5班', '40515', 69.0, 87.0, 89.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000214, '四年级', '5班', '40516', 61.0, 68.0, 91.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000215, '四年级', '5班', '40517', 84.0, 94.0, 93.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000216, '四年级', '5班', '40518', 88.0, 85.0, 96.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000217, '四年级', '5班', '40519', 92.0, 98.0, 100.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000218, '四年级', '5班', '40520', 94.0, 96.0, 96.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000219, '四年级', '5班', '40521', 88.0, 95.0, 89.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000220, '四年级', '5班', '40522', 73.0, 89.0, 90.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000221, '四年级', '5班', '40523', 78.0, 81.0, 93.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000222, '四年级', '5班', '40524', 94.0, 100.0, 100.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000223, '四年级', '5班', '40525', 83.0, 76.0, 93.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000224, '四年级', '5班', '40526', 95.0, 91.0, 97.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000225, '四年级', '5班', '40527', 75.0, 91.0, 92.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000226, '四年级', '5班', '40528', 89.0, 98.0, 98.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000227, '四年级', '5班', '40529', 65.0, 77.0, 89.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000228, '四年级', '5班', '40530', 79.0, 95.0, 96.0, NULL, '2023-04-17 17:41:44', 'admin', '2023-04-17 18:09:58', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000229, '四年级', '5班', '40531', 89.0, 98.0, 100.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000230, '四年级', '5班', '40532', 95.0, 97.0, 100.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000231, '四年级', '5班', '40533', 82.0, 88.0, 98.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000232, '四年级', '5班', '40534', 65.0, 67.0, 84.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000233, '四年级', '5班', '40535', 90.0, 87.0, 99.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000234, '四年级', '5班', '40536', 49.0, 79.0, 76.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000235, '四年级', '5班', '40537', 47.0, 79.0, 85.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000236, '四年级', '5班', '40538', 80.0, 88.0, 94.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000237, '四年级', '5班', '40539', 90.0, 83.0, 98.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000238, '四年级', '5班', '40540', 73.0, 82.0, 85.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000239, '四年级', '5班', '40541', 91.0, 88.0, 99.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000240, '四年级', '5班', '40542', 88.0, 89.0, 95.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000241, '四年级', '5班', '40543', 86.0, 100.0, 97.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000242, '四年级', '5班', '40544', 76.0, 91.0, 94.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000243, '四年级', '5班', '40545', 91.0, 87.0, 99.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000244, '四年级', '5班', '40546', 86.0, 99.0, 99.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000245, '四年级', '5班', '40547', 75.0, 85.0, 97.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000246, '四年级', '5班', '40548', 86.0, 85.0, 98.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000247, '四年级', '5班', '40549', 92.0, 95.0, 100.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000248, '四年级', '6班', '40601', 88.0, 95.0, 92.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000249, '四年级', '6班', '40602', 90.0, 73.0, 93.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000250, '四年级', '6班', '40603', 93.0, 99.0, 98.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000251, '四年级', '6班', '40604', 81.0, 97.0, 83.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000252, '四年级', '6班', '40605', 69.0, 95.0, 91.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000253, '四年级', '6班', '40606', 93.0, 93.0, 97.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000254, '四年级', '6班', '40607', 82.0, 86.0, 96.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000255, '四年级', '6班', '40608', 91.0, 98.0, 99.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000256, '四年级', '6班', '40609', 90.0, 96.0, 93.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000257, '四年级', '6班', '40610', 97.0, 94.0, 97.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000258, '四年级', '6班', '40611', 87.0, 81.0, 92.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000259, '四年级', '6班', '40612', 66.0, 69.0, 89.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000260, '四年级', '6班', '40613', 86.0, 91.0, 92.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000261, '四年级', '6班', '40614', 84.0, 95.0, 91.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000262, '四年级', '6班', '40615', 86.0, 93.0, 92.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000263, '四年级', '6班', '40616', 93.0, 93.0, 93.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000264, '四年级', '6班', '40617', 92.0, 94.0, 97.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000265, '四年级', '6班', '40618', 79.0, 94.0, 77.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000266, '四年级', '6班', '40619', 76.0, 85.0, 96.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000267, '四年级', '6班', '40620', 87.0, 96.0, 95.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000268, '四年级', '6班', '40621', 87.0, 88.0, 80.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000269, '四年级', '6班', '40622', 54.0, 65.0, 90.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000270, '四年级', '6班', '40623', 78.0, 68.0, 88.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000271, '四年级', '6班', '40624', 96.0, 96.0, 98.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000272, '四年级', '6班', '40625', 91.0, 95.0, 100.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000273, '四年级', '6班', '40626', 94.0, 92.0, 93.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000274, '四年级', '6班', '40627', 87.0, 95.0, 98.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000275, '四年级', '6班', '40628', 86.0, 90.0, 89.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000276, '四年级', '6班', '40629', 79.0, 84.0, 91.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000277, '四年级', '6班', '40630', 94.0, 100.0, 98.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000278, '四年级', '6班', '40631', 85.0, 75.0, 97.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000279, '四年级', '6班', '40632', 86.0, 93.0, 98.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000280, '四年级', '6班', '40633', 89.0, 97.0, 95.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000281, '四年级', '6班', '40634', 84.0, 89.0, 95.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000282, '四年级', '6班', '40635', 88.0, 89.0, 94.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000283, '四年级', '6班', '40636', 97.0, 96.0, 98.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000284, '四年级', '6班', '40637', 77.0, 86.0, 97.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:09:59', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000285, '四年级', '6班', '40638', 90.0, 76.0, 89.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000286, '四年级', '6班', '40639', 96.0, 97.0, 99.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000287, '四年级', '6班', '40640', 92.0, 91.0, 97.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000288, '四年级', '6班', '40641', NULL, NULL, NULL, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000289, '四年级', '6班', '40642', 96.0, 98.0, 97.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000290, '四年级', '6班', '40643', 33.0, 38.0, 56.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000291, '四年级', '6班', '40644', 57.0, 51.0, 52.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000292, '四年级', '6班', '40645', 57.0, 87.0, 91.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000293, '四年级', '6班', '40646', 92.0, 98.0, 97.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000294, '四年级', '6班', '40647', 94.0, 93.0, 96.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000295, '四年级', '6班', '40648', 83.0, 88.0, 70.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000296, '四年级', '6班', '40649', 82.0, 92.0, 93.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000297, '四年级', '6班', '40650', 74.0, 90.0, 90.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000298, '四年级', '6班', '40651', 82.0, 90.0, 91.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000299, '四年级', '7班', '40701', 84.0, 99.0, 98.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000300, '四年级', '7班', '40702', 88.0, 88.0, 94.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000301, '四年级', '7班', '40703', 89.0, 72.0, 100.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000302, '四年级', '7班', '40704', 88.0, 95.0, 100.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000303, '四年级', '7班', '40705', 77.0, 96.0, 97.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000304, '四年级', '7班', '40706', 91.0, 94.0, 100.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000305, '四年级', '7班', '40707', 87.0, 89.0, 99.0, NULL, '2023-04-17 17:41:45', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000306, '四年级', '7班', '40708', 57.0, 54.0, 85.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000307, '四年级', '7班', '40709', 88.0, 88.0, 85.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000308, '四年级', '7班', '40710', 77.0, 74.0, 92.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000309, '四年级', '7班', '40711', 77.0, 60.0, 86.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000310, '四年级', '7班', '40712', 73.0, 87.0, 97.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000311, '四年级', '7班', '40713', 83.0, 97.0, 100.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000312, '四年级', '7班', '40714', 91.0, 81.0, 96.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000313, '四年级', '7班', '40715', 80.0, 92.0, 93.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000314, '四年级', '7班', '40716', 82.0, 85.0, 96.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000315, '四年级', '7班', '40717', 94.0, 90.0, 98.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000316, '四年级', '7班', '40718', 94.0, 99.0, 100.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000317, '四年级', '7班', '40719', 84.0, 84.0, 92.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000318, '四年级', '7班', '40720', 43.0, 52.0, 77.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000319, '四年级', '7班', '40721', 95.0, 95.0, 99.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000320, '四年级', '7班', '40722', 80.0, 83.0, 95.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000321, '四年级', '7班', '40723', 90.0, 93.0, 98.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000322, '四年级', '7班', '40724', 93.0, 95.0, 100.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000323, '四年级', '7班', '40725', 83.0, 73.0, 95.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000324, '四年级', '7班', '40726', 80.0, 92.0, 98.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000325, '四年级', '7班', '40727', 85.0, 91.0, 98.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000326, '四年级', '7班', '40728', 45.0, 31.0, NULL, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000327, '四年级', '7班', '40729', 85.0, 94.0, 100.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000328, '四年级', '7班', '40730', 83.0, 93.0, 99.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000329, '四年级', '7班', '40731', 36.0, 76.0, 79.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000330, '四年级', '7班', '40732', 83.0, 98.0, 92.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000331, '四年级', '7班', '40733', 77.0, 94.0, 96.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000332, '四年级', '7班', '40734', 95.0, 85.0, 97.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000333, '四年级', '7班', '40735', 74.0, 99.0, 98.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000334, '四年级', '7班', '40736', 91.0, 89.0, 96.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000335, '四年级', '7班', '40737', 75.0, 99.0, 84.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000336, '四年级', '7班', '40738', 71.0, 47.0, 86.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000337, '四年级', '7班', '40739', 51.0, 86.0, 74.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000338, '四年级', '7班', '40740', 82.0, 97.0, 93.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000339, '四年级', '7班', '40741', 65.0, 82.0, 96.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000340, '四年级', '7班', '40742', 86.0, 93.0, 95.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000341, '四年级', '7班', '40743', 91.0, 90.0, 95.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000342, '四年级', '7班', '40744', 85.0, 94.0, 91.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000343, '四年级', '7班', '40745', 81.0, 90.0, 100.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000344, '四年级', '7班', '40746', 91.0, 84.0, 88.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000345, '四年级', '7班', '40747', 73.0, 70.0, 55.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000346, '四年级', '7班', '40748', 83.0, 79.0, 94.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000347, '四年级', '7班', '40749', 88.0, 95.0, 99.0, NULL, '2023-04-17 17:41:46', 'admin', '2023-04-17 18:10:00', 'admin', 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000692, '五年级', '9班', '50901', 85.0, 90.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', NULL, NULL, 22, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000000693, '五年级', '1班', '50102', 86.0, 83.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 261.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000694, '五年级', '1班', '50103', 78.0, 85.0, 89.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000695, '五年级', '1班', '50104', 85.0, 92.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 274.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000696, '五年级', '1班', '50105', 87.0, 89.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000697, '五年级', '1班', '50106', 90.0, 93.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000698, '五年级', '1班', '50107', 87.0, 80.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000699, '五年级', '1班', '50108', 87.0, 95.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000700, '五年级', '1班', '50109', 94.0, 69.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000701, '五年级', '1班', '50110', 89.0, 94.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000702, '五年级', '1班', '50111', 91.0, 80.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000703, '五年级', '1班', '50112', 85.0, 95.0, 86.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 266.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000704, '五年级', '1班', '50113', 84.0, 87.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000705, '五年级', '1班', '50114', 87.0, 90.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000706, '五年级', '1班', '50115', 92.0, 97.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 287.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000707, '五年级', '1班', '50116', 88.0, 73.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 254.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000708, '五年级', '1班', '50117', 86.0, 92.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000709, '五年级', '1班', '50118', 85.0, 78.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 258.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000710, '五年级', '1班', '50119', 90.0, 98.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000711, '五年级', '1班', '50120', 93.0, 89.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000712, '五年级', '1班', '50121', 82.0, 74.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 246.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000713, '五年级', '1班', '50122', 86.0, 79.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 259.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000714, '五年级', '1班', '50123', 86.0, 93.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000715, '五年级', '1班', '50124', 90.0, 96.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000716, '五年级', '1班', '50125', 0.0, 0.0, 29.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 29.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000717, '五年级', '1班', '50126', 83.0, 73.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 249.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000718, '五年级', '1班', '50127', 88.0, 87.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000719, '五年级', '1班', '50128', 78.0, 80.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 255.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000720, '五年级', '1班', '50129', 94.0, 87.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000721, '五年级', '1班', '50130', 89.0, 96.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000722, '五年级', '1班', '50131', 90.0, 94.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000723, '五年级', '1班', '50132', 93.0, 95.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 287.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000724, '五年级', '1班', '50133', 84.0, 90.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000725, '五年级', '1班', '50134', 97.0, 91.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000726, '五年级', '1班', '50135', 93.0, 96.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 289.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000727, '五年级', '1班', '50136', 97.0, 96.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000728, '五年级', '1班', '50137', 79.0, 71.0, 86.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 236.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000729, '五年级', '1班', '50138', 92.0, 74.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000730, '五年级', '1班', '50139', 93.0, 97.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000731, '五年级', '1班', '50140', 92.0, 91.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000732, '五年级', '1班', '50141', 90.0, 92.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000733, '五年级', '1班', '50142', 98.0, 98.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 291.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000734, '五年级', '1班', '50143', 70.0, 83.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 245.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000735, '五年级', '1班', '50144', 73.0, 72.0, 87.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 232.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000736, '五年级', '1班', '50145', 92.0, 95.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000737, '五年级', '1班', '50146', 91.0, 98.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 284.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000738, '五年级', '1班', '50147', 80.0, 79.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 249.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000739, '五年级', '1班', '50148', 94.0, 88.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000740, '五年级', '1班', '50149', 76.0, 83.0, 79.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 238.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000741, '五年级', '1班', '50150', 92.0, 87.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000742, '五年级', '2班', '50201', 77.0, 80.0, 87.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 244.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000743, '五年级', '2班', '50202', 71.0, 57.0, 60.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000744, '五年级', '2班', '50203', 75.0, 57.0, 83.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 215.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000745, '五年级', '2班', '50204', 96.0, 95.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 288.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000746, '五年级', '2班', '50205', 88.0, 97.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000747, '五年级', '2班', '50206', 72.0, NULL, 85.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 157.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000748, '五年级', '2班', '50207', 92.0, 90.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 274.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000749, '五年级', '2班', '50208', 84.0, 96.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 274.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000750, '五年级', '2班', '50209', 95.0, 97.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 287.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000751, '五年级', '2班', '50210', 77.0, 88.0, 79.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 244.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000752, '五年级', '2班', '50211', 90.0, 100.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000753, '五年级', '2班', '50212', 90.0, 68.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 254.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000754, '五年级', '2班', '50213', 80.0, 89.0, 77.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 246.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000755, '五年级', '2班', '50214', 89.0, 94.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000756, '五年级', '2班', '50215', 80.0, 74.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 244.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000757, '五年级', '2班', '50216', 91.0, 94.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000758, '五年级', '2班', '50217', 96.0, 97.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000759, '五年级', '2班', '50218', 92.0, 97.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 284.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000760, '五年级', '2班', '50219', 91.0, 79.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000761, '五年级', '2班', '50220', 94.0, 90.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000762, '五年级', '2班', '50221', 96.0, 86.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000763, '五年级', '2班', '50222', 93.0, 85.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000764, '五年级', '2班', '50223', 95.0, 90.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000765, '五年级', '2班', '50224', 79.0, 94.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 266.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000766, '五年级', '2班', '50225', 84.0, 78.0, 75.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 237.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000767, '五年级', '2班', '50226', 83.0, 63.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 238.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000768, '五年级', '2班', '50227', 87.0, 79.0, 87.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 253.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000769, '五年级', '2班', '50228', 88.0, 86.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000770, '五年级', '2班', '50229', 82.0, 80.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000771, '五年级', '2班', '50230', 90.0, 94.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000772, '五年级', '2班', '50231', 91.0, 99.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 286.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000773, '五年级', '2班', '50232', 87.0, 92.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000774, '五年级', '2班', '50233', 85.0, 89.0, 89.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000775, '五年级', '2班', '50234', 91.0, 94.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000776, '五年级', '2班', '50235', 93.0, 84.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000777, '五年级', '2班', '50236', 70.0, 76.0, 77.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 223.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000778, '五年级', '2班', '50237', 83.0, 84.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 260.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000779, '五年级', '2班', '50238', 90.0, 96.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000780, '五年级', '2班', '50239', 92.0, 92.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000781, '五年级', '2班', '50240', 89.0, 94.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000782, '五年级', '2班', '50241', 89.0, 96.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000783, '五年级', '2班', '50242', 72.0, 72.0, 65.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 209.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000784, '五年级', '2班', '50243', 91.0, 94.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 284.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000785, '五年级', '2班', '50244', 95.0, 97.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000786, '五年级', '2班', '50245', 94.0, 99.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 290.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000787, '五年级', '2班', '50246', 84.0, 80.0, 85.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 249.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000788, '五年级', '2班', '50247', 82.0, 75.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 250.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000789, '五年级', '2班', '50248', 85.0, 95.0, 89.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000790, '五年级', '2班', '50249', 61.0, 65.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 216.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000791, '五年级', '2班', '50250', 54.0, 23.0, 36.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 113.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000792, '五年级', '3班', '50301', 72.0, 72.0, 88.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 232.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000793, '五年级', '3班', '50302', 89.0, 95.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 284.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000794, '五年级', '3班', '50303', 99.0, 98.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 297.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000795, '五年级', '3班', '50304', 87.0, 94.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000796, '五年级', '3班', '50305', 44.0, 53.0, 81.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000797, '五年级', '3班', '50306', 62.0, 89.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 242.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000798, '五年级', '3班', '50307', 85.0, 98.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000799, '五年级', '3班', '50308', 89.0, 85.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000800, '五年级', '3班', '50309', 76.0, 77.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 246.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000801, '五年级', '3班', '50310', 90.0, 99.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000802, '五年级', '3班', '50311', 84.0, 94.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000803, '五年级', '3班', '50312', 77.0, 88.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 264.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000804, '五年级', '3班', '50313', 65.0, 68.0, 85.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 218.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000805, '五年级', '3班', '50314', 80.0, 75.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 245.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000806, '五年级', '3班', '50315', 72.0, 62.0, 85.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 219.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000807, '五年级', '3班', '50316', 61.0, 75.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 226.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000808, '五年级', '3班', '50317', 91.0, 95.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000809, '五年级', '3班', '50318', 94.0, 93.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000810, '五年级', '3班', '50319', 86.0, 94.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 274.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000811, '五年级', '3班', '50320', 74.0, 73.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 241.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000812, '五年级', '3班', '50321', 80.0, 87.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 262.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000813, '五年级', '3班', '50322', 61.0, 62.0, 88.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 211.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000814, '五年级', '3班', '50323', 38.0, 66.0, 76.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000815, '五年级', '3班', '50324', 86.0, 94.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000816, '五年级', '3班', '50325', 67.0, 74.0, 86.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 227.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000817, '五年级', '3班', '50326', 60.0, 79.0, 87.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 226.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000818, '五年级', '3班', '50327', 36.0, 43.0, 60.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 139.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000819, '五年级', '3班', '50328', 93.0, 89.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000820, '五年级', '3班', '50329', 94.0, 98.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000821, '五年级', '3班', '50330', 79.0, 87.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000822, '五年级', '3班', '50331', 85.0, 92.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000823, '五年级', '3班', '50332', 45.0, 46.0, 88.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000824, '五年级', '3班', '50333', 66.0, 68.0, 86.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 220.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000825, '五年级', '3班', '50334', 69.0, 78.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 238.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000826, '五年级', '3班', '50335', 87.0, 98.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000827, '五年级', '3班', '50336', 85.0, 93.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000828, '五年级', '3班', '50337', 82.0, 87.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000829, '五年级', '3班', '50338', 63.0, 70.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 224.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000830, '五年级', '3班', '50339', 95.0, 100.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 294.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000831, '五年级', '3班', '50340', 91.0, 100.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000832, '五年级', '3班', '50341', 86.0, 95.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000833, '五年级', '3班', '50342', 89.0, 94.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000834, '五年级', '3班', '50343', 89.0, 94.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000835, '五年级', '3班', '50344', 88.0, 83.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 266.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000836, '五年级', '3班', '50345', 89.0, 96.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000837, '五年级', '3班', '50346', 87.0, 89.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000838, '五年级', '3班', '50347', 84.0, 93.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000839, '五年级', '3班', '50348', 88.0, 96.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000840, '五年级', '3班', '50349', 80.0, 94.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000841, '五年级', '4班', '50401', 89.0, 95.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000842, '五年级', '4班', '50402', 90.0, 96.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000843, '五年级', '4班', '50403', 90.0, 79.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 259.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000844, '五年级', '4班', '50404', 73.0, 74.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 242.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000845, '五年级', '4班', '50405', 96.0, 92.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000846, '五年级', '4班', '50406', 85.0, 84.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000847, '五年级', '4班', '50407', 83.0, 95.0, 73.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 251.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000848, '五年级', '4班', '50408', 91.0, 97.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 286.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000849, '五年级', '4班', '50409', 73.0, 69.0, 75.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 217.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000850, '五年级', '4班', '50410', 74.0, 61.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 227.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000851, '五年级', '4班', '50411', 88.0, 89.0, 89.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 266.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000852, '五年级', '4班', '50412', 62.0, 57.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 209.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000853, '五年级', '4班', '50414', 91.0, 93.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000854, '五年级', '4班', '50415', 80.0, 63.0, 87.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 230.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000855, '五年级', '4班', '50416', 86.0, 91.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000856, '五年级', '4班', '50417', 90.0, 96.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000857, '五年级', '4班', '50418', 90.0, 91.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000858, '五年级', '4班', '50419', 94.0, 84.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000859, '五年级', '4班', '50420', 87.0, 97.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000860, '五年级', '4班', '50421', 76.0, 81.0, 88.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 245.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000861, '五年级', '4班', '50422', 65.0, 87.0, 71.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 223.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000862, '五年级', '4班', '50423', 96.0, 96.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000863, '五年级', '4班', '50424', 87.0, 87.0, 88.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 262.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000864, '五年级', '4班', '50425', 93.0, 92.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000865, '五年级', '4班', '50426', 85.0, 70.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000866, '五年级', '4班', '50427', 80.0, 84.0, 88.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000867, '五年级', '4班', '50428', 90.0, 95.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000868, '五年级', '4班', '50429', 92.0, 93.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 277.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000869, '五年级', '4班', '50430', 59.0, 55.0, 80.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 194.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000870, '五年级', '4班', '50431', 82.0, 83.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 259.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000871, '五年级', '4班', '50432', 91.0, 90.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000872, '五年级', '4班', '50433', 22.0, 35.0, 33.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 90.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000873, '五年级', '4班', '50434', 90.0, 63.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 245.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000874, '五年级', '4班', '50435', 81.0, 88.0, 87.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 256.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000875, '五年级', '4班', '50436', 81.0, 76.0, 81.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 238.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000876, '五年级', '4班', '50437', 92.0, 90.0, 86.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 268.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000877, '五年级', '4班', '50438', 60.0, 69.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 220.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000878, '五年级', '4班', '50439', 83.0, 94.0, 88.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000879, '五年级', '4班', '50440', 69.0, 49.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 210.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000880, '五年级', '4班', '50441', 84.0, 68.0, 85.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 237.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000881, '五年级', '4班', '50442', 23.0, 12.0, 33.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 68.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000882, '五年级', '4班', '50443', 79.0, 76.0, 68.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 223.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000883, '五年级', '4班', '50444', 92.0, 88.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000884, '五年级', '4班', '50445', 88.0, 86.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 264.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000885, '五年级', '4班', '50446', 95.0, 96.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000886, '五年级', '4班', '50447', 71.0, 67.0, 85.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 223.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000887, '五年级', '4班', '50448', 94.0, 95.0, 89.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000888, '五年级', '4班', '50449', 93.0, 90.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000889, '五年级', '5班', '50501', 86.0, 86.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 268.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000890, '五年级', '5班', '50502', 85.0, 93.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000891, '五年级', '5班', '50503', 77.0, 91.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000892, '五年级', '5班', '50504', 80.0, 82.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 256.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000893, '五年级', '5班', '50505', 92.0, 87.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000894, '五年级', '5班', '50506', 87.0, 92.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000895, '五年级', '5班', '50507', 68.0, 89.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 247.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000896, '五年级', '5班', '50508', 43.0, 79.0, 72.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 194.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000897, '五年级', '5班', '50509', 92.0, 93.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 284.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000898, '五年级', '5班', '50510', 90.0, 99.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 286.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000899, '五年级', '5班', '50511', 91.0, 97.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000900, '五年级', '5班', '50512', 87.0, 98.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000901, '五年级', '5班', '50513', 79.0, 89.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000902, '五年级', '5班', '50514', 88.0, 89.0, 88.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000903, '五年级', '5班', '50515', 69.0, 87.0, 89.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 245.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000904, '五年级', '5班', '50516', 61.0, 68.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 220.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000905, '五年级', '5班', '50517', 84.0, 94.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000906, '五年级', '5班', '50518', 88.0, 85.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000907, '五年级', '5班', '50519', 92.0, 98.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 290.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000908, '五年级', '5班', '50520', 94.0, 96.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 286.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000909, '五年级', '5班', '50521', 88.0, 95.0, 89.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000910, '五年级', '5班', '50522', 73.0, 89.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000911, '五年级', '5班', '50523', 78.0, 81.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000912, '五年级', '5班', '50524', 94.0, 100.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 294.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000913, '五年级', '5班', '50525', 83.0, 76.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000914, '五年级', '5班', '50526', 95.0, 91.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000915, '五年级', '5班', '50527', 75.0, 91.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 258.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000916, '五年级', '5班', '50528', 89.0, 98.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000917, '五年级', '5班', '50529', 65.0, 77.0, 89.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 231.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000918, '五年级', '5班', '50530', 79.0, 95.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000919, '五年级', '5班', '50531', 89.0, 98.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 287.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000920, '五年级', '5班', '50532', 95.0, 97.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000921, '五年级', '5班', '50533', 82.0, 88.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 268.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000922, '五年级', '5班', '50534', 65.0, 67.0, 84.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 216.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000923, '五年级', '5班', '50535', 90.0, 87.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000924, '五年级', '5班', '50536', 49.0, 79.0, 76.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 204.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000925, '五年级', '5班', '50537', 47.0, 79.0, 85.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 211.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000926, '五年级', '5班', '50538', 80.0, 88.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 262.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000927, '五年级', '5班', '50539', 90.0, 83.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000928, '五年级', '5班', '50540', 73.0, 82.0, 85.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 240.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000929, '五年级', '5班', '50541', 91.0, 88.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000930, '五年级', '5班', '50542', 88.0, 89.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000931, '五年级', '5班', '50543', 86.0, 100.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000932, '五年级', '5班', '50544', 76.0, 91.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 261.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000933, '五年级', '5班', '50545', 91.0, 87.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 277.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000934, '五年级', '5班', '50546', 86.0, 99.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 284.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000935, '五年级', '5班', '50547', 75.0, 85.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000936, '五年级', '5班', '50548', 86.0, 85.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000937, '五年级', '5班', '50549', 92.0, 95.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 287.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000938, '五年级', '6班', '50601', 88.0, 95.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000939, '五年级', '6班', '50602', 90.0, 73.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 256.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000940, '五年级', '6班', '50603', 93.0, 99.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 290.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000941, '五年级', '6班', '50604', 81.0, 97.0, 83.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 261.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000942, '五年级', '6班', '50605', 69.0, 95.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 255.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000943, '五年级', '6班', '50606', 93.0, 93.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000944, '五年级', '6班', '50607', 82.0, 86.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 264.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000945, '五年级', '6班', '50608', 91.0, 98.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 288.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000946, '五年级', '6班', '50609', 90.0, 96.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000947, '五年级', '6班', '50610', 97.0, 94.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 288.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000948, '五年级', '6班', '50611', 87.0, 81.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 260.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000949, '五年级', '6班', '50612', 66.0, 69.0, 89.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 224.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000950, '五年级', '6班', '50613', 86.0, 91.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000951, '五年级', '6班', '50614', 84.0, 95.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000952, '五年级', '6班', '50615', 86.0, 93.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000953, '五年级', '6班', '50616', 93.0, 93.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000954, '五年级', '6班', '50617', 92.0, 94.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000955, '五年级', '6班', '50618', 79.0, 94.0, 77.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 250.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000956, '五年级', '6班', '50619', 76.0, 85.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000957, '五年级', '6班', '50620', 87.0, 96.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000958, '五年级', '6班', '50621', 87.0, 88.0, 80.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 255.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000959, '五年级', '6班', '50622', 54.0, 65.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 209.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000960, '五年级', '6班', '50623', 78.0, 68.0, 88.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 234.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000961, '五年级', '6班', '50624', 96.0, 96.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 290.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000962, '五年级', '6班', '50625', 91.0, 95.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 286.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000963, '五年级', '6班', '50626', 94.0, 92.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000964, '五年级', '6班', '50627', 87.0, 95.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000965, '五年级', '6班', '50628', 86.0, 90.0, 89.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000966, '五年级', '6班', '50629', 79.0, 84.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 254.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000967, '五年级', '6班', '50630', 94.0, 100.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000968, '五年级', '6班', '50631', 85.0, 75.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000969, '五年级', '6班', '50632', 86.0, 93.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 277.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000970, '五年级', '6班', '50633', 89.0, 97.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000971, '五年级', '6班', '50634', 84.0, 89.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 268.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000972, '五年级', '6班', '50635', 88.0, 89.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000973, '五年级', '6班', '50636', 97.0, 96.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 291.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000974, '五年级', '6班', '50637', 77.0, 86.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 260.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000975, '五年级', '6班', '50638', 90.0, 76.0, 89.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 255.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000976, '五年级', '6班', '50639', 96.0, 97.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000977, '五年级', '6班', '50640', 92.0, 91.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000978, '五年级', '6班', '50642', 96.0, 98.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 291.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000979, '五年级', '6班', '50643', 33.0, 38.0, 56.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 127.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000980, '五年级', '6班', '50644', 57.0, 51.0, 52.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 160.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000981, '五年级', '6班', '50645', 57.0, 87.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 235.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000982, '五年级', '6班', '50646', 92.0, 98.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 287.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000983, '五年级', '6班', '50647', 94.0, 93.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000984, '五年级', '6班', '50648', 83.0, 88.0, 70.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 241.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000985, '五年级', '6班', '50649', 82.0, 92.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 267.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000986, '五年级', '6班', '50650', 74.0, 90.0, 90.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 254.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000987, '五年级', '6班', '50651', 82.0, 90.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000988, '五年级', '7班', '50701', 84.0, 99.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000989, '五年级', '7班', '50702', 88.0, 88.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000990, '五年级', '7班', '50703', 89.0, 72.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 261.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000991, '五年级', '7班', '50704', 88.0, 95.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000992, '五年级', '7班', '50705', 77.0, 96.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000993, '五年级', '7班', '50706', 91.0, 94.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000994, '五年级', '7班', '50707', 87.0, 89.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000995, '五年级', '7班', '50708', 57.0, 54.0, 85.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 196.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000996, '五年级', '7班', '50709', 88.0, 88.0, 85.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 261.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000997, '五年级', '7班', '50710', 77.0, 74.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 243.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000998, '五年级', '7班', '50711', 77.0, 60.0, 86.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 223.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000000999, '五年级', '7班', '50712', 73.0, 87.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001000, '五年级', '7班', '50713', 83.0, 97.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001001, '五年级', '7班', '50714', 91.0, 81.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 268.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001002, '五年级', '7班', '50715', 80.0, 92.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001003, '五年级', '7班', '50716', 82.0, 85.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001004, '五年级', '7班', '50717', 94.0, 90.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001005, '五年级', '7班', '50718', 94.0, 99.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 293.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001006, '五年级', '7班', '50719', 84.0, 84.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 260.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001007, '五年级', '7班', '50720', 43.0, 52.0, 77.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 172.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001008, '五年级', '7班', '50721', 95.0, 95.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 289.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001009, '五年级', '7班', '50722', 80.0, 83.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 258.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001010, '五年级', '7班', '50723', 90.0, 93.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001011, '五年级', '7班', '50724', 93.0, 95.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 288.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001012, '五年级', '7班', '50725', 83.0, 73.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 251.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001013, '五年级', '7班', '50726', 80.0, 92.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001014, '五年级', '7班', '50727', 85.0, 91.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 274.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001015, '五年级', '7班', '50728', 45.0, 31.0, NULL, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 76.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001016, '五年级', '7班', '50729', 85.0, 94.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001017, '五年级', '7班', '50730', 83.0, 93.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001018, '五年级', '7班', '50731', 36.0, 76.0, 79.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 191.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001019, '五年级', '7班', '50732', 83.0, 98.0, 92.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001020, '五年级', '7班', '50733', 77.0, 94.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 267.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001021, '五年级', '7班', '50734', 95.0, 85.0, 97.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 277.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001022, '五年级', '7班', '50735', 74.0, 99.0, 98.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001023, '五年级', '7班', '50736', 91.0, 89.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001024, '五年级', '7班', '50737', 75.0, 99.0, 84.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 258.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001025, '五年级', '7班', '50738', 71.0, 47.0, 86.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 204.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001026, '五年级', '7班', '50739', 51.0, 86.0, 74.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 211.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001027, '五年级', '7班', '50740', 82.0, 97.0, 93.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001028, '五年级', '7班', '50741', 65.0, 82.0, 96.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 243.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001029, '五年级', '7班', '50742', 86.0, 93.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 274.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001030, '五年级', '7班', '50743', 91.0, 90.0, 95.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001031, '五年级', '7班', '50744', 85.0, 94.0, 91.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001032, '五年级', '7班', '50745', 81.0, 90.0, 100.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001033, '五年级', '7班', '50746', 91.0, 84.0, 88.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001034, '五年级', '7班', '50747', 73.0, 70.0, 55.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 198.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001035, '五年级', '7班', '50748', 83.0, 79.0, 94.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 256.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001036, '五年级', '7班', '50749', 88.0, 95.0, 99.0, NULL, '2023-04-20 19:25:08', 'admin', '2023-04-27 18:26:51', 'admin', 22, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001043, '五年级', '1班', '50101', 85.0, 90.0, 98.0, NULL, '2023-04-20 19:31:38', 'admin', '2023-04-27 18:26:51', 'admin', 22, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001044, '一年级', '1班', '10101', 85.0, 90.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:30', 'admin', 22, 175.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001045, '一年级', '1班', '10102', 86.0, 83.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 169.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001046, '一年级', '1班', '10103', 78.0, 85.0, 89.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001047, '一年级', '1班', '10104', 85.0, 92.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001048, '一年级', '1班', '10105', 87.0, 89.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001049, '一年级', '1班', '10106', 90.0, 93.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001050, '一年级', '1班', '10107', 87.0, 80.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 167.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001051, '一年级', '1班', '10108', 87.0, 95.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001052, '一年级', '1班', '10109', 94.0, 69.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001053, '一年级', '1班', '10110', 89.0, 94.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001054, '一年级', '1班', '10111', 91.0, 80.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001055, '一年级', '1班', '10112', 85.0, 95.0, 86.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001056, '一年级', '1班', '10113', 84.0, 87.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001057, '一年级', '1班', '10114', 87.0, 90.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001058, '一年级', '1班', '10115', 92.0, 97.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001059, '一年级', '1班', '10116', 88.0, 73.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 161.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001060, '一年级', '1班', '10117', 86.0, 92.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001061, '一年级', '1班', '10118', 85.0, 78.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001062, '一年级', '1班', '10119', 90.0, 98.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001063, '一年级', '1班', '10120', 93.0, 89.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001064, '一年级', '1班', '10121', 82.0, 74.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 156.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001065, '一年级', '1班', '10122', 86.0, 79.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 165.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001066, '一年级', '1班', '10123', 86.0, 93.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001067, '一年级', '1班', '10124', 90.0, 96.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001068, '一年级', '1班', '10125', 0.0, 0.0, 29.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 0.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001069, '一年级', '1班', '10126', 83.0, 73.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 156.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001070, '一年级', '1班', '10127', 88.0, 87.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 175.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001071, '一年级', '1班', '10128', 78.0, 80.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 158.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001072, '一年级', '1班', '10129', 94.0, 87.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001073, '一年级', '1班', '10130', 89.0, 96.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001074, '一年级', '1班', '10131', 90.0, 94.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001075, '一年级', '1班', '10132', 93.0, 95.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001076, '一年级', '1班', '10133', 84.0, 90.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001077, '一年级', '1班', '10134', 97.0, 91.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001078, '一年级', '1班', '10135', 93.0, 96.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001079, '一年级', '1班', '10136', 97.0, 96.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 193.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001080, '一年级', '1班', '10137', 79.0, 71.0, 86.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 150.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001081, '一年级', '1班', '10138', 92.0, 74.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 166.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001082, '一年级', '1班', '10139', 93.0, 97.0, 91.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001083, '一年级', '1班', '10140', 92.0, 91.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001084, '一年级', '1班', '10141', 90.0, 92.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001085, '一年级', '1班', '10142', 98.0, 98.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 196.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001086, '一年级', '1班', '10143', 70.0, 83.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 153.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001087, '一年级', '1班', '10144', 73.0, 72.0, 87.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 145.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001088, '一年级', '1班', '10145', 92.0, 95.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 187.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001089, '一年级', '1班', '10146', 91.0, 98.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001090, '一年级', '1班', '10147', 80.0, 79.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 159.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001091, '一年级', '1班', '10148', 94.0, 88.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001092, '一年级', '1班', '10149', 76.0, 83.0, 79.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 159.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001093, '一年级', '1班', '10150', 92.0, 87.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001094, '一年级', '2班', '10201', 77.0, 80.0, 87.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 157.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001095, '一年级', '2班', '10202', 71.0, 57.0, 60.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 128.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001096, '一年级', '2班', '10203', 75.0, 57.0, 83.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 132.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001097, '一年级', '2班', '10204', 96.0, 95.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 191.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001098, '一年级', '2班', '10205', 88.0, 97.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001099, '一年级', '2班', '10206', 72.0, NULL, 85.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 72.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001100, '一年级', '2班', '10207', 92.0, 90.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001101, '一年级', '2班', '10208', 84.0, 96.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001102, '一年级', '2班', '10209', 95.0, 97.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001103, '一年级', '2班', '10210', 77.0, 88.0, 79.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 165.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001104, '一年级', '2班', '10211', 90.0, 100.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001105, '一年级', '2班', '10212', 90.0, 68.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 158.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001106, '一年级', '2班', '10213', 80.0, 89.0, 77.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 169.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001107, '一年级', '2班', '10214', 89.0, 94.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001108, '一年级', '2班', '10215', 80.0, 74.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 154.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001109, '一年级', '2班', '10216', 91.0, 94.0, 91.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001110, '一年级', '2班', '10217', 96.0, 97.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 193.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001111, '一年级', '2班', '10218', 92.0, 97.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001112, '一年级', '2班', '10219', 91.0, 79.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 170.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001113, '一年级', '2班', '10220', 94.0, 90.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001114, '一年级', '2班', '10221', 96.0, 86.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001115, '一年级', '2班', '10222', 93.0, 85.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001116, '一年级', '2班', '10223', 95.0, 90.0, 91.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001117, '一年级', '2班', '10224', 79.0, 94.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001118, '一年级', '2班', '10225', 84.0, 78.0, 75.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 162.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001119, '一年级', '2班', '10226', 83.0, 63.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 146.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001120, '一年级', '2班', '10227', 87.0, 79.0, 87.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 166.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001121, '一年级', '2班', '10228', 88.0, 86.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001122, '一年级', '2班', '10229', 82.0, 80.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 162.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001123, '一年级', '2班', '10230', 90.0, 94.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001124, '一年级', '2班', '10231', 91.0, 99.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001125, '一年级', '2班', '10232', 87.0, 92.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001126, '一年级', '2班', '10233', 85.0, 89.0, 89.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001127, '一年级', '2班', '10234', 91.0, 94.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001128, '一年级', '2班', '10235', 93.0, 84.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001129, '一年级', '2班', '10236', 70.0, 76.0, 77.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 146.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001130, '一年级', '2班', '10237', 83.0, 84.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 167.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001131, '一年级', '2班', '10238', 90.0, 96.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001132, '一年级', '2班', '10239', 92.0, 92.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001133, '一年级', '2班', '10240', 89.0, 94.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001134, '一年级', '2班', '10241', 89.0, 96.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001135, '一年级', '2班', '10242', 72.0, 72.0, 65.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 144.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001136, '一年级', '2班', '10243', 91.0, 94.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001137, '一年级', '2班', '10244', 95.0, 97.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001138, '一年级', '2班', '10245', 94.0, 99.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 193.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001139, '一年级', '2班', '10246', 84.0, 80.0, 85.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 164.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001140, '一年级', '2班', '10247', 82.0, 75.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 157.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001141, '一年级', '2班', '10248', 85.0, 95.0, 89.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001142, '一年级', '2班', '10249', 61.0, 65.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 126.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001143, '一年级', '2班', '10250', 54.0, 23.0, 36.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 77.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001144, '一年级', '3班', '10301', 72.0, 72.0, 88.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 144.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001145, '一年级', '3班', '10302', 89.0, 95.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001146, '一年级', '3班', '10303', 99.0, 98.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 197.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001147, '一年级', '3班', '10304', 87.0, 94.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001148, '一年级', '3班', '10305', 44.0, 53.0, 81.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 97.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001149, '一年级', '3班', '10306', 62.0, 89.0, 91.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 151.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001150, '一年级', '3班', '10307', 85.0, 98.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001151, '一年级', '3班', '10308', 89.0, 85.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001152, '一年级', '3班', '10309', 76.0, 77.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 153.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001153, '一年级', '3班', '10310', 90.0, 99.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001154, '一年级', '3班', '10311', 84.0, 94.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001155, '一年级', '3班', '10312', 77.0, 88.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 165.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001156, '一年级', '3班', '10313', 65.0, 68.0, 85.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 133.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001157, '一年级', '3班', '10314', 80.0, 75.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 155.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001158, '一年级', '3班', '10315', 72.0, 62.0, 85.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 134.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001159, '一年级', '3班', '10316', 61.0, 75.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 136.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001160, '一年级', '3班', '10317', 91.0, 95.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001161, '一年级', '3班', '10318', 94.0, 93.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 187.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001162, '一年级', '3班', '10319', 86.0, 94.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001163, '一年级', '3班', '10320', 74.0, 73.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 147.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001164, '一年级', '3班', '10321', 80.0, 87.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 167.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001165, '一年级', '3班', '10322', 61.0, 62.0, 88.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 123.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001166, '一年级', '3班', '10323', 38.0, 66.0, 76.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 104.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001167, '一年级', '3班', '10324', 86.0, 94.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001168, '一年级', '3班', '10325', 67.0, 74.0, 86.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 141.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001169, '一年级', '3班', '10326', 60.0, 79.0, 87.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 139.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001170, '一年级', '3班', '10327', 36.0, 43.0, 60.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 79.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001171, '一年级', '3班', '10328', 93.0, 89.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001172, '一年级', '3班', '10329', 94.0, 98.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001173, '一年级', '3班', '10330', 79.0, 87.0, 91.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 166.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001174, '一年级', '3班', '10331', 85.0, 92.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001175, '一年级', '3班', '10332', 45.0, 46.0, 88.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 91.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001176, '一年级', '3班', '10333', 66.0, 68.0, 86.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 134.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001177, '一年级', '3班', '10334', 69.0, 78.0, 91.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 147.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001178, '一年级', '3班', '10335', 87.0, 98.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001179, '一年级', '3班', '10336', 85.0, 93.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001180, '一年级', '3班', '10337', 82.0, 87.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 169.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001181, '一年级', '3班', '10338', 63.0, 70.0, 91.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 133.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001182, '一年级', '3班', '10339', 95.0, 100.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 195.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001183, '一年级', '3班', '10340', 91.0, 100.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 191.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001184, '一年级', '3班', '10341', 86.0, 95.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001185, '一年级', '3班', '10342', 89.0, 94.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001186, '一年级', '3班', '10343', 89.0, 94.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001187, '一年级', '3班', '10344', 88.0, 83.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001188, '一年级', '3班', '10345', 89.0, 96.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001189, '一年级', '3班', '10346', 87.0, 89.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001190, '一年级', '3班', '10347', 84.0, 93.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001191, '一年级', '3班', '10348', 88.0, 96.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001192, '一年级', '3班', '10349', 80.0, 94.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001193, '一年级', '4班', '10401', 89.0, 95.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001194, '一年级', '4班', '10402', 90.0, 96.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001195, '一年级', '4班', '10403', 90.0, 79.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 169.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001196, '一年级', '4班', '10404', 73.0, 74.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 147.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001197, '一年级', '4班', '10405', 96.0, 92.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001198, '一年级', '4班', '10406', 85.0, 84.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 169.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001199, '一年级', '4班', '10407', 83.0, 95.0, 73.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001200, '一年级', '4班', '10408', 91.0, 97.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001201, '一年级', '4班', '10409', 73.0, 69.0, 75.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 142.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001202, '一年级', '4班', '10410', 74.0, 61.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 135.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001203, '一年级', '4班', '10411', 88.0, 89.0, 89.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001204, '一年级', '4班', '10412', 62.0, 57.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 119.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001205, '一年级', '4班', '10414', 91.0, 93.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001206, '一年级', '4班', '10415', 80.0, 63.0, 87.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 143.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001207, '一年级', '4班', '10416', 86.0, 91.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001208, '一年级', '4班', '10417', 90.0, 96.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001209, '一年级', '4班', '10418', 90.0, 91.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001210, '一年级', '4班', '10419', 94.0, 84.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001211, '一年级', '4班', '10420', 87.0, 97.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001212, '一年级', '4班', '10421', 76.0, 81.0, 88.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 157.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001213, '一年级', '4班', '10422', 65.0, 87.0, 71.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 152.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001214, '一年级', '4班', '10423', 96.0, 96.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001215, '一年级', '4班', '10424', 87.0, 87.0, 88.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001216, '一年级', '4班', '10425', 93.0, 92.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001217, '一年级', '4班', '10426', 85.0, 70.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 155.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001218, '一年级', '4班', '10427', 80.0, 84.0, 88.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 164.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001219, '一年级', '4班', '10428', 90.0, 95.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001220, '一年级', '4班', '10429', 92.0, 93.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001221, '一年级', '4班', '10430', 59.0, 55.0, 80.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 114.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001222, '一年级', '4班', '10431', 82.0, 83.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 165.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001223, '一年级', '4班', '10432', 91.0, 90.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001224, '一年级', '4班', '10433', 22.0, 35.0, 33.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 57.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001225, '一年级', '4班', '10434', 90.0, 63.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 153.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001226, '一年级', '4班', '10435', 81.0, 88.0, 87.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 169.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001227, '一年级', '4班', '10436', 81.0, 76.0, 81.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 157.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001228, '一年级', '4班', '10437', 92.0, 90.0, 86.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001229, '一年级', '4班', '10438', 60.0, 69.0, 91.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 129.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001230, '一年级', '4班', '10439', 83.0, 94.0, 88.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001231, '一年级', '4班', '10440', 69.0, 49.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 118.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001232, '一年级', '4班', '10441', 84.0, 68.0, 85.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 152.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001233, '一年级', '4班', '10442', 23.0, 12.0, 33.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 35.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001234, '一年级', '4班', '10443', 79.0, 76.0, 68.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 155.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001235, '一年级', '4班', '10444', 92.0, 88.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001236, '一年级', '4班', '10445', 88.0, 86.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001237, '一年级', '4班', '10446', 95.0, 96.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 191.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001238, '一年级', '4班', '10447', 71.0, 67.0, 85.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 138.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001239, '一年级', '4班', '10448', 94.0, 95.0, 89.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001240, '一年级', '4班', '10449', 93.0, 90.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001241, '一年级', '5班', '10501', 86.0, 86.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 172.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001242, '一年级', '5班', '10502', 85.0, 93.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001243, '一年级', '5班', '10503', 77.0, 91.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 168.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001244, '一年级', '5班', '10504', 80.0, 82.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 162.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001245, '一年级', '5班', '10505', 92.0, 87.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001246, '一年级', '5班', '10506', 87.0, 92.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001247, '一年级', '5班', '10507', 68.0, 89.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 157.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001248, '一年级', '5班', '10508', 43.0, 79.0, 72.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 122.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001249, '一年级', '5班', '10509', 92.0, 93.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001250, '一年级', '5班', '10510', 90.0, 99.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001251, '一年级', '5班', '10511', 91.0, 97.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001252, '一年级', '5班', '10512', 87.0, 98.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001253, '一年级', '5班', '10513', 79.0, 89.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 168.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001254, '一年级', '5班', '10514', 88.0, 89.0, 88.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001255, '一年级', '5班', '10515', 69.0, 87.0, 89.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 156.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001256, '一年级', '5班', '10516', 61.0, 68.0, 91.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 129.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001257, '一年级', '5班', '10517', 84.0, 94.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001258, '一年级', '5班', '10518', 88.0, 85.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001259, '一年级', '5班', '10519', 92.0, 98.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001260, '一年级', '5班', '10520', 94.0, 96.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001261, '一年级', '5班', '10521', 88.0, 95.0, 89.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001262, '一年级', '5班', '10522', 73.0, 89.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 162.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001263, '一年级', '5班', '10523', 78.0, 81.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 159.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001264, '一年级', '5班', '10524', 94.0, 100.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 194.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001265, '一年级', '5班', '10525', 83.0, 76.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 159.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001266, '一年级', '5班', '10526', 95.0, 91.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001267, '一年级', '5班', '10527', 75.0, 91.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 166.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001268, '一年级', '5班', '10528', 89.0, 98.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 187.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001269, '一年级', '5班', '10529', 65.0, 77.0, 89.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 142.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001270, '一年级', '5班', '10530', 79.0, 95.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001271, '一年级', '5班', '10531', 89.0, 98.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 187.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001272, '一年级', '5班', '10532', 95.0, 97.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001273, '一年级', '5班', '10533', 82.0, 88.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 170.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001274, '一年级', '5班', '10534', 65.0, 67.0, 84.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 132.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001275, '一年级', '5班', '10535', 90.0, 87.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001276, '一年级', '5班', '10536', 49.0, 79.0, 76.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 128.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001277, '一年级', '5班', '10537', 47.0, 79.0, 85.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 126.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001278, '一年级', '5班', '10538', 80.0, 88.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 168.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001279, '一年级', '5班', '10539', 90.0, 83.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001280, '一年级', '5班', '10540', 73.0, 82.0, 85.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 155.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001281, '一年级', '5班', '10541', 91.0, 88.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001282, '一年级', '5班', '10542', 88.0, 89.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001283, '一年级', '5班', '10543', 86.0, 100.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001284, '一年级', '5班', '10544', 76.0, 91.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 167.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001285, '一年级', '5班', '10545', 91.0, 87.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001286, '一年级', '5班', '10546', 86.0, 99.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001287, '一年级', '5班', '10547', 75.0, 85.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 160.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001288, '一年级', '5班', '10548', 86.0, 85.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001289, '一年级', '5班', '10549', 92.0, 95.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 187.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001290, '一年级', '6班', '10601', 88.0, 95.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001291, '一年级', '6班', '10602', 90.0, 73.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001292, '一年级', '6班', '10603', 93.0, 99.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001293, '一年级', '6班', '10604', 81.0, 97.0, 83.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001294, '一年级', '6班', '10605', 69.0, 95.0, 91.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 164.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001295, '一年级', '6班', '10606', 93.0, 93.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001296, '一年级', '6班', '10607', 82.0, 86.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 168.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001297, '一年级', '6班', '10608', 91.0, 98.0, 99.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001298, '一年级', '6班', '10609', 90.0, 96.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001299, '一年级', '6班', '10610', 97.0, 94.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 191.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001300, '一年级', '6班', '10611', 87.0, 81.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 168.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001301, '一年级', '6班', '10612', 66.0, 69.0, 89.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 135.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001302, '一年级', '6班', '10613', 86.0, 91.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001303, '一年级', '6班', '10614', 84.0, 95.0, 91.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001304, '一年级', '6班', '10615', 86.0, 93.0, 92.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001305, '一年级', '6班', '10616', 93.0, 93.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001306, '一年级', '6班', '10617', 92.0, 94.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001307, '一年级', '6班', '10618', 79.0, 94.0, 77.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001308, '一年级', '6班', '10619', 76.0, 85.0, 96.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:31', 'admin', 22, 161.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001309, '一年级', '6班', '10620', 87.0, 96.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001310, '一年级', '6班', '10621', 87.0, 88.0, 80.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 175.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001311, '一年级', '6班', '10622', 54.0, 65.0, 90.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 119.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001312, '一年级', '6班', '10623', 78.0, 68.0, 88.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 146.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001313, '一年级', '6班', '10624', 96.0, 96.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001314, '一年级', '6班', '10625', 91.0, 95.0, 100.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001315, '一年级', '6班', '10626', 94.0, 92.0, 93.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001316, '一年级', '6班', '10627', 87.0, 95.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001317, '一年级', '6班', '10628', 86.0, 90.0, 89.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001318, '一年级', '6班', '10629', 79.0, 84.0, 91.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001319, '一年级', '6班', '10630', 94.0, 100.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 194.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001320, '一年级', '6班', '10631', 85.0, 75.0, 97.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 160.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001321, '一年级', '6班', '10632', 86.0, 93.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001322, '一年级', '6班', '10633', 89.0, 97.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001323, '一年级', '6班', '10634', 84.0, 89.0, 95.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001324, '一年级', '6班', '10635', 88.0, 89.0, 94.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001325, '一年级', '6班', '10636', 97.0, 96.0, 98.0, NULL, '2023-04-27 21:29:54', 'admin', '2023-05-01 08:01:32', 'admin', 22, 193.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001326, '一年级', '6班', '10637', 77.0, 86.0, 97.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001327, '一年级', '6班', '10638', 90.0, 76.0, 89.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 166.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001328, '一年级', '6班', '10639', 96.0, 97.0, 99.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 193.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001329, '一年级', '6班', '10640', 92.0, 91.0, 97.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001330, '一年级', '6班', '10642', 96.0, 98.0, 97.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 194.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001331, '一年级', '6班', '10643', 33.0, 38.0, 56.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 71.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001332, '一年级', '6班', '10644', 57.0, 51.0, 52.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 108.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001333, '一年级', '6班', '10645', 57.0, 87.0, 91.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 144.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001334, '一年级', '6班', '10646', 92.0, 98.0, 97.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001335, '一年级', '6班', '10647', 94.0, 93.0, 96.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 187.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001336, '一年级', '6班', '10648', 83.0, 88.0, 70.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001337, '一年级', '6班', '10649', 82.0, 92.0, 93.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001338, '一年级', '6班', '10650', 74.0, 90.0, 90.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 164.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001339, '一年级', '6班', '10651', 82.0, 90.0, 91.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 172.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001340, '一年级', '7班', '10701', 84.0, 99.0, 98.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001341, '一年级', '7班', '10702', 88.0, 88.0, 94.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001342, '一年级', '7班', '10703', 89.0, 72.0, 100.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 161.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001343, '一年级', '7班', '10704', 88.0, 95.0, 100.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001344, '一年级', '7班', '10705', 77.0, 96.0, 97.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001345, '一年级', '7班', '10706', 91.0, 94.0, 100.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001346, '一年级', '7班', '10707', 87.0, 89.0, 99.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001347, '一年级', '7班', '10708', 57.0, 54.0, 85.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 111.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001348, '一年级', '7班', '10709', 88.0, 88.0, 85.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001349, '一年级', '7班', '10710', 77.0, 74.0, 92.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 151.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001350, '一年级', '7班', '10711', 77.0, 60.0, 86.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 137.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001351, '一年级', '7班', '10712', 73.0, 87.0, 97.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 160.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001352, '一年级', '7班', '10713', 83.0, 97.0, 100.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001353, '一年级', '7班', '10714', 91.0, 81.0, 96.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 172.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001354, '一年级', '7班', '10715', 80.0, 92.0, 93.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 172.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001355, '一年级', '7班', '10716', 82.0, 85.0, 96.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 167.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001356, '一年级', '7班', '10717', 94.0, 90.0, 98.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001357, '一年级', '7班', '10718', 94.0, 99.0, 100.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 193.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001358, '一年级', '7班', '10719', 84.0, 84.0, 92.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 168.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001359, '一年级', '7班', '10720', 43.0, 52.0, 77.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 95.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001360, '一年级', '7班', '10721', 95.0, 95.0, 99.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001361, '一年级', '7班', '10722', 80.0, 83.0, 95.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001362, '一年级', '7班', '10723', 90.0, 93.0, 98.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001363, '一年级', '7班', '10724', 93.0, 95.0, 100.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001364, '一年级', '7班', '10725', 83.0, 73.0, 95.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 156.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001365, '一年级', '7班', '10726', 80.0, 92.0, 98.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 172.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001366, '一年级', '7班', '10727', 85.0, 91.0, 98.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001367, '一年级', '7班', '10728', 45.0, 31.0, NULL, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 76.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001368, '一年级', '7班', '10729', 85.0, 94.0, 100.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001369, '一年级', '7班', '10730', 83.0, 93.0, 99.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001370, '一年级', '7班', '10731', 36.0, 76.0, 79.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 112.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001371, '一年级', '7班', '10732', 83.0, 98.0, 92.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001372, '一年级', '7班', '10733', 77.0, 94.0, 96.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001373, '一年级', '7班', '10734', 95.0, 85.0, 97.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001374, '一年级', '7班', '10735', 74.0, 99.0, 98.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001375, '一年级', '7班', '10736', 91.0, 89.0, 96.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001376, '一年级', '7班', '10737', 75.0, 99.0, 84.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001377, '一年级', '7班', '10738', 71.0, 47.0, 86.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 118.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001378, '一年级', '7班', '10739', 51.0, 86.0, 74.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 137.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001379, '一年级', '7班', '10740', 82.0, 97.0, 93.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001380, '一年级', '7班', '10741', 65.0, 82.0, 96.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 147.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001381, '一年级', '7班', '10742', 86.0, 93.0, 95.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001382, '一年级', '7班', '10743', 91.0, 90.0, 95.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001383, '一年级', '7班', '10744', 85.0, 94.0, 91.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001384, '一年级', '7班', '10745', 81.0, 90.0, 100.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001385, '一年级', '7班', '10746', 91.0, 84.0, 88.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 175.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001386, '一年级', '7班', '10747', 73.0, 70.0, 55.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 143.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001387, '一年级', '7班', '10748', 83.0, 79.0, 94.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 162.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001388, '一年级', '7班', '10749', 88.0, 95.0, 99.0, NULL, '2023-04-27 21:29:55', 'admin', '2023-05-01 08:01:32', 'admin', 22, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001390, '二年级', '1班', '20102', 98.0, 97.0, 96.0, NULL, '2023-04-30 22:58:04', 'admin', NULL, NULL, 22, 195.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000001391, '二年级', '1班', '20101', 98.0, 96.0, NULL, NULL, '2023-04-30 23:00:02', 'admin', NULL, NULL, 22, 194.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003805, '二年级', '1班', '10101', 85.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 175.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003806, '二年级', '1班', '10102', 86.0, 83.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 169.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003807, '二年级', '1班', '10103', 78.0, 85.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003808, '二年级', '1班', '10104', 85.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003809, '二年级', '1班', '10105', 87.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003810, '二年级', '1班', '10106', 90.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003811, '二年级', '1班', '10107', 87.0, 80.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 167.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003812, '二年级', '1班', '10108', 87.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003813, '二年级', '1班', '10109', 94.0, 69.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003814, '二年级', '1班', '10110', 89.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003815, '二年级', '1班', '10111', 91.0, 80.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003816, '二年级', '1班', '10112', 85.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003817, '二年级', '1班', '10113', 84.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003818, '二年级', '1班', '10114', 87.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003819, '二年级', '1班', '10115', 92.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003820, '二年级', '1班', '10116', 88.0, 73.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 161.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003821, '二年级', '1班', '10117', 86.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003822, '二年级', '1班', '10118', 85.0, 78.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003823, '二年级', '1班', '10119', 90.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003824, '二年级', '1班', '10120', 93.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003825, '二年级', '1班', '10121', 82.0, 74.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 156.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003826, '二年级', '1班', '10122', 86.0, 79.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 165.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003827, '二年级', '1班', '10123', 86.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003828, '二年级', '1班', '10124', 90.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003829, '二年级', '1班', '10125', 0.0, 0.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 0.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003830, '二年级', '1班', '10126', 83.0, 73.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 156.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003831, '二年级', '1班', '10127', 88.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 175.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003832, '二年级', '1班', '10128', 78.0, 80.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 158.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003833, '二年级', '1班', '10129', 94.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003834, '二年级', '1班', '10130', 89.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003835, '二年级', '1班', '10131', 90.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003836, '二年级', '1班', '10132', 93.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003837, '二年级', '1班', '10133', 84.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003838, '二年级', '1班', '10134', 97.0, 91.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003839, '二年级', '1班', '10135', 93.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003840, '二年级', '1班', '10136', 97.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 193.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003841, '二年级', '1班', '10137', 79.0, 71.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 150.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003842, '二年级', '1班', '10138', 92.0, 74.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 166.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003843, '二年级', '1班', '10139', 93.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003844, '二年级', '1班', '10140', 92.0, 91.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003845, '二年级', '1班', '10141', 90.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003846, '二年级', '1班', '10142', 98.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 196.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003847, '二年级', '1班', '10143', 70.0, 83.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 153.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003848, '二年级', '1班', '10144', 73.0, 72.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 145.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003849, '二年级', '1班', '10145', 92.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 187.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003850, '二年级', '1班', '10146', 91.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003851, '二年级', '1班', '10147', 80.0, 79.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 159.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003852, '二年级', '1班', '10148', 94.0, 88.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003853, '二年级', '1班', '10149', 76.0, 83.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 159.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003854, '二年级', '1班', '10150', 92.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003855, '二年级', '2班', '10201', 77.0, 80.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 157.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003856, '二年级', '2班', '10202', 71.0, 57.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 128.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003857, '二年级', '2班', '10203', 75.0, 57.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 132.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003858, '二年级', '2班', '10204', 96.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 191.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003859, '二年级', '2班', '10205', 88.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003860, '二年级', '2班', '10206', 72.0, NULL, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 72.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003861, '二年级', '2班', '10207', 92.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003862, '二年级', '2班', '10208', 84.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003863, '二年级', '2班', '10209', 95.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003864, '二年级', '2班', '10210', 77.0, 88.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 165.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003865, '二年级', '2班', '10211', 90.0, 100.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003866, '二年级', '2班', '10212', 90.0, 68.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 158.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003867, '二年级', '2班', '10213', 80.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 169.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003868, '二年级', '2班', '10214', 89.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003869, '二年级', '2班', '10215', 80.0, 74.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 154.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003870, '二年级', '2班', '10216', 91.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003871, '二年级', '2班', '10217', 96.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 193.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003872, '二年级', '2班', '10218', 92.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003873, '二年级', '2班', '10219', 91.0, 79.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 170.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003874, '二年级', '2班', '10220', 94.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003875, '二年级', '2班', '10221', 96.0, 86.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003876, '二年级', '2班', '10222', 93.0, 85.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003877, '二年级', '2班', '10223', 95.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003878, '二年级', '2班', '10224', 79.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003879, '二年级', '2班', '10225', 84.0, 78.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 162.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003880, '二年级', '2班', '10226', 83.0, 63.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 146.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003881, '二年级', '2班', '10227', 87.0, 79.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 166.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003882, '二年级', '2班', '10228', 88.0, 86.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003883, '二年级', '2班', '10229', 82.0, 80.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 162.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003884, '二年级', '2班', '10230', 90.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003885, '二年级', '2班', '10231', 91.0, 99.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003886, '二年级', '2班', '10232', 87.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003887, '二年级', '2班', '10233', 85.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003888, '二年级', '2班', '10234', 91.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003889, '二年级', '2班', '10235', 93.0, 84.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003890, '二年级', '2班', '10236', 70.0, 76.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 146.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003891, '二年级', '2班', '10237', 83.0, 84.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 167.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003892, '二年级', '2班', '10238', 90.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003893, '二年级', '2班', '10239', 92.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003894, '二年级', '2班', '10240', 89.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003895, '二年级', '2班', '10241', 89.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003896, '二年级', '2班', '10242', 72.0, 72.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 144.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003897, '二年级', '2班', '10243', 91.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003898, '二年级', '2班', '10244', 95.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003899, '二年级', '2班', '10245', 94.0, 99.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 193.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003900, '二年级', '2班', '10246', 84.0, 80.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 164.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003901, '二年级', '2班', '10247', 82.0, 75.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 157.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003902, '二年级', '2班', '10248', 85.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003903, '二年级', '2班', '10249', 61.0, 65.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 126.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003904, '二年级', '2班', '10250', 54.0, 23.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 77.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003905, '二年级', '3班', '10301', 72.0, 72.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 144.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003906, '二年级', '3班', '10302', 89.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003907, '二年级', '3班', '10303', 99.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 197.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003908, '二年级', '3班', '10304', 87.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003909, '二年级', '3班', '10305', 44.0, 53.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 97.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003910, '二年级', '3班', '10306', 62.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 151.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003911, '二年级', '3班', '10307', 85.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003912, '二年级', '3班', '10308', 89.0, 85.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003913, '二年级', '3班', '10309', 76.0, 77.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 153.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003914, '二年级', '3班', '10310', 90.0, 99.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003915, '二年级', '3班', '10311', 84.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003916, '二年级', '3班', '10312', 77.0, 88.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 165.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003917, '二年级', '3班', '10313', 65.0, 68.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 133.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003918, '二年级', '3班', '10314', 80.0, 75.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 155.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003919, '二年级', '3班', '10315', 72.0, 62.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 134.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003920, '二年级', '3班', '10316', 61.0, 75.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 136.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003921, '二年级', '3班', '10317', 91.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003922, '二年级', '3班', '10318', 94.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 187.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003923, '二年级', '3班', '10319', 86.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003924, '二年级', '3班', '10320', 74.0, 73.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 147.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003925, '二年级', '3班', '10321', 80.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 167.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003926, '二年级', '3班', '10322', 61.0, 62.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 123.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003927, '二年级', '3班', '10323', 38.0, 66.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 104.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003928, '二年级', '3班', '10324', 86.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003929, '二年级', '3班', '10325', 67.0, 74.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 141.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003930, '二年级', '3班', '10326', 60.0, 79.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 139.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003931, '二年级', '3班', '10327', 36.0, 43.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 79.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003932, '二年级', '3班', '10328', 93.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003933, '二年级', '3班', '10329', 94.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003934, '二年级', '3班', '10330', 79.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 166.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003935, '二年级', '3班', '10331', 85.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003936, '二年级', '3班', '10332', 45.0, 46.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 91.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003937, '二年级', '3班', '10333', 66.0, 68.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 134.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003938, '二年级', '3班', '10334', 69.0, 78.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 147.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003939, '二年级', '3班', '10335', 87.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003940, '二年级', '3班', '10336', 85.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003941, '二年级', '3班', '10337', 82.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 169.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003942, '二年级', '3班', '10338', 63.0, 70.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 133.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003943, '二年级', '3班', '10339', 95.0, 100.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 195.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003944, '二年级', '3班', '10340', 91.0, 100.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 191.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003945, '二年级', '3班', '10341', 86.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003946, '二年级', '3班', '10342', 89.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003947, '二年级', '3班', '10343', 89.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003948, '二年级', '3班', '10344', 88.0, 83.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003949, '二年级', '3班', '10345', 89.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003950, '二年级', '3班', '10346', 87.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003951, '二年级', '3班', '10347', 84.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003952, '二年级', '3班', '10348', 88.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003953, '二年级', '3班', '10349', 80.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003954, '二年级', '4班', '10401', 89.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003955, '二年级', '4班', '10402', 90.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003956, '二年级', '4班', '10403', 90.0, 79.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 169.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003957, '二年级', '4班', '10404', 73.0, 74.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 147.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003958, '二年级', '4班', '10405', 96.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003959, '二年级', '4班', '10406', 85.0, 84.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 169.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003960, '二年级', '4班', '10407', 83.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003961, '二年级', '4班', '10408', 91.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003962, '二年级', '4班', '10409', 73.0, 69.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 142.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003963, '二年级', '4班', '10410', 74.0, 61.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 135.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003964, '二年级', '4班', '10411', 88.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003965, '二年级', '4班', '10412', 62.0, 57.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 119.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003966, '二年级', '4班', '10414', 91.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003967, '二年级', '4班', '10415', 80.0, 63.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 143.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003968, '二年级', '4班', '10416', 86.0, 91.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003969, '二年级', '4班', '10417', 90.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003970, '二年级', '4班', '10418', 90.0, 91.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003971, '二年级', '4班', '10419', 94.0, 84.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003972, '二年级', '4班', '10420', 87.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003973, '二年级', '4班', '10421', 76.0, 81.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 157.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003974, '二年级', '4班', '10422', 65.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 152.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003975, '二年级', '4班', '10423', 96.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003976, '二年级', '4班', '10424', 87.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003977, '二年级', '4班', '10425', 93.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003978, '二年级', '4班', '10426', 85.0, 70.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 155.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003979, '二年级', '4班', '10427', 80.0, 84.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 164.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003980, '二年级', '4班', '10428', 90.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003981, '二年级', '4班', '10429', 92.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003982, '二年级', '4班', '10430', 59.0, 55.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 114.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003983, '二年级', '4班', '10431', 82.0, 83.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 165.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003984, '二年级', '4班', '10432', 91.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003985, '二年级', '4班', '10433', 22.0, 35.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 57.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003986, '二年级', '4班', '10434', 90.0, 63.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 153.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003987, '二年级', '4班', '10435', 81.0, 88.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 169.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003988, '二年级', '4班', '10436', 81.0, 76.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 157.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003989, '二年级', '4班', '10437', 92.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003990, '二年级', '4班', '10438', 60.0, 69.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 129.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003991, '二年级', '4班', '10439', 83.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003992, '二年级', '4班', '10440', 69.0, 49.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 118.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003993, '二年级', '4班', '10441', 84.0, 68.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 152.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003994, '二年级', '4班', '10442', 23.0, 12.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 35.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003995, '二年级', '4班', '10443', 79.0, 76.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 155.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003996, '二年级', '4班', '10444', 92.0, 88.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003997, '二年级', '4班', '10445', 88.0, 86.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003998, '二年级', '4班', '10446', 95.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 191.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000003999, '二年级', '4班', '10447', 71.0, 67.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 138.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004000, '二年级', '4班', '10448', 94.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004001, '二年级', '4班', '10449', 93.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004002, '二年级', '5班', '10501', 86.0, 86.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 172.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004003, '二年级', '5班', '10502', 85.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004004, '二年级', '5班', '10503', 77.0, 91.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 168.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004005, '二年级', '5班', '10504', 80.0, 82.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 162.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004006, '二年级', '5班', '10505', 92.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004007, '二年级', '5班', '10506', 87.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004008, '二年级', '5班', '10507', 68.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 157.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004009, '二年级', '5班', '10508', 43.0, 79.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 122.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004010, '二年级', '5班', '10509', 92.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004011, '二年级', '5班', '10510', 90.0, 99.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004012, '二年级', '5班', '10511', 91.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004013, '二年级', '5班', '10512', 87.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004014, '二年级', '5班', '10513', 79.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 168.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004015, '二年级', '5班', '10514', 88.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004016, '二年级', '5班', '10515', 69.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 156.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004017, '二年级', '5班', '10516', 61.0, 68.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 129.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004018, '二年级', '5班', '10517', 84.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004019, '二年级', '5班', '10518', 88.0, 85.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004020, '二年级', '5班', '10519', 92.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004021, '二年级', '5班', '10520', 94.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004022, '二年级', '5班', '10521', 88.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004023, '二年级', '5班', '10522', 73.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 162.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004024, '二年级', '5班', '10523', 78.0, 81.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 159.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004025, '二年级', '5班', '10524', 94.0, 100.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 194.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004026, '二年级', '5班', '10525', 83.0, 76.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 159.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004027, '二年级', '5班', '10526', 95.0, 91.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004028, '二年级', '5班', '10527', 75.0, 91.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 166.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004029, '二年级', '5班', '10528', 89.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 187.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004030, '二年级', '5班', '10529', 65.0, 77.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 142.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004031, '二年级', '5班', '10530', 79.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004032, '二年级', '5班', '10531', 89.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 187.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004033, '二年级', '5班', '10532', 95.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004034, '二年级', '5班', '10533', 82.0, 88.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 170.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004035, '二年级', '5班', '10534', 65.0, 67.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 132.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004036, '二年级', '5班', '10535', 90.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004037, '二年级', '5班', '10536', 49.0, 79.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 128.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004038, '二年级', '5班', '10537', 47.0, 79.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 126.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004039, '二年级', '5班', '10538', 80.0, 88.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 168.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004040, '二年级', '5班', '10539', 90.0, 83.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004041, '二年级', '5班', '10540', 73.0, 82.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 155.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004042, '二年级', '5班', '10541', 91.0, 88.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004043, '二年级', '5班', '10542', 88.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004044, '二年级', '5班', '10543', 86.0, 100.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004045, '二年级', '5班', '10544', 76.0, 91.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 167.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004046, '二年级', '5班', '10545', 91.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004047, '二年级', '5班', '10546', 86.0, 99.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004048, '二年级', '5班', '10547', 75.0, 85.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 160.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004049, '二年级', '5班', '10548', 86.0, 85.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004050, '二年级', '5班', '10549', 92.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 187.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004051, '二年级', '6班', '10601', 88.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004052, '二年级', '6班', '10602', 90.0, 73.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004053, '二年级', '6班', '10603', 93.0, 99.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004054, '二年级', '6班', '10604', 81.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004055, '二年级', '6班', '10605', 69.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 164.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004056, '二年级', '6班', '10606', 93.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004057, '二年级', '6班', '10607', 82.0, 86.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 168.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004058, '二年级', '6班', '10608', 91.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 189.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004059, '二年级', '6班', '10609', 90.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004060, '二年级', '6班', '10610', 97.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 191.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004061, '二年级', '6班', '10611', 87.0, 81.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 168.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004062, '二年级', '6班', '10612', 66.0, 69.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 135.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004063, '二年级', '6班', '10613', 86.0, 91.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004064, '二年级', '6班', '10614', 84.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004065, '二年级', '6班', '10615', 86.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004066, '二年级', '6班', '10616', 93.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004067, '二年级', '6班', '10617', 92.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004068, '二年级', '6班', '10618', 79.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004069, '二年级', '6班', '10619', 76.0, 85.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 161.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004070, '二年级', '6班', '10620', 87.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004071, '二年级', '6班', '10621', 87.0, 88.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 175.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004072, '二年级', '6班', '10622', 54.0, 65.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 119.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004073, '二年级', '6班', '10623', 78.0, 68.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 146.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004074, '二年级', '6班', '10624', 96.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 192.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004075, '二年级', '6班', '10625', 91.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004076, '二年级', '6班', '10626', 94.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004077, '二年级', '6班', '10627', 87.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 182.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004078, '二年级', '6班', '10628', 86.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004079, '二年级', '6班', '10629', 79.0, 84.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004080, '二年级', '6班', '10630', 94.0, 100.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 194.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004081, '二年级', '6班', '10631', 85.0, 75.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 160.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004082, '二年级', '6班', '10632', 86.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004083, '二年级', '6班', '10633', 89.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 186.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004084, '二年级', '6班', '10634', 84.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004085, '二年级', '6班', '10635', 88.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 177.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004086, '二年级', '6班', '10636', 97.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 193.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004087, '二年级', '6班', '10637', 77.0, 86.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004088, '二年级', '6班', '10638', 90.0, 76.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 166.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004089, '二年级', '6班', '10639', 96.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 193.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004090, '二年级', '6班', '10640', 92.0, 91.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004091, '二年级', '6班', '10642', 96.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 194.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004092, '二年级', '6班', '10643', 33.0, 38.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 71.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004093, '二年级', '6班', '10644', 57.0, 51.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 108.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004094, '二年级', '6班', '10645', 57.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 144.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004095, '二年级', '6班', '10646', 92.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004096, '二年级', '6班', '10647', 94.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 187.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004097, '二年级', '6班', '10648', 83.0, 88.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004098, '二年级', '6班', '10649', 82.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004099, '二年级', '6班', '10650', 74.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 164.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004100, '二年级', '6班', '10651', 82.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 172.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004101, '二年级', '7班', '10701', 84.0, 99.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004102, '二年级', '7班', '10702', 88.0, 88.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004103, '二年级', '7班', '10703', 89.0, 72.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 161.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004104, '二年级', '7班', '10704', 88.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004105, '二年级', '7班', '10705', 77.0, 96.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004106, '二年级', '7班', '10706', 91.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 185.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004107, '二年级', '7班', '10707', 87.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004108, '二年级', '7班', '10708', 57.0, 54.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 111.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004109, '二年级', '7班', '10709', 88.0, 88.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004110, '二年级', '7班', '10710', 77.0, 74.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 151.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004111, '二年级', '7班', '10711', 77.0, 60.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 137.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004112, '二年级', '7班', '10712', 73.0, 87.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 160.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004113, '二年级', '7班', '10713', 83.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004114, '二年级', '7班', '10714', 91.0, 81.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 172.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004115, '二年级', '7班', '10715', 80.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 172.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004116, '二年级', '7班', '10716', 82.0, 85.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 167.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004117, '二年级', '7班', '10717', 94.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 184.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004118, '二年级', '7班', '10718', 94.0, 99.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 193.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004119, '二年级', '7班', '10719', 84.0, 84.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 168.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004120, '二年级', '7班', '10720', 43.0, 52.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 95.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004121, '二年级', '7班', '10721', 95.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 190.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004122, '二年级', '7班', '10722', 80.0, 83.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 163.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004123, '二年级', '7班', '10723', 90.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004124, '二年级', '7班', '10724', 93.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004125, '二年级', '7班', '10725', 83.0, 73.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 156.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004126, '二年级', '7班', '10726', 80.0, 92.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 172.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004127, '二年级', '7班', '10727', 85.0, 91.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004128, '二年级', '7班', '10728', 45.0, 31.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 76.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004129, '二年级', '7班', '10729', 85.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004130, '二年级', '7班', '10730', 83.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 176.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004131, '二年级', '7班', '10731', 36.0, 76.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 112.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004132, '二年级', '7班', '10732', 83.0, 98.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004133, '二年级', '7班', '10733', 77.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004134, '二年级', '7班', '10734', 95.0, 85.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004135, '二年级', '7班', '10735', 74.0, 99.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 173.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004136, '二年级', '7班', '10736', 91.0, 89.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004137, '二年级', '7班', '10737', 75.0, 99.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 174.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004138, '二年级', '7班', '10738', 71.0, 47.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 118.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004139, '二年级', '7班', '10739', 51.0, 86.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 137.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004140, '二年级', '7班', '10740', 82.0, 97.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004141, '二年级', '7班', '10741', 65.0, 82.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 147.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004142, '二年级', '7班', '10742', 86.0, 93.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004143, '二年级', '7班', '10743', 91.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 181.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004144, '二年级', '7班', '10744', 85.0, 94.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004145, '二年级', '7班', '10745', 81.0, 90.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 171.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004146, '二年级', '7班', '10746', 91.0, 84.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 175.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004147, '二年级', '7班', '10747', 73.0, 70.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 143.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004148, '二年级', '7班', '10748', 83.0, 79.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 162.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004149, '二年级', '7班', '10749', 88.0, 95.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 183.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004150, '三年级', '1班', 'A0101', 85.0, 90.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004151, '三年级', '7班', 'A0749', 88.0, 95.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004152, '三年级', '7班', 'A0748', 83.0, 79.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 256.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004153, '三年级', '7班', 'A0747', 73.0, 70.0, 55.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 198.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004154, '三年级', '7班', 'A0746', 91.0, 84.0, 88.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004155, '三年级', '7班', 'A0745', 81.0, 90.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004156, '三年级', '7班', 'A0744', 85.0, 94.0, 91.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004157, '三年级', '7班', 'A0743', 91.0, 90.0, 95.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004158, '三年级', '7班', 'A0742', 86.0, 93.0, 95.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 274.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004159, '三年级', '7班', 'A0741', 65.0, 82.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 243.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004160, '三年级', '7班', 'A0740', 82.0, 97.0, 93.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004161, '三年级', '7班', 'A0739', 51.0, 86.0, 74.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 211.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004162, '三年级', '7班', 'A0738', 71.0, 47.0, 86.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 204.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004163, '三年级', '7班', 'A0737', 75.0, 99.0, 84.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 258.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004164, '三年级', '7班', 'A0736', 91.0, 89.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004165, '三年级', '7班', 'A0735', 74.0, 99.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004166, '三年级', '7班', 'A0734', 95.0, 85.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 277.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004167, '三年级', '7班', 'A0733', 77.0, 94.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 267.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004168, '三年级', '7班', 'A0732', 83.0, 98.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004169, '三年级', '7班', 'A0731', 36.0, 76.0, 79.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 191.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004170, '三年级', '7班', 'A0730', 83.0, 93.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004171, '三年级', '7班', 'A0729', 85.0, 94.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004172, '三年级', '7班', 'A0728', 45.0, 31.0, NULL, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 76.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004173, '三年级', '7班', 'A0727', 85.0, 91.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 274.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004174, '三年级', '7班', 'A0726', 80.0, 92.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004175, '三年级', '7班', 'A0725', 83.0, 73.0, 95.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 251.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004176, '三年级', '7班', 'A0724', 93.0, 95.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 288.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004177, '三年级', '7班', 'A0723', 90.0, 93.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004178, '三年级', '7班', 'A0722', 80.0, 83.0, 95.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 258.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004179, '三年级', '7班', 'A0721', 95.0, 95.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 289.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004180, '三年级', '7班', 'A0720', 43.0, 52.0, 77.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 172.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004181, '三年级', '7班', 'A0719', 84.0, 84.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 260.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004182, '三年级', '7班', 'A0718', 94.0, 99.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 293.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004183, '三年级', '7班', 'A0717', 94.0, 90.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004184, '三年级', '7班', 'A0716', 82.0, 85.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004185, '三年级', '7班', 'A0715', 80.0, 92.0, 93.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004186, '三年级', '7班', 'A0714', 91.0, 81.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 268.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004187, '三年级', '7班', 'A0713', 83.0, 97.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004188, '三年级', '7班', 'A0712', 73.0, 87.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004189, '三年级', '7班', 'A0711', 77.0, 60.0, 86.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 223.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004190, '三年级', '7班', 'A0710', 77.0, 74.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 243.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004191, '三年级', '7班', 'A0709', 88.0, 88.0, 85.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 261.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004192, '三年级', '7班', 'A0708', 57.0, 54.0, 85.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 196.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004193, '三年级', '7班', 'A0707', 87.0, 89.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004194, '三年级', '7班', 'A0706', 91.0, 94.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004195, '三年级', '7班', 'A0705', 77.0, 96.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004196, '三年级', '7班', 'A0704', 88.0, 95.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004197, '三年级', '7班', 'A0703', 89.0, 72.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 261.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004198, '三年级', '7班', 'A0702', 88.0, 88.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004199, '三年级', '7班', 'A0701', 84.0, 99.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004200, '三年级', '6班', 'A0651', 82.0, 90.0, 91.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004201, '三年级', '6班', 'A0650', 74.0, 90.0, 90.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 254.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004202, '三年级', '6班', 'A0649', 82.0, 92.0, 93.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 267.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004203, '三年级', '6班', 'A0648', 83.0, 88.0, 70.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 241.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004204, '三年级', '6班', 'A0647', 94.0, 93.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004205, '三年级', '6班', 'A0646', 92.0, 98.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 287.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004206, '三年级', '6班', 'A0645', 57.0, 87.0, 91.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 235.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004207, '三年级', '6班', 'A0644', 57.0, 51.0, 52.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 160.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004208, '三年级', '6班', 'A0643', 33.0, 38.0, 56.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 127.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004209, '三年级', '6班', 'A0642', 96.0, 98.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 291.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004210, '三年级', '6班', 'A0640', 92.0, 91.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004211, '三年级', '6班', 'A0639', 96.0, 97.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004212, '三年级', '6班', 'A0638', 90.0, 76.0, 89.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 255.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004213, '三年级', '6班', 'A0637', 77.0, 86.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 260.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004214, '三年级', '6班', 'A0636', 97.0, 96.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 291.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004215, '三年级', '6班', 'A0635', 88.0, 89.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004216, '三年级', '6班', 'A0634', 84.0, 89.0, 95.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 268.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004217, '三年级', '6班', 'A0633', 89.0, 97.0, 95.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004218, '三年级', '6班', 'A0632', 86.0, 93.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 277.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004219, '三年级', '6班', 'A0631', 85.0, 75.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004220, '三年级', '6班', 'A0630', 94.0, 100.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004221, '三年级', '6班', 'A0629', 79.0, 84.0, 91.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 254.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004222, '三年级', '6班', 'A0628', 86.0, 90.0, 89.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004223, '三年级', '6班', 'A0627', 87.0, 95.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004224, '三年级', '6班', 'A0626', 94.0, 92.0, 93.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004225, '三年级', '6班', 'A0625', 91.0, 95.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 286.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004226, '三年级', '6班', 'A0624', 96.0, 96.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 290.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004227, '三年级', '6班', 'A0623', 78.0, 68.0, 88.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 234.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004228, '三年级', '6班', 'A0622', 54.0, 65.0, 90.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 209.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004229, '三年级', '6班', 'A0621', 87.0, 88.0, 80.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 255.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004230, '三年级', '6班', 'A0620', 87.0, 96.0, 95.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004231, '三年级', '6班', 'A0619', 76.0, 85.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004232, '三年级', '6班', 'A0618', 79.0, 94.0, 77.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 250.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004233, '三年级', '6班', 'A0617', 92.0, 94.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004234, '三年级', '6班', 'A0616', 93.0, 93.0, 93.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004235, '三年级', '6班', 'A0615', 86.0, 93.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004236, '三年级', '6班', 'A0614', 84.0, 95.0, 91.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004237, '三年级', '6班', 'A0613', 86.0, 91.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004238, '三年级', '6班', 'A0612', 66.0, 69.0, 89.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 224.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004239, '三年级', '6班', 'A0611', 87.0, 81.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 260.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004240, '三年级', '6班', 'A0610', 97.0, 94.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 288.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004241, '三年级', '6班', 'A0609', 90.0, 96.0, 93.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004242, '三年级', '6班', 'A0608', 91.0, 98.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 288.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004243, '三年级', '6班', 'A0607', 82.0, 86.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 264.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004244, '三年级', '6班', 'A0606', 93.0, 93.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004245, '三年级', '6班', 'A0605', 69.0, 95.0, 91.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 255.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004246, '三年级', '6班', 'A0604', 81.0, 97.0, 83.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 261.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004247, '三年级', '6班', 'A0603', 93.0, 99.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 290.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004248, '三年级', '6班', 'A0602', 90.0, 73.0, 93.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 256.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004249, '三年级', '6班', 'A0601', 88.0, 95.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004250, '三年级', '5班', 'A0549', 92.0, 95.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 287.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004251, '三年级', '5班', 'A0548', 86.0, 85.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004252, '三年级', '5班', 'A0547', 75.0, 85.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004253, '三年级', '5班', 'A0546', 86.0, 99.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 284.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004254, '三年级', '5班', 'A0545', 91.0, 87.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 277.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004255, '三年级', '5班', 'A0544', 76.0, 91.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 261.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004256, '三年级', '5班', 'A0543', 86.0, 100.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004257, '三年级', '5班', 'A0542', 88.0, 89.0, 95.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004258, '三年级', '5班', 'A0541', 91.0, 88.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004259, '三年级', '5班', 'A0540', 73.0, 82.0, 85.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 240.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004260, '三年级', '5班', 'A0539', 90.0, 83.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004261, '三年级', '5班', 'A0538', 80.0, 88.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 262.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004262, '三年级', '5班', 'A0537', 47.0, 79.0, 85.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 211.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004263, '三年级', '5班', 'A0536', 49.0, 79.0, 76.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 204.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004264, '三年级', '5班', 'A0535', 90.0, 87.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004265, '三年级', '5班', 'A0534', 65.0, 67.0, 84.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 216.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004266, '三年级', '5班', 'A0533', 82.0, 88.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 268.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004267, '三年级', '5班', 'A0532', 95.0, 97.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004268, '三年级', '5班', 'A0531', 89.0, 98.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 287.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004269, '三年级', '5班', 'A0530', 79.0, 95.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004270, '三年级', '5班', 'A0529', 65.0, 77.0, 89.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 231.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004271, '三年级', '5班', 'A0528', 89.0, 98.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004272, '三年级', '5班', 'A0527', 75.0, 91.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 258.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004273, '三年级', '5班', 'A0526', 95.0, 91.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004274, '三年级', '5班', 'A0525', 83.0, 76.0, 93.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004275, '三年级', '5班', 'A0524', 94.0, 100.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 294.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004276, '三年级', '5班', 'A0523', 78.0, 81.0, 93.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004277, '三年级', '5班', 'A0522', 73.0, 89.0, 90.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004278, '三年级', '5班', 'A0521', 88.0, 95.0, 89.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004279, '三年级', '5班', 'A0520', 94.0, 96.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 286.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004280, '三年级', '5班', 'A0519', 92.0, 98.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 290.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004281, '三年级', '5班', 'A0518', 88.0, 85.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004282, '三年级', '5班', 'A0517', 84.0, 94.0, 93.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004283, '三年级', '5班', 'A0516', 61.0, 68.0, 91.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 220.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004284, '三年级', '5班', 'A0515', 69.0, 87.0, 89.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 245.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004285, '三年级', '5班', 'A0514', 88.0, 89.0, 88.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004286, '三年级', '5班', 'A0513', 79.0, 89.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004287, '三年级', '5班', 'A0512', 87.0, 98.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004288, '三年级', '5班', 'A0511', 91.0, 97.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004289, '三年级', '5班', 'A0510', 90.0, 99.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 286.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004290, '三年级', '5班', 'A0509', 92.0, 93.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 284.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004291, '三年级', '5班', 'A0508', 43.0, 79.0, 72.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 194.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004292, '三年级', '5班', 'A0507', 68.0, 89.0, 90.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 247.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004293, '三年级', '5班', 'A0506', 87.0, 92.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004294, '三年级', '5班', 'A0505', 92.0, 87.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004295, '三年级', '5班', 'A0504', 80.0, 82.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 256.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004296, '三年级', '5班', 'A0503', 77.0, 91.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004297, '三年级', '5班', 'A0502', 85.0, 93.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004298, '三年级', '5班', 'A0501', 86.0, 86.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 268.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004299, '三年级', '4班', 'A0449', 93.0, 90.0, 95.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004300, '三年级', '4班', 'A0448', 94.0, 95.0, 89.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004301, '三年级', '4班', 'A0447', 71.0, 67.0, 85.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 223.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004302, '三年级', '4班', 'A0446', 95.0, 96.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004303, '三年级', '4班', 'A0445', 88.0, 86.0, 90.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 264.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004304, '三年级', '4班', 'A0444', 92.0, 88.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004305, '三年级', '4班', 'A0443', 79.0, 76.0, 68.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 223.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004306, '三年级', '4班', 'A0442', 23.0, 12.0, 33.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 68.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004307, '三年级', '4班', 'A0441', 84.0, 68.0, 85.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 237.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004308, '三年级', '4班', 'A0440', 69.0, 49.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 210.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004309, '三年级', '4班', 'A0439', 83.0, 94.0, 88.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004310, '三年级', '4班', 'A0438', 60.0, 69.0, 91.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 220.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004311, '三年级', '4班', 'A0437', 92.0, 90.0, 86.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 268.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004312, '三年级', '4班', 'A0436', 81.0, 76.0, 81.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 238.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004313, '三年级', '4班', 'A0435', 81.0, 88.0, 87.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 256.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004314, '三年级', '4班', 'A0434', 90.0, 63.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 245.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004315, '三年级', '4班', 'A0433', 22.0, 35.0, 33.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 90.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004316, '三年级', '4班', 'A0432', 91.0, 90.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004317, '三年级', '4班', 'A0431', 82.0, 83.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 259.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004318, '三年级', '4班', 'A0430', 59.0, 55.0, 80.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 194.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004319, '三年级', '4班', 'A0429', 92.0, 93.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 277.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004320, '三年级', '4班', 'A0428', 90.0, 95.0, 93.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004321, '三年级', '4班', 'A0427', 80.0, 84.0, 88.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004322, '三年级', '4班', 'A0426', 85.0, 70.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004323, '三年级', '4班', 'A0425', 93.0, 92.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004324, '三年级', '4班', 'A0424', 87.0, 87.0, 88.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 262.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004325, '三年级', '4班', 'A0423', 96.0, 96.0, 100.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004326, '三年级', '4班', 'A0422', 65.0, 87.0, 71.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 223.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004327, '三年级', '4班', 'A0421', 76.0, 81.0, 88.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 245.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004328, '三年级', '4班', 'A0420', 87.0, 97.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004329, '三年级', '4班', 'A0419', 94.0, 84.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004330, '三年级', '4班', 'A0418', 90.0, 91.0, 99.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004331, '三年级', '4班', 'A0417', 90.0, 96.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004332, '三年级', '4班', 'A0416', 86.0, 91.0, 95.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004333, '三年级', '4班', 'A0415', 80.0, 63.0, 87.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 230.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004334, '三年级', '4班', 'A0414', 91.0, 93.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004335, '三年级', '4班', 'A0412', 62.0, 57.0, 90.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 209.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004336, '三年级', '4班', 'A0411', 88.0, 89.0, 89.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 266.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004337, '三年级', '4班', 'A0410', 74.0, 61.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 227.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004338, '三年级', '4班', 'A0409', 73.0, 69.0, 75.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 217.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004339, '三年级', '4班', 'A0408', 91.0, 97.0, 98.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 286.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004340, '三年级', '4班', 'A0407', 83.0, 95.0, 73.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 251.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004341, '三年级', '4班', 'A0406', 85.0, 84.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004342, '三年级', '4班', 'A0405', 96.0, 92.0, 97.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004343, '三年级', '4班', 'A0404', 73.0, 74.0, 95.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 242.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004344, '三年级', '4班', 'A0403', 90.0, 79.0, 90.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 259.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004345, '三年级', '4班', 'A0402', 90.0, 96.0, 92.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004346, '三年级', '4班', 'A0401', 89.0, 95.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004347, '三年级', '3班', 'A0349', 80.0, 94.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004348, '三年级', '3班', 'A0348', 88.0, 96.0, 96.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004349, '三年级', '3班', 'A0347', 84.0, 93.0, 94.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 271.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004350, '三年级', '3班', 'A0346', 87.0, 89.0, 93.0, NULL, '2023-05-04 22:08:15', 'admin', NULL, NULL, 44, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004351, '三年级', '3班', 'A0345', 89.0, 96.0, 93.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004352, '三年级', '3班', 'A0344', 88.0, 83.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 266.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004353, '三年级', '3班', 'A0343', 89.0, 94.0, 96.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004354, '三年级', '3班', 'A0342', 89.0, 94.0, 98.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004355, '三年级', '3班', 'A0341', 86.0, 95.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004356, '三年级', '3班', 'A0340', 91.0, 100.0, 90.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004357, '三年级', '3班', 'A0339', 95.0, 100.0, 99.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 294.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004358, '三年级', '3班', 'A0338', 63.0, 70.0, 91.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 224.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004359, '三年级', '3班', 'A0337', 82.0, 87.0, 96.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 265.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004360, '三年级', '3班', 'A0336', 85.0, 93.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004361, '三年级', '3班', 'A0335', 87.0, 98.0, 100.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004362, '三年级', '3班', 'A0334', 69.0, 78.0, 91.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 238.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004363, '三年级', '3班', 'A0333', 66.0, 68.0, 86.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 220.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004364, '三年级', '3班', 'A0332', 45.0, 46.0, 88.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 179.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004365, '三年级', '3班', 'A0331', 85.0, 92.0, 98.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004366, '三年级', '3班', 'A0330', 79.0, 87.0, 91.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004367, '三年级', '3班', 'A0329', 94.0, 98.0, 100.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004368, '三年级', '3班', 'A0328', 93.0, 89.0, 99.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004369, '三年级', '3班', 'A0327', 36.0, 43.0, 60.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 139.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004370, '三年级', '3班', 'A0326', 60.0, 79.0, 87.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 226.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004371, '三年级', '3班', 'A0325', 67.0, 74.0, 86.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 227.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004372, '三年级', '3班', 'A0324', 86.0, 94.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004373, '三年级', '3班', 'A0323', 38.0, 66.0, 76.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 180.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004374, '三年级', '3班', 'A0322', 61.0, 62.0, 88.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 211.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004375, '三年级', '3班', 'A0321', 80.0, 87.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 262.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004376, '三年级', '3班', 'A0320', 74.0, 73.0, 94.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 241.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004377, '三年级', '3班', 'A0319', 86.0, 94.0, 94.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 274.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004378, '三年级', '3班', 'A0318', 94.0, 93.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004379, '三年级', '3班', 'A0317', 91.0, 95.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004380, '三年级', '3班', 'A0316', 61.0, 75.0, 90.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 226.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004381, '三年级', '3班', 'A0315', 72.0, 62.0, 85.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 219.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004382, '三年级', '3班', 'A0314', 80.0, 75.0, 90.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 245.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004383, '三年级', '3班', 'A0313', 65.0, 68.0, 85.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 218.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004384, '三年级', '3班', 'A0312', 77.0, 88.0, 99.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 264.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004385, '三年级', '3班', 'A0311', 84.0, 94.0, 98.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004386, '三年级', '3班', 'A0310', 90.0, 99.0, 96.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 285.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004387, '三年级', '3班', 'A0309', 76.0, 77.0, 93.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 246.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004388, '三年级', '3班', 'A0308', 89.0, 85.0, 98.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004389, '三年级', '3班', 'A0307', 85.0, 98.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004390, '三年级', '3班', 'A0306', 62.0, 89.0, 91.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 242.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004391, '三年级', '3班', 'A0305', 44.0, 53.0, 81.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 178.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004392, '三年级', '3班', 'A0304', 87.0, 94.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004393, '三年级', '3班', 'A0303', 99.0, 98.0, 100.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 297.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004394, '三年级', '3班', 'A0302', 89.0, 95.0, 100.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 284.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004395, '三年级', '3班', 'A0301', 72.0, 72.0, 88.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 232.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004396, '三年级', '2班', 'A0250', 54.0, 23.0, 36.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 113.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004397, '三年级', '2班', 'A0249', 61.0, 65.0, 90.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 216.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004398, '三年级', '2班', 'A0248', 85.0, 95.0, 89.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004399, '三年级', '2班', 'A0247', 82.0, 75.0, 93.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 250.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004400, '三年级', '2班', 'A0246', 84.0, 80.0, 85.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 249.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004401, '三年级', '2班', 'A0245', 94.0, 99.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 290.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004402, '三年级', '2班', 'A0244', 95.0, 97.0, 100.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004403, '三年级', '2班', 'A0243', 91.0, 94.0, 99.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 284.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004404, '三年级', '2班', 'A0242', 72.0, 72.0, 65.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 209.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004405, '三年级', '2班', 'A0241', 89.0, 96.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004406, '三年级', '2班', 'A0240', 89.0, 94.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004407, '三年级', '2班', 'A0239', 92.0, 92.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004408, '三年级', '2班', 'A0238', 90.0, 96.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004409, '三年级', '2班', 'A0237', 83.0, 84.0, 93.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 260.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004410, '三年级', '2班', 'A0236', 70.0, 76.0, 77.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 223.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004411, '三年级', '2班', 'A0235', 93.0, 84.0, 93.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004412, '三年级', '2班', 'A0234', 91.0, 94.0, 94.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004413, '三年级', '2班', 'A0233', 85.0, 89.0, 89.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004414, '三年级', '2班', 'A0232', 87.0, 92.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004415, '三年级', '2班', 'A0231', 91.0, 99.0, 96.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 286.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004416, '三年级', '2班', 'A0230', 90.0, 94.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004417, '三年级', '2班', 'A0229', 82.0, 80.0, 90.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004418, '三年级', '2班', 'A0228', 88.0, 86.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004419, '三年级', '2班', 'A0227', 87.0, 79.0, 87.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 253.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004420, '三年级', '2班', 'A0226', 83.0, 63.0, 92.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 238.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004421, '三年级', '2班', 'A0225', 84.0, 78.0, 75.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 237.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004422, '三年级', '2班', 'A0224', 79.0, 94.0, 93.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 266.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004423, '三年级', '2班', 'A0223', 95.0, 90.0, 91.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004424, '三年级', '2班', 'A0222', 93.0, 85.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004425, '三年级', '2班', 'A0221', 96.0, 86.0, 96.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004426, '三年级', '2班', 'A0220', 94.0, 90.0, 96.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004427, '三年级', '2班', 'A0219', 91.0, 79.0, 93.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004428, '三年级', '2班', 'A0218', 92.0, 97.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 284.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004429, '三年级', '2班', 'A0217', 96.0, 97.0, 99.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004430, '三年级', '2班', 'A0216', 91.0, 94.0, 91.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 276.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004431, '三年级', '2班', 'A0215', 80.0, 74.0, 90.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 244.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004432, '三年级', '2班', 'A0214', 89.0, 94.0, 99.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004433, '三年级', '2班', 'A0213', 80.0, 89.0, 77.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 246.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004434, '三年级', '2班', 'A0212', 90.0, 68.0, 96.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 254.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004435, '三年级', '2班', 'A0211', 90.0, 100.0, 90.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004436, '三年级', '2班', 'A0210', 77.0, 88.0, 79.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 244.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004437, '三年级', '2班', 'A0209', 95.0, 97.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 287.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004438, '三年级', '2班', 'A0208', 84.0, 96.0, 94.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 274.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004439, '三年级', '2班', 'A0207', 92.0, 90.0, 92.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 274.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004440, '三年级', '2班', 'A0206', 72.0, NULL, 85.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 157.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004441, '三年级', '2班', 'A0205', 88.0, 97.0, 94.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004442, '三年级', '2班', 'A0204', 96.0, 95.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 288.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004443, '三年级', '2班', 'A0203', 75.0, 57.0, 83.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 215.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004444, '三年级', '2班', 'A0202', 71.0, 57.0, 60.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 188.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004445, '三年级', '2班', 'A0201', 77.0, 80.0, 87.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 244.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004446, '三年级', '1班', 'A0150', 92.0, 87.0, 96.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 275.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004447, '三年级', '1班', 'A0149', 76.0, 83.0, 79.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 238.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004448, '三年级', '1班', 'A0148', 94.0, 88.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004449, '三年级', '1班', 'A0147', 80.0, 79.0, 90.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 249.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004450, '三年级', '1班', 'A0146', 91.0, 98.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 284.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004451, '三年级', '1班', 'A0145', 92.0, 95.0, 94.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004452, '三年级', '1班', 'A0144', 73.0, 72.0, 87.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 232.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004453, '三年级', '1班', 'A0143', 70.0, 83.0, 92.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 245.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004454, '三年级', '1班', 'A0142', 98.0, 98.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 291.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004455, '三年级', '1班', 'A0141', 90.0, 92.0, 96.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004456, '三年级', '1班', 'A0140', 92.0, 91.0, 99.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004457, '三年级', '1班', 'A0139', 93.0, 97.0, 91.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 281.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004458, '三年级', '1班', 'A0138', 92.0, 74.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 263.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004459, '三年级', '1班', 'A0137', 79.0, 71.0, 86.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 236.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004460, '三年级', '1班', 'A0136', 97.0, 96.0, 99.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 292.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004461, '三年级', '1班', 'A0135', 93.0, 96.0, 100.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 289.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004462, '三年级', '1班', 'A0134', 97.0, 91.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004463, '三年级', '1班', 'A0133', 84.0, 90.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004464, '三年级', '1班', 'A0132', 93.0, 95.0, 99.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 287.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004465, '三年级', '1班', 'A0131', 90.0, 94.0, 94.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004466, '三年级', '1班', 'A0130', 89.0, 96.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004467, '三年级', '1班', 'A0129', 94.0, 87.0, 92.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004468, '三年级', '1班', 'A0128', 78.0, 80.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 255.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004469, '三年级', '1班', 'A0127', 88.0, 87.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004470, '三年级', '1班', 'A0126', 83.0, 73.0, 93.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 249.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004471, '三年级', '1班', 'A0125', 0.0, 0.0, 29.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 29.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004472, '三年级', '1班', 'A0124', 90.0, 96.0, 96.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 282.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004473, '三年级', '1班', 'A0123', 86.0, 93.0, 93.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 272.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004474, '三年级', '1班', 'A0122', 86.0, 79.0, 94.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 259.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004475, '三年级', '1班', 'A0121', 82.0, 74.0, 90.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 246.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004476, '三年级', '1班', 'A0120', 93.0, 89.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 279.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004477, '三年级', '1班', 'A0119', 90.0, 98.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004478, '三年级', '1班', 'A0118', 85.0, 78.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 258.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004479, '三年级', '1班', 'A0117', 86.0, 92.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004480, '三年级', '1班', 'A0116', 88.0, 73.0, 93.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 254.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004481, '三年级', '1班', 'A0115', 92.0, 97.0, 98.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 287.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004482, '三年级', '1班', 'A0114', 87.0, 90.0, 96.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004483, '三年级', '1班', 'A0113', 84.0, 87.0, 98.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 269.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004484, '三年级', '1班', 'A0112', 85.0, 95.0, 86.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 266.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004485, '三年级', '1班', 'A0111', 91.0, 80.0, 99.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 270.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004486, '三年级', '1班', 'A0110', 89.0, 94.0, 95.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 278.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004487, '三年级', '1班', 'A0109', 94.0, 69.0, 94.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004488, '三年级', '1班', 'A0108', 87.0, 95.0, 98.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 280.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004489, '三年级', '1班', 'A0107', 87.0, 80.0, 90.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 257.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004490, '三年级', '1班', 'A0106', 90.0, 93.0, 100.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 283.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004491, '三年级', '1班', 'A0105', 87.0, 89.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 273.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004492, '三年级', '1班', 'A0104', 85.0, 92.0, 97.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 274.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004493, '三年级', '1班', 'A0103', 78.0, 85.0, 89.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 252.0);
INSERT INTO `exam_student_scores` VALUES (00000000000000004494, '三年级', '1班', 'A0102', 86.0, 83.0, 92.0, NULL, '2023-05-04 22:08:16', 'admin', NULL, NULL, 44, 261.0);

-- ----------------------------
-- Table structure for exam_sys_title_name
-- ----------------------------
DROP TABLE IF EXISTS `exam_sys_title_name`;
CREATE TABLE `exam_sys_title_name`  (
  `id` tinyint(1) NOT NULL,
  `title_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网站标题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_sys_title_name
-- ----------------------------
INSERT INTO `exam_sys_title_name` VALUES (1, '爱家小学成绩系统');

-- ----------------------------
-- Table structure for exam_temp_chinese_score
-- ----------------------------
DROP TABLE IF EXISTS `exam_temp_chinese_score`;
CREATE TABLE `exam_temp_chinese_score`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chinese_score` decimal(7, 1) NULL DEFAULT NULL COMMENT '得分',
  `exam_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考试号',
  `exam_id` bigint(20) NULL DEFAULT NULL COMMENT '考试ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '录入时间',
  `create_by` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '录入者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_temp_chinese_score
-- ----------------------------
INSERT INTO `exam_temp_chinese_score` VALUES (23, 77.0, '10104', 44, '2023-05-07 11:24:03', 'admin');
INSERT INTO `exam_temp_chinese_score` VALUES (24, 35.0, '10103', 44, '2023-05-07 11:24:03', 'admin');
INSERT INTO `exam_temp_chinese_score` VALUES (25, 33.0, '10102', 44, '2023-05-07 11:24:03', 'admin');
INSERT INTO `exam_temp_chinese_score` VALUES (26, NULL, '10101', 44, '2023-05-07 11:24:03', 'admin');

-- ----------------------------
-- Table structure for exam_temp_english_score
-- ----------------------------
DROP TABLE IF EXISTS `exam_temp_english_score`;
CREATE TABLE `exam_temp_english_score`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `english_score` decimal(7, 1) NULL DEFAULT NULL COMMENT '得分',
  `exam_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考试号',
  `exam_id` bigint(20) NULL DEFAULT NULL COMMENT '考试ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '录入时间',
  `create_by` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '录入者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_temp_english_score
-- ----------------------------
INSERT INTO `exam_temp_english_score` VALUES (1, NULL, '20103', 44, '2023-05-07 10:13:51', 'admin');
INSERT INTO `exam_temp_english_score` VALUES (2, 33.0, '20102', 44, '2023-05-07 10:13:51', 'admin');
INSERT INTO `exam_temp_english_score` VALUES (3, 222.0, '20101', 44, '2023-05-07 10:13:51', 'admin');

-- ----------------------------
-- Table structure for exam_temp_maths_score
-- ----------------------------
DROP TABLE IF EXISTS `exam_temp_maths_score`;
CREATE TABLE `exam_temp_maths_score`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `maths_score` decimal(7, 1) NULL DEFAULT NULL COMMENT '得分',
  `exam_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考试号',
  `exam_id` bigint(20) NULL DEFAULT NULL COMMENT '考试ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '录入时间',
  `create_by` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '录入者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_temp_maths_score
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
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '各种考试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exams
-- ----------------------------
INSERT INTO `exams` VALUES (00000000000000000022, '202303', '2023-04-04 19:18:59', 'admin', '1');
INSERT INTO `exams` VALUES (00000000000000000023, '特测01', '2023-05-04 19:33:02', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000024, '特测22', '2023-05-04 19:33:07', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000025, '土地款33', '2023-05-04 19:33:12', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000026, '55555', '2023-05-04 20:00:34', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000027, '66666', '2023-05-04 20:00:37', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000028, '77777', '2023-05-04 20:00:40', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000029, '88888', '2023-05-04 20:00:43', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000030, '99999', '2023-05-04 20:08:08', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000031, '10101010', '2023-05-04 20:08:12', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000032, '1111111', '2023-05-04 20:08:16', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000033, '哈哈哈', '2023-05-04 20:28:24', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000034, '啊啊啊', '2023-05-04 20:28:27', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000035, '是是是是', '2023-05-04 20:28:30', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000036, '大大大大', '2023-05-04 20:28:33', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000037, '翘曲器', '2023-05-04 20:28:36', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000038, '嗡嗡嗡嗡', '2023-05-04 20:28:39', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000039, '呃呃呃呃', '2023-05-04 20:28:42', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000040, '日日日融入', '2023-05-04 20:28:45', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000041, '他吞吞吐吐', '2023-05-04 20:28:48', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000042, '有有有由于', '2023-05-04 20:28:51', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000043, '噢噢噢噢', '2023-05-04 20:28:59', 'hhb', '1');
INSERT INTO `exams` VALUES (00000000000000000044, '怕怕怕怕怕', '2023-05-04 20:29:02', 'hhb', '0');

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
INSERT INTO `sys_dept` VALUES (100, 0, '0', '爱家小学', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-04-27 21:33:06');
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
) ENGINE = InnoDB AUTO_INCREMENT = 1206 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_menu` VALUES (1175, '学生分数情况', 1062, 2, 'scores', 'scores/scores/index', NULL, 1, 0, 'C', '0', '0', 'scores:scores:list', '#', 'admin', '2023-04-04 18:21:00', 'hhb', '2023-04-25 18:46:26', '学生分数情况菜单');
INSERT INTO `sys_menu` VALUES (1176, '学生分数查询', 1175, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:query', '#', 'admin', '2023-04-04 18:21:00', 'admin', '2023-04-04 19:27:07', '');
INSERT INTO `sys_menu` VALUES (1177, '学生分数新增', 1175, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:add', '#', 'admin', '2023-04-04 18:21:00', 'admin', '2023-04-04 19:27:02', '');
INSERT INTO `sys_menu` VALUES (1178, '学生分数修改', 1175, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:edit', '#', 'admin', '2023-04-04 18:21:00', 'admin', '2023-04-04 19:26:56', '');
INSERT INTO `sys_menu` VALUES (1179, '学生分数删除', 1175, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:remove', '#', 'admin', '2023-04-04 18:21:00', 'admin', '2023-04-04 19:26:51', '');
INSERT INTO `sys_menu` VALUES (1180, '学生分数导出', 1175, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:scores:export', '#', 'admin', '2023-04-04 18:21:00', 'admin', '2023-04-04 19:26:45', '');
INSERT INTO `sys_menu` VALUES (1181, '年级总体情况', 1062, 3, 'summary', 'scores/summary/index', NULL, 1, 0, 'C', '0', '0', 'scores:summary:list', '#', 'admin', '2023-04-04 18:22:45', 'hhb', '2023-04-25 18:46:35', '年级总体情况菜单');
INSERT INTO `sys_menu` VALUES (1182, '年级总体情况查询', 1181, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:query', '#', 'admin', '2023-04-04 18:22:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1183, '年级总体情况新增', 1181, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:add', '#', 'admin', '2023-04-04 18:22:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1184, '年级总体情况修改', 1181, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:edit', '#', 'admin', '2023-04-04 18:22:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1185, '年级总体情况删除', 1181, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:remove', '#', 'admin', '2023-04-04 18:22:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1186, '年级总体情况导出', 1181, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:summary:export', '#', 'admin', '2023-04-04 18:22:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1187, '年级数据统计情况', 1062, 4, 'statistic', 'scores/statistic/index', NULL, 1, 0, 'C', '0', '0', 'scores:statistic:list', '#', 'admin', '2023-04-04 18:24:37', 'hhb', '2023-04-25 18:46:43', '年级数据统计情况菜单');
INSERT INTO `sys_menu` VALUES (1188, '年级数据统计情况查询', 1187, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statistic:query', '#', 'admin', '2023-04-04 18:24:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1189, '年级数据统计情况新增', 1187, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statistic:add', '#', 'admin', '2023-04-04 18:24:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1190, '年级数据统计情况修改', 1187, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statistic:edit', '#', 'admin', '2023-04-04 18:24:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1191, '年级数据统计情况删除', 1187, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statistic:remove', '#', 'admin', '2023-04-04 18:24:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1192, '年级数据统计情况导出', 1187, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statistic:export', '#', 'admin', '2023-04-04 18:24:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1193, '班级成绩统计情况', 1062, 5, 'statictics', 'scores/statictics/index', NULL, 1, 0, 'C', '0', '0', 'scores:statictics:list', '#', 'admin', '2023-04-04 18:26:28', 'hhb', '2023-04-25 18:46:48', '班级成绩统计情况菜单');
INSERT INTO `sys_menu` VALUES (1194, '班级成绩统计情况查询', 1193, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statictics:query', '#', 'admin', '2023-04-04 18:26:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1195, '班级成绩统计情况新增', 1193, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statictics:add', '#', 'admin', '2023-04-04 18:26:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1196, '班级成绩统计情况修改', 1193, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statictics:edit', '#', 'admin', '2023-04-04 18:26:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1197, '班级成绩统计情况删除', 1193, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statictics:remove', '#', 'admin', '2023-04-04 18:26:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1198, '班级成绩统计情况导出', 1193, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'scores:statictics:export', '#', 'admin', '2023-04-04 18:26:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1199, '学生分数导入', 1175, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'scores:scores:import', '#', 'admin', '2023-04-04 19:26:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1200, '综合分算法', 1062, 6, 'muitiple', 'scores/muitiple/index', NULL, 1, 0, 'C', '0', '0', 'scores:muitiple:list', '#', 'admin', '2023-04-25 18:48:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1201, '修改综合分算法', 1200, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'scores:muitiple:edit', '#', 'admin', '2023-04-25 20:12:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1202, '网站名称', 1, 10, 'title', 'scores/title/index', NULL, 1, 0, 'C', '0', '0', 'scores:title:index', 'validCode', 'admin', '2023-04-26 20:01:54', 'admin', '2023-04-26 20:03:31', '');
INSERT INTO `sys_menu` VALUES (1203, '得分录入', 1062, 7, 'inpution', 'scores/inpution/index', NULL, 1, 1, 'C', '0', '0', 'scores:inpution:index', 'nested', 'admin', '2023-05-05 18:57:57', 'admin', '2023-05-07 07:16:35', '');
INSERT INTO `sys_menu` VALUES (1204, '清空', 1203, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'scores:inpution:delete', '#', 'admin', '2023-05-07 07:44:58', 'admin', '2023-05-07 11:15:00', '');
INSERT INTO `sys_menu` VALUES (1205, '录入分数', 1203, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'scores:inpution:add', '#', 'admin', '2023-05-07 11:57:12', '', NULL, '');

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
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.ruoyi.web.controller.monitor.SysOperlogController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 11:58:27', 65);

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
INSERT INTO `sys_role` VALUES (3, '管理员', 'premier', 2, '1', 1, 1, '0', '0', 'admin', '2023-03-28 20:25:20', 'admin', '2023-04-25 18:45:47', NULL);
INSERT INTO `sys_role` VALUES (4, '行政', 'administration', 3, '1', 1, 1, '0', '0', 'admin', '2023-03-28 20:51:41', 'admin', '2023-05-07 11:58:19', NULL);

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
INSERT INTO `sys_role_menu` VALUES (3, 1061);
INSERT INTO `sys_role_menu` VALUES (3, 1062);
INSERT INTO `sys_role_menu` VALUES (3, 1163);
INSERT INTO `sys_role_menu` VALUES (3, 1164);
INSERT INTO `sys_role_menu` VALUES (3, 1165);
INSERT INTO `sys_role_menu` VALUES (3, 1166);
INSERT INTO `sys_role_menu` VALUES (3, 1167);
INSERT INTO `sys_role_menu` VALUES (3, 1168);
INSERT INTO `sys_role_menu` VALUES (3, 1169);
INSERT INTO `sys_role_menu` VALUES (3, 1170);
INSERT INTO `sys_role_menu` VALUES (3, 1171);
INSERT INTO `sys_role_menu` VALUES (3, 1172);
INSERT INTO `sys_role_menu` VALUES (3, 1173);
INSERT INTO `sys_role_menu` VALUES (3, 1174);
INSERT INTO `sys_role_menu` VALUES (3, 1175);
INSERT INTO `sys_role_menu` VALUES (3, 1176);
INSERT INTO `sys_role_menu` VALUES (3, 1177);
INSERT INTO `sys_role_menu` VALUES (3, 1178);
INSERT INTO `sys_role_menu` VALUES (3, 1179);
INSERT INTO `sys_role_menu` VALUES (3, 1180);
INSERT INTO `sys_role_menu` VALUES (3, 1181);
INSERT INTO `sys_role_menu` VALUES (3, 1182);
INSERT INTO `sys_role_menu` VALUES (3, 1183);
INSERT INTO `sys_role_menu` VALUES (3, 1184);
INSERT INTO `sys_role_menu` VALUES (3, 1185);
INSERT INTO `sys_role_menu` VALUES (3, 1186);
INSERT INTO `sys_role_menu` VALUES (3, 1187);
INSERT INTO `sys_role_menu` VALUES (3, 1188);
INSERT INTO `sys_role_menu` VALUES (3, 1189);
INSERT INTO `sys_role_menu` VALUES (3, 1190);
INSERT INTO `sys_role_menu` VALUES (3, 1191);
INSERT INTO `sys_role_menu` VALUES (3, 1192);
INSERT INTO `sys_role_menu` VALUES (3, 1193);
INSERT INTO `sys_role_menu` VALUES (3, 1194);
INSERT INTO `sys_role_menu` VALUES (3, 1195);
INSERT INTO `sys_role_menu` VALUES (3, 1196);
INSERT INTO `sys_role_menu` VALUES (3, 1197);
INSERT INTO `sys_role_menu` VALUES (3, 1198);
INSERT INTO `sys_role_menu` VALUES (3, 1199);
INSERT INTO `sys_role_menu` VALUES (4, 1061);
INSERT INTO `sys_role_menu` VALUES (4, 1062);
INSERT INTO `sys_role_menu` VALUES (4, 1163);
INSERT INTO `sys_role_menu` VALUES (4, 1164);
INSERT INTO `sys_role_menu` VALUES (4, 1165);
INSERT INTO `sys_role_menu` VALUES (4, 1166);
INSERT INTO `sys_role_menu` VALUES (4, 1167);
INSERT INTO `sys_role_menu` VALUES (4, 1168);
INSERT INTO `sys_role_menu` VALUES (4, 1169);
INSERT INTO `sys_role_menu` VALUES (4, 1170);
INSERT INTO `sys_role_menu` VALUES (4, 1171);
INSERT INTO `sys_role_menu` VALUES (4, 1172);
INSERT INTO `sys_role_menu` VALUES (4, 1173);
INSERT INTO `sys_role_menu` VALUES (4, 1174);
INSERT INTO `sys_role_menu` VALUES (4, 1175);
INSERT INTO `sys_role_menu` VALUES (4, 1176);
INSERT INTO `sys_role_menu` VALUES (4, 1177);
INSERT INTO `sys_role_menu` VALUES (4, 1178);
INSERT INTO `sys_role_menu` VALUES (4, 1179);
INSERT INTO `sys_role_menu` VALUES (4, 1180);
INSERT INTO `sys_role_menu` VALUES (4, 1181);
INSERT INTO `sys_role_menu` VALUES (4, 1182);
INSERT INTO `sys_role_menu` VALUES (4, 1183);
INSERT INTO `sys_role_menu` VALUES (4, 1184);
INSERT INTO `sys_role_menu` VALUES (4, 1185);
INSERT INTO `sys_role_menu` VALUES (4, 1186);
INSERT INTO `sys_role_menu` VALUES (4, 1187);
INSERT INTO `sys_role_menu` VALUES (4, 1188);
INSERT INTO `sys_role_menu` VALUES (4, 1189);
INSERT INTO `sys_role_menu` VALUES (4, 1190);
INSERT INTO `sys_role_menu` VALUES (4, 1191);
INSERT INTO `sys_role_menu` VALUES (4, 1192);
INSERT INTO `sys_role_menu` VALUES (4, 1193);
INSERT INTO `sys_role_menu` VALUES (4, 1194);
INSERT INTO `sys_role_menu` VALUES (4, 1195);
INSERT INTO `sys_role_menu` VALUES (4, 1196);
INSERT INTO `sys_role_menu` VALUES (4, 1197);
INSERT INTO `sys_role_menu` VALUES (4, 1198);
INSERT INTO `sys_role_menu` VALUES (4, 1199);
INSERT INTO `sys_role_menu` VALUES (4, 1200);
INSERT INTO `sys_role_menu` VALUES (4, 1201);
INSERT INTO `sys_role_menu` VALUES (4, 1203);
INSERT INTO `sys_role_menu` VALUES (4, 1205);

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '若依', '00', 'ry@163.com', '15888888888', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-05-07 11:55:39', 'admin', '2023-03-18 18:56:46', '', '2023-05-07 11:55:39', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'hhb', 'hhb', '00', '', '', '0', '', '$2a$10$eHm42WQU7bC84hG77PjATe3QmDOqH4xjvR0eQMvBGIZAQ6o.KxGEy', '0', '0', '127.0.0.1', '2023-05-07 06:49:01', 'admin', '2023-05-04 19:12:39', 'admin', '2023-05-07 06:49:00', NULL);

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
INSERT INTO `sys_user_role` VALUES (2, 4);

SET FOREIGN_KEY_CHECKS = 1;
