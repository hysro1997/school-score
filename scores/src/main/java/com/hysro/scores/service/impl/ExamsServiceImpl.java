package com.hysro.scores.service.impl;

import com.hysro.scores.domain.*;
import com.hysro.scores.mapper.*;
import com.hysro.scores.service.IExamsService;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    public int insertExams(Exams exams)
    {
        exams.setCreateTime(DateUtils.getNowDate());
        String operName = SecurityUtils.getUsername();
        if (null == exams.getExamName() || "".equals(exams.getExamName())){
            return 0;
        }
        exams.setCreateBy(operName);
        return examsMapper.insertExams(exams);
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

    /**
     * 批量删除各种考试
     *
     * @param examIds 需要删除的各种考试主键
     * @return 结果
     */
    @Override
    public int deleteExamsByExamIds(Long[] examIds)
    {
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

        //开始分步获取优秀分数
        ExamExcellentScoreLine examExcellentScoreLine = new ExamExcellentScoreLine();
        examExcellentScoreLine.setGrade(grade);
        examExcellentScoreLine.setSubject(subject);
        examExcellentScoreLine = scoreLineMapper.selectExamExcellentScoreLine(examExcellentScoreLine);
        if (null == examExcellentScoreLine){
            throw new ServiceException(grade + "没有设置" + subject + "优秀分数线");
        }
        //下面给考试成绩班级统计设置学科和对应的优秀分数线
        examClassStatictics.setExcellentLine(examExcellentScoreLine.getExcellentScore());
        examClassStatictics.setSubjectName(subjectName);
        examClassStatictics.setSubject(subject);
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
        Long chineseScore = this.getExcellentScoreLineByGradeSubject(grade,"语文");
        examGradeStatistic.setExcellentLineChinese(chineseScore);
        Long mathScore = this.getExcellentScoreLineByGradeSubject(grade,"数学");
        examGradeStatistic.setExcellentLineMath(mathScore);
        if (!"一年级".equals(grade) && !"二年级".equals(grade)){
            Long englishScore = this.getExcellentScoreLineByGradeSubject(grade,"英语");
            examGradeStatistic.setExcellentLineEnglish(englishScore);
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
    public Long getExcellentScoreLineByGradeSubject(String grade, String subject){
        ExamExcellentScoreLine examExcellentScoreLine = new ExamExcellentScoreLine();
        examExcellentScoreLine.setGrade(grade);
        examExcellentScoreLine.setSubject(subject);
        return scoreLineMapper.selectExamExcellentScoreLine(examExcellentScoreLine).getExcellentScore();
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
        gradeSummary.setExcellentLine(this.getExcellentScoreLineByGradeSubject(grade,subject));
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


}
