<template>
  <div class="app-container">
    此页面已弃用
    <!-- el-form ref="elForm" :model="queryParams" size="medium" label-width="100px" @submit.native.prevent
             label-position="left">
      <el-row>
        <el-col :span="24">
          <el-form-item label="年级" prop="grade">
            <el-radio-group v-model="queryParams.grade" size="medium" @input="handleQuery">
              <el-radio v-for="(item, index) in gradeOptions" :key="index" :label="item.value"
                        :disabled="item.disabled" border>{{item.label}}</el-radio>
            </el-radio-group>
          </el-form-item>
        </el-col>
      </el-row>
    </el-form>
    <el-divider></el-divider>
    <div style="width: 400px">
      <el-form size="medium"
               label-width="100px" label-position="left">
        <el-form-item label-width="80px" label="语文" prop="语文优秀分数线">
          <el-input :disabled="chinese.editEnable" maxlength="3" v-model="chinese.excellentScore" @input="chinese.excellentScore = chinese.excellentScore.replace(/[^\d]/g,'')"></el-input>
        </el-form-item>
        <el-form-item label-width="80px" label="数学" prop="数学优秀分数线">
          <el-input :disabled="math.editEnable" maxlength="3" v-model="math.excellentScore" @input="math.excellentScore = math.excellentScore.replace(/[^\d]/g,'')"></el-input>
        </el-form-item>
        <el-form-item label-width="80px" label="英语" prop="英语优秀分数线">
          <el-input :disabled="english.editEnable" maxlength="3" v-model="english.excellentScore" @input="english.excellentScore = english.excellentScore.replace(/[^\d]/g,'')" ></el-input>
        </el-form-item>
        <el-form-item size="large">
          <el-button :disabled="editEnable" type="primary" @click="submitForm"  v-hasPermi="['scores:line:edit']">提交</el-button>
          <el-button @click="editEnableChange" v-hasPermi="['scores:line:edit']">{{ editInfo }}</el-button>
        </el-form-item>
      </el-form>
    </div -->

    <!-- el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['scores:line:add']"
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
          v-hasPermi="['scores:line:edit']"
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
          v-hasPermi="['scores:line:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['scores:line:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row -->

    <!-- el-table v-loading="loading" :data="lineList" @selection-change="handleSelectionChange" :row-class-name="tableRowClassName">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="id" align="center" prop="excellentId" />
      <el-table-column label="学科" align="center" prop="subject" />
      <el-table-column label="优秀分数" align="center" prop="excellentScore" />
      <el-table-column label="年级" align="center" prop="grade" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['scores:line:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['scores:line:remove']"
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
    / -->

    <!-- 添加或修改优秀分数线对话框 -->
    <!-- el-dialog :title="title" :visible.sync="open" width="500px"  :close-on-click-modal="false" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="学科" prop="subject">
          <el-input v-model="form.subject" placeholder="请输入学科" />
          <el-select v-model="form.subject" placeholder="请选择学科">
            <el-option
              v-for="item in subjectOptions"
              :key="item.value"
              :label="item.label"
              :value="item.value">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="优秀分数" prop="excellentScore">
          <el-input maxlength="6" show-word-limit v-model="form.excellentScore" @input="form.excellentScore = form.excellentScore.replace(/[^\d.]/g,'')" placeholder="请输入优秀分数" />
        </el-form-item>
        <el-form-item label="年级" prop="grade">
          <el-input v-model="form.grade" placeholder="请输入年级" />
          <el-select v-model="form.grade" placeholder="请选择年级">
            <el-option
              v-for="item in gradeOptions"
              :key="item.value"
              :label="item.label"
              :value="item.value">
            </el-option>
          </el-select>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog -->
  </div>
</template>

<script>
  import { addLine, delLine, getLine, listLine, updateLine } from '@/api/scores/line'

  export default {
  name: "Score-Line",
  data() {
    return {
      editInfo: '启用编辑',
      editEnable: true,
      chinese: {
        excellentId: null,
        excellentScore: null,
        editEnable: true,
      },
      math: {
        excellentId: null,
        excellentScore: null,
        editEnable: true,
      },
      english: {
        excellentId: null,
        excellentScore: null,
        editEnable: true,
      },
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
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        subject: null,
        grade: '一年级'
      },
    };
  },
  created() {
    this.getList();
  },
  methods: {
    editEnableChange(){
      this.editInfo = this.editEnable ? "启用编辑" : "禁用编辑";
      if (this.editEnable){
        if ("一年级" === this.queryParams.grade || "二年级" === this.queryParams.grade){
          this.english.editEnable = true;
        } else {
          this.english.editEnable = false;
        }
      } else {
        this.english.editEnable = true;
      }
      this.chinese.editEnable = !this.chinese.editEnable;
      this.math.editEnable = !this.math.editEnable;
      this.editEnable = !this.editEnable;
    },
    tableRowClassName({row, rowIndex}) {
      if (1 === rowIndex % 2) {
        return 'success-row';
      }
      return '';
    },
    /** 查询优秀分数线列表 */
    getList() {
      let that = this;
      that.editEnable = true;
      that.chinese = {
        excellentId: null,
        excellentScore: null,
        editEnable: true,
      };
      that.math = {
        excellentId: null,
        excellentScore: null,
        editEnable: true,
      };
      that.english = {
        excellentId: null,
        excellentScore: null,
        editEnable: true,
      };
      listLine(this.queryParams).then(response => {
        response.data.forEach((value, index) => {
          switch (value.subject) {
            case "语文":
              that.chinese = value;
              that.chinese.editEnable = true;
              break;
            case "数学":
              that.math = value;
              that.math.editEnable = true;
              break;
            case "英语":
              that.english = value;
              that.english.editEnable = true;
              break;
          }
        });
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
        excellentId: null,
        subject: null,
        excellentScore: null,
        grade: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.excellentId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加优秀分数线";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const excellentId = row.excellentId || this.ids
      getLine(excellentId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改优秀分数线";
      });
    },
    /** 提交按钮 */
    submitForm() {
      let paramOne = {
        excellentId: this.chinese.excellentId,
        excellentScore: this.chinese.excellentScore
      };
      updateLine(paramOne).then(response => {
        this.$modal.msgSuccess("修改成功");
      });
      let paramTwo = {
        excellentId: this.math.excellentId,
        excellentScore: this.math.excellentScore
      };
      updateLine(paramTwo).then(response => {
        this.$modal.msgSuccess("修改成功");
      });
      if (this.english.excellentId){
        let paramThree = {
          excellentId: this.english.excellentId,
          excellentScore: this.english.excellentScore
        };
        updateLine(paramThree).then(response => {
          this.$modal.msgSuccess("修改成功");
        });
      }
      this.editEnableChange();
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const excellentIds = row.excellentId || this.ids;
      this.$modal.confirm('是否确认删除优秀分数线编号为"' + excellentIds + '"的数据项？').then(function() {
        return delLine(excellentIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('scores/line/export', {
        ...this.queryParams
      }, `优秀分数线_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
