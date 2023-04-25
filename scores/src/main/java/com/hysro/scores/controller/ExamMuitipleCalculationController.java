package com.hysro.scores.controller;


import com.hysro.scores.domain.ExamMuitipleCalculation;
import com.hysro.scores.domain.Exams;
import com.hysro.scores.service.IExamMuitipleCalculationService;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;

/**
 * 综合分算法Controller
 *
 * @author hysro
 * @date 2023-04-25
 */
@RestController
@RequestMapping("/scores/muitiple")
public class ExamMuitipleCalculationController extends BaseController {
    @Autowired
    private IExamMuitipleCalculationService service;

    /**
     * 查询综合分算法
     */
    @PreAuthorize("@ss.hasPermi('scores:muitiple:list')")
    @GetMapping("/list")
    public AjaxResult list()
    {
        ArrayList<ExamMuitipleCalculation> list = new ArrayList<>(2);
        list.add(service.getExamMuitipleCalculationById(1));
        list.add(service.getExamMuitipleCalculationById(2));
        return AjaxResult.success(list);
    }

    /**
     * 修改综合分算法
     */
    @PreAuthorize("@ss.hasPermi('scores:muitiple:edit')")
    @Log(title = "综合分算法", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Valid @RequestBody ExamMuitipleCalculation examMuitipleCalculation)
    {
        if (1 != examMuitipleCalculation.getId() && 2 != examMuitipleCalculation.getId()){
            return AjaxResult.error("无对应记录");
        }
        if ( 100 != examMuitipleCalculation.getAverage() + examMuitipleCalculation.getExcellent() + examMuitipleCalculation.getQualified()){
            return AjaxResult.error("算法不满足总比例为100%的要求");
        }
        return success(service.updateExamMuitipleCalculationById(examMuitipleCalculation));
    }
}
