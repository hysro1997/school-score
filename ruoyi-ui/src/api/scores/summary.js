import request from '@/utils/request'

// 查询年级总体情况列表
export function listSummary(query) {
  return request({
    url: '/scores/summary/list',
    method: 'get',
    params: query
  })
}

// 查询年级总体情况详细
export function getSummary(examGradeSummaryId) {
  return request({
    url: '/scores/summary/' + examGradeSummaryId,
    method: 'get'
  })
}

// 新增年级总体情况
export function addSummary(data) {
  return request({
    url: '/scores/summary',
    method: 'post',
    data: data
  })
}

// 修改年级总体情况
export function updateSummary(data) {
  return request({
    url: '/scores/summary',
    method: 'put',
    data: data
  })
}

// 删除年级总体情况
export function delSummary(examGradeSummaryId) {
  return request({
    url: '/scores/summary/' + examGradeSummaryId,
    method: 'delete'
  })
}
