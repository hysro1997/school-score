package com.hysro.scores.mapper;

import java.util.List;
import java.util.Map;

import com.hysro.scores.domain.ExamStudentScores;

/**
 * 学生分数情况Mapper接口
 *
 * @author hysro
 * @date 2023-04-04
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
     * 根据考试ID获取有学生分数的年级班级
     *
     * @param examId 考试ID
     * @return 结果
     */
    public List<Map<String,String>> selectDistinctGradeClassesByExamId(Long examId);

    /**
     * 根据考试号和考试ID查询考试记录
     *
     * @param examStudentScores 学生分数情况
     * @return 学生分数情况
     */
    public ExamStudentScores selectExamStudentScoresByExamNumberAndExamId(ExamStudentScores examStudentScores);

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
}
