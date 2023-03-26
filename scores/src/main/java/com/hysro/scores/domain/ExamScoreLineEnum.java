package com.hysro.scores.domain;

public enum ExamScoreLineEnum {
    /**
     * 满分
     */
    FULL_MARK(100),
    /**
     * 良好
     */
    GOOD_LINE(75),

    /**
     * 合格分数线
     */
    QUALIFIED_LINE(60),

    /**
     * 55-59
     */
    UNQUALIFIED_HEIGH_LINE(55),

    /**
     * 50-54
     */
    UNQUALIFIED_MEDIUM_LINE(50),

    /**
     * 40-49
     */
    UNQUALIFIED_LOW_LINE(40),

    /**
     * 40以下
     */
    UNQUALIFIED_UNQUALIFIED(0),

    /**
     * 高年级优秀分数线
     */
    EXCELLENT_LINE2(85),
    /**
     * 低年级优秀分数线
     */
    EXCELLENT_LINE1(90);


    /**
     * 优秀分数线
     */
    private Double excellentLine;

    /**
     * 满分分数线
     */
    private Integer fullLine;

    /**
     * 分数范围上限分数线
     */
    private Integer topLine;

    /**
     * 数范围下限分数线
     */
    private Integer underLine;

    ExamScoreLineEnum() {
    }

    ExamScoreLineEnum(Integer underLine) {
        this.underLine = underLine;
    }

    ExamScoreLineEnum(Integer topLine, Integer underLine) {
        this.topLine = topLine;
        this.underLine = underLine;
    }


    public Double getExcellentLine() {
        return excellentLine;
    }

    public Integer getFullLine() {
        return fullLine;
    }

    public Integer getTopLine() {
        return topLine;
    }

    public Integer getUnderLine() {
        return underLine;
    }
}
