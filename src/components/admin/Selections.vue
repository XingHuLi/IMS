<template>
  <div>
    <!-- 面包屑导航区域 -->
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{ path: '/admin/home' }"
        >首页</el-breadcrumb-item
      >
      <el-breadcrumb-item>教务管理</el-breadcrumb-item>
      <el-breadcrumb-item>选课列表</el-breadcrumb-item>
    </el-breadcrumb>
    <!-- 卡片视图 -->
    <el-card class="box-card">
      <!-- 学生选课结果查询视图 -->
      <el-form :inline="true">
        <el-form-item label="学年">
          <el-input
            placeholder="请输入学年"
            v-model="searchQuery.semester_year"
          ></el-input>
        </el-form-item>
        <el-form-item label="学期">
          <el-select
            placeholder="请选择学期"
            v-model="searchQuery.semester_season"
          >
            <el-option
              v-for="item in semesterMap"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            >
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="课程号">
          <el-input
            placeholder="请输入课程号"
            v-model="searchQuery.course"
          ></el-input>
        </el-form-item>
        <el-form-item label="学号">
          <el-input
            placeholder="请输入学号"
            v-model="searchQuery.student"
          ></el-input>
        </el-form-item>
        <!-- <el-form-item label="教师号">
          <el-input
            placeholder="请输入教师号"
            v-model="searchQuery.teacher"
          ></el-input>
        </el-form-item> -->
        <el-form-item>
          <el-button type="primary" icon="el-icon-search" @click="getScoreList(true)">查询选课
          </el-button>
        </el-form-item>
      </el-form>

      <!-- 列表区域 -->
      <el-table :data="scoreListShow" border stripe>
        <!-- 自定义索引 -->
        <el-table-column type="index"> </el-table-column>
        <el-table-column
          prop="student.user.user_id"
          label="学号"
        ></el-table-column>
        <el-table-column
          prop="student.user.user_name"
          label="姓名"
        ></el-table-column>
        <el-table-column
          prop="open.course.course_id"
          label="课程号"
        ></el-table-column>
        <el-table-column
          prop="open.course.course_name"
          label="课程名"
        ></el-table-column>
        <el-table-column
          prop="open.course_time"
          label="上课时间"
        ></el-table-column>
        <el-table-column
          prop="open.course.credit"
          label="学分"
        ></el-table-column>
        <el-table-column
          prop="open.teacher.user.user_id"
          label="教师号"
        ></el-table-column>
        <el-table-column
          prop="open.teacher.user.user_name"
          label="教师名"
        ></el-table-column>
        <el-table-column label="操作">
          <template slot-scope="scope">
            <!-- <el-button
              type="primary"
              icon="el-icon-edit"
              size="mini"
              @click="showEditDialog(scope.row)"
            >
            </el-button> -->
            <el-button
              type="danger"
              icon="el-icon-delete"
              size="mini"
              @click="deleteScore(scope.row)"
            >
            </el-button>
          </template>
        </el-table-column>
      </el-table>
      <!-- 分页栏 -->
      <el-pagination
        class="pagination"
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :current-page="currentPage"
        :page-sizes="[5, 10, 15]"
        :page-size="pageSize"
        layout="total, sizes, prev, pager, next, jumper"
        :total="total"
      >
      </el-pagination>
    </el-card>
    <!-- 添加选课对话框 -->
    <el-dialog
      title="添加选课"
      :visible.sync="addDialogVisible"
      width="50%"
      @close="addDialogClosed"
    >
      <!-- 内容主题区域 -->
      <el-form
        :model="addForm"
        :rules="addFormRules"
        ref="addFormRef"
        label-width="90px"
      >
        <el-form-item label="学号" prop="student">
          <el-input
            v-model="addForm.student"
            placeholder="请输入学号"
            clearable
          ></el-input>
        </el-form-item>
        <el-form-item label="开课号" prop="open">
          <el-input
            v-model="addForm.open"
            placeholder="请输入开课号"
            clearable
          ></el-input>
        </el-form-item>
      </el-form>
      <!-- 底部区域 -->
      <span slot="footer" class="dialog-footer">
        <el-button @click="addDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="addScore"> 确 定 </el-button>
      </span>
    </el-dialog>
  </div>
</template>
<script>
export default {
  data() {
    return {
      semesterMap: [
        { value: '01', label: '春季' },
        { value: '02', label: '夏季' },
        { value: '03', label: '秋季' },
        { value: '04', label: '冬季' },
      ],
      searchQuery: {
        semester_year: '2022',
        semester_season: '03',
        course: '',
        teacher: '',
        student:''
      },
      scoreList: [], // 选课列表
      scoreListShow: [], // 展示的选课列表
      total: 0, // 选课列表总数
      currentPage: 1, // 当前页面
      pageSize: 5, // 每页展示列表数
      // 控制添加对话框显示与隐藏
      addDialogVisible: false,
      // 添加选课的表单数据
      addForm: {
        student: '',
        open: '',
      },
      // 添加表单的验证规则
      addFormRules: {
        student: [
          { required: true, message: '请输入学号', trigger: 'blur' },
          {
            min: 10,
            max: 10,
            message: '学号长度为10字符',
            trigger: 'blur',
          },
        ],
        open: [
          { required: true, message: '请输入开课号', trigger: 'blur' },
          {
            min: 1,
            max: 4,
            message: '开课号长度在1~4个字符之间',
            trigger: 'blur',
          },
        ],
      },
    }
  },
  created() {
    this.getScoreList()
  },
  methods: {
    // 获取选课列表
    async getScoreList() {
      var query = {}
      if (this.searchQuery.course != '') {
        query.course = this.searchQuery.course
      }
      if (this.searchQuery.student != '') {
        query.student = this.searchQuery.student
      }
      if (
        this.searchQuery.semester_year != '' &&
        this.searchQuery.semester_season != ''
      ) {
        query.semester =
          this.searchQuery.semester_year + this.searchQuery.semester_season
      }
      const { data: res } = await this.$http.get('admin/score/search_detail/', {
        params: query,
      })
      if (res.status !== 200) return this.$message.error('获取选课列表失败')
      this.scoreList = res.data.Scores
      this.total = res.data.total

      this.currentPage = 1
      var start = 0
      var end = start + this.pageSize
      this.scoreListShow = res.data.Scores.slice(start, end)
      console.log(res)
    },
    // 监听对话框关闭事件
    addDialogClosed() {
      // 重置表单
      this.$refs.addFormRef.resetFields()
    },
    // 添加选课
    addScore() {
      this.$refs.addFormRef.validate(async (valid) => {
        if (!valid) return
        // 校验正确则发起请求
        const { data: res } = await this.$http.post('admin/score/create/', [
          this.addForm,
        ])
        if (res.status === 200) this.$message.success('添加成功！')
        else this.$message.error('添加失败！\n' + res.detail[0])
        this.addDialogVisible = false
        // 重新获取选课列表
        this.getScoreList()
      })
    },
    // 删除选课
    deleteScore(row) {
      // 弹框提示
      this.$confirm('此操作将永久删除该选课, 是否继续?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning',
      })
        .then(async () => {
          // 确定删除
          const { data: res } = await this.$http.delete('admin/score/delete/', {
            params: {
              student: row.student.user.user_id,
              open: row.open.id,
            },
          })
          if (res.status != 200)
            return this.$message({
              type: 'error',
              message: '删除失败!',
            })

          this.$message({
            type: 'success',
            message: '删除成功!',
          })
          // 刷新选课列表
          this.getScoreList()
        })
        .catch(() => {
          this.$message({
            type: 'info',
            message: '已取消删除',
          })
        })
    },
    // 监听分页变化
    handleSizeChange(pageSize) {
      this.pageSize = pageSize
      let start = 0
      let end = start + pageSize
      this.scoreListShow = this.scoreList.slice(start, end)
    },
    // 监听当前页面变化
    handleCurrentChange(currentPage) {
      this.currentPage = currentPage
      let start = (currentPage - 1) * this.pageSize
      let end = start + this.pageSize
      this.scoreListShow = this.scoreList.slice(start, end)
    },
  },
}
</script>
<style lang="less" scoped>
.select {
  width: 120px;
}
.pagination {
  margin-top: 15px;
}
.text {
  display: flex;
  justify-content: center;
  align-items: center;
}
</style>
