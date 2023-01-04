/*
 Navicat MySQL Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : schoolnew1

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 04/01/2023 20:37:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add college table', 1, 'add_collegetable');
INSERT INTO `auth_permission` VALUES (2, 'Can change college table', 1, 'change_collegetable');
INSERT INTO `auth_permission` VALUES (3, 'Can delete college table', 1, 'delete_collegetable');
INSERT INTO `auth_permission` VALUES (4, 'Can view college table', 1, 'view_collegetable');
INSERT INTO `auth_permission` VALUES (5, 'Can add course table', 2, 'add_coursetable');
INSERT INTO `auth_permission` VALUES (6, 'Can change course table', 2, 'change_coursetable');
INSERT INTO `auth_permission` VALUES (7, 'Can delete course table', 2, 'delete_coursetable');
INSERT INTO `auth_permission` VALUES (8, 'Can view course table', 2, 'view_coursetable');
INSERT INTO `auth_permission` VALUES (9, 'Can add user', 3, 'add_user');
INSERT INTO `auth_permission` VALUES (10, 'Can change user', 3, 'change_user');
INSERT INTO `auth_permission` VALUES (11, 'Can delete user', 3, 'delete_user');
INSERT INTO `auth_permission` VALUES (12, 'Can view user', 3, 'view_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add teacher table', 4, 'add_teachertable');
INSERT INTO `auth_permission` VALUES (14, 'Can change teacher table', 4, 'change_teachertable');
INSERT INTO `auth_permission` VALUES (15, 'Can delete teacher table', 4, 'delete_teachertable');
INSERT INTO `auth_permission` VALUES (16, 'Can view teacher table', 4, 'view_teachertable');
INSERT INTO `auth_permission` VALUES (17, 'Can add student table', 5, 'add_studenttable');
INSERT INTO `auth_permission` VALUES (18, 'Can change student table', 5, 'change_studenttable');
INSERT INTO `auth_permission` VALUES (19, 'Can delete student table', 5, 'delete_studenttable');
INSERT INTO `auth_permission` VALUES (20, 'Can view student table', 5, 'view_studenttable');
INSERT INTO `auth_permission` VALUES (21, 'Can add open table', 6, 'add_opentable');
INSERT INTO `auth_permission` VALUES (22, 'Can change open table', 6, 'change_opentable');
INSERT INTO `auth_permission` VALUES (23, 'Can delete open table', 6, 'delete_opentable');
INSERT INTO `auth_permission` VALUES (24, 'Can view open table', 6, 'view_opentable');
INSERT INTO `auth_permission` VALUES (25, 'Can add score table', 7, 'add_scoretable');
INSERT INTO `auth_permission` VALUES (26, 'Can change score table', 7, 'change_scoretable');
INSERT INTO `auth_permission` VALUES (27, 'Can delete score table', 7, 'delete_scoretable');
INSERT INTO `auth_permission` VALUES (28, 'Can view score table', 7, 'view_scoretable');
INSERT INTO `auth_permission` VALUES (29, 'Can add log entry', 8, 'add_logentry');
INSERT INTO `auth_permission` VALUES (30, 'Can change log entry', 8, 'change_logentry');
INSERT INTO `auth_permission` VALUES (31, 'Can delete log entry', 8, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (32, 'Can view log entry', 8, 'view_logentry');
INSERT INTO `auth_permission` VALUES (33, 'Can add permission', 9, 'add_permission');
INSERT INTO `auth_permission` VALUES (34, 'Can change permission', 9, 'change_permission');
INSERT INTO `auth_permission` VALUES (35, 'Can delete permission', 9, 'delete_permission');
INSERT INTO `auth_permission` VALUES (36, 'Can view permission', 9, 'view_permission');
INSERT INTO `auth_permission` VALUES (37, 'Can add group', 10, 'add_group');
INSERT INTO `auth_permission` VALUES (38, 'Can change group', 10, 'change_group');
INSERT INTO `auth_permission` VALUES (39, 'Can delete group', 10, 'delete_group');
INSERT INTO `auth_permission` VALUES (40, 'Can view group', 10, 'view_group');
INSERT INTO `auth_permission` VALUES (41, 'Can add content type', 11, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (42, 'Can change content type', 11, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (43, 'Can delete content type', 11, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (44, 'Can view content type', 11, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (45, 'Can add session', 12, 'add_session');
INSERT INTO `auth_permission` VALUES (46, 'Can change session', 12, 'change_session');
INSERT INTO `auth_permission` VALUES (47, 'Can delete session', 12, 'delete_session');
INSERT INTO `auth_permission` VALUES (48, 'Can view session', 12, 'view_session');

-- ----------------------------
-- Table structure for collegetable
-- ----------------------------
DROP TABLE IF EXISTS `collegetable`;
CREATE TABLE `collegetable`  (
  `college_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `college_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`college_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of collegetable
-- ----------------------------
INSERT INTO `collegetable` VALUES ('CL01', '计算机科学与技术学院');
INSERT INTO `collegetable` VALUES ('CL02', '材料学院');
INSERT INTO `collegetable` VALUES ('CL03', '文学院');
INSERT INTO `collegetable` VALUES ('CL04', '物理学院');
INSERT INTO `collegetable` VALUES ('CL05', '环化学院');
INSERT INTO `collegetable` VALUES ('CL06', '电影学院');
INSERT INTO `collegetable` VALUES ('CL07', '音乐学院');
INSERT INTO `collegetable` VALUES ('CL08', '机自学院');
INSERT INTO `collegetable` VALUES ('CL09', '马克思主义学院');
INSERT INTO `collegetable` VALUES ('CL10', '美术学院');
INSERT INTO `collegetable` VALUES ('CL11', '经管学院');
INSERT INTO `collegetable` VALUES ('CL12', '通信学院');

-- ----------------------------
-- Table structure for coursetable
-- ----------------------------
DROP TABLE IF EXISTS `coursetable`;
CREATE TABLE `coursetable`  (
  `course_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `course_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `credit` int NOT NULL,
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coursetable
-- ----------------------------
INSERT INTO `coursetable` VALUES ('C001', '计算机组成原理', 2);
INSERT INTO `coursetable` VALUES ('C002', '离散数学', 2);
INSERT INTO `coursetable` VALUES ('C003', '面向对象C++程序设计', 2);
INSERT INTO `coursetable` VALUES ('C004', '数据库系统', 2);
INSERT INTO `coursetable` VALUES ('C005', '大学英语', 2);
INSERT INTO `coursetable` VALUES ('C006', '中国近代史纲要', 2);
INSERT INTO `coursetable` VALUES ('C007', '计算机工程数学', 2);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_User_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_User_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (8, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (10, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (9, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (11, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (1, 'Model', 'collegetable');
INSERT INTO `django_content_type` VALUES (2, 'Model', 'coursetable');
INSERT INTO `django_content_type` VALUES (6, 'Model', 'opentable');
INSERT INTO `django_content_type` VALUES (7, 'Model', 'scoretable');
INSERT INTO `django_content_type` VALUES (5, 'Model', 'studenttable');
INSERT INTO `django_content_type` VALUES (4, 'Model', 'teachertable');
INSERT INTO `django_content_type` VALUES (3, 'Model', 'user');
INSERT INTO `django_content_type` VALUES (12, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'Model', '0001_initial', '2022-12-01 14:00:17.712753');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0001_initial', '2022-12-01 14:00:17.821564');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2022-12-01 14:00:17.973378');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2022-12-01 14:00:17.990757');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-01 14:00:18.009073');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2022-12-01 14:00:18.181801');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0001_initial', '2022-12-01 14:00:18.525370');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2022-12-01 14:00:18.623361');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0003_alter_user_email_max_length', '2022-12-01 14:00:18.640863');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0004_alter_user_username_opts', '2022-12-01 14:00:18.658032');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0005_alter_user_last_login_null', '2022-12-01 14:00:18.675666');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0006_require_contenttypes_0002', '2022-12-01 14:00:18.688124');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2022-12-01 14:00:18.705971');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0008_alter_user_username_max_length', '2022-12-01 14:00:18.723865');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2022-12-01 14:00:18.741895');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0010_alter_group_name_max_length', '2022-12-01 14:00:18.785053');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0011_update_proxy_permissions', '2022-12-01 14:00:18.875867');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2022-12-01 14:00:18.893262');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2022-12-01 14:00:18.996656');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for opentable
-- ----------------------------
DROP TABLE IF EXISTS `opentable`;
CREATE TABLE `opentable`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `semester` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `course_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `course_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `teacher_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `OpenTable_course_id_6011d4ce_fk_CourseTable_course_id`(`course_id`) USING BTREE,
  INDEX `OpenTable_teacher_id_8ec1ef31_fk_TeacherTable_user_id`(`teacher_id`) USING BTREE,
  CONSTRAINT `OpenTable_course_id_6011d4ce_fk_CourseTable_course_id` FOREIGN KEY (`course_id`) REFERENCES `coursetable` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `OpenTable_teacher_id_8ec1ef31_fk_TeacherTable_user_id` FOREIGN KEY (`teacher_id`) REFERENCES `teachertable` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of opentable
-- ----------------------------
INSERT INTO `opentable` VALUES (47, '202203', '星期一3-4', 'C002', '1002');
INSERT INTO `opentable` VALUES (48, '202203', '星期二7-8', 'C002', '1002');
INSERT INTO `opentable` VALUES (49, '202203', '星期五1-2', 'C002', '1002');
INSERT INTO `opentable` VALUES (50, '202203', '星期一5-6', 'C003', '1003');
INSERT INTO `opentable` VALUES (51, '202203', '星期四5-6', 'C003', '1003');
INSERT INTO `opentable` VALUES (52, '202203', '星期五3-4', 'C003', '1003');
INSERT INTO `opentable` VALUES (53, '202203', '星期一7-8', 'C004', '1004');
INSERT INTO `opentable` VALUES (54, '202203', '星期四3-4', 'C004', '1004');
INSERT INTO `opentable` VALUES (55, '202203', '星期二1-2', 'C005', '1005');
INSERT INTO `opentable` VALUES (56, '202203', '星期三3-4', 'C006', '1006');
INSERT INTO `opentable` VALUES (57, '202203', '星期二5-6', 'C006', '1006');
INSERT INTO `opentable` VALUES (58, '202203', '星期四1-2', 'C006', '1006');
INSERT INTO `opentable` VALUES (59, '202203', '星期二3-4', 'C007', '1007');
INSERT INTO `opentable` VALUES (60, '202203', '星期三1-2', 'C007', '1007');
INSERT INTO `opentable` VALUES (61, '202203', '星期一1-2', 'C001', '1001');
INSERT INTO `opentable` VALUES (62, '202203', '星期五5-6', 'C001', '1001');

-- ----------------------------
-- Table structure for scoretable
-- ----------------------------
DROP TABLE IF EXISTS `scoretable`;
CREATE TABLE `scoretable`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `score` double NOT NULL,
  `open_id` int NOT NULL,
  `student_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ScoreTable_student_id_open_id_021361f3_uniq`(`student_id`, `open_id`) USING BTREE,
  INDEX `ScoreTable_open_id_69373b56_fk_OpenTable_id`(`open_id`) USING BTREE,
  CONSTRAINT `ScoreTable_open_id_69373b56_fk_OpenTable_id` FOREIGN KEY (`open_id`) REFERENCES `opentable` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ScoreTable_student_id_b7b522e3_fk_StudentTable_user_id` FOREIGN KEY (`student_id`) REFERENCES `studenttable` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scoretable
-- ----------------------------
INSERT INTO `scoretable` VALUES (156, 80, 61, '2015302440');
INSERT INTO `scoretable` VALUES (157, 70, 61, '2015302417');
INSERT INTO `scoretable` VALUES (158, 77, 61, '2015302357');
INSERT INTO `scoretable` VALUES (159, 73, 61, '2015302429');
INSERT INTO `scoretable` VALUES (160, 69, 61, '2015302350');
INSERT INTO `scoretable` VALUES (161, 74, 61, '2015302363');
INSERT INTO `scoretable` VALUES (162, 74, 47, '2015302440');
INSERT INTO `scoretable` VALUES (163, 69, 47, '2015302350');
INSERT INTO `scoretable` VALUES (164, 74, 47, '2015302357');
INSERT INTO `scoretable` VALUES (165, 61, 47, '2015302363');
INSERT INTO `scoretable` VALUES (166, 60, 47, '2015302417');
INSERT INTO `scoretable` VALUES (167, 57, 47, '2015302429');
INSERT INTO `scoretable` VALUES (168, 84, 50, '2015302350');
INSERT INTO `scoretable` VALUES (169, 79, 50, '2015302357');
INSERT INTO `scoretable` VALUES (170, 76, 50, '2015302363');
INSERT INTO `scoretable` VALUES (171, 85, 50, '2015302417');
INSERT INTO `scoretable` VALUES (172, 74, 50, '2015302429');
INSERT INTO `scoretable` VALUES (173, 63, 50, '2015302440');
INSERT INTO `scoretable` VALUES (174, 57, 53, '2015302350');
INSERT INTO `scoretable` VALUES (175, 65, 53, '2015302357');
INSERT INTO `scoretable` VALUES (176, 54, 53, '2015302363');
INSERT INTO `scoretable` VALUES (177, 84, 53, '2015302417');
INSERT INTO `scoretable` VALUES (178, 74, 53, '2015302429');
INSERT INTO `scoretable` VALUES (179, 85, 53, '2015302440');
INSERT INTO `scoretable` VALUES (180, 74, 55, '2015302350');
INSERT INTO `scoretable` VALUES (181, 65, 55, '2015302357');
INSERT INTO `scoretable` VALUES (182, 85, 55, '2015302363');
INSERT INTO `scoretable` VALUES (183, 74, 55, '2015302417');
INSERT INTO `scoretable` VALUES (184, 81, 55, '2015302429');
INSERT INTO `scoretable` VALUES (185, 74, 55, '2015302440');
INSERT INTO `scoretable` VALUES (186, 85, 56, '2015302350');
INSERT INTO `scoretable` VALUES (187, 81, 56, '2015302357');
INSERT INTO `scoretable` VALUES (188, 82, 56, '2015302363');
INSERT INTO `scoretable` VALUES (189, 81, 56, '2015302417');
INSERT INTO `scoretable` VALUES (190, 74, 56, '2015302429');
INSERT INTO `scoretable` VALUES (191, 72, 56, '2015302440');
INSERT INTO `scoretable` VALUES (192, 58, 59, '2015302350');
INSERT INTO `scoretable` VALUES (193, 57, 59, '2015302357');
INSERT INTO `scoretable` VALUES (194, 56, 59, '2015302363');
INSERT INTO `scoretable` VALUES (195, 54, 59, '2015302417');
INSERT INTO `scoretable` VALUES (196, 58, 59, '2015302429');
INSERT INTO `scoretable` VALUES (197, 60, 59, '2015302440');
INSERT INTO `scoretable` VALUES (198, 70, 61, '2015302431');
INSERT INTO `scoretable` VALUES (199, 78, 47, '2015302431');
INSERT INTO `scoretable` VALUES (200, 69, 50, '2015302431');
INSERT INTO `scoretable` VALUES (201, 76, 53, '2015302431');
INSERT INTO `scoretable` VALUES (202, 68, 55, '2015302431');
INSERT INTO `scoretable` VALUES (203, 80, 56, '2015302431');
INSERT INTO `scoretable` VALUES (204, 58, 59, '2015302431');

-- ----------------------------
-- Table structure for scoretable_logs
-- ----------------------------
DROP TABLE IF EXISTS `scoretable_logs`;
CREATE TABLE `scoretable_logs`  (
  `ScoreTable_logsid` int NOT NULL AUTO_INCREMENT,
  `oldscore` double NOT NULL,
  `newscore` double NOT NULL,
  `openid` int NOT NULL,
  `studentid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `modifytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ScoreTable_logsid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scoretable_logs
-- ----------------------------
INSERT INTO `scoretable_logs` VALUES (1, 80, 90, 61, '2015302440', '2022-12-08 10:39:50');
INSERT INTO `scoretable_logs` VALUES (2, 74, 90, 47, '2015302440', '2022-12-08 10:41:35');
INSERT INTO `scoretable_logs` VALUES (3, 68, 60, 47, '2015302417', '2022-12-08 10:45:07');
INSERT INTO `scoretable_logs` VALUES (4, 75, 70, 61, '2015302417', '2022-12-16 19:44:24');
INSERT INTO `scoretable_logs` VALUES (5, 68, 60, 47, '2015302417', '2022-12-16 19:44:58');

-- ----------------------------
-- Table structure for studenttable
-- ----------------------------
DROP TABLE IF EXISTS `studenttable`;
CREATE TABLE `studenttable`  (
  `user_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `English_class` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `college_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `StudentTable_college_id_699fa966_fk_CollegeTable_college_id`(`college_id`) USING BTREE,
  CONSTRAINT `StudentTable_college_id_699fa966_fk_CollegeTable_college_id` FOREIGN KEY (`college_id`) REFERENCES `collegetable` (`college_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `StudentTable_user_id_3a2b688e_fk_User_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of studenttable
-- ----------------------------
INSERT INTO `studenttable` VALUES ('2015302350', 'B', 'CL01');
INSERT INTO `studenttable` VALUES ('2015302357', 'A', 'CL01');
INSERT INTO `studenttable` VALUES ('2015302363', 'B', 'CL01');
INSERT INTO `studenttable` VALUES ('2015302417', 'B', 'CL01');
INSERT INTO `studenttable` VALUES ('2015302429', 'B', 'CL01');
INSERT INTO `studenttable` VALUES ('2015302431', 'B', 'CL01');
INSERT INTO `studenttable` VALUES ('2015302440', 'B', 'CL01');

-- ----------------------------
-- Table structure for teachertable
-- ----------------------------
DROP TABLE IF EXISTS `teachertable`;
CREATE TABLE `teachertable`  (
  `user_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `position` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `college_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `TeacherTable_college_id_8b8b3f93_fk_CollegeTable_college_id`(`college_id`) USING BTREE,
  CONSTRAINT `TeacherTable_college_id_8b8b3f93_fk_CollegeTable_college_id` FOREIGN KEY (`college_id`) REFERENCES `collegetable` (`college_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `TeacherTable_user_id_23db99a5_fk_User_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teachertable
-- ----------------------------
INSERT INTO `teachertable` VALUES ('1001', '讲师', 'CL01');
INSERT INTO `teachertable` VALUES ('1002', '讲师', 'CL01');
INSERT INTO `teachertable` VALUES ('1003', '讲师', 'CL01');
INSERT INTO `teachertable` VALUES ('1004', '副教授', 'CL01');
INSERT INTO `teachertable` VALUES ('1005', '讲师', 'CL01');
INSERT INTO `teachertable` VALUES ('1006', '讲师', 'CL01');
INSERT INTO `teachertable` VALUES ('1007', '教授', 'CL01');
INSERT INTO `teachertable` VALUES ('1011', '教授', 'CL01');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `user_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `index_name`(`user_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$ysseSyPwRAQcoFhD0KOkEk$ETlEO+Yi4ZfuaS7WIPUvkaiM0Ii5Er4hicrX+DPsom4=', NULL, '1001', '桑天一', 'T', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$Clv3wF7h4ztYYx9UOiOPlB$hXd1HkVeyXPpnw0IBbdaDdJguwuv3at23pyh2P8HtjY=', NULL, '1002', '王伊文', 'T', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$tJRUjzB1908C4vZk45Y2Zx$9v5TsEhZBtelptvXL5IknhQ7NdiUwKw2OsWGpFpZvoE=', NULL, '1003', '王柯', 'T', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$bNTRyfE8f99tRgNNDsifeN$D5JJbb4LUBiNg54n+9Ji2nakxe9vt1IjGmAjyjFa3oY=', NULL, '1004', '任凯', 'T', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$FFguoeKadwqRuKfqeO1U5m$ZIjIyiKMV25+8kfTmq8utVh0TZTCtb1SfKPA5VHw5+c=', NULL, '1005', '张弛', 'T', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$KbGVEzeNa4EMuidwnpq17Q$vX/mM9j1l8RoJ/3f7gFjvCvCiAQCwGP/gPiPyZsiQdA=', NULL, '1006', '张新义', 'T', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$XrkQR9SixjGfo3hMdx66bs$S5Zwh6g60qcRl7Ijjz4AEiO4ZuTiK+Fbl6x+wT7XB6w=', NULL, '1007', '陶幼明', 'T', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$hu0ARqoYib3GsqMUyadAKX$OMLIYfS3lTlN1jF6WOHMZcYoF3DC+ju6KfkUQlBUOpQ=', NULL, '1011', 'zzq', 'S', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$00Z4JSIrALF8Gxcy8YyVvq$fNJaDll+egsRkBIDG+lhAisnybR/6Gj/MTtrypnPlc4=', NULL, '2015302350', '杨志千', 'S', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$MutdbFvg596v2unBVYc4My$dAmTmstS+ZLWNv6tbRvWr4YcP85ghMrdUq25Lj25Bt0=', NULL, '2015302357', '张衡', 'S', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$yzAiQgIG3eDta6isrTQ95S$boEpkRZO6CKV2znGomR30wLk4rCTy1L56134Z3osufw=', NULL, '2015302363', '章国瑞', 'S', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$XtlxM1OYpvvP53J42h5TJ3$mTm9HvOe5+p0XnQfalxeEcBjkmTjgS63k26kqkQKae8=', NULL, '2015302417', '陈梦杰', 'S', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$pC2mHZvUegRN3sTh5c8B0D$ylzfbEDfkfErYiSp+23N1ZCddV3UXh2kHEspV8m6od0=', NULL, '2015302429', '高杰', 'S', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$J16gJjZ6bdZvSfOZ8nkrUw$CuS87tEe+25Q6iRW7zoac2yviDse8SQTp3zg8dV165E=', NULL, '2015302431', '韩飞', 'S', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$9nVomocisvWJMaQZJyQVbO$oZpIwLnbv1cVAbkB0bIbaQaqARNc9ExX9Z3hU/o/LQU=', NULL, '2015302440', '李兴虎', 'S', 0, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$U8kMyQ5EaOrsAQa6f4Rqzj$sHU0UeC6TXjyk4v0qRZW73tdACHd+l0LrtZDisN6HmE=', NULL, '9001', 'admin123', 'A', 1, 1);
INSERT INTO `user` VALUES ('pbkdf2_sha256$260000$IFnADmn2qdVroaxiuyWZPY$X/VQtdOYlxF/fCKd5Zqk7nywTjsVLLvNnhV2CLIiwX8=', NULL, '9002', '李兴', 'A', 1, 1);

-- ----------------------------
-- View structure for avg_score
-- ----------------------------
DROP VIEW IF EXISTS `avg_score`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `avg_score` AS select `u`.`user_name` AS `user_name`,`s`.`student_id` AS `student_id`,avg(`s`.`score`) AS `avg_score` from ((`scoretable` `s` join `opentable` `o`) join `user` `u`) where (`s`.`student_id` in (select `studenttable`.`user_id` from `studenttable`) and (`o`.`id` = `s`.`open_id`) and (`s`.`student_id` = `u`.`user_id`)) group by `s`.`student_id`;

-- ----------------------------
-- View structure for courseanalysis
-- ----------------------------
DROP VIEW IF EXISTS `courseanalysis`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `courseanalysis` AS select `c`.`course_id` AS `course_id`,`c`.`course_name` AS `course_name`,`c`.`credit` AS `credit`,`o`.`semester` AS `semester`,`o`.`teacher_id` AS `teacher_id`,`u`.`user_name` AS `user_name`,`o`.`course_time` AS `course_time`,count(`s`.`student_id`) AS `student_num`,sum((case when (`s`.`score` >= 60) then 1 else 0 end)) AS `pass_num`,max(`s`.`score`) AS `score_max`,min(`s`.`score`) AS `score_min`,avg(`s`.`score`) AS `score_avg` from (((`opentable` `o` join `scoretable` `s`) join `coursetable` `c`) join `user` `u`) where ((`s`.`open_id` = `o`.`id`) and (`c`.`course_id` = `o`.`course_id`) and (`u`.`user_id` = `o`.`teacher_id`) and (`o`.`semester` = 202203)) group by `o`.`course_id`;

-- ----------------------------
-- Triggers structure for table scoretable
-- ----------------------------
DROP TRIGGER IF EXISTS `score_logs`;
delimiter ;;
CREATE TRIGGER `score_logs` BEFORE UPDATE ON `scoretable` FOR EACH ROW BEGIN
INSERT INTO scoreTable_logs(ScoreTable_logsid,oldscore,newscore,openid,studentid,modifytime)
VALUES(ScoreTable_logsid,old.score,new.score,old.open_id,old.student_id,NOW());
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
