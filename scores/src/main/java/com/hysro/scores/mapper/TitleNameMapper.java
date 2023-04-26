package com.hysro.scores.mapper;

import com.hysro.scores.domain.TitleName;

/**
 * 网站名称Mapper接口
 *
 * @author hysro
 * @date 2023-04-26
 */
public interface TitleNameMapper {

    public TitleName selectTitleName();

    public int updateTitleName(TitleName titleName);

}
