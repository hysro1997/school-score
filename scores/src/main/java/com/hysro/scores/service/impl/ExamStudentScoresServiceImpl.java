package com.hysro.scores.service.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.hysro.scores.domain.ExamExcellentScoreLine;
import com.hysro.scores.domain.ExamTempScores;
import com.hysro.scores.domain.Exams;
import com.hysro.scores.mapper.ExamTempScoresMapper;
import com.hysro.scores.mapper.ExamsMapper;
import com.hysro.scores.service.IExamExcellentScoreLineService;
import com.hysro.scores.service.IExamsService;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.bean.BeanValidators;
import org.apache.ibatis.transaction.Transaction;
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
    @Autowired
    private IExamsService examsService;
    @Autowired
    private IExamExcellentScoreLineService examExcellentScoreLineService;
    @Autowired
    private ExamTempScoresMapper tempScoresMapper;

    private static final char YEAR_GRADE_ZERO = 'A';
    private static final String GRADE_TWO = "二年级";
    private static final String GRADE_ONE = "一年级";
    private static final String ORDER_TYPE_ASC = "ASC";
    private static final int STUDENT_SIZE_FIFTY = 50;

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

    @Override
    public List<ExamStudentScores> selectExamStudentScoresListForAnalysis(ExamStudentScores examStudentScores, String direction, String ration) {
        return examStudentScoresMapper.selectExamStudentScoresListForAnalysis(examStudentScores,direction,ration);
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
        this.getGradeAndClassesByExamNumber(examStudentScores,DateUtils.getDate());
        this.calculateTotalPoints(examStudentScores);
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
        this.getGradeAndClassesByExamNumber(examStudentScores,DateUtils.getDate());
        this.calculateTotalPoints(examStudentScores);
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

    @Transactional(rollbackFor = ServiceException.class)
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
                    throw new ServiceException("还没有设置考试号，已撤回本次添加的全部数据");
                }
                BeanValidators.validateWithException(validator, score);
                // 验证是否存在这个分数记录 根据考试号和考试ID
                score.setExamId(examId);
                if (!this.regxCheckExamNumber(score.getExamNumber())){
                    throw new ServiceException("考试号有误，已撤回本次添加的全部数据");
                }
                ExamStudentScores ess = examStudentScoresMapper.selectExamStudentScoresByExamNumberAndExamId(score);
                if (StringUtils.isNull(ess))
                {
                    BeanValidators.validateWithException(validator, score);
                    //如果这个学生三门全部缺考，不插入成绩
                    if (null == score.getChineseScore() && null == score.getMathsScore() && null == score.getEnglishScore()){
                        continue;
                    }
                    score.setCreateBy(operName);
                    this.insertExamStudentScores(score);
                    successNum++;
                    successMsg.append("\r\n" + successNum + "、考号 " + score.getExamNumber() + " 的分数导入成功");
                }
                else if (updateSupport)
                {
                    BeanValidators.validateWithException(validator, score);
                    //如果这个学生三门全部缺考，不插入成绩
                    if (null == score.getChineseScore() && null == score.getMathsScore() && null == score.getEnglishScore()){
                        continue;
                    }
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
            failureMsg.insert(0, "很抱歉，导入失败！，已撤回本次添加的全部数据！\r\n共 " + failureNum + " 条数据格式不正确，错误如下：");
            throw new ServiceException(failureMsg.toString());

        }
        else
        {
            successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
        }
        List<Map<String,String>> reuslt = examsService.calculateStatisticExams(examId);
        return successMsg.toString();
    }

    @Override
    public List<Map<String,String>> selectExamStudentScoresFifty(ExamStudentScores examStudentScores) {
        List<Map<String,String>> scoreMap = examStudentScoresMapper.selectExamStudentScoresFifty(examStudentScores);
        if (STUDENT_SIZE_FIFTY > scoreMap.size()){
            return scoreMap;
        }
        Map<String,String> map = scoreMap.get(scoreMap.size()-1);
        String score = String.valueOf(map.get("score"));
        score = score.substring(0,score.indexOf("."));

        ExamExcellentScoreLine scoreLine = this.getScoreBoundry(examStudentScores);

        if (ORDER_TYPE_ASC.equals(examStudentScores.getOrderType())){
            examStudentScores.setUnderLine((BigDecimal.valueOf(0)));
            examStudentScores.setUpLine(BigDecimal.valueOf(Integer.parseInt(score)));
        }else {
            examStudentScores.setUnderLine(BigDecimal.valueOf(Integer.parseInt(score)));
            examStudentScores.setUpLine(scoreLine.getFullScore());
        }

        return examStudentScoresMapper.selectExamStudentScoresByScoresBoundry(examStudentScores);
    }

    @Override
    public List<Map<String, String>> selectExamStudentScoresTotalPointsFifty(ExamStudentScores examStudentScores) {
        List<Map<String,String>> scoreMap = examStudentScoresMapper.selectExamStudentScoresFifty(examStudentScores);
        if (STUDENT_SIZE_FIFTY > scoreMap.size()){
            return scoreMap;
        }

        ExamExcellentScoreLine scoreLine = this.getScoreBoundry(examStudentScores);

        examStudentScores.setClasses(null);
        Map<String,String> map = scoreMap.get(scoreMap.size()-1);
        String score = String.valueOf(map.get("score"));
        if (0 < score.indexOf(".")){
            score = score.substring(0,score.indexOf("."));
        }
        if (ORDER_TYPE_ASC.equals(examStudentScores.getOrderType())){
            examStudentScores.setUnderLine((BigDecimal.valueOf(0)));
            examStudentScores.setUpLine(BigDecimal.valueOf(Integer.parseInt(score)));
        }else {
            examStudentScores.setUnderLine(BigDecimal.valueOf(Integer.parseInt(score)));
            examStudentScores.setUpLine(scoreLine.getTripleFullScore());
        }
        return examStudentScoresMapper.selectExamStudentScoresByScoresBoundry(examStudentScores);
    }

    @Override
    public List<Map<String,String>> selectExamStudentScoresByScoresBoundry(ExamStudentScores examStudentScores) {
        return examStudentScoresMapper.selectExamStudentScoresByScoresBoundry(examStudentScores);
    }

    @Override
    public ExamStudentScores selectExamStudentScoresByExamNumberAndExamId(ExamStudentScores examStudentScores) {
        return examStudentScoresMapper.selectExamStudentScoresByExamNumberAndExamId(examStudentScores);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int mixScores(Long examId) {
        ExamStudentScores studentScore = new ExamStudentScores();
        List<ExamTempScores> chineseScores = tempScoresMapper.selectExamChineseTempScores(examId);
        List<ExamTempScores> mathsScore = tempScoresMapper.selectExamMathsTempScores(examId);
        List<ExamTempScores> englishScore = tempScoresMapper.selectExamEnglishTempScores(examId);
        //语文整合
        for (ExamTempScores chinese : chineseScores){
            studentScore = new ExamStudentScores();
            studentScore.setExamId(chinese.getExamId());
            studentScore.setExamNumber(chinese.getExamNumber());
            ExamStudentScores ess = examStudentScoresMapper.selectExamStudentScoresByExamNumberAndExamId(studentScore);
            studentScore.setChineseScore(chinese.getChineseScore());
            if (StringUtils.isNull(ess)){
                studentScore.setCreateBy(chinese.getCreateBy());
                this.insertExamStudentScores(studentScore);
            } else {
                if (!ess.getCreateBy().contains(chinese.getCreateBy())){
                    studentScore.setCreateBy(ess.getCreateBy() + "、" + chinese.getCreateBy());
                } else {
                    studentScore.setCreateBy(ess.getCreateBy());
                }
                studentScore.setMathsScore(ess.getMathsScore());
                studentScore.setEnglishScore(ess.getEnglishScore());
                studentScore.setScoreId(ess.getScoreId());
                this.updateExamStudentScores(studentScore);
            }
        }
        //数学整合
        for (ExamTempScores maths : mathsScore){
            studentScore = new ExamStudentScores();
            studentScore.setExamId(maths.getExamId());
            studentScore.setExamNumber(maths.getExamNumber());
            ExamStudentScores ess = examStudentScoresMapper.selectExamStudentScoresByExamNumberAndExamId(studentScore);
            studentScore.setMathsScore(maths.getMathsScore());
            if (StringUtils.isNull(ess)){
                studentScore.setCreateBy(maths.getCreateBy());
                this.insertExamStudentScores(studentScore);
            } else {
                if (!ess.getCreateBy().contains(maths.getCreateBy())){
                    studentScore.setCreateBy(ess.getCreateBy() + "、" + maths.getCreateBy());
                } else {
                    studentScore.setCreateBy(ess.getCreateBy());
                }
                studentScore.setChineseScore(ess.getChineseScore());
                studentScore.setEnglishScore(ess.getEnglishScore());
                studentScore.setScoreId(ess.getScoreId());
                this.updateExamStudentScores(studentScore);
            }
        }
        //英语整合
        for (ExamTempScores english : englishScore){
            studentScore = new ExamStudentScores();
            studentScore.setExamId(english.getExamId());
            studentScore.setExamNumber(english.getExamNumber());
            ExamStudentScores ess = examStudentScoresMapper.selectExamStudentScoresByExamNumberAndExamId(studentScore);
            studentScore.setEnglishScore(english.getEnglishScore());
            if (StringUtils.isNull(ess)){
                studentScore.setCreateBy(english.getCreateBy());
                this.insertExamStudentScores(studentScore);
            } else {
                if (!ess.getCreateBy().contains(english.getCreateBy())){
                    studentScore.setCreateBy(ess.getCreateBy() + "、" + english.getCreateBy());
                } else {
                    studentScore.setCreateBy(ess.getCreateBy());
                }
                studentScore.setChineseScore(ess.getChineseScore());
                studentScore.setMathsScore(ess.getMathsScore());
                studentScore.setScoreId(ess.getScoreId());
                this.updateExamStudentScores(studentScore);
            }
        }
        //删除总分是null的学生
        examStudentScoresMapper.deleteTotalScoreIsNull(examId);
        //清空临时表，避免后续有得分修改后，整合分数时脏读
        tempScoresMapper.cleanExamChineseTempTables();
        tempScoresMapper.cleanExamMathsTempTables();
        tempScoresMapper.cleanExamEnglishTempTables();
        return 0;
    }

    /**
     * 根据考号设置年级，班级
     *
     * 考号第一位表示入学年份，当前年份 - 入学年份 = 所在年级，当前年份 < 入学年份，则当前年份 +10；如果当前月份 >= 9月，年级继续+1
     *
     * @param scores 学生分数情况
     */
    private void getGradeAndClassesByExamNumber(ExamStudentScores scores, String date){
        String examNumber = scores.getExamNumber();
        //入学年份
        char gradeYear = examNumber.charAt(0);
        if (YEAR_GRADE_ZERO == gradeYear){
            gradeYear  = '0';
        }
        int gradeyYear = (int)gradeYear - (int)('0');
        //当前年份
        int year = (int) date.charAt(3) - (int)('0');
        //当前月份
        int month = (int)date.charAt(6) - (int)('0');
        String classes  =examNumber.substring(1,3);
        if (year < gradeyYear){
            year += 10;
        }
        int nowGrade = year - gradeyYear;
        if (9 <= month){
            nowGrade += 1;
        }
        switch (nowGrade){
            case 1:
                scores.setGrade("一年级");
                break;
            case 2:
                scores.setGrade("二年级");
                break;
            case 3:
                scores.setGrade("三年级");
                break;
            case 4:
                scores.setGrade("四年级");
                break;
            case 5:
                scores.setGrade("五年级");
                break;
            case 6:
                scores.setGrade("六年级");
                break;
            default:
                throw new ServiceException("考试号超出小学六年教育范围");
        }
        scores.setClasses(Integer.parseInt(classes) + "班");
    }

    /**
     * 正则表达，验证考号格式
     *
     * @param examNumber 考号
     * @return 结果
     */
    private boolean regxCheckExamNumber(String examNumber) {
        String pattern = "([1-9]|[A])[0-1]\\d\\d\\d";

        Pattern r = Pattern.compile(pattern);
        Matcher m = r.matcher(examNumber);
        return m.matches();
    }

    /**
     * 求出总分，如果都缺考是null，如果是一二年级，总分不算英语，且设置英语成绩为null，避免出错
     *
     * @param scores 分数
     */
    private void calculateTotalPoints(ExamStudentScores scores){
        BigDecimal sum = new BigDecimal(0);
        scores.setTotalPoints(null);
        if (null != scores.getChineseScore()){
            sum = sum.add(scores.getChineseScore());
        }
        if (null != scores.getMathsScore()){
            sum = sum.add(scores.getMathsScore());
        }
        if (!GRADE_ONE.equals(scores.getGrade()) && !GRADE_TWO.equals(scores.getGrade())){
            if (null != scores.getEnglishScore()){
                sum = sum.add(scores.getEnglishScore());
            }
        } else {
            scores.setEnglishScore(null);
        }
        if (null != scores.getChineseScore() || null != scores.getMathsScore() || null != scores.getEnglishScore()){
            scores.setTotalPoints(sum);
        }
    }
    private ExamExcellentScoreLine getScoreBoundry(ExamStudentScores examStudentScores){
        ExamExcellentScoreLine scoreLine = new ExamExcellentScoreLine();
        scoreLine.setGrade(examStudentScores.getGrade());
        scoreLine.setExamId(examStudentScores.getExamId());
        BigDecimal allFullScore = new BigDecimal(0);
        switch (examStudentScores.getSubject()){
            case "chinese_score" :
                scoreLine.setSubject("语文");
                break;
            case "maths_score":
                scoreLine.setSubject("数学");
                break;
            case "english_score":
                scoreLine.setSubject("英语");
                break;
            default:
                scoreLine.setSubject("语文");
                allFullScore = allFullScore.add(examExcellentScoreLineService.selectExamExcellentScoreLine(scoreLine).getFullScore());
                scoreLine.setSubject("数学");
                allFullScore = allFullScore.add(examExcellentScoreLineService.selectExamExcellentScoreLine(scoreLine).getFullScore());
                if (!GRADE_TWO.equals(examStudentScores.getGrade()) && !GRADE_ONE.equals(examStudentScores.getGrade())){
                    scoreLine.setSubject("英语");
                    allFullScore = allFullScore.add(examExcellentScoreLineService.selectExamExcellentScoreLine(scoreLine).getFullScore());
                }
                scoreLine.setTripleFullScore(allFullScore);
                return scoreLine;
        }
        return examExcellentScoreLineService.selectExamExcellentScoreLine(scoreLine);
    }
}
