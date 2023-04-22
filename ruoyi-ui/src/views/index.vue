<template>
  <div class="app-container home">
    <div style="text-align: center;font-size: 30px">
      <p>欢迎
        {{ user.dept.deptName }} {{postGroup}}
        <el-tag effect="plain" style="text-align: center;font-size: 28px">
          {{ user.nickName }}
        </el-tag> 使用
        <el-tag effect="light" style="text-align: center;font-size: 28px">
          小学成绩管理系统
        </el-tag>
      </p>
      <p></p>
    </div>

    <div style="text-align: center">
      查看考试：
        <el-select
          v-model="examId"
          filterable
          remote
          reserve-keyword
          placeholder="请输入考试名称"
          :remote-method="remoteMethod"
          :loading="loading"
          @change="drawAllEcharts">
          <el-option
            v-for="item in options"
            :key="item.examId"
            :label="item.examName"
            :value="item.examId">
          </el-option>
        </el-select>
      的 综合分 <el-switch
      v-model="queryParams.rankType"
      active-value="1"
      inactive-value="0"
      inactive-color="rgb(145, 204, 117)"
      @change="drawAllEcharts(examId)"
    ></el-switch> 平均分 排名数据
    </div>
<br/><br/>
    <el-row :gutter="20">
      <el-col :span="12">
        <div><el-button type="success" @click="getFiftyByButton('一年级','1')" plain>前50名</el-button>&nbsp;&nbsp;&nbsp;&nbsp;<el-button type="warning" @click="getFiftyByButton('一年级','0')" plain>后50名</el-button></div>
        <div class="grid-content bg-purple" id="rateChart1" style="width: 700px;height: 400px">
        <el-empty description="一年级暂无数据"></el-empty>
      </div></el-col>
      <el-col :span="12"><div><el-button type="success" @click="getFiftyByButton('二年级','1')" plain>前50名</el-button>&nbsp;&nbsp;&nbsp;&nbsp;<el-button type="warning" @click="getFiftyByButton('二年级','0')" plain>后50名</el-button></div>
        <div class="grid-content bg-purple" id="rateChart2" style="width: 700px;height: 400px">
        <el-empty description="二年级暂无数据"></el-empty>
      </div></el-col>
    </el-row>
    <br/><br/>
    <el-row :gutter="20">
      <el-col :span="12"><div><el-button type="success" @click="getFiftyByButton('三年级','1')" plain>前50名</el-button>&nbsp;&nbsp;&nbsp;&nbsp;<el-button type="warning" @click="getFiftyByButton('三年级','0')" plain>后50名</el-button></div>
        <div class="grid-content bg-purple" id="rateChart3" style="width: 700px;height: 400px">
        <el-empty description="三年级暂无数据"></el-empty>
      </div></el-col>
      <el-col :span="12">
        <div><el-button type="success" @click="getFiftyByButton('四年级','1')" plain>前50名</el-button>&nbsp;&nbsp;&nbsp;&nbsp;<el-button type="warning" @click="getFiftyByButton('四年级','0')" plain>后50名</el-button></div>
        <div class="grid-content bg-purple" id="rateChart4" style="width: 700px;height: 400px">
        <el-empty description="四年级暂无数据"></el-empty>
      </div></el-col>
    </el-row>
    <br/><br/>
    <el-row :gutter="20">
      <el-col :span="12"><div><el-button type="success" @click="getFiftyByButton('五年级','1')" plain>前50名</el-button>&nbsp;&nbsp;&nbsp;&nbsp;<el-button type="warning" @click="getFiftyByButton('五年级','0')" plain>后50名</el-button></div>
        <div class="grid-content bg-purple" id="rateChart5" style="width: 700px;height: 400px">
        <el-empty description="五年级暂无数据"></el-empty>
      </div></el-col>
      <el-col :span="12"><div><el-button type="success" @click="getFiftyByButton('六年级','1')" plain>前50名</el-button>&nbsp;&nbsp;&nbsp;&nbsp;<el-button type="warning" @click="getFiftyByButton('六年级','0')" plain>后50名</el-button></div>
        <div class="grid-content bg-purple" id="rateChart6" style="width: 700px;height: 400px">
        <el-empty description="六年级暂无数据"></el-empty>
      </div></el-col>
    </el-row>
    <!-- 查看名单 -->
    <el-dialog :title="studentList.title" width="600px" :visible.sync="studentList.open"  :close-on-click-modal="false">
      <div>语文：<el-button type="primary" @click="clipboardHandler(1)">复制语文名单</el-button></div>
      <el-row :gutter="20" style="font-size: 24px;"><el-col style="margin:5px" :span="4" v-for="(item, index) in studentsChinese" :key="index">{{item}}</el-col></el-row>
      <br/><br/>
      <div>数学：<el-button type="primary" @click="clipboardHandler(2)">复制数学名单</el-button></div>
      <el-row :gutter="20" style="font-size: 24px;"><el-col style="margin:5px" :span="4" v-for="(item, index) in studentsMaths" :key="index">{{item}}</el-col></el-row>
      <br/><br/>
      <div>英语：<el-button type="primary" @click="clipboardHandler(3)">复制英语名单</el-button></div>
      <el-row :gutter="20" style="font-size: 24px;"><el-col style="margin:5px" :span="4" v-for="(item, index) in studentsEnglish" :key="index">{{item}}</el-col></el-row>
    </el-dialog>
  </div>
</template>

<script>

  import { getUserProfile } from "@/api/system/user";
  import { getStaticticsclass } from "@/api/scores/infoForEcharts"
  import * as echarts from 'echarts';
  import { allExams } from '@/api/examination/exams'
  import { getScoresFifty } from '@/api/scores/scores'

export default {
  name: "Index",
  data() {
    return {
      studentList: {
        title: null,
        open: false
      },
      options: [],
      examId: '',
      loading: false,
      user: {
        dept:{
          deptName: ''
        }
      },
      queryParams: {
        grade: null,
        examId: null,
        rankType: 0,
      },
      examQueryParams:{
        pageNum: 1,
        pageSize: 100,
        examName: null,
      },
      roleGroup: {},
      postGroup: {},
      rateChart1: null,
      rateChart2: null,
      rateChart3: null,
      rateChart4: null,
      rateChart5: null,
      rateChart6: null,
      studentsChinese: [],
      studentsMaths: [],
      studentsEnglish: []
    };
  },
  created() {
    this.getUser();
    this.initExams();
  },
  mounted() {
    this.initEchartsInfo();
  },
  methods: {
    clipboardHandler (subject) {
      let that = this;
      let message = (this.studentList.title + "\n") || "";
      switch (subject) {
        case 1:
          if (null === this.studentsChinese || 0 === this.studentsChinese.length){
            this.$modal.msgWarning("没有可供复制的内容");
            return;
          }
          message.replace("级","级 语文");
          this.studentsChinese.forEach(function(element){
            message += element + "\n";
          });
          this.$copyText(message).then(function (e) {
            that.$modal.msgSuccess("复制成功");
          }, function (e) {
            that.$modal.msgError("复制出错了");
          });
          break;
        case 2:
          if (null === this.studentsMaths || 0 === this.studentsMaths.length){
            this.$modal.msgWarning("没有可供复制的内容");
            return;
          }
          message.replace("级","级 数学");
          this.studentsMaths.forEach(function(element){
            message += element + "\n";
          });
          this.$copyText(message).then(function (e) {
            that.$modal.msgSuccess("复制成功");
          }, function (e) {
            that.$modal.msgError("复制出错了");
          });
          break;
        case 3:
          if (null === this.studentsEnglish || 0 === this.studentsEnglish.length){
            this.$modal.msgWarning("没有可供复制的内容");
            return;
          }
          message.replace("级","级 英语");
          this.studentsEnglish.forEach(function(element){
            message += element + "\n";
          });
          this.$copyText(message).then(function (e) {
            that.$modal.msgSuccess("复制成功");
          }, function (e) {
            that.$modal.msgError("复制出错了");
          });
          break;
        default:
          break;
      }

    },
    getFiftyByButton(grade,orderType){
      this.studentsChinese = [];
      this.studentsMaths = [];
      this.studentsEnglish = [];
      this.studentList.title = grade + (orderType === '1' ? " 前 " : " 后 ") + " 50名的名单";
      let params = {
        grade: null,
        examId: null,
        subject: null,
        orderType: null
      };
      params.examId = this.examId;
      params.orderType = orderType;
      params.grade = grade;
      params.subject = "语文";
      getScoresFifty(params).then(response => {
        this.studentsChinese = response.data;
        this.studentList.open = true;
      });
      params.subject = "数学";
      getScoresFifty(params).then(response => {
        this.studentsMaths = response.data;
        this.studentList.open = true;
      });
      params.subject = "英语";
      getScoresFifty(params).then(response => {
        this.studentsEnglish = response.data;
        this.studentList.open = true;
      });
    },
    initExams(){
      allExams(this.examQueryParams).then(response => {
        this.options = response.data;
        setTimeout(() =>{
          if (this.options.length>0){
            this.examId = this.options[0].examId;
          }
        },50);

      });
    },
    initEchartsInfo(){
        setTimeout(() =>{
          if (undefined === this.examId || null === this.examId || '' === this.examId){
            return false;
          }else {
            this.drawAllEcharts(this.examId);
          }
        },2000);
    },
    drawAllEcharts(examId){
      this.examId = examId;
      this.drawChart(this.rateChart1,"rateChart1",examId,"一年级");
      this.drawChart(this.rateChart2,"rateChart2",examId,"二年级");
      this.drawChart(this.rateChart3,"rateChart3",examId,"三年级");
      this.drawChart(this.rateChart4,"rateChart4",examId,"四年级");
      this.drawChart(this.rateChart5,"rateChart5",examId,"五年级");
      this.drawChart(this.rateChart6,"rateChart6",examId,"六年级");
    },
    remoteMethod(query){
      if (query !== '') {
        this.loading = true;
        this.examQueryParams.examName = query;
        allExams(this.examQueryParams).then(response => {
          this.options = response.data;
        });
        this.loading = false;
      } else {
        this.options = [];
      }
    },
    goTarget(href) {
      window.open(href, "_blank");
    },
    getUser() {
      getUserProfile().then(response => {
        this.user = response.data;
        this.roleGroup = response.roleGroup;
        this.postGroup = response.postGroup;
      });
    },
    drawChart(chart,index,examId, grade){
      this.queryParams.examId = examId;
      this.queryParams.grade = grade;
      let subjectList = null;
      let classesList = null;
      let rateList = [];
      getStaticticsclass(this.queryParams).then(response => {
        if (null === response.data.classes || response.data.classes.length ===0){
          chart = echarts.getInstanceByDom(document.getElementById(index));
          if (null != chart){
            chart.dispose();
          }
          //this.$modal.msgWarning("没有数据");
          return;
        }
        chart = echarts.init(document.getElementById(index));
        subjectList = response.data.subjects;
        classesList = response.data.classes;
        subjectList.forEach(function(value) {
          let subjectsRates = {
            name: null,
            type: 'bar',
            data: []
          };
          subjectsRates.name = value;
          if ("语文"===value){
            subjectsRates.data = response.data.chineseRates;
          }else if ("数学"===value){
            subjectsRates.data = response.data.mathsRates;
          }else if ("英语"===value){
            subjectsRates.data = response.data.englishRates;
          }
          rateList.push(subjectsRates);
        });
        // 绘制图表
        chart.setOption({
          title: {
            text: grade
          },
          tooltip: {},
          legend:{
            data: subjectList,
            orient: 'horizontal',
            right: 0,
          },
          label:{
            show: true,
            position: 'top'
          },
          xAxis: {
            data: classesList
          },
          yAxis: {},
          series: rateList
        });
      });

    }
  }
};
</script>

<style scoped lang="scss">
.home {
  blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: 5px solid #eee;
  }
  hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
  }
  .col-item {
    margin-bottom: 20px;
  }

  ul {
    padding: 0;
    margin: 0;
  }

  font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  color: #676a6c;
  overflow-x: hidden;

  ul {
    list-style-type: none;
  }

  h4 {
    margin-top: 0px;
  }

  h2 {
    margin-top: 10px;
    font-size: 26px;
    font-weight: 100;
  }

  p {
    margin-top: 10px;

    b {
      font-weight: 700;
    }
  }

  .update-log {
    ol {
      display: block;
      list-style-type: decimal;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0;
      margin-inline-end: 0;
      padding-inline-start: 40px;
    }
  }
}
</style>

