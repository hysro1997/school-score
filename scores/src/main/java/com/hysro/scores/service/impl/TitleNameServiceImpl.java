package com.hysro.scores.service.impl;

import com.hysro.scores.domain.TitleName;
import com.hysro.scores.mapper.TitleNameMapper;
import com.hysro.scores.service.ITitleNameService;
import com.ruoyi.common.core.redis.RedisCache;
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
    @Autowired
    private RedisCache redisCache;
    @Override
    public TitleName getTitleName() {
        if (redisCache.hasKey("titleName")){
            return redisCache.getCacheObject("titleName");
        }
        TitleName titleName = mapper.selectTitleName();
        redisCache.setCacheObject("titleName",titleName);
        return titleName;
    }

    @Override
    public int updateTitleName(TitleName titleName) {
        int i = mapper.updateTitleName(titleName);
        if (i > 0){
            redisCache.setCacheObject("titleName",titleName);
        }
        return i;
    }
}
