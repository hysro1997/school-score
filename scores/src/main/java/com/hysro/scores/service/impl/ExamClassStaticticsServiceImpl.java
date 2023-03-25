package com.hysro.scores.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.hysro.scores.domain.Exams;
import com.hysro.scores.mapper.ExamClassStaticticsMapper;
import com.hysro.scores.domain.ExamClassStatictics;
import com.hysro.scores.service.IExamClassStaticticsService;

/**
 * 班级成绩统计情况Service业务层处理
 *
 * @author hysro
 * @date 2023-03-23
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
    @Transactional
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
    @Transactional
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
    @Transactional
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
    @Transactional
    @Override
    public int deleteExamClassStaticticsByExamStatisticsId(Long examStatisticsId)
    {
        return examClassStaticticsMapper.deleteExamClassStaticticsByExamStatisticsId(examStatisticsId);
    }

    /**
     * 新增各种考试信息
     *
     * @param examClassStatictics 班级成绩统计情况对象
     *
    public void insertExams(ExamClassStatictics examClassStatictics)
    {
        List<Exams> examsList = examClassStatictics.getExamsList();
        Long examStatisticsId = examClassStatictics.getExamStatisticsId();
        if (StringUtils.isNotNull(examsList))
        {
            List<Exams> list = new ArrayList<Exams>();
            for (Exams exams : examsList)
            {
                exams.setExamId(examStatisticsId);
                list.add(exams);
            }
            if (list.size() > 0)
            {
                examClassStaticticsMapper.batchExams(list);
            }
        }
    }
    */
}
