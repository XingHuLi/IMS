# 教务管理系统

本项目为南京理工大学紫金学院教务管理系统，分为管理员端，学生端，教师端，实现了根据学工号登录、登录验证、信息管理、选课管理、成绩管理等功能。
- 数据库迁移

  执行以下数据库迁移命令，会自动创建好在Model/models.py 文件中已定义的表。

  ```shell
  python manage.py makemigrations
  python manage.py migrate
  ```
  #### 安装依赖
```
npm install
```

#### 前端运行
```
npm run serve
```
