<template>
    <div style="margin-top: 30px;margin-left: 20px;">
      <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" label-width="68px">
        <el-form-item label="年级" prop="grade">
          <!--el-input
            v-model="queryParams.grade"
            placeholder="请输入年级"
            clearable
            @keyup.enter.native="handleQuery"
          /-->
          <el-select v-model="queryParams.grade" @change="handleQuery" placeholder="请选择年级">
            <el-option
              v-for="item in gradeOptions"
              :key="item.value"
              :label="item.label"
              :value="item.value"
              @change="handleQuery"
              @keyup.enter.native="handleQuery">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="班级" prop="classes">
          <!--el-input
            v-model="queryParams.classes"
            placeholder="请输入班级"
            clearable
            @keyup.enter.native="handleQuery"
          /-->
          <el-select v-model="queryParams.classes" @change="handleQuery" placeholder="请选择班级">
            <el-option
              v-for="item in classesOptions"
              :key="item.value"
              :label="item.label"
              :value="item.value"
              @keyup.enter.native="handleQuery">
            </el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="考试名称">
          <el-select
            v-model="queryParams.examId"
            filterable
            remote
            reserve-keyword
            placeholder="请输入考试名称"
            :remote-method="remoteMethod"
            :loading="loading"
            v-loadmore="loadMoreExams"
            @change="handleQuery">
            <el-option
              v-for="item in options"
              :key="item.examId"
              :label="item.examName"
              :value="item.examId">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
          <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
        </el-form-item>
      </el-form>


      <el-table v-loading="loading2" :data="scoresList" :row-class-name="tableRowClassName">
        <el-table-column type="selection" width="55" align="center" />
        <!-- el-table-column label="分数ID" align="center" prop="scoreId" / -->
        <el-table-column label="年级" align="center" prop="grade" />
        <el-table-column label="班级" align="center" prop="classes" />
        <el-table-column label="语文分数" align="center" prop="chineseScore" />
        <el-table-column label="数学分数" align="center" prop="mathsScore" />
        <el-table-column label="英语分数" align="center" prop="englishScore" />
        <el-table-column label="考试号" align="center" prop="examNumber" />
        <el-table-column label="总分" align="center" prop="totalPoints" />
        <el-table-column label="语文偏差率" align="center" prop="chineseDeviationRate" />
        <el-table-column label="数学偏差率" align="center" prop="mathsDeviationRate" />
        <el-table-column label="英语偏差率" align="center" prop="englishDeviationRate" />
        <el-table-column label="总偏差率" align="center" prop="totalDeviationRate" />
        <el-table-column label="考试" align="center" prop="exams.examName" />
      </el-table>

      <pagination
        v-show="total>0"
        :total="total"
        :page.sync="queryParams.pageNum"
        :limit.sync="queryParams.pageSize"
        :page-sizes="[10,20,30,50,100,200,500,1000]"
        @pagination="getList"
      />

    </div>
</template>

<script>
  import { allExams } from '@/api/examination/exams'
  import { listScores } from '@/api/scores/scores'

  export default {
    name: 'index',
    data() {
      return {
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 10,
          grade: null,
          classes: null,
          examId: null,
          examName:null
        },
        // 总条数
        total: 0,
        // 学生分数情况表格数据
        scoresList: [],
        loading: false,
        loading2: false,
        options: [],
        // 显示搜索条件
        showSearch: true,
        //年级选项
        gradeOptions:[{
          value: '一年级',
          label: '一年级'
        }, {
          value: '二年级',
          label: '二年级'
        }, {
          value: '三年级',
          label: '三年级'
        }, {
          value: '四年级',
          label: '四年级'
        }, {
          value: '五年级',
          label: '五年级'
        }, {
          value: '六年级',
          label: '六年级'
        }],
        //班级选项
        classesOptions:[{
          value: '1班',
          label: '1班'
        }, {
          value: '2班',
          label: '2班'
        }, {
          value: '3班',
          label: '3班'
        }, {
          value: '4班',
          label: '4班'
        }, {
          value: '5班',
          label: '5班'
        }, {
          value: '6班',
          label: '6班'
        }, {
          value: '7班',
          label: '7班'
        }, {
          value: '8班',
          label: '8班'
        }, {
          value: '9班',
          label: '9班'
        }, {
          value: '10班',
          label: '10班'
        }, {
          value: '11班',
          label: '11班'
        }, {
          value: '12班',
          label: '12班'
        }],
        examQueryParams:{
          pageNum: 1,
          pageSize: 10,
          examName: null,
        },
      }
    },
    created() {
      this.initExams();
    },
    methods: {
      getList(){
        this.loading2 = true;
        listScores(this.queryParams).then(response => {
          this.scoresList = response.rows;
          this.total = response.total;
          this.loading2 = false;
        });
      },
      initExams(){
        allExams(this.examQueryParams).then(response => {
          this.options = response.data;
          setTimeout(() =>{
            if (this.options.length>0){
              this.queryParams.examId = this.options[0].examId;
            }
            this.getList();
          },50);

        });
      },
      tableRowClassName({row, rowIndex}) {
        if (1 === rowIndex % 2) {
          return 'success-row';
        }
        return '';
      },
      /** 搜索按钮操作 */
      handleQuery() {
        this.queryParams.pageNum = 1;
        this.getList();
      },
      /** 重置按钮操作 */
      resetQuery() {
        this.resetForm("queryForm");
        this.handleQuery();
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
      loadMoreExams(){
        this.examQueryParams.pageNum += 1;
        let that = this;
        allExams(this.examQueryParams).then(response => {
          if (null !== response.data){
            if (response.data[0].examId !== that.options[that.options.length - response.data.length].examId) {
              response.data.forEach(function(element) {
                if (element.examId !== that.options[that.options.length-1].examId){
                  that.options.push(element);
                }
              });
            } else {
              that.examQueryParams.pageNum -= 1;
            }
          }
        });
      },
    }
  }
</script>

<style scoped>

</style>
