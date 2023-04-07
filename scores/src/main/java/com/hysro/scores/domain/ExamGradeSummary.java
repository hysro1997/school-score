package com.hysro.scores.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 年级总体情况对象 exam_grade_summary
 *
 * @author hysro
 * @date 2023-04-04
 */
public class ExamGradeSummary extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long examGradeSummaryId;

    /** 年级 */
    @Excel(name = "年级", type = Excel.Type.EXPORT)
    private String grade;

    /** 学科 */
    @Excel(name = "学科", type = Excel.Type.EXPORT)
    private String subject;

    /** 考试总人数 */
    @Excel(name = "考试总人数", type = Excel.Type.EXPORT)
    private Long examTotalNumbers;

    /** 年级总分 */
    @Excel(name = "年级总分", type = Excel.Type.EXPORT)
    private String gradeTotalScores;

    /** 年级均分 */
    @Excel(name = "年级均分", type = Excel.Type.EXPORT)
    private String gradeAverageScore;

    /** 年级及格率 */
    @Excel(name = "年级及格率", type = Excel.Type.EXPORT)
    private String gradeQualifiedPercentage;

    /** 年级优秀率 */
    @Excel(name = "年级优秀率", type = Excel.Type.EXPORT)
    private String gradeExcellentPercentage;

    /** 不及格人数 */
    @Excel(name = "不及格人数", type = Excel.Type.EXPORT)
    private Long gradeUnqualifiedNumbers;

    /** 考试ID */
    //@Excel(name = "考试ID")
    private Long examId;

    /** 考试信息 */
    @Excel(name = "考试名称", targetAttr = "examName", type = Excel.Type.EXPORT)
    private Exams exams;

    private Long excellentLine;

    /** 动态给sql传参，表明查询的是哪个学科的分数 */
    private String subjectName;

    public Long getExcellentLine() {
        return excellentLine;
    }

    public void setExcellentLine(Long excellentLine) {
        this.excellentLine = excellentLine;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public void setExamGradeSummaryId(Long examGradeSummaryId)
    {
        this.examGradeSummaryId = examGradeSummaryId;
    }

    public Long getExamGradeSummaryId()
    {
        return examGradeSummaryId;
    }
    public void setGrade(String grade)
    {
        this.grade = grade;
    }

    public String getGrade()
    {
        return grade;
    }
    public void setSubject(String subject)
    {
        this.subject = subject;
    }

    public String getSubject()
    {
        return subject;
    }
    public void setExamTotalNumbers(Long examTotalNumbers)
    {
        this.examTotalNumbers = examTotalNumbers;
    }

    public Long getExamTotalNumbers()
    {
        return examTotalNumbers;
    }
    public void setGradeTotalScores(String gradeTotalScores)
    {
        this.gradeTotalScores = gradeTotalScores;
    }

    public String getGradeTotalScores()
    {
        return gradeTotalScores;
    }
    public void setGradeAverageScore(String gradeAverageScore)
    {
        this.gradeAverageScore = gradeAverageScore;
    }

    public String getGradeAverageScore()
    {
        return gradeAverageScore;
    }
    public void setGradeQualifiedPercentage(String gradeQualifiedPercentage)
    {
        this.gradeQualifiedPercentage = gradeQualifiedPercentage;
    }

    public String getGradeQualifiedPercentage()
    {
        return gradeQualifiedPercentage;
    }
    public void setGradeExcellentPercentage(String gradeExcellentPercentage)
    {
        this.gradeExcellentPercentage = gradeExcellentPercentage;
    }

    public String getGradeExcellentPercentage()
    {
        return gradeExcellentPercentage;
    }
    public void setGradeUnqualifiedNumbers(Long gradeUnqualifiedNumbers)
    {
        this.gradeUnqualifiedNumbers = gradeUnqualifiedNumbers;
    }

    public Long getGradeUnqualifiedNumbers()
    {
        return gradeUnqualifiedNumbers;
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
            .append("examGradeSummaryId", getExamGradeSummaryId())
            .append("grade", getGrade())
            .append("subject", getSubject())
            .append("examTotalNumbers", getExamTotalNumbers())
            .append("gradeTotalScores", getGradeTotalScores())
            .append("gradeAverageScore", getGradeAverageScore())
            .append("gradeQualifiedPercentage", getGradeQualifiedPercentage())
            .append("gradeExcellentPercentage", getGradeExcellentPercentage())
            .append("gradeUnqualifiedNumbers", getGradeUnqualifiedNumbers())
            .append("examId", getExamId())
            .append("exams", getExams())
            .append("excellentLine", getExcellentLine())
            .append("subjectName", getSubjectName())
            .toString();
    }
}
