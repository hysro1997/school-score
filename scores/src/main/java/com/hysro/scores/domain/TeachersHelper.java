package com.hysro.scores.domain;

public class TeachersHelper {

    private static final long serialVersionUID = 1L;

    /**
     * 排名
     */
    public String[] chineseteachers;
    public String[] mathsteachers;
    public String[] englishteachers;
    public TeachersHelper(String[] chineseteachers, String[] mathsteachers, String[] englishteachers) {
        this.chineseteachers = chineseteachers;
        this.mathsteachers = mathsteachers;
        this.englishteachers = englishteachers;
    }

    public TeachersHelper() {
    }

    public String[] getChineseteachers() {
        return chineseteachers;
    }

    public void setChineseteachers(String[] chineseteachers) {
        this.chineseteachers = chineseteachers;
    }

    public String[] getMathsteachers() {
        return mathsteachers;
    }

    public void setMathsteachers(String[] mathsteachers) {
        this.mathsteachers = mathsteachers;
    }

    public String[] getEnglishteachers() {
        return englishteachers;
    }

    public void setEnglishteachers(String[] englishteachers) {
        this.englishteachers = englishteachers;
    }
}
