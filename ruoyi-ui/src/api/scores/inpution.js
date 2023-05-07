import request from '@/utils/request'

export function getTodayDate() {
  return request({
    url: '/scores/inpution/getTodayDate',
    method: 'get'
  })
}

export function addExamTempScores(data) {
  return request({
    url: '/scores/inpution/addExamTempScores',
    method: 'post',
    data: data
  })
}
export function checkAlreadyScores(data) {
  return request({
    url: '/scores/inpution/checkAlready',
    method: 'post',
    data: data
  })
}
export function delTempScores(data) {
  return request({
    url: '/scores/inpution/clearTempScores',
    method: 'post',
    data: data
  })
}
export function cleanTempScores(data) {
  return request({
    url: '/scores/inpution/clean',
    method: 'delete',
    data: data
  })
}
