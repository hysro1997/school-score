package com.hysro.scores.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 成绩报告单图片对象 exam_report_sheet_imgs
 *
 * @author hysro
 * @date 2023-07-12
 */
public class ExamReportSheetImgs extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    private String imgSrc;

    /** $column.columnComment */
    private String positionX;

    /** $column.columnComment */
    private String positionY;

    /** $column.columnComment */
    private String sizeWidth;

    /** $column.columnComment */
    private String sizeHeight;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setImgSrc(String imgSrc)
    {
        this.imgSrc = imgSrc;
    }

    public String getImgSrc()
    {
        return imgSrc;
    }
    public void setPositionX(String positionX)
    {
        this.positionX = positionX;
    }

    public String getPositionX()
    {
        return positionX;
    }
    public void setPositionY(String positionY)
    {
        this.positionY = positionY;
    }

    public String getPositionY()
    {
        return positionY;
    }
    public void setSizeWidth(String sizeWidth)
    {
        this.sizeWidth = sizeWidth;
    }

    public String getSizeWidth()
    {
        return sizeWidth;
    }
    public void setSizeHeight(String sizeHeight)
    {
        this.sizeHeight = sizeHeight;
    }

    public String getSizeHeight()
    {
        return sizeHeight;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("imgSrc", getImgSrc())
            .append("positionX", getPositionX())
            .append("positionY", getPositionY())
            .append("sizeWidth", getSizeWidth())
            .append("sizeHeight", getSizeHeight())
            .toString();
    }
}
