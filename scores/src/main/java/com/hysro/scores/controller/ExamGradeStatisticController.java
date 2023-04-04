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
import com.hysro.scores.domain.ExamGradeStatistic;
import com.hysro.scores.service.IExamGradeStatisticService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 年级数据统计情况Controller
 *
 * @author hysro
 * @date 2023-04-04
 */
@RestController
@RequestMapping("/scores/statistic")
public class ExamGradeStatisticController extends BaseController
{
    @Autowired
    private IExamGradeStatisticService examGradeStatisticService;

    /**
     * 查询年级数据统计情况列表
     */
    @PreAuthorize("@ss.hasPermi('scores:statistic:list')")
    @GetMapping("/list")
    public TableDataInfo list(ExamGradeStatistic examGradeStatistic)
    {
        startPage();
        List<ExamGradeStatistic> list = examGradeStatisticService.selectExamGradeStatisticList(examGradeStatistic);
        return getDataTable(list);
    }

    /**
     * 导出年级数据统计情况列表
     */
    @PreAuthorize("@ss.hasPermi('scores:statistic:export')")
    @Log(title = "年级数据统计情况", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ExamGradeStatistic examGradeStatistic)
    {
        List<ExamGradeStatistic> list = examGradeStatisticService.selectExamGradeStatisticList(examGradeStatistic);
        ExcelUtil<ExamGradeStatistic> util = new ExcelUtil<ExamGradeStatistic>(ExamGradeStatistic.class);
        util.exportExcel(response, list, "年级数据统计情况数据");
    }

    /**
     * 获取年级数据统计情况详细信息
     */
    @PreAuthorize("@ss.hasPermi('scores:statistic:query')")
    @GetMapping(value = "/{examGradeStatisticsId}")
    public AjaxResult getInfo(@PathVariable("examGradeStatisticsId") Long examGradeStatisticsId)
    {
        return success(examGradeStatisticService.selectExamGradeStatisticByExamGradeStatisticsId(examGradeStatisticsId));
    }

    /**
     * 新增年级数据统计情况

    @PreAuthorize("@ss.hasPermi('scores:statistic:add')")
    @Log(title = "年级数据统计情况", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ExamGradeStatistic examGradeStatistic)
    {
        return toAjax(examGradeStatisticService.insertExamGradeStatistic(examGradeStatistic));
    }
     */

    /**
     * 修改年级数据统计情况

    @PreAuthorize("@ss.hasPermi('scores:statistic:edit')")
    @Log(title = "年级数据统计情况", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ExamGradeStatistic examGradeStatistic)
    {
        return toAjax(examGradeStatisticService.updateExamGradeStatistic(examGradeStatistic));
    }
     */

    /**
     * 删除年级数据统计情况
     */
    @PreAuthorize("@ss.hasPermi('scores:statistic:remove')")
    @Log(title = "年级数据统计情况", businessType = BusinessType.DELETE)
	@DeleteMapping("/{examGradeStatisticsIds}")
    public AjaxResult remove(@PathVariable Long[] examGradeStatisticsIds)
    {
        return toAjax(examGradeStatisticService.deleteExamGradeStatisticByExamGradeStatisticsIds(examGradeStatisticsIds));
    }
}
