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
import com.hysro.scores.domain.ExamClassStatictics;
import com.hysro.scores.service.IExamClassStaticticsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 班级成绩统计情况Controller
 *
 * @author hysro
 * @date 2023-04-04
 */
@RestController
@RequestMapping("/scores/statictics")
public class ExamClassStaticticsController extends BaseController
{
    @Autowired
    private IExamClassStaticticsService examClassStaticticsService;

    /**
     * 查询班级成绩统计情况列表
     */
    @PreAuthorize("@ss.hasPermi('scores:statictics:list')")
    @GetMapping("/list")
    public TableDataInfo list(ExamClassStatictics examClassStatictics)
    {
        startPage();
        List<ExamClassStatictics> list = examClassStaticticsService.selectExamClassStaticticsList(examClassStatictics);
        return getDataTable(list);
    }

    /**
     * 导出班级成绩统计情况列表
     */
    @PreAuthorize("@ss.hasPermi('scores:statictics:export')")
    @Log(title = "班级成绩统计情况", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ExamClassStatictics examClassStatictics)
    {
        List<ExamClassStatictics> list = examClassStaticticsService.selectExamClassStaticticsList(examClassStatictics);
        ExcelUtil<ExamClassStatictics> util = new ExcelUtil<ExamClassStatictics>(ExamClassStatictics.class);
        util.exportExcel(response, list, "班级成绩统计情况数据");
    }

    /**
     * 获取班级成绩统计情况详细信息
     */
    @PreAuthorize("@ss.hasPermi('scores:statictics:query')")
    @GetMapping(value = "/{examStatisticsId}")
    public AjaxResult getInfo(@PathVariable("examStatisticsId") Long examStatisticsId)
    {
        return success(examClassStaticticsService.selectExamClassStaticticsByExamStatisticsId(examStatisticsId));
    }

    /**
     * 新增班级成绩统计情况

    @PreAuthorize("@ss.hasPermi('scores:statictics:add')")
    @Log(title = "班级成绩统计情况", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ExamClassStatictics examClassStatictics)
    {
        return toAjax(examClassStaticticsService.insertExamClassStatictics(examClassStatictics));
    }
     */

    /**
     * 修改班级成绩统计情况

    @PreAuthorize("@ss.hasPermi('scores:statictics:edit')")
    @Log(title = "班级成绩统计情况", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ExamClassStatictics examClassStatictics)
    {
        return toAjax(examClassStaticticsService.updateExamClassStatictics(examClassStatictics));
    }
     */

    /**
     * 删除班级成绩统计情况
     */
    @PreAuthorize("@ss.hasPermi('scores:statictics:remove')")
    @Log(title = "班级成绩统计情况", businessType = BusinessType.DELETE)
	@DeleteMapping("/{examStatisticsIds}")
    public AjaxResult remove(@PathVariable Long[] examStatisticsIds)
    {
        return toAjax(examClassStaticticsService.deleteExamClassStaticticsByExamStatisticsIds(examStatisticsIds));
    }
}
