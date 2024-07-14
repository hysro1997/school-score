-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('考试班级责任老师', '1061', '1', 'teacher', 'scores/teacher/index', 1, 0, 'C', '0', '0', 'scores:teacher:list', '#', 'admin', sysdate(), '', null, '考试班级责任老师菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('考试班级责任老师查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'scores:teacher:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('考试班级责任老师新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'scores:teacher:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('考试班级责任老师修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'scores:teacher:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('考试班级责任老师删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'scores:teacher:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('考试班级责任老师导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'scores:teacher:export',       '#', 'admin', sysdate(), '', null, '');