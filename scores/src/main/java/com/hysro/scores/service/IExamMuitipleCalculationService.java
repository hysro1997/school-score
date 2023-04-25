package com.hysro.scores.service;

import com.hysro.scores.domain.ExamMuitipleCalculation;

/**
 * 综合分算法Service接口
 *
 * @author hysro
 * @date 2023-04-25
 */
public interface IExamMuitipleCalculationService {

    /**
     * 根据ID更新综合分算法
     *
     * @param examMuitipleCalculation 新的综合分含ID
     * @return 结果
     */
    public int updateExamMuitipleCalculationById(ExamMuitipleCalculation examMuitipleCalculation);

    /**
     * 根据ID获取综合分算法
     *
     * @param id ID
     * @return 结果
     */
    public ExamMuitipleCalculation getExamMuitipleCalculationById(Integer id);
}
