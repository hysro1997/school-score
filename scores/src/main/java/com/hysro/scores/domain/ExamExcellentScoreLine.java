package com.hysro.scores.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 优秀分数线对象 exam_excellent_score_line
 *
 * @author hysro
 * @date 2023-03-23
 */
public class ExamExcellentScoreLine extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long excellentId;

    /** 学科 */
    @Excel(name = "学科", type = Excel.Type.EXPORT)
    private String subject;

    /** 优秀分数 */
    @Excel(name = "优秀分数", type = Excel.Type.EXPORT)
    @NotNull
    private Long excellentScore;

    /** 年级 */
    @Excel(name = "年级", type = Excel.Type.EXPORT)
    private String grade;

    private Long examId;
    @NotNull
    private Long fullScore;
    @NotNull
    private Long goodScore;
    @NotNull
    private Long qualifiedScore;
    @NotNull
    private Long unqualifiedOneScore;
    @NotNull
    private Long unqualifiedTwoScore;
    @NotNull
    private Long unqualifiedThreeScore;
    @NotNull
    private Long unqualifiedFourScore;

    public Long getExamId() {
        return examId;
    }

    public void setExamId(Long examId) {
        this.examId = examId;
    }

    public Long getFullScore() {
        return fullScore;
    }

    public void setFullScore(Long fullScore) {
        this.fullScore = fullScore;
    }

    public Long getGoodScore() {
        return goodScore;
    }

    public void setGoodScore(Long goodScore) {
        this.goodScore = goodScore;
    }

    public Long getQualifiedScore() {
        return qualifiedScore;
    }

    public void setQualifiedScore(Long qualifiedScore) {
        this.qualifiedScore = qualifiedScore;
    }

    public Long getUnqualifiedOneScore() {
        return unqualifiedOneScore;
    }

    public void setUnqualifiedOneScore(Long unqualifiedOneScore) {
        this.unqualifiedOneScore = unqualifiedOneScore;
    }

    public Long getUnqualifiedTwoScore() {
        return unqualifiedTwoScore;
    }

    public void setUnqualifiedTwoScore(Long unqualifiedTwoScore) {
        this.unqualifiedTwoScore = unqualifiedTwoScore;
    }

    public Long getUnqualifiedThreeScore() {
        return unqualifiedThreeScore;
    }

    public void setUnqualifiedThreeScore(Long unqualifiedThreeScore) {
        this.unqualifiedThreeScore = unqualifiedThreeScore;
    }

    public Long getUnqualifiedFourScore() {
        return unqualifiedFourScore;
    }

    public void setUnqualifiedFourScore(Long unqualifiedFourScore) {
        this.unqualifiedFourScore = unqualifiedFourScore;
    }

    public void setExcellentId(Long excellentId)
    {
        this.excellentId = excellentId;
    }

    public Long getExcellentId()
    {
        return excellentId;
    }
    public void setSubject(String subject)
    {
        this.subject = subject;
    }

    public String getSubject()
    {
        return subject;
    }
    public void setExcellentScore(Long excellentScore)
    {
        this.excellentScore = excellentScore;
    }

    public Long getExcellentScore()
    {
        return excellentScore;
    }
    public void setGrade(String grade)
    {
        this.grade = grade;
    }

    public String getGrade()
    {
        return grade;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("excellentId", getExcellentId())
            .append("subject", getSubject())
            .append("excellentScore", getExcellentScore())
            .append("grade", getGrade())
            .toString();
    }
}
