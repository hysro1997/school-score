
<h1 align="center" style="margin: 30px 0 30px; font-weight: bold;">RuoYi v3.8.5</h1>
<h4 align="center">基于若依前后端分离的小学成绩管理系统</h4>
<p align="center">
	<a href="https://gitee.com/y_project/RuoYi-Vue/blob/master/LICENSE"><img src="https://img.shields.io/github/license/mashape/apistatus.svg"></a>
</p>

<p>常州地区最受欢迎的成绩管理系统，吹牛不打草稿</p>
<p>给学校随便做着玩玩的，不一定适合其他学校用，基于若依框架做的，方便有需求进行二次开发</p>
<p>分数录入、统计成绩数据</p>

# 页面展示
* 首页，能显示考试的结果：包含平均分排名、综合分排名
<img src="https://s1.ax1x.com/2023/04/11/ppOGJ5q.png" alt="ppOGJ5q.png" border="0" />
* 其他页面
<table>
    <tr>
        <td><img src="https://s1.ax1x.com/2023/04/11/ppOG8Vs.png" alt="ppOG8Vs.png" border="0" /></td>
        <td><img src="https://s1.ax1x.com/2023/04/11/ppOGKxS.png" alt="ppOGKxS.png" border="0" /></td>
    </tr>
    <tr>
        <td><img src="https://s1.ax1x.com/2023/04/11/ppOGlrQ.png" alt="ppOGlrQ.png" border="0" /></td>
        <td><img src="https://s1.ax1x.com/2023/04/11/ppOGQKg.png" alt="ppOGQKg.png" border="0" /></td>
    </tr>
    <tr>
        <td><img src="https://s1.ax1x.com/2023/04/11/ppOG1bj.png" alt="ppOG1bj.png" border="0" /></td>
        <td><img src="https://oscimg.oschina.net/oscnet/up-936ec82d1f4872e1bc980927654b6007307.png"/></td>
    </tr>
	<tr>
        <td><img src="https://s1.ax1x.com/2023/04/11/ppOGGan.png" alt="ppOGGan.png" border="0" /></td>
    </tr>	 
</table>

## 二次开发流程
    1、建议一定要二次开发，页面的名称是写死在程序里的，git clone到本地后，全局搜索 小学 并修改名称
    2、二次开发前的准备 mysql 5.7，redis，jdk 1.8，开发工具：eclipse或者IntelliJ IDEA，安装npm
    3、创建数据库，并导入sql文件夹下的ajxx-score.sql
    4、配置ruoyi-admin包下的application-druid.yml下数据库链接地址，修改数据库名称、数据库用户名、密码
        修改application.yml下的port：为8080，方便二次开发
    5、进入ruoyi-yi包，命令行运行npm install安装前端依赖
    进行二次开发
## 打包部署
    1、修改application.yml下的port，修改运行端口，
    2、修改application.yml下的ruoyi：profile 视服务器（windows / linux）情况修改上传文件存放地址
    3、修改application.yml下的swagger：pathMapping 为 prod-api
    4、修改ruoyi-ui包下的vue.config.js的target，修改为刚刚 1 中配置的端口号
    5、运行打包命令 mvn clean package打包jar包；
        运行build:prod 打包前端页面
##我想直接用现成的怎么办
    下载VMware 虚拟机，下载
    
<p>  https://cowtransfer.com/s/25a44e6f71384b 点击链接查看 [ Ubuntu cjgl ] ，或访问奶牛快传 cowtransfer.com 输入传输口令 zmw15z 查看；</p>
    
    在vmware中选择打开虚拟机，打开选择刚刚下载文件中的.vmx文件，即可
    用户名：admin
    密码：admin123


## 平台简介

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
