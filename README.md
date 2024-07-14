
<h1 align="center" style="margin: 30px 0 30px; font-weight: bold;">爱家成绩管理系统 v1.5</h1>
<h4 align="center">基于若依前后端分离的小学成绩管理系统</h4>
<p align="center">
	<a href="https://gitee.com/hysro/school-score/tree/master/LICENSE"><img src="https://img.shields.io/github/license/mashape/apistatus.svg"></a>
    <a href='https://gitee.com/hysro/school-score/stargazers'><img src='https://gitee.com/hysro/school-score/badge/star.svg?theme=dark' alt='star'></img></a>
</p>

镜像仓库  
<a href="https://gitee.com/hysro/school-score">GITEE.COM</a><br/>
<a href="https://github.com/hysro1997/school-score">GITHUB.COM</a>



<p>常州地区最受欢迎的成绩管理系统，吹牛不打草稿</p>
<p>给学校随便做着玩玩的，不一定适合其他学校用，基于若依框架做的，方便有需求进行二次开发</p>
<p>分数录入、根据综合分算法比例来统计成绩数据（计算平均分、综合分、及格率、优秀率、三项及格率，三项优秀率、各个分数的人数统计，排名）</p>

加群了解详情
[![加入QQ群](https://img.shields.io/badge/未满-637914590-blue.svg)](https://jq.qq.com/?_wv=1027&k=3lofOeSF)

# 页面展示
* 首页，能显示考试的结果：历次考试排名折线图、包含平均分排名、综合分排名，年级中各学科前50名，总分前50名等数据
* 其他页面可以点击数据进行筛选查询
* 一键复制数据，方便粘贴到excel中

![p9QfvGT.jpg](https://s1.ax1x.com/2023/04/27/p9QfvGT.jpg)

![p9y4fBT.jpg](https://s1.ax1x.com/2023/05/12/p9y4fBT.jpg)

![p9y45EF.jpg](https://s1.ax1x.com/2023/05/12/p9y45EF.jpg)

![p9y4hHU.jpg](https://s1.ax1x.com/2023/05/12/p9y4hHU.jpg)

![p9QhCL9.jpg](https://s1.ax1x.com/2023/04/27/p9QhCL9.jpg)

![p9Qh9sJ.jpg](https://s1.ax1x.com/2023/04/27/p9Qh9sJ.jpg)

![p9QhkIx.jpg](https://s1.ax1x.com/2023/04/27/p9QhkIx.jpg)

![p9QhEi6.jpg](https://s1.ax1x.com/2023/04/27/p9QhEi6.jpg)

![p9QfzzF.jpg](https://s1.ax1x.com/2023/04/27/p9QfzzF.jpg)

![p9czGCR.png](https://s1.ax1x.com/2023/05/14/p9czGCR.png)

![p9czJ81.png](https://s1.ax1x.com/2023/05/14/p9czJ81.png)

![p9czYgx.png](https://s1.ax1x.com/2023/05/14/p9czYgx.png)

![p9QhpM4.jpg](https://s1.ax1x.com/2023/04/27/p9QhpM4.jpg)

![p9QfxRU.jpg](https://s1.ax1x.com/2023/04/27/p9QfxRU.jpg)

![p9QhiZR.jpg](https://s1.ax1x.com/2023/04/27/p9QhiZR.jpg)

## 二次开发流程
    1、建议一定要二次开发，git clone到本地后，网页title可以在系统管理中重新设置
    2、二次开发前的准备 mysql 5.7，redis，jdk 1.8，开发工具：eclipse或者IntelliJ IDEA，安装npm
    3、创建数据库，并导入sql文件夹下的ajxx-score.sql
    4、配置ruoyi-admin包下的application-druid.yml下数据库链接地址，修改数据库名称、数据库用户名、密码
        修改application.yml下的port：为8080，(默认是10828，如需修改，请一并修改ruoyi-ui包下的vue.config.js下的devServer.proxy.target修改端口号)方便二次开发
    5、进入ruoyi-yi包，命令行运行npm install安装前端依赖
    进行二次开发
## 打包部署
    1、修改application.yml下的port，修改运行端口，
    2、修改application.yml下的ruoyi：profile 视服务器（windows / linux）情况修改上传文件存放地址
    3、修改application.yml下的swagger：pathMapping 为 prod-api
    4、修改ruoyi-ui包下的vue.config.js的target，修改为刚刚 1 中配置的端口号
    5、运行打包命令 mvn clean package打包jar包；
        运行build:prod 打包前端页面

## 查看效果
<p> <a href="https://pan.baidu.com/s/1gMJj4lD7bCgzGHqJhKkQFg?pwd=8rdt"> 点击链接查看 [ Ubuntu cjgl ] </a> </p>
    
    1、下载文件，在VMware虚拟机中选择打开文件，打开下载文件中的 Ubuntu cjgl.vmx 文件
    2、待虚拟机运行后：用户名：hhb 密码：123456
    3、输入ip address show查看当前虚拟机的IP
    4、打开浏览器输入IP地址，即可在80端口访问到

## 更新历史

* v1.6:
    
    1、添加了名次显示责任老师的功能

* v1.5.2:  
    1、使得图表显示更符合人的习惯，第一名显示在上面，最后一名显示在下面（即X轴在上面，Y轴从上往下）
    
* v1.5:  
    1、添加了学生得分偏差率的计算，以及筛选查询偏差率，方便快速找出优生

* v1.4:  
    1、修改了新增考试、修改考试的功能  
    
* v1.2:  
    1、点击首页柱状图，能显示历次考试排名情况
    2、修改了优秀分数线的修改方式
    
* v1.1:  
    1、提供了修改综合分算法的功能  
    2、首页能根据考试显示各班排名情况  
    3、可以查看不及格名单  
    4、首页能查看前后50名及其详细信息 
    
* v1.0:  项目正式上线，能录入成绩，统计出所需结果

## 平台简介
爱家成绩管理系统毫无保留给个人及企业免费使用。

若依是一套全部开源的快速开发平台，毫无保留给个人及企业免费使用。

* 前端采用Vue、Element UI。
* 后端采用Spring Boot、Spring Security、Redis & Jwt。
* 权限认证使用Jwt，支持多终端认证系统。
* 支持加载动态权限菜单，多方式轻松权限控制。
* 高效率开发，使用代码生成器可以一键生成前后端代码。
* 提供了技术栈（[Vue3](https://v3.cn.vuejs.org) [Element Plus](https://element-plus.org/zh-CN) [Vite](https://cn.vitejs.dev)）版本[RuoYi-Vue3](https://github.com/yangzongzhuan/RuoYi-Vue3)，保持同步更新。
* 提供了单应用版本[RuoYi-Vue-fast](https://github.com/yangzongzhuan/RuoYi-Vue-fast)，Oracle版本[RuoYi-Vue-Oracle](https://github.com/yangzongzhuan/RuoYi-Vue-Oracle)，保持同步更新。
* 不分离版本，请移步[RuoYi](https://gitee.com/y_project/RuoYi)，微服务版本，请移步[RuoYi-Cloud](https://gitee.com/y_project/RuoYi-Cloud)
* 特别鸣谢：[element](https://github.com/ElemeFE/element)，[vue-element-admin](https://github.com/PanJiaChen/vue-element-admin)，[eladmin-web](https://github.com/elunez/eladmin-web)。
