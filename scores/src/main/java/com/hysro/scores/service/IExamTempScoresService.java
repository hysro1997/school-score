package com.hysro.scores.service;

import com.hysro.scores.domain.ExamTempScores;

import java.util.ArrayList;

/**
 * 临时分数表service接口
 *
 * @author hysro
 * @date 2023-05-05
 */
public interface IExamTempScoresService {
    /**
     * 添加分数
     *
     * @param scores 分数
     * @param examId 考试ID
     * @return 结果
     */
    public int addExamTempScores(ArrayList<ExamTempScores> scores,Long examId);

    /**
     * 检查是否已有记录
     *
     * @param examTempScores 考试ID考号
     * @return 结果
     */
    public int checkAlreadyScores(ExamTempScores examTempScores);

    /**
     * 根据考号清空这个班的数据
     *
     * @param examTempScores 考号和考试ID
     * @return 结果
     */
    public int deleteTempScores(ExamTempScores examTempScores);

    /**
     * 清空三张表
     * @return 结果
     */
    public int cleanExamTempTables();
}
