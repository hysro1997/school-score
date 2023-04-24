package com.hysro.scores.mapper;

import java.util.List;
import java.util.Map;

import com.hysro.scores.domain.ExamClassStatictics;

/**
 * 班级成绩统计情况Mapper接口
 *
 * @author hysro
 * @date 2023-04-04
 */
public interface ExamClassStaticticsMapper
{
    /**
     * 查询班级成绩统计情况
     *
     * @param examStatisticsId 班级成绩统计情况主键
     * @return 班级成绩统计情况
     */
    public ExamClassStatictics selectExamClassStaticticsByExamStatisticsId(Long examStatisticsId);

    /**
     * 查询班级成绩统计情况列表
     *
     * @param examClassStatictics 班级成绩统计情况
     * @return 班级成绩统计情况集合
     */
    public List<ExamClassStatictics> selectExamClassStaticticsList(ExamClassStatictics examClassStatictics);

    /**
     * 查询班级成绩统计情况
     *
     * @param examClassStatictics 班级成绩统计情况
     * @return 班级成绩统计情况
     */
    public ExamClassStatictics selectExamClassStatictics(ExamClassStatictics examClassStatictics);

    /**
     * 新增班级成绩统计情况
     *
     * @param examClassStatictics 班级成绩统计情况
     * @return 结果
     */
    public int insertExamClassStatictics(ExamClassStatictics examClassStatictics);

    /**
     * 修改班级成绩统计情况
     *
     * @param examClassStatictics 班级成绩统计情况
     * @return 结果
     */
    public int updateExamClassStatictics(ExamClassStatictics examClassStatictics);

    /**
     * 删除班级成绩统计情况
     *
     * @param examStatisticsId 班级成绩统计情况主键
     * @return 结果
     */
    public int deleteExamClassStaticticsByExamStatisticsId(Long examStatisticsId);

    /**
     * 删除班级成绩统计情况
     *
     * @param examId 考试主键
     * @return 结果
     */
    public int deleteExamClassStaticticsByExamId(Long examId);

    /**
     * 批量删除班级成绩统计情况
     *
     * @param examStatisticsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExamClassStaticticsByExamStatisticsIds(Long[] examStatisticsIds);

    /**
     * 根据考试ID，年级，班级统计班级学科成绩
     *
     * @param examClassStatictics 考试ID，年级，班级，优秀分数线，对应学科(subjectName chinese_score,maths_score,english_score)
     * @return 结果
     */
    public ExamClassStatictics calculateClassStatistics(ExamClassStatictics examClassStatictics);

    /**
     * 根据考试ID，年级、学科 获取综合分排名
     *
     * @param examClassStatictics 考试ID，年级、学科
     * @return 结果
     */
    public List<ExamClassStatictics> selectMuitipleRank(ExamClassStatictics examClassStatictics);

    /**
     * 根据考试ID，年级、学科 获取平均分排名
     *
     * @param examClassStatictics 考试ID，年级、学科
     * @return 结果
     */
    public List<ExamClassStatictics> selectAverageRank(ExamClassStatictics examClassStatictics);

    /**
     * 根据考试ID获取独一的年级、学科
     *
     * @param examId 考试ID
     * @return 结果
     */
    public List<Map<String,String>> selectDistinceGradeSubject(Long examId);

    /**
     * 根据年级和examId查询年级的班级排名
     *
     * @param statictics 年级和examId
     * @return 结果列表
     */
    public String[] selectClassesRateByExamIdAndGrade(ExamClassStatictics statictics);

    /**
     * 根据年级和examId查询年级的班级学科综合分排名
     *
     * @param statictics 年级和examId
     * @return 结果列表
     */
    public int[] selectClassesSubjectRateMuitipleRankByExamIdAndGrade(ExamClassStatictics statictics);

    /**
     * 根据年级和examId查询年级的班级学科平均分排名
     *
     * @param statictics 年级和examId
     * @return 结果列表
     */
    public int[] selectClassesSubjectRateAvgRankByExamIdAndGrade(ExamClassStatictics statictics);

    /**
     * 根据年级和examId查询年级的班级学科
     *
     * @param statictics 年级和examId
     * @return 结果列表
     */
    public String[] selectSubjectsByExamIdAndGrade(ExamClassStatictics statictics);

    /**
     * 根据年级和examId查询年级的平均分数组
     *
     * @param statictics 年级和examId
     * @return 结果列表
     */
    public String[] selectAverageScoreByExamIdAndGrade(ExamClassStatictics statictics);
}
