/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : bestone

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-03-21 21:39:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(90) NOT NULL,
  `phoneNum` varchar(11) DEFAULT NULL,
  `article_text` text,
  `overview` int(11) DEFAULT '0',
  `thumbsUp` int(11) DEFAULT '0',
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `article_ibfk_1` (`phoneNum`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`phoneNum`) REFERENCES `users` (`phoneNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for `article_label`
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
-- Records of article_label
-- ----------------------------

-- ----------------------------
-- Table structure for `classify`
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `classify_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`classify_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classify
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
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
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`phoneNum`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`),
  CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`root_id`) REFERENCES `comment` (`comment_id`),
  CONSTRAINT `comment_ibfk_4` FOREIGN KEY (`parent`) REFERENCES `comment` (`comment_id`),
  CONSTRAINT `comment_ibfk_5` FOREIGN KEY (`reply_id`) REFERENCES `users` (`phoneNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `comment_article`
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
-- Records of comment_article
-- ----------------------------

-- ----------------------------
-- Table structure for `comment_root`
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
-- Records of comment_root
-- ----------------------------

-- ----------------------------
-- Table structure for `label`
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of label
-- ----------------------------

-- ----------------------------
-- Table structure for `label_classify`
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

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messageId` int(11) NOT NULL,
  `messageClass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `pictures`
-- ----------------------------
DROP TABLE IF EXISTS `pictures`;
CREATE TABLE `pictures` (
  `pictures_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pictures_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `pictures_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pictures
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
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
  PRIMARY KEY (`phoneNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('123456', '123456', 'xyz', '女', '3', null, null, null, null);
INSERT INTO `users` VALUES ('13186521908', '123456', 'cc', '男', '0', null, null, '为了星辰大海', null);

-- ----------------------------
-- Table structure for `users_collection_article`
-- ----------------------------
DROP TABLE IF EXISTS `users_collection_article`;
CREATE TABLE `users_collection_article` (
  `phoneNum` varchar(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`phoneNum`,`article_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `users_collection_article_ibfk_1` FOREIGN KEY (`phoneNum`) REFERENCES `users` (`phoneNum`),
  CONSTRAINT `users_collection_article_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_collection_article
-- ----------------------------

-- ----------------------------
-- Table structure for `users_publish_article`
-- ----------------------------
DROP TABLE IF EXISTS `users_publish_article`;
CREATE TABLE `users_publish_article` (
  `phoneNum` varchar(11) NOT NULL,
  `messageId` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`phoneNum`,`messageId`),
  KEY `messageId` (`messageId`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `users_publish_article_ibfk_1` FOREIGN KEY (`phoneNum`) REFERENCES `users` (`phoneNum`),
  CONSTRAINT `users_publish_article_ibfk_2` FOREIGN KEY (`messageId`) REFERENCES `message` (`messageId`),
  CONSTRAINT `users_publish_article_ibfk_3` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_publish_article
-- ----------------------------

-- ----------------------------
-- Table structure for `users_search_article`
-- ----------------------------
DROP TABLE IF EXISTS `users_search_article`;
CREATE TABLE `users_search_article` (
  `phoneNum` varchar(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `times` int(11) NOT NULL,
  PRIMARY KEY (`phoneNum`,`article_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `users_search_article_ibfk_1` FOREIGN KEY (`phoneNum`) REFERENCES `users` (`phoneNum`),
  CONSTRAINT `users_search_article_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_search_article
-- ----------------------------
