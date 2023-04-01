<template>
  <div class="app-container home">
    <div style="text-align: center;font-size: 30px">
      <p>欢迎
        {{ user.dept.deptName }} {{postGroup}}
        <el-tag effect="plain" style="text-align: center;font-size: 28px">
          {{ user.nickName }}
        </el-tag> 使用
        <el-tag effect="light" style="text-align: center;font-size: 28px">
          安家中心小学成绩管理系统
        </el-tag>
      </p>
      <p></p>
    </div>

    <el-row :gutter="20">
      <el-col :span="12"><div class="grid-content bg-purple" id="rateChart1" style="width: 700px;height: 400px">
        <el-empty description="一年级暂无数据"></el-empty>
      </div></el-col>
      <el-col :span="12"><div class="grid-content bg-purple" id="rateChart2" style="width: 700px;height: 400px">
        <el-empty description="二年级暂无数据"></el-empty>
      </div></el-col>
    </el-row>
    <el-row :gutter="20">
      <el-col :span="12"><div class="grid-content bg-purple" id="rateChart3" style="width: 700px;height: 400px">
        <el-empty description="三年级暂无数据"></el-empty>
      </div></el-col>
      <el-col :span="12"><div class="grid-content bg-purple" id="rateChart4" style="width: 700px;height: 400px">
        <el-empty description="四年级暂无数据"></el-empty>
      </div></el-col>
    </el-row>
    <el-row :gutter="20">
      <el-col :span="12"><div class="grid-content bg-purple" id="rateChart5" style="width: 700px;height: 400px">
        <el-empty description="五年级暂无数据"></el-empty>
      </div></el-col>
      <el-col :span="12"><div class="grid-content bg-purple" id="rateChart6" style="width: 700px;height: 400px">
        <el-empty description="六年级暂无数据"></el-empty>
      </div></el-col>
    </el-row>

  </div>
</template>

<script>

  import { getUserProfile } from "@/api/system/user";
  import { getStaticticsclass } from "@/api/scores/infoForEcharts"
  import * as echarts from 'echarts';

export default {
  name: "Index",
  data() {
    return {
      // 版本号
      user: {
        dept:{
          deptName: ''
        }
      },
      queryParams: {
        grade: null,
        examId: null,
      },
      roleGroup: {},
      postGroup: {}
    };
  },
  created() {
    this.getUser();
  },
  mounted() {
    this.drawChart(1,18,"一年级");
    this.drawChart(2,18,"二年级");
    this.drawChart(3,18,"三年级");
    this.drawChart(4,18,"四年级");
    this.drawChart(5,18,"五年级");
    this.drawChart(6,18,"六年级");
  },
  methods: {
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
    drawChart(index,examId, grade){
      this.queryParams.examId = examId;
      this.queryParams.grade = grade;
      let subjectList = null;
      let classesList = null;
      let rateList = [];
      getStaticticsclass(this.queryParams).then(response => {
        if (null === response.data.classes || response.data.classes.length ===0){
          //this.$modal.msgWarning("没有数据");
          return;
        }
        let myChart = echarts.init(document.getElementById('rateChart'+index));
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
        myChart.setOption({
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

