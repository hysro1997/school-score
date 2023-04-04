package com.hysro.scores.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.hysro.scores.domain.ExamGradeSummary;
import com.hysro.scores.service.IExamGradeSummaryService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 年级总体情况Controller
 * 
 * @author hysro
 * @date 2023-04-04
 */
@RestController
@RequestMapping("/scores/summary")
public class ExamGradeSummaryController extends BaseController
{
    @Autowired
    private IExamGradeSummaryService examGradeSummaryService;

    /**
     * 查询年级总体情况列表
     */
    @PreAuthorize("@ss.hasPermi('scores:summary:list')")
    @GetMapping("/list")
    public TableDataInfo list(ExamGradeSummary examGradeSummary)
    {
        startPage();
        List<ExamGradeSummary> list = examGradeSummaryService.selectExamGradeSummaryList(examGradeSummary);
        return getDataTable(list);
    }

    /**
     * 导出年级总体情况列表
     */
    @PreAuthorize("@ss.hasPermi('scores:summary:export')")
    @Log(title = "年级总体情况", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ExamGradeSummary examGradeSummary)
    {
        List<ExamGradeSummary> list = examGradeSummaryService.selectExamGradeSummaryList(examGradeSummary);
        ExcelUtil<ExamGradeSummary> util = new ExcelUtil<ExamGradeSummary>(ExamGradeSummary.class);
        util.exportExcel(response, list, "年级总体情况数据");
    }

    /**
     * 获取年级总体情况详细信息
     */
    @PreAuthorize("@ss.hasPermi('scores:summary:query')")
    @GetMapping(value = "/{examGradeSummaryId}")
    public AjaxResult getInfo(@PathVariable("examGradeSummaryId") Long examGradeSummaryId)
    {
        return success(examGradeSummaryService.selectExamGradeSummaryByExamGradeSummaryId(examGradeSummaryId));
    }

    /**
     * 新增年级总体情况
     */
    @PreAuthorize("@ss.hasPermi('scores:summary:add')")
    @Log(title = "年级总体情况", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ExamGradeSummary examGradeSummary)
    {
        return toAjax(examGradeSummaryService.insertExamGradeSummary(examGradeSummary));
    }

    /**
     * 修改年级总体情况
     */
    @PreAuthorize("@ss.hasPermi('scores:summary:edit')")
    @Log(title = "年级总体情况", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ExamGradeSummary examGradeSummary)
    {
        return toAjax(examGradeSummaryService.updateExamGradeSummary(examGradeSummary));
    }

    /**
     * 删除年级总体情况
     */
    @PreAuthorize("@ss.hasPermi('scores:summary:remove')")
    @Log(title = "年级总体情况", businessType = BusinessType.DELETE)
	@DeleteMapping("/{examGradeSummaryIds}")
    public AjaxResult remove(@PathVariable Long[] examGradeSummaryIds)
    {
        return toAjax(examGradeSummaryService.deleteExamGradeSummaryByExamGradeSummaryIds(examGradeSummaryIds));
    }
}
