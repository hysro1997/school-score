<template>
  <div class="app-container home">
    <div style="text-align: center;font-size: 30px">
      <p>欢迎
        {{ user.dept.deptName }} {{postGroup}}
        <el-tag effect="plain" style="text-align: center;font-size: 28px">
          {{ user.nickName }}
        </el-tag> 使用
        <el-tag effect="light" style="text-align: center;font-size: 28px">
          {{ titleName }}
        </el-tag>
      </p>
      <p></p>
    </div>

    <div style="text-align: center">
      查看考试：
        <el-select
          v-model="examId"
          filterable
          remote
          reserve-keyword
          placeholder="请输入考试名称"
          :remote-method="remoteMethod"
          :loading="loading"
          @change="drawAllEcharts">
          <el-option
            v-for="item in options"
            :key="item.examId"
            :label="item.examName"
            :value="item.examId">
          </el-option>
        </el-select>
      的 综合分 <el-switch
      v-model="queryParams.rankType"
      active-value="1"
      inactive-value="0"
      inactive-color="rgb(145, 204, 117)"
      @change="drawAllEcharts(examId)"
    ></el-switch> 平均分 排名数据
    </div>
<br/><br/>
    <div style="width: 1500px">
    <el-row :gutter="20">
      <el-col :span="12">
        <div>
          <el-button type="success" @click="getFiftyByButton('一年级','1')" plain>前50名</el-button>&nbsp;&nbsp;&nbsp;&nbsp;<el-button type="warning" @click="getFiftyByButton('一年级','0')" plain>后50名</el-button>
          <el-button type="success" @click="getGradeStatics('一年级')">查看数据</el-button>
        </div>
        <div class="grid-content bg-purple" id="rateChart1" style="width: 700px;height: 400px">
        <el-empty description="一年级暂无数据"></el-empty>
      </div>
        <div><span v-if="queryParams.rankType === '1'">平均分</span><span v-else>综合分</span>情况：</div><br/>
        <el-row>
          <el-col :span="2">语文：</el-col><el-col :span="5">最高分：{{ grade1.chinese.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade1.chinese.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade1.chinese.gap >= 10" type="danger" size="mini">{{ grade1.chinese.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade1.chinese.gap }}</el-tag></el-col>
        </el-row>
        <el-row>
          <el-col :span="2">数学：</el-col><el-col :span="5">最高分：{{ grade1.math.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade1.math.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade1.math.gap >= 10" type="danger" size="mini">{{ grade1.math.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade1.math.gap }}</el-tag></el-col>
        </el-row>
      </el-col>
      <el-col :span="12">
        <div>
          <el-button type="success" @click="getFiftyByButton('二年级','1')" plain>前50名</el-button>&nbsp;&nbsp;&nbsp;&nbsp;<el-button type="warning" @click="getFiftyByButton('二年级','0')" plain>后50名</el-button>
          <el-button type="success" @click="getGradeStatics('二年级')">查看数据</el-button>
        </div>
        <div class="grid-content bg-purple" id="rateChart2" style="width: 700px;height: 400px">
        <el-empty description="二年级暂无数据"></el-empty>
      </div>
        <div><span v-if="queryParams.rankType === '1'">平均分</span><span v-else>综合分</span>情况：</div><br/>
        <el-row>
          <el-col :span="2">语文：</el-col><el-col :span="5">最高分：{{ grade2.chinese.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade2.chinese.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade2.chinese.gap >= 10" type="danger" size="mini">{{ grade2.chinese.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade2.chinese.gap }}</el-tag></el-col>
        </el-row>
        <el-row>
          <el-col :span="2">数学：</el-col><el-col :span="5">最高分：{{ grade2.math.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade2.math.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade2.math.gap >= 10" type="danger" size="mini">{{ grade2.math.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade2.math.gap }}</el-tag></el-col>
        </el-row>
      </el-col>
    </el-row>
    <br/><br/>
    <el-row :gutter="20">
      <el-col :span="12">
        <div>
          <el-button type="success" @click="getFiftyByButton('三年级','1')" plain>前50名</el-button>&nbsp;&nbsp;&nbsp;&nbsp;<el-button type="warning" @click="getFiftyByButton('三年级','0')" plain>后50名</el-button>
          <el-button type="success" @click="getGradeStatics('三年级')">查看数据</el-button>
        </div>
        <div class="grid-content bg-purple" id="rateChart3" style="width: 700px;height: 400px">
        <el-empty description="三年级暂无数据"></el-empty>
      </div>
        <div><span v-if="queryParams.rankType === '1'">平均分</span><span v-else>综合分</span>情况：</div><br/>
        <el-row>
          <el-col :span="2">语文：</el-col><el-col :span="5">最高分：{{ grade3.chinese.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade3.chinese.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade3.chinese.gap >= 10" type="danger" size="mini">{{ grade3.chinese.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade3.chinese.gap }}</el-tag></el-col>
        </el-row>
        <el-row>
          <el-col :span="2">数学：</el-col><el-col :span="5">最高分：{{ grade3.math.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade3.math.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade3.math.gap >= 10" type="danger" size="mini">{{ grade3.math.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade3.math.gap }}</el-tag></el-col>
        </el-row>
        <el-row>
          <el-col :span="2">英语：</el-col><el-col :span="5">最高分：{{ grade3.english.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade3.english.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade3.english.gap >= 10" type="danger" size="mini">{{ grade3.english.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade3.english.gap }}</el-tag></el-col>
        </el-row>
      </el-col>
      <el-col :span="12">
        <div>
          <el-button type="success" @click="getFiftyByButton('四年级','1')" plain>前50名</el-button>&nbsp;&nbsp;&nbsp;&nbsp;<el-button type="warning" @click="getFiftyByButton('四年级','0')" plain>后50名</el-button>
          <el-button type="success" @click="getGradeStatics('四年级')">查看数据</el-button>
        </div>
        <div class="grid-content bg-purple" id="rateChart4" style="width: 700px;height: 400px">
        <el-empty description="四年级暂无数据"></el-empty>
      </div>
        <div><span v-if="queryParams.rankType === '1'">平均分</span><span v-else>综合分</span>情况：</div><br/>
        <el-row>
          <el-col :span="2">语文：</el-col><el-col :span="5">最高分：{{ grade4.chinese.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade4.chinese.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade4.chinese.gap >= 10" type="danger" size="mini">{{ grade4.chinese.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade4.chinese.gap }}</el-tag></el-col>
        </el-row>
        <el-row>
          <el-col :span="2">数学：</el-col><el-col :span="5">最高分：{{ grade4.math.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade4.math.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade4.math.gap >= 10" type="danger" size="mini">{{ grade4.math.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade4.math.gap }}</el-tag></el-col>
        </el-row>
        <el-row>
          <el-col :span="2">英语：</el-col><el-col :span="5">最高分：{{ grade4.english.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade4.english.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade4.english.gap >= 10" type="danger" size="mini">{{ grade4.english.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade4.english.gap }}</el-tag></el-col>
        </el-row>
      </el-col>
    </el-row>
    <br/><br/>
    <el-row :gutter="20">
      <el-col :span="12">
        <div>
          <el-button type="success" @click="getFiftyByButton('五年级','1')" plain>前50名</el-button>&nbsp;&nbsp;&nbsp;&nbsp;<el-button type="warning" @click="getFiftyByButton('五年级','0')" plain>后50名</el-button>
          <el-button type="success" @click="getGradeStatics('五年级')">查看数据</el-button>
        </div>
        <div class="grid-content bg-purple" id="rateChart5" style="width: 700px;height: 400px">
        <el-empty description="五年级暂无数据"></el-empty>
      </div>
        <div><span v-if="queryParams.rankType === '1'">平均分</span><span v-else>综合分</span>情况：</div><br/>
        <el-row>
          <el-col :span="2">语文：</el-col><el-col :span="5">最高分：{{ grade5.chinese.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade5.chinese.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade5.chinese.gap >= 10" type="danger" size="mini">{{ grade5.chinese.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade5.chinese.gap }}</el-tag></el-col>
        </el-row>
        <el-row>
          <el-col :span="2">数学：</el-col><el-col :span="5">最高分：{{ grade5.math.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade5.math.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade5.math.gap >= 10" type="danger" size="mini">{{ grade5.math.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade5.math.gap }}</el-tag></el-col>
        </el-row>
        <el-row>
          <el-col :span="2">英语：</el-col><el-col :span="5">最高分：{{ grade5.english.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade5.english.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade5.english.gap >= 10" type="danger" size="mini">{{ grade5.english.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade5.english.gap }}</el-tag></el-col>
        </el-row>
      </el-col>
      <el-col :span="12">
        <div>
          <el-button type="success" @click="getFiftyByButton('六年级','1')" plain>前50名</el-button>&nbsp;&nbsp;&nbsp;&nbsp;<el-button type="warning" @click="getFiftyByButton('六年级','0')" plain>后50名</el-button>
          <el-button type="success" @click="getGradeStatics('六年级')">查看数据</el-button>
        </div>
        <div class="grid-content bg-purple" id="rateChart6" style="width: 700px;height: 400px">
        <el-empty description="六年级暂无数据"></el-empty>
      </div>
        <div><span v-if="queryParams.rankType === '1'">平均分</span><span v-else>综合分</span>情况：</div><br/>
        <el-row>
          <el-col :span="2">语文：</el-col><el-col :span="5">最高分：{{ grade6.chinese.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade6.chinese.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade6.chinese.gap >= 10" type="danger" size="mini">{{ grade6.chinese.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade6.chinese.gap }}</el-tag></el-col>
        </el-row>
        <el-row>
          <el-col :span="2">数学：</el-col><el-col :span="5">最高分：{{ grade6.math.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade6.math.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade6.math.gap >= 10" type="danger" size="mini">{{ grade6.math.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade6.math.gap }}</el-tag></el-col>
        </el-row>
        <el-row>
          <el-col :span="2">英语：</el-col><el-col :span="5">最高分：{{ grade6.english.firstAverage }}</el-col><el-col :span="5">最低分：{{ grade6.english.lastAverage }}</el-col><el-col :span="5">分差：<el-tag v-if="grade6.english.gap >= 10" type="danger" size="mini">{{ grade6.english.gap }}</el-tag><el-tag v-else type="success" size="mini">{{ grade6.english.gap }}</el-tag></el-col>
        </el-row></el-col>
    </el-row>
    </div>
    <!-- 查看名单 -->
    <el-dialog :title="studentList.title" width="1000px" :visible.sync="studentList.open" :close-on-click-modal="false" append-to-body>
      <el-dialog
        width="30%"
        :title="studentList.title + '中各学科均上榜的学生'"
        :visible.sync="innerVisible"
        :close-on-click-modal="false"
        append-to-body>
        <el-button type="primary" size="small" @click="clipboardHandler(5)">复制各学科均上榜的名单</el-button>
        <br/><br/>
        <el-table :data="innerStudents" :row-class-name="tableRowClassName">
          <el-table-column label="考号" sortable align="center" prop="exam_number" />
          <el-table-column label="语文" sortable align="center" prop="studentsChinese" />
          <el-table-column label="数学" sortable align="center" prop="studentsMaths" />
          <el-table-column label="英语" sortable align="center" prop="studentsEnglish" />
        </el-table>
      </el-dialog>
      <el-row>
        <el-col><el-button type="primary" @click="viewSame">查看各项名单中都有同样的人</el-button></el-col>
      </el-row>
      <br/><br/>
      <el-row :gutter="2" style="font-size: 24px;">
        <el-col v-show="0 < Object.keys(studentsChinese).length" :span="6">语文&nbsp;&nbsp;<el-button type="primary" size="small" @click="clipboardHandler(1)">复制语文名单</el-button></el-col>
        <el-col v-show="0 < Object.keys(studentsMaths).length" :span="6">数学&nbsp;&nbsp;<el-button type="primary" size="small" @click="clipboardHandler(2)">复制数学名单</el-button></el-col>
        <el-col v-show="0 < Object.keys(studentsEnglish).length" :span="6">英语&nbsp;&nbsp;<el-button type="primary" size="small" @click="clipboardHandler(3)">复制英语名单</el-button></el-col>
        <el-col v-show="0 < Object.keys(studentsTotalPoints).length" :span="6">总分&nbsp;&nbsp;<el-button type="primary" size="small" @click="clipboardHandler(4)">复制总分名单</el-button></el-col>
      </el-row>
      <el-row :gutter="2" style="font-size: 18px;">
        <el-col v-show="0 < Object.keys(studentsChinese).length" :span="6"><div><el-row :gutter="20" style="font-size: 24px;">
          <el-col :span="12">考号</el-col>
          <el-col :span="12">得分</el-col>
        </el-row></div></el-col>
        <el-col v-show="0 < Object.keys(studentsMaths).length" :span="6"><div><el-row :gutter="20" style="font-size: 24px;">
          <el-col :span="12">考号</el-col>
          <el-col :span="12">得分</el-col>
        </el-row></div></el-col>
        <el-col v-show="0 < Object.keys(studentsEnglish).length" :span="6"><div><el-row :gutter="20" style="font-size: 24px;">
          <el-col :span="12">考号</el-col>
          <el-col :span="12">得分</el-col>
        </el-row></div></el-col>
        <el-col v-show="0 < Object.keys(studentsTotalPoints).length" :span="6"><div><el-row :gutter="20" style="font-size: 24px;">
          <el-col :span="12">考号</el-col>
          <el-col :span="12">得分</el-col>
        </el-row></div></el-col>
      </el-row>
      <el-row :gutter="2" style="font-size: 18px;">
        <el-col v-if="0 < Object.keys(studentsChinese).length" :span="6"><div><el-row :gutter="20" style="font-size: 24px;" v-for="(item, index) in studentsChinese" :key="index">
          <el-col :span="12">{{item.exam_number}}</el-col>
          <el-col :span="12">{{item.score}}</el-col>
        </el-row></div></el-col>
        <el-col v-if="0 < Object.keys(studentsMaths).length" :span="6"><div><el-row :gutter="20" style="font-size: 24px;" v-for="(item, index) in studentsMaths" :key="index">
          <el-col :span="12">{{item.exam_number}}</el-col>
          <el-col :span="12">{{item.score}}</el-col>
        </el-row></div></el-col>
        <el-col v-if="0 < Object.keys(studentsEnglish).length" :span="6"><div><el-row :gutter="20" style="font-size: 24px;" v-for="(item, index) in studentsEnglish" :key="index">
          <el-col :span="12">{{item.exam_number}}</el-col>
          <el-col :span="12">{{item.score}}</el-col>
        </el-row></div></el-col>
        <el-col v-show="0 < Object.keys(studentsTotalPoints).length" :span="6"><div><el-row :gutter="20" style="font-size: 24px;" v-for="(item, index) in studentsTotalPoints" :key="index">
          <el-col :span="12">
            <el-popover
              placement="left"
              :title="item.exam_number + '的详细信息'"
              width="200"
              trigger="click">
              <p class="tipck">语文成绩：{{studentScore.chineseScore}}</p>
              <p class="tipck">数学成绩：{{studentScore.mathsScore}}</p>
              <p class="tipck">英语成绩：{{studentScore.englishScore}}</p>
              <p class="tipck">总分成绩：{{studentScore.totalPoints}}</p>
              <el-button slot="reference" style="font-size: 24px;" type="text" v-on:click="getStudentScoreDetail(item.exam_number)">{{item.exam_number}}</el-button>
            </el-popover>
          </el-col>
          <el-col :span="12">{{item.score}}</el-col>
        </el-row></div></el-col>
      </el-row>
    </el-dialog>
    <el-drawer
      title="我是标题"
      :visible.sync="drawer"
      :with-header="false"
      size="80%"
      append-to-body>
      <br/>
      <el-table v-loading="loading2" :data="summaryList" :row-class-name="tableRowClassName">
        <!-- el-table-column label="ID" align="center" prop="examGradeSummaryId" / -->
        <el-table-column label="年级" align="center" prop="grade" />
        <el-table-column label="学科" align="center" prop="subject" />
        <el-table-column label="考试总人数" sortable align="center" prop="examTotalNumbers" />
        <el-table-column label="年级总分" sortable align="center" prop="gradeTotalScores" />
        <el-table-column label="年级均分" sortable align="center" prop="gradeAverageScore" />
        <el-table-column label="年级及格率" sortable align="center" prop="gradeQualifiedPercentage" />
        <el-table-column label="年级优秀率" sortable align="center" prop="gradeExcellentPercentage" />
        <el-table-column label="不及格人数" sortable align="center" prop="gradeUnqualifiedNumbers" />
      </el-table>

      <br/><br/>

      <el-table v-loading="loading2" :data="statisticList" :row-class-name="tableRowClassName">
        <!-- el-table-column label="年级数据ID" align="center" prop="examGradeStatisticsId" / -->
        <el-table-column label="年级" align="center" prop="grade" />
        <el-table-column label="班级" align="center" prop="classes" />
        <el-table-column label="考试人数" align="center" prop="examNumbers" />
        <el-table-column label="三及格人数" sortable align="center" prop="tripleQualifiedNumbers" />
        <el-table-column label="三优秀人数" sortable align="center" prop="tripleExcellentNumbers" />
        <el-table-column label="三及格率" sortable align="center" prop="tripleQualifiedPercentage" />
        <el-table-column label="三优秀率" sortable align="center" prop="tripleExcellentPercentage" />
        <el-table-column label="总得分" sortable align="center" prop="allScore" />
        <el-table-column label="得分率" sortable align="center" prop="allScorePercentage" />
        <el-table-column label="综合分" sortable align="center" prop="muitipleScore" />
        <el-table-column label="综合分排名" sortable align="center" prop="muitipleRank" />
      </el-table>

      <br/><br/>

      <el-table v-loading="loading2" :data="staticticsList" :row-class-name="tableRowClassName">
        <!-- el-table-column label="统计记录ID" align="center" prop="examStatisticsId" / -->
        <el-table-column label="年级" align="center" prop="grade" />
        <el-table-column label="班级" align="center" prop="classes" />
        <el-table-column label="学科" align="center" prop="subject" />
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
        <el-table-column label="不及格人数(55-59)" sortable align="center" prop="unqualifiedOneNumbers" />
        <el-table-column label="不及格人数(50-54)" sortable align="center" prop="unqualifiedTwoNumbers" />
        <el-table-column label="不及格人数(40-49)" sortable align="center" prop="unqualifiedThreeNumbers" />
        <el-table-column label="不及格人数(40分以下)" sortable align="center" prop="unqualifiedFourNumbers" />
        <el-table-column label="综合分排名" sortable align="center" prop="muitipleRank" />
        <el-table-column label="平均分排名" sortable align="center" prop="averageRank" />
      </el-table>
    </el-drawer>
  </div>
</template>

<script>

  import { getUserProfile } from "@/api/system/user";
  import { getStaticticsclass } from "@/api/scores/infoForEcharts"
  import * as echarts from 'echarts';
  import { allExams } from '@/api/examination/exams'
  import { getScoresFifty,getTotalPointsFifty,listScores } from '@/api/scores/scores'
  import { listSummary } from '@/api/scores/summary'
  import { listStatistic } from '@/api/scores/statistic'
  import { listStatictics, getAverage } from '@/api/scores/statictics'

export default {
  name: "Index",
  data() {
    return {
      innerVisible: false,
      innerStudents: [
        {studentsEnglish: null,
          studentsMaths:null,
          studentsChinese:null
        }],
      staticticsList: [],
      statisticList: [],
      summaryList: [],
      drawer: false,
      studentList: {
        title: null,
        open: false
      },
      options: [],
      examId: '',
      loading: false,
      loading2:false,
      user: {
        dept:{
          deptName: ''
        }
      },
      queryParams: {
        grade: null,
        examId: null,
        rankType: 0,
      },
      examQueryParams:{
        pageNum: 1,
        pageSize: 100,
        examName: null,
      },
      roleGroup: {},
      postGroup: {},
      rateChart1: null,
      rateChart2: null,
      rateChart3: null,
      rateChart4: null,
      rateChart5: null,
      rateChart6: null,
      studentsChinese: [],
      studentsMaths: [],
      studentsEnglish: [],
      studentsTotalPoints: [],
      grade1:{
          chinese: {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          },
          math:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          }
        },
      grade2:{
          chinese:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          },
          math:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          }
        },
      grade3:{
          chinese:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          },
          math:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          },
          english:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          }
        },
      grade4:{
          chinese:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          },
          math:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          },
          english:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          }
        },
      grade5:{
          chinese:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          },
          math:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          },
          english:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          }
        },
      grade6:{
          chinese:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          },
          math:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
          },
          english:  {
            firstAverage: '',
            lastAverage: '',
            gap: ''
        },
      },
      studentScore: '',
      titleName: localStorage.getItem("title") || "爱家小学管理系统"
    };
  },
  created() {
    this.getUser();
    this.initExams();
  },
  mounted() {
    this.initEchartsInfo();
  },
  methods: {
    viewSame(){
      let temp = [];
      let temp2 = [];
      let score = {};
      this.studentsChinese.forEach((value, index) => {
        try {
          score = {};
          this.studentsMaths.forEach((v,i) => {
            if (value.exam_number === v.exam_number){
              score.exam_number = value.exam_number;
              score.studentsChinese = value.score;
              score.studentsMaths = v.score;
              temp.push(score);
              throw new Error("跳出循环");
            }
          });
        } catch (e) {
        }
      });
      score = {};
      if (0 > this.studentList.title.indexOf("一年级") && 0 > this.studentList.title.indexOf("二年级")){
        temp.forEach((value, index) => {
          try {
            score = {};
            this.studentsEnglish.forEach((v,i) => {
              if (value.exam_number === v.exam_number){
                score.exam_number = value.exam_number;
                score.studentsChinese = value.studentsChinese;
                score.studentsMaths = value.studentsMaths;
                score.studentsEnglish = v.score;
                temp2.push(score);
                throw new Error("跳出循环");
              }
            });
          }catch (e) {

          }
        });
        this.innerStudents = temp2;
        this.innerVisible = true;
        return true;
      }
      this.innerStudents = temp;
      this.innerVisible = true;
    },
    getStudentScoreDetail(examNumber){
      this.studentScore = {};
      let param = {
        examId: this.examId,
        examNumber: examNumber
      };
      listScores(param).then(response => {
        this.studentScore = response.rows[0];
      });
    },
    tableRowClassName({row, rowIndex}) {
      if (1 === rowIndex % 2) {
        return 'success-row';
      }
      return '';
    },
    getGradeStatics(grade){
      this.loading2 = true;
      this.staticticsList = [];
      this.statisticList = [];
      this.summaryList = [];
      this.drawer = true;
      let param = {
        examId: this.examId,
        grade: grade
      };
      listSummary(param).then(response => {
        this.summaryList = response.rows;
        this.loading2 = false;
      });
      listStatistic(param).then(response => {
        this.statisticList = response.rows;
        this.loading2 = false;
      });
      listStatictics(param).then(response => {
        this.staticticsList = response.rows;
        this.loading2 = false;
      });
    },
    clipboardHandler (subject) {
      let that = this;
      let message = (this.studentList.title + "\n") || "";
      switch (subject) {
        case 1:
          if (null === this.studentsChinese || 0 === this.studentsChinese.length){
            this.$modal.msgWarning("没有可供复制的内容");
            return;
          }
          message = message.replace("级","级 语文");
          message += "考号\t分数\n";
          this.studentsChinese.forEach(function(element){
            message += element.exam_number + "\t" + element.score + "\n";
          });
          this.$copyText(message).then(function (e) {
            that.$modal.msgSuccess("复制成功");
          }, function (e) {
            that.$modal.msgError("复制出错了");
          });
          break;
        case 2:
          if (null === this.studentsMaths || 0 === this.studentsMaths.length){
            this.$modal.msgWarning("没有可供复制的内容");
            return;
          }
          message = message.replace("级","级 数学");
          message += "考号\t分数\n";
          this.studentsMaths.forEach(function(element){
            message += element.exam_number + "\t" + element.score + "\n";
          });
          this.$copyText(message).then(function (e) {
            that.$modal.msgSuccess("复制成功");
          }, function (e) {
            that.$modal.msgError("复制出错了");
          });
          break;
        case 3:
          if (null === this.studentsEnglish || 0 === this.studentsEnglish.length){
            this.$modal.msgWarning("没有可供复制的内容");
            return;
          }
          message = message.replace("级","级 英语");
          message += "考号\t分数\n";
          this.studentsEnglish.forEach(function(element){
            message += element.exam_number + "\t" + element.score + "\n";
          });
          this.$copyText(message).then(function (e) {
            that.$modal.msgSuccess("复制成功");
          }, function (e) {
            that.$modal.msgError("复制出错了");
          });
          break;
        case 4:
          if (null === this.studentsTotalPoints || 0 === this.studentsTotalPoints.length){
            this.$modal.msgWarning("没有可供复制的内容");
            return;
          }
          message = message.replace("级","级 总分");
          message += "考号\t分数\n";
          this.studentsTotalPoints.forEach(function(element){
            message += element.exam_number + "\t" + element.score + "\n";
          });
          this.$copyText(message).then(function (e) {
            that.$modal.msgSuccess("复制成功");
          }, function (e) {
            that.$modal.msgError("复制出错了");
          });
          break;
        case 5:
          if (null === this.innerStudents || 0 === this.innerStudents.length){
            this.$modal.msgWarning("没有可供复制的内容");
            return;
          }
          message = message.replace("名单", "名单中各学科均上榜的学生");
          message += "考号\t语文分数\t数学分数\t英语分数\n";
          this.innerStudents.forEach(function(element){
            message += element.exam_number + "\t" + element.studentsChinese + "\t" + element.studentsMaths + "\t" + (element.studentsEnglish || "") + "\n";
          });
          this.$copyText(message).then(function (e) {
            that.$modal.msgSuccess("复制成功");
          }, function (e) {
            that.$modal.msgError("复制出错了");
          });
          break;
        default:
          break;
      }

    },
    getFiftyByButton(grade,orderType){
      this.studentsChinese = [];
      this.studentsMaths = [];
      this.studentsEnglish = [];
      this.studentList.title = grade + (orderType === '1' ? " 前 " : " 后 ") + "50名的名单";
      let params = {
        grade: null,
        examId: null,
        subject: null,
        orderType: null
      };
      params.examId = this.examId;
      params.orderType = orderType;
      params.grade = grade;
      params.subject = "语文";
      getScoresFifty(params).then(response => {
        if (undefined === response.data || null === response.data || "" === response.data){
          this.$modal.msgWarning("查询到没有此项 语文 成绩");
          this.studentsChinese = [];
        } else {
          this.studentsChinese = response.data;
          this.studentList.open = true;
        }
      });
      params.subject = "数学";
      getScoresFifty(params).then(response => {
        if (undefined === response.data || null === response.data || "" === response.data){
          this.$modal.msgWarning("查询到没有此项 数学 成绩");
          this.studentsMaths = [];
        } else {
          this.studentsMaths = response.data;
          this.studentList.open = true;
        }
      });
      if("一年级" !== grade && "二年级" !== grade){
        params.subject = "英语";
        getScoresFifty(params).then(response => {
          if (undefined === response.data || null === response.data || "" === response.data){
            this.$modal.msgWarning("查询到没有此项 英语 成绩");
            this.studentsEnglish = [];
          } else {
            this.studentsEnglish = response.data;
            this.studentList.open = true;
          }
        });
      }
      let param = {
        grade: grade,
        examId: this.examId,
        orderType: orderType
      };
      getTotalPointsFifty(param).then(response => {
        if (undefined === response.data || null === response.data || "" === response.data){
          this.$modal.msgWarning("查询到没有此项 学生总分 成绩");
          this.studentsTotalPoints = [];
        } else {
          this.studentsTotalPoints = response.data;
          this.studentList.open = true;
        }
      });
    },
    initExams(){
      allExams(this.examQueryParams).then(response => {
        this.options = response.data;
        setTimeout(() =>{
          if (this.options.length>0){
            this.examId = this.options[0].examId;
          }
        },50);

      });
    },
    initEchartsInfo(){
        setTimeout(() =>{
          if (undefined === this.examId || null === this.examId || '' === this.examId){
            return false;
          }else {
            this.drawAllEcharts(this.examId);
          }
        },2000);
    },
    drawAllEcharts(examId){
      this.examId = examId;
      this.drawChart(this.rateChart1,"rateChart1",examId,"一年级");
      this.getInfoAverage(this.grade1,"一年级",examId);
      this.drawChart(this.rateChart2,"rateChart2",examId,"二年级");
      this.getInfoAverage(this.grade2,"二年级",examId);
      this.drawChart(this.rateChart3,"rateChart3",examId,"三年级");
      this.getInfoAverage(this.grade3,"三年级",examId);
      this.drawChart(this.rateChart4,"rateChart4",examId,"四年级");
      this.getInfoAverage(this.grade4,"四年级",examId);
      this.drawChart(this.rateChart5,"rateChart5",examId,"五年级");
      this.getInfoAverage(this.grade5,"五年级",examId);
      this.drawChart(this.rateChart6,"rateChart6",examId,"六年级");
      this.getInfoAverage(this.grade6,"六年级",examId);
    },
    getInfoAverage(infoParam,grade,examId){
      let params = {
        examId: examId,
        grade: grade,
        subject: null,
        subjectName: this.queryParams.rankType
      };
      params.subject = "语文";
      infoParam.chinese = "";
      getAverage(params).then(response => {
        if (undefined !== response.data && null !== response.data){
          infoParam.chinese = response.data;
          infoParam.chinese.gap = (infoParam.chinese.firstAverage - infoParam.chinese.lastAverage).toFixed(2);
        }
      });
      params.subject = "数学";
      infoParam.math = "";
      getAverage(params).then(response => {
        if (undefined !== response.data &&null !== response.data){
          infoParam.math = response.data;
          infoParam.math.gap = (infoParam.math.firstAverage - infoParam.math.lastAverage).toFixed(2);
        }
      });
      if (grade !== "一年级" && grade !== "二年级"){
        params.subject = "英语";
        infoParam.english = "";
        getAverage(params).then(response => {
          if (undefined !== response.data &&null !== response.data){
            infoParam.english = response.data;
            infoParam.english.gap = (infoParam.english.firstAverage - infoParam.english.lastAverage).toFixed(2);
          }
        });
      }
    },
    remoteMethod(query){
      if (query !== '') {
        this.loading = true;
        this.examQueryParams.examName = query;
        allExams(this.examQueryParams).then(response => {
          this.options = response.data;
        });
        this.loading = false;
      } else {
        this.options = [];
      }
    },
    goTarget(href) {
      window.open(href, "_blank");
    },
    getUser() {
      getUserProfile().then(response => {
        this.user = response.data;
        this.roleGroup = response.roleGroup;
        this.postGroup = response.postGroup;
      });
    },
    drawChart(chart,index,examId, grade){
      this.queryParams.examId = examId;
      this.queryParams.grade = grade;
      let subjectList = null;
      let classesList = null;
      let rateList = [];
      getStaticticsclass(this.queryParams).then(response => {
        if (null === response.data.classes || response.data.classes.length ===0){
          chart = echarts.getInstanceByDom(document.getElementById(index));
          if (null != chart){
            chart.dispose();
          }
          //this.$modal.msgWarning("没有数据");
          return;
        }
        chart = echarts.init(document.getElementById(index));
        subjectList = response.data.subjects;
        classesList = response.data.classes;
        subjectList.forEach(function(value) {
          let subjectsRates = {
            name: null,
            type: 'bar',
            data: []
          };
          subjectsRates.name = value;
          if ("语文"===value){
            subjectsRates.data = response.data.chineseRates;
          }else if ("数学"===value){
            subjectsRates.data = response.data.mathsRates;
          }else if ("英语"===value){
            subjectsRates.data = response.data.englishRates;
          }
          rateList.push(subjectsRates);
        });
        // 绘制图表
        chart.setOption({
          title: {
            text: grade
          },
          tooltip: {},
          legend:{
            data: subjectList,
            orient: 'horizontal',
            right: 0,
          },
          label:{
            show: true,
            position: 'top'
          },
          xAxis: {
            data: classesList
          },
          yAxis: {},
          series: rateList
        });
      });

    }
  }
};
</script>

<style scoped lang="scss">
.home {
  blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: 5px solid #eee;
  }
  hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
  }
  .col-item {
    margin-bottom: 20px;
  }

  ul {
    padding: 0;
    margin: 0;
  }

  font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  color: #676a6c;
  overflow-x: scroll;

  ul {
    list-style-type: none;
  }

  h4 {
    margin-top: 0px;
  }

  h2 {
    margin-top: 10px;
    font-size: 26px;
    font-weight: 100;
  }

  p {
    margin-top: 10px;

    b {
      font-weight: 700;
    }
  }

  .update-log {
    ol {
      display: block;
      list-style-type: decimal;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0;
      margin-inline-end: 0;
      padding-inline-start: 40px;
    }
  }
}
</style>

