/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 5.6.50-log : Database - zy_zunyunkeji_co
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `yx_anli` */

DROP TABLE IF EXISTS `yx_anli`;

CREATE TABLE `yx_anli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `yx_anli` */

insert  into `yx_anli`(`id`,`title`,`content`,`img`) values (1,'仟家百业','\n                            \n                            这是一个大型便民信息平台，延申出多种功能，全球性网站，收录各个地区的便民信息，能够快速的找到自己所需要的信息。                                                ','/uploads/anli/20220218/dfc427c6c32313760481532f095bea74.jpg'),(2,'联合征信公众号','\n                            一个人的征信很重要，那么征信出现了黑点怎么办，那就找联合征信。这是一个公众号系统，如果征信出现了问题，可在公众号内进行申请修复。                        ','/uploads/anli/20220218/c30a8eb795acc4219306df012016d9b0.jpg'),(3,'维森啤酒小程序商城','\n                            这是一款线下结合线上的小程序商城，线上消费得积分，线下到店核销兑换礼品。                        ','/uploads/anli/20220218/4d2b1eaeb6caa23f1e0cd4b6a82caea5.jpg'),(4,'本城通公众号','\n                            这是一个线上的地方便民信息平台，可发布生活中各种各样的便民信息。                        ','/uploads/anli/20220218/023f5522da65f498ecf2631907bd2035.jpg'),(5,'夏沫好鲜生外卖小程序','\n                            夏沫好鲜生外卖小程序是关于一个外卖的小程序，让用户的生活变得更方便，更快捷。                        ','/uploads/anli/20220218/f5dd4c64cae5f33a27436d9820b15795.jpg'),(6,'叶圣陶杯官方网站','\n                            叶圣陶杯官方网站主要是针对中小学生作文评比展开的赛事，学生们通过注册成为会员，上传自己的比赛作品，官方评比之后，发放入围证书。此定制网站设计符合赛事风格。                        ','/uploads/anli/20220218/9dafa95534a5ed83f518b5749e66e9d3.jpg'),(7,'芯想芯创机器人教育品牌网站','\n                            芯想芯创机器人教育品牌，2015年在北京创立，伴随中国人工智能时代，中国人工智能教育的普及，第一家芯想芯创机器人教育机构于2017年在河北省会石家庄落成，2020年1月1日创新成为芯想芯创机器人全新情景课程教育体系。                        ','/uploads/anli/20220218/aec79544a2ef4ba50fc80c312dc9676a.jpg'),(8,'物与非遗投票系统','\n                            物与非遗投票系统用于展示客户的非物质文化遗产的成果，展示各大中小学学生的作品，进行投票展示.                        ','/uploads/anli/20220218/f7615f53d13199ecc31c751db8fb0625.jpg'),(9,'河北东石投资管理有限公司官网','河北东石投资管理有限公司成立于2014年12月2日，注册资金5000万元，主要从事房地产开发。公司结构以现代企业制度为基础，具有完善的管理和运营制度，各部门之间分工明确，协作顺畅。公司拥有中、高级职称或大学本科以上学历的人员占职工总数的90%以上，具有雄厚的资金实力和高度专业化的项目开发管理能力，是河北省一直具有强烈社会责任感和引领房地产行业科技创新的地产新军。','https://zunyunkeji.net/uploads/210626/1-2106260915432N.jpg'),(10,'石家庄裕龙实业有限公司官网','石家庄开发区裕龙实业有限公司成立于1995年，坐落在石家庄市高新技术开发区淮河大道198号。公司注册资本2737万元，总资产超过三亿元，净资产2.5亿元。公司现有员工260多人，是河北省高新技术企业。随着国家“走出去”及“一带一路”政策的实施，公司积极响应，在国外投资拓展业务。到目前公司已拥有河北裕龙科技股份有限公司，晋州裕龙汽车配件有限公司，河北裕龙贸易有限公司，裕龙（美国）公司及一家非洲子公司，其业务为高端装备制造零配件为主，兼营贸易与投资的集团型公司。','https://zunyunkeji.net/uploads/210626/1-210626091451632.jpg'),(11,'林记卤味','林记卤味小程序,主要是卖林记卤味品牌下的鸭货，我司为其设计并开发了微信公众号商城、小程序商城以及企业官网','	https://zunyunkeji.net/uploads/210626/1-210626091420927.jpg'),(12,'副业青年小程序','用户端：用户可以在小程序首页进行筛选，搜索任务，进行接单。 雇主端：可以进入小程序进行发布任务，用户接单之后和雇主进行沟通，及时高效的完成任务。 用户端与雇主端之间能够互相切换。用户首次登入小程序需要进行填写信息认证然后后台进行审核，完成之后方可接单。雇主在发布任务之后需要支付订单金额给平台。在用户完成之后，提交成功，并教会雇主操作，之后雇主进行确认，任务完成。平台把任务金额支付给用户。如果任务发生问题，雇主有权利向平台发钱诉讼，要求用户进行解决问题，以及退款。用户在接到任务一定时间内，没有及时反馈。','	https://zunyunkeji.net/uploads/210626/1-210626091420927.jpg'),(13,'拼车公众号','这是一款拼车的公众号。分为乘客跟司机两个身份，司机需要进行认证，平台审核，完成后方可接单。乘客可发布自己的行程来进行找车，拼车。','	https://zunyunkeji.net/uploads/210626/1-210626091114296.jpg'),(14,'平山闲物换钱','\n                            这是一个能够发布帖子的小程序。用户可在小程序内发布帖子，可以购买某种商品，也可出售自己不要的东西。以及同城内各类的信息。例如招聘、兼职、恋爱、房屋出租、门市转让、家政服务、拼车等等一系列的帖子。用户还可进行商家认证，完成后入驻平台。                        ','/uploads/anli/20220219/eded4015fbaff22ec6b1d3b0cdde36df.jpg'),(15,'顺天网络科技','这是一个展示型的企业站，使用JavaScript和jQuery来实现动画效果及特效。使用Bootstrap来进行H5与Pc之间的相互适配。是一个三语言版本的响应式官网。','https://zunyunkeji.net/uploads/210626/1-2106260Z552G9.jpg'),(16,'易科商务小程序','\n                            易科商务小程序\n这是一个商城小程序。里面的商品多种多样，可对接其他商品平台，导入商品数据。里面设置分销功能，用户推荐新用户成为自己的下级，然后下级在商城进行消费，上级可获得佣金。1','	https://zunyunkeji.net/uploads/210626/1-2106260Z5101b.jpg');

/*Table structure for table `yx_article` */

DROP TABLE IF EXISTS `yx_article`;

CREATE TABLE `yx_article` (
  `article_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `article_author` int(11) NOT NULL COMMENT '文章作者',
  `article_title` varchar(200) NOT NULL COMMENT '文章标题',
  `article_poster` varchar(250) NOT NULL DEFAULT '' COMMENT '文章封面',
  `article_content` text NOT NULL COMMENT '文章内容',
  `article_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '文章状态 0:正常',
  `article_add_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `article_category` varchar(100) NOT NULL,
  `article_read_count` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4;

/*Data for the table `yx_article` */


/*Table structure for table `yx_contact_us` */

DROP TABLE IF EXISTS `yx_contact_us`;

CREATE TABLE `yx_contact_us` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT,
  `co_title` varchar(200) DEFAULT NULL,
  `co_content` text,
  `co_img` varchar(200) DEFAULT NULL,
  `co_time` date DEFAULT NULL,
  `create_time` varchar(13) DEFAULT NULL,
  `update_time` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `yx_contact_us` */

insert  into `yx_contact_us`(`co_id`,`co_title`,`co_content`,`co_img`,`co_time`,`create_time`,`update_time`) values (1,'<h3>联系我们</h3>','\n                                \n                                \n                                \n                                <p data-v-24492e36=\"\" id=\"nop\" style=\"margin-bottom: 0px; padding: 3px 0px; list-style: none; color: rgb(170, 170, 170); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;\">尊云科技集团</p><p data-v-24492e36=\"\" id=\"nop\" style=\"margin-bottom: 0px; padding: 3px 0px; list-style: none; color: rgb(170, 170, 170); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;\">集产品销售、技术服务、软件开发于一身的高科技企业。服务范围涵盖了软件销售、私有云、IT基础架构系统规划、IT咨询、系统实施、信息安全构建、业务系统开发等全方位业务。</p><p data-v-24492e36=\"\" style=\"margin-bottom: 0px; padding: 3px 0px; list-style: none; color: rgb(170, 170, 170); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;\">地址：河北省石家庄市长安区北国益庄写字楼1203室</p><p data-v-24492e36=\"\" style=\"margin-bottom: 0px; padding: 3px 0px; list-style: none; color: rgb(170, 170, 170); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;\">业务部：400-112-9179</p><p data-v-24492e36=\"\" style=\"margin-bottom: 0px; padding: 3px 0px; list-style: none; color: rgb(170, 170, 170); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;\">技术部：400-112-9179</p><p data-v-24492e36=\"\" style=\"margin-bottom: 0px; padding: 3px 0px; list-style: none; color: rgb(170, 170, 170); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;\">邮箱：hebei9090@qq.com</p><p data-v-24492e36=\"\" style=\"margin-bottom: 0px; padding: 3px 0px; list-style: none; color: rgb(170, 170, 170); font-family: &quot;Microsoft YaHei&quot;; font-size: medium;\">网址：zy.zunyunkeji.net</p>                                                                                                                ','','2022-02-18',NULL,'1645175427');

/*Table structure for table `yx_guanyuwomen` */

DROP TABLE IF EXISTS `yx_guanyuwomen`;

CREATE TABLE `yx_guanyuwomen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `yx_guanyuwomen` */

insert  into `yx_guanyuwomen`(`id`,`title`,`content`,`img`) values (2,'车--云--人安全设备','\n                             随着商用车数量的增加，车祸，事故也随之急剧增加。为了解决这一难题，现与所托瑞安公司达成战略合作协议，\n推出智能安全驾驶防碰撞设备。\n车—云—人，一体化解决方案，为司机师傅出行提供安全保障，降低事故发生率，\n提高出行安全系数，有效控制赔付率。为打造一个没有碰撞的驾驶世界而努力。                        ','/uploads/guanyuwomen/20220218/b9115acd1d4df7acdf2c65df89a19a7a.jpg'),(3,'酷果科技','\n                             专门为互联网而生的公司，专业为中小企业实施，开发互联网产品。\n进行快速落地计划，为中小企业打造一个方便、快捷的互联网云平台。                        ','/uploads/guanyuwomen/20220218/f122c1b42f1f52fbc5b2da4ecbb0fe1b.jpg'),(4,'酷果云','\n                             专注于IDC业务，为中小企业提供服务器托管租用和数字化整体解决方案，服务器托管。\n华北地区指定合作商家。\n机房自建，位于河北省会石家庄，\n公司旗下运营的数据中心：\n理道多线数据中心，金石数据中心，双烽互联网数据中心，河北联通数据中心，河北电信数据中心，河北移动数据中心。                        ','/uploads/guanyuwomen/20220218/28454843c8158100f73e85056cb9b76e.jpg'),(8,'关于我们;ABOUT US','\n                             \n                             尊云科技集团是一家集产品销售、技术服务、软件开发于一身的高科技企业。 服务范围涵盖了软件销售、私有云、IT基础架构系统规划、IT咨询、系统实施、信息安全构建、业务系统开发等全方位业务。 旗下公司部门： 交通安全统筹系统项目部 随着商用车数量的增加，统筹互助的模式也越来越多，在统筹行业发展的越来越快， 尊云科技抓住客户遇到的难题，隆重推出安全统筹系统2.0，系统集报价， 统筹单录入，查..','/uploads/guanyuwomen/20220217/11d156aff1ac5822a8b0cfb8fbb71ec8.jpg');

/*Table structure for table `yx_hezuohuoban` */

DROP TABLE IF EXISTS `yx_hezuohuoban`;

CREATE TABLE `yx_hezuohuoban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `yx_hezuohuoban` */

insert  into `yx_hezuohuoban`(`id`,`img`) values (9,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/7ae06e396f50ba1d45cf86e7b97c16ae.png'),(10,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/154334f56390e545f5e71859eb50767f.png'),(11,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/1a51da52db86912999b59aea304142d4.png'),(12,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/aa99191d57ff8f9e9c1311a875ac296b.png'),(13,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/57937a4764efe623f7767d37d62b60c0.png'),(14,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/4436ef1278a65625fca9b40354c4dba6.png'),(15,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/f0191d27f57132498c77645cf4d0392a.png'),(16,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/f83403e3a7d329f5ff450c9c2c62e0c7.png'),(17,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/2f0f6958cef2ec3e140068c0178cc748.png'),(18,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/1a1e13b8cf2f54b8c76ede6b225a85a4.png'),(19,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/0a65f7db8361b8bcee93ae383bec0a59.png'),(20,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/c8d1121b5ae99c062bd51bbf11189c5c.png'),(21,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/87baf56da0c4862a2576f79fc261c5c7.png'),(22,'http://zyht.zunyunkeji.net/uploads/hezuohuoban/20220218/02b3ef1ff801f2e0342ac4afabca8bb9.png');

/*Table structure for table `yx_index_menu` */

DROP TABLE IF EXISTS `yx_index_menu`;

CREATE TABLE `yx_index_menu` (
  `menu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL DEFAULT '',
  `menu_pid` int(11) NOT NULL DEFAULT '0',
  `menu_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1为删除状态 0为使用状态',
  `menu_sort` tinyint(3) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'tag' COMMENT 'type: menu | tag',
  `menu_router` varchar(20) DEFAULT NULL COMMENT '前台菜单路由',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;

/*Data for the table `yx_index_menu` */

insert  into `yx_index_menu`(`menu_id`,`menu_name`,`menu_pid`,`menu_status`,`menu_sort`,`type`,`menu_router`) values (18,'关于我们',0,0,0,'menu','about'),(57,'我们服务2',45,0,0,'tag',NULL),(48,'1111',0,1,0,'tag',NULL),(49,'关于子级',18,0,0,'tag',NULL),(50,'关于我们子级2',18,0,0,'tag',NULL),(51,'子级1',47,0,0,'tag',NULL),(52,'子级2',47,0,0,'tag',NULL),(53,'相关平台',47,0,0,'tag',NULL),(54,'新闻动态子级1',41,1,0,'tag',NULL),(55,'新闻子级2',41,1,0,'tag',NULL),(56,'我们子级1',45,0,0,'tag',NULL),(41,'新闻动态',0,0,0,'tag','news'),(44,'案例展示',0,0,0,'tag','case'),(45,'我们的服务',0,0,0,'tag','serve'),(46,'联系我们',0,0,0,'tag','relation'),(47,'尊云科技集团相关平台',0,0,0,'tag','platform'),(58,'公司动态',41,0,0,'tag','company'),(59,'行业动态',41,0,0,'tag','business');

/*Table structure for table `yx_index_ours` */

DROP TABLE IF EXISTS `yx_index_ours`;

CREATE TABLE `yx_index_ours` (
  `io_id` int(11) NOT NULL AUTO_INCREMENT,
  `io_title1` varchar(100) DEFAULT NULL,
  `io_title2` varchar(100) DEFAULT NULL,
  `io_title3` varchar(100) DEFAULT NULL,
  `io_content` text,
  `io_img` varchar(200) DEFAULT NULL,
  `io_time` date DEFAULT NULL,
  `create_time` varchar(13) DEFAULT NULL,
  `update_time` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`io_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `yx_index_ours` */

insert  into `yx_index_ours`(`io_id`,`io_title1`,`io_title2`,`io_title3`,`io_content`,`io_img`,`io_time`,`create_time`,`update_time`) values (1,'我们的服务','OUR SERVICE',NULL,'提供专业的设计，制作，售后服务集中解决方案',NULL,NULL,NULL,NULL),(2,'','','专注品质','\n                                \n                                \n                                \n                                \n                                \n                                \n                                \n                                \n                                \n                                <p>\n                                7年开发经验，3000+成功案例，10万+页面积累，经验丰富，技术新颖</p>                                                                                                                                                                                                                                                                                        ','http://zyht.zunyunkeji.net/uploads/IndexOurService/20220218/202202184458.png','2022-02-15',NULL,'1645147777'),(3,'','','用心服务','\n                                \n                                \n                                <p>\n                                \n                                \n                                \n                                \n                                \n                                \n                                </p><p><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">专业的商务服务团队，提供更全面、更强大的实时服务支持</span><br></p>                                                                                                                                                                                                    <p></p>                                                                                    ','http://zyht.zunyunkeji.net/uploads/IndexOurService/20220218/202202181546.png','2022-07-14','1645066671','1645147790'),(4,'','','精益求精','\n                                披星戴月，传承工匠精神，用敬业的态度对待每一个作品\n                                                                                        ','http://zyht.zunyunkeji.net/uploads/IndexOurService/20220218/202202187755.png','2022-02-18','1645146136','1645147809'),(5,'','','售后保障','\n                                \n                                \n                                \n                                完善的售后服务确保即时、高效，时刻为您的站点保驾护航。                                                                                                                ','http://zyht.zunyunkeji.net/uploads/IndexOurService/20220218/202202185329.png','2022-02-18','1645146190','1645148072');

/*Table structure for table `yx_news_dt` */

DROP TABLE IF EXISTS `yx_news_dt`;

CREATE TABLE `yx_news_dt` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_auth` varchar(20) DEFAULT NULL COMMENT '新闻作者',
  `news_title` varchar(200) DEFAULT NULL COMMENT '新闻标题',
  `news_content` text COMMENT '新闻内容',
  `news_img` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `news_status` enum('0','1','2') DEFAULT '0' COMMENT '状态:0正常,1下架,2暂无',
  `news_time` date DEFAULT NULL COMMENT '时间',
  `news_classification` varchar(30) DEFAULT NULL COMMENT '分类',
  `create_time` varchar(12) DEFAULT NULL,
  `update_time` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

/*Data for the table `yx_news_dt` */

insert  into `yx_news_dt`(`news_id`,`news_auth`,`news_title`,`news_content`,`news_img`,`news_status`,`news_time`,`news_classification`,`create_time`,`update_time`) values (31,NULL,'就',NULL,NULL,'0',NULL,'行业动态',NULL,'1644916137'),(34,'世界','你好 吕焕杰','hello world','','1','2022-02-15','公司动态','1644914008','1645088357'),(35,'你好世界','啦啦啦啦啦啦啦','\n                                \n                                \n                                <p>啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦\n                                                            </p>                                                                                    ','','1','2021-11-01','行业动态','1644914063','1645000162'),(36,'酷果','公司新动态','2022年公司最新动态','','1','2022-02-24','行业动态','1644917340','1645000155'),(37,'测试','测试分页组件','我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容我是内容','http://zyht.zunyunkeji.net/uploads/Newsdt/20220217/202202177602.jpg','0','2022-02-28','公司动态','1644917370','1645146132'),(41,'2','1','阿萨德撒大阿达撒打算打扫打扫仨大沙发上','','0','2022-02-17',NULL,'1645066807','1645066807');

/*Table structure for table `yx_our_service` */

DROP TABLE IF EXISTS `yx_our_service`;

CREATE TABLE `yx_our_service` (
  `ser_id` int(11) NOT NULL AUTO_INCREMENT,
  `ser_title` varchar(200) DEFAULT NULL,
  `ser_content` text,
  `ser_time` date DEFAULT NULL,
  `create_time` varchar(13) DEFAULT NULL,
  `update_time` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`ser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `yx_our_service` */

insert  into `yx_our_service`(`ser_id`,`ser_title`,`ser_content`,`ser_time`,`create_time`,`update_time`) values (1,'我们的服务','<div><font color=\"#aaaaaa\" face=\"Microsoft YaHei, PingFang SC, Helvetica Neue For Number, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\">品牌CISMI&nbsp; 即品牌理念识别，是品牌经营的核心观念，是指导CI方向的依托，所以在塑造品牌形象之前，可能会花一定的时间去思考并明确品牌的核心理念与诉求，提升 其品牌的附加值，所以不要认为MI没意义、没价值，而急于去追求视觉的呈现，因为没有理念识别的品牌就只是一具行尸走肉。</span></font></div><div><font color=\"#aaaaaa\" face=\"Microsoft YaHei, PingFang SC, Helvetica Neue For Number, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\">VI&nbsp;</span></font></div><div><font color=\"#aaaaaa\" face=\"Microsoft YaHei, PingFang SC, Helvetica Neue For Number, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#aaaaaa\" face=\"Microsoft YaHei, PingFang SC, Helvetica Neue For Number, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\">即品牌视觉识别，以营销的思路做设计，首先会分析行业现状，主要通过寻找并研究品牌的竞争对手和要跟随的对象，竞争对手告诉我们需要打倒谁，并与他们 作出区隔，行业领先者告诉我们需要去向何方。然后再通过消费人群分析，最后找准自己的品牌核心定位，为客户、为市场传达出准确而独特的形象与内涵。因此， 判断一个品牌VI是否优秀，不能只追求漂亮或者个人审美，而更应站在品牌发展的角度，思考它是否深刻而鲜明地传达出品牌的核心理念与价值，并形成差异化的 品牌形象传播。</span></font></div><div><font color=\"#aaaaaa\" face=\"Microsoft YaHei, PingFang SC, Helvetica Neue For Number, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#aaaaaa\" face=\"Microsoft YaHei, PingFang SC, Helvetica Neue For Number, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\">SI&nbsp;</span></font></div><div><font color=\"#aaaaaa\" face=\"Microsoft YaHei, PingFang SC, Helvetica Neue For Number, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#aaaaaa\" face=\"Microsoft YaHei, PingFang SC, Helvetica Neue For Number, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\">终端形象店作为消费者直接体验的空间，更能精确传达品牌形象。因此，在设计时，会根据品牌的定位、个性、文化、核心价值对空间进行构思与创意，突显出 产品的附加值，它不仅是消费者购买商品的场所，更是从视觉、听觉、嗅觉、触觉、味觉等各方面全方位打造的营销空间，满足消费者的情感需求，激发人们的消费 欲望，从而抢占消费者心智，促进终端销售提升。</span></font></div><div><font color=\"#aaaaaa\" face=\"Microsoft YaHei, PingFang SC, Helvetica Neue For Number, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div><div><font color=\"#aaaaaa\" face=\"Microsoft YaHei, PingFang SC, Helvetica Neue For Number, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\">画册企业形象画册&nbsp;</span></font></div><div><font color=\"#aaaaaa\" face=\"Microsoft YaHei, PingFang SC, Helvetica Neue For Number, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\">优秀画册和拙劣画册之间的最大差别，不仅仅在于设计的漂亮与否，更为关键的是策划思维，画册是否具备高品质、有效性，又能吸引客户！以讲故事的形式致力“营销型画册”，首先，通过分析品牌原型，传承品牌的个性与气质，为每一本画册量身定制一个主题，它就是整本画册的思想、灵魂；然 后以讲故事的方式将整本画册的主线贯穿起来，再通过文案与设计的创意搭配，形成有思想的画面，让画册有血有肉地丰盈起来，而不再是干瘪的资料堆砌。通过画 册受众人群的分析，整体从画册内容、设计对于招商画册，如何吸引客户加盟合作才是关键，于是通过客户心理分析，总结出招商画册之道: 首先通过相关市场分析，让客户看到行业的发展空间；然后再展现企业的实力，品牌的差异化诉求，让客户感受到对企业和品牌的信心；再通过产品、渠道、推广、营 销等市场策略，让客户看到品牌营销发展的信心；最后通过加盟支持政策，不仅让客户切实清楚自己的可观收益，而且帮助客户解决加盟的后顾之忧。</span></font></div><div><font color=\"#aaaaaa\" face=\"Microsoft YaHei, PingFang SC, Helvetica Neue For Number, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 14px;\">所以，对市 场、品牌、营网站营销方面： 与其他公司在于“道”和“术”，其他公司在与品牌谈网站营销时经常一上来就说如何做网站，如果做关键词优化，如何选择关键词等等。这些内容对于网站营 销来说只能算得上是“术”而根本的“道”完全没有被涉及。品牌的“道”是品牌的灵魂，是品牌独有的DNA。“道”为品牌指引方向，而“术”则是达到这个方 向的方法，两者缺一不可，但只有明确了“</span></font></div>','2022-02-16',NULL,'1645144826');

/*Table structure for table `yx_role` */

DROP TABLE IF EXISTS `yx_role`;

CREATE TABLE `yx_role` (
  `role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) NOT NULL COMMENT '角色名',
  `role_describe` text NOT NULL COMMENT '角色描述',
  `role_auth` text NOT NULL COMMENT '角色权限',
  `role_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '角色状态 0:正常',
  `role_add_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '角色添加时间',
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `yx_role` */

insert  into `yx_role`(`role_id`,`role_name`,`role_describe`,`role_auth`,`role_status`,`role_add_time`) values (1,'超级管理员','整站权限','all',0,'2018-07-21 22:02:45'),(2,'管理员','编辑查看部分权限','admin/System,admin/System/navMenu,admin/System/systemLog,admin/System/fontIcon,admin/System/glyphIcon,admin/User,admin/User/userList,admin/Role/roleList,admin/Order,admin/Article/articleList,admin/Article/addArticle,admin/Article/updateArticle,admin/XiangGuan,admin/guanyuwomen/select,,,,admin/anli/select,,,,admin/xiang_guan/select,,,,admin/hezuohuoban/select,',0,'2018-07-18 22:08:13');

/*Table structure for table `yx_user` */

DROP TABLE IF EXISTS `yx_user`;

CREATE TABLE `yx_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL COMMENT '用户登入名',
  `user_pass` varchar(255) NOT NULL COMMENT '用户密码',
  `user_nicename` varchar(50) NOT NULL COMMENT '用户别名',
  `user_email` varchar(100) NOT NULL COMMENT '用户邮箱',
  `user_phone` varchar(30) NOT NULL COMMENT '用户电话',
  `user_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户状态',
  `user_role` int(11) unsigned NOT NULL COMMENT '用户所属角色ID',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '用户注册时间',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `yx_user` */

insert  into `yx_user`(`user_id`,`user_login`,`user_pass`,`user_nicename`,`user_email`,`user_phone`,`user_status`,`user_role`,`user_registered`) values (1,'admin','$P$BnsmcRm/HWAH2bcuDYrnuen9cd8DVj.','','admin@sina.com','',0,1,'2018-07-21 22:01:32'),(11,'admin2','$P$BERnDzaH9aXvSUr/gsxL0kqW0W3wI./','','','159',0,2,'2022-02-16 08:46:17');

/*Table structure for table `yx_xiangguan` */

DROP TABLE IF EXISTS `yx_xiangguan`;

CREATE TABLE `yx_xiangguan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `yx_xiangguan` */

insert  into `yx_xiangguan`(`id`,`title`,`content`,`img`) values (1,'酷果科技','\n                            \n                            \n                            \n                            \n                            专门为互联网而生的公司，专业为中小企业实施，开发互联网产品。进行快速落地计划，为中小企业打造一个方便、快捷的互联网云平台。                                                 ','http://zyht.zunyunkeji.net/uploads/xiangguan/20220218/06da682f035f0b05048321f678aea8fa.jpg'),(2,'理道科技','\n                            \n                            专注于IDC业务，为中小企业提供服务器托管租用和数字化整体解决方案，服务器托管。华北地区指定合作商家。机房自建，位于河北省会石家庄，公司旗下运营的数据中心：理道多线数据中心，金石数据中心，双烽互联网数据中心，河北联通数据中心，河北电信数据中心，河北移动数据中心。                                                ','http://zyht.zunyunkeji.net/uploads/xiangguan/20220218/e0291002cdbf13a641c063e6a31ab284.jpg'),(3,'安全统筹','\n                            \n                            \n                            随着商用车数量的增加，统筹互助的模式也越来越多，在统筹行业发展的越来越快，尊云科技抓住客户遇到的难题，隆重推出安全统筹系统2.0，系统集报价，统筹单录入，查询，批单修改，报案，互助赔偿，自动计算统筹费用，配件定损费用于一体。系统功能齐全，运行稳定。能够帮助统筹公司快速解决报价，统筹单保存，补偿等问题。                 ','http://zyht.zunyunkeji.net/uploads/xiangguan/20220218/01f4d100e23add64e1b3964960a4c907.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;