package com.hysro.scores.controller;

import com.hysro.scores.domain.ExamClassStatictics;
import com.hysro.scores.service.IInfoForEchartsService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 为echarts图表准备数据的controller
 *
 * @author hysro
 * @date 2023-3-31
 */
@RestController
@RequestMapping("/echarts")
public class InfoForEchartsController extends BaseController {

    @Autowired
    private IInfoForEchartsService iInfoForEchartsService;

    /**
     * 根据考试ID和年级查询对应的班级数据给Echarts使用
     */
    @GetMapping("/getStaticticsclass")
    public AjaxResult getInfoForEcharts(ExamClassStatictics classStatictics, int rankType){
        if (null == classStatictics.getExamId()){
            return warn("没有选择考试");
        }
        if (null == classStatictics.getGrade()){
            return warn("没有选择年级");
        }
        return success(iInfoForEchartsService.getClassStatisticForEcharts(classStatictics, rankType));
    }

    /**
     * 根据考试ID和年级查询对应的班级历史排名数据给Echarts使用
     */
    @GetMapping("/getClassesHistoryRate")
    public AjaxResult getClassesHistoryRate(ExamClassStatictics classStatictics, int rankType){
        if (null == classStatictics.getExamId()){
            return warn("没有选择考试");
        }
        if (null == classStatictics.getGrade()){
            return warn("没有选择年级");
        }
        if (null == classStatictics.getClasses()){
            return warn("没有选择班级");
        }
        if (null == classStatictics.getSubject()){
            return warn("没有选择学科");
        }
        return success(iInfoForEchartsService.getClassHistoryStatisticRateForEcharts(classStatictics, rankType));
    }
}
