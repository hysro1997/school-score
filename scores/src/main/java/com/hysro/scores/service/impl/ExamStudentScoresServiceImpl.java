package com.hysro.scores.service.impl;

import java.util.List;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.bean.BeanValidators;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.hysro.scores.domain.Exams;
import com.hysro.scores.mapper.ExamStudentScoresMapper;
import com.hysro.scores.domain.ExamStudentScores;
import com.hysro.scores.service.IExamStudentScoresService;

import javax.validation.Validator;

/**
 * 学生分数情况Service业务层处理
 *
 * @author hysro
 * @date 2023-03-23
 */
@Service
public class ExamStudentScoresServiceImpl implements IExamStudentScoresService
{
    private static final Logger log = LoggerFactory.getLogger(ExamStudentScoresServiceImpl.class);
    @Autowired
    protected Validator validator;
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
     * 导入用户数据
     *
     * @param scoresList 用户数据列表
     * @return 结果
     */
    @Override
    public String importStudentScore(List<ExamStudentScores> scoresList) {
        if (StringUtils.isNull(scoresList) || scoresList.size() == 0)
        {
            throw new ServiceException("导入学生分数数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for (ExamStudentScores scores : scoresList)
        {
            try
            {
                    BeanValidators.validateWithException(validator, scores);
                    this.insertExamStudentScores(scores);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、考号 " + scores.getExamNumber() + " 导入成功");

            }
            catch (Exception e)
            {
                failureNum++;
                String msg = "<br/>" + failureNum + "、考号 " + scores.getExamNumber() + " 导入失败：";
                failureMsg.append(msg + e.getMessage());
                log.error(msg, e);
            }
        }
        if (failureNum > 0)
        {
            failureMsg.insert(0, "很抱歉，导入失败！共 " + failureNum + " 条数据格式不正确，错误如下：");
            throw new ServiceException(failureMsg.toString());
        }
        else
        {
            successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
        }
        return successMsg.toString();
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
