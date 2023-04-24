package com.hysro.scores.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hysro.scores.mapper.ExamClassStaticticsMapper;
import com.hysro.scores.domain.ExamClassStatictics;
import com.hysro.scores.service.IExamClassStaticticsService;

/**
 * 班级成绩统计情况Service业务层处理
 *
 * @author hysro
 * @date 2023-04-04
 */
@Service
public class ExamClassStaticticsServiceImpl implements IExamClassStaticticsService
{
    @Autowired
    private ExamClassStaticticsMapper examClassStaticticsMapper;

    /**
     * 查询班级成绩统计情况
     *
     * @param examStatisticsId 班级成绩统计情况主键
     * @return 班级成绩统计情况
     */
    @Override
    public ExamClassStatictics selectExamClassStaticticsByExamStatisticsId(Long examStatisticsId)
    {
        return examClassStaticticsMapper.selectExamClassStaticticsByExamStatisticsId(examStatisticsId);
    }

    /**
     * 查询班级成绩统计情况列表
     *
     * @param examClassStatictics 班级成绩统计情况
     * @return 班级成绩统计情况
     */
    @Override
    public List<ExamClassStatictics> selectExamClassStaticticsList(ExamClassStatictics examClassStatictics)
    {
        return examClassStaticticsMapper.selectExamClassStaticticsList(examClassStatictics);
    }

    /**
     * 新增班级成绩统计情况
     *
     * @param examClassStatictics 班级成绩统计情况
     * @return 结果
     */
    @Override
    public int insertExamClassStatictics(ExamClassStatictics examClassStatictics)
    {
        return examClassStaticticsMapper.insertExamClassStatictics(examClassStatictics);
    }

    /**
     * 修改班级成绩统计情况
     *
     * @param examClassStatictics 班级成绩统计情况
     * @return 结果
     */
    @Override
    public int updateExamClassStatictics(ExamClassStatictics examClassStatictics)
    {
        return examClassStaticticsMapper.updateExamClassStatictics(examClassStatictics);
    }

    /**
     * 批量删除班级成绩统计情况
     *
     * @param examStatisticsIds 需要删除的班级成绩统计情况主键
     * @return 结果
     */
    @Override
    public int deleteExamClassStaticticsByExamStatisticsIds(Long[] examStatisticsIds)
    {
        return examClassStaticticsMapper.deleteExamClassStaticticsByExamStatisticsIds(examStatisticsIds);
    }

    /**
     * 删除班级成绩统计情况信息
     *
     * @param examStatisticsId 班级成绩统计情况主键
     * @return 结果
     */
    @Override
    public int deleteExamClassStaticticsByExamStatisticsId(Long examStatisticsId)
    {
        return examClassStaticticsMapper.deleteExamClassStaticticsByExamStatisticsId(examStatisticsId);
    }

    @Override
    public Map<String,String> selectAverageScoreByExamIdAndGrade(ExamClassStatictics statictics) {
        String[] averageScores = examClassStaticticsMapper.selectAverageScoreByExamIdAndGrade(statictics);
        if (0 == averageScores.length){
            return null;
        }
        Map<String,String> map = new HashMap<String,String>(2);
        map.put("firstAverage",averageScores[0]);
        map.put("lastAverage",averageScores[averageScores.length-1]);
        return map;
    }
}
