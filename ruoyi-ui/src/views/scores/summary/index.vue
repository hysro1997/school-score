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
      <el-form-item label="学科" prop="subject">
        <!--el-input
          v-model="queryParams.subject"
          placeholder="请输入学科"
          clearable
          @keyup.enter.native="handleQuery"
        /-->
        <el-select v-model="queryParams.subject" @change="handleQuery" placeholder="请选择学科">
          <el-option
            v-for="item in subjectOptions"
            :key="item.value"
            :label="item.label"
            :value="item.value">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="考试名称" prop="examName">
        <el-input
          v-model="queryParams.examName"
          placeholder="请输入考试名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
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
          v-hasPermi="['scores:summary:add']"
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
          v-hasPermi="['scores:summary:edit']"
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
          v-hasPermi="['scores:summary:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['scores:summary:export']"
        >导出</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button plain size="mini" type="primary" @click="clipboardHandler2(0)">复制表格数据</el-button>
        <el-button plain size="mini" type="primary" @click="clipboardHandler2(1)">复制表格（含表头）</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="summaryList" @selection-change="handleSelectionChange" :row-class-name="tableRowClassName">
      <el-table-column type="selection" width="55" align="center" />
      <!-- el-table-column label="ID" align="center" prop="examGradeSummaryId" / -->
      <el-table-column label="年级" align="center" prop="grade">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            @click="handGetListByGrade(scope.row,scope.row.grade)">{{scope.row.grade}}</el-button>
        </template>
      </el-table-column>
      <el-table-column label="学科" align="center" prop="subject">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            @click="handGetListBySubject(scope.row,scope.row.subject)">{{scope.row.subject}}</el-button>
        </template>
      </el-table-column>
      <el-table-column label="考试总人数" sortable align="center" prop="examTotalNumbers" />
      <el-table-column label="年级总分" sortable align="center" prop="gradeTotalScores" />
      <el-table-column label="年级均分" sortable align="center" prop="gradeAverageScore" />
      <el-table-column label="年级及格率" sortable align="center" prop="gradeQualifiedPercentage" />
      <el-table-column label="年级优秀率" sortable align="center" prop="gradeExcellentPercentage" />
      <el-table-column label="不及格人数" sortable align="center" prop="gradeUnqualifiedNumbers">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            @click="getUnqualified(scope.row)">{{scope.row.gradeUnqualifiedNumbers}}</el-button>
        </template>
      </el-table-column>
      <el-table-column label="考试名称" align="center" prop="exams.examName" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <!-- el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['scores:summary:edit']"
          >修改</el-button -->
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['scores:summary:remove']"
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

    <!-- 添加或修改年级总体情况对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
    <!-- 查看名单 -->
    <el-dialog :title="studentList.title" width="600px" :visible.sync="studentList.open" :close-on-click-modal="false">
      <el-row :gutter="20" style="font-size: 24px;"><el-col style="margin:5px" :span="4" v-for="(item, index) in students" :key="index">{{item}}</el-col></el-row>
      <br/><br/>
      <el-button type="primary" @click="clipboardHandler">复制名单</el-button>
    </el-dialog>
  </div>
</template>

<script>
  import { addSummary, delSummary, getSummary, listSummary, updateSummary } from '@/api/scores/summary'
  import { getScoresUnqualified } from '../../../api/scores/scores'

  export default {
  name: "Summary",
  data() {
    return {
      studentList: {
        title: null,
        open: false
      },
      students: [],
      //学科选项
      subjectOptions:[{
        value: '语文',
        label: '语文'
      }, {
        value: '数学',
        label: '数学'
      }, {
        value: '英语',
        label: '英语'
      }],
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
      // 年级总体情况表格数据
      summaryList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        grade: null,
        subject: null,
        examId: null,
        examName:null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    clipboardHandler2(title){
      if (null === this.summaryList || 0 === this.summaryList.length){
        this.$modal.msgWarning("没有可供复制的内容");
        return;
      }
      let that = this;
      let message = "";
      if (title){
        message = "年级\t学科\t考试总人数\t年级总分\t年级均分\t年级及格率\t年级优秀率\t不及格人数\n";
      }
      this.summaryList.forEach(function(element){
        message += element.grade + "\t" + element.subject + "\t" + element.examTotalNumbers + "\t" + element.gradeTotalScores + "\t" + element.gradeAverageScore + "\t" + element.gradeQualifiedPercentage + "\t" + element.gradeExcellentPercentage + "\t" + element.gradeUnqualifiedNumbers + "\n";
      });
      this.$copyText(message).then(function (e) {
        that.$modal.msgSuccess("复制成功");
      }, function (e) {
        that.$modal.msgError("复制出错了");
      })
    },
    clipboardHandler () {
      let that = this;
      let message = (this.studentList.title + "\n") || "";
      if (null === this.students || 0 === this.students.length){
        this.$modal.msgWarning("没有可供复制的内容");
        return;
      }
      this.students.forEach(function(element){
        message += element + "\n";
      });
      this.$copyText(message).then(function (e) {
        that.$modal.msgSuccess("复制成功");
      }, function (e) {
        that.$modal.msgError("复制出错了");
      })
    },
    getUnqualified(row){
      this.students = [];
      this.studentList.title = row.grade + "  " + row.subject + "  " + "不及格名单";
      let params ={
        grade: null,
        subject: null,
        examId: null,
      };
      params.examId = row.examId;
      params.grade = row.grade;
      params.subject = row.subject;
      getScoresUnqualified(params).then(response => {
        this.students = response.data;
        this.studentList.open = true;
      });
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
    handGetListBySubject(row,subject){
      let params ={
        grade: null,
        classes: null,
        subject: null,
        examId: null,
      };
      this.clearQueryParams();
      params.examId = row.examId;
      params.subject = subject;
      this.queryParams.subject = subject;
      this.handGetList(params);
    },
    handGetList(param){
      this.loading = true;
      listSummary(param).then(response => {
        this.summaryList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    tableRowClassName({row, rowIndex}) {
      if (1 === rowIndex % 2) {
        return 'success-row';
      }
      return '';
    },
    /** 查询年级总体情况列表 */
    getList() {
      this.loading = true;
      listSummary(this.queryParams).then(response => {
        this.summaryList = response.rows;
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
        examGradeSummaryId: null,
        grade: null,
        subject: null,
        examTotalNumbers: null,
        gradeTotalScores: null,
        gradeAverageScore: null,
        gradeQualifiedPercentage: null,
        gradeExcellentPercentage: null,
        gradeUnqualifiedNumbers: null,
        examId: null,
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
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.examGradeSummaryId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加年级总体情况";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const examGradeSummaryId = row.examGradeSummaryId || this.ids
      getSummary(examGradeSummaryId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改年级总体情况";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.examGradeSummaryId != null) {
            updateSummary(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addSummary(this.form).then(response => {
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
      const examGradeSummaryIds = row.examGradeSummaryId || this.ids;
      this.$modal.confirm('是否确认删除年级总体情况编号为"' + examGradeSummaryIds + '"的数据项？').then(function() {
        return delSummary(examGradeSummaryIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('scores/summary/export', {
        ...this.queryParams
      }, `年级成绩统计情况概要_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
