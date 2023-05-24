package com.hysro.scores.service.impl;

import com.hysro.scores.domain.*;
import com.hysro.scores.mapper.*;
import com.hysro.scores.service.IExamsService;
import com.ruoyi.common.core.redis.RedisCache;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 各种考试Service业务层处理
 *
 * @author hysro
 * @date 2023-03-23
 */
@Service
public class ExamsServiceImpl implements IExamsService
{
    @Autowired
    private ExamsMapper examsMapper;
    @Autowired
    private ExamExcellentScoreLineMapper scoreLineMapper;
    @Autowired
    private ExamStudentScoresMapper studentScoresMapper;
    @Autowired
    private ExamClassStaticticsMapper classStaticticsMapper;
    @Autowired
    private ExamGradeStatisticMapper gradeStatisticMapper;
    @Autowired
    private ExamGradeSummaryMapper gradeSummaryMapper;
    @Autowired
    private ExamMuitipleCalculationMapper muitipleCalculationMapper;
    @Autowired
    private RedisCache redisCache;

    /**
     * 查询各种考试
     *
     * @param examId 各种考试主键
     * @return 各种考试
     */
    @Override
    public Exams selectExamsByExamId(Long examId)
    {
        return examsMapper.selectExamsByExamId(examId);
    }

    /**
     * 查询已启用的考试数量
     * @return 启用考试的数量
     */
    @Override
    public Integer countExamsEnables() {
        return examsMapper.countExamsEnables();
    }

    /**
     * 查询各种考试列表
     *
     * @param exams 各种考试
     * @return 各种考试
     */
    @Override
    public List<Exams> selectExamsList(Exams exams)
    {
        return examsMapper.selectExamsList(exams);
    }

    /**
     * 新增各种考试
     *
     * @param exams 各种考试
     * @return 结果
     */
    @Override
    public Long insertExams(Exams exams)
    {
        exams.setCreateTime(DateUtils.getNowDate());
        String operName = SecurityUtils.getUsername();
        if (null == exams.getExamName() || "".equals(exams.getExamName())){
            return 0L;
        }
        exams.setCreateBy(operName);
        examsMapper.insertExams(exams);
        return exams.getExamId();
    }

    /**
     * 修改各种考试
     *
     * @param exams 各种考试
     * @return 结果
     */
    @Override
    public int updateExams(Exams exams)
    {
        if (null != exams.getEnableFlag() && "0".equals(exams.getEnableFlag())){
            return 1 <= countExamsEnables() ? 0 : examsMapper.updateExams(exams);
        }
        return examsMapper.updateExams(exams);
    }

    @Override
    public int confirmExams(Long examId) {
        scoreLineMapper.updateExamExcellentScoreLineByExamId(examId);
        Exams exams = new Exams();
        exams.setExamId(examId);
        exams.setConfirmFlag(1);
        return examsMapper.updateExams(exams);
    }

    /**
     * 批量删除各种考试
     *
     * @param examIds 需要删除的各种考试主键
     * @return 结果
     */
    @Override
    public int deleteExamsByExamIds(Long[] examIds)
    {
        classStaticticsMapper.deleteExamClassStaticticsByExamIds(examIds);
        gradeSummaryMapper.deleteExamGradeSummaryByExamIds(examIds);
        gradeStatisticMapper.deleteExamGradeStatisticByExamIds(examIds);
        studentScoresMapper.deleteStudentScoresByExamIds(examIds);
        return examsMapper.deleteExamsByExamIds(examIds);
    }

    /**
     * 删除各种考试信息
     *
     * @param examId 各种考试主键
     * @return 结果
     */
    @Override
    public int deleteExamsByExamId(Long examId)
    {
        return examsMapper.deleteExamsByExamId(examId);
    }

    /**
     * 根据考试ID统计年级情况、班级情况、年级情况概要
     *
     * @param examId 考试ID
     * @return 结果
     */
    @Transactional(rollbackFor = Exception.class)
    @Override
    public  List<Map<String,String>> calculateStatisticExams(Long examId) {
        ExamClassStatictics examClassStatictics;
        //获取有成绩的年级班级
        List<Map<String,String>> gradeClasses = studentScoresMapper.selectDistinctGradeClassesByExamId(examId);
        if (0 == gradeClasses.size()){
            return null;
        }
        //统计个屁的统计，先把这次考试已有的统计数据删掉，反正数量不多
        classStaticticsMapper.deleteExamClassStaticticsByExamId(examId);
        gradeStatisticMapper.deleteExamGradeStatisticByExamId(examId);
        gradeSummaryMapper.deleteExamGradeSummaryByExamId(examId);
        //循环年级班级，开始统计
        for (Map<String,String> gradeClass : gradeClasses){
            this.saveClassesStatistics(gradeClass.get("grade"),gradeClass.get("classes"),"语文","chinese_score",examId);
            this.saveClassesStatistics(gradeClass.get("grade"),gradeClass.get("classes"),"数学","maths_score",examId);
            //根据年级确定是否要统计一年级的数据
            if (!"一年级".equals(gradeClass.get("grade")) && !"二年级".equals(gradeClass.get("grade"))){
                this.saveClassesStatistics(gradeClass.get("grade"),gradeClass.get("classes"),"英语","english_score",examId);
            }
            this.saveGradeStatistics(gradeClass.get("grade"),gradeClass.get("classes"),examId);
        }
        //统计考试排名信息
        //班级数据排名
        List<Map<String,String>> gradeSubjects = classStaticticsMapper.selectDistinceGradeSubject(examId);
        for (Map<String,String> gradeSubject: gradeSubjects){
            examClassStatictics = new ExamClassStatictics();
            examClassStatictics.setExamId(examId);
            examClassStatictics.setGrade(gradeSubject.get("grade"));
            examClassStatictics.setSubject(gradeSubject.get("subject"));
            List<ExamClassStatictics> classStaticticsList = classStaticticsMapper.selectMuitipleRank(examClassStatictics);
            for (ExamClassStatictics classStatictics:classStaticticsList){
                classStaticticsMapper.updateExamClassStatictics(classStatictics);
            }
            classStaticticsList = classStaticticsMapper.selectAverageRank(examClassStatictics);
            for (ExamClassStatictics classStatictics:classStaticticsList){
                classStaticticsMapper.updateExamClassStatictics(classStatictics);
            }
        }

        //年级数据排名和年级成绩概要
        ExamGradeStatistic examGradeStatistic;
        ExamGradeSummary gradeSummary;
        List<Map<String,String>> grades = gradeStatisticMapper.selectDistinctGrade(examId);
        for (Map<String,String> grade: grades){
            examGradeStatistic = new ExamGradeStatistic();
            examGradeStatistic.setExamId(examId);
            examGradeStatistic.setGrade(grade.get("grade"));
            List<ExamGradeStatistic> gradeStatisticList = gradeStatisticMapper.selectGradeMuitipleRank(examGradeStatistic);
            for (ExamGradeStatistic gradeStatistic: gradeStatisticList){
                gradeStatisticMapper.updateExamGradeStatistic(gradeStatistic);
            }
            //统计不同年级 年级成绩概要
            this.saveGradeSummaryByGradeSubjectExamId(grade.get("grade"), "语文","chinese_score",examId);
            this.saveGradeSummaryByGradeSubjectExamId(grade.get("grade"), "数学","maths_score",examId);
            if (!"一年级".equals(grade.get("grade")) && !"二年级".equals(grade.get("grade"))){
                this.saveGradeSummaryByGradeSubjectExamId(grade.get("grade"), "英语","english_score",examId);
            }

        }
        //计算并更新学生分数的标准差
        List<ExamStudentScores> studentScoresList = studentScoresMapper.selectExamStudentScoresByExamId(examId);
        for (ExamStudentScores studentScore: studentScoresList){
            studentScore.setChineseDeviationRate(ExamsServiceImpl.calculateDeviationRate(studentScore.getChineseScore(),this.getAverageScoreInGradeSummary(examId,studentScore.getGrade(),"语文")));
            studentScore.setMathsDeviationRate(ExamsServiceImpl.calculateDeviationRate(studentScore.getMathsScore(),this.getAverageScoreInGradeSummary(examId,studentScore.getGrade(),"数学")));
            studentScore.setEnglishDeviationRate(ExamsServiceImpl.calculateDeviationRate(studentScore.getEnglishScore(),this.getAverageScoreInGradeSummary(examId,studentScore.getGrade(),"英语")));
            studentScore.setTotalDeviationRate(ExamsServiceImpl.calculateTotalDeviationRate(studentScore.getChineseDeviationRate(),studentScore.getMathsDeviationRate(),studentScore.getEnglishDeviationRate()));
            studentScoresMapper.updateExamStudentScores(studentScore);
        }
        return gradeClasses;
    }

    @Override
    public Exams selectExamsEnabled() {
        return examsMapper.selectExamsEnabled();
    }

    /**
     *  根据年级、班级、学科、考试ID来统计成绩
     *
     * @param grade 年级
     * @param classes 班级
     * @param subject 学科
     * @param examId 考试ID
     */
    private void saveClassesStatistics(String grade,String classes,String subject,String subjectName, Long examId){
        ExamClassStatictics examClassStatictics = new ExamClassStatictics();
        //设置年级 班级和 考试ID 方便下面的查询插入
        examClassStatictics.setGrade(grade);
        examClassStatictics.setClasses(classes);
        examClassStatictics.setExamId(examId);

        //下面给考试成绩班级统计设置学科和对应的优秀分数线
        ExamExcellentScoreLine examExcellentScoreLine = this.getExcellentScoreLineByGradeSubject(grade,subject,examId);
        examClassStatictics.setExcellentLine(examExcellentScoreLine.getExcellentScore());
        examClassStatictics.setFullLine(examExcellentScoreLine.getFullScore().longValue());
        examClassStatictics.setGoodLine(examExcellentScoreLine.getGoodScore().longValue());
        examClassStatictics.setQualifiedLine(examExcellentScoreLine.getQualifiedScore().longValue());
        examClassStatictics.setUnqualifiedOneLine(examExcellentScoreLine.getUnqualifiedOneScore().longValue());
        examClassStatictics.setUnqualifiedTwoLine(examExcellentScoreLine.getUnqualifiedTwoScore().longValue());
        examClassStatictics.setUnqualifiedThreeLine(examExcellentScoreLine.getUnqualifiedThreeScore().longValue());
        examClassStatictics.setUnqualifiedFourLine(examExcellentScoreLine.getUnqualifiedFourScore().longValue());

        examClassStatictics.setSubjectName(subjectName);
        examClassStatictics.setSubject(subject);
        ExamMuitipleCalculation examMuitipleCalculation;
        if (redisCache.hasKey("multipleCalculation1")){
            examMuitipleCalculation = redisCache.getCacheObject("multipleCalculation1");
        } else {
            examMuitipleCalculation = muitipleCalculationMapper.getExamMuitipleCalculationById(1);
            redisCache.setCacheObject("multipleCalculation1",examMuitipleCalculation);
        }
        examClassStatictics.setExcellentAgent(String.valueOf(examMuitipleCalculation.getExcellent() * 0.01));
        examClassStatictics.setQualifiedAgent(String.valueOf(examMuitipleCalculation.getQualified() * 0.01));
        examClassStatictics.setAverageAgent(String.valueOf(examMuitipleCalculation.getAverage() * 0.01));
        //获取对应的记录
        examClassStatictics = classStaticticsMapper.calculateClassStatistics(examClassStatictics);
        examClassStatictics.setSubject(subject);
        //如果结果是null就是新增，如果不是，就是更新
        ExamClassStatictics ecs = classStaticticsMapper.selectExamClassStatictics(examClassStatictics);
        if (null == ecs){
            classStaticticsMapper.insertExamClassStatictics(examClassStatictics);
        }else {
            examClassStatictics.setExamStatisticsId(ecs.getExamStatisticsId());
            classStaticticsMapper.updateExamClassStatictics(examClassStatictics);
        }

    }

    /**
     * 根据年级、班级、考试ID来统计年级数据
     *
     * @param grade 年级
     * @param classes 班级
     * @param examId 考试ID
     */
    private void saveGradeStatistics(String grade,String classes,Long examId){
        ExamGradeStatistic examGradeStatistic = new ExamGradeStatistic();
        //设置年级 班级和 考试ID 方便下面的查询插入
        examGradeStatistic.setGrade(grade);
        examGradeStatistic.setClasses(classes);
        examGradeStatistic.setExamId(examId);
        //开始分步获取优秀分数
        ExamExcellentScoreLine examExcellentScoreLine = this.getExcellentScoreLineByGradeSubject(grade,"语文",examId);
        examGradeStatistic.setExcellentLineChinese(examExcellentScoreLine.getExcellentScore());
        examGradeStatistic.setFullLineChinese(examExcellentScoreLine.getFullScore().longValue());
        examGradeStatistic.setQualifiedLineChinese(examExcellentScoreLine.getQualifiedScore().longValue());

        examExcellentScoreLine = this.getExcellentScoreLineByGradeSubject(grade,"数学",examId);
        examGradeStatistic.setExcellentLineMath(examExcellentScoreLine.getExcellentScore());
        examGradeStatistic.setFullLineMath(examExcellentScoreLine.getFullScore().longValue());
        examGradeStatistic.setQualifiedLineMath(examExcellentScoreLine.getQualifiedScore().longValue());

        ExamMuitipleCalculation examMuitipleCalculation;
        if (redisCache.hasKey("multipleCalculation2")){
            examMuitipleCalculation = redisCache.getCacheObject("multipleCalculation2");
        } else {
            examMuitipleCalculation = muitipleCalculationMapper.getExamMuitipleCalculationById(2);
            redisCache.setCacheObject("multipleCalculation2",examMuitipleCalculation);
        }
        examGradeStatistic.setExcellentAgent(String.valueOf(examMuitipleCalculation.getExcellent() * 0.01));
        examGradeStatistic.setQualifiedAgent(String.valueOf(examMuitipleCalculation.getQualified() * 0.01));
        examGradeStatistic.setAverageAgent(String.valueOf(examMuitipleCalculation.getAverage() * 0.01));
        if (!"一年级".equals(grade) && !"二年级".equals(grade)){
            examExcellentScoreLine = this.getExcellentScoreLineByGradeSubject(grade,"英语",examId);
            examGradeStatistic.setExcellentLineEnglish(examExcellentScoreLine.getExcellentScore());
            examGradeStatistic.setFullLineEnglish(examExcellentScoreLine.getFullScore().longValue());
            examGradeStatistic.setQualifiedLineEnglish(examExcellentScoreLine.getQualifiedScore().longValue());
            //得出三优
            examGradeStatistic = gradeStatisticMapper.calculateExamGradeStatisticFourGrade(examGradeStatistic);
        } else {
            //得出双优
            examGradeStatistic = gradeStatisticMapper.calculateExamGradeStatisticTwoGrade(examGradeStatistic);
        }
        ExamGradeStatistic egs = gradeStatisticMapper.selectExamGradeStatistic(examGradeStatistic);
        if (null == egs){
            gradeStatisticMapper.insertExamGradeStatistic(examGradeStatistic);
        }else {
            examGradeStatistic.setExamGradeStatisticsId(egs.getExamGradeStatisticsId());
            gradeStatisticMapper.updateExamGradeStatistic(examGradeStatistic);
        }

    }

    /**
     * 获取优秀分数线
     *
     * @param grade 年级
     * @param subject 学科
     * @return 优秀分数线 Long
     */
    public ExamExcellentScoreLine getExcellentScoreLineByGradeSubject(String grade, String subject,Long examId){
        ExamExcellentScoreLine examExcellentScoreLine = new ExamExcellentScoreLine();
        examExcellentScoreLine.setGrade(grade);
        examExcellentScoreLine.setSubject(subject);
        examExcellentScoreLine.setExamId(examId);
        examExcellentScoreLine = scoreLineMapper.selectExamExcellentScoreLine(examExcellentScoreLine);
        if (null == examExcellentScoreLine){
            throw new ServiceException(grade + "没有设置" + subject + "优秀分数线");
        }
        return examExcellentScoreLine;
    }

    /**
     * 通过考试ID，年级，学科，优秀分数线计算年级成绩概要
     *
     * @param grade 年级
     * @param subject 学科
     * @param subjectName 优秀分数线
     * @param examId 考试ID
     */
    public void saveGradeSummaryByGradeSubjectExamId(String grade,String subject,String subjectName, Long examId){
        ExamGradeSummary gradeSummary = new ExamGradeSummary();
        gradeSummary.setExamId(examId);
        gradeSummary.setGrade(grade);
        gradeSummary.setSubject(subject);
        gradeSummary.setSubjectName(subjectName);
        ExamExcellentScoreLine excellentScoreLine = this.getExcellentScoreLineByGradeSubject(grade,subject,examId);
        gradeSummary.setExcellentLine(excellentScoreLine.getExcellentScore());
        gradeSummary.setQualifiedLine(excellentScoreLine.getQualifiedScore().longValue());
        gradeSummary = gradeSummaryMapper.calculateGradeSummaryByGradeSubjectExamId(gradeSummary);
        if (null == gradeSummary.getExamTotalNumbers()){
            return;
        }
        //数据库查找没有学科，以及可能查找为空的情况，所以再次设置学科、年级、考试ID
        gradeSummary.setSubject(subject);
        gradeSummary.setExamId(examId);
        gradeSummary.setGrade(grade);
        ExamGradeSummary egs = gradeSummaryMapper.selectExamGradeSummary(gradeSummary);
        if (null == egs){
            gradeSummaryMapper.insertExamGradeSummary(gradeSummary);
        }else {
            gradeSummary.setExamGradeSummaryId(egs.getExamGradeSummaryId());
            gradeSummaryMapper.updateExamGradeSummary(gradeSummary);
        }
    }

    /**
     * 从学生分数中计算学生的标准差
     *
     * @param studentScore 学生分数
     * @param averageScore 年级均分
     * @return 偏差率
     */
    public static BigDecimal calculateDeviationRate(BigDecimal studentScore, String averageScore){
        if (null == studentScore || null == averageScore){
            return null;
        }
        BigDecimal average = BigDecimal.valueOf(Double.parseDouble(averageScore));
        BigDecimal differ = studentScore.subtract(average);
        BigDecimal deviation = differ.divide(average,4, RoundingMode.HALF_UP);
        //(分数-均分)/均分 * 100 格式化返回2个小数点的数
        return deviation.multiply(BigDecimal.valueOf(100));
    }

    /**
     *
     * @param chineseDeviation 语文偏差率
     * @param mathsDeviation 数学偏差率
     * @param englishDeviation 英语偏差率
     * @return 总偏差率
     */
    public static BigDecimal calculateTotalDeviationRate(BigDecimal chineseDeviation, BigDecimal mathsDeviation, BigDecimal englishDeviation){
        BigDecimal totalDeviation = BigDecimal.ZERO;
        if (null != chineseDeviation){
            totalDeviation = totalDeviation.add(chineseDeviation);
        }
        if (null != mathsDeviation){
            totalDeviation = totalDeviation.add(mathsDeviation);
        }
        if (null != englishDeviation){
            totalDeviation = totalDeviation.add(englishDeviation);
        }
        return totalDeviation;
    }

    public String getAverageScoreInGradeSummary(Long examId, String grade, String subject){
        ExamGradeSummary examGradeSummary = new ExamGradeSummary();
        examGradeSummary.setExamId(examId);
        examGradeSummary.setGrade(grade);
        examGradeSummary.setSubject(subject);
        ExamGradeSummary subjectExamGradeSummary = gradeSummaryMapper.selectExamGradeSummary(examGradeSummary);
        if (null != subjectExamGradeSummary){
            return subjectExamGradeSummary.getGradeAverageScore();
        }
        return null;
    }


}
