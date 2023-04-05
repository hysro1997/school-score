package com.hysro.scores.service.impl;

import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.hysro.scores.domain.Exams;
import com.hysro.scores.mapper.ExamsMapper;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.bean.BeanValidators;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hysro.scores.mapper.ExamStudentScoresMapper;
import com.hysro.scores.domain.ExamStudentScores;
import com.hysro.scores.service.IExamStudentScoresService;
import org.springframework.transaction.annotation.Transactional;

import javax.validation.Validator;

/**
 * 学生分数情况Service业务层处理
 *
 * @author hysro
 * @date 2023-04-04
 */
@Service
public class ExamStudentScoresServiceImpl implements IExamStudentScoresService
{
    private static final Logger log = LoggerFactory.getLogger(ExamStudentScoresServiceImpl.class);
    @Autowired
    private ExamStudentScoresMapper examStudentScoresMapper;
    @Autowired
    private ExamsMapper examsMapper;
    @Autowired
    protected Validator validator;

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
    @Override
    public int insertExamStudentScores(ExamStudentScores examStudentScores)
    {
        examStudentScores.setCreateTime(DateUtils.getNowDate());
        this.getGradeAndClassesByExamNumber(examStudentScores);
        return examStudentScoresMapper.insertExamStudentScores(examStudentScores);
    }

    /**
     * 修改学生分数情况
     *
     * @param examStudentScores 学生分数情况
     * @return 结果
     */
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
    @Override
    public int deleteExamStudentScoresByScoreId(Long scoreId)
    {
        return examStudentScoresMapper.deleteExamStudentScoresByScoreId(scoreId);
    }

    @Override
    public String importStudentScore(List<ExamStudentScores> scoresList, boolean updateSupport, String operName) {
        if (StringUtils.isNull(scoresList) || scoresList.size() == 0)
        {
            throw new ServiceException("导入分数数据不能为空！");
        }
        if (1 != examsMapper.countExamsEnables()){
            throw new ServiceException("当前考试尚未启用");
        }
        Long examId = examsMapper.selectExamsEnabled().getExamId();
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for (ExamStudentScores score : scoresList)
        {

            try
            {
                if (null == score.getExamNumber() || "".equals(score.getExamNumber())){
                    throw new ServiceException("还没有设置考试号");
                }
                BeanValidators.validateWithException(validator, score);
                // 验证是否存在这个分数记录 根据考试号和考试ID
                score.setExamId(examId);
                if (!this.regxCheckExamNumber(score.getExamNumber())){
                    throw new ServiceException("考试号有误");
                }
                ExamStudentScores ess = examStudentScoresMapper.selectExamStudentScoresByExamNumberAndExamId(score);
                if (StringUtils.isNull(ess))
                {
                    BeanValidators.validateWithException(validator, score);
                    score.setCreateBy(operName);
                    this.insertExamStudentScores(score);
                    successNum++;
                    successMsg.append("\r\n" + successNum + "、考号 " + score.getExamNumber() + " 的分数导入成功");
                }
                else if (updateSupport)
                {
                    BeanValidators.validateWithException(validator, score);
                    score.setUpdateBy(operName);
                    score.setScoreId(ess.getScoreId());
                    this.updateExamStudentScores(score);
                    successNum++;
                    successMsg.append("\r\n" + successNum + "、考号 " + score.getExamNumber() + " 的分数更新成功");
                }
                else
                {
                    failureNum++;
                    failureMsg.append("\r\n" + failureNum + "、考号 " + score.getExamNumber() + " 的分数已存在");
                }
            }
            catch (Exception e)
            {
                failureNum++;
                String msg = "\r\n" + failureNum + "、考号 " + score.getExamNumber() + " 导入失败：";
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

    private void getGradeAndClassesByExamNumber(ExamStudentScores scores){
        String examNumber = scores.getExamNumber();
        char grade = examNumber.charAt(0);
        String classes  =examNumber.substring(1,3);
        switch (grade){
            case '1':
                scores.setGrade("一年级");
                break;
            case '2':
                scores.setGrade("二年级");
                break;
            case '3':
                scores.setGrade("三年级");
                break;
            case '4':
                scores.setGrade("四年级");
                break;
            case '5':
                scores.setGrade("五年级");
                break;
            case '6':
                scores.setGrade("六年级");
                break;
            default:
        }
        scores.setClasses(Integer.parseInt(classes) + "班");
    }

    private boolean regxCheckExamNumber(String examNumber) {
        String pattern = "[1-6][0-1]\\d\\d\\d";

        Pattern r = Pattern.compile(pattern);
        Matcher m = r.matcher(examNumber);
        return m.matches();
    }
}
