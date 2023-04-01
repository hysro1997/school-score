import request from '@/utils/request'

// 查询各种考试列表
export function listExams(query) {
  return request({
    url: '/examination/exams/list',
    method: 'get',
    params: query
  })
}

// 查询考试
export function allExams(query) {
  return request({
    url: '/examination/exams/allExams',
    method: 'get',
    params: query
  })
}

// 查询各种考试详细
export function getExams(examId) {
  return request({
    url: '/examination/exams/' + examId,
    method: 'get'
  })
}

//查询启用考试的数量
export function getExamsEnables() {
  return request({
    url:'/examination/exams/getExamsEnables',
    method:'get'
  })

}

// 新增各种考试
export function addExams(data) {
  return request({
    url: '/examination/exams',
    method: 'post',
    data: data
  })
}

// 统计考试数据
export function statisticExams(data) {
  return request({
    url: '/examination/exams/statisticExams',
    method: 'post',
    data: data
  })
}

// 修改各种考试
export function updateExams(data) {
  return request({
    url: '/examination/exams',
    method: 'put',
    data: data
  })
}

// 删除各种考试
export function delExams(examId) {
  return request({
    url: '/examination/exams/' + examId,
    method: 'delete'
  })
}
