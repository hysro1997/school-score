package com.hysro.scores.service.impl;

import java.util.List;
import java.util.Map;

import com.hysro.scores.domain.ExamExcellentScoreLine;
import com.hysro.scores.domain.ExamStudentScores;
import com.hysro.scores.mapper.ExamExcellentScoreLineMapper;
import com.hysro.scores.mapper.ExamStudentScoresMapper;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hysro.scores.mapper.ExamsMapper;
import com.hysro.scores.domain.Exams;
import com.hysro.scores.service.IExamsService;

/**
 * 各种考试Service业务层处理
 *
 * @author hysro
 * @date 2023-03-23
 */
@Service
public class ExamsServiceImpl implements IExamsService
{
    @Autowired
    private ExamsMapper examsMapper;
    @Autowired
    private ExamStudentScoresMapper studentScoresMapper;
    @Autowired
    private ExamExcellentScoreLineMapper scoreLineMapper;

    /**
     * 查询各种考试
     *
     * @param examId 各种考试主键
     * @return 各种考试
     */
    @Override
    public Exams selectExamsByExamId(Long examId)
    {
        return examsMapper.selectExamsByExamId(examId);
    }

    /**
     * 查询已启用的考试数量
     * @return 启用考试的数量
     */
    @Override
    public Integer countExamsEnables() {
        return examsMapper.countExamsEnables();
    }

    /**
     * 查询各种考试列表
     *
     * @param exams 各种考试
     * @return 各种考试
     */
    @Override
    public List<Exams> selectExamsList(Exams exams)
    {
        return examsMapper.selectExamsList(exams);
    }

    /**
     * 新增各种考试
     *
     * @param exams 各种考试
     * @return 结果
     */
    @Override
    public int insertExams(Exams exams)
    {
        exams.setCreateTime(DateUtils.getNowDate());
        String operName = SecurityUtils.getUsername();
        exams.setCreateBy(operName);
        return examsMapper.insertExams(exams);
    }

    /**
     * 修改各种考试
     *
     * @param exams 各种考试
     * @return 结果
     */
    @Override
    public int updateExams(Exams exams)
    {
        if (null != exams.getEnableFlag() && "0"==exams.getEnableFlag()){
            return 1 <= countExamsEnables() ? 0 : examsMapper.updateExams(exams);
        }
        return examsMapper.updateExams(exams);
    }

    /**
     * 批量删除各种考试
     *
     * @param examIds 需要删除的各种考试主键
     * @return 结果
     */
    @Override
    public int deleteExamsByExamIds(Long[] examIds)
    {
        return examsMapper.deleteExamsByExamIds(examIds);
    }

    /**
     * 删除各种考试信息
     *
     * @param examId 各种考试主键
     * @return 结果
     */
    @Override
    public int deleteExamsByExamId(Long examId)
    {
        return examsMapper.deleteExamsByExamId(examId);
    }

    /**
     * 统计考试数据
     *
     * @param exams 考试的主键
     * @return 结果
     */
    @Override
    public List<Map<String, String>> calculateStatisticExams(Exams exams) {
        List<Map<String,String>> gradeClassMap = studentScoresMapper.selectDistinctClassesMapByExamId(exams.getExamId());
        if (gradeClassMap.isEmpty()){
            //这里直接抛出空的，给前端判断处理，节省服务器资源
            return gradeClassMap;
        }
        //如果不是空的，就开始统计数据
        //System.out.println(gradeClassMap.toString());
        ExamStudentScores studentScores;
        ExamExcellentScoreLine scoreLine;
        for (Map<String,String> gradeClass :gradeClassMap){
            studentScores = new ExamStudentScores();
            studentScores.setGrade(gradeClass.get("grade"));
            studentScores.setClasses(gradeClass.get("classes"));
            //获取了需要统计的这一个班级的成绩的年级和班级，开始根据年级、班级、考试id开始统计
            //先根据年级条件来获取优秀分数线，如果没有，直接清空map并抛出给前端
            scoreLine = new ExamExcellentScoreLine();
            scoreLine.setGrade(gradeClass.get("grade"));
            List<ExamExcellentScoreLine> scoreLineList = scoreLineMapper.selectExamExcellentScoreLineList(scoreLine);
            if (scoreLineList.isEmpty()){
                gradeClassMap.clear();
                return gradeClassMap;
            }
            //不是空的，有数据，我们就继续根据年级、班级、学科优秀分数线开始统计优秀
        }
        return gradeClassMap;
    }
}
