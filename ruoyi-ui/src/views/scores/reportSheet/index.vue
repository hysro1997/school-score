<template>
  <div style="margin-left: 20px;margin-top: 10px">
    <el-col :span="10">
      <el-row :gutter="5">
        <el-form ref="elForm" :model="formData" :rules="rules" size="medium" label-width="120px" v-hasPermi="['scores:reportSheet:edit']"
                 label-position="left">
          <el-col :span="24">
            <el-form-item label="标题" prop="title">
              <el-input v-model="formData.title" placeholder="请输入标题" show-word-limit clearable
                        :style="{width: '100%'}"></el-input>
            </el-form-item>
            <el-form-item label="教育教学时间" prop="days">
              <el-input v-model="formData.days" placeholder="请输入教育教学时间" clearable :style="{width: '100%'}">
              </el-input>
            </el-form-item>
            <el-form-item label="下学期报道时间" prop="schoolDay">
              <el-date-picker v-model="formData.schoolDay" format="yyyy-MM-dd" value-format="yyyy-MM-dd"
                              :style="{width: '100%'}" placeholder="请选择下学期报道时间" clearable></el-date-picker>
            </el-form-item>
          </el-col>
          <el-col style="margin: 10px" :span="12">
            <el-upload
              ref="upload"
              :limit="1"
              accept=".jpg, .png"
              :action="upload.url"
              :headers="upload.headers"
              :file-list="upload.fileList"
              :on-progress="handleFileUploadProgress"
              :on-success="handleFileSuccess"
              :auto-upload="true">
              <el-button slot="trigger" size="small" type="primary">选取图片</el-button>
              <!-- el-button style="margin-left: 10px;" size="small" type="success" :loading="upload.isUploading" @click="submitUpload">上传到服务器</el-button -->
              <div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过600kb</div>
            </el-upload>
          </el-col>
          <br/>
          <br/>
          <el-col class="img-border" style="margin: 5px" v-for="img in pdfSignatureImgs" :key="img.id">
            <el-col :span="4"><el-image
              style="width: 100px; height: 100px"
              :src="img.imgSrc"></el-image>
            </el-col>
            <el-col :span="16">
              <el-row :gutter="6">
                <el-col :span="12" class="img-border"><span class="demonstration">距离顶部（cm）<el-input v-model="img.positionX" placeholder="请输入距离顶部的长度"></el-input></span></el-col>
                <el-col :span="12" class="img-border"><span class="demonstration">长（cm）<el-input v-model="img.sizeWidth" placeholder="请输入缩放后图片的长度"></el-input></span></el-col>
              </el-row>
              <el-row :gutter="6">
                <el-col :span="12" class="img-border"><span class="demonstration">距离左侧（cm）<el-input v-model="img.positionY" placeholder="请输入距离左侧的长度"></el-input></span></el-col>
                <el-col :span="12" class="img-border"><span class="demonstration">高（cm）<el-input v-model="img.sizeHeight" placeholder="请输入缩放后图片的高度"></el-input></span></el-col>
              </el-row>
            </el-col>
            <el-col :span="4" style="align: middle"><span class="demonstration" style="display: flex;justify-content: center;margin-top:25%"><el-button type="primary" @click="deletePdfSignatureImg(img.id)">删除</el-button></span></el-col>
          </el-col>
          <br/>
          <br/>
          <el-col style="margin: 5px" :span="24">
            <el-form-item size="large">
              <el-button type="primary" @click="submitForm">保存并预览</el-button>
              <el-button type="success" @click="handlePrint" v-hasPermi="['scores:reportSheet:print']">打印</el-button>
            </el-form-item>
          </el-col>
        </el-form>
      </el-row>
    </el-col>
    <el-col :span="14">
      <div style="margin-left: 30px;margin-top: 5px">
        <el-upload
          ref="uploadExcel"
          :limit="1"
          accept=".xls, .xlsx"
          :action="uploadExcel.url"
          :headers="uploadExcel.headers"
          :file-list="uploadExcel.fileList"
          :on-progress="handleExcelUploadProgress"
          :http-request="handleExcelUpload"
          :auto-upload="true">
          <el-button slot="trigger" size="small" type="primary" v-hasPermi="['scores:reportSheet:print']">选取表格文件</el-button>
          <!-- el-button style="margin-left: 10px;" size="small" type="success" :loading="upload.isUploading" @click="submitUpload">上传到服务器</el-button -->
        </el-upload>
        <br/>
        <el-button
          size="mini"
          type="text"
          icon="el-icon-edit"
          @click="handleDownload()"
        >下载</el-button>
        <el-button type="success" @click="handlePrint" v-hasPermi="['scores:reportSheet:print']">打印</el-button>
      </div>
      <br/><br/>
      <div class="pdf" style="width: 21cm;height: 29.7cm;border: black 2px solid;margin-left: 100px">
        <pdf ref="myPdfComponent" :src="pdfSrc" style="display: inline-block;width: 100%"></pdf>
      </div>
    </el-col>


  </div>
</template>
<script>
  import pdf from 'vue-pdf'
  import pdfViewer from 'vue-pdf'
  import CMapReaderFactory from "vue-pdf/src/CMapReaderFactory.js"
  import { viewPdfInformation, editPdf, previewPdf,viewPdfSignatureImgs,deletePdfSignatureImgs,editImgs } from '@/api/scores/pdfUtil'
  import { getToken } from "@/utils/auth"
export default {
  components: {
    pdf
  },
  props: [],
  data() {
    return {
      windowSrc: '',
      pdfSignatureImgs:[{
        imgSrc: '',
        id: '',
        positionX: '',
        positionY: '',
        sizeWidth: '',
        sizeHeight: ''
      }],
      // 上传参数
      upload: {
        // 是否禁用上传
        isUploading: false,
        // 设置上传的请求头部
        headers: { Authorization: "Bearer " + getToken() },
        // 上传的地址
        url: process.env.VUE_APP_BASE_API + "/velocity/upload",
        // 上传的文件列表
        fileList: []
      },
      // 上传参数
      uploadExcel: {
      // 是否禁用上传
        isUploading: false,
        // 设置上传的请求头部
        headers: { Authorization: "Bearer " + getToken() },
      // 上传的地址
        url: process.env.VUE_APP_BASE_API + "/velocity/getPdf",
        // 上传的文件列表
        fileList: []
      },
      pdfSrc: '',
      formData: {
        title: '',
        days: undefined,
        schoolDay: null,
      },
      rules: {
        title: [{
          required: true,
          message: '请输入标题',
          trigger: 'blur'
        }],
        days: [{
          required: true,
          message: '请输入教育教学时间',
          trigger: 'blur'
        }],
        schoolDay: [{
          required: true,
          message: '请选择下学期报道时间',
          trigger: 'change'
        }],
      },
    }
  },
  computed: {},
  watch: {},
  created() {},
  mounted() {
    this.pdfView();
  },
  methods: {
    handleDownload() {
      this.download('velocity/downloadTemplate', {
      }, `分数导入模板_${new Date().getTime()}.xlsx`)
    },
    handlePrint(){
      window.open(this.windowSrc);
    },
    deletePdfSignatureImg(id){
      let that = this;
      deletePdfSignatureImgs(id).then(response => {
        if (200 === response.code){
          for (let i=0; i < that.pdfSignatureImgs.length;i++){
            if (that.pdfSignatureImgs[i].id === id){
              that.pdfSignatureImgs.splice(i,1);
              return;
            }
          }
        }
      });
    },
    handleAdd() {
      this.upload.fileList = [];
    },
    handleUpdate(row) {
      this.upload.fileList = [{ name: this.form.fileName, url: this.form.filePath }];
    },
    pdfViewInformation(){
      let that = this;
      viewPdfInformation().then(response => {
        that.formData.title = response.data.title;
        that.formData.days = response.data.educationDays;
        that.formData.schoolDay = response.data.nextSchoolDay;
      });
    },
    pdfViewSignatureImgs(){
      let that = this;
      viewPdfSignatureImgs().then(response =>{
        that.pdfSignatureImgs = response.data;
      });
    },
    pdfPreview(){
      let that = this;
      previewPdf().then(response => {
        let blob = new Blob([response], {
          type: "application/pdf"
        });
        let fileURL = null;
        if (window.createObjectURL != undefined) { // basic
          fileURL = window.createObjectURL(blob);
        }else if (window.webkitURL != undefined) { // webkit or chrome
          try {
            fileURL = window.webkitURL.createObjectURL(blob);
          } catch (error) {console.log(error)}
        } else if (window.URL != undefined) { // mozilla(firefox)
          try {
            fileURL = window.URL.createObjectURL(blob);
          } catch (error) {console.log(error)}
        }
        that.windowSrc = fileURL;
        that.pdfSrc = pdfViewer.createLoadingTask({ url: fileURL, CMapReaderFactory });
        //that.pdfSrc = fileURL;
      });
    },
    pdfView(){
      this.pdfViewInformation();
      this.pdfViewSignatureImgs();
      this.pdfPreview();
    },
    submitForm() {
      this.$refs['elForm'].validate(valid => {
        if (!valid) return
        let data = {
          title: this.formData.title,
          educationDays: this.formData.days,
          nextSchoolDay: this.formData.schoolDay
        };
        let that = this;
        editImgs(this.pdfSignatureImgs).then(response => {
          this.$modal.msgSuccess("签章更新成功，正在预览效果");
        });
        editPdf(data).then(response => {
          this.$modal.msgSuccess("内容更新成功，正在预览效果");
          this.pdfSrc = null;
        });
        setTimeout(function() {
          that.pdfPreview();
        },1000);
      })
    },
    // 文件提交处理
    submitUpload() {
      this.$refs.upload.submit();


    },
// 文件上传中处理
    handleFileUploadProgress(event, file, fileList) {
      this.upload.isUploading = true;
    },
// 文件上传成功处理
    handleFileSuccess(response, file, fileList) {
      let that = this;
      this.upload.isUploading = false;
      //this.form.filePath = response.url;
      this.$modal.msgSuccess(response.msg);
      setTimeout(function() {
        viewPdfSignatureImgs().then(response =>{
          that.pdfSignatureImgs = response.data;
          that.upload.fileList = [];
        });
      },1000);
    },
    handleExcelUploadProgress(event, file, fileList) {
      this.uploadExcel.isUploading = true;
    },
    handleExcelUpload(param){
      let that = this;
      let sendFile = new FormData();	// 设置表单数据类型
      sendFile.append('file', param.file);
      previewPdf(sendFile).then(response => {
        let blob = new Blob([response], {
          type: "application/pdf"
        });
        let fileURL = null;
        if (window.createObjectURL != undefined) { // basic
          fileURL = window.createObjectURL(blob);
        }else if (window.webkitURL != undefined) { // webkit or chrome
          try {
            fileURL = window.webkitURL.createObjectURL(blob);
          } catch (error) {console.log(error)}
        } else if (window.URL != undefined) { // mozilla(firefox)
          try {
            fileURL = window.URL.createObjectURL(blob);
          } catch (error) {console.log(error)}
        }
        window.open(fileURL);
        that.windowSrc = fileURL;
        that.pdfSrc = pdfViewer.createLoadingTask({ url: fileURL, CMapReaderFactory });
        that.uploadExcel.fileList = [];
        //that.pdfSrc = fileURL;
      });
    },
  }
}
</script>
<style>
  .img-border {
    border: 1px solid
  }
</style>
