package com.hysro.scores.mapper;

import java.util.List;
import com.hysro.scores.domain.ExamClassStatictics;
import com.hysro.scores.domain.Exams;

/**
 * 班级成绩统计情况Mapper接口
 * 
 * @author hysro
 * @date 2023-03-23
 */
public interface ExamClassStaticticsMapper 
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
     * 删除班级成绩统计情况
     * 
     * @param examStatisticsId 班级成绩统计情况主键
     * @return 结果
     */
    public int deleteExamClassStaticticsByExamStatisticsId(Long examStatisticsId);

    /**
     * 批量删除班级成绩统计情况
     * 
     * @param examStatisticsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExamClassStaticticsByExamStatisticsIds(Long[] examStatisticsIds);

    /**
     * 批量删除各种考试
     * 
     * @param examStatisticsIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExamsByExamIds(Long[] examStatisticsIds);
    
    /**
     * 批量新增各种考试
     * 
     * @param examsList 各种考试列表
     * @return 结果
     */
    public int batchExams(List<Exams> examsList);
    

    /**
     * 通过班级成绩统计情况主键删除各种考试信息
     * 
     * @param examStatisticsId 班级成绩统计情况ID
     * @return 结果
     */
    public int deleteExamsByExamId(Long examStatisticsId);
}
