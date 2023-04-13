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
      <el-form-item label="考试号" prop="examNumber">
        <el-input
          v-model="queryParams.examNumber"
          placeholder="请输入考试号"
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
      <el-col :span="1.5">
        <el-button
          type="info"
          plain
          icon="el-icon-upload"
          size="mini"
          @click="handleImport"
          v-hasPermi="['scores:scores:import']"
        >导入</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="scoresList" @selection-change="handleSelectionChange" :row-class-name="tableRowClassName">
      <el-table-column type="selection" width="55" align="center" />
      <!-- el-table-column label="分数ID" align="center" prop="scoreId" / -->
      <el-table-column label="年级" align="center" prop="grade" />
      <el-table-column label="班级" align="center" prop="classes" />
      <el-table-column label="考试号" align="center" prop="examNumber" />
      <el-table-column label="语文分数" align="center" prop="chineseScore" />
      <el-table-column label="数学分数" align="center" prop="mathsScore" />
      <el-table-column label="英语分数" align="center" prop="englishScore" />
      <el-table-column label="录入者" align="center" prop="createBy" />
      <el-table-column label="考试名称" align="center" prop="exams.examName" />
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
      :page-sizes="[10,20,30,50,100,200,500]"
      @pagination="getList"
    />

    <!-- 添加或修改学生分数情况对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="考试号" prop="examNumber">
          <el-input v-model="form.examNumber" placeholder="请输入考试号" maxlength="5" />
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

    <!-- 导入后显示导入结果 -->
    <el-dialog :title="uploadResult.title" width="400px" :visible.sync="uploadResult.open">
      <el-input type="textarea" v-model="textarea" :rows="10" disabled></el-input>
      <el-button type="primary" @click="uploadResult.open = false">好的</el-button>
    </el-dialog>

    <!-- 学生分数导入对话框 -->
    <el-dialog :title="upload.title" :visible.sync="upload.open" width="400px">
      <el-upload
        ref="upload"
        :limit="1"
        accept=".xlsx, .xls"
        :headers="upload.headers"
        :action="upload.url + '?updateSupport=' + upload.updateSupport"
        :disabled="upload.isUploading"
        :on-progress="handleFileUploadProgress"
        :on-success="handleFileSuccess"
        :auto-upload="false"
        drag
      >
        <i class="el-icon-upload"></i>
        <div class="el-upload__text">
          将文件拖到此处，或
          <em>点击上传</em>
        </div>
        <div class="el-upload__tip" slot="tip">
          <el-checkbox v-model="upload.updateSupport">是否更新已经存在的学生分数数据</el-checkbox>
          <br/>
          <el-link type="info" style="font-size:18px;" @click="importTemplate">点击这里下载模板</el-link>
        </div>
        <div class="el-upload__tip" style="color:red" slot="tip">提示：仅允许导入“xls”或“xlsx”格式文件！</div>
        <div class="el-upload__tip" style="color:red" slot="tip">提示：考试号是5位数，每条成绩数据都要填考试号</div>
        <div class="el-upload__tip" style="color:red" slot="tip">&nbsp;&nbsp;&nbsp;&nbsp;举例 2年级4班03号学生的考试号为：20403</div>
        <div class="el-upload__tip" style="color:red" slot="tip">&nbsp;&nbsp;&nbsp;&nbsp;导入的excel仅能有1张表单</div>
      </el-upload>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitFileForm">确 定</el-button>
        <el-button @click="upload.open = false">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
  import { addScores, delScores, getScores, listScores, updateScores } from '@/api/scores/scores'
  import { getExamsEnables } from '@/api/examination/exams'
  import { getToken } from '@/utils/auth'

  export default {
  name: "Scores",
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
      textarea: '',
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
      uploadResult:{
        open: false,
        title: "学生分数导入结果"
      },
      upload: {
        // 是否显示弹出层（用户导入）
        open: false,
        // 弹出层标题（用户导入）
        title: "学生分数导入",
        // 是否禁用上传
        isUploading: false,
        // 是否更新已经存在的用户数据
        updateSupport: 0,
        // 设置上传的请求头部
        headers: { Authorization: "Bearer " + getToken() },
        // 上传的地址
        url: process.env.VUE_APP_BASE_API + "/scores/scores/importData"
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        examNumber: [
          { required: true, message: "考试号不能为空", trigger: "blur" },
          { pattern: /[1-6][0-1]\d\d\d/, message: "考试号有5位，举例考试号（10101）表示1年级01班01号"}
        ],
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
      getExamsEnables().then(response => {
        let enableNumbers = response.data;
        if (1!==enableNumbers){
          this.$modal.alertWarning("考试尚未开启分数录入");
          return false;
        }
        this.reset();
        this.open = true;
        this.title = "添加学生分数情况";
      });

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
      }, `学生分数_${new Date().getTime()}.xlsx`)
    },
    /** 导入按钮操作 */
    handleImport() {
      let that = this;
      getExamsEnables().then(response => {
        let enableNumbers = response.data;
        if (1!==enableNumbers){
          this.$modal.alertWarning("考试尚未开启分数录入");
          that.upload.open = false;
        }else {
          this.upload.title = "学生分数导入";
          this.upload.open = true;
        }
      });
    },
    /** 下载模板操作 */
    importTemplate() {
      this.download('scores/scores/importTemplate', {
      }, `分数导入模板_${new Date().getTime()}.xlsx`)
    },
// 文件上传中处理
    handleFileUploadProgress(event, file, fileList) {
      this.upload.isUploading = true;
    },
// 文件上传成功处理
    handleFileSuccess(response, file, fileList) {
      this.upload.open = false;
      this.upload.isUploading = false;
      this.textarea = '';
      if (undefined === response.msg || null === response.msg || ''=== response.msg){
        this.$alert("导入失败，请检查文件内容格式是否符合要求，或联系管理员处理");
      }else {
        this.uploadResult.open = true;
        this.textarea = response.msg;
      }
      this.$refs.upload.clearFiles();
      //this.$alert(response.msg, "导入结果", { dangerouslyUseHTMLString: true });
      this.getList();
    },
// 提交上传文件
    submitFileForm() {
      this.$refs.upload.submit();
    }
  }
};
</script>
