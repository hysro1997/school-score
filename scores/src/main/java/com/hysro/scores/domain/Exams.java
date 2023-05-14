package com.hysro.scores.domain;

import com.alibaba.fastjson2.annotation.JSONField;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * 各种考试对象 exams
 *
 * @author hysro
 * @date 2023-03-23
 */
public class Exams extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 考试ID */
    @Excel(name = "考试ID")
    private Long examId;

    /** 考试名称 */
    @NotBlank
    @Excel(name = "考试名称")
    private String examName;

    @Excel(name = "启用状态", readConverterExp = "0=正常,1=停用")
    private String enableFlag;

    @JSONField(serialize = false)
    private Integer confirmFlag;

    public Integer getConfirmFlag() {
        return confirmFlag;
    }

    public void setConfirmFlag(Integer confirmFlag) {
        this.confirmFlag = confirmFlag;
    }

    public String getEnableFlag() {
        return enableFlag;
    }

    public void setEnableFlag(String enableFlag) {
        this.enableFlag = enableFlag;
    }

    public void setExamId(Long examId)
    {
        this.examId = examId;
    }

    public Long getExamId()
    {
        return examId;
    }
    public void setExamName(String examName)
    {
        this.examName = examName;
    }

    public String getExamName()
    {
        return examName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("examId", getExamId())
            .append("examName", getExamName())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("enableFlag",getEnableFlag())
            .toString();
    }
}
