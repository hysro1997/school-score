<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
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
            :value="item.value">
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
            :value="item.value">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="考试名称" prop="examName">
        <el-select
          v-model="queryParams.examId"
          placeholder="请选择考试名称"
          @change="handleQuery">
          <el-option
            v-for="item in examOptions"
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

    <el-row :gutter="10" class="mb8">
      <!-- el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['scores:statistic:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['scores:statistic:edit']"
        >修改</el-button>
      </el-col -->
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['scores:statistic:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['scores:statistic:export']"
        >导出</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button plain size="mini" type="primary" @click="clipboardHandler(0)">复制表格数据</el-button>
        <el-button plain size="mini" type="primary" @click="clipboardHandler(1)">复制表格（含表头）</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="statisticList" @selection-change="handleSelectionChange" :row-class-name="tableRowClassName">
      <el-table-column type="selection" width="55" align="center" />
      <!-- el-table-column label="年级数据ID" align="center" prop="examGradeStatisticsId" / -->
      <el-table-column label="年级" align="center" prop="grade">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            @click="handGetListByGrade(scope.row,scope.row.grade)">{{scope.row.grade}}</el-button>
        </template>
      </el-table-column>
      <el-table-column label="班级" align="center" prop="classes" >
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            @click="handGetListByClasses(scope.row,scope.row.classes)">{{scope.row.classes}}</el-button>
        </template>
      </el-table-column>
      <el-table-column label="考试人数" align="center" prop="examNumbers" />
      <el-table-column label="三及格人数" sortable align="center" prop="tripleQualifiedNumbers" />
      <el-table-column label="三优秀人数" sortable align="center" prop="tripleExcellentNumbers" />
      <el-table-column label="三及格率" sortable align="center" prop="tripleQualifiedPercentage" />
      <el-table-column label="三优秀率" sortable align="center" prop="tripleExcellentPercentage" />
      <el-table-column label="总得分" sortable align="center" prop="allScore" />
      <el-table-column label="得分率" sortable align="center" prop="allScorePercentage" />
      <el-table-column label="综合分" sortable align="center" prop="muitipleScore" />
      <el-table-column label="综合分排名" sortable align="center" prop="muitipleRank" />
      <el-table-column label="考试名称" align="center" prop="exams.examName" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <!-- el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['scores:statistic:edit']"
          >修改</el-button -->
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['scores:statistic:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改年级数据统计情况对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" :close-on-click-modal="false" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
  import { addStatistic, delStatistic, getStatistic, listStatistic, updateStatistic } from '@/api/scores/statistic'
  import { allExams } from '@/api/examination/exams'

  export default {
  name: "Statistic",
  data() {
    return {
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
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 年级数据统计情况表格数据
      statisticList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        grade: null,
        classes: null,
        examId: null,
        examName:null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      },
      examOptions: [],
      examQueryParams:{
        pageNum: 1,
        pageSize: 12,
        examName: null,
      }
    };
  },
  created() {
    this.getList();
    this.getTenExams();
  },
  methods: {
    getTenExams(){
      allExams(this.examQueryParams).then(response => {
        this.examOptions = response.data;
      });
    },
    clipboardHandler(title){
      if (null === this.statisticList || 0 === this.statisticList.length){
        this.$modal.msgWarning("没有可供复制的内容");
        return;
      }
      let that = this;
      let message = "";
      if (title){
        message = "年级\t班级\t考试人数\t三及格人数\t三优秀人数\t三及格率\t三优秀率\t总得分\t得分率\t综合分\t综合分排名\n";
      }
      this.statisticList.forEach(function(element){
        message += element.grade + "\t" + element.classes + "\t" + element.examNumbers + "\t" + element.tripleQualifiedNumbers + "\t" + element.tripleExcellentNumbers + "\t" + element.tripleQualifiedPercentage + "\t" + element.tripleExcellentPercentage + "\t" + element.allScore + "\t" + element.allScorePercentage + "\t" + element.muitipleScore + "\t" + element.muitipleRank + "\n";
      });
      this.$copyText(message).then(function (e) {
        that.$modal.msgSuccess("复制成功");
      }, function (e) {
        that.$modal.msgError("复制出错了");
      })
    },
    clearQueryParams(){
      this.queryParams.grade = null;
      this.queryParams.classes = null;
      this.queryParams.subject = null;
      this.queryParams.examId = null;
    },
    handGetListByGrade(row,grade){
      let params ={
        grade: null,
        classes: null,
        subject: null,
        examId: null,
      };
      this.clearQueryParams();
      params.examId = row.examId;
      params.grade = grade;
      this.queryParams.grade = grade;
      this.handGetList(params);
    },
    handGetListByClasses(row,classes){
      let params ={
        grade: null,
        classes: null,
        subject: null,
        examId: null,
      };
      this.clearQueryParams();
      params.examId = row.examId;
      params.classes = classes;
      this.queryParams.classes = classes;
      this.handGetList(params);
    },
    tableRowClassName({row, rowIndex}) {
      if (1 === rowIndex % 2) {
        return 'success-row';
      }
      return '';
    },
    handGetList(param){
      this.loading = true;
      listStatistic(param).then(response => {
        this.statisticList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    /** 查询年级数据统计情况列表 */
    getList() {
      this.loading = true;
      listStatistic(this.queryParams).then(response => {
        this.statisticList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        examGradeStatisticsId: null,
        examNumbers: null,
        tripleQualifiedNumbers: null,
        tripleExcellentNumbers: null,
        tripleQualifiedPercentage: null,
        tripleExcellentPercentage: null,
        muitipleScore: null,
        grade: null,
        classes: null,
        muitipleRank: null,
        averageRank: null,
        examId: null,
        allScore: null,
        allScorePercentage: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.queryParams.examId = null;
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.examGradeStatisticsId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加年级数据统计情况";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const examGradeStatisticsId = row.examGradeStatisticsId || this.ids
      getStatistic(examGradeStatisticsId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改年级数据统计情况";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.examGradeStatisticsId != null) {
            updateStatistic(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addStatistic(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const examGradeStatisticsIds = row.examGradeStatisticsId || this.ids;
      this.$modal.confirm('是否确认删除年级数据统计情况编号为"' + examGradeStatisticsIds + '"的数据项？').then(function() {
        return delStatistic(examGradeStatisticsIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('scores/statistic/export', {
        ...this.queryParams
      }, `年级成绩统计_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
