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
        <el-select v-model="queryParams.grade" placeholder="请选择年级">
          <el-option
            v-for="item in gradeOptions"
            :key="item.value"
            :label="item.label"
            :value="item.value"
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
        <el-select v-model="queryParams.classes" placeholder="请选择班级">
          <el-option
            v-for="item in classesOptions"
            :key="item.value"
            :label="item.label"
            :value="item.value"
            @keyup.enter.native="handleQuery">
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
      <!--el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['scores:statisticsgrade:add']"
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
          v-hasPermi="['scores:statisticsgrade:edit']"
        >修改</el-button>
      </el-col-->
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['scores:statisticsgrade:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['scores:statisticsgrade:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="statisticsgradeList" @selection-change="handleSelectionChange" :row-class-name="tableRowClassName">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="数据ID" align="center" prop="examGradeStatisticsId" />
      <el-table-column label="年级" align="center" prop="grade" />
      <el-table-column label="班级" align="center" prop="classes" />
      <el-table-column label="排名" align="center" prop="rate" />
      <el-table-column label="综合分" align="center" prop="muitipleScore" />
      <el-table-column label="考试人数" align="center" prop="examNumbers" />
      <el-table-column label="三及格人数" align="center" prop="tripleQualifiedNumbers" />
      <el-table-column label="三优秀人数" align="center" prop="tripleExcellentNumbers" />
      <el-table-column label="三及格率" align="center" prop="tripleQualifiedPercentage">
        <template slot-scope="scope">
          <p>{{scope.row.tripleQualifiedPercentage}}%</p>
        </template>
      </el-table-column>
      <el-table-column label="三优秀率" align="center" prop="tripleExcellentPercentage">
        <template slot-scope="scope">
        <p>{{scope.row.tripleExcellentPercentage}}%</p>
      </template>
      </el-table-column>
      <el-table-column label="总得分" align="center" prop="allScore" />
      <el-table-column label="得分率" align="center" prop="allScorePercentage">
        <template slot-scope="scope">
          <p>{{scope.row.allScorePercentage}}%</p>
        </template>
      </el-table-column>
      <el-table-column label="考试名称" align="center" prop="exams.examName" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <!--el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['scores:statisticsgrade:edit']"
          >修改</el-button-->
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['scores:statisticsgrade:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
      <div slot="empty" >
        <el-empty description="暂无数据"></el-empty>
      </div>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改年级数据统计情况对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-divider content-position="center">各种考试信息</el-divider>
        <el-row :gutter="10" class="mb8">
          <el-col :span="1.5">
            <el-button type="primary" icon="el-icon-plus" size="mini" @click="handleAddExams">添加</el-button>
          </el-col>
          <el-col :span="1.5">
            <el-button type="danger" icon="el-icon-delete" size="mini" @click="handleDeleteExams">删除</el-button>
          </el-col>
        </el-row>
        <el-table :data="examsList" :row-class-name="rowExamsIndex" @selection-change="handleExamsSelectionChange" ref="exams">
          <el-table-column type="selection" width="50" align="center" />
          <el-table-column label="序号" align="center" prop="index" width="50"/>
          <el-table-column label="考试名称" prop="examName" width="150">
            <template slot-scope="scope">
              <el-input v-model="scope.row.examName" placeholder="请输入考试名称" />
            </template>
          </el-table-column>
        </el-table>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listStatisticsgrade, getStatisticsgrade, delStatisticsgrade, addStatisticsgrade, updateStatisticsgrade } from "@/api/scores/statisticsgrade";

export default {
  name: "Statisticsgrade",
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
      }],
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 子表选中数据
      checkedExams: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 年级数据统计情况表格数据
      statisticsgradeList: [],
      // 各种考试表格数据
      examsList: [],
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
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    tableRowClassName({row, rowIndex}) {
      if (1 === rowIndex % 2) {
        return 'success-row';
      }
      return '';
    },
    /** 查询年级数据统计情况列表 */
    getList() {
      this.loading = true;
      listStatisticsgrade(this.queryParams).then(response => {
        this.statisticsgradeList = response.rows;
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
        allScore:null,
        allScorePercentage: null,
        muitipleScore: null,
        grade: null,
        classes: null,
        rate: null,
        examId: null
      };
      this.examsList = [];
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
      getStatisticsgrade(examGradeStatisticsId).then(response => {
        this.form = response.data;
        this.examsList = response.data.examsList;
        this.open = true;
        this.title = "修改年级数据统计情况";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          this.form.examsList = this.examsList;
          if (this.form.examGradeStatisticsId != null) {
            updateStatisticsgrade(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addStatisticsgrade(this.form).then(response => {
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
        return delStatisticsgrade(examGradeStatisticsIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
	/** 各种考试序号 */
    rowExamsIndex({ row, rowIndex }) {
      row.index = rowIndex + 1;
    },
    /** 各种考试添加按钮操作 */
    handleAddExams() {
      let obj = {};
      obj.examName = "";
      this.examsList.push(obj);
    },
    /** 各种考试删除按钮操作 */
    handleDeleteExams() {
      if (this.checkedExams.length == 0) {
        this.$modal.msgError("请先选择要删除的各种考试数据");
      } else {
        const examsList = this.examsList;
        const checkedExams = this.checkedExams;
        this.examsList = examsList.filter(function(item) {
          return checkedExams.indexOf(item.index) == -1
        });
      }
    },
    /** 复选框选中数据 */
    handleExamsSelectionChange(selection) {
      this.checkedExams = selection.map(item => item.index)
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('scores/statisticsgrade/export', {
        ...this.queryParams
      }, `statisticsgrade_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
