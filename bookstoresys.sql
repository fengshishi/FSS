/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : goods

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 27/06/2019 17:52:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `address_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NULL DEFAULT NULL,
  `address_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_provice` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_city` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_xianqu` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`address_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (18, 7, '小花', '安徽省', '合肥市', '瑶海区', '宏源小区', '15123652563');
INSERT INTO `address` VALUES (24, 9, '王源', '广西', '来宾市', '兴宾区', '滨江园小区', '18276105324');
INSERT INTO `address` VALUES (25, 12, '易烊千玺', '北京市', '北京市市辖区', '东城区', '富亮小区', '15077428641');
INSERT INTO `address` VALUES (27, 16, '张三', '广西', '来宾市', '兴宾区', '滨江园小区', '15689475651');
INSERT INTO `address` VALUES (28, 15, '李四', '广东', '广州市', '白云区', '锦绣小区', '');
INSERT INTO `address` VALUES (29, 19, 'huahua', '山西省', '太原市', '小店区', 'sdfdsfsd', '18214255395');
INSERT INTO `address` VALUES (30, 20, 'lala', '广西壮族自治区', '来宾市', '兴宾区', 'gdfgdf', '18214255392');
INSERT INTO `address` VALUES (31, 21, '马有琳', '北京市', '北京市市辖区', '东城区', '广西科技师范学院', '18214255914');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'root', 'root');
INSERT INTO `admin` VALUES (2, '花花', 'root');
INSERT INTO `admin` VALUES (3, '杨洋', 'root');
INSERT INTO `admin` VALUES (4, '许嵩', 'root');
INSERT INTO `admin` VALUES (5, '赵莉', 'root');

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers`  (
  `answers_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `answers_type` int(10) NULL DEFAULT NULL,
  `answers_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answers_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answers_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`answers_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `answers_type`(`answers_type`) USING BTREE,
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`answers_type`) REFERENCES `answerstype` (`antype_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES (1, 7, 2, 'python', '什么是Python？', '2019-06-03 15:32:37');
INSERT INTO `answers` VALUES (2, 7, 3, 'java', '这本什么时候到货呢', '2019-06-03 15:32:37');
INSERT INTO `answers` VALUES (7, 8, 1, 'c++', '怎么学习c++?', '2019-06-27 09:27:35');
INSERT INTO `answers` VALUES (8, 12, 1, '前端', '前端有什么好书推荐', '2019-06-27 09:28:20');
INSERT INTO `answers` VALUES (9, 12, 1, '前端', '前端难学吗？', '2019-06-27 09:30:27');
INSERT INTO `answers` VALUES (10, 12, 1, 'java', 'java有什么简单的入门书籍吗', '2019-06-27 09:29:43');
INSERT INTO `answers` VALUES (11, 12, 1, '网络工程', '网络工程的书是现货吗？', '2019-06-27 09:30:22');
INSERT INTO `answers` VALUES (12, 18, 5, '发票', '可以提供发票吗？', '2019-06-18 10:51:05');
INSERT INTO `answers` VALUES (13, 17, 4, '快递', '发什么快递呢？', '2019-06-25 10:51:57');
INSERT INTO `answers` VALUES (14, 17, 4, '快递', '可以发圆通吗？', '2019-06-27 10:52:39');
INSERT INTO `answers` VALUES (15, 19, 1, 'hkhj', 'khkj', '2019-06-28 06:36:32');
INSERT INTO `answers` VALUES (16, 20, 1, 'hkhj', 'sdfa', '2019-06-28 07:10:43');
INSERT INTO `answers` VALUES (17, 21, 4, '货物', '怎么送', '2019-06-28 07:26:23');

-- ----------------------------
-- Table structure for answerstype
-- ----------------------------
DROP TABLE IF EXISTS `answerstype`;
CREATE TABLE `answerstype`  (
  `antype_id` int(11) NOT NULL AUTO_INCREMENT,
  `antype_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`antype_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of answerstype
-- ----------------------------
INSERT INTO `answerstype` VALUES (1, '商品咨询');
INSERT INTO `answerstype` VALUES (2, '支付类型');
INSERT INTO `answerstype` VALUES (3, '退货问题');
INSERT INTO `answerstype` VALUES (4, '配送问题');
INSERT INTO `answerstype` VALUES (5, '发票问题');
INSERT INTO `answerstype` VALUES (6, '促销问题');

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `books_id` int(11) NOT NULL AUTO_INCREMENT,
  `books_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `books_writer` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `books_concern` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `books_concerndate` date NULL DEFAULT NULL,
  `books_price` double(10, 2) NULL DEFAULT NULL,
  `books_num` int(11) NULL DEFAULT NULL,
  `books_images` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `books_category` int(10) NULL DEFAULT NULL,
  `books_business` int(40) NULL DEFAULT NULL,
  `books_introduce` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`books_id`) USING BTREE,
  INDEX `books_category`(`books_category`) USING BTREE,
  INDEX `books_busniss`(`books_business`) USING BTREE,
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`books_business`) REFERENCES `business` (`business_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`books_category`) REFERENCES `books_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (17, '校园秘史', '唐娜·塔特（美） 著', ' 人民文学出版社', '2007-01-01', 37.70, 469, '/images/books/d25ef79824a9464092cf8742b0697ed3.jpg', 1, 3, 'dsfd');
INSERT INTO `books` VALUES (20, '名家讲中国古典小说', '五洲传播出版社 著', '五洲传播出版社', '2014-12-01', 129.00, 196, '/images/books/a5cab8f01c4f432889a1de58b2165f2b.jpg', 2, 3, 'cxvxc');
INSERT INTO `books` VALUES (22, '中国年度作品:2015:推理小说', '李文主编 著', '现代出版社', '2019-02-01', 31.20, 99, '/images/books/62939686baab47e3bb8ecff8368ee2ff.jpg', 3, 3, '本书是一部推理小说集，收录了王稼骏、罗四、凛等14位作家的14篇推理小说作品。这些作品情节跌宕，推理严密，形象鲜明，语言流畅，展示出文学作品特有的魅力。本小说集由2015年度出版的我国推理类杂志《理》上百篇推理小说中编选而成，视域广阔，旨在全景呈现。');
INSERT INTO `books` VALUES (23, '2017中国年度作品:微型小说', '冰峰 著', ' 现代出版社', '2018-03-01', 23.90, 198, '/images/books/d9c53e385efb4d4f89e92f1f33dbeff8.jpg', 3, 3, '本书由微型小说界选家从全国2017年发表的微型小说中精选而成，视域广阔，旨在检阅当年度微型小说的创作实绩。');
INSERT INTO `books` VALUES (24, '中国当代儿童文学小说十家 看望', '梅子涵 著', '云南出版集团公司 晨光出版社', '2018-03-01', 20.30, 198, '/images/books/b07dde59d40441f3aad89fc2fcbcfb68.jpg', 4, 3, '该书收录了儿童文学家、儿童文学推广人梅子涵的二十二篇短篇小说，集合了他多年创作的精华，作品中的文字充盈着童年的精彩和自由自在，善于在一种看似随意的构架和儿童式散漫而妙趣横生的叙述中传递饱满的儿童形象，表达自己的理念和主题，是一套好看、有趣、俏皮的读物，温情感动，风格简洁而不失童趣。');
INSERT INTO `books` VALUES (25, '第三维度：平民理论视野下的中国当代小说', '刘志权著 著', '人民出版社', '2016-01-01', 70.30, 100, '/images/books/265979f430e24faba7bdd1180e1fab5f.jpg', 4, 3, '在本书中阿里安娜?赫芬顿敞开心扉，坦诚地探讨了自己在管理时间、安排工作和养育两个女儿时遇到的挑战——职场的各种期限，家庭的各种危机；她曾自以为长袖善舞，终于在身体垮掉之后幡然醒悟。本书借鉴了心理学、运动学、睡眠和生理学领域**的突破性科研成果，展示了冥想、正念、离线、给予的深刻影响。');
INSERT INTO `books` VALUES (26, '70年代悦悦是这么长大的', '周国平　主，卢悦　 著', ' 浙江少儿', '2013-12-01', 63.00, 49, '/images/books/5c5917d55bff43f4ab148d3a59963404.jpg', 5, 3, '每个人心中都藏着珍贵的童年记忆。童年是人生的黎明，万物在晨曦里闪放着迷人的光辉。这光辉并未消散，在我们的记忆中，它永远笼罩着我们的童年岁月。所以，一个人无论到了什么年龄，回忆起童年岁月，心中都会有莫名的感动和惆怅。\r\n　　每个人的童年记忆又是个体化的，并且必然会染上时代的色彩。在不同年代度过童年，童年生活及其留下的记忆会很不同。对于同一个年代，儿童和成人的视角也会很不同。映照在儿童的眼睛里，相关年代的社会场景和风俗会呈现丰富而有趣的细节，从而为历史记录提供了一个特殊的角度。');
INSERT INTO `books` VALUES (27, '20年代民国女孩子淑英子', '周国平　主，章咏　 著', '浙江少儿', '2013-12-01', 72.00, 100, '/images/books/57230cd950fd45ccb631aa173fa06df1.jpg', 5, 3, '　这是一套儿童文学非虚构的纪实故事，往事悠悠、岁月悠悠，纯真而本真的文字写就100年孩子的故事。9位北京籍儿童的作者，叙述个体童年史，娓娓道来，亲切平实。年代涵盖上个世纪1910年至2000年近百年的历史记录。');
INSERT INTO `books` VALUES (28, '龙江当代文学大系：民间文学卷', '冯毓云，罗振亚主编 著', '北方文艺出版社', '2019-01-01', 93.40, 99, '/images/books/13f9d398096d4c1db42542bc64448c9b.jpg', 6, 3, '《龙江当代文学大戏》具有填补空白的拓荒意义，在黑土地上还是第一次。它规模宏大，架构科学，具体分小说卷、诗歌卷、散文卷、戏剧文学卷、理论与批评卷、报告文学卷、儿童文学卷、曲艺戏曲卷、翻译文学卷、影视文学卷、民间文学卷等，共十一卷，每卷前设有万字左右的序言，');
INSERT INTO `books` VALUES (29, '中国俗文学史:精装索引版', ' 郑振铎 著', ' 中国和平出版社', '2014-05-01', 55.00, 225, '/images/books/e67b25a8fc964e50b01013b081bc5b3d.jpg', 6, 3, '俗文学史是中国历史文化长河中的一颗明珠，也是中华民族智慧的结晶。但是社会地发展让人们逐渐忘记了历史传统文化。鉴于此，我们有必要将这些文化发扬光大，让其博大精深的一面展现到大众面前。同类图书产品形式相对单一，不能引起消费者的购买热情，本书设计新颖，适合广大读者阅读，是学习中国传统文化不可或缺的资料。');
INSERT INTO `books` VALUES (30, '声乐演唱艺术理论与舞台表演实践探索', '何剑康 张宏磊 张永刚 著', '中国纺织出版社', '2018-02-01', 40.00, 224, '/images/books/8f987e4fed81449ca48fc77c51b40cf1.jpg', 7, 3, '艺术类');
INSERT INTO `books` VALUES (31, '古典与现代的碰撞:音乐剧艺术理论及其与美声唱法的融合研究', '宋柏汶，谢秋菊著 著', '中国水利水电出版社', '2019-02-01', 60.00, 225, '/images/books/2987f49ffa7d41af9728bd593815aa1d.jpg', 7, 3, '艺术类');
INSERT INTO `books` VALUES (32, '人体', '［意]威廉·德隆·拉索 著', '', '2012-06-01', 88.00, 499, '/images/books/229908ff95c447899e46c44b87763959.jpg', 8, 3, '小说类');
INSERT INTO `books` VALUES (33, '鞭楚（心理吴越三部曲之一）美色、复仇、权谋，灵修的人体艺术', ' 陈禹安 著', '东方', '2012-10-01', 58.00, 200, '/images/books/b19e53cc30ea476b930e43dcad4928de.jpg', 8, 3, '艺术类');
INSERT INTO `books` VALUES (34, '全民艺术鉴赏普及读本:书法/绘画/音乐/摄影/影视鉴赏', '王兴国[等]编著 著', '光明日报出版社', '2019-01-01', 58.00, 200, '/images/books/2382df974d26430f88431096005335e3.jpg', 9, 3, '鉴赏');
INSERT INTO `books` VALUES (35, '播音主持艺术发声', '胡黎娜编著 著', '中国广播影视出版社', '2018-07-01', 50.00, 200, '/images/books/26f64a9037b840f99aefbb16bd6d5937.jpg', 9, 3, '艺术类');
INSERT INTO `books` VALUES (36, '中国建筑的传统风格与民族探析', ' 梁燕敏 著', ' 中国纺织出版社', '2018-09-01', 52.00, 200, '/images/books/5a90f2bbccbc4a7ba4d2bafb03480e11.jpg', 10, 3, '艺术类');
INSERT INTO `books` VALUES (37, '北方民间建筑木雕', '冯茂红，郭兵 著', '人民美术出版社', '2008-09-01', 55.00, 100, '/images/books/6bf1f57f78e74e30a88a9111099ac03a.jpg', 10, 3, '艺术类');
INSERT INTO `books` VALUES (39, '舞台艺术-辽宁文化记忆-(全三册)', '周连科 著', '辽宁人民', '2014-12-01', 226.80, 100, '/images/books/9c070fa896444e218ff62a417e56353e.jpg', 11, 3, '艺术类');
INSERT INTO `books` VALUES (40, '经济数学', ' 叶鸣飞，谢素鑫主编 著', '西南财经大学出版社', '2018-08-01', 125.00, 100, '/images/books/d6d4ea35bb1346688c3add348fc0fc2a.jpg', 12, 3, '文化类');
INSERT INTO `books` VALUES (41, '经济数学', '张利芝 著', '江苏大学出版社', '2014-07-01', 68.00, 500, '/images/books/cf54ecff1d47452e9065b913d0b14cce.jpg', 12, 3, '学科类');
INSERT INTO `books` VALUES (42, '基于资源产业集群视角的区域创新能力研究', ' 杜心灵著 著', '西南交通大学出版社', '2017-12-01', 256.00, 225, '/images/books/55d4c13370864928b39e61f4d0411758.jpg', 13, 3, '社会类');
INSERT INTO `books` VALUES (43, '四川省产业集群转型升级路径研究', '杨斌著 著', '四川大学出版社', '2018-07-01', 263.00, 224, '/images/books/3d0d7048eb45482daeeb579d610207e6.jpg', 13, 3, '社会类');
INSERT INTO `books` VALUES (44, '世纪晚钟：当代文化与艺术趣味评述', '高小康著 著', '东方出版社', '1995-05-01', 155.00, 200, '/images/books/ae5f8cc922294cfaa39c4b8c6b923cbf.jpg', 14, 3, '文化史');
INSERT INTO `books` VALUES (45, '小品高潮与晚明文化', '尹恭弘 著', '尹恭弘 著', '2001-05-01', 47.00, 100, '/images/books/06414d116fd747c886f3af8290df0d7d.jpg', 14, 3, '文化史');
INSERT INTO `books` VALUES (46, '吕思勉讲中国文化史', '吕思勉著 著', '团结出版社', '2019-01-01', 15.00, 200, '/images/books/325501441784424ba43657a8c6d31967.jpg', 15, 3, '文化史');
INSERT INTO `books` VALUES (55, 'DFGDG', 'GDFG', 'FDGDFG', NULL, 43543.00, 34234, '/images/books/758727f06f044d4bbdc82262d8248f6c.jpg', 4, 6, '<p><video class=\"edui-upload-video  vjs-default-skin video-js\" controls=\"\" preload=\"none\" width=\"420\" height=\"280\" src=\"/ueditor/jsp/upload/video/20190627/1561624671637050634.mp4\"><source src=\"/ueditor/jsp/upload/video/20190627/1561624671637050634.mp4\" type=\"video/mp4\"/></video></p>');
INSERT INTO `books` VALUES (56, '夏目友人帐', '夏目', '人民出版社', NULL, 88.00, 666, '/images/books/3be9088f45dc448680d50df0ed46e7eb.jpg', 1, 13, '<p><video class=\"edui-upload-video  vjs-default-skin video-js\" controls=\"\" preload=\"none\" width=\"420\" height=\"280\" src=\"/ueditor/jsp/upload/video/20190627/1561627890360007514.mp4\"><source src=\"/ueditor/jsp/upload/video/20190627/1561627890360007514.mp4\" type=\"video/mp4\"/></video></p>');

-- ----------------------------
-- Table structure for books_category
-- ----------------------------
DROP TABLE IF EXISTS `books_category`;
CREATE TABLE `books_category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of books_category
-- ----------------------------
INSERT INTO `books_category` VALUES (1, '外国小说');
INSERT INTO `books_category` VALUES (2, '中国古典小说');
INSERT INTO `books_category` VALUES (3, '中国现代小说');
INSERT INTO `books_category` VALUES (4, '中国当代小说');
INSERT INTO `books_category` VALUES (5, '纪实文学');
INSERT INTO `books_category` VALUES (6, '民间文学');
INSERT INTO `books_category` VALUES (7, '艺术理论');
INSERT INTO `books_category` VALUES (8, '人体艺术');
INSERT INTO `books_category` VALUES (9, '影视艺术');
INSERT INTO `books_category` VALUES (10, '建筑艺术');
INSERT INTO `books_category` VALUES (11, '舞台艺术');
INSERT INTO `books_category` VALUES (12, '经济数学');
INSERT INTO `books_category` VALUES (13, '区域经济');
INSERT INTO `books_category` VALUES (14, '文化评述');
INSERT INTO `books_category` VALUES (15, '中国文化');

-- ----------------------------
-- Table structure for books_copy1
-- ----------------------------
DROP TABLE IF EXISTS `books_copy1`;
CREATE TABLE `books_copy1`  (
  `books_id` int(11) NOT NULL AUTO_INCREMENT,
  `books_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `books_writer` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `books_concern` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `books_concerndate` date NULL DEFAULT NULL,
  `books_price` double(10, 2) NULL DEFAULT NULL,
  `books_num` int(11) NULL DEFAULT NULL,
  `books_images` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `books_category` int(10) NULL DEFAULT NULL,
  `books_business` int(40) NULL DEFAULT NULL,
  `books_introduce` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`books_id`) USING BTREE,
  INDEX `books_category`(`books_category`) USING BTREE,
  INDEX `books_busniss`(`books_business`) USING BTREE,
  CONSTRAINT `books_copy1_ibfk_1` FOREIGN KEY (`books_business`) REFERENCES `business` (`business_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `books_copy1_ibfk_2` FOREIGN KEY (`books_category`) REFERENCES `books_category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of books_copy1
-- ----------------------------
INSERT INTO `books_copy1` VALUES (17, '校园秘史', '唐娜·塔特（美） 著', ' 人民文学出版社', '2007-01-01', 37.70, 485, '/images/books/d25ef79824a9464092cf8742b0697ed3.jpg', 1, 3, '《校园秘史》心理描写手法，节奏时缓时紧，略带惊悚。书中将死亡对于一个团体所造成的影响，对家庭的瓦解和当事人情绪心理的影响刻画得令人毛骨悚然而又充满感伤，并巧妙地融合了智慧、娱乐以及令人脉搏加快的悬念。');
INSERT INTO `books_copy1` VALUES (20, '名家讲中国古典小说', '五洲传播出版社 著', '五洲传播出版社', '2014-12-01', 129.00, 197, '/images/books/a5cab8f01c4f432889a1de58b2165f2b.jpg', 2, 3, '全书通过名家对中国古典小说具体个案的深入解读，呈现了中国古典小说的概貌。全书方法灵活，重点突出。本书既可供普通读者阅读，也可以作为国外读者研究和了解中国文化的参考图书。');
INSERT INTO `books_copy1` VALUES (22, '中国年度作品:2015:推理小说', '李文主编 著', '现代出版社', '2019-02-01', 31.20, 99, '/images/books/62939686baab47e3bb8ecff8368ee2ff.jpg', 3, 3, '本书是一部推理小说集，收录了王稼骏、罗四、凛等14位作家的14篇推理小说作品。这些作品情节跌宕，推理严密，形象鲜明，语言流畅，展示出文学作品特有的魅力。本小说集由2015年度出版的我国推理类杂志《理》上百篇推理小说中编选而成，视域广阔，旨在全景呈现。');
INSERT INTO `books_copy1` VALUES (23, '2017中国年度作品:微型小说', '冰峰 著', ' 现代出版社', '2018-03-01', 23.90, 199, '/images/books/d9c53e385efb4d4f89e92f1f33dbeff8.jpg', 3, 3, '本书由微型小说界选家从全国2017年发表的微型小说中精选而成，视域广阔，旨在检阅当年度微型小说的创作实绩。');
INSERT INTO `books_copy1` VALUES (24, '中国当代儿童文学小说十家 看望', '梅子涵 著', '云南出版集团公司 晨光出版社', '2018-03-01', 20.30, 200, '/images/books/b07dde59d40441f3aad89fc2fcbcfb68.jpg', 4, 3, '该书收录了儿童文学家、儿童文学推广人梅子涵的二十二篇短篇小说，集合了他多年创作的精华，作品中的文字充盈着童年的精彩和自由自在，善于在一种看似随意的构架和儿童式散漫而妙趣横生的叙述中传递饱满的儿童形象，表达自己的理念和主题，是一套好看、有趣、俏皮的读物，温情感动，风格简洁而不失童趣。');
INSERT INTO `books_copy1` VALUES (25, '第三维度：平民理论视野下的中国当代小说', '刘志权著 著', '人民出版社', '2016-01-01', 70.30, 100, '/images/books/265979f430e24faba7bdd1180e1fab5f.jpg', 4, 3, '在本书中阿里安娜?赫芬顿敞开心扉，坦诚地探讨了自己在管理时间、安排工作和养育两个女儿时遇到的挑战——职场的各种期限，家庭的各种危机；她曾自以为长袖善舞，终于在身体垮掉之后幡然醒悟。本书借鉴了心理学、运动学、睡眠和生理学领域**的突破性科研成果，展示了冥想、正念、离线、给予的深刻影响。');
INSERT INTO `books_copy1` VALUES (26, '70年代悦悦是这么长大的', '周国平　主，卢悦　 著', ' 浙江少儿', '2013-12-01', 63.00, 50, '/images/books/5c5917d55bff43f4ab148d3a59963404.jpg', 5, 3, '每个人心中都藏着珍贵的童年记忆。童年是人生的黎明，万物在晨曦里闪放着迷人的光辉。这光辉并未消散，在我们的记忆中，它永远笼罩着我们的童年岁月。所以，一个人无论到了什么年龄，回忆起童年岁月，心中都会有莫名的感动和惆怅。\r\n　　每个人的童年记忆又是个体化的，并且必然会染上时代的色彩。在不同年代度过童年，童年生活及其留下的记忆会很不同。对于同一个年代，儿童和成人的视角也会很不同。映照在儿童的眼睛里，相关年代的社会场景和风俗会呈现丰富而有趣的细节，从而为历史记录提供了一个特殊的角度。');
INSERT INTO `books_copy1` VALUES (27, '20年代民国女孩子淑英子', '周国平　主，章咏　 著', '浙江少儿', '2013-12-01', 72.00, 100, '/images/books/57230cd950fd45ccb631aa173fa06df1.jpg', 5, 3, '　这是一套儿童文学非虚构的纪实故事，往事悠悠、岁月悠悠，纯真而本真的文字写就100年孩子的故事。9位北京籍儿童的作者，叙述个体童年史，娓娓道来，亲切平实。年代涵盖上个世纪1910年至2000年近百年的历史记录。');
INSERT INTO `books_copy1` VALUES (28, '龙江当代文学大系：民间文学卷', '冯毓云，罗振亚主编 著', '北方文艺出版社', '2019-01-01', 93.40, 100, '/images/books/13f9d398096d4c1db42542bc64448c9b.jpg', 6, 3, '《龙江当代文学大戏》具有填补空白的拓荒意义，在黑土地上还是第一次。它规模宏大，架构科学，具体分小说卷、诗歌卷、散文卷、戏剧文学卷、理论与批评卷、报告文学卷、儿童文学卷、曲艺戏曲卷、翻译文学卷、影视文学卷、民间文学卷等，共十一卷，每卷前设有万字左右的序言，');
INSERT INTO `books_copy1` VALUES (29, '中国俗文学史:精装索引版', ' 郑振铎 著', ' 中国和平出版社', '2014-05-01', 55.00, 225, '/images/books/e67b25a8fc964e50b01013b081bc5b3d.jpg', 6, 3, '俗文学史是中国历史文化长河中的一颗明珠，也是中华民族智慧的结晶。但是社会地发展让人们逐渐忘记了历史传统文化。鉴于此，我们有必要将这些文化发扬光大，让其博大精深的一面展现到大众面前。同类图书产品形式相对单一，不能引起消费者的购买热情，本书设计新颖，适合广大读者阅读，是学习中国传统文化不可或缺的资料。');
INSERT INTO `books_copy1` VALUES (30, '声乐演唱艺术理论与舞台表演实践探索', '何剑康 张宏磊 张永刚 著', '中国纺织出版社', '2018-02-01', 40.00, 224, '/images/books/8f987e4fed81449ca48fc77c51b40cf1.jpg', 7, 3, '艺术类');
INSERT INTO `books_copy1` VALUES (31, '古典与现代的碰撞:音乐剧艺术理论及其与美声唱法的融合研究', '宋柏汶，谢秋菊著 著', '中国水利水电出版社', '2019-02-01', 60.00, 225, '/images/books/2987f49ffa7d41af9728bd593815aa1d.jpg', 7, 3, '艺术类');
INSERT INTO `books_copy1` VALUES (32, '人体', '［意]威廉·德隆·拉索 著', '', '2012-06-01', 88.00, 499, '/images/books/229908ff95c447899e46c44b87763959.jpg', 8, 3, '小说类');
INSERT INTO `books_copy1` VALUES (33, '鞭楚（心理吴越三部曲之一）美色、复仇、权谋，灵修的人体艺术', ' 陈禹安 著', '东方', '2012-10-01', 58.00, 200, '/images/books/b19e53cc30ea476b930e43dcad4928de.jpg', 8, 3, '艺术类');
INSERT INTO `books_copy1` VALUES (34, '全民艺术鉴赏普及读本:书法/绘画/音乐/摄影/影视鉴赏', '王兴国[等]编著 著', '光明日报出版社', '2019-01-01', 58.00, 200, '/images/books/2382df974d26430f88431096005335e3.jpg', 9, 3, '鉴赏');
INSERT INTO `books_copy1` VALUES (35, '播音主持艺术发声', '胡黎娜编著 著', '中国广播影视出版社', '2018-07-01', 50.00, 200, '/images/books/26f64a9037b840f99aefbb16bd6d5937.jpg', 9, 3, '艺术类');
INSERT INTO `books_copy1` VALUES (36, '中国建筑的传统风格与民族探析', ' 梁燕敏 著', ' 中国纺织出版社', '2018-09-01', 52.00, 200, '/images/books/5a90f2bbccbc4a7ba4d2bafb03480e11.jpg', 10, 3, '艺术类');
INSERT INTO `books_copy1` VALUES (37, '北方民间建筑木雕', '冯茂红，郭兵 著', '人民美术出版社', '2008-09-01', 55.00, 100, '/images/books/6bf1f57f78e74e30a88a9111099ac03a.jpg', 10, 3, '艺术类');
INSERT INTO `books_copy1` VALUES (39, '舞台艺术-辽宁文化记忆-(全三册)', '周连科 著', '辽宁人民', '2014-12-01', 226.80, 100, '/images/books/9c070fa896444e218ff62a417e56353e.jpg', 11, 3, '艺术类');
INSERT INTO `books_copy1` VALUES (40, '经济数学', ' 叶鸣飞，谢素鑫主编 著', '西南财经大学出版社', '2018-08-01', 125.00, 100, '/images/books/d6d4ea35bb1346688c3add348fc0fc2a.jpg', 12, 3, '文化类');
INSERT INTO `books_copy1` VALUES (41, '经济数学', '张利芝 著', '江苏大学出版社', '2014-07-01', 68.00, 500, '/images/books/cf54ecff1d47452e9065b913d0b14cce.jpg', 12, 3, '学科类');
INSERT INTO `books_copy1` VALUES (42, '基于资源产业集群视角的区域创新能力研究', ' 杜心灵著 著', '西南交通大学出版社', '2017-12-01', 256.00, 225, '/images/books/55d4c13370864928b39e61f4d0411758.jpg', 13, 3, '社会类');
INSERT INTO `books_copy1` VALUES (43, '四川省产业集群转型升级路径研究', '杨斌著 著', '四川大学出版社', '2018-07-01', 263.00, 224, '/images/books/3d0d7048eb45482daeeb579d610207e6.jpg', 13, 3, '社会类');
INSERT INTO `books_copy1` VALUES (44, '世纪晚钟：当代文化与艺术趣味评述', '高小康著 著', '东方出版社', '1995-05-01', 155.00, 200, '/images/books/ae5f8cc922294cfaa39c4b8c6b923cbf.jpg', 14, 3, '文化史');
INSERT INTO `books_copy1` VALUES (45, '小品高潮与晚明文化', '尹恭弘 著', '尹恭弘 著', '2001-05-01', 47.00, 100, '/images/books/06414d116fd747c886f3af8290df0d7d.jpg', 14, 3, '文化史');
INSERT INTO `books_copy1` VALUES (46, '吕思勉讲中国文化史', '吕思勉著 著', '团结出版社', '2019-01-01', 15.00, 200, '/images/books/325501441784424ba43657a8c6d31967.jpg', 15, 3, '文化史');

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `business_id` int(11) NOT NULL AUTO_INCREMENT,
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business_pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business_phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`business_id`) USING BTREE,
  INDEX `business_books`(`business_email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES (1, 'yangyang', 'e10adc3949ba59abbe56e057f20f883e', '247207517@qq.com', '18276705311', '2019-06-04 00:00:00', NULL);
INSERT INTO `business` VALUES (2, 'huahuha', 'e10adc3949ba59abbe56e057f20f883e', '247199517@qq.com', '18276705311', '2019-06-12 00:00:00', NULL);
INSERT INTO `business` VALUES (6, 'aaaa', 'e10adc3949ba59abbe56e057f20f883e', '2471199562@qq.com', '15077428641', '2019-04-09 00:00:00', NULL);
INSERT INTO `business` VALUES (7, 'bbbb', 'e10adc3949ba59abbe56e057f20f883e', '25164524@qq.com', '15088624581', '2018-12-08 00:00:00', NULL);
INSERT INTO `business` VALUES (8, 'cccc', 'e10adc3949ba59abbe56e057f20f883e', '1048454770@qq.com', '18274514567', '2019-06-03 00:00:00', NULL);
INSERT INTO `business` VALUES (9, 'dddd', 'e10adc3949ba59abbe56e057f20f883e', '1048454770@qq.com', '15245678954', '2019-06-10 00:00:00', NULL);
INSERT INTO `business` VALUES (10, 'eeee', 'e10adc3949ba59abbe56e057f20f883e', '2562188@qq.com', '13846974821', '2019-06-18 00:00:00', NULL);
INSERT INTO `business` VALUES (11, 'ffff', 'e10adc3949ba59abbe56e057f20f883e', '2561488992@qq.com', '13845865841', '2019-06-11 00:00:00', NULL);
INSERT INTO `business` VALUES (12, 'aaaa', 'e10adc3949ba59abbe56e057f20f883e', '123@qq.com', '18214255962', '2019-06-27 00:00:00', NULL);
INSERT INTO `business` VALUES (13, 'maijia', 'e10adc3949ba59abbe56e057f20f883e', '2631426395@qq.com', '18214255912', '2019-06-27 00:00:00', NULL);

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `books_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `books_quantity` int(11) NULL DEFAULT NULL COMMENT '数量',
  `creat_time` timestamp(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  `cart_price` double(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `books_id`(`books_id`) USING BTREE,
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`books_id`) REFERENCES `books` (`books_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (27, 13, 25, 1, '2019-06-25 10:36:21', '2019-04-16 10:38:27', 70.30);
INSERT INTO `cart` VALUES (28, 13, 24, 1, '2019-06-27 10:37:52', '2019-03-04 10:38:32', 20.30);
INSERT INTO `cart` VALUES (33, 13, 17, 4, '2019-06-17 10:42:05', '2019-06-23 10:42:17', 37.70);
INSERT INTO `cart` VALUES (34, 15, 26, 1, '2019-06-16 10:42:37', '2019-07-01 10:42:50', 63.00);

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `collection_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `books_id` int(11) NULL DEFAULT NULL,
  `collection_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collection_price` double(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`collection_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `goods_id`(`books_id`) USING BTREE,
  CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `collection_ibfk_2` FOREIGN KEY (`books_id`) REFERENCES `books` (`books_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES (15, 12, 17, '校园秘史', 37.70);
INSERT INTO `collection` VALUES (16, 14, 33, '鞭楚（心理吴越三部曲之一）美色、复仇、权谋，灵修的人体艺术', 58.00);
INSERT INTO `collection` VALUES (17, 13, 22, '中国年度作品:2015:推理小说', 31.20);
INSERT INTO `collection` VALUES (18, 16, 23, '2017中国年度作品:微型小说', 23.90);
INSERT INTO `collection` VALUES (19, 17, 23, '2017中国年度作品:微型小说', 23.90);
INSERT INTO `collection` VALUES (20, 18, 25, '第三维度：平民理论视野下的中国当代小说', 70.30);
INSERT INTO `collection` VALUES (21, 16, 28, '龙江当代文学大系：民间文学卷', 93.40);
INSERT INTO `collection` VALUES (24, 20, 17, '校园秘史', 37.70);

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details`  (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_cart` int(30) NULL DEFAULT NULL,
  `detail_price` double(10, 2) NULL DEFAULT NULL,
  `detail_num` int(10) NULL DEFAULT NULL,
  `detail_order` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`detail_id`) USING BTREE,
  INDEX `detail_order`(`detail_order`) USING BTREE,
  INDEX `detail_goods`(`detail_cart`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES (70, 26, 12.00, 1, '4a05bf41-3170-4ef0-a73b-34250fcd5200');
INSERT INTO `details` VALUES (71, 27, 12.00, 1, '73fc70e7-c8d6-4635-ba04-4bc2404c9c43');
INSERT INTO `details` VALUES (72, 28, 12.00, 1, 'cd334087-85ac-42e5-8509-d1feffc1df32');
INSERT INTO `details` VALUES (73, 29, 12.00, 1, 'c9865595-4c45-4b85-b182-4c37ab795e38');
INSERT INTO `details` VALUES (74, 30, 123.00, 1, 'f94b549f-3d62-40cf-b088-22f51397fda1');
INSERT INTO `details` VALUES (75, 31, 123.00, 1, '5ad193cb-cf77-4aa6-addf-7a112f130fb7');
INSERT INTO `details` VALUES (76, 32, 12.00, 1, '5ad193cb-cf77-4aa6-addf-7a112f130fb7');
INSERT INTO `details` VALUES (77, 35, 123.00, 1, '432518bc-018a-4547-acf1-4c5aad82e4bf');
INSERT INTO `details` VALUES (78, 36, 123.00, 1, '432518bc-018a-4547-acf1-4c5aad82e4bf');
INSERT INTO `details` VALUES (79, 38, 123.00, 1, 'f6b1b958-dfd8-426d-ac9a-f93c2f2f81b6');
INSERT INTO `details` VALUES (80, 16, 22.50, 1, '4a542f7d-77ab-4974-b76f-20902895525e');
INSERT INTO `details` VALUES (81, 17, 22.50, 1, 'cad7bcc9-b2ac-46df-a3bb-6a2cb9eefec4');
INSERT INTO `details` VALUES (82, 18, 40.00, 1, '2582c3e5-0ef8-4ca2-9492-1300788fcb03');
INSERT INTO `details` VALUES (83, 19, 88.00, 1, '2582c3e5-0ef8-4ca2-9492-1300788fcb03');
INSERT INTO `details` VALUES (84, 20, 156.00, 1, 'b69acfae-3a09-4866-badd-bcff5da3e49e');
INSERT INTO `details` VALUES (85, 21, 263.00, 1, 'ff8c7269-1f63-4a8a-a4be-73110d87d25e');
INSERT INTO `details` VALUES (86, 22, 22.50, 1, '49e266a6-c262-4f13-b7e2-e0e5ea534c8e');
INSERT INTO `details` VALUES (87, 23, 22.50, 1, 'f314098e-1f34-47a1-8dac-ed9c03ccab29');
INSERT INTO `details` VALUES (88, 24, 129.00, 1, '962d4214-f98b-4c35-813d-675a199321fd');
INSERT INTO `details` VALUES (89, 25, 22.50, 1, '8be995de-c5ec-470a-987c-5a782a9d8dd3');
INSERT INTO `details` VALUES (90, 26, 22.50, 1, '8be995de-c5ec-470a-987c-5a782a9d8dd3');
INSERT INTO `details` VALUES (91, 28, 129.00, 1, '2d1eb644-ffc3-47dd-8f77-b688c6d277dd');
INSERT INTO `details` VALUES (92, 29, 22.50, 1, '9a689123-1222-43c2-a010-03c287888459');
INSERT INTO `details` VALUES (93, 16, 37.70, 1, '3b095e11-180b-4211-a2c8-1a77dbad709a');
INSERT INTO `details` VALUES (94, 18, 23.90, 1, '1089eba2-5f9b-4c7a-ac89-9ba5fb74cd50');
INSERT INTO `details` VALUES (95, 19, 23.90, 1, '1089eba2-5f9b-4c7a-ac89-9ba5fb74cd50');
INSERT INTO `details` VALUES (96, 20, 23.90, 1, '1089eba2-5f9b-4c7a-ac89-9ba5fb74cd50');
INSERT INTO `details` VALUES (97, 16, 22.50, 1, '8ca4fa45-4e39-4005-8981-9d7b4e94604c');
INSERT INTO `details` VALUES (98, 17, 22.50, 1, '0fbbb7c6-2b9d-4fe7-9c75-667de32178fe');
INSERT INTO `details` VALUES (99, 18, 22.50, 1, '23966851-39c3-4edc-9ad9-e439673cbc25');
INSERT INTO `details` VALUES (100, 19, 22.50, 1, 'b3060c83-2000-46e3-ada6-04b77eab1ccd');
INSERT INTO `details` VALUES (101, 20, 22.50, 1, 'eb37e66e-f27b-448b-823d-856c3c6a1ae9');
INSERT INTO `details` VALUES (102, 21, 37.70, 1, '5aa7a8c5-159b-41a7-8c7d-2c0f8a03a743');
INSERT INTO `details` VALUES (103, 22, 66.00, 1, '5aa7a8c5-159b-41a7-8c7d-2c0f8a03a743');
INSERT INTO `details` VALUES (104, 23, 37.70, 1, '7bf0e869-0505-4550-bed5-6ced9c8d6d66');
INSERT INTO `details` VALUES (105, 24, 129.00, 1, '35306f23-c6d9-44b1-9178-1b23d71b41e8');
INSERT INTO `details` VALUES (106, 25, 66.00, 1, 'b2b7e671-2781-409f-9661-7dc271c2a7c1');
INSERT INTO `details` VALUES (107, 26, 75.40, 2, '1d63d9cb-d900-4db2-941a-2fcc3890938c');
INSERT INTO `details` VALUES (108, 27, 37.70, 1, '997dbfbf-7be8-4ec2-9c28-cd2ee9364f94');
INSERT INTO `details` VALUES (109, 28, 66.00, 1, '997dbfbf-7be8-4ec2-9c28-cd2ee9364f94');
INSERT INTO `details` VALUES (110, 29, 226.20, 3, '4cd3e087-3773-437a-8aca-84790c498d7a');
INSERT INTO `details` VALUES (111, 26, 75.40, 2, 'e65304a2-901b-4651-83b4-9baf06d3c2c7');
INSERT INTO `details` VALUES (112, 27, 37.70, 1, '9be20eb2-186d-4251-b270-76e44b402405');
INSERT INTO `details` VALUES (113, 28, 132.00, 2, '9be20eb2-186d-4251-b270-76e44b402405');
INSERT INTO `details` VALUES (114, 29, 37.70, 1, '4d58c45c-3a62-4ba6-82c7-b49b21a49dd4');
INSERT INTO `details` VALUES (115, 30, 37.70, 1, '33a9b700-5ea2-4a16-8449-a11346acb874');
INSERT INTO `details` VALUES (116, 31, 37.70, 1, '33a9b700-5ea2-4a16-8449-a11346acb874');
INSERT INTO `details` VALUES (117, 34, 37.70, 1, 'b310aa40-1eac-4723-8a58-b1cc8dae5db7');
INSERT INTO `details` VALUES (118, 35, 31.20, 1, 'b310aa40-1eac-4723-8a58-b1cc8dae5db7');
INSERT INTO `details` VALUES (119, 1, 63.00, 1, '478f2d3a-4a8b-42f9-b15e-d452c1b15c2a');
INSERT INTO `details` VALUES (120, 29, 20.30, 2, '478f2d3a-4a8b-42f9-b15e-d452c1b15c2a');
INSERT INTO `details` VALUES (121, 30, 93.40, 1, '478f2d3a-4a8b-42f9-b15e-d452c1b15c2a');
INSERT INTO `details` VALUES (122, 31, 37.70, 3, '478f2d3a-4a8b-42f9-b15e-d452c1b15c2a');
INSERT INTO `details` VALUES (123, 32, 63.00, 1, '478f2d3a-4a8b-42f9-b15e-d452c1b15c2a');
INSERT INTO `details` VALUES (124, 35, 37.70, 1, '478f2d3a-4a8b-42f9-b15e-d452c1b15c2a');
INSERT INTO `details` VALUES (125, 36, 23.90, 1, 'fbe758b2-60db-439c-a03c-17b4f1ce6b90');
INSERT INTO `details` VALUES (126, 37, 37.70, 1, '823a4d3f-611c-4f0d-ac5f-ea10fe008809');
INSERT INTO `details` VALUES (127, 38, 37.70, 1, 'cea44f59-2966-4775-8479-306db54907c4');
INSERT INTO `details` VALUES (128, 39, 75.40, 2, '8fd6c388-3193-45aa-87ec-9f4e6c789eb2');
INSERT INTO `details` VALUES (129, 40, 37.70, 1, '5f015f69-35f2-4830-8add-eaa2c1cc9a6b');
INSERT INTO `details` VALUES (130, 41, 37.70, 1, '0298afa3-e5fd-4fff-9ca6-6fb2c42f581b');
INSERT INTO `details` VALUES (131, 42, 129.00, 1, '0298afa3-e5fd-4fff-9ca6-6fb2c42f581b');
INSERT INTO `details` VALUES (132, 43, 37.70, 1, 'a77a06c7-b18d-426b-bef6-f2112abb3db0');
INSERT INTO `details` VALUES (133, 44, 75.40, 2, 'f97fce92-68ed-4603-974a-11798c2e0618');
INSERT INTO `details` VALUES (134, 45, 37.70, 1, '01c2bc9f-c021-475a-88a7-fc7112ceed4a');
INSERT INTO `details` VALUES (135, 46, 37.70, 1, '7b6e0371-9e71-48d0-8777-e58ac5e683df');
INSERT INTO `details` VALUES (136, 47, 75.40, 2, 'cbba01af-0eac-4576-9e64-1438ff4a47ed');
INSERT INTO `details` VALUES (137, 49, 75.40, 2, '3029b2b3-7671-44c4-a441-c0505833df59');

-- ----------------------------
-- Table structure for hot_books
-- ----------------------------
DROP TABLE IF EXISTS `hot_books`;
CREATE TABLE `hot_books`  (
  `hot_books_id` int(11) NOT NULL AUTO_INCREMENT,
  `hot_books_name` varchar(38) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hot_books_writer` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hot_books_concern` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hot_books_concerndate` date NULL DEFAULT NULL,
  `hot_books_price` double(10, 2) NULL DEFAULT NULL,
  `hot_books_num` int(11) NULL DEFAULT NULL,
  `hot_books_images` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`hot_books_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hot_books
-- ----------------------------
INSERT INTO `hot_books` VALUES (1, '校园秘史', '唐娜·塔特（美） 著', '人民文学出版社', '2007-01-01', 37.70, 11, '/images/books/d4a5f1c87ad647f8bdcef9c434922e64.jpg');
INSERT INTO `hot_books` VALUES (2, '名家讲中国古典小说', '五洲传播出版社 著', '五洲传播出版社', '2014-12-01', 129.00, 12, '/images/books/d4a5f1c87ad647f8bdcef9c434922e64.jpg');
INSERT INTO `hot_books` VALUES (3, '播音主持艺术发声', '胡黎娜编著 著', '中国广播影视出版社', '2018-07-01', 50.00, 13, '/images/books/d4a5f1c87ad647f8bdcef9c434922e64.jpg');
INSERT INTO `hot_books` VALUES (7, '经济数学', '叶鸣飞，谢素鑫主编 著', '西南财经大学出版社', '2018-08-01', 125.00, 100, '/images/books/d4a5f1c87ad647f8bdcef9c434922e64.jpg');
INSERT INTO `hot_books` VALUES (8, '世纪晚钟：当代文化与艺术趣味评述', '高小康著 著', '东方出版社', '1995-05-01', 155.00, 200, '/images/books/d4a5f1c87ad647f8bdcef9c434922e64.jpg');
INSERT INTO `hot_books` VALUES (9, '小品高潮与晚明文化', '尹恭弘 著', '尹恭弘 著', '2001-05-01', 47.00, 100, '/images/books/d4a5f1c87ad647f8bdcef9c434922e64.jpg');
INSERT INTO `hot_books` VALUES (10, '古典与现代的碰撞:音乐剧艺术理论及其与美声唱法的融合研究', '宋柏汶，谢秋菊著 著', '中国水利水电出版社', '2019-02-01', 60.00, 225, '/images/books/d4a5f1c87ad647f8bdcef9c434922e64.jpg');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_user` int(30) NULL DEFAULT NULL,
  `order_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人姓名',
  `order_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_address` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_status` int(30) NULL DEFAULT NULL,
  `order_price` double(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `order_user`(`order_user`) USING BTREE,
  INDEX `order_status`(`order_status`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`order_status`) REFERENCES `status` (`status_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`order_user`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('01c2bc9f-c021-475a-88a7-fc7112ceed4a', 19, NULL, NULL, NULL, 1, 37.70);
INSERT INTO `orders` VALUES ('0298afa3-e5fd-4fff-9ca6-6fb2c42f581b', 12, NULL, NULL, NULL, 0, 166.70);
INSERT INTO `orders` VALUES ('0b166f3d-b84a-470e-8d83-d6f4b3b9faac', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('120e618f-0610-4eff-b92f-5dc760f4f89a', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('1dfba9e9-05f3-407d-aed7-3986f0aeb7fe', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('3029b2b3-7671-44c4-a441-c0505833df59', 21, NULL, NULL, NULL, 0, 75.40);
INSERT INTO `orders` VALUES ('3d66b1e9-4c21-4cdb-a539-a9f36682a6d6', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('40f34df1-d520-46e2-89d3-4d039dd12ed7', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('58d95fb2-74b0-4f70-aa4c-ae0cffd46023', 12, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('5f015f69-35f2-4830-8add-eaa2c1cc9a6b', 12, NULL, NULL, NULL, 1, 37.70);
INSERT INTO `orders` VALUES ('6219ca04-9271-4d35-8156-028e950f3088', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('6500c3f7-a0da-4d4d-9c1c-3e25c05c926a', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('7b6e0371-9e71-48d0-8777-e58ac5e683df', 19, NULL, NULL, NULL, 1, 37.70);
INSERT INTO `orders` VALUES ('7bf0e869-0505-4550-bed5-6ced9c8d6d66', 12, 'sdfawe', '13658644581', '广西桂林', 0, 37.70);
INSERT INTO `orders` VALUES ('8199294f-1b1a-4be5-8a93-6ede88e31342', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('89705f14-4c09-4faa-adb6-81d83c2337a0', 12, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('8fd6c388-3193-45aa-87ec-9f4e6c789eb2', 12, NULL, NULL, NULL, 0, 75.40);
INSERT INTO `orders` VALUES ('997dbfbf-7be8-4ec2-9c28-cd2ee9364f94', 15, '3weraw', '15278564851', '广西桂林', 1, 103.70);
INSERT INTO `orders` VALUES ('9be20eb2-186d-4251-b270-76e44b402405', 16, 'erw', '15279564852', '广西南宁', 1, 169.70);
INSERT INTO `orders` VALUES ('9d607c88-0587-464c-97da-1ff266b2431a', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('a43b6dcf-985c-495b-b651-31524f1181bc', 12, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('a5ed5a20-d9cc-4b0c-99bc-e5a30937f16c', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('a77a06c7-b18d-426b-bef6-f2112abb3db0', 12, NULL, NULL, NULL, 1, 37.70);
INSERT INTO `orders` VALUES ('aaf0c616-c99c-422d-977a-8d9716f9453a', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('ab5f1fa4-d307-4c3a-ad80-1571771ffdb2', 21, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('b20234a4-2a8f-4857-af58-8183c71176b7', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('b2162a1e-0ee3-4e69-bae8-b94a954bc611', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('c1b7654a-1878-4b2d-a192-880850ef1e9a', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('cb79262e-aec1-48fe-8cfc-994c39139ff4', 20, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('cbba01af-0eac-4576-9e64-1438ff4a47ed', 20, NULL, NULL, NULL, 0, 75.40);
INSERT INTO `orders` VALUES ('cea44f59-2966-4775-8479-306db54907c4', 12, NULL, NULL, NULL, 1, 37.70);
INSERT INTO `orders` VALUES ('ceb01535-0045-4de2-bbe7-3932bc0568ef', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('efb81cf6-773b-4897-aa2e-5d1fc00dcfa4', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('f97fce92-68ed-4603-974a-11798c2e0618', 19, NULL, NULL, NULL, 1, 75.40);
INSERT INTO `orders` VALUES ('f99f8d2e-117f-43eb-a7d8-e1198b656503', 19, NULL, NULL, NULL, 1, 0.00);
INSERT INTO `orders` VALUES ('fd7523cd-cea0-4c8a-ae98-91d46270124e', 19, NULL, NULL, NULL, 1, 0.00);

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`status_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES (0, '已支付，等待发货');
INSERT INTO `status` VALUES (1, '未支付，等待支付');

-- ----------------------------
-- Table structure for superadmin
-- ----------------------------
DROP TABLE IF EXISTS `superadmin`;
CREATE TABLE `superadmin`  (
  `superadmin_id` int(11) NOT NULL AUTO_INCREMENT,
  `superadmin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `superadmin_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`superadmin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of superadmin
-- ----------------------------
INSERT INTO `superadmin` VALUES (1, 'superadmin', 'superadmin');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (12, 'huahua', 'f854b68c6f8b2195704f76e05aaa65a1', '123@qq.com', '18214255975', '2019-06-25 00:00:00', NULL);
INSERT INTO `user` VALUES (13, 'yangyang', 'e10adc3949ba59abbe56e057f20f883e', '4521@qq.com', '18276405644', '2019-06-11 00:00:00', NULL);
INSERT INTO `user` VALUES (14, 'chenli', 'e10adc3949ba59abbe56e057f20f883e', '45598@qq.com', '15678942354', '2019-06-11 00:00:00', NULL);
INSERT INTO `user` VALUES (15, 'huceyu', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '15745621457', '2019-06-11 00:00:00', NULL);
INSERT INTO `user` VALUES (18, '123456', 'e10adc3949ba59abbe56e057f20f883e', '323479@qq.com', '18356489248', '2019-06-11 00:00:00', NULL);
INSERT INTO `user` VALUES (20, 'lala', 'e10adc3949ba59abbe56e057f20f883e', '123@qq.com', '18214255391', '2019-06-27 00:00:00', NULL);
INSERT INTO `user` VALUES (21, 'mayoulin', 'e10adc3949ba59abbe56e057f20f883e', '2631426392@qq.com', '18214255913', '2019-06-27 00:00:00', NULL);

-- ----------------------------
-- Table structure for yl__book_writer
-- ----------------------------
DROP TABLE IF EXISTS `yl__book_writer`;
CREATE TABLE `yl__book_writer`  (
  `yl_writer_id` int(11) NOT NULL AUTO_INCREMENT,
  `yl_writer_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yl_writer_gender` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yl_writer_age` int(11) NULL DEFAULT NULL,
  `yl_writer_nationality` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yl_writer_book` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`yl_writer_id`) USING BTREE,
  INDEX `yl_writer_book`(`yl_writer_book`) USING BTREE,
  CONSTRAINT `yl__book_writer_ibfk_1` FOREIGN KEY (`yl_writer_book`) REFERENCES `yl_book` (`yl_book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yl__book_writer
-- ----------------------------
INSERT INTO `yl__book_writer` VALUES (1, '路遥', '男', 49, '中国', 1);
INSERT INTO `yl__book_writer` VALUES (2, '陈忠实 ', '男', 74, '中国', 2);
INSERT INTO `yl__book_writer` VALUES (3, '刘慈欣', '男', 56, '中国', 3);
INSERT INTO `yl__book_writer` VALUES (4, '东野圭吾', '男', 61, '日本', 4);
INSERT INTO `yl__book_writer` VALUES (5, '亚瑟柯南道尔', '男', 71, '英国', 5);
INSERT INTO `yl__book_writer` VALUES (6, '秦明 ', '男', 38, '中国', 6);
INSERT INTO `yl__book_writer` VALUES (7, '太宰治', '男', 39, '日本', 7);
INSERT INTO `yl__book_writer` VALUES (8, '乔斯坦·贾德', '男', 67, '挪威', 8);
INSERT INTO `yl__book_writer` VALUES (9, '夏洛蒂勃朗特', '女', 39, '英国', 9);
INSERT INTO `yl__book_writer` VALUES (10, '安托万·德·圣埃克苏佩里', '男', 44, '法国', 10);
INSERT INTO `yl__book_writer` VALUES (11, '马尔克斯', '男', 87, '哥伦比亚', 11);
INSERT INTO `yl__book_writer` VALUES (12, '钱钟书', '男', 88, '中国', 12);
INSERT INTO `yl__book_writer` VALUES (13, '张嘉佳', '男', 39, '中国', 13);
INSERT INTO `yl__book_writer` VALUES (14, '村上春树', '男', 70, '日本', 14);
INSERT INTO `yl__book_writer` VALUES (15, '卡期腾·哈里斯', '男', 67, '美国', 15);
INSERT INTO `yl__book_writer` VALUES (16, '罗伯特·海尔布隆纳', '男', 54, '美国', 16);
INSERT INTO `yl__book_writer` VALUES (17, '加尔法德', '男', 43, '法国', 17);

-- ----------------------------
-- Table structure for yl_book
-- ----------------------------
DROP TABLE IF EXISTS `yl_book`;
CREATE TABLE `yl_book`  (
  `yl_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `yl_book_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yl_book_writer` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yl_book_date` date NULL DEFAULT NULL,
  `yl_book_concern` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yl_book_price` double(11, 0) NULL DEFAULT NULL,
  `yl_book_category` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`yl_book_id`) USING BTREE,
  INDEX `yl_book_category`(`yl_book_category`) USING BTREE,
  INDEX `yl_book_date`(`yl_book_date`, `yl_book_name`, `yl_book_writer`, `yl_book_concern`, `yl_book_price`, `yl_book_category`) USING BTREE,
  INDEX `yl_book_name`(`yl_book_name`) USING BTREE,
  INDEX `yl_book_id`(`yl_book_id`, `yl_book_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yl_book
-- ----------------------------
INSERT INTO `yl_book` VALUES (12, '围城', '钱钟书', '1991-02-01', '人民文学出版社', 25, 1);
INSERT INTO `yl_book` VALUES (15, '建筑的伦理功能', '卡期腾·哈里斯', '2001-05-01', '华夏出版社', 15, 1);
INSERT INTO `yl_book` VALUES (3, ' 三体', '刘慈欣', '2008-01-01', '重庆出版社', 88, 1);
INSERT INTO `yl_book` VALUES (5, '福尔摩斯探案全集', '亚瑟柯南道尔', '2009-03-01', '中国华侨出版社', 78, 2);
INSERT INTO `yl_book` VALUES (10, '小王子', '安托万·德·圣埃克苏佩里', '2013-01-01', '天津人民出版社', 29, 2);
INSERT INTO `yl_book` VALUES (16, '经济学统治世界', '罗伯特·海尔布隆纳', '2013-07-01', '湖南人民出版社', 12, 2);
INSERT INTO `yl_book` VALUES (13, '从你的全世界路过', '张嘉佳', '2013-11-01', '湖南文艺出版社', 32, 3);
INSERT INTO `yl_book` VALUES (14, '挪威的森林', '村上春树', '2014-05-01', '上海译文出版社', 46, 3);
INSERT INTO `yl_book` VALUES (11, '霍乱时期的爱情', '马尔克斯', '2015-06-01', '南海出版公司', 49, 4);
INSERT INTO `yl_book` VALUES (7, '人间失格', '太宰治', '2015-08-01', '作家出版社', 22, 4);
INSERT INTO `yl_book` VALUES (9, '简爱', '夏洛蒂勃朗特', '2015-08-01', '作家出版社', 26, 4);
INSERT INTO `yl_book` VALUES (17, '中国环境与发展回顾和展望', '极简宇宙史', '2016-03-01', '上海三联书店', 39, 5);
INSERT INTO `yl_book` VALUES (4, '恶意', '东野圭吾', '2016-11-01', '南海出版公司', 39, 5);
INSERT INTO `yl_book` VALUES (2, '白鹿原', '陈忠实 ', '2017-04-13', '作家出版社', 35, 5);
INSERT INTO `yl_book` VALUES (1, '平凡的世界', '路遥', '2017-06-01', '北京十月文艺出版社', 59, 6);
INSERT INTO `yl_book` VALUES (8, '苏菲的世界', '乔斯坦·贾德', '2017-09-19', '作家出版社', 28, 6);
INSERT INTO `yl_book` VALUES (6, '天谴者', '秦明 ', '2018-12-05', '江苏凤凰文艺出版社', 32, 6);
INSERT INTO `yl_book` VALUES (18, '测试', '测试', '2019-05-06', 'sfdfds', 45, 5);

-- ----------------------------
-- Table structure for yl_book_category
-- ----------------------------
DROP TABLE IF EXISTS `yl_book_category`;
CREATE TABLE `yl_book_category`  (
  `yl_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `yl_category_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`yl_category_id`) USING BTREE,
  CONSTRAINT `yl_book_category_ibfk_1` FOREIGN KEY (`yl_category_id`) REFERENCES `yl_book` (`yl_book_category`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yl_book_category
-- ----------------------------
INSERT INTO `yl_book_category` VALUES (1, '中国当代小说');
INSERT INTO `yl_book_category` VALUES (2, '侦探/悬疑/推理');
INSERT INTO `yl_book_category` VALUES (3, '外国小说');
INSERT INTO `yl_book_category` VALUES (4, '世界名著');
INSERT INTO `yl_book_category` VALUES (5, '情感');
INSERT INTO `yl_book_category` VALUES (6, '科技科普');

-- ----------------------------
-- Table structure for yl_book_concern
-- ----------------------------
DROP TABLE IF EXISTS `yl_book_concern`;
CREATE TABLE `yl_book_concern`  (
  `yl_concern_id` int(11) NOT NULL AUTO_INCREMENT,
  `yl_concern_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yl_concern_book` int(11) NULL DEFAULT NULL,
  `yl_concern_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`yl_concern_id`) USING BTREE,
  INDEX `yl_concern_book`(`yl_concern_book`) USING BTREE,
  CONSTRAINT `yl_book_concern_ibfk_1` FOREIGN KEY (`yl_concern_book`) REFERENCES `yl_book` (`yl_book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yl_book_concern
-- ----------------------------
INSERT INTO `yl_book_concern` VALUES (1, '北京十月文艺出版社', 1, 4774);
INSERT INTO `yl_book_concern` VALUES (2, '作家出版社', 2, 23816);
INSERT INTO `yl_book_concern` VALUES (3, '作家出版社', 7, 23816);
INSERT INTO `yl_book_concern` VALUES (4, '作家出版社', 8, 23816);
INSERT INTO `yl_book_concern` VALUES (5, '作家出版社', 9, 23816);
INSERT INTO `yl_book_concern` VALUES (6, '重庆出版社', 3, 35447);
INSERT INTO `yl_book_concern` VALUES (7, '南海出版公司', 4, 37339);
INSERT INTO `yl_book_concern` VALUES (8, '南海出版公司', 11, 37339);
INSERT INTO `yl_book_concern` VALUES (9, '中国华侨出版社', 5, 41714);
INSERT INTO `yl_book_concern` VALUES (10, '江苏凤凰文艺出版社', 6, 20483);
INSERT INTO `yl_book_concern` VALUES (11, '天津人民出版社', 10, 24443);
INSERT INTO `yl_book_concern` VALUES (12, '人民文学出版社', 12, 45690);
INSERT INTO `yl_book_concern` VALUES (13, '湖南文艺出版社', 13, 25281);
INSERT INTO `yl_book_concern` VALUES (14, '上海译文出版社', 14, 16970);
INSERT INTO `yl_book_concern` VALUES (15, '华夏出版社', 15, 4316);
INSERT INTO `yl_book_concern` VALUES (16, '湖南人民出版社', 16, 1948);
INSERT INTO `yl_book_concern` VALUES (17, '上海三联书店', 17, 2049);

-- ----------------------------
-- Table structure for yl_book_date
-- ----------------------------
DROP TABLE IF EXISTS `yl_book_date`;
CREATE TABLE `yl_book_date`  (
  `yl_date_id` int(10) NOT NULL AUTO_INCREMENT,
  `yl_date_year` date NULL DEFAULT NULL,
  `yl_date_book` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yl_book_writer` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yl_book_concern` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yl_book_price` double(10, 2) NULL DEFAULT NULL,
  `yl_book_category` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`yl_date_id`) USING BTREE,
  INDEX `yl_date_year`(`yl_date_year`) USING BTREE,
  INDEX `yl_date_book`(`yl_date_book`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yl_book_date
-- ----------------------------
INSERT INTO `yl_book_date` VALUES (1, '2017-06-01', '平凡的世界', '路遥', '北京十月文艺出版社', 59.00, '中国当代小说');
INSERT INTO `yl_book_date` VALUES (2, '2017-04-13', '白鹿原', '陈忠实 ', '作家出版社', 34.70, '中国当代小说');
INSERT INTO `yl_book_date` VALUES (3, '2008-01-01', ' 三体', '刘慈欣', '重庆出版社', 88.50, '中国当代小说');
INSERT INTO `yl_book_date` VALUES (4, '2016-11-01', '恶意', '东野圭吾', '南海出版公司', 39.00, '侦探/悬疑/推理');
INSERT INTO `yl_book_date` VALUES (5, '2009-03-01', '福尔摩斯探案全集', '亚瑟柯南道尔', '中国华侨出版社', 77.80, '侦探/悬疑/推理');
INSERT INTO `yl_book_date` VALUES (6, '2018-12-05', '天谴者', '秦明 ', '江苏凤凰文艺出版社', 32.10, '侦探/悬疑/推理');
INSERT INTO `yl_book_date` VALUES (7, '2015-08-01', '人间失格', '太宰治', '作家出版社', 22.00, '外国小说');
INSERT INTO `yl_book_date` VALUES (8, '2017-09-19', '苏菲的世界', '乔斯坦·贾德', '作家出版社', 28.50, '外国小说');
INSERT INTO `yl_book_date` VALUES (9, '2015-08-01', '简爱', '夏洛蒂勃朗特', '作家出版社', 26.50, '世界名著');
INSERT INTO `yl_book_date` VALUES (10, '2013-01-01', '小王子', '安托万·德·圣埃克苏佩里', '天津人民出版社', 28.60, '世界名著');
INSERT INTO `yl_book_date` VALUES (11, '2015-06-01', '霍乱时期的爱情', '马尔克斯', '南海出版公司', 49.00, '世界名著');
INSERT INTO `yl_book_date` VALUES (12, '1991-02-01', '围城', '钱钟书', '人民文学出版社', 24.90, '情感');
INSERT INTO `yl_book_date` VALUES (13, '2013-11-01', '从你的全世界路过', '张嘉佳', '湖南文艺出版社', 32.40, '情感');
INSERT INTO `yl_book_date` VALUES (14, '2014-05-01', '挪威的森林', '村上春树', '上海译文出版社', 45.70, '情感');
INSERT INTO `yl_book_date` VALUES (15, '2001-05-01', '建筑的伦理功能', '卡期腾·哈里斯', '华夏出版社', 15.00, '科技科普');
INSERT INTO `yl_book_date` VALUES (16, '2013-07-01', '经济学统治世界', '罗伯特·海尔布隆纳', '湖南人民出版社', 12.20, '科技科普');
INSERT INTO `yl_book_date` VALUES (17, '2016-03-01', '中国环境与发展回顾和展望', '极简宇宙史', '上海三联书店', 38.60, '科技科普');

SET FOREIGN_KEY_CHECKS = 1;
