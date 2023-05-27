package com.hysro.scores.controller;

import java.math.BigDecimal;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import com.hysro.scores.domain.ExamExcellentScoreLine;
import com.hysro.scores.domain.Exams;
import com.hysro.scores.service.IExamExcellentScoreLineService;
import com.hysro.scores.service.IExamsService;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.ServletUtils;
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
 * @date 2023-04-04
 */
@RestController
@RequestMapping("/scores/scores")
public class ExamStudentScoresController extends BaseController
{
    @Autowired
    private IExamStudentScoresService examStudentScoresService;
    @Autowired
    private IExamsService examsService;
    @Autowired
    private IExamExcellentScoreLineService examExcellentScoreLineService;
    private static final String ASC = "0";
    private static final String DESC = "1";
    private static final String GRADE_ONE = "一年级";
    private static final String GRADE_TWO = "二年级";
    private static final String RATION_ZERO = "0";
    private static final String RATION_TEN = "10";
    private static final String RATION_MINUS_TEN = "-10";
    private static final String COMPARE_LARGE = ">";
    private static final String COMPARE_SMALL = "<";

    /**
     * 查询学生分数情况列表
     */
    @PreAuthorize("@ss.hasPermi('scores:scores:list')")
    @GetMapping("/list")
    public TableDataInfo list(ExamStudentScores examStudentScores)
    {
        startPage();
        List<ExamStudentScores> list = examStudentScoresService.selectExamStudentScoresList(examStudentScores);
        return getDataTable(list);
    }

    /**
     * 查询学生分数情况列表
     */
    @PreAuthorize("@ss.hasPermi('scores:scores:list')")
    @GetMapping("/list2")
    public TableDataInfo list2(ExamStudentScores examStudentScores)
    {
        String direction = COMPARE_LARGE;
        String ration = RATION_ZERO;
        examStudentScores.setSubject(null);
        examStudentScores.setSubjectName(null);
        switch (examStudentScores.getOrderType()){
            case "1":
                examStudentScores.setSubject("chinese_deviation_rate");
                break;
            case "2":
                examStudentScores.setSubject("maths_deviation_rate");
                break;
            case "3":
                if (GRADE_ONE.equals(examStudentScores.getGrade()) || GRADE_TWO.equals(examStudentScores.getGrade())){
                    throw new ServiceException("没有英语");
                }
                examStudentScores.setSubject("english_deviation_rate");
                break;
            case "4":
                examStudentScores.setSubject("chinese_deviation_rate");
                direction = COMPARE_SMALL;
                break;
            case "5":
                examStudentScores.setSubject("maths_deviation_rate");
                direction = COMPARE_SMALL;
                break;
            case "6":
                if (GRADE_ONE.equals(examStudentScores.getGrade()) || GRADE_TWO.equals(examStudentScores.getGrade())){
                    throw new ServiceException("没有英语");
                }
                examStudentScores.setSubject("english_deviation_rate");
                direction = COMPARE_SMALL;
                break;
            case "7":
                this.switchSubjectName(examStudentScores);
                break;
            case "8":
                this.switchSubjectName(examStudentScores);
                ration = RATION_TEN;
                break;
            case "9":
                this.switchSubjectName(examStudentScores);
                direction = COMPARE_SMALL;
                break;
            case "10":
                this.switchSubjectName(examStudentScores);
                ration = RATION_MINUS_TEN;
                direction = COMPARE_SMALL;
                break;
            case "11":
                examStudentScores.setSubject("total_deviation_rate");
                break;
            case "12":
                examStudentScores.setSubject("total_deviation_rate");
                direction = COMPARE_SMALL;
                break;
            default:
                return null;
        }
        startPage();
        List<ExamStudentScores> list = examStudentScoresService.selectExamStudentScoresListForAnalysis(examStudentScores,direction,ration);
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
     * 获取学生分数情况详细信息
     */
    @GetMapping("/getStudentsInfo")
    public AjaxResult getStudentScoresInfo(ExamStudentScores examStudentScores)
    {
        return success(examStudentScoresService.selectExamStudentScoresByExamNumberAndExamId(examStudentScores));
    }

    /**
     * 新增学生分数情况
     */
    @PreAuthorize("@ss.hasPermi('scores:scores:add')")
    @Log(title = "学生分数情况", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Valid @RequestBody ExamStudentScores examStudentScores)
    {
        String operName = SecurityUtils.getUsername();
        examStudentScores.setCreateBy(operName);
        if (1 != examsService.countExamsEnables()){
            return AjaxResult.error("当前考试尚未启用");
        }
        Long examId = examsService.selectExamsEnabled().getExamId();
        examStudentScores.setExamId(examId);
        if (null == examStudentScoresService.selectExamStudentScoresByExamNumberAndExamId(examStudentScores)){
            return toAjax(examStudentScoresService.insertExamStudentScores(examStudentScores));
        }
        else {
            return AjaxResult.error("考号已存在");
        }
    }

    /**
     * 修改学生分数情况
     */
    @PreAuthorize("@ss.hasPermi('scores:scores:edit')")
    @Log(title = "学生分数情况", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Valid@RequestBody ExamStudentScores examStudentScores)
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
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception
    {
        ExcelUtil<ExamStudentScores> util = new ExcelUtil<ExamStudentScores>(ExamStudentScores.class);
        List<ExamStudentScores> scoresList = util.importExcel(file.getInputStream());
        String operName = SecurityUtils.getUsername();
        String message = examStudentScoresService.importStudentScore(scoresList,updateSupport,operName);
        return AjaxResult.success(message);
    }

    @PostMapping("/importTemplate")
    public void importTemplate(HttpServletResponse response)
    {
        ExcelUtil<ExamStudentScores> util = new ExcelUtil<ExamStudentScores>(ExamStudentScores.class);
        util.importTemplateExcel(response,"学生分数数据");
    }

    @GetMapping("/totalPointsFifty")
    public AjaxResult getTotalPointsFifty(ExamStudentScores examStudentScores){
        this.setOrderType(examStudentScores);
        examStudentScores.setSubject("total_points");
        return success(examStudentScoresService.selectExamStudentScoresTotalPointsFifty(examStudentScores));
    }

    @GetMapping("/fifty")
    public AjaxResult getScoresFifty(ExamStudentScores examStudentScores){
        this.setOrderType(examStudentScores);
        this.switchSubject(examStudentScores);
        return AjaxResult.success(examStudentScoresService.selectExamStudentScoresFifty(examStudentScores));
    }

    @GetMapping("/scoresBoundry")
    public AjaxResult getScoresBoundry(ExamStudentScores examStudentScores, Integer boundryType){
        if (null == examStudentScores.getExamId()){
            return AjaxResult.error("没有选择查看哪一场考试的成绩");
        }
        ExamExcellentScoreLine scoreLine = this.getScoreBoundry(examStudentScores);
        this.switchSubject(examStudentScores);
        switch (boundryType){
            case 0:
                examStudentScores.setUnderLine(scoreLine.getUnqualifiedFourScore());
                examStudentScores.setUpLine(scoreLine.getUnqualifiedThreeScore().subtract(BigDecimal.valueOf(0.01)));
                break;
            case 1:
                examStudentScores.setUnderLine(scoreLine.getUnqualifiedThreeScore());
                examStudentScores.setUpLine(scoreLine.getUnqualifiedTwoScore().subtract(BigDecimal.valueOf(0.01)));
                break;
            case 2:
                examStudentScores.setUnderLine(scoreLine.getUnqualifiedTwoScore());
                examStudentScores.setUpLine(scoreLine.getUnqualifiedOneScore().subtract(BigDecimal.valueOf(0.01)));
                break;
            case 3:
                examStudentScores.setUnderLine(scoreLine.getUnqualifiedOneScore());
                examStudentScores.setUpLine(scoreLine.getQualifiedScore().subtract(BigDecimal.valueOf(0.01)));
                break;
            case 4:
                examStudentScores.setUnderLine(scoreLine.getUnqualifiedFourScore());
                examStudentScores.setUpLine(scoreLine.getQualifiedScore().subtract(BigDecimal.valueOf(0.01)));
                break;
            case 5:
                examStudentScores.setUnderLine(scoreLine.getFullScore());
                examStudentScores.setUpLine(scoreLine.getFullScore());
                break;
            case 6:
                examStudentScores.setUnderLine(BigDecimal.valueOf(scoreLine.getExcellentScore()));
                examStudentScores.setUpLine(scoreLine.getFullScore().subtract(BigDecimal.valueOf(0.01)));
                break;
            default:
                break;
        }
        return AjaxResult.success(examStudentScoresService.selectExamStudentScoresByScoresBoundry(examStudentScores));
    }

    private void switchSubjectName(ExamStudentScores examStudentScores){
        if (GRADE_ONE.equals(examStudentScores.getGrade()) || GRADE_TWO.equals(examStudentScores.getGrade())){
            examStudentScores.setSubjectName("low");
        } else {
            examStudentScores.setSubjectName("high");
        }
    }
    private void setOrderType(ExamStudentScores examStudentScores){
        if (null == examStudentScores.getExamId()){
            throw new ServiceException("没有选择查看哪一场考试的成绩");
        }
        //0升序排列，即倒数50名
        if (ASC.equals(examStudentScores.getOrderType())){
            examStudentScores.setOrderType("ASC");
            //1降序排列，即前50名
        } else if (DESC.equals(examStudentScores.getOrderType())){
            examStudentScores.setOrderType("DESC");
        } else {
            throw new ServiceException("参数错误");
        }
    }
    private void switchSubject(ExamStudentScores examStudentScores){
        if (null == examStudentScores.getSubject()){
            throw new ServiceException("没有学科");
        }
        switch (examStudentScores.getSubject()){
            case "语文" :
                examStudentScores.setSubject("chinese_score");
                break;
            case "数学":
                examStudentScores.setSubject("maths_score");
                break;
            case "英语":
                examStudentScores.setSubject("english_score");
                break;
            default:
                throw new ServiceException("参数错误");
        }
    }
    private ExamExcellentScoreLine getScoreBoundry(ExamStudentScores examStudentScores){
        if (null == examStudentScores.getGrade()){
            throw new ServiceException("没有年级");
        }
        if (null == examStudentScores.getSubject()){
            throw new ServiceException("没有学科");
        }
        ExamExcellentScoreLine scoreLine = new ExamExcellentScoreLine();
        scoreLine.setExamId(examStudentScores.getExamId());
        scoreLine.setSubject(examStudentScores.getSubject());
        scoreLine.setGrade(examStudentScores.getGrade());
        return examExcellentScoreLineService.selectExamExcellentScoreLine(scoreLine);
    }
}
