package com.hysro.scores.service;

import java.util.List;
import com.hysro.scores.domain.ExamStudentScores;

/**
 * 学生分数情况Service接口
 *
 * @author hysro
 * @date 2023-04-04
 */
public interface IExamStudentScoresService
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
     * 批量删除学生分数情况
     *
     * @param scoreIds 需要删除的学生分数情况主键集合
     * @return 结果
     */
    public int deleteExamStudentScoresByScoreIds(Long[] scoreIds);

    /**
     * 删除学生分数情况信息
     *
     * @param scoreId 学生分数情况主键
     * @return 结果
     */
    public int deleteExamStudentScoresByScoreId(Long scoreId);


    /**
     * 导入学生分数数据
     *
     * @param scoresList 学生分数数据列表
     * @return 结果
     */
    public String importStudentScore(List<ExamStudentScores> scoresList, boolean updateSupport, String operName);

    /**
     * 获取当前筛选条件下的前后50名
     *
     * @param examStudentScores 年级、班级、考试ID，学科，排序方式
     * @return 结果
     */
    public Long[] selectExamStudentScoresFifty(ExamStudentScores examStudentScores);
}
