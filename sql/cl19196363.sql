-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: RecycleSystem
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `RecycleSystem`
--

/*!40000 DROP DATABASE IF EXISTS `RecycleSystem`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `RecycleSystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `RecycleSystem`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diqu`
--

DROP TABLE IF EXISTS `diqu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqu` varchar(200) NOT NULL COMMENT '地区',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diqu` (`diqu`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='地区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diqu`
--

LOCK TABLES `diqu` WRITE;
/*!40000 ALTER TABLE `diqu` DISABLE KEYS */;
INSERT INTO `diqu` VALUES (141,'2024-05-09 11:35:19','地区1'),(142,'2024-05-09 11:35:19','地区2'),(143,'2024-05-09 11:35:19','地区3'),(144,'2024-05-09 11:35:19','地区4'),(145,'2024-05-09 11:35:19','地区5'),(146,'2024-05-09 11:35:19','地区6');
/*!40000 ALTER TABLE `diqu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiuwuxinxi`
--

DROP TABLE IF EXISTS `discussjiuwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiuwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='旧物信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiuwuxinxi`
--

LOCK TABLES `discussjiuwuxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiuwuxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussjiuwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (31,'2024-05-09 11:35:18','帖子标题1','帖子内容1',0,'用户名1','file/forumAvatarurl1.jpg,file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg','开放',1),(32,'2024-05-09 11:35:18','帖子标题2','帖子内容2',0,'用户名2','file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg','开放',2),(33,'2024-05-09 11:35:18','帖子标题3','帖子内容3',0,'用户名3','file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg','开放',3),(34,'2024-05-09 11:35:18','帖子标题4','帖子内容4',0,'用户名4','file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg','开放',4),(35,'2024-05-09 11:35:18','帖子标题5','帖子内容5',0,'用户名5','file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg','开放',5),(36,'2024-05-09 11:35:18','帖子标题6','帖子内容6',0,'用户名6','file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg,file/forumAvatarurl8.jpg','开放',6);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fengmian` longtext COMMENT '封面',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (151,'2024-05-09 11:35:19','标题1','file/gonggaoxinxiFengmian1.jpg,file/gonggaoxinxiFengmian2.jpg,file/gonggaoxinxiFengmian3.jpg','简介1','内容1','2024-05-09',1),(152,'2024-05-09 11:35:19','标题2','file/gonggaoxinxiFengmian2.jpg,file/gonggaoxinxiFengmian3.jpg,file/gonggaoxinxiFengmian4.jpg','简介2','内容2','2024-05-09',2),(153,'2024-05-09 11:35:19','标题3','file/gonggaoxinxiFengmian3.jpg,file/gonggaoxinxiFengmian4.jpg,file/gonggaoxinxiFengmian5.jpg','简介3','内容3','2024-05-09',3),(154,'2024-05-09 11:35:19','标题4','file/gonggaoxinxiFengmian4.jpg,file/gonggaoxinxiFengmian5.jpg,file/gonggaoxinxiFengmian6.jpg','简介4','内容4','2024-05-09',4),(155,'2024-05-09 11:35:19','标题5','file/gonggaoxinxiFengmian5.jpg,file/gonggaoxinxiFengmian6.jpg,file/gonggaoxinxiFengmian7.jpg','简介5','内容5','2024-05-09',5),(156,'2024-05-09 11:35:19','标题6','file/gonggaoxinxiFengmian6.jpg,file/gonggaoxinxiFengmian7.jpg,file/gonggaoxinxiFengmian8.jpg','简介6','内容6','2024-05-09',6);
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huishoudingdan`
--

DROP TABLE IF EXISTS `huishoudingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huishoudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiuwumingcheng` varchar(200) DEFAULT NULL COMMENT '旧物名称',
  `jiuwufenlei` varchar(200) DEFAULT NULL COMMENT '旧物分类',
  `huishoudanjia` double DEFAULT NULL COMMENT '回收单价',
  `huishoushuliang` int(11) DEFAULT NULL COMMENT '回收数量',
  `huishouzongjia` double DEFAULT NULL COMMENT '回收总价',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `fenpeizhuangtai` varchar(200) DEFAULT NULL COMMENT '分配状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='回收订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huishoudingdan`
--

LOCK TABLES `huishoudingdan` WRITE;
/*!40000 ALTER TABLE `huishoudingdan` DISABLE KEYS */;
INSERT INTO `huishoudingdan` VALUES (111,'2024-05-09 11:35:19','旧物名称1','旧物分类1',1,1,1,'状态1','用户账号1','用户姓名1','已分配'),(112,'2024-05-09 11:35:19','旧物名称2','旧物分类2',2,2,2,'状态2','用户账号2','用户姓名2','已分配'),(113,'2024-05-09 11:35:19','旧物名称3','旧物分类3',3,3,3,'状态3','用户账号3','用户姓名3','已分配'),(114,'2024-05-09 11:35:19','旧物名称4','旧物分类4',4,4,4,'状态4','用户账号4','用户姓名4','已分配'),(115,'2024-05-09 11:35:19','旧物名称5','旧物分类5',5,5,5,'状态5','用户账号5','用户姓名5','已分配'),(116,'2024-05-09 11:35:19','旧物名称6','旧物分类6',6,6,6,'状态6','用户账号6','用户姓名6','已分配');
/*!40000 ALTER TABLE `huishoudingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huishoufenpei`
--

DROP TABLE IF EXISTS `huishoufenpei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huishoufenpei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiuwumingcheng` varchar(200) DEFAULT NULL COMMENT '旧物名称',
  `jiuwufenlei` varchar(200) DEFAULT NULL COMMENT '旧物分类',
  `huishoushuliang` int(11) DEFAULT NULL COMMENT '回收数量',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `fenpeishijian` datetime DEFAULT NULL COMMENT '分配时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  `shangmenzhuangtai` varchar(200) DEFAULT NULL COMMENT '上门状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='回收分配';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huishoufenpei`
--

LOCK TABLES `huishoufenpei` WRITE;
/*!40000 ALTER TABLE `huishoufenpei` DISABLE KEYS */;
INSERT INTO `huishoufenpei` VALUES (131,'2024-05-09 11:35:19','旧物名称1','旧物分类1',1,'用户账号1','用户姓名1','2024-05-09 19:35:19','人员账号1','人员姓名1','已回收'),(132,'2024-05-09 11:35:19','旧物名称2','旧物分类2',2,'用户账号2','用户姓名2','2024-05-09 19:35:19','人员账号2','人员姓名2','已回收'),(133,'2024-05-09 11:35:19','旧物名称3','旧物分类3',3,'用户账号3','用户姓名3','2024-05-09 19:35:19','人员账号3','人员姓名3','已回收'),(134,'2024-05-09 11:35:19','旧物名称4','旧物分类4',4,'用户账号4','用户姓名4','2024-05-09 19:35:19','人员账号4','人员姓名4','已回收'),(135,'2024-05-09 11:35:19','旧物名称5','旧物分类5',5,'用户账号5','用户姓名5','2024-05-09 19:35:19','人员账号5','人员姓名5','已回收'),(136,'2024-05-09 11:35:19','旧物名称6','旧物分类6',6,'用户账号6','用户姓名6','2024-05-09 19:35:19','人员账号6','人员姓名6','已回收');
/*!40000 ALTER TABLE `huishoufenpei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huishourenyuan`
--

DROP TABLE IF EXISTS `huishourenyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huishourenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renyuanzhanghao` varchar(200) NOT NULL COMMENT '人员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `renyuanxingming` varchar(200) NOT NULL COMMENT '人员姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `renyuanzhanghao` (`renyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='回收人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huishourenyuan`
--

LOCK TABLES `huishourenyuan` WRITE;
/*!40000 ALTER TABLE `huishourenyuan` DISABLE KEYS */;
INSERT INTO `huishourenyuan` VALUES (51,'2024-05-09 11:35:18','人员账号1','123456','人员姓名1','file/huishourenyuanTouxiang1.jpg','男','19819881111'),(52,'2024-05-09 11:35:18','人员账号2','123456','人员姓名2','file/huishourenyuanTouxiang2.jpg','男','19819881112'),(53,'2024-05-09 11:35:18','人员账号3','123456','人员姓名3','file/huishourenyuanTouxiang3.jpg','男','19819881113'),(54,'2024-05-09 11:35:18','人员账号4','123456','人员姓名4','file/huishourenyuanTouxiang4.jpg','男','19819881114'),(55,'2024-05-09 11:35:18','人员账号5','123456','人员姓名5','file/huishourenyuanTouxiang5.jpg','男','19819881115'),(56,'2024-05-09 11:35:18','人员账号6','123456','人员姓名6','file/huishourenyuanTouxiang6.jpg','男','19819881116');
/*!40000 ALTER TABLE `huishourenyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuwufenlei`
--

DROP TABLE IF EXISTS `jiuwufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuwufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiuwufenlei` varchar(200) NOT NULL COMMENT '旧物分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiuwufenlei` (`jiuwufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='旧物分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuwufenlei`
--

LOCK TABLES `jiuwufenlei` WRITE;
/*!40000 ALTER TABLE `jiuwufenlei` DISABLE KEYS */;
INSERT INTO `jiuwufenlei` VALUES (91,'2024-05-09 11:35:19','旧物分类1'),(92,'2024-05-09 11:35:19','旧物分类2'),(93,'2024-05-09 11:35:19','旧物分类3'),(94,'2024-05-09 11:35:19','旧物分类4'),(95,'2024-05-09 11:35:19','旧物分类5'),(96,'2024-05-09 11:35:19','旧物分类6');
/*!40000 ALTER TABLE `jiuwufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuwuxinxi`
--

DROP TABLE IF EXISTS `jiuwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiuwumingcheng` varchar(200) DEFAULT NULL COMMENT '旧物名称',
  `jiuwufenlei` varchar(200) DEFAULT NULL COMMENT '旧物分类',
  `tupian` longtext COMMENT '图片',
  `huishoudanjia` double DEFAULT NULL COMMENT '回收单价',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `xiangqing` varchar(200) DEFAULT NULL COMMENT '详情',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='旧物信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuwuxinxi`
--

LOCK TABLES `jiuwuxinxi` WRITE;
/*!40000 ALTER TABLE `jiuwuxinxi` DISABLE KEYS */;
INSERT INTO `jiuwuxinxi` VALUES (101,'2024-05-09 11:35:19','旧物名称1','旧物分类1','file/jiuwuxinxiTupian1.jpg,file/jiuwuxinxiTupian2.jpg,file/jiuwuxinxiTupian3.jpg',1,'可用','详情1',1,1,'地区1'),(102,'2024-05-09 11:35:19','旧物名称2','旧物分类2','file/jiuwuxinxiTupian2.jpg,file/jiuwuxinxiTupian3.jpg,file/jiuwuxinxiTupian4.jpg',2,'可用','详情2',2,2,'地区2'),(103,'2024-05-09 11:35:19','旧物名称3','旧物分类3','file/jiuwuxinxiTupian3.jpg,file/jiuwuxinxiTupian4.jpg,file/jiuwuxinxiTupian5.jpg',3,'可用','详情3',3,3,'地区3'),(104,'2024-05-09 11:35:19','旧物名称4','旧物分类4','file/jiuwuxinxiTupian4.jpg,file/jiuwuxinxiTupian5.jpg,file/jiuwuxinxiTupian6.jpg',4,'可用','详情4',4,4,'地区4'),(105,'2024-05-09 11:35:19','旧物名称5','旧物分类5','file/jiuwuxinxiTupian5.jpg,file/jiuwuxinxiTupian6.jpg,file/jiuwuxinxiTupian7.jpg',5,'可用','详情5',5,5,'地区5'),(106,'2024-05-09 11:35:19','旧物名称6','旧物分类6','file/jiuwuxinxiTupian6.jpg,file/jiuwuxinxiTupian7.jpg,file/jiuwuxinxiTupian8.jpg',6,'可用','详情6',6,6,'地区6');
/*!40000 ALTER TABLE `jiuwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-05-09 11:35:19','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common44\",\"menu\":\"管理员管理\",\"unicode\":\"&#xef28;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"回收人员\",\"menuJump\":\"列表\",\"tableName\":\"huishourenyuan\"}],\"fontClass\":\"icon-user4\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"旧物分类\",\"menuJump\":\"列表\",\"tableName\":\"jiuwufenlei\"},{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"旧物类型\",\"查看评论\",\"首页总数\",\"首页统计\"],\"menu\":\"旧物信息\",\"menuJump\":\"列表\",\"tableName\":\"jiuwuxinxi\"}],\"fontClass\":\"icon-common44\",\"menu\":\"旧物信息管理\",\"unicode\":\"&#xef28;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"删除\",\"回收数量统计\",\"首页总数\",\"分配\",\"首页统计\",\"废品行情\"],\"menu\":\"回收订单\",\"menuJump\":\"列表\",\"tableName\":\"huishoudingdan\"}],\"fontClass\":\"icon-common13\",\"menu\":\"回收预约管理\",\"unicode\":\"&#xedf7;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"回收分配\",\"menuJump\":\"列表\",\"tableName\":\"huishoufenpei\"}],\"fontClass\":\"icon-common18\",\"menu\":\"回收分配管理\",\"unicode\":\"&#xedff;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"上门回收\",\"menuJump\":\"列表\",\"tableName\":\"shangmenhuishou\"}],\"fontClass\":\"icon-common19\",\"menu\":\"上门回收管理\",\"unicode\":\"&#xee00;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"资讯分类\",\"menuJump\":\"列表\",\"tableName\":\"zixunfenlei\"},{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"资讯信息\",\"menuJump\":\"列表\",\"tableName\":\"zixunxinxi\"}],\"fontClass\":\"icon-common12\",\"menu\":\"资讯信息管理\",\"unicode\":\"&#xedf4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"删除\",\"查看评论\"],\"menu\":\"论坛交流\",\"tableName\":\"forum\"}],\"fontClass\":\"icon-common33\",\"menu\":\"论坛管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common7\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xedb4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"地区\",\"menuJump\":\"列表\",\"tableName\":\"diqu\"}],\"fontClass\":\"icon-common5\",\"menu\":\"地区管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"fontClass\":\"icon-common43\",\"menu\":\"公告信息管理\",\"unicode\":\"&#xef27;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"预约\",\"回收订单\"],\"menu\":\"旧物信息\",\"menuJump\":\"列表\",\"tableName\":\"jiuwuxinxi\"}],\"menu\":\"旧物信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛交流\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\"],\"menu\":\"资讯信息\",\"menuJump\":\"列表\",\"tableName\":\"zixunxinxi\"}],\"menu\":\"资讯信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"回收订单\",\"menuJump\":\"列表\",\"tableName\":\"huishoudingdan\"}],\"fontClass\":\"icon-common13\",\"menu\":\"回收预约管理\",\"unicode\":\"&#xedf7;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"回收分配\",\"menuJump\":\"列表\",\"tableName\":\"huishoufenpei\"}],\"fontClass\":\"icon-common18\",\"menu\":\"回收分配管理\",\"unicode\":\"&#xedff;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"上门回收\",\"menuJump\":\"列表\",\"tableName\":\"shangmenhuishou\"}],\"fontClass\":\"icon-common19\",\"menu\":\"上门回收管理\",\"unicode\":\"&#xee00;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"我的发布\",\"menuJump\":\"14\",\"tableName\":\"forum\"}],\"fontClass\":\"icon-common33\",\"menu\":\"论坛管理\",\"unicode\":\"&#xee6a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common7\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedb4;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"预约\",\"回收订单\"],\"menu\":\"旧物信息\",\"menuJump\":\"列表\",\"tableName\":\"jiuwuxinxi\"}],\"menu\":\"旧物信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛交流\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\"],\"menu\":\"资讯信息\",\"menuJump\":\"列表\",\"tableName\":\"zixunxinxi\"}],\"menu\":\"资讯信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"删除\",\"上门\"],\"menu\":\"回收分配\",\"menuJump\":\"列表\",\"tableName\":\"huishoufenpei\"}],\"fontClass\":\"icon-common18\",\"menu\":\"回收分配管理\",\"unicode\":\"&#xedff;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"上门回收\",\"menuJump\":\"列表\",\"tableName\":\"shangmenhuishou\"}],\"fontClass\":\"icon-common19\",\"menu\":\"上门回收管理\",\"unicode\":\"&#xee00;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"预约\",\"回收订单\"],\"menu\":\"旧物信息\",\"menuJump\":\"列表\",\"tableName\":\"jiuwuxinxi\"}],\"menu\":\"旧物信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛交流\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"menu\":\"公告信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\"],\"menu\":\"资讯信息\",\"menuJump\":\"列表\",\"tableName\":\"zixunxinxi\"}],\"menu\":\"资讯信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"回收人员\",\"tableName\":\"huishourenyuan\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangmenhuishou`
--

DROP TABLE IF EXISTS `shangmenhuishou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangmenhuishou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiuwumingcheng` varchar(200) DEFAULT NULL COMMENT '旧物名称',
  `jiuwufenlei` varchar(200) DEFAULT NULL COMMENT '旧物分类',
  `huishoushuliang` int(11) DEFAULT NULL COMMENT '回收数量',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `huishoushijian` datetime DEFAULT NULL COMMENT '回收时间',
  `renyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '人员账号',
  `renyuanxingming` varchar(200) DEFAULT NULL COMMENT '人员姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='上门回收';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangmenhuishou`
--

LOCK TABLES `shangmenhuishou` WRITE;
/*!40000 ALTER TABLE `shangmenhuishou` DISABLE KEYS */;
INSERT INTO `shangmenhuishou` VALUES (121,'2024-05-09 11:35:19','旧物名称1','旧物分类1',1,'用户账号1','用户姓名1','2024-05-09 19:35:19','人员账号1','人员姓名1'),(122,'2024-05-09 11:35:19','旧物名称2','旧物分类2',2,'用户账号2','用户姓名2','2024-05-09 19:35:19','人员账号2','人员姓名2'),(123,'2024-05-09 11:35:19','旧物名称3','旧物分类3',3,'用户账号3','用户姓名3','2024-05-09 19:35:19','人员账号3','人员姓名3'),(124,'2024-05-09 11:35:19','旧物名称4','旧物分类4',4,'用户账号4','用户姓名4','2024-05-09 19:35:19','人员账号4','人员姓名4'),(125,'2024-05-09 11:35:19','旧物名称5','旧物分类5',5,'用户账号5','用户姓名5','2024-05-09 19:35:19','人员账号5','人员姓名5'),(126,'2024-05-09 11:35:19','旧物名称6','旧物分类6',6,'用户账号6','用户姓名6','2024-05-09 19:35:19','人员账号6','人员姓名6');
/*!40000 ALTER TABLE `shangmenhuishou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,51,'人员账号1','huishourenyuan','回收人员','2em978bds90bi1y6qs98k04fsavqzw52','2024-05-09 11:59:49','2024-05-09 12:59:50'),(2,1,'admin','users','管理员','cvlq602f0f2n55k7eozxrupdws8o5op6','2024-05-09 12:00:08','2024-05-09 13:00:08');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-05-09 11:35:19','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2024-05-09 11:35:18','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111'),(42,'2024-05-09 11:35:18','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112'),(43,'2024-05-09 11:35:18','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113'),(44,'2024-05-09 11:35:18','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114'),(45,'2024-05-09 11:35:18','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115'),(46,'2024-05-09 11:35:18','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zixunfenlei`
--

DROP TABLE IF EXISTS `zixunfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zixunfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunfenlei` varchar(200) NOT NULL COMMENT '资讯分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zixunfenlei` (`zixunfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='资讯分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zixunfenlei`
--

LOCK TABLES `zixunfenlei` WRITE;
/*!40000 ALTER TABLE `zixunfenlei` DISABLE KEYS */;
INSERT INTO `zixunfenlei` VALUES (61,'2024-05-09 11:35:18','资讯分类1'),(62,'2024-05-09 11:35:18','资讯分类2'),(63,'2024-05-09 11:35:18','资讯分类3'),(64,'2024-05-09 11:35:18','资讯分类4'),(65,'2024-05-09 11:35:18','资讯分类5'),(66,'2024-05-09 11:35:18','资讯分类6');
/*!40000 ALTER TABLE `zixunfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zixunxinxi`
--

DROP TABLE IF EXISTS `zixunxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zixunxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) NOT NULL COMMENT '资讯标题',
  `zixunfenlei` varchar(200) DEFAULT NULL COMMENT '资讯分类',
  `fengmian` longtext COMMENT '封面',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='资讯信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zixunxinxi`
--

LOCK TABLES `zixunxinxi` WRITE;
/*!40000 ALTER TABLE `zixunxinxi` DISABLE KEYS */;
INSERT INTO `zixunxinxi` VALUES (71,'2024-05-09 11:35:18','资讯标题1','资讯分类1','file/zixunxinxiFengmian1.jpg,file/zixunxinxiFengmian2.jpg,file/zixunxinxiFengmian3.jpg','简介1','内容1','2024-05-09',1),(72,'2024-05-09 11:35:18','资讯标题2','资讯分类2','file/zixunxinxiFengmian2.jpg,file/zixunxinxiFengmian3.jpg,file/zixunxinxiFengmian4.jpg','简介2','内容2','2024-05-09',2),(73,'2024-05-09 11:35:18','资讯标题3','资讯分类3','file/zixunxinxiFengmian3.jpg,file/zixunxinxiFengmian4.jpg,file/zixunxinxiFengmian5.jpg','简介3','内容3','2024-05-09',3),(74,'2024-05-09 11:35:18','资讯标题4','资讯分类4','file/zixunxinxiFengmian4.jpg,file/zixunxinxiFengmian5.jpg,file/zixunxinxiFengmian6.jpg','简介4','内容4','2024-05-09',4),(75,'2024-05-09 11:35:18','资讯标题5','资讯分类5','file/zixunxinxiFengmian5.jpg,file/zixunxinxiFengmian6.jpg,file/zixunxinxiFengmian7.jpg','简介5','内容5','2024-05-09',5),(76,'2024-05-09 11:35:19','资讯标题6','资讯分类6','file/zixunxinxiFengmian6.jpg,file/zixunxinxiFengmian7.jpg,file/zixunxinxiFengmian8.jpg','简介6','内容6','2024-05-09',6);
/*!40000 ALTER TABLE `zixunxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-20 16:41:43
