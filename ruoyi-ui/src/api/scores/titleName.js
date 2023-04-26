import request from '@/utils/request'

// 查询综合分算法
export function listTitle() {
  return request({
    url: '/scores/title/list',
    method: 'get'
  })
}

// 修改综合分算法
export function updateTitle(data) {
  return request({
    url: '/scores/title',
    method: 'put',
    data: data
  })
}
