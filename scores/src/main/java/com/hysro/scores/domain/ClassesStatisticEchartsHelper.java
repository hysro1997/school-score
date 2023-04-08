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
     * 班级们
     */
    public String[] classes;

    /**
     * 排名
     */
    public int[] chineseRates;
    public int[] mathsRates;
    public int[] englishRates;

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
                .toString();
    }
}
