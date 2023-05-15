package com.hysro.scores.service;

import com.hysro.scores.domain.ExamExcellentScoreLine;

import java.util.List;

/**
 * 优秀分数线Service接口
 *
 * @author hysro
 * @date 2023-03-23
 */
public interface IExamExcellentScoreLineService
{
    /**
     * 查询优秀分数线
     *
     * @param excellentId 优秀分数线主键
     * @return 优秀分数线
     */
    public ExamExcellentScoreLine selectExamExcellentScoreLineByExcellentId(Long excellentId);

    /**
     * 查询优秀分数线列表
     *
     * @param examExcellentScoreLine 优秀分数线
     * @return 优秀分数线集合
     */
    public List<ExamExcellentScoreLine> selectExamExcellentScoreLineList(ExamExcellentScoreLine examExcellentScoreLine);

    /**
     * 查询优秀分数线
     *
     * @param examExcellentScoreLine 优秀分数线
     * @return 优秀分数线集合
     */
    public ExamExcellentScoreLine selectExamExcellentScoreLine(ExamExcellentScoreLine examExcellentScoreLine);

    /**
     * 新增优秀分数线
     *
     * @param examExcellentScoreLine 优秀分数线
     * @return 结果
     */
    public Long insertExamExcellentScoreLine(ExamExcellentScoreLine examExcellentScoreLine);

    /**
     * 修改优秀分数线
     *
     * @param examExcellentScoreLine 优秀分数线
     * @return 结果
     */
    public int updateExamExcellentScoreLine(ExamExcellentScoreLine examExcellentScoreLine);

    /**
     * 批量删除优秀分数线
     *
     * @param excellentIds 需要删除的优秀分数线主键集合
     * @return 结果
     */
    public int deleteExamExcellentScoreLineByExcellentIds(Long[] excellentIds);

    /**
     * 删除优秀分数线信息
     *
     * @param excellentId 优秀分数线主键
     * @return 结果
     */
    public int deleteExamExcellentScoreLineByExcellentId(Long excellentId);
}
