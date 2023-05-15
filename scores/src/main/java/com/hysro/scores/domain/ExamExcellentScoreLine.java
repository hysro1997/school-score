package com.hysro.scores.domain;

import com.alibaba.fastjson2.annotation.JSONField;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

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
    private BigDecimal fullScore;
    @NotNull
    private BigDecimal goodScore;
    @NotNull
    private BigDecimal qualifiedScore;
    @NotNull
    private BigDecimal unqualifiedOneScore;
    @NotNull
    private BigDecimal unqualifiedTwoScore;
    @NotNull
    private BigDecimal unqualifiedThreeScore;
    @NotNull
    private BigDecimal unqualifiedFourScore;
    private BigDecimal tripleFullScore;

    @JSONField(serialize = false)
    private Integer confirmFlag;

    public BigDecimal getTripleFullScore() {
        return tripleFullScore;
    }

    public void setTripleFullScore(BigDecimal tripleFullScore) {
        this.tripleFullScore = tripleFullScore;
    }

    public Integer getConfirmFlag() {
        return confirmFlag;
    }

    public void setConfirmFlag(Integer confirmFlag) {
        this.confirmFlag = confirmFlag;
    }
    public Long getExamId() {
        return examId;
    }

    public void setExamId(Long examId) {
        this.examId = examId;
    }

    public BigDecimal getFullScore() {
        return fullScore;
    }

    public void setFullScore(BigDecimal fullScore) {
        this.fullScore = fullScore;
    }

    public BigDecimal getGoodScore() {
        return goodScore;
    }

    public void setGoodScore(BigDecimal goodScore) {
        this.goodScore = goodScore;
    }

    public BigDecimal getQualifiedScore() {
        return qualifiedScore;
    }

    public void setQualifiedScore(BigDecimal qualifiedScore) {
        this.qualifiedScore = qualifiedScore;
    }

    public BigDecimal getUnqualifiedOneScore() {
        return unqualifiedOneScore;
    }

    public void setUnqualifiedOneScore(BigDecimal unqualifiedOneScore) {
        this.unqualifiedOneScore = unqualifiedOneScore;
    }

    public BigDecimal getUnqualifiedTwoScore() {
        return unqualifiedTwoScore;
    }

    public void setUnqualifiedTwoScore(BigDecimal unqualifiedTwoScore) {
        this.unqualifiedTwoScore = unqualifiedTwoScore;
    }

    public BigDecimal getUnqualifiedThreeScore() {
        return unqualifiedThreeScore;
    }

    public void setUnqualifiedThreeScore(BigDecimal unqualifiedThreeScore) {
        this.unqualifiedThreeScore = unqualifiedThreeScore;
    }

    public BigDecimal getUnqualifiedFourScore() {
        return unqualifiedFourScore;
    }

    public void setUnqualifiedFourScore(BigDecimal unqualifiedFourScore) {
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
