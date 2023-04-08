package com.hysro.scores.service;


import com.hysro.scores.domain.ClassesStatisticEchartsHelper;
import com.hysro.scores.domain.ExamClassStatictics;

/**
 * 图表使用的Echarts的Service接口
 *
 * @author hysro
 * @date 2023-03-31
 */
public interface IInfoForEchartsService {

    public ClassesStatisticEchartsHelper getClassStatisticForEcharts(ExamClassStatictics classStatictics, int rankType);
}
