ALTER TABLE `ajxx_score`.`exam_excellent_score_line` 
MODIFY COLUMN `excellent_id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'id' FIRST,
MODIFY COLUMN `excellent_score` float(7, 1) NULL DEFAULT NULL COMMENT '优秀分数' AFTER `subject`,
ADD COLUMN `exam_id` bigint(20) NULL COMMENT '考试ID' AFTER `grade`,
ADD COLUMN `full_score` float(7, 1) NULL DEFAULT NULL COMMENT '满分分数线' AFTER `exam_id`,
ADD COLUMN `good_score` float(7, 1) NULL DEFAULT NULL COMMENT '良好分数线' AFTER `full_score`,
ADD COLUMN `qualified_score` float(7, 1) NULL DEFAULT NULL COMMENT '及格分数线' AFTER `good_score`,
ADD COLUMN `unqualified_one_score` float(7, 1) NULL DEFAULT NULL COMMENT '不合格分数线（默认55-59）' AFTER `qualified_score`,
ADD COLUMN `unqualified_two_score` float(7, 1) NULL DEFAULT NULL COMMENT '不合格分数线（默认50-54）' AFTER `unqualified_one_score`,
ADD COLUMN `unqualified_three_score` float(7, 1) NULL DEFAULT NULL COMMENT '不合格分数线（默认40-49）' AFTER `unqualified_two_score`,
ADD COLUMN `unqualified_four_score` float(7, 1) NULL DEFAULT NULL COMMENT '不合格分数线（默认0-39）' AFTER `unqualified_three_score`;

UPDATE `exam_excellent_score_line` SET full_score = 100, good_score = 75,qualified_score = 60,unqualified_one_score = 55,unqualified_two_score = 50,unqualified_three_score = 40,unqualified_four_score = 0,exam_id = 43;