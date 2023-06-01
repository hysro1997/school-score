package com.hysro.scores.domain;

import java.math.BigDecimal;

import com.alibaba.fastjson2.annotation.JSONField;
import com.alibaba.fastjson2.annotation.JSONType;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

/**
 * 学生分数情况对象 exam_student_scores
 *
 * @author hysro
 * @date 2023-04-04
 */
public class ExamStudentScores extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 分数ID */
    private Long scoreId;

    /** 年级 */
    @Excel(name = "年级", type = Excel.Type.EXPORT)
    private String grade;

    /** 班级 */
    @Excel(name = "班级", type = Excel.Type.EXPORT)
    private String classes;

    /** 考试号 */
    @Excel(name = "考试号")
    @NotBlank
    @Pattern(regexp = "([1-9]|[A])[0-1]\\d\\d\\d",message = "举例20403 表示2022年入学的4班03号学生")
    private String examNumber;

    /** 语文分数 */
    @Excel(name = "语文分数")
    private BigDecimal chineseScore;

    /** 数学分数 */
    @Excel(name = "数学分数")
    private BigDecimal mathsScore;

    /** 英语分数 */
    @Excel(name = "英语分数")
    private BigDecimal englishScore;

    /** 总分 */
    @Excel(name = "总分", type = Excel.Type.EXPORT)
    private BigDecimal totalPoints;

    /** 科学分数 */
    //@Excel(name = "科学分数")
    //private BigDecimal scienceScore;

    /** 考试ID */
    //@Excel(name = "考试ID")
    private Long examId;

    /** 各种考试信息 */
    @Excel(name = "考试名称", targetAttr = "examName", type = Excel.Type.EXPORT)
    private Exams exams;

    /** 语文偏差率 */
    /** 总分 */
    @Excel(name = "语文偏差率", type = Excel.Type.EXPORT)
    private BigDecimal chineseDeviationRate;

    /** 数学偏差率 */
    @Excel(name = "数学偏差率", type = Excel.Type.EXPORT)
    private BigDecimal mathsDeviationRate;

    /** 英语偏差率 */
    @Excel(name = "英语偏差率", type = Excel.Type.EXPORT)
    private BigDecimal englishDeviationRate;

    /** 总偏差率 */
    @Excel(name = "总偏差率", type = Excel.Type.EXPORT)
    private BigDecimal totalDeviationRate;

    @JSONField(serialize = false)
    private String subject;
    @JSONField(serialize = false)
    private String subjectName;
    @JSONField(serialize = false)
    private String orderType;
    @JSONField(serialize = false)
    private BigDecimal underLine;
    @JSONField(serialize = false)
    private BigDecimal upLine;

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public BigDecimal getChineseDeviationRate() {
        return chineseDeviationRate;
    }

    public void setChineseDeviationRate(BigDecimal chineseDeviationRate) {
        this.chineseDeviationRate = chineseDeviationRate;
    }

    public BigDecimal getMathsDeviationRate() {
        return mathsDeviationRate;
    }

    public void setMathsDeviationRate(BigDecimal mathsDeviationRate) {
        this.mathsDeviationRate = mathsDeviationRate;
    }

    public BigDecimal getEnglishDeviationRate() {
        return englishDeviationRate;
    }

    public void setEnglishDeviationRate(BigDecimal englishDeviationRate) {
        this.englishDeviationRate = englishDeviationRate;
    }

    public BigDecimal getTotalDeviationRate() {
        return totalDeviationRate;
    }

    public void setTotalDeviationRate(BigDecimal totalDeviationRate) {
        this.totalDeviationRate = totalDeviationRate;
    }

    public BigDecimal getTotalPoints() {
        return totalPoints;
    }

    public void setTotalPoints(BigDecimal totalPoints) {
        this.totalPoints = totalPoints;
    }

    public BigDecimal getUnderLine() {
        return underLine;
    }

    public void setUnderLine(BigDecimal underLine) {
        this.underLine = underLine;
    }

    public BigDecimal getUpLine() {
        return upLine;
    }

    public void setUpLine(BigDecimal upLine) {
        this.upLine = upLine;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public void setScoreId(Long scoreId)
    {
        this.scoreId = scoreId;
    }

    public Long getScoreId()
    {
        return scoreId;
    }
    public void setGrade(String grade)
    {
        this.grade = grade;
    }

    public String getGrade()
    {
        return grade;
    }
    public void setClasses(String classes)
    {
        this.classes = classes;
    }

    public String getClasses()
    {
        return classes;
    }
    public void setExamNumber(String examNumber)
    {
        this.examNumber = examNumber;
    }

    public String getExamNumber()
    {
        return examNumber;
    }
    public void setChineseScore(BigDecimal chineseScore)
    {
        this.chineseScore = chineseScore;
    }

    public BigDecimal getChineseScore()
    {
        return chineseScore;
    }
    public void setMathsScore(BigDecimal mathsScore)
    {
        this.mathsScore = mathsScore;
    }

    public BigDecimal getMathsScore()
    {
        return mathsScore;
    }
    public void setEnglishScore(BigDecimal englishScore)
    {
        this.englishScore = englishScore;
    }

    public BigDecimal getEnglishScore()
    {
        return englishScore;
    }
    public void setExamId(Long examId)
    {
        this.examId = examId;
    }

    public Long getExamId()
    {
        return examId;
    }

    public Exams getExams() {
        return exams;
    }

    public void setExams(Exams exams) {
        this.exams = exams;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("scoreId", getScoreId())
            .append("grade", getGrade())
            .append("classes", getClasses())
            .append("examNumber", getExamNumber())
            .append("chineseScore", getChineseScore())
            .append("mathsScore", getMathsScore())
            .append("englishScore", getEnglishScore())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .append("updateBy", getUpdateBy())
            .append("examId", getExamId())
            .append("exams", getExams())
            .append("chineseDeviationRate", getChineseDeviationRate())
            .append("mathsDeviationRate", getMathsDeviationRate())
            .append("englishDeviationRate", getEnglishDeviationRate())
            .append("totalDeviationRate", getTotalDeviationRate())
            .toString();
    }
}
