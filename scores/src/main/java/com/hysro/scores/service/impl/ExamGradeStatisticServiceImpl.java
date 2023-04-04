package com.hysro.scores.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hysro.scores.mapper.ExamGradeStatisticMapper;
import com.hysro.scores.domain.ExamGradeStatistic;
import com.hysro.scores.service.IExamGradeStatisticService;

/**
 * 年级数据统计情况Service业务层处理
 * 
 * @author hysro
 * @date 2023-04-04
 */
@Service
public class ExamGradeStatisticServiceImpl implements IExamGradeStatisticService 
{
    @Autowired
    private ExamGradeStatisticMapper examGradeStatisticMapper;

    /**
     * 查询年级数据统计情况
     * 
     * @param examGradeStatisticsId 年级数据统计情况主键
     * @return 年级数据统计情况
     */
    @Override
    public ExamGradeStatistic selectExamGradeStatisticByExamGradeStatisticsId(Long examGradeStatisticsId)
    {
        return examGradeStatisticMapper.selectExamGradeStatisticByExamGradeStatisticsId(examGradeStatisticsId);
    }

    /**
     * 查询年级数据统计情况列表
     * 
     * @param examGradeStatistic 年级数据统计情况
     * @return 年级数据统计情况
     */
    @Override
    public List<ExamGradeStatistic> selectExamGradeStatisticList(ExamGradeStatistic examGradeStatistic)
    {
        return examGradeStatisticMapper.selectExamGradeStatisticList(examGradeStatistic);
    }

    /**
     * 新增年级数据统计情况
     * 
     * @param examGradeStatistic 年级数据统计情况
     * @return 结果
     */
    @Override
    public int insertExamGradeStatistic(ExamGradeStatistic examGradeStatistic)
    {
        return examGradeStatisticMapper.insertExamGradeStatistic(examGradeStatistic);
    }

    /**
     * 修改年级数据统计情况
     * 
     * @param examGradeStatistic 年级数据统计情况
     * @return 结果
     */
    @Override
    public int updateExamGradeStatistic(ExamGradeStatistic examGradeStatistic)
    {
        return examGradeStatisticMapper.updateExamGradeStatistic(examGradeStatistic);
    }

    /**
     * 批量删除年级数据统计情况
     * 
     * @param examGradeStatisticsIds 需要删除的年级数据统计情况主键
     * @return 结果
     */
    @Override
    public int deleteExamGradeStatisticByExamGradeStatisticsIds(Long[] examGradeStatisticsIds)
    {
        return examGradeStatisticMapper.deleteExamGradeStatisticByExamGradeStatisticsIds(examGradeStatisticsIds);
    }

    /**
     * 删除年级数据统计情况信息
     * 
     * @param examGradeStatisticsId 年级数据统计情况主键
     * @return 结果
     */
    @Override
    public int deleteExamGradeStatisticByExamGradeStatisticsId(Long examGradeStatisticsId)
    {
        return examGradeStatisticMapper.deleteExamGradeStatisticByExamGradeStatisticsId(examGradeStatisticsId);
    }
}
