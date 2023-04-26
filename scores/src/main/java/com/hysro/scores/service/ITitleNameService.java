package com.hysro.scores.service;

import com.hysro.scores.domain.TitleName;

/**
 * 网站标题Service接口
 *
 * @author hysro
 * @date 2023-04-26
 */
public interface ITitleNameService {

    public TitleName getTitleName();

    public int updateTitleName(TitleName titleName);
}
