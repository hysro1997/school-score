package com.hysro.scores.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 优秀分数线对象 exam_excellent_score_line
 *
 * @author hysro
 * @date 2023-03-23
 */
public class ExamExcellentScoreLine extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long excellentId;

    /** 学科 */
    @Excel(name = "学科")
    private String subject;

    /** 优秀分数 */
    @Excel(name = "优秀分数")
    private Long excellentScore;

    /** 年级 */
    @Excel(name = "年级")
    private String grade;

    public void setExcellentId(Long excellentId)
    {
        this.excellentId = excellentId;
    }

    public Long getExcellentId()
    {
        return excellentId;
    }
    public void setSubject(String subject)
    {
        this.subject = subject;
    }

    public String getSubject()
    {
        return subject;
    }
    public void setExcellentScore(Long excellentScore)
    {
        this.excellentScore = excellentScore;
    }

    public Long getExcellentScore()
    {
        return excellentScore;
    }
    public void setGrade(String grade)
    {
        this.grade = grade;
    }

    public String getGrade()
    {
        return grade;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("excellentId", getExcellentId())
            .append("subject", getSubject())
            .append("excellentScore", getExcellentScore())
            .append("grade", getGrade())
            .toString();
    }
}
