package com.hysro.scores.mapper;

import java.util.List;
import com.hysro.scores.domain.ExamGradeSummary;

/**
 * 年级总体情况Mapper接口
 *
 * @author hysro
 * @date 2023-04-04
 */
public interface ExamGradeSummaryMapper
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
     * 查询年级总体情况
     *
     * @param examGradeSummary 年级总体情况
     * @return 年级总体情况
     */
    public ExamGradeSummary selectExamGradeSummary(ExamGradeSummary examGradeSummary);

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
     * 删除年级总体情况
     *
     * @param examGradeSummaryId 年级总体情况主键
     * @return 结果
     */
    public int deleteExamGradeSummaryByExamGradeSummaryId(Long examGradeSummaryId);

    /**
     * 删除年级总体情况
     *
     * @param examId 考试主键
     * @return 结果
     */
    public int deleteExamGradeSummaryByExamId(Long examId);

    /**
     * 删除年级总体情况
     *
     * @param examIds 考试主键
     * @return 结果
     */
    public int deleteExamGradeSummaryByExamIds(Long[] examIds);

    /**
     * 批量删除年级总体情况
     *
     * @param examGradeSummaryIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExamGradeSummaryByExamGradeSummaryIds(Long[] examGradeSummaryIds);

    /**
     * 通过考试ID，年级，学科，优秀分数线计算年级成绩概要
     *
     * @param gradeSummary 考试ID，年级，学科，优秀分数线
     * @return 结果
     */
    public ExamGradeSummary calculateGradeSummaryByGradeSubjectExamId(ExamGradeSummary gradeSummary);
}
