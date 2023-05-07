package com.hysro.scores.domain;

import com.alibaba.fastjson2.annotation.JSONField;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import java.math.BigDecimal;

/**
 * 临时分数表domain
 *
 * @author hysro
 * @date 2023-05-05
 */
public class ExamTempScores extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long id;
    /** 考试号 */
    @NotBlank
    @Pattern(regexp = "([1-9]|[A])[0-1]\\d\\d\\d",message = "举例20403 表示2022年入学的4班03号学生")
    private String examNumber;

    /** 语文分数 */
    private BigDecimal chineseScore;

    /** 数学分数 */
    private BigDecimal mathsScore;

    /** 英语分数 */
    private BigDecimal englishScore;
    private Long examId;

    @JSONField(serialize = false)
    private BigDecimal score;
    @JSONField(serialize = false)
    private String subjectName;

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("examId", getExamId())
                .append("examNumber", getExamNumber())
                .append("id", getId())
                .append("chineseScore", getChineseScore())
                .append("mathsScore", getMathsScore())
                .append("englishScore", getEnglishScore())
                .toString();
    }

    public BigDecimal getScore() {
        return score;
    }

    public void setScore(BigDecimal score) {
        this.score = score;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getExamNumber() {
        return examNumber;
    }

    public void setExamNumber(String examNumber) {
        this.examNumber = examNumber;
    }

    public BigDecimal getChineseScore() {
        return chineseScore;
    }

    public void setChineseScore(BigDecimal chineseScore) {
        this.chineseScore = chineseScore;
    }

    public BigDecimal getMathsScore() {
        return mathsScore;
    }

    public void setMathsScore(BigDecimal mathsScore) {
        this.mathsScore = mathsScore;
    }

    public BigDecimal getEnglishScore() {
        return englishScore;
    }

    public void setEnglishScore(BigDecimal englishScore) {
        this.englishScore = englishScore;
    }

    public Long getExamId() {
        return examId;
    }

    public void setExamId(Long examId) {
        this.examId = examId;
    }
}
