package com.hysro.scores.controller;

import com.hysro.scores.domain.ExamTempScores;
import com.hysro.scores.service.IExamTempScoresService;
import com.hysro.scores.service.IExamsService;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.DateUtils;
import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;

/**
 * 临时分数表controller
 *
 * @author hysro
 * @date 2023-05-05
 */
@RestController
@RequestMapping("/scores/inpution")
public class ExamTempScoresController extends BaseController {
    @Autowired
    private IExamTempScoresService scoresService;
    @Autowired
    private IExamsService examsService;

    @GetMapping("/getTodayDate")
    @PreAuthorize("@ss.hasPermi('scores:inpution:index')")
    public AjaxResult getTodayDate(){
        return success(DateUtils.getDate());
    }

    @PostMapping("/addExamTempScores")
    @PreAuthorize("@ss.hasPermi('scores:inpution:add')")
    @Log(title = "临时分数", businessType = BusinessType.INSERT)
    public AjaxResult addExamTempScores(@RequestBody@Valid ArrayList<ExamTempScores> scores){
        if (1 != examsService.countExamsEnables()){
            return AjaxResult.error("当前考试尚未启用");
        }
        Long examId = examsService.selectExamsEnabled().getExamId();
        return success(scoresService.addExamTempScores(scores,examId));
    }

    @PostMapping("/checkAlready")
    @PreAuthorize("@ss.hasPermi('scores:inpution:index')")
    public AjaxResult checkAlready(@RequestBody ExamTempScores scores){
        if (1 != examsService.countExamsEnables()){
            return AjaxResult.error("当前考试尚未启用");
        }
        Long examId = examsService.selectExamsEnabled().getExamId();
        scores.setExamId(examId);
        return success(scoresService.checkAlreadyScores(scores));
    }

    @PostMapping("/clearTempScores")
    @PreAuthorize("@ss.hasPermi('scores:inpution:delete')")
    @Log(title = "临时分数", businessType = BusinessType.DELETE)
    public AjaxResult clearTempScores(@RequestBody ExamTempScores scores){
        if (1 != examsService.countExamsEnables()){
            return AjaxResult.error("当前考试尚未启用");
        }
        Long examId = examsService.selectExamsEnabled().getExamId();
        scores.setExamId(examId);
        return success(scoresService.deleteTempScores(scores));
    }
}
