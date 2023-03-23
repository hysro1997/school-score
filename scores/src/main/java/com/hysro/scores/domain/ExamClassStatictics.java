package com.hysro.scores.domain;

import java.util.List;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 班级成绩统计情况对象 exam_class_statictics
 * 
 * @author hysro
 * @date 2023-03-23
 */
public class ExamClassStatictics extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 统计记录ID */
    private Long examStatisticsId;

    /** 年级 */
    @Excel(name = "年级")
    private String grade;

    /** 班级 */
    @Excel(name = "班级")
    private String classes;

    /** 学科 */
    @Excel(name = "学科")
    private String subject;

    /** 参加考试的人数 */
    @Excel(name = "参加考试的人数")
    private Long examNumbers;

    /** 满分人数 */
    @Excel(name = "满分人数")
    private Long fullSocreNumbers;

    /** 优秀人数 */
    @Excel(name = "优秀人数")
    private Long excellentNumbers;

    /** 良好人数 */
    @Excel(name = "良好人数")
    private Long goodNumbers;

    /** 及格人数 */
    @Excel(name = "及格人数")
    private Long qualifiedNumbers;

    /** 不及格人数(55-59) */
    @Excel(name = "不及格人数(55-59)")
    private Long unqualifiedOneNumbers;

    /** 不及格人数(50-54) */
    @Excel(name = "不及格人数(50-54)")
    private Long unqualifiedTwoNumbers;

    /** 不及格人数(40-49) */
    @Excel(name = "不及格人数(40-49)")
    private Long unqualifiedThreeNumbers;

    /** 不及格人数(40分以下) */
    @Excel(name = "不及格人数(40分以下)")
    private Long unqualifiedFourNumbers;

    /** 全班总分 */
    @Excel(name = "全班总分")
    private String totalScore;

    /** 平均分 */
    @Excel(name = "平均分")
    private String averageScore;

    /** 及格率 */
    @Excel(name = "及格率")
    private String qualifiedPercentage;

    /** 优秀率 */
    @Excel(name = "优秀率")
    private String excellentPercentage;

    /** 综合分（平均分*40%，及格率*30%，优秀率*30%） */
    @Excel(name = "综合分", readConverterExp = "平=均分*40%，及格率*30%，优秀率*30%")
    private String mutipleScore;

    /** 考试ID */
    @Excel(name = "考试ID")
    private Long examId;

    /** 排名 */
    @Excel(name = "排名")
    private Integer rate;

    /** 各种考试信息 */
    private List<Exams> examsList;

    public void setExamStatisticsId(Long examStatisticsId) 
    {
        this.examStatisticsId = examStatisticsId;
    }

    public Long getExamStatisticsId() 
    {
        return examStatisticsId;
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
    public void setSubject(String subject) 
    {
        this.subject = subject;
    }

    public String getSubject() 
    {
        return subject;
    }
    public void setExamNumbers(Long examNumbers) 
    {
        this.examNumbers = examNumbers;
    }

    public Long getExamNumbers() 
    {
        return examNumbers;
    }
    public void setFullSocreNumbers(Long fullSocreNumbers) 
    {
        this.fullSocreNumbers = fullSocreNumbers;
    }

    public Long getFullSocreNumbers() 
    {
        return fullSocreNumbers;
    }
    public void setExcellentNumbers(Long excellentNumbers) 
    {
        this.excellentNumbers = excellentNumbers;
    }

    public Long getExcellentNumbers() 
    {
        return excellentNumbers;
    }
    public void setGoodNumbers(Long goodNumbers) 
    {
        this.goodNumbers = goodNumbers;
    }

    public Long getGoodNumbers() 
    {
        return goodNumbers;
    }
    public void setQualifiedNumbers(Long qualifiedNumbers) 
    {
        this.qualifiedNumbers = qualifiedNumbers;
    }

    public Long getQualifiedNumbers() 
    {
        return qualifiedNumbers;
    }
    public void setUnqualifiedOneNumbers(Long unqualifiedOneNumbers) 
    {
        this.unqualifiedOneNumbers = unqualifiedOneNumbers;
    }

    public Long getUnqualifiedOneNumbers() 
    {
        return unqualifiedOneNumbers;
    }
    public void setUnqualifiedTwoNumbers(Long unqualifiedTwoNumbers) 
    {
        this.unqualifiedTwoNumbers = unqualifiedTwoNumbers;
    }

    public Long getUnqualifiedTwoNumbers() 
    {
        return unqualifiedTwoNumbers;
    }
    public void setUnqualifiedThreeNumbers(Long unqualifiedThreeNumbers) 
    {
        this.unqualifiedThreeNumbers = unqualifiedThreeNumbers;
    }

    public Long getUnqualifiedThreeNumbers() 
    {
        return unqualifiedThreeNumbers;
    }
    public void setUnqualifiedFourNumbers(Long unqualifiedFourNumbers) 
    {
        this.unqualifiedFourNumbers = unqualifiedFourNumbers;
    }

    public Long getUnqualifiedFourNumbers() 
    {
        return unqualifiedFourNumbers;
    }
    public void setTotalScore(String totalScore) 
    {
        this.totalScore = totalScore;
    }

    public String getTotalScore() 
    {
        return totalScore;
    }
    public void setAverageScore(String averageScore) 
    {
        this.averageScore = averageScore;
    }

    public String getAverageScore() 
    {
        return averageScore;
    }
    public void setQualifiedPercentage(String qualifiedPercentage) 
    {
        this.qualifiedPercentage = qualifiedPercentage;
    }

    public String getQualifiedPercentage() 
    {
        return qualifiedPercentage;
    }
    public void setExcellentPercentage(String excellentPercentage) 
    {
        this.excellentPercentage = excellentPercentage;
    }

    public String getExcellentPercentage() 
    {
        return excellentPercentage;
    }
    public void setMutipleScore(String mutipleScore) 
    {
        this.mutipleScore = mutipleScore;
    }

    public String getMutipleScore() 
    {
        return mutipleScore;
    }
    public void setExamId(Long examId) 
    {
        this.examId = examId;
    }

    public Long getExamId() 
    {
        return examId;
    }
    public void setRate(Integer rate) 
    {
        this.rate = rate;
    }

    public Integer getRate() 
    {
        return rate;
    }

    public List<Exams> getExamsList()
    {
        return examsList;
    }

    public void setExamsList(List<Exams> examsList)
    {
        this.examsList = examsList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("examStatisticsId", getExamStatisticsId())
            .append("grade", getGrade())
            .append("classes", getClasses())
            .append("subject", getSubject())
            .append("examNumbers", getExamNumbers())
            .append("fullSocreNumbers", getFullSocreNumbers())
            .append("excellentNumbers", getExcellentNumbers())
            .append("goodNumbers", getGoodNumbers())
            .append("qualifiedNumbers", getQualifiedNumbers())
            .append("unqualifiedOneNumbers", getUnqualifiedOneNumbers())
            .append("unqualifiedTwoNumbers", getUnqualifiedTwoNumbers())
            .append("unqualifiedThreeNumbers", getUnqualifiedThreeNumbers())
            .append("unqualifiedFourNumbers", getUnqualifiedFourNumbers())
            .append("totalScore", getTotalScore())
            .append("averageScore", getAverageScore())
            .append("qualifiedPercentage", getQualifiedPercentage())
            .append("excellentPercentage", getExcellentPercentage())
            .append("mutipleScore", getMutipleScore())
            .append("examId", getExamId())
            .append("rate", getRate())
            .append("examsList", getExamsList())
            .toString();
    }
}
