package com.hysro.scores.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 班级数据给Echarts图表的帮助类
 *
 * @author hysro
 * @date 2023-3-31
 */
public class ClassesStatisticEchartsHelper {

    private static final long serialVersionUID = 1L;

    /**
     * 学科们
     */
    public String[] subjects;

    /**
     * 学科们
     */
    public String[] examNames;

    /**
     * 班级们
     */
    public String[] classes;

    /**
     * 排名
     */
    public int[] chineseRates;
    public int[] mathsRates;
    public int[] englishRates;

    public String examName;
    public int rate;
    public String teacherName;


    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getExamName() {
        return examName;
    }

    public void setExamName(String examName) {
        this.examName = examName;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public String[] getExamNames() {
        return examNames;
    }

    public void setExamNames(String[] examNames) {
        this.examNames = examNames;
    }

    public String[] getClasses() {
        return classes;
    }

    public void setClasses(String[] classes) {
        this.classes = classes;
    }

    public String[] getSubjects() {
        return subjects;
    }

    public void setSubjects(String[] subjects) {
        this.subjects = subjects;
    }

    public int[] getChineseRates() {
        return chineseRates;
    }

    public void setChineseRates(int[] chineseRates) {
        this.chineseRates = chineseRates;
    }

    public int[] getMathsRates() {
        return mathsRates;
    }

    public void setMathsRates(int[] mathsRates) {
        this.mathsRates = mathsRates;
    }

    public int[] getEnglishRates() {
        return englishRates;
    }

    public void setEnglishRates(int[] englishRates) {
        this.englishRates = englishRates;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("subjects", getSubjects())
                .append("chineseRates", getChineseRates())
                .append("mathsRates", getMathsRates())
                .append("englishRates", getEnglishRates())
                .append("classes", getClasses())
                .append("examNames", getExamNames())
                .append("rate", getRate())
                .append("examName", getExamName())
                .toString();
    }
}
