import request from '@/utils/request'

// 查询班级成绩统计情况列表
export function listStaticticsclass(query) {
  return request({
    url: '/scores/staticticsclass/list',
    method: 'get',
    params: query
  })
}

// 查询班级成绩统计情况详细
export function getStaticticsclass(examStatisticsId) {
  return request({
    url: '/scores/staticticsclass/' + examStatisticsId,
    method: 'get'
  })
}

// 新增班级成绩统计情况
export function addStaticticsclass(data) {
  return request({
    url: '/scores/staticticsclass',
    method: 'post',
    data: data
  })
}

// 修改班级成绩统计情况
export function updateStaticticsclass(data) {
  return request({
    url: '/scores/staticticsclass',
    method: 'put',
    data: data
  })
}

// 删除班级成绩统计情况
export function delStaticticsclass(examStatisticsId) {
  return request({
    url: '/scores/staticticsclass/' + examStatisticsId,
    method: 'delete'
  })
}
