package com.hysro.scores.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hysro.scores.mapper.ExamExcellentScoreLineMapper;
import com.hysro.scores.domain.ExamExcellentScoreLine;
import com.hysro.scores.service.IExamExcellentScoreLineService;

/**
 * 优秀分数线Service业务层处理
 *
 * @author hysro
 * @date 2023-03-23
 */
@Service
public class ExamExcellentScoreLineServiceImpl implements IExamExcellentScoreLineService
{
    @Autowired
    private ExamExcellentScoreLineMapper examExcellentScoreLineMapper;

    /**
     * 查询优秀分数线
     *
     * @param excellentId 优秀分数线主键
     * @return 优秀分数线
     */
    @Override
    public ExamExcellentScoreLine selectExamExcellentScoreLineByExcellentId(Long excellentId)
    {
        return examExcellentScoreLineMapper.selectExamExcellentScoreLineByExcellentId(excellentId);
    }

    /**
     * 查询优秀分数线列表
     *
     * @param examExcellentScoreLine 优秀分数线
     * @return 优秀分数线
     */
    @Override
    public List<ExamExcellentScoreLine> selectExamExcellentScoreLineList(ExamExcellentScoreLine examExcellentScoreLine)
    {
        return examExcellentScoreLineMapper.selectExamExcellentScoreLineList(examExcellentScoreLine);
    }

    /**
     * 新增优秀分数线
     *
     * @param examExcellentScoreLine 优秀分数线
     * @return 结果
     */
    @Override
    public int insertExamExcellentScoreLine(ExamExcellentScoreLine examExcellentScoreLine)
    {
        if (null == examExcellentScoreLine.getGrade() || "".equals(examExcellentScoreLine.getGrade())){
            return 0;
        }
        if (null == examExcellentScoreLine.getSubject() || "".equals(examExcellentScoreLine.getSubject())){
            return 0;
        }
        if (null == examExcellentScoreLine.getExcellentScore()){
            return 0;
        }
        return examExcellentScoreLineMapper.insertExamExcellentScoreLine(examExcellentScoreLine);
    }

    /**
     * 修改优秀分数线
     *
     * @param examExcellentScoreLine 优秀分数线
     * @return 结果
     */
    @Override
    public int updateExamExcellentScoreLine(ExamExcellentScoreLine examExcellentScoreLine)
    {
        if (null == examExcellentScoreLine.getGrade() || "".equals(examExcellentScoreLine.getGrade())){
            return 0;
        }
        if (null == examExcellentScoreLine.getSubject() || "".equals(examExcellentScoreLine.getSubject())){
            return 0;
        }
        if (null == examExcellentScoreLine.getExcellentScore()){
            return 0;
        }
        return examExcellentScoreLineMapper.updateExamExcellentScoreLine(examExcellentScoreLine);
    }

    /**
     * 批量删除优秀分数线
     *
     * @param excellentIds 需要删除的优秀分数线主键
     * @return 结果
     */
    @Override
    public int deleteExamExcellentScoreLineByExcellentIds(Long[] excellentIds)
    {
        return examExcellentScoreLineMapper.deleteExamExcellentScoreLineByExcellentIds(excellentIds);
    }

    /**
     * 删除优秀分数线信息
     *
     * @param excellentId 优秀分数线主键
     * @return 结果
     */
    @Override
    public int deleteExamExcellentScoreLineByExcellentId(Long excellentId)
    {
        return examExcellentScoreLineMapper.deleteExamExcellentScoreLineByExcellentId(excellentId);
    }
}
