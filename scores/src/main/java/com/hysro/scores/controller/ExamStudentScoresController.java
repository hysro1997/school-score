package com.hysro.scores.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.hysro.scores.domain.Exams;
import com.hysro.scores.service.IExamsService;
import com.ruoyi.common.core.domain.entity.SysUser;
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
import com.hysro.scores.domain.ExamStudentScores;
import com.hysro.scores.service.IExamStudentScoresService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 学生分数情况Controller
 *
 * @author hysro
 * @date 2023-03-23
 */
@RestController
@RequestMapping("/scores/scores")
public class ExamStudentScoresController extends BaseController
{
    @Autowired
    private IExamStudentScoresService examStudentScoresService;
    @Autowired
    private IExamsService examsService;

    /**
     * 查询学生分数情况列表
     */
    @PreAuthorize("@ss.hasPermi('scores:scores:list')")
    @GetMapping("/list")
    public TableDataInfo list(ExamStudentScores examStudentScores,Exams exams)
    {
        startPage();
        examStudentScores.setExams(exams);
        List<ExamStudentScores> list = examStudentScoresService.selectExamStudentScoresList(examStudentScores);
        return getDataTable(list);
    }

    /**
     * 导出学生分数情况列表
     */
    @PreAuthorize("@ss.hasPermi('scores:scores:export')")
    @Log(title = "学生分数情况", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ExamStudentScores examStudentScores)
    {
        List<ExamStudentScores> list = examStudentScoresService.selectExamStudentScoresList(examStudentScores);
        ExcelUtil<ExamStudentScores> util = new ExcelUtil<ExamStudentScores>(ExamStudentScores.class);
        util.exportExcel(response, list, "学生分数情况数据");
    }

    /**
     * 获取学生分数情况详细信息
     */
    @PreAuthorize("@ss.hasPermi('scores:scores:query')")
    @GetMapping(value = "/{scoreId}")
    public AjaxResult getInfo(@PathVariable("scoreId") Long scoreId)
    {
        return success(examStudentScoresService.selectExamStudentScoresByScoreId(scoreId));
    }

    /**
     * 新增学生分数情况
     */
    @PreAuthorize("@ss.hasPermi('scores:scores:add')")
    @Log(title = "学生分数情况", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ExamStudentScores examStudentScores)
    {

        return toAjax(examStudentScoresService.insertExamStudentScores(examStudentScores));
    }

    /**
     * 修改学生分数情况
     */
    @PreAuthorize("@ss.hasPermi('scores:scores:edit')")
    @Log(title = "学生分数情况", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ExamStudentScores examStudentScores)
    {
        return toAjax(examStudentScoresService.updateExamStudentScores(examStudentScores));
    }

    /**
     * 删除学生分数情况
     */
    @PreAuthorize("@ss.hasPermi('scores:scores:remove')")
    @Log(title = "学生分数情况", businessType = BusinessType.DELETE)
	@DeleteMapping("/{scoreIds}")
    public AjaxResult remove(@PathVariable Long[] scoreIds)
    {
        return toAjax(examStudentScoresService.deleteExamStudentScoresByScoreIds(scoreIds));
    }

    @PreAuthorize("@ss.hasPermi('scores:scores:import')")
    @Log(title = "学生分数管理", businessType = BusinessType.IMPORT)
    @PostMapping("/importData")
    public AjaxResult importData(MultipartFile file) throws Exception
    {
        ExcelUtil<ExamStudentScores> util = new ExcelUtil<ExamStudentScores>(ExamStudentScores.class);
        List<ExamStudentScores> scoresList = util.importExcel(file.getInputStream());
        String message = examStudentScoresService.importStudentScore(scoresList);
        return AjaxResult.success(message);
    }

    @PostMapping("/importTemplate")
    public void importTemplate(HttpServletResponse response)
    {
        ExcelUtil<ExamStudentScores> util = new ExcelUtil<ExamStudentScores>(ExamStudentScores.class);
        util.importTemplateExcel(response,"学生分数数据");
    }

}