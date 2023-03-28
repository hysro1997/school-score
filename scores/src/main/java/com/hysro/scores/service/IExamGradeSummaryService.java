package com.hysro.scores.service;

import java.util.List;
import com.hysro.scores.domain.ExamGradeSummary;

/**
 * 年级总体情况Service接口
 * 
 * @author hysro
 * @date 2023-03-28
 */
public interface IExamGradeSummaryService 
{
    /**
     * 查询年级总体情况
     * 
     * @param examGradeSummaryId 年级总体情况主键
     * @return 年级总体情况
     */
    public ExamGradeSummary selectExamGradeSummaryByExamGradeSummaryId(Long examGradeSummaryId);

    /**
     * 查询年级总体情况列表
     * 
     * @param examGradeSummary 年级总体情况
     * @return 年级总体情况集合
     */
    public List<ExamGradeSummary> selectExamGradeSummaryList(ExamGradeSummary examGradeSummary);

    /**
     * 新增年级总体情况
     * 
     * @param examGradeSummary 年级总体情况
     * @return 结果
     */
    public int insertExamGradeSummary(ExamGradeSummary examGradeSummary);

    /**
     * 修改年级总体情况
     * 
     * @param examGradeSummary 年级总体情况
     * @return 结果
     */
    public int updateExamGradeSummary(ExamGradeSummary examGradeSummary);

    /**
     * 批量删除年级总体情况
     * 
     * @param examGradeSummaryIds 需要删除的年级总体情况主键集合
     * @return 结果
     */
    public int deleteExamGradeSummaryByExamGradeSummaryIds(Long[] examGradeSummaryIds);

    /**
     * 删除年级总体情况信息
     * 
     * @param examGradeSummaryId 年级总体情况主键
     * @return 结果
     */
    public int deleteExamGradeSummaryByExamGradeSummaryId(Long examGradeSummaryId);
}
