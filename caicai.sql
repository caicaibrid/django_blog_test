-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: blog_caicai
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8,
  `content` text CHARACTER SET utf8,
  `create_time` text,
  `image_url` varchar(200) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (2,'css 换行121223333333333','work-sapce:break-word','2017-04-13 18:48:00','/static/upload/13.jpg',4),(5,'css 换行12122','work-sapce:break-word','2017-04-13 18:47:04','/static/upload/javascript2.jpg',4),(6,'css 换行12122','work-sapce:break-word','2017-04-13 18:47:04','/static/upload/javascript2.jpg',4),(7,'css 换行12122','work-sapce:break-word','2017-04-13 18:47:04','/static/upload/javascript2.jpg',4),(8,'css 换行12122','work-sapce:break-word','2017-04-13 18:47:04','/static/upload/javascript2.jpg',4),(9,'css 换行12122','work-sapce:break-word','2017-04-13 18:47:04','/static/upload/javascript2.jpg',4),(10,'css 换行12122','work-sapce:break-word','2017-04-13 18:47:04','/static/upload/javascript2.jpg',4),(11,'222','222','2017-04-13 18:50:54','/static/upload/11.jpg',2),(12,'django','django','2017-04-14 14:02:17','/static/upload/24.jpg',5),(13,'文章标题','文章内容','2017-04-14 14:02:49','/static/upload/4.jpg',3),(14,'对象的扩展','<pre class=\"prettyprint lang-js\">\r\n<ol class=\"content-toc\" id=\"content-toc\" style=\"background:#BDC3C7;color:#333333;font-family:Verdana, Arial;font-size:15.36px;\">\r\n	\r\n	<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n		<a href=\"http://es6.ruanyifeng.com/#docs/object#属性的简洁表示法\">属性的简洁表示法</a> \r\n	</li>\r\n\r\n	<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n		<a href=\"http://es6.ruanyifeng.com/#docs/object#属性名表达式\">属性名表达式</a> \r\n	</li>\r\n\r\n	<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n		<a href=\"http://es6.ruanyifeng.com/#docs/object#方法的 name 属性\">方法的 name 属性</a> \r\n	</li>\r\n\r\n	<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n		<a href=\"http://es6.ruanyifeng.com/#docs/object#Object.is()\">Object.is()</a> \r\n	</li>\r\n\r\n	<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n		<a href=\"http://es6.ruanyifeng.com/#docs/object#Object.assign()\">Object.assign()</a> \r\n	</li>\r\n\r\n	<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n		<a href=\"http://es6.ruanyifeng.com/#docs/object#属性的可枚举性\">属性的可枚举性</a> \r\n	</li>\r\n\r\n	<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n		<a href=\"http://es6.ruanyifeng.com/#docs/object#属性的遍历\">属性的遍历</a> \r\n	</li>\r\n\r\n	<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n		<a href=\"http://es6.ruanyifeng.com/#docs/object#__proto__属性，Object.setPrototypeOf()，Object.getPrototypeOf()\">__proto__属性，Object.setPrototypeOf()，Object.getPrototypeOf()</a> \r\n	</li>\r\n\r\n	<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n		<a href=\"http://es6.ruanyifeng.com/#docs/object#Object.keys()，Object.values()，Object.entries()\">Object.keys()，Object.values()，Object.entries()</a> \r\n	</li>\r\n\r\n	<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n		<a href=\"http://es6.ruanyifeng.com/#docs/object#对象的扩展运算符\">对象的扩展运算符</a> \r\n	</li>\r\n\r\n	<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n		<a href=\"http://es6.ruanyifeng.com/#docs/object#Object.getOwnPropertyDescriptors()\">Object.getOwnPropertyDescriptors()</a> \r\n	</li>\r\n\r\n	<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n		<a href=\"http://es6.ruanyifeng.com/#docs/object#Null 传导运算符\">Null 传导运算符</a> \r\n	</li>\r\n\r\n</ol>\r\n\r\n<h3>\r\n	\r\n</h3>\r\n</pre>','2017-04-14 14:46:43','/static/upload/javascript18.jpg',2),(15,'数组的扩展','<p>\r\n	<img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<ol class=\"content-toc\" id=\"content-toc\" style=\"background:#BDC3C7;color:#333333;font-family:Verdana, Arial;font-size:15.36px;\">\r\n		<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n			<a href=\"http://es6.ruanyifeng.com/#docs/array#Array.from()\">Array.from()</a>\r\n		</li>\r\n		<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n			<a href=\"http://es6.ruanyifeng.com/#docs/array#Array.of()\">Array.of()</a>\r\n		</li>\r\n		<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n			<a href=\"http://es6.ruanyifeng.com/#docs/array#数组实例的copyWithin()\">数组实例的copyWithin()</a>\r\n		</li>\r\n		<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n			<a href=\"http://es6.ruanyifeng.com/#docs/array#数组实例的find()和findIndex()\">数组实例的find()和findIndex()</a>\r\n		</li>\r\n		<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n			<a href=\"http://es6.ruanyifeng.com/#docs/array#数组实例的fill()\">数组实例的fill()</a>\r\n		</li>\r\n		<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n			<a href=\"http://es6.ruanyifeng.com/#docs/array#数组实例的entries()，keys()和values()\">数组实例的entries()，keys()和values()</a>\r\n		</li>\r\n		<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n			<a href=\"http://es6.ruanyifeng.com/#docs/array#数组实例的includes()\">数组实例的includes()</a>\r\n		</li>\r\n		<li class=\"link\" style=\"text-indent:-5px;font-size:0.7rem;color:#2980B9;font-weight:bold;\">\r\n			<a href=\"http://es6.ruanyifeng.com/#docs/array#数组的空位\">数组的空位</a>\r\n		</li>\r\n	</ol>\r\n<img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span id=\"__kindeditor_bookmark_start_24__\"></span>\r\n</p>\r\n<span></span>','2017-04-14 14:55:21','/static/upload/javascript14.png',2),(16,'我的位置','<p>\r\n	<u><s><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/40.gif\" border=\"0\" alt=\"\" />我的位置在哪里呢?哈哈哈</s></u><u><s><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/31.gif\" border=\"0\" alt=\"\" /></s></u>\r\n</p>\r\n<p>\r\n	<img src=\"http://api.map.baidu.com/staticimage?center=116.460931%2C39.965056&amp;zoom=15&amp;width=558&amp;height=360&amp;markers=116.460931%2C39.965056&amp;markerStyles=l%2CA\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1492163400653&di=6b5450c682e03e55fb179b3f08b8502d&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%253D580%2Fsign%3Dfeeeeeac38f33a879e6d0012f65d1018%2Fe5cd1afae6cd7b89b586571f0d2442a7db330e89.jpg\" width=\"300\" height=\"300\" title=\"SELECT column_name, function(column_name) FROM table_name WHERE column_name operator value GROUP BY column_name;  mysql> select * from user; +----+---------+------------+ | id | name    | time_count | +----+---------+------------+ |  1 | caicai2 |          1 | |  2 | caicai3 |          2 | |  3 | caicai3 |          3 | |  5 | caicai5 |          5 | |  6 | caicai5 |          5 | +----+---------+------------+  mysql> select name,sum(time_count) from user group by name;　name字段对应的名字出现的总次数的和 +---------+-----------------+ | name    | sum(time_count) | +---------+-----------------+ | caicai2 |               1 | | caicai3 |               5 | | caicai5 |              10 | +---------+-----------------+  mysql> select name,count(time_count) from user group by name;　name字段对应的名字出现的次数　 +---------+-------------------+ | name    | count(time_count) | +---------+-------------------+ | caicai2 |                 1 | | caicai3 |                 2 | | caicai5 |                 2 | +---------+-------------------+\" align=\"right\" alt=\"SELECT column_name, function(column_name) FROM table_name WHERE column_name operator value GROUP BY column_name;  mysql> select * from user; +----+---------+------------+ | id | name    | time_count | +----+---------+------------+ |  1 | caicai2 |          1 | |  2 | caicai3 |          2 | |  3 | caicai3 |          3 | |  5 | caicai5 |          5 | |  6 | caicai5 |          5 | +----+---------+------------+  mysql> select name,sum(time_count) from user group by name;　name字段对应的名字出现的总次数的和 +---------+-----------------+ | name    | sum(time_count) | +---------+-----------------+ | caicai2 |               1 | | caicai3 |               5 | | caicai5 |              10 | +---------+-----------------+  mysql> select name,count(time_count) from user group by name;　name字段对应的名字出现的次数　 +---------+-------------------+ | name    | count(time_count) | +---------+-------------------+ | caicai2 |                 1 | | caicai3 |                 2 | | caicai5 |                 2 | +---------+-------------------+\" />\r\n</p>','2017-04-14 15:03:28','/static/upload/12.jpg',8),(17,'html','<pre class=\"prettyprint lang-js\"><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" /><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" /><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" /></pre>\r\n<pre class=\"prettyprint lang-js\">.单行{\r\n     white-space:nowrap;\r\n     text-overflow:ellipsis;\r\n     overflow:hidden\r\n}\r\n.多行{\r\n    display:-webkit-box;\r\n    -webkit-box-orient:vertical;\r\n    -webkit-line-clamp: 2;\r\n    white-space:nowrap;\r\n    text-overflow:ellipsis;\r\n    overflow:hidden\r\n}\r\n</pre>','2017-04-14 15:19:39','/static/upload/javascript30.jpg',1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articleClass`
--

DROP TABLE IF EXISTS `articleClass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articleClass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleClass`
--

LOCK TABLES `articleClass` WRITE;
/*!40000 ALTER TABLE `articleClass` DISABLE KEYS */;
INSERT INTO `articleClass` VALUES (1,'html'),(2,'javascript'),(3,'python'),(4,'css'),(5,'django'),(8,'1112');
/*!40000 ALTER TABLE `articleClass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `create_time` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'我是评论',14,12,'2017-04-14 19:07:21'),(2,'<img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" /><span></span><img src=\"http://localhost:8000/static/lib/kinded/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" /><span></span>',14,12,'2017-04-14 19:08:39');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-04-12 05:25:38'),(2,'auth','0001_initial','2017-04-12 05:25:42'),(3,'admin','0001_initial','2017-04-12 05:25:43'),(4,'admin','0002_logentry_remove_auto_add','2017-04-12 05:25:43'),(5,'contenttypes','0002_remove_content_type_name','2017-04-12 05:25:43'),(6,'auth','0002_alter_permission_name_max_length','2017-04-12 05:25:43'),(7,'auth','0003_alter_user_email_max_length','2017-04-12 05:25:44'),(8,'auth','0004_alter_user_username_opts','2017-04-12 05:25:44'),(9,'auth','0005_alter_user_last_login_null','2017-04-12 05:25:44'),(10,'auth','0006_require_contenttypes_0002','2017-04-12 05:25:44'),(11,'auth','0007_alter_validators_add_error_messages','2017-04-12 05:25:44'),(12,'auth','0008_alter_user_username_max_length','2017-04-12 05:25:44'),(13,'sessions','0001_initial','2017-04-12 05:25:45');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('gfhb0v1ixg4irzji1euck0ymge138sa6','MmM2MTIyMTQ1MGI0MTdjZjU3MDFhMWU4MmRjNDNmNzEzOTQ1ODcwNzp7ImNvZGUiOiJ0Y3Z2In0=','2017-04-28 11:08:53');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(1024) NOT NULL,
  `password` varchar(1024) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(1024) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('liuxin','4b91719a6e0b1ec03508d3d41490b5f2','admin@newborn-town.com',1,'/static/upload/javascript5.png',3),('caicai','c58d54a04e0b2b2e285a3424c5245c03','caicai@qq.com',5,'/static/upload/javascript3.jpg',2),('caicai3','cddbdd18987eb3cb4d027f25fdb28b94','caicai3@qq.com',6,'/static/upload/javascript4.jpg',3),('caicai5','017df468ad446693c4085412681f6c69','caicai5@qq.com',7,'/static/upload/javascript16.jpg',3),('caicai88','873f73fa1748da0163b0e48b982207a4','caicai88@qq.com',8,'/static/upload/13.jpg',2),('111','698d51a19d8a121ce581499d7b701668','111@qq.com',9,'/static/upload/16.jpg',3),('222','bcbe3365e6ac95ea2c0343a2395834dd','222@qq.com',10,'/static/upload/14.jpg',3),('333','310dcbbf4cce62f762a2aaa148d556bd','333@qq.com',13,'/static/upload/17.jpg',3),('caicai888','bcd015d4d1a9fd82fb2723b03f38c0da','caicai888@qq.com',14,'/static/upload/8.jpg',2),('caicai666','b68cadb71f3bf0c0605884dac9a513f9','caicai666@qq.com',15,'/static/image/load.jpg',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-14 19:09:19
