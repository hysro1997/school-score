package com.hysro.scores.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.hysro.scores.domain.ExamStudentScores;
import com.ruoyi.common.utils.SecurityUtils;
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
import com.hysro.scores.domain.ExamTeacher;
import com.hysro.scores.service.IExamTeacherService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 考试班级责任老师Controller
 *
 * @author hysro
 * @date 2024-07-11
 */
@RestController
@RequestMapping("/scores/teacher")
public class ExamTeacherController extends BaseController
{
    @Autowired
    private IExamTeacherService examTeacherService;

    /**
     * 查询考试班级责任老师列表
     */
    @PreAuthorize("@ss.hasPermi('scores:teacher:list')")
    @GetMapping("/list")
    public TableDataInfo list(ExamTeacher examTeacher)
    {
        startPage();
        List<ExamTeacher> list = examTeacherService.selectExamTeacherList(examTeacher);
        return getDataTable(list);
    }

    /**
     * 导出考试班级责任老师列表
     */
    @PreAuthorize("@ss.hasPermi('scores:teacher:export')")
    @Log(title = "考试班级责任老师", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ExamTeacher examTeacher)
    {
        List<ExamTeacher> list = examTeacherService.selectExamTeacherList(examTeacher);
        ExcelUtil<ExamTeacher> util = new ExcelUtil<ExamTeacher>(ExamTeacher.class);
        util.exportExcel(response, list, "考试班级责任老师数据");
    }

    /**
     * 获取考试班级责任老师详细信息
     */
    @PreAuthorize("@ss.hasPermi('scores:teacher:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(examTeacherService.selectExamTeacherById(id));
    }

    /**
     * 获取考试班级责任老师按考试id和年级
     */
    @PostMapping("/getTeachers")
    public AjaxResult getTeachers(@RequestBody ExamTeacher examTeacher)
    {
        return success(examTeacherService.selectExamTeachers(examTeacher));
    }

    /**
     * 新增考试班级责任老师
     */
    @PreAuthorize("@ss.hasPermi('scores:teacher:add')")
    @Log(title = "考试班级责任老师", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ExamTeacher examTeacher)
    {
        return toAjax(examTeacherService.insertExamTeacher(examTeacher));
    }

    /**
     * 修改考试班级责任老师
     */
    @PreAuthorize("@ss.hasPermi('scores:teacher:edit')")
    @Log(title = "考试班级责任老师", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ExamTeacher examTeacher)
    {
        return toAjax(examTeacherService.updateExamTeacher(examTeacher));
    }

    /**
     * 删除考试班级责任老师
     */
    @PreAuthorize("@ss.hasPermi('scores:teacher:remove')")
    @Log(title = "考试班级责任老师", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(examTeacherService.deleteExamTeacherByIds(ids));
    }

    @PostMapping("/importTemplate")
    public void importTemplate(HttpServletResponse response)
    {
        ExcelUtil<ExamTeacher> util = new ExcelUtil<ExamTeacher>(ExamTeacher.class);
        util.importTemplateExcel(response,"教师班级");
    }

    @PreAuthorize("@ss.hasPermi('scores:teacher:import')")
    @Log(title = "班级责任老师管理", businessType = BusinessType.IMPORT)
    @PostMapping("/importData")
    public AjaxResult importData(MultipartFile file, Long examId) throws Exception
    {
        ExcelUtil<ExamTeacher> util = new ExcelUtil<ExamTeacher>(ExamTeacher.class);
        List<ExamTeacher> examTeacherList = util.importExcel(file.getInputStream());
        String operName = SecurityUtils.getUsername();
        String message = examTeacherService.importExamTeacher(examTeacherList,examId,operName);
        return AjaxResult.success(message);
    }
}
