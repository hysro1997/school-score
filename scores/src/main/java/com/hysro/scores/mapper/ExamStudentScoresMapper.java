package com.hysro.scores.mapper;

import java.util.List;
import java.util.Map;

import com.hysro.scores.domain.*;

/**
 * 学生分数情况Mapper接口
 *
 * @author hysro
 * @date 2023-03-23
 */
public interface ExamStudentScoresMapper
{
    /**
     * 查询学生分数情况
     *
     * @param scoreId 学生分数情况主键
     * @return 学生分数情况
     */
    public ExamStudentScores selectExamStudentScoresByScoreId(Long scoreId);

    /**
     * 查询学生分数情况列表
     *
     * @param examStudentScores 学生分数情况
     * @return 学生分数情况集合
     */
    public List<ExamStudentScores> selectExamStudentScoresList(ExamStudentScores examStudentScores);

    /**
     * 新增学生分数情况
     *
     * @param examStudentScores 学生分数情况
     * @return 结果
     */
    public int insertExamStudentScores(ExamStudentScores examStudentScores);

    /**
     * 修改学生分数情况
     *
     * @param examStudentScores 学生分数情况
     * @return 结果
     */
    public int updateExamStudentScores(ExamStudentScores examStudentScores);

    /**
     * 删除学生分数情况
     *
     * @param scoreId 学生分数情况主键
     * @return 结果
     */
    public int deleteExamStudentScoresByScoreId(Long scoreId);

    /**
     * 批量删除学生分数情况
     *
     * @param scoreIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExamStudentScoresByScoreIds(Long[] scoreIds);

    /**
     * 批量删除各种考试
     *
     * @param scoreIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExamsByExamIds(Long[] scoreIds);

    /**
     * 批量新增各种考试
     *
     * @param examsList 各种考试列表
     * @return 结果
     */
    public int batchExams(List<Exams> examsList);


    /**
     * 通过学生分数情况主键删除各种考试信息
     *
     * @param scoreId 学生分数情况ID
     * @return 结果
     */
    public int deleteExamsByExamId(Long scoreId);

    /**
     * 通过考试ID获取不重复的年级、班级数据条数，有多少个年级、班级有考试数据
     *
     * @param examId 考试id
     * @return 结果
     */
    public List<Map<String,String>> selectDistinctClassesMapByExamId(Long examId);

    /**
     * 通过考试ID获取不重复的年级、学科数据条数，有多少个年级、学科有考试数据
     *
     * @param examId 考试id
     * @return 结果
     */
    public List<Map<String,String>> selectDistinctGradeSubjectMapByExamId(Long examId);

    /**
     * 通过考试ID获取不重复的年级数据条数，有多少个年级有考试数据
     *
     * @param examId 考试id
     * @return 结果
     */
    public List<Map<String,String>> selectDistinctGradeMapByExamId(Long examId);

    /**
     * 通过年级、班级、学科、考试id，查询该班此次考试某一学科的考试人数和总分
     *
     * @param examStudentScores 考试
     * @return 结果 年级、班级、学科、考试人数、总分
     */
    public ExamClassStatictics selectExamNumbersAndTotalScores(ExamStudentScores examStudentScores);

    /**
     *通过分数线查询对应人数
     *
     * @return 结果
     */
    public Long selectScoreNumbersByScoreLine(ExamScoreLineHelper helper);

    /**
     * 通过优秀分数下帮助类来查询 同时满足 所有学科分数同时满足条件的数量
     * @param helper 优秀分数下帮助类
     * @return 结果
     */
    public Long countQualifiedNumbersByStatisticScoreLineHelper(ExamStatisticScoreLineHelper helper);
}
