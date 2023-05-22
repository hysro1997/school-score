<template>
  <div>
    <el-steps :active="stepsActive" finish-status="success" process-status="process">
      <el-step title="名称" description="设置考试名称"/>
      <el-step title="分数线" description="选择参加考试的年级并设置各个分数线"/>
      <el-step title="二次核验" description="确认设置并提交"/>
    </el-steps>
      <el-form ref="examForm" :model="examForm" label-width="80px" @submit.native.prevent>
        <div v-if="0 === stepsActive" style="margin-top: 30px;width: 50%;text-align: center">
          <el-form-item label="考试名称" prop="examName">
            <el-input v-model="examForm.examName" maxlength="50" ref="examNameInput" placeholder="考试名称"/>
          </el-form-item>
        </div>
        <div v-if="1 === stepsActive" style="margin-top: 30px;font-size: 32px">
          <el-checkbox :indeterminate="isIndeterminate" v-model="checkAll" :disabled="checkAllDisabled" @change="handleCheckAllChange">全选</el-checkbox>
          <el-checkbox-group v-model="checkedGrades" @change="handleCheckedGradesChange">
            <el-checkbox-button v-for="grade in grades" :label="grade.value" :key="grade.value" :disabled="grade.disabled">{{grade.value}}</el-checkbox-button>
          </el-checkbox-group>
          <br/>
          <div style="font-size: 14px;text-align: center">
              <el-table
                :data="gradeScoreLines"
                :span-method="objectSpanMethod"
                ref="inputTable"
                border
                :row-class-name="tableRowClassName"
                style="width: 100%; margin-top: 20px">
                <el-table-column
                  prop="grade"
                  label="年级"
                  width="180">
                </el-table-column>
                <el-table-column
                  prop="subject"
                  label="学科">
                </el-table-column>
                <el-table-column
                  prop="scores.fullScore"
                  label="满分">
                  <template slot-scope="scope">
                    <el-input v-model="scope.row.scores.fullScore" @input="scope.row.scores.fullScore = scope.row.scores.fullScore.replace(/[^\d]/g,'')" size="small"></el-input>
                  </template>
                </el-table-column>
                <el-table-column
                  prop="scores.excellentScore"
                  label="优秀">
                  <template slot-scope="scope">
                    <el-input v-model="scope.row.scores.excellentScore" @input="scope.row.scores.excellentScore = scope.row.scores.excellentScore.replace(/[^\d]/g,'')" size="small"></el-input>
                  </template>
                </el-table-column>
                <el-table-column
                  prop="scores.goodScore"
                  label="良好">
                  <template slot-scope="scope">
                    <el-input v-model="scope.row.scores.goodScore" @input="scope.row.scores.goodScore = scope.row.scores.goodScore.replace(/[^\d]/g,'')" size="small"></el-input>
                  </template>
                </el-table-column>
                <el-table-column
                  prop="scores.qualifiedScore"
                  label="合格">
                  <template slot-scope="scope">
                    <el-input v-model="scope.row.scores.qualifiedScore" @input="scope.row.scores.qualifiedScore = scope.row.scores.qualifiedScore.replace(/[^\d]/g,'')" size="small"></el-input>
                  </template>
                </el-table-column>
                <el-table-column
                  prop="scores.unqualifiedOneScore"
                  label="不合格段1">
                  <template slot-scope="scope">
                    <el-input v-model="scope.row.scores.unqualifiedOneScore" @input="scope.row.scores.unqualifiedOneScore = scope.row.scores.unqualifiedOneScore.replace(/[^\d]/g,'')" size="small"></el-input>
                  </template>
                </el-table-column>
                <el-table-column
                  prop="scores.unqualifiedTwoScore"
                  label="不合格段2">
                  <template slot-scope="scope">
                    <el-input v-model="scope.row.scores.unqualifiedTwoScore" @input="scope.row.scores.unqualifiedTwoScore = scope.row.scores.unqualifiedTwoScore.replace(/[^\d]/g,'')" size="small"></el-input>
                  </template>
                </el-table-column>
                <el-table-column
                  prop="scores.unqualifiedThreeScore"
                  label="不合格段3">
                  <template slot-scope="scope">
                    <el-input v-model="scope.row.scores.unqualifiedThreeScore" @input="scope.row.scores.unqualifiedThreeScore = scope.row.scores.unqualifiedThreeScore.replace(/[^\d]/g,'')" size="small"></el-input>
                  </template>
                </el-table-column>
                <el-table-column
                  prop="scores.unqualifiedFourScore"
                  label="不合格段4">
                  <template slot-scope="scope">
                    <el-input v-model="scope.row.scores.unqualifiedFourScore" @input="scope.row.scores.unqualifiedFourScore = scope.row.scores.unqualifiedFourScore.replace(/[^\d]/g,'')" size="small"></el-input>
                  </template>
                </el-table-column>
              </el-table>
          </div>
        </div>
        <div v-if="2 === stepsActive" style="margin-top: 30px;text-align: center;font-size: 24px">
          考试名称： {{examForm.examName}}
          <br/>
          <div>
            <el-table
              :data="gradeScoreLines"
              ref="confirmTable"
              :span-method="objectSpanMethod"
              border
              :row-class-name="tableRowClassName"
              style="width: 100%; margin-top: 20px">
              <el-table-column
                prop="grade"
                label="年级"
                width="180">
              </el-table-column>
              <el-table-column
                prop="grade"
                label="学科">
              </el-table-column>
              <el-table-column
                prop="scores.fullScore"
                label="满分">
              </el-table-column>
              <el-table-column
                prop="scores.excellentScore"
                label="优秀">
              </el-table-column>
              <el-table-column
                prop="scores.goodScore"
                label="良好">
              </el-table-column>
              <el-table-column
                prop="scores.qualifiedScore"
                label="合格">
              </el-table-column>
              <el-table-column
                prop="scores.unqualifiedOneScore"
                label="不合格1">
              </el-table-column>
              <el-table-column
                prop="scores.unqualifiedTwoScore"
                label="不合格2">
              </el-table-column>
              <el-table-column
                prop="scores.unqualifiedThreeScore"
                label="不合格3">
              </el-table-column>
              <el-table-column
                prop="scores.unqualifiedFourScore"
                label="不合格4">
              </el-table-column>
            </el-table>
          </div>
        </div>
        <br/>
        <div style="text-align: right">
          <el-button-group>
            <el-button :disabled="0 === stepsActive" type="primary" icon="el-icon-arrow-left" @click="preStep">上一页</el-button>
            <el-button type="info" @click="cancelSubmit" round><i class="el-icon-delete"></i>取消</el-button>
            <el-button v-if="2 === stepsActive" :disabled="2 !== stepsActive" @click="confirmSubmit" type="primary" round><i class="el-icon-s-promotion"></i>{{addOrUpdate}}考试</el-button>
            <el-button :disabled="2 === stepsActive" type="primary" @click="nextStep">下一页<i class="el-icon-arrow-right el-icon--right"></i></el-button>
          </el-button-group>
        </div>
      </el-form>
      <!--div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div -->
  </div>
</template>

<script>
  import { listExams, getExams, delExams, addExams, updateExams, getExamsEnables, statisticExams, mixScores, confirmExams } from "@/api/examination/exams";
  import { addLine, getLine, listLine, updateLine, delLine } from '@/api/scores/line'
  export default {
    name: 'ExamSave',
    props:['examId'],
    data() {
      return {
        addOrUpdate: '添加',
        childExamId: '',
        checkAllDisabled: false,
        grades: [{value:'一年级',disabled: false},{value:'二年级',disabled: false},{value:'三年级',disabled: false},{value:'四年级',disabled: false},{value:'五年级',disabled: false},{value:'六年级',disabled: false}],
        gradeCheckedSize: 0,
        gradeScoreLines: [],
        scoreJuniorLine: { fullScore: '100', excellentScore: '90', goodScore: '75', qualifiedScore: '60', unqualifiedOneScore: '55', unqualifiedTwoScore: '50', unqualifiedThreeScore: '40', unqualifiedFourScore: '0'},
        scoreSeniorLine: { fullScore: '100', excellentScore: '85', goodScore: '75', qualifiedScore: '60', unqualifiedOneScore: '55', unqualifiedTwoScore: '50', unqualifiedThreeScore: '40', unqualifiedFourScore: '0'},
        checkedGrades: [],
        mixRows: [],
        checkAll: false,
        isIndeterminate: false,
        stepsActive: 0,
        examForm: {
          examName: ''
        }
      }
    },
    created() {
    },
    watch: {
      examId: {
        handler(newValue, oldValue){
          this.$nextTick(() => {
            this.stepsActive = 0;
            this.addOrUpdate = '添加';
            this.grades = [{value:'一年级',disabled: false},{value:'二年级',disabled: false},{value:'三年级',disabled: false},{value:'四年级',disabled: false},{value:'五年级',disabled: false},{value:'六年级',disabled: false}];
            this.initGetExam();
          });
        }
      }
    },
    mounted() {
      this.initGetExam();
    },
    methods: {
      initGetExam(){
        this.childExamId = this.examId;
        this.examForm.examName = '';
        if (this.childExamId){
          this.addOrUpdate = '修改';
          getExams(this.childExamId).then(response =>{
            this.examForm.examName = response.data.examName;
          });
          let param = {
            examId: this.childExamId
          }
          this.gradeScoreLines = [];
          listLine(param).then(response => {
            let temp = response.data;
            temp.forEach((element) => {
              let innerParam = {
                excellentId: element.excellentId,
                grade: element.grade,
                subject: element.subject,
                examId: element.examId,
                scores: {
                  fullScore: element.fullScore,
                  excellentScore: element.excellentScore,
                  goodScore: element.goodScore,
                  qualifiedScore: element.qualifiedScore,
                  unqualifiedOneScore: element.unqualifiedOneScore,
                  unqualifiedTwoScore: element.unqualifiedTwoScore,
                  unqualifiedThreeScore: element.unqualifiedThreeScore,
                  unqualifiedFourScore: element.unqualifiedFourScore
                }
              }
              this.gradeScoreLines.push(innerParam);
            });
            this.calculateFromGradeScoreLines();
          });
        }
      },
      preStep(){
        this.stepsActive > 0 ? this.stepsActive-- : null;
      },
      nextStep(){
        //如果是第一页点的下一步，就添加考试
        if (0 === this.stepsActive){
          if ('' === this.examForm.examName){
            this.$modal.notifyWarning("没有输入考试名称");
            this.$nextTick(() => {
              this.$refs.examNameInput.focus();
            })
            return false;
          }
          if (this.childExamId){
            let param = {
              examId: this.childExamId,
              examName: this.examForm.examName
            };
            updateExams(param).then(response => {
              return false;
            });
          } else {
            addExams(this.examForm).then(response => {
              this.childExamId = response.data;
            });
          }
        } else if (1 === this.stepsActive){
          if (this.childExamId){
            this.saveScoreLines();
          } else {
            this.$modal.notifyWarning("没有找到考试，请联系管理人员");
          }
        }
        this.stepsActive < 2 ? this.stepsActive++ : null;
      },
      calculateFromGradeScoreLines(){
        let temp = [];
        this.gradeScoreLines.forEach((element) => {
          temp.push(element.grade);
        });
        let arr2 = new Set(temp)
        this.checkedGrades = [...arr2];
        this.calculateMixRows();
        if (0 < this.checkedGrades.length){
          this.gradeCheckedSize = 0;
          this.grades.forEach((element) => {
            if (0 <= this.checkedGrades.findIndex(item => item === element.value)){
              element.disabled = true;
              this.checkAllDisabled = true;
              this.gradeCheckedSize ++;
            }
          });
        } else {
          this.checkAllDisabled = false;
        }
      },
      saveScoreLines(){
        this.gradeScoreLines.forEach((element) => {
          let param = {
            excellentId: element.excellentId,
            grade: element.grade,
            subject: element.subject,
            examId: this.childExamId,
            fullScore: element.scores.fullScore,
            excellentScore: element.scores.excellentScore,
            goodScore: element.scores.goodScore,
            qualifiedScore: element.scores.qualifiedScore,
            unqualifiedOneScore: element.scores.unqualifiedOneScore,
            unqualifiedTwoScore: element.scores.unqualifiedTwoScore,
            unqualifiedThreeScore: element.scores.unqualifiedThreeScore,
            unqualifiedFourScore: element.scores.unqualifiedFourScore
          }
          if(element.excellentId){
            updateLine(param).then(response => {
              //成功了
            });
          } else {
            addLine(param).then(response => {
              element.excellentId = response.data;
            });
          }
        });
      },
      handleCheckAllChange(val) {
        this.checkedGrades = val ? ['一年级','二年级','三年级','四年级','五年级','六年级'] : [];
        this.isIndeterminate = false;
        if (!val){
          this.gradeCheckedSize = 0;
          this.gradeScoreLines = [];
        } else {
          this.handleGradeOptionsCheckedToTableData();
          this.calculateMixRows();
        }
      },
      handleCheckedGradesChange(value) {
        let checkedCount = value.length;
        this.checkAll = checkedCount === this.grades.length;
        this.isIndeterminate = checkedCount > 0 && checkedCount < this.grades.length;
        this.handleGradeOptionsCheckedToTableData();
        this.calculateMixRows();
      },
      calculateMixRows(){
        this.mixRows = [];
        this.checkedGrades.forEach((element) => {
          if ('一年级' === element || '二年级' === element){
            this.mixRows.push(2,0);
          } else {
            this.mixRows.push(3,0,0);
          }
        });
      },
      handleGradeOptionsCheckedToTableData(){
        //判断是多了还是少了，多了就加，少了就做减
        if (this.checkedGrades.length > this.gradeCheckedSize){
          this.checkedGrades.forEach((element) => {
            let param = {
              excellentId: null,
              grade: null,
              subject: null,
              scores: null
            };
            // 如果没有这个
            if (0 > this.gradeScoreLines.findIndex(item => item.grade === element)){
              this.gradeCheckedSize++;
              param.grade = element;
              if ('一年级' !== element && '二年级' !== element){
                this.gradeScoreLines.push({
                  excellentId: null,
                  grade: element,
                  subject: "语文",
                  scores: JSON.parse(JSON.stringify(this.scoreSeniorLine))
                });
                this.gradeScoreLines.push({
                  excellentId: null,
                  grade: element,
                  subject: "数学",
                  scores: JSON.parse(JSON.stringify(this.scoreJuniorLine))
                });
                this.gradeScoreLines.push({
                  excellentId: null,
                  grade: element,
                  subject: "英语",
                  scores: JSON.parse(JSON.stringify(this.scoreJuniorLine))
                });
              } else {
                this.gradeScoreLines.push({
                  excellentId: null,
                  grade: element,
                  subject: "语文",
                  scores: JSON.parse(JSON.stringify(this.scoreJuniorLine))
                });
                this.gradeScoreLines.push({
                  excellentId: null,
                  grade: element,
                  subject: "数学",
                  scores: JSON.parse(JSON.stringify(this.scoreJuniorLine))
                });
              }
            }
          });
        } else {
          //这里做减去
          let temp = this.gradeScoreLines;
          for (let i = 0;i < temp.length; i++){
            if (0 > this.checkedGrades.findIndex(item => item === temp[i].grade)){
              this.gradeCheckedSize--;
              if ('一年级' === temp[i].grade  || '二年级' === temp[i].grade){
                if (this.gradeScoreLines[i].excellentId){
                  this.delUnusedLine(this.gradeScoreLines[i].excellentId);
                  this.delUnusedLine(this.gradeScoreLines[i+1].excellentId);
                }
                this.gradeScoreLines.splice(i,2);
                break;
              } else {
                if (this.gradeScoreLines[i].excellentId){
                  this.delUnusedLine(this.gradeScoreLines[i].excellentId);
                  this.delUnusedLine(this.gradeScoreLines[i+1].excellentId);
                  this.delUnusedLine(this.gradeScoreLines[i+2].excellentId);
                }
                this.gradeScoreLines.splice(i,3);
                break;
              }
            }
          }
        }
      },
      delUnusedLine(excellentId){
        delLine(excellentId).then(response => {
        })
      },
      resetFrom(){
        this.gradeScoreLines = [];
        this.childExamId = null;
        this.checkedGrades = [];
        this.gradeCheckedSize = 0;
        this.mixRows = [];
        this.examForm.examName = '';
        this.checkAllDisabled = false;
        this.checkAll = false;
      },
      cancelSubmit(){
        this.resetFrom();
        this.$parent.$parent.closeEditExam();
        this.$modal.notifyWarning("取消操作")
      },
      confirmSubmit(){
        confirmExams(this.childExamId).then(response => {
          this.$modal.notifyWarning("操作成功");
          this.resetFrom();
          this.$parent.$parent.closeEditExam();
          this.$parent.$parent.getList();
        });
      },
      tableRowClassName({row, rowIndex}) {
        if (1 === rowIndex % 2) {
          return 'success-row';
        }
        return '';
      },
      objectSpanMethod({ row, column, rowIndex, columnIndex }) {
        if (columnIndex === 0) {
          return {
            rowspan: this.mixRows[rowIndex],
            colspan: this.mixRows[rowIndex] === 0 ? 0:1
          };
        }
      }
    }
  }
</script>

<style scoped>

</style>
