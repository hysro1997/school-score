<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="年级" prop="grade">
        <el-input
          v-model="queryParams.grade"
          placeholder="请输入年级"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="学科" prop="subject">
        <el-input
          v-model="queryParams.subject"
          placeholder="请输入学科"
          clearable
          @keyup.enter.native="handleQuery"
        />
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
      <!--el-col :span="1.5">
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
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="summaryList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="ID" align="center" prop="examGradeSummaryId" />
      <el-table-column label="年级" align="center" prop="grade" />
      <el-table-column label="学科" align="center" prop="subject" />
      <el-table-column label="考试总人数" align="center" prop="examTotalNumbers" />
      <el-table-column label="年级总分" align="center" prop="gradeTotalScores" />
      <el-table-column label="年级均分" align="center" prop="gradeAverageScore" />
      <el-table-column label="年级及格率" align="center" prop="gradeQualifiedPercentage" />
      <el-table-column label="年级优秀率" align="center" prop="gradeExcellentPercentage" />
      <el-table-column label="不及格人数" align="center" prop="gradeUnqualifiedNumbers" />
      <el-table-column label="考试名称" align="center" prop="exams.examName" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <!--el-button
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
    <!--el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog -->
  </div>
</template>

<script>
import { listSummary, getSummary, delSummary, addSummary, updateSummary } from "@/api/scores/summary";

export default {
  name: "Summary",
  data() {
    return {
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
        examId: null
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
      }, `summary_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
