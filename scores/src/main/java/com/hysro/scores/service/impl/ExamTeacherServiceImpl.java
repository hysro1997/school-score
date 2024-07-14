package com.hysro.scores.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.hysro.scores.domain.TeachersHelper;
import com.hysro.scores.mapper.ExamsMapper;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hysro.scores.mapper.ExamTeacherMapper;
import com.hysro.scores.domain.ExamTeacher;
import com.hysro.scores.service.IExamTeacherService;

/**
 * 考试班级责任老师Service业务层处理
 *
 * @author hysro
 * @date 2024-07-11
 */
@Service
public class ExamTeacherServiceImpl implements IExamTeacherService
{
    @Autowired
    private ExamTeacherMapper examTeacherMapper;

    /**
     * 查询考试班级责任老师
     *
     * @param id 考试班级责任老师主键
     * @return 考试班级责任老师
     */
    @Override
    public ExamTeacher selectExamTeacherById(Long id)
    {
        return examTeacherMapper.selectExamTeacherById(id);
    }

    /**
     * 查询考试班级责任老师列表
     *
     * @param examTeacher 考试班级责任老师
     * @return 考试班级责任老师
     */
    @Override
    public List<ExamTeacher> selectExamTeacherList(ExamTeacher examTeacher)
    {
        return examTeacherMapper.selectExamTeacherList(examTeacher);
    }

    @Override
    public TeachersHelper selectExamTeachers(ExamTeacher examTeacher) {
        String[] temp = new String[20];
        TeachersHelper helper = new TeachersHelper();
        examTeacher.setSubjects("语文");
        ArrayList<ExamTeacher> examTeachers = (ArrayList<ExamTeacher>) examTeacherMapper.selectExamTeachers(examTeacher);
        for (int i = 0; i<examTeachers.size();i++){
            temp[i] = examTeachers.get(i).getTeacherName();
        }
        helper.setChineseteachers(temp);
        temp = new String[20];
        examTeacher.setSubjects("数学");
        examTeachers = (ArrayList<ExamTeacher>) examTeacherMapper.selectExamTeachers(examTeacher);
        for (int i = 0; i<examTeachers.size();i++){
            temp[i] = examTeachers.get(i).getTeacherName();
        }
        helper.setMathsteachers(temp);

        temp = new String[20];
        examTeacher.setSubjects("英语");
        examTeachers = (ArrayList<ExamTeacher>) examTeacherMapper.selectExamTeachers(examTeacher);
        for (int i = 0; i<examTeachers.size();i++){
            temp[i] = examTeachers.get(i).getTeacherName();
        }
        helper.setEnglishteachers(temp);
        return helper;
    }

    /**
     * 新增考试班级责任老师
     *
     * @param examTeacher 考试班级责任老师
     * @return 结果
     */
    @Override
    public int insertExamTeacher(ExamTeacher examTeacher)
    {
        return examTeacherMapper.insertExamTeacher(examTeacher);
    }

    /**
     * 修改考试班级责任老师
     *
     * @param examTeacher 考试班级责任老师
     * @return 结果
     */
    @Override
    public int updateExamTeacher(ExamTeacher examTeacher)
    {
        return examTeacherMapper.updateExamTeacher(examTeacher);
    }

    /**
     * 批量删除考试班级责任老师
     *
     * @param ids 需要删除的考试班级责任老师主键
     * @return 结果
     */
    @Override
    public int deleteExamTeacherByIds(Long[] ids)
    {
        return examTeacherMapper.deleteExamTeacherByIds(ids);
    }

    /**
     * 删除考试班级责任老师信息
     *
     * @param id 考试班级责任老师主键
     * @return 结果
     */
    @Override
    public int deleteExamTeacherById(Long id)
    {
        return examTeacherMapper.deleteExamTeacherById(id);
    }

    @Override
    public String importExamTeacher(List<ExamTeacher> examTeachers,Long examId, String operName) {
        if (StringUtils.isNull(examTeachers) || examTeachers.size() == 0)
        {
            throw new ServiceException("导入责任老师数据不能为空！");
        }
        ExamTeacher exam = new ExamTeacher();
        exam.setExamId(examId);
        List<ExamTeacher> teachers = examTeacherMapper.selectExamTeacherList(exam);
        if (teachers.size()!=0){
            examTeacherMapper.deleteExamTeacherByExamId(examId);
        }
        for (ExamTeacher examTeacher: examTeachers){
            examTeacher.setExamId(examId);
            this.insertExamTeacher(examTeacher);
        }
        return "导入成功";
    }

}
