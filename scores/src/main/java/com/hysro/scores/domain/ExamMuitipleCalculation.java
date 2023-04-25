package com.hysro.scores.domain;

import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import javax.validation.constraints.NotNull;

/**
 * 综合分算法 examMuitipleCalculation
 *
 * @author hysro
 * @date 2023-04-25
 */
public class ExamMuitipleCalculation extends BaseEntity {
    private static final long serialVersionUID = 1L;

    @NotNull
    private Integer id;

    @NotNull(message = "算法缺少数据")
    private Integer excellent;

    @NotNull(message = "算法缺少数据")
    private Integer qualified;

    @NotNull(message = "算法缺少数据")
    private Integer average;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getExcellent() {
        return excellent;
    }

    public void setExcellent(Integer excellent) {
        this.excellent = excellent;
    }

    public Integer getQualified() {
        return qualified;
    }

    public void setQualified(Integer qualified) {
        this.qualified = qualified;
    }

    public Integer getAverage() {
        return average;
    }

    public void setAverage(Integer average) {
        this.average = average;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("excellent", getExcellent())
                .append("qualified", getQualified())
                .append("average", getAverage())
                .toString();
    }
}
