package com.hysro.scores.service.impl;

import com.hysro.scores.domain.TitleName;
import com.hysro.scores.mapper.TitleNameMapper;
import com.hysro.scores.service.ITitleNameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 网站标题Service实现接口
 *
 * @author hysro
 * @date 2023-04-26
 */
@Service
public class TitleNameServiceImpl implements ITitleNameService {
    @Autowired
    private TitleNameMapper mapper;
    @Override
    public TitleName getTitleName() {
        return mapper.selectTitleName();
    }

    @Override
    public int updateTitleName(TitleName titleName) {
        return mapper.updateTitleName(titleName);
    }
}
