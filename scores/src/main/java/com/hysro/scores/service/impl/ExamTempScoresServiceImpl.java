package com.hysro.scores.service.impl;

import com.hysro.scores.domain.ExamTempScores;
import com.hysro.scores.mapper.ExamTempScoresMapper;
import com.hysro.scores.service.IExamTempScoresService;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

@Service
public class ExamTempScoresServiceImpl implements IExamTempScoresService {
    @Autowired
    private ExamTempScoresMapper mapper;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int addExamTempScores(ArrayList<ExamTempScores> scores,Long examId) {
        if (0 >= scores.size()){
            throw new ServiceException("没有分数");
        }
        for (ExamTempScores examTempScores: scores){
            examTempScores.setCreateTime(DateUtils.getNowDate());
            examTempScores.setCreateBy(SecurityUtils.getUsername());
            examTempScores.setExamId(examId);
            if (null == examTempScores.getSubjectName() || "".equals(examTempScores.getSubjectName())){
                throw new ServiceException("没有学科");
            }
        }
        if (0 != this.checkAlreadyScores(scores.get(0))){
            throw new ServiceException("已有记录");
        }
        switch (scores.get(0).getSubjectName()){
            case "语文":
                return mapper.insertExamTempChineseScores(scores);
            case "数学":
                return mapper.insertExamTempMathsScores(scores);
            case "英语":
                return mapper.insertExamTempEnglishScores(scores);
            default:
                return 0;
        }
    }

    @Override
    public int checkAlreadyScores(ExamTempScores examTempScores) {
        switch (examTempScores.getSubjectName()){
            case "语文":
                return mapper.countChineseNumbersByExamId(examTempScores);
            case "数学":
                return mapper.countMathsNumbersByExamId(examTempScores);
            case "英语":
                return mapper.countEnglishNumbersByExamId(examTempScores);
            default:
                throw new ServiceException("没有学科");
        }
    }

    @Override
    public int deleteTempScores(ExamTempScores examTempScores) {
        examTempScores.setExamNumber(examTempScores.getExamNumber().substring(0,3));
        switch (examTempScores.getSubjectName()){
            case "语文":
                return mapper.deleteChineseTempScores(examTempScores);
            case "数学":
                return mapper.deleteMathsTempScores(examTempScores);
            case "英语":
                return mapper.deleteEnglishTempScores(examTempScores);
            default:
                throw new ServiceException("没有学科");
        }
    }
}
