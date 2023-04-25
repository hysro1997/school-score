import request from '@/utils/request'

// 查询综合分算法
export function listMuitipleCalculation() {
  return request({
    url: '/scores/muitiple/list',
    method: 'get'
  })
}

// 修改综合分算法
export function updateMuitipleCalculation(data) {
  return request({
    url: '/scores/muitiple',
    method: 'put',
    data: data
  })
}
