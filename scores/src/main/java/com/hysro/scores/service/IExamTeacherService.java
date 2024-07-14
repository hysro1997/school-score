package com.hysro.scores.service;

import java.util.List;
import com.hysro.scores.domain.ExamTeacher;
import com.hysro.scores.domain.TeachersHelper;

/**
 * 考试班级责任老师Service接口
 *
 * @author hysro
 * @date 2024-07-11
 */
public interface IExamTeacherService
{
    /**
     * 查询考试班级责任老师
     *
     * @param id 考试班级责任老师主键
     * @return 考试班级责任老师
     */
    public ExamTeacher selectExamTeacherById(Long id);

    /**
     * 查询考试班级责任老师列表
     *
     * @param examTeacher 考试班级责任老师
     * @return 考试班级责任老师集合
     */
    public List<ExamTeacher> selectExamTeacherList(ExamTeacher examTeacher);

    /**
     * 查询考试班级责任老师列表
     *
     * @param examTeacher 考试班级责任老师
     * @return 考试班级责任老师集合
     */
    public TeachersHelper selectExamTeachers(ExamTeacher examTeacher);

    /**
     * 新增考试班级责任老师
     *
     * @param examTeacher 考试班级责任老师
     * @return 结果
     */
    public int insertExamTeacher(ExamTeacher examTeacher);

    /**
     * 修改考试班级责任老师
     *
     * @param examTeacher 考试班级责任老师
     * @return 结果
     */
    public int updateExamTeacher(ExamTeacher examTeacher);

    /**
     * 批量删除考试班级责任老师
     *
     * @param ids 需要删除的考试班级责任老师主键集合
     * @return 结果
     */
    public int deleteExamTeacherByIds(Long[] ids);

    /**
     * 删除考试班级责任老师信息
     *
     * @param id 考试班级责任老师主键
     * @return 结果
     */
    public int deleteExamTeacherById(Long id);

    /**
     * 导入考试班级责任老师信息
     *
     * @param examTeachers 试班级责任老师
     * @param operName 操作人
     * @return 结果
     */
    public String importExamTeacher(List<ExamTeacher> examTeachers,Long examId,String operName);
}
