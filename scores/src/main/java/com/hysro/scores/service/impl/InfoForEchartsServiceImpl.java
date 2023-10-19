package com.hysro.scores.service.impl;

import com.hysro.scores.domain.ClassesStatisticEchartsHelper;
import com.hysro.scores.domain.ExamClassStatictics;
import com.hysro.scores.domain.Exams;
import com.hysro.scores.mapper.ExamClassStaticticsMapper;
import com.hysro.scores.mapper.ExamsMapper;
import com.hysro.scores.service.IInfoForEchartsService;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 图表使用的Echarts的Service业务层处理
 *
 * @author hysro
 * @date 2023-03-31
 */
@Service
public class InfoForEchartsServiceImpl implements IInfoForEchartsService {
    @Autowired
    private ExamClassStaticticsMapper examClassStaticticsMapper;
    @Autowired
    private ExamsMapper examsMapper;

    private static final String[] GRADES = {"一年级","二年级","三年级","四年级","五年级","六年级"};
    private static final int MULTIPLE_RANK_TYPE = 0;
    private static final int MONTH_NINE = 9;
    private static final String SCHOOL_YEAR_BEGIN = "-09-01";
    private static final String SCHOOL_YEAR_END = "-08-31";

    @Override
    public ClassesStatisticEchartsHelper getClassStatisticForEcharts(ExamClassStatictics classStatictics, int rankType) {

        ClassesStatisticEchartsHelper helper = new ClassesStatisticEchartsHelper();
        //设置这个年级的学科
        helper.setSubjects(examClassStaticticsMapper.selectSubjectsByExamIdAndGrade(classStatictics));
        if (null==helper.getSubjects()){
            return null;
        }
        //设置这个年级数据的班级数组
        helper.setClasses(examClassStaticticsMapper.selectClassesRateByExamIdAndGrade(classStatictics));

        //根据学科获取学科数据
        for (String subject: helper.getSubjects()){
            classStatictics.setSubject(subject);
            //0综合分 1平均分
            if (MULTIPLE_RANK_TYPE == rankType){
                if ("语文".equals(subject)){
                    helper.setChineseRates(examClassStaticticsMapper.selectClassesSubjectRateMuitipleRankByExamIdAndGrade(classStatictics));
                } else if ("数学".equals(subject)){
                    helper.setMathsRates(examClassStaticticsMapper.selectClassesSubjectRateMuitipleRankByExamIdAndGrade(classStatictics));
                } else if ("英语".equals(subject)){
                    helper.setEnglishRates(examClassStaticticsMapper.selectClassesSubjectRateMuitipleRankByExamIdAndGrade(classStatictics));
                }
            } else {
                if ("语文".equals(subject)){
                    helper.setChineseRates(examClassStaticticsMapper.selectClassesSubjectRateAvgRankByExamIdAndGrade(classStatictics));
                } else if ("数学".equals(subject)){
                    helper.setMathsRates(examClassStaticticsMapper.selectClassesSubjectRateAvgRankByExamIdAndGrade(classStatictics));
                } else if ("英语".equals(subject)){
                    helper.setEnglishRates(examClassStaticticsMapper.selectClassesSubjectRateAvgRankByExamIdAndGrade(classStatictics));
                }
            }

        }
        return helper;
    }

    @Override
    public ArrayList<ClassesStatisticEchartsHelper> getClassHistoryStatisticRateForEcharts(ExamClassStatictics classStatictics, int rankType) {
        classStatictics.setSubjectName(MULTIPLE_RANK_TYPE == rankType ? "muitiple_rank" : "average_rank");
        Exams exams = examsMapper.selectExamsByExamId(classStatictics.getExamId());
        ArrayList<ClassesStatisticEchartsHelper> resultList = new ArrayList<>();
        //对获取到的考试时间进行处理，得到这个班级入学的时间
        int registerYear = getRegisterYear(DateUtils.dateTime(exams.getCreateTime()), toNumberGrade(classStatictics.getGrade()));
        //依次获取一到六年级的年份范围，并查询对应的排名数据
        for (String grade : GRADES) {
            classStatictics.setGrade(grade);
            classStatictics.setSubjectName2(registerYear + SCHOOL_YEAR_BEGIN);
            classStatictics.setSubjectName3(++registerYear + SCHOOL_YEAR_END);
            List<ClassesStatisticEchartsHelper> temps = examClassStaticticsMapper.selectRatesByGradeClassesExamTimeOrderType(classStatictics);
            resultList.addAll(temps);
        }
        return resultList;
    }

    /**
     * 计算出入学年份
     *
     * @param nowDate 考试时间
     * @param grade 年级
     * @return 入学年份
     */
    private static int getRegisterYear(String nowDate, int grade){
        int year = Integer.parseInt(nowDate.substring(0,4));
        int month = Integer.parseInt(nowDate.substring(5,7));
        if (MONTH_NINE > month){
            return year - grade;
        } else {
            return year - grade + 1;
        }
    }

    /**
     * 将年级转化为数字1-6
     *
     * @param grade 年级
     * @return 对应数字
     */
    private static int toNumberGrade(String grade){
        switch (grade){
            case "一年级":
                return 1;
            case "二年级":
                return 2;
            case "三年级":
                return 3;
            case "四年级":
                return 4;
            case "五年级":
                return 5;
            case "六年级":
                return 6;
            default:
                throw new ServiceException("无效年级");
        }
    }

}
