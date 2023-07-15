import request from '@/utils/request'

// 查询学生分数情况列表
export function previewPdf(data) {
  return request({
    url: '/velocity/getPdf',
    method: 'post',
    responseType: 'blob',
    data: data
  })
}

// 查询学生分数情况列表
export function editPdf(data) {
  return request({
    url: '/velocity/editPdf',
    method: 'post',
    data: data
  })
}

// 查询学生分数情况列表
export function editImgs(data) {
  return request({
    url: '/velocity/editImgs',
    method: 'post',
    data: data
  })
}

export function viewPdfInformation() {
  return request({
    url: '/velocity/viewPdfInformation',
    method: 'get'
  })
}

export function viewPdfSignatureImgs() {
  return request({
    url: '/velocity/viewPdfSignatureImgs',
    method: 'get'
  })
}

export function deletePdfSignatureImgs(id) {
  return request({
    url: '/velocity/deletePdfSignatureImgs/' + id,
    method: 'delete'
  })
}
