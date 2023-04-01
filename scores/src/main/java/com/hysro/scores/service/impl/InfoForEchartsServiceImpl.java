package com.hysro.scores.service.impl;

import com.hysro.scores.domain.ClassesStatisticEchartsHelper;
import com.hysro.scores.domain.ExamClassStatictics;
import com.hysro.scores.mapper.ExamClassStaticticsMapper;
import com.hysro.scores.service.IInfoForEchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    @Override
    public ClassesStatisticEchartsHelper getClassStatisticForEcharts(ExamClassStatictics classStatictics) {

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
            if ("语文".equals(subject)){
                helper.setChineseRates(examClassStaticticsMapper.selectClassesSubjectRateByExamIdAndGrade(classStatictics));
            } else if ("数学".equals(subject)){
                helper.setMathsRates(examClassStaticticsMapper.selectClassesSubjectRateByExamIdAndGrade(classStatictics));
            } else if ("英语".equals(subject)){
                helper.setEnglishRates(examClassStaticticsMapper.selectClassesSubjectRateByExamIdAndGrade(classStatictics));
            }
        }
        return helper;
    }
}
