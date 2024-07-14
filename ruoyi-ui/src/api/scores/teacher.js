import request from '@/utils/request'

// 查询考试班级责任老师列表
export function listTeacher(query) {
  return request({
    url: '/scores/teacher/list',
    method: 'get',
    params: query
  })
}

// 查询考试班级责任老师详细
export function getTeacher(id) {
  return request({
    url: '/scores/teacher/' + id,
    method: 'get'
  })
}
// 获取考试班级责任老师
export function getTeachers(data) {
  return request({
    url: '/scores/teacher/getTeachers',
    method: 'post',
    data: data
  })
}
// 新增考试班级责任老师
export function addTeacher(data) {
  return request({
    url: '/scores/teacher',
    method: 'post',
    data: data
  })
}

// 修改考试班级责任老师
export function updateTeacher(data) {
  return request({
    url: '/scores/teacher',
    method: 'put',
    data: data
  })
}

// 删除考试班级责任老师
export function delTeacher(id) {
  return request({
    url: '/scores/teacher/' + id,
    method: 'delete'
  })
}
