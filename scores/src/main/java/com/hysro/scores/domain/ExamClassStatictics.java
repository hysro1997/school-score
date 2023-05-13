package com.hysro.scores.domain;

import com.alibaba.fastjson2.annotation.JSONField;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 班级成绩统计情况对象 exam_class_statictics
 *
 * @author hysro
 * @date 2023-04-04
 */
public class ExamClassStatictics extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 统计记录ID */
    private Long examStatisticsId;

    /** 年级 */
    @Excel(name = "年级", type = Excel.Type.EXPORT)
    private String grade;

    /** 班级 */
    @Excel(name = "班级", type = Excel.Type.EXPORT)
    private String classes;

    /** 学科 */
    @Excel(name = "学科", type = Excel.Type.EXPORT)
    private String subject;

    /** 参加考试的人数 */
    @Excel(name = "参加考试的人数", type = Excel.Type.EXPORT)
    private Long examNumbers;

    /** 满分人数 */
    @Excel(name = "满分人数", type = Excel.Type.EXPORT)
    private Long fullSocreNumbers;

    /** 优秀人数(优秀-99) */
    @Excel(name = "优秀人数(优秀-99)", type = Excel.Type.EXPORT)
    private Long excellentNumbers;

    /** 良好人数(75-优秀) */
    @Excel(name = "良好人数(75-优秀)", type = Excel.Type.EXPORT)
    private Long goodNumbers;

    /** 及格人数(60-75) */
    @Excel(name = "及格人数(60-75)", type = Excel.Type.EXPORT)
    private Long qualifiedNumbers;

    /** 不及格人数(55-59) */
    @Excel(name = "不及格人数(55-59)", type = Excel.Type.EXPORT)
    private Long unqualifiedOneNumbers;

    /** 不及格人数(50-54) */
    @Excel(name = "不及格人数(50-54)", type = Excel.Type.EXPORT)
    private Long unqualifiedTwoNumbers;

    /** 不及格人数(40-49) */
    @Excel(name = "不及格人数(40-49)", type = Excel.Type.EXPORT)
    private Long unqualifiedThreeNumbers;

    /** 不及格人数(40分以下) */
    @Excel(name = "不及格人数(40分以下)", type = Excel.Type.EXPORT)
    private Long unqualifiedFourNumbers;

    /** 全班总分 */
    @Excel(name = "全班总分", type = Excel.Type.EXPORT)
    private String totalScore;

    /** 平均分 */
    @Excel(name = "平均分", type = Excel.Type.EXPORT)
    private String averageScore;

    /** 及格率 */
    @Excel(name = "及格率", type = Excel.Type.EXPORT)
    private String qualifiedPercentage;

    /** 优秀率 */
    @Excel(name = "优秀率", type = Excel.Type.EXPORT)
    private String excellentPercentage;

    /** 综合分（平均分*40%，及格率*30%，优秀率*30%） */
    @Excel(name = "综合分", type = Excel.Type.EXPORT)
    private String muitipleScore;

    /** 考试ID */
    //@Excel(name = "考试ID")
    private Long examId;

    /** 综合分排名 */
    @Excel(name = "综合分排名", type = Excel.Type.EXPORT)
    private Integer muitipleRank;

    /** 平均分排名 */
    @Excel(name = "平均分排名", type = Excel.Type.EXPORT)
    private Integer averageRank;

    /** 各种考试信息 */
    @Excel(name = "考试名称", targetAttr = "examName", type = Excel.Type.EXPORT)
    private Exams exams;

    @JSONField(serialize = false)
    private Long excellentLine;

    /** 动态给sql传参，表明查询的是哪个学科的分数，另一情况用于表明查询的是平均分还是综合分 */
    @JSONField(serialize = false)
    private String subjectName;

    /** 动态给sql传参，表明查询的是哪个学科的分数，另一情况用于表明查询的是平均分还是综合分 */
    @JSONField(serialize = false)
    private String subjectName2;

    /** 动态给sql传参，表明查询的是哪个学科的分数，另一情况用于表明查询的是平均分还是综合分 */
    @JSONField(serialize = false)
    private String subjectName3;

    /** 动态给sql传参，表明查询的综合分计算时的优秀率系数 */
    @JSONField(serialize = false)
    private String excellentAgent;

    /** 动态给sql传参，表明查询的综合分计算时的及格率系数 */
    @JSONField(serialize = false)
    private String qualifiedAgent;

    /** 动态给sql传参，表明查询的综合分计算时的平均分系数 */
    @JSONField(serialize = false)
    private String averageAgent;

    @JSONField(serialize = false)
    private Long goodLine;

    @JSONField(serialize = false)
    private Long fullLine;

    @JSONField(serialize = false)
    private Long qualifiedLine;

    @JSONField(serialize = false)
    private Long unqualifiedOneLine;

    @JSONField(serialize = false)
    private Long unqualifiedTwoLine;

    @JSONField(serialize = false)
    private Long unqualifiedThreeLine;

    @JSONField(serialize = false)
    private Long unqualifiedFourLine;

    public Long getQualifiedLine() {
        return qualifiedLine;
    }

    public void setQualifiedLine(Long qualifiedLine) {
        this.qualifiedLine = qualifiedLine;
    }

    public Long getGoodLine() {
        return goodLine;
    }

    public void setGoodLine(Long goodLine) {
        this.goodLine = goodLine;
    }

    public Long getFullLine() {
        return fullLine;
    }

    public void setFullLine(Long fullLine) {
        this.fullLine = fullLine;
    }

    public Long getUnqualifiedOneLine() {
        return unqualifiedOneLine;
    }

    public void setUnqualifiedOneLine(Long unqualifiedOneLine) {
        this.unqualifiedOneLine = unqualifiedOneLine;
    }

    public Long getUnqualifiedTwoLine() {
        return unqualifiedTwoLine;
    }

    public void setUnqualifiedTwoLine(Long unqualifiedTwoLine) {
        this.unqualifiedTwoLine = unqualifiedTwoLine;
    }

    public Long getUnqualifiedThreeLine() {
        return unqualifiedThreeLine;
    }

    public void setUnqualifiedThreeLine(Long unqualifiedThreeLine) {
        this.unqualifiedThreeLine = unqualifiedThreeLine;
    }

    public Long getUnqualifiedFourLine() {
        return unqualifiedFourLine;
    }

    public void setUnqualifiedFourLine(Long unqualifiedFourLine) {
        this.unqualifiedFourLine = unqualifiedFourLine;
    }

    public String getSubjectName2() {
        return subjectName2;
    }

    public void setSubjectName2(String subjectName2) {
        this.subjectName2 = subjectName2;
    }

    public String getSubjectName3() {
        return subjectName3;
    }

    public void setSubjectName3(String subjectName3) {
        this.subjectName3 = subjectName3;
    }

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

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

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
    public void setMuitipleScore(String muitipleScore)
    {
        this.muitipleScore = muitipleScore;
    }

    public String getMuitipleScore()
    {
        return muitipleScore;
    }
    public void setExamId(Long examId)
    {
        this.examId = examId;
    }

    public Long getExamId()
    {
        return examId;
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

    public Exams getExams() {
        return exams;
    }

    public void setExams(Exams exams) {
        this.exams = exams;
    }

    public Long getExcellentLine() {
        return excellentLine;
    }

    public void setExcellentLine(Long excellentLine) {
        this.excellentLine = excellentLine;
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
            .append("muitipleScore", getMuitipleScore())
            .append("examId", getExamId())
            .append("muitipleRank", getMuitipleRank())
            .append("averageRank", getAverageRank())
            .append("exams", getExams())
            .append("excellentLine", getExcellentLine())
            .toString();
    }
}
