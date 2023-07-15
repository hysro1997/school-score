package com.hysro.scores.service;

import java.util.List;
import com.hysro.scores.domain.ExamReportSheetImgs;

/**
 * 成绩报告单图片Service接口
 *
 * @author hysro
 * @date 2023-07-12
 */
public interface IExamReportSheetImgsService
{
    /**
     * 查询成绩报告单图片
     *
     * @param id 成绩报告单图片主键
     * @return 成绩报告单图片
     */
    public ExamReportSheetImgs selectExamReportSheetImgsById(Long id);

    /**
     * 查询成绩报告单图片列表
     *
     * @param examReportSheetImgs 成绩报告单图片
     * @return 成绩报告单图片集合
     */
    public List<ExamReportSheetImgs> selectExamReportSheetImgsList(ExamReportSheetImgs examReportSheetImgs);

    /**
     * 新增成绩报告单图片
     *
     * @param examReportSheetImgs 成绩报告单图片
     * @return 结果
     */
    public int insertExamReportSheetImgs(ExamReportSheetImgs examReportSheetImgs);

    /**
     * 修改成绩报告单图片
     *
     * @param examReportSheetImgs 成绩报告单图片
     * @return 结果
     */
    public int updateExamReportSheetImgs(ExamReportSheetImgs examReportSheetImgs);

    /**
     * 批量删除成绩报告单图片
     *
     * @param ids 需要删除的成绩报告单图片主键集合
     * @return 结果
     */
    public int deleteExamReportSheetImgsByIds(Long[] ids);

    /**
     * 删除成绩报告单图片信息
     *
     * @param id 成绩报告单图片主键
     * @return 结果
     */
    public int deleteExamReportSheetImgsById(Long id);
}
