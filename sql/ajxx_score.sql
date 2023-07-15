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

 Date: 15/07/2023 22:30:21
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
) ENGINE = InnoDB AUTO_INCREMENT = 886 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级成绩统计情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_class_statictics
-- ----------------------------
INSERT INTO `exam_class_statictics` VALUES (00000000000000000674, '六年级', '3班', '语文', 47, 0, 5, 27, 15, 0, 0, 0, 0, '3659.5', '77.86', '100.00%', '10.64%', '64.34', 42, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000675, '六年级', '3班', '数学', 47, 1, 21, 11, 8, 3, 0, 1, 2, '3812.0', '81.11', '87.23%', '46.81%', '72.66', 42, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000676, '六年级', '3班', '英语', 47, 0, 3, 20, 18, 4, 2, 0, 0, '3457.0', '73.55', '87.23%', '6.38%', '57.5', 42, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000677, '六年级', '3班', '语文', 47, 0, 5, 27, 15, 0, 0, 0, 0, '3659.5', '77.86', '100.00%', '10.64%', '64.34', 41, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000678, '六年级', '3班', '数学', 47, 1, 21, 11, 8, 3, 0, 1, 2, '3812.0', '81.11', '87.23%', '46.81%', '72.66', 41, 2, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000679, '六年级', '3班', '英语', 47, 0, 3, 20, 18, 4, 2, 0, 0, '3457.0', '73.55', '87.23%', '6.38%', '57.5', 41, 2, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000680, '六年级', '2班', '语文', 48, 0, 4, 23, 17, 1, 2, 1, 0, '3556.0', '74.08', '91.67%', '8.33%', '59.63', 41, 2, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000681, '六年级', '2班', '数学', 49, 0, 27, 11, 6, 1, 1, 2, 1, '4065.0', '82.96', '89.80%', '55.10%', '76.65', 41, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000682, '六年级', '2班', '英语', 49, 0, 10, 20, 9, 4, 0, 1, 5, '3596.0', '73.39', '79.59%', '20.41%', '59.36', 41, 1, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000683, '六年级', '4班', '语文', 49, 0, 2, 31, 13, 0, 0, 0, 3, '3647.0', '74.43', '93.88%', '4.08%', '59.16', 41, 3, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000684, '六年级', '4班', '数学', 49, 0, 19, 12, 6, 2, 1, 6, 3, '3694.0', '75.39', '75.51%', '38.78%', '64.44', 41, 3, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000685, '六年级', '4班', '英语', 49, 0, 4, 23, 14, 4, 0, 2, 2, '3542.0', '72.29', '83.67%', '8.16%', '56.46', 41, 3, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000698, '六年级', '3班', '语文', 47, 0, 5, 27, 15, 0, 0, 0, 0, '3659.5', '77.86', '100.00%', '10.64%', '64.34', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000699, '六年级', '3班', '数学', 47, 1, 21, 11, 8, 3, 0, 1, 2, '3812.0', '81.11', '87.23%', '46.81%', '72.66', 22, 2, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000700, '六年级', '3班', '英语', 47, 0, 3, 20, 18, 4, 2, 0, 0, '3457.0', '73.55', '87.23%', '6.38%', '57.5', 22, 4, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000701, '六年级', '2班', '语文', 48, 0, 4, 23, 17, 1, 2, 1, 0, '3556.0', '74.08', '91.67%', '8.33%', '59.63', 22, 3, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000702, '六年级', '2班', '数学', 49, 0, 27, 11, 6, 1, 1, 2, 1, '4065.0', '82.96', '89.80%', '55.10%', '76.65', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000703, '六年级', '2班', '英语', 49, 0, 10, 20, 9, 4, 0, 1, 5, '3596.0', '73.39', '79.59%', '20.41%', '59.36', 22, 2, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000704, '六年级', '4班', '语文', 49, 0, 2, 31, 13, 0, 0, 0, 3, '3647.0', '74.43', '93.88%', '4.08%', '59.16', 22, 5, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000705, '六年级', '4班', '数学', 49, 0, 19, 12, 6, 2, 1, 6, 3, '3694.0', '75.39', '75.51%', '38.78%', '64.44', 22, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000706, '六年级', '4班', '英语', 49, 0, 4, 23, 14, 4, 0, 2, 2, '3542.0', '72.29', '83.67%', '8.16%', '56.46', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000707, '六年级', '5班', '语文', 50, 0, 7, 22, 19, 0, 1, 0, 1, '3721.0', '74.42', '96.00%', '14.00%', '62.77', 22, 2, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000708, '六年级', '5班', '数学', 50, 2, 18, 17, 9, 3, 0, 0, 1, '4118.0', '82.36', '92.00%', '40.00%', '72.54', 22, 3, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000709, '六年级', '5班', '英语', 50, 0, 9, 23, 9, 1, 3, 3, 2, '3754.0', '75.08', '82.00%', '18.00%', '60.03', 22, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000710, '六年级', '6班', '语文', 50, 0, 4, 24, 18, 1, 1, 2, 0, '3670.0', '73.40', '92.00%', '8.00%', '59.36', 22, 4, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000711, '六年级', '6班', '数学', 50, 0, 13, 17, 7, 1, 5, 2, 5, '3627.0', '72.54', '74.00%', '26.00%', '59.02', 22, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000712, '六年级', '6班', '英语', 50, 0, 9, 17, 13, 2, 4, 3, 2, '3655.0', '73.10', '78.00%', '18.00%', '58.04', 22, 3, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000761, '三年级', '1班', '语文', 4, 0, 2, 1, 1, 0, 0, 0, 0, '322.0', '80.50', '100.00%', '50.00%', '77.2', 43, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000762, '三年级', '1班', '数学', 4, 0, 1, 1, 0, 0, 0, 1, 1, '227.0', '56.75', '50.00%', '25.00%', '45.2', 43, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000763, '三年级', '1班', '英语', 5, 0, 1, 2, 0, 1, 0, 0, 1, '316.0', '63.20', '60.00%', '20.00%', '49.28', 43, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000764, '六年级', '1班', '语文', 48, 0, 6, 24, 14, 3, 0, 1, 0, '3657.5', '76.20', '91.67%', '12.50%', '61.73', 43, 2, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000765, '六年级', '1班', '数学', 49, 1, 17, 12, 5, 4, 2, 2, 6, '3599.0', '73.45', '71.43%', '36.73%', '61.83', 43, 3, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000766, '六年级', '1班', '英语', 48, 0, 7, 20, 8, 2, 1, 5, 5, '3424.0', '71.33', '72.92%', '14.58%', '54.78', 43, 3, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000767, '六年级', '3班', '语文', 47, 0, 5, 27, 15, 0, 0, 0, 0, '3659.5', '77.86', '100.00%', '10.64%', '64.34', 43, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000768, '六年级', '3班', '数学', 47, 1, 21, 11, 8, 3, 0, 1, 2, '3812.0', '81.11', '87.23%', '46.81%', '72.66', 43, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000769, '六年级', '3班', '英语', 47, 0, 3, 20, 18, 4, 2, 0, 0, '3457.0', '73.55', '87.23%', '6.38%', '57.5', 43, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000770, '六年级', '4班', '语文', 49, 0, 2, 31, 13, 0, 0, 0, 3, '3647.0', '74.43', '93.88%', '4.08%', '59.16', 43, 3, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000771, '六年级', '4班', '数学', 49, 0, 19, 12, 6, 2, 1, 6, 3, '3694.0', '75.39', '75.51%', '38.78%', '64.44', 43, 2, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000772, '六年级', '4班', '英语', 49, 0, 4, 23, 14, 4, 0, 2, 2, '3542.0', '72.29', '83.67%', '8.16%', '56.46', 43, 2, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000773, '三年级', '3班', '语文', 1, 0, 0, 0, 0, 0, 0, 0, 1, '35.5', '35.50', '0.00%', '0.00%', '14.2', 67, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000774, '三年级', '3班', '数学', 1, 0, 0, 0, 1, 0, 0, 0, 0, '68.5', '68.50', '100.00%', '0.00%', '57.4', 67, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000775, '三年级', '3班', '英语', 1, 0, 1, 0, 0, 0, 0, 0, 0, '96.5', '96.50', '100.00%', '100.00%', '98.6', 67, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000852, '六年级', '6班', '语文', 3, 0, 1, 1, 1, 0, 0, 0, 0, '235.0', '78.33', '100.00%', '33.33%', '71.33', 69, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000853, '六年级', '6班', '数学', 2, 0, 1, 1, 0, 0, 0, 0, 0, '177.0', '88.50', '100.00%', '50.00%', '80.4', 69, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000854, '六年级', '6班', '英语', 3, 0, 0, 1, 1, 0, 0, 0, 1, '146.0', '48.67', '66.67%', '0.00%', '39.47', 69, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000855, '三年级', '3班', '语文', 1, 0, 0, 0, 0, 0, 0, 0, 1, '35.5', '35.50', '0.00%', '0.00%', '14.2', 69, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000856, '三年级', '3班', '数学', 1, 0, 0, 0, 1, 0, 0, 0, 0, '68.5', '68.50', '100.00%', '0.00%', '57.4', 69, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000857, '三年级', '3班', '英语', 1, 0, 1, 0, 0, 0, 0, 0, 0, '96.5', '96.50', '100.00%', '100.00%', '98.6', 69, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000858, '二年级', '1班', '语文', 50, 0, 22, 25, 2, 0, 0, 0, 1, '4291.0', '85.82', '98.00%', '44.00%', '76.93', 69, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000859, '二年级', '1班', '数学', 50, 0, 25, 17, 7, 0, 0, 0, 1, '4284.0', '85.68', '98.00%', '50.00%', '78.67', 69, 3, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000860, '二年级', '2班', '语文', 50, 0, 22, 22, 5, 0, 1, 0, 0, '4275.0', '85.50', '98.00%', '44.00%', '76.8', 69, 2, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000861, '二年级', '2班', '数学', 49, 1, 24, 16, 5, 2, 0, 0, 1, '4170.0', '85.10', '93.88%', '51.02%', '77.51', 69, 4, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000862, '二年级', '3班', '语文', 49, 0, 8, 25, 12, 0, 0, 2, 2, '3819.0', '77.94', '91.84%', '16.33%', '63.63', 69, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000863, '二年级', '3班', '数学', 49, 2, 21, 14, 9, 0, 1, 2, 0, '4122.0', '84.12', '93.88%', '46.94%', '75.89', 69, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000864, '二年级', '4班', '语文', 48, 0, 19, 18, 8, 1, 0, 0, 2, '3905.0', '81.35', '93.75%', '39.58%', '72.54', 69, 3, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000865, '二年级', '4班', '数学', 48, 0, 20, 14, 9, 2, 0, 1, 2, '3858.0', '80.38', '89.58%', '41.67%', '71.53', 69, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000866, '二年级', '5班', '语文', 49, 0, 14, 25, 7, 0, 0, 3, 0, '3983.0', '81.29', '93.88%', '28.57%', '69.25', 69, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000867, '二年级', '5班', '数学', 49, 2, 20, 25, 2, 0, 0, 0, 0, '4352.0', '88.82', '100.00%', '44.90%', '79.0', 69, 2, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000868, '二年级', '6班', '语文', 50, 0, 19, 24, 3, 2, 1, 0, 1, '4190.0', '83.80', '92.00%', '38.00%', '72.52', 69, 4, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000869, '二年级', '6班', '数学', 50, 1, 31, 12, 4, 0, 1, 0, 1, '4404.0', '88.08', '96.00%', '64.00%', '83.23', 69, 1, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000870, '二年级', '7班', '语文', 49, 0, 11, 28, 5, 1, 1, 2, 1, '3924.0', '80.08', '89.80%', '22.45%', '65.71', 69, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000871, '二年级', '7班', '数学', 49, 0, 25, 15, 5, 0, 2, 1, 1, '4163.0', '84.96', '91.84%', '51.02%', '76.84', 69, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000872, '一年级', '1班', '语文', 50, 0, 22, 25, 2, 0, 0, 0, 1, '4291.0', '85.82', '98.00%', '44.00%', '76.93', 69, 1, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000873, '一年级', '1班', '数学', 50, 0, 25, 17, 7, 0, 0, 0, 1, '4284.0', '85.68', '98.00%', '50.00%', '78.67', 69, 3, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000874, '一年级', '7班', '语文', 49, 0, 11, 28, 5, 1, 1, 2, 1, '3924.0', '80.08', '89.80%', '22.45%', '65.71', 69, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000875, '一年级', '7班', '数学', 49, 0, 25, 15, 5, 0, 2, 1, 1, '4163.0', '84.96', '91.84%', '51.02%', '76.84', 69, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000876, '一年级', '6班', '语文', 50, 0, 19, 24, 3, 2, 1, 0, 1, '4190.0', '83.80', '92.00%', '38.00%', '72.52', 69, 4, 3);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000877, '一年级', '6班', '数学', 50, 1, 31, 12, 4, 0, 1, 0, 1, '4404.0', '88.08', '96.00%', '64.00%', '83.23', 69, 1, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000878, '一年级', '5班', '语文', 49, 0, 14, 25, 7, 0, 0, 3, 0, '3983.0', '81.29', '93.88%', '28.57%', '69.25', 69, 5, 5);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000879, '一年级', '5班', '数学', 49, 2, 20, 25, 2, 0, 0, 0, 0, '4352.0', '88.82', '100.00%', '44.90%', '79.0', 69, 2, 1);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000880, '一年级', '4班', '语文', 48, 0, 19, 18, 8, 1, 0, 0, 2, '3905.0', '81.35', '93.75%', '39.58%', '72.54', 69, 3, 4);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000881, '一年级', '4班', '数学', 48, 0, 20, 14, 9, 2, 0, 1, 2, '3858.0', '80.38', '89.58%', '41.67%', '71.53', 69, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000882, '一年级', '3班', '语文', 49, 0, 8, 25, 12, 0, 0, 2, 2, '3819.0', '77.94', '91.84%', '16.33%', '63.63', 69, 7, 7);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000883, '一年级', '3班', '数学', 49, 2, 21, 14, 9, 0, 1, 2, 0, '4122.0', '84.12', '93.88%', '46.94%', '75.89', 69, 6, 6);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000884, '一年级', '2班', '语文', 50, 0, 22, 22, 5, 0, 1, 0, 0, '4275.0', '85.50', '98.00%', '44.00%', '76.8', 69, 2, 2);
INSERT INTO `exam_class_statictics` VALUES (00000000000000000885, '一年级', '2班', '数学', 49, 1, 24, 16, 5, 2, 0, 0, 1, '4170.0', '85.10', '93.88%', '51.02%', '77.51', 69, 4, 4);

-- ----------------------------
-- Table structure for exam_excellent_score_line
-- ----------------------------
DROP TABLE IF EXISTS `exam_excellent_score_line`;
CREATE TABLE `exam_excellent_score_line`  (
  `excellent_id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'id',
  `subject` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学科',
  `excellent_score` float(7, 1) NULL DEFAULT NULL COMMENT '优秀分数',
  `grade` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `exam_id` bigint(20) NULL DEFAULT NULL COMMENT '考试ID',
  `full_score` float(7, 1) NULL DEFAULT NULL COMMENT '满分分数线',
  `good_score` float(7, 1) NULL DEFAULT NULL COMMENT '良好分数线',
  `qualified_score` float(7, 1) NULL DEFAULT NULL COMMENT '及格分数线',
  `unqualified_one_score` float(7, 1) NULL DEFAULT NULL COMMENT '不合格分数线（默认55-59）',
  `unqualified_two_score` float(7, 1) NULL DEFAULT NULL COMMENT '不合格分数线（默认50-54）',
  `unqualified_three_score` float(7, 1) NULL DEFAULT NULL COMMENT '不合格分数线（默认40-49）',
  `unqualified_four_score` float(7, 1) NULL DEFAULT NULL COMMENT '不合格分数线（默认0-39）',
  `confirm_flag` tinyint(1) NULL DEFAULT NULL COMMENT '0没有确认，1确认',
  PRIMARY KEY (`excellent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优秀分数线' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_excellent_score_line
-- ----------------------------
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000001, '语文', 90.0, '一年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000002, '数学', 90.0, '一年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000003, '语文', 90.0, '二年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000004, '数学', 90.0, '二年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000005, '语文', 85.0, '三年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000006, '数学', 90.0, '三年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000007, '英语', 90.0, '三年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000008, '语文', 85.0, '四年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000009, '数学', 90.0, '四年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000010, '英语', 90.0, '四年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000011, '语文', 85.0, '五年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000012, '数学', 90.0, '五年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000013, '英语', 90.0, '五年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000014, '语文', 85.0, '六年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000015, '数学', 90.0, '六年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000016, '英语', 90.0, '六年级', 43, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000033, '语文', 90.0, '一年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000034, '语文', 85.0, '三年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000035, '数学', 90.0, '一年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000036, '数学', 90.0, '三年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000037, '语文', 90.0, '二年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000038, '数学', 90.0, '二年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000039, '英语', 90.0, '三年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000040, '语文', 85.0, '四年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000041, '数学', 90.0, '四年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000042, '数学', 90.0, '五年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000043, '语文', 85.0, '五年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000044, '英语', 90.0, '四年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000045, '英语', 90.0, '五年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000046, '语文', 85.0, '六年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000047, '数学', 90.0, '六年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000048, '英语', 90.0, '六年级', 57, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000049, '语文', 85.0, '五年级', 56, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000050, '语文', 90.0, '二年级', 56, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000051, '数学', 90.0, '五年级', 56, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000052, '数学', 90.0, '二年级', 56, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000053, '英语', 90.0, '五年级', 56, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000054, '语文', 85.0, '四年级', 56, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000055, '数学', 90.0, '四年级', 56, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000056, '英语', 90.0, '四年级', 56, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000057, '语文', 85.0, '四年级', 58, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, NULL);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000058, '英语', 52.0, '四年级', 58, 60.0, 45.0, 36.0, 30.0, 25.0, 20.0, 0.0, NULL);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000059, '数学', 90.0, '四年级', 58, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, NULL);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000060, '语文', 85.0, '三年级', 59, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, NULL);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000061, '数学', 90.0, '六年级', 59, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, NULL);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000062, '英语', 90.0, '六年级', 59, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, NULL);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000063, '数学', 90.0, '三年级', 59, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, NULL);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000064, '英语', 90.0, '三年级', 59, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, NULL);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000065, '语文', 85.0, '六年级', 59, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, NULL);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000066, '语文', 85.0, '三年级', 60, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000067, '数学', 90.0, '六年级', 60, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000068, '数学', 90.0, '三年级', 60, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000069, '英语', 90.0, '三年级', 60, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000070, '语文', 85.0, '六年级', 60, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000071, '英语', 90.0, '六年级', 60, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000072, '英语', 90.0, '五年级', 60, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000073, '数学', 90.0, '五年级', 60, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000074, '语文', 85.0, '五年级', 60, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000075, '语文', 90.0, '一年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000076, '语文', 85.0, '三年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000077, '数学', 90.0, '一年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000078, '数学', 90.0, '二年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000079, '语文', 90.0, '二年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000080, '数学', 90.0, '三年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000081, '英语', 90.0, '三年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000082, '语文', 85.0, '五年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000083, '英语', 90.0, '四年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000084, '数学', 90.0, '四年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000085, '语文', 85.0, '四年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000086, '数学', 90.0, '五年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000087, '英语', 90.0, '五年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000088, '语文', 85.0, '六年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000089, '数学', 90.0, '六年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000090, '英语', 90.0, '六年级', 54, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000096, '语文', 85.0, '三年级', 67, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000097, '数学', 90.0, '三年级', 67, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000098, '英语', 90.0, '三年级', 67, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000099, '语文', 85.0, '四年级', 67, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000100, '数学', 90.0, '四年级', 67, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000101, '英语', 90.0, '四年级', 67, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000102, '数学', 90.0, '一年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000103, '数学', 90.0, '二年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000104, '数学', 90.0, '三年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000105, '语文', 90.0, '二年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000106, '语文', 85.0, '三年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000107, '语文', 90.0, '一年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000108, '语文', 85.0, '四年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000109, '英语', 90.0, '四年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000110, '英语', 90.0, '三年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000111, '数学', 90.0, '四年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000112, '数学', 90.0, '五年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000113, '语文', 85.0, '五年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000114, '英语', 90.0, '五年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000115, '语文', 85.0, '六年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000116, '数学', 90.0, '六年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000117, '英语', 90.0, '六年级', 22, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000118, '语文', 85.0, '五年级', 68, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000119, '数学', 90.0, '五年级', 68, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000120, '英语', 90.0, '五年级', 68, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000121, '语文', 85.0, '四年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000122, '英语', 90.0, '四年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000123, '语文', 85.0, '三年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000124, '数学', 90.0, '四年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000125, '数学', 90.0, '三年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000126, '英语', 90.0, '三年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000127, '语文', 90.0, '二年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000128, '数学', 90.0, '二年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000129, '语文', 90.0, '一年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000130, '数学', 90.0, '一年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000131, '语文', 85.0, '六年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000132, '数学', 90.0, '六年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000133, '英语', 90.0, '六年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000134, '语文', 85.0, '五年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000135, '数学', 90.0, '五年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);
INSERT INTO `exam_excellent_score_line` VALUES (00000000000000000136, '英语', 90.0, '五年级', 69, 100.0, 75.0, 60.0, 55.0, 50.0, 40.0, 0.0, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 319 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '年级数据统计情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_grade_statistic
-- ----------------------------
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000232, 47, 41, 1, '87.23%', '2.13%', '57.81', '六年级', '3班', 1, NULL, 42, '10928.5', '77.51%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000233, 47, 41, 1, '87.23%', '2.13%', '57.81', '六年级', '3班', 1, NULL, 41, '10928.5', '77.51%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000234, 48, 34, 3, '70.83%', '6.25%', '54.28', '六年级', '2班', 2, NULL, 41, '11217.0', '77.90%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000235, 49, 33, 0, '67.35%', '0.00%', '49.82', '六年级', '4班', 3, NULL, 41, '10883.0', '74.03%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000240, 47, 41, 1, '87.23%', '2.13%', '57.81', '六年级', '3班', 2, NULL, 22, '10928.5', '77.51%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000241, 48, 34, 3, '70.83%', '6.25%', '54.28', '六年级', '2班', 3, NULL, 22, '11217.0', '77.90%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000242, 49, 33, 0, '67.35%', '0.00%', '49.82', '六年级', '4班', 5, NULL, 22, '10883.0', '74.03%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000243, 50, 39, 6, '78.00%', '12.00%', '57.92', '六年级', '5班', 1, NULL, 22, '11593.0', '77.29%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000244, 50, 36, 2, '72.00%', '4.00%', '52.0', '六年级', '6班', 4, NULL, 22, '10952.0', '73.01%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000261, 5, 2, 0, '40.00%', '0.00%', '35.07', '三年级', '1班', 1, NULL, 43, '865.0', '57.67%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000262, 49, 30, 5, '61.22%', '10.20%', '50.49', '六年级', '1班', 2, NULL, 43, '10680.5', '72.66%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000263, 47, 41, 1, '87.23%', '2.13%', '57.81', '六年级', '3班', 1, NULL, 43, '10928.5', '77.51%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000264, 49, 33, 0, '67.35%', '0.00%', '49.82', '六年级', '4班', 3, NULL, 43, '10883.0', '74.03%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000265, 1, 0, 0, '0.00%', '0.00%', '26.73', '三年级', '3班', 1, NULL, 67, '200.5', '66.83%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000303, 3, 1, 0, '33.33%', '0.00%', '34.8', '六年级', '6班', 1, NULL, 69, '558.0', '62.00%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000304, 1, 0, 0, '0.00%', '0.00%', '26.73', '三年级', '3班', 1, NULL, 69, '200.5', '66.83%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000305, 50, 49, 15, '98.00%', '30.00%', '72.7', '二年级', '1班', 2, NULL, 69, '8575.0', '85.75%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000306, 49, 46, 17, '93.88%', '34.69%', '73.04', '二年级', '2班', 1, NULL, 69, '8445.0', '86.17%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000307, 49, 45, 7, '91.84%', '14.29%', '64.25', '二年级', '3班', 6, NULL, 69, '7941.0', '81.03%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000308, 48, 43, 15, '89.58%', '31.25%', '68.59', '二年级', '4班', 4, NULL, 69, '7763.0', '80.86%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000309, 49, 46, 9, '93.88%', '18.37%', '67.69', '二年级', '5班', 5, NULL, 69, '8335.0', '85.05%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000310, 50, 46, 17, '92.00%', '34.00%', '72.18', '二年级', '6班', 3, NULL, 69, '8594.0', '85.94%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000311, 49, 43, 7, '87.76%', '14.29%', '63.62', '二年级', '7班', 7, NULL, 69, '8087.0', '82.52%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000312, 50, 49, 15, '98.00%', '30.00%', '72.7', '一年级', '1班', 2, NULL, 69, '8575.0', '85.75%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000313, 49, 43, 7, '87.76%', '14.29%', '63.62', '一年级', '7班', 7, NULL, 69, '8087.0', '82.52%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000314, 50, 46, 17, '92.00%', '34.00%', '72.18', '一年级', '6班', 3, NULL, 69, '8594.0', '85.94%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000315, 49, 46, 9, '93.88%', '18.37%', '67.69', '一年级', '5班', 5, NULL, 69, '8335.0', '85.05%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000316, 48, 43, 15, '89.58%', '31.25%', '68.59', '一年级', '4班', 4, NULL, 69, '7763.0', '80.86%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000317, 49, 45, 7, '91.84%', '14.29%', '64.25', '一年级', '3班', 6, NULL, 69, '7941.0', '81.03%');
INSERT INTO `exam_grade_statistic` VALUES (00000000000000000318, 49, 46, 17, '93.88%', '34.69%', '73.04', '一年级', '2班', 1, NULL, 69, '8445.0', '86.17%');

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
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '年级总体情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_grade_summary
-- ----------------------------
INSERT INTO `exam_grade_summary` VALUES (00000000000000000092, '六年级', '语文', 47, '3659.5', '77.86', '100.00%', '10.64%', 0, 42);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000093, '六年级', '数学', 47, '3812.0', '81.11', '87.23%', '46.81%', 6, 42);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000094, '六年级', '英语', 47, '3457.0', '73.55', '87.23%', '6.38%', 6, 42);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000095, '六年级', '语文', 144, '10862.5', '75.43', '95.14%', '7.64%', 7, 41);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000096, '六年级', '数学', 145, '11571.0', '79.80', '84.14%', '46.90%', 23, 41);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000097, '六年级', '英语', 145, '10595.0', '73.07', '83.45%', '11.72%', 24, 41);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000104, '六年级', '语文', 244, '18253.5', '74.81', '94.67%', '9.02%', 13, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000105, '六年级', '数学', 245, '19316.0', '78.84', '83.67%', '41.22%', 40, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000106, '六年级', '英语', 245, '18004.0', '73.49', '82.04%', '14.29%', 44, 22);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000131, '三年级', '语文', 4, '322.0', '80.50', '100.00%', '50.00%', 0, 43);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000132, '三年级', '数学', 4, '227.0', '56.75', '50.00%', '25.00%', 2, 43);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000133, '三年级', '英语', 5, '316.0', '63.20', '60.00%', '20.00%', 2, 43);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000134, '六年级', '语文', 144, '10964.0', '76.14', '95.14%', '9.03%', 7, 43);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000135, '六年级', '数学', 145, '11105.0', '76.59', '77.93%', '40.69%', 32, 43);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000136, '六年级', '英语', 144, '10423.0', '72.38', '81.25%', '9.72%', 27, 43);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000137, '三年级', '语文', 1, '35.5', '35.50', '0.00%', '0.00%', 1, 67);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000138, '三年级', '数学', 1, '68.5', '68.50', '100.00%', '0.00%', 0, 67);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000139, '三年级', '英语', 1, '96.5', '96.50', '100.00%', '100.00%', 0, 67);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000154, '六年级', '语文', 3, '235.0', '78.33', '100.00%', '33.33%', 0, 69);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000155, '六年级', '数学', 2, '177.0', '88.50', '100.00%', '50.00%', 0, 69);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000156, '六年级', '英语', 3, '146.0', '48.67', '66.67%', '0.00%', 1, 69);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000157, '三年级', '语文', 1, '35.5', '35.50', '0.00%', '0.00%', 1, 69);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000158, '三年级', '数学', 1, '68.5', '68.50', '100.00%', '0.00%', 0, 69);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000159, '三年级', '英语', 1, '96.5', '96.50', '100.00%', '100.00%', 0, 69);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000160, '二年级', '语文', 345, '28387.0', '82.28', '93.91%', '33.33%', 21, 69);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000161, '二年级', '数学', 344, '29353.0', '85.33', '94.77%', '50.00%', 18, 69);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000162, '一年级', '语文', 345, '28387.0', '82.28', '93.91%', '33.33%', 21, 69);
INSERT INTO `exam_grade_summary` VALUES (00000000000000000163, '一年级', '数学', 344, '29353.0', '85.33', '94.77%', '50.00%', 18, 69);

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
INSERT INTO `exam_muitiple_calculation` VALUES (1, 30, 30, 40);
INSERT INTO `exam_muitiple_calculation` VALUES (2, 30, 30, 40);

-- ----------------------------
-- Table structure for exam_report_sheet
-- ----------------------------
DROP TABLE IF EXISTS `exam_report_sheet`;
CREATE TABLE `exam_report_sheet`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `education_days` int(5) NULL DEFAULT NULL,
  `next_school_day` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_report_sheet
-- ----------------------------
INSERT INTO `exam_report_sheet` VALUES (1, '春学期成绩报告单', 91, '2023-09-02');

-- ----------------------------
-- Table structure for exam_report_sheet_imgs
-- ----------------------------
DROP TABLE IF EXISTS `exam_report_sheet_imgs`;
CREATE TABLE `exam_report_sheet_imgs`  (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `img_src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position_x` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position_y` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size_width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size_height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_report_sheet_imgs
-- ----------------------------

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
  `chinese_deviation_rate` decimal(7, 2) NULL DEFAULT NULL COMMENT '语文偏差率',
  `maths_deviation_rate` decimal(7, 2) NULL DEFAULT NULL COMMENT '数学偏差率',
  `english_deviation_rate` decimal(7, 2) NULL DEFAULT NULL COMMENT '英语偏差率',
  `total_deviation_rate` decimal(7, 2) NULL DEFAULT NULL COMMENT '总偏差率',
  PRIMARY KEY (`score_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7491 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生分数情况' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_student_scores
-- ----------------------------
INSERT INTO `exam_student_scores` VALUES (00000000000000004785, '三年级', '1班', 'A0105', 64.0, 97.0, 94.0, NULL, '2023-05-07 18:10:00', 'admin、hhb', '2023-05-07 19:20:39', NULL, 43, 255.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004786, '三年级', '1班', 'A0104', 77.0, 85.0, 85.0, NULL, '2023-05-07 18:10:00', 'admin、hhb', '2023-05-07 19:20:39', NULL, 43, 247.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004787, '三年级', '1班', 'A0103', 86.0, 0.0, 79.0, NULL, '2023-05-07 18:10:00', 'admin、hhb', '2023-05-07 19:20:39', NULL, 43, 165.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004788, '三年级', '1班', 'A0102', 95.0, 45.0, 58.0, NULL, '2023-05-07 18:10:00', 'admin、hhb', '2023-05-07 19:20:39', NULL, 43, 198.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004790, '三年级', '1班', 'A0106', NULL, NULL, 0.0, NULL, '2023-05-07 18:10:00', 'hhb', '2023-05-07 19:20:39', NULL, 43, 0.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004791, '六年级', '1班', '70101', 87.0, 96.0, 96.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 279.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004792, '六年级', '1班', '70102', 86.5, 96.0, 93.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 275.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004793, '六年级', '1班', '70103', 89.5, 92.0, 96.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 277.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004794, '六年级', '1班', '70104', 83.0, 92.0, 87.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 262.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004795, '六年级', '1班', '70105', 79.5, 93.0, 87.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 259.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004796, '六年级', '1班', '70106', 82.5, 92.0, 87.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 261.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004797, '六年级', '1班', '70107', 83.0, 100.0, 87.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 270.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004798, '六年级', '1班', '70108', 86.5, 95.0, 92.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 273.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004799, '六年级', '1班', '70109', 81.5, 84.0, 90.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 255.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004800, '六年级', '1班', '70110', 84.0, 97.0, 88.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 269.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004801, '六年级', '1班', '70111', 81.5, 88.0, 84.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 253.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004802, '六年级', '1班', '70112', 84.0, 91.0, 93.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 268.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004803, '六年级', '1班', '70113', 74.5, 95.0, 89.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 258.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004804, '六年级', '1班', '70114', 84.0, 84.0, 77.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 245.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004805, '六年级', '1班', '70115', 78.0, 81.0, 82.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 241.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004806, '六年级', '1班', '70116', 73.5, 83.0, 83.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 239.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004807, '六年级', '1班', '70117', 83.5, 92.0, 78.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 253.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004808, '六年级', '1班', '70118', 71.5, 63.0, 42.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 176.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004809, '六年级', '1班', '70119', 85.5, 93.0, 79.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 257.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004810, '六年级', '1班', '70120', 79.5, 91.0, 78.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 248.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004811, '六年级', '1班', '70122', 67.5, 61.0, 82.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 210.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004812, '六年级', '1班', '70123', 80.0, 85.0, 69.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 234.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004813, '六年级', '1班', '70124', 74.0, 87.0, 74.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 235.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004814, '六年级', '1班', '70125', 82.0, 96.0, 86.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 264.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004815, '六年级', '1班', '70126', 78.0, 86.0, 79.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 243.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004816, '六年级', '1班', '70127', 76.0, 56.0, 85.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 217.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004817, '六年级', '1班', '70128', 73.5, 80.0, 56.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 209.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004818, '六年级', '1班', '70129', 80.0, 94.0, 74.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 248.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004819, '六年级', '1班', '70130', 84.0, 67.0, 73.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 224.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004820, '六年级', '1班', '70131', 80.5, 78.0, 82.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 240.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004821, '六年级', '1班', '70132', 69.0, 66.0, 47.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 182.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004822, '六年级', '1班', '70133', 69.5, 54.0, 74.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 197.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004823, '六年级', '1班', '70134', 71.5, 56.0, 64.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 191.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004824, '六年级', '1班', '70135', 78.0, 58.0, 68.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 204.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004825, '六年级', '1班', '70136', 76.0, 59.0, 49.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 184.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004826, '六年级', '1班', '70137', 57.5, 35.0, 55.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 147.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004827, '六年级', '1班', '70138', NULL, 52.0, NULL, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 52.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004828, '六年级', '1班', '70139', 70.5, 41.0, 39.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 150.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004829, '六年级', '1班', '70140', 63.5, 27.0, 46.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 136.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004830, '六年级', '1班', '70141', 65.0, 62.0, 29.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 156.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004831, '六年级', '1班', '70142', 45.5, 37.0, 61.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 143.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004832, '六年级', '1班', '70143', 60.5, 14.0, 35.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 109.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004833, '六年级', '1班', '70144', 59.0, 17.0, 29.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 105.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004834, '六年级', '1班', '70145', 55.0, 29.0, 23.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 107.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004835, '六年级', '1班', '70146', 83.0, 97.0, 81.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 261.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004836, '六年级', '1班', '70147', 77.5, 79.0, 54.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 210.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004837, '六年级', '1班', '70148', 81.0, 86.0, 84.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 251.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004838, '六年级', '1班', '70149', 72.0, 47.0, 48.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 167.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004839, '六年级', '1班', '70150', 89.5, 95.0, 90.0, NULL, '2023-05-12 17:45:22', 'admin', NULL, NULL, 43, 274.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004887, '六年级', '3班', '70301', 71.5, 97.0, 67.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 235.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004888, '六年级', '3班', '70302', 78.0, 85.0, 74.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 237.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004889, '六年级', '3班', '70303', 75.5, 68.0, 79.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 222.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004890, '六年级', '3班', '70304', 81.0, 100.0, 76.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 257.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004891, '六年级', '3班', '70305', 72.5, 93.0, 64.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 229.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004892, '六年级', '3班', '70306', 83.5, 88.0, 74.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004893, '六年级', '3班', '70307', 80.0, 90.0, 86.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 256.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004894, '六年级', '3班', '70308', 78.0, 78.0, 84.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 240.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004895, '六年级', '3班', '70309', 78.5, 94.0, 73.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004896, '六年级', '3班', '70310', 74.0, 70.0, 70.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 214.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004897, '六年级', '3班', '70311', 81.0, 98.0, 84.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 263.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004898, '六年级', '3班', '70312', 78.0, 68.0, 68.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 214.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004899, '六年级', '3班', '70313', 69.0, 57.0, 57.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 183.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004900, '六年级', '3班', '70314', 71.0, 80.0, 82.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 233.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004901, '六年级', '3班', '70315', 81.5, 81.0, 76.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 238.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004902, '六年级', '3班', '70316', 78.5, 75.0, 69.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 222.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004903, '六年级', '3班', '70317', 85.5, 87.0, 92.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 264.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004904, '六年级', '3班', '70318', 91.5, 98.0, 90.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 279.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004905, '六年级', '3班', '70320', 83.0, 97.0, 82.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 262.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004906, '六年级', '3班', '70321', 70.0, 35.0, 56.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 161.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004907, '六年级', '3班', '70322', 65.5, 57.0, 56.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 178.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004908, '六年级', '3班', '70323', 82.5, 98.0, 78.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 258.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004909, '六年级', '3班', '70324', 83.0, 98.0, 86.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 267.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004910, '六年级', '3班', '70325', 76.0, 94.0, 86.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 256.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004911, '六年级', '3班', '70326', 81.0, 92.0, 84.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 257.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004912, '六年级', '3班', '70327', 74.5, 77.0, 69.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 220.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004913, '六年级', '3班', '70328', 79.0, 90.0, 68.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 237.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004914, '六年级', '3班', '70329', 76.0, 58.0, 59.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 193.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004915, '六年级', '3班', '70330', 73.5, 70.0, 71.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 214.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004916, '六年级', '3班', '70331', 69.0, 64.0, 67.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 200.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004917, '六年级', '3班', '70332', 87.0, 98.0, 86.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 271.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004918, '六年级', '3班', '70333', 82.5, 98.0, 92.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 272.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004919, '六年级', '3班', '70334', 77.0, 98.0, 66.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 241.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004920, '六年级', '3班', '70335', 83.5, 91.0, 64.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 238.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004921, '六年级', '3班', '70336', 73.0, 25.0, 51.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 149.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004922, '六年级', '3班', '70337', 86.5, 96.0, 81.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 263.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004923, '六年级', '3班', '70338', 74.0, 81.0, 60.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 215.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004924, '六年级', '3班', '70339', 66.5, 74.0, 75.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 215.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004925, '六年级', '3班', '70340', 89.5, 74.0, 79.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 242.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004926, '六年级', '3班', '70341', 71.0, 71.0, 77.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 219.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004927, '六年级', '3班', '70342', 63.0, 78.0, 78.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 219.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004928, '六年级', '3班', '70344', 78.0, 92.0, 76.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 246.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004929, '六年级', '3班', '70345', 78.5, 49.0, 52.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 179.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004930, '六年级', '3班', '70346', 77.5, 90.0, 72.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 239.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004931, '六年级', '3班', '70347', 84.5, 76.0, 70.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 230.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004932, '六年级', '3班', '70348', 83.0, 91.0, 74.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 248.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004933, '六年级', '3班', '70349', 83.0, 93.0, 77.0, NULL, '2023-05-12 17:47:00', 'admin', NULL, NULL, 43, 253.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004934, '六年级', '3班', '70301', 71.5, 97.0, 67.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 235.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004935, '六年级', '3班', '70302', 78.0, 85.0, 74.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 237.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004936, '六年级', '3班', '70303', 75.5, 68.0, 79.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 222.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004937, '六年级', '3班', '70304', 81.0, 100.0, 76.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 257.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004938, '六年级', '3班', '70305', 72.5, 93.0, 64.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 229.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004939, '六年级', '3班', '70306', 83.5, 88.0, 74.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004940, '六年级', '3班', '70307', 80.0, 90.0, 86.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 256.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004941, '六年级', '3班', '70308', 78.0, 78.0, 84.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 240.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004942, '六年级', '3班', '70309', 78.5, 94.0, 73.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004943, '六年级', '3班', '70310', 74.0, 70.0, 70.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 214.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004944, '六年级', '3班', '70311', 81.0, 98.0, 84.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 263.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004945, '六年级', '3班', '70312', 78.0, 68.0, 68.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 214.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004946, '六年级', '3班', '70313', 69.0, 57.0, 57.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 183.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004947, '六年级', '3班', '70314', 71.0, 80.0, 82.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 233.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004948, '六年级', '3班', '70315', 81.5, 81.0, 76.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 238.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004949, '六年级', '3班', '70316', 78.5, 75.0, 69.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 222.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004950, '六年级', '3班', '70317', 85.5, 87.0, 92.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 264.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004951, '六年级', '3班', '70318', 91.5, 98.0, 90.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 279.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004952, '六年级', '3班', '70320', 83.0, 97.0, 82.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 262.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004953, '六年级', '3班', '70321', 70.0, 35.0, 56.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 161.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004954, '六年级', '3班', '70322', 65.5, 57.0, 56.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 178.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004955, '六年级', '3班', '70323', 82.5, 98.0, 78.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 258.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004956, '六年级', '3班', '70324', 83.0, 98.0, 86.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 267.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004957, '六年级', '3班', '70325', 76.0, 94.0, 86.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 256.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004958, '六年级', '3班', '70326', 81.0, 92.0, 84.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 257.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004959, '六年级', '3班', '70327', 74.5, 77.0, 69.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 220.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004960, '六年级', '3班', '70328', 79.0, 90.0, 68.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 237.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004961, '六年级', '3班', '70329', 76.0, 58.0, 59.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 193.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004962, '六年级', '3班', '70330', 73.5, 70.0, 71.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 214.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004963, '六年级', '3班', '70331', 69.0, 64.0, 67.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 200.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004964, '六年级', '3班', '70332', 87.0, 98.0, 86.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 271.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004965, '六年级', '3班', '70333', 82.5, 98.0, 92.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 272.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004966, '六年级', '3班', '70334', 77.0, 98.0, 66.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 241.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004967, '六年级', '3班', '70335', 83.5, 91.0, 64.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 238.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004968, '六年级', '3班', '70336', 73.0, 25.0, 51.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 149.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004969, '六年级', '3班', '70337', 86.5, 96.0, 81.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 263.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004970, '六年级', '3班', '70338', 74.0, 81.0, 60.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 215.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004971, '六年级', '3班', '70339', 66.5, 74.0, 75.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 215.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004972, '六年级', '3班', '70340', 89.5, 74.0, 79.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 242.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004973, '六年级', '3班', '70341', 71.0, 71.0, 77.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 219.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004974, '六年级', '3班', '70342', 63.0, 78.0, 78.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 219.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004975, '六年级', '3班', '70344', 78.0, 92.0, 76.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 246.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004976, '六年级', '3班', '70345', 78.5, 49.0, 52.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 179.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004977, '六年级', '3班', '70346', 77.5, 90.0, 72.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 239.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004978, '六年级', '3班', '70347', 84.5, 76.0, 70.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 230.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004979, '六年级', '3班', '70348', 83.0, 91.0, 74.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 248.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004980, '六年级', '3班', '70349', 83.0, 93.0, 77.0, NULL, '2023-05-12 18:05:55', 'admin', NULL, NULL, 42, 253.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004981, '六年级', '3班', '70301', 71.5, 97.0, 67.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 235.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004982, '六年级', '3班', '70302', 78.0, 85.0, 74.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 237.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004983, '六年级', '3班', '70303', 75.5, 68.0, 79.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 222.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004984, '六年级', '3班', '70304', 81.0, 100.0, 76.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 257.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004985, '六年级', '3班', '70305', 72.5, 93.0, 64.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 229.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004986, '六年级', '3班', '70306', 83.5, 88.0, 74.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004987, '六年级', '3班', '70307', 80.0, 90.0, 86.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 256.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004988, '六年级', '3班', '70308', 78.0, 78.0, 84.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 240.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004989, '六年级', '3班', '70309', 78.5, 94.0, 73.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004990, '六年级', '3班', '70310', 74.0, 70.0, 70.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 214.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004991, '六年级', '3班', '70311', 81.0, 98.0, 84.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 263.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004992, '六年级', '3班', '70312', 78.0, 68.0, 68.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 214.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004993, '六年级', '3班', '70313', 69.0, 57.0, 57.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 183.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004994, '六年级', '3班', '70314', 71.0, 80.0, 82.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 233.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004995, '六年级', '3班', '70315', 81.5, 81.0, 76.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 238.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004996, '六年级', '3班', '70316', 78.5, 75.0, 69.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 222.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004997, '六年级', '3班', '70317', 85.5, 87.0, 92.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 264.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004998, '六年级', '3班', '70318', 91.5, 98.0, 90.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 279.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000004999, '六年级', '3班', '70320', 83.0, 97.0, 82.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 262.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005000, '六年级', '3班', '70321', 70.0, 35.0, 56.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 161.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005001, '六年级', '3班', '70322', 65.5, 57.0, 56.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 178.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005002, '六年级', '3班', '70323', 82.5, 98.0, 78.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 258.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005003, '六年级', '3班', '70324', 83.0, 98.0, 86.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 267.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005004, '六年级', '3班', '70325', 76.0, 94.0, 86.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 256.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005005, '六年级', '3班', '70326', 81.0, 92.0, 84.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 257.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005006, '六年级', '3班', '70327', 74.5, 77.0, 69.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 220.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005007, '六年级', '3班', '70328', 79.0, 90.0, 68.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 237.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005008, '六年级', '3班', '70329', 76.0, 58.0, 59.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 193.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005009, '六年级', '3班', '70330', 73.5, 70.0, 71.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 214.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005010, '六年级', '3班', '70331', 69.0, 64.0, 67.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 200.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005011, '六年级', '3班', '70332', 87.0, 98.0, 86.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 271.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005012, '六年级', '3班', '70333', 82.5, 98.0, 92.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 272.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005013, '六年级', '3班', '70334', 77.0, 98.0, 66.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 241.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005014, '六年级', '3班', '70335', 83.5, 91.0, 64.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 238.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005015, '六年级', '3班', '70336', 73.0, 25.0, 51.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 149.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005016, '六年级', '3班', '70337', 86.5, 96.0, 81.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 263.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005017, '六年级', '3班', '70338', 74.0, 81.0, 60.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 215.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005018, '六年级', '3班', '70339', 66.5, 74.0, 75.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 215.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005019, '六年级', '3班', '70340', 89.5, 74.0, 79.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 242.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005020, '六年级', '3班', '70341', 71.0, 71.0, 77.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 219.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005021, '六年级', '3班', '70342', 63.0, 78.0, 78.0, NULL, '2023-05-12 18:08:16', 'admin', NULL, NULL, 41, 219.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005022, '六年级', '3班', '70344', 78.0, 92.0, 76.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 246.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005023, '六年级', '3班', '70345', 78.5, 49.0, 52.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 179.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005024, '六年级', '3班', '70346', 77.5, 90.0, 72.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 239.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005025, '六年级', '3班', '70347', 84.5, 76.0, 70.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 230.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005026, '六年级', '3班', '70348', 83.0, 91.0, 74.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 248.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005027, '六年级', '3班', '70349', 83.0, 93.0, 77.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 253.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005028, '六年级', '2班', '70201', 76.5, 92.0, 76.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 244.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005029, '六年级', '2班', '70202', 69.0, 98.0, 81.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 248.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005030, '六年级', '2班', '70203', 88.5, 97.0, 91.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 276.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005031, '六年级', '2班', '70204', 76.0, 91.0, 91.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 258.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005032, '六年级', '2班', '70205', 72.5, 96.0, 27.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 195.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005033, '六年级', '2班', '70206', 80.5, 79.0, 81.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 240.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005034, '六年级', '2班', '70207', 84.5, 94.0, 92.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 270.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005035, '六年级', '2班', '70208', 50.0, 87.0, 58.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 195.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005036, '六年级', '2班', '70209', 72.0, 91.0, 74.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 237.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005037, '六年级', '2班', '70210', 81.5, 64.0, 56.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 201.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005038, '六年级', '2班', '70211', 73.0, 94.0, 75.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 242.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005039, '六年级', '2班', '70212', 72.5, 80.0, 38.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 190.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005040, '六年级', '2班', '70213', 66.5, 86.0, 33.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 185.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005041, '六年级', '2班', '70214', 76.0, 83.0, 74.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 233.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005042, '六年级', '2班', '70215', 87.0, 96.0, 95.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 278.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005043, '六年级', '2班', '70216', 80.5, 95.0, 82.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 257.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005044, '六年级', '2班', '70217', 72.0, 52.0, 81.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 205.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005045, '六年级', '2班', '70218', 85.5, 87.0, 84.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 256.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005046, '六年级', '2班', '70219', 74.0, 95.0, 82.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 251.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005047, '六年级', '2班', '70220', 74.0, 84.0, 86.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 244.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005048, '六年级', '2班', '70221', 81.5, 91.0, 93.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 265.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005049, '六年级', '2班', '70222', 70.0, 83.0, 62.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 215.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005050, '六年级', '2班', '70223', 81.5, 91.0, 79.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 251.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005051, '六年级', '2班', '70224', 81.5, 93.0, 87.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 261.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005052, '六年级', '2班', '70225', 61.5, 67.0, 73.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 201.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005053, '六年级', '2班', '70226', 75.0, 92.0, 86.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 253.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005054, '六年级', '2班', '70227', 80.5, 98.0, 87.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 265.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005055, '六年级', '2班', '70228', 79.0, 95.0, 81.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 255.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005056, '六年级', '2班', '70229', 79.5, 94.0, 85.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 258.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005057, '六年级', '2班', '70230', 81.0, 91.0, 90.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 262.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005058, '六年级', '2班', '70231', 83.5, 99.0, 81.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 263.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005059, '六年级', '2班', '70232', 63.0, 79.0, 55.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 197.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005060, '六年级', '2班', '70233', 78.0, 92.0, 92.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 262.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005061, '六年级', '2班', '70234', 85.5, 98.0, 91.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 274.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005062, '六年级', '2班', '70235', NULL, 99.0, 71.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 170.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005063, '六年级', '2班', '70236', 75.5, 97.0, 67.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 239.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005064, '六年级', '2班', '70237', 68.0, 66.0, 57.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 191.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005065, '六年级', '2班', '70238', 64.5, 64.0, 78.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 206.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005066, '六年级', '2班', '70239', 76.5, 64.0, 71.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 211.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005067, '六年级', '2班', '70240', 54.0, 62.0, 49.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 165.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005068, '六年级', '2班', '70241', 64.0, 9.0, 23.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 96.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005069, '六年级', '2班', '70242', 78.5, 93.0, 61.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 232.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005070, '六年级', '2班', '70243', 59.0, 49.0, 76.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 184.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005071, '六年级', '2班', '70244', 49.0, 78.0, 20.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 147.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005072, '六年级', '2班', '70245', 76.5, 93.0, 94.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 263.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005073, '六年级', '2班', '70246', 79.0, 94.0, 92.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 265.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005074, '六年级', '2班', '70247', 73.0, 87.0, 81.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 241.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005075, '六年级', '2班', '70248', 77.0, 58.0, 84.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 219.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005076, '六年级', '2班', '70249', 68.5, 48.0, 73.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 189.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005077, '六年级', '4班', '70401', 31.0, 26.0, 18.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 75.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005078, '六年级', '4班', '70402', 73.5, 80.0, 80.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 233.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005079, '六年级', '4班', '70403', 81.5, 91.0, 77.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 249.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005080, '六年级', '4班', '70404', 74.0, 92.0, 91.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 257.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005081, '六年级', '4班', '70405', 80.5, 78.0, 58.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 216.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005082, '六年级', '4班', '70406', 31.0, 73.0, 69.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 173.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005083, '六年级', '4班', '70407', 72.5, 48.0, 74.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 194.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005084, '六年级', '4班', '70408', 82.5, 96.0, 91.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 269.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005085, '六年级', '4班', '70409', 81.0, 90.0, 88.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 259.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005086, '六年级', '4班', '70410', 80.0, 72.0, 79.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 231.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005087, '六年级', '4班', '70411', 79.0, 94.0, 82.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 255.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005088, '六年级', '4班', '70412', 81.5, 89.0, 75.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005089, '六年级', '4班', '70413', 78.0, 56.0, 88.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 222.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005090, '六年级', '4班', '70414', 84.5, 95.0, 90.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 269.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005091, '六年级', '4班', '70415', 79.0, 83.0, 74.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 236.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005092, '六年级', '4班', '70416', 86.0, 99.0, 89.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 274.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005093, '六年级', '4班', '70417', 80.0, 85.0, 80.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 245.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005094, '六年级', '4班', '70418', 82.5, 99.0, 93.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 274.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005095, '六年级', '4班', '70419', 73.5, 76.0, 66.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 215.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005096, '六年级', '4班', '70420', 80.0, 96.0, 83.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 259.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005097, '六年级', '4班', '70421', 72.5, 52.0, 76.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 200.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005098, '六年级', '4班', '70422', 82.5, 99.0, 82.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 263.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005099, '六年级', '4班', '70423', 80.5, 61.0, 70.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 211.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005100, '六年级', '4班', '70424', 75.5, 29.0, 59.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 163.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005101, '六年级', '4班', '70425', 79.0, 81.0, 80.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 240.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005102, '六年级', '4班', '70426', 71.0, 43.0, 69.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 183.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005103, '六年级', '4班', '70427', 75.0, 38.0, 85.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 198.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005104, '六年级', '4班', '70428', 81.5, 80.0, 82.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 243.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005105, '六年级', '4班', '70429', 78.0, 92.0, 75.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 245.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005106, '六年级', '4班', '70430', 62.5, 81.0, 73.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 216.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005107, '六年级', '4班', '70431', 32.5, 46.0, 24.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 102.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005108, '六年级', '4班', '70432', 79.0, 84.0, 80.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 243.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005109, '六年级', '4班', '70433', 80.0, 81.0, 64.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 225.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005110, '六年级', '4班', '70434', 79.0, 90.0, 77.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 246.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005111, '六年级', '4班', '70435', 79.0, 62.0, 63.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 204.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005112, '六年级', '4班', '70436', 78.5, 48.0, 77.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 203.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005113, '六年级', '4班', '70437', 72.0, 94.0, 78.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 244.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005114, '六年级', '4班', '70438', 66.0, 90.0, 66.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 222.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005115, '六年级', '4班', '70439', 80.5, 95.0, 49.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 224.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005116, '六年级', '4班', '70440', 87.0, 97.0, 88.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 272.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005117, '六年级', '4班', '70441', 72.0, 92.0, 66.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 230.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005118, '六年级', '4班', '70442', 76.5, 94.0, 79.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 249.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005119, '六年级', '4班', '70443', 77.5, 58.0, 59.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 194.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005120, '六年级', '4班', '70445', 66.5, 84.0, 63.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 213.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005121, '六年级', '4班', '70446', 79.0, 40.0, 73.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 192.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005122, '六年级', '4班', '70447', 72.5, 65.0, 56.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 193.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005123, '六年级', '4班', '70448', 75.0, 62.0, 62.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 199.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005124, '六年级', '4班', '70449', 69.5, 94.0, 82.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005125, '六年级', '4班', '70450', 75.5, 44.0, 40.0, NULL, '2023-05-12 18:08:17', 'admin', NULL, NULL, 41, 159.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005126, '六年级', '4班', '70401', 31.0, 26.0, 18.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 75.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005127, '六年级', '4班', '70402', 73.5, 80.0, 80.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 233.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005128, '六年级', '4班', '70403', 81.5, 91.0, 77.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 249.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005129, '六年级', '4班', '70404', 74.0, 92.0, 91.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 257.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005130, '六年级', '4班', '70405', 80.5, 78.0, 58.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 216.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005131, '六年级', '4班', '70406', 31.0, 73.0, 69.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 173.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005132, '六年级', '4班', '70407', 72.5, 48.0, 74.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 194.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005133, '六年级', '4班', '70408', 82.5, 96.0, 91.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 269.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005134, '六年级', '4班', '70409', 81.0, 90.0, 88.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 259.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005135, '六年级', '4班', '70410', 80.0, 72.0, 79.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 231.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005136, '六年级', '4班', '70411', 79.0, 94.0, 82.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 255.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005137, '六年级', '4班', '70412', 81.5, 89.0, 75.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005138, '六年级', '4班', '70413', 78.0, 56.0, 88.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 222.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005139, '六年级', '4班', '70414', 84.5, 95.0, 90.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 269.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005140, '六年级', '4班', '70415', 79.0, 83.0, 74.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 236.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005141, '六年级', '4班', '70416', 86.0, 99.0, 89.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 274.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005142, '六年级', '4班', '70417', 80.0, 85.0, 80.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 245.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005143, '六年级', '4班', '70418', 82.5, 99.0, 93.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 274.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005144, '六年级', '4班', '70419', 73.5, 76.0, 66.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 215.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005145, '六年级', '4班', '70420', 80.0, 96.0, 83.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 259.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005146, '六年级', '4班', '70421', 72.5, 52.0, 76.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 200.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005147, '六年级', '4班', '70422', 82.5, 99.0, 82.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 263.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005148, '六年级', '4班', '70423', 80.5, 61.0, 70.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 211.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005149, '六年级', '4班', '70424', 75.5, 29.0, 59.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 163.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005150, '六年级', '4班', '70425', 79.0, 81.0, 80.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 240.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005151, '六年级', '4班', '70426', 71.0, 43.0, 69.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 183.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005152, '六年级', '4班', '70427', 75.0, 38.0, 85.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 198.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005153, '六年级', '4班', '70428', 81.5, 80.0, 82.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 243.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005154, '六年级', '4班', '70429', 78.0, 92.0, 75.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 245.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005155, '六年级', '4班', '70430', 62.5, 81.0, 73.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 216.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005156, '六年级', '4班', '70431', 32.5, 46.0, 24.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 102.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005157, '六年级', '4班', '70432', 79.0, 84.0, 80.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 243.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005158, '六年级', '4班', '70433', 80.0, 81.0, 64.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 225.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005159, '六年级', '4班', '70434', 79.0, 90.0, 77.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 246.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005160, '六年级', '4班', '70435', 79.0, 62.0, 63.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 204.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005161, '六年级', '4班', '70436', 78.5, 48.0, 77.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 203.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005162, '六年级', '4班', '70437', 72.0, 94.0, 78.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 244.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005163, '六年级', '4班', '70438', 66.0, 90.0, 66.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 222.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005164, '六年级', '4班', '70439', 80.5, 95.0, 49.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 224.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005165, '六年级', '4班', '70440', 87.0, 97.0, 88.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 272.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005166, '六年级', '4班', '70441', 72.0, 92.0, 66.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 230.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005167, '六年级', '4班', '70442', 76.5, 94.0, 79.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 249.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005168, '六年级', '4班', '70443', 77.5, 58.0, 59.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 194.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005169, '六年级', '4班', '70445', 66.5, 84.0, 63.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 213.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005170, '六年级', '4班', '70446', 79.0, 40.0, 73.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 192.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005171, '六年级', '4班', '70447', 72.5, 65.0, 56.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 193.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005172, '六年级', '4班', '70448', 75.0, 62.0, 62.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 199.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005173, '六年级', '4班', '70449', 69.5, 94.0, 82.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005174, '六年级', '4班', '70450', 75.5, 44.0, 40.0, NULL, '2023-05-12 18:09:42', 'admin', NULL, NULL, 43, 159.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005175, '六年级', '3班', '70301', 71.5, 97.0, 67.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 235.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005176, '六年级', '3班', '70302', 78.0, 85.0, 74.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 237.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005177, '六年级', '3班', '70303', 75.5, 68.0, 79.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 222.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005178, '六年级', '3班', '70304', 81.0, 100.0, 76.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 257.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005179, '六年级', '3班', '70305', 72.5, 93.0, 64.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 229.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005180, '六年级', '3班', '70306', 83.5, 88.0, 74.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005181, '六年级', '3班', '70307', 80.0, 90.0, 86.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 256.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005182, '六年级', '3班', '70308', 78.0, 78.0, 84.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 240.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005183, '六年级', '3班', '70309', 78.5, 94.0, 73.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005184, '六年级', '3班', '70310', 74.0, 70.0, 70.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 214.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005185, '六年级', '3班', '70311', 81.0, 98.0, 84.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 263.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005186, '六年级', '3班', '70312', 78.0, 68.0, 68.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 214.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005187, '六年级', '3班', '70313', 69.0, 57.0, 57.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 183.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005188, '六年级', '3班', '70314', 71.0, 80.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 233.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005189, '六年级', '3班', '70315', 81.5, 81.0, 76.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 238.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005190, '六年级', '3班', '70316', 78.5, 75.0, 69.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 222.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005191, '六年级', '3班', '70317', 85.5, 87.0, 92.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 264.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005192, '六年级', '3班', '70318', 91.5, 98.0, 90.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 279.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005193, '六年级', '3班', '70320', 83.0, 97.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 262.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005194, '六年级', '3班', '70321', 70.0, 35.0, 56.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 161.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005195, '六年级', '3班', '70322', 65.5, 57.0, 56.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 178.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005196, '六年级', '3班', '70323', 82.5, 98.0, 78.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 258.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005197, '六年级', '3班', '70324', 83.0, 98.0, 86.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 267.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005198, '六年级', '3班', '70325', 76.0, 94.0, 86.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 256.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005199, '六年级', '3班', '70326', 81.0, 92.0, 84.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 257.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005200, '六年级', '3班', '70327', 74.5, 77.0, 69.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 220.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005201, '六年级', '3班', '70328', 79.0, 90.0, 68.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 237.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005202, '六年级', '3班', '70329', 76.0, 58.0, 59.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 193.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005203, '六年级', '3班', '70330', 73.5, 70.0, 71.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 214.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005204, '六年级', '3班', '70331', 69.0, 64.0, 67.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 200.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005205, '六年级', '3班', '70332', 87.0, 98.0, 86.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 271.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005206, '六年级', '3班', '70333', 82.5, 98.0, 92.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 272.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005207, '六年级', '3班', '70334', 77.0, 98.0, 66.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 241.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005208, '六年级', '3班', '70335', 83.5, 91.0, 64.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 238.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005209, '六年级', '3班', '70336', 73.0, 25.0, 51.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 149.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005210, '六年级', '3班', '70337', 86.5, 96.0, 81.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 263.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005211, '六年级', '3班', '70338', 74.0, 81.0, 60.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 215.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005212, '六年级', '3班', '70339', 66.5, 74.0, 75.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 215.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005213, '六年级', '3班', '70340', 89.5, 74.0, 79.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 242.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005214, '六年级', '3班', '70341', 71.0, 71.0, 77.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 219.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005215, '六年级', '3班', '70342', 63.0, 78.0, 78.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 219.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005216, '六年级', '3班', '70344', 78.0, 92.0, 76.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 246.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005217, '六年级', '3班', '70345', 78.5, 49.0, 52.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 179.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005218, '六年级', '3班', '70346', 77.5, 90.0, 72.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 239.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005219, '六年级', '3班', '70347', 84.5, 76.0, 70.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 230.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005220, '六年级', '3班', '70348', 83.0, 91.0, 74.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 248.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005221, '六年级', '3班', '70349', 83.0, 93.0, 77.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 253.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005222, '六年级', '2班', '70201', 76.5, 92.0, 76.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 244.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005223, '六年级', '2班', '70202', 69.0, 98.0, 81.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 248.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005224, '六年级', '2班', '70203', 88.5, 97.0, 91.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 276.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005225, '六年级', '2班', '70204', 76.0, 91.0, 91.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 258.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005226, '六年级', '2班', '70205', 72.5, 96.0, 27.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 195.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005227, '六年级', '2班', '70206', 80.5, 79.0, 81.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 240.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005228, '六年级', '2班', '70207', 84.5, 94.0, 92.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 270.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005229, '六年级', '2班', '70208', 50.0, 87.0, 58.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 195.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005230, '六年级', '2班', '70209', 72.0, 91.0, 74.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 237.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005231, '六年级', '2班', '70210', 81.5, 64.0, 56.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 201.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005232, '六年级', '2班', '70211', 73.0, 94.0, 75.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 242.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005233, '六年级', '2班', '70212', 72.5, 80.0, 38.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 190.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005234, '六年级', '2班', '70213', 66.5, 86.0, 33.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 185.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005235, '六年级', '2班', '70214', 76.0, 83.0, 74.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 233.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005236, '六年级', '2班', '70215', 87.0, 96.0, 95.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 278.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005237, '六年级', '2班', '70216', 80.5, 95.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 257.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005238, '六年级', '2班', '70217', 72.0, 52.0, 81.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 205.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005239, '六年级', '2班', '70218', 85.5, 87.0, 84.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 256.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005240, '六年级', '2班', '70219', 74.0, 95.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 251.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005241, '六年级', '2班', '70220', 74.0, 84.0, 86.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 244.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005242, '六年级', '2班', '70221', 81.5, 91.0, 93.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 265.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005243, '六年级', '2班', '70222', 70.0, 83.0, 62.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 215.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005244, '六年级', '2班', '70223', 81.5, 91.0, 79.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 251.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005245, '六年级', '2班', '70224', 81.5, 93.0, 87.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 261.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005246, '六年级', '2班', '70225', 61.5, 67.0, 73.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 201.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005247, '六年级', '2班', '70226', 75.0, 92.0, 86.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 253.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005248, '六年级', '2班', '70227', 80.5, 98.0, 87.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 265.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005249, '六年级', '2班', '70228', 79.0, 95.0, 81.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 255.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005250, '六年级', '2班', '70229', 79.5, 94.0, 85.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 258.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005251, '六年级', '2班', '70230', 81.0, 91.0, 90.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 262.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005252, '六年级', '2班', '70231', 83.5, 99.0, 81.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 263.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005253, '六年级', '2班', '70232', 63.0, 79.0, 55.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 197.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005254, '六年级', '2班', '70233', 78.0, 92.0, 92.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 262.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005255, '六年级', '2班', '70234', 85.5, 98.0, 91.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 274.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005256, '六年级', '2班', '70235', NULL, 99.0, 71.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 170.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005257, '六年级', '2班', '70236', 75.5, 97.0, 67.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 239.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005258, '六年级', '2班', '70237', 68.0, 66.0, 57.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 191.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005259, '六年级', '2班', '70238', 64.5, 64.0, 78.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 206.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005260, '六年级', '2班', '70239', 76.5, 64.0, 71.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 211.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005261, '六年级', '2班', '70240', 54.0, 62.0, 49.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 165.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005262, '六年级', '2班', '70241', 64.0, 9.0, 23.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 96.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005263, '六年级', '2班', '70242', 78.5, 93.0, 61.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 232.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005264, '六年级', '2班', '70243', 59.0, 49.0, 76.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 184.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005265, '六年级', '2班', '70244', 49.0, 78.0, 20.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 147.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005266, '六年级', '2班', '70245', 76.5, 93.0, 94.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 263.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005267, '六年级', '2班', '70246', 79.0, 94.0, 92.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 265.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005268, '六年级', '2班', '70247', 73.0, 87.0, 81.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 241.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005269, '六年级', '2班', '70248', 77.0, 58.0, 84.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 219.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005270, '六年级', '2班', '70249', 68.5, 48.0, 73.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 189.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005271, '六年级', '4班', '70401', 31.0, 26.0, 18.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 75.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005272, '六年级', '4班', '70402', 73.5, 80.0, 80.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 233.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005273, '六年级', '4班', '70403', 81.5, 91.0, 77.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 249.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005274, '六年级', '4班', '70404', 74.0, 92.0, 91.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 257.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005275, '六年级', '4班', '70405', 80.5, 78.0, 58.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 216.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005276, '六年级', '4班', '70406', 31.0, 73.0, 69.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 173.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005277, '六年级', '4班', '70407', 72.5, 48.0, 74.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 194.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005278, '六年级', '4班', '70408', 82.5, 96.0, 91.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 269.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005279, '六年级', '4班', '70409', 81.0, 90.0, 88.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 259.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005280, '六年级', '4班', '70410', 80.0, 72.0, 79.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 231.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005281, '六年级', '4班', '70411', 79.0, 94.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 255.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005282, '六年级', '4班', '70412', 81.5, 89.0, 75.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005283, '六年级', '4班', '70413', 78.0, 56.0, 88.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 222.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005284, '六年级', '4班', '70414', 84.5, 95.0, 90.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 269.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005285, '六年级', '4班', '70415', 79.0, 83.0, 74.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 236.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005286, '六年级', '4班', '70416', 86.0, 99.0, 89.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 274.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005287, '六年级', '4班', '70417', 80.0, 85.0, 80.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 245.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005288, '六年级', '4班', '70418', 82.5, 99.0, 93.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 274.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005289, '六年级', '4班', '70419', 73.5, 76.0, 66.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 215.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005290, '六年级', '4班', '70420', 80.0, 96.0, 83.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 259.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005291, '六年级', '4班', '70421', 72.5, 52.0, 76.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 200.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005292, '六年级', '4班', '70422', 82.5, 99.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 263.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005293, '六年级', '4班', '70423', 80.5, 61.0, 70.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 211.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005294, '六年级', '4班', '70424', 75.5, 29.0, 59.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 163.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005295, '六年级', '4班', '70425', 79.0, 81.0, 80.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 240.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005296, '六年级', '4班', '70426', 71.0, 43.0, 69.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 183.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005297, '六年级', '4班', '70427', 75.0, 38.0, 85.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 198.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005298, '六年级', '4班', '70428', 81.5, 80.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 243.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005299, '六年级', '4班', '70429', 78.0, 92.0, 75.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 245.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005300, '六年级', '4班', '70430', 62.5, 81.0, 73.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 216.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005301, '六年级', '4班', '70431', 32.5, 46.0, 24.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 102.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005302, '六年级', '4班', '70432', 79.0, 84.0, 80.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 243.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005303, '六年级', '4班', '70433', 80.0, 81.0, 64.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 225.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005304, '六年级', '4班', '70434', 79.0, 90.0, 77.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 246.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005305, '六年级', '4班', '70435', 79.0, 62.0, 63.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 204.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005306, '六年级', '4班', '70436', 78.5, 48.0, 77.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 203.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005307, '六年级', '4班', '70437', 72.0, 94.0, 78.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 244.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005308, '六年级', '4班', '70438', 66.0, 90.0, 66.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 222.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005309, '六年级', '4班', '70439', 80.5, 95.0, 49.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 224.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005310, '六年级', '4班', '70440', 87.0, 97.0, 88.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 272.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005311, '六年级', '4班', '70441', 72.0, 92.0, 66.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 230.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005312, '六年级', '4班', '70442', 76.5, 94.0, 79.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 249.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005313, '六年级', '4班', '70443', 77.5, 58.0, 59.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 194.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005314, '六年级', '4班', '70445', 66.5, 84.0, 63.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 213.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005315, '六年级', '4班', '70446', 79.0, 40.0, 73.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 192.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005316, '六年级', '4班', '70447', 72.5, 65.0, 56.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 193.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005317, '六年级', '4班', '70448', 75.0, 62.0, 62.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 199.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005318, '六年级', '4班', '70449', 69.5, 94.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 245.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005319, '六年级', '4班', '70450', 75.5, 44.0, 40.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 159.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005320, '六年级', '5班', '70501', 81.0, 99.0, 84.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 264.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005321, '六年级', '5班', '70502', 62.0, 56.0, 49.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 167.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005322, '六年级', '5班', '70503', 75.5, 81.0, 76.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 232.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005323, '六年级', '5班', '70504', 73.5, 96.0, 90.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 259.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005324, '六年级', '5班', '70505', 84.5, 92.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 258.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005325, '六年级', '5班', '70506', 88.5, 96.0, 94.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 278.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005326, '六年级', '5班', '70507', 81.5, 67.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 230.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005327, '六年级', '5班', '70508', 78.0, 93.0, 90.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 261.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005328, '六年级', '5班', '70509', 86.0, 98.0, 90.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 274.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005329, '六年级', '5班', '70510', 65.0, 94.0, 79.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 238.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005330, '六年级', '5班', '70511', 73.5, 85.0, 85.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 243.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005331, '六年级', '5班', '70512', 66.5, 61.0, 72.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 199.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005332, '六年级', '5班', '70513', 77.5, 99.0, 89.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 265.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005333, '六年级', '5班', '70514', 85.5, 93.0, 88.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 266.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005334, '六年级', '5班', '70515', 86.0, 97.0, 94.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 277.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005335, '六年级', '5班', '70516', 74.5, 72.0, 42.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 188.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005336, '六年级', '5班', '70517', 74.5, 81.0, 72.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 227.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005337, '六年级', '5班', '70518', 8.0, 17.0, 22.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 47.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005338, '六年级', '5班', '70519', 77.0, 89.0, 88.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 254.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005339, '六年级', '5班', '70520', 72.0, 78.0, 86.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 236.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005340, '六年级', '5班', '70521', 77.0, 95.0, 77.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 249.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005341, '六年级', '5班', '70522', 75.5, 80.0, 80.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 235.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005342, '六年级', '5班', '70523', 70.0, 57.0, 70.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 197.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005343, '六年级', '5班', '70524', 66.5, 73.0, 65.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 204.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005344, '六年级', '5班', '70525', 87.0, 100.0, 97.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 284.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005345, '六年级', '5班', '70526', 77.0, 90.0, 86.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 253.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005346, '六年级', '5班', '70527', 80.5, 98.0, 93.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 271.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005347, '六年级', '5班', '70528', 74.5, 78.0, 63.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 215.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005348, '六年级', '5班', '70529', 73.5, 79.0, 73.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 225.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005349, '六年级', '5班', '70530', 81.5, 77.0, 68.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 226.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005350, '六年级', '5班', '70531', 82.0, 82.0, 83.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 247.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005351, '六年级', '5班', '70532', 80.0, 91.0, 87.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 258.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005352, '六年级', '5班', '70533', 71.0, 70.0, 75.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 216.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005353, '六年级', '5班', '70534', 63.0, 68.0, 64.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 195.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005354, '六年级', '5班', '70535', 76.5, 93.0, 86.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 255.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005355, '六年级', '5班', '70536', 63.5, 76.0, 50.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 189.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005356, '六年级', '5班', '70537', 78.5, 56.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 216.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005357, '六年级', '5班', '70538', 74.0, 88.0, 84.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 246.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005358, '六年级', '5班', '70539', 54.0, 73.0, 26.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 153.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005359, '六年级', '5班', '70540', 77.0, 87.0, 78.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 242.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005360, '六年级', '5班', '70541', 79.5, 84.0, 89.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 252.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005361, '六年级', '5班', '70542', 88.5, 99.0, 92.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 279.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005362, '六年级', '5班', '70543', 75.5, 66.0, 70.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 211.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005363, '六年级', '5班', '70544', 68.5, 81.0, 50.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 199.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005364, '六年级', '5班', '70545', 78.0, 80.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 240.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005365, '六年级', '5班', '70546', 89.0, 100.0, 92.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 281.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005366, '六年级', '5班', '70547', 78.5, 96.0, 41.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 215.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005367, '六年级', '5班', '70548', 84.0, 95.0, 88.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 267.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005368, '六年级', '5班', '70549', 62.5, 73.0, 58.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 193.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005369, '六年级', '5班', '70550', 64.0, 89.0, 51.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 204.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005370, '六年级', '6班', '70601', 57.0, 14.0, 44.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 115.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005371, '六年级', '6班', '70602', 62.5, 15.0, 38.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 115.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005372, '六年级', '6班', '70603', 61.5, 50.0, 69.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 180.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005373, '六年级', '6班', '70604', 48.0, 22.0, 43.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 113.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005374, '六年级', '6班', '70605', 74.0, 50.0, 68.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 192.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005375, '六年级', '6班', '70606', 62.0, 50.0, 57.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 169.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005376, '六年级', '6班', '70607', 79.0, 91.0, 74.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 244.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005377, '六年级', '6班', '70608', 76.5, 57.0, 55.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 188.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005378, '六年级', '6班', '70609', 74.0, 70.0, 66.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 210.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005379, '六年级', '6班', '70610', 64.0, 53.0, 62.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 179.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005380, '六年级', '6班', '70611', 79.5, 86.0, 71.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 236.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005381, '六年级', '6班', '70612', 76.5, 54.0, 50.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 180.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005382, '六年级', '6班', '70613', 64.5, 42.0, 51.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 157.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005383, '六年级', '6班', '70614', 53.5, 60.0, 49.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 162.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005384, '六年级', '6班', '70615', 75.0, 77.0, 74.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 226.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005385, '六年级', '6班', '70616', 75.0, 73.0, 81.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 229.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005386, '六年级', '6班', '70617', 67.5, 90.0, 62.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 219.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005387, '六年级', '6班', '70618', 84.5, 84.0, 85.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 253.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005388, '六年级', '6班', '70619', 77.0, 94.0, 90.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 261.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005389, '六年级', '6班', '70620', 74.5, 70.0, 84.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 228.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005390, '六年级', '6班', '70621', 64.5, 47.0, 33.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 144.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005391, '六年级', '6班', '70622', 81.5, 75.0, 86.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 242.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005392, '六年级', '6班', '70623', 77.5, 97.0, 81.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 255.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005393, '六年级', '6班', '70624', 83.5, 79.0, 87.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 249.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005394, '六年级', '6班', '70625', 72.5, 89.0, 85.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 246.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005395, '六年级', '6班', '70626', 78.5, 91.0, 95.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 264.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005396, '六年级', '6班', '70627', 78.0, 74.0, 75.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 227.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005397, '六年级', '6班', '70628', 74.5, 87.0, 83.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 244.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005398, '六年级', '6班', '70629', 87.5, 84.0, 83.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 254.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005399, '六年级', '6班', '70630', 70.5, 80.0, 75.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 225.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005400, '六年级', '6班', '70631', 74.5, 97.0, 85.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 256.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005401, '六年级', '6班', '70632', 42.0, 38.0, 52.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 132.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005402, '六年级', '6班', '70633', 83.5, 97.0, 97.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 277.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005403, '六年级', '6班', '70634', 76.0, 61.0, 77.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 214.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005404, '六年级', '6班', '70635', 85.5, 98.0, 92.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 275.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005405, '六年级', '6班', '70636', 78.5, 93.0, 88.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 259.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005406, '六年级', '6班', '70637', 80.5, 92.0, 93.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 265.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005407, '六年级', '6班', '70638', 76.0, 87.0, 90.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 253.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005408, '六年级', '6班', '70639', 67.5, 89.0, 71.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 227.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005409, '六年级', '6班', '70640', 62.0, 30.0, 54.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 146.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005410, '六年级', '6班', '70641', 78.0, 78.0, 72.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 228.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005411, '六年级', '6班', '70642', 82.0, 92.0, 91.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 265.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005412, '六年级', '6班', '70643', 88.5, 96.0, 92.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 276.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005413, '六年级', '6班', '70644', 76.0, 82.0, 73.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 231.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005414, '六年级', '6班', '70645', 79.5, 87.0, 82.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 248.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005415, '六年级', '6班', '70646', 69.0, 78.0, 79.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 226.0, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005416, '六年级', '6班', '70647', 81.5, 65.0, 73.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 22, 219.5, NULL, NULL, NULL, NULL);
INSERT INTO `exam_student_scores` VALUES (00000000000000005417, '六年级', '6班', '70648', 88.5, 86.0, 0.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 69, 266.5, 12.98, -2.82, -100.00, -89.84);
INSERT INTO `exam_student_scores` VALUES (00000000000000005418, '六年级', '6班', '70649', 71.5, NULL, 67.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 69, 223.5, -8.72, NULL, 37.66, 28.94);
INSERT INTO `exam_student_scores` VALUES (00000000000000005419, '六年级', '6班', '70650', 75.0, 91.0, 79.0, NULL, '2023-05-12 18:46:26', 'admin', NULL, NULL, 69, 245.0, -4.25, 2.82, 62.32, 60.89);
INSERT INTO `exam_student_scores` VALUES (00000000000000005420, '三年级', '3班', 'A0301', 35.5, 68.5, 96.5, NULL, '2023-05-15 19:27:13', 'admin', NULL, NULL, 69, 200.5, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `exam_student_scores` VALUES (00000000000000006801, '二年级', '1班', '10101', 85.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 175.0, 3.31, 5.47, NULL, 8.78);
INSERT INTO `exam_student_scores` VALUES (00000000000000006802, '二年级', '1班', '10102', 86.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 169.0, 4.52, -2.73, NULL, 1.79);
INSERT INTO `exam_student_scores` VALUES (00000000000000006803, '二年级', '1班', '10103', 78.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 163.0, -5.20, -0.39, NULL, -5.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000006804, '二年级', '1班', '10104', 85.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 3.31, 7.82, NULL, 11.13);
INSERT INTO `exam_student_scores` VALUES (00000000000000006805, '二年级', '1班', '10105', 87.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 5.74, 4.30, NULL, 10.04);
INSERT INTO `exam_student_scores` VALUES (00000000000000006806, '二年级', '1班', '10106', 90.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 9.38, 8.99, NULL, 18.37);
INSERT INTO `exam_student_scores` VALUES (00000000000000006807, '二年级', '1班', '10107', 87.0, 80.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 167.0, 5.74, -6.25, NULL, -0.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000006808, '二年级', '1班', '10108', 87.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 5.74, 11.33, NULL, 17.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000006809, '二年级', '1班', '10109', 94.0, 69.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 163.0, 14.24, -19.14, NULL, -4.90);
INSERT INTO `exam_student_scores` VALUES (00000000000000006810, '二年级', '1班', '10110', 89.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 8.17, 10.16, NULL, 18.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000006811, '二年级', '1班', '10111', 91.0, 80.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 171.0, 10.60, -6.25, NULL, 4.35);
INSERT INTO `exam_student_scores` VALUES (00000000000000006812, '二年级', '1班', '10112', 85.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 3.31, 11.33, NULL, 14.64);
INSERT INTO `exam_student_scores` VALUES (00000000000000006813, '二年级', '1班', '10113', 84.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 171.0, 2.09, 1.96, NULL, 4.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000006814, '二年级', '1班', '10114', 87.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 5.74, 5.47, NULL, 11.21);
INSERT INTO `exam_student_scores` VALUES (00000000000000006815, '二年级', '1班', '10115', 92.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 11.81, 13.68, NULL, 25.49);
INSERT INTO `exam_student_scores` VALUES (00000000000000006816, '二年级', '1班', '10116', 88.0, 73.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 161.0, 6.95, -14.45, NULL, -7.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000006817, '二年级', '1班', '10117', 86.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 4.52, 7.82, NULL, 12.34);
INSERT INTO `exam_student_scores` VALUES (00000000000000006818, '二年级', '1班', '10118', 85.0, 78.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 163.0, 3.31, -8.59, NULL, -5.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000006819, '二年级', '1班', '10119', 90.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 9.38, 14.85, NULL, 24.23);
INSERT INTO `exam_student_scores` VALUES (00000000000000006820, '二年级', '1班', '10120', 93.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 13.03, 4.30, NULL, 17.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000006821, '二年级', '1班', '10121', 82.0, 74.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 156.0, -0.34, -13.28, NULL, -13.62);
INSERT INTO `exam_student_scores` VALUES (00000000000000006822, '二年级', '1班', '10122', 86.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 165.0, 4.52, -7.42, NULL, -2.90);
INSERT INTO `exam_student_scores` VALUES (00000000000000006823, '二年级', '1班', '10123', 86.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 4.52, 8.99, NULL, 13.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000006824, '二年级', '1班', '10124', 90.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 9.38, 12.50, NULL, 21.88);
INSERT INTO `exam_student_scores` VALUES (00000000000000006825, '二年级', '1班', '10125', 0.0, 0.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 0.0, -100.00, -100.00, NULL, -200.00);
INSERT INTO `exam_student_scores` VALUES (00000000000000006826, '二年级', '1班', '10126', 83.0, 73.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 156.0, 0.88, -14.45, NULL, -13.57);
INSERT INTO `exam_student_scores` VALUES (00000000000000006827, '二年级', '1班', '10127', 88.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 175.0, 6.95, 1.96, NULL, 8.91);
INSERT INTO `exam_student_scores` VALUES (00000000000000006828, '二年级', '1班', '10128', 78.0, 80.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 158.0, -5.20, -6.25, NULL, -11.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000006829, '二年级', '1班', '10129', 94.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 14.24, 1.96, NULL, 16.20);
INSERT INTO `exam_student_scores` VALUES (00000000000000006830, '二年级', '1班', '10130', 89.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 8.17, 12.50, NULL, 20.67);
INSERT INTO `exam_student_scores` VALUES (00000000000000006831, '二年级', '1班', '10131', 90.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 9.38, 10.16, NULL, 19.54);
INSERT INTO `exam_student_scores` VALUES (00000000000000006832, '二年级', '1班', '10132', 93.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 13.03, 11.33, NULL, 24.36);
INSERT INTO `exam_student_scores` VALUES (00000000000000006833, '二年级', '1班', '10133', 84.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, 2.09, 5.47, NULL, 7.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000006834, '二年级', '1班', '10134', 97.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 17.89, 6.64, NULL, 24.53);
INSERT INTO `exam_student_scores` VALUES (00000000000000006835, '二年级', '1班', '10135', 93.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 13.03, 12.50, NULL, 25.53);
INSERT INTO `exam_student_scores` VALUES (00000000000000006836, '二年级', '1班', '10136', 97.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 193.0, 17.89, 12.50, NULL, 30.39);
INSERT INTO `exam_student_scores` VALUES (00000000000000006837, '二年级', '1班', '10137', 79.0, 71.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 150.0, -3.99, -16.79, NULL, -20.78);
INSERT INTO `exam_student_scores` VALUES (00000000000000006838, '二年级', '1班', '10138', 92.0, 74.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 166.0, 11.81, -13.28, NULL, -1.47);
INSERT INTO `exam_student_scores` VALUES (00000000000000006839, '二年级', '1班', '10139', 93.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 13.03, 13.68, NULL, 26.71);
INSERT INTO `exam_student_scores` VALUES (00000000000000006840, '二年级', '1班', '10140', 92.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 11.81, 6.64, NULL, 18.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000006841, '二年级', '1班', '10141', 90.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 9.38, 7.82, NULL, 17.20);
INSERT INTO `exam_student_scores` VALUES (00000000000000006842, '二年级', '1班', '10142', 98.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 196.0, 19.11, 14.85, NULL, 33.96);
INSERT INTO `exam_student_scores` VALUES (00000000000000006843, '二年级', '1班', '10143', 70.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 153.0, -14.92, -2.73, NULL, -17.65);
INSERT INTO `exam_student_scores` VALUES (00000000000000006844, '二年级', '1班', '10144', 73.0, 72.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 145.0, -11.28, -15.62, NULL, -26.90);
INSERT INTO `exam_student_scores` VALUES (00000000000000006845, '二年级', '1班', '10145', 92.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 187.0, 11.81, 11.33, NULL, 23.14);
INSERT INTO `exam_student_scores` VALUES (00000000000000006846, '二年级', '1班', '10146', 91.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 10.60, 14.85, NULL, 25.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000006847, '二年级', '1班', '10147', 80.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 159.0, -2.77, -7.42, NULL, -10.19);
INSERT INTO `exam_student_scores` VALUES (00000000000000006848, '二年级', '1班', '10148', 94.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 14.24, 3.13, NULL, 17.37);
INSERT INTO `exam_student_scores` VALUES (00000000000000006849, '二年级', '1班', '10149', 76.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 159.0, -7.63, -2.73, NULL, -10.36);
INSERT INTO `exam_student_scores` VALUES (00000000000000006850, '二年级', '1班', '10150', 92.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 11.81, 1.96, NULL, 13.77);
INSERT INTO `exam_student_scores` VALUES (00000000000000006851, '二年级', '2班', '10201', 77.0, 80.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 157.0, -6.42, -6.25, NULL, -12.67);
INSERT INTO `exam_student_scores` VALUES (00000000000000006852, '二年级', '2班', '10202', 71.0, 57.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 128.0, -13.71, -33.20, NULL, -46.91);
INSERT INTO `exam_student_scores` VALUES (00000000000000006853, '二年级', '2班', '10203', 75.0, 57.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 132.0, -8.85, -33.20, NULL, -42.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000006854, '二年级', '2班', '10204', 96.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 191.0, 16.67, 11.33, NULL, 28.00);
INSERT INTO `exam_student_scores` VALUES (00000000000000006855, '二年级', '2班', '10205', 88.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 6.95, 13.68, NULL, 20.63);
INSERT INTO `exam_student_scores` VALUES (00000000000000006856, '二年级', '2班', '10206', 72.0, NULL, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 72.0, -12.49, NULL, NULL, -12.49);
INSERT INTO `exam_student_scores` VALUES (00000000000000006857, '二年级', '2班', '10207', 92.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 11.81, 5.47, NULL, 17.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000006858, '二年级', '2班', '10208', 84.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 2.09, 12.50, NULL, 14.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000006859, '二年级', '2班', '10209', 95.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 15.46, 13.68, NULL, 29.14);
INSERT INTO `exam_student_scores` VALUES (00000000000000006860, '二年级', '2班', '10210', 77.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 165.0, -6.42, 3.13, NULL, -3.29);
INSERT INTO `exam_student_scores` VALUES (00000000000000006861, '二年级', '2班', '10211', 90.0, 100.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 9.38, 17.19, NULL, 26.57);
INSERT INTO `exam_student_scores` VALUES (00000000000000006862, '二年级', '2班', '10212', 90.0, 68.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 158.0, 9.38, -20.31, NULL, -10.93);
INSERT INTO `exam_student_scores` VALUES (00000000000000006863, '二年级', '2班', '10213', 80.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 169.0, -2.77, 4.30, NULL, 1.53);
INSERT INTO `exam_student_scores` VALUES (00000000000000006864, '二年级', '2班', '10214', 89.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 8.17, 10.16, NULL, 18.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000006865, '二年级', '2班', '10215', 80.0, 74.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 154.0, -2.77, -13.28, NULL, -16.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000006866, '二年级', '2班', '10216', 91.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 10.60, 10.16, NULL, 20.76);
INSERT INTO `exam_student_scores` VALUES (00000000000000006867, '二年级', '2班', '10217', 96.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 193.0, 16.67, 13.68, NULL, 30.35);
INSERT INTO `exam_student_scores` VALUES (00000000000000006868, '二年级', '2班', '10218', 92.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 11.81, 13.68, NULL, 25.49);
INSERT INTO `exam_student_scores` VALUES (00000000000000006869, '二年级', '2班', '10219', 91.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 170.0, 10.60, -7.42, NULL, 3.18);
INSERT INTO `exam_student_scores` VALUES (00000000000000006870, '二年级', '2班', '10220', 94.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 14.24, 5.47, NULL, 19.71);
INSERT INTO `exam_student_scores` VALUES (00000000000000006871, '二年级', '2班', '10221', 96.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 16.67, 0.79, NULL, 17.46);
INSERT INTO `exam_student_scores` VALUES (00000000000000006872, '二年级', '2班', '10222', 93.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 13.03, -0.39, NULL, 12.64);
INSERT INTO `exam_student_scores` VALUES (00000000000000006873, '二年级', '2班', '10223', 95.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 15.46, 5.47, NULL, 20.93);
INSERT INTO `exam_student_scores` VALUES (00000000000000006874, '二年级', '2班', '10224', 79.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, -3.99, 10.16, NULL, 6.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000006875, '二年级', '2班', '10225', 84.0, 78.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 162.0, 2.09, -8.59, NULL, -6.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000006876, '二年级', '2班', '10226', 83.0, 63.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 146.0, 0.88, -26.17, NULL, -25.29);
INSERT INTO `exam_student_scores` VALUES (00000000000000006877, '二年级', '2班', '10227', 87.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 166.0, 5.74, -7.42, NULL, -1.68);
INSERT INTO `exam_student_scores` VALUES (00000000000000006878, '二年级', '2班', '10228', 88.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, 6.95, 0.79, NULL, 7.74);
INSERT INTO `exam_student_scores` VALUES (00000000000000006879, '二年级', '2班', '10229', 82.0, 80.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 162.0, -0.34, -6.25, NULL, -6.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000006880, '二年级', '2班', '10230', 90.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 9.38, 10.16, NULL, 19.54);
INSERT INTO `exam_student_scores` VALUES (00000000000000006881, '二年级', '2班', '10231', 91.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 10.60, 16.02, NULL, 26.62);
INSERT INTO `exam_student_scores` VALUES (00000000000000006882, '二年级', '2班', '10232', 87.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 5.74, 7.82, NULL, 13.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000006883, '二年级', '2班', '10233', 85.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, 3.31, 4.30, NULL, 7.61);
INSERT INTO `exam_student_scores` VALUES (00000000000000006884, '二年级', '2班', '10234', 91.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 10.60, 10.16, NULL, 20.76);
INSERT INTO `exam_student_scores` VALUES (00000000000000006885, '二年级', '2班', '10235', 93.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 13.03, -1.56, NULL, 11.47);
INSERT INTO `exam_student_scores` VALUES (00000000000000006886, '二年级', '2班', '10236', 70.0, 76.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 146.0, -14.92, -10.93, NULL, -25.85);
INSERT INTO `exam_student_scores` VALUES (00000000000000006887, '二年级', '2班', '10237', 83.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 167.0, 0.88, -1.56, NULL, -0.68);
INSERT INTO `exam_student_scores` VALUES (00000000000000006888, '二年级', '2班', '10238', 90.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 9.38, 12.50, NULL, 21.88);
INSERT INTO `exam_student_scores` VALUES (00000000000000006889, '二年级', '2班', '10239', 92.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 11.81, 7.82, NULL, 19.63);
INSERT INTO `exam_student_scores` VALUES (00000000000000006890, '二年级', '2班', '10240', 89.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 8.17, 10.16, NULL, 18.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000006891, '二年级', '2班', '10241', 89.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 8.17, 12.50, NULL, 20.67);
INSERT INTO `exam_student_scores` VALUES (00000000000000006892, '二年级', '2班', '10242', 72.0, 72.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 144.0, -12.49, -15.62, NULL, -28.11);
INSERT INTO `exam_student_scores` VALUES (00000000000000006893, '二年级', '2班', '10243', 91.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 10.60, 10.16, NULL, 20.76);
INSERT INTO `exam_student_scores` VALUES (00000000000000006894, '二年级', '2班', '10244', 95.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 15.46, 13.68, NULL, 29.14);
INSERT INTO `exam_student_scores` VALUES (00000000000000006895, '二年级', '2班', '10245', 94.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 193.0, 14.24, 16.02, NULL, 30.26);
INSERT INTO `exam_student_scores` VALUES (00000000000000006896, '二年级', '2班', '10246', 84.0, 80.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 164.0, 2.09, -6.25, NULL, -4.16);
INSERT INTO `exam_student_scores` VALUES (00000000000000006897, '二年级', '2班', '10247', 82.0, 75.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 157.0, -0.34, -12.11, NULL, -12.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000006898, '二年级', '2班', '10248', 85.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 3.31, 11.33, NULL, 14.64);
INSERT INTO `exam_student_scores` VALUES (00000000000000006899, '二年级', '2班', '10249', 61.0, 65.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 126.0, -25.86, -23.83, NULL, -49.69);
INSERT INTO `exam_student_scores` VALUES (00000000000000006900, '二年级', '2班', '10250', 54.0, 23.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 77.0, -34.37, -73.05, NULL, -107.42);
INSERT INTO `exam_student_scores` VALUES (00000000000000006901, '二年级', '3班', '10301', 72.0, 72.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 144.0, -12.49, -15.62, NULL, -28.11);
INSERT INTO `exam_student_scores` VALUES (00000000000000006902, '二年级', '3班', '10302', 89.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 8.17, 11.33, NULL, 19.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000006903, '二年级', '3班', '10303', 99.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 197.0, 20.32, 14.85, NULL, 35.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000006904, '二年级', '3班', '10304', 87.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 5.74, 10.16, NULL, 15.90);
INSERT INTO `exam_student_scores` VALUES (00000000000000006905, '二年级', '3班', '10305', 44.0, 53.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 97.0, -46.52, -37.89, NULL, -84.41);
INSERT INTO `exam_student_scores` VALUES (00000000000000006906, '二年级', '3班', '10306', 62.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 151.0, -24.65, 4.30, NULL, -20.35);
INSERT INTO `exam_student_scores` VALUES (00000000000000006907, '二年级', '3班', '10307', 85.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 3.31, 14.85, NULL, 18.16);
INSERT INTO `exam_student_scores` VALUES (00000000000000006908, '二年级', '3班', '10308', 89.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, 8.17, -0.39, NULL, 7.78);
INSERT INTO `exam_student_scores` VALUES (00000000000000006909, '二年级', '3班', '10309', 76.0, 77.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 153.0, -7.63, -9.76, NULL, -17.39);
INSERT INTO `exam_student_scores` VALUES (00000000000000006910, '二年级', '3班', '10310', 90.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 9.38, 16.02, NULL, 25.40);
INSERT INTO `exam_student_scores` VALUES (00000000000000006911, '二年级', '3班', '10311', 84.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 2.09, 10.16, NULL, 12.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000006912, '二年级', '3班', '10312', 77.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 165.0, -6.42, 3.13, NULL, -3.29);
INSERT INTO `exam_student_scores` VALUES (00000000000000006913, '二年级', '3班', '10313', 65.0, 68.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 133.0, -21.00, -20.31, NULL, -41.31);
INSERT INTO `exam_student_scores` VALUES (00000000000000006914, '二年级', '3班', '10314', 80.0, 75.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 155.0, -2.77, -12.11, NULL, -14.88);
INSERT INTO `exam_student_scores` VALUES (00000000000000006915, '二年级', '3班', '10315', 72.0, 62.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 134.0, -12.49, -27.34, NULL, -39.83);
INSERT INTO `exam_student_scores` VALUES (00000000000000006916, '二年级', '3班', '10316', 61.0, 75.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 136.0, -25.86, -12.11, NULL, -37.97);
INSERT INTO `exam_student_scores` VALUES (00000000000000006917, '二年级', '3班', '10317', 91.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 10.60, 11.33, NULL, 21.93);
INSERT INTO `exam_student_scores` VALUES (00000000000000006918, '二年级', '3班', '10318', 94.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 187.0, 14.24, 8.99, NULL, 23.23);
INSERT INTO `exam_student_scores` VALUES (00000000000000006919, '二年级', '3班', '10319', 86.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 4.52, 10.16, NULL, 14.68);
INSERT INTO `exam_student_scores` VALUES (00000000000000006920, '二年级', '3班', '10320', 74.0, 73.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 147.0, -10.06, -14.45, NULL, -24.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000006921, '二年级', '3班', '10321', 80.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 167.0, -2.77, 1.96, NULL, -0.81);
INSERT INTO `exam_student_scores` VALUES (00000000000000006922, '二年级', '3班', '10322', 61.0, 62.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 123.0, -25.86, -27.34, NULL, -53.20);
INSERT INTO `exam_student_scores` VALUES (00000000000000006923, '二年级', '3班', '10323', 38.0, 66.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 104.0, -53.82, -22.65, NULL, -76.47);
INSERT INTO `exam_student_scores` VALUES (00000000000000006924, '二年级', '3班', '10324', 86.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 4.52, 10.16, NULL, 14.68);
INSERT INTO `exam_student_scores` VALUES (00000000000000006925, '二年级', '3班', '10325', 67.0, 74.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 141.0, -18.57, -13.28, NULL, -31.85);
INSERT INTO `exam_student_scores` VALUES (00000000000000006926, '二年级', '3班', '10326', 60.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 139.0, -27.08, -7.42, NULL, -34.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000006927, '二年级', '3班', '10327', 36.0, 43.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 79.0, -56.25, -49.61, NULL, -105.86);
INSERT INTO `exam_student_scores` VALUES (00000000000000006928, '二年级', '3班', '10328', 93.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 13.03, 4.30, NULL, 17.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000006929, '二年级', '3班', '10329', 94.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 14.24, 14.85, NULL, 29.09);
INSERT INTO `exam_student_scores` VALUES (00000000000000006930, '二年级', '3班', '10330', 79.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 166.0, -3.99, 1.96, NULL, -2.03);
INSERT INTO `exam_student_scores` VALUES (00000000000000006931, '二年级', '3班', '10331', 85.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 3.31, 7.82, NULL, 11.13);
INSERT INTO `exam_student_scores` VALUES (00000000000000006932, '二年级', '3班', '10332', 45.0, 46.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 91.0, -45.31, -46.09, NULL, -91.40);
INSERT INTO `exam_student_scores` VALUES (00000000000000006933, '二年级', '3班', '10333', 66.0, 68.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 134.0, -19.79, -20.31, NULL, -40.10);
INSERT INTO `exam_student_scores` VALUES (00000000000000006934, '二年级', '3班', '10334', 69.0, 78.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 147.0, -16.14, -8.59, NULL, -24.73);
INSERT INTO `exam_student_scores` VALUES (00000000000000006935, '二年级', '3班', '10335', 87.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 5.74, 14.85, NULL, 20.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000006936, '二年级', '3班', '10336', 85.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 3.31, 8.99, NULL, 12.30);
INSERT INTO `exam_student_scores` VALUES (00000000000000006937, '二年级', '3班', '10337', 82.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 169.0, -0.34, 1.96, NULL, 1.62);
INSERT INTO `exam_student_scores` VALUES (00000000000000006938, '二年级', '3班', '10338', 63.0, 70.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 133.0, -23.43, -17.97, NULL, -41.40);
INSERT INTO `exam_student_scores` VALUES (00000000000000006939, '二年级', '3班', '10339', 95.0, 100.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 195.0, 15.46, 17.19, NULL, 32.65);
INSERT INTO `exam_student_scores` VALUES (00000000000000006940, '二年级', '3班', '10340', 91.0, 100.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 191.0, 10.60, 17.19, NULL, 27.79);
INSERT INTO `exam_student_scores` VALUES (00000000000000006941, '二年级', '3班', '10341', 86.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 4.52, 11.33, NULL, 15.85);
INSERT INTO `exam_student_scores` VALUES (00000000000000006942, '二年级', '3班', '10342', 89.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 8.17, 10.16, NULL, 18.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000006943, '二年级', '3班', '10343', 89.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 8.17, 10.16, NULL, 18.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000006944, '二年级', '3班', '10344', 88.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 171.0, 6.95, -2.73, NULL, 4.22);
INSERT INTO `exam_student_scores` VALUES (00000000000000006945, '二年级', '3班', '10345', 89.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 8.17, 12.50, NULL, 20.67);
INSERT INTO `exam_student_scores` VALUES (00000000000000006946, '二年级', '3班', '10346', 87.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 5.74, 4.30, NULL, 10.04);
INSERT INTO `exam_student_scores` VALUES (00000000000000006947, '二年级', '3班', '10347', 84.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 2.09, 8.99, NULL, 11.08);
INSERT INTO `exam_student_scores` VALUES (00000000000000006948, '二年级', '3班', '10348', 88.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 6.95, 12.50, NULL, 19.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000006949, '二年级', '3班', '10349', 80.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, -2.77, 10.16, NULL, 7.39);
INSERT INTO `exam_student_scores` VALUES (00000000000000006950, '二年级', '4班', '10401', 89.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 8.17, 11.33, NULL, 19.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000006951, '二年级', '4班', '10402', 90.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 9.38, 12.50, NULL, 21.88);
INSERT INTO `exam_student_scores` VALUES (00000000000000006952, '二年级', '4班', '10403', 90.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 169.0, 9.38, -7.42, NULL, 1.96);
INSERT INTO `exam_student_scores` VALUES (00000000000000006953, '二年级', '4班', '10404', 73.0, 74.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 147.0, -11.28, -13.28, NULL, -24.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000006954, '二年级', '4班', '10405', 96.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 16.67, 7.82, NULL, 24.49);
INSERT INTO `exam_student_scores` VALUES (00000000000000006955, '二年级', '4班', '10406', 85.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 169.0, 3.31, -1.56, NULL, 1.75);
INSERT INTO `exam_student_scores` VALUES (00000000000000006956, '二年级', '4班', '10407', 83.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 0.88, 11.33, NULL, 12.21);
INSERT INTO `exam_student_scores` VALUES (00000000000000006957, '二年级', '4班', '10408', 91.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 10.60, 13.68, NULL, 24.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000006958, '二年级', '4班', '10409', 73.0, 69.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 142.0, -11.28, -19.14, NULL, -30.42);
INSERT INTO `exam_student_scores` VALUES (00000000000000006959, '二年级', '4班', '10410', 74.0, 61.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 135.0, -10.06, -28.51, NULL, -38.57);
INSERT INTO `exam_student_scores` VALUES (00000000000000006960, '二年级', '4班', '10411', 88.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 6.95, 4.30, NULL, 11.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000006961, '二年级', '4班', '10412', 62.0, 57.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 119.0, -24.65, -33.20, NULL, -57.85);
INSERT INTO `exam_student_scores` VALUES (00000000000000006962, '二年级', '4班', '10414', 91.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 10.60, 8.99, NULL, 19.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000006963, '二年级', '4班', '10415', 80.0, 63.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 143.0, -2.77, -26.17, NULL, -28.94);
INSERT INTO `exam_student_scores` VALUES (00000000000000006964, '二年级', '4班', '10416', 86.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 4.52, 6.64, NULL, 11.16);
INSERT INTO `exam_student_scores` VALUES (00000000000000006965, '二年级', '4班', '10417', 90.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 9.38, 12.50, NULL, 21.88);
INSERT INTO `exam_student_scores` VALUES (00000000000000006966, '二年级', '4班', '10418', 90.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 9.38, 6.64, NULL, 16.02);
INSERT INTO `exam_student_scores` VALUES (00000000000000006967, '二年级', '4班', '10419', 94.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 14.24, -1.56, NULL, 12.68);
INSERT INTO `exam_student_scores` VALUES (00000000000000006968, '二年级', '4班', '10420', 87.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 5.74, 13.68, NULL, 19.42);
INSERT INTO `exam_student_scores` VALUES (00000000000000006969, '二年级', '4班', '10421', 76.0, 81.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 157.0, -7.63, -5.07, NULL, -12.70);
INSERT INTO `exam_student_scores` VALUES (00000000000000006970, '二年级', '4班', '10422', 65.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 152.0, -21.00, 1.96, NULL, -19.04);
INSERT INTO `exam_student_scores` VALUES (00000000000000006971, '二年级', '4班', '10423', 96.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 16.67, 12.50, NULL, 29.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000006972, '二年级', '4班', '10424', 87.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, 5.74, 1.96, NULL, 7.70);
INSERT INTO `exam_student_scores` VALUES (00000000000000006973, '二年级', '4班', '10425', 93.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 13.03, 7.82, NULL, 20.85);
INSERT INTO `exam_student_scores` VALUES (00000000000000006974, '二年级', '4班', '10426', 85.0, 70.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 155.0, 3.31, -17.97, NULL, -14.66);
INSERT INTO `exam_student_scores` VALUES (00000000000000006975, '二年级', '4班', '10427', 80.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 164.0, -2.77, -1.56, NULL, -4.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000006976, '二年级', '4班', '10428', 90.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 9.38, 11.33, NULL, 20.71);
INSERT INTO `exam_student_scores` VALUES (00000000000000006977, '二年级', '4班', '10429', 92.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 11.81, 8.99, NULL, 20.80);
INSERT INTO `exam_student_scores` VALUES (00000000000000006978, '二年级', '4班', '10430', 59.0, 55.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 114.0, -28.29, -35.54, NULL, -63.83);
INSERT INTO `exam_student_scores` VALUES (00000000000000006979, '二年级', '4班', '10431', 82.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 165.0, -0.34, -2.73, NULL, -3.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000006980, '二年级', '4班', '10432', 91.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 10.60, 5.47, NULL, 16.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000006981, '二年级', '4班', '10433', 22.0, 35.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 57.0, -73.26, -58.98, NULL, -132.24);
INSERT INTO `exam_student_scores` VALUES (00000000000000006982, '二年级', '4班', '10434', 90.0, 63.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 153.0, 9.38, -26.17, NULL, -16.79);
INSERT INTO `exam_student_scores` VALUES (00000000000000006983, '二年级', '4班', '10435', 81.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 169.0, -1.56, 3.13, NULL, 1.57);
INSERT INTO `exam_student_scores` VALUES (00000000000000006984, '二年级', '4班', '10436', 81.0, 76.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 157.0, -1.56, -10.93, NULL, -12.49);
INSERT INTO `exam_student_scores` VALUES (00000000000000006985, '二年级', '4班', '10437', 92.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 11.81, 5.47, NULL, 17.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000006986, '二年级', '4班', '10438', 60.0, 69.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 129.0, -27.08, -19.14, NULL, -46.22);
INSERT INTO `exam_student_scores` VALUES (00000000000000006987, '二年级', '4班', '10439', 83.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 0.88, 10.16, NULL, 11.04);
INSERT INTO `exam_student_scores` VALUES (00000000000000006988, '二年级', '4班', '10440', 69.0, 49.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 118.0, -16.14, -42.58, NULL, -58.72);
INSERT INTO `exam_student_scores` VALUES (00000000000000006989, '二年级', '4班', '10441', 84.0, 68.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 152.0, 2.09, -20.31, NULL, -18.22);
INSERT INTO `exam_student_scores` VALUES (00000000000000006990, '二年级', '4班', '10442', 23.0, 12.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 35.0, -72.05, -85.94, NULL, -157.99);
INSERT INTO `exam_student_scores` VALUES (00000000000000006991, '二年级', '4班', '10443', 79.0, 76.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 155.0, -3.99, -10.93, NULL, -14.92);
INSERT INTO `exam_student_scores` VALUES (00000000000000006992, '二年级', '4班', '10444', 92.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 11.81, 3.13, NULL, 14.94);
INSERT INTO `exam_student_scores` VALUES (00000000000000006993, '二年级', '4班', '10445', 88.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, 6.95, 0.79, NULL, 7.74);
INSERT INTO `exam_student_scores` VALUES (00000000000000006994, '二年级', '4班', '10446', 95.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 191.0, 15.46, 12.50, NULL, 27.96);
INSERT INTO `exam_student_scores` VALUES (00000000000000006995, '二年级', '4班', '10447', 71.0, 67.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 138.0, -13.71, -21.48, NULL, -35.19);
INSERT INTO `exam_student_scores` VALUES (00000000000000006996, '二年级', '4班', '10448', 94.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 14.24, 11.33, NULL, 25.57);
INSERT INTO `exam_student_scores` VALUES (00000000000000006997, '二年级', '4班', '10449', 93.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 13.03, 5.47, NULL, 18.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000006998, '二年级', '5班', '10501', 86.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 172.0, 4.52, 0.79, NULL, 5.31);
INSERT INTO `exam_student_scores` VALUES (00000000000000006999, '二年级', '5班', '10502', 85.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 3.31, 8.99, NULL, 12.30);
INSERT INTO `exam_student_scores` VALUES (00000000000000007000, '二年级', '5班', '10503', 77.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 168.0, -6.42, 6.64, NULL, 0.22);
INSERT INTO `exam_student_scores` VALUES (00000000000000007001, '二年级', '5班', '10504', 80.0, 82.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 162.0, -2.77, -3.90, NULL, -6.67);
INSERT INTO `exam_student_scores` VALUES (00000000000000007002, '二年级', '5班', '10505', 92.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 11.81, 1.96, NULL, 13.77);
INSERT INTO `exam_student_scores` VALUES (00000000000000007003, '二年级', '5班', '10506', 87.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 5.74, 7.82, NULL, 13.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000007004, '二年级', '5班', '10507', 68.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 157.0, -17.36, 4.30, NULL, -13.06);
INSERT INTO `exam_student_scores` VALUES (00000000000000007005, '二年级', '5班', '10508', 43.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 122.0, -47.74, -7.42, NULL, -55.16);
INSERT INTO `exam_student_scores` VALUES (00000000000000007006, '二年级', '5班', '10509', 92.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 11.81, 8.99, NULL, 20.80);
INSERT INTO `exam_student_scores` VALUES (00000000000000007007, '二年级', '5班', '10510', 90.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 9.38, 16.02, NULL, 25.40);
INSERT INTO `exam_student_scores` VALUES (00000000000000007008, '二年级', '5班', '10511', 91.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 10.60, 13.68, NULL, 24.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007009, '二年级', '5班', '10512', 87.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 5.74, 14.85, NULL, 20.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000007010, '二年级', '5班', '10513', 79.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 168.0, -3.99, 4.30, NULL, 0.31);
INSERT INTO `exam_student_scores` VALUES (00000000000000007011, '二年级', '5班', '10514', 88.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 6.95, 4.30, NULL, 11.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000007012, '二年级', '5班', '10515', 69.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 156.0, -16.14, 1.96, NULL, -14.18);
INSERT INTO `exam_student_scores` VALUES (00000000000000007013, '二年级', '5班', '10516', 61.0, 68.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 129.0, -25.86, -20.31, NULL, -46.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000007014, '二年级', '5班', '10517', 84.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 2.09, 10.16, NULL, 12.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000007015, '二年级', '5班', '10518', 88.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, 6.95, -0.39, NULL, 6.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000007016, '二年级', '5班', '10519', 92.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 11.81, 14.85, NULL, 26.66);
INSERT INTO `exam_student_scores` VALUES (00000000000000007017, '二年级', '5班', '10520', 94.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 14.24, 12.50, NULL, 26.74);
INSERT INTO `exam_student_scores` VALUES (00000000000000007018, '二年级', '5班', '10521', 88.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 6.95, 11.33, NULL, 18.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007019, '二年级', '5班', '10522', 73.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 162.0, -11.28, 4.30, NULL, -6.98);
INSERT INTO `exam_student_scores` VALUES (00000000000000007020, '二年级', '5班', '10523', 78.0, 81.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 159.0, -5.20, -5.07, NULL, -10.27);
INSERT INTO `exam_student_scores` VALUES (00000000000000007021, '二年级', '5班', '10524', 94.0, 100.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 194.0, 14.24, 17.19, NULL, 31.43);
INSERT INTO `exam_student_scores` VALUES (00000000000000007022, '二年级', '5班', '10525', 83.0, 76.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 159.0, 0.88, -10.93, NULL, -10.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007023, '二年级', '5班', '10526', 95.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 15.46, 6.64, NULL, 22.10);
INSERT INTO `exam_student_scores` VALUES (00000000000000007024, '二年级', '5班', '10527', 75.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 166.0, -8.85, 6.64, NULL, -2.21);
INSERT INTO `exam_student_scores` VALUES (00000000000000007025, '二年级', '5班', '10528', 89.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 187.0, 8.17, 14.85, NULL, 23.02);
INSERT INTO `exam_student_scores` VALUES (00000000000000007026, '二年级', '5班', '10529', 65.0, 77.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 142.0, -21.00, -9.76, NULL, -30.76);
INSERT INTO `exam_student_scores` VALUES (00000000000000007027, '二年级', '5班', '10530', 79.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, -3.99, 11.33, NULL, 7.34);
INSERT INTO `exam_student_scores` VALUES (00000000000000007028, '二年级', '5班', '10531', 89.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 187.0, 8.17, 14.85, NULL, 23.02);
INSERT INTO `exam_student_scores` VALUES (00000000000000007029, '二年级', '5班', '10532', 95.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 15.46, 13.68, NULL, 29.14);
INSERT INTO `exam_student_scores` VALUES (00000000000000007030, '二年级', '5班', '10533', 82.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 170.0, -0.34, 3.13, NULL, 2.79);
INSERT INTO `exam_student_scores` VALUES (00000000000000007031, '二年级', '5班', '10534', 65.0, 67.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 132.0, -21.00, -21.48, NULL, -42.48);
INSERT INTO `exam_student_scores` VALUES (00000000000000007032, '二年级', '5班', '10535', 90.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 9.38, 1.96, NULL, 11.34);
INSERT INTO `exam_student_scores` VALUES (00000000000000007033, '二年级', '5班', '10536', 49.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 128.0, -40.45, -7.42, NULL, -47.87);
INSERT INTO `exam_student_scores` VALUES (00000000000000007034, '二年级', '5班', '10537', 47.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 126.0, -42.88, -7.42, NULL, -50.30);
INSERT INTO `exam_student_scores` VALUES (00000000000000007035, '二年级', '5班', '10538', 80.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 168.0, -2.77, 3.13, NULL, 0.36);
INSERT INTO `exam_student_scores` VALUES (00000000000000007036, '二年级', '5班', '10539', 90.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, 9.38, -2.73, NULL, 6.65);
INSERT INTO `exam_student_scores` VALUES (00000000000000007037, '二年级', '5班', '10540', 73.0, 82.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 155.0, -11.28, -3.90, NULL, -15.18);
INSERT INTO `exam_student_scores` VALUES (00000000000000007038, '二年级', '5班', '10541', 91.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 10.60, 3.13, NULL, 13.73);
INSERT INTO `exam_student_scores` VALUES (00000000000000007039, '二年级', '5班', '10542', 88.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 6.95, 4.30, NULL, 11.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000007040, '二年级', '5班', '10543', 86.0, 100.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 4.52, 17.19, NULL, 21.71);
INSERT INTO `exam_student_scores` VALUES (00000000000000007041, '二年级', '5班', '10544', 76.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 167.0, -7.63, 6.64, NULL, -0.99);
INSERT INTO `exam_student_scores` VALUES (00000000000000007042, '二年级', '5班', '10545', 91.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 10.60, 1.96, NULL, 12.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000007043, '二年级', '5班', '10546', 86.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 4.52, 16.02, NULL, 20.54);
INSERT INTO `exam_student_scores` VALUES (00000000000000007044, '二年级', '5班', '10547', 75.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 160.0, -8.85, -0.39, NULL, -9.24);
INSERT INTO `exam_student_scores` VALUES (00000000000000007045, '二年级', '5班', '10548', 86.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 171.0, 4.52, -0.39, NULL, 4.13);
INSERT INTO `exam_student_scores` VALUES (00000000000000007046, '二年级', '5班', '10549', 92.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 187.0, 11.81, 11.33, NULL, 23.14);
INSERT INTO `exam_student_scores` VALUES (00000000000000007047, '二年级', '6班', '10601', 88.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 6.95, 11.33, NULL, 18.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007048, '二年级', '6班', '10602', 90.0, 73.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 163.0, 9.38, -14.45, NULL, -5.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000007049, '二年级', '6班', '10603', 93.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 13.03, 16.02, NULL, 29.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007050, '二年级', '6班', '10604', 81.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, -1.56, 13.68, NULL, 12.12);
INSERT INTO `exam_student_scores` VALUES (00000000000000007051, '二年级', '6班', '10605', 69.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 164.0, -16.14, 11.33, NULL, -4.81);
INSERT INTO `exam_student_scores` VALUES (00000000000000007052, '二年级', '6班', '10606', 93.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 13.03, 8.99, NULL, 22.02);
INSERT INTO `exam_student_scores` VALUES (00000000000000007053, '二年级', '6班', '10607', 82.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 168.0, -0.34, 0.79, NULL, 0.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007054, '二年级', '6班', '10608', 91.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 10.60, 14.85, NULL, 25.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007055, '二年级', '6班', '10609', 90.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 9.38, 12.50, NULL, 21.88);
INSERT INTO `exam_student_scores` VALUES (00000000000000007056, '二年级', '6班', '10610', 97.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 191.0, 17.89, 10.16, NULL, 28.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007057, '二年级', '6班', '10611', 87.0, 81.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 168.0, 5.74, -5.07, NULL, 0.67);
INSERT INTO `exam_student_scores` VALUES (00000000000000007058, '二年级', '6班', '10612', 66.0, 69.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 135.0, -19.79, -19.14, NULL, -38.93);
INSERT INTO `exam_student_scores` VALUES (00000000000000007059, '二年级', '6班', '10613', 86.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 4.52, 6.64, NULL, 11.16);
INSERT INTO `exam_student_scores` VALUES (00000000000000007060, '二年级', '6班', '10614', 84.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 2.09, 11.33, NULL, 13.42);
INSERT INTO `exam_student_scores` VALUES (00000000000000007061, '二年级', '6班', '10615', 86.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 4.52, 8.99, NULL, 13.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000007062, '二年级', '6班', '10616', 93.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 13.03, 8.99, NULL, 22.02);
INSERT INTO `exam_student_scores` VALUES (00000000000000007063, '二年级', '6班', '10617', 92.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 11.81, 10.16, NULL, 21.97);
INSERT INTO `exam_student_scores` VALUES (00000000000000007064, '二年级', '6班', '10618', 79.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, -3.99, 10.16, NULL, 6.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000007065, '二年级', '6班', '10619', 76.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 161.0, -7.63, -0.39, NULL, -8.02);
INSERT INTO `exam_student_scores` VALUES (00000000000000007066, '二年级', '6班', '10620', 87.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 5.74, 12.50, NULL, 18.24);
INSERT INTO `exam_student_scores` VALUES (00000000000000007067, '二年级', '6班', '10621', 87.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 175.0, 5.74, 3.13, NULL, 8.87);
INSERT INTO `exam_student_scores` VALUES (00000000000000007068, '二年级', '6班', '10622', 54.0, 65.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 119.0, -34.37, -23.83, NULL, -58.20);
INSERT INTO `exam_student_scores` VALUES (00000000000000007069, '二年级', '6班', '10623', 78.0, 68.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 146.0, -5.20, -20.31, NULL, -25.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000007070, '二年级', '6班', '10624', 96.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 16.67, 12.50, NULL, 29.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000007071, '二年级', '6班', '10625', 91.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 10.60, 11.33, NULL, 21.93);
INSERT INTO `exam_student_scores` VALUES (00000000000000007072, '二年级', '6班', '10626', 94.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 14.24, 7.82, NULL, 22.06);
INSERT INTO `exam_student_scores` VALUES (00000000000000007073, '二年级', '6班', '10627', 87.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 5.74, 11.33, NULL, 17.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000007074, '二年级', '6班', '10628', 86.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 4.52, 5.47, NULL, 9.99);
INSERT INTO `exam_student_scores` VALUES (00000000000000007075, '二年级', '6班', '10629', 79.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 163.0, -3.99, -1.56, NULL, -5.55);
INSERT INTO `exam_student_scores` VALUES (00000000000000007076, '二年级', '6班', '10630', 94.0, 100.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 194.0, 14.24, 17.19, NULL, 31.43);
INSERT INTO `exam_student_scores` VALUES (00000000000000007077, '二年级', '6班', '10631', 85.0, 75.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 160.0, 3.31, -12.11, NULL, -8.80);
INSERT INTO `exam_student_scores` VALUES (00000000000000007078, '二年级', '6班', '10632', 86.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 4.52, 8.99, NULL, 13.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000007079, '二年级', '6班', '10633', 89.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 8.17, 13.68, NULL, 21.85);
INSERT INTO `exam_student_scores` VALUES (00000000000000007080, '二年级', '6班', '10634', 84.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, 2.09, 4.30, NULL, 6.39);
INSERT INTO `exam_student_scores` VALUES (00000000000000007081, '二年级', '6班', '10635', 88.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 6.95, 4.30, NULL, 11.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000007082, '二年级', '6班', '10636', 97.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 193.0, 17.89, 12.50, NULL, 30.39);
INSERT INTO `exam_student_scores` VALUES (00000000000000007083, '二年级', '6班', '10637', 77.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 163.0, -6.42, 0.79, NULL, -5.63);
INSERT INTO `exam_student_scores` VALUES (00000000000000007084, '二年级', '6班', '10638', 90.0, 76.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 166.0, 9.38, -10.93, NULL, -1.55);
INSERT INTO `exam_student_scores` VALUES (00000000000000007085, '二年级', '6班', '10639', 96.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 193.0, 16.67, 13.68, NULL, 30.35);
INSERT INTO `exam_student_scores` VALUES (00000000000000007086, '二年级', '6班', '10640', 92.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 11.81, 6.64, NULL, 18.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007087, '二年级', '6班', '10642', 96.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 194.0, 16.67, 14.85, NULL, 31.52);
INSERT INTO `exam_student_scores` VALUES (00000000000000007088, '二年级', '6班', '10643', 33.0, 38.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 71.0, -59.89, -55.47, NULL, -115.36);
INSERT INTO `exam_student_scores` VALUES (00000000000000007089, '二年级', '6班', '10644', 57.0, 51.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 108.0, -30.72, -40.23, NULL, -70.95);
INSERT INTO `exam_student_scores` VALUES (00000000000000007090, '二年级', '6班', '10645', 57.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 144.0, -30.72, 1.96, NULL, -28.76);
INSERT INTO `exam_student_scores` VALUES (00000000000000007091, '二年级', '6班', '10646', 92.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 11.81, 14.85, NULL, 26.66);
INSERT INTO `exam_student_scores` VALUES (00000000000000007092, '二年级', '6班', '10647', 94.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 187.0, 14.24, 8.99, NULL, 23.23);
INSERT INTO `exam_student_scores` VALUES (00000000000000007093, '二年级', '6班', '10648', 83.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 171.0, 0.88, 3.13, NULL, 4.01);
INSERT INTO `exam_student_scores` VALUES (00000000000000007094, '二年级', '6班', '10649', 82.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, -0.34, 7.82, NULL, 7.48);
INSERT INTO `exam_student_scores` VALUES (00000000000000007095, '二年级', '6班', '10650', 74.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 164.0, -10.06, 5.47, NULL, -4.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000007096, '二年级', '6班', '10651', 82.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 172.0, -0.34, 5.47, NULL, 5.13);
INSERT INTO `exam_student_scores` VALUES (00000000000000007097, '二年级', '7班', '10701', 84.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 2.09, 16.02, NULL, 18.11);
INSERT INTO `exam_student_scores` VALUES (00000000000000007098, '二年级', '7班', '10702', 88.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 6.95, 3.13, NULL, 10.08);
INSERT INTO `exam_student_scores` VALUES (00000000000000007099, '二年级', '7班', '10703', 89.0, 72.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 161.0, 8.17, -15.62, NULL, -7.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007100, '二年级', '7班', '10704', 88.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 6.95, 11.33, NULL, 18.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007101, '二年级', '7班', '10705', 77.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, -6.42, 12.50, NULL, 6.08);
INSERT INTO `exam_student_scores` VALUES (00000000000000007102, '二年级', '7班', '10706', 91.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 10.60, 10.16, NULL, 20.76);
INSERT INTO `exam_student_scores` VALUES (00000000000000007103, '二年级', '7班', '10707', 87.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 5.74, 4.30, NULL, 10.04);
INSERT INTO `exam_student_scores` VALUES (00000000000000007104, '二年级', '7班', '10708', 57.0, 54.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 111.0, -30.72, -36.72, NULL, -67.44);
INSERT INTO `exam_student_scores` VALUES (00000000000000007105, '二年级', '7班', '10709', 88.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 6.95, 3.13, NULL, 10.08);
INSERT INTO `exam_student_scores` VALUES (00000000000000007106, '二年级', '7班', '10710', 77.0, 74.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 151.0, -6.42, -13.28, NULL, -19.70);
INSERT INTO `exam_student_scores` VALUES (00000000000000007107, '二年级', '7班', '10711', 77.0, 60.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 137.0, -6.42, -29.68, NULL, -36.10);
INSERT INTO `exam_student_scores` VALUES (00000000000000007108, '二年级', '7班', '10712', 73.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 160.0, -11.28, 1.96, NULL, -9.32);
INSERT INTO `exam_student_scores` VALUES (00000000000000007109, '二年级', '7班', '10713', 83.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 0.88, 13.68, NULL, 14.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000007110, '二年级', '7班', '10714', 91.0, 81.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 172.0, 10.60, -5.07, NULL, 5.53);
INSERT INTO `exam_student_scores` VALUES (00000000000000007111, '二年级', '7班', '10715', 80.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 172.0, -2.77, 7.82, NULL, 5.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007112, '二年级', '7班', '10716', 82.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 167.0, -0.34, -0.39, NULL, -0.73);
INSERT INTO `exam_student_scores` VALUES (00000000000000007113, '二年级', '7班', '10717', 94.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 14.24, 5.47, NULL, 19.71);
INSERT INTO `exam_student_scores` VALUES (00000000000000007114, '二年级', '7班', '10718', 94.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 193.0, 14.24, 16.02, NULL, 30.26);
INSERT INTO `exam_student_scores` VALUES (00000000000000007115, '二年级', '7班', '10719', 84.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 168.0, 2.09, -1.56, NULL, 0.53);
INSERT INTO `exam_student_scores` VALUES (00000000000000007116, '二年级', '7班', '10720', 43.0, 52.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 95.0, -47.74, -39.06, NULL, -86.80);
INSERT INTO `exam_student_scores` VALUES (00000000000000007117, '二年级', '7班', '10721', 95.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 15.46, 11.33, NULL, 26.79);
INSERT INTO `exam_student_scores` VALUES (00000000000000007118, '二年级', '7班', '10722', 80.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 163.0, -2.77, -2.73, NULL, -5.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000007119, '二年级', '7班', '10723', 90.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 9.38, 8.99, NULL, 18.37);
INSERT INTO `exam_student_scores` VALUES (00000000000000007120, '二年级', '7班', '10724', 93.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 13.03, 11.33, NULL, 24.36);
INSERT INTO `exam_student_scores` VALUES (00000000000000007121, '二年级', '7班', '10725', 83.0, 73.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 156.0, 0.88, -14.45, NULL, -13.57);
INSERT INTO `exam_student_scores` VALUES (00000000000000007122, '二年级', '7班', '10726', 80.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 172.0, -2.77, 7.82, NULL, 5.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007123, '二年级', '7班', '10727', 85.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 3.31, 6.64, NULL, 9.95);
INSERT INTO `exam_student_scores` VALUES (00000000000000007124, '二年级', '7班', '10728', 45.0, 31.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 76.0, -45.31, -63.67, NULL, -108.98);
INSERT INTO `exam_student_scores` VALUES (00000000000000007125, '二年级', '7班', '10729', 85.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 3.31, 10.16, NULL, 13.47);
INSERT INTO `exam_student_scores` VALUES (00000000000000007126, '二年级', '7班', '10730', 83.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 0.88, 8.99, NULL, 9.87);
INSERT INTO `exam_student_scores` VALUES (00000000000000007127, '二年级', '7班', '10731', 36.0, 76.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 112.0, -56.25, -10.93, NULL, -67.18);
INSERT INTO `exam_student_scores` VALUES (00000000000000007128, '二年级', '7班', '10732', 83.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 0.88, 14.85, NULL, 15.73);
INSERT INTO `exam_student_scores` VALUES (00000000000000007129, '二年级', '7班', '10733', 77.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 171.0, -6.42, 10.16, NULL, 3.74);
INSERT INTO `exam_student_scores` VALUES (00000000000000007130, '二年级', '7班', '10734', 95.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 15.46, -0.39, NULL, 15.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000007131, '二年级', '7班', '10735', 74.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, -10.06, 16.02, NULL, 5.96);
INSERT INTO `exam_student_scores` VALUES (00000000000000007132, '二年级', '7班', '10736', 91.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 10.60, 4.30, NULL, 14.90);
INSERT INTO `exam_student_scores` VALUES (00000000000000007133, '二年级', '7班', '10737', 75.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, -8.85, 16.02, NULL, 7.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000007134, '二年级', '7班', '10738', 71.0, 47.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 118.0, -13.71, -44.92, NULL, -58.63);
INSERT INTO `exam_student_scores` VALUES (00000000000000007135, '二年级', '7班', '10739', 51.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 137.0, -38.02, 0.79, NULL, -37.23);
INSERT INTO `exam_student_scores` VALUES (00000000000000007136, '二年级', '7班', '10740', 82.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, -0.34, 13.68, NULL, 13.34);
INSERT INTO `exam_student_scores` VALUES (00000000000000007137, '二年级', '7班', '10741', 65.0, 82.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 147.0, -21.00, -3.90, NULL, -24.90);
INSERT INTO `exam_student_scores` VALUES (00000000000000007138, '二年级', '7班', '10742', 86.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 4.52, 8.99, NULL, 13.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000007139, '二年级', '7班', '10743', 91.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 10.60, 5.47, NULL, 16.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000007140, '二年级', '7班', '10744', 85.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 3.31, 10.16, NULL, 13.47);
INSERT INTO `exam_student_scores` VALUES (00000000000000007141, '二年级', '7班', '10745', 81.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 171.0, -1.56, 5.47, NULL, 3.91);
INSERT INTO `exam_student_scores` VALUES (00000000000000007142, '二年级', '7班', '10746', 91.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 175.0, 10.60, -1.56, NULL, 9.04);
INSERT INTO `exam_student_scores` VALUES (00000000000000007143, '二年级', '7班', '10747', 73.0, 70.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 143.0, -11.28, -17.97, NULL, -29.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000007144, '二年级', '7班', '10748', 83.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 162.0, 0.88, -7.42, NULL, -6.54);
INSERT INTO `exam_student_scores` VALUES (00000000000000007145, '二年级', '7班', '10749', 88.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 6.95, 11.33, NULL, 18.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007146, '一年级', '1班', '20101', 85.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 175.0, 3.31, 5.47, NULL, 8.78);
INSERT INTO `exam_student_scores` VALUES (00000000000000007147, '一年级', '7班', '20749', 88.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 6.95, 11.33, NULL, 18.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007148, '一年级', '7班', '20748', 83.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 162.0, 0.88, -7.42, NULL, -6.54);
INSERT INTO `exam_student_scores` VALUES (00000000000000007149, '一年级', '7班', '20747', 73.0, 70.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 143.0, -11.28, -17.97, NULL, -29.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000007150, '一年级', '7班', '20746', 91.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 175.0, 10.60, -1.56, NULL, 9.04);
INSERT INTO `exam_student_scores` VALUES (00000000000000007151, '一年级', '7班', '20745', 81.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 171.0, -1.56, 5.47, NULL, 3.91);
INSERT INTO `exam_student_scores` VALUES (00000000000000007152, '一年级', '7班', '20744', 85.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 3.31, 10.16, NULL, 13.47);
INSERT INTO `exam_student_scores` VALUES (00000000000000007153, '一年级', '7班', '20743', 91.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 10.60, 5.47, NULL, 16.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000007154, '一年级', '7班', '20742', 86.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 4.52, 8.99, NULL, 13.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000007155, '一年级', '7班', '20741', 65.0, 82.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 147.0, -21.00, -3.90, NULL, -24.90);
INSERT INTO `exam_student_scores` VALUES (00000000000000007156, '一年级', '7班', '20740', 82.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, -0.34, 13.68, NULL, 13.34);
INSERT INTO `exam_student_scores` VALUES (00000000000000007157, '一年级', '7班', '20739', 51.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 137.0, -38.02, 0.79, NULL, -37.23);
INSERT INTO `exam_student_scores` VALUES (00000000000000007158, '一年级', '7班', '20738', 71.0, 47.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 118.0, -13.71, -44.92, NULL, -58.63);
INSERT INTO `exam_student_scores` VALUES (00000000000000007159, '一年级', '7班', '20737', 75.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, -8.85, 16.02, NULL, 7.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000007160, '一年级', '7班', '20736', 91.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 10.60, 4.30, NULL, 14.90);
INSERT INTO `exam_student_scores` VALUES (00000000000000007161, '一年级', '7班', '20735', 74.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, -10.06, 16.02, NULL, 5.96);
INSERT INTO `exam_student_scores` VALUES (00000000000000007162, '一年级', '7班', '20734', 95.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 15.46, -0.39, NULL, 15.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000007163, '一年级', '7班', '20733', 77.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 171.0, -6.42, 10.16, NULL, 3.74);
INSERT INTO `exam_student_scores` VALUES (00000000000000007164, '一年级', '7班', '20732', 83.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 0.88, 14.85, NULL, 15.73);
INSERT INTO `exam_student_scores` VALUES (00000000000000007165, '一年级', '7班', '20731', 36.0, 76.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 112.0, -56.25, -10.93, NULL, -67.18);
INSERT INTO `exam_student_scores` VALUES (00000000000000007166, '一年级', '7班', '20730', 83.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 0.88, 8.99, NULL, 9.87);
INSERT INTO `exam_student_scores` VALUES (00000000000000007167, '一年级', '7班', '20729', 85.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 3.31, 10.16, NULL, 13.47);
INSERT INTO `exam_student_scores` VALUES (00000000000000007168, '一年级', '7班', '20728', 45.0, 31.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 76.0, -45.31, -63.67, NULL, -108.98);
INSERT INTO `exam_student_scores` VALUES (00000000000000007169, '一年级', '7班', '20727', 85.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 3.31, 6.64, NULL, 9.95);
INSERT INTO `exam_student_scores` VALUES (00000000000000007170, '一年级', '7班', '20726', 80.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 172.0, -2.77, 7.82, NULL, 5.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007171, '一年级', '7班', '20725', 83.0, 73.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 156.0, 0.88, -14.45, NULL, -13.57);
INSERT INTO `exam_student_scores` VALUES (00000000000000007172, '一年级', '7班', '20724', 93.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 13.03, 11.33, NULL, 24.36);
INSERT INTO `exam_student_scores` VALUES (00000000000000007173, '一年级', '7班', '20723', 90.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 9.38, 8.99, NULL, 18.37);
INSERT INTO `exam_student_scores` VALUES (00000000000000007174, '一年级', '7班', '20722', 80.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 163.0, -2.77, -2.73, NULL, -5.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000007175, '一年级', '7班', '20721', 95.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 15.46, 11.33, NULL, 26.79);
INSERT INTO `exam_student_scores` VALUES (00000000000000007176, '一年级', '7班', '20720', 43.0, 52.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 95.0, -47.74, -39.06, NULL, -86.80);
INSERT INTO `exam_student_scores` VALUES (00000000000000007177, '一年级', '7班', '20719', 84.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 168.0, 2.09, -1.56, NULL, 0.53);
INSERT INTO `exam_student_scores` VALUES (00000000000000007178, '一年级', '7班', '20718', 94.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 193.0, 14.24, 16.02, NULL, 30.26);
INSERT INTO `exam_student_scores` VALUES (00000000000000007179, '一年级', '7班', '20717', 94.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 14.24, 5.47, NULL, 19.71);
INSERT INTO `exam_student_scores` VALUES (00000000000000007180, '一年级', '7班', '20716', 82.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 167.0, -0.34, -0.39, NULL, -0.73);
INSERT INTO `exam_student_scores` VALUES (00000000000000007181, '一年级', '7班', '20715', 80.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 172.0, -2.77, 7.82, NULL, 5.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007182, '一年级', '7班', '20714', 91.0, 81.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 172.0, 10.60, -5.07, NULL, 5.53);
INSERT INTO `exam_student_scores` VALUES (00000000000000007183, '一年级', '7班', '20713', 83.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 0.88, 13.68, NULL, 14.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000007184, '一年级', '7班', '20712', 73.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 160.0, -11.28, 1.96, NULL, -9.32);
INSERT INTO `exam_student_scores` VALUES (00000000000000007185, '一年级', '7班', '20711', 77.0, 60.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 137.0, -6.42, -29.68, NULL, -36.10);
INSERT INTO `exam_student_scores` VALUES (00000000000000007186, '一年级', '7班', '20710', 77.0, 74.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 151.0, -6.42, -13.28, NULL, -19.70);
INSERT INTO `exam_student_scores` VALUES (00000000000000007187, '一年级', '7班', '20709', 88.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 6.95, 3.13, NULL, 10.08);
INSERT INTO `exam_student_scores` VALUES (00000000000000007188, '一年级', '7班', '20708', 57.0, 54.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 111.0, -30.72, -36.72, NULL, -67.44);
INSERT INTO `exam_student_scores` VALUES (00000000000000007189, '一年级', '7班', '20707', 87.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 5.74, 4.30, NULL, 10.04);
INSERT INTO `exam_student_scores` VALUES (00000000000000007190, '一年级', '7班', '20706', 91.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 10.60, 10.16, NULL, 20.76);
INSERT INTO `exam_student_scores` VALUES (00000000000000007191, '一年级', '7班', '20705', 77.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, -6.42, 12.50, NULL, 6.08);
INSERT INTO `exam_student_scores` VALUES (00000000000000007192, '一年级', '7班', '20704', 88.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 6.95, 11.33, NULL, 18.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007193, '一年级', '7班', '20703', 89.0, 72.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 161.0, 8.17, -15.62, NULL, -7.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007194, '一年级', '7班', '20702', 88.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 6.95, 3.13, NULL, 10.08);
INSERT INTO `exam_student_scores` VALUES (00000000000000007195, '一年级', '7班', '20701', 84.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 2.09, 16.02, NULL, 18.11);
INSERT INTO `exam_student_scores` VALUES (00000000000000007196, '一年级', '6班', '20651', 82.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 172.0, -0.34, 5.47, NULL, 5.13);
INSERT INTO `exam_student_scores` VALUES (00000000000000007197, '一年级', '6班', '20650', 74.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 164.0, -10.06, 5.47, NULL, -4.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000007198, '一年级', '6班', '20649', 82.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, -0.34, 7.82, NULL, 7.48);
INSERT INTO `exam_student_scores` VALUES (00000000000000007199, '一年级', '6班', '20648', 83.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 171.0, 0.88, 3.13, NULL, 4.01);
INSERT INTO `exam_student_scores` VALUES (00000000000000007200, '一年级', '6班', '20647', 94.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 187.0, 14.24, 8.99, NULL, 23.23);
INSERT INTO `exam_student_scores` VALUES (00000000000000007201, '一年级', '6班', '20646', 92.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 11.81, 14.85, NULL, 26.66);
INSERT INTO `exam_student_scores` VALUES (00000000000000007202, '一年级', '6班', '20645', 57.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 144.0, -30.72, 1.96, NULL, -28.76);
INSERT INTO `exam_student_scores` VALUES (00000000000000007203, '一年级', '6班', '20644', 57.0, 51.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 108.0, -30.72, -40.23, NULL, -70.95);
INSERT INTO `exam_student_scores` VALUES (00000000000000007204, '一年级', '6班', '20643', 33.0, 38.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 71.0, -59.89, -55.47, NULL, -115.36);
INSERT INTO `exam_student_scores` VALUES (00000000000000007205, '一年级', '6班', '20642', 96.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 194.0, 16.67, 14.85, NULL, 31.52);
INSERT INTO `exam_student_scores` VALUES (00000000000000007206, '一年级', '6班', '20640', 92.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 11.81, 6.64, NULL, 18.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007207, '一年级', '6班', '20639', 96.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 193.0, 16.67, 13.68, NULL, 30.35);
INSERT INTO `exam_student_scores` VALUES (00000000000000007208, '一年级', '6班', '20638', 90.0, 76.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 166.0, 9.38, -10.93, NULL, -1.55);
INSERT INTO `exam_student_scores` VALUES (00000000000000007209, '一年级', '6班', '20637', 77.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 163.0, -6.42, 0.79, NULL, -5.63);
INSERT INTO `exam_student_scores` VALUES (00000000000000007210, '一年级', '6班', '20636', 97.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 193.0, 17.89, 12.50, NULL, 30.39);
INSERT INTO `exam_student_scores` VALUES (00000000000000007211, '一年级', '6班', '20635', 88.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 6.95, 4.30, NULL, 11.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000007212, '一年级', '6班', '20634', 84.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, 2.09, 4.30, NULL, 6.39);
INSERT INTO `exam_student_scores` VALUES (00000000000000007213, '一年级', '6班', '20633', 89.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 8.17, 13.68, NULL, 21.85);
INSERT INTO `exam_student_scores` VALUES (00000000000000007214, '一年级', '6班', '20632', 86.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 4.52, 8.99, NULL, 13.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000007215, '一年级', '6班', '20631', 85.0, 75.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 160.0, 3.31, -12.11, NULL, -8.80);
INSERT INTO `exam_student_scores` VALUES (00000000000000007216, '一年级', '6班', '20630', 94.0, 100.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 194.0, 14.24, 17.19, NULL, 31.43);
INSERT INTO `exam_student_scores` VALUES (00000000000000007217, '一年级', '6班', '20629', 79.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 163.0, -3.99, -1.56, NULL, -5.55);
INSERT INTO `exam_student_scores` VALUES (00000000000000007218, '一年级', '6班', '20628', 86.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 4.52, 5.47, NULL, 9.99);
INSERT INTO `exam_student_scores` VALUES (00000000000000007219, '一年级', '6班', '20627', 87.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 5.74, 11.33, NULL, 17.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000007220, '一年级', '6班', '20626', 94.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 14.24, 7.82, NULL, 22.06);
INSERT INTO `exam_student_scores` VALUES (00000000000000007221, '一年级', '6班', '20625', 91.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 10.60, 11.33, NULL, 21.93);
INSERT INTO `exam_student_scores` VALUES (00000000000000007222, '一年级', '6班', '20624', 96.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 16.67, 12.50, NULL, 29.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000007223, '一年级', '6班', '20623', 78.0, 68.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 146.0, -5.20, -20.31, NULL, -25.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000007224, '一年级', '6班', '20622', 54.0, 65.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 119.0, -34.37, -23.83, NULL, -58.20);
INSERT INTO `exam_student_scores` VALUES (00000000000000007225, '一年级', '6班', '20621', 87.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 175.0, 5.74, 3.13, NULL, 8.87);
INSERT INTO `exam_student_scores` VALUES (00000000000000007226, '一年级', '6班', '20620', 87.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 5.74, 12.50, NULL, 18.24);
INSERT INTO `exam_student_scores` VALUES (00000000000000007227, '一年级', '6班', '20619', 76.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 161.0, -7.63, -0.39, NULL, -8.02);
INSERT INTO `exam_student_scores` VALUES (00000000000000007228, '一年级', '6班', '20618', 79.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, -3.99, 10.16, NULL, 6.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000007229, '一年级', '6班', '20617', 92.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 11.81, 10.16, NULL, 21.97);
INSERT INTO `exam_student_scores` VALUES (00000000000000007230, '一年级', '6班', '20616', 93.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 13.03, 8.99, NULL, 22.02);
INSERT INTO `exam_student_scores` VALUES (00000000000000007231, '一年级', '6班', '20615', 86.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 4.52, 8.99, NULL, 13.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000007232, '一年级', '6班', '20614', 84.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 2.09, 11.33, NULL, 13.42);
INSERT INTO `exam_student_scores` VALUES (00000000000000007233, '一年级', '6班', '20613', 86.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 4.52, 6.64, NULL, 11.16);
INSERT INTO `exam_student_scores` VALUES (00000000000000007234, '一年级', '6班', '20612', 66.0, 69.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 135.0, -19.79, -19.14, NULL, -38.93);
INSERT INTO `exam_student_scores` VALUES (00000000000000007235, '一年级', '6班', '20611', 87.0, 81.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 168.0, 5.74, -5.07, NULL, 0.67);
INSERT INTO `exam_student_scores` VALUES (00000000000000007236, '一年级', '6班', '20610', 97.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 191.0, 17.89, 10.16, NULL, 28.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007237, '一年级', '6班', '20609', 90.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 9.38, 12.50, NULL, 21.88);
INSERT INTO `exam_student_scores` VALUES (00000000000000007238, '一年级', '6班', '20608', 91.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 10.60, 14.85, NULL, 25.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007239, '一年级', '6班', '20607', 82.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 168.0, -0.34, 0.79, NULL, 0.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007240, '一年级', '6班', '20606', 93.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 13.03, 8.99, NULL, 22.02);
INSERT INTO `exam_student_scores` VALUES (00000000000000007241, '一年级', '6班', '20605', 69.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 164.0, -16.14, 11.33, NULL, -4.81);
INSERT INTO `exam_student_scores` VALUES (00000000000000007242, '一年级', '6班', '20604', 81.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, -1.56, 13.68, NULL, 12.12);
INSERT INTO `exam_student_scores` VALUES (00000000000000007243, '一年级', '6班', '20603', 93.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 13.03, 16.02, NULL, 29.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007244, '一年级', '6班', '20602', 90.0, 73.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 163.0, 9.38, -14.45, NULL, -5.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000007245, '一年级', '6班', '20601', 88.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 6.95, 11.33, NULL, 18.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007246, '一年级', '5班', '20549', 92.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 187.0, 11.81, 11.33, NULL, 23.14);
INSERT INTO `exam_student_scores` VALUES (00000000000000007247, '一年级', '5班', '20548', 86.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 171.0, 4.52, -0.39, NULL, 4.13);
INSERT INTO `exam_student_scores` VALUES (00000000000000007248, '一年级', '5班', '20547', 75.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 160.0, -8.85, -0.39, NULL, -9.24);
INSERT INTO `exam_student_scores` VALUES (00000000000000007249, '一年级', '5班', '20546', 86.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 4.52, 16.02, NULL, 20.54);
INSERT INTO `exam_student_scores` VALUES (00000000000000007250, '一年级', '5班', '20545', 91.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 10.60, 1.96, NULL, 12.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000007251, '一年级', '5班', '20544', 76.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 167.0, -7.63, 6.64, NULL, -0.99);
INSERT INTO `exam_student_scores` VALUES (00000000000000007252, '一年级', '5班', '20543', 86.0, 100.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 4.52, 17.19, NULL, 21.71);
INSERT INTO `exam_student_scores` VALUES (00000000000000007253, '一年级', '5班', '20542', 88.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 6.95, 4.30, NULL, 11.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000007254, '一年级', '5班', '20541', 91.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 10.60, 3.13, NULL, 13.73);
INSERT INTO `exam_student_scores` VALUES (00000000000000007255, '一年级', '5班', '20540', 73.0, 82.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 155.0, -11.28, -3.90, NULL, -15.18);
INSERT INTO `exam_student_scores` VALUES (00000000000000007256, '一年级', '5班', '20539', 90.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, 9.38, -2.73, NULL, 6.65);
INSERT INTO `exam_student_scores` VALUES (00000000000000007257, '一年级', '5班', '20538', 80.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 168.0, -2.77, 3.13, NULL, 0.36);
INSERT INTO `exam_student_scores` VALUES (00000000000000007258, '一年级', '5班', '20537', 47.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 126.0, -42.88, -7.42, NULL, -50.30);
INSERT INTO `exam_student_scores` VALUES (00000000000000007259, '一年级', '5班', '20536', 49.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 128.0, -40.45, -7.42, NULL, -47.87);
INSERT INTO `exam_student_scores` VALUES (00000000000000007260, '一年级', '5班', '20535', 90.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 9.38, 1.96, NULL, 11.34);
INSERT INTO `exam_student_scores` VALUES (00000000000000007261, '一年级', '5班', '20534', 65.0, 67.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 132.0, -21.00, -21.48, NULL, -42.48);
INSERT INTO `exam_student_scores` VALUES (00000000000000007262, '一年级', '5班', '20533', 82.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 170.0, -0.34, 3.13, NULL, 2.79);
INSERT INTO `exam_student_scores` VALUES (00000000000000007263, '一年级', '5班', '20532', 95.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 15.46, 13.68, NULL, 29.14);
INSERT INTO `exam_student_scores` VALUES (00000000000000007264, '一年级', '5班', '20531', 89.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 187.0, 8.17, 14.85, NULL, 23.02);
INSERT INTO `exam_student_scores` VALUES (00000000000000007265, '一年级', '5班', '20530', 79.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, -3.99, 11.33, NULL, 7.34);
INSERT INTO `exam_student_scores` VALUES (00000000000000007266, '一年级', '5班', '20529', 65.0, 77.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 142.0, -21.00, -9.76, NULL, -30.76);
INSERT INTO `exam_student_scores` VALUES (00000000000000007267, '一年级', '5班', '20528', 89.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 187.0, 8.17, 14.85, NULL, 23.02);
INSERT INTO `exam_student_scores` VALUES (00000000000000007268, '一年级', '5班', '20527', 75.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 166.0, -8.85, 6.64, NULL, -2.21);
INSERT INTO `exam_student_scores` VALUES (00000000000000007269, '一年级', '5班', '20526', 95.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 15.46, 6.64, NULL, 22.10);
INSERT INTO `exam_student_scores` VALUES (00000000000000007270, '一年级', '5班', '20525', 83.0, 76.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 159.0, 0.88, -10.93, NULL, -10.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007271, '一年级', '5班', '20524', 94.0, 100.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 194.0, 14.24, 17.19, NULL, 31.43);
INSERT INTO `exam_student_scores` VALUES (00000000000000007272, '一年级', '5班', '20523', 78.0, 81.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 159.0, -5.20, -5.07, NULL, -10.27);
INSERT INTO `exam_student_scores` VALUES (00000000000000007273, '一年级', '5班', '20522', 73.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 162.0, -11.28, 4.30, NULL, -6.98);
INSERT INTO `exam_student_scores` VALUES (00000000000000007274, '一年级', '5班', '20521', 88.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 6.95, 11.33, NULL, 18.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007275, '一年级', '5班', '20520', 94.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 14.24, 12.50, NULL, 26.74);
INSERT INTO `exam_student_scores` VALUES (00000000000000007276, '一年级', '5班', '20519', 92.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 11.81, 14.85, NULL, 26.66);
INSERT INTO `exam_student_scores` VALUES (00000000000000007277, '一年级', '5班', '20518', 88.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, 6.95, -0.39, NULL, 6.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000007278, '一年级', '5班', '20517', 84.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 2.09, 10.16, NULL, 12.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000007279, '一年级', '5班', '20516', 61.0, 68.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 129.0, -25.86, -20.31, NULL, -46.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000007280, '一年级', '5班', '20515', 69.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 156.0, -16.14, 1.96, NULL, -14.18);
INSERT INTO `exam_student_scores` VALUES (00000000000000007281, '一年级', '5班', '20514', 88.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 6.95, 4.30, NULL, 11.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000007282, '一年级', '5班', '20513', 79.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 168.0, -3.99, 4.30, NULL, 0.31);
INSERT INTO `exam_student_scores` VALUES (00000000000000007283, '一年级', '5班', '20512', 87.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 5.74, 14.85, NULL, 20.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000007284, '一年级', '5班', '20511', 91.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 10.60, 13.68, NULL, 24.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007285, '一年级', '5班', '20510', 90.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 9.38, 16.02, NULL, 25.40);
INSERT INTO `exam_student_scores` VALUES (00000000000000007286, '一年级', '5班', '20509', 92.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 11.81, 8.99, NULL, 20.80);
INSERT INTO `exam_student_scores` VALUES (00000000000000007287, '一年级', '5班', '20508', 43.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 122.0, -47.74, -7.42, NULL, -55.16);
INSERT INTO `exam_student_scores` VALUES (00000000000000007288, '一年级', '5班', '20507', 68.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 157.0, -17.36, 4.30, NULL, -13.06);
INSERT INTO `exam_student_scores` VALUES (00000000000000007289, '一年级', '5班', '20506', 87.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 5.74, 7.82, NULL, 13.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000007290, '一年级', '5班', '20505', 92.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 11.81, 1.96, NULL, 13.77);
INSERT INTO `exam_student_scores` VALUES (00000000000000007291, '一年级', '5班', '20504', 80.0, 82.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 162.0, -2.77, -3.90, NULL, -6.67);
INSERT INTO `exam_student_scores` VALUES (00000000000000007292, '一年级', '5班', '20503', 77.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 168.0, -6.42, 6.64, NULL, 0.22);
INSERT INTO `exam_student_scores` VALUES (00000000000000007293, '一年级', '5班', '20502', 85.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 3.31, 8.99, NULL, 12.30);
INSERT INTO `exam_student_scores` VALUES (00000000000000007294, '一年级', '5班', '20501', 86.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 172.0, 4.52, 0.79, NULL, 5.31);
INSERT INTO `exam_student_scores` VALUES (00000000000000007295, '一年级', '4班', '20449', 93.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 13.03, 5.47, NULL, 18.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000007296, '一年级', '4班', '20448', 94.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 14.24, 11.33, NULL, 25.57);
INSERT INTO `exam_student_scores` VALUES (00000000000000007297, '一年级', '4班', '20447', 71.0, 67.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 138.0, -13.71, -21.48, NULL, -35.19);
INSERT INTO `exam_student_scores` VALUES (00000000000000007298, '一年级', '4班', '20446', 95.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 191.0, 15.46, 12.50, NULL, 27.96);
INSERT INTO `exam_student_scores` VALUES (00000000000000007299, '一年级', '4班', '20445', 88.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, 6.95, 0.79, NULL, 7.74);
INSERT INTO `exam_student_scores` VALUES (00000000000000007300, '一年级', '4班', '20444', 92.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 11.81, 3.13, NULL, 14.94);
INSERT INTO `exam_student_scores` VALUES (00000000000000007301, '一年级', '4班', '20443', 79.0, 76.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 155.0, -3.99, -10.93, NULL, -14.92);
INSERT INTO `exam_student_scores` VALUES (00000000000000007302, '一年级', '4班', '20442', 23.0, 12.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 35.0, -72.05, -85.94, NULL, -157.99);
INSERT INTO `exam_student_scores` VALUES (00000000000000007303, '一年级', '4班', '20441', 84.0, 68.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 152.0, 2.09, -20.31, NULL, -18.22);
INSERT INTO `exam_student_scores` VALUES (00000000000000007304, '一年级', '4班', '20440', 69.0, 49.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 118.0, -16.14, -42.58, NULL, -58.72);
INSERT INTO `exam_student_scores` VALUES (00000000000000007305, '一年级', '4班', '20439', 83.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 0.88, 10.16, NULL, 11.04);
INSERT INTO `exam_student_scores` VALUES (00000000000000007306, '一年级', '4班', '20438', 60.0, 69.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 129.0, -27.08, -19.14, NULL, -46.22);
INSERT INTO `exam_student_scores` VALUES (00000000000000007307, '一年级', '4班', '20437', 92.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 11.81, 5.47, NULL, 17.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007308, '一年级', '4班', '20436', 81.0, 76.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 157.0, -1.56, -10.93, NULL, -12.49);
INSERT INTO `exam_student_scores` VALUES (00000000000000007309, '一年级', '4班', '20435', 81.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 169.0, -1.56, 3.13, NULL, 1.57);
INSERT INTO `exam_student_scores` VALUES (00000000000000007310, '一年级', '4班', '20434', 90.0, 63.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 153.0, 9.38, -26.17, NULL, -16.79);
INSERT INTO `exam_student_scores` VALUES (00000000000000007311, '一年级', '4班', '20433', 22.0, 35.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 57.0, -73.26, -58.98, NULL, -132.24);
INSERT INTO `exam_student_scores` VALUES (00000000000000007312, '一年级', '4班', '20432', 91.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 10.60, 5.47, NULL, 16.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000007313, '一年级', '4班', '20431', 82.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 165.0, -0.34, -2.73, NULL, -3.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000007314, '一年级', '4班', '20430', 59.0, 55.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 114.0, -28.29, -35.54, NULL, -63.83);
INSERT INTO `exam_student_scores` VALUES (00000000000000007315, '一年级', '4班', '20429', 92.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 11.81, 8.99, NULL, 20.80);
INSERT INTO `exam_student_scores` VALUES (00000000000000007316, '一年级', '4班', '20428', 90.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 9.38, 11.33, NULL, 20.71);
INSERT INTO `exam_student_scores` VALUES (00000000000000007317, '一年级', '4班', '20427', 80.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 164.0, -2.77, -1.56, NULL, -4.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000007318, '一年级', '4班', '20426', 85.0, 70.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 155.0, 3.31, -17.97, NULL, -14.66);
INSERT INTO `exam_student_scores` VALUES (00000000000000007319, '一年级', '4班', '20425', 93.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 13.03, 7.82, NULL, 20.85);
INSERT INTO `exam_student_scores` VALUES (00000000000000007320, '一年级', '4班', '20424', 87.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, 5.74, 1.96, NULL, 7.70);
INSERT INTO `exam_student_scores` VALUES (00000000000000007321, '一年级', '4班', '20423', 96.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 16.67, 12.50, NULL, 29.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000007322, '一年级', '4班', '20422', 65.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 152.0, -21.00, 1.96, NULL, -19.04);
INSERT INTO `exam_student_scores` VALUES (00000000000000007323, '一年级', '4班', '20421', 76.0, 81.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 157.0, -7.63, -5.07, NULL, -12.70);
INSERT INTO `exam_student_scores` VALUES (00000000000000007324, '一年级', '4班', '20420', 87.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 5.74, 13.68, NULL, 19.42);
INSERT INTO `exam_student_scores` VALUES (00000000000000007325, '一年级', '4班', '20419', 94.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 14.24, -1.56, NULL, 12.68);
INSERT INTO `exam_student_scores` VALUES (00000000000000007326, '一年级', '4班', '20418', 90.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 9.38, 6.64, NULL, 16.02);
INSERT INTO `exam_student_scores` VALUES (00000000000000007327, '一年级', '4班', '20417', 90.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 9.38, 12.50, NULL, 21.88);
INSERT INTO `exam_student_scores` VALUES (00000000000000007328, '一年级', '4班', '20416', 86.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 4.52, 6.64, NULL, 11.16);
INSERT INTO `exam_student_scores` VALUES (00000000000000007329, '一年级', '4班', '20415', 80.0, 63.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 143.0, -2.77, -26.17, NULL, -28.94);
INSERT INTO `exam_student_scores` VALUES (00000000000000007330, '一年级', '4班', '20414', 91.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 10.60, 8.99, NULL, 19.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000007331, '一年级', '4班', '20412', 62.0, 57.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 119.0, -24.65, -33.20, NULL, -57.85);
INSERT INTO `exam_student_scores` VALUES (00000000000000007332, '一年级', '4班', '20411', 88.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 6.95, 4.30, NULL, 11.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000007333, '一年级', '4班', '20410', 74.0, 61.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 135.0, -10.06, -28.51, NULL, -38.57);
INSERT INTO `exam_student_scores` VALUES (00000000000000007334, '一年级', '4班', '20409', 73.0, 69.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 142.0, -11.28, -19.14, NULL, -30.42);
INSERT INTO `exam_student_scores` VALUES (00000000000000007335, '一年级', '4班', '20408', 91.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 10.60, 13.68, NULL, 24.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007336, '一年级', '4班', '20407', 83.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 0.88, 11.33, NULL, 12.21);
INSERT INTO `exam_student_scores` VALUES (00000000000000007337, '一年级', '4班', '20406', 85.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 169.0, 3.31, -1.56, NULL, 1.75);
INSERT INTO `exam_student_scores` VALUES (00000000000000007338, '一年级', '4班', '20405', 96.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 16.67, 7.82, NULL, 24.49);
INSERT INTO `exam_student_scores` VALUES (00000000000000007339, '一年级', '4班', '20404', 73.0, 74.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 147.0, -11.28, -13.28, NULL, -24.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000007340, '一年级', '4班', '20403', 90.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 169.0, 9.38, -7.42, NULL, 1.96);
INSERT INTO `exam_student_scores` VALUES (00000000000000007341, '一年级', '4班', '20402', 90.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 9.38, 12.50, NULL, 21.88);
INSERT INTO `exam_student_scores` VALUES (00000000000000007342, '一年级', '4班', '20401', 89.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 8.17, 11.33, NULL, 19.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000007343, '一年级', '3班', '20349', 80.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, -2.77, 10.16, NULL, 7.39);
INSERT INTO `exam_student_scores` VALUES (00000000000000007344, '一年级', '3班', '20348', 88.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 6.95, 12.50, NULL, 19.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007345, '一年级', '3班', '20347', 84.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 2.09, 8.99, NULL, 11.08);
INSERT INTO `exam_student_scores` VALUES (00000000000000007346, '一年级', '3班', '20346', 87.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 176.0, 5.74, 4.30, NULL, 10.04);
INSERT INTO `exam_student_scores` VALUES (00000000000000007347, '一年级', '3班', '20345', 89.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 8.17, 12.50, NULL, 20.67);
INSERT INTO `exam_student_scores` VALUES (00000000000000007348, '一年级', '3班', '20344', 88.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 171.0, 6.95, -2.73, NULL, 4.22);
INSERT INTO `exam_student_scores` VALUES (00000000000000007349, '一年级', '3班', '20343', 89.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 8.17, 10.16, NULL, 18.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000007350, '一年级', '3班', '20342', 89.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 8.17, 10.16, NULL, 18.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000007351, '一年级', '3班', '20341', 86.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 4.52, 11.33, NULL, 15.85);
INSERT INTO `exam_student_scores` VALUES (00000000000000007352, '一年级', '3班', '20340', 91.0, 100.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 191.0, 10.60, 17.19, NULL, 27.79);
INSERT INTO `exam_student_scores` VALUES (00000000000000007353, '一年级', '3班', '20339', 95.0, 100.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 195.0, 15.46, 17.19, NULL, 32.65);
INSERT INTO `exam_student_scores` VALUES (00000000000000007354, '一年级', '3班', '20338', 63.0, 70.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 133.0, -23.43, -17.97, NULL, -41.40);
INSERT INTO `exam_student_scores` VALUES (00000000000000007355, '一年级', '3班', '20337', 82.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 169.0, -0.34, 1.96, NULL, 1.62);
INSERT INTO `exam_student_scores` VALUES (00000000000000007356, '一年级', '3班', '20336', 85.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 3.31, 8.99, NULL, 12.30);
INSERT INTO `exam_student_scores` VALUES (00000000000000007357, '一年级', '3班', '20335', 87.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 5.74, 14.85, NULL, 20.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000007358, '一年级', '3班', '20334', 69.0, 78.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 147.0, -16.14, -8.59, NULL, -24.73);
INSERT INTO `exam_student_scores` VALUES (00000000000000007359, '一年级', '3班', '20333', 66.0, 68.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 134.0, -19.79, -20.31, NULL, -40.10);
INSERT INTO `exam_student_scores` VALUES (00000000000000007360, '一年级', '3班', '20332', 45.0, 46.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 91.0, -45.31, -46.09, NULL, -91.40);
INSERT INTO `exam_student_scores` VALUES (00000000000000007361, '一年级', '3班', '20331', 85.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 3.31, 7.82, NULL, 11.13);
INSERT INTO `exam_student_scores` VALUES (00000000000000007362, '一年级', '3班', '20330', 79.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 166.0, -3.99, 1.96, NULL, -2.03);
INSERT INTO `exam_student_scores` VALUES (00000000000000007363, '一年级', '3班', '20329', 94.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 14.24, 14.85, NULL, 29.09);
INSERT INTO `exam_student_scores` VALUES (00000000000000007364, '一年级', '3班', '20328', 93.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 13.03, 4.30, NULL, 17.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000007365, '一年级', '3班', '20327', 36.0, 43.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 79.0, -56.25, -49.61, NULL, -105.86);
INSERT INTO `exam_student_scores` VALUES (00000000000000007366, '一年级', '3班', '20326', 60.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 139.0, -27.08, -7.42, NULL, -34.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000007367, '一年级', '3班', '20325', 67.0, 74.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 141.0, -18.57, -13.28, NULL, -31.85);
INSERT INTO `exam_student_scores` VALUES (00000000000000007368, '一年级', '3班', '20324', 86.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 4.52, 10.16, NULL, 14.68);
INSERT INTO `exam_student_scores` VALUES (00000000000000007369, '一年级', '3班', '20323', 38.0, 66.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 104.0, -53.82, -22.65, NULL, -76.47);
INSERT INTO `exam_student_scores` VALUES (00000000000000007370, '一年级', '3班', '20322', 61.0, 62.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 123.0, -25.86, -27.34, NULL, -53.20);
INSERT INTO `exam_student_scores` VALUES (00000000000000007371, '一年级', '3班', '20321', 80.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 167.0, -2.77, 1.96, NULL, -0.81);
INSERT INTO `exam_student_scores` VALUES (00000000000000007372, '一年级', '3班', '20320', 74.0, 73.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 147.0, -10.06, -14.45, NULL, -24.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000007373, '一年级', '3班', '20319', 86.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 4.52, 10.16, NULL, 14.68);
INSERT INTO `exam_student_scores` VALUES (00000000000000007374, '一年级', '3班', '20318', 94.0, 93.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 187.0, 14.24, 8.99, NULL, 23.23);
INSERT INTO `exam_student_scores` VALUES (00000000000000007375, '一年级', '3班', '20317', 91.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 10.60, 11.33, NULL, 21.93);
INSERT INTO `exam_student_scores` VALUES (00000000000000007376, '一年级', '3班', '20316', 61.0, 75.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 136.0, -25.86, -12.11, NULL, -37.97);
INSERT INTO `exam_student_scores` VALUES (00000000000000007377, '一年级', '3班', '20315', 72.0, 62.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 134.0, -12.49, -27.34, NULL, -39.83);
INSERT INTO `exam_student_scores` VALUES (00000000000000007378, '一年级', '3班', '20314', 80.0, 75.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 155.0, -2.77, -12.11, NULL, -14.88);
INSERT INTO `exam_student_scores` VALUES (00000000000000007379, '一年级', '3班', '20313', 65.0, 68.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 133.0, -21.00, -20.31, NULL, -41.31);
INSERT INTO `exam_student_scores` VALUES (00000000000000007380, '一年级', '3班', '20312', 77.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 165.0, -6.42, 3.13, NULL, -3.29);
INSERT INTO `exam_student_scores` VALUES (00000000000000007381, '一年级', '3班', '20311', 84.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 2.09, 10.16, NULL, 12.25);
INSERT INTO `exam_student_scores` VALUES (00000000000000007382, '一年级', '3班', '20310', 90.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 9.38, 16.02, NULL, 25.40);
INSERT INTO `exam_student_scores` VALUES (00000000000000007383, '一年级', '3班', '20309', 76.0, 77.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 153.0, -7.63, -9.76, NULL, -17.39);
INSERT INTO `exam_student_scores` VALUES (00000000000000007384, '一年级', '3班', '20308', 89.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, 8.17, -0.39, NULL, 7.78);
INSERT INTO `exam_student_scores` VALUES (00000000000000007385, '一年级', '3班', '20307', 85.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 3.31, 14.85, NULL, 18.16);
INSERT INTO `exam_student_scores` VALUES (00000000000000007386, '一年级', '3班', '20306', 62.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 151.0, -24.65, 4.30, NULL, -20.35);
INSERT INTO `exam_student_scores` VALUES (00000000000000007387, '一年级', '3班', '20305', 44.0, 53.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 97.0, -46.52, -37.89, NULL, -84.41);
INSERT INTO `exam_student_scores` VALUES (00000000000000007388, '一年级', '3班', '20304', 87.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 5.74, 10.16, NULL, 15.90);
INSERT INTO `exam_student_scores` VALUES (00000000000000007389, '一年级', '3班', '20303', 99.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 197.0, 20.32, 14.85, NULL, 35.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000007390, '一年级', '3班', '20302', 89.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 8.17, 11.33, NULL, 19.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000007391, '一年级', '3班', '20301', 72.0, 72.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 144.0, -12.49, -15.62, NULL, -28.11);
INSERT INTO `exam_student_scores` VALUES (00000000000000007392, '一年级', '2班', '20250', 54.0, 23.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 77.0, -34.37, -73.05, NULL, -107.42);
INSERT INTO `exam_student_scores` VALUES (00000000000000007393, '一年级', '2班', '20249', 61.0, 65.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 126.0, -25.86, -23.83, NULL, -49.69);
INSERT INTO `exam_student_scores` VALUES (00000000000000007394, '一年级', '2班', '20248', 85.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 3.31, 11.33, NULL, 14.64);
INSERT INTO `exam_student_scores` VALUES (00000000000000007395, '一年级', '2班', '20247', 82.0, 75.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 157.0, -0.34, -12.11, NULL, -12.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007396, '一年级', '2班', '20246', 84.0, 80.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 164.0, 2.09, -6.25, NULL, -4.16);
INSERT INTO `exam_student_scores` VALUES (00000000000000007397, '一年级', '2班', '20245', 94.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 193.0, 14.24, 16.02, NULL, 30.26);
INSERT INTO `exam_student_scores` VALUES (00000000000000007398, '一年级', '2班', '20244', 95.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 15.46, 13.68, NULL, 29.14);
INSERT INTO `exam_student_scores` VALUES (00000000000000007399, '一年级', '2班', '20243', 91.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 10.60, 10.16, NULL, 20.76);
INSERT INTO `exam_student_scores` VALUES (00000000000000007400, '一年级', '2班', '20242', 72.0, 72.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 144.0, -12.49, -15.62, NULL, -28.11);
INSERT INTO `exam_student_scores` VALUES (00000000000000007401, '一年级', '2班', '20241', 89.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 8.17, 12.50, NULL, 20.67);
INSERT INTO `exam_student_scores` VALUES (00000000000000007402, '一年级', '2班', '20240', 89.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 8.17, 10.16, NULL, 18.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000007403, '一年级', '2班', '20239', 92.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 11.81, 7.82, NULL, 19.63);
INSERT INTO `exam_student_scores` VALUES (00000000000000007404, '一年级', '2班', '20238', 90.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 186.0, 9.38, 12.50, NULL, 21.88);
INSERT INTO `exam_student_scores` VALUES (00000000000000007405, '一年级', '2班', '20237', 83.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 167.0, 0.88, -1.56, NULL, -0.68);
INSERT INTO `exam_student_scores` VALUES (00000000000000007406, '一年级', '2班', '20236', 70.0, 76.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 146.0, -14.92, -10.93, NULL, -25.85);
INSERT INTO `exam_student_scores` VALUES (00000000000000007407, '一年级', '2班', '20235', 93.0, 84.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 177.0, 13.03, -1.56, NULL, 11.47);
INSERT INTO `exam_student_scores` VALUES (00000000000000007408, '一年级', '2班', '20234', 91.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 10.60, 10.16, NULL, 20.76);
INSERT INTO `exam_student_scores` VALUES (00000000000000007409, '一年级', '2班', '20233', 85.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, 3.31, 4.30, NULL, 7.61);
INSERT INTO `exam_student_scores` VALUES (00000000000000007410, '一年级', '2班', '20232', 87.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 5.74, 7.82, NULL, 13.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000007411, '一年级', '2班', '20231', 91.0, 99.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 10.60, 16.02, NULL, 26.62);
INSERT INTO `exam_student_scores` VALUES (00000000000000007412, '一年级', '2班', '20230', 90.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 9.38, 10.16, NULL, 19.54);
INSERT INTO `exam_student_scores` VALUES (00000000000000007413, '一年级', '2班', '20229', 82.0, 80.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 162.0, -0.34, -6.25, NULL, -6.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000007414, '一年级', '2班', '20228', 88.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, 6.95, 0.79, NULL, 7.74);
INSERT INTO `exam_student_scores` VALUES (00000000000000007415, '一年级', '2班', '20227', 87.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 166.0, 5.74, -7.42, NULL, -1.68);
INSERT INTO `exam_student_scores` VALUES (00000000000000007416, '一年级', '2班', '20226', 83.0, 63.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 146.0, 0.88, -26.17, NULL, -25.29);
INSERT INTO `exam_student_scores` VALUES (00000000000000007417, '一年级', '2班', '20225', 84.0, 78.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 162.0, 2.09, -8.59, NULL, -6.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000007418, '一年级', '2班', '20224', 79.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 173.0, -3.99, 10.16, NULL, 6.17);
INSERT INTO `exam_student_scores` VALUES (00000000000000007419, '一年级', '2班', '20223', 95.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 15.46, 5.47, NULL, 20.93);
INSERT INTO `exam_student_scores` VALUES (00000000000000007420, '一年级', '2班', '20222', 93.0, 85.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 178.0, 13.03, -0.39, NULL, 12.64);
INSERT INTO `exam_student_scores` VALUES (00000000000000007421, '一年级', '2班', '20221', 96.0, 86.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 16.67, 0.79, NULL, 17.46);
INSERT INTO `exam_student_scores` VALUES (00000000000000007422, '一年级', '2班', '20220', 94.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 14.24, 5.47, NULL, 19.71);
INSERT INTO `exam_student_scores` VALUES (00000000000000007423, '一年级', '2班', '20219', 91.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 170.0, 10.60, -7.42, NULL, 3.18);
INSERT INTO `exam_student_scores` VALUES (00000000000000007424, '一年级', '2班', '20218', 92.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 11.81, 13.68, NULL, 25.49);
INSERT INTO `exam_student_scores` VALUES (00000000000000007425, '一年级', '2班', '20217', 96.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 193.0, 16.67, 13.68, NULL, 30.35);
INSERT INTO `exam_student_scores` VALUES (00000000000000007426, '一年级', '2班', '20216', 91.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 10.60, 10.16, NULL, 20.76);
INSERT INTO `exam_student_scores` VALUES (00000000000000007427, '一年级', '2班', '20215', 80.0, 74.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 154.0, -2.77, -13.28, NULL, -16.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007428, '一年级', '2班', '20214', 89.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 8.17, 10.16, NULL, 18.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000007429, '一年级', '2班', '20213', 80.0, 89.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 169.0, -2.77, 4.30, NULL, 1.53);
INSERT INTO `exam_student_scores` VALUES (00000000000000007430, '一年级', '2班', '20212', 90.0, 68.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 158.0, 9.38, -20.31, NULL, -10.93);
INSERT INTO `exam_student_scores` VALUES (00000000000000007431, '一年级', '2班', '20211', 90.0, 100.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 9.38, 17.19, NULL, 26.57);
INSERT INTO `exam_student_scores` VALUES (00000000000000007432, '一年级', '2班', '20210', 77.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 165.0, -6.42, 3.13, NULL, -3.29);
INSERT INTO `exam_student_scores` VALUES (00000000000000007433, '一年级', '2班', '20209', 95.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 192.0, 15.46, 13.68, NULL, 29.14);
INSERT INTO `exam_student_scores` VALUES (00000000000000007434, '一年级', '2班', '20208', 84.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 180.0, 2.09, 12.50, NULL, 14.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000007435, '一年级', '2班', '20207', 92.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 11.81, 5.47, NULL, 17.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007436, '一年级', '2班', '20206', 72.0, NULL, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 72.0, -12.49, NULL, NULL, -12.49);
INSERT INTO `exam_student_scores` VALUES (00000000000000007437, '一年级', '2班', '20205', 88.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 6.95, 13.68, NULL, 20.63);
INSERT INTO `exam_student_scores` VALUES (00000000000000007438, '一年级', '2班', '20204', 96.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 191.0, 16.67, 11.33, NULL, 28.00);
INSERT INTO `exam_student_scores` VALUES (00000000000000007439, '一年级', '2班', '20203', 75.0, 57.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 132.0, -8.85, -33.20, NULL, -42.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007440, '一年级', '2班', '20202', 71.0, 57.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 128.0, -13.71, -33.20, NULL, -46.91);
INSERT INTO `exam_student_scores` VALUES (00000000000000007441, '一年级', '2班', '20201', 77.0, 80.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 157.0, -6.42, -6.25, NULL, -12.67);
INSERT INTO `exam_student_scores` VALUES (00000000000000007442, '一年级', '1班', '20150', 92.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 179.0, 11.81, 1.96, NULL, 13.77);
INSERT INTO `exam_student_scores` VALUES (00000000000000007443, '一年级', '1班', '20149', 76.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 159.0, -7.63, -2.73, NULL, -10.36);
INSERT INTO `exam_student_scores` VALUES (00000000000000007444, '一年级', '1班', '20148', 94.0, 88.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 14.24, 3.13, NULL, 17.37);
INSERT INTO `exam_student_scores` VALUES (00000000000000007445, '一年级', '1班', '20147', 80.0, 79.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 159.0, -2.77, -7.42, NULL, -10.19);
INSERT INTO `exam_student_scores` VALUES (00000000000000007446, '一年级', '1班', '20146', 91.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 10.60, 14.85, NULL, 25.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007447, '一年级', '1班', '20145', 92.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 187.0, 11.81, 11.33, NULL, 23.14);
INSERT INTO `exam_student_scores` VALUES (00000000000000007448, '一年级', '1班', '20144', 73.0, 72.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 145.0, -11.28, -15.62, NULL, -26.90);
INSERT INTO `exam_student_scores` VALUES (00000000000000007449, '一年级', '1班', '20143', 70.0, 83.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 153.0, -14.92, -2.73, NULL, -17.65);
INSERT INTO `exam_student_scores` VALUES (00000000000000007450, '一年级', '1班', '20142', 98.0, 98.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 196.0, 19.11, 14.85, NULL, 33.96);
INSERT INTO `exam_student_scores` VALUES (00000000000000007451, '一年级', '1班', '20141', 90.0, 92.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 182.0, 9.38, 7.82, NULL, 17.20);
INSERT INTO `exam_student_scores` VALUES (00000000000000007452, '一年级', '1班', '20140', 92.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 183.0, 11.81, 6.64, NULL, 18.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007453, '一年级', '1班', '20139', 93.0, 97.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 190.0, 13.03, 13.68, NULL, 26.71);
INSERT INTO `exam_student_scores` VALUES (00000000000000007454, '一年级', '1班', '20138', 92.0, 74.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 166.0, 11.81, -13.28, NULL, -1.47);
INSERT INTO `exam_student_scores` VALUES (00000000000000007455, '一年级', '1班', '20137', 79.0, 71.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 150.0, -3.99, -16.79, NULL, -20.78);
INSERT INTO `exam_student_scores` VALUES (00000000000000007456, '一年级', '1班', '20136', 97.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 193.0, 17.89, 12.50, NULL, 30.39);
INSERT INTO `exam_student_scores` VALUES (00000000000000007457, '一年级', '1班', '20135', 93.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 189.0, 13.03, 12.50, NULL, 25.53);
INSERT INTO `exam_student_scores` VALUES (00000000000000007458, '一年级', '1班', '20134', 97.0, 91.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 17.89, 6.64, NULL, 24.53);
INSERT INTO `exam_student_scores` VALUES (00000000000000007459, '一年级', '1班', '20133', 84.0, 90.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 174.0, 2.09, 5.47, NULL, 7.56);
INSERT INTO `exam_student_scores` VALUES (00000000000000007460, '一年级', '1班', '20132', 93.0, 95.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 188.0, 13.03, 11.33, NULL, 24.36);
INSERT INTO `exam_student_scores` VALUES (00000000000000007461, '一年级', '1班', '20131', 90.0, 94.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 184.0, 9.38, 10.16, NULL, 19.54);
INSERT INTO `exam_student_scores` VALUES (00000000000000007462, '一年级', '1班', '20130', 89.0, 96.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 185.0, 8.17, 12.50, NULL, 20.67);
INSERT INTO `exam_student_scores` VALUES (00000000000000007463, '一年级', '1班', '20129', 94.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 181.0, 14.24, 1.96, NULL, 16.20);
INSERT INTO `exam_student_scores` VALUES (00000000000000007464, '一年级', '1班', '20128', 78.0, 80.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 158.0, -5.20, -6.25, NULL, -11.45);
INSERT INTO `exam_student_scores` VALUES (00000000000000007465, '一年级', '1班', '20127', 88.0, 87.0, NULL, NULL, '2023-05-22 18:43:06', 'admin', NULL, NULL, 69, 175.0, 6.95, 1.96, NULL, 8.91);
INSERT INTO `exam_student_scores` VALUES (00000000000000007466, '一年级', '1班', '20126', 83.0, 73.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 156.0, 0.88, -14.45, NULL, -13.57);
INSERT INTO `exam_student_scores` VALUES (00000000000000007467, '一年级', '1班', '20125', 0.0, 0.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 0.0, -100.00, -100.00, NULL, -200.00);
INSERT INTO `exam_student_scores` VALUES (00000000000000007468, '一年级', '1班', '20124', 90.0, 96.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 186.0, 9.38, 12.50, NULL, 21.88);
INSERT INTO `exam_student_scores` VALUES (00000000000000007469, '一年级', '1班', '20123', 86.0, 93.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 179.0, 4.52, 8.99, NULL, 13.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000007470, '一年级', '1班', '20122', 86.0, 79.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 165.0, 4.52, -7.42, NULL, -2.90);
INSERT INTO `exam_student_scores` VALUES (00000000000000007471, '一年级', '1班', '20121', 82.0, 74.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 156.0, -0.34, -13.28, NULL, -13.62);
INSERT INTO `exam_student_scores` VALUES (00000000000000007472, '一年级', '1班', '20120', 93.0, 89.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 182.0, 13.03, 4.30, NULL, 17.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000007473, '一年级', '1班', '20119', 90.0, 98.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 188.0, 9.38, 14.85, NULL, 24.23);
INSERT INTO `exam_student_scores` VALUES (00000000000000007474, '一年级', '1班', '20118', 85.0, 78.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 163.0, 3.31, -8.59, NULL, -5.28);
INSERT INTO `exam_student_scores` VALUES (00000000000000007475, '一年级', '1班', '20117', 86.0, 92.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 178.0, 4.52, 7.82, NULL, 12.34);
INSERT INTO `exam_student_scores` VALUES (00000000000000007476, '一年级', '1班', '20116', 88.0, 73.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 161.0, 6.95, -14.45, NULL, -7.50);
INSERT INTO `exam_student_scores` VALUES (00000000000000007477, '一年级', '1班', '20115', 92.0, 97.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 189.0, 11.81, 13.68, NULL, 25.49);
INSERT INTO `exam_student_scores` VALUES (00000000000000007478, '一年级', '1班', '20114', 87.0, 90.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 177.0, 5.74, 5.47, NULL, 11.21);
INSERT INTO `exam_student_scores` VALUES (00000000000000007479, '一年级', '1班', '20113', 84.0, 87.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 171.0, 2.09, 1.96, NULL, 4.05);
INSERT INTO `exam_student_scores` VALUES (00000000000000007480, '一年级', '1班', '20112', 85.0, 95.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 180.0, 3.31, 11.33, NULL, 14.64);
INSERT INTO `exam_student_scores` VALUES (00000000000000007481, '一年级', '1班', '20111', 91.0, 80.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 171.0, 10.60, -6.25, NULL, 4.35);
INSERT INTO `exam_student_scores` VALUES (00000000000000007482, '一年级', '1班', '20110', 89.0, 94.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 183.0, 8.17, 10.16, NULL, 18.33);
INSERT INTO `exam_student_scores` VALUES (00000000000000007483, '一年级', '1班', '20109', 94.0, 69.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 163.0, 14.24, -19.14, NULL, -4.90);
INSERT INTO `exam_student_scores` VALUES (00000000000000007484, '一年级', '1班', '20108', 87.0, 95.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 182.0, 5.74, 11.33, NULL, 17.07);
INSERT INTO `exam_student_scores` VALUES (00000000000000007485, '一年级', '1班', '20107', 87.0, 80.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 167.0, 5.74, -6.25, NULL, -0.51);
INSERT INTO `exam_student_scores` VALUES (00000000000000007486, '一年级', '1班', '20106', 90.0, 93.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 183.0, 9.38, 8.99, NULL, 18.37);
INSERT INTO `exam_student_scores` VALUES (00000000000000007487, '一年级', '1班', '20105', 87.0, 89.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 176.0, 5.74, 4.30, NULL, 10.04);
INSERT INTO `exam_student_scores` VALUES (00000000000000007488, '一年级', '1班', '20104', 85.0, 92.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 177.0, 3.31, 7.82, NULL, 11.13);
INSERT INTO `exam_student_scores` VALUES (00000000000000007489, '一年级', '1班', '20103', 78.0, 85.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 163.0, -5.20, -0.39, NULL, -5.59);
INSERT INTO `exam_student_scores` VALUES (00000000000000007490, '一年级', '1班', '20102', 86.0, 83.0, NULL, NULL, '2023-05-22 18:43:07', 'admin', NULL, NULL, 69, 169.0, 4.52, -2.73, NULL, 1.79);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_temp_chinese_score
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_temp_english_score
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `confirm_flag` tinyint(1) NULL DEFAULT NULL COMMENT '0没有确认，1确认',
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '各种考试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exams
-- ----------------------------
INSERT INTO `exams` VALUES (00000000000000000022, '202303', '2023-04-04 19:18:59', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000023, '特测01', '2023-05-04 19:33:02', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000024, '特测22', '2023-05-04 19:33:07', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000025, '土地款33', '2023-05-04 19:33:12', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000026, '55555', '2023-05-04 20:00:34', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000027, '66666', '2023-05-04 20:00:37', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000028, '77777', '2023-05-04 20:00:40', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000029, '88888', '2023-05-04 20:00:43', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000030, '99999', '2023-05-04 20:08:08', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000031, '10101010', '2023-05-04 20:08:12', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000032, '1111111', '2023-05-04 20:08:16', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000033, '哈哈哈', '2023-05-04 20:28:24', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000034, '啊啊啊', '2023-05-04 20:28:27', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000035, '是是是是', '2023-05-04 20:28:30', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000036, '大大大大', '2023-05-04 20:28:33', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000037, '翘曲器', '2023-05-04 20:28:36', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000038, '嗡嗡嗡嗡', '2023-05-04 20:28:39', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000039, '呃呃呃呃', '2023-05-04 20:28:42', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000040, '日日日融入', '2023-05-04 20:28:45', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000041, '他吞吞吐吐', '2023-05-04 20:28:48', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000042, '有有有由于', '2023-05-04 20:28:51', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000043, '噢噢噢噢', '2023-05-04 20:28:59', 'hhb', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000044, 'dsa', '2023-05-14 14:34:24', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000045, 'fda', '2023-05-14 14:34:57', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000046, 'fda', '2023-05-14 14:35:26', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000047, '框架叫', '2023-05-14 14:36:47', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000048, '框架叫fdss', '2023-05-14 14:37:02', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000049, '特别的爱给特别的你', '2023-05-14 14:41:03', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000050, '特别的爱给特别的你', '2023-05-14 14:41:35', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000051, '我还不能，接受分离', '2023-05-14 14:46:51', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000052, '我还不能，接受分离', '2023-05-14 14:47:13', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000053, '我越来越不相信自己', '2023-05-14 14:49:52', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000054, '我越来越不相信自己', '2023-05-14 14:49:57', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000055, '爱意不能够', '2023-05-14 14:51:05', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000056, '爱意不能够', '2023-05-14 14:51:26', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000057, '爱你不是两三天', '2023-05-14 14:52:25', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000058, '哈哈哈这条不显示', '2023-05-14 19:26:58', 'admin', '1', NULL);
INSERT INTO `exams` VALUES (00000000000000000059, '嘿嘿这条会显示', '2023-05-14 19:27:53', 'admin', '1', NULL);
INSERT INTO `exams` VALUES (00000000000000000060, '啊，这条一定会显示', '2023-05-14 19:30:01', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000061, '测试一下某些情况', '2023-05-14 20:01:02', 'admin', '1', NULL);
INSERT INTO `exams` VALUES (00000000000000000062, '再次测试', '2023-05-14 20:02:14', 'admin', '1', NULL);
INSERT INTO `exams` VALUES (00000000000000000063, '一次测试', '2023-05-14 20:02:53', 'admin', '1', NULL);
INSERT INTO `exams` VALUES (00000000000000000064, '测测试', '2023-05-14 20:03:19', 'admin', '1', NULL);
INSERT INTO `exams` VALUES (00000000000000000065, '哈哈哈', '2023-05-14 20:03:35', 'admin', '1', NULL);
INSERT INTO `exams` VALUES (00000000000000000066, '测不懂了', '2023-05-14 20:04:46', 'admin', '1', NULL);
INSERT INTO `exams` VALUES (00000000000000000067, '测测测', '2023-05-14 20:55:25', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000068, '得到', '2023-05-15 20:03:23', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000069, '供奉的是', '2023-05-17 19:05:25', 'admin', '1', 1);
INSERT INTO `exams` VALUES (00000000000000000070, '即可', '2023-05-17 19:06:15', 'admin', '1', NULL);
INSERT INTO `exams` VALUES (00000000000000000071, '添加测试', '2023-05-22 18:56:09', 'admin', '1', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (22, 'exam_class_statictics', '班级成绩统计情况', NULL, NULL, 'ExamClassStatictics', 'crud', 'com.hysro.scores', 'scores', 'statictics', '班级成绩统计情况', 'hysro', '0', '/', '{\"parentMenuId\":1092}', 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:26:18', NULL);
INSERT INTO `gen_table` VALUES (24, 'exam_grade_statistic', '年级数据统计情况', NULL, NULL, 'ExamGradeStatistic', 'crud', 'com.hysro.scores', 'scores', 'statistic', '年级数据统计情况', 'hysro', '0', '/', '{\"parentMenuId\":1092}', 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:24:24', NULL);
INSERT INTO `gen_table` VALUES (25, 'exam_grade_summary', '年级总体情况', NULL, NULL, 'ExamGradeSummary', 'crud', 'com.hysro.scores', 'scores', 'summary', '年级总体情况', 'hysro', '0', '/', '{\"parentMenuId\":1092}', 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:22:33', NULL);
INSERT INTO `gen_table` VALUES (26, 'exam_student_scores', '学生分数情况', NULL, NULL, 'ExamStudentScores', 'crud', 'com.hysro.scores', 'scores', 'scores', '学生分数情况', 'hysro', '0', '/', '{\"parentMenuId\":1092}', 'admin', '2023-04-04 17:39:36', '', '2023-04-04 18:20:49', NULL);
INSERT INTO `gen_table` VALUES (27, 'exam_excellent_score_line', '优秀分数线', NULL, NULL, 'ExamExcellentScoreLine', 'crud', 'com.hysro.scores', 'scores', 'line', '优秀分数线', 'hysro', '0', '/', NULL, 'admin', '2023-05-13 13:42:08', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (28, 'exam_report_sheet', '成绩报告单', NULL, NULL, 'ExamReportSheet', 'crud', 'com.hysro.scores', 'scores', 'sheet', '成绩报告单', 'hysro', '0', '/', '{\"parentMenuId\":1209}', 'admin', '2023-07-11 18:28:01', '', '2023-07-11 18:32:08', NULL);
INSERT INTO `gen_table` VALUES (29, 'exam_report_sheet_imgs', '成绩报告单图片', NULL, NULL, 'ExamReportSheetImgs', 'crud', 'com.hysro.scores', 'scores', 'imgs', '成绩报告单图片', 'hysro', '0', '/', '{\"parentMenuId\":1208}', 'admin', '2023-07-12 18:24:37', '', '2023-07-12 18:25:06', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 297 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

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
INSERT INTO `gen_table_column` VALUES (275, '27', 'excellent_id', 'id', 'bigint(20) unsigned zerofill', 'Long', 'excellentId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-13 13:42:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (276, '27', 'subject', '学科', 'varchar(60)', 'String', 'subject', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-05-13 13:42:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (277, '27', 'excellent_score', '优秀分数', 'float(7,1)', 'BigDecimal', 'excellentScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-05-13 13:42:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (278, '27', 'grade', '年级', 'varchar(60)', 'String', 'grade', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-05-13 13:42:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (279, '27', 'exam_id', '考试ID', 'bigint(20)', 'Long', 'examId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-05-13 13:42:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (280, '27', 'full_score', '满分分数线', 'float(7,1)', 'BigDecimal', 'fullScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-13 13:42:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (281, '27', 'good_score', '良好分数线', 'float(7,1)', 'BigDecimal', 'goodScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-05-13 13:42:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (282, '27', 'qualified_score', '及格分数线', 'float(7,1)', 'BigDecimal', 'qualifiedScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-05-13 13:42:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (283, '27', 'unqualified_one_score', '不合格分数线（默认55-59）', 'float(7,1)', 'BigDecimal', 'unqualifiedOneScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-05-13 13:42:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (284, '27', 'unqualified_two_score', '不合格分数线（默认50-54）', 'float(7,1)', 'BigDecimal', 'unqualifiedTwoScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-05-13 13:42:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (285, '27', 'unqualified_three_score', '不合格分数线（默认40-49）', 'float(7,1)', 'BigDecimal', 'unqualifiedThreeScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-05-13 13:42:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (286, '27', 'unqualified_four_score', '不合格分数线（默认0-39）', 'float(7,1)', 'BigDecimal', 'unqualifiedFourScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-05-13 13:42:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (287, '28', 'id', NULL, 'bigint(20) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-07-11 18:28:01', '', '2023-07-11 18:32:08');
INSERT INTO `gen_table_column` VALUES (288, '28', 'title', NULL, 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-07-11 18:28:01', '', '2023-07-11 18:32:08');
INSERT INTO `gen_table_column` VALUES (289, '28', 'education_days', NULL, 'int(5)', 'Integer', 'educationDays', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-07-11 18:28:01', '', '2023-07-11 18:32:08');
INSERT INTO `gen_table_column` VALUES (290, '28', 'next_school_day', NULL, 'date', 'Date', 'nextSchoolDay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-07-11 18:28:01', '', '2023-07-11 18:32:08');
INSERT INTO `gen_table_column` VALUES (291, '29', 'id', NULL, 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-07-12 18:24:37', '', '2023-07-12 18:25:06');
INSERT INTO `gen_table_column` VALUES (292, '29', 'img_src', NULL, 'varchar(255)', 'String', 'imgSrc', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-07-12 18:24:37', '', '2023-07-12 18:25:06');
INSERT INTO `gen_table_column` VALUES (293, '29', 'position_x', NULL, 'varchar(255)', 'String', 'positionX', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-07-12 18:24:37', '', '2023-07-12 18:25:06');
INSERT INTO `gen_table_column` VALUES (294, '29', 'position_y', NULL, 'varchar(255)', 'String', 'positionY', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-07-12 18:24:37', '', '2023-07-12 18:25:06');
INSERT INTO `gen_table_column` VALUES (295, '29', 'size_width', NULL, 'varchar(255)', 'String', 'sizeWidth', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-07-12 18:24:37', '', '2023-07-12 18:25:06');
INSERT INTO `gen_table_column` VALUES (296, '29', 'size_height', NULL, 'varchar(255)', 'String', 'sizeHeight', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-07-12 18:24:37', '', '2023-07-12 18:25:06');

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
) ENGINE = InnoDB AUTO_INCREMENT = 207 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '安家小学', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-05-17 20:39:38');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '小学部', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-03-18 18:56:45', 'admin', '2023-03-18 19:39:37');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '中学部', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-03-18 18:56:45', 'admin', '2023-03-18 19:39:47');
INSERT INTO `sys_dept` VALUES (103, 100, '0,100', '一年级', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-05-17 19:55:13');
INSERT INTO `sys_dept` VALUES (104, 100, '0,100', '二年级', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-05-17 19:55:18');
INSERT INTO `sys_dept` VALUES (105, 100, '0,100', '三年级', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-05-17 19:55:23');
INSERT INTO `sys_dept` VALUES (106, 100, '0,100', '四年级', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-05-17 19:55:27');
INSERT INTO `sys_dept` VALUES (107, 100, '0,100', '五年级', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-18 18:56:45', 'admin', '2023-05-17 19:55:31');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '六年级', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-03-18 18:56:45', 'admin', '2023-03-18 19:41:26');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-03-18 18:56:45', '', NULL);
INSERT INTO `sys_dept` VALUES (200, 101, '0,100,101', '六年级', 6, '若依', '18888888888', 'ry@qq.com', '0', '2', 'admin', '2023-03-18 19:41:06', '', NULL);
INSERT INTO `sys_dept` VALUES (201, 100, '0,100', '六年级', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-24 18:19:29', 'admin', '2023-05-17 19:55:35');
INSERT INTO `sys_dept` VALUES (202, 103, '0,100,103', '一年级：语文', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-05-17 19:56:16', 'admin', '2023-05-17 20:39:30');
INSERT INTO `sys_dept` VALUES (203, 103, '0,100,103', '一年级：数学', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-05-17 19:56:23', 'admin', '2023-05-17 20:39:12');
INSERT INTO `sys_dept` VALUES (204, 105, '0,100,105', '三年级：语文', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-05-17 19:56:30', 'admin', '2023-05-17 20:12:43');
INSERT INTO `sys_dept` VALUES (205, 105, '0,100,105', '三年级：数学', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-05-17 19:56:37', 'admin', '2023-05-17 20:38:55');
INSERT INTO `sys_dept` VALUES (206, 105, '0,100,105', '三年级：英语', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-05-17 19:56:44', 'admin', '2023-05-17 20:39:04');

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
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1211 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_menu` VALUES (1169, '优秀分数线', 1061, 2, 'line', 'scores/line/index', NULL, 1, 1, 'C', '1', '1', 'scores:line:list', '#', 'admin', '2023-04-04 17:57:13', 'admin', '2023-05-20 20:17:16', '优秀分数线菜单');
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
INSERT INTO `sys_menu` VALUES (1206, '学情分析', 1207, 2, 'analysis', 'scores/analysis/index', NULL, 1, 1, 'C', '0', '0', 'scores:analysis:index', '#', 'admin', '2023-05-20 20:19:46', 'admin', '2023-05-23 20:56:39', '');
INSERT INTO `sys_menu` VALUES (1207, '考试分析', 1061, 3, 'analysis', NULL, NULL, 1, 0, 'M', '0', '0', '', '#', 'admin', '2023-05-23 20:55:34', 'admin', '2023-05-23 20:56:02', '');
INSERT INTO `sys_menu` VALUES (1208, '素质成绩报告单', 0, 6, 'report_sheet', 'scores/reportSheet/index', NULL, 1, 1, 'C', '0', '0', 'scores:reportSheet:index', 'documentation', 'admin', '2023-06-29 16:36:10', 'admin', '2023-06-29 16:37:33', '');
INSERT INTO `sys_menu` VALUES (1209, '编辑', 1208, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'scores:reportSheet:edit', '#', 'admin', '2023-06-29 16:38:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1210, '打印', 1208, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'scores:reportSheet:print', '#', 'admin', '2023-06-29 16:38:45', '', NULL, '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 967 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 5, '2', 1, 1, '0', '0', 'admin', '2023-03-18 18:56:46', 'admin', '2023-07-14 20:04:18', '普通角色');
INSERT INTO `sys_role` VALUES (3, '管理员', 'premier', 2, '1', 1, 1, '0', '0', 'admin', '2023-03-28 20:25:20', 'admin', '2023-05-13 11:16:04', NULL);
INSERT INTO `sys_role` VALUES (4, '行政', 'administration', 3, '1', 1, 1, '0', '0', 'admin', '2023-03-28 20:51:41', 'admin', '2023-05-13 11:15:58', NULL);

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
INSERT INTO `sys_role_menu` VALUES (2, 1208);
INSERT INTO `sys_role_menu` VALUES (2, 1210);
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
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '若依', '00', 'ry@163.com', '15888888888', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-07-15 19:41:33', 'admin', '2023-03-18 18:56:46', '', '2023-07-15 19:41:32', '管理员');
INSERT INTO `sys_user` VALUES (2, 205, 'hhb', 'hhb', '00', '', '', '0', '', '$2a$10$eHm42WQU7bC84hG77PjATe3QmDOqH4xjvR0eQMvBGIZAQ6o.KxGEy', '0', '0', '127.0.0.1', '2023-07-15 21:56:07', 'admin', '2023-05-04 19:12:39', 'admin', '2023-07-15 21:56:06', NULL);

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
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (2, 4);

SET FOREIGN_KEY_CHECKS = 1;
