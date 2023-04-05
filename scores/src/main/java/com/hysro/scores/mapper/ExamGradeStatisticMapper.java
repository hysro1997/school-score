package com.hysro.scores.mapper;

import java.util.List;
import java.util.Map;

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
     * 查询年级数据统计情况
     *
     * @param examGradeStatistic 年级数据统计情况
     * @return 年级数据统计情况
     */
    public ExamGradeStatistic selectExamGradeStatistic(ExamGradeStatistic examGradeStatistic);

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
     * 根据考试ID，年级，班级统计一二年级成绩
     *
     * @param examGradeStatistic 考试ID，年级，班级，优秀分数线
     * @return 结果
     */
    public ExamGradeStatistic calculateExamGradeStatisticTwoGrade(ExamGradeStatistic examGradeStatistic);

    /**
     * 根据考试ID，年级，班级统计三四五六年级成绩
     *
     * @param examGradeStatistic 考试ID，年级，班级，优秀分数线
     * @return 结果
     */
    public ExamGradeStatistic calculateExamGradeStatisticFourGrade(ExamGradeStatistic examGradeStatistic);

    /**
     * 查询年级数据排名
     *
     * @param examGradeStatistic 考试ID，年级
     * @return 结果
     */
    public List<ExamGradeStatistic> selectGradeMuitipleRank(ExamGradeStatistic examGradeStatistic);

    /**
     * 根据考试ID选出独一的年级
     *
     * @param examId 考试ID
     * @return 结果
     */
    public List<Map<String,String>> selectDistinctGrade(Long examId);
}
