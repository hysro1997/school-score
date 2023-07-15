package com.hysro.scores.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hysro.scores.mapper.ExamReportSheetImgsMapper;
import com.hysro.scores.domain.ExamReportSheetImgs;
import com.hysro.scores.service.IExamReportSheetImgsService;

/**
 * 成绩报告单图片Service业务层处理
 *
 * @author hysro
 * @date 2023-07-12
 */
@Service
public class ExamReportSheetImgsServiceImpl implements IExamReportSheetImgsService
{
    @Autowired
    private ExamReportSheetImgsMapper examReportSheetImgsMapper;

    /**
     * 查询成绩报告单图片
     *
     * @param id 成绩报告单图片主键
     * @return 成绩报告单图片
     */
    @Override
    public ExamReportSheetImgs selectExamReportSheetImgsById(Long id)
    {
        return examReportSheetImgsMapper.selectExamReportSheetImgsById(id);
    }

    /**
     * 查询成绩报告单图片列表
     *
     * @param examReportSheetImgs 成绩报告单图片
     * @return 成绩报告单图片
     */
    @Override
    public List<ExamReportSheetImgs> selectExamReportSheetImgsList(ExamReportSheetImgs examReportSheetImgs)
    {
        return examReportSheetImgsMapper.selectExamReportSheetImgsList(examReportSheetImgs);
    }

    /**
     * 新增成绩报告单图片
     *
     * @param examReportSheetImgs 成绩报告单图片
     * @return 结果
     */
    @Override
    public int insertExamReportSheetImgs(ExamReportSheetImgs examReportSheetImgs)
    {
        return examReportSheetImgsMapper.insertExamReportSheetImgs(examReportSheetImgs);
    }

    /**
     * 修改成绩报告单图片
     *
     * @param examReportSheetImgs 成绩报告单图片
     * @return 结果
     */
    @Override
    public int updateExamReportSheetImgs(ExamReportSheetImgs examReportSheetImgs)
    {
        return examReportSheetImgsMapper.updateExamReportSheetImgs(examReportSheetImgs);
    }

    /**
     * 批量删除成绩报告单图片
     *
     * @param ids 需要删除的成绩报告单图片主键
     * @return 结果
     */
    @Override
    public int deleteExamReportSheetImgsByIds(Long[] ids)
    {
        return examReportSheetImgsMapper.deleteExamReportSheetImgsByIds(ids);
    }

    /**
     * 删除成绩报告单图片信息
     *
     * @param id 成绩报告单图片主键
     * @return 结果
     */
    @Override
    public int deleteExamReportSheetImgsById(Long id)
    {
        return examReportSheetImgsMapper.deleteExamReportSheetImgsById(id);
    }
}
