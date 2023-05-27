import request from '@/utils/request'

// 查询学生分数情况列表
export function listScores(query) {
  return request({
    url: '/scores/scores/list',
    method: 'get',
    params: query
  })
}

// 查询学生分数情况列表
export function listScores2(query) {
  return request({
    url: '/scores/scores/list2',
    method: 'get',
    params: query
  })
}

// 查询学生分数情况列表
export function getScoresInfo(query) {
  return request({
    url: '/scores/scores/getStudentsInfo',
    method: 'get',
    params: query
  })
}

// 查询学生前后50名情况列表
export function getScoresFifty(query) {
  return request({
    url: '/scores/scores/fifty',
    method: 'get',
    params: query
  })
}

// 查询学生总分前后50名情况列表
export function getTotalPointsFifty(query) {
  return request({
    url: '/scores/scores/totalPointsFifty',
    method: 'get',
    params: query
  })
}

// 查询学生不及格情况列表
export function getScoresUnqualified(query) {
  return request({
    url: '/scores/scores/scoresBoundry',
    method: 'get',
    params: query
  })
}

// 查询学生分数情况详细
export function getScores(scoreId) {
  return request({
    url: '/scores/scores/' + scoreId,
    method: 'get'
  })
}

// 新增学生分数情况
export function addScores(data) {
  return request({
    url: '/scores/scores',
    method: 'post',
    data: data
  })
}

// 修改学生分数情况
export function updateScores(data) {
  return request({
    url: '/scores/scores',
    method: 'put',
    data: data
  })
}

// 删除学生分数情况
export function delScores(scoreId) {
  return request({
    url: '/scores/scores/' + scoreId,
    method: 'delete'
  })
}
