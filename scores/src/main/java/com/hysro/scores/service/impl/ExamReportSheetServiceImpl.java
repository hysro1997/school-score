package com.hysro.scores.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hysro.scores.mapper.ExamReportSheetMapper;
import com.hysro.scores.domain.ExamReportSheet;
import com.hysro.scores.service.IExamReportSheetService;

/**
 * 成绩报告单Service业务层处理
 *
 * @author hysro
 * @date 2023-07-11
 */
@Service
public class ExamReportSheetServiceImpl implements IExamReportSheetService
{
    @Autowired
    private ExamReportSheetMapper examReportSheetMapper;

    /**
     * 查询成绩报告单
     *
     * @param id 成绩报告单主键
     * @return 成绩报告单
     */
    @Override
    public ExamReportSheet selectExamReportSheetById(Long id)
    {
        return examReportSheetMapper.selectExamReportSheetById(id);
    }

    /**
     * 查询成绩报告单列表
     *
     * @param examReportSheet 成绩报告单
     * @return 成绩报告单
     */
    @Override
    public List<ExamReportSheet> selectExamReportSheetList(ExamReportSheet examReportSheet)
    {
        return examReportSheetMapper.selectExamReportSheetList(examReportSheet);
    }

    /**
     * 新增成绩报告单
     *
     * @param examReportSheet 成绩报告单
     * @return 结果
     */
    @Override
    public int insertExamReportSheet(ExamReportSheet examReportSheet)
    {
        return examReportSheetMapper.insertExamReportSheet(examReportSheet);
    }

    /**
     * 修改成绩报告单
     *
     * @param examReportSheet 成绩报告单
     * @return 结果
     */
    @Override
    public int updateExamReportSheet(ExamReportSheet examReportSheet)
    {
        return examReportSheetMapper.updateExamReportSheet(examReportSheet);
    }

    /**
     * 批量删除成绩报告单
     *
     * @param ids 需要删除的成绩报告单主键
     * @return 结果
     */
    @Override
    public int deleteExamReportSheetByIds(Long[] ids)
    {
        return examReportSheetMapper.deleteExamReportSheetByIds(ids);
    }

    /**
     * 删除成绩报告单信息
     *
     * @param id 成绩报告单主键
     * @return 结果
     */
    @Override
    public int deleteExamReportSheetById(Long id)
    {
        return examReportSheetMapper.deleteExamReportSheetById(id);
    }
}
