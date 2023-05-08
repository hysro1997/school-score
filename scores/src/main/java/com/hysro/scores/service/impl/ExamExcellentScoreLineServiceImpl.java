package com.hysro.scores.service.impl;

import com.hysro.scores.domain.ExamExcellentScoreLine;
import com.hysro.scores.mapper.ExamExcellentScoreLineMapper;
import com.hysro.scores.service.IExamExcellentScoreLineService;
import com.ruoyi.common.core.redis.RedisCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
    @Autowired
    private RedisCache redisCache;

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
        if (null == examExcellentScoreLineMapper.selectExamExcellentScoreLine(examExcellentScoreLine)){
            return examExcellentScoreLineMapper.insertExamExcellentScoreLine(examExcellentScoreLine);
        }
        return -1;

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
        redisCache.deleteObject("AllExcellentScoreLine");
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
