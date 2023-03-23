import request from '@/utils/request'

// 查询优秀分数线列表
export function listLine(query) {
  return request({
    url: '/scores/line/list',
    method: 'get',
    params: query
  })
}

// 查询优秀分数线详细
export function getLine(excellentId) {
  return request({
    url: '/scores/line/' + excellentId,
    method: 'get'
  })
}

// 新增优秀分数线
export function addLine(data) {
  return request({
    url: '/scores/line',
    method: 'post',
    data: data
  })
}

// 修改优秀分数线
export function updateLine(data) {
  return request({
    url: '/scores/line',
    method: 'put',
    data: data
  })
}

// 删除优秀分数线
export function delLine(excellentId) {
  return request({
    url: '/scores/line/' + excellentId,
    method: 'delete'
  })
}
