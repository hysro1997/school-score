package com.hysro.scores.service;

import java.util.List;
import java.util.Map;

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
     * 查询学生分数情况列表
     *
     * @param examStudentScores 学生分数情况
     * @return 学生分数情况集合
     */
    public List<ExamStudentScores> selectExamStudentScoresListForAnalysis(ExamStudentScores examStudentScores, String direction, String ration);

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
    public List<Map<String,String>> selectExamStudentScoresFifty(ExamStudentScores examStudentScores);

    /**
     * 获取总分的前后50名
     *
     * @param examStudentScores 年级、考试ID，排序方式
     * @return 结果
     */
    public List<Map<String,String>> selectExamStudentScoresTotalPointsFifty(ExamStudentScores examStudentScores);

    /**
     * 获取当前筛选条件下的人数
     *
     * @param examStudentScores 年级、班级、考试ID，学科，分数
     * @return 结果
     */
    public List<Map<String,String>> selectExamStudentScoresByScoresBoundry(ExamStudentScores examStudentScores);

    /**
     * 根据考试号和考试ID查询考试记录
     *
     * @param examStudentScores 学生分数情况
     * @return 学生分数情况
     */
    public ExamStudentScores selectExamStudentScoresByExamNumberAndExamId(ExamStudentScores examStudentScores);

    /**
     * 从临时分数表中整合分数
     * @param examId 考试ID
     * @return 结果
     */
    public int mixScores(Long examId);


}
