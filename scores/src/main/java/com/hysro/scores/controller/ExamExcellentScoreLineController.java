package com.hysro.scores.controller;

import com.hysro.scores.domain.ExamExcellentScoreLine;
import com.hysro.scores.service.IExamExcellentScoreLineService;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;

/**
 * 优秀分数线Controller
 *
 * @author hysro
 * @date 2023-03-23
 */
@RestController
@RequestMapping("/scores/line")
public class ExamExcellentScoreLineController extends BaseController
{
    @Autowired
    private IExamExcellentScoreLineService examExcellentScoreLineService;

    /**
     * 查询优秀分数线列表
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:list')")
    @GetMapping("/list")
    public AjaxResult list(ExamExcellentScoreLine examExcellentScoreLine)
    {
        return success(examExcellentScoreLineService.selectExamExcellentScoreLineList(examExcellentScoreLine));
    }

    /**
     * 导出优秀分数线列表

    @PreAuthorize("@ss.hasPermi('scores:line:export')")
    @Log(title = "优秀分数线", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ExamExcellentScoreLine examExcellentScoreLine)
    {
        List<ExamExcellentScoreLine> list = examExcellentScoreLineService.selectExamExcellentScoreLineList(examExcellentScoreLine);
        ExcelUtil<ExamExcellentScoreLine> util = new ExcelUtil<ExamExcellentScoreLine>(ExamExcellentScoreLine.class);
        util.exportExcel(response, list, "优秀分数线数据");
    }
     */
    /**
     * 获取优秀分数线详细信息

    @PreAuthorize("@ss.hasPermi('scores:line:query')")
    @GetMapping(value = "/{excellentId}")
    public AjaxResult getInfo(@PathVariable("excellentId") Long excellentId)
    {
        return success(examExcellentScoreLineService.selectExamExcellentScoreLineByExcellentId(excellentId));
    }
     */
    /**
     * 新增优秀分数线
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:add')")
    @Log(title = "优秀分数线", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Valid @RequestBody ExamExcellentScoreLine examExcellentScoreLine)
    {
        return success(examExcellentScoreLineService.insertExamExcellentScoreLine(examExcellentScoreLine));
    }

    /**
     * 修改优秀分数线
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:edit')")
    @Log(title = "优秀分数线", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Valid@RequestBody ExamExcellentScoreLine examExcellentScoreLine)
    {
        return toAjax(examExcellentScoreLineService.updateExamExcellentScoreLine(examExcellentScoreLine));
    }

    /**
     * 删除优秀分数线
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:remove')")
    @Log(title = "优秀分数线", businessType = BusinessType.DELETE)
	@DeleteMapping("/{excellentIds}")
    public AjaxResult remove(@PathVariable Long[] excellentIds)
    {
        return toAjax(examExcellentScoreLineService.deleteExamExcellentScoreLineByExcellentIds(excellentIds));
    }
}
