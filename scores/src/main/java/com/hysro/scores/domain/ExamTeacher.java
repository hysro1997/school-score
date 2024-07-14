package com.hysro.scores.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 考试班级责任老师对象 exam_teacher
 *
 * @author hysro
 * @date 2024-07-11
 */
public class ExamTeacher extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 考试id */
    private Long examId;

    /** 年级 */
    @Excel(name = "年级")
    private String grade;

    /** 班级 */
    @Excel(name = "班级")
    private String classes;

    /** 教师姓名 */
    @Excel(name = "教师姓名")
    private String teacherName;

    /** 教师姓名 */
    @Excel(name = "负责学科")
    private String subjects;

    public void setId(Long id)
    {
        this.id = id;
    }

    public String getSubjects() {
        return subjects;
    }

    public void setSubjects(String subjects) {
        this.subjects = subjects;
    }

    public Long getId()
    {
        return id;
    }
    public void setExamId(Long examId)
    {
        this.examId = examId;
    }

    public Long getExamId()
    {
        return examId;
    }
    public void setGrade(String grade)
    {
        this.grade = grade;
    }

    public String getGrade()
    {
        return grade;
    }
    public void setClasses(String classes)
    {
        this.classes = classes;
    }

    public String getClasses()
    {
        return classes;
    }
    public void setTeacherName(String teacherName)
    {
        this.teacherName = teacherName;
    }

    public String getTeacherName()
    {
        return teacherName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("examId", getExamId())
            .append("grade", getGrade())
            .append("classes", getClass())
            .append("teacherName", getTeacherName())
            .append("subjects", getSubjects())
            .toString();
    }
}
