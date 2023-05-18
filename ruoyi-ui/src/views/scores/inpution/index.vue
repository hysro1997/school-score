<template>
  <div style="margin-top:60px;margin-left: 30px;min-width: 1200px; overflow: auto;">
      <el-form ref="elForm" :model="formData" :rules="rules" size="medium" label-width="100px" @submit.native.prevent
               label-position="left">
          <el-row>
            <el-col :span="24">
              <el-form-item label="年级" prop="grade">
                <el-radio-group :disabled="gradeOptionsDisabled" v-model="formData.grade" size="medium" @input="calculateExamNumber">
                  <el-radio v-for="(item, index) in gradeOptions" :key="index" :label="item.value"
                            :disabled="item.disabled" border>{{item.label}}</el-radio>
                </el-radio-group>
              </el-form-item>
              <el-divider></el-divider>
            </el-col>
            <el-col :span="24">
              <el-form-item label="班级" prop="classes">
                <el-radio-group v-model="formData.classes" size="medium" @input="calculateExamNumber">
                  <el-radio v-for="(item, index) in classesOptions" :key="index" :label="item.value"
                            :disabled="item.disabled" border>{{item.label}}</el-radio>
                </el-radio-group>
              </el-form-item>
              <el-divider></el-divider>
            </el-col>
            <el-col :span="24">
              <el-form-item label="学科" prop="subject">
                <el-radio-group :disabled="classesOptionsDisabled" v-model="formData.subject" size="medium" @input="calculateExamNumber">
                  <el-radio v-for="(item, index) in subjectOptions" :key="index" :label="item.value"
                            :disabled="item.disabled" border>{{item.label}}</el-radio>
                </el-radio-group>
              </el-form-item>
            </el-col>
          </el-row>
        <br/>
        <el-button type="warning" @click="clearScore" v-hasPermi="['scores:inpution:delete']"> 删除{{ submitButtonInfo }}的分数记录 </el-button>
        <!--el-button type="danger" @click="cleanTemp" v-hasPermi="['scores:inpution:delete']"> 清空数据 </el-button -->
        <br/><br/>
        <el-row>
          <el-col :span="8">
              <el-row :span="24">
                <p>当前的考号：{{ examNumber }}</p><br/>
                <el-form-item label="分数" prop="scores">
                  <el-input :disabled="inputionDisabled" @keyup.enter.native="nextScore" @keyup.down.native="nextScore" maxlength="5" v-model="formData.scores" ref="formScore" @input="formData.scores = formData.scores.replace(/[^\d.]/g,'')" placeholder="请输入分数" clearable :style="{width: '70%'}">
                  </el-input>
                </el-form-item>
              </el-row>
              <el-row :span="24">
                <el-form-item size="large">
                  <el-button :disabled="inputionDisabled" type="success" @click="nextScore"> 下一条分数 </el-button>
                  <el-button :disabled="inputionDisabled" type="info" @click="retreatScore"> 撤回分数（{{ inputionSteps }}） </el-button>
                </el-form-item>
                <p>按下 “回车键” 或者“↓”直接暂存分数</p>
                <p>如果缺考，不输入分数，直接点击下一条即可</p>
                <p>录完一个班的分数，需要点击提交分数</p>
                <p>分数录入错误，请点击撤回分数（6次）</p>
                <p>如果6次全部用完，仍需修改：<br/>&nbsp;&nbsp;1、刷新页面重新录分；<br/>&nbsp;&nbsp;2、继续录分，全部录完后联系课程处单独修改</p>
              </el-row>
          </el-col>
          <el-col :span="2">&nbsp;</el-col>
          <el-col :span="8">
            <el-button :disabled="inputionDisabled" type="danger" round class="apparent-button" @click="submitForm">提交以下 {{ submitButtonInfo }} 全部分数</el-button>
            <el-button :disabled="inputionDisabled" @click="resetForm">清空重来</el-button>
            <br/><br/>
            <p>当前已暂存的得分数量：<span style="color: red">{{ scoresList.length }}</span></p>
            <p>当前已暂存的最新一条考号：<span style="color: #9c50ff">{{ scoresList[0] ? scoresList[0].examNumber : '' }}</span></p>
            <p>当前缺考情况： 缺考人数：<span style="color: red">{{ missExam.number }}</span> 详情：<span style="color: red">{{ missExam.list }}</span></p>
            <br/><br/>
              <el-table :data="scoresList" :row-class-name="tableRowClassName">
                <el-table-column width="150" label="考试号" align="center" prop="examNumber" />
                <el-table-column width="150" label="分数" align="center" prop="score">
                  <template slot-scope="scope">
                    {{ scope.row.score }}<span v-show="null === scope.row.score || ''=== scope.row.score" style="color: red">缺考</span>
                  </template>
                </el-table-column>
              </el-table>
          </el-col>
        </el-row>
      </el-form>
  </div>
</template>
<script>

  import { getTodayDate, addExamTempScores, checkAlreadyScores, delTempScores, cleanTempScores } from '@/api/scores/inpution'
  import Cookies from 'js-cookie'
  import { getExamsEnables } from '@/api/examination/exams'
  export default {
    components: {},
    props: [],
    data() {
      return {
        missExam: {
          number: 0,
          list: []
        },
        inputionSteps: 6,
        inputionDisabled: true,
        submitButtonInfo: '',
        gradeOptionsDisabled: false,
        classesOptionsDisabled: false,
        scoresList: [],
        examNumber: '请选择年级、班级、学科来自动生成考号',
        nowDate: '',
        tempFormData:{
          grade: null,
          classes: null,
          subject: null,
        },
        formData: {
          grade: null,
          classes: null,
          subject: null,
          scores: null,
        },
        gradeOptions: [{
          "label": "一年级",
          "value": 1
        }, {
          "label": "二年级",
          "value": 2
        }, {
          "label": "三年级",
          "value": 3
        }, {
          "label": "四年级",
          "value": 4
        }, {
          "label": "五年级",
          "value": 5
        }, {
          "label": "六年级",
          "value": 6
        }],
        classesOptions: [{
          "label": "1班",
          "value": "01"
        }, {
          "label": "2班",
          "value": "02"
        }, {
          "label": "3班",
          "value": "03"
        }, {
          "label": "4班",
          "value": "04"
        }, {
          "label": "5班",
          "value": "05"
        }, {
          "label": "6班",
          "value": "06"
        }, {
          "label": "7班",
          "value": "07"
        }, {
          "label": "8班",
          "value": "08"
        }, {
          "label": "9班",
          "value": "09"
        }, {
          "label": "10班",
          "value": "10"
        }],
        subjectOptions: [{
          "label": "语文",
          "value": "语文"
        }, {
          "label": "数学",
          "value": "数学"
        }, {
          "label": "英语",
          "value": "英语"
        }],
        rules: {
          grade: [{
            required: true,
            message: '没有选择年级',
            trigger: 'change'
         }],
          classes: [{
           required: true,
           message: '没有选择班级',
           trigger: 'change'
         }],
          subject: [{
            required: true,
            message: '没有选择学科',
            trigger: 'change'
        }],
          scores: [{pattern: /([1-9]\d*\.?\d*)|(0\.\d*[1-9])|(0)/, message: "只能输入纯数字"}],
      },

    }
    },
    computed: {},
    watch: {},
    created() {},
    mounted() {
      this.getNowDate();
      this.getDeptInfo();
      this.checkExamEnabled();
    },
    methods: {
      async cleanTemp(){
        const confirmRes = await this.$confirm('确定清空全部分数数据吗？一旦清空，所有数据全部丢失，无法补救', '危险', {
          confirmButtonText: '确定清空',
          cancelButtonText: '取消清空',
          type: 'warning'
        }).catch(err => err) //用catch来捕获错误消息
        if ('confirm' === confirmRes) {//用户点击了确定
          cleanTempScores().then(response => {
            this.$modal.alertSuccess("已清空全部数据");
          });
        } else {
          this.$modal.notify("操作取消");
        }

      },
      clearScore(){
        this.$refs['elForm'].validate(valid => {
          if (!valid) {
            this.$modal.alertWarning("条件没有选择完整");
            return false;
          } else {
            let param = {
              examNumber: this.examNumber,
              subjectName: this.formData.subject
            }
            delTempScores(param).then(response => {
              if (0 <= response.data){
                this.$modal.alertSuccess(this.submitButtonInfo + "清除成功");
                this.inputionDisabled = false;
              } else {
                this.$modal.alertWarning("清除失败");
              }
            });
          }
        });
      },
      checkExamEnabled(){
        getExamsEnables().then(response => {
          let enableNumbers = response.data;
          if (1!==enableNumbers){
            this.$modal.alertWarning("考试尚未开启分数录入");
            this.inputionDisabled = true;
            return false;
          } else {
            this.inputionDisabled = false;
          }
        });
      },
      retreatScore(){
        if (null !== this.scoresList && this.scoresList.length > 0) {
          if (0 < this.inputionSteps) {
            this.inputionSteps -= 1;
            if (undefined === this.scoresList[0].score || null === this.scoresList[0].score || "" === this.scoresList[0].score){
              this.missExam.number--;
              this.missExam.list.pop();
            }
            this.scoresList.shift();
            let num = Number(this.examNumber.substring(3)) - 1;
            if (2 > num.toString().length){
              num = "0" + num;
            }
            this.examNumber = this.examNumber.substring(0,3) + num;
            this.formData.scores = '';
            this.$nextTick(() => {
              this.$refs.formScore.focus();
            })
          } else {
            this.$modal.msgWarning("可用的撤回次数不足");
          }
        } else {
          this.$modal.msgWarning("没有添加任何分数，不可撤回");
        }
      },
      nextScore() {
        this.$refs['elForm'].validate(valid => {
          if (!valid) return false;
          if (0 === this.formData.scores.indexOf('.')){
            this.formData.scores = '0'+this.formData.scores;
          } else if (this.formData.scores.length - 1 === this.formData.scores.indexOf('.')){
            this.formData.scores = this.formData.scores.substring(0,this.formData.scores.length - 1);
          }
          let scoreItem = {
            score : this.formData.scores,
            examNumber : this.examNumber,
            subjectName: this.formData.subject
          }
          if(6 > this.inputionSteps){
            this.inputionSteps +=1 ;
          }
          if (undefined === this.formData.scores || null === this.formData.scores || "" === this.formData.scores){
            this.missExam.number ++;
            this.missExam.list.push(this.examNumber);
          }
          this.scoresList.unshift(scoreItem);
          let num = Number(this.examNumber.substring(3)) + 1;
          if (2 > num.toString().length){
            num = "0" + num;
          }
          this.examNumber = this.examNumber.substring(0,3) + num;
          this.formData.scores = '';
          this.$nextTick(() => {
            this.$refs.formScore.focus();
          })
        })
      },
      gengrateExamNumber(){
        if (this.formData.grade && this.formData.classes){
          this.examNumber = '请选择年级、班级、学科来自动生成考号';
          let gradeYear = this.nowDate.substring(3,4);
          let gradeMonth = this.nowDate.substring(6,7);
          let firstNumberOfExamNumber;
          //先判断年级
          if (this.formData.grade < gradeYear){
            firstNumberOfExamNumber = gradeYear - this.formData.grade;
          } else {
            firstNumberOfExamNumber = gradeYear - this.formData.grade + 10;
          }
          //根据月份，如果是9月，还要再+1，然后判断是否是10，如果是10，直接设置为'A'，考虑到excel表格中不方便以0作为开头第一个数字
          if (gradeMonth >= 9) {
            firstNumberOfExamNumber += 1;
          }
          if (10 === firstNumberOfExamNumber){
            firstNumberOfExamNumber = 'A';
          }
          this.examNumber = firstNumberOfExamNumber + this.formData.classes + "01";
        }
        if (this.formData.grade && this.formData.classes && this.formData.subject){
          let param = {
            examNumber: this.examNumber,
            subjectName: this.formData.subject
          }
          checkAlreadyScores(param).then(response => {
            if (1 === response.data){
              this.inputionDisabled = true;
              this.$modal.alertWarning(this.submitButtonInfo + "已录入分数，如需重新录分，请联系课程处");
            } else {
              this.inputionDisabled = false;
            }
          });
        }
      },
      async calculateExamNumber(){
        if (null !== this.scoresList && this.scoresList.length > 0){
          const confirmRes = await this.$confirm('分数尚未提交到服务器，切换选项会导致表格中的数据丢失', '警告', {
            confirmButtonText: '确定切换选项',
            cancelButtonText: '取消',
            type: 'warning'
          }).catch(err => err) //用catch来捕获错误消息
          if ('confirm' === confirmRes) {//用户点击了确定
            this.scoresList = [];
            if (1 === this.formData.grade || 2 === this.formData.grade){
              if ("英语" === this.formData.subject){
                this.formData.subject = null;
              }
              this.subjectOptions[2].disabled = true;
            } else {
              this.subjectOptions[2].disabled = false;
            }
            this.tempFormData.grade = this.formData.grade;
            this.tempFormData.classes = this.formData.classes;
            this.tempFormData.subject = this.formData.subject;
          } else {
            this.formData.grade = this.tempFormData.grade;
            this.formData.classes = this.tempFormData.classes;
            this.formData.subject = this.tempFormData.subject;
            return false;
          }
        } else {
          if (1 === this.formData.grade || 2 === this.formData.grade){
            if ("英语" === this.formData.subject){
              this.formData.subject = null;
            }
            this.subjectOptions[2].disabled = true;
          } else {
            this.subjectOptions[2].disabled = false;
          }
          this.tempFormData.grade = this.formData.grade;
          this.tempFormData.classes = this.formData.classes;
          this.tempFormData.subject = this.formData.subject;
        }
        this.gengrateExamNumber();
        this.setSubmitButtonInfo();
      },
      setSubmitButtonInfo(){
        let gradeName;
        switch (this.formData.grade) {
          case 1:
            gradeName = "一年级";
            break;
          case 2:
            gradeName = "二年级";
            break;
          case 3:
            gradeName = "三年级";
            break;
          case 4:
            gradeName = "四年级";
            break;
          case 5:
            gradeName = "五年级";
            break;
          case 6:
            gradeName = "六年级";
            break;
          default:
            gradeName = "";
            break;
        }
        let classesName = this.formData.classes ? (Number(this.formData.classes) + "班") : "";
        let subjectName = this.formData.subject || "";
        this.submitButtonInfo = gradeName + " " + classesName + " " + subjectName;
      },
      getDeptInfo(){
        const deptNameGrade = Cookies.get("deptNameGrade");
        const deptNameSubject = Cookies.get("deptNameSubject");
        if (undefined !== deptNameGrade){
          switch (deptNameGrade) {
            case "一年级":
              this.formData.grade = 1;
              this.gradeOptionsDisabled = true;
              break;
            case "二年级":
              this.formData.grade = 2;
              this.gradeOptionsDisabled = true;
              break;
            case "三年级":
              this.formData.grade = 3;
              this.gradeOptionsDisabled = true;
              break;
            case "四年级":
              this.formData.grade = 4;
              this.gradeOptionsDisabled = true;
              break;
            case "五年级":
              this.formData.grade = 5;
              this.gradeOptionsDisabled = true;
              break;
            case "六年级":
              this.formData.grade = 6;
              this.gradeOptionsDisabled = true;
              break;
            default:
              break;
          }
        }
        if (undefined !== deptNameSubject){
          switch (deptNameSubject) {
            case "语文":
              this.formData.subject = "语文";
              this.classesOptionsDisabled = true;
              break;
            case "数学":
              this.formData.subject = "数学";
              this.classesOptionsDisabled = true;
              break;
            case "英语":
              this.formData.subject = "英语";
              this.classesOptionsDisabled = true;
              break;
            default:
              break;
          }
        }
      },
      getNowDate(){
        let that = this;
        getTodayDate().then(response => {
          that.nowDate = response.msg;
        });
      },
      submitForm() {
        this.$refs['elForm'].validate(valid => {
          if (!valid) return false;
          let that = this;
          if (0 === this.scoresList.length){
            this.$modal.alertWarning("没有暂存任何分数");
            return false;
          }
          const loading = this.$loading({
            lock: true,
            text: '上报分数中',
            spinner: 'el-icon-loading',
            background: 'rgba(0, 0, 0, 0.7)'
          });
          addExamTempScores(this.scoresList).then(response => {
            if(0 < response.data){
              this.$modal.msgSuccess("分数上报成功");
              this.resetForm();
              this.inputionDisabled = true;
            } else {
              this.$modal.alertWarning("分数上报失败");
            }
            loading.close();
          });
        })
      },
      resetForm() {
        //this.$refs['elForm'].resetFields()
        this.scoresList = [];
        this.missExam.number = 0;
        this.missExam.list = [];
        this.inputionSteps = 6;
        this.gengrateExamNumber();
      },
      tableRowClassName({row, rowIndex}) {
        if (1 === rowIndex % 2) {
          return 'success-row';
        }
        return '';
      },
    }
  }

</script>
<style>
</style>
