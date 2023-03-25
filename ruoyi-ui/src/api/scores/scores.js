import request from '@/utils/request'

// 查询学生分数情况列表
export function listScores(query) {
  return request({
    url: '/scores/scores/list',
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
// 导入学生分数表
export function importStudentScoreTable(data) {
  return request({
    url: '/scores/scores/importTable',
    method: 'post',
    params: data
  })
}
// 删除学生分数情况
export function delScores(scoreId) {
  return request({
    url: '/scores/scores/' + scoreId,
    method: 'delete'
  })
}
