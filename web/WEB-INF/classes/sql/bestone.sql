/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : bestone

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 01/04/2019 10:51:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(90) NOT NULL,
  `phoneNum` varchar(11) DEFAULT NULL,
  `article_text` text NOT NULL,
  `overview` int(11) DEFAULT '0',
  `thumbsUp` int(11) DEFAULT '0',
  `time` datetime DEFAULT NULL,
  `labelID` int(11) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `article_ibfk_1` (`phoneNum`),
  CONSTRAINT `phoneNum` FOREIGN KEY (`phoneNum`) REFERENCES `users` (`phonenum`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES (52, 'lalal', '4331', '喜欢miku', 0, 0, '2019-03-27 02:57:39', 2);
INSERT INTO `article` VALUES (53, 'lalal', '4331', '喜欢miku', 0, 0, '2019-03-27 03:03:30', 2);
INSERT INTO `article` VALUES (54, 'lalal', '4331', 'xihuan miku', 0, 0, '2019-03-27 03:10:44', 2);
INSERT INTO `article` VALUES (55, '这个瞬间', '4331', '我喜欢miku', 0, 0, '2019-03-27 03:12:15', 2);
INSERT INTO `article` VALUES (56, '我又来写文章了', '4331', '今天天气很棒棒', 0, 0, '2019-03-27 03:30:06', 3);
INSERT INTO `article` VALUES (57, '今天敲代码', '4331', '略略略', 0, 0, '2019-03-27 03:30:54', 17);
INSERT INTO `article` VALUES (58, 'wo xihuan miku', '13186521908', 'satisfaction', 0, 0, '2019-03-27 03:32:47', 13);
INSERT INTO `article` VALUES (59, '这个瞬间', '13186521908', '尼禄克劳迪乌斯', 0, 0, '2019-03-27 03:33:06', 24);
INSERT INTO `article` VALUES (60, 'fgo', '13186521908', 'feitegou', 0, 0, '2019-03-27 03:34:07', 8);
INSERT INTO `article` VALUES (61, 'fgo开新活动了', '4321', '我要肝fgo', 0, 0, '2019-03-27 03:34:53', 11);
INSERT INTO `article` VALUES (62, 'dayouxi', '4321', 'richang wan fgo', 0, 0, '2019-03-27 03:35:18', 11);
INSERT INTO `article` VALUES (63, '???????', '4331', '???????', 0, 0, '2019-03-28 21:02:00', 2);
INSERT INTO `article` VALUES (64, 'Apple 发布新产品', '18852082311', 'w', 0, 0, '2019-03-29 09:28:54', 0);
INSERT INTO `article` VALUES (65, 'Apple 发布新产品2222', '18852082311', 'Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产品2222Apple 发布新产', 0, 0, '2019-03-29 10:53:59', 1);
INSERT INTO `article` VALUES (66, '编辑内容展示', '18852082311', '大家使用 UEditor 是为了让用户能在页面中编辑富文本内容，但这应该只是手段方法。我们最终的目的是为了呈现用户编辑的内容。也就是内容的展示。原来我们对这块是不考虑的，只关注在编辑端。但随着编辑器产出内容的增加和复杂化，比如图表展示，代码高亮，自定义的列表标号等等，如果都在最终产出的编辑数据中处理，那势必会导致产出数据带有冗余内容，而且也很大程度上硬编码了展示时定制效果。基于这些问题，uparse产生了。', 0, 0, '2019-03-29 11:16:10', 25);
INSERT INTO `article` VALUES (67, 'Apple 发布新产品3.30', '18852082311', '3.30', 0, 0, '2019-03-31 00:56:49', 2);
COMMIT;

-- ----------------------------
-- Table structure for article22
-- ----------------------------
DROP TABLE IF EXISTS `article22`;
CREATE TABLE `article22` (
  `article22_id` int(11) NOT NULL AUTO_INCREMENT,
  `article22_title` varchar(255) DEFAULT NULL,
  `article22_content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `picture` varchar(255) DEFAULT NULL,
  `phoneNum` varchar(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`article22_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article22
-- ----------------------------
BEGIN;
INSERT INTO `article22` VALUES (1, 'test', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...\r\n &nbsp; &nbsp;</p><p><br/></p><p>this is article</p>', NULL, NULL, NULL);
INSERT INTO `article22` VALUES (2, 'ueditor', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...&nbsp; &nbsp; &nbsp;kaifajin</p><p><br/></p><p>aid j anmdk</p>', NULL, NULL, NULL);
INSERT INTO `article22` VALUES (3, 'if you haven like it', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...\r\n &nbsp; &nbsp;</p><p><br/></p><p>if</p><p>you</p><p>haven</p><p>love&nbsp;</p><p>it</p><p>for</p><p>me.</p><p>please...</p><p><img src=\"/ueditor/jsp/upload/image/20190330/1553914319723036275.png\" title=\"1553914319723036275.png\" alt=\"boy7.png\" width=\"207\" height=\"226\"/></p>', NULL, NULL, NULL);
INSERT INTO `article22` VALUES (4, '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...\r\n &nbsp; &nbsp;</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190330/1553914547174022343.png\" title=\"1553914547174022343.png\" width=\"255\" height=\"219\"/></p><p><img src=\"/ueditor/jsp/upload/image/20190330/1553914547181071852.png\" title=\"1553914547181071852.png\" width=\"317\" height=\"241\"/></p><p><br/></p>', NULL, NULL, NULL);
INSERT INTO `article22` VALUES (5, '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...\r\n &nbsp; &nbsp;</p><p><br/></p><p>jiu</p><p><br/></p>', NULL, NULL, NULL);
INSERT INTO `article22` VALUES (6, 'Kevin Ma\'s test shequ article', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size: 18px;-en-clipboard:true;\">搭建 Spring Boot 开发环境。</span></p><p><span style=\"font-size: 18px;-en-clipboard:true;\"><br/></span></p><p style=\"text-align: center;\"><span style=\"font-size: 18px;-en-clipboard:true;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src=\"/ueditor/jsp/upload/image/20190330/1553934978363050576.png\" title=\"1553934978363050576.png\" alt=\"boy9.png\" width=\"292\" height=\"248\"/></span></p><p style=\"text-align: center;\"><span style=\"color: rgb(191, 191, 191); font-size: 14px;\">american captain</span><span style=\"font-size: 18px;-en-clipboard:true;\"><br/></span></p><p><span style=\"color: rgb(191, 191, 191); font-size: 14px;\"><br/></span></p><p><span style=\"color: rgb(191, 191, 191); font-size: 14px;\"><br/></span></p>', NULL, '18852082311', '2019-03-30 16:37:08');
INSERT INTO `article22` VALUES (7, 'window.UEDITOR_HOME_URL', '<p>这里是测试文档...</p><p><br/></p><p><img src=\"BestOneTest//ueditor/jsp/upload/image/20190330/1553935480043087730.png\" title=\"1553935480043087730.png\" alt=\"girl3.png\"/></p>', NULL, '18852082311', '2019-03-30 16:44:47');
INSERT INTO `article22` VALUES (8, 'amio', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...&nbsp; &nbsp; &nbsp;jian</p>', NULL, '18852082311', '2019-03-31 00:47:20');
INSERT INTO `article22` VALUES (9, 'jjjjj', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...&nbsp; &nbsp; &nbsp; wfw ew e</p>', NULL, '18852082311', '2019-03-31 00:52:24');
INSERT INTO `article22` VALUES (10, 'egagbre', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...&nbsp; &nbsp; &nbsp;bvear</p>', NULL, '18852082311', '2019-03-31 10:03:37');
INSERT INTO `article22` VALUES (11, 'great man', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;美国队长</p><p style=\"text-align: center;\"><img src=\"/ueditor/jsp/upload/image/20190331/1554000143583019698.png\" title=\"1554000143583019698.png\" alt=\"boy8.png\" width=\"389\" height=\"452\"/></p><p style=\"text-align: center;\"><span style=\"color: rgb(191, 191, 191);\">kevin</span></p>', NULL, '18852082311', '2019-03-31 10:43:32');
INSERT INTO `article22` VALUES (12, '测试多图片上传回显', '<p style=\"text-align: center;\"><strong>测试多图片上传回显</strong></p><p style=\"text-align: center;\">&nbsp;&nbsp;&nbsp;&nbsp;<img src=\"/ueditor/jsp/upload/image/20190331/1554001728096056797.png\" title=\"1554001728096056797.png\" width=\"288\" height=\"396\"/><img src=\"/ueditor/jsp/upload/image/20190331/1554001728096039859.png\" title=\"1554001728096039859.png\" width=\"357\" height=\"467\"/></p>', NULL, '18852082311', '2019-03-31 11:10:44');
INSERT INTO `article22` VALUES (13, 'BestOne shequ article', '<p>BestOne shequ article</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190331/1554004728593033317.png\" title=\"1554004728593033317.png\" alt=\"boy10.png\" width=\"398\" height=\"501\"/></p>', NULL, '18852082311', '2019-03-31 11:59:38');
INSERT INTO `article22` VALUES (14, 'jian li jiu shi women de jili', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...\r\n &nbsp; &nbsp;</p><p><img src=\"/ueditor/jsp/upload/image/20190331/1554005864219054855.png\" title=\"1554005864219054855.png\"/></p><p><img src=\"/ueditor/jsp/upload/image/20190331/1554005864219075619.png\" title=\"1554005864219075619.png\"/></p><p><br/></p>', NULL, '18852082311', '2019-03-31 12:17:49');
INSERT INTO `article22` VALUES (15, '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...\r\n &nbsp; &nbsp;<img src=\"/BestOneTest/ueditor/jsp/upload/image/20190331/1554007589384045596.png\" title=\"1554007589384045596.png\" alt=\"girl2.png\"/></p>', NULL, '18852082311', '2019-03-31 12:46:40');
INSERT INTO `article22` VALUES (16, '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...\r\n &nbsp; &nbsp;<img src=\"/BestOneTest/ueditor/jsp/upload/image/20190331/1554007589384045596.png\" title=\"1554007589384045596.png\" alt=\"girl2.png\"/></p>', NULL, '18852082311', '2019-03-31 12:48:12');
INSERT INTO `article22` VALUES (17, '99999', '<p>9999jjjjjjjjjjjjjjjjjjjjjjj</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190331/1554007790281098683.png\" title=\"1554007790281098683.png\" alt=\"boy9.png\"/></p>', NULL, '18852082311', '2019-03-31 12:49:54');
INSERT INTO `article22` VALUES (18, '99999', '<p>9999jjjjjjjjjjjjjjjjjjjjjjj</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190331/1554007790281098683.png\" title=\"1554007790281098683.png\" alt=\"boy9.png\"/></p>', NULL, '18852082311', '2019-03-31 12:50:37');
INSERT INTO `article22` VALUES (19, '333333242', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...\r\n &nbsp; &nbsp;<img src=\"/ueditor/jsp/upload/image/20190331/1554007964831056569.png\" title=\"1554007964831056569.png\" alt=\"boy6.png\"/></p>', NULL, '18852082311', '2019-03-31 12:52:50');
INSERT INTO `article22` VALUES (20, NULL, NULL, NULL, '18852082311', '2019-03-31 12:52:54');
INSERT INTO `article22` VALUES (21, 'fewwwww', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...<img src=\"/ueditor/jsp/upload/image/20190331/1554008064160080060.png\" title=\"1554008064160080060.png\" alt=\"girl4.png\"/> &nbsp; &nbsp;</p>', NULL, '18852082311', '2019-03-31 12:54:28');
INSERT INTO `article22` VALUES (22, '忙吧', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...&nbsp; &nbsp; 垃圾</p>', NULL, '18852082311', '2019-03-31 14:16:20');
INSERT INTO `article22` VALUES (23, 'publish seccessful', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...\r\n &nbsp; &nbsp;<img src=\"/ueditor/jsp/upload/image/20190331/1554014378555045124.png\" title=\"1554014378555045124.png\" alt=\"gril8.png\"/></p>', NULL, '18852082311', '2019-03-31 14:39:40');
INSERT INTO `article22` VALUES (24, 'BestOne  test', '<p>&nbsp; &nbsp; macbook pro 2016</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190331/1554014634825038354.png\" title=\"1554014634825038354.png\" alt=\"boy2.png\"/></p>', NULL, '18852082311', '2019-03-31 14:43:57');
INSERT INTO `article22` VALUES (25, 'karen yuan', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;yushu</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190331/1554016210496036548.png\" title=\"1554016210496036548.png\" alt=\"boy7.png\"/></p>', NULL, '18852082311', '2019-03-31 15:10:13');
INSERT INTO `article22` VALUES (26, 'mhb', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...&nbsp; &nbsp; &nbsp;mhb de ceshi shuju</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190331/1554016692070038440.png\" title=\"1554016692070038440.png\" alt=\"boy3.png\"/></p>', NULL, '18852082311', '2019-03-31 15:18:15');
INSERT INTO `article22` VALUES (27, 'mhb', '<p>mhbmhbmhbmhb请在这里写你的社区文章...\r\n &nbsp; &nbsp;<img src=\"/ueditor/jsp/upload/image/20190331/1554016776628027302.png\" title=\"1554016776628027302.png\" alt=\"girl1.png\" width=\"316\" height=\"640\"/></p>', NULL, '18852082311', '2019-03-31 15:19:55');
INSERT INTO `article22` VALUES (28, 'mmmm', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;请在这里写你的社区文章...&nbsp; &nbsp; &nbsp;mmmm</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190331/1554023570110094066.png\" title=\"1554023570110094066.png\"/></p><p><img src=\"/ueditor/jsp/upload/image/20190331/1554023570110085512.png\" title=\"1554023570110085512.png\"/></p><p><img src=\"/ueditor/jsp/upload/image/20190331/1554023570110034603.png\" title=\"1554023570110034603.png\"/></p><p><img src=\"/ueditor/jsp/upload/image/20190331/1554023570144005259.png\" title=\"1554023570144005259.png\"/></p><p><br/></p>', NULL, '18852082311', '2019-03-31 17:12:57');
COMMIT;

-- ----------------------------
-- Table structure for article_label
-- ----------------------------
DROP TABLE IF EXISTS `article_label`;
CREATE TABLE `article_label` (
  `article_id` int(11) NOT NULL DEFAULT '0',
  `label_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`,`label_id`),
  KEY `label_id` (`label_id`),
  CONSTRAINT `article_label_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`),
  CONSTRAINT `article_label_ibfk_2` FOREIGN KEY (`label_id`) REFERENCES `label` (`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `classify_id` int(11) NOT NULL AUTO_INCREMENT,
  `classify_text` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`classify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classify
-- ----------------------------
BEGIN;
INSERT INTO `classify` VALUES (1, '电子产品');
INSERT INTO `classify` VALUES (2, '青年居家');
INSERT INTO `classify` VALUES (3, '生活方式');
INSERT INTO `classify` VALUES (4, '软件应用');
INSERT INTO `classify` VALUES (5, '新玩意');
INSERT INTO `classify` VALUES (6, '其他');
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` varchar(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `context` text NOT NULL,
  `root_id` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `reply_id` varchar(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `author_id` (`author_id`),
  KEY `article_id` (`article_id`),
  KEY `root_id` (`root_id`),
  KEY `parent` (`parent`),
  KEY `reply_id` (`reply_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`phonenum`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`),
  CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`root_id`) REFERENCES `comment` (`comment_id`),
  CONSTRAINT `comment_ibfk_4` FOREIGN KEY (`parent`) REFERENCES `comment` (`comment_id`),
  CONSTRAINT `comment_ibfk_5` FOREIGN KEY (`reply_id`) REFERENCES `users` (`phonenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_article
-- ----------------------------
DROP TABLE IF EXISTS `comment_article`;
CREATE TABLE `comment_article` (
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `article_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  PRIMARY KEY (`comment_id`,`article_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `comment_article_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`),
  CONSTRAINT `comment_article_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment_root
-- ----------------------------
DROP TABLE IF EXISTS `comment_root`;
CREATE TABLE `comment_root` (
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `root_id` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  PRIMARY KEY (`comment_id`,`root_id`),
  KEY `root_id` (`root_id`),
  CONSTRAINT `comment_root_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`),
  CONSTRAINT `comment_root_ibfk_2` FOREIGN KEY (`root_id`) REFERENCES `comment` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(30) DEFAULT NULL,
  `classify_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`label_id`),
  KEY `classify_id` (`classify_id`),
  CONSTRAINT `classify_id` FOREIGN KEY (`classify_id`) REFERENCES `classify` (`classify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of label
-- ----------------------------
BEGIN;
INSERT INTO `label` VALUES (1, '电脑', 1);
INSERT INTO `label` VALUES (2, '平板', 1);
INSERT INTO `label` VALUES (3, '手机', 1);
INSERT INTO `label` VALUES (4, '外设', 1);
INSERT INTO `label` VALUES (5, '配件', 1);
INSERT INTO `label` VALUES (6, '个人护理', 2);
INSERT INTO `label` VALUES (7, '衣服', 2);
INSERT INTO `label` VALUES (8, '鞋履', 2);
INSERT INTO `label` VALUES (9, '生活工具', 2);
INSERT INTO `label` VALUES (10, '运动', 2);
INSERT INTO `label` VALUES (11, '玩乐', 3);
INSERT INTO `label` VALUES (12, '美食', 3);
INSERT INTO `label` VALUES (13, '书店', 3);
INSERT INTO `label` VALUES (14, '电影', 3);
INSERT INTO `label` VALUES (15, '社交', 4);
INSERT INTO `label` VALUES (16, '音乐', 4);
INSERT INTO `label` VALUES (17, '效率', 4);
INSERT INTO `label` VALUES (18, '工具', 4);
INSERT INTO `label` VALUES (19, '教育', 4);
INSERT INTO `label` VALUES (20, '商务', 4);
INSERT INTO `label` VALUES (21, '摄影与录像', 4);
INSERT INTO `label` VALUES (22, '游戏', 4);
INSERT INTO `label` VALUES (23, '薅羊毛', 5);
INSERT INTO `label` VALUES (24, '黑科技', 5);
INSERT INTO `label` VALUES (25, 'APP技巧', 5);
INSERT INTO `label` VALUES (26, '其他', 6);
COMMIT;

-- ----------------------------
-- Table structure for label_classify
-- ----------------------------
DROP TABLE IF EXISTS `label_classify`;
CREATE TABLE `label_classify` (
  `classify_id` int(11) NOT NULL DEFAULT '0',
  `label_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classify_id`,`label_id`),
  KEY `label_id` (`label_id`),
  CONSTRAINT `label_classify_ibfk_1` FOREIGN KEY (`classify_id`) REFERENCES `classify` (`classify_id`),
  CONSTRAINT `label_classify_ibfk_2` FOREIGN KEY (`label_id`) REFERENCES `label` (`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of label_classify
-- ----------------------------
BEGIN;
INSERT INTO `label_classify` VALUES (1, 1);
INSERT INTO `label_classify` VALUES (1, 2);
INSERT INTO `label_classify` VALUES (1, 3);
INSERT INTO `label_classify` VALUES (1, 4);
INSERT INTO `label_classify` VALUES (1, 5);
INSERT INTO `label_classify` VALUES (2, 6);
INSERT INTO `label_classify` VALUES (2, 7);
INSERT INTO `label_classify` VALUES (2, 8);
INSERT INTO `label_classify` VALUES (2, 9);
INSERT INTO `label_classify` VALUES (2, 10);
INSERT INTO `label_classify` VALUES (3, 11);
INSERT INTO `label_classify` VALUES (3, 12);
INSERT INTO `label_classify` VALUES (3, 13);
INSERT INTO `label_classify` VALUES (3, 14);
INSERT INTO `label_classify` VALUES (4, 15);
INSERT INTO `label_classify` VALUES (4, 16);
INSERT INTO `label_classify` VALUES (4, 17);
INSERT INTO `label_classify` VALUES (4, 18);
INSERT INTO `label_classify` VALUES (4, 19);
INSERT INTO `label_classify` VALUES (4, 20);
INSERT INTO `label_classify` VALUES (4, 21);
INSERT INTO `label_classify` VALUES (4, 22);
INSERT INTO `label_classify` VALUES (5, 23);
INSERT INTO `label_classify` VALUES (5, 24);
INSERT INTO `label_classify` VALUES (5, 25);
INSERT INTO `label_classify` VALUES (6, 26);
COMMIT;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messageId` int(11) NOT NULL,
  `messageClass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pictures
-- ----------------------------
DROP TABLE IF EXISTS `pictures`;
CREATE TABLE `pictures` (
  `pictures_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pictures_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `pictures_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pictures
-- ----------------------------
BEGIN;
INSERT INTO `pictures` VALUES (8, 52, 'miku_2.jpg');
INSERT INTO `pictures` VALUES (9, 53, 'miku_2.jpg');
INSERT INTO `pictures` VALUES (10, 55, 'miku_2.jpg');
INSERT INTO `pictures` VALUES (11, 56, '369f1f00b2fc0e2f609c070ff8fa8b4.png');
INSERT INTO `pictures` VALUES (12, 57, '0505bd70e0b78751c28718060e8e8ebe.jpg');
INSERT INTO `pictures` VALUES (13, 58, '1.png');
INSERT INTO `pictures` VALUES (14, 59, '1.png');
INSERT INTO `pictures` VALUES (15, 60, '54096081_p0.jpg');
INSERT INTO `pictures` VALUES (16, 61, '59260474_p0.jpg');
INSERT INTO `pictures` VALUES (17, 62, '59665299_p0.jpg');
INSERT INTO `pictures` VALUES (18, 63, '1.jpg');
INSERT INTO `pictures` VALUES (19, 64, '屏幕快照 2019-03-29 08.15.34.png');
INSERT INTO `pictures` VALUES (20, 65, 'girl2.png');
INSERT INTO `pictures` VALUES (21, 66, 'girl2.png');
INSERT INTO `pictures` VALUES (22, 67, NULL);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `phoneNum` varchar(11) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `userName` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL DEFAULT '0',
  `userAddress` varchar(20) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL,
  `sign` varchar(20) DEFAULT NULL,
  `handShot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`phoneNum`),
  KEY `phoneNum` (`phoneNum`),
  KEY `phoneNum_2` (`phoneNum`),
  KEY `phoneNum_3` (`phoneNum`),
  KEY `phoneNum_4` (`phoneNum`),
  KEY `phoneNum_5` (`phoneNum`),
  KEY `phoneNum_6` (`phoneNum`),
  KEY `phoneNum_7` (`phoneNum`),
  KEY `phoneNum_8` (`phoneNum`),
  KEY `phoneNum_9` (`phoneNum`),
  KEY `phoneNum_10` (`phoneNum`),
  KEY `phoneNum_11` (`phoneNum`),
  KEY `phoneNum_12` (`phoneNum`),
  KEY `phoneNum_13` (`phoneNum`),
  KEY `phoneNum_14` (`phoneNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('13186521908', '123', 'cc', '男', 3, 'nanjing', 'shixi', '为了星辰大海', '0505bd70e0b78751c28718060e8e8ebe.jpg');
INSERT INTO `users` VALUES ('18852082311', 'mhb', 'kevin', '男', 20, '南京', '学生', '在平坦的路面上曲折前行——', 'boy5.png');
INSERT INTO `users` VALUES ('4321', '123', 'admin', '男', 32, '北京', 'Java 工程师', ' show me code.', 'boy2.png');
INSERT INTO `users` VALUES ('4331', '123', 'admin', '男', 3, '', '', '', 'miku_2.jpg');
COMMIT;

-- ----------------------------
-- Table structure for users_collection_article
-- ----------------------------
DROP TABLE IF EXISTS `users_collection_article`;
CREATE TABLE `users_collection_article` (
  `phoneNum` varchar(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`phoneNum`,`article_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `users_collection_article_ibfk_1` FOREIGN KEY (`phoneNum`) REFERENCES `users` (`phonenum`),
  CONSTRAINT `users_collection_article_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users_publish_article
-- ----------------------------
DROP TABLE IF EXISTS `users_publish_article`;
CREATE TABLE `users_publish_article` (
  `phoneNum` varchar(11) NOT NULL,
  `messageId` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`phoneNum`,`messageId`),
  KEY `messageId` (`messageId`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `users_publish_article_ibfk_1` FOREIGN KEY (`phoneNum`) REFERENCES `users` (`phonenum`),
  CONSTRAINT `users_publish_article_ibfk_2` FOREIGN KEY (`messageId`) REFERENCES `message` (`messageid`),
  CONSTRAINT `users_publish_article_ibfk_3` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users_search_article
-- ----------------------------
DROP TABLE IF EXISTS `users_search_article`;
CREATE TABLE `users_search_article` (
  `phoneNum` varchar(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `times` int(11) NOT NULL,
  PRIMARY KEY (`phoneNum`,`article_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `users_search_article_ibfk_1` FOREIGN KEY (`phoneNum`) REFERENCES `users` (`phonenum`),
  CONSTRAINT `users_search_article_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
