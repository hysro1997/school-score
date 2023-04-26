<template>
  <div style="margin-top: 35px;width: 500px">
    <el-form ref="elForm" :model="formData" :rules="rules" size="medium" label-width="100px">
      <el-form-item label="系统名称" prop="titleName">
        <el-input v-model="formData.titleName" placeholder="请输入系统名称" :maxlength="30" clearable
          :style="{width: '100%'}"></el-input>
      </el-form-item>
      <el-form-item size="large">
        <el-button type="primary" @click="submitForm" v-hasPermi="['scores:title:index']">提交</el-button>
        <el-button @click="resetForm" v-hasPermi="['scores:title:index']">重置</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>
<script>
import { updateTitle, listTitle } from '@/api/scores/titleName'
import Cookies from 'js-cookie'

export default {
  components: {},
  props: [],
  data() {
    return {
      formData: {
        titleName: '爱家小学成绩管理系统',
      },
      rules: {
        titleName: [{
          required: true,
          message: '请输入系统名称',
          trigger: 'blur'
        }],
      },
    }
  },
  computed: {},
  watch: {},
  created() {
    this.resetForm();
  },
  mounted() {},
  methods: {
    submitForm() {
      let that = this;
      this.$refs['elForm'].validate(valid => {
        if (!valid) {
          return false;
        }
        let param = {
          titleName: that.formData.titleName
        }
        updateTitle(param).then(response => {
          if (1 === response.data) {
            localStorage.setItem("title",response.data.titleName);
            that.$modal.msgSuccess("系统名称修改成功，重启浏览器后生效");
          }
        });
      })
    },
    resetForm() {
      this.formData.titleName = localStorage.getItem("title");
    },
  }
}

</script>
<style>
</style>
