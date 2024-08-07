<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
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
          v-hasPermi="['examination:exams:add']"
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
          v-hasPermi="['examination:exams:edit']"
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
          v-hasPermi="['examination:exams:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['examination:exams:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="examsList" @selection-change="handleSelectionChange" :row-class-name="tableRowClassName">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="考试ID" align="center" prop="examId" />
      <el-table-column label="考试名称" align="center" prop="examName" />
      <el-table-column label="导入班级老师" align="center">
        <template slot-scope="scope">
        <el-button
          size="mini"
          type="text"
          icon="el-icon-tickets"
          @click="handleImportTeacher(scope.row)"
          v-hasPermi="['scores:teacher:import']"
        >导入班级老师</el-button></template>
      </el-table-column>
      <el-table-column label="启用状态" align="center" key="enableFlag">
        <template slot-scope="scope">
          <el-switch
            v-model="scope.row.enableFlag"
            active-value="0"
            inactive-value="1"
            @change="handleEnableFlagChange(scope.row)"
          ></el-switch>
        </template>
      </el-table-column>
      <el-table-column label="整合分数" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            @click="handleMixScore(scope.row)"
            v-hasPermi="['examination:exams:edit']"
          >整合临时分数</el-button>
        </template>
      </el-table-column>
      <el-table-column label="统计数据" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-tickets"
            @click="handleStatistics(scope.row)"
            v-hasPermi="['examination:exams:edit']"
          >统计考试结果</el-button>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['examination:exams:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['examination:exams:remove']"
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

    <!-- 添加或修改各种考试对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="1600px" :before-close="resetFromBeforeClose" @close="closeEditExam" @closeDialog="closeEditExam" :close-on-click-modal="false" append-to-body>
        <ExamSave ref="SaveExamReference" :examId="childPageParam.examId"/>
    </el-dialog>

    <!-- 统计进度显示对话框 -->
    <el-dialog :title="title" :visible.sync="processOpen" width="500px" append-to-body :show-close="false"  :close-on-click-modal="false">
      <el-input
        style="font-size: 20px"
        type="textarea"
        :rows="20"
        placeholder="处理进度"
        v-model="processingTextarea"
        disabled>
      </el-input>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="processOpen = false" :disabled="finishDisable">完 成</el-button>
      </div>
    </el-dialog>

    <el-dialog title="导入班级老师" :visible.sync="upload.open" width="400px" :close-on-click-modal="false">
      <el-upload
        ref="upload"
        :limit="1"
        accept=".xlsx, .xls"
        :headers="upload.headers"
        :action="upload.url + '?examId=' + upload.examId"
        :disabled="upload.isUploading"
        :on-progress="handleFileUploadProgress"
        :on-success="handleFileSuccess"
        :auto-upload="false"
        :show-close="false"
        drag
      >
        <i class="el-icon-upload"></i>
        <div class="el-upload__text">
          将文件拖到此处，或
          <em>点击上传</em>
        </div>
        <div class="el-upload__tip" slot="tip">
          <el-link type="info" style="font-size:18px;" @click="importTemplate">点击这里下载模板</el-link>
        </div>
        <div class="el-upload__tip" style="color:red" slot="tip">提示：仅允许导入“xls”或“xlsx”格式文件！</div>
      </el-upload>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitFileForm">确 定</el-button>
        <el-button @click="upload.open = false">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listExams, getExams, delExams, addExams, updateExams, getExamsEnables, statisticExams, mixScores } from "@/api/examination/exams";
import ExamSave from './examSave'
import { getToken } from '@/utils/auth'

export default {
  name: "Exams",
  components: { ExamSave },
  data() {
    return {
      childPageParam:{
        examId: null
      },
      //统计按钮统计完成前禁用
      finishDisable:true,
      //统计进度显示内容
      processingTextarea:'',
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
      // 各种考试表格数据
      examsList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      //进度显示层
      processOpen:false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        examName: null,
      },
      upload: {
        // 是否显示弹出层（用户导入）
        open: false,
        examId: '',
        // 弹出层标题（用户导入）
        title: "班级老师导入",
        // 是否禁用上传
        isUploading: false,
        // 是否更新已经存在的用户数据
        updateSupport: 0,
        // 设置上传的请求头部
        headers: { Authorization: "Bearer " + getToken() },
        // 上传的地址
        url: process.env.VUE_APP_BASE_API + "/scores/teacher/importData"
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        examName: [
          { required: true, message: '请填写优秀分数线', trigger: 'blur' }
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    closeEditExam(){
      this.childPageParam.examId = null;
      this.open = false;
    },
    tableRowClassName({row, rowIndex}) {
      if (1 === rowIndex % 2) {
        return 'success-row';
      }
      return '';
    },
    /** 查询各种考试列表 */
    getList() {
      this.loading = true;
      listExams(this.queryParams).then(response => {
        this.examsList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 考试启用状态修改
    handleEnableFlagChange(row) {
      let text = row.enableFlag === "0" ? "启用" : "停用";
      if ("0"===row.enableFlag){
        getExamsEnables().then(response => {
          let enableNumbers = response.data;
          if (1 <= enableNumbers){
            this.$modal.alertWarning("最多同时启用1场考试，请先停用已完成成绩录入的考试");
            row.enableFlag = 1;
            return false;
          }else {
            //这里为什么这么做呢，因为异步，这两个请求都会发出，做不到判断不能启用再发请求
            this.$modal.confirm('确认要"' + text + '""' + row.examName + '"考试吗？').then(function() {
              let queryExame = {examId: row.examId,enableFlag:row.enableFlag};
              return updateExams(queryExame);
            }).then(() => {
              this.$modal.msgSuccess(text + "成功");
            }).catch(function() {
              row.enableFlag = row.enableFlag === "0" ? "1" : "0";
            });
          }
        });
      }else {
        this.$modal.confirm('确认要"' + text + '""' + row.examName + '"考试吗？').then(function() {
          let queryExame = {examId: row.examId,enableFlag:row.enableFlag};
          return updateExams(queryExame);
        }).then(() => {
          this.$modal.msgSuccess(text + "成功");
        }).catch(function() {
          row.enableFlag = row.enableFlag === "0" ? "1" : "0";
        });
      }

    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    resetFromBeforeClose(){
      this.$refs.SaveExamReference.resetFrom();
      this.closeEditExam();
      this.$modal.notifyWarning("取消操作");
    },
    // 表单重置
    reset() {
      this.form = {
        examId: null,
        examName: null,
        createTime: null,
        createBy: null,
        enableFlag:null,
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
      this.ids = selection.map(item => item.examId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.childPageParam.examId = null;
      this.open = true;
      this.title = "添加考试";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const examId = row.examId || this.ids;
      this.childPageParam.examId = examId;
      this.open = true;
      this.title = "修改考试";
    },
    handleMixScore(row){
      let that = this;
      if ("0"===row.enableFlag){
        this.$modal.alertWarning("本场考试尚未停止，还不能整合分数");
        return false;
      }
      const loading = this.$loading({
        lock: true,
        text: '整合分数中',
        spinner: 'el-icon-loading',
        background: 'rgba(0, 0, 0, 0.7)'
      });
      mixScores(row.examId).then(response => {
        setTimeout(() => {
          that.$modal.msgSuccess("分数整合完成！");
          loading.close();
          this.handleStatistics(row);
        }, 1000);
      });
    },
    handleImportTeacher(row){
      this.upload.examId = row.examId;
      this.upload.open = true;
    },
    importTemplate() {
      this.download('scores/teacher/importTemplate', {
      }, `班级责任老师_${new Date().getTime()}.xlsx`)
    },
    /** 统计考试的结果数据 */
    handleStatistics(row) {
      if ("0"===row.enableFlag){
        this.$modal.alertWarning("本场考试尚未停止，还不能统计数据");
        return false;
      }
      this.processOpen = true;
      this.finishDisable = true;
      this.processingTextarea = "";
      this.title = "统计进度";
        statisticExams(row.examId).then(response => {
          let data = response.data;
          if (undefined === data || null === data || ''=== data || 0 >= data.length){
            this.processingTextarea = "统计失败！\n\n 可能原因如下：\n\n 1.本次考试的学生成绩尚未录入\n2.语文、数学、英语有一门学科没有录入成绩\n 3.没有设置优秀分数线 \n 4.系统出错了，请稍后再试，或练习运维人员";
            this.finishDisable = false;
            return false;
          }
          //接下来有数据了，我们就可以开始为收优化费做准备了
          this.processingTextarea = "统计开始!\n 正在读取数据\n";
          let that = this;
          let delay = function(s){
            return new Promise(function(resolve,reject) {
              setTimeout(resolve,s);
            })
          };
          delay().then(function() {
            that.processingTextarea = that.processingTextarea.concat("数据读取完成！开始分析数据\n");
            return delay(3000);
          }).then(function() {
            data.forEach(function(element) {
              that.processingTextarea = that.processingTextarea.concat("正在统计" + element.grade + " " + element.classes + "的成绩情况\n");
            });
            return delay(Math.random()*3000);
          }).then(function() {
            that.processingTextarea = that.processingTextarea.concat("\n班级成绩统计完成！");
            that.finishDisable = false;
            that.$modal.msgSuccess("班级成绩统计完成！");
            return delay(1000);
          });
        });


    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.examId != null) {
            updateExams(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addExams(this.form).then(response => {
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
      const examIds = row.examId || this.ids;
      this.$modal.confirm('是否确认删除考试编号为"' + examIds + '"的数据项？').then(function() {
        return delExams(examIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('examination/exams/export', {
        ...this.queryParams
      }, `exams_${new Date().getTime()}.xlsx`)
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
    this.$alert("导入成功");
  }
  this.$refs.upload.clearFiles();
  //this.$alert(response.msg, "导入结果", { dangerouslyUseHTMLString: true });
},
// 提交上传文件
submitFileForm() {
  this.$refs.upload.submit();
}
  }
};
</script>
