package com.hysro.scores.domain;

import com.ruoyi.common.annotation.Excel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 统计数据的帮助类
 */
public class ExamStatisticScoreLineHelper {
    private static final long serialVersionUID = 1L;

    private String grade;
    private Long chineseLine;
    private Long mathsLine;
    private Long englishLine;
    private String classes;
    private Long examId;

    public ExamStatisticScoreLineHelper(String grade, Long chineseLine, Long mathsLine, Long englishLine) {
        this.grade = grade;
        this.chineseLine = chineseLine;
        this.mathsLine = mathsLine;
        this.englishLine = englishLine;
    }

    public ExamStatisticScoreLineHelper(String grade, Long chineseLine, Long mathsLine, Long englishLine, String classes, Long examId) {
        this.grade = grade;
        this.chineseLine = chineseLine;
        this.mathsLine = mathsLine;
        this.englishLine = englishLine;
        this.classes = classes;
        this.examId = examId;
    }

    public ExamStatisticScoreLineHelper(String grade, Long chineseLine, Long mathsLine) {
        this.grade = grade;
        this.chineseLine = chineseLine;
        this.mathsLine = mathsLine;
    }

    public ExamStatisticScoreLineHelper() {
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("chineseLine", getChineseLine())
                .append("grade", getGrade())
                .append("mathsLine", getMathsLine())
                .append("englishLine", getEnglishLine())
                .toString();
    }

    public String getClasses() {
        return classes;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }

    public Long getExamId() {
        return examId;
    }

    public void setExamId(Long examId) {
        this.examId = examId;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public Long getChineseLine() {
        return chineseLine;
    }

    public void setChineseLine(Long chineseLine) {
        this.chineseLine = chineseLine;
    }

    public Long getMathsLine() {
        return mathsLine;
    }

    public void setMathsLine(Long mathsLine) {
        this.mathsLine = mathsLine;
    }

    public Long getEnglishLine() {
        return englishLine;
    }

    public void setEnglishLine(Long englishLine) {
        this.englishLine = englishLine;
    }
}
