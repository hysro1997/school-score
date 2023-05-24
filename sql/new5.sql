ALTER TABLE `ajxx_score`.`exam_student_scores` 
ADD COLUMN `chinese_deviation_rate` decimal(7, 2) NULL COMMENT '语文偏差率' AFTER `total_points`,
ADD COLUMN `maths_deviation_rate` decimal(7, 2) NULL COMMENT '数学偏差率' AFTER `chinese_deviation_rate`,
ADD COLUMN `english_deviation_rate` decimal(7, 2) NULL COMMENT '英语偏差率' AFTER `maths_deviation_rate`,
ADD COLUMN `total_deviation_rate` decimal(7, 2) NULL COMMENT '总偏差率' AFTER `english_deviation_rate`;

INSERT INTO `ajxx_score`.`sys_menu`(`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1206, '学情分析', 1207, 2, 'analysis', 'scores/analysis/index', NULL, 1, 1, 'C', '0', '0', 'scores:analysis:index', '#', 'admin', '2023-05-20 20:19:46', 'admin', '2023-05-23 20:56:39', '');
INSERT INTO `ajxx_score`.`sys_menu`(`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1207, '考试分析', 1061, 3, 'analysis', NULL, NULL, 1, 0, 'M', '0', '0', '', '#', 'admin', '2023-05-23 20:55:34', 'admin', '2023-05-23 20:56:02', '');
