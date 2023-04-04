package com.hysro.scores.mapper;

import java.util.List;
import com.hysro.scores.domain.ExamGradeStatistic;

/**
 * 年级数据统计情况Mapper接口
 * 
 * @author hysro
 * @date 2023-04-04
 */
public interface ExamGradeStatisticMapper 
{
    /**
     * 查询年级数据统计情况
     * 
     * @param examGradeStatisticsId 年级数据统计情况主键
     * @return 年级数据统计情况
     */
    public ExamGradeStatistic selectExamGradeStatisticByExamGradeStatisticsId(Long examGradeStatisticsId);

    /**
     * 查询年级数据统计情况列表
     * 
     * @param examGradeStatistic 年级数据统计情况
     * @return 年级数据统计情况集合
     */
    public List<ExamGradeStatistic> selectExamGradeStatisticList(ExamGradeStatistic examGradeStatistic);

    /**
     * 新增年级数据统计情况
     * 
     * @param examGradeStatistic 年级数据统计情况
     * @return 结果
     */
    public int insertExamGradeStatistic(ExamGradeStatistic examGradeStatistic);

    /**
     * 修改年级数据统计情况
     * 
     * @param examGradeStatistic 年级数据统计情况
     * @return 结果
     */
    public int updateExamGradeStatistic(ExamGradeStatistic examGradeStatistic);

    /**
     * 删除年级数据统计情况
     * 
     * @param examGradeStatisticsId 年级数据统计情况主键
     * @return 结果
     */
    public int deleteExamGradeStatisticByExamGradeStatisticsId(Long examGradeStatisticsId);

    /**
     * 批量删除年级数据统计情况
     * 
     * @param examGradeStatisticsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExamGradeStatisticByExamGradeStatisticsIds(Long[] examGradeStatisticsIds);
}
