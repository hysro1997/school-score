package com.hysro.scores.mapper;

import java.util.List;
import java.util.Map;

import com.hysro.scores.domain.ExamStudentScores;
import org.apache.ibatis.annotations.Param;

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
     * 查询学生分数情况列表
     *
     * @param examStudentScores 学生分数情况
     * @return 学生分数情况集合
     */
    public List<ExamStudentScores> selectExamStudentScoresListForAnalysis(@Param("examStudentScores")ExamStudentScores examStudentScores, @Param("direction")String direction, @Param("ration")String ration);

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
     * 根据考试号和考试ID查询考试记录
     *
     * @param examId 学生分数情况
     * @return 学生分数情况
     */
    public List<ExamStudentScores> selectExamStudentScoresByExamId(Long examId);

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
     * 获取当前筛选条件下的前后50名
     *
     * @param examStudentScores 年级、班级、考试ID，学科，排序方式
     * @return 结果
     */
    public List<Map<String,String>> selectExamStudentScoresFifty(ExamStudentScores examStudentScores);

    /**
     * 获取当前筛选条件下的学生分数情况
     *
     * @param examStudentScores 年级、班级、考试ID，学科，分数
     * @return 结果
     */
    public List<Map<String,String>> selectExamStudentScoresByScoresBoundry(ExamStudentScores examStudentScores);

    /**
     * 删除总分为null的记录，即全部缺考的学生
     *
     * @param examId 考试ID
     * @return 结果
     */
    public int deleteTotalScoreIsNull(Long examId);

    /**
     * 删除考试ID下的全部分数
     *
     * @param examIds 考试ID
     * @return 结果
     */
    public int deleteStudentScoresByExamIds(Long[] examIds);
}
