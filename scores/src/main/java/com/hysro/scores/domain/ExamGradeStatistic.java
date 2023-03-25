package com.hysro.scores.domain;

import java.util.List;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 年级数据统计情况对象 exam_grade_statistic
 *
 * @author hysro
 * @date 2023-03-23
 */
public class ExamGradeStatistic extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 年级数据ID */
    private Long examGradeStatisticsId;

    /** 考试人数 */
    @Excel(name = "考试人数")
    private Long examNumbers;

    /** 三及格人数 */
    @Excel(name = "三及格人数")
    private Long tripleQualifiedNumbers;

    /** 三优秀人数 */
    @Excel(name = "三优秀人数")
    private Long tripleExcellentNumbers;

    /** 三及格率 */
    @Excel(name = "三及格率")
    private String tripleQualifiedPercentage;

    /** 三优秀率 */
    @Excel(name = "三优秀率")
    private String tripleExcellentPercentage;

    /** 综合分 */
    @Excel(name = "综合分")
    private String muitipleScore;

    /** 年级 */
    @Excel(name = "年级")
    private String grade;

    /** 班级 */
    @Excel(name = "班级")
    private String classes;

    /** 排名 */
    @Excel(name = "排名")
    private Integer rate;

    /** 考试ID */
    //@Excel(name = "考试ID")
    private Long examId;

    /** 各种考试信息 */
    @Excel(name = "考试名称", targetAttr = "examName", type = Excel.Type.EXPORT)
    private Exams exams;

    public void setExamGradeStatisticsId(Long examGradeStatisticsId)
    {
        this.examGradeStatisticsId = examGradeStatisticsId;
    }

    public Long getExamGradeStatisticsId()
    {
        return examGradeStatisticsId;
    }
    public void setExamNumbers(Long examNumbers)
    {
        this.examNumbers = examNumbers;
    }

    public Long getExamNumbers()
    {
        return examNumbers;
    }
    public void setTripleQualifiedNumbers(Long tripleQualifiedNumbers)
    {
        this.tripleQualifiedNumbers = tripleQualifiedNumbers;
    }

    public Long getTripleQualifiedNumbers()
    {
        return tripleQualifiedNumbers;
    }
    public void setTripleExcellentNumbers(Long tripleExcellentNumbers)
    {
        this.tripleExcellentNumbers = tripleExcellentNumbers;
    }

    public Long getTripleExcellentNumbers()
    {
        return tripleExcellentNumbers;
    }
    public void setTripleQualifiedPercentage(String tripleQualifiedPercentage)
    {
        this.tripleQualifiedPercentage = tripleQualifiedPercentage;
    }

    public String getTripleQualifiedPercentage()
    {
        return tripleQualifiedPercentage;
    }
    public void setTripleExcellentPercentage(String tripleExcellentPercentage)
    {
        this.tripleExcellentPercentage = tripleExcellentPercentage;
    }

    public String getTripleExcellentPercentage()
    {
        return tripleExcellentPercentage;
    }
    public void setMuitipleScore(String muitipleScore)
    {
        this.muitipleScore = muitipleScore;
    }

    public String getMuitipleScore()
    {
        return muitipleScore;
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
    public void setRate(Integer rate)
    {
        this.rate = rate;
    }

    public Integer getRate()
    {
        return rate;
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
            .append("examGradeStatisticsId", getExamGradeStatisticsId())
            .append("examNumbers", getExamNumbers())
            .append("tripleQualifiedNumbers", getTripleQualifiedNumbers())
            .append("tripleExcellentNumbers", getTripleExcellentNumbers())
            .append("tripleQualifiedPercentage", getTripleQualifiedPercentage())
            .append("tripleExcellentPercentage", getTripleExcellentPercentage())
            .append("muitipleScore", getMuitipleScore())
            .append("grade", getGrade())
            .append("classes", getClasses())
            .append("rate", getRate())
            .append("examId", getExamId())
            .append("exams", getExams())
            .toString();
    }
}
