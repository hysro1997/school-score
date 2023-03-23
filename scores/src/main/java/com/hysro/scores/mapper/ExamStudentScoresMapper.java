package com.hysro.scores.mapper;

import java.util.List;
import com.hysro.scores.domain.ExamStudentScores;
import com.hysro.scores.domain.Exams;

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
}
