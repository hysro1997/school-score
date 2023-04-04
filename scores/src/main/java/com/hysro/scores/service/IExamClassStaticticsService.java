package com.hysro.scores.service;

import java.util.List;
import com.hysro.scores.domain.ExamClassStatictics;

/**
 * 班级成绩统计情况Service接口
 * 
 * @author hysro
 * @date 2023-04-04
 */
public interface IExamClassStaticticsService 
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
     * 批量删除班级成绩统计情况
     * 
     * @param examStatisticsIds 需要删除的班级成绩统计情况主键集合
     * @return 结果
     */
    public int deleteExamClassStaticticsByExamStatisticsIds(Long[] examStatisticsIds);

    /**
     * 删除班级成绩统计情况信息
     * 
     * @param examStatisticsId 班级成绩统计情况主键
     * @return 结果
     */
    public int deleteExamClassStaticticsByExamStatisticsId(Long examStatisticsId);
}
