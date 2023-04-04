package com.hysro.scores.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hysro.scores.mapper.ExamGradeSummaryMapper;
import com.hysro.scores.domain.ExamGradeSummary;
import com.hysro.scores.service.IExamGradeSummaryService;

/**
 * 年级总体情况Service业务层处理
 * 
 * @author hysro
 * @date 2023-04-04
 */
@Service
public class ExamGradeSummaryServiceImpl implements IExamGradeSummaryService 
{
    @Autowired
    private ExamGradeSummaryMapper examGradeSummaryMapper;

    /**
     * 查询年级总体情况
     * 
     * @param examGradeSummaryId 年级总体情况主键
     * @return 年级总体情况
     */
    @Override
    public ExamGradeSummary selectExamGradeSummaryByExamGradeSummaryId(Long examGradeSummaryId)
    {
        return examGradeSummaryMapper.selectExamGradeSummaryByExamGradeSummaryId(examGradeSummaryId);
    }

    /**
     * 查询年级总体情况列表
     * 
     * @param examGradeSummary 年级总体情况
     * @return 年级总体情况
     */
    @Override
    public List<ExamGradeSummary> selectExamGradeSummaryList(ExamGradeSummary examGradeSummary)
    {
        return examGradeSummaryMapper.selectExamGradeSummaryList(examGradeSummary);
    }

    /**
     * 新增年级总体情况
     * 
     * @param examGradeSummary 年级总体情况
     * @return 结果
     */
    @Override
    public int insertExamGradeSummary(ExamGradeSummary examGradeSummary)
    {
        return examGradeSummaryMapper.insertExamGradeSummary(examGradeSummary);
    }

    /**
     * 修改年级总体情况
     * 
     * @param examGradeSummary 年级总体情况
     * @return 结果
     */
    @Override
    public int updateExamGradeSummary(ExamGradeSummary examGradeSummary)
    {
        return examGradeSummaryMapper.updateExamGradeSummary(examGradeSummary);
    }

    /**
     * 批量删除年级总体情况
     * 
     * @param examGradeSummaryIds 需要删除的年级总体情况主键
     * @return 结果
     */
    @Override
    public int deleteExamGradeSummaryByExamGradeSummaryIds(Long[] examGradeSummaryIds)
    {
        return examGradeSummaryMapper.deleteExamGradeSummaryByExamGradeSummaryIds(examGradeSummaryIds);
    }

    /**
     * 删除年级总体情况信息
     * 
     * @param examGradeSummaryId 年级总体情况主键
     * @return 结果
     */
    @Override
    public int deleteExamGradeSummaryByExamGradeSummaryId(Long examGradeSummaryId)
    {
        return examGradeSummaryMapper.deleteExamGradeSummaryByExamGradeSummaryId(examGradeSummaryId);
    }
}
