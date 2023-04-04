package com.hysro.scores.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

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
    @Excel(name = "年级")
    private String grade;

    /** 班级 */
    @Excel(name = "班级")
    private String classes;

    /** 考试号 */
    @Excel(name = "考试号")
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

    /** 考试ID */
    //@Excel(name = "考试ID")
    private Long examId;

    /** 各种考试信息 */
    @Excel(name = "考试名称", targetAttr = "examName", type = Excel.Type.EXPORT)
    private Exams exams;

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
            .toString();
    }
}
