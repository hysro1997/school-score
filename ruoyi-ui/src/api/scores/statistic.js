import request from '@/utils/request'

// 查询年级数据统计情况列表
export function listStatistic(query) {
  return request({
    url: '/scores/statistic/list',
    method: 'get',
    params: query
  })
}

// 查询年级数据统计情况详细
export function getStatistic(examGradeStatisticsId) {
  return request({
    url: '/scores/statistic/' + examGradeStatisticsId,
    method: 'get'
  })
}

// 新增年级数据统计情况
export function addStatistic(data) {
  return request({
    url: '/scores/statistic',
    method: 'post',
    data: data
  })
}

// 修改年级数据统计情况
export function updateStatistic(data) {
  return request({
    url: '/scores/statistic',
    method: 'put',
    data: data
  })
}

// 删除年级数据统计情况
export function delStatistic(examGradeStatisticsId) {
  return request({
    url: '/scores/statistic/' + examGradeStatisticsId,
    method: 'delete'
  })
}
