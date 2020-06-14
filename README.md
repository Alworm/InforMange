# InforMange

### 适用性描述
适合用于课程设计或毕业设计的`JavaWeb`项目


### 功能介绍

* 用户信息管理
* URL拦截器
* 管理员登陆
* 用户的CRUD

### 环境依赖

* Tomcat 8.5.31
* `MySQL` 8.0.16
* IDEA
* Windows 10

### 使用技术
`jsp`,`BootStrap`, `jQuery`, `druid`,`servlet`

### 项目部署

1. 在`cmd` 中输入 
    `mysql -uroot -p yourpassword` 进入数据库, 复制test_web 包下面的 `database.sql` 中的内容在`cmd`中粘贴

2. 导入成功后,修改 `test_web/src/druid.properties`中的`username`和`password`为你自己的数据库的用户名和密码

3. 运行测试

4. 运行界面中点击服务可以跳转到功能界面, 用户名和密码如下
	`username` : `Alworm`
	`password` : `123`

