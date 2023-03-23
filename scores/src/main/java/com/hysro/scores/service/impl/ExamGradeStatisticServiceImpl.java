package com.hysro.scores.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.hysro.scores.domain.Exams;
import com.hysro.scores.mapper.ExamGradeStatisticMapper;
import com.hysro.scores.domain.ExamGradeStatistic;
import com.hysro.scores.service.IExamGradeStatisticService;

/**
 * 年级数据统计情况Service业务层处理
 * 
 * @author hysro
 * @date 2023-03-23
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
    @Transactional
    @Override
    public int insertExamGradeStatistic(ExamGradeStatistic examGradeStatistic)
    {
        int rows = examGradeStatisticMapper.insertExamGradeStatistic(examGradeStatistic);
        insertExams(examGradeStatistic);
        return rows;
    }

    /**
     * 修改年级数据统计情况
     * 
     * @param examGradeStatistic 年级数据统计情况
     * @return 结果
     */
    @Transactional
    @Override
    public int updateExamGradeStatistic(ExamGradeStatistic examGradeStatistic)
    {
        examGradeStatisticMapper.deleteExamsByExamId(examGradeStatistic.getExamGradeStatisticsId());
        insertExams(examGradeStatistic);
        return examGradeStatisticMapper.updateExamGradeStatistic(examGradeStatistic);
    }

    /**
     * 批量删除年级数据统计情况
     * 
     * @param examGradeStatisticsIds 需要删除的年级数据统计情况主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteExamGradeStatisticByExamGradeStatisticsIds(Long[] examGradeStatisticsIds)
    {
        examGradeStatisticMapper.deleteExamsByExamIds(examGradeStatisticsIds);
        return examGradeStatisticMapper.deleteExamGradeStatisticByExamGradeStatisticsIds(examGradeStatisticsIds);
    }

    /**
     * 删除年级数据统计情况信息
     * 
     * @param examGradeStatisticsId 年级数据统计情况主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteExamGradeStatisticByExamGradeStatisticsId(Long examGradeStatisticsId)
    {
        examGradeStatisticMapper.deleteExamsByExamId(examGradeStatisticsId);
        return examGradeStatisticMapper.deleteExamGradeStatisticByExamGradeStatisticsId(examGradeStatisticsId);
    }

    /**
     * 新增各种考试信息
     * 
     * @param examGradeStatistic 年级数据统计情况对象
     */
    public void insertExams(ExamGradeStatistic examGradeStatistic)
    {
        List<Exams> examsList = examGradeStatistic.getExamsList();
        Long examGradeStatisticsId = examGradeStatistic.getExamGradeStatisticsId();
        if (StringUtils.isNotNull(examsList))
        {
            List<Exams> list = new ArrayList<Exams>();
            for (Exams exams : examsList)
            {
                exams.setExamId(examGradeStatisticsId);
                list.add(exams);
            }
            if (list.size() > 0)
            {
                examGradeStatisticMapper.batchExams(list);
            }
        }
    }
}
