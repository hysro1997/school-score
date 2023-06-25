package com.hysro.scores.controller;

import com.hysro.scores.domain.Exams;
import com.hysro.scores.service.IExamStudentScoresService;
import com.hysro.scores.service.IExamsService;
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
 * 各种考试Controller
 *
 * @author hysro
 * @date 2023-03-23
 */
@RestController
@RequestMapping("/examination/exams")
public class ExamsController extends BaseController
{
    @Autowired
    private IExamsService examsService;
    @Autowired
    private IExamStudentScoresService studentService;
    private static String EXAM_ENABLED = "0";

    /**
     * 查询各种考试列表
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:list')")
    @GetMapping("/list")
    public TableDataInfo list(Exams exams)
    {
        startPage();
        List<Exams> list = examsService.selectExamsList(exams);
        return getDataTable(list);
    }

    /**
     * 查询各种考试列表
     */
    @GetMapping("/allExams")
    public AjaxResult getExams(Exams exams)
    {
        startPage();
        List<Exams> list = examsService.selectExamsList(exams);
        return success(list);
    }

    /**
     * 获取已启用的考试数量
     */
    //@PreAuthorize("@ss.hasPermi('examination:exams:list')")
    @GetMapping("/getExamsEnables")
    public AjaxResult getExamsEnables(){
        return success(examsService.countExamsEnables());
    }

    /**
     * 导出各种考试列表
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:export')")
    @Log(title = "各种考试", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Exams exams)
    {
        List<Exams> list = examsService.selectExamsList(exams);
        ExcelUtil<Exams> util = new ExcelUtil<Exams>(Exams.class);
        util.exportExcel(response, list, "各种考试数据");
    }

    /**
     * 获取各种考试详细信息
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:query')")
    @GetMapping(value = "/{examId}")
    public AjaxResult getInfo(@PathVariable("examId") Long examId)
    {
        return success(examsService.selectExamsByExamId(examId));
    }

    /**
     * 新增各种考试
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:add')")
    @Log(title = "各种考试", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Valid @RequestBody Exams exams)
    {
        return success(examsService.insertExams(exams));
    }

    /**
     * 统计考试数据
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:edit')")
    @Log(title = "统计考试数据", businessType = BusinessType.OTHER)
    @PostMapping("/statisticExams")
    public AjaxResult statisticExams(@RequestBody Long examId)
    {
        if (null == examId ||  0 == examId){
            return warn("没有考试ID");
        }
        Exams exams = examsService.selectExamsByExamId(examId);
        if (EXAM_ENABLED.equals(exams.getEnableFlag())){
            return warn("考试尚未结束");
        }else {
            return success(examsService.calculateStatisticExams(examId));
        }
    }

    /**
     * 整合考试数据
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:edit')")
    @Log(title = "整合考试数据", businessType = BusinessType.OTHER)
    @PostMapping("/mixScores")
    public AjaxResult mixScores(@RequestBody Long examId)
    {
        if (null == examId ||  0 == examId){
            return warn("没有考试ID");
        }
        Exams exams = examsService.selectExamsByExamId(examId);
        if (EXAM_ENABLED.equals(exams.getEnableFlag())){
            return warn("考试尚未结束");
        }else {
            return success(studentService.mixScores(examId));
        }
    }

    /**
     * 修改各种考试
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:edit')")
    @Log(title = "各种考试", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Exams exams)
    {
        return toAjax(examsService.updateExams(exams));
    }


    /**
     * 修改各种考试
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:edit')")
    @Log(title = "各种考试", businessType = BusinessType.UPDATE)
    @PostMapping("/confirm")
    public AjaxResult confirm(@RequestBody Long examId)
    {
        if (null == examId){
            return error("没有考试ID");
        }
        return toAjax(examsService.confirmExams(examId));
    }

    /**
     * 删除各种考试
     */
    @PreAuthorize("@ss.hasPermi('examination:exams:remove')")
    @Log(title = "各种考试", businessType = BusinessType.DELETE)
	@DeleteMapping("/{examIds}")
    public AjaxResult remove(@PathVariable Long[] examIds)
    {
        return toAjax(examsService.deleteExamsByExamIds(examIds));
    }
}
