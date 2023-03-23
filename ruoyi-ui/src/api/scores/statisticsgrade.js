import request from '@/utils/request'

// 查询年级数据统计情况列表
export function listStatisticsgrade(query) {
  return request({
    url: '/scores/statisticsgrade/list',
    method: 'get',
    params: query
  })
}

// 查询年级数据统计情况详细
export function getStatisticsgrade(examGradeStatisticsId) {
  return request({
    url: '/scores/statisticsgrade/' + examGradeStatisticsId,
    method: 'get'
  })
}

// 新增年级数据统计情况
export function addStatisticsgrade(data) {
  return request({
    url: '/scores/statisticsgrade',
    method: 'post',
    data: data
  })
}

// 修改年级数据统计情况
export function updateStatisticsgrade(data) {
  return request({
    url: '/scores/statisticsgrade',
    method: 'put',
    data: data
  })
}

// 删除年级数据统计情况
export function delStatisticsgrade(examGradeStatisticsId) {
  return request({
    url: '/scores/statisticsgrade/' + examGradeStatisticsId,
    method: 'delete'
  })
}
