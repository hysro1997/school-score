<template>
    <div style="margin-top: 30px;margin-left: 20px;">
      <el-form :model="queryParams" ref="queryForm" :rules="queryFormRules" size="small" :inline="true" label-width="68px">
        <el-form-item label="年级" prop="grade">
          <el-select v-model="queryParams.grade" @change="gradeChanged" placeholder="请选择年级">
            <el-option
              v-for="item in gradeOptions"
              :key="item.value"
              :label="item.label"
              :value="item.value">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="班级" prop="classes">
          <el-select v-model="queryParams.classes" placeholder="请选择班级">
            <el-option
              v-for="item in classesOptions"
              :key="item.value"
              :label="item.label"
              :value="item.value">
            </el-option>
          </el-select>
        </el-form-item>

        <el-form-item label="考试名称" prop="examId">
          <el-select
            v-model="queryParams.examId"
            filterable
            remote
            reserve-keyword
            placeholder="请输入考试名称"
            :remote-method="remoteMethod"
            :loading="loading"
            v-loadmore="loadMoreExams">
            <el-option
              v-for="item in options"
              :key="item.examId"
              :label="item.examName"
              :value="item.examId">
            </el-option>
          </el-select>
        </el-form-item>
        <br/>
        <el-form-item  prop="orderType">
          <el-col :span="12">
            <el-tooltip class="item" effect="dark" content="语文偏差率大于 0%" placement="top">
              <el-radio v-model="queryParams.orderType" label="1">语文偏优</el-radio>
            </el-tooltip>
            <el-tooltip class="item" effect="dark" content="数学偏差率大于 0%" placement="top">
              <el-radio v-model="queryParams.orderType" label="2">数学偏优</el-radio>
            </el-tooltip>
            <el-tooltip class="item" effect="dark" content="英语偏差率大于 0%" placement="top">
              <el-radio v-model="queryParams.orderType" :disabled="englishDisabled" label="3">英语偏优</el-radio>
            </el-tooltip>
            <br/>
            <el-tooltip class="item" effect="dark" content="语文偏差率小于 0%" placement="bottom">
              <el-radio v-model="queryParams.orderType" label="4">语文偏差</el-radio>
            </el-tooltip>
            <el-tooltip class="item" effect="dark" content="数学偏差率小于 0%" placement="bottom">
              <el-radio v-model="queryParams.orderType" label="5">数学偏差</el-radio>
            </el-tooltip>
            <el-tooltip class="item" effect="dark" content="英语偏差率小于 0%" placement="bottom">
              <el-radio v-model="queryParams.orderType" :disabled="englishDisabled" label="6">英语偏差</el-radio>
            </el-tooltip>
          </el-col>
          <el-col :span="8">
            <el-tooltip class="item" effect="dark" content="总偏差率大于 0%" placement="top">
              <el-radio v-model="queryParams.orderType" label="11">总体较优</el-radio>
            </el-tooltip>
            <el-tooltip class="item" effect="dark" content="三门偏差率都大于 0%" placement="top">
              <el-radio v-model="queryParams.orderType" label="7">优生</el-radio>
            </el-tooltip>
            <el-tooltip class="item" effect="dark" content="三门偏差率都大于 10%" placement="top">
              <el-radio v-model="queryParams.orderType" label="8">特优生</el-radio>
            </el-tooltip>
            <el-tooltip class="item" effect="dark" content="总偏差率小于 0%" placement="top">
              <el-radio v-model="queryParams.orderType" label="12">总体较差</el-radio>
            </el-tooltip>
            <el-tooltip class="item" effect="dark" content="三门偏差率都小于 0%" placement="bottom">
              <el-radio v-model="queryParams.orderType" label="9">差生</el-radio>
            </el-tooltip>
            <el-tooltip class="item" effect="dark" content="三门偏差率都小于 -10%" placement="bottom">
              <el-radio v-model="queryParams.orderType" label="10">特差生</el-radio>
            </el-tooltip>
          </el-col>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
          <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
        </el-form-item>
      </el-form>


      <el-table v-loading="loading2" :data="scoresList" :row-class-name="tableRowClassName">
        <el-table-column type="index" width="50" align="center" />
        <!-- el-table-column label="分数ID" align="center" prop="scoreId" / -->
        <el-table-column label="年级" align="center" prop="grade" />
        <el-table-column label="班级" align="center" prop="classes" />
        <el-table-column label="语文分数" sortable align="center" prop="chineseScore" />
        <el-table-column label="数学分数" sortable align="center" prop="mathsScore" />
        <el-table-column label="英语分数" sortable align="center" prop="englishScore" />
        <el-table-column label="考试号" align="center" prop="examNumber" />
        <el-table-column label="总分" sortable align="center" prop="totalPoints" />
        <el-table-column label="语文偏差率" sortable align="center" prop="chineseDeviationRate">
          <template slot-scope="scope">
            <span v-if="scope.row.chineseDeviationRate && '' !== scope.row.chineseDeviationRate"><el-tag v-if="0 < scope.row.chineseDeviationRate">{{ scope.row.chineseDeviationRate}}%</el-tag><el-tag v-else-if="0 === scope.row.chineseDeviationRate" type="info">{{ scope.row.chineseDeviationRate}}%</el-tag><el-tag v-else type="danger">{{ scope.row.chineseDeviationRate}}%</el-tag></span>
          </template>
        </el-table-column>
        <el-table-column label="数学偏差率" sortable align="center" prop="mathsDeviationRate">
          <template slot-scope="scope">
            <span v-if="scope.row.mathsDeviationRate && '' !== scope.row.mathsDeviationRate"><el-tag v-if="0 < scope.row.mathsDeviationRate">{{ scope.row.mathsDeviationRate}}%</el-tag><el-tag v-else-if="0 === scope.row.mathsDeviationRate" type="info">{{ scope.row.mathsDeviationRate}}%</el-tag><el-tag v-else type="danger">{{ scope.row.mathsDeviationRate}}%</el-tag></span>
          </template>
        </el-table-column>
        <el-table-column label="英语偏差率" sortable align="center" prop="englishDeviationRate">
          <template slot-scope="scope">
            <span v-if="scope.row.englishDeviationRate && '' !== scope.row.englishDeviationRate"><el-tag v-if="0 < scope.row.englishDeviationRate">{{ scope.row.englishDeviationRate}}%</el-tag><el-tag v-else-if="0 === scope.row.englishDeviationRate" type="info">{{ scope.row.englishDeviationRate}}%</el-tag><el-tag v-else type="danger">{{ scope.row.englishDeviationRate}}%</el-tag></span>
          </template>
        </el-table-column>
        <el-table-column label="总偏差率" sortable align="center" prop="totalDeviationRate">
          <template slot-scope="scope">
            <span v-if="scope.row.totalDeviationRate && '' !== scope.row.totalDeviationRate"><el-tag v-if="0 < scope.row.totalDeviationRate">{{ scope.row.totalDeviationRate}}%</el-tag><el-tag v-else-if="0 === scope.row.totalDeviationRate" type="info">{{ scope.row.totalDeviationRate}}%</el-tag><el-tag v-else type="danger">{{ scope.row.totalDeviationRate}}%</el-tag></span>
          </template>
        </el-table-column>
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
  import { listScores2 } from '@/api/scores/scores'

  export default {
    name: 'index',
    data() {
      return {
        englishDisabled: false,
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 50,
          grade: null,
          classes: null,
          examId: null,
          examName:null,
          orderType: null,
        },
        queryFormRules: {
          grade: [{ required: true, message: '请选择年级', trigger: 'change' }],
          examId: [{ required: true, message: '请选择考试', trigger: 'change' }],
          orderType: [{ required: true, message: '请选择学生类型', trigger: 'change' }]
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
      gradeChanged(){
        this.englishDisabled = ('一年级'===this.queryParams.grade || '二年级'===this.queryParams.grade)
        if (this.englishDisabled){
          if ("3" === this.queryParams.orderType || "6" === this.queryParams.orderType){
            this.queryParams.orderType = null;
          }
        }
      },
      getList(){
        this.loading2 = true;
        listScores2(this.queryParams).then(response => {
          if (0 >= response.rows.length){
            this.$modal.alertWarning("此条件下没有获取到分数，请修改筛选条件");
          }
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
        this.$refs['queryForm'].validate(valid => {
          if (!valid) return false;
          this.queryParams.pageNum = 1;
          this.getList();
        })
      },
      /** 重置按钮操作 */
      resetQuery() {
        this.resetForm("queryForm");
        this.queryParams.orderType = null;
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
