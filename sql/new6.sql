INSERT INTO `ajxxscore`.`sys_menu`(`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1208, '素质成绩报告单', 0, 6, 'report_sheet', 'scores/reportSheet/index', NULL, 1, 1, 'C', '0', '0', 'scores:reportSheet:index', 'documentation', 'admin', '2023-06-29 16:36:10', 'admin', '2023-06-29 16:37:33', '');
INSERT INTO `ajxxscore`.`sys_menu`(`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1209, '编辑', 1208, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'scores:reportSheet:edit', '#', 'admin', '2023-06-29 16:38:21', '', NULL, '');
INSERT INTO `ajxxscore`.`sys_menu`(`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (1210, '打印', 1208, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'scores:reportSheet:print', '#', 'admin', '2023-06-29 16:38:45', '', NULL, '');

CREATE TABLE `ajxxscore`.`exam_report_sheet`  (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NULL,
  `education_days` int(5) NULL,
  `next_school_day` date NULL,
  PRIMARY KEY (`id`)
);
ALTER TABLE `ajxxscore`.`exam_report_sheet` 
MODIFY COLUMN `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT FIRST;

INSERT INTO `ajxxscore`.`exam_report_sheet`(`id`, `title`, `education_days`, `next_school_day`) VALUES (1, '2022-2023春学期成绩报告单', 91, '2023-09-01');

CREATE TABLE `exam_report_sheet_imgs`  (
  `id` bigint(11) NOT NULL,
  `img_src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position_x` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position_y` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size_width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size_height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
ALTER TABLE `ajxxscore`.`exam_report_sheet_imgs` 
MODIFY COLUMN `id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT FIRST;
