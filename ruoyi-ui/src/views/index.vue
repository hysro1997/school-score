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
      <el-col :span="12"><div class="grid-content bg-purple" id="rateChart1" style="width: 700px;height: 400px"></div></el-col>
      <el-col :span="12"><div class="grid-content bg-purple" id="rateChart2" style="width: 700px;height: 400px"></div></el-col>
    </el-row>

  </div>
</template>

<script>

  import { getUserProfile } from "@/api/system/user";
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
      roleGroup: {},
      postGroup: {}
    };
  },
  created() {
    this.getUser();
  },
  mounted() {
    this.drawChart(1);
    this.drawChart(2);
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
    drawChart(index){
      let myChart = echarts.init(document.getElementById('rateChart'+index));
      // 绘制图表
      myChart.setOption({
        title: {
          text: 'ECharts 入门示例' + index
        },
        tooltip: {},
        legend:{
          data: ["语文","数学","英语"],
          orient: 'horizontal',
          right: 0,
        },
        label:{
          show: true,
          position: 'top'
        },
        xAxis: {
          data: ['衬衫', '羊毛衫', '雪纺衫', '裤子', '高跟鞋', '袜子','羊毛裤','棉毛裤']
        },
        yAxis: {},
        series: [
          {
            name: '语文',
            type: 'bar',
            data: [1, 3, 2, 7, 6, 5, 8, 4]
          },
          {
            name: '数学',
            type: 'bar',
            data: [8, 5, 6, 2, 1, 3, 4, 7]
          },
          {
            name: '英语',
            type: 'bar',
            data: [4, 3, 8, 1, 7, 5, 6, 2]
          }
        ]
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

