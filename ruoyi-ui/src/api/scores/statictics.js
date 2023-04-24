import request from '@/utils/request'

// 查询班级成绩统计情况列表
export function listStatictics(query) {
  return request({
    url: '/scores/statictics/list',
    method: 'get',
    params: query
  })
}

// 查询班级平均分
export function getAverage(query) {
  return request({
    url: '/scores/statictics/average',
    method: 'get',
    params: query
  })
}

// 查询班级成绩统计情况详细
export function getStatictics(examStatisticsId) {
  return request({
    url: '/scores/statictics/' + examStatisticsId,
    method: 'get'
  })
}

// 新增班级成绩统计情况
export function addStatictics(data) {
  return request({
    url: '/scores/statictics',
    method: 'post',
    data: data
  })
}

// 修改班级成绩统计情况
export function updateStatictics(data) {
  return request({
    url: '/scores/statictics',
    method: 'put',
    data: data
  })
}

// 删除班级成绩统计情况
export function delStatictics(examStatisticsId) {
  return request({
    url: '/scores/statictics/' + examStatisticsId,
    method: 'delete'
  })
}
