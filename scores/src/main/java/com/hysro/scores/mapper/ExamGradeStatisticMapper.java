package com.hysro.scores.mapper;

import java.util.List;

import com.hysro.scores.domain.ExamClassStatictics;
import com.hysro.scores.domain.ExamGradeStatistic;
import com.hysro.scores.domain.Exams;

/**
 * 年级数据统计情况Mapper接口
 *
 * @author hysro
 * @date 2023-03-23
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

    /**
     * 删除年级数据统计
     * @param examId 考试id
     * @return 结果
     */
    public int deleteExamGradeStaticticsByExamId(Long examId);

    /**
     * 批量删除各种考试
     *
     * @param examGradeStatisticsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExamsByExamIds(Long[] examGradeStatisticsIds);

    /**
     * 批量新增各种考试
     *
     * @param examsList 各种考试列表
     * @return 结果
     */
    public int batchExams(List<Exams> examsList);


    /**
     * 通过年级数据统计情况主键删除各种考试信息
     *
     * @param examGradeStatisticsId 年级数据统计情况ID
     * @return 结果
     */
    public int deleteExamsByExamId(Long examGradeStatisticsId);


    /**
     * 查询班级成绩的排名
     *
     * @param examGradeStatistic 班级成绩统计情况
     * @return 班级排名
     */
    public List<ExamGradeStatistic> selectExamGradeRateList(ExamGradeStatistic examGradeStatistic);
}
