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
      <el-form-item label="班级" prop="classes">
        <el-input
          v-model="queryParams.classes"
          placeholder="请输入班级"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="考试号" prop="examNumber">
        <el-input
          v-model="queryParams.examNumber"
          placeholder="请输入考试号"
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
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['scores:scores:add']"
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
          v-hasPermi="['scores:scores:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['scores:scores:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['scores:scores:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="scoresList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="分数ID" align="center" prop="scoreId" />
      <el-table-column label="年级" align="center" prop="grade" />
      <el-table-column label="班级" align="center" prop="classes" />
      <el-table-column label="考试号" align="center" prop="examNumber" />
      <el-table-column label="语文分数" align="center" prop="chineseScore" />
      <el-table-column label="数学分数" align="center" prop="mathsScore" />
      <el-table-column label="英语分数" align="center" prop="englishScore" />
      <el-table-column label="录入者" align="center" prop="createBy" />
      <el-table-column label="考试ID" align="center" prop="examId" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['scores:scores:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['scores:scores:remove']"
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

    <!-- 添加或修改学生分数情况对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="考试号" prop="examNumber">
          <el-input v-model="form.examNumber" placeholder="请输入考试号" />
        </el-form-item>
        <el-form-item label="语文分数" prop="chineseScore">
          <el-input v-model="form.chineseScore" placeholder="请输入语文分数" />
        </el-form-item>
        <el-form-item label="数学分数" prop="mathsScore">
          <el-input v-model="form.mathsScore" placeholder="请输入数学分数" />
        </el-form-item>
        <el-form-item label="英语分数" prop="englishScore">
          <el-input v-model="form.englishScore" placeholder="请输入英语分数" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
  import { addScores, delScores, getScores, listScores, updateScores } from '@/api/scores/scores'

  export default {
  name: "Scores",
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
      // 学生分数情况表格数据
      scoresList: [],
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
        examNumber: null,
        examId: null,
        examName:null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        examNumber: [
          { required: true, message: "考试号不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询学生分数情况列表 */
    getList() {
      this.loading = true;
      listScores(this.queryParams).then(response => {
        this.scoresList = response.rows;
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
        scoreId: null,
        grade: null,
        classes: null,
        examNumber: null,
        chineseScore: null,
        mathsScore: null,
        englishScore: null,
        createTime: null,
        createBy: null,
        updateTime: null,
        updateBy: null,
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
      this.ids = selection.map(item => item.scoreId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加学生分数情况";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const scoreId = row.scoreId || this.ids
      getScores(scoreId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改学生分数情况";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.scoreId != null) {
            updateScores(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addScores(this.form).then(response => {
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
      const scoreIds = row.scoreId || this.ids;
      this.$modal.confirm('是否确认删除学生分数情况编号为"' + scoreIds + '"的数据项？').then(function() {
        return delScores(scoreIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('scores/scores/export', {
        ...this.queryParams
      }, `scores_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
