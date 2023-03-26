package com.hysro.scores.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 统计数据的帮助类
 *
 * @author hysro
 * @date 2023-03-236
 */
public class ExamScoreLineHelper {

    private static final long serialVersionUID = 1L;

    //优秀分数线
    private Double excellentLine;

    //满分分数线
    private Integer fullLine;

    //分数范围上限分数线
    private Integer topLine;

    //数范围下限分数线
    private Integer underLine;

    private String grade;
    private String classes;
    private String subject;
    private Long examId;

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getClasses() {
        return classes;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public Long getExamId() {
        return examId;
    }

    public void setExamId(Long examId) {
        this.examId = examId;
    }

    public Integer getFullLine() {
        return fullLine;
    }

    public void setFullLine(Integer fullLine) {
        this.fullLine = fullLine;
    }

    public Double getExcellentLine() {
        return excellentLine;
    }

    public void setExcellentLine(Double excellentLine) {
        this.excellentLine = excellentLine;
    }

    public Integer getTopLine() {
        return topLine;
    }

    public void setTopLine(Integer topLine) {
        this.topLine = topLine;
    }

    public Integer getUnderLine() {
        return underLine;
    }

    public void setUnderLine(Integer underLine) {
        this.underLine = underLine;
    }

    public ExamScoreLineHelper(Integer topLine, Integer underLine) {
        this.topLine = topLine;
        this.underLine = underLine;
    }

    public ExamScoreLineHelper(Integer underLine) {
        this.underLine = underLine;
    }

    public ExamScoreLineHelper() {
    }

    public ExamScoreLineHelper(Double excellentLine, Integer topLine, Integer underLine) {
        this.excellentLine = excellentLine;
        this.topLine = topLine;
        this.underLine = underLine;
    }

    public ExamScoreLineHelper(String grade, String classes, String subject, Long examId) {
        this.grade = grade;
        this.classes = classes;
        this.subject = subject;
        this.examId = examId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("excellentLine", getExcellentLine())
                .append("topLine", getTopLine())
                .append("underLine", getUnderLine())
                .append("fullLine", getFullLine())
                .append("grade", getGrade())
                .append("classes", getClasses())
                .append("subject", getSubject())
                .append("examId", getExamId())
                .toString();
    }
}
