package com.hysro.scores.mapper;

import com.hysro.scores.domain.Exams;

import java.util.List;

/**
 * 各种考试Mapper接口
 *
 * @author hysro
 * @date 2023-03-23
 */
public interface ExamsMapper
{
    /**
     * 查询各种考试
     *
     * @param examId 各种考试主键
     * @return 各种考试
     */
    public Exams selectExamsByExamId(Long examId);

    /**
     * 查询已启用的考试数量
     * @return 启用考试的数量
     */
    public Integer countExamsEnables();

    /**
     * 查询各种考试列表
     *
     * @param exams 各种考试
     * @return 各种考试集合
     */
    public List<Exams> selectExamsList(Exams exams);

    /**
     * 查询已启用的考试
     *
     * @return 各种考试集合
     */
    public Exams selectExamsEnabled();

    /**
     * 新增各种考试
     *
     * @param exams 各种考试
     * @return 结果
     */
    public int insertExams(Exams exams);

    /**
     * 修改各种考试
     *
     * @param exams 各种考试
     * @return 结果
     */
    public int updateExams(Exams exams);

    /**
     * 删除各种考试
     *
     * @param examId 各种考试主键
     * @return 结果
     */
    public int deleteExamsByExamId(Long examId);

    /**
     * 批量删除各种考试
     *
     * @param examIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExamsByExamIds(Long[] examIds);
}
