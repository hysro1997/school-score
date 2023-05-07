package com.hysro.scores.mapper;

import com.hysro.scores.domain.ExamTempScores;

import java.util.ArrayList;
import java.util.List;

/**
 * 临时分数表mapper
 *
 * @author hysro
 * @date 2023-05-05
 */
public interface ExamTempScoresMapper {
    /**
     * 查询语文成绩
     *
     * @param examId 考试ID
     * @return 语文成绩
     */
    public List<ExamTempScores> selectExamChineseTempScores(Long examId);
    /**
     * 查询数学成绩
     *
     * @param examId 考试ID
     * @return 数学成绩
     */
    public List<ExamTempScores> selectExamMathsTempScores(Long examId);
    /**
     * 查询英语成绩
     *
     * @param examId 考试ID
     * @return 英语成绩
     */
    public List<ExamTempScores> selectExamEnglishTempScores(Long examId);
    /**
     * 插入语文分数数组
     *
     * @param scores 分数
     * @return 结果
     */
    public int insertExamTempChineseScores(ArrayList<ExamTempScores> scores);
    /**
     * 插入数学分数数组
     *
     * @param scores 分数
     * @return 结果
     */
    public int insertExamTempMathsScores(ArrayList<ExamTempScores> scores);
    /**
     * 插入英语分数数组
     *
     * @param scores 分数
     * @return 结果
     */
    public int insertExamTempEnglishScores(ArrayList<ExamTempScores> scores);

    /**
     * 清点语文考试已有记录数量
     *
     * @param examTempScores 记录 考试ID和考试号
     * @return 结果
     */
    public int countChineseNumbersByExamId(ExamTempScores examTempScores);
    /**
     * 清点数学考试已有记录数量
     *
     * @param examTempScores 记录 考试ID和考试号
     * @return 结果
     */
    public int countMathsNumbersByExamId(ExamTempScores examTempScores);
    /**
     * 清点英语考试已有记录数量
     *
     * @param examTempScores 记录 考试ID和考试号
     * @return 结果
     */
    public int countEnglishNumbersByExamId(ExamTempScores examTempScores);

    /**
     * 删除一个班的成绩
     *
     * @param examTempScores 考号考试ID
     * @return 结果
     */
    public int deleteChineseTempScores(ExamTempScores examTempScores);

    /**
     * 删除一个班的成绩
     *
     * @param examTempScores 考号考试ID
     * @return 结果
     */
    public int deleteMathsTempScores(ExamTempScores examTempScores);

    /**
     * 删除一个班的成绩
     *
     * @param examTempScores 考号考试ID
     * @return 结果
     */
    public int deleteEnglishTempScores(ExamTempScores examTempScores);

    /**
     * 清空三张表
     * @return 结果
     */
    public int cleanExamEnglishTempTables();

    /**
     * 清空三张表
     * @return 结果
     */
    public int cleanExamChineseTempTables();

    /**
     * 清空三张表
     * @return 结果
     */
    public int cleanExamMathsTempTables();
}
