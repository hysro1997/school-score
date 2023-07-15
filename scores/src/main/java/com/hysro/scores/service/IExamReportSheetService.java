package com.hysro.scores.service;

import java.util.List;
import com.hysro.scores.domain.ExamReportSheet;

/**
 * 成绩报告单Service接口
 *
 * @author hysro
 * @date 2023-07-11
 */
public interface IExamReportSheetService
{
    /**
     * 查询成绩报告单
     *
     * @param id 成绩报告单主键
     * @return 成绩报告单
     */
    public ExamReportSheet selectExamReportSheetById(Long id);

    /**
     * 查询成绩报告单列表
     *
     * @param examReportSheet 成绩报告单
     * @return 成绩报告单集合
     */
    public List<ExamReportSheet> selectExamReportSheetList(ExamReportSheet examReportSheet);

    /**
     * 新增成绩报告单
     *
     * @param examReportSheet 成绩报告单
     * @return 结果
     */
    public int insertExamReportSheet(ExamReportSheet examReportSheet);

    /**
     * 修改成绩报告单
     *
     * @param examReportSheet 成绩报告单
     * @return 结果
     */
    public int updateExamReportSheet(ExamReportSheet examReportSheet);

    /**
     * 批量删除成绩报告单
     *
     * @param ids 需要删除的成绩报告单主键集合
     * @return 结果
     */
    public int deleteExamReportSheetByIds(Long[] ids);

    /**
     * 删除成绩报告单信息
     *
     * @param id 成绩报告单主键
     * @return 结果
     */
    public int deleteExamReportSheetById(Long id);
}
