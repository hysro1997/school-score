package com.hysro.scores.mapper;

import java.util.List;
import com.hysro.scores.domain.ExamTeacher;

/**
 * 考试班级责任老师Mapper接口
 *
 * @author hysro
 * @date 2024-07-11
 */
public interface ExamTeacherMapper
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
     * 查询考试班级责任老师
     *
     * @param examTeacher 考试班级责任老师
     * @return 考试班级责任老师集合
     */
    public List<ExamTeacher> selectExamTeachers(ExamTeacher examTeacher);
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
     * 删除考试班级责任老师
     *
     * @param id 考试班级责任老师主键
     * @return 结果
     */
    public int deleteExamTeacherById(Long id);

    /**
     * 删除考试班级责任老师
     *
     * @param examId 考试班级责任老师主键
     * @return 结果
     */
    public int deleteExamTeacherByExamId(Long examId);

    /**
     * 批量删除考试班级责任老师
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteExamTeacherByIds(Long[] ids);
}
