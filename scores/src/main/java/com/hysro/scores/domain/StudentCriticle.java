package com.hysro.scores.domain;

import com.alibaba.excel.annotation.ExcelProperty;

import java.io.Serializable;

/**
 * PDF工具
 *
 * @author hysro
 * @date 2023/6/29
 */
public class StudentCriticle implements Serializable {
    private static final long serialVersionUID = 1L;

    @ExcelProperty(index = 1)
    private String classes = "— —";
    @ExcelProperty(index = 2)
    private String name = "— —";
    @ExcelProperty(index = 3)
    private String morality = "— —";
    @ExcelProperty(index = 25)
    private String height = "— —";
    @ExcelProperty(index = 4)
    private String reading = "— —";
    @ExcelProperty(index = 7)
    private String chinese = "— —";
    @ExcelProperty(index = 26)
    private String weight = "— —";
    @ExcelProperty(index = 5)
    private String words = "— —";
    @ExcelProperty(index = 27)
    private String leftEye = "— —";
    @ExcelProperty(index = 6)
    private String writing = "— —";
    @ExcelProperty(index = 28)
    private String rightEye = "— —";
    @ExcelProperty(index = 8)
    private String mentalArithmetic = "— —";
    @ExcelProperty(index = 11)
    private String math = "— —";
    @ExcelProperty(index = 31)
    private String exercise = "— —";
    @ExcelProperty(index = 9)
    private String calculation = "— —";
    @ExcelProperty(index = 10)
    private String manipulation = "— —";
    @ExcelProperty(index = 30)
    private String evaluate = "— —";
    @ExcelProperty(index = 12)
    private String language = "— —";
    @ExcelProperty(index = 15)
    private String english = "— —";
    @ExcelProperty(index = 13)
    private String oral = "— —";
    @ExcelProperty(index = 14)
    private String englishWriting = "— —";
    @ExcelProperty(index = 16)
    private String science = "— —";
    @ExcelProperty(index = 19)
    private String labor = "— —";
    @ExcelProperty(index = 17)
    private String music = "— —";
    @ExcelProperty(index = 18)
    private String PE = "— —";
    @ExcelProperty(index = 29)
    private String behavior = "— —";
    @ExcelProperty(index = 20)
    private String art = "— —";
    @ExcelProperty(index = 32)
    private String prize = "— —";
    @ExcelProperty(index = 22)
    private String practise = "— —";
    @ExcelProperty(index = 21)
    private String compute = "— —";
    @ExcelProperty(index = 24)
    private String school = "— —";

    public String getClasses() {
        return classes;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMorality() {
        return morality;
    }

    public void setMorality(String morality) {
        this.morality = morality;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getReading() {
        return reading;
    }

    public void setReading(String reading) {
        this.reading = reading;
    }

    public String getChinese() {
        return chinese;
    }

    public void setChinese(String chinese) {
        this.chinese = chinese;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getWords() {
        return words;
    }

    public void setWords(String words) {
        this.words = words;
    }

    public String getLeftEye() {
        return leftEye;
    }

    public void setLeftEye(String leftEye) {
        this.leftEye = leftEye;
    }

    public String getWriting() {
        return writing;
    }

    public void setWriting(String writing) {
        this.writing = writing;
    }

    public String getRightEye() {
        return rightEye;
    }

    public void setRightEye(String rightEye) {
        this.rightEye = rightEye;
    }

    public String getMentalArithmetic() {
        return mentalArithmetic;
    }

    public void setMentalArithmetic(String mentalArithmetic) {
        this.mentalArithmetic = mentalArithmetic;
    }

    public String getMath() {
        return math;
    }

    public void setMath(String math) {
        this.math = math;
    }

    public String getExercise() {
        return exercise;
    }

    public void setExercise(String exercise) {
        this.exercise = exercise;
    }

    public String getCalculation() {
        return calculation;
    }

    public void setCalculation(String calculation) {
        this.calculation = calculation;
    }

    public String getManipulation() {
        return manipulation;
    }

    public void setManipulation(String manipulation) {
        this.manipulation = manipulation;
    }

    public String getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(String evaluate) {
        this.evaluate = evaluate;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getEnglish() {
        return english;
    }

    public void setEnglish(String english) {
        this.english = english;
    }

    public String getOral() {
        return oral;
    }

    public void setOral(String oral) {
        this.oral = oral;
    }

    public String getEnglishWriting() {
        return englishWriting;
    }

    public void setEnglishWriting(String englishWriting) {
        this.englishWriting = englishWriting;
    }

    public String getScience() {
        return science;
    }

    public void setScience(String science) {
        this.science = science;
    }

    public String getLabor() {
        return labor;
    }

    public void setLabor(String labor) {
        this.labor = labor;
    }

    public String getMusic() {
        return music;
    }

    public void setMusic(String music) {
        this.music = music;
    }

    public String getPE() {
        return PE;
    }

    public void setPE(String PE) {
        this.PE = PE;
    }

    public String getBehavior() {
        return behavior;
    }

    public void setBehavior(String behavior) {
        this.behavior = behavior;
    }

    public String getArt() {
        return art;
    }

    public void setArt(String art) {
        this.art = art;
    }

    public String getPrize() {
        return prize;
    }

    public void setPrize(String prize) {
        this.prize = prize;
    }

    public String getPractise() {
        return practise;
    }

    public void setPractise(String practise) {
        this.practise = practise;
    }

    public String getCompute() {
        return compute;
    }

    public void setCompute(String compute) {
        this.compute = compute;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }
}
