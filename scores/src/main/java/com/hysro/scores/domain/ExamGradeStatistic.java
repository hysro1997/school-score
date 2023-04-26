package com.hysro.scores.domain;

import com.alibaba.fastjson2.annotation.JSONField;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 年级数据统计情况对象 exam_grade_statistic
 *
 * @author hysro
 * @date 2023-04-04
 */
public class ExamGradeStatistic extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 年级数据ID */
    private Long examGradeStatisticsId;

    /** 考试人数 */
    @Excel(name = "考试人数", type = Excel.Type.EXPORT)
    private Long examNumbers;

    /** 三及格人数 */
    @Excel(name = "三及格人数", type = Excel.Type.EXPORT)
    private Long tripleQualifiedNumbers;

    /** 三优秀人数 */
    @Excel(name = "三优秀人数", type = Excel.Type.EXPORT)
    private Long tripleExcellentNumbers;

    /** 三及格率 */
    @Excel(name = "三及格率", type = Excel.Type.EXPORT)
    private String tripleQualifiedPercentage;

    /** 三优秀率 */
    @Excel(name = "三优秀率", type = Excel.Type.EXPORT)
    private String tripleExcellentPercentage;

    /** 综合分 */
    @Excel(name = "综合分", type = Excel.Type.EXPORT)
    private String muitipleScore;

    /** 年级 */
    @Excel(name = "年级", type = Excel.Type.EXPORT)
    private String grade;

    /** 班级 */
    @Excel(name = "班级", type = Excel.Type.EXPORT)
    private String classes;

    /** 综合分排名 */
    @Excel(name = "综合分排名", type = Excel.Type.EXPORT)
    private Integer muitipleRank;

    /** 平均分排名 */
    @Excel(name = "平均分排名", type = Excel.Type.EXPORT)
    private Integer averageRank;

    /** 考试ID */
    //@Excel(name = "考试ID")
    private Long examId;

    /** 总得分 */
    @Excel(name = "总得分", type = Excel.Type.EXPORT)
    private String allScore;

    /** 得分率 */
    @Excel(name = "得分率", type = Excel.Type.EXPORT)
    private String allScorePercentage;
    @JSONField(serialize = false)
    private Long excellentLineChinese;
    @JSONField(serialize = false)
    private Long excellentLineMath;
    @JSONField(serialize = false)
    private Long excellentLineEnglish;

    /** 动态给sql传参，表明查询的综合分计算时的优秀率系数 */
    @JSONField(serialize = false)
    private String excellentAgent;

    /** 动态给sql传参，表明查询的综合分计算时的及格率系数 */
    @JSONField(serialize = false)
    private String qualifiedAgent;

    /** 动态给sql传参，表明查询的综合分计算时的平均分系数 */
    @JSONField(serialize = false)
    private String averageAgent;

    public String getExcellentAgent() {
        return excellentAgent;
    }

    public void setExcellentAgent(String excellentAgent) {
        this.excellentAgent = excellentAgent;
    }

    public String getQualifiedAgent() {
        return qualifiedAgent;
    }

    public void setQualifiedAgent(String qualifiedAgent) {
        this.qualifiedAgent = qualifiedAgent;
    }

    public String getAverageAgent() {
        return averageAgent;
    }

    public void setAverageAgent(String averageAgent) {
        this.averageAgent = averageAgent;
    }
    /** 各种考试信息 */
    @Excel(name = "考试名称", targetAttr = "examName", type = Excel.Type.EXPORT)
    private Exams exams;
    public void setExamGradeStatisticsId(Long examGradeStatisticsId)
    {
        this.examGradeStatisticsId = examGradeStatisticsId;
    }

    public Long getExcellentLineChinese() {
        return excellentLineChinese;
    }

    public void setExcellentLineChinese(Long excellentLineChinese) {
        this.excellentLineChinese = excellentLineChinese;
    }

    public Long getExcellentLineMath() {
        return excellentLineMath;
    }

    public void setExcellentLineMath(Long excellentLineMath) {
        this.excellentLineMath = excellentLineMath;
    }

    public Long getExcellentLineEnglish() {
        return excellentLineEnglish;
    }

    public void setExcellentLineEnglish(Long excellentLineEnglish) {
        this.excellentLineEnglish = excellentLineEnglish;
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
    public void setMuitipleRank(Integer muitipleRank)
    {
        this.muitipleRank = muitipleRank;
    }

    public Integer getMuitipleRank()
    {
        return muitipleRank;
    }
    public void setAverageRank(Integer averageRank)
    {
        this.averageRank = averageRank;
    }

    public Integer getAverageRank()
    {
        return averageRank;
    }
    public void setExamId(Long examId)
    {
        this.examId = examId;
    }

    public Long getExamId()
    {
        return examId;
    }
    public void setAllScore(String allScore)
    {
        this.allScore = allScore;
    }

    public String getAllScore()
    {
        return allScore;
    }
    public void setAllScorePercentage(String allScorePercentage)
    {
        this.allScorePercentage = allScorePercentage;
    }

    public String getAllScorePercentage()
    {
        return allScorePercentage;
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
            .append("muitipleRank", getMuitipleRank())
            .append("averageRank", getAverageRank())
            .append("examId", getExamId())
            .append("allScore", getAllScore())
            .append("allScorePercentage", getAllScorePercentage())
            .append("exams", getExams())
            .append("excellentLineChinese", getExcellentLineChinese())
            .append("excellentLineMath", getExcellentLineMath())
            .append("excellentLineEnglish", getExcellentLineEnglish())
            .toString();
    }
}
