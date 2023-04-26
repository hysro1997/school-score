package com.hysro.scores.domain;

import com.ruoyi.common.core.domain.BaseEntity;

import javax.validation.constraints.NotBlank;

/**
 * 网站名称domain
 *
 * @author hysro
 * @date 2023-04-26
 */
public class TitleName  extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Integer id;

    @NotBlank
    private String titleName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitleName() {
        return titleName;
    }

    public void setTitleName(String titleName) {
        this.titleName = titleName;
    }
}
