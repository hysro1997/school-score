package com.hysro.scores.service.impl;

import com.hysro.scores.domain.ExamMuitipleCalculation;
import com.hysro.scores.mapper.ExamMuitipleCalculationMapper;
import com.hysro.scores.service.IExamMuitipleCalculationService;
import com.ruoyi.common.core.redis.RedisCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 综合分算法Service业务层处理
 *
 * @author hysro
 * @date 2023-04-25
 */
@Service
public class ExamMuitipleCalculationServiceImpl implements IExamMuitipleCalculationService {
    @Autowired
    private ExamMuitipleCalculationMapper mapper;
    @Autowired
    private RedisCache redisCache;
    @Override
    public int updateExamMuitipleCalculationById(ExamMuitipleCalculation examMuitipleCalculation) {
        int i = mapper.updateExamMuitipleCalculationById(examMuitipleCalculation);
        if (i > 0){
            redisCache.setCacheObject("multipleCalculation" + examMuitipleCalculation.getId(),examMuitipleCalculation);
        }
        return i;
    }

    @Override
    public ExamMuitipleCalculation getExamMuitipleCalculationById(Integer id) {
        if (redisCache.hasKey("multipleCalculation" + id)){
            return redisCache.getCacheObject("multipleCalculation" + id);
        }
        ExamMuitipleCalculation examMuitipleCalculation = mapper.getExamMuitipleCalculationById(id);
        redisCache.setCacheObject("multipleCalculation" + id,examMuitipleCalculation);
        return examMuitipleCalculation;
    }
}
