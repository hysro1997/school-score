package com.hysro.scores.service;


import com.hysro.scores.domain.ClassesStatisticEchartsHelper;
import com.hysro.scores.domain.ExamClassStatictics;

import java.util.ArrayList;
import java.util.Map;

/**
 * 图表使用的Echarts的Service接口
 *
 * @author hysro
 * @date 2023-03-31
 */
public interface IInfoForEchartsService {

    /**
     * 获取年级中各班级各学科排名数据情况
     *
     * @param classStatictics 班级数据
     * @param rankType 排名类别
     * @return 结果
     */
    public ClassesStatisticEchartsHelper getClassStatisticForEcharts(ExamClassStatictics classStatictics, int rankType);

    /**
     * 根据考试ID，年级、班级，获取这个班级历史上所有考试的排名情况
     *
     * @param classStatictics 考试ID，年级、班级
     * @param rankType 平均分或者综合分
     * @return 结果
     */
    public ArrayList<ClassesStatisticEchartsHelper> getClassHistoryStatisticRateForEcharts(ExamClassStatictics classStatictics, int rankType);
}
