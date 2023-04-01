import request from '@/utils/request'

export function getStaticticsclass(query) {
  return request({
    url: '/echarts/getStaticticsclass',
    method: 'get',
    params: query
  })
}
