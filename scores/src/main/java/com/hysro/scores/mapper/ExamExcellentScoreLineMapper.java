package com.hysro.scores.mapper;

import java.util.List;
import com.hysro.scores.domain.ExamExcellentScoreLine;

/**
 * 优秀分数线Mapper接口
 * 
 * @author hysro
 * @date 2023-03-23
 */
public interface ExamExcellentScoreLineMapper 
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
     * 新增优秀分数线
     * 
     * @param examExcellentScoreLine 优秀分数线
     * @return 结果
     */
    public int insertExamExcellentScoreLine(ExamExcellentScoreLine examExcellentScoreLine);

    /**
     * 修改优秀分数线
     * 
     * @param examExcellentScoreLine 优秀分数线
     * @return 结果
     */
    public int updateExamExcellentScoreLine(ExamExcellentScoreLine examExcellentScoreLine);

    /**
     * 删除优秀分数线
     * 
     * @param excellentId 优秀分数线主键
     * @return 结果
     */
    public int deleteExamExcellentScoreLineByExcellentId(Long excellentId);

    /**
     * 批量删除优秀分数线
     * 
     * @param excellentIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExamExcellentScoreLineByExcellentIds(Long[] excellentIds);
}
