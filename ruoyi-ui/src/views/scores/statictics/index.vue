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
            :value="item.value"
            >
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
      <br/>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <!-- el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['scores:statictics:add']"
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
          v-hasPermi="['scores:statictics:edit']"
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
          v-hasPermi="['scores:statictics:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['scores:statictics:export']"
        >导出</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button plain size="mini" type="primary" @click="clipboardHandler(0)">复制表格数据</el-button>
        <el-button plain size="mini" type="primary" @click="clipboardHandler(1)">复制表格（含表头）</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="staticticsList" @selection-change="handleSelectionChange" :row-class-name="tableRowClassName">
      <el-table-column type="selection" width="55" align="center" />
      <!-- el-table-column label="统计记录ID" align="center" prop="examStatisticsId" / -->
      <el-table-column label="年级" align="center" prop="grade">
        <template slot-scope="scope">
        <el-button
          size="mini"
          type="text"
          @click="handGetListByGrade(scope.row,scope.row.grade)">{{scope.row.grade}}</el-button>
        </template>
      </el-table-column>
      <el-table-column label="班级" align="center" prop="classes">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            @click="handGetListByClasses(scope.row,scope.row.classes)">{{scope.row.classes}}</el-button>
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
      <el-table-column label="考试人数" sortable align="center" prop="examNumbers" />
      <el-table-column label="全班总分" sortable align="center" prop="totalScore" />
      <el-table-column label="平均分" sortable align="center" prop="averageScore" />
      <el-table-column label="及格率" sortable align="center" prop="qualifiedPercentage" />
      <el-table-column label="优秀率" sortable align="center" prop="excellentPercentage" />
      <el-table-column label="综合分" sortable align="center" prop="muitipleScore" />
      <el-table-column label="满分人数" sortable align="center" prop="fullSocreNumbers" />
      <el-table-column label="优秀人数(优秀-99)" sortable align="center" prop="excellentNumbers" />
      <el-table-column label="良好人数(75-优秀)" sortable align="center" prop="goodNumbers" />
      <el-table-column label="及格人数(60-75)" sortable align="center" prop="qualifiedNumbers" />
      <el-table-column label="不及格人数(55-59)" sortable align="center" prop="unqualifiedOneNumbers">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            @click="getUnqualified(scope.row,3)">{{scope.row.unqualifiedOneNumbers}}</el-button>
        </template>
      </el-table-column>
      <el-table-column label="不及格人数(50-54)" sortable align="center" prop="unqualifiedTwoNumbers">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            @click="getUnqualified(scope.row,2)">{{scope.row.unqualifiedTwoNumbers}}</el-button>
        </template>
      </el-table-column>
      <el-table-column label="不及格人数(40-49)" sortable align="center" prop="unqualifiedThreeNumbers">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            @click="getUnqualified(scope.row,1)">{{scope.row.unqualifiedThreeNumbers}}</el-button>
        </template>
      </el-table-column>
      <el-table-column label="不及格人数(40分以下)" sortable align="center" prop="unqualifiedFourNumbers">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            @click="getUnqualified(scope.row,0)">{{scope.row.unqualifiedFourNumbers}}</el-button>
        </template>
      </el-table-column>
      <el-table-column label="综合分排名" sortable align="center" prop="muitipleRank" />
      <el-table-column label="平均分排名" sortable align="center" prop="averageRank" />
      <el-table-column label="考试名称" align="center" prop="exams.examName" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <!-- el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['scores:statictics:edit']"
          >修改</el-button -->
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['scores:statictics:remove']"
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

    <!-- 添加或修改班级成绩统计情况对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px"  :close-on-click-modal="false" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
    <!-- 查看名单 -->
    <el-dialog :title="studentList.title" width="600px" :visible.sync="studentList.open" :close-on-click-modal="false" append-to-body>
      <el-button type="primary" @click="clipboardHandler2(1)">复制名单（含得分）</el-button>
      <br/><br/>
      <el-row :gutter="20" style="font-size: 24px;">
        <el-col style="margin:5px" :span="4">考号</el-col>
        <el-col style="margin:5px" :span="4">得分</el-col>
      </el-row>
      <el-row :gutter="20" style="font-size: 24px;" v-for="(item, index) in students" :key="index">
        <el-col style="margin:5px;" :span="4">{{item.exam_number}}</el-col>
        <el-col style="margin:5px" :span="4">{{item.score}}</el-col>
      </el-row>
      <!-- el-button type="success" @click="clipboardHandler2(0)">复制考号名单</el-button -->
    </el-dialog>
  </div>
</template>

<script>
  import {
    addStatictics,
    delStatictics,
    getStatictics,
    listStatictics,
    updateStatictics
  } from '@/api/scores/statictics'
  import { getScoresUnqualified } from '@/api/scores/scores'

  export default {
  name: "Statictics",
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
      // 班级成绩统计情况表格数据
      staticticsList: [],
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
    getUnqualified(row,bType){
      this.students = [];
      let msg;
      switch (bType) {
        case 0:
          msg = "不及格名单(40分以下)";
          break;
        case 1:
          msg = "不及格名单(40-49)";
          break;
        case 2:
          msg = "不及格名单(50-54)";
          break;
        case 3:
          msg = "不及格名单(55-59)";
          break;
        default:
          break;
      }
      this.studentList.title = row.grade + "  " + row.classes + "  " + row.subject + "  " + msg;
      let params ={
        grade: null,
        subject: null,
        examId: null,
        classes: null,
        boundryType: bType
      };
      params.examId = row.examId;
      params.grade = row.grade;
      params.subject = row.subject;
      params.classes = row.classes;
      getScoresUnqualified(params).then(response => {
        this.students = response.data;
        this.studentList.open = true;
      });
    },
    clipboardHandler2 (full) {
      let that = this;
      let message = (this.studentList.title + "\n") || "";
      if (null === this.students || 0 === this.students.length){
        this.$modal.msgWarning("没有可供复制的内容");
        return;
      }
      if (full){
        message += "考号\t分数\n";
        this.students.forEach(function(element){
          message += element.exam_number + "\t" + element.score + "\n";
        });
      }else {
        message += "考号\n";
        this.students.forEach(function(element){
          message += element.exam_number + "\n";
        });
      }
      this.$copyText(message).then(function (e) {
        that.$modal.msgSuccess("复制成功");
      }, function (e) {
        that.$modal.msgError("复制出错了");
      })
    },
    clipboardHandler(title){
      if (null === this.staticticsList || 0 === this.staticticsList.length){
        this.$modal.msgWarning("没有可供复制的内容");
        return;
      }
      let that = this;
      let message = "";
      if (title){
        message = "年级\t班级\t学科\t考试人数\t全班总分\t平均分\t及格率\t优秀率\t综合分\t满分人数\t优秀人数\t良好人数\t及格人数\t不及格人数(55-59)\t不及格人数(50-54)\t不及格人数(40-49)\t不及格人数(40以下)\t综合分排名\t平均分排名\n";
      }
      this.staticticsList.forEach(function(element){
        message += element.grade + "\t" + element.classes + "\t" + element.subject + "\t" + element.examNumbers + "\t" + element.totalScore + "\t" + element.averageScore + "\t" + element.qualifiedPercentage + "\t" + element.excellentPercentage + "\t" + element.muitipleScore + "\t" + element.fullSocreNumbers + "\t" + element.excellentNumbers + "\t" + element.goodNumbers + "\t" + element.qualifiedNumbers + "\t" + element.unqualifiedOneNumbers + "\t" + element.unqualifiedTwoNumbers + "\t" + element.unqualifiedThreeNumbers + "\t" + element.unqualifiedFourNumbers + "\t" + element.muitipleRank + "\t" + element.averageRank + "\n";
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
    handGetList(param){
      this.loading = true;
      listStatictics(param).then(response => {
        this.staticticsList = response.rows;
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
    /** 查询班级成绩统计情况列表 */
    getList() {
      this.loading = true;
      listStatictics(this.queryParams).then(response => {
        this.staticticsList = response.rows;
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
        examStatisticsId: null,
        grade: null,
        classes: null,
        subject: null,
        examNumbers: null,
        fullSocreNumbers: null,
        excellentNumbers: null,
        goodNumbers: null,
        qualifiedNumbers: null,
        unqualifiedOneNumbers: null,
        unqualifiedTwoNumbers: null,
        unqualifiedThreeNumbers: null,
        unqualifiedFourNumbers: null,
        totalScore: null,
        averageScore: null,
        qualifiedPercentage: null,
        excellentPercentage: null,
        muitipleScore: null,
        examId: null,
        muitipleRank: null,
        averageRank: null
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
      this.ids = selection.map(item => item.examStatisticsId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加班级成绩统计情况";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const examStatisticsId = row.examStatisticsId || this.ids
      getStatictics(examStatisticsId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改班级成绩统计情况";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.examStatisticsId != null) {
            updateStatictics(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addStatictics(this.form).then(response => {
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
      const examStatisticsIds = row.examStatisticsId || this.ids;
      this.$modal.confirm('是否确认删除班级成绩统计情况编号为"' + examStatisticsIds + '"的数据项？').then(function() {
        return delStatictics(examStatisticsIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('scores/statictics/export', {
        ...this.queryParams
      }, `班级成绩统计情况_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
