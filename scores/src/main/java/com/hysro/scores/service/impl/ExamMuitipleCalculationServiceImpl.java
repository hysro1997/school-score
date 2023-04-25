package com.hysro.scores.service.impl;

import com.hysro.scores.domain.ExamMuitipleCalculation;
import com.hysro.scores.mapper.ExamMuitipleCalculationMapper;
import com.hysro.scores.service.IExamMuitipleCalculationService;
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
    @Override
    public int updateExamMuitipleCalculationById(ExamMuitipleCalculation examMuitipleCalculation) {
        return mapper.updateExamMuitipleCalculationById(examMuitipleCalculation);
    }

    @Override
    public ExamMuitipleCalculation getExamMuitipleCalculationById(Integer id) {
        return mapper.getExamMuitipleCalculationById(id);
    }
}
