<template>
  <div>
    <div style="width: 600px;margin-left: 35px">
      <p>年级班级学科数据中的综合分算法：</p>
      <el-form ref="classesForm" :model="classesFormData" :rules="classesFormRules" size="medium"
               label-width="100px" label-position="left">
        <el-form-item label-width="80px" label="优秀率" prop="excellentPercentage" required>
          <el-input :disabled="formOneEditEnable" v-model="classesFormData.excellentPercentage" @input="classesFormData.excellentPercentage = classesFormData.excellentPercentage.replace(/[^\d]/g,'')" @change="classesFormDataChange($event,'classesForm',1)"></el-input>当前优秀率计算比例：{{ classesFormData.excellentPercentage }} %
        </el-form-item>
        <el-form-item label-width="80px" label="及格率" prop="qualifiedPercentage" required>
          <el-input :disabled="formOneEditEnable" v-model="classesFormData.qualifiedPercentage" @input="classesFormData.qualifiedPercentage = classesFormData.qualifiedPercentage.replace(/[^\d]/g,'')" @change="classesFormDataChange($event,'classesForm',2)"></el-input>当前及格率计算比例：{{ classesFormData.qualifiedPercentage }} %
        </el-form-item>
        <el-form-item label-width="80px" label="平均分" prop="averageScore" required>
          <el-input :disabled="formOneEditEnable" v-model="classesFormData.averageScore" @input="classesFormData.averageScore = classesFormData.averageScore.replace(/[^\d]/g,'')" @change="classesFormDataChange($event,'classesForm',3)"></el-input>当前平均分计算比例：{{ classesFormData.averageScore }} %
        </el-form-item>
        <el-form-item size="large">
          <p>当前综合分算法为：优秀率 × {{ classesFormData.excellentPercentage }} % + 及格率 × {{ classesFormData.qualifiedPercentage }} % + 平均分 × {{ classesFormData.averageScore }} %</p>
          <p>算法总比例：<el-tag v-if="formOneSum !== 100" type="danger">{{ formOneSum }} %</el-tag><el-tag v-else type="success">{{ formOneSum }} %</el-tag></p>
          <el-button :disabled="formOneEditEnable" type="primary" @click="submitForm('classesForm')"  v-hasPermi="['scores:muitiple:edit']">提交</el-button>
          <el-button @click="editEnable(1,1)" v-hasPermi="['scores:muitiple:edit']">{{formOneEdition}}</el-button>
        </el-form-item>
      </el-form>
    </div>
    <el-divider></el-divider>
    <div style="width: 600px;margin-left: 35px">
      <p>年级学科数据中的综合分算法：</p>
      <el-form ref="classesForm2" :model="classesFormData2" :rules="classesFormRules2" size="medium"
               label-width="100px" label-position="left">
        <el-form-item label-width="80px" label="三优秀率" prop="excellentPercentage" required>
          <el-input :disabled="formTwoEditEnable" v-model="classesFormData2.excellentPercentage" @input="classesFormData2.excellentPercentage = classesFormData2.excellentPercentage.replace(/[^\d]/g,'')" @change="classesFormDataChange($event,'classesForm2',1)"></el-input>当前优秀率计算比例：{{ classesFormData2.excellentPercentage }} %
        </el-form-item>
        <el-form-item label-width="80px" label="三及格率" prop="qualifiedPercentage" required>
          <el-input :disabled="formTwoEditEnable" v-model="classesFormData2.qualifiedPercentage" @input="classesFormData2.qualifiedPercentage = classesFormData2.qualifiedPercentage.replace(/[^\d]/g,'')" @change="classesFormDataChange($event,'classesForm2',2)"></el-input>当前及格率计算比例：{{ classesFormData2.qualifiedPercentage }} %
        </el-form-item>
        <el-form-item label-width="80px" label="得分率" prop="averageScore" required>
          <el-input :disabled="formTwoEditEnable" v-model="classesFormData2.averageScore" @input="classesFormData2.averageScore = classesFormData2.averageScore.replace(/[^\d]/g,'')" @change="classesFormDataChange($event,'classesForm2',3)"></el-input>当前平均分计算比例：{{ classesFormData2.averageScore }} %
        </el-form-item>
        <el-form-item size="large">
          <p>当前综合分算法为：三优秀率 × {{ classesFormData2.excellentPercentage }} % + 三及格率 × {{ classesFormData2.qualifiedPercentage }} % + 得分率 × {{ classesFormData2.averageScore }} %</p>
          <p>算法总比例：<el-tag v-if="formTwoSum !== 100" type="danger">{{ formTwoSum }} %</el-tag><el-tag v-else type="success">{{ formTwoSum }} %</el-tag></p>
          <el-button :disabled="formTwoEditEnable" type="primary" @click="submitForm('classesForm2')"  v-hasPermi="['scores:muitiple:edit']">提交</el-button>
          <el-button @click="editEnable(2,1)" v-hasPermi="['scores:muitiple:edit']">{{formTwoEdition}}</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>
<script>
import { updateMuitipleCalculation,listMuitipleCalculation } from '@/api/scores/muitiple'

export default {
  data() {
    return {
      classesFormData: {
        excellentPercentage: 30,
        qualifiedPercentage: 30,
        averageScore: 40,
      },
      formOneSum: 100,
      formOneEdition: "启用编辑",
      formOneEditEnable: true,
      classesFormRules: {},
      classesFormData2: {
        excellentPercentage: 30,
        qualifiedPercentage: 30,
        averageScore: 40,
      },
      formTwoSum: 100,
      formTwoEdition: "启用编辑",
      formTwoEditEnable: true,
      classesFormRules2: {}
    }
  },
  created() {
    this.getMuitipleData();
  },
  methods: {
    editEnable(form,notice){
      let that = this;
      if (1 === form){
        if (1 === notice && !this.formOneEditEnable){
          that.$modal.alertWarning("注意：直接关闭编辑，只会保留显示信息，不会保存修改的比例！");
        }
        this.formOneEdition = this.formOneEditEnable? "关闭编辑":"启用编辑";
        this.formOneEditEnable = !this.formOneEditEnable;
      } else {
        if (1 === notice && !this.formTwoEditEnable){
          that.$modal.alertWarning("注意：直接关闭编辑，只会保留显示信息，不会保存修改的比例！");
        }
        this.formTwoEdition = this.formTwoEditEnable? "关闭编辑":"启用编辑";
        this.formTwoEditEnable = !this.formTwoEditEnable;
      }
    },
    getMuitipleData(){
      listMuitipleCalculation().then(response => {
        this.classesFormData.excellentPercentage = response.data[0].excellent;
        this.classesFormData.qualifiedPercentage = response.data[0].qualified;
        this.classesFormData.averageScore = response.data[0].average;
        this.classesFormData2.excellentPercentage = response.data[1].excellent;
        this.classesFormData2.qualifiedPercentage = response.data[1].qualified;
        this.classesFormData2.averageScore = response.data[1].average;
      });

    },
    classesFormDataChange(value,form,index){
      let sum = 0;
      if ("classesForm" === form){
        sum = Number(this.classesFormData.excellentPercentage) + Number(this.classesFormData.qualifiedPercentage) + Number(this.classesFormData.averageScore);
        if (sum > 100 ){
          switch (index) {
            case 1:
              this.classesFormData.excellentPercentage = 100 - this.classesFormData.qualifiedPercentage - this.classesFormData.averageScore;
              break;
            case 2:
              this.classesFormData.qualifiedPercentage = 100 - this.classesFormData.excellentPercentage - this.classesFormData.averageScore;
              break;
            case 3:
              this.classesFormData.averageScore = 100 - this.classesFormData.excellentPercentage - this.classesFormData.qualifiedPercentage;
              break;
            default:
              break;
          }
        }
        this.formOneSum = Number(this.classesFormData.excellentPercentage) + Number(this.classesFormData.qualifiedPercentage) + Number(this.classesFormData.averageScore);
      } else {
        sum = Number(this.classesFormData2.excellentPercentage) + Number(this.classesFormData2.qualifiedPercentage) + Number(this.classesFormData2.averageScore);
        if (sum > 100 ){
          switch (index) {
            case 1:
              this.classesFormData2.excellentPercentage = 100 - this.classesFormData2.qualifiedPercentage - this.classesFormData2.averageScore;
              break;
            case 2:
              this.classesFormData2.qualifiedPercentage = 100 - this.classesFormData2.excellentPercentage - this.classesFormData2.averageScore;
              break;
            case 3:
              this.classesFormData2.averageScore = 100 - this.classesFormData2.excellentPercentage - this.classesFormData2.qualifiedPercentage;
              break;
            default:
              break;
          }
        }
        this.formTwoSum = Number(this.classesFormData2.excellentPercentage) + Number(this.classesFormData2.qualifiedPercentage) + Number(this.classesFormData2.averageScore);
      }

    },
    submitForm(formName) {
      let that = this;
      console.log(formName);
      let msg = "";
      let form = null;
      let dataTemp = {
        excellentPercentage: 30,
        qualifiedPercentage: 30,
        averageScore: 40,
      };
      if ("classesForm" === formName){
        msg = "年级班级学科";
        dataTemp = that.classesFormData;
        form = 1;
      } else {
        msg = "年级学科";
        dataTemp = that.classesFormData2;
        form = 2;
      }
      this.$refs[formName].validate(valid => {
        if (!valid) {
          return false;
        }
        if (100 !== Number(dataTemp.excellentPercentage) + Number(dataTemp.qualifiedPercentage) + Number(dataTemp.averageScore)){
          that.$modal.alertWarning(msg + "的总比例不是100%");
          return false;
        }
        let param = {
          id: form,
          excellent: dataTemp.excellentPercentage,
          qualified: dataTemp.qualifiedPercentage,
          average: dataTemp.averageScore
        };
        updateMuitipleCalculation(param).then(response => {
          if (1 === response.data){
            that.$modal.msgSuccess(msg + "的综合分算法修改成功");
            that.editEnable(form,0);
          } else {
            that.$modal.msgSuccess(msg + "的综合分算法修改失败");
            that.editEnable(form,0);
          }
        });
      })
    },
  }
}

</script>
<style>
</style>
