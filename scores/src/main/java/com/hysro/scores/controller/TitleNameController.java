package com.hysro.scores.controller;

import com.hysro.scores.domain.ExamMuitipleCalculation;
import com.hysro.scores.domain.TitleName;
import com.hysro.scores.service.ITitleNameService;
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
 * 网站标题Controller接口
 *
 * @author hysro
 * @date 2023-04-26
 */
@RestController
@RequestMapping("/scores/title")
public class TitleNameController extends BaseController {

    @Autowired
    private ITitleNameService service;

    /**
     * 查询网站标题
     */
    @GetMapping("/list")
    public AjaxResult list()
    {
        return AjaxResult.success(service.getTitleName());
    }

    /**
     * 修改网站标题
     */
    @PreAuthorize("@ss.hasPermi('scores:title:index')")
    @Log(title = "网站标题", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Valid @RequestBody TitleName titleName)
    {
        return success(service.updateTitleName(titleName));
    }
}
