package com.hysro.scores.service.impl;

import java.text.DecimalFormat;
import java.util.List;
import java.util.Map;

import com.hysro.scores.domain.*;
import com.hysro.scores.mapper.*;
import com.ruoyi.common.core.redis.RedisCache;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hysro.scores.service.IExamsService;
import org.springframework.transaction.annotation.Transactional;

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
    private ExamStudentScoresMapper studentScoresMapper;
    @Autowired
    private ExamExcellentScoreLineMapper scoreLineMapper;
    @Autowired
    private ExamClassStaticticsMapper classStaticticsMapper;
    @Autowired
    private ExamGradeStatisticMapper gradeStatisticMapper;

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
        if (null != exams.getEnableFlag() && "0"==exams.getEnableFlag()){
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
     * 统计考试数据
     *
     * @param exams 考试的主键
     * @return 结果
     */
    @Override
    @Transactional
    public List<Map<String, String>> calculateStatisticExams(Exams exams) {

        //根据考试ID清空已存在的统计
        classStaticticsMapper.deleteExamClassStaticticsByExamId(exams.getExamId());
        gradeStatisticMapper.deleteExamGradeStaticticsByExamId(exams.getExamId());

        //获取年级、班级
        List<Map<String,String>> gradeClassMap = studentScoresMapper.selectDistinctClassesMapByExamId(exams.getExamId());
        if (gradeClassMap.isEmpty()){
            //这里直接抛出空的，给前端判断处理，节省服务器资源
            return gradeClassMap;
        }
        //如果不是空的，就开始统计数据
        //System.out.println(gradeClassMap.toString());
        ExamStudentScores studentScores;
        ExamExcellentScoreLine scoreLine;
        ExamClassStatictics classStatictics;
        ExamScoreLineHelper examScoreLineHelper;
        ExamGradeStatistic examGradeStatistic;
        //获取到 年级 语文 数学 英语
        List<ExamStatisticScoreLineHelper> statisticScoreLineHelperList = scoreLineMapper.selectAllSubjectScoreLinesByGrade();
        if (statisticScoreLineHelperList.isEmpty()){
            gradeClassMap.clear();
            return gradeClassMap;
        }

        DecimalFormat df = new DecimalFormat("0.00");
        for (Map<String,String> gradeClass :gradeClassMap){
            studentScores = new ExamStudentScores();
            studentScores.setGrade(gradeClass.get("grade"));
            studentScores.setClasses(gradeClass.get("classes"));
            //获取了需要统计的这一个班级的成绩的年级和班级，开始根据年级、班级、考试id开始统计
            //先根据年级条件来获取优秀分数线，如果没有，直接清空map并抛出给前端
            scoreLine = new ExamExcellentScoreLine();
            scoreLine.setGrade(gradeClass.get("grade"));

            //获取了优秀分数线 年级、学科、优秀分数线
            List<ExamExcellentScoreLine> scoreLineList = scoreLineMapper.selectExamExcellentScoreLineList(scoreLine);

            if (scoreLineList.isEmpty()){
                gradeClassMap.clear();
                return gradeClassMap;
            }
            //不是空的，有数据，我们就继续根据年级、班级、学科优秀分数线开始统计优秀
            for (ExamExcellentScoreLine excellentScoreLine: scoreLineList){
                studentScores.setSubject(excellentScoreLine.getSubject());
                classStatictics = new ExamClassStatictics();
                //获取到了当前班级某一学科的考试人数、总分
                classStatictics = studentScoresMapper.selectExamNumbersAndTotalScores(studentScores);

                classStatictics.setExamId(exams.getExamId());
                //计算平均分
                Double average = Double.parseDouble(classStatictics.getTotalScore())/(classStatictics.getExamNumbers());
                classStatictics.setAverageScore(df.format(average));
                //接下来要数满分，优秀人数，良好，合格，四种不合格
                examScoreLineHelper = new ExamScoreLineHelper(gradeClass.get("grade"),gradeClass.get("classes"),excellentScoreLine.getSubject(),exams.getExamId());
                //先是满分
                examScoreLineHelper.setUnderLine(ExamScoreLineEnum.FULL_MARK.getUnderLine());
                classStatictics.setFullSocreNumbers(studentScoresMapper.selectScoreNumbersByScoreLine(examScoreLineHelper));

                //接下来是优秀 假优秀人数-满分人数
                examScoreLineHelper.setUnderLine(excellentScoreLine.getExcellentScore().intValue());
                //假优秀人数
                Long fExcellentNums = studentScoresMapper.selectScoreNumbersByScoreLine(examScoreLineHelper);
                classStatictics.setExcellentNumbers(fExcellentNums-classStatictics.getFullSocreNumbers());

                //计算优秀率
                double excellentPercentage = (double)fExcellentNums/(double)classStatictics.getExamNumbers()*100;
                classStatictics.setExcellentPercentage(df.format(excellentPercentage));

                //良好人数 假良好人数-假优秀人数
                examScoreLineHelper.setUnderLine(ExamScoreLineEnum.GOOD_LINE.getUnderLine());
                Long fGoodNums = studentScoresMapper.selectScoreNumbersByScoreLine(examScoreLineHelper);
                classStatictics.setGoodNumbers(fGoodNums-fExcellentNums);

                //合格人数 假合格人数-假良好人数
                examScoreLineHelper.setUnderLine(ExamScoreLineEnum.QUALIFIED_LINE.getUnderLine());
                Long fQualifiedNums = studentScoresMapper.selectScoreNumbersByScoreLine(examScoreLineHelper);
                classStatictics.setQualifiedNumbers(fQualifiedNums-fGoodNums);

                //计算合格率
                classStatictics.setQualifiedPercentage(df.format((double)fQualifiedNums/(double)classStatictics.getExamNumbers()*100));

                //55-59 假55-59-假合格
                examScoreLineHelper.setUnderLine(ExamScoreLineEnum.UNQUALIFIED_HEIGH_LINE.getUnderLine());
                Long fUnqualifiedHeigh = studentScoresMapper.selectScoreNumbersByScoreLine(examScoreLineHelper);
                classStatictics.setUnqualifiedOneNumbers(fUnqualifiedHeigh-fQualifiedNums);

                //50-54 假50-54-假55-59
                examScoreLineHelper.setUnderLine(ExamScoreLineEnum.UNQUALIFIED_MEDIUM_LINE.getUnderLine());
                Long fUnqualifiedMedium = studentScoresMapper.selectScoreNumbersByScoreLine(examScoreLineHelper);
                classStatictics.setUnqualifiedTwoNumbers(fUnqualifiedMedium-fUnqualifiedHeigh);

                //40-49 假40-49-假50-54
                examScoreLineHelper.setUnderLine(ExamScoreLineEnum.UNQUALIFIED_LOW_LINE.getUnderLine());
                Long fUnqualifiedLow = studentScoresMapper.selectScoreNumbersByScoreLine(examScoreLineHelper);
                classStatictics.setUnqualifiedThreeNumbers(fUnqualifiedLow-fUnqualifiedMedium);

                //40以下 假40以下-假合格
                examScoreLineHelper.setUnderLine(ExamScoreLineEnum.UNQUALIFIED_UNQUALIFIED.getUnderLine());
                Long fUnqualifiedUnqualified = studentScoresMapper.selectScoreNumbersByScoreLine(examScoreLineHelper);
                classStatictics.setUnqualifiedFourNumbers(fUnqualifiedUnqualified-fUnqualifiedLow);

                //求这个班这门学科的综合分
                classStatictics.setMutipleScore(df.format(Double.parseDouble(classStatictics.getAverageScore())*0.4+Double.parseDouble(classStatictics.getQualifiedPercentage())*0.3+Double.parseDouble(classStatictics.getExcellentPercentage())*0.3));
                //插入数据，等班级数据插入完成后计算排名
                classStaticticsMapper.insertExamClassStatictics(classStatictics);
            }

        }

        for (ExamStatisticScoreLineHelper statisticScoreLineHelper : statisticScoreLineHelperList){
            for (Map<String,String> gradeClass :gradeClassMap){
                //如果各学科分数线的年级和数据的年级匹配，就进入统计班级的数据
                if (statisticScoreLineHelper.getGrade().equals(gradeClass.get("grade"))){
                    //设置班级
                    statisticScoreLineHelper.setClasses(gradeClass.get("classes"));
                    statisticScoreLineHelper.setExamId(exams.getExamId());
                    examGradeStatistic = new ExamGradeStatistic();
                    //设置班级 考试ID 年级
                    examGradeStatistic.setClasses(statisticScoreLineHelper.getClasses());
                    examGradeStatistic.setExamId(exams.getExamId());
                    examGradeStatistic.setGrade(statisticScoreLineHelper.getGrade());
                    //设置3优人数
                    examGradeStatistic.setTripleExcellentNumbers(studentScoresMapper.countQualifiedNumbersByStatisticScoreLineHelper(statisticScoreLineHelper));
                    //设置3合格人数
                    statisticScoreLineHelper.setChineseLine(60L);
                    statisticScoreLineHelper.setMathsLine(60L);
                    //如果不是一二年级，就加个英语
                    if (!"一年级".equals(statisticScoreLineHelper.getGrade())&&!"二年级".equals(statisticScoreLineHelper.getGrade())){
                        statisticScoreLineHelper.setEnglishLine(60L);
                        examGradeStatistic.setTripleQualifiedNumbers(studentScoresMapper.countQualifiedNumbersByStatisticScoreLineHelper(statisticScoreLineHelper));
                    }else {
                        examGradeStatistic.setTripleQualifiedNumbers(studentScoresMapper.countQualifiedNumbersByStatisticScoreLineHelper(statisticScoreLineHelper));
                    }
                    //设置3都是0分人数，即考试人数
                    statisticScoreLineHelper.setChineseLine(0L);
                    statisticScoreLineHelper.setMathsLine(0L);
                    if (!"一年级".equals(statisticScoreLineHelper.getGrade())&&!"二年级".equals(statisticScoreLineHelper.getGrade())){
                        statisticScoreLineHelper.setEnglishLine(0L);
                        examGradeStatistic.setExamNumbers(studentScoresMapper.countQualifiedNumbersByStatisticScoreLineHelper(statisticScoreLineHelper));
                    }else {
                        examGradeStatistic.setExamNumbers(studentScoresMapper.countQualifiedNumbersByStatisticScoreLineHelper(statisticScoreLineHelper));
                    }
                    //下面计算三优率
                    examGradeStatistic.setTripleExcellentPercentage(df.format(examGradeStatistic.getTripleExcellentNumbers() / examGradeStatistic.getExamNumbers()));
                    //下面计算3合格率
                    examGradeStatistic.setTripleQualifiedPercentage(df.format(examGradeStatistic.getTripleQualifiedNumbers() / examGradeStatistic.getExamNumbers()));
                    //计算总得分和得分率
                    classStatictics = new ExamClassStatictics();
                    classStatictics.setGrade(statisticScoreLineHelper.getGrade());
                    classStatictics.setClasses(statisticScoreLineHelper.getClasses());
                    classStatictics.setExamId(exams.getExamId());
                    List<ExamClassStatictics> list = classStaticticsMapper.selectExamClassStaticticsList(classStatictics);
                    double totalScore = 0d;
                    int examerNumber = 0;
                    for (ExamClassStatictics single : list){
                        totalScore = totalScore + Double.parseDouble(single.getTotalScore());
                        examerNumber += single.getExamNumbers();
                    }
                    examGradeStatistic.setAllScore( String.valueOf(totalScore));
                    examGradeStatistic.setAllScorePercentage(df.format(Double.parseDouble(examGradeStatistic.getAllScore()) / (list.size()*100*examerNumber)));

                    //计算综合分
                    examGradeStatistic.setMuitipleScore(df.format(Double.parseDouble(examGradeStatistic.getAllScorePercentage())*0.4+Double.parseDouble(examGradeStatistic.getTripleExcellentPercentage())*0.3+Double.parseDouble(examGradeStatistic.getTripleQualifiedPercentage())*0.3));
                    //插入数据
                    gradeStatisticMapper.insertExamGradeStatistic(examGradeStatistic);
                }
            }
        }



        //本次考试有几个年级场次几个学科
        List<Map<String,String>> gradeSubjectMap = studentScoresMapper.selectDistinctGradeSubjectMapByExamId(exams.getExamId());
        //完成每个年级每门学科的排名分析
        for (Map<String,String> gradeSubject :gradeSubjectMap) {
            classStatictics = new ExamClassStatictics();
            classStatictics.setExamId(exams.getExamId());
            classStatictics.setGrade(gradeSubject.get("grade"));
            classStatictics.setSubject(gradeSubject.get("subject"));
            //通过sql获取到了这个年纪，这门学科的班级排名情况
            List<ExamClassStatictics> examClassStaticticsList =classStaticticsMapper.selectExamClassSubjectRateList(classStatictics);
            //把排名情况，根据统计数据id更新数据
            for (ExamClassStatictics examClassStatictics:examClassStaticticsList){
                classStaticticsMapper.updateExamClassStatictics(examClassStatictics);
            }

        }

        return gradeClassMap;
    }
}
