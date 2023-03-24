package com.hysro.scores.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.hysro.scores.domain.Exams;
import com.hysro.scores.mapper.ExamStudentScoresMapper;
import com.hysro.scores.domain.ExamStudentScores;
import com.hysro.scores.service.IExamStudentScoresService;

/**
 * 学生分数情况Service业务层处理
 *
 * @author hysro
 * @date 2023-03-23
 */
@Service
public class ExamStudentScoresServiceImpl implements IExamStudentScoresService
{
    @Autowired
    private ExamStudentScoresMapper examStudentScoresMapper;

    /**
     * 查询学生分数情况
     *
     * @param scoreId 学生分数情况主键
     * @return 学生分数情况
     */
    @Override
    public ExamStudentScores selectExamStudentScoresByScoreId(Long scoreId)
    {
        return examStudentScoresMapper.selectExamStudentScoresByScoreId(scoreId);
    }

    /**
     * 查询学生分数情况列表
     *
     * @param examStudentScores 学生分数情况
     * @return 学生分数情况
     */
    @Override
    public List<ExamStudentScores> selectExamStudentScoresList(ExamStudentScores examStudentScores)
    {
        return examStudentScoresMapper.selectExamStudentScoresList(examStudentScores);
    }

    /**
     * 新增学生分数情况
     *
     * @param examStudentScores 学生分数情况
     * @return 结果
     */
    @Transactional
    @Override
    public int insertExamStudentScores(ExamStudentScores examStudentScores)
    {
        examStudentScores.setCreateTime(DateUtils.getNowDate());
        int rows = examStudentScoresMapper.insertExamStudentScores(examStudentScores);
        insertExams(examStudentScores);
        return rows;
    }

    /**
     * 修改学生分数情况
     *
     * @param examStudentScores 学生分数情况
     * @return 结果
     */
    @Transactional
    @Override
    public int updateExamStudentScores(ExamStudentScores examStudentScores)
    {
        examStudentScores.setUpdateTime(DateUtils.getNowDate());
        return examStudentScoresMapper.updateExamStudentScores(examStudentScores);
    }

    /**
     * 批量删除学生分数情况
     *
     * @param scoreIds 需要删除的学生分数情况主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteExamStudentScoresByScoreIds(Long[] scoreIds)
    {
        return examStudentScoresMapper.deleteExamStudentScoresByScoreIds(scoreIds);
    }

    /**
     * 删除学生分数情况信息
     *
     * @param scoreId 学生分数情况主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteExamStudentScoresByScoreId(Long scoreId)
    {
        return examStudentScoresMapper.deleteExamStudentScoresByScoreId(scoreId);
    }

    /**
     * 新增各种考试信息
     *
     * @param examStudentScores 学生分数情况对象
     */
    public void insertExams(ExamStudentScores examStudentScores)
    {
        List<Exams> examsList = examStudentScores.getExamsList();
        Long scoreId = examStudentScores.getScoreId();
        if (StringUtils.isNotNull(examsList))
        {
            List<Exams> list = new ArrayList<Exams>();
            for (Exams exams : examsList)
            {
                exams.setExamId(scoreId);
                list.add(exams);
            }
            if (list.size() > 0)
            {
                examStudentScoresMapper.batchExams(list);
            }
        }
    }
}
