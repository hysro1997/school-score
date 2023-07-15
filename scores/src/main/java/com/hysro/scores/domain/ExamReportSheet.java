package com.hysro.scores.domain;

import java.sql.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 成绩报告单对象 exam_report_sheet
 *
 * @author hysro
 * @date 2023-07-11
 */
public class ExamReportSheet extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    private String title;

    /** $column.columnComment */
    private Integer educationDays;

    /** $column.columnComment */
    private Date nextSchoolDay;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setTitle(String title)
    {
        this.title = title;
    }

    public String getTitle()
    {
        return title;
    }
    public void setEducationDays(Integer educationDays)
    {
        this.educationDays = educationDays;
    }

    public Integer getEducationDays()
    {
        return educationDays;
    }
    public void setNextSchoolDay(Date nextSchoolDay)
    {
        this.nextSchoolDay = nextSchoolDay;
    }

    public Date getNextSchoolDay()
    {
        return nextSchoolDay;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("educationDays", getEducationDays())
            .append("nextSchoolDay", getNextSchoolDay())
            .toString();
    }
}
