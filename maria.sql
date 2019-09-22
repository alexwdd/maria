/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : maria

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-09-23 00:29:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `pm_access`
-- ----------------------------
DROP TABLE IF EXISTS `pm_access`;
CREATE TABLE `pm_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupId` (`role_id`) USING BTREE,
  KEY `nodeId` (`node_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_access
-- ----------------------------

-- ----------------------------
-- Table structure for `pm_ad`
-- ----------------------------
DROP TABLE IF EXISTS `pm_ad`;
CREATE TABLE `pm_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `path` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `picname` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL COMMENT '排序',
  `createTime` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_ad
-- ----------------------------
INSERT INTO `pm_ad` VALUES ('1', '1', '0-1-', '贝拉米广告', '/uploads/images/20190729/29a16f509df847402f50d82de3fa4f62.jpg', '111', '50', '1563768353', '1564393940');
INSERT INTO `pm_ad` VALUES ('2', '1', '0-1-', 'a2广告', '/uploads/images/20190729/f78473ebaeb30ade50f61c7f2a6f1e4e.png', '111', '50', '1563768399', '1564393620');
INSERT INTO `pm_ad` VALUES ('3', '1', '0-1-', 'swisse广告', '/uploads/images/20190729/629546cbfee3e4e6c68d1611aed44af7.png', '1', '50', '1563788399', '1564393579');
INSERT INTO `pm_ad` VALUES ('4', '2', '0-2-', 'swisse', '/uploads/images/20190808/37e0be953fcabc03d87d4202fa4ecae3.jpg', '11', '50', '1565271562', '1565271562');

-- ----------------------------
-- Table structure for `pm_address`
-- ----------------------------
DROP TABLE IF EXISTS `pm_address`;
CREATE TABLE `pm_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `county` varchar(30) NOT NULL,
  `addressDetail` varchar(100) NOT NULL,
  `front` varchar(255) NOT NULL,
  `back` varchar(255) NOT NULL,
  `sn` varchar(50) NOT NULL,
  `def` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_address
-- ----------------------------
INSERT INTO `pm_address` VALUES ('1', '10001', '王冬', '18537391515', '上海市', '上海市', '静安区', '梧桐巷11号', '', '', '', '0');
INSERT INTO `pm_address` VALUES ('2', '10008', '张三', '13500000000', '浙江省', '杭州市', '江干区', '默默地址', '', '', '', '1');
INSERT INTO `pm_address` VALUES ('3', '10009', '测试', '13203801035', '北京市', '北京市', '东城区', '测试', '', '', '', '0');
INSERT INTO `pm_address` VALUES ('9', '10012', '支持', '18213141421', '北京市', '北京市', '东城区', '地址', '', '', '', '0');
INSERT INTO `pm_address` VALUES ('7', '10011', '超', '1008611111', '北京市', '北京城区', '东城区', '你们是我的梦想城镇医保通', 'http://www.aumaria.com/uploads/20190903/832c9d1b99dfcef0884da81fae1bacbf.jpeg', 'http://www.aumaria.com/uploads/20190903/757b6a09cd86d47d0ffdca6586c4bd0b.jpeg', '10086', '0');
INSERT INTO `pm_address` VALUES ('8', '10011', '默认', '88888', '北京市', '北京城区', '东城区', '公司', 'http://www.aumaria.com/uploads/20190903/70623fbba5456c3e960bf6f644dfc268.jpeg', 'http://www.aumaria.com/uploads/20190903/a0303b7f93a60fb9f6d8611c903666f8.jpeg', '110', '1');
INSERT INTO `pm_address` VALUES ('12', '10014', '张超', '10086', '北京市', '北京城区', '东城区', '详细地址', 'http://www.aumaria.com/uploads/20190904/42ebff7f93d3d13df81c21692030ab2c.jpeg', 'http://www.aumaria.com/uploads/20190904/d2f79a0301d7f342b015fcbcda9d5274.jpeg', '10086', '0');
INSERT INTO `pm_address` VALUES ('13', '10015', '支持', '110', '北京市', '北京城区', '东城区', '地址', '/uploads/20190906/1b8941d53699f10c7ca38b30efa69ef3.jpeg', '/uploads/20190906/d55b5c2cc3311db7696519d5d0eb0fbf.jpeg', '110', '0');
INSERT INTO `pm_address` VALUES ('14', '10015', '张超', '10086', '北京市', '北京城区', '东城区', '地址', '/uploads/20190906/71a5a3721a79937c92f62d7c2b7fd595.jpeg', '/uploads/20190906/0ae83396dca96e23da3814cc5c745cc1.jpeg', '110', '1');
INSERT INTO `pm_address` VALUES ('15', '10014', '收件人', '10099999999', '北京市', '北京城区', '东城区', '地址是', '/uploads/20190906/540dd7faadf7fe17d9b2057fe16452bb.jpeg', '/uploads/20190906/cd0733b04a44935ed93e474f0e685cb2.jpeg', '100', '1');
INSERT INTO `pm_address` VALUES ('16', '10020', '测试地', '13203801035', '河北省', '邯郸市', '肥乡区', '测试地址做妈妈啦啦啦啦啦卡卡卡卡卡是考试考试考试考试', '/uploads/20190907/f5c9dd9649dcb37df7ce37dde34c0960.jpeg', '/uploads/20190907/9ea47ec1a5b383a5f654f04caca36713.jpeg', '', '0');
INSERT INTO `pm_address` VALUES ('17', '10014', '没身份证', '110', '北京市', '北京城区', '东城区', '地址', '', '', '110', '0');
INSERT INTO `pm_address` VALUES ('18', '10009', '张三', '18532154415', '河南省', '开封市', '龙亭区', '夷山大街39号', '', '', '', '0');

-- ----------------------------
-- Table structure for `pm_article`
-- ----------------------------
DROP TABLE IF EXISTS `pm_article`;
CREATE TABLE `pm_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `path` varchar(200) NOT NULL,
  `title` varchar(300) NOT NULL,
  `short` varchar(200) NOT NULL,
  `from` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `author` varchar(50) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `picname` varchar(500) NOT NULL,
  `keyword` varchar(300) NOT NULL,
  `comm` int(11) NOT NULL,
  `top` int(11) NOT NULL,
  `flash` int(11) NOT NULL,
  `bold` int(11) NOT NULL,
  `red` int(11) NOT NULL,
  `intr` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `hit` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL,
  `editer` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0草稿1正常',
  `del` tinyint(4) NOT NULL COMMENT '0正常1删除',
  `updateTime` int(10) NOT NULL,
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_article
-- ----------------------------
INSERT INTO `pm_article` VALUES ('106', '1', '0-1-', '患有几种病，医生会劝你戒酒，爱喝的人做好心理准备', '', '', '', '', '', '/uploads/images/20190513/03a72648e168b24366d6bf53e8f6e5e7_180_120.jpg,/uploads/images/20190513/52212ce437a427653bca16b6be557ea3_180_120.jpg,/uploads/images/20190513/3bbbc4f446277e91c4e76c8fcd0af4d9_180_120.jpg', '', '0', '0', '0', '0', '0', '自古以来中国的&ldquo;酒文化&rdquo;就根深蒂固，很多人为了工作和应酬，不得不经常喝酒，但小九要提醒，有些人是不可以喝酒的，有些人因为患病不能喝酒，有些人因为其他原因不能喝酒，那么，究竟哪些人在喝酒&ldquo;黑名单&rdquo;呢？有几类人建议滴酒不沾：●肝病患者酒精最先要经过肝脏的分…', '<p>自古以来中国的&ldquo;酒文化&rdquo;就根深蒂固，很多人为了工作和应酬，不得不经常喝酒，但小九要提醒，有些人是不可以喝酒的，有些人因为患病不能喝酒，有些人因为其他原因不能喝酒，那么，究竟哪些人在喝酒&ldquo;黑名单&rdquo;呢？</p>\n<p>有几类人建议滴酒不沾：</p>\n<p><img src=\"/uploads/images/20190513/03a72648e168b24366d6bf53e8f6e5e7.jpg\" alt=\"\" /></p>\n<p>●肝病患者</p>\n<p>酒精最先要经过肝脏的分解才能彻底代谢，直接对肝脏细胞产生毒害作用，所以喝酒是最伤肝的。肝病患者的肝脏功能下降，降低了转化酒精的能力，患有肝病的人如果长期喝酒就等于慢性自杀，会造成酒精肝、肝硬化、脂肪肝等。</p>\n<p>●胃病患者</p>\n<p>啤酒中含有大量的二氧化碳，患有胃病的人喝了会损伤胃粘膜，导致胃酸增加，引起腹胀、腹痛等症状。尤其是酗酒，容易引起胃穿孔导致大量出血而危及生命。所以患有胃溃疡、胃炎、肠炎的人都不能喝酒，以免加重病情。</p>\n<p><img src=\"/uploads/images/20190513/52212ce437a427653bca16b6be557ea3.jpg\" alt=\"\" /></p>\n<p>●高血压和心脏病患者</p>\n<p>酒精，一是使大脑兴奋，情绪激动；二是使血管扩张，血压升高，这样易发生破血管而导致死亡。心脏病患者喝酒容易发生心律不齐，心跳加速等不良症状。</p>\n<p>●尿结石患者</p>\n<p>&nbsp;</p>\n<p>制造啤酒的原料主要是大麦芽，大麦芽内含有草酸、钙和鸟核苷酸，这几种物质都是极易导致结石的。所以本身患有尿道结石的患者不能喝酒，会加重病情。</p>\n<p>●糖尿病患者</p>\n<p>糖尿病患者在服用磺脲类降糖药或注射胰岛素时不能喝酒，因为酒精会加重药物引起的低血糖反应，出现头晕，严重的出现脸色苍白或潮红、冒冷汗、心慌、恶心、走路不稳等。因此，糖尿病人在服用降糖药或注射胰岛素时，不能饮酒。</p>\n<p>●近视眼、青光眼患者</p>\n<p>甲醇是几乎所有酒类中含有的物质，同时也是人体视网膜的杀手，它对视网膜有明显的毒副作用，使视网膜产生视色素的能力减弱，导致眼睛难以适应光线变化。因此，近视眼、青光眼病人最好不要饮酒。</p>\n<p>●妊娠期、哺乳期妇女和儿童</p>\n<p><img src=\"/uploads/images/20190513/3bbbc4f446277e91c4e76c8fcd0af4d9.jpg\" alt=\"\" /></p>\n<p>酒精会通过脐带输送到胎儿体内，严重影响胎儿的发育，容易导致胎儿发育不良甚至流产，所以妊娠期妇女不能喝酒；此外，哺乳期的妇女如果喝了啤酒容易减少乳汁分泌，因为啤酒中含有的大麦芽成分容易回奶；未成年儿童由于大脑发育还未健全，喝酒容易损伤大脑，为了儿童的身心健康，不应让儿童喝酒。</p>', '99', '50', 'admin', '2019', '1', '0', '1557711265', '1557676800');
INSERT INTO `pm_article` VALUES ('105', '1', '0-1-', '不打算戒烟了？吸烟的四个坏处，还是想说给你听', '', '', '', '', '', '/uploads/images/20190513/8aaecaee0265ab1911db3fe3f119ff24_180_120.jpg,/uploads/images/20190513/2099d251c6fe8410c6014819a1a32f68_180_120.jpg,/uploads/images/20190513/38c6c5373a9a609ca0d2dfbdeea24d9c_180_120.jpg', '', '0', '0', '0', '0', '0', '大家都知道吸烟有害健康，但是对健康的伤害到底在哪里，多数人说不上来。也正是因为这种模糊的概念导致人们只有戒烟的想法，却没有戒烟的决心，因为并不清楚抽烟对身体会造成哪些具体伤害，本文就来介绍一下吸烟的坏处，同时来介绍一下如何快速戒烟。吸烟的危害，你总是不愿面对！◇伤肺吸烟对肺部的伤害这一点相信多数人都…', '<p>大家都知道吸烟有害健康，但是对健康的伤害到底在哪里，多数人说不上来。也正是因为这种模糊的概念导致人们只有戒烟的想法，却没有戒烟的决心，因为并不清楚抽烟对身体会造成哪些具体伤害，本文就来介绍一下吸烟的坏处，同时来介绍一下如何快速戒烟。</p>\n<p>吸烟的危害，你总是不愿面对！</p>\n<p><img src=\"/uploads/images/20190513/8aaecaee0265ab1911db3fe3f119ff24.jpg\" alt=\"\" /></p>\n<p>◇伤肺</p>\n<p>吸烟对肺部的伤害这一点相信多数人都知道，在抽烟的过程当中烟草当中的有害物质会进入到肺部，而毒素在肺部停留不能及时从身体排出去之后就会慢慢侵蚀肺部健康。</p>\n<p>◇口臭</p>\n<p>一个人是否抽烟，只需要开口说几句话就能判断，因为多数抽烟人都存在嘴巴味道难闻的症状，长期以往味道会越来越难消除，因此在跟别人说话的时候很容易传递到对方鼻子中，而且抽烟的人，烟雾当中的焦油等也会停留附注在牙齿上，出现牙齿变黄，同时也会加重口腔异味的症状。</p>\n<p><img src=\"/uploads/images/20190513/2099d251c6fe8410c6014819a1a32f68.jpg\" alt=\"\" /></p>\n<p>◇骨密度低</p>\n<p>有相关研究发现，抽烟人群的骨密度要明显低于不抽烟人群的骨密度，在中老年人身上这种情况会更加严重，同样摔一跤不抽烟的人可能没事儿，抽烟人不仅容易骨折，骨折恢复的时间也较正常人更长，可见抽烟会让人体骨骼变脆。</p>\n<p>◇脱发</p>\n<p>吸烟会导致脱发这个相信多数人都不太清楚，这个根据多年临床观察研究发现的，那些每天抽烟超过一包的人脱发症状非常明显，这是因为在香烟当中含有很多有毒物质，在进入人体之后会伤害到头皮毛囊，会导致脱发。</p>\n<p><img src=\"/uploads/images/20190513/38c6c5373a9a609ca0d2dfbdeea24d9c.jpg\" alt=\"\" /></p>\n<p><strong>戒烟最管用的方法</strong></p>\n<p><strong>加强戒烟意识</strong></p>\n<p>想要戒烟一定要有戒烟的决心，想要增加戒烟的决心不妨上网多搜索一下吸烟人群的肺部图片，听听别人的案例，你会突然觉得吸烟让人毛骨悚然，自然在戒烟方面也会更加上心。</p>\n<p><strong>寻找替代方法</strong></p>\n<p>对于烟民来说，想要戒烟确实很难，尤其是当烟瘾发作之后让自己很是苦恼，因此可以适当寻找一些烟瘾出现之后的替代方法，比如增加手部活动，备点小零食或者玩个小游戏，这些都可以帮助转移注意力。</p>\n<p><img src=\"/uploads/images/20190513/154d7f7a2fdaafdb0165ff50d57ef381.jpg\" alt=\"\" /></p>\n<p><strong>&nbsp;远离烟源</strong></p>\n<p>想要彻底戒烟，确实需要很大的毅力，在不确定自己毅力是否可以达到的前提下，可以远离诱发自己吸烟的因素，首先需要远离烟，其次需要远离烟灰缸这类让你回忆起烟的东西，对于自己以前的烟友可以在戒烟初期适当远离。</p>', '68', '50', 'admin', '2019', '1', '0', '1557711092', '1557676800');
INSERT INTO `pm_article` VALUES ('104', '2', '0-2-', '人为什么会胖？带你了解脂肪的“前生今世”，不再闻脂色变', '', '', '', '', '', '/uploads/images/20190505/b796153f3c8ef5cbe1ecaef1518a4566_180_120.jpg', '', '0', '0', '0', '0', '0', '一直在说减肥减脂，一直在尝试各种方法，然而你是否知道，人体的脂肪究竟是什么东西，又是怎么产生的？不如先停下减肥的脚步，了解一下这个疑问，或许对减肥更有帮助。讨厌的脂肪到底是怎么来的？很多人以为脂肪是直接吃进体内的。实际上，人身上的脂肪都是在人体内合成的。一般有两个来源：食物中的脂肪进入消化道后被水解…', '<p>一直在说减肥减脂，一直在尝试各种方法，然而你是否知道，人体的脂肪究竟是什么东西，又是怎么产生的？不如先停下减肥的脚步，了解一下这个疑问，或许对减肥更有帮助。</p>\n<p><img src=\"/uploads/images/20190505/b796153f3c8ef5cbe1ecaef1518a4566.jpg\" alt=\"\" /></p>\n<p><strong>讨厌的脂肪到底是怎么来的？</strong></p>\n<p>很多人以为脂肪是直接吃进体内的。实际上，人身上的脂肪都是在人体内合成的。一般有两个来源：</p>\n<p>食物中的脂肪进入消化道后被水解成脂肪酸，然后被小肠吸收，进入人体内功能。当细胞从中摄取足够的热量之后，剩下的脂肪酸就会重新被合成甘油三酯，储存在体内的脂肪细胞中，于是人体的皮下就会出现一层脂肪。</p>\n<p>食物中供能的物质还有糖类和蛋白质，它们也同样进入人体内参与组织器官的运作，如果消耗结束还有剩余，就会被胰岛素转化成脂肪酸，最后还是被合成脂肪储存起来。</p>\n<p><strong>怎样才能消耗掉这些可恶的脂肪？</strong></p>\n<p>消耗脂肪的难点就在于，人体在取用热量的次序上，脂肪并不是排在最前面的。一般来说，当身体需要使用能量时，会先使用碳水化合物，碳水化合物不够用时，才会取用体内的脂肪，最后才会动用蛋白质。</p>\n<p>显然，想更快速消耗脂肪，就要让身体消耗热量的效率加快，最基础的办法，就是提高基础代谢率。有这几个方法可以使用：</p>\n<p>1、 坚持吃早餐。因为早晨人体的代谢水平最强，早餐可以激活人体的代谢活动，不吃早餐等于一整天代谢活动都将变得低迷；</p>\n<p>2、 多吃蛋白质。人体消化蛋白质时需要动用更多热量，有助于提高消耗脂肪的效率；</p>\n<p>3、 注意补铁。如果血液中铁含量不够，运送给细胞和器官的氧气也会不够，就会影响代谢活动进行；</p>\n<p>4、 多喝水。水分也是人体代谢活动的重要参与物质，所以想加速消耗脂肪，喝水不可少。</p>\n<p>还有，脂肪也并不是那么顽固，要调动脂肪参与供能，有氧运动也是一把好手。</p>\n<p>有氧运动可以让脂肪直接参与供能，尤其在时间够长、强度中等的运动中，脂肪消耗的速度能达到平常的10倍，甚至脂肪合成的速度也会被减缓。进行有氧运动方式也很多，慢跑、骑车、游泳、跳绳都是简单且高效的方法，建议每周安排4~5天参加有氧运动，并且每次运动最好维持30分钟以上。</p>\n<p>了解了脂肪的来龙去脉，相信你也能更加明白减肥应该如何着手。其实脂肪一点都不可怕，只要用科学方法对待，就一定可以打败它。</p>', '100', '50', 'admin', '2019', '1', '0', '1557036805', '1556985600');
INSERT INTO `pm_article` VALUES ('107', '9', '0-9-', '劝告：让你“一夜变老”的几个习惯，是时候改正了', '', '', '', '', '', '/uploads/images/20190513/4427e70d03c0d7510201ef7dec442ccc_180_120.jpg', '', '0', '0', '0', '0', '0', '所有人都希望永葆年轻，但衰老不可避免，但我们可以通过我们日常生活中的良好习惯，来推迟衰老的到来，来看看哪些日常习惯会加速衰老，以及我们应该怎样怎么做，才能对抗衰老。这些习惯加快衰老过程，长点心！1.喝酒吸烟酗酒能使人体内自由基增多，自由基是人类衰老的根源。活性氧自由基在体内具有一定生理功能，但过多就…', '<p>所有人都希望永葆年轻，但衰老不可避免，但我们可以通过我们日常生活中的良好习惯，来推迟衰老的到来，来看看哪些日常习惯会加速衰老，以及我们应该怎样怎么做，才能对抗衰老。</p>\n<p><img src=\"/uploads/images/20190513/4427e70d03c0d7510201ef7dec442ccc.jpg\" alt=\"\" /></p>\n<p>这些习惯加快衰老过程，长点心！</p>\n<p>1.喝酒</p>\n<p>吸烟酗酒能使人体内自由基增多，自由基是人类衰老的根源。活性氧自由基在体内具有一定生理功能，但过多就会对人体健康具有破坏作用，能够加速人体老化，尤其是皮肤老化最为严重，会出现斑点及皱纹。</p>\n<p>2.不良的饮食习惯</p>\n<p>（1）我们日常生活有许多人爱吃油炸、煎烤的食物，殊不知这些食物中含有大量的致癌物质丙烯酰胺，这些物质积蓄于人体，增加人体内氧化应激反应，产生大量自由基，破坏人体健康的同时，也会加速人体细胞的衰老；</p>\n<p>（2）油炸食品中含有大量的能量和脂肪，会造成人体肥胖、内分泌失调，损害组织功能，加速机体衰老；爱吃腌制食品，腌制的食品中含有硝酸盐，在肠道细菌作用下可还原为有毒的亚硝酸盐，亚硝酸盐会降低细胞活力，长期食用会引发人体早衰；</p>\n<p>（3）摄入过多含铝食品，比如不正规厂家生产的油条、膨化食物、加工水产等。铝在体内能与多种蛋白结合，影响体内多种生化反应，影响大脑功能，导致记忆减退，加速衰老；</p>\n<p>（4）摄入过多糖类。过多的糖会引起体内&ldquo;糖基化&rdquo;的过程，会让皮肤失弹性失光泽、毛孔粗大皱纹增多等引发衰老问题。</p>\n<p>3.长期接触紫外线</p>\n<p>人体皮肤在紫外线的作用下，为了保护皮肤收到紫外线的损伤，会分泌一种黑色素的物质，黑色素合成增加会导致色素沉着，出现黑斑、雀斑等形象美观的斑点，同时还破坏皮肤会的保湿能力，皮肤开始干燥脱水，形成皱纹。皮肤表层细胞死亡产生过多角质，使皮肤开始变得肥厚，松弛。</p>\n<p>4.面部表情过于丰富</p>\n<p>习惯性皱眉容易产生眉宇间的皱纹、经常大笑会导致法令纹加深、同时会在眼角产生鱼尾纹，爱抬眼眶容易产生抬头纹，经常撅嘴撇嘴容易产生法令纹和唇部皱纹。</p>\n<p>5.肌肤补水不够</p>\n<p>皮肤表层是角质层，是我们皮肤细胞死亡后所堆砌起来的细胞结构，能够帮助皮肤抵挡外界的各种物理以及化学伤害，同时还能帮助皮肤吸收空气中的水分滋养皮肤，但外界环境过于干燥时也会从体外吸收水分。若外界环境湿度较低时，皮肤没有充分给予补水，那么我们的皮肤将会处在一个失水的状态，长期以往皮肤就会变得粗糙、松弛、甚至出现皱纹；</p>\n<p>除了肌肤的直接补水外，我们也需要从内部摄入水，也就是要多喝水，水份摄取不够，油脂分泌就会减少，皮肤就更加容易脱水。</p>\n<p>6.熬夜，睡眠不足</p>\n<p>熬夜会导致黑眼圈的出现，皮肤也会变差、出现干燥、弹性差、水肿、暗疮等问题。而且熬夜还会使内分泌失调，促进衰老。</p>\n<p><img src=\"/uploads/images/20190513/291090edec23cf8f558ddc2c59d077c4.jpg\" alt=\"\" /></p>\n<p>有什么办法让衰老来得慢一些？</p>\n<p>★养成规律作息的好习惯、不熬夜、保持充足睡眠。</p>\n<p>★饮食习惯好，不吃油腻食物不吃油炸，多喝水，多吃水果蔬菜等富含维生素的食物，维生素C能有效帮助抗衰老。</p>\n<p>★养成每天排便，不忍便的习惯。</p>\n<p>★做好防晒和皮肤补水。就算没有太阳，环境中也会有紫外线，同样需要做好防晒。</p>\n<p>★戒烟控酒，也要避免二手烟中的有害物质吸入，喝酒要适量。</p>', '85', '50', 'admin', '2019', '1', '0', '1557711434', '1557676800');
INSERT INTO `pm_article` VALUES ('102', '1', '0-1-', '为何很多中年男人都有“啤酒肚”，背后无非是这几个原因', '', '', '', '', '', '/uploads/images/20190505/eef5fdc85b13eb083a53f5f325d79279_180_120.jpg,/uploads/images/20190505/fd89ab87e73f8aedc9a19894cabbd71b_180_120.jpg,/uploads/images/20190505/0849832d0a591e2b19d936b61051becf_180_120.jpg', '', '0', '0', '0', '0', '0', '炎热的夏天，酷暑难耐，喝上一杯冰凉的啤酒，会让人浑身凉爽。不过一些人认为，经常喝啤酒会形成啤酒肚，对身体健康不利。难道喝啤酒会长肚子，啤酒肚真的是由于喝啤酒形成的吗，男人啤酒肚的原因到底是什么，一旦有了啤酒肚该如何减掉呢？啤酒肚的原因在人们的传统意识中，啤酒肚是因为经常喝啤酒所导致，不过经过科学研究…', '<p>炎热的夏天，酷暑难耐，喝上一杯冰凉的啤酒，会让人浑身凉爽。</p>\n<p>不过一些人认为，经常喝啤酒会形成啤酒肚，对身体健康不利。</p>\n<p>难道喝啤酒会长肚子，啤酒肚真的是由于喝啤酒形成的吗，男人啤酒肚的原因到底是什么，一旦有了啤酒肚该如何减掉呢？</p>\n<p><img src=\"/uploads/images/20190505/eef5fdc85b13eb083a53f5f325d79279.jpg\" alt=\"\" /></p>\n<p><strong>啤酒肚的原因</strong></p>\n<p>在人们的传统意识中，啤酒肚是因为经常喝啤酒所导致，不过经过科学研究发现，啤酒的热量并不高，喝啤酒的多少对腹部的影响并不大，经常喝啤酒的人与不喝啤酒的人相比，腹部也不会变的更粗，体重也不会变的更重。</p>\n<p>因此，喝啤酒与啤酒肚的关系并不大，啤酒肚的形成主要原因并不是喝啤酒，而以下原因则是形成啤酒肚的主要方面。</p>\n<p><strong>1.营养过剩</strong></p>\n<p>一些人吃东西没有节制，尤其是那些暴饮暴食的人，喜欢吃高热量、高脂肪食物的人，如果缺少运动，则会导致摄入营养过多，营养过剩形成脂肪堆积在腹部，自然而然就形成了所谓的啤酒肚。</p>\n<p><strong>2.生活没有规律</strong></p>\n<p>生活没有规律，工作压力过大，会导致神经系统错乱，腰腹周围的血液循环会受到影响，导致脂肪在腰腹周围堆积，形成啤酒肚。所以在生活中，一方面要缓解压力，善于释放压力，另一方面，要养成良好的生活习惯，不熬夜，不经常在外宵夜。</p>\n<p><img src=\"/uploads/images/20190505/fd89ab87e73f8aedc9a19894cabbd71b.jpg\" alt=\"\" /></p>\n<p><strong>3.长期坐立</strong></p>\n<p>啤酒肚常见于办公室人群，这是因为人们长期坐立，对能量的消耗变少，大腿根与腹股沟等部位会受到压迫，血流与淋巴无法流通，腹部的脂肪难以燃烧，慢慢的在腹部堆积起来，形成啤酒肚。</p>\n<p>我们所说的啤酒肚，主要并不是因为喝啤酒所形成，对于那些有啤酒肚的人来说，要赶快减掉啤酒肚，让自己有一个好的身体，健康的身体，那么怎么减啤酒肚呢？</p>\n<p>1.加强锻炼</p>\n<p>要减掉啤酒肚，加强锻炼必不可少。在平时可以多进行走路、游泳、爬山或者是跑步等运动，让自己动起来，脂肪燃烧起来，减轻体重，让腹部变小。</p>\n<p>2.注意饮食</p>\n<p>对于啤酒肚的人来说，减掉啤酒肚，要严格控制饮食，少吃高脂肪、高热量食物，多吃水果和蔬菜，每顿吃到七分饱。</p>\n<p>综合以上介绍，相信大家对于啤酒肚的知识有了比较深入的了解。啤酒肚的形成，主要原因并不是人们常说的喝了啤酒所导致，而是由于缺乏运动、长期久坐、生活没有规律，日积月累所形成的。啤酒肚一旦形成，除了影响美观外，还会影响到人体健康，因此，要通过运动、控制饮食等方式减掉啤酒肚，让自己有一个健康的身体。<img src=\"/uploads/images/20190505/0849832d0a591e2b19d936b61051becf.jpg\" alt=\"\" /></p>', '87', '50', 'admin', '2019', '1', '0', '1557036137', '1556985600');
INSERT INTO `pm_article` VALUES ('103', '2', '0-2-', '跑步若是一味追求速度和长度，健康将与你拒之千里', '', '', '', '', '', '/uploads/images/20190505/7cbfeca55f2246d922c9c8f415eee8eb_180_120.jpg,/uploads/images/20190505/2d12d8e297f9158a3bf756ad2f4b904a_180_120.jpg,/uploads/images/20190505/3a40be02dd7c643f38ac781ddfd7d620_180_120.jpg', '', '0', '0', '0', '0', '0', '走路、跑步是许多人锻炼身体，瘦身减肥的最常见运动方式，尤其是每天早晨，在公园、体育场馆，跑步锻炼的人群特别多。对于跑步，有的人认为跑的量越多越好，也有的人认为跑的越快越好，那么这些观点是否有道理，应该如何跑步才有减肥效果呢？\n\n跑步是不是越多越好\n\n\n\n对于跑步的量是不是越多越好，如何稍微有点科学常识，就知道，做任何事情都要量力而行，跑步并不是跑的越多就越好，而是要根据自身实际情况，适度跑步。过度跑步会导致肌肉损伤等情况，影响到身体健康。\n\n跑步是不是越快越好\n\n一些人认为跑步跑的越快，脂肪燃烧越多，效果越好，所以跑步要越快越好，这其实也是违背了量力而行的原则。想要通过跑步得到好的效果，一是要长期坚持，二是要合理控制速度，速度过快容易摔倒、拉伤肌肉。\n\n跑步的速度跟年龄、身体体质、心肺功能等有很大的关系，一个年轻人跑步的速度每小时10公里，但是对于老年人，这个速度就显得快了，因此，跑步的速度要根据年龄、身体状况等综合确定。\n\n\n\n对于经常跑步锻炼的人来说，在跑步时要控制好跑步的时间和速度，不能一味的求多求快。尤其对于那些通过跑步减肥的人群来说，要掌握跑步减肥的方法，让跑步有好的减肥效果', '<p>走路、跑步是许多人锻炼身体，瘦身减肥的最常见运动方式，尤其是每天早晨，在公园、体育场馆，跑步锻炼的人群特别多。对于跑步，有的人认为跑的量越多越好，也有的人认为跑的越快越好，那么这些观点是否有道理，应该如何跑步才有减肥效果呢？</p>\n<p><img src=\"/uploads/images/20190505/7cbfeca55f2246d922c9c8f415eee8eb.jpg\" alt=\"\" /></p>\n<p><strong>跑步是不是越多越好</strong></p>\n<p>对于跑步的量是不是越多越好，如何稍微有点科学常识，就知道，做任何事情都要量力而行，跑步并不是跑的越多就越好，而是要根据自身实际情况，适度跑步。过度跑步会导致肌肉损伤等情况，影响到身体健康。</p>\n<p><strong>跑步是不是越快越好</strong></p>\n<p>一些人认为跑步跑的越快，脂肪燃烧越多，效果越好，所以跑步要越快越好，这其实也是违背了量力而行的原则。想要通过跑步得到好的效果，一是要长期坚持，二是要合理控制速度，速度过快容易摔倒、拉伤肌肉。</p>\n<p>跑步的速度跟年龄、身体体质、心肺功能等有很大的关系，一个年轻人跑步的速度每小时10公里，但是对于老年人，这个速度就显得快了，因此，跑步的速度要根据年龄、身体状况等综合确定。</p>\n<p>对于经常跑步锻炼的人来说，在跑步时要控制好跑步的时间和速度，不能一味的求多求快。尤其对于那些通过跑步减肥的人群来说，要掌握跑步减肥的方法，让跑步有好的减肥效果，那么怎么跑步最减肥效果好呢？</p>\n<p><img src=\"/uploads/images/20190505/2d12d8e297f9158a3bf756ad2f4b904a.jpg\" alt=\"\" /></p>\n<p><strong>一、跑步准备活动要充分</strong></p>\n<p>跑步前做好准备活动，让身体进行预热，促进身体迅速适应跑步节奏，防止肌肉拉伤，当正式运动之前身体就快速消耗能量，对减肥有着很大的作用和效果。</p>\n<p><strong>二、跑步速度要快慢结合</strong></p>\n<p>跑步要有好的减肥效果，在速度上不能一成不变，要做到快慢结合，开始跑的时候慢跑几分钟，然后逐渐加速快跑，跑几分钟后再把速度减下来慢跑几分钟，这样快慢结合循环跑，减肥效果最好。</p>\n<p><img src=\"/uploads/images/20190505/3a40be02dd7c643f38ac781ddfd7d620.jpg\" alt=\"\" /></p>\n<p>以上为大家介绍了跑步是否跑的越多越好、越快越好的相关知识。</p>\n<p>通过上面的介绍，相信大家对于如何正确进行跑步的知识有了比较全面的了解，跑步的时间和跑步的速度要根据多个方面的因素来确定。而对于跑步减肥的人群来说，要想有好的减肥效果，还要注意正确的跑步方法。</p>', '93', '50', 'admin', '2019', '1', '0', '1557036679', '1556985600');

-- ----------------------------
-- Table structure for `pm_brand`
-- ----------------------------
DROP TABLE IF EXISTS `pm_brand`;
CREATE TABLE `pm_brand` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '品牌表',
  `cid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '品牌名称',
  `logo` varchar(200) NOT NULL DEFAULT '' COMMENT '品牌logo',
  `desc` text NOT NULL COMMENT '品牌描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌地址',
  `sort` int(3) unsigned NOT NULL DEFAULT '50' COMMENT '排序',
  `comm` tinyint(4) NOT NULL,
  `top` tinyint(4) NOT NULL,
  `py` varchar(10) NOT NULL,
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_brand
-- ----------------------------
INSERT INTO `pm_brand` VALUES ('10', '9', '可瑞康', '/uploads/images/20190808/998a9cf01b1c6625089e125c1958f710.jpg', '', '', '4', '0', '0', 'K', '1538452189', '1565261451');
INSERT INTO `pm_brand` VALUES ('3', '10', '佳思敏', '/uploads/images/20190808/b8bcb1974cb16db42778fab295484cf8.jpg', '', '', '7', '1', '0', 'J', '1534769273', '1565261333');
INSERT INTO `pm_brand` VALUES ('4', '9', 'A2', '/uploads/images/20190808/aec2051e04ad55a16e3c25ff54a82b81.jpg', '', '', '1', '1', '0', 'A', '1534912117', '1565261204');
INSERT INTO `pm_brand` VALUES ('5', '9', '爱他美', '/uploads/images/20190808/9808435c0c26e69f59c8854f421dfcb5.jpg', '', '', '2', '1', '0', 'A', '1534944898', '1565261319');
INSERT INTO `pm_brand` VALUES ('8', '12', 'Swisse', '/uploads/images/20190808/af859c302b49495917e95627e967309d.jpg', '', '', '1', '1', '1', 'S', '1536034392', '1565262195');
INSERT INTO `pm_brand` VALUES ('9', '12', '澳佳宝', '/uploads/images/20190808/67a264b22634a39a2b6cf82efc826bdc.jpg', '', '', '2', '1', '1', 'A', '1536034458', '1565261438');
INSERT INTO `pm_brand` VALUES ('11', '9', '贝拉米', '/uploads/images/20190808/8a7dac92334df36c47c105390336d986.jpg', '', '', '3', '1', '0', 'B', '1538452869', '1565261464');
INSERT INTO `pm_brand` VALUES ('12', '11', '爱乐维', '/uploads/images/20190808/ce8c7fed660f7b48f6748289437add1a.jpg', '', '', '10', '0', '0', 'A', '1538467354', '1567754633');
INSERT INTO `pm_brand` VALUES ('13', '16', '德运', '/uploads/images/20190808/559bff81ca0258a5b2e70d01169e291c.jpg', '', '', '15', '0', '0', 'D', '1538473320', '1565261492');
INSERT INTO `pm_brand` VALUES ('14', '10', 'GAIA', '/uploads/images/20190808/fb89635eb8b3f9897d371f5cb947d491.jpg', '', '', '17', '1', '1', 'G', '1538564972', '1565261509');
INSERT INTO `pm_brand` VALUES ('15', '10', 'QV', '/uploads/images/20190808/97f73e8bcb5b786169dc647c56feeaa1.jpg', '', '', '18', '1', '1', 'Q', '1538565237', '1567754618');
INSERT INTO `pm_brand` VALUES ('16', '16', '美可卓', '/uploads/images/20190808/683537b3b567ef3b466eceb01b8757e0.jpg', '', '', '9', '0', '1', 'M', '1540639709', '1565261544');
INSERT INTO `pm_brand` VALUES ('17', '9', '雅培', '/uploads/images/20190808/d758bed22e2af72acfcf4fb306a72981.png', '', '', '11', '0', '0', 'Y', '1540639801', '1565261562');
INSERT INTO `pm_brand` VALUES ('18', '10', '生物岛', '/uploads/images/20190808/4c16e0f1a404a3abed67cf977938e377.jpg', '', '', '4', '1', '1', 'S', '1540639875', '1565261589');
INSERT INTO `pm_brand` VALUES ('19', '7', '茱莉蔻', '/uploads/images/20190808/d86f0b1f8f750e278aa347d1a09c646f.jpg', '', '', '20', '0', '0', 'Z', '1540639898', '1567754563');
INSERT INTO `pm_brand` VALUES ('20', '7', '苏芊', '/uploads/images/20190808/1fd385f54cdef192fe470f4742ca05d5.jpg', '', '', '21', '0', '1', 'S', '1540639923', '1565261612');
INSERT INTO `pm_brand` VALUES ('46', '8', '其他护肤品', '/uploads/images/20190220/6bcde67667030c6f45aaba1fb26b5379.jpg', '', '', '50', '0', '0', 'Q', '1547187665', '1564993809');
INSERT INTO `pm_brand` VALUES ('47', '7', '安瓶', '/uploads/images/20190808/5258c35b8fb2ac3a2acc144be874e90b.png', '', '', '50', '0', '1', 'A', '1547428823', '1567754487');
INSERT INTO `pm_brand` VALUES ('22', '12', 'Healthy Care', '/uploads/images/20190808/f0ddcf35303b378977b257621ce51df1.png', '', '', '3', '1', '1', 'H', '1540639967', '1565261627');
INSERT INTO `pm_brand` VALUES ('23', '8', '百洛油', '/uploads/images/20190808/32d2bcd24694a756f3225e1a6803de7a.jpg', '', '', '28', '0', '1', 'B', '1540639992', '1565261639');
INSERT INTO `pm_brand` VALUES ('24', '7', '星期四', '/uploads/images/20190808/e2328ee00144c3fdb25af4817e102287.jpg', '', '', '22', '1', '1', 'X', '1540640023', '1565261655');
INSERT INTO `pm_brand` VALUES ('25', '7', '水光针', '/uploads/images/20190808/1e3e6cbb87a539b86fe2d8431e316d23.jpg', '', '', '9', '1', '1', 'S', '1540640037', '1565261680');
INSERT INTO `pm_brand` VALUES ('26', '14', '康维他', '/uploads/images/20190808/b4a92f24314dd0c623db3c8f2529095d.jpg', '', '', '17', '0', '0', 'K', '1540640117', '1565261712');
INSERT INTO `pm_brand` VALUES ('27', '12', '乐康膏', '/uploads/images/20181026/10ad165896fee374798c7491cda80fb7.jpg', '', '', '16', '0', '1', 'L', '1540640200', '1564994071');
INSERT INTO `pm_brand` VALUES ('28', '18', '奔富', '/uploads/images/20190808/8b0fb2daf8dd8b648f5803ad7a9ddec3.jpg', '', '', '23', '0', '0', 'B', '1540640223', '1565261729');
INSERT INTO `pm_brand` VALUES ('31', '10', 'Jack n’jill', '/uploads/images/20190808/3dc26e05d323f765d0ffd8bbf3dddcf1.png', '', '', '26', '0', '1', 'J', '1540640341', '1565261744');
INSERT INTO `pm_brand` VALUES ('32', '18', '木瓜膏', '/uploads/images/20190808/a1cc9ddc235b480b84d6468dff15ff78.jpg', '', '', '5', '1', '1', 'M', '1540640364', '1565261763');
INSERT INTO `pm_brand` VALUES ('33', '10', '贝博士', '/uploads/images/20190808/8f0454cc287de8bdf52b42ec01610913.jpg', '', '', '12', '1', '1', 'B', '1540698631', '1565261777');
INSERT INTO `pm_brand` VALUES ('34', '12', '益生菌', '/uploads/images/20190808/97406c8fcb1afbfc98cbf0859c33de81.jpg', '', '', '6', '1', '0', 'Y', '1540698792', '1565261794');
INSERT INTO `pm_brand` VALUES ('35', '16', '澳美滋', '/uploads/images/20190808/762fd476e86973328b6bf9eda9c83c1e.jpg', '', '', '12', '0', '0', 'A', '1540698983', '1565261812');
INSERT INTO `pm_brand` VALUES ('36', '12', '酵素', '/uploads/images/20190808/3d956ef31f947b3e7a173856ffaf46cb.jpg', '', '', '18', '0', '1', 'J', '1540699142', '1565261827');
INSERT INTO `pm_brand` VALUES ('37', '9', '惠氏', '/uploads/images/20190808/f7ea88bb8f1d32f62071d6ec7ba0db06.jpg', '', '', '50', '0', '0', 'H', '1544592863', '1565261840');
INSERT INTO `pm_brand` VALUES ('38', '9', '满趣健 草饲', '/uploads/images/20190808/0bfec8bd033e199239e1570475d8b986.jpg', '', '', '50', '1', '0', 'M', '1544595668', '1565261854');
INSERT INTO `pm_brand` VALUES ('39', '16', 'CapriLac', '/uploads/images/20190808/23ad532a4eaa0cb46f94f17c0bbc238c.png', '', '', '50', '0', '0', 'C', '1544605520', '1565261865');
INSERT INTO `pm_brand` VALUES ('40', '9', '雀巢', '/uploads/images/20190808/ff7919dfed42ec26d3e49e34316930e5.jpg', '', '', '50', '0', '0', 'Q', '1544605982', '1565261879');
INSERT INTO `pm_brand` VALUES ('41', '8', '艾维诺', '/uploads/images/20190808/af92ad9bab729c75d49fee150e359095.jpg', '', '', '50', '0', '0', 'A', '1544845875', '1565261893');
INSERT INTO `pm_brand` VALUES ('42', '14', '新溪岛', '/uploads/images/20190808/15a8acec0f72227c9994fc9949e65d37.jpg', '', '', '50', '0', '0', 'X', '1544850429', '1565261908');
INSERT INTO `pm_brand` VALUES ('43', '7', 'NATIO', '/uploads/images/20190808/4917c4666130ff09cb59b1bb53d4ab38.jpg', '', '', '16', '1', '1', 'N', '1544852395', '1565261920');
INSERT INTO `pm_brand` VALUES ('44', '7', 'Antipodes', '/uploads/images/20190808/4131299a6ca70dba7f321047bb5bef99.jpg', '', '', '50', '0', '0', 'A', '1544853044', '1565261934');
INSERT INTO `pm_brand` VALUES ('45', '18', '红印', '/uploads/images/20190808/641450a9e2cc0ee8ecff3f0aa3f0ca9c.jpg', '', '', '50', '0', '0', 'H', '1545378010', '1565261948');
INSERT INTO `pm_brand` VALUES ('48', '8', 'Goat 羊奶系列', '/uploads/images/20190808/dd03166a63e3cf57ae6d696fdff75d83.jpg', '', '', '10', '1', '1', 'G', '1547430101', '1565261978');
INSERT INTO `pm_brand` VALUES ('49', '7', 'Trilogy', '/uploads/images/20190808/5fe7a87303cd049a6478089650d44361.png', '', '', '50', '0', '0', 'T', '1547430311', '1565261994');
INSERT INTO `pm_brand` VALUES ('50', '12', '其他保健品', '/uploads/images/20190220/1624a067359cd1bc26e19e0d8bddafd7.jpg', '', '', '50', '0', '0', 'Q', '1547430357', '1564993759');
INSERT INTO `pm_brand` VALUES ('51', '8', 'Freezeframe', '/uploads/images/20190808/38e18bb6fe2a4ea7a07028a46c7d6501.jpg', '', '', '15', '1', '1', 'F', '1547430592', '1565262019');
INSERT INTO `pm_brand` VALUES ('52', '12', 'UNICHI', '/uploads/images/20190808/0df46cbd24c51032b7f626f6ca02d262.jpg', '', '', '14', '1', '1', 'U', '1547431459', '1565262032');
INSERT INTO `pm_brand` VALUES ('53', '17', '食品类', '/uploads/images/20190808/365fad6127de4d729f02e79798988aaf.jpg', '', '', '50', '0', '0', 'S', '1547431743', '1565262238');
INSERT INTO `pm_brand` VALUES ('54', '18', '其他日用品', '/uploads/images/20190220/87fd24a1c271352d532297d0eca15c6a.jpg', '', '', '50', '0', '0', 'Q', '1547432489', '1564993717');
INSERT INTO `pm_brand` VALUES ('55', '12', '奥斯特林', '/uploads/images/20190808/cfa8502a0a715e5bc347f996ac88bbfe.jpg', '', '', '8', '1', '1', 'A', '1547432656', '1565262047');
INSERT INTO `pm_brand` VALUES ('56', '18', '康迪克', '/uploads/images/20190808/ebf2ffd5edbf90f1aaf98715d500f6f1.jpg', '', '', '50', '0', '0', 'K', '1547432782', '1565262059');
INSERT INTO `pm_brand` VALUES ('57', '8', 'Oral-B', '/uploads/images/20190808/8249f4e70d12096928ca3e7a93541af9.jpg', '', '', '50', '0', '0', 'O', '1547432908', '1565262071');
INSERT INTO `pm_brand` VALUES ('58', '18', 'Jellycat', '/uploads/images/20190808/b0cdcc9081892b1ed9955bca3816d934.jpg', '', '', '19', '1', '1', 'J', '1550234263', '1565262084');
INSERT INTO `pm_brand` VALUES ('61', '9', 'OLI羊奶粉', '/uploads/images/20190808/67667424cf1d8bd445f2ebaca0056a19.jpg', '', '', '50', '0', '0', 'O', '1552970449', '1565262116');
INSERT INTO `pm_brand` VALUES ('59', '8', 'GM', '/uploads/images/20190808/c4e086b1c3e2687d5d8862a55a4a62a9.jpg', '', '', '11', '1', '1', 'G', '1552271717', '1565262095');
INSERT INTO `pm_brand` VALUES ('60', '8', 'Femfresh', '/uploads/images/20190808/d4782bb329ee1c851620c055c14ff485.jpg', '', '', '13', '1', '1', 'F', '1552271764', '1565262105');
INSERT INTO `pm_brand` VALUES ('62', '9', 'Bubs贝儿羊奶粉', '/uploads/images/20190808/e8832546f5f684e95933f93e3d9db55b.jpg', '', '', '50', '1', '0', 'B', '1554945914', '1565262127');
INSERT INTO `pm_brand` VALUES ('63', '16', 'Diploma学生奶粉', '/uploads/images/20190808/1fa2d5188724a35b0cbb06ea6a4b3d22.jpg', '', '', '50', '0', '0', 'D', '1554947900', '1565262137');
INSERT INTO `pm_brand` VALUES ('64', '16', 'Oz fram', '', '', '', '50', '0', '0', 'O', '1567148927', '1567148927');
INSERT INTO `pm_brand` VALUES ('65', '16', 'Caprilac成人羊奶', '', '', '', '50', '0', '0', 'C', '1567149052', '1567149052');

-- ----------------------------
-- Table structure for `pm_cart`
-- ----------------------------
DROP TABLE IF EXISTS `pm_cart`;
CREATE TABLE `pm_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) NOT NULL,
  `goodsID` int(11) NOT NULL,
  `specID` int(11) NOT NULL COMMENT '商品规格',
  `number` int(11) NOT NULL,
  `trueNumber` int(11) NOT NULL COMMENT '真实商品数量比如2个3件的套餐就显示6',
  `typeID` int(11) NOT NULL COMMENT '包裹类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_cart
-- ----------------------------
INSERT INTO `pm_cart` VALUES ('9', '10011', '133', '0', '1', '1', '1');
INSERT INTO `pm_cart` VALUES ('10', '10011', '856', '0', '1', '1', '13');
INSERT INTO `pm_cart` VALUES ('63', '10021', '106', '0', '1', '1', '1');
INSERT INTO `pm_cart` VALUES ('62', '10015', '106', '0', '1', '1', '1');
INSERT INTO `pm_cart` VALUES ('72', '10008', '864', '0', '2', '2', '4');
INSERT INTO `pm_cart` VALUES ('67', '10008', '106', '0', '6', '6', '1');
INSERT INTO `pm_cart` VALUES ('159', '10016', '802', '0', '6', '6', '4');
INSERT INTO `pm_cart` VALUES ('86', '10012', '180', '0', '1', '1', '4');
INSERT INTO `pm_cart` VALUES ('87', '10012', '614', '0', '1', '1', '15');
INSERT INTO `pm_cart` VALUES ('156', '10009', '191', '0', '6', '6', '4');
INSERT INTO `pm_cart` VALUES ('158', '10016', '189', '0', '4', '4', '4');
INSERT INTO `pm_cart` VALUES ('157', '10016', '191', '0', '5', '5', '4');
INSERT INTO `pm_cart` VALUES ('155', '10009', '412', '0', '3', '3', '10');
INSERT INTO `pm_cart` VALUES ('153', '10009', '215', '0', '2', '2', '11');
INSERT INTO `pm_cart` VALUES ('160', '10009', '197', '0', '2', '2', '11');
INSERT INTO `pm_cart` VALUES ('161', '10009', '201', '0', '2', '2', '11');

-- ----------------------------
-- Table structure for `pm_category`
-- ----------------------------
DROP TABLE IF EXISTS `pm_category`;
CREATE TABLE `pm_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(2) NOT NULL COMMENT '所属模型',
  `fid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '9999',
  `path` varchar(200) NOT NULL,
  `picname` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `num` int(11) NOT NULL,
  `keyword` text NOT NULL,
  `description` text NOT NULL,
  `createTime` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_category
-- ----------------------------
INSERT INTO `pm_category` VALUES ('1', '6', '0', '首页广告', '', '50', '0-1-', '', '', '0', '', '', '1563116411', '1563116411');
INSERT INTO `pm_category` VALUES ('2', '6', '0', '品牌墙顶部', '', '50', '0-2-', '', '', '0', '', '', '1565268398', '1565268407');

-- ----------------------------
-- Table structure for `pm_config`
-- ----------------------------
DROP TABLE IF EXISTS `pm_config`;
CREATE TABLE `pm_config` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(64) DEFAULT NULL COMMENT '配置的key键名',
  `value` varchar(512) DEFAULT NULL COMMENT '配置的val值',
  `inc_type` varchar(64) DEFAULT NULL COMMENT '配置分组',
  `desc` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_config
-- ----------------------------
INSERT INTO `pm_config` VALUES ('1', 'name', '玛丽亚跨境商城', 'basic', '');
INSERT INTO `pm_config` VALUES ('2', 'logo', '', 'basic', '');
INSERT INTO `pm_config` VALUES ('3', 'isClose', '0', 'basic', '');
INSERT INTO `pm_config` VALUES ('4', 'closeInfo', '系统维护中', 'basic', '');
INSERT INTO `pm_config` VALUES ('5', 'domain', 'http://www.aumaria.com', 'basic', '');
INSERT INTO `pm_config` VALUES ('6', 'copyright', '玛丽亚跨境商城', 'basic', '');
INSERT INTO `pm_config` VALUES ('7', 'email', '#', 'basic', '');
INSERT INTO `pm_config` VALUES ('8', 'weixin', '#', 'basic', '');
INSERT INTO `pm_config` VALUES ('9', 'weibo', '#', 'basic', '');
INSERT INTO `pm_config` VALUES ('10', 'description', '玛丽亚跨境商城', 'basic', '');
INSERT INTO `pm_config` VALUES ('11', 'qrcode', '', 'basic', '');
INSERT INTO `pm_config` VALUES ('19', 'mobile', '#', 'basic', '');
INSERT INTO `pm_config` VALUES ('12', 'address', '#', 'basic', '');
INSERT INTO `pm_config` VALUES ('13', 'tel', '#', 'basic', '');
INSERT INTO `pm_config` VALUES ('15', 'qq', '1826366140', 'basic', '');
INSERT INTO `pm_config` VALUES ('16', 'keywords', '玛丽亚跨境商城', 'basic', '');
INSERT INTO `pm_config` VALUES ('18', 'title', '玛丽亚跨境商城', 'basic', '');
INSERT INTO `pm_config` VALUES ('82', 'sign', '10', 'member', null);
INSERT INTO `pm_config` VALUES ('21', 'safecode', '123456', 'basic', '');
INSERT INTO `pm_config` VALUES ('83', 'huilv', '4.29', 'member', null);
INSERT INTO `pm_config` VALUES ('84', 'orderTime', '48', 'member', null);
INSERT INTO `pm_config` VALUES ('85', 'register', '50', 'member', null);
INSERT INTO `pm_config` VALUES ('86', 'buy', '1', 'member', null);
INSERT INTO `pm_config` VALUES ('87', 'jifen1', '0', 'member', null);
INSERT INTO `pm_config` VALUES ('88', 'back1', '5', 'member', null);
INSERT INTO `pm_config` VALUES ('89', 'jifen2', '3000', 'member', null);
INSERT INTO `pm_config` VALUES ('90', 'back2', '10', 'member', null);
INSERT INTO `pm_config` VALUES ('91', 'jifen3', '6000', 'member', null);
INSERT INTO `pm_config` VALUES ('92', 'back3', '15', 'member', null);
INSERT INTO `pm_config` VALUES ('38', 'isSms', '1', 'sms', '');
INSERT INTO `pm_config` VALUES ('39', 'sms_name', 'trainex666666', 'sms', '');
INSERT INTO `pm_config` VALUES ('40', 'sms_pwd', 'train666666', 'sms', '');
INSERT INTO `pm_config` VALUES ('41', 'sms_sign', '玛丽亚', 'sms', '');
INSERT INTO `pm_config` VALUES ('42', 'out_time', '10', 'sms', '');
INSERT INTO `pm_config` VALUES ('43', 'diffTime', '1', 'sms', '');
INSERT INTO `pm_config` VALUES ('44', 'dayNumber', '5', 'sms', '');
INSERT INTO `pm_config` VALUES ('93', 'jifen4', '9000', 'member', null);
INSERT INTO `pm_config` VALUES ('94', 'back4', '20', 'member', null);
INSERT INTO `pm_config` VALUES ('95', 'jifen5', '12000', 'member', null);
INSERT INTO `pm_config` VALUES ('50', 'APP_TOKEN', '', 'weixin', null);
INSERT INTO `pm_config` VALUES ('51', 'APP_ID', 'wxe616fd48b4e4c781', 'weixin', null);
INSERT INTO `pm_config` VALUES ('52', 'APP_SECRET', '1c3bd5e8f694b0e14aa7a58aff98f073', 'weixin', null);
INSERT INTO `pm_config` VALUES ('53', 'MCH_KEY', '', 'weixin', null);
INSERT INTO `pm_config` VALUES ('54', 'MCH_ID', '', 'weixin', null);
INSERT INTO `pm_config` VALUES ('55', 'NOTIFY', '#', 'alipay', null);
INSERT INTO `pm_config` VALUES ('56', 'ALIPAY_EMAIL', '491623529@qq22.com', 'alipay', null);
INSERT INTO `pm_config` VALUES ('57', 'ALIPAY_KEY', 'z0kn76wfr4e6c7ppgxdo4nnx5qwuk459', 'alipay', null);
INSERT INTO `pm_config` VALUES ('58', 'ALIPAY_PARTNER', '2088921795656107', 'alipay', null);
INSERT INTO `pm_config` VALUES ('59', 'NOTIFY', '#', 'alipay', null);
INSERT INTO `pm_config` VALUES ('96', 'back5', '25', 'member', null);
INSERT INTO `pm_config` VALUES ('63', 'linkman', '#', 'basic', null);
INSERT INTO `pm_config` VALUES ('64', 'fax', '0371-23190098', 'basic', null);
INSERT INTO `pm_config` VALUES ('97', 'min', '0.01', 'member', null);
INSERT INTO `pm_config` VALUES ('98', 'max', '2.00', 'member', null);
INSERT INTO `pm_config` VALUES ('99', 'hour', '24', 'member', null);
INSERT INTO `pm_config` VALUES ('100', 'shareMax', '20', 'member', null);
INSERT INTO `pm_config` VALUES ('101', 'isReg', '1', 'member', null);
INSERT INTO `pm_config` VALUES ('102', 'hotkey', '保湿面膜,发发发,fasdfasdf', 'member', null);
INSERT INTO `pm_config` VALUES ('103', 'kuaidi12', '红酒专邮', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('104', 'price12', '0', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('105', 'inprice12', '0', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('106', 'otherPrice12', '0', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('107', 'url12', 'http://api.transrush.com.au/cms/', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('108', 'kuaidi13', '面单专邮', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('109', 'price13', '0', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('110', 'inprice13', '0', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('111', 'otherPrice13', '0', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('112', 'url13', 'http://www.kuaidi100.com/', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('113', 'kuaidi14', '生鲜专邮', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('114', 'price14', '0', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('115', 'inprice14', '0', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('116', 'otherPrice14', '0', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('117', 'url14', 'http://www.sf-express.com/cn/sc/', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('118', 'price1', '4.3', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('119', 'inprice1', '3.5', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('120', 'otherPrice1', '2', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('121', 'price2', '10', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('122', 'inprice2', '7.5', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('123', 'otherPrice2', '2', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('124', 'price3', '6', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('125', 'inprice3', '5.6', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('126', 'otherPrice3', '2', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('127', 'file', '', 'basic', null);
INSERT INTO `pm_config` VALUES ('128', 'flashTime', '8:00-12:00', 'member', null);
INSERT INTO `pm_config` VALUES ('129', 'isCut', '1', 'member', null);
INSERT INTO `pm_config` VALUES ('130', 'OMI_ID', '501039', 'omi', null);
INSERT INTO `pm_config` VALUES ('131', 'OMI_KEY', '547e766b244a4e7eb24fee84a1e28fd2', 'omi', null);
INSERT INTO `pm_config` VALUES ('132', 'AUE_ID', '2818', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('133', 'AUE_KEY', 'AGSags28182818', 'kuaidi', null);
INSERT INTO `pm_config` VALUES ('134', 'diggPoint', '50', 'member', null);
INSERT INTO `pm_config` VALUES ('135', 'shareStore', '50', 'member', null);

-- ----------------------------
-- Table structure for `pm_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `pm_coupon`;
CREATE TABLE `pm_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `register` int(11) NOT NULL,
  `full` int(11) NOT NULL,
  `dec` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `number` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `goodsID` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updateTime` int(11) NOT NULL,
  `createTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pm_coupon
-- ----------------------------
INSERT INTO `pm_coupon` VALUES ('3', '新手券', '立减50元', '1', '0', '50', '1', '1', '30', '4,7', '使用说明啊啊啊', '1565698750', '1551964995');
INSERT INTO `pm_coupon` VALUES ('5', '全平台通用券', '满100元立减50元', '0', '100', '50', '1', '1', '10', '', '满100减50', '1565968034', '1565968034');
INSERT INTO `pm_coupon` VALUES ('6', 'Swisse专用券', '满100元立减30元', '0', '100', '30', '1', '1', '3', '23', '', '1565968218', '1565968218');
INSERT INTO `pm_coupon` VALUES ('7', '指定商品优惠券', '满30元立减10元', '0', '30', '10', '0', '1', '4', '22', '', '1566198060', '1565978646');
INSERT INTO `pm_coupon` VALUES ('8', '叶酸片优惠券', '满200元立减30元', '0', '200', '30', '1', '1', '3', '24', '', '1566198169', '1566198028');
INSERT INTO `pm_coupon` VALUES ('9', 'A2铂金优惠券', '满100元立减50元', '0', '100', '50', '1', '1', '3', '9', '', '1566198233', '1566198233');
INSERT INTO `pm_coupon` VALUES ('10', '玛丽亚商城优惠券', '满1元立减5元', '1', '1', '5', '1', '1', '50', '', '', '1567494675', '1567494675');
INSERT INTO `pm_coupon` VALUES ('11', '商品优惠券', '满20元立减5元', '1', '20', '5', '1', '1', '30', '35,70,58,26,10,', '', '1567494786', '1567494786');
INSERT INTO `pm_coupon` VALUES ('12', '活动优惠券', '满50元立减10元', '0', '50', '10', '1', '1', '80', '35,84,56,17,79,95,103,', '', '1567494826', '1567494826');
INSERT INTO `pm_coupon` VALUES ('13', '测试券', '满20元立减1元', '0', '20', '1', '1', '1', '10', '856', '111', '1567567189', '1567567189');
INSERT INTO `pm_coupon` VALUES ('14', '点赞红包', '满50元立减5元', '0', '50', '5', '0', '1', '30', '', '', '1569168571', '1569168571');

-- ----------------------------
-- Table structure for `pm_coupon_goods`
-- ----------------------------
DROP TABLE IF EXISTS `pm_coupon_goods`;
CREATE TABLE `pm_coupon_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `couponID` int(11) NOT NULL,
  `goodsID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_coupon_goods
-- ----------------------------
INSERT INTO `pm_coupon_goods` VALUES ('1', '3', '4');
INSERT INTO `pm_coupon_goods` VALUES ('2', '3', '7');
INSERT INTO `pm_coupon_goods` VALUES ('3', '6', '23');
INSERT INTO `pm_coupon_goods` VALUES ('6', '7', '22');
INSERT INTO `pm_coupon_goods` VALUES ('8', '8', '24');
INSERT INTO `pm_coupon_goods` VALUES ('9', '9', '9');
INSERT INTO `pm_coupon_goods` VALUES ('10', '11', '35');
INSERT INTO `pm_coupon_goods` VALUES ('11', '11', '70');
INSERT INTO `pm_coupon_goods` VALUES ('12', '11', '58');
INSERT INTO `pm_coupon_goods` VALUES ('13', '11', '26');
INSERT INTO `pm_coupon_goods` VALUES ('14', '11', '10');
INSERT INTO `pm_coupon_goods` VALUES ('15', '11', '0');
INSERT INTO `pm_coupon_goods` VALUES ('16', '12', '35');
INSERT INTO `pm_coupon_goods` VALUES ('17', '12', '84');
INSERT INTO `pm_coupon_goods` VALUES ('18', '12', '56');
INSERT INTO `pm_coupon_goods` VALUES ('19', '12', '17');
INSERT INTO `pm_coupon_goods` VALUES ('20', '12', '79');
INSERT INTO `pm_coupon_goods` VALUES ('21', '12', '95');
INSERT INTO `pm_coupon_goods` VALUES ('22', '12', '103');
INSERT INTO `pm_coupon_goods` VALUES ('23', '12', '0');
INSERT INTO `pm_coupon_goods` VALUES ('24', '13', '856');

-- ----------------------------
-- Table structure for `pm_coupon_log`
-- ----------------------------
DROP TABLE IF EXISTS `pm_coupon_log`;
CREATE TABLE `pm_coupon_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) DEFAULT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  `couponID` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `full` decimal(8,2) DEFAULT NULL,
  `dec` decimal(5,2) DEFAULT NULL,
  `intr` text NOT NULL,
  `goodsID` varchar(200) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL COMMENT '编号',
  `status` tinyint(4) DEFAULT NULL COMMENT '0未使用 1已使用',
  `useTime` int(11) DEFAULT NULL,
  `endTime` int(11) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_coupon_log
-- ----------------------------
INSERT INTO `pm_coupon_log` VALUES ('18', '2', '张小黑', '6', 'Swisse专用券', '满100元立减30元', '0.00', '30.00', '', '23', '1432156242', '0', '0', '1566237012', '1565977812');
INSERT INTO `pm_coupon_log` VALUES ('19', '2', '张小黑', '7', '指定商品优惠券', '满30元立减10元', '0.00', '10.00', '', '22', '5046628443', '0', '0', '1566324283', '1565978683');
INSERT INTO `pm_coupon_log` VALUES ('20', '2', '张小黑', '5', '全平台通用券', '满100元立减50元', '0.00', '50.00', '', '', '7735350591', '0', '0', '1566842823', '1565978823');
INSERT INTO `pm_coupon_log` VALUES ('21', '10001', '张小黑', '5', '全平台通用券', '满100元立减50元', '0.00', '50.00', '', '', '2848162618', '0', '0', '1567060681', '1566196681');
INSERT INTO `pm_coupon_log` VALUES ('22', '10001', '张小黑', '6', 'Swisse专用券', '满100元立减30元', '0.00', '30.00', '', '23', '5517315343', '0', '0', '1566455885', '1566196685');
INSERT INTO `pm_coupon_log` VALUES ('23', '10001', '张小黑', '7', '指定商品优惠券', '满30元立减10元', '0.00', '10.00', '', '22', '1614234196', '0', '0', '1566543492', '1566197892');
INSERT INTO `pm_coupon_log` VALUES ('24', '10001', '张小黑', '8', '叶酸片优惠券', '满200元立减30元', '0.00', '30.00', '', '21', '2835776994', '0', '0', '1566457337', '1566198137');
INSERT INTO `pm_coupon_log` VALUES ('25', '10001', '张小黑', '9', 'A2铂金优惠券', '满100元立减50元', '0.00', '50.00', '', '9', '3814365635', '0', '0', '1566457463', '1566198263');
INSERT INTO `pm_coupon_log` VALUES ('26', '0', '', '9', 'A2铂金优惠券', '满100元立减50元', '100.00', '50.00', '', '9', '9241477078', '0', '0', '0', '1566464802');
INSERT INTO `pm_coupon_log` VALUES ('27', '0', '', '9', 'A2铂金优惠券', '满100元立减50元', '100.00', '50.00', '', '9', '2140549679', '0', '0', '0', '1566464802');
INSERT INTO `pm_coupon_log` VALUES ('28', null, '東', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '5239006432', '0', '0', '1569548231', '1566956231');
INSERT INTO `pm_coupon_log` VALUES ('29', null, '東', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '6186167538', '0', '0', '1569549039', '1566957039');
INSERT INTO `pm_coupon_log` VALUES ('30', null, '', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '9834434328', '0', '0', '1569549377', '1566957377');
INSERT INTO `pm_coupon_log` VALUES ('31', null, 'Zzzz、', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '8580691355', '0', '0', '1569549845', '1566957845');
INSERT INTO `pm_coupon_log` VALUES ('32', '10011', '张橦橦', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '7435021473', '0', '0', '1569744304', '1567152304');
INSERT INTO `pm_coupon_log` VALUES ('33', null, '张小黑', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '3040725494', '0', '0', '1569815281', '1567223281');
INSERT INTO `pm_coupon_log` VALUES ('34', '10012', '张小黑', '8', '叶酸片优惠券', '满200元立减30元', '200.00', '30.00', '', '24', '8977999889', '0', '0', '1567592012', '1567332812');
INSERT INTO `pm_coupon_log` VALUES ('35', null, 'Christie-xzx', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '8401255880', '0', '0', '1569936323', '1567344323');
INSERT INTO `pm_coupon_log` VALUES ('36', '10011', '张橦橦', '5', '全平台通用券', '满100元立减50元', '100.00', '50.00', '满100减50', '', '1416953372', '0', '0', '1568430709', '1567566709');
INSERT INTO `pm_coupon_log` VALUES ('37', '10011', '张橦橦', '13', '测试券', '满20元立减1元', '20.00', '1.00', '111', '856', '2366986491', '0', '0', '1568431203', '1567567203');
INSERT INTO `pm_coupon_log` VALUES ('38', '10012', '张小黑', '13', '测试券', '满20元立减1元', '20.00', '1.00', '111', '856', '1071218437', '1', '1567568863', '1568432684', '1567568684');
INSERT INTO `pm_coupon_log` VALUES ('39', '10014', '玫瑰客服', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '7374802838', '0', '0', '1570173315', '1567581315');
INSERT INTO `pm_coupon_log` VALUES ('40', '10014', '玫瑰客服', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '7374802838', '0', '0', '1570173315', '1567581315');
INSERT INTO `pm_coupon_log` VALUES ('41', '10014', '玫瑰客服', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '1237162270', '1', '1567673734', '1571901315', '1567581315');
INSERT INTO `pm_coupon_log` VALUES ('42', '10014', '玫瑰客服', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '7374802838', '0', '0', '1570173315', '1567581315');
INSERT INTO `pm_coupon_log` VALUES ('43', '10014', '玫瑰客服', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '1237162270', '1', '1567583416', '1571901315', '1567581315');
INSERT INTO `pm_coupon_log` VALUES ('44', '10014', '玫瑰客服', '11', '商品优惠券', '满20元立减5元', '20.00', '5.00', '', '35,70,58,26,10,', '7808558884', '1', '1567601177', '1570173315', '1567581315');
INSERT INTO `pm_coupon_log` VALUES ('45', '10014', '玫瑰客服', '13', '测试券', '满20元立减1元', '20.00', '1.00', '111', '856', '1132904688', '1', '1567586724', '1568450709', '1567586709');
INSERT INTO `pm_coupon_log` VALUES ('46', '10014', '玫瑰客服', '5', '全平台通用券', '满100元立减50元', '100.00', '50.00', '满100减50', '', '5788348969', '0', '0', '1568450712', '1567586712');
INSERT INTO `pm_coupon_log` VALUES ('47', '10015', '张小黑', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '3383844756', '0', '0', '1570269933', '1567677933');
INSERT INTO `pm_coupon_log` VALUES ('48', '10015', '张小黑', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '3383844756', '0', '0', '1570269933', '1567677933');
INSERT INTO `pm_coupon_log` VALUES ('49', '10015', '张小黑', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '4382874177', '1', '1567734183', '1571997933', '1567677933');
INSERT INTO `pm_coupon_log` VALUES ('50', '10015', '张小黑', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '3383844756', '0', '0', '1570269933', '1567677933');
INSERT INTO `pm_coupon_log` VALUES ('51', '10015', '张小黑', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '4382874177', '1', '1567734472', '1571997933', '1567677933');
INSERT INTO `pm_coupon_log` VALUES ('52', '10015', '张小黑', '11', '商品优惠券', '满20元立减5元', '20.00', '5.00', '', '35,70,58,26,10,', '9919888413', '0', '0', '1570269933', '1567677933');
INSERT INTO `pm_coupon_log` VALUES ('53', '10009', '', '5', '全平台通用券', '满100元立减50元', '100.00', '50.00', '满100减50', '', '3103967406', '0', '0', '1568690953', '1567826953');
INSERT INTO `pm_coupon_log` VALUES ('54', null, 'Ellen', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '6353609569', '0', '0', '1570419200', '1567827200');
INSERT INTO `pm_coupon_log` VALUES ('55', null, 'Ellen', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '6353609569', '0', '0', '1570419200', '1567827200');
INSERT INTO `pm_coupon_log` VALUES ('56', null, 'Ellen', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '5239118209', '0', '0', '1572147200', '1567827200');
INSERT INTO `pm_coupon_log` VALUES ('57', null, 'Ellen', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '6353609569', '0', '0', '1570419200', '1567827200');
INSERT INTO `pm_coupon_log` VALUES ('58', null, 'Ellen', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '5239118209', '0', '0', '1572147200', '1567827200');
INSERT INTO `pm_coupon_log` VALUES ('59', null, 'Ellen', '11', '商品优惠券', '满20元立减5元', '20.00', '5.00', '', '35,70,58,26,10,', '9255738467', '0', '0', '1570419200', '1567827200');
INSERT INTO `pm_coupon_log` VALUES ('60', null, 'Minna_赵敏', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '5188007702', '0', '0', '1570420703', '1567828703');
INSERT INTO `pm_coupon_log` VALUES ('61', null, 'Minna_赵敏', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '5188007702', '0', '0', '1570420703', '1567828703');
INSERT INTO `pm_coupon_log` VALUES ('62', null, 'Minna_赵敏', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '9910787444', '0', '0', '1572148703', '1567828703');
INSERT INTO `pm_coupon_log` VALUES ('63', null, 'Minna_赵敏', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '5188007702', '0', '0', '1570420703', '1567828703');
INSERT INTO `pm_coupon_log` VALUES ('64', null, 'Minna_赵敏', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '9910787444', '0', '0', '1572148703', '1567828703');
INSERT INTO `pm_coupon_log` VALUES ('65', null, 'Minna_赵敏', '11', '商品优惠券', '满20元立减5元', '20.00', '5.00', '', '35,70,58,26,10,', '8548799349', '0', '0', '1570420703', '1567828703');
INSERT INTO `pm_coupon_log` VALUES ('66', null, '月明', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '2496219370', '0', '0', '1570420725', '1567828725');
INSERT INTO `pm_coupon_log` VALUES ('67', null, '月明', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '2496219370', '0', '0', '1570420725', '1567828725');
INSERT INTO `pm_coupon_log` VALUES ('68', null, '月明', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '5355854223', '0', '0', '1572148725', '1567828725');
INSERT INTO `pm_coupon_log` VALUES ('69', null, '月明', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '2496219370', '0', '0', '1570420725', '1567828725');
INSERT INTO `pm_coupon_log` VALUES ('70', null, '月明', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '5355854223', '0', '0', '1572148725', '1567828725');
INSERT INTO `pm_coupon_log` VALUES ('71', null, '月明', '11', '商品优惠券', '满20元立减5元', '20.00', '5.00', '', '35,70,58,26,10,', '5569412254', '0', '0', '1570420725', '1567828725');
INSERT INTO `pm_coupon_log` VALUES ('72', null, '熊枫', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '8033391861', '0', '0', '1570422850', '1567830850');
INSERT INTO `pm_coupon_log` VALUES ('73', null, '熊枫', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '8033391861', '0', '0', '1570422850', '1567830850');
INSERT INTO `pm_coupon_log` VALUES ('74', null, '熊枫', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '9764739507', '0', '0', '1572150850', '1567830850');
INSERT INTO `pm_coupon_log` VALUES ('75', null, '熊枫', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '8033391861', '0', '0', '1570422850', '1567830850');
INSERT INTO `pm_coupon_log` VALUES ('76', null, '熊枫', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '9764739507', '0', '0', '1572150850', '1567830850');
INSERT INTO `pm_coupon_log` VALUES ('77', null, '熊枫', '11', '商品优惠券', '满20元立减5元', '20.00', '5.00', '', '35,70,58,26,10,', '3129716177', '0', '0', '1570422850', '1567830850');
INSERT INTO `pm_coupon_log` VALUES ('78', '10020', '', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '1934143084', '0', '0', '1570424280', '1567832280');
INSERT INTO `pm_coupon_log` VALUES ('79', '10020', '', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '1934143084', '0', '0', '1570424280', '1567832280');
INSERT INTO `pm_coupon_log` VALUES ('80', '10020', '', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '5396612023', '0', '0', '1572152280', '1567832280');
INSERT INTO `pm_coupon_log` VALUES ('81', '10020', '', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '1934143084', '0', '0', '1570424280', '1567832280');
INSERT INTO `pm_coupon_log` VALUES ('82', '10020', '', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '5396612023', '0', '0', '1572152280', '1567832280');
INSERT INTO `pm_coupon_log` VALUES ('83', '10020', '', '11', '商品优惠券', '满20元立减5元', '20.00', '5.00', '', '35,70,58,26,10,', '2466474535', '0', '0', '1570424280', '1567832280');
INSERT INTO `pm_coupon_log` VALUES ('84', '10020', '', '5', '全平台通用券', '满100元立减50元', '100.00', '50.00', '满100减50', '', '4513272618', '0', '0', '1568715037', '1567851037');
INSERT INTO `pm_coupon_log` VALUES ('85', '10020', '', '6', 'Swisse专用券', '满100元立减30元', '100.00', '30.00', '', '23', '3355856513', '0', '0', '1568110239', '1567851039');
INSERT INTO `pm_coupon_log` VALUES ('86', '10020', '', '8', '叶酸片优惠券', '满200元立减30元', '200.00', '30.00', '', '24', '8952710237', '0', '0', '1568110241', '1567851041');
INSERT INTO `pm_coupon_log` VALUES ('87', '10020', '', '9', 'A2铂金优惠券', '满100元立减50元', '100.00', '50.00', '', '9', '6113723528', '0', '0', '1568110243', '1567851043');
INSERT INTO `pm_coupon_log` VALUES ('88', '10020', '', '12', '活动优惠券', '满50元立减10元', '50.00', '10.00', '', '35,84,56,17,79,95,103,', '3536818978', '0', '0', '1574763045', '1567851045');
INSERT INTO `pm_coupon_log` VALUES ('89', '10020', '', '13', '测试券', '满20元立减1元', '20.00', '1.00', '111', '856', '1565094471', '0', '0', '1568715046', '1567851046');
INSERT INTO `pm_coupon_log` VALUES ('90', '10021', '朝生暮死', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '7279415426', '0', '0', '1570631577', '1568039577');
INSERT INTO `pm_coupon_log` VALUES ('91', '10021', '朝生暮死', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '7279415426', '0', '0', '1570631577', '1568039577');
INSERT INTO `pm_coupon_log` VALUES ('92', '10021', '朝生暮死', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '5016890930', '0', '0', '1572359577', '1568039577');
INSERT INTO `pm_coupon_log` VALUES ('93', '10021', '朝生暮死', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '7279415426', '0', '0', '1570631577', '1568039577');
INSERT INTO `pm_coupon_log` VALUES ('94', '10021', '朝生暮死', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '5016890930', '0', '0', '1572359577', '1568039577');
INSERT INTO `pm_coupon_log` VALUES ('95', '10021', '朝生暮死', '11', '商品优惠券', '满20元立减5元', '20.00', '5.00', '', '35,70,58,26,10,', '1231936019', '0', '0', '1570631577', '1568039577');
INSERT INTO `pm_coupon_log` VALUES ('96', null, '苍耳', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '8021352254', '0', '0', '1570965494', '1568373494');
INSERT INTO `pm_coupon_log` VALUES ('97', null, '苍耳', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '8021352254', '0', '0', '1570965494', '1568373494');
INSERT INTO `pm_coupon_log` VALUES ('98', null, '苍耳', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '5548357428', '0', '0', '1572693494', '1568373494');
INSERT INTO `pm_coupon_log` VALUES ('99', null, '苍耳', '3', '新手券', '立减50元', '0.00', '50.00', '使用说明啊啊啊', '4,7', '8021352254', '0', '0', '1570965494', '1568373494');
INSERT INTO `pm_coupon_log` VALUES ('100', null, '苍耳', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '5548357428', '0', '0', '1572693494', '1568373494');
INSERT INTO `pm_coupon_log` VALUES ('101', null, '苍耳', '11', '商品优惠券', '满20元立减5元', '20.00', '5.00', '', '35,70,58,26,10,', '7584060566', '0', '0', '1570965494', '1568373494');
INSERT INTO `pm_coupon_log` VALUES ('102', '10022', '苍耳', '10', '玛丽亚商城优惠券', '满1元立减5元', '1.00', '5.00', '', '', '9113854564', '0', '0', '1572694103', '1568374103');
INSERT INTO `pm_coupon_log` VALUES ('103', '10009', '', '14', '点赞红包', '满50元立减5元', '50.00', '5.00', '', '', '1125730198', '0', '0', '1571761563', '1569169563');

-- ----------------------------
-- Table structure for `pm_digg`
-- ----------------------------
DROP TABLE IF EXISTS `pm_digg`;
CREATE TABLE `pm_digg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `headimg` varchar(200) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_digg
-- ----------------------------
INSERT INTO `pm_digg` VALUES ('1', '10009', '10008', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erdO85GBCZcf0ImfqZaR9d7TpVnm3cbcpNpyxZHBVTXT7WxUSsJt0uwS55CLUXFYoo1tLz7LBg3tA/132', '50', '1569169514');

-- ----------------------------
-- Table structure for `pm_fav`
-- ----------------------------
DROP TABLE IF EXISTS `pm_fav`;
CREATE TABLE `pm_fav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_fav
-- ----------------------------
INSERT INTO `pm_fav` VALUES ('4', '5', '2');
INSERT INTO `pm_fav` VALUES ('5', '14', '2');
INSERT INTO `pm_fav` VALUES ('6', '15', '2');
INSERT INTO `pm_fav` VALUES ('7', '25', '2');
INSERT INTO `pm_fav` VALUES ('8', '23', '2');
INSERT INTO `pm_fav` VALUES ('9', '11', '2');
INSERT INTO `pm_fav` VALUES ('23', '17', '10001');
INSERT INTO `pm_fav` VALUES ('24', '23', '10001');
INSERT INTO `pm_fav` VALUES ('22', '21', '10001');
INSERT INTO `pm_fav` VALUES ('26', '133', '10008');
INSERT INTO `pm_fav` VALUES ('25', '22', '10005');
INSERT INTO `pm_fav` VALUES ('27', '106', '10020');

-- ----------------------------
-- Table structure for `pm_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `pm_feedback`;
CREATE TABLE `pm_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `path` varchar(200) NOT NULL,
  `memberID` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `reply` text NOT NULL,
  `content` text NOT NULL,
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `pm_finance`
-- ----------------------------
DROP TABLE IF EXISTS `pm_finance`;
CREATE TABLE `pm_finance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) NOT NULL COMMENT '会员iD',
  `admin` int(11) NOT NULL COMMENT '1管理员 2普通会员',
  `doID` int(11) NOT NULL COMMENT '操作者ID',
  `type` int(11) NOT NULL COMMENT '类型',
  `money` decimal(10,2) NOT NULL COMMENT '交易金额',
  `newMoney` decimal(10,2) NOT NULL,
  `oldMoney` decimal(10,2) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `extend1` int(11) NOT NULL,
  `extend2` int(11) NOT NULL,
  `createTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_finance
-- ----------------------------
INSERT INTO `pm_finance` VALUES ('1', '2', '1', '2', '1', '10.00', '0.00', '0.00', '07-23签到，奖励10积分。', '0', '0', '1563892114');
INSERT INTO `pm_finance` VALUES ('2', '2', '1', '2', '1', '10.00', '0.00', '0.00', '08-06签到，奖励10积分。', '0', '0', '1565097687');
INSERT INTO `pm_finance` VALUES ('3', '1', '1', '1', '3', '100.00', '0.00', '0.00', '账户充值100元', '0', '0', '1565104138');
INSERT INTO `pm_finance` VALUES ('4', '2', '1', '1', '3', '10.00', '0.00', '0.00', '账户充值10元', '0', '0', '1565104250');
INSERT INTO `pm_finance` VALUES ('5', '2', '1', '1', '8', '20.00', '0.00', '0.00', '2019-08每月积分清零', '0', '0', '1566029823');
INSERT INTO `pm_finance` VALUES ('6', '10001', '2', '10001', '5', '30.40', '30.40', '0.00', '购买商品，获得$30.40返利基金', '13', '0', '1566398276');
INSERT INTO `pm_finance` VALUES ('7', '10003', '1', '10003', '1', '10.00', '0.00', '0.00', '08-23签到，奖励10积分。', '0', '0', '1566550045');
INSERT INTO `pm_finance` VALUES ('8', '10001', '1', '10001', '1', '10.00', '10.00', '0.00', '08-25签到，奖励10积分。', '0', '0', '1566747027');
INSERT INTO `pm_finance` VALUES ('9', '10001', '1', '1', '7', '1.52', '0.00', '0.00', '2019-07，10积分，基金30.4元，返利1.52元', '0', '0', '1566810361');
INSERT INTO `pm_finance` VALUES ('10', '10001', '1', '1', '8', '10.00', '0.00', '0.00', '2019-07每月积分清零', '0', '0', '1566810361');
INSERT INTO `pm_finance` VALUES ('11', '10001', '1', '1', '6', '10.00', '0.00', '0.00', '2019-07每月基金清零', '0', '0', '1566810361');
INSERT INTO `pm_finance` VALUES ('12', '10003', '1', '1', '8', '10.00', '0.00', '0.00', '2019-07每月积分清零', '0', '0', '1566810361');
INSERT INTO `pm_finance` VALUES ('13', '10008', '1', '10008', '1', '10.00', '10.00', '0.00', '08-28签到，奖励10积分。', '0', '0', '1566957267');
INSERT INTO `pm_finance` VALUES ('14', '10009', '1', '10009', '1', '10.00', '10.00', '0.00', '08-28签到，奖励10积分。', '0', '0', '1566957408');
INSERT INTO `pm_finance` VALUES ('15', '10010', '1', '10010', '1', '10.00', '10.00', '0.00', '08-28签到，奖励10积分。', '0', '0', '1566957852');
INSERT INTO `pm_finance` VALUES ('16', '10008', '1', '10008', '1', '10.00', '20.00', '10.00', '08-30签到，奖励10积分。', '0', '0', '1567128150');
INSERT INTO `pm_finance` VALUES ('17', '10012', '1', '10012', '1', '10.00', '10.00', '0.00', '09-01签到，奖励10积分。', '0', '0', '1567308921');
INSERT INTO `pm_finance` VALUES ('18', '10011', '1', '10011', '1', '10.00', '10.00', '0.00', '09-01签到，奖励10积分。', '0', '0', '1567334035');
INSERT INTO `pm_finance` VALUES ('19', '10009', '2', '10009', '2', '10.00', '20.00', '10.00', '购买商品，获得10积分', '2', '0', '1567413835');
INSERT INTO `pm_finance` VALUES ('20', '10009', '2', '10009', '5', '5.00', '5.00', '0.00', '购买商品，获得$5.00返利基金', '2', '0', '1567413835');
INSERT INTO `pm_finance` VALUES ('21', '10011', '1', '10011', '1', '10.00', '20.00', '10.00', '09-02签到，奖励10积分。', '0', '0', '1567415884');
INSERT INTO `pm_finance` VALUES ('22', '10008', '1', '1', '8', '20.00', '0.00', '0.00', '2019-09每月积分清零', '0', '0', '1567507646');
INSERT INTO `pm_finance` VALUES ('23', '10009', '1', '1', '7', '0.25', '0.00', '0.00', '2019-09，20积分，基金5元，返利0.25元', '0', '0', '1567507646');
INSERT INTO `pm_finance` VALUES ('24', '10009', '1', '1', '8', '20.00', '0.00', '0.00', '2019-09每月积分清零', '0', '0', '1567507646');
INSERT INTO `pm_finance` VALUES ('25', '10009', '1', '1', '6', '20.00', '0.00', '0.00', '2019-09每月基金清零', '0', '0', '1567507646');
INSERT INTO `pm_finance` VALUES ('26', '10010', '1', '1', '8', '10.00', '0.00', '0.00', '2019-09每月积分清零', '0', '0', '1567507646');
INSERT INTO `pm_finance` VALUES ('27', '10011', '1', '1', '8', '20.00', '0.00', '0.00', '2019-09每月积分清零', '0', '0', '1567507646');
INSERT INTO `pm_finance` VALUES ('28', '10012', '1', '1', '8', '10.00', '0.00', '0.00', '2019-09每月积分清零', '0', '0', '1567507646');
INSERT INTO `pm_finance` VALUES ('29', '10015', '1', '10015', '1', '10.00', '10.00', '0.00', '09-06签到，奖励10积分。', '0', '0', '1567734216');
INSERT INTO `pm_finance` VALUES ('30', '10009', '1', '10009', '1', '10.00', '10.00', '0.00', '09-07签到，奖励10积分。', '0', '0', '1567826942');
INSERT INTO `pm_finance` VALUES ('31', '10009', '2', '10009', '4', '0.25', '0.00', '0.25', '购买商品，账户余额支付$0.25，订单号：19090711590054', '30', '0', '1567828749');
INSERT INTO `pm_finance` VALUES ('32', '10020', '1', '10020', '1', '10.00', '10.00', '0.00', '09-07签到，奖励10积分。', '0', '0', '1567832858');
INSERT INTO `pm_finance` VALUES ('33', '10020', '1', '10020', '1', '10.00', '20.00', '10.00', '09-09签到，奖励10积分。', '0', '0', '1567987517');
INSERT INTO `pm_finance` VALUES ('34', '10008', '1', '10008', '1', '10.00', '10.00', '0.00', '09-09签到，奖励10积分。', '0', '0', '1568032664');
INSERT INTO `pm_finance` VALUES ('35', '10014', '1', '10014', '1', '10.00', '10.00', '0.00', '09-09签到，奖励10积分。', '0', '0', '1568032949');
INSERT INTO `pm_finance` VALUES ('36', '10015', '1', '10015', '1', '10.00', '20.00', '10.00', '09-09签到，奖励10积分。', '0', '0', '1568034325');
INSERT INTO `pm_finance` VALUES ('37', '10021', '1', '10021', '1', '10.00', '10.00', '0.00', '09-09签到，奖励10积分。', '0', '0', '1568039590');
INSERT INTO `pm_finance` VALUES ('38', '10020', '1', '10020', '1', '10.00', '30.00', '20.00', '09-10签到，奖励10积分。', '0', '0', '1568115096');
INSERT INTO `pm_finance` VALUES ('39', '10014', '1', '10014', '1', '10.00', '20.00', '10.00', '09-11签到，奖励10积分。', '0', '0', '1568169468');
INSERT INTO `pm_finance` VALUES ('40', '10015', '1', '10015', '1', '10.00', '30.00', '20.00', '09-12签到，奖励10积分。', '0', '0', '1568271853');
INSERT INTO `pm_finance` VALUES ('41', '10009', '2', '10009', '2', '10.00', '20.00', '10.00', '购买商品，获得10积分', '43', '0', '1568281749');
INSERT INTO `pm_finance` VALUES ('42', '10009', '2', '10009', '5', '24.70', '9.70', '-15.00', '购买商品，获得$24.70返利基金', '43', '0', '1568281749');
INSERT INTO `pm_finance` VALUES ('43', '10020', '1', '10020', '1', '10.00', '40.00', '30.00', '09-12签到，奖励10积分。', '0', '0', '1568288505');
INSERT INTO `pm_finance` VALUES ('44', '10020', '1', '10020', '1', '10.00', '50.00', '40.00', '09-13签到，奖励10积分。', '0', '0', '1568333949');
INSERT INTO `pm_finance` VALUES ('45', '10022', '1', '10022', '1', '10.00', '10.00', '0.00', '09-13签到，奖励10积分。', '0', '0', '1568373547');
INSERT INTO `pm_finance` VALUES ('46', '10020', '1', '10020', '1', '10.00', '60.00', '50.00', '09-14签到，奖励10积分。', '0', '0', '1568461017');
INSERT INTO `pm_finance` VALUES ('47', '10012', '1', '10012', '1', '10.00', '10.00', '0.00', '09-18签到，奖励10积分。', '0', '0', '1568777540');
INSERT INTO `pm_finance` VALUES ('48', '10014', '1', '10014', '1', '10.00', '30.00', '20.00', '09-18签到，奖励10积分。', '0', '0', '1568779308');
INSERT INTO `pm_finance` VALUES ('49', '10015', '1', '10015', '1', '10.00', '40.00', '30.00', '09-18签到，奖励10积分。', '0', '0', '1568797201');
INSERT INTO `pm_finance` VALUES ('50', '10020', '1', '10020', '1', '10.00', '70.00', '60.00', '09-19签到，奖励10积分。', '0', '0', '1568853027');
INSERT INTO `pm_finance` VALUES ('51', '10009', '1', '10009', '9', '50.00', '60.00', '10.00', '为您点赞，获得50积分。', '0', '0', '1569166036');
INSERT INTO `pm_finance` VALUES ('52', '10009', '1', '10009', '9', '50.00', '60.00', '10.00', '为您点赞，获得50积分。', '0', '0', '1569166044');
INSERT INTO `pm_finance` VALUES ('53', '10009', '1', '10009', '9', '50.00', '60.00', '10.00', '为您点赞，获得50积分。', '0', '0', '1569166157');
INSERT INTO `pm_finance` VALUES ('54', '10009', '1', '10009', '9', '50.00', '60.00', '10.00', '为您点赞，获得50积分。', '0', '0', '1569166266');
INSERT INTO `pm_finance` VALUES ('55', '10009', '1', '10009', '9', '50.00', '60.00', '10.00', '为您点赞，获得50积分。', '0', '0', '1569166525');
INSERT INTO `pm_finance` VALUES ('56', '10009', '1', '10009', '9', '50.00', '60.00', '10.00', '为您点赞，获得50积分。', '0', '0', '1569166834');
INSERT INTO `pm_finance` VALUES ('57', '10008', '1', '10009', '9', '50.00', '60.00', '10.00', '为您点赞，获得50积分。', '0', '0', '1569166971');
INSERT INTO `pm_finance` VALUES ('58', '10008', '1', '10009', '9', '50.00', '110.00', '60.00', '为您点赞，获得50积分。', '0', '0', '1569167342');
INSERT INTO `pm_finance` VALUES ('59', '10008', '1', '10009', '9', '50.00', '160.00', '110.00', '为您点赞，获得50积分。', '0', '0', '1569168940');
INSERT INTO `pm_finance` VALUES ('60', '10008', '1', '10009', '9', '50.00', '210.00', '160.00', '为您点赞，获得50积分。', '0', '0', '1569168990');
INSERT INTO `pm_finance` VALUES ('61', '10008', '1', '10009', '9', '50.00', '260.00', '210.00', '为您点赞，获得50积分。', '0', '0', '1569169058');
INSERT INTO `pm_finance` VALUES ('62', '10008', '1', '10009', '9', '50.00', '310.00', '260.00', '为您点赞，获得50积分。', '0', '0', '1569169150');
INSERT INTO `pm_finance` VALUES ('63', '10008', '1', '10009', '9', '50.00', '360.00', '310.00', '为您点赞，获得50积分。', '0', '0', '1569169168');
INSERT INTO `pm_finance` VALUES ('64', '10008', '1', '10009', '9', '50.00', '410.00', '360.00', '为您点赞，获得50积分。', '0', '0', '1569169514');

-- ----------------------------
-- Table structure for `pm_flash`
-- ----------------------------
DROP TABLE IF EXISTS `pm_flash`;
CREATE TABLE `pm_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `goodsID` int(11) NOT NULL,
  `goodsName` varchar(200) NOT NULL,
  `price` varchar(50) NOT NULL,
  `spec` text NOT NULL,
  `pack` text NOT NULL,
  `startDate` int(11) NOT NULL,
  `endDate` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `createTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_flash
-- ----------------------------
INSERT INTO `pm_flash` VALUES ('1', '1', '133', '雀巢半水解奶粉 四段', '4', 'a:0:{}', 'a:0:{}', '1567267200', '1572537599', '999', '1567494033');
INSERT INTO `pm_flash` VALUES ('2', '1', '124', 'S26金装 二段', '3', 'a:0:{}', 'a:0:{}', '1567267200', '1572537599', '999', '1567494048');
INSERT INTO `pm_flash` VALUES ('3', '1', '114', '爱他美金装 四段', '5', 'a:0:{}', 'a:0:{}', '1567267200', '1572537599', '999', '1567494062');
INSERT INTO `pm_flash` VALUES ('4', '46', '59', '德运成人脱脂奶粉', '4.5', 'a:0:{}', 'a:0:{}', '1567267200', '1572537599', '999', '1567494082');
INSERT INTO `pm_flash` VALUES ('5', '1', '49', '爱他美深度水解2段AllerPro抗过敏蛋白腹泻奶粉 900g', '2', 'a:0:{}', 'a:0:{}', '1567267200', '1572537599', '999', '1567494098');
INSERT INTO `pm_flash` VALUES ('6', '1', '106', 'A2铂金 四段', '4', 'a:0:{}', 'a:0:{}', '1567267200', '1572537599', '999', '1567852766');

-- ----------------------------
-- Table structure for `pm_fund`
-- ----------------------------
DROP TABLE IF EXISTS `pm_fund`;
CREATE TABLE `pm_fund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) DEFAULT NULL,
  `money` varchar(20) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_fund
-- ----------------------------
INSERT INTO `pm_fund` VALUES ('3', '2019-08', '0', '1566029823');
INSERT INTO `pm_fund` VALUES ('4', '2019-07', '1.52', '1566810361');
INSERT INTO `pm_fund` VALUES ('5', '2019-09', '0.25', '1567507646');

-- ----------------------------
-- Table structure for `pm_goods`
-- ----------------------------
DROP TABLE IF EXISTS `pm_goods`;
CREATE TABLE `pm_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL COMMENT '套餐对应的商品ID，0没有套餐',
  `cid` int(11) NOT NULL,
  `path` varchar(50) NOT NULL,
  `cid1` int(11) NOT NULL,
  `path1` varchar(255) DEFAULT NULL,
  `typeID` int(11) NOT NULL COMMENT '商品类型ID 1奶粉2保健品3护肤品',
  `modelID` int(11) NOT NULL COMMENT '模型的ID',
  `brandID` int(11) NOT NULL COMMENT '品牌ID',
  `name` varchar(200) NOT NULL,
  `en` varchar(200) NOT NULL,
  `short` varchar(100) NOT NULL,
  `say` varchar(50) NOT NULL,
  `keyword` text NOT NULL,
  `intr` varchar(1000) NOT NULL,
  `picname` varchar(200) NOT NULL,
  `image` text,
  `content` text NOT NULL,
  `max` int(11) NOT NULL,
  `endDate` varchar(50) NOT NULL,
  `point` int(11) NOT NULL,
  `inprice` decimal(10,2) NOT NULL,
  `price` decimal(10,1) NOT NULL,
  `marketPrice` decimal(10,1) NOT NULL,
  `cutPrice` decimal(10,1) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `wuliuWeight` decimal(10,2) NOT NULL,
  `linkIds` varchar(500) DEFAULT NULL,
  `sellNumber` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `number` int(11) NOT NULL COMMENT '单品的数量，如果是3件s商品的套餐，就填写3',
  `tag` tinyint(4) NOT NULL,
  `empty` tinyint(4) NOT NULL COMMENT '是否清仓',
  `comm` tinyint(4) NOT NULL COMMENT '是否推荐',
  `baoyou` tinyint(4) NOT NULL,
  `flash` tinyint(4) NOT NULL,
  `tehui` tinyint(4) NOT NULL,
  `show` tinyint(11) NOT NULL COMMENT '是否显示',
  `sort` int(11) NOT NULL,
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=867 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_goods
-- ----------------------------
INSERT INTO `pm_goods` VALUES ('704', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse  Q10 150mg 180粒', 'Swisse Co-Enzyme Q10 150mg 180 Tablets', 'sw 180粒q10', '心脏宝', 'Swisse  辅酶Q10 150mg 180粒 SW 辅酶Q10 150mg 180粒 保护心脏 延缓衰老 畅通 血管 增强活力 心脏宝', '', '', null, '', '0', '21年3月', '10', '28.00', '25.9', '25.9', '0.0', '0.22', '0.26', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('705', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 螺旋藻 100粒', 'Swisse Organic Spirulina 100 Tablets', 'SW螺旋藻100粒', '别让亚健康猝到你', 'Swisse 螺旋藻 100粒 养胃 膳食纤维 提高免疫 美容护肤 防辐射 排毒 SW', '', '', null, '', '0', '21年4月', '10', '10.00', '12.5', '12.5', '0.0', '0.10', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('700', '0', '115', '0-114-115-', '122', '0-10-122-', '4', '0', '8', 'Swisse 铁片 30粒', 'Swisse Ultiboost Iron 30 Tablets', 'SW铁片30粒', '补出红润之美', 'Swisse 铁片 30粒 补铁片 孕妇 孕期 改善 贫血 养颜 缓解 经痛 免疫力 SW', '', '', null, '', '0', '20年3月', '10', '6.10', '5.7', '5.7', '0.0', '0.10', '0.13', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('701', '0', '115', '0-114-115-', '96', '0-69-96-', '4', '0', '8', '赠品！拍下发货！Swisse 浓缩蔓越莓口服液 300ml 19年8月到期', 'T Swisse Cranberry Concentrate 90000mg 300ml', 'SW蔓越莓液', '健康私处 独有呵护', 'Swisse 浓缩 蔓越莓 口服液 90000mg 300ml 泌尿健康 抗氧化 sw', '', '', null, '', '0', '19年8月', '10', '16.50', '0.0', '0.0', '0.0', '0.37', '0.42', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('702', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 螺旋藻 200粒', 'Swisse Organic Spirulina 200 Tablets', 'SW螺旋藻200粒', '别让亚健康猝到你', 'Swisse 螺旋藻 200粒 养胃 膳食纤维 提高免疫 美容护肤 防辐射 排毒 SW', '', '', null, '', '0', '20年8月', '10', '23.20', '22.4', '22.4', '0.0', '0.24', '0.29', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('703', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 蔓越莓泡腾片 3支 60片', 'Swisse Ultiboost Cranberry Effervescent 60 Tablets', 'SW蔓越莓泡腾片', '“泡”出来的营养健康', 'Swisse 蔓越莓 泡腾片 3支 60片 妇科 泌尿系统 保养 卵巢 呵护 免疫力 维生素 SW', '', '', null, '', '0', '21年7月', '10', '16.50', '15.0', '15.0', '0.0', '0.35', '0.45', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('698', '0', '115', '0-114-115-', '21', '0-4-21-', '4', '0', '8', 'Swisse 卵磷脂1200mg 150粒', 'Swisse Ultiboost Lecithin 1200mg 150 Caps', 'SW卵磷脂150粒', '血管清道夫', 'Swisse 卵磷脂1200mg 150粒 清理血管 高血糖 高血压 高血脂 记忆力 糖尿病  SW', '', '', null, '', '0', '20年10月', '10', '15.00', '14.3', '14.3', '0.0', '0.35', '0.44', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('699', '0', '115', '0-114-115-', '106', '0-9-106-', '4', '0', '8', 'Swisse 儿童综合维生素 120粒', 'Swisse Children\'s Ultivite 120 Tablets', 'SW儿维120粒', '自信活力每一天', 'Swisse 儿童综合维生素 120粒 免疫力 维生素 缓解疲劳 提高精力 延衰老 平衡营养 SW 儿童多维', '', '', null, '', '0', '20年10月', '10', '9.90', '8.9', '8.9', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('697', '0', '115', '0-114-115-', '21', '0-4-21-', '4', '0', '8', 'Swisse 高倍蜂胶2000mg 300粒', 'Swisse Ultiboost High Strength Propolis 2000mg 300 Capsules', 'SW蜂胶300粒', '液体黄金 澳洲蜂胶', 'Swisse 高倍蜂胶2000mg 300粒 增强体质 控制 三高 健康 肠胃 免疫力 排毒养颜 SW', '', '', null, '', '0', '21年5月', '10', '25.50', '24.2', '24.2', '0.0', '0.55', '0.75', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('696', '0', '115', '0-114-115-', '22', '0-4-22-', '4', '0', '8', 'Swisse 维骨力1500mg 210粒', 'Swisse Glucosamine Sulfate 1500mg 210 Tablets', 'SW维骨力210粒', '保护你的关节', 'Swisse 维骨力1500mg 210粒 软骨素 氨糖 骨骼 强健 关节灵 风湿性关节炎 骨质增生 肩周炎 SW', '', '', null, '', '0', '21年9月', '10', '24.00', '24.0', '24.0', '0.0', '0.50', '0.65', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('695', '0', '115', '0-114-115-', '29', '0-4-29-', '4', '0', '8', 'Swisse 男士综合维生素50岁以下 120粒', 'Swisse Men\'s Ultivite 120 Tablets', 'SW男维120粒', '自信活力每一天', 'Swisse 男士综合维生素50岁以下 120粒 免疫力 维生素 缓解疲劳 提高精力 延衰老 平衡营养 SW 男士维生素 男维 men', '', '', null, '', '0', '21年8月', '10', '28.00', '26.5', '26.5', '0.0', '0.24', '0.28', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('694', '0', '115', '0-114-115-', '29', '0-4-29-', '4', '0', '8', 'Swisse 女士综合维生素50岁以下 120粒', 'Swisse Women\'s Ultivite 120 Tablets', 'SW女维120粒', '自信活力每一天', 'Swisse 女士综合维生素50岁以下 120粒 免疫力 维生素 缓解疲劳 提高精力 延衰老 平衡营养 SW 女士维生素 女维 women', '', '', null, '', '0', '21年4月', '10', '28.00', '26.5', '26.5', '0.0', '0.24', '0.28', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('693', '0', '115', '0-114-115-', '29', '0-4-29-', '4', '0', '8', 'Swisse 前列腺片 50粒', 'Swisse Ultiboost Prostate 50 Tablets', 'SW前列腺50粒', '男性健康守护神', 'Swisse 前列腺片 50粒 前列腺增生 尿频 尿急 失眠多梦 性欲 利尿 免疫力 SW', '', '', null, '', '0', '21年1月', '10', '16.50', '16.0', '16.0', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('692', '0', '115', '0-114-115-', '29', '0-4-29-', '4', '0', '8', 'Swisse 高倍西芹籽 5000mg 50粒', 'Swisse High Strength Celery 5000mg 50 Capsules', 'SW西芹50粒', '排毒利尿 缓解痛风', 'Swisse 高倍西芹籽 5000mg 50粒 关节 缓解 痛风 神经系统 尿酸 风湿  SW', '', '', null, '', '0', '20年11月', '10', '8.50', '9.0', '9.0', '0.0', '0.05', '0.08', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('691', '0', '115', '0-114-115-', '29', '0-4-29-', '4', '0', '8', 'Swisse 女士综合维生素50岁以上 90粒', 'Swisse Women\'s Ultivite 50+ 90 Tablets', 'SW女维50+90粒', '自信活力每一天', 'Swisse 女士综合维生素50岁以上 90粒 免疫力 维生素 缓解疲劳 提高精力 延衰老 平衡营养 SW 女士维生素 女维 women 50+ 多维', '', '', null, '', '0', '20年7月', '10', '28.80', '27.5', '27.5', '0.0', '0.22', '0.26', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('690', '0', '115', '0-114-115-', '29', '0-4-29-', '4', '0', '8', 'Swisse 更年期平衡片 60粒', 'Swisse Ultiboost Menopause Balance 60 Tablets', 'SW更年期60粒', '内外兼修 关爱女性', 'Swisse 更年期平衡片 60粒 缓解 调节 内分泌 营养素 平衡营养 皮肤衰老 SW', '', '', null, '', '0', '20年9月', '10', '20.50', '20.5', '20.5', '0.0', '0.18', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('689', '0', '115', '0-114-115-', '70', '0-70-', '4', '0', '8', 'Swisse VC泡腾片1000mg 3支 60粒', 'Swisse Ultiboost High Strength Vitamin C 60 Effervescent Tablets', 'SW VC泡腾60粒', '“泡”出来的营养健康', 'Swisse VC泡腾片1000mg 3支 60粒 维生素 抵抗力 免疫力 抗氧化 美白 淡斑 排毒 SW', '', '', null, '', '0', '21年7月', '10', '13.59', '13.3', '13.3', '0.0', '0.35', '0.45', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('687', '0', '115', '0-114-115-', '96', '0-69-96-', '4', '0', '8', 'Swisse 胶原蛋白液 500ml', 'Swisse Ultiboost Hair Skin Nails 500ml', 'SW胶原液500ml', '破除岁月“皱”语', 'Swisse 胶原蛋白液 500ml 护发 生甲 美容 胶原蛋白 排毒 亮肤 美白 淡斑 抗皱 SW', '', '', null, '', '0', '20年7月', '10', '16.50', '16.5', '16.5', '0.0', '0.60', '0.70', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('688', '0', '115', '0-114-115-', '96', '0-69-96-', '4', '0', '8', 'Swisse 葡萄籽14250mg 300粒', 'Swisse Ultiboost Grape Seed 14250mg 300 Tablets', 'SW葡萄籽300粒', '在不保养 我们就老啦', 'Swisse 葡萄籽14250mg 300粒 美白 抗氧化 花青素 美白淡斑 防辐射  SW', '', '', null, '', '0', '21年9月', '10', '21.50', '20.5', '20.5', '0.0', '0.30', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('685', '0', '115', '0-114-115-', '0', '', '7', '0', '8', 'Swisse 摩洛哥坚果眼霜 15ml', 'Swisse Argan Anti Ageing Eye Cream 15ml', 'SW眼霜', '淡化黑眼圈 眼尾小熨', 'Swisse 摩洛哥坚果眼霜15ml坚果精华淡化黑眼圈 sw 去皱眼霜 15ml 提拉紧致 去除浮肿 眼部 脂肪粒', '', '', null, '', '0', '', '10', '7.92', '8.9', '8.9', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('686', '0', '115', '0-114-115-', '96', '0-69-96-', '4', '0', '8', 'Swisse 男士综合维生素50岁以上 90粒', 'Swisse Men\'s Ultivite 50+ 90 Tablets', 'SW男维50+90粒', '自信活力每一天', 'Swisse 男士综合维生素50岁以上 90粒 免疫力 维生素 缓解疲劳 提高精力 延衰老 平衡营养 SW 男士维生素 男维 men 50+ 多维', '', '', null, '', '0', '20年1月', '10', '28.80', '13.0', '13.0', '0.0', '0.22', '0.26', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('68', '0', '51', '0-46-51-', '122', '0-10-122-', '1', '0', '64', 'Ozfarm 孕妇奶粉', '', 'Oz孕妇', '', 'Ozfarm 孕妇 奶粉 900g OZ', '', '/uploads/images/20190901/2a9479179c71021e7d1a6d9ec6d82533.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('69', '0', '51', '0-46-51-', '0', '', '1', '0', '4', 'Ozfarm 儿童奶粉', '', 'Oz儿童', '', 'Ozfarm kids 儿童奶粉 900g OZ', '', '/uploads/images/20190901/2e83b91e07f419033b238f492dabef9c.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('70', '0', '51', '0-46-51-', '0', '', '1', '0', '64', 'Ozfarm 老年奶粉', '', 'Oz老人', '', 'Ozfarm 老年人 奶粉 900g OZ', '', '/uploads/images/20190901/f1b16ff0d0b23bb09766ee9833a4a55b.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('71', '0', '52', '0-46-52-', '0', '', '1', '0', '40', '雀巢儿童营养成长奶粉', '', '雀巢成长奶粉', '', 'Nestle 雀巢 儿童 营养 成长 奶粉 800g', '', '/uploads/images/20190901/e9fe7935c3637c3b502b26185b74742d.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('72', '0', '53', '0-46-53-', '0', '', '2', '0', '65', '成人羊奶粉袋装', '', '成人羊奶粉', '', 'Caprilac 成人 羊奶粉 袋装 1kg', '', '/uploads/images/20190901/24aceb396e0836633a1683dea4282cad.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('864', '0', '122', '0-10-122-', '70', '0-70-', '4', '0', '18', 'Bio Island 孕妇DHA 60粒', 'Bio Island DHA for Pregnancy 60 Softgel Capsules', 'Bio孕妇DHA', '一个人吃 两个人补', 'Bio Island 生物岛 孕妇DHA 60粒 孕期 哺乳期 营养 维生素 呵护 眼脑 促发育 dha BIO bio', '', '/uploads/images/20190906/a5fa643e38160e11053673a410057b6d.JPG', null, '<p style=\"text-align: left;\"><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i1/3929072375/O1CN01LS5YSX1TPnDFmoB1s_!!3929072375-0-scmitem44000.jpg\" align=\"absmiddle\" data-spm-anchor-id=\"a220o.1000855.0.i2.4d1426461Ab1gR\" /></p>\n<p><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/3929072375/O1CN01FNj5gp1TPnDH5rzlw_!!3929072375-0-scmitem44000.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i3/3929072375/O1CN01wc59tF1TPnA0dkunV_!!3929072375-0-scmitem44000.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/3929072375/O1CN01loRrBr1TPn9zFHtne_!!3929072375-0-scmitem44000.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/3929072375/O1CN01MR1aXu1TPn9tgfINX_!!3929072375-0-scmitem44000.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/3929072375/O1CN01U6Q8Sb1TPnA0Xqe5s_!!3929072375-0-scmitem44000.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i4/3929072375/O1CN01avvxxi1TPnA1NxIop_!!3929072375-0-scmitem44000.jpg\" align=\"absmiddle\" /><img class=\"img-ks-lazyload\" src=\"https://img.alicdn.com/imgextra/i2/3929072375/O1CN01jhtq1p1TPnA0Xsiy3_!!3929072375-0-scmitem44000.jpg\" align=\"absmiddle\" /></p>', '0', '', '10', '19.90', '19.9', '19.9', '0.0', '0.10', '0.13', '', '0', '999', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568173690');
INSERT INTO `pm_goods` VALUES ('144', '0', '125', '0-12-125-', '0', '', '13', '0', '53', 'Tropical 椰子卷 265g', 'Crispy Coconut Rolls 265g', '椰子卷', '纯正椰香 网红蛋卷', 'Tropical 椰子卷 265g 椰奶 芝麻蛋卷 香酥松脆 口口脆 休闲零食', '', '/uploads/images/20190906/015b2ab6d58a765276262b093c3ed951.JPG', null, '', '0', '20年3月', '10', '6.82', '6.9', '6.9', '0.0', '0.30', '0.45', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618071');
INSERT INTO `pm_goods` VALUES ('97', '0', '39', '0-1-39-', '0', '', '1', '0', '37', 'S26白金装 一段', '', 'Alula-1', '', 'S26 惠氏 白金装 一段 婴儿奶粉 900g alula-1', '', '/uploads/images/20190901/f8d2036d7773ad2e63e1b4e2290541a2.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('99', '0', '40', '0-1-40-', '0', '', '1', '0', '38', '满趣健草饲 一段', '', '草1', '', 'Munchkin 麦肯齐 草饲 一段1段 婴儿奶粉 730g', '', '/uploads/images/20190901/59c73b8d1a6860a79ee2defa544ede96.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('100', '0', '40', '0-1-40-', '0', '', '1', '0', '38', '满趣健草饲 二段', '', '草2', '', 'Munchkin 麦肯齐 草饲 二段  2段 婴儿奶粉 730g', '', '/uploads/images/20190901/997ebc4cfd71d3d8e4455ea1a8ee20de.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('101', '0', '40', '0-1-40-', '0', '', '1', '0', '38', '满趣健草饲 三段', '', '草3', '', 'Munchkin 麦肯齐 草饲 三段 3段 婴儿奶粉 730g', '', '/uploads/images/20190901/7f6848f0f0fb4e30f8315c80b307d775.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('26', '0', '39', '0-1-39-', '0', '', '1', '0', '37', 'S26白金装 二段', '', 'Alula-2', '', 'S26 惠氏 白金装 二段 婴儿奶粉 900g alula-2', '', '/uploads/images/20190901/a94b1338d2f2b13d03c1f8a9ff03f5ee.jpeg', '/uploads/images/20190826/03b2856e8007d9bbe993480827f10c7b.jpg', '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('33', '0', '41', '0-1-41-', '0', '', '1', '0', '40', '雀巢能恩有机 二段', '', '雀巢有机2段', '', 'Nestle 雀巢 能恩 有机 二段 婴儿 奶粉 800g', '', '/uploads/images/20190901/09f7d2e77412ebc15ff4ae94b81a9d45.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('34', '0', '41', '0-1-41-', '0', '', '1', '0', '40', '雀巢能恩有机 三段', '', '雀巢有机3段', '', 'Nestle 雀巢 能恩 有机 三段 婴儿 奶粉 800g', '', '/uploads/images/20190901/3ba178dae6e02b33722a9b60ee7b1d04.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('35', '0', '41', '0-1-41-', '0', '', '1', '0', '40', '雀巢能恩A2 一段', '', '雀巢a2-1', '', 'Nestle 雀巢 能恩 有机 一段 婴儿 奶粉 800g 酪蛋白 益生菌 a2', '', '/uploads/images/20190901/591f5940d8a52a6df7f8186215286209.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('36', '0', '41', '0-1-41-', '0', '', '1', '0', '40', '雀巢能恩A2 二段', '', '雀巢a2-2', '', 'Nestle 雀巢 能恩 有机 二段 婴儿 奶粉 800g 酪蛋白 益生菌 a2', '', '/uploads/images/20190901/b7c185d5f0487ae06d6f56a42f4d58a9.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('37', '0', '41', '0-1-41-', '0', '', '1', '0', '40', '雀巢能恩A2 三段', '', '雀巢a2-3', '', 'Nestle 雀巢 能恩 有机 三段 婴儿 奶粉 800g 酪蛋白 益生菌 a2', '', '/uploads/images/20190901/b46e5e869d742f7a000b4e90a73d89e7.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('38', '0', '41', '0-1-41-', '0', '', '1', '0', '40', '雀巢半水解奶粉 一段', '', '雀巢半水解1段', '', 'Nestle 雀巢 水解 有机 一段 1段 婴儿 奶粉 800g', '', '/uploads/images/20190901/4ba4f34115439f2e3699bb0f9541132b.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '1', '0', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('39', '0', '41', '0-1-41-', '0', '', '1', '0', '40', '雀巢半水解奶粉 二段', '', '雀巢半水解2段', '', 'Nestle 雀巢 水解 有机 二段 2段 婴儿 奶粉 800g', '', '/uploads/images/20190901/659803d98e213797071854c4a49c89d3.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('40', '0', '41', '0-1-41-', '0', '', '1', '0', '40', '雀巢半水解奶粉 三段', '', '雀巢半水解3段', '', 'Nestle 雀巢 水解 有机 三段 3段 婴儿 奶粉 800g', '', '/uploads/images/20190901/8c5fe908bc2e334b32f20d692f1d064d.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('41', '0', '42', '0-1-42-', '0', '', '1', '0', '61', 'Oli羊奶 一段', '', 'Oli羊奶粉1段', '', 'Oli6 颖睿 婴幼儿纯羊奶粉一段1-6月益生元新生儿婴儿罐装800g宝宝', '', '/uploads/images/20190901/f2eb3dd516f8d85c0e2a2204fe4fff70.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '1', '0', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('42', '0', '42', '0-1-42-', '0', '', '1', '0', '61', 'Oli羊奶 二段', '', 'Oli羊奶粉2段', '', 'Oli6 颖睿 婴幼儿纯羊奶粉二段6-12月益生元新生儿婴儿罐装800g宝宝', '', '/uploads/images/20190901/aa2d1e3f0a27a7013d2f6e3f8bfccf62.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('683', '0', '115', '0-114-115-', '0', '', '7', '0', '8', 'Swisse 天然玻尿酸补水保湿面膜 70g', 'Swisse HYALURO-NATURAL HYDRATING FACIAL MASK', 'sw玻尿酸保湿面膜', '', 'Sw Swisse 天然 玻尿酸 补水 保湿 面膜', '', '', null, '', '0', '', '10', '8.70', '8.7', '8.7', '0.0', '0.16', '0.21', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('684', '0', '115', '0-114-115-', '0', '', '7', '0', '8', 'Swisse 血橙亮肤矿物泥清洁面膜 70g', 'Swisse Blood Orange Brightening Clay Mask', 'Sw血橙面膜', '', 'Swisse 血橙 亮肤 矿物泥 清洁 面膜', '', '', null, '', '0', '', '10', '12.50', '12.5', '12.5', '0.0', '0.18', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('43', '0', '42', '0-1-42-', '0', '', '1', '0', '61', 'Oli羊奶 三段', '', 'Oli羊奶粉3段', '', 'Oli6 颖睿 婴幼儿纯羊奶粉三段1-3岁 12-36个月益生元新生儿婴儿罐装800g宝宝', '', '/uploads/images/20190901/453f3ecda36c559922fb3fa0c3458d80.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('44', '0', '42', '0-1-42-', '0', '', '1', '0', '61', 'Oli羊奶 四段', '', 'Oli羊奶粉4段', '', 'Oli6 颖睿 婴幼儿纯羊奶粉四段3-7岁 益生元新生儿婴儿罐装800g宝宝', '', '/uploads/images/20190901/67e8af0d344645725c3abb2cfd70e575.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('103', '0', '15', '0-1-15-', '0', '', '1', '0', '4', 'A2铂金 一段', '', 'A1', '', 'A2 a2 婴儿 奶粉 900g 铂金装 白金装   1段 1阶段 A1', 'A2 Platinum白金系列高端牛奶粉一段是专门为新生儿而设计的特殊配方奶粉，它的营养很全面，能为宝宝提供成长和发育所需要的重要营养成分。该独特的配方奶粉含有天然的A2牛奶，能促进宝宝消化系统的发育,丰富的营养成分，有助于宝宝大脑和眼睛的发育，促进宝宝免疫系统的发育。 一段：0-6月', '/uploads/images/20190901/4b1870d291a7bef525603a050db40de4.jpg', null, '<p><img src=\"https://img.alicdn.com/imgextra/i3/2549841410/O1CN01tdW1Vx1MHoxuawgWG_!!2549841410.jpg\" /></p>\n<p><img src=\"https://img.alicdn.com/imgextra/i3/2549841410/O1CN01tdW1Vx1MHoxuawgWG_!!2549841410.jpg\" /></p>', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567779053');
INSERT INTO `pm_goods` VALUES ('45', '0', '43', '0-1-43-', '0', '', '1', '0', '62', 'Bubs羊奶 一段', '', 'Bubs羊1', '', '羊奶粉 Bubs羊奶 一段 1阶段 婴幼儿宝宝奶粉 澳洲原装进口贝儿800g 新西兰 配方奶 抵抗力', '', '/uploads/images/20190901/a5d926982bb08a53390d509a07d71f39.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('73', '0', '54', '0-46-54-', '0', '', '1', '0', '63', 'Diploma学生奶粉', '', 'Diploma学生奶粉', '', 'Diploma学生奶粉儿童学生少年成长高钙全脂速溶牛奶粉900g', '', '/uploads/images/20190901/520c41c98b0d9e0aebf59a72e6a07c80.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('46', '0', '43', '0-1-43-', '0', '', '1', '0', '62', 'Bubs羊奶 二段', '', 'Bubs羊2', '', '羊奶粉 Bubs羊奶 二段 2阶段 婴幼儿宝宝奶粉 澳洲原装进口贝儿800g 新西兰 配方奶 抵抗力', '', '/uploads/images/20190901/fe1729a8304a31ed3236aa8c839098f5.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('47', '0', '43', '0-1-43-', '0', '', '1', '0', '62', 'Bubs羊奶 三段', '', 'Bubs羊3', '', '羊奶粉 Bubs羊奶 三段 3阶段 婴幼儿宝宝奶粉 澳洲原装进口贝儿800g 新西兰 配方奶 抵抗力', '', '/uploads/images/20190901/4cb3f8577855e935af1063970c80b18c.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('48', '0', '44', '0-1-44-', '0', '', '1', '0', '5', '爱他美深度水解1段AllerPro抗过敏蛋白腹泻奶粉 900g', '', '深度水解1段', '', 'Aptamil 爱他美 婴儿奶粉 900g 深度水解 1段 1阶段 过敏', '', '/uploads/images/20190901/0e15a564b7f27f1f5a6218237e4babea.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '0', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('49', '0', '44', '0-1-44-', '0', '', '1', '0', '5', '爱他美深度水解2段AllerPro抗过敏蛋白腹泻奶粉 900g', '', '深度水解2段', '', 'Aptamil 爱他美 婴儿奶粉 900g 深度水解 2段 2阶段 过敏', '', '/uploads/images/20190901/314f7ac18f44a0d1db8c96a670e2aad5.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('50', '0', '44', '0-1-44-', '0', '', '1', '0', '5', '爱他美深度水解3段AllerPro抗过敏蛋白腹泻奶粉 900g', '', '深度水解3段', '', 'Aptamil 爱他美 婴儿奶粉 900g 深度水解 3段 3阶段 过敏', '', '/uploads/images/20190901/733a9b53f9ccffb0af6f5bfafdd02a64.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('51', '0', '4', '0-4-', '0', '', '1', '0', '5', '爱他美金装HA 适度部分半水解奶粉 900g', '', 'HA半水解奶粉', '', 'Aptamil 爱他美 婴儿奶粉 900g 水解 半水解 HA', '', '', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('52', '0', '44', '0-1-44-', '0', '', '1', '0', '5', '爱他美AR防吐奶粉 900g', '', 'AR防吐奶粉', '', 'Aptamil 爱他美 婴儿奶粉 900g 防吐', '', '/uploads/images/20190901/42fc29b31631f3422990299e5f4da1fe.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('53', '0', '44', '0-1-44-', '0', '', '1', '0', '5', '爱他美De Lact无乳糖防乳糖不耐受腹泻婴儿奶粉900g', '', 'De lact无乳糖奶粉', '', 'Aptamil 爱他美 婴儿奶粉 900g 乳糖不耐受 腹泻', '', '/uploads/images/20190901/cb8ff0b396cb5192922dc25d0e9fa943.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('54', '0', '47', '0-46-47-', '0', '', '2', '0', '4', 'A2 全脂奶粉', '', 'A2全脂', '', 'A2  成人全脂 成人全脂 奶粉 儿童  1kg', '', '/uploads/images/20190901/81198d0d04c363b4b534fb917ab7c5b5.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('55', '0', '47', '0-46-47-', '0', '', '2', '0', '4', 'A2 脱脂奶粉', '', 'A2脱脂', '', 'A2  成人全脂 成人脱脂 奶粉 儿童  1kg', '', '/uploads/images/20190901/9b4e9e73862fb8bafc58d513535bfea4.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('56', '0', '47', '0-46-47-', '0', '', '3', '0', '4', 'A2 小安素 750g', '', 'A2小安素', '', 'A2 小安素 750g  儿童奶粉 成长奶粉', '', '/uploads/images/20190901/bd0358342b4c3725c6b0ca3db808df25.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618225');
INSERT INTO `pm_goods` VALUES ('57', '0', '47', '0-46-47-', '0', '', '1', '0', '4', 'A2 孕妇奶粉', '', 'A2孕妇', '', 'A2 孕妇 奶粉 900g', '', '/uploads/images/20190901/12ee2b067e39ab84da2bbceee17bab62.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('58', '0', '48', '0-46-48-', '0', '', '2', '0', '13', '德运成人全脂奶粉', '', '德运全脂', '', 'devondale 德运 成人 全脂 奶粉 1kg 儿童', '', '/uploads/images/20190901/2de94e22babb72fffc1e65e62c60765e.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '1', '0', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('59', '0', '48', '0-46-48-', '0', '', '2', '0', '13', '德运成人脱脂奶粉', '', '德运脱脂', '', 'devondale 德运 成人 脱脂 奶粉 1kg 儿童', '', '/uploads/images/20190901/ba47a08ad96e486b2ba7b8644b3270a3.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('60', '0', '48', '0-46-48-', '0', '', '2', '0', '13', '德运半脱脂维他命奶粉', '', '德运半脱脂奶粉', '', 'devondale  德运奶粉 半脱脂 脱脂 高钙', '', '/uploads/images/20190901/e49514e5c9fb30bbde680cc4315c3c84.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('61', '0', '49', '0-46-49-', '0', '', '1', '0', '17', '雅培小安素奶粉（草莓味）', '', '小安素草莓味', '新西兰纯天然奶源测试测试测试测', 'Abbott 雅培 小安素 奶粉 新版（草莓味） 850g 儿童', '1.有机奶粉中含有天然有机亚油酸，宝宝通过消化吸收奶粉中的亚油酸，自然合成DHA补充宝宝大脑营养，助力宝宝脑部发育。2.含有天然亚麻酸，宝宝通过消化自然合成ARA，提高宝宝视敏度和智力。3.乳清蛋白是婴儿配方奶粉的最佳蛋白质来源。A-乳清蛋白更易于婴儿吸收，有助于婴儿睡眠，帮助婴儿健康发育。4.菊粉是一种天然益生元纤维，促进有益菌的消化系统健康。5.16中维生素和矿物质特别添加铁成分，促进宝宝免疫系统的代谢，增强免疫力和抵抗力，支持宝宝更好地健康成长。', '/uploads/images/20190901/375518ae60ef51e10676d6b94c1cbd33.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567851370');
INSERT INTO `pm_goods` VALUES ('62', '0', '49', '0-46-49-', '0', '', '1', '0', '17', '雅培小安素奶粉（巧克力味）', '', '小安素巧克力味', '', 'Abbott 雅培 小安素 奶粉 新版（巧克力味） 850g 儿童', '', '/uploads/images/20190901/d91086f38c5f7c29d549624fdf060b02.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('63', '0', '49', '0-46-49-', '0', '', '1', '0', '17', '雅培小安素奶粉（香草味）', '', '小安素香草味', '', 'Abbott 雅培 小安素 奶粉 新版（香草味） 850g 儿童', '', '/uploads/images/20190901/fae9eae432512612aab04c05d2d9ddf4.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('64', '0', '49', '0-46-49-', '0', '', '1', '0', '17', '糖尿病奶粉', '', '糖尿病奶粉', '', 'Abbott 雅培 糖尿病 奶粉 成人 850g', '', '/uploads/images/20190901/366383d0a5aaaa0d1bee0c9c8933b8d9.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('65', '0', '49', '0-46-49-', '0', '', '1', '0', '17', 'Ensure 大安素', '', 'Ensure大安素', '', 'Ensure大安素 全安素 高蛋白中老人成人孕妇奶粉澳洲', '', '/uploads/images/20190901/d3f77fff4f4c44e8876e5c871b90ec81.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '4.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567776738');
INSERT INTO `pm_goods` VALUES ('66', '0', '50', '0-46-50-', '0', '', '2', '0', '16', '美可卓蓝胖子成人全脂奶粉', '', '蓝胖子全脂', '', 'Maxigenes美可卓 蓝胖子 成人 全脂 奶粉 1kg', '', '/uploads/images/20190901/e27958fdbff087733041d5b477c2b212.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.35', '1.40', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('67', '0', '50', '0-46-50-', '0', '', '2', '0', '16', '美可卓蓝胖子成人脱脂奶粉', '', '蓝胖子脱脂', '', 'Maxigenes美可卓 蓝胖子 蓝妹子 成人 脱脂 奶粉 1kg', '', '/uploads/images/20190901/f6ed4b7bd0f8664675b86705f555d351.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.35', '1.40', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('104', '0', '15', '0-1-15-', '0', '', '1', '0', '4', 'A2铂金 二段', '', 'A2', '', 'A2 a2 婴儿 奶粉 900g 铂金装  白金装  2段 2阶段 A2', 'A2 Platinum白金系列高端牛奶粉一段是专门为新生儿而设计的特殊配方奶粉，它的营养很全面，能为宝宝提供成长和发育所需要的重要营养成分。该独特的配方奶粉含有天然的A2牛奶，能促进宝宝消化系统的发育,丰富的营养成分，有助于宝宝大脑和眼睛的发育，促进宝宝免疫系统的发育。 一段：0-7月', '/uploads/images/20190901/4ab9fffa1b02a7e253186ea8ea415bed.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('105', '0', '15', '0-1-15-', '0', '', '1', '0', '4', 'A2铂金 三段', '', 'A3', '', 'A2 a2 婴儿 奶粉 900g 铂金装  白金装  3段 3阶段 A3', 'A2 Platinum白金系列高端牛奶粉一段是专门为新生儿而设计的特殊配方奶粉，它的营养很全面，能为宝宝提供成长和发育所需要的重要营养成分。该独特的配方奶粉含有天然的A2牛奶，能促进宝宝消化系统的发育,丰富的营养成分，有助于宝宝大脑和眼睛的发育，促进宝宝免疫系统的发育。 一段：0-8月', '/uploads/images/20190901/dab00802e497b243fcf3b308f9e9099d.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567778042');
INSERT INTO `pm_goods` VALUES ('106', '0', '15', '0-1-15-', '0', '', '1', '0', '4', 'A2铂金 四段', '', 'A4', '新西兰纯天然奶源测试测试测试测', 'A2 a2 婴儿 奶粉 900g 铂金装 白金装  4段 4阶段 A4', 'A2 Platinum白金系列高端牛奶粉一段是专门为新生儿而设计的特殊配方奶粉，它的营养很全面，能为宝宝提供成长和发育所需要的重要营养成分。该独特的配方奶粉含有天然的A2牛奶，能促进宝宝消化系统的发育,丰富的营养成分，有助于宝宝大脑和眼睛的发育，促进宝宝免疫系统的发育。 一段：0-9月', '/uploads/images/20190901/59cb4c84ea9bd4cdd596985f713d3ca6.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '3.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567855628');
INSERT INTO `pm_goods` VALUES ('107', '0', '17', '0-1-17-', '0', '', '1', '0', '11', '贝拉米 一段', '', 'B1', '', 'bellamy\'s 贝拉米 婴儿 奶粉 900g 1段 1阶段 b1', '', '/uploads/images/20190901/6af24218bb2fffa144a5a0cd84cf66f4.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('108', '0', '17', '0-1-17-', '0', '', '1', '0', '11', '贝拉米 二段', '', 'B2', '', 'bellamy\'s 贝拉米 婴儿 奶粉 900g 2段 2阶段 b2', '', '/uploads/images/20190901/936b074eb3e39cc28b76e3f1b0348368.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('109', '0', '17', '0-1-17-', '0', '', '1', '0', '11', '贝拉米 三段', '', 'B3', '', 'bellamy\'s 贝拉米 婴儿 奶粉 900g 3段 3阶段 b3', '', '/uploads/images/20190901/0cb2c15d40dae28096393bb10a3b1338.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('110', '0', '17', '0-1-17-', '0', '', '1', '0', '11', '贝拉米 四段', '', 'B4', '', 'bellamy\'s 贝拉米 婴儿 奶粉 900g 4段 4阶段 b4', '', '/uploads/images/20190901/d44505759b3978bd81454457072407d3.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('111', '0', '45', '0-1-45-', '0', '', '1', '0', '5', '爱他美金装 一段', '', 'K1', '', 'Aptamil 爱他美 奶粉 900g 金装 1段 1阶段 婴儿奶粉 k1', '', '/uploads/images/20190901/f3d6d8047690ac88622e6fe4ff053bc2.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('112', '0', '45', '0-1-45-', '0', '', '1', '0', '5', '爱他美金装 二段', '', 'K2', '', 'Aptamil 爱他美 奶粉 900g 金装 2段 2阶段 婴儿奶粉 k2', '', '/uploads/images/20190901/7c98f55ae77ca6473025ac5bbf92adf1.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('113', '0', '45', '0-1-45-', '0', '', '1', '0', '5', '爱他美金装 三段', '', 'K3', '', 'Aptamil 爱他美 奶粉 900g 金装 3段 3阶段 婴儿奶粉 k3', '', '/uploads/images/20190901/c7b1a248b5d8a99dcb8793e49409dd99.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('114', '0', '45', '0-1-45-', '0', '', '1', '0', '5', '爱他美金装 四段', '', 'K4', '', 'Aptamil 爱他美 奶粉 900g 金装 4段 4阶段 婴儿奶粉 k4', '', '/uploads/images/20190901/6aeec6d3a8cd4263ff6bc6ed2d32c999.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('115', '0', '16', '0-1-16-', '0', '', '1', '0', '5', '爱他美白金 一段', '', 'P1', '', 'Aptamil 爱他美 奶粉 900g 白金装 铂金装 1段 1阶段 婴儿奶粉 p1', '', '/uploads/images/20190901/cc451cd8dab4c6671768041ede4df720.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('116', '0', '16', '0-1-16-', '0', '', '1', '0', '5', '爱他美白金 二段', '', 'P2', '', 'Aptamil 爱他美 奶粉 900g 白金装 铂金装 2段 2阶段 婴儿奶粉 p2', '', '/uploads/images/20190901/6dcd3fc764c6807fd732194f40dd8b72.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('117', '0', '16', '0-1-16-', '0', '', '1', '0', '5', '爱他美白金 三段', '', 'P3', '', 'Aptamil 爱他美 奶粉 900g 白金装 铂金装 3段 3阶段 婴儿奶粉 p3', '', '/uploads/images/20190901/611a09ca02d155ff0be31ae3c4ea4dd0.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('118', '0', '16', '0-1-16-', '0', '', '1', '0', '5', '爱他美白金 四段', '', 'P4', '', 'Aptamil 爱他美 奶粉 900g 白金装 铂金装 4段 4阶段 婴儿奶粉 p4', '', '/uploads/images/20190901/f525879acf217865b990f2d36665f5df.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('119', '0', '38', '0-1-38-', '0', '', '1', '0', '10', '可瑞康羊奶 一段', '', 'G1', '', 'Karicare 可瑞康 婴儿 羊奶粉 婴儿奶粉 900g 1段 1阶段 羊1', '', '/uploads/images/20190901/0b1d3b7f17253dcc0144f3970e9960b9.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '1', '1', '1', '0', '1', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('120', '0', '38', '0-1-38-', '0', '', '1', '0', '10', '可瑞康羊奶 二段', '', 'G2', '', 'Karicare 可瑞康 婴儿 羊奶粉 婴儿奶粉 900g 2段 2阶段 羊2', '', '/uploads/images/20190901/cdf3e01d0e7566d2b3bf6ad11090c78a.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('121', '0', '38', '0-1-38-', '0', '', '1', '0', '10', '可瑞康羊奶 三段', '', 'G3', '', 'Karicare 可瑞康 婴儿 羊奶粉 婴儿奶粉 900g 3段 3阶段 羊3', '', '/uploads/images/20190901/85ff3825c98dc5392c558186966711ff.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('122', '0', '38', '0-1-38-', '0', '', '1', '0', '10', '可瑞康绵羊奶 三段', '', '可瑞康绵羊奶3段', '', '可瑞康绵羊奶3段三段Karicare+ Sheep\' Milk  3 (from 1 year) 900g Karicare 可瑞康 婴儿 绵羊奶粉 婴儿奶粉 900g 3段 3阶段', '', '/uploads/images/20190901/57d0edbb88aa55abfe06d798977cabe9.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('123', '0', '39', '0-1-39-', '0', '', '1', '0', '37', 'S26金装 一段', '', 'S26金装-1', '', 'S26  惠氏  金装 一段 婴儿奶粉 900g 1段 s26-1', '', '/uploads/images/20190901/fdb7586b2c6ae46618448cc8ee04b1c1.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('124', '0', '39', '0-1-39-', '0', '', '1', '0', '37', 'S26金装 二段', '', 'S26金装-2', '', 'S26  惠氏  金装 二段 婴儿奶粉 900g 1段 s26-2', '', '/uploads/images/20190901/9ab03fafda718e3643463ed2a32377fb.png', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('125', '0', '39', '0-1-39-', '0', '', '1', '0', '37', 'S26金装 三段', '', 'S26金装-3', '', 'S26  惠氏  金装 三段 婴儿奶粉 900g 1段 s26-3', '', '/uploads/images/20190901/92bf8c2c4e1aceb935a4100d98f5913e.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('126', '0', '39', '0-1-39-', '0', '', '1', '0', '37', 'S26金装 四段', '', 'S26金装-4', '', 'S26  惠氏  金装 四段 婴儿奶粉 900g 1段 s26-4', '', '/uploads/images/20190901/f7e9973db9e633a2dc125ad50f08e44f.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('127', '0', '39', '0-1-39-', '0', '', '1', '0', '37', 'S26白金装 三段', '', 'Alula-3', '', 'S26 惠氏 白金装 三段 婴儿奶粉 900g alula-3', '', '/uploads/images/20190901/52923a966b68adf64bf0d30c0080ff71.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('128', '0', '39', '0-1-39-', '0', '', '1', '0', '37', 'S26白金装 四段', '', 'Alula-4', '', 'S26 惠氏 白金装 四段 婴儿奶粉 900g alula-4', '', '/uploads/images/20190901/ec67eb342ec88137aab4e3db6cbe0c74.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('132', '0', '41', '0-1-41-', '0', '', '1', '0', '40', '雀巢能恩有机 一段', '', '雀巢有机1段', '', 'Nestle 雀巢 能恩 有机 一段 婴儿 奶粉 800g', '', '/uploads/images/20190901/1c487bbc1a37f5027040706ed0c309f1.jpg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('133', '0', '41', '0-1-41-', '0', '', '1', '0', '40', '雀巢半水解奶粉 四段', '', '雀巢半水解4段', '新西兰纯天然奶源测试测试测测试', 'Nestle 雀巢 水解 有机 四段 4段 婴儿 奶粉 800g', '1.有机奶粉中含有天然有机亚油酸，宝宝通过消化吸收奶粉中的亚油酸，自然合成DHA补充宝宝大脑营养，助力宝宝脑部发育。2.含有天然亚麻酸，宝宝通过消化自然合成ARA，提高宝宝视敏度和智力。3.乳清蛋白是婴儿配方奶粉的最佳蛋白质来源。A-乳清蛋白更易于婴儿吸收，有助于婴儿睡眠，帮助婴儿健康发育。4.菊粉是一种天然益生元纤维，促进有益菌的消化系统健康。5.16中维生素和矿物质特别添加铁成分，促进宝宝免疫系统的代谢，增强免疫力和抵抗力，支持宝宝更好地健康成长。', '/uploads/images/20190901/6acca0d8083d305487d0564b878bd1dc.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '1.20', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567850871');
INSERT INTO `pm_goods` VALUES ('142', '0', '125', '0-12-125-', '0', '', '13', '0', '50', 'Truffettes 纯松露巧克力 1KG', 'Truffettes Dusted With Cocoa Powder 1KG', '松露巧克力1KG', '', 'Truffettes Dusted With Cocoa Powder 1KG 纯松露巧克力', '', '/uploads/images/20190906/be91948c13f6221106d62ac0fbdfcaee.jpeg', null, '', '0', '20年5月', '10', '9.00', '8.9', '8.9', '0.0', '1.13', '1.43', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618088');
INSERT INTO `pm_goods` VALUES ('143', '0', '125', '0-12-125-', '0', '', '13', '0', '53', 'Market Grocer 蔓越莓干 250g', 'Market Grocer  250g', '蔓越莓干', '口感酸甜 低脂肪零添加', 'Market Grocer 蔓越莓干 250g 果干 休闲零食 天然即食', '', '/uploads/images/20190906/bf4e37c56f6ce9b1be51f5cec0daae33.JPG', '/uploads/images/20190906/88c5db78077dfe6e332418d33648b341.JPG,/uploads/images/20190906/df1908b6eba90860aedf4fb295b3d0ac.JPG', '', '0', '19年11月', '10', '3.40', '3.8', '3.8', '0.0', '0.30', '0.35', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618080');
INSERT INTO `pm_goods` VALUES ('141', '0', '125', '0-12-125-', '122', '0-10-122-', '13', '0', '50', '科克兰粉盐 喜马拉雅山研磨粉红盐 369g', 'Kirkland Himalayan Pink Salt 369g', '粉盐', '', '科克兰粉盐 喜马拉雅山研磨粉红盐 369g Kirkland Himalayan Pink Salt 369g', '', '/uploads/images/20190906/c967fd2b67a49b80ca154f4732fc5bf0.jpg', null, '', '0', '', '10', '6.50', '6.5', '6.5', '0.0', '0.49', '0.55', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618102');
INSERT INTO `pm_goods` VALUES ('145', '0', '125', '0-12-125-', '0', '', '13', '0', '53', 'DJ&A 混合蔬菜干 250g', 'DJ&A Veggies Crisps Mixed Vegetables 250g', '蔬菜干', '蔬果搭配 好吃美味', 'DJ&A 混合蔬菜干 250g 原味 脱水 零食 营养 无糖', '', '/uploads/images/20190906/eafcd46b96f9c1e3e5393a226c99a522.JPG', '/uploads/images/20190906/68b933958410c3055f9155d41642d311.JPG,/uploads/images/20190906/bb91dafc7e3486889f90fff64d2762e1.JPG', '', '0', '', '10', '7.00', '2.0', '2.0', '0.0', '0.30', '0.45', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618061');
INSERT INTO `pm_goods` VALUES ('146', '0', '123', '0-14-123-', '70', '0-70-', '14', '0', '54', 'LACUES 小锦鲤 24K美容仪', 'Lacues 24K GOLD SKIN LIFTER', 'LACUES美容仪', '', 'Lacues 24K GOLD SKIN LIFTER 小锦鲤美容仪 瘦脸仪', '', '/uploads/images/20190906/f00671714b722d9d013393cb76dc1e8a.jpeg', null, '', '0', '', '10', '33.00', '36.0', '36.0', '0.0', '0.33', '0.50', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755875');
INSERT INTO `pm_goods` VALUES ('147', '0', '123', '0-14-123-', '70', '0-70-', '14', '0', '54', 'JOHNHANCOCK 德国智能碎碎杯', 'JOHNHANCOCK Smart Flask', 'OHN HANCOCK-智能水杯450m', '喝水都胖的人看过来！', 'JOHNHANCOCK水杯 德国智能碎碎杯 瘦身杯 减肥', '', '', null, '', '0', '', '10', '45.00', '46.0', '46.0', '0.0', '0.70', '0.90', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('148', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '56', '（包邮）新款Contigo 儿童吸管水杯 男孩 三个装/套 414ml*3', 'New Contigo Kids Cup Set (Boy)', '新款contigo男孩水杯', '', 'Contigo 吸管杯 运动 男孩 儿童 水杯 新款男孩水杯', '', '', null, '', '0', '', '10', '23.00', '28.6', '28.6', '0.0', '0.80', '1.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('149', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '56', '（包邮）新款Contigo 儿童吸管水杯 女孩 三个装/套 414ml*3', 'New Contigo Kids Cup Set (Girl)', '新款contigo女孩水杯', '为儿童量身定做 妈妈放心', 'Contigo 吸管杯 运动 女孩 儿童 水杯 新款女孩水杯', '', '', null, '', '0', '', '10', '23.00', '28.6', '28.6', '0.0', '0.80', '1.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('150', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '56', '（包邮）Contigo 直饮杯 蓝/绿/灰 三个装/套', 'Contigo Adult Straw/sports Bottle Set（Gray）', 'contigo无吸管杯灰', '运动健身户外旅行 方便携带', 'Contigo 直饮杯 运动 旅行 蓝/绿/灰 成人水杯', '', '', null, '', '0', '', '10', '21.99', '28.5', '28.5', '0.0', '1.20', '1.40', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('151', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '56', '（包邮）Contigo 吸管杯 灰/红/绿 三个装/套', 'Contigo Adult Straw/Sports Bottle Set（Red）', 'contigo成人吸管杯红', '运动健身户外旅行 方便携带', 'Contigo 吸管杯 运动 旅行 灰/红/绿 成人水杯', '', '', null, '', '0', '', '10', '23.00', '30.3', '30.3', '0.0', '1.20', '1.40', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('152', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '56', '（包邮）Contigo 吸管杯 紫/黄/蓝 三个装/套', 'Contigo Adult Straw/Sports Bottle Set（Yellow）', 'contigo成人吸管杯黄', '运动健身户外旅行 方便携带', 'Contigo 吸管杯 运动 旅行 紫/黄/蓝 成人水杯', '', '', null, '', '0', '', '10', '23.00', '30.3', '30.3', '0.0', '1.20', '1.40', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('153', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '54', '（包邮）Thermos 焖烧杯 蓝色 两个装/套', 'Thermos Bule+silver', '焖烧杯蓝', '传说中的小当家厨具', 'Thermos 膳魔师 焖烧杯 蓝色 两个装/套 不锈钢真空 保温 料理杯', '', '', null, '', '0', '', '10', '40.00', '46.2', '46.2', '0.0', '1.13', '1.70', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('154', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '54', '（包邮）Thermos 焖烧杯 红色 两个装/套', 'Thermos Red+silver', '焖烧杯红', '传说中的小当家厨具', 'Thermos 膳魔师 焖烧杯 红色 两个装/套 不锈钢真空 保温 料理杯', '', '', null, '', '0', '', '10', '40.00', '47.2', '47.2', '0.0', '1.13', '1.70', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('155', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '56', '（包邮）Contigo 儿童吸管水杯 女孩 三个装/套 414ml*3', 'Contigo Kids Cup Set (Girl)', 'contigo女孩水杯', '为儿童量身定做 妈妈放心', 'Contigo 吸管杯 运动 女孩 儿童 水杯', '', '', null, '', '0', '', '10', '18.00', '23.1', '23.1', '0.0', '0.80', '1.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('156', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '56', '（包邮）Contigo 儿童吸管水杯 男孩 三个装/套 414ml*3', 'Contigo Kids Cup Set (Boy)', 'contigo男孩水杯', '为儿童量身定做 妈妈放心', 'Contigo 吸管杯 运动 男孩 儿童 水杯', '', '', null, '', '0', '', '10', '18.00', '26.6', '26.6', '0.0', '0.80', '1.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('157', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '56', '（包邮）Contigo 保温杯 紫+渐变紫 两个装/套', 'Contigo Water Bottle Cold To The Last Sip', 'contigo保温杯紫', '保温不是说说而已', 'Contigo 保温杯 渐变紫 不锈钢 保温 运动 高颜值', '', '', null, '', '0', '', '10', '19.00', '26.8', '26.8', '0.0', '0.90', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('158', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '56', '（包邮）Contigo 保温杯 红+渐变红 两个装/套', 'Contigo Water Bottle Cold To The Last Sip', 'contigo保温杯红', '保温不是说说而已', 'Contigo 保温杯 渐变红 不锈钢 保温 运动 高颜值', '', '', null, '', '0', '', '10', '19.00', '26.8', '26.8', '0.0', '0.90', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('159', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '56', '（包邮）Contigo 保温杯 蓝+渐变蓝 两个装/套', 'Contigo Water Bottle Cold To The Last Sip', 'contigo保温杯蓝', '保温不是说说而已', 'Contigo 保温杯 渐变蓝 不锈钢 保温 运动 高颜值', '', '', null, '', '0', '', '10', '19.00', '26.8', '26.8', '0.0', '0.90', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('160', '0', '123', '0-14-123-', '98', '0-69-98-', '17', '0', '54', '（包邮）Nurofen 智温宝 智能温度检测器', 'Nurofen', '体温检测仪', '智能关爱 蓝牙监测更放心', 'Nurofen 智温宝 智能温度检测器 儿童 宝宝 体温计 黑科技 发烧', '', '', null, '', '0', '', '10', '84.70', '89.0', '89.0', '0.0', '1.00', '1.00', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('161', '0', '123', '0-14-123-', '0', '', '17', '0', '57', '（包邮）Oral-B 成人电动牙刷 深层交叉清洁型', 'Oral B Vitality Cross Action Power Electric Toothbrush', '绿色清洁牙刷套装', '深层清洁 告别蛀牙', 'oral oral-B 成人 电动牙刷', '', '', null, '', '0', '', '10', '19.50', '23.5', '23.5', '0.0', '0.35', '0.55', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('162', '0', '123', '0-14-123-', '0', '', '17', '0', '57', '（包邮）Oral-B 儿童星球大战电动牙刷 5岁+', 'Oral B Vitality Kids Star Wars Power Brush', '星球大战牙刷', '', 'oral oral-B 儿童 电动牙刷 5岁', '', '', null, '', '0', '', '10', '19.50', '23.5', '23.5', '0.0', '0.35', '0.55', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('163', '0', '123', '0-14-123-', '0', '', '17', '0', '57', '（包邮）Oral-B 儿童公主款电动牙刷 5岁+', 'Oral B Vitality Kids Frozen Power Brush', '公主牙刷套装', '牙齿更洁净 麻麻很安心', 'oral oral-B 儿童 电动牙刷 5岁 公主', '', '', null, '', '0', '', '10', '19.50', '23.5', '23.5', '0.0', '0.35', '0.55', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('164', '0', '123', '0-14-123-', '0', '', '17', '0', '57', '（包邮）Oral-B 成人电动牙刷 牙龈保护型', 'Oral B Vitality Gum Care', 'GUM牙龈牙刷套装', '适合易出血 敏感人士', 'oral oral-B 成人 电动牙刷 牙龈保护型', '', '', null, '', '0', '', '10', '19.50', '23.5', '23.5', '0.0', '0.35', '0.55', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('165', '0', '123', '0-14-123-', '0', '', '17', '0', '57', '（包邮）Oral-B 成人电动牙刷 牙线清洁型', 'Oral-B Vitality Plus Floss Action Rechargeable Electric Toothbrush', '深紫牙线牙刷套装', '深层清洁牙缝，牙结石', 'oral oral-B 成人 电动牙刷 牙线清洁型', '', '', null, '', '0', '', '10', '19.50', '23.5', '23.5', '0.0', '0.35', '0.55', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('166', '0', '123', '0-14-123-', '0', '', '17', '0', '57', '（包邮）Oral-B 成人电动牙刷 美白型', 'Oral B Vitality Pro White Electric Toothbrush', '蓝色美白牙刷套装', '适合牙黄，抽烟或者有牙斑的亲们', 'oral oral-B 成人 电动牙刷 美白型', '', '', null, '', '0', '', '10', '18.00', '23.5', '23.5', '0.0', '0.35', '0.55', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('167', '0', '123', '0-14-123-', '0', '', '17', '0', '57', '（包邮）Oral-B 成人电动牙刷 精洗型', 'Oral B Vitality Precision Clean Electric Toothbrush', '国旗牙刷套装', '日常护理清洁牙齿，大众首选', 'oral oral-B 成人 电动牙刷 精洗型 国旗', '', '', null, '', '0', '', '10', '19.50', '23.5', '23.5', '0.0', '0.35', '0.55', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('168', '0', '123', '0-14-123-', '0', '', '17', '0', '57', '（包邮）Oral-B 成人电动牙刷 敏感型', 'Oral B Vitality Sensitive Clean Electric Toothbrush', '敏感粉牙刷套装', '适合平时刷牙容易流血的人', 'oral oral-B 成人 电动牙刷 敏感型', '', '', null, '', '0', '', '10', '18.50', '23.5', '23.5', '0.0', '0.35', '0.55', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('169', '0', '123', '0-14-123-', '106', '0-9-106-', '10', '0', '54', 'Kincho kaoriring 驱蚊硅胶手环 30枚', 'Kincho KaroriRing', '驱蚊手环', '橡胶手环造型萌萌哒', 'Kincho kaoriring 驱蚊手环 孕妇 儿童 宝宝 水果味 户外防蚊虫', '', '', null, '', '0', '', '10', '6.40', '7.4', '7.4', '0.0', '0.05', '0.07', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('170', '0', '123', '0-14-123-', '106', '0-9-106-', '5', '0', '54', 'Mosquito Repeller 声波驱蚊器 颜色随机', 'Mosquito Repeller', '驱蚊器', '声波物理驱蚊、安全易携带', '澳洲 Mosquito Repeller 婴幼儿 儿童 驱蚊器 电子声波驱蚊', '', '', null, '', '0', '', '10', '12.00', '12.0', '12.0', '0.0', '0.03', '0.05', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('171', '0', '29', '0-4-29-', '0', '', '4', '0', '22', 'HC 蜂胶滴剂 25ml', 'Healthy Care Propolis Liquid Alcohol Free', 'HC蜂胶滴剂', '', 'HC Healthy Care Propolis Liquid Alcohol Free 蜂胶滴剂 25ml 口腔', '', '', null, '', '0', '', '10', '4.30', '5.9', '5.9', '0.0', '0.08', '0.12', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('172', '0', '124', '0-37-124-', '59', '0-9-59-', '7', '0', '46', 'Bepanthen 拜耳万能膏 100g 20年6月到期', 'Bepanthen Antiseptic Cream 100g', '拜耳万能膏（深蓝20.6）', '', 'Bepanthen 拜耳万能膏 100g 婴儿 孕妇 抗菌 护臀 乳头膏 湿疹膏 晒后修复霜 屁屁膏 护臀膏', '', '', null, '', '0', '20年6月', '10', '7.50', '7.9', '7.9', '0.0', '0.13', '0.17', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('173', '0', '124', '0-37-124-', '122', '0-10-122-', '5', '0', '12', 'Elevit 女士爱乐维 孕期维生素 100粒', 'Elevit Pregnancy Multivitamin Tablets 100 Pack （Export Only）', '女爱乐维', '健康备孕 降低胎儿畸形', 'Elevit 女士爱乐维 100粒 澳洲 备孕 孕妇 哺乳 复合维生素 叶酸 女维', '', '', null, '', '0', '21年2月', '10', '48.00', '49.5', '49.5', '0.0', '0.22', '0.25', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('174', '0', '124', '0-37-124-', '97', '0-69-97-', '4', '0', '54', 'Rhinocort小犀牛120喷 19年10月到期', 'Rhinocort （Export Only）', '小犀牛', '小犀牛 陪你尽情呼吸', 'Rhinocort 小犀牛 120喷 喷雾剂 缓解 成人 儿童 鼻涕 打喷嚏', '', '', null, '', '0', '19年10月', '10', '11.00', '2.0', '2.0', '0.0', '0.07', '0.12', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('175', '0', '124', '0-37-124-', '0', '', '4', '0', '54', 'Lamisil cream脚气膏15g', 'Lamisil Cream For Athlete‘s Foot （Export Only ） 15G', '脚气膏15g', '脚气克星', 'Lamisil cream 脚气膏 15g 水泡 烂脚丫 真菌灵软膏', '', '', null, '', '0', '21年1月', '10', '10.80', '12.0', '12.0', '0.0', '0.04', '0.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('176', '0', '124', '0-37-124-', '0', '', '4', '0', '50', 'Proctosedyl Ointment痔疮膏30g', 'Proctosedyl  （Export Only） 30g', '痔疮膏30g', '大疮化小 小疮化了', 'Proctosedyl Ointment痔疮膏 30g 孕产妇可用 男女可用 安全有效 菊花膏', '', '', null, '', '0', '20年11月', '10', '14.00', '14.5', '14.5', '0.0', '0.05', '0.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('177', '0', '124', '0-37-124-', '0', '', '4', '0', '54', 'Naprogesic拜耳痛经神器24粒', 'Bayer  Naprogesic（Export Only）24 Tablets', '痛经神器24粒', '澳洲十大神药排名第七', 'Naprogesic 拜耳痛经神器 生理期 缓解疼痛 大姨妈 24粒', '', '', null, '', '0', '21年2月', '10', '10.00', '11.5', '11.5', '0.0', '0.07', '0.12', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('178', '0', '124', '0-37-124-', '0', '', '4', '0', '54', 'Bayer拜耳sm33口腔凝胶10g', 'Bayer SM-33 （Export Only） 10g', 'sm-33溃疡膏10g', '口腔溃疡克星', 'Bayer 拜耳 sm33 口腔 凝胶 牙龈 肿痛 软膏 舒缓凝胶 10g 口腔溃疡', '', '', null, '', '0', '20年7月', '10', '7.80', '8.8', '8.8', '0.0', '0.02', '0.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('179', '0', '124', '0-37-124-', '0', '', '4', '0', '54', 'Superfade祛斑霜40ml', 'SuperFade Superfade Face Cream（Export Only） 40ml', '祛斑霜40ml', '特效祛斑神器', 'Superfade 祛斑霜 神器 面部美白霜 淡化色斑 雀斑 黄褐斑', '', '', null, '', '0', '20年8月', '10', '19.00', '20.0', '20.0', '0.0', '0.14', '0.20', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('180', '0', '124', '0-37-124-', '0', '', '4', '0', '54', 'Combantrin打虫巧克力24块', 'Combantrin（Export Only）', '打虫巧克力24块', '好吃又打虫', 'Combantrin 打虫巧克力 澳洲 宝宝 儿童 成人 打虫药 24块', '', '', null, '', '0', '21年2月', '10', '14.00', '16.0', '16.0', '0.0', '0.05', '0.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('181', '0', '55', '0-9-55-', '70', '0-70-', '4', '0', '18', 'Bio Island 儿童锌片 小熊锌片 120粒', 'Bio Island Zinc 120 Chewable Tablets', 'Bio锌', '成长“锌”力量', 'Bio Island 生物岛 儿童锌片 小熊锌片 120粒 咀嚼片 改善 食欲 促发育 挑食 均衡营养 免疫力 zinc', '', '', null, '', '0', '', '10', '11.50', '11.0', '11.0', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('182', '0', '55', '0-9-55-', '70', '0-70-', '4', '0', '18', 'Bio Island 婴幼儿鳕鱼油 鱼肝油 90粒', 'Bio Island Cod Liver + Fish Oil Kids 90 Capsules', 'Bio鱼油', '补脑护眼1粒搞定', 'Bio Island 生物岛 婴幼儿鳕鱼油 鱼肝油 90粒 大脑发育 视力 长身体 免疫力 fish oil', '', '', null, '', '0', '', '10', '16.50', '14.9', '14.9', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('183', '0', '55', '0-9-55-', '70', '0-70-', '4', '0', '18', 'Bio Island 婴幼儿乳钙 奶钙 90粒', 'Bio Island Milk Calcium Kids 90 Capsules', 'Bio乳钙', '天然液体乳钙', 'Bio Island 生物岛 婴幼儿乳钙 奶钙 90粒 补钙 液体钙 易吸收 天然 免疫力 milk calcium', '', '', null, '', '0', '22年2月', '10', '16.50', '15.5', '15.5', '0.0', '0.12', '0.15', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('184', '0', '55', '0-9-55-', '70', '0-70-', '4', '0', '18', 'Bio Island 婴幼儿DHA 海藻油 60粒', 'Bio Island DHA Kids 60 Capsules', 'Bio DHA', '植物提取 眼脑同发育', 'Bio Island 生物岛 婴幼儿DHA 海藻油 60粒 营养 维生素 呵护 眼脑 促发育 聪明 dha bio BIO', '', '', null, '', '0', '22年3月', '10', '13.00', '12.8', '12.8', '0.0', '0.08', '0.11', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('185', '0', '56', '0-9-56-', '70', '0-70-', '4', '0', '11', 'Bellamy\'s 贝拉米有机婴儿米粉125g 原味米粉 4个月', 'Bellamy\'s Organic Baby Rice with Prebiotic 125g', '米糊4+', '给宝宝就选健康的！！！', 'Bellamy\'s 贝拉米 有机 米粉 125g 原味 4个月 婴儿 辅食 米糊', '', '', null, '', '0', '20年5月', '10', '3.50', '4.6', '4.6', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('186', '0', '56', '0-9-56-', '97', '0-69-97-', '4', '0', '11', 'Bellamy\'s 贝拉米有机磨牙棒老版 6个月 19年12月31日到期', 'Old Bellamy\'s Milk Rusks 6M+', '磨牙棒老版', '妈妈的“哄娃神器”', 'Bellamy\'s 贝拉米 有机 磨牙棒 6个月 婴儿 磨牙饼干 辅食', '', '', null, '', '0', '19年12月', '10', '2.80', '1.0', '1.0', '0.0', '0.14', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('187', '0', '56', '0-9-56-', '96', '0-69-96-', '4', '0', '11', '赠品！拍下发货！Bellamy\'s 贝拉米有机婴儿米粉125g  燕麦米粉 5个月 8月31号', 'Bellamy\'s Organic Organic Baby porridge 125g', '下单就送！8月米粉燕麦5+', '', '贝拉米 辅食 米粉 有机 5+ 5个月 4个月', '', '', null, '', '0', '19年8月', '10', '0.00', '0.0', '0.0', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('188', '0', '56', '0-9-56-', '0', '', '4', '0', '11', 'Bellamy\'s 贝拉米有机婴儿米粉125g  燕麦米粉 5个月', 'Bellamy\'s Organic Organic Baby porridge 125g', '米糊燕麦5+', '给宝宝就选健康的！！！', '贝拉米 辅食 米粉 有机 5+ 5个月 4个月', '', '', null, '', '0', '20年3月', '10', '3.50', '4.6', '4.6', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('189', '0', '56', '0-9-56-', '0', '', '4', '0', '11', 'Bellamy\'s 贝拉米有机婴儿米粉125g 苹果味 6个月', 'Bellamy\'s Apple Baby Rice 6M+ 125g', '米糊苹果6+', '给宝宝就选健康的！！！', 'Bellamy\'s 贝拉米 有机 米粉 125g 苹果 6个月 婴儿 辅食 米糊', '', '', null, '', '0', '20年1月', '10', '3.50', '4.6', '4.6', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('190', '0', '56', '0-9-56-', '0', '', '4', '0', '11', 'Bellamy\'s 贝拉米有机婴儿米粉125g 香草奶味 6个月', 'Bellamy\'s Organic Baby Rice 6M+ 125g', '米糊香草6+', '给宝宝就选健康的！！！', 'Bellamy\'s 贝拉米 有机 米粉 125g 香草 6个月 婴儿 辅食 米糊', '', '', null, '', '0', '20年5月', '10', '3.50', '4.6', '4.6', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('191', '0', '56', '0-9-56-', '0', '', '4', '0', '11', 'Bellamy\'s 贝拉米有机婴儿米粉125g 南瓜米粉 5个月', 'Bellamy\'s Organic Pumpkin Baby Rice with Prebiotic 125g', '米糊南瓜5+', '给宝宝就选健康的！！！', 'Bellamy\'s 贝拉米 有机 米粉 125g 南瓜 5个月 婴儿 辅食 米糊', '', '', null, '', '0', '20年5月', '10', '3.50', '4.2', '4.2', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('192', '0', '56', '0-9-56-', '0', '', '4', '0', '11', '新版 Bellamy\'s 贝拉米有机意面 蔬菜通心粉 12个月', 'New Bellamy\'s Organic Vegi Macaroni 175g', '12+意面新版', '给宝宝最健康的', '12+意面 通心粉 蔬菜 辅食 面条 贝拉米', '', '', null, '', '0', '', '10', '4.00', '4.5', '4.5', '0.0', '0.25', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('193', '0', '56', '0-9-56-', '0', '', '4', '0', '11', '新版 Bellamy\'s 贝拉米有机意面 糙米星星面 7个月', 'New Bellamy\'s Organic Brown Rice Pasta Stars 200g', '7+意面新版', '给宝宝最健康的', '7+意面 贝拉米 辅食 面条 意面 通心粉', '', '', null, '', '0', '', '10', '4.00', '4.5', '4.5', '0.0', '0.25', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('194', '0', '56', '0-9-56-', '0', '', '4', '0', '11', '新版 Bellamy\'s 贝拉米有机意面 蔬菜字母面 8个月', 'New Bellamy\'s ORGANIC VEGGIE PASTA ALPHABETS 200g', '8+字母面新版', '给宝宝最健康的', '8+ 字母面 辅食 贝拉米 面条 蔬菜', '', '', null, '', '0', '', '10', '4.20', '4.5', '4.5', '0.0', '0.25', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('195', '0', '56', '0-9-56-', '0', '', '4', '0', '11', 'Bellamy\'s 贝拉米有机意面 糙米通心粉 8个月', 'Bellamy\'s Organic Spelt Macaroni 200g', '意面8+通心粉', '给宝宝就选健康的！！！', 'Bellamy\'s 贝拉米 有机 糙米 通心粉 8个月 婴儿 辅食 意面', '', '', null, '', '0', '', '10', '4.00', '2.9', '2.9', '0.0', '0.25', '0.28', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('196', '0', '57', '0-9-57-', '0', '', '4', '0', '3', 'Nature\'s Way 儿童综合+蔬菜软糖 60粒 21年2月', 'Nature\'s Way Kids Smart Vita Gummies Multi Vitamin & Vegies 60 Gummies', 'NW蔬菜软糖', '营养丰富 果味孩子爱', 'Nature\'s Way 佳思敏 儿童综合+蔬菜软糖 60粒 果蔬精华 维生素 微量元素 抵抗力 免疫力 NW', '', '', null, '', '0', '21年2月', '10', '7.50', '6.7', '6.7', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('197', '0', '58', '0-9-58-', '96', '0-69-96-', '11', '0', '33', 'B.box吸管套装（替换管2支 + 吸管刷1只）', 'b.box Sippy Cup Replacement Straw and Cleaning Set', '吸管替换管', '', 'B.box 吸管套装（替换管2支 + 吸管刷1只） 饮水杯 防漏 学饮杯 宝宝 防呛 bbox', '', '', null, '', '0', '', '10', '6.27', '5.0', '5.0', '0.0', '0.08', '0.12', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('198', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box 叉勺套装 橙红色', 'b.box Cutlery Set Red', 'bbox叉勺橙红色', '安全小巧 卫生便携', 'B.box宝宝学吃饭叉勺套装勺子叉子辅食训练橙红色bbox', '', '', null, '', '0', '', '10', '8.10', '9.5', '9.5', '0.0', '0.10', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('199', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box 叉勺套装 蓝绿色', 'b.box Cutlery Set Blue', 'bbox叉勺蓝绿色', '安全小巧 卫生便携', 'B.box宝宝学吃饭叉勺套装勺子叉子辅食训练蓝绿色bbox', '', '', null, '', '0', '', '10', '8.10', '9.5', '9.5', '0.0', '0.10', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('200', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box 叉勺套装 紫黄色', 'b.box Cutlery Set Purple', 'bbox叉勺紫黄色', '安全小巧 卫生便携', 'B.box宝宝学吃饭叉勺套装勺子叉子辅食训练紫黄色bbox', '', '', null, '', '0', '20年10月', '10', '8.10', '9.5', '9.5', '0.0', '0.10', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('201', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box 叉勺套装 黄灰色', 'b.box Cutlery Set Yellow', 'bbox叉勺黄灰色', '安全小巧 卫生便携', 'B.box宝宝学吃饭叉勺套装勺子叉子辅食训练黄灰色黄色bbox', '', '', null, '', '0', '', '10', '8.10', '9.5', '9.5', '0.0', '0.10', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('202', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box三合一吸管碗 黄色+灰色', 'b.box Bowl Plus Straw Lemon Sherbet', 'bbox碗黄色', '独立进食 从“吸”开始', 'BIO-E 柠檬 酵素 500ml 益生菌 分解油脂 新城代谢 便秘 肠胃调理 润肠', '', '', null, '', '0', '', '10', '9.50', '9.8', '9.8', '0.0', '0.18', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('203', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box三合一吸管碗 紫色+黄色', 'b.box Bowl Plus Straw Passion Splash', 'bbox碗紫色', '独立进食 从“吸”开始', 'bbox 三合一吸管碗 紫色 黄色 辅食碗 婴儿 喝汤 零食 儿童 餐具 防滑 训练 吃饭', '', '', null, '', '0', '', '10', '9.50', '9.8', '9.8', '0.0', '0.18', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('204', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box三合一吸管碗 红色+桔色', 'b.box Bowl Plus Straw Strawberry Shake', 'bbox碗红色', '独立进食 从“吸”开始', 'bbox三合一吸管碗 红色 桔色 辅食碗 婴儿 喝汤 零食 儿童 餐具 防滑 训练 吃饭', '', '', null, '', '0', '', '10', '9.50', '9.8', '9.8', '0.0', '0.18', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('205', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box三合一吸管碗 蓝色+绿色', 'b.box Bowl Plus Straw Ocean Breeze', 'bbox碗蓝色', '独立进食 从“吸”开始', 'bbox三合一吸管碗 蓝色 绿色 辅食碗 婴儿 喝汤 零食 儿童 餐具 防滑 训练 吃饭', '', '', null, '', '0', '', '10', '9.50', '9.8', '9.8', '0.0', '0.18', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('206', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box婴幼儿重力球吸管杯（Tiffany水蓝色） 240ml', 'b.box Sippy Cup Aqua 240ml', '吸管杯（水蓝色）', '妈妈信赖的吸管杯', 'bbox婴幼儿 重力球 吸管杯（水蓝色） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛 bbox', '', '', null, '', '0', '', '10', '9.00', '9.0', '9.0', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('207', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box婴幼儿重力球吸管杯（西瓜红） 240ml', 'b.box Sippy Cup Watermelon 240ml', '吸管杯（西瓜红）', '妈妈信赖的吸管杯', 'B.box婴幼儿重力球吸管杯（西瓜红） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛 bbox', '', '', null, '', '0', '', '10', '10.00', '9.0', '9.0', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('208', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box婴幼儿重力球吸管杯（荧光粉色） 240ml', 'b.box Sippy Cup Pink Pomegranate 240ml', '吸管杯（荧光粉色）', '妈妈信赖的吸管杯', 'B.box婴幼儿重力球吸管杯（荧光粉色） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛  bbox', '', '', null, '', '0', '', '10', '10.00', '9.0', '9.0', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('209', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box婴幼儿重力球吸管杯（荧光黄绿） 240ml', 'b.box Sippy Cup Pineapple 240ml', '吸管杯（荧光黄绿）', '妈妈信赖的吸管杯', 'B.box婴幼儿重力球吸管杯（荧光黄绿） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛  bbox', '', '', null, '', '0', '', '10', '10.00', '9.0', '9.0', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('210', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box婴幼儿重力球吸管杯（橙色） 240ml', 'b.box Sippy Cup Orange Zing 240ml', '吸管杯（橙色）', '妈妈信赖的吸管杯', 'B.box婴幼儿重力球吸管杯（橙色） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛  bbox', '', '', null, '', '0', '', '10', '10.00', '9.0', '9.0', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('211', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box婴幼儿重力球吸管杯（深蓝色） 240ml', 'b.box Sippy Cup Cobalt 240ml', '吸管杯（深蓝色）', '妈妈信赖的吸管杯', 'B.box婴幼儿重力球吸管杯（深蓝色） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛  bbox', '', '', null, '', '0', '', '10', '10.00', '9.0', '9.0', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('212', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box婴幼儿重力球吸管杯（浅蓝色） 240ml', 'b.box Sippy Cup Blueberry 240ml', '吸管杯（浅蓝色）', '妈妈信赖的吸管杯', 'B.box婴幼儿重力球吸管杯（浅蓝色） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛 bbox', '', '', null, '', '0', '', '10', '10.00', '9.0', '9.0', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('213', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box婴幼儿重力球吸管杯（葡萄紫色） 240ml', 'b.box Sippy Cup Grape 240ml', '吸管杯（葡萄紫色）', '妈妈信赖的吸管杯', 'B.box婴幼儿重力球吸管杯（葡萄紫色） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛  bbox', '', '', null, '', '0', '', '10', '10.00', '9.0', '9.0', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('214', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box婴幼儿重力球吸管杯（绿色） 240ml', 'b.box Sippy Cup Apple 240ml', '吸管杯（绿色）', '妈妈信赖的吸管杯', 'B.box婴幼儿重力球吸管杯（绿色） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛 bbox', '', '', null, '', '0', '', '10', '10.00', '9.0', '9.0', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('215', '0', '58', '0-9-58-', '0', '', '11', '0', '33', 'B.box婴幼儿重力球吸管杯（玫红色） 240ml', 'b.box Sippy Cup Raspberry 240ml', '吸管杯（树莓粉）', '妈妈信赖的吸管杯', 'B.box婴幼儿重力球吸管杯（玫红色） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛 bbox', '', '', null, '', '0', '', '10', '10.00', '9.0', '9.0', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('216', '0', '60', '0-9-60-', '14', '0-14-', '14', '0', '31', 'Jack&Jill 音乐电动牙刷 赠贴纸', 'Jack N\' Jill Buzzy Brush Musical Electric Toothbrush', 'JJ电动牙刷', '', 'Jack&Jill 牙刷 音乐 电动牙刷 JJ', '', '', null, '', '0', '', '10', '14.90', '15.0', '15.0', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('217', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 硅胶牙刷 三阶段 2-5岁', 'Jack N\' Jill Silicone Tooth & Gum Brush（stage 3）', 'JJ牙刷3阶段', '', 'Jack&Jill 牙刷 婴幼儿 三阶段 2-5岁 JJ', '', '', null, '', '0', '', '10', '3.00', '3.5', '3.5', '0.0', '0.04', '0.07', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('218', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 硅胶牙刷 一阶段 6-12月', 'Jack N\' Jill Silicone Tooth & Gum Brush（stage 1）', 'JJ牙刷1阶段', '', 'Jack&Jill 牙刷 一阶段 6-12月 婴幼儿 JJ', '', '', null, '', '0', '', '10', '3.00', '3.5', '3.5', '0.0', '0.04', '0.07', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('219', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 可食用牙膏 黑加仑 50g', 'Jack N\' Jill Blackcurrant Toothpaste 50g', 'JJ牙膏黑加仑', '可吞服不含氟', 'Jack&Jill 宝宝儿童 可食用 可吞咽 牙膏 黑加仑树莓香蕉蓝莓草莓原味JJ', '', '', null, '', '0', '', '10', '4.50', '4.5', '4.5', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('220', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 可食用牙膏 树莓 50g', 'Jack N\' Jill Raspberry Toothpaste 50g', 'JJ牙膏树莓', '可吞服不含氟', 'Jack&Jill 宝宝儿童 可食用 可吞咽 牙膏 黑加仑树莓香蕉蓝莓草莓原味JJ', '', '', null, '', '0', '', '10', '4.50', '3.8', '3.8', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('221', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 可食用牙膏 香蕉 50g', 'Jack N\' Jill Banana Toothpaste 50g', 'JJ牙膏香蕉', '可吞服不含氟', 'Jack&Jill 宝宝儿童 可食用 可吞咽 牙膏 黑加仑树莓香蕉蓝莓草莓原味JJ', '', '', null, '', '0', '', '10', '4.50', '4.5', '4.5', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('222', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 可食用牙膏 原味 50g', 'Jack N\' Jill Natural Toothpaste 50g', 'JJ牙膏原味', '可吞服不含氟', 'Jack&Jill 宝宝儿童 可食用 可吞咽 牙膏 黑加仑树莓香蕉蓝莓草莓原味JJ', '', '', null, '', '0', '', '10', '4.50', '4.5', '4.5', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('223', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 可食用牙膏 蓝莓 50g', 'Jack N\' Jill Blueberry Toothpaste 50g', 'JJ牙膏蓝莓', '可吞服不含氟', 'Jack&Jill 宝宝儿童 可食用 可吞咽 牙膏 黑加仑树莓香蕉蓝莓草莓原味JJ', '', '', null, '', '0', '', '10', '4.50', '4.5', '4.5', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('224', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 可食用牙膏 草莓 50g', 'Jack N\' Jill Strawberry Toothpaste 50g', 'JJ牙膏草莓', '可吞服不含氟', 'Jack&Jill 宝宝儿童 可食用 可吞咽 牙膏 黑加仑树莓香蕉蓝莓草莓原味JJ', '', '', null, '', '0', '', '10', '4.50', '4.5', '4.5', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('225', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 硅胶牙刷 二阶段 1-2岁', 'Jack N\' Jill Silicone Tooth & Gum Brush（stage 2）', 'JJ牙刷2阶段', '', 'Jack&Jill 牙刷 二阶段 1-2岁 婴幼儿  JJ', '', '', null, '', '0', '', '10', '3.00', '3.5', '3.5', '0.0', '0.04', '0.07', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('226', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 牙刷 兔子图案', 'Jack N\' Jill Bunny Bio Toothbrush', 'JJ牙刷兔子', '乳牙牙刷、软毛不刺激', 'Jack&Jill 牙刷 婴幼儿 兔子考拉恐龙河马 JJ', '', '', null, '', '0', '', '10', '3.30', '3.5', '3.5', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('227', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 牙刷 河马图案', 'Jack N\' Jill Hippo Bio Toothbrush', 'JJ牙刷河马', '乳牙牙刷、软毛不刺激', 'Jack&Jill 牙刷 婴幼儿 兔子考拉恐龙河马 JJ', '', '', null, '', '0', '', '10', '3.30', '3.5', '3.5', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('228', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 牙刷 考拉图案', 'Jack N\' Jill Koala Bio Toothbrush', 'JJ牙刷考拉', '乳牙牙刷、软毛不刺激', 'Jack&Jill 牙刷 婴幼儿 兔子考拉恐龙河马 JJ', '', '', null, '', '0', '', '10', '3.30', '3.5', '3.5', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('229', '0', '60', '0-9-60-', '0', '', '10', '0', '31', 'Jack&Jill 牙刷 恐龙图案', 'Jack N\' Jill Dino Bio Toothbrush', 'JJ牙刷恐龙', '乳牙牙刷、软毛不刺激', 'Jack&Jill 刷牙漱口杯 卡通 婴幼儿 兔子考拉恐龙河马  JJ', '', '', null, '', '0', '', '10', '3.30', '3.5', '3.5', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('230', '0', '60', '0-9-60-', '0', '', '11', '0', '31', 'Jack&Jill 玉米杯 兔子图案', 'Jack N\' Jill Bunny Cup', 'JJ杯子兔子', '玉米淀粉制作、有机可降解', 'Jack&Jill 刷牙漱口杯 卡通 婴幼儿 兔子考拉恐龙河马  JJ', '', '', null, '', '0', '', '10', '4.50', '5.0', '5.0', '0.0', '0.14', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('231', '0', '60', '0-9-60-', '0', '', '11', '0', '31', 'Jack&Jill 玉米杯 河马图案', 'Jack N\' Jill Hippo Cup', 'JJ杯子河马', '玉米淀粉制作、有机可降解', 'Jack&Jill 刷牙漱口杯 卡通 婴幼儿 兔子考拉恐龙河马  JJ', '', '', null, '', '0', '', '10', '4.50', '5.0', '5.0', '0.0', '0.14', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('232', '0', '60', '0-9-60-', '0', '', '11', '0', '31', 'Jack&Jill 玉米杯 考拉图案', 'Jack N\' Jill Koala Cup', 'JJ杯子考拉', '玉米淀粉制作、有机可降解', 'Jack&Jill 刷牙漱口杯 卡通 婴幼儿 兔子考拉恐龙河马  JJ', '', '', null, '', '0', '', '10', '4.50', '5.0', '5.0', '0.0', '0.14', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('233', '0', '60', '0-9-60-', '0', '', '11', '0', '31', 'Jack&Jill 玉米杯 恐龙图案', 'Jack N\' Jill Dino Cup', 'JJ杯子恐龙', '玉米淀粉制作、有机可降解', 'Jack&Jill 刷牙漱口杯 卡通 婴幼儿 兔子考拉恐龙河马  JJ', '', '', null, '', '0', '', '10', '4.50', '5.0', '5.0', '0.0', '0.14', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('234', '0', '60', '0-9-60-', '14', '0-14-', '4', '0', '31', 'Jack&Jill 电动牙刷替换刷头 2支/盒', 'Jack N\' Jill Buzzy Brush Replacement Heads SET', 'JJ电动牙刷头', '', 'Jack&Jill 牙刷 电动牙刷 替换刷头 JJ', '', '', null, '', '0', '', '10', '8.00', '9.0', '9.0', '0.0', '0.02', '0.05', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('235', '0', '61', '0-9-61-', '70', '0-70-', '11', '0', '14', 'GAIA 婴儿儿童洗发沐浴二合一 500ml', 'Gaia Natural Baby Hair & Body Wash 500ml', 'GAIA二合一500ml', '纯净 天然 有机', 'GAIA 婴儿 儿童 洗发 沐浴二合一 500ml 保湿 润肤 温和 舒缓 湿疹 皲裂 婴儿 儿童', '', '', null, '', '0', '', '10', '9.30', '9.4', '9.4', '0.0', '0.60', '0.70', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('236', '0', '61', '0-9-61-', '0', '', '11', '0', '14', 'GAIA 婴儿儿童洗发250ml', 'Gaia Natural Baby Shampoo 250ml', 'GAIA洗发250ml', '纯净 天然 有机', 'GAIA 婴儿 儿童 洗发250ml 保湿 润肤 温和 舒缓 湿疹 皲裂 婴儿 儿童', '', '', null, '', '0', '', '10', '6.30', '6.3', '6.3', '0.0', '0.30', '0.33', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('237', '0', '61', '0-9-61-', '0', '', '11', '0', '14', 'GAIA 婴儿儿童沐浴250ml', 'Gaia Natural Baby Bath & Body Wash 250ml', 'GAIA沐浴250ml', '纯净 天然 有机', 'GAIA 婴儿 儿童 沐浴250ml 保湿 润肤 温和 舒缓 湿疹 皲裂 婴儿 儿童', '', '', null, '', '0', '', '10', '6.30', '6.3', '6.3', '0.0', '0.30', '0.33', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('238', '0', '61', '0-9-61-', '0', '', '11', '0', '14', 'GAIA 婴儿儿童沐浴500ml', 'Gaia Natural Baby Bath & Body Wash 500ml Pump', 'GAIA沐浴500ml', '纯净 天然 有机', 'GAIA 婴儿 儿童 沐浴500ml 保湿 润肤 温和 舒缓 湿疹 皲裂 婴儿 儿童', '', '', null, '', '0', '', '10', '9.30', '9.5', '9.5', '0.0', '0.60', '0.70', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('239', '0', '61', '0-9-61-', '0', '', '11', '0', '14', 'GAIA 婴儿儿童洗发沐浴二合一 200ml', 'Gaia Natural Baby Hair & Body Wash 200ml', 'GAIA二合一200ml', '纯净 天然 有机', 'GAIA 婴儿 儿童 洗发 沐浴二合一 200ml 保湿 润肤 温和 舒缓 湿疹 皲裂 婴儿 儿童', '', '', null, '', '0', '', '10', '6.30', '5.7', '5.7', '0.0', '0.25', '0.28', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('240', '0', '61', '0-9-61-', '0', '', '7', '0', '14', 'GAIA 玉米痱子粉 爽身粉200g', 'Gaia Natural Baby Powder 200g', 'GAIA爽身粉大', '纯净 天然 有机', 'GAIA 玉米痱子粉 爽身粉200g 保湿 润肤 温和 舒缓 湿疹 皲裂 婴儿 儿童', '', '', null, '', '0', '', '10', '7.50', '7.5', '7.5', '0.0', '0.26', '0.41', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('241', '0', '61', '0-9-61-', '0', '', '7', '0', '14', 'GAIA 婴儿按摩油 抚触油125ml', 'Gaia Natural Baby Massage Oil 125mL', 'GAIA按摩油125ml', '纯净 天然 有机', 'GAIA 婴儿 按摩油 抚触油125ml 保湿 润肤 温和 舒缓 湿疹 皲裂 婴儿 儿童', '', '', null, '', '0', '', '10', '6.30', '6.3', '6.3', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('242', '0', '61', '0-9-61-', '0', '', '7', '0', '14', 'GAIA 婴儿儿童润肤露250ml', 'Gaia Natural Baby Moisturiser 250ml', 'GAIA润肤250ml', '纯净 天然 有机', 'GAIA 婴儿 儿童 润肤露250ml 保湿 润肤 温和 舒缓 湿疹 皲裂 婴儿 儿童', '', '', null, '', '0', '', '10', '6.30', '6.3', '6.3', '0.0', '0.30', '0.33', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('243', '0', '61', '0-9-61-', '0', '', '14', '0', '14', 'GAIA 旅行套装（沐浴、安神沐浴、洗发、润肤、按摩油）', 'Gaia Natural Baby Starter Kit 5 x 50ml', 'GAIA旅行套装', '纯净 天然 有机', 'GAIA 旅行套装 5件套 沐浴、安神沐浴、洗发、润肤、按摩油', '', '', null, '', '0', '', '10', '12.50', '11.9', '11.9', '0.0', '0.40', '0.46', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('244', '0', '62', '0-9-62-', '0', '', '7', '0', '41', 'Aveeno 婴儿儿童天然燕麦保湿润肤乳液 532ml', 'Aveeno Daily Moisture Lotion', 'Aveeno润肤乳532mll', '', 'Aveeno 艾维诺 婴儿 儿童 润肤乳 532ml 保湿 润肤 温和 舒缓 湿疹 皲裂', '', '', null, '', '0', '', '10', '9.00', '9.0', '9.0', '0.0', '0.62', '0.72', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('245', '0', '62', '0-9-62-', '0', '', '11', '0', '41', 'Aveeno 婴儿儿童洗发沐浴二合一 532ml', 'Aveeno Baby Daily Moisture Frangrance Free Wash & Shampoo 532mL', 'Aveeno 二合一 532ml', '天然燕麦 自然活萃', 'Aveeno 艾维诺 婴儿 儿童 洗发 沐浴 二合一 532ml 保湿 润肤 温和 舒缓 湿疹 皲裂', '', '', null, '', '0', '', '10', '9.80', '9.8', '9.8', '0.0', '0.66', '0.76', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('246', '0', '62', '0-9-62-', '0', '', '7', '0', '41', 'Aveeno 婴儿儿童润肤乳227ml', 'Aveeno Baby Daily Moisturing Lotion 227ml', 'Aveeno浅蓝227ml', '天然燕麦 自然活萃', 'Aveeno 艾维诺 婴儿 儿童 润肤乳227ml 保湿 润肤 温和 舒缓 湿疹 皲裂 浅蓝', '', '', null, '', '0', '', '10', '6.40', '5.5', '5.5', '0.0', '0.26', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('247', '0', '62', '0-9-62-', '0', '', '7', '0', '41', 'Aveeno 婴儿儿童润肤霜139ml', 'Aveeno Baby Soothing Relief Fragrance Free Moisture Cream 140g', 'Aveeno深蓝139ml', '天然燕麦 自然活萃', 'Aveeno 艾维诺  婴儿 儿童 润肤霜139ml 保湿 润肤 温和 舒缓 湿疹 皲裂 深蓝', '', '', null, '', '0', '', '10', '6.40', '5.5', '5.5', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('248', '0', '62', '0-9-62-', '0', '', '11', '0', '41', 'Aveeno 婴儿儿童洗发沐浴二合一236ml', 'Aveeno Baby Daily Moisture Frangrance Free Wash & Shampoo 236mL', 'Aveeno二合一236ml', '天然燕麦 自然活萃', 'Aveeno 艾维诺 婴儿 儿童 洗发沐浴二合一236ml 保湿 润肤 温和 舒缓 湿疹 皲裂', '', '', null, '', '0', '', '10', '6.40', '5.5', '5.5', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('249', '0', '63', '0-9-63-', '98', '0-69-98-', '17', '0', '15', '（包邮）QV 儿童洗护套装 三件套', 'Ego QV Baby 3 Pieces Package', 'QV套装', '澳洲护肤“砖”家Ego', 'QV 儿童洗护套装 三件套 润肤露 护臀霜 洗发沐浴二合一', '', '', null, '', '0', '', '10', '17.00', '24.2', '24.2', '0.0', '1.17', '1.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('250', '0', '63', '0-9-63-', '0', '', '7', '0', '15', 'QV 止汗滚珠 蓝色 80g', 'QV Naked Anti-Perspirant Roll-On 80G', 'QV止汗蓝盖', '与夏季尴尬say bye bye', 'QV 止汗 滚珠 蓝色 80g 除臭 止汗 低敏 抑汗 异味 狐臭 喷雾 蓝盖', '', '', null, '', '0', '', '10', '5.00', '5.7', '5.7', '0.0', '0.13', '0.16', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('251', '0', '63', '0-9-63-', '0', '', '7', '0', '15', 'QV 成人霜 100g', 'Ego QV Cream 100g Tube', 'QV成人霜100g', '保湿滋润多效合一', 'QV 成人霜 100g 润肤 护肤 滋润 防干燥 补水 保湿 温和', '', '', null, '', '0', '', '10', '5.80', '5.2', '5.2', '0.0', '0.15', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('252', '0', '63', '0-9-63-', '0', '', '7', '0', '15', 'QV 儿童面霜小章鱼红色 100g', 'QV Kids Cream 100G', 'QV小章鱼红100g', '滋养防护 四季必备', 'QV 儿童 面霜 小章鱼 红色 100g 保湿 润肤 温和 舒缓 湿疹 皲裂', '', '', null, '', '0', '', '10', '5.80', '5.6', '5.6', '0.0', '0.15', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('253', '0', '63', '0-9-63-', '0', '', '7', '0', '15', 'QV 儿童小老虎保湿霜 新版压嘴去湿疹 250g', 'Ego QV Baby Moisturising Cream 250g Exclusive Pump', 'QV压嘴250g', '澳洲护肤“砖”家Ego', 'QV 儿童 小老虎 保湿霜 新版压嘴 250g  润肤 雪花膏 温和 舒缓 湿疹 皲裂', '', '', null, '', '0', '', '10', '8.80', '8.3', '8.3', '0.0', '0.35', '0.45', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('254', '0', '63', '0-9-63-', '0', '', '7', '0', '15', 'QV 儿童小老虎保湿霜 圆罐 250g', 'Ego QV Baby Moisturising Cream 250g', 'QV雪花膏250g', '澳洲护肤“砖”家Ego', 'QV 儿童 小老虎 保湿霜 圆罐 250g 润肤 雪花膏 温和 舒缓 湿疹 皲裂', '', '', null, '', '0', '', '10', '8.80', '8.3', '8.3', '0.0', '0.32', '0.37', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('255', '0', '64', '0-9-64-', '0', '', '10', '0', '48', 'Goat 羊奶皂（桉树油） 100g', 'Goat Soap 100g', '羊奶皂桉树', '', 'Goat 羊奶皂 100g 手工皂 山羊皂 孕妇 婴儿 儿童 洁面 沐浴 香皂', '', '', null, '', '0', '', '10', '1.50', '1.5', '1.5', '0.0', '0.11', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('256', '0', '64', '0-9-64-', '0', '', '10', '0', '48', 'Goat 羊奶皂（薰衣草） 100g', 'Goat Soap 100g', '羊奶皂薰衣草', '', 'Goat 羊奶皂 100g 手工皂 山羊皂 孕妇 婴儿 儿童 洁面 沐浴 香皂', '', '', null, '', '0', '', '10', '1.50', '1.5', '1.5', '0.0', '0.11', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('257', '0', '64', '0-9-64-', '0', '', '10', '0', '48', 'Goat 羊奶皂（番木瓜） 100g', 'Goat Soap 100g', '羊奶皂番木瓜', '', 'Goat 羊奶皂 100g 手工皂 山羊皂 孕妇 婴儿 儿童 洁面 沐浴 香皂', '', '', null, '', '0', '', '10', '1.50', '1.5', '1.5', '0.0', '0.11', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('258', '0', '126', '0-68-126-', '0', '', '16', '0', '50', '（国内现货）男士生发片养发营养片 30粒（国内现货）', 'CHN Hairdresser\'s Formula Hair Nutrition For Men 30 Tablets', '现货男生发小', '21年7月到期', 'Hairdresser\'s Formula 男士生发片养发营养片 30粒 护发 防脱发 养发 快速生发', '', '', null, '', '0', '21年7月', '10', '19.50', '23.0', '23.0', '0.0', '0.07', '0.11', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('259', '0', '126', '0-68-126-', '0', '', '16', '0', '50', '（国内现货）Sambucol 小黑果抗感冒喉糖 20粒（国内现货）', 'CHN Sambucol Throat Lozenges 20', '现货小黑果喉糖', '20年12月到期', 'Sambucol 小黑果 黑接骨木 抗感冒 喉糖 20粒 现货', '', '', null, '', '0', '20年12月', '10', '7.20', '12.4', '12.4', '0.0', '0.06', '0.09', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('260', '0', '126', '0-68-126-', '0', '', '16', '0', '50', '(国内现货)Bayer拜耳sm33口腔凝胶10g(国内现货)', 'Bayer SM-33 （Export Only） 10g', '现货口腔凝胶', '20年7月到期', 'Bayer 拜耳 sm33 口腔 凝胶 牙龈 肿痛 软膏 舒缓凝胶 10g 口腔溃疡 现货', '', '', null, '', '0', '20年7月', '10', '7.80', '13.2', '13.2', '0.0', '0.02', '0.10', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('261', '0', '126', '0-68-126-', '0', '', '16', '0', '25', '（国内现货）Eaoron 南极冰川固态水神经酰胺爽肤水 120ML（国内现货）', 'Eaoron Ceramide Solid Water 120ML', '现货固态水', '', '现货 Eaoron 水光针 南极冰川固态水 神经酰胺爽肤水 120ML 补水 提亮 保湿 净润', '', '', null, '', '0', '', '10', '10.00', '15.7', '15.7', '0.0', '0.27', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('262', '0', '126', '0-68-126-', '0', '', '16', '0', '25', '（国内现货）Eaoron 素颜霜 50ml（国内现货）', 'CHN Eaoron Crystal White Brightening Day Cream 50ml', '现货素颜霜', '19年12月到期', '现货 Eaoron 水光针 素颜霜 50ml 裸妆 美白 保湿 补水 遮瑕 懒人霜', '', '', null, '', '0', '19年12月', '10', '0.00', '14.5', '14.5', '0.0', '0.21', '0.27', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('263', '0', '126', '0-68-126-', '0', '', '16', '0', '43', '（国内现货）Natio 面膜 100g（国内现货）', 'CHN Natio Ageless Hydrating Mask 100g', '现货natio面膜', '', 'Natio 面膜 100g 无龄 水凝 保湿 补水 控油 滋润 孕妇可用 现货', '', '', null, '', '0', '', '10', '0.00', '14.9', '14.9', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('264', '0', '126', '0-68-126-', '0', '', '16', '0', '43', '（国内现货）Natio 洗面奶 100g（国内现货）', 'CHN Natio Antioxidant Hand and Nail Cream 100g', '现货Natio洗面奶', '', 'Natio 洗面奶 100g 泡沫 洁面膏 温和 控油 香薰 深度洁净 祛垢 现货', '', '', null, '', '0', '', '10', '7.50', '13.7', '13.7', '0.0', '0.12', '0.15', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('265', '0', '126', '0-68-126-', '0', '', '16', '0', '24', '（国内现货）星期四农庄祛痘凝胶25g（国内现货）', 'Thursday Plantation Tea Tree Medicated Gel For Acne 25g', '现货祛痘凝胶', '23年12月到期', '星期四 农庄 祛痘 凝胶 25g 茶树 精油 祛痘 淡化 现货', '', '', null, '', '0', '23年12月', '10', '6.20', '10.4', '10.4', '0.0', '0.05', '0.08', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('266', '0', '126', '0-68-126-', '0', '', '16', '0', '22', '（国内现货）HC VC咀嚼片 500mg 500粒（国内现货）', 'Healthy Care Vitamin C 500mg Chewable 500 Tablets', '现货HC VC500粒', '21年2月到期', 'Healthy Care VC咀嚼片 500mg 500粒 抗氧化 免疫力 维生素 美白 淡斑 HC', '', '', null, '', '0', '21年2月', '10', '11.80', '20.8', '20.8', '0.0', '0.65', '0.85', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('267', '0', '126', '0-68-126-', '0', '', '16', '0', '50', '（国内现货）Melrose全能绿瘦子 200g（国内现货）', 'Melrose Essential Greens', '现货绿瘦子', '23年4月到期', '绿瘦子 全能绿瘦子 melrose 大麦草 现货', '', '', null, '', '0', '23年4月', '10', '20.00', '26.0', '26.0', '0.0', '0.30', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('268', '0', '126', '0-68-126-', '0', '', '16', '0', '50', '（国内现货）纽瑞优婴幼儿乳铁蛋白粉（蓝罐） 60G（国内现货）', 'CHN Neurio Rikachi Lactoferrin', '现货乳铁蛋白粉（蓝）', '22年5月到期', 'Neurio Rikachi Lactoferrin 纽瑞优婴幼儿乳铁蛋白粉（蓝罐） 60G 现货', '', '', null, '', '0', '22年5月', '10', '47.00', '61.0', '61.0', '0.0', '0.20', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('269', '0', '126', '0-68-126-', '0', '', '16', '0', '17', '（国内现货）雅培小安素奶粉 新版（香草味）（国内现货）', 'Abbott PediaSure Vanilla 850g', '现货小安素香草', '21年1月到期', '现货 Abbott 雅培 小安素 奶粉 新版（香草味） 850g 儿童', '', '', null, '', '0', '21年1月', '10', '36.50', '47.0', '47.0', '0.0', '1.20', '1.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('270', '0', '126', '0-68-126-', '0', '', '16', '0', '34', '（国内现货）Life Space 儿童益生菌 3岁-12岁 60g（国内现货）', 'Life Space Probiotic Powder For Children 60g CHN', '现货儿童益生菌20年6月', '20年6月到期', 'Life Space 儿童 益生菌 3岁 12岁 60g 抗过敏 肠胃 便秘 免疫力 腹胀 children 国内现货', '', '', null, '', '0', '20年6月', '10', '20.00', '24.0', '24.0', '0.0', '0.22', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('271', '0', '126', '0-68-126-', '0', '', '16', '0', '50', '（国内现货）Vierra 胜肽 35ml*7/盒（国内现货）', 'Vierra 55ml*7（Yellow）', '现货Vierra胜肽', '21年12月到期', 'Vierra 胜肽 35ml 口服精华 胶原蛋白现货', '', '', null, '', '0', '21年12月', '10', '28.30', '38.0', '38.0', '0.0', '0.75', '0.90', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('272', '0', '126', '0-68-126-', '0', '', '16', '0', '49', '（国内现货）Trilogy 有机玫瑰果油抗氧化 30ml（国内现货）', 'Trilogy Rosehip Oil Antioxidant + 30ml', '现货玫瑰果油30ml', '开盖6个月', 'Trilogy 有机玫瑰果油抗氧化 30ml 保湿 补水 面部 精华 抗氧化', '', '', null, '', '0', '开盖6个月', '10', '17.60', '22.0', '22.0', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('273', '0', '126', '0-68-126-', '0', '', '16', '0', '47', '（国内现货）Cemoy 安瓶（5ML*2支） 1盒（国内现货）', 'CHN Cemoy Placenta Serum（5ML*2）', '现货安瓶', '21年1月到期', 'Cemoy 安瓶 5ML 肌底液 补水 紧致 收缩毛孔 抗氧化 延衰老', '', '', null, '', '0', '21年1月', '10', '17.90', '21.5', '21.5', '0.0', '0.10', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('274', '0', '126', '0-68-126-', '0', '', '16', '0', '25', '（国内现货）EAORON 水光针2支+ 洁面套装（国内现货）', 'EAORON essence+cleanser set CHN', '现货水光针2+洁面套装', '', '水光针 洗面奶 三件套 水光针套装 国内现货 EAORON essence+cleanser set', '', '', null, '', '0', '', '10', '20.00', '31.0', '31.0', '0.0', '0.50', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('275', '0', '126', '0-68-126-', '0', '', '16', '0', '46', '（国内现货）Nair 脱毛膏 75g（国内现货）', 'Nair Hair Removing Cream Sensitive Skin 75g CHN', '现货脱毛膏', '23年3月到期', 'Nair 脱毛膏  Nair Hair Removing Cream Sensitive Skin 75g 国内现货', '', '', null, '', '0', '23年3月', '10', '2.00', '3.0', '3.0', '0.0', '0.10', '0.15', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('276', '0', '126', '0-68-126-', '0', '', '16', '0', '27', '（国内现货）Nulax 乐康片 原味 40粒（国内现货）', 'Nulax Natural Laxative Tablets With Prebiotic Senna + Aloe 40 Tablets CHN', '现货乐康片', '20年8月到期', 'Nulax 乐康片 原味 40粒 果蔬 水果 酵素 纤维 通肠 便秘 排毒 润肠 国内现货', '', '', null, '', '0', '20年8月', '10', '4.95', '8.8', '8.8', '0.0', '0.05', '0.08', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('277', '0', '126', '0-68-126-', '0', '', '16', '0', '22', '（国内现货）Healthy Care 金箔 羊胎素精华 50ml（国内现货）', 'Healthy Care Anti Ageing Gold Flake Face Serum 50ml CHN', '现货HC金箔50ml', '开盖12个月到期', 'Healthy Care 金箔 羊胎素 精华 50ml 面部 补水 保湿 毛孔收缩 提拉 紧致 抗氧化 修复 HC 国内现货', '', '', null, '', '0', '开盖12个月', '10', '9.80', '13.9', '13.9', '0.0', '0.15', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('278', '0', '126', '0-68-126-', '0', '', '16', '0', '26', '（国内现货）Comvita 蜂胶喷雾25ml 无酒精（国内现货）', 'Comvita Propolis Oral Spray  20mL CHN', '现货蜂胶喷雾', '21年5月到期', 'Comvita 麦卢卡 蜂胶 喷雾25ml 无酒精  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 康维他 国内现货', '', '', null, '', '0', '21年5月', '10', '10.80', '17.3', '17.3', '0.0', '0.10', '0.12', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('279', '0', '126', '0-68-126-', '0', '', '16', '0', '23', '（国内现货）Bio-oil 百洛油 200ml（国内现货）', 'Bio Oil 200ml CHN', '现货百洛油200ml', '23年11月到期', 'Bio-oil 百洛油 120ml 按摩油 妊娠纹 孕妇专用 肚子 肚皮 国内现货', '', '', null, '', '0', '23年11月', '10', '20.00', '20.5', '20.5', '0.0', '0.25', '0.28', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('280', '0', '126', '0-68-126-', '0', '', '16', '0', '54', '（国内现货）Proctosedyl Ointment痔疮膏30g（国内现货）', 'Proctosedyl  （Export Only） 30g CHN', '现货痔疮膏', '20年11月到期', 'Proctosedyl Ointment痔疮膏 30g 孕产妇可用 男女可用 安全有效 菊花膏 国内现货', '', '', null, '', '0', '20年11月', '10', '12.80', '17.4', '17.4', '0.0', '0.05', '0.10', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('281', '0', '126', '0-68-126-', '0', '', '16', '0', '9', '（国内现货）Blackmores澳佳宝 VE面霜 50g（国内现货）', 'Blackmores Natural Vitamin E Cream 50g CHN', '现货BMve面霜', '21年8月到期', 'Blackmores澳佳宝 VE面霜 50g 面霜 护肤 身体乳 补水 滋润 维生素e霜 冰冰霜 BM 国内现货', '', '', null, '', '0', '21年8月', '10', '6.00', '9.0', '9.0', '0.0', '0.07', '0.09', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('282', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse 高倍西芹籽 5000mg 50粒（国内现货）', 'Swisse High Strength Celery 5000mg 50 Capsules CHN', '现货sw西芹籽', '20年12月到期', 'Swisse 高倍西芹籽 5000mg 50粒 关节 缓解 痛风 神经系统 尿酸 风湿  SW 国内现货', '', '', null, '', '0', '20年12月', '10', '8.50', '11.0', '11.0', '0.0', '0.05', '0.08', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('283', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse 女士综合维生素50岁以上 90粒（国内现货）', 'Swisse Women\'s Ultivite 50+ 90 Tablets CHN', '现货SW女维50+90粒', '20年6月到期', 'Swisse 女士综合维生素50岁以上 90粒 免疫力 维生素 缓解疲劳 提高精力 延衰老 平衡营养 SW 女士维生素 女维 women 50+ 多维 国内现货', '', '', null, '', '0', '20年6月', '10', '28.80', '32.0', '32.0', '0.0', '0.22', '0.26', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('284', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse 清肺片 90粒（国内现货）', 'Swisse Ultiboost Lung Health Support 90 Tablets CHN', '现货sw清肺片', '21年7月到期', 'Swisse 清肺片 90粒 护肺片 润肺 粉尘 灰尘 雾霾 排毒 缓解 呼吸 止痰 天然  SW 国内现货', '', '', null, '', '0', '21年7月', '10', '23.80', '27.8', '27.8', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('285', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse 女士综合维生素50岁以下 120粒（国内现货）', 'Swisse Women\'s Ultivite 120 Tablets CHN', '现货sw女维120粒', '21年9月到期', 'Swisse 女士综合维生素50岁以下 120粒 免疫力 维生素 缓解疲劳 提高精力 延衰老 平衡营养 SW 女士维生素 女维 women 国内现货', '', '', null, '', '0', '21年9月', '10', '28.00', '31.2', '31.2', '0.0', '0.24', '0.28', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('286', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse 叶绿素片 100粒（国内现货）', 'Swisse Chlorophyll+ 100 Tablets CHN', '现货sw叶绿素片100粒', '20年8月到期', 'Swisse 叶绿素片 100粒 润肠 塑体 调理肠胃 免疫力 天然 排毒 抗氧化  SW 国内现货', '', '', null, '', '0', '20年8月', '10', '13.50', '16.9', '16.9', '0.0', '0.10', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('287', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse 男士综合维生素50岁以下 120粒（国内现货）', 'Swisse Men\'s Ultivite 120 Tablets CHN', '现货sw男维', '21年8月到期', 'Swisse 男士综合维生素50岁以下 120粒 免疫力 维生素 缓解疲劳 提高精力 延衰老 平衡营养 SW 男士维生素 男维 men 国内现货', '', '', null, '', '0', '21年8月', '10', '28.00', '31.2', '31.2', '0.0', '0.24', '0.28', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('288', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse 胶原蛋白片100粒（国内现货）', 'Swisse Ultiboost Hair Skin Nails+ 100 Tablets CHN', '现货sw蛋白片', '20年8月到期', 'Swisse 胶原蛋白片 100粒 护发 生甲 美容 胶原蛋白 排毒 亮肤 美白 淡斑 抗皱 SW（国内现货）', '', '', null, '', '0', '20年8月', '10', '16.00', '19.2', '19.2', '0.0', '0.14', '0.19', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('289', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse 护肝片 120粒（国内现货）', 'Swisse Ultiboost Liver Detox 120 Tablets CHN', '现货sw护肝120粒', '21年8月到期', 'Swisse 护肝片 120粒 缓解 舒缓 奶蓟草 加班 熬夜 抗氧化 排毒 抵抗力 解酒 SW 国内现货', '', '', null, '', '0', '21年8月', '10', '16.20', '20.5', '20.5', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('290', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse 维骨力1500mg 210粒（国内现货）', 'Swisse Glucosamine Sulfate 1500mg 210 Tablets CHN', '现货sw维骨力', '20年2月到期', 'Swisse 维骨力1500mg 210粒 软骨素 氨糖 骨骼 强健 关节灵 风湿性关节炎 骨质增生 肩周炎 SW 国内现货', '', '', null, '', '0', '20年2月', '10', '24.00', '30.9', '30.9', '0.0', '0.50', '0.65', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('291', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse 高倍无腥鱼油1500mg 400粒（国内现货）', 'Swisse Ultiboost Odourless High Strength Wild Fish Oil 1500mg 400 Capsules CHN', '现货sw大鱼油', '21年6月到期', 'Swisse 高倍无腥鱼油1500mg 400粒 控血压 降血脂 保护心血管 改善眼疲劳 免疫力 SW 国内现货', '', '', null, '', '0', '21年6月', '10', '19.80', '28.7', '28.7', '0.0', '1.00', '1.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('292', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse VD+大钙 150粒（国内现货）', 'Swisse Ultiboost Calcium + Vitamin D 150 Tablets CHN', '现货sw大钙', '21年1月到期', 'Swisse VD+钙 150粒 大钙 VD 娘娘钙 孕妇钙 柠檬酸钙 补钙 维生素 易吸收 不刺激 促吸收 SW 国内现货', '', '', null, '', '0', '21年1月', '10', '12.50', '18.0', '18.0', '0.0', '0.38', '0.47', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('293', '0', '126', '0-68-126-', '0', '', '16', '0', '60', '（国内现货）Femfresh 女性洗液 弱酸性 加强型 （百合）250ml（国内现货）', 'Femfresh Deodorising Wash 250ml CHN', '现货白色洗液', '20年4月到期', 'Femfresh 女性洗液 加强型 （百合）250ml 护理 私处 杀菌 止痒 去异味 炎症 国内现货', '', '', null, '', '0', '21年1月', '10', '3.60', '8.8', '8.8', '0.0', '0.30', '0.33', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('294', '0', '126', '0-68-126-', '0', '', '16', '0', '60', '（国内现货）Femfresh 女性洗液 弱酸性 日常性（洋甘菊） 250ml（国内现货）', 'Femfresh Daily Wash 250ml CHN', '现货透明洗液', '20年11月到期', 'Femfresh 女性洗液 日常性（洋甘菊） 250ml 护理 私处 杀菌 止痒 去异味 炎症 国内现货', '', '', null, '', '0', '20年11月', '10', '4.00', '8.8', '8.8', '0.0', '0.30', '0.33', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('295', '0', '126', '0-68-126-', '0', '', '16', '0', '34', '（国内现货）Life Space 儿童益生菌 3岁-12岁 60g（国内现货）', 'Life Space Probiotic Powder For Children 60g CHN', '现货儿童益生菌', '19年10月到期', 'Life Space 儿童 益生菌 3岁 12岁 60g 抗过敏 肠胃 便秘 免疫力 腹胀 children 国内现货', '', '', null, '', '0', '19年12月', '10', '20.00', '21.0', '21.0', '0.0', '0.22', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('296', '0', '126', '0-68-126-', '0', '', '16', '0', '34', '（国内现货）Life Space 婴儿益生菌 6个月-3岁 60g（国内现货）', 'Life Space Probiotic Powder For Baby 60g CHN', '现货baby益生菌', '20年6月到期', 'Life Space 婴儿 益生菌 6个月 3岁 60g 抗过敏 肠胃 便秘 免疫力 腹胀 baby 国内现货', '', '', null, '', '0', '20年6月', '10', '20.00', '23.5', '23.5', '0.0', '0.22', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('297', '0', '126', '0-68-126-', '0', '', '16', '0', '34', '（国内现货）Life Space 孕妇 哺乳期益生菌 60粒（国内现货）', 'Life Space Pregnancy & Breastfeeding Probiotic 60 Capsules CHN', '现货孕妇益生菌', '19年10月到期', 'Life Space 孕妇 哺乳期 益生菌 60粒 调整 肠胃 便秘 益生元 腹胀 pregnancy 国内现货', '', '', null, '', '0', '19年10月', '10', '20.00', '17.0', '17.0', '0.0', '0.18', '0.21', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('298', '0', '126', '0-68-126-', '0', '', '16', '0', '34', '（国内现货）Life Space 瘦身减肥塑形益生菌 60粒（国内现货）', 'Life Space Shape B420 Probiotic 60 Capsules CHN', '现货瘦身菌', '20年5月到期', 'Life Space 瘦身 减肥 塑形 益生菌 60粒 抗过敏 肠胃 便秘 免疫力 腹胀 b420 国内现货', '', '', null, '', '0', '20年5月', '10', '19.90', '23.5', '23.5', '0.0', '0.18', '0.21', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('299', '0', '126', '0-68-126-', '0', '', '16', '0', '46', '（国内现货）Banana Boat SPF 50+ 香蕉船婴儿滚珠防晒霜（粉） 75ml（国内现货）', 'Banana Boat SPF 50+ Baby 75ml Roll On CHN', '现货baby滚珠', '20年3月到期', 'Banana Boat SPF 50+ 香蕉船婴儿滚珠防晒霜（粉） 75ml 国内现货', '', '', null, '', '0', '20年3月', '10', '5.00', '10.5', '10.5', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('300', '0', '126', '0-68-126-', '0', '', '16', '0', '41', '（国内现货）Aveeno 婴儿儿童润肤霜139ml（国内现货）', 'Aveeno Baby Soothing Relief Fragrance Free Moisture Cream 140g CHN', '现货Aveeno深蓝139ml', '', 'Aveeno 艾维诺  婴儿 儿童 润肤霜139ml 保湿 润肤 温和 舒缓 湿疹 皲裂 深蓝 国内现货', '', '', null, '', '0', '', '10', '6.40', '10.0', '10.0', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('301', '0', '126', '0-68-126-', '0', '', '16', '0', '25', '（国内现货）Eaoron 蜂胶面膜8个装/盒（国内现货）', 'Eaoron Propolis Facial Mask 8 x 10ml Capsules CHN', '现货蜂胶面膜', '21年7月到期', 'Eaoron 水光针 蜂胶面膜 保湿 补水 紧致 睡眠 面膜 收缩毛孔 蜂蜜面膜 国内现货', '', '', null, '', '0', '21年7月', '10', '11.80', '16.4', '16.4', '0.0', '0.27', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('302', '0', '126', '0-68-126-', '0', '', '16', '0', '45', '（国内现货）Red seal 覆盆子茶助产茶（国内现货）', 'Red Seal Tea Raspberry 20 Teabags', '现货覆盆子茶', '19年9月到期', 'Red seal 覆盆子茶 助产茶 软化宫颈 草本茶 顺产茶 月子茶 促进分娩 国内现货', '', '', null, '', '0', '19年9月', '10', '3.30', '3.0', '3.0', '0.0', '0.07', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('303', '0', '126', '0-68-126-', '0', '', '16', '0', '11', '（国内现货）Bellamy\'s 贝拉米有机磨牙棒 6个月（国内现货）', 'Bellamy\'s Milk Rusks 6M+ CHN', '现货新磨牙棒', '20年5月到期', 'Bellamy\'s 贝拉米 有机 磨牙棒 6个月 婴儿 磨牙饼干 辅食 国内现货', '', '', null, '', '0', '20年5月', '10', '3.50', '7.9', '7.9', '0.0', '0.14', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('304', '0', '126', '0-68-126-', '0', '', '16', '0', '11', '（国内现货）Bellamy\'s 贝拉米有机婴儿米粉125g 原味米粉 4个月（国内现货）', 'Bellamy\'s Organic Baby Rice with Prebiotic 125g CHN', '现货米糊4+', '19年11月到期', 'Bellamy\'s 贝拉米 有机 米粉 125g 原味 4个月 婴儿 辅食 米糊 国内现货', '', '', null, '', '0', '19年11月', '10', '3.50', '8.0', '8.0', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('305', '0', '126', '0-68-126-', '0', '', '16', '0', '52', '（国内现货）Unichi 玫瑰果精华胶囊 美白丸 60粒（国内现货）', 'Unichi Rosehip Extract Complex 60 Capsules CHN', '现货unichi美白丸', '21年7月到期', 'Unichi 玫瑰果 精华胶囊 美白丸 60粒 美容 胶原蛋白 维生素c 亮肤 美白淡斑 国内现货', '', '', null, '', '0', '21年7月', '10', '18.50', '22.6', '22.6', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('306', '0', '126', '0-68-126-', '0', '', '16', '0', '52', '（国内现货）Unichi 丹拿葡萄籽精华胶囊 60粒（国内现货）', 'Unichi Tannat Grape Seed 26000mg 60 Capsules CHN', '现货unichi葡萄籽', '21年1月到期', 'Unichi 葡萄籽精华胶囊 60粒 美白 抗氧化 花青素 美白淡斑 防辐射 国内现货', '', '', null, '', '0', '21年1月', '10', '20.00', '22.5', '22.5', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('307', '0', '126', '0-68-126-', '0', '', '16', '0', '54', '（国内现货）Kincho kaoriring 驱蚊硅胶手环 30枚（国内现货）', 'Kincho KaroriRing CHN', '现货驱蚊手环', '', 'Kincho kaoriring 驱蚊手环 孕妇 儿童 宝宝 水果味 户外防蚊虫 国内现货', '', '', null, '', '0', '', '10', '6.40', '11.0', '11.0', '0.0', '0.05', '0.07', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('308', '0', '126', '0-68-126-', '0', '', '16', '0', '33', '（国内现货）B.box婴幼儿重力球吸管杯（葡萄紫色） 240ml（国内现货）', 'b.box Sippy Cup Grape 240ml CHN', '现货吸管杯（葡萄紫色）', '', 'B.box婴幼儿重力球吸管杯（葡萄紫色） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛  bbox 国内现货', '', '', null, '', '0', '', '10', '10.00', '13.5', '13.5', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('309', '0', '126', '0-68-126-', '0', '', '16', '0', '33', '（国内现货）B.box婴幼儿重力球吸管杯（荧光粉色） 240ml（国内现货）', 'b.box Sippy Cup Pink Pomegranate 240ml CHN', '现货吸管杯（荧光粉色）', '', 'B.box婴幼儿重力球吸管杯（荧光粉色） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛  bbox 国内现货', '', '', null, '', '0', '', '10', '10.00', '13.5', '13.5', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('310', '0', '126', '0-68-126-', '0', '', '16', '0', '33', '（国内现货）B.box婴幼儿重力球吸管杯（橙色） 240ml（国内现货）', 'b.box Sippy Cup Orange Zing 240ml CHN', '现货吸管杯（橙色）', '', 'B.box婴幼儿重力球吸管杯（橙色） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛  bbox 国内现货', '', '', null, '', '0', '', '10', '10.00', '13.5', '13.5', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('311', '0', '126', '0-68-126-', '0', '', '16', '0', '33', '（国内现货）B.box婴幼儿重力球吸管杯（玫红色） 240ml（国内现货）', 'b.box Sippy Cup Raspberry 240ml CHN', '现货吸管杯（树莓粉）', '', 'B.box婴幼儿重力球吸管杯（玫红色） 240ml 饮水杯 防漏 学饮杯 宝宝 防呛 bbox 国内现货', '', '', null, '', '0', '', '10', '10.00', '13.5', '13.5', '0.0', '0.13', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('312', '0', '126', '0-68-126-', '0', '', '16', '0', '56', '（国内现货）Contigo 儿童吸管水杯 男孩 三个装/套 414ml*3（国内现货）', 'Contigo Kids Cup Set (Boy) CHN', '现货contigo男孩水杯', '', 'Contigo 吸管杯 运动 男孩 儿童 水杯 国内现货', '', '', null, '', '0', '', '10', '18.00', '29.6', '29.6', '0.0', '0.80', '1.10', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('313', '0', '126', '0-68-126-', '0', '', '16', '0', '56', '（国内现货）Contigo 儿童吸管水杯 女孩 三个装/套 414ml*3（国内现货）', 'Contigo Kids Cup Set (Girl) CHN', '现货contigo女孩水杯', '', 'Contigo 吸管杯 运动 女孩 儿童 水杯 国内现货', '', '', null, '', '0', '', '10', '18.00', '26.0', '26.0', '0.0', '0.80', '1.10', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('314', '0', '126', '0-68-126-', '0', '', '16', '0', '25', '（国内现货）Eaoron 水光乳 120ml（国内现货）', 'Eaoron Hyaluronic Lotion CHN', '现货水光乳', '开盖12个月到期', 'Eaoron 水光针 水光乳 120ml 乳液 玻尿酸 保湿 滋润 修护 孕妇可用 国内现货', '', '', null, '', '0', '开盖12个月', '10', '9.50', '16.9', '16.9', '0.0', '0.27', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('315', '0', '126', '0-68-126-', '0', '', '16', '0', '25', '（国内现货）Eaoron 水光水 120ml（国内现货）', 'Eaoron Hyaluronic Toner CHN', '现货水光水', '开盖12个月到期', 'Eaoron 水光针 水光水 120ml 对抗干燥 深层补水 提亮肤色 通透亮泽 国内现货', '', '', null, '', '0', '开盖12个月', '10', '9.50', '16.9', '16.9', '0.0', '0.27', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('316', '0', '126', '0-68-126-', '0', '', '16', '0', '46', '（国内现货）Unichi Forty Fathoms 海四十噚面霜 50ml（国内现货）', 'Unichi Forty Fathoms Skin Regenerator Cream 50ml  CHN', '现货四十面霜', '20年1月到期', 'Unichi Forty Fathoms 深海四十噚面霜 50ml 神奇面霜 修复 敏感肌 孕妇可用 国内现货', '', '', null, '', '0', '20年1月', '10', '40.00', '41.2', '41.2', '0.0', '0.16', '0.19', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('317', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse 摩洛哥坚果眼霜 15ml（国内现货）', 'Swisse Argan Anti Ageing Eye Cream 15ml CHN', '现货sw眼霜', '开盖12个月到期', 'Swisse 摩洛哥坚果眼霜15ml坚果精华淡化黑眼圈 sw 去皱眼霜 15ml 提拉紧致 去除浮肿 眼部 脂肪粒 国内现货', '', '', null, '', '0', '开盖12个月', '10', '8.80', '13.8', '13.8', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('318', '0', '126', '0-68-126-', '0', '', '16', '0', '46', '（国内现货）Royal Nectar 蜂毒面膜 50ml（国内现货）', 'Royal Nectar Original Face Mask 50ml CHN', '现货蜂毒面膜', '20年11月到期', 'Royal Nectar 蜂毒 面膜 50ml 保湿 补水 收缩 毛孔 深层补水 国内现货', '', '', null, '', '0', '', '10', '35.00', '34.9', '34.9', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('319', '0', '126', '0-68-126-', '0', '', '16', '0', '3', '（国内现货）Nature\'s Way 儿童Omega3+鱼油软糖 透明瓶 60粒', 'Nature\'s Way Kids Smart Gummies Omega 3 Fish Oil 60 Pastilles CHN', '现货NW透明软糖', '19年8月到期', 'Nature\'s Way 佳思敏 儿童Omega3+鱼油软糖 透明瓶 60粒 dha 记忆力 脑力 发育 维生素 免疫力 NW 国内现货', '', '', null, '', '0', '19年8月', '10', '7.50', '3.0', '3.0', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('320', '0', '126', '0-68-126-', '0', '', '16', '0', '3', '（国内现货）Nature\'s Way 儿童综合+蔬菜软糖 60粒 （国内现货）', 'Nature\'s Way Kids Smart Vita Gummies Multi Vitamin & Vegies 60 Gummies', '现货NW蔬菜软糖', '19年9月', 'Nature\'s Way 佳思敏 儿童综合+蔬菜软糖 60粒 果蔬精华 维生素 微量元素 抵抗力 免疫力 NW 国内现货', '', '', null, '', '0', '19年9月', '10', '7.50', '6.0', '6.0', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('321', '0', '126', '0-68-126-', '0', '', '16', '0', '3', '（国内现货）Nature\'s Way 儿童感冒免疫软糖 60粒 （国内现货）', 'Nature\'s Way Kids Smart Vita Gummies Immunity 60 Pastilles CHN', '现货NW感冒软糖', '20年5月到期', 'Nature\'s Way 佳思敏 儿童感冒免疫软糖 60粒 免疫力 流感 发烧 喉咙痛 NW', '', '', null, '', '0', '20年5月', '10', '7.50', '11.5', '11.5', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('322', '0', '126', '0-68-126-', '0', '', '16', '0', '3', '（国内现货）Nature\'s Way 儿童厌食综合维生素软糖 60粒（国内现货）', 'Nature\'s Way Kids Smart Vita Gummies Multi Vitamin for Fussy Eaters 60 Pastilles CHN', '现货NW挑食软糖', '20年5月到期', 'Nature\'s Way 佳思敏 儿童厌食综合维生素软糖 60粒 复合营养 挑食 食欲 维生素 免疫力 NW 国内现货', '', '', null, '', '0', '20年5月', '10', '7.50', '11.5', '11.5', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('323', '0', '126', '0-68-126-', '0', '', '16', '0', '50', '（国内现货）Sambucol 小黑果儿童免疫软糖 50粒（国内现货）', 'Sambucol Kids Immunity 50 Gummies CHN', '现货小黑果软糖', '20年8月到期', 'Sambucol 小黑果  黑接骨木 儿童 免疫软糖  50粒 国内现货', '', '', null, '', '0', '20年8月', '10', '9.00', '14.0', '14.0', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('324', '0', '126', '0-68-126-', '0', '', '16', '0', '3', '（国内现货）Nature\'s Way 香草味代餐奶昔 375g（国内现货）', 'Nature\'s Way SlimRight Shake Vanilla Flavor 375g CHN', '现货NW香草奶昔', '19年12月到期', 'Nature\'s Way Slim Right 代餐奶昔 香草味 375g NW 代餐粉 抵抗力 免疫力 低糖 国内现货', '', '', null, '', '0', '19年12月', '10', '6.00', '13.0', '13.0', '0.0', '0.48', '0.68', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('325', '0', '126', '0-68-126-', '0', '', '16', '0', '22', '（国内现货）Healthy Care 蜂王浆胶囊1000 365粒（国内现货）', 'Healthy Care Royal Jelly 1000 365 Capsules CHN', '现货HC蜂王浆', '21年2月', 'Healthy Care 蜂王浆胶囊1000 365粒 提高 免疫力 延缓 衰老 改善 睡眠 营养补充 养颜 排毒 HC 国内现货', '', '', null, '', '0', '21年2月', '10', '26.00', '33.0', '33.0', '0.0', '0.70', '0.90', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('326', '0', '126', '0-68-126-', '0', '', '16', '0', '50', '（国内现货）Meta Mucil 膳食纤维粉 橙子味 673g 114次（国内现货）', 'Metamucil Fibre Supplement Smooth Orange 114 Dose 673g CHN', '现货纤维粉673g', '21年7月到期', 'Meta Mucil 膳食纤维粉 橙子味 673g 果蔬纤维素 低热量 饱腹 代餐 便秘 通便 排毒 润肠 国内现货', '', '', null, '', '0', '21年7月', '10', '17.20', '25.5', '25.5', '0.0', '0.80', '1.05', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('327', '0', '126', '0-68-126-', '0', '', '16', '0', '50', '（国内现货）Prospan 小青蛙止咳液 200ml （国内现货）', 'Prospan Chesty Cough Children\'s (Ivy Leaf)  200ml CHN', '现货小青蛙', '19年10月到期', 'Prospan 小青蛙 止咳液 200ml 纯天然 婴幼儿 儿童 澳洲 感冒', '', '', null, '', '0', '19年10月', '10', '10.23', '9.0', '9.0', '0.0', '0.50', '0.60', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('328', '0', '126', '0-68-126-', '0', '', '16', '0', '8', '（国内现货）Swisse 胶原蛋白液 500ml（国内现货）', 'Swisse Ultiboost Hair Skin Nails 500ml CHN', '现货SW胶原液', '20年1月到期', 'Swisse 胶原蛋白液 500ml 护发 生甲 美容 胶原蛋白 排毒 亮肤 美白 淡斑 抗皱 SW 国内现货', '', '', null, '', '0', '20年1月', '10', '16.50', '22.0', '22.0', '0.0', '0.60', '0.70', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('329', '0', '126', '0-68-126-', '0', '', '16', '0', '22', '（国内现货）Healthy Care 羊奶片 巧克力味 300粒（国内现货）', 'Healthy Care Goat Milk Chocolate 300 Tablets CHN', '现货HC羊奶片巧克力味', '20年5月到期', 'Healthy Care 羊奶咀嚼片 巧克力味 300粒 儿童 免疫力 促发育 蛋白质 肠胃 调理 体质 HC 国内现货', '', '', null, '', '0', '20年5月', '10', '6.50', '10.5', '10.5', '0.0', '0.25', '0.31', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('330', '0', '126', '0-68-126-', '0', '', '16', '0', '22', '（国内现货）Healthy Care 角鲨烯 200粒 1000mg（国内现货）', 'Healthy Care Squalene 1000mg 200 Capsules CHN', '现货HC角鲨烯', '20年2月到期', 'Healthy Care 角鲨烯 200粒 1000mg 提神 抗疲劳 精神 保护心脑 排毒 提高氧含量 净化血液 HC 国内现货', '', '', null, '', '0', '20年2月', '10', '21.50', '23.0', '23.0', '0.0', '0.40', '0.50', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('331', '0', '126', '0-68-126-', '0', '', '16', '0', '22', '（国内现货）Healthy Care 葡萄籽 300粒（国内现货）', 'Healthy Care Grape Seed Extract 12000 Gold Jar 300 Capsules CHN', '现货HC葡萄籽', '19年10月到期', 'Healthy Care 葡萄籽 300粒 美白 抗氧化 花青素 美白淡斑 防辐射  HC  国内现货', '', '', null, '', '0', '19年10月', '10', '15.00', '13.5', '13.5', '0.0', '0.25', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('332', '0', '126', '0-68-126-', '0', '', '16', '0', '36', '（国内现货）BIO-E 柠檬酵素 500ml（国内现货）', 'Bio-E Lemon Manuka Juice 500ml（CHN）', '现货bio柠檬酵素', '21年4月到期', 'BIO-E 柠檬 酵素 500ml 益生菌 分解油脂 新城代谢 便秘 肠胃调理 润肠 国内现货', '', '', null, '', '0', '21年4月', '10', '16.80', '24.7', '24.7', '0.0', '0.60', '0.70', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('333', '0', '126', '0-68-126-', '0', '', '16', '0', '22', '（国内现货）Healthy Care 牛初乳粉 300g（现货）', 'Healthy Care Colostrum Powder 300g CHN', '现货HC牛初乳粉', '21年6月到期', 'Healthy Care 牛初乳粉 300g  儿童 免疫力 促发育 蛋白质 肠胃 调理 体质 缓解疲劳 HC 国内现货', '', '', null, '', '0', '21年6月', '10', '9.99', '16.5', '16.5', '0.0', '0.40', '0.55', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('334', '0', '126', '0-68-126-', '0', '', '16', '0', '18', '（国内现货）Bio Island 长高素一段 150g（国内现货）', 'Bio Island Lysine Starter for Kids 150g Oral Powder CHN', '现货bio长高1段', '21年10月到期', 'Bio Island 生物岛 赖氨酸 助长粉 长高素一段 150g 长身高 提智力 促增长 食欲 免疫力', '', '', null, '', '0', '21年10月', '10', '17.90', '21.5', '21.5', '0.0', '0.22', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('335', '0', '126', '0-68-126-', '0', '', '16', '0', '55', '（国内现货）Ostelin 成人钙+vd 300粒（国内现货）', 'Ostelin Calcium & Vitamin D3 300 Tablets CHN', '现货ost成人钙', '21年6月到期', 'Ostelin 成人维生素 D3钙 300粒 青少年 中老年 成人钙 孕妇补钙 钙片 国内现货', '', '', null, '', '0', '21年6月', '10', '25.00', '31.2', '31.2', '0.0', '0.60', '0.66', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('336', '0', '126', '0-68-126-', '0', '', '16', '0', '18', '（国内现货）Bio Island 袋鼠精 90粒（国内现货）', 'Bio Island Kangaroo Essence 50000 90 Vege Capsules CHN', '现货bio袋鼠精', '21年11月到期', 'Bio Island 生物岛 袋鼠精 90粒 补充体力 生殖健康 雄性激素 免疫力 提高精子活力 国内现货', '', '', null, '', '0', '21年11月', '10', '13.40', '17.9', '17.9', '0.0', '0.13', '0.16', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('337', '0', '126', '0-68-126-', '0', '', '16', '0', '18', '（国内现货）Bio Island 婴幼儿鳕鱼油 鱼肝油 90粒 （国内现货）', 'Bio Island Cod Liver + Fish Oil Kids 90 Capsules CHN', '现货bio鱼油', '22年2月到期', 'Bio Island 生物岛 婴幼儿鳕鱼油 鱼肝油 90粒 大脑发育 视力 长身体 免疫力 fish oil', '', '', null, '', '0', '22年2月', '10', '16.50', '19.0', '19.0', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('338', '0', '126', '0-68-126-', '0', '', '16', '0', '18', '（国内现货）Bio Island 儿童锌片 小熊锌片 120粒（国内现货）', 'Bio Island Zinc 120 Chewable Tablets CHN', '现货bio锌', '21年11月到期', 'Bio Island 生物岛 儿童锌片 小熊锌片 120粒 咀嚼片 改善 食欲 促发育 挑食 均衡营养 免疫力 zinc', '', '', null, '', '0', '21年11月', '10', '11.50', '14.5', '14.5', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('339', '0', '126', '0-68-126-', '0', '', '16', '0', '18', '（国内现货）Bio Island 婴幼儿DHA 海藻油 60粒(国内现货)', 'Bio Island DHA Kids 60 Capsules CHN', '现货Bio DHA', '21年12月到期', 'Bio Island 生物岛 婴幼儿DHA 海藻油 60粒 营养 维生素 呵护 眼脑 促发育 聪明 dha bio BIO 国内现货', '', '', null, '', '0', '21年12月', '10', '13.00', '16.5', '16.5', '0.0', '0.08', '0.11', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('340', '0', '126', '0-68-126-', '0', '', '16', '0', '5', '（国内现货）新版爱他美白金 四段X1(国内现货) 保质期到20年10月', 'Aptamil Profutura Junior Nutritional Supplement 900g', '现货新P4', '保质期到20年10月', 'Aptamil 爱他美 奶粉 900g 白金装 铂金装 4段 4阶段 婴儿奶粉 p4 国内现货 新版', '', '', null, '', '0', '', '10', '0.00', '43.0', '43.0', '0.0', '1.20', '1.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('341', '0', '126', '0-68-126-', '0', '', '16', '0', '11', '（国内现货）老版贝拉米 三段X1(国内现货) 保质期到20年3月', 'Bellamy\'s Organic Toddler Milk Drink Step 3 900g', '现货贝3', '保质期到20年3月', 'bellamy\'s 贝拉米 婴儿 奶粉 900g 3段 3阶段 b3 国内现货', '', '', null, '', '0', '', '10', '0.00', '30.5', '30.5', '0.0', '1.20', '1.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('342', '0', '126', '0-68-126-', '0', '', '16', '0', '11', '（国内现货）老版贝拉米 一段X1(国内现货) 保质期到20年11月', 'Bellamy\'s Organic Infant Formula Step 1 900g', '现货贝1', '保质期到20年11月', 'bellamy\'s 贝拉米 婴儿 奶粉 900g 1段 1阶段 b1 国内现货', '', '', null, '', '0', '20年11月', '10', '0.00', '28.5', '28.5', '0.0', '1.20', '1.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('343', '0', '126', '0-68-126-', '0', '', '16', '0', '5', '（国内现货）爱他美白金 四段X1(国内现货) 保质期到20年4月', 'Aptamil Profutura Junior Nutritional Supplement 900g', '现货P4', '保质期到20年4月', 'Aptamil 爱他美 奶粉 900g 白金装 铂金装 4段 4阶段 婴儿奶粉 p4 国内现货', '', '', null, '', '0', '20年4月', '10', '0.00', '38.0', '38.0', '0.0', '1.20', '1.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('344', '0', '126', '0-68-126-', '0', '', '16', '0', '5', '（国内现货）爱他美金装 四段X1(国内现货) 保质期到19年8月', 'Aptamil Gold+ 4 Junior Nutritional Supplement From 2 years 900g', '现货K4', '保质期到19年8月', 'Aptamil 爱他美 奶粉 900g 金装 4段 4阶段 婴儿奶粉 国内现货', '', '', null, '', '0', '19年8月', '10', '0.00', '15.0', '15.0', '0.0', '1.20', '1.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('345', '0', '126', '0-68-126-', '0', '', '16', '0', '4', '（国内现货）A2铂金 四段X1(国内现货) 保质期到19年12月', 'A2 Junior Stage 4 900g', '现货A4', '保质期到19年12月', 'A2 a2 婴儿 奶粉 900g 铂金装 白金装  4段 4阶段 国内现货', '', '', null, '', '0', '', '10', '0.00', '28.0', '28.0', '0.0', '1.20', '1.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('346', '0', '126', '0-68-126-', '0', '', '16', '0', '11', '（国内现货）老版贝拉米 二段X1(国内现货) 保质期到21年2月', 'Old Bellamy\'s Organic Follow On Formula Step 2 900g', '现货老b2', '保质期到21年2月', '婴儿奶粉 900g 国内现货 bellamy\'s 贝拉米 婴儿 奶粉 900g 2段 2阶段 b2 老版贝拉米奶粉2段', '', '', null, '', '0', '21年2月', '10', '0.00', '28.5', '28.5', '0.0', '1.20', '1.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('347', '0', '126', '0-68-126-', '0', '', '16', '0', '5', '（国内现货）爱他美金装 一段X1(国内现货) 保质期到20年3月', 'Aptamil Gold+ 1 Infant Formula 0-6 Months 900g', '现货K1', '保质期到20年3月', 'Aptamil 爱他美 奶粉 900g 金装 1段 1阶段 婴儿奶粉 k1 婴儿奶粉 900g 国内现货', '', '', null, '', '0', '20年3月', '10', '0.00', '29.0', '29.0', '0.0', '1.20', '1.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('348', '0', '126', '0-68-126-', '0', '', '16', '0', '37', '（国内现货）S26金装 三段X1(国内现货) 保质期到20年6月', 'S26 Gold Alula Toddler 900g', '现货S26金装-3', '保质期到20年6月', 'S26  惠氏  金装 三段 婴儿奶粉 900g 国内现货', '', '', null, '', '0', '20年6月', '10', '0.00', '39.5', '39.5', '0.0', '1.20', '1.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('349', '0', '126', '0-68-126-', '0', '', '16', '0', '37', '（国内现货）S26金装 一段X1(国内现货) 保质期到19年12月', 'S26 Gold Alula Newborn 900g', '现货S26金装-1', '保质期到19年12月', 'S26  惠氏  金装 一段 婴儿奶粉 900g 国内现货', '', '', null, '', '0', '19年12月', '10', '0.00', '21.0', '21.0', '0.0', '0.00', '0.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('350', '0', '126', '0-68-126-', '0', '', '16', '0', '37', '（国内现货）S26金装 四段X1((国内现货) 保质期到20年5月', 'S26 Gold Alula Junior 900g', '现货S26金装-4', '保质期到20年5月', 'S26 惠氏 金装 四段 婴儿奶粉 900g 现货', '', '', null, '', '0', '20年5月', '10', '0.00', '19.3', '19.3', '0.0', '0.00', '0.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('351', '0', '70', '0-70-', '47', '0-46-47-', '3', '0', '4', 'A2小安素便携装 4*30g', 'A2 milk nutrition for growth 4*30g', 'A2便携装儿童奶粉4x30g', '', 'A2 小安素 试用装 便携装 儿童 成长奶粉', '', '', null, '', '0', '20年3月', '10', '0.00', '3.0', '3.0', '0.0', '0.16', '0.21', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('352', '0', '70', '0-70-', '29', '0-4-29-', '4', '0', '8', '新版 Swisse 护肝片 120粒', 'New Swisse Ultiboost Liver Detox 120 Tablets', 'sw新护肝120粒', '', 'Swisse 新版护肝片 120粒 缓解 舒缓 奶蓟草 加班 熬夜 抗氧化 排毒 抵抗力 解酒 SW', '', '', null, '', '0', '21年11月', '10', '16.70', '16.5', '16.5', '0.0', '0.16', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('353', '0', '70', '0-70-', '29', '0-4-29-', '4', '0', '22', 'Healthy Care 辅酶Q10 150mg 100粒', 'Healthy Care CoEnzyme Q10 150mg 100 Capsules', 'HC Q10 100粒', '动力之源 生命之“酶”', 'Healthy Care 辅酶Q10 150mg 100粒 保护心脏 延缓衰老 畅通 血管 增强活力  HC', '', '', null, '', '0', '21年9月', '10', '16.50', '17.5', '17.5', '0.0', '0.20', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('354', '0', '70', '0-70-', '29', '0-4-29-', '4', '0', '8', 'Swisse 护肝片 120粒', 'Swisse Ultiboost Liver Detox 120 Tablets', 'SW护肝120粒', '解酒助消化', 'Swisse 护肝片 120粒 缓解 舒缓 奶蓟草 加班 熬夜 抗氧化 排毒 抵抗力 解酒 SW', '', '', null, '', '0', '21年8月', '10', '16.20', '16.0', '16.0', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('355', '0', '70', '0-70-', '29', '0-4-29-', '4', '0', '8', 'Swisse 护肝片 200粒', 'Swisse Ultiboost Liver Detox 200 Tablets', 'SW护肝200粒', '解酒助消化', 'Swisse 护肝片 200粒 缓解 舒缓 奶蓟草 加班 熬夜 抗氧化 排毒 抵抗力 解酒 SW', '', '', null, '', '0', '21年11月', '10', '22.30', '21.8', '21.8', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('356', '0', '70', '0-70-', '22', '0-4-22-', '4', '0', '9', 'Blackmores澳佳宝 维骨力180粒', 'Blackmores Glucosamine Sulfate 1500mg  180 Tablets', 'BM维骨力', '高端关节养护', 'Blackmores澳佳宝 维骨力180粒 软骨素 氨糖 骨骼 强健 关节灵 风湿性关节炎 骨质增生 肩周炎 BM', '', '', null, '', '0', '20年11月', '10', '23.00', '22.5', '22.5', '0.0', '0.46', '0.56', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('357', '0', '70', '0-70-', '21', '0-4-21-', '4', '0', '22', 'Healthy Care 蜂胶 2000mg 200粒', 'Healthy Care Propolis 2000mg 200 Capsules', 'HC蜂胶200粒', '金装黑蜂胶 人体保护盾', 'Healthy Care 蜂胶 2000mg 200粒 增强体质 控制 三高 健康 肠胃 免疫力 排毒养颜  HC', '', '', null, '', '0', '22年2月', '10', '13.50', '12.9', '12.9', '0.0', '0.43', '0.53', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('358', '0', '70', '0-70-', '21', '0-4-21-', '4', '0', '22', 'Healthy Care 卵磷脂1200mg 100粒', 'Healthy Care Super Lecithin 1200mg 100 Capsules', 'HC卵磷脂100粒', '血管清道夫', 'Healthy Care 卵磷脂1200mg 100粒 清理血管 高血糖 高血压 高血脂 记忆力 糖尿病  HC', '', '', null, '', '0', '21年8月', '10', '6.50', '6.2', '6.2', '0.0', '0.26', '0.32', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('359', '0', '70', '0-70-', '21', '0-4-21-', '4', '0', '8', 'Swisse 高倍无腥鱼油1500mg 400粒', 'Swisse Ultiboost Odourless High Strength Wild Fish Oil 1500mg 400 Capsules', 'SW高倍鱼油400粒', '来自深海的“清道夫”', 'Swisse 高倍无腥鱼油1500mg 400粒 控血压 降血脂 保护心血管 改善眼疲劳 免疫力 SW', '', '', null, '', '0', '21年6月', '10', '19.80', '18.5', '18.5', '0.0', '1.00', '1.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('360', '0', '70', '0-70-', '21', '0-4-21-', '4', '0', '9', 'Blackmores澳佳宝 深海原味鱼油1000mg 400粒', 'Blackmores Fish Oil 1000mg 400 Capsules', 'BM原味鱼油400粒', '守护心脑血管', 'Blackmores澳佳宝 深海原味鱼油1000mg 400粒 控血压 降血脂 保护心血管 改善眼疲劳 免疫力 BM', '', '', null, '', '0', '21年8月', '10', '14.30', '14.0', '14.0', '0.0', '0.66', '0.86', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('361', '0', '70', '0-70-', '21', '0-4-21-', '4', '0', '9', 'Blackmores澳佳宝 深海无腥鱼油1000mg 400粒', 'Blackmores Odourless Fish Oil 1000mg 400 Capsules', 'BM无腥鱼油400粒', '守护心脑血管', 'Blackmores澳佳宝 深海无腥鱼油1000mg 400粒 控血压 降血脂 保护心血管 改善眼疲劳 免疫力 BM', '', '', null, '', '0', '20年8月', '10', '16.30', '15.9', '15.9', '0.0', '0.66', '0.86', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('362', '0', '70', '0-70-', '122', '0-10-122-', '4', '0', '8', 'Swisse VD+大钙 150粒', 'Swisse Ultiboost Calcium + Vitamin D 150 Tablets', 'SW大钙150粒', '一款老少皆宜的钙', 'Swisse VD+钙 150粒 大钙 VD 娘娘钙 孕妇钙 柠檬酸钙 补钙 维生素 易吸收 不刺激 促吸收 SW', '', '', null, '', '0', '21年4月', '10', '12.50', '11.8', '11.8', '0.0', '0.38', '0.47', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('363', '0', '70', '0-70-', '122', '0-10-122-', '4', '0', '9', 'Blackmores澳佳宝 孕妇黄金素 180粒', 'Blackmores Pregnancy and Breastfeeding Gold 180 Capsules', 'BM黄金素', '20种营养 做健康孕妈', 'Blackmores澳佳宝 孕妇黄金素 180粒 备孕 孕期 哺乳期 dha 叶酸 维生素 营养素 BM 孕黄', '', '', null, '', '0', '20年10月', '10', '26.80', '25.5', '25.5', '0.0', '0.35', '0.45', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('364', '0', '70', '0-70-', '0', '', '4', '0', '50', 'BIO-E 晚安溶脂片', 'bio-e sleep', 'bio-e溶脂片', '减脂瘦身 刘涛同款', '澳洲bio-e晚安溶脂片睡眠片褪黑素夜间酵素减脂瘦身刘涛同款', '', '', null, '', '0', '22年5月', '10', '27.00', '29.0', '29.0', '0.0', '0.09', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('365', '0', '72', '0-11-72-', '0', '', '6', '0', '42', 'Streamland 新溪岛蔓越莓蜜500g', 'Streamland Cranberry \'n Honey 500g', '蔓越莓蜜', '排毒养颜的秘密', 'Streamland 新溪岛 蔓越莓蜜 500g  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 蜂蜜', '', '', null, '', '0', '20年5月', '10', '11.50', '9.9', '9.9', '0.0', '0.55', '0.60', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('366', '0', '72', '0-11-72-', '0', '', '6', '0', '42', 'Streamland 新溪岛儿童蜜500g', 'Streamland Kids Honey 500g', '儿童蜜', '排毒养颜的秘密', 'Streamland 新溪岛 儿童蜜 500g 天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 蜂蜜', '', '', null, '', '0', '23年3月', '10', '11.50', '11.4', '11.4', '0.0', '0.55', '0.60', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('367', '0', '72', '0-11-72-', '0', '', '6', '0', '42', 'Streamland 新溪岛玫瑰蜜500g', 'Streamland Rose Honey 500g', '玫瑰蜜', '排毒养颜的秘密', 'Streamland 新溪岛 玫瑰蜜 500g 天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 蜂蜜', '', '', null, '', '0', '19年9月', '10', '14.00', '15.0', '15.0', '0.0', '0.43', '0.53', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('368', '0', '72', '0-11-72-', '0', '', '6', '0', '42', 'Streamland 新溪岛柠檬蜜500g', 'Streamland Lemon \'n Honey 500g', '柠檬蜜', '排毒养颜的秘密', 'Streamland 新溪岛 柠檬蜜 500g 天然  维C 美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 蜂蜜', '', '', null, '', '0', '20年9月', '10', '11.90', '12.5', '12.5', '0.0', '0.55', '0.60', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('369', '0', '73', '0-11-73-', '0', '', '5', '0', '26', 'Comvita 康维他 20+ 250g', 'Comvita UMF 20+ Manuka Honey 250g', '20+ 250g', '全球罕有纯净好蜜', 'Comvita 麦卢卡 康维他 20+ 250g  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 蜂蜜', '', '', null, '', '0', '21年5月', '10', '105.00', '110.0', '110.0', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('370', '0', '73', '0-11-73-', '0', '', '5', '0', '26', 'Comvita 康维他 18+ 250g', 'Comvita UMF 18+ Manuka Honey 250g', '18+ 250g', '全球罕有纯净好蜜', 'Comvita 麦卢卡 康维他 18+ 250g  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 蜂蜜', '', '', null, '', '0', '20年11月', '10', '82.00', '88.0', '88.0', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('371', '0', '73', '0-11-73-', '0', '', '5', '0', '26', '新包装 Comvita 康维他 15+ 250g', 'Comvita UMF 15+ Manuka Honey 250g', '15+ 250g', '全球罕有纯净好蜜', 'Comvita 麦卢卡 康维他 15+ 250g  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 蜂蜜', '', '', null, '', '0', '22年3月', '10', '59.00', '62.0', '62.0', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('372', '0', '73', '0-11-73-', '0', '', '6', '0', '26', '新包装 Comvita 康维他 10+ 500g', 'Comvita Active 10+ Manuka Honey 500g', '10+ 500g', '全球罕有纯净好蜜', 'Comvita 麦卢卡 康维他 10+ 500g  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 蜂蜜', '', '', null, '', '0', '22年1月', '10', '46.50', '49.0', '49.0', '0.0', '0.55', '0.65', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('373', '0', '73', '0-11-73-', '0', '', '6', '0', '26', 'Comvita 康维他 百花蜜 500g', 'Manuka Health MGO Manuka Honey 500g', '百花蜜500g', '全球罕有纯净好蜜', 'Comvita 麦卢卡 康维他 百花蜜 500g  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 蜂蜜', '', '', null, '', '0', '', '10', '12.00', '14.0', '14.0', '0.0', '0.55', '0.60', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('374', '0', '73', '0-11-73-', '0', '', '6', '0', '26', '新包装 Comvita 康维他 5+ 1kg', 'Comvita UMF 5+ Manuka Honey 1kg', '5+ 1kg', '全球罕有纯净好蜜', '新包装 麦卢卡 康维他 5+ 1kg 天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 蜂蜜', '', '', null, '', '0', '21年12月', '10', '46.50', '49.0', '49.0', '0.0', '1.08', '1.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('375', '0', '73', '0-11-73-', '0', '', '6', '0', '26', 'Comvita 康维他 5+ 1kg', 'Comvita Active 5+ Manuka Honey 1kg', '5+ 1kg', '全球罕有纯净好蜜', 'Comvita 麦卢卡 康维他 5+ 1kg  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 蜂蜜', '', '', null, '', '0', '21年7月', '10', '46.50', '52.0', '52.0', '0.0', '1.10', '1.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('376', '0', '73', '0-11-73-', '0', '', '6', '0', '26', 'Comvita 康维他 5+ 500g', 'Comvita Active 5+ Manuka Honey 500g', '5+ 500g', '全球罕有纯净好蜜', 'Comvita 麦卢卡 康维他 5+ 500g  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 蜂蜜', '', '', null, '', '0', '21年7月', '10', '22.00', '24.0', '24.0', '0.0', '0.55', '0.65', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('377', '0', '73', '0-11-73-', '86', '0-7-86-', '4', '0', '26', 'Comvita 蜂胶喷雾25ml 无酒精', 'Comvita Propolis Oral Spray  20mL', '康维他喷雾', '全球罕有纯净好蜜', 'Comvita 麦卢卡 蜂胶 喷雾25ml 无酒精  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 康维他', '', '', null, '', '0', '21年5月', '10', '10.80', '13.5', '13.5', '0.0', '0.10', '0.12', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('378', '0', '73', '0-11-73-', '12', '0-12-', '4', '0', '26', 'Comvita 蜂胶糖柠檬味500g', 'Comvita Lemon and Honey Candy UMF 10+  500g', '柠檬糖大', '全球罕有纯净好蜜', 'Comvita 麦卢卡 蜂胶 糖 柠檬味500g  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 康维他', '', '', null, '', '0', '22年3月', '10', '19.70', '22.0', '22.0', '0.0', '0.55', '0.70', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('379', '0', '73', '0-11-73-', '12', '0-12-', '4', '0', '26', 'Comvita 蜂胶糖柠檬味40粒', 'Comvita Lemon and Honey Candy UMF 10+ 40 Pack', '柠檬糖小', '全球罕有纯净好蜜', 'Comvita 麦卢卡 蜂胶 糖 柠檬味40粒  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒 康维他', '', '', null, '', '0', '21年9月', '10', '11.80', '13.0', '13.0', '0.0', '0.22', '0.27', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('380', '0', '74', '0-7-74-', '98', '0-69-98-', '17', '0', '43', '（包邮）Natio 小旅行套装', 'Natio Travel Gift', 'natio小旅行套装', '', 'Natio 小旅行 小样 旅行套装 卸妆水 洁面 喷雾 ve面霜 面膜 洗脸刷 洗面奶', '', '', null, '', '0', '', '10', '1.00', '18.5', '18.5', '0.0', '0.36', '0.58', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('381', '0', '74', '0-7-74-', '98', '0-69-98-', '17', '0', '43', '（包邮）Natio 洗脸刷子套装', 'Natio Wash Brush Set', 'NATIO洗脸刷套装', '纯净天然的护肤品牌', 'Natio 洗脸刷 套装 洗面奶 防晒 爽肤水 洗脸刷', '', '', null, '', '0', '', '10', '20.90', '27.0', '27.0', '0.0', '0.70', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('382', '0', '74', '0-7-74-', '98', '0-69-98-', '17', '0', '43', '（包邮）Natio 红色手提皮箱套装', 'Natio Red Cosmetic Gift Set', 'NATIO红色手提套盒', '纯净天然的护肤品牌', 'Natio 红色手提皮箱 套装 爽肤水 精华 洗面奶 面膜 卸妆 沐浴球', '', '', null, '', '0', '', '10', '38.50', '45.0', '45.0', '0.0', '1.17', '1.50', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('383', '0', '74', '0-7-74-', '98', '0-69-98-', '17', '0', '43', '（包邮）Natio 白色皮箱套装', 'Natio White Cosmetic Gift Set', 'NATIO白皮套盒', '纯净天然的护肤品牌', 'Natio 白色皮箱 套装 卸妆水 洁面 喷雾 ve面霜 面膜 洗脸刷', '', '', null, '', '0', '', '10', '39.00', '49.0', '49.0', '0.0', '1.47', '1.80', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('384', '0', '74', '0-7-74-', '98', '0-69-98-', '17', '0', '43', '（包邮）Natio 袋鼠套装', 'Natio Kangaroo Gift Set', 'NATIO袋鼠套', '纯净天然的护肤品牌', 'Natio 袋鼠 套装 乳液 爽肤水 袋鼠', '', '', null, '', '0', '', '10', '17.05', '23.0', '23.0', '0.0', '0.60', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('385', '0', '74', '0-7-74-', '98', '0-69-98-', '17', '0', '43', '（包邮）Natio 考拉套装', 'Natio Koala Gift Set', 'NATIO考拉套', '纯净天然的护肤品牌', 'Natio 考拉 套装 乳液 爽肤水 考拉', '', '', null, '', '0', '', '10', '17.05', '23.0', '23.0', '0.0', '0.60', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('386', '0', '74', '0-7-74-', '98', '0-69-98-', '17', '0', '43', '（包邮）Natio 薰衣草洗手套装', 'Natio Hand Sanitizer Gift Set', 'NATIO洗手套盒', '纯净天然的护肤品牌', 'Natio 薰衣草洗手 套装 护手霜 洗手液', '', '', null, '', '0', '', '10', '14.30', '22.0', '22.0', '0.0', '0.88', '1.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('387', '0', '74', '0-7-74-', '98', '0-69-98-', '17', '0', '43', '（包邮）Natio 方形礼盒 带洗脸仪', 'Natio Red Square Box Gift Set', 'NATIO洗脸仪套盒', '纯净天然的护肤品牌', 'Natio 方形礼盒 洗脸仪 洗面奶 无龄日霜 无龄晚霜 无龄保湿水 无龄保湿面膜', '', '', null, '', '0', '', '10', '49.50', '59.0', '59.0', '0.0', '1.20', '1.70', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('388', '0', '74', '0-7-74-', '98', '0-69-98-', '17', '0', '43', '（包邮）Natio 彩妆套盒十二件套', 'Natio Make-up Gift Set', 'NATIO彩妆套盒', '纯净天然的护肤品牌', 'Natio 彩妆套盒十二件套 百搭六色花瓣眼影盘 维C抗氧化珠光唇彩 控油矿物质定妆散粉 豆沙色口红 裸色系指甲油 质感化妆刷 腮红 香薰修复手霜 spf20隔离 极细眼线液 防晕染丰盈睫毛膏 磨皮无暇妆前乳', '', '', null, '', '0', '', '10', '52.80', '62.0', '62.0', '0.0', '1.15', '1.70', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('389', '0', '74', '0-7-74-', '96', '0-69-96-', '7', '0', '43', 'Natio 亮白眼霜 20g', 'Natio Eye Cream 20g', 'NATIO眼霜20g', '纯净天然的护肤品牌', 'Natio 眼霜 眼部 保湿 15ml 提拉 紧致 美肤 细纹 干燥 淡化 抗皱', '', '', null, '', '0', '20年9月', '10', '11.00', '11.0', '11.0', '0.0', '0.03', '0.05', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('390', '0', '74', '0-7-74-', '0', '', '7', '0', '43', 'Natio 玫瑰水爽肤喷雾 200ml', 'Natio Rosewater and Chamomile Gentle Skin Toner Face Mist 200ml', 'NATIO玫瑰水喷雾', '纯净天然的护肤品牌', 'Natio 玫瑰水爽肤喷雾 200ml 玫瑰水 保湿 补水 清洁 毛孔 深层滋养 孕妇可用 natio喷雾 爽肤水', '', '', null, '', '0', '21年10月', '10', '8.00', '8.0', '8.0', '0.0', '0.25', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('391', '0', '74', '0-7-74-', '0', '', '7', '0', '43', 'Natio SPF50+保湿防晒乳霜 200ml', 'Natio Moisturising Sun Lotion SPF 50+ 200ML', 'NATIO防晒', '4小时防水 不油腻', 'Natio 保湿 防晒 乳霜 200ml 面霜 乳液 SPF50+  滋润 补水', '', '', null, '', '0', '21年1月', '10', '10.00', '12.0', '12.0', '0.0', '0.25', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('392', '0', '74', '0-7-74-', '0', '', '7', '0', '43', 'Natio 滚珠眼部精华 16ml', 'Natio Renew Eye Serum Roll On 16ml', 'NATIO眼霜滚珠', '纯净天然的护肤品牌', 'Natio 滚珠 眼部 精华 16ml 提拉 紧致 美肤 细纹 干燥 淡化 抗皱', '', '', null, '', '0', '', '10', '11.55', '10.8', '10.8', '0.0', '0.03', '0.05', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('393', '0', '74', '0-7-74-', '0', '', '7', '0', '43', 'Natio 月见草乳液 125ml', 'Natio Evening Primrose Moisturising Face Lotion 125ml', 'NATIO乳液', '纯净天然的护肤品牌', 'Natio 月见草乳液 125ml 保湿 补水 清洁 毛孔 深层滋养 孕妇可用', '', '', null, '', '0', '', '10', '8.58', '8.9', '8.9', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('394', '0', '74', '0-7-74-', '0', '', '7', '0', '43', 'Natio 芦荟黄瓜晒后修复 150ml', 'Natio ALOE＆CUCUMBER AFTER SUN LOTION 150ml', 'NATIO晒后修复', '纯净天然的护肤品牌', 'Natio 芦荟 黄瓜 晒后修复 150ml 面霜 乳液 保湿 滋润 补水', '', '', null, '', '0', '', '10', '6.00', '7.0', '7.0', '0.0', '0.22', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('395', '0', '74', '0-7-74-', '0', '', '7', '0', '43', 'Natio 洋甘菊爽肤喷雾 200ml', 'Natio Rosewater Hydration Drench Mineral Face Mist 200ml', 'NATIO洋甘菊喷雾', '纯净天然的护肤品牌', 'Natio 洋甘菊爽肤喷雾 200ml 玫瑰水 保湿 补水 清洁 毛孔 深层滋养 孕妇可用 natio喷雾', '', '', null, '', '0', '', '10', '8.50', '6.0', '6.0', '0.0', '0.25', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('396', '0', '74', '0-7-74-', '0', '', '7', '0', '43', 'Natio 洋甘菊爽肤水 250ml', 'Natio Skin Toner Rosewater & Chamomile 250mL', 'NATIO爽肤水', '纯净天然的护肤品牌', 'Natio 洋甘菊 爽肤水 250ml 玫瑰水 保湿 补水 清洁 毛孔 深层滋养 孕妇可用', '', '', null, '', '0', '', '10', '7.90', '8.0', '8.0', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('397', '0', '74', '0-7-74-', '0', '', '7', '0', '43', 'Natio 面膜 100g', 'Natio Ageless Hydrating Mask 100g', 'NATIO面膜', '纯净天然的护肤品牌', 'Natio 面膜 100g 无龄 水凝 保湿 补水 控油 滋润 孕妇可用', '', '', null, '', '0', '', '10', '3.00', '9.9', '9.9', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('398', '0', '74', '0-7-74-', '0', '', '7', '0', '43', 'Natio VE面霜 100g', 'Natio Moisturising Cream Vitamin E 100g', 'NATIOve霜', '纯净天然的护肤品牌', 'Natio VE面霜 100g 保湿 补水 控油 滋润 敏感肌 抗氧化 孕妇可用', '', '', null, '', '0', '', '10', '8.80', '8.9', '8.9', '0.0', '0.14', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('399', '0', '74', '0-7-74-', '0', '', '7', '0', '43', 'Natio 洗面奶 100g', 'Natio Antioxidant Hand and Nail Cream 100g', 'NATIO洁面', '纯净天然的护肤品牌', 'Natio 洗面奶 100g 泡沫 洁面膏 温和 控油 香薰 深度洁净 祛垢', '', '', null, '', '0', '', '10', '7.50', '8.8', '8.8', '0.0', '0.12', '0.15', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('400', '0', '75', '0-7-75-', '64', '0-9-64-', '10', '0', '48', 'Goat 羊奶皂（儿童） 100g', 'Goat Soap Kids 100g', '羊奶皂kids', '羊奶手工肥皂', 'Goat 羊奶皂 100g 手工皂 山羊皂 孕妇 婴儿 儿童 洁面 沐浴 香皂', '', '', null, '', '0', '', '10', '1.50', '1.5', '1.5', '0.0', '0.11', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('401', '0', '75', '0-7-75-', '64', '0-9-64-', '11', '0', '48', 'Goat 山羊奶控油护发素（原味） 250ml', 'Goat Conditioner Original 250ml', '羊奶护发', '澳洲羊奶洗护专家', 'Goat 山羊奶 控油 护发素（原味） 250ml 婴儿 孕妇 温和 滋润 修复', '', '', null, '', '0', '', '10', '4.20', '3.6', '3.6', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('402', '0', '75', '0-7-75-', '64', '0-9-64-', '11', '0', '48', 'Goat 山羊奶洗发水（原味） 250ml', 'Goat Shampoo Original 250ml', '羊奶洗发', '澳洲羊奶洗护专家', 'Goat 山羊奶 洗发水（原味） 250ml 婴儿 孕妇 天然 温和 滋润 修复', '', '', null, '', '0', '', '10', '4.20', '4.4', '4.4', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('403', '0', '75', '0-7-75-', '64', '0-9-64-', '11', '0', '48', 'Goat 山羊奶面霜 100ml', 'Goat Moisturising Cream 100ml', '羊奶面霜', '澳洲羊奶洗护专家', 'Goat 山羊奶 面霜 100ml 婴儿 孕妇 天然 温和 滋润 修复 补水', '', '', null, '', '0', '', '10', '4.00', '3.6', '3.6', '0.0', '0.12', '0.15', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('404', '0', '75', '0-7-75-', '64', '0-9-64-', '11', '0', '48', 'Goat 山羊奶保湿润肤露（原味） 500ml', 'Goat Lotion Moisturising 500ml', '羊奶身体乳', '澳洲羊奶洗护专家', 'Goat 山羊奶 保湿 润肤露（原味） 500ml 婴儿 孕妇 天然 温和 滋润 修复 锁住水分', '', '', null, '', '0', '', '10', '6.00', '5.8', '5.8', '0.0', '0.60', '0.65', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('405', '0', '75', '0-7-75-', '64', '0-9-64-', '11', '0', '48', 'Goat 山羊奶沐浴露（柠檬味） 500ml', 'Goat Body Wash with Lemon Myrtle 500ml', '羊奶沐浴柠檬', '澳洲羊奶洗护专家', 'Goat 山羊奶 沐浴露（柠檬味） 500ml 婴儿 孕妇 去角质 温和 滋润 深层清洁', '', '', null, '', '0', '', '10', '4.20', '5.0', '5.0', '0.0', '0.60', '0.65', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('406', '0', '75', '0-7-75-', '64', '0-9-64-', '11', '0', '48', 'Goat 山羊奶沐浴露（原味） 500ml', 'Goat Body Wash Original 500ml', '羊奶沐浴原味', '澳洲羊奶洗护专家', 'Goat 山羊奶 沐浴露（原味） 500ml 婴儿 孕妇 去角质 温和 滋润 深层清洁', '', '', null, '', '0', '', '10', '4.20', '5.2', '5.2', '0.0', '0.60', '0.65', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('407', '0', '75', '0-7-75-', '0', '', '10', '0', '48', 'Goat 羊奶皂（柠檬） 100g', 'Goat Soap with Lemon Myrtle 100g', '羊奶皂绿', '羊奶手工肥皂', 'Goat 羊奶皂 100g 手工皂 山羊皂 孕妇 婴儿 儿童 洁面 沐浴 香皂', '', '', null, '', '0', '', '10', '1.50', '1.5', '1.5', '0.0', '0.11', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('408', '0', '75', '0-7-75-', '0', '', '10', '0', '48', 'Goat 羊奶皂（摩洛哥油） 100g', 'Goat Soap With Argan Oil 100g', '羊奶皂紫', '羊奶手工肥皂', 'Goat 羊奶皂 100g 手工皂 山羊皂 孕妇 婴儿 儿童 洁面 沐浴 香皂', '', '', null, '', '0', '', '10', '1.50', '1.5', '1.5', '0.0', '0.11', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('409', '0', '75', '0-7-75-', '0', '', '10', '0', '48', 'Goat 羊奶皂（椰子） 100g', 'Goat Soap With Coconut Oil 100g', '羊奶皂粉', '羊奶手工肥皂', 'Goat 羊奶皂 100g 手工皂 山羊皂 孕妇 婴儿 儿童 洁面 沐浴 香皂', '', '', null, '', '0', '', '10', '1.50', '1.5', '1.5', '0.0', '0.11', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('410', '0', '75', '0-7-75-', '0', '', '10', '0', '48', 'Goat 羊奶皂（燕麦味） 100g', 'Goat Soap Oatmeal 100g', '羊奶皂橙', '羊奶手工肥皂', 'Goat 羊奶皂 100g 手工皂 山羊皂 孕妇 婴儿 儿童 洁面 沐浴 香皂', '', '', null, '', '0', '', '10', '1.50', '1.5', '1.5', '0.0', '0.11', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('411', '0', '75', '0-7-75-', '0', '', '10', '0', '48', 'Goat 羊奶皂（麦卢卡蜂蜜味） 100g', 'Goat Soap With Manuka Honey 100g', '羊奶皂红', '羊奶手工肥皂', 'Goat 羊奶皂 100g 手工皂 山羊皂 孕妇 婴儿 儿童 洁面 沐浴 香皂', '', '', null, '', '0', '', '10', '1.50', '1.5', '1.5', '0.0', '0.11', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('412', '0', '75', '0-7-75-', '0', '', '10', '0', '48', 'Goat 羊奶皂（原味） 100g', 'Goat Soap 100g', '羊奶皂蓝', '羊奶手工肥皂', 'Goat 羊奶皂 100g 手工皂 山羊皂 孕妇 婴儿 儿童 洁面 沐浴 香皂', '', '', null, '', '0', '', '10', '1.50', '1.6', '1.6', '0.0', '0.11', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('413', '0', '76', '0-7-76-', '98', '0-69-98-', '14', '0', '51', 'freezeframe丰胸+瘦腹霜套装', 'freezeframe breast enhancer + tummy tuck set', 'ff套装', '', 'ff freezeframe 丰胸 瘦腹霜 瘦肚子 套装 微整形', '', '', null, '', '0', '', '10', '20.00', '33.2', '33.2', '0.0', '0.22', '0.42', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('414', '0', '76', '0-7-76-', '0', '', '11', '0', '54', 'Milk&Co 牛奶宝宝物理防晒霜 100ml', 'Milk&Co Baby Sunscreen Cream SPF30+', 'Milk&Co防晒', 'SPF30+', 'Milk&Co 牛奶宝宝物理防晒霜 100mlMilk&Co Baby Sunscreen Cream SPF30+ Milk Co婴儿', '', '', null, '', '0', '21年10月', '10', '11.95', '12.8', '12.8', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('415', '0', '76', '0-7-76-', '0', '', '11', '0', '54', 'Ego 儿童防晒滚珠 50ML', 'Ego SunSense Junior SPF50 (Roll-On)', 'Ego防晒滚珠', 'SPF50+', 'Ego SunSense Junior SPF50+ (Roll-On) 儿童防晒滚珠 50ML 宝宝滚珠型 儿童防晒乳霜50ml', '', '', null, '', '0', '', '10', '6.50', '7.2', '7.2', '0.0', '0.10', '0.15', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('416', '0', '76', '0-7-76-', '96', '0-69-96-', '7', '0', '46', '赠品！拍下发货 kisea眼霜', 'Kisea eye cream', 'kisea眼霜', '', 'kisea 眼霜', '', '', null, '', '0', '19年8月', '10', '0.00', '0.0', '0.0', '0.0', '0.20', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('417', '0', '76', '0-7-76-', '0', '', '7', '0', '46', 'Hopes 湿疹膏 60g', 'Hopes Relief Tube 60g', '湿疹膏', '给宝宝解决烦恼', 'Hopes Relief Tube 纯天然湿疹牛皮癣特效软膏 60g', '', '', null, '', '0', '21年5月', '10', '11.20', '10.9', '10.9', '0.0', '0.10', '0.12', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('418', '0', '76', '0-7-76-', '0', '', '9', '0', '51', 'Freezeframe 燃脂油 100ml', 'Freezeframe FAT BURNER', 'FF燃脂油', '', 'ff 燃脂 瘦身 溶脂', '', '', null, '', '0', '', '10', '24.00', '24.0', '24.0', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('419', '0', '76', '0-7-76-', '0', '', '9', '0', '51', 'freezeframe 提臀 100ml', 'Freezeframe Butt Lift 120m', 'FF提臀', '看得见的圆润挺翘', 'freezeframe 提臀 100ml ff 提臀高美臀霜', '', '', null, '', '0', '', '10', '38.00', '34.0', '34.0', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('420', '0', '76', '0-7-76-', '0', '', '9', '0', '51', 'Freezeframe BB霜 30ml', 'freezeframe BB BLUR', 'FF BB霜', '不用手术刀的微整形大师', 'Freezeframe BB霜 30ml 自然肤色 抗氧化 粉底 FF', '', '', null, '', '0', '', '10', '28.00', '27.0', '27.0', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('421', '0', '76', '0-7-76-', '0', '', '9', '0', '51', 'Freezeframe 美白霜 30ml', 'freezeframe HYPER WHITE', 'FF美白', '不用手术刀的微整形大师', 'Freezeframe 美白霜 30ml 祛斑霜 祛黄淡斑 亮肤 修复 精华液 FF', '', '', null, '', '0', '', '10', '38.00', '35.0', '35.0', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('422', '0', '76', '0-7-76-', '0', '', '9', '0', '51', 'Freezeframe 睫毛增长液 1.75ml', 'freezeframe LASH PRESCRIPTION', 'FF睫毛', '不用手术刀的微整形大师', 'Freezeframe 睫毛增长液 1.75ml 瞬间拉长 防水纤长 浓密卷翘 眉毛生长 FF', '', '', null, '', '0', '', '10', '37.00', '36.0', '36.0', '0.0', '0.05', '0.08', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('423', '0', '76', '0-7-76-', '0', '', '9', '0', '51', 'freezeframe 丰胸霜 100g', 'freezeframe non-surgical BREAST ENHANCER', 'FF丰胸', '不用手术刀的微整形大师', 'freezeframe 丰胸霜 100g 提升增大 罩杯 坚挺 饱满 紧俏 性感 天然 FF', '', '', null, '', '0', '', '10', '36.50', '35.0', '35.0', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('424', '0', '76', '0-7-76-', '0', '', '9', '0', '51', 'freezeframe 瘦腹霜 瘦肚子 100g', 'freezeframe TUMMY TUCK', 'FF瘦肚子', '不用手术刀的微整形大师', 'freezeframe 瘦腹霜 瘦肚子 100g 消腹霜 紧致 收腹霜 松弛肚皮 燃脂 FF', '', '', null, '', '0', '', '10', '38.00', '35.0', '35.0', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('425', '0', '76', '0-7-76-', '0', '', '9', '0', '51', 'freezeframe 去皱眼霜 15ml', 'freezeframe REVITALEYES', 'FF眼霜', '不用手术刀的微整形大师', 'freezeframe 去皱眼霜 15ml 提拉紧致 去除浮肿 眼部 脂肪粒 黑眼圈 FF', '', '', null, '', '0', '', '10', '33.50', '32.9', '32.9', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('426', '0', '76', '0-7-76-', '0', '', '9', '0', '51', 'freezeframe 速效V脸瘦脸 30ml ', 'freezeframe Instant V-Lift', 'FF V脸', '需拍下正价商品和赠品链接', 'freezeframe 速效V脸瘦脸 30ml 提拉 紧致 淡化颈纹 素颜 精华 FF', '', '', null, '', '0', '', '10', '20.00', '20.0', '20.0', '0.0', '0.10', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('427', '0', '76', '0-7-76-', '96', '0-69-96-', '4', '0', '50', 'Absolute Organic 有机奇亚籽油滴剂 50ml', 'Absolute Organic 50ml', 'omega滴剂50ml', '天然有机初榨', 'Absolute Organic 奇亚籽油 50ml 孕妇婴幼儿童DHA月子油比鱼油纯净有机奇亚籽油滴剂 亚麻籽油', '', '', null, '', '0', '', '10', '1.00', '8.0', '8.0', '0.0', '0.22', '0.27', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('428', '0', '76', '0-7-76-', '10', '0-10-', '4', '0', '45', 'Red seal 覆盆子茶助产茶 19年9月到期', 'Red Seal Tea Raspberry 20 Teabags', '红印茶', '草本配方 软宫助产', 'Red seal 覆盆子茶 助产茶 软化宫颈 草本茶 顺产茶 月子茶 促进分娩', '', '', null, '', '0', '19年9月', '10', '3.30', '1.0', '1.0', '0.0', '0.07', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('429', '0', '76', '0-7-76-', '0', '', '4', '0', '50', '下单送赠品 需拍下Prospan 小绿叶止咳液 200ml 19年8月到期', 'Prospan Chesty Cough (Ivy Leaf)  200ml', '小绿叶', '19年8月到期', 'Prospan 小青蛙 小绿叶 止咳液 200ml 纯天然 婴幼儿 儿童 澳洲 感冒 成人', '', '', null, '', '0', '19年8月', '10', '0.00', '0.0', '0.0', '0.0', '0.50', '0.60', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('430', '0', '76', '0-7-76-', '0', '', '4', '0', '16', '美可卓蓝莓护眼奶片 150粒', 'Maxigenes Chewable Milk With Blueberry 150 Tablets', '美可卓蓝莓护', '', '美可卓蓝莓护眼牛奶片150粒Maxigenes chewable milk', '', '', null, '', '0', '22年4月', '10', '9.80', '9.3', '9.3', '0.0', '0.40', '0.50', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('431', '0', '77', '0-7-77-', '0', '', '11', '0', '46', 'Redwin 煤焦油洗发水 250ml', 'Redwin Coal Tar Shampoo 250ml', 'redwin焦油洗发', '无硅油，不假滑真干爽', 'Redwin 煤焦油洗发水 250ml 无硅油 洗发露 煤焦油 控油 止痒 去屑 修复', '', '', null, '', '0', '', '10', '2.97', '2.9', '2.9', '0.0', '0.30', '0.34', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('432', '0', '77', '0-7-77-', '0', '', '11', '0', '46', 'Redwin 茶树洗发水 250ml', 'Redwin Tea Tree Shampoo 250ml', 'redwin茶树洗发', '调理从头皮开始', 'Redwin 茶树洗发水 250ml 无硅油 洗发露 茶树油 控油 止痒 去屑 修复', '', '', null, '', '0', '', '10', '2.97', '2.9', '2.9', '0.0', '0.30', '0.34', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('433', '0', '77', '0-7-77-', '0', '', '11', '0', '46', 'Selsun 强效去屑洗发水 200ml', 'Selsun Treatment 200mL', 'selsun黄瓶', '强力去屑', 'Selsun 强效去屑洗发水 200ml 无硅油 洗发露 黄色 控油 止痒 去屑 修复 黄盖', '', '', null, '', '0', '24年1月', '10', '7.00', '7.2', '7.2', '0.0', '0.25', '0.32', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('434', '0', '77', '0-7-77-', '0', '', '11', '0', '46', 'Selsun 控油去屑洗发水200ml', 'Selsun Blue Deep Cleansing Anti Dandruff Shampoo 200ml', 'selsun紫盖', '控油止痒', 'Selsun 控油去屑洗发水200ml 无硅油 洗发露 紫色 控油 止痒 去屑 修复 紫盖', '', '', null, '', '0', '23年10月', '10', '4.18', '4.5', '4.5', '0.0', '0.25', '0.32', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('435', '0', '77', '0-7-77-', '0', '', '11', '0', '46', 'Selsun 滋养去屑洗发水200ml', 'Selsun Blue Replenishing Dandruff Control 200ml', 'selsun蓝盖', '去屑止痒', 'Selsun 滋养去屑洗发水200ml 无硅油 洗发露 蓝色 控油 止痒 去屑 修复 蓝盖', '', '', null, '', '0', '22年6月', '10', '4.18', '4.5', '4.5', '0.0', '0.25', '0.32', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('436', '0', '77', '0-7-77-', '0', '', '11', '0', '46', 'OGX 樱花洗发 385ml', 'OGX Heavenly Hydration Cherry Blossom Conditioner 385ml', 'OGX洗发粉色', '丰盈蓬松 轻盈少女风', 'OGX 樱花洗发 385ml 无硅油 洗发露 樱花 清爽 止痒 去屑 修复', '', '', null, '', '0', '', '10', '8.50', '8.1', '8.1', '0.0', '0.45', '0.50', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('437', '0', '77', '0-7-77-', '0', '', '11', '0', '46', 'OGX 摩洛哥护发 385ml', 'OGX Renewing Moroccan Argan Oil Conditioner 385mL', 'OGX护发蓝色', '“液体黄金”天然修护力', 'OGX 摩洛哥护发 385ml 无硅油 洗发露 摩洛哥 控油 止痒 去屑 修复', '', '', null, '', '0', '', '10', '8.50', '8.1', '8.1', '0.0', '0.45', '0.50', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('438', '0', '77', '0-7-77-', '0', '', '11', '0', '46', 'OGX 摩洛哥洗发 385ml', 'OGX Renewing Moroccan Argan Oil Shampoo 385mL', 'OGX洗发蓝色', '洗护搭配 养护力更佳', 'OGX 摩洛哥洗发 385ml 无硅油 洗发露 摩洛哥 控油 止痒 去屑 修复', '', '', null, '', '0', '', '10', '8.50', '8.1', '8.1', '0.0', '0.45', '0.50', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('439', '0', '77', '0-7-77-', '0', '', '11', '0', '54', 'FicceCode 菲诗蔻生姜洗发水 260ml', 'FicceCode Shampoo Organic Ginger 260ml', '菲诗蔻生姜洗发水', '购洗发送菲诗蔻毛巾', 'FicceCode 生姜洗发水 260ml FicceCode Shampoo Organic Ginger  润发 菲诗蔻', '', '', null, '', '0', '', '10', '7.70', '9.0', '9.0', '0.0', '0.33', '0.41', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('440', '0', '77', '0-7-77-', '0', '', '11', '0', '54', 'FicceCode 菲诗蔻坚果油发膜 260ml', 'FicceCode Conditioner Macadamia Oil 260ml', '菲诗蔻护发素', '', 'FicceCode 坚果油护发素 260ml FicceCode Shampoo Macadamia Oil  润发 菲诗蔻发膜', '', '', null, '', '0', '', '10', '7.00', '7.8', '7.8', '0.0', '0.33', '0.41', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('441', '0', '77', '0-7-77-', '0', '', '11', '0', '54', 'FicceCode 菲诗蔻坚果油洗发水 260ml', 'FicceCode Shampoo Macadamia Oil 260ml', '菲诗蔻坚果洗发水', '购洗发送菲诗蔻毛巾', 'FicceCode 坚果油洗发水 260ml FicceCode Shampoo Macadamia Oil  润发 菲诗蔻', '', '', null, '', '0', '', '10', '7.00', '9.0', '9.0', '0.0', '0.33', '0.41', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('442', '0', '77', '0-7-77-', '0', '', '11', '0', '46', 'Restoria Discreet 黑发乳 250ml', 'Restoria Discreet 250ml', '黑发乳', '澳洲“黑”科技', 'Restoria Discreet 黑发乳 250ml 黑发 洗发水 护发素', '', '', null, '', '0', '21年10月', '10', '11.88', '11.3', '11.3', '0.0', '0.30', '0.34', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('443', '0', '77', '0-7-77-', '0', '', '11', '0', '64', 'Moroccanoil 摩洛哥修护洗护套装（洗发500ml+护发500ml）', 'Moroccanoil  Shampoo 500ml + Conditioner 500ml Package', '摩洛哥大洗护套装', '护发新境界', 'Moroccanoil 摩洛哥修护洗护套装 洗发500ml 护发500ml', '', '', null, '', '0', '', '10', '60.00', '55.5', '55.5', '0.0', '1.20', '1.50', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('444', '0', '77', '0-7-77-', '0', '', '14', '0', '64', 'Moroccanoil 修复旅行三件套（修复洗发70ml+修复护发70ml+摩洛哥油25ml）', 'Moroccanoil Travel Suit （Hair Repair+Moisture Trio）', '摩洛哥修复旅行套装', '护发新境界', 'Moroccanoil 旅行 套装 修复洗发70ml 修复护发70ml 摩洛哥油25ml', '', '', null, '', '0', '', '10', '27.00', '23.0', '23.0', '0.0', '0.27', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('445', '0', '77', '0-7-77-', '0', '', '11', '0', '64', '摩洛哥发膜 75ml', 'Moroccanoil Intense Hydrating Mask 75ml', '摩洛哥发膜75ml', '', '摩洛哥油 发膜 Moroccanoil 摩洛哥 护发', '', '', null, '', '0', '开盖后12个月', '10', '0.00', '5.0', '5.0', '0.0', '0.10', '0.10', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('446', '0', '77', '0-7-77-', '0', '', '8', '0', '64', 'Moroccanoil摩洛哥发油100ml 清爽型', 'Moroccanoil Hair Treatment Oil 100ml（Light）', 'Light摩洛哥发油', '护发届的“印度神油”', 'MoroccanMoroccanoil 摩洛哥发油 100ml 修复 烫发 染发 受损 毛躁 柔顺 清爽型 light版', '', '', null, '', '0', '', '10', '35.00', '36.0', '36.0', '0.0', '0.28', '0.38', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('447', '0', '77', '0-7-77-', '0', '', '8', '0', '64', 'Moroccanoil摩洛哥发油100ml', 'Moroccanoil Hair Treatment Oil 100ml', '摩洛哥发油', '护发届的“印度神油”', 'Moroccanoil 摩洛哥发油 100ml 修复 烫发 染发 受损 毛躁 柔顺', '', '', null, '', '0', '', '10', '34.50', '36.0', '36.0', '0.0', '0.28', '0.38', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('448', '0', '77', '0-7-77-', '0', '', '14', '0', '64', 'Moroccanoil 发油三件套（洗发70ml+护发70ml+摩洛哥油100ml）', 'Moroccanoil  Hair Treatment Oil  three-piece suites', '摩洛哥发油套装', '护发新境界', 'Moroccanoil 发油 套装 洗发70ml 护发70ml 摩洛哥油100ml', '', '', null, '', '0', '', '10', '29.90', '40.0', '40.0', '0.0', '0.55', '0.70', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('449', '0', '77', '0-7-77-', '0', '', '14', '0', '64', 'Moroccanoil 保湿旅行三件套（洗发70ml+护发70ml+摩洛哥油25ml）', 'Moroccanoil Travel Suit （Hydrating Trio）', '摩洛哥保湿旅行套装', '护发新境界', 'Moroccanoil 旅行 套装 洗发70ml 护发70ml 摩洛哥油25ml', '', '', null, '', '0', '', '10', '27.00', '23.0', '23.0', '0.0', '0.27', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('450', '0', '77', '0-7-77-', '0', '', '11', '0', '46', 'Messina 纯植物染发剂（棕色） 250G', 'Messina Natural Hair Colour Cream（Brown） 250G', 'Messina护发棕', '一次上色 显色持久', 'Messina 纯植物染发剂（棕色） 250G 无刺激 染发膏 孕妇可用', '', '', null, '', '0', '', '10', '17.00', '23.0', '23.0', '0.0', '0.33', '0.38', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('451', '0', '77', '0-7-77-', '0', '', '11', '0', '46', 'Messina 纯植物染发剂（黑色） 250G', 'Messina Natural Hair Colour Cream（Black） 250G', 'Messina护发黑', '一次上色 显色持久', 'Messina 纯植物染发剂（黑色） 250G 无刺激 染发膏 孕妇可用', '', '', null, '', '0', '', '10', '17.00', '22.0', '22.0', '0.0', '0.33', '0.38', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('452', '0', '77', '0-7-77-', '0', '', '11', '0', '46', 'Messina 纯植物染发剂（深棕色） 250G', 'Messina Natural Hair Colour Cream（Dark Brown） 250G', 'Messin护发深棕', '一次上色 显色持久', 'Messina 纯植物染发剂（深棕色） 250G 无刺激 染发膏 孕妇可用', '', '', null, '', '0', '', '10', '17.00', '23.0', '23.0', '0.0', '0.33', '0.38', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('453', '0', '77', '0-7-77-', '96', '0-69-96-', '4', '0', '54', '换购请拍下！购FicceCode 菲诗蔻洗发水一瓶送菲诗蔻毛巾一条', 'FicceCode Towel', '菲诗蔻毛巾', '换购链接，单拍无效', '菲诗蔻毛巾 FicceCode Towel 换购请拍下！购FicceCode 菲诗蔻洗发水一瓶 赠品', '', '', null, '', '0', '', '10', '1.00', '0.0', '0.0', '0.0', '0.14', '0.34', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('454', '0', '79', '0-7-79-', '97', '0-69-97-', '10', '0', '59', 'GM 蜂蜜羊奶味绵羊油  250g 19年8月到期', 'T GM Goats Milk Moisturising Cream 250g', 'GM绵羊油橘色', '一瓶多用 四季无忧', 'GM 蜂蜜羊奶味绵羊油 日霜 250g 面霜 护肤 身体乳 补水 滋润 维生素 ve霜', '', '', null, '', '0', '19年8月', '10', '1.00', '0.5', '0.5', '0.0', '0.32', '0.36', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('455', '0', '79', '0-7-79-', '0', '', '10', '0', '46', 'Sunrise 羊胎素绵羊油 100g', 'Sunrise Lanolin Cream 100g', 'sunrise绵羊油', '水润肌肤 美丽焕颜', 'Sunrise 羊胎素绵羊油 100g 维生素E ve 面霜 身体霜 手霜 安全 孕妇可用', '', '', null, '', '0', '21年8月', '10', '1.04', '1.9', '1.9', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('456', '0', '79', '0-7-79-', '0', '', '10', '0', '46', 'Sunrise 玫瑰护手霜 75ml', 'Sunrise Hand Cream 175g', 'sunrise护手霜', '一个女人是否精致，看手！', 'Sunrise 玫瑰护手霜 75ml 玫瑰精油 活肤补水 保湿', '', '', null, '', '0', '', '10', '1.30', '1.9', '1.9', '0.0', '0.12', '0.15', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('457', '0', '79', '0-7-79-', '0', '', '10', '0', '59', 'GM 原味绵羊油 日霜 250g', 'GM Lanolin Oil Moisturising Cream 250g', 'GM绵羊油原味', '一瓶多用 四季无忧', 'GM 原味绵羊油 日霜 250g 面霜 护肤 身体乳 补水 滋润 维生素 ve霜', '', '', null, '', '0', '21年9月', '10', '2.72', '2.9', '2.9', '0.0', '0.32', '0.36', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('458', '0', '79', '0-7-79-', '0', '', '10', '0', '46', 'Redwin 月见草油 VE霜 300g', 'Redwin Cream with Vitamin E 300g', 'redwin VE霜', 've面霜中性价比之王', 'Redwin 月见草油 VE霜 300g 面霜 护肤 身体乳 补水 滋润 维生素 ve霜', '', '', null, '', '0', '', '10', '2.50', '2.9', '2.9', '0.0', '0.35', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('459', '0', '79', '0-7-79-', '0', '', '8', '0', '46', 'TOPDHG 山羊奶爆奶霜', 'TOP Goat\'s Milk Magic Tough', 'TOP爆奶霜', '彭彭爆奶看得见 爆出水漾鲜奶肌', 'TOPDHG 山羊奶 爆奶霜 澳洲 妆前乳 补水 保湿 面霜', '', '', null, '', '0', '20年6月', '10', '12.00', '11.4', '11.4', '0.0', '0.26', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('460', '0', '79', '0-7-79-', '0', '', '8', '0', '46', 'Skin Nutrient 羊奶爆奶霜 50g +爽肤水 60ml', 'Skin Nutrient Double Magic Special', '爆奶霜套装', '补水美白抗皱 三大奇效', 'Skin Nutrient 羊奶爆奶霜 50g  爽肤水 60ml 套盒 补水 保湿 提色 SN 爆奶霜套装 爆奶套装', '', '', null, '', '0', '20年9月', '10', '11.00', '11.5', '11.5', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('461', '0', '79', '0-7-79-', '0', '', '8', '0', '46', 'Skin Nutrient 羊奶爆奶霜 50g', 'Skin Nutrient Goat\'s Milk Magic Tough 50g', '爆奶霜', '会“爆奶”的面霜', 'Skin Nutrient 羊奶爆奶霜 50g  面霜 乳霜 保湿 SN', '', '', null, '', '0', '', '10', '11.00', '11.0', '11.0', '0.0', '0.11', '0.15', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('462', '0', '80', '0-7-80-', '96', '0-69-96-', '8', '0', '25', 'Eaoron 鲟鱼子精华素颜霜 50ml', 'Eaoron Black Kaviar Cream 50ML', '黑素颜霜', '面霜底妆一瓶搞定', 'Eaoron 水光针 黑素颜霜 50ml 裸妆 美白 保湿 补水 遮瑕净白 滋养修护 懒人霜 亮白 鲟鱼子精华黑色', '', '', null, '', '0', '', '10', '11.00', '11.0', '11.0', '0.0', '0.35', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('463', '0', '80', '0-7-80-', '70', '0-70-', '8', '0', '25', 'Eaoron 补水+美白面膜（白+黑）（8+3PCS）/盒', 'Eaoron Face Mask 8+3 Piece', '黑白双色面膜', '', 'Eaoron 水光针 美白 面膜（黑）5片 玻尿酸 胶原蛋白 深度补水 超薄 天然 孕妇可用 Eaoron 水光针 补水 面膜（白）黑白双色面膜', '', '', null, '', '0', '', '10', '14.00', '16.5', '16.5', '0.0', '0.50', '0.60', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('464', '0', '80', '0-7-80-', '70', '0-70-', '7', '0', '25', '旧版 Eaoron 补水面膜（白）5片/盒', 'Eaoron Hyaluronic Acid Collagen Hydrating Face Mask 25ml 5 Piece', '白面膜旧版', '', 'Eaoron 水光针 补水 面膜（白）5片 玻尿酸 胶原蛋白 深度补水 超薄 天然 孕妇可用', '', '', null, '', '0', '', '10', '10.00', '9.0', '9.0', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('465', '0', '80', '0-7-80-', '97', '0-69-97-', '7', '0', '25', 'Eaoron 素颜霜 50ml', 'Eaoron Crystal White Brightening Day Cream 50ml', '素颜霜', '澳洲医学美容品牌', 'Eaoron 水光针 素颜霜 50ml 裸妆 美白 保湿 补水 遮瑕 懒人霜', '', '', null, '', '0', '20年8月', '10', '14.00', '10.8', '10.8', '0.0', '0.21', '0.27', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('466', '0', '80', '0-7-80-', '96', '0-69-96-', '8', '0', '25', 'Eaoron 补水面膜（白）5片/盒', 'Eaoron Hyaluronic Acid Collagen Hydrating Face Mask 25ml 5 Piece', '白面膜新版', '澳洲医学美容品牌', 'Eaoron 水光针 补水 面膜（白）5片 玻尿酸 胶原蛋白 深度补水 超薄 天然 孕妇可用', '', '', null, '', '0', '22年4月', '10', '10.00', '10.0', '10.0', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('467', '0', '80', '0-7-80-', '0', '', '7', '0', '25', 'Eaoron 水光针眼霜 15g', 'Eaoron Young Eyes', '水光针眼霜', '', '水光针眼霜 Eaoron Eyes Cream Eaoron 水光针眼霜 15g 去皱眼霜 提拉紧致 去除浮肿 眼部 脂肪粒 黑眼圈', '', '', null, '', '0', '', '10', '1.00', '9.5', '9.5', '0.0', '0.04', '0.06', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('468', '0', '80', '0-7-80-', '0', '', '8', '0', '25', 'Eaoron 卸妆膏 90g', 'Eaoron Makeup Remover Balm 90g', 'Eaoron卸妆膏', '触变溶妆', 'Eaoron 卸妆膏 90g 温和配方 养肤润肤 深层清洁 温和卸妆 肌肤净润透亮 带走污垢', '', '', null, '', '0', '', '10', '14.00', '14.9', '14.9', '0.0', '0.25', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('469', '0', '80', '0-7-80-', '0', '', '7', '0', '25', 'Eaoron 南极冰川固态水神经酰胺爽肤水 120ML', 'Eaoron Ceramide Solid Water 120ML', '固态水', '澳洲医学美容品牌', 'Eaoron 水光针 南极冰川固态水 神经酰胺爽肤水 120ML 补水 提亮 保湿 净润', '', '', null, '', '0', '', '10', '10.00', '9.9', '9.9', '0.0', '0.27', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('470', '0', '80', '0-7-80-', '0', '', '7', '0', '25', 'Eaoron 磨砂膏', 'Eaoron Exfoliating Cream', '水光磨砂膏', '水光针祛角质', 'Eaoron 水光针 磨砂膏 去角质膏 去死皮 面部 排浊去污 滋养 祛角质', '', '', null, '', '0', '20年8月', '10', '10.00', '5.5', '5.5', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('471', '0', '80', '0-7-80-', '0', '', '8', '0', '25', 'Eaoron 蜂胶面膜8个装/盒', 'Eaoron Propolis Facial Mask 8 x 10ml Capsules', '水光蜂胶面膜', '澳洲医学美容品牌', 'Eaoron 水光针 蜂胶面膜 保湿 补水 紧致 睡眠 面膜 收缩毛孔 蜂蜜面膜', '', '', null, '', '0', '21年9月', '10', '11.80', '10.9', '10.9', '0.0', '0.27', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('472', '0', '80', '0-7-80-', '0', '', '8', '0', '25', 'Eaoron 溶脂霜 150ml', 'Eaoron Slim Shapes Anti Cellulite Cream', '水光溶脂霜', '澳洲医学美容品牌', 'Eaoron 水光针 溶脂霜 150ml 涂抹式 乳霜 塑性 美体', '', '', null, '', '0', '21年3月', '10', '20.00', '11.0', '11.0', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('473', '0', '80', '0-7-80-', '0', '', '8', '0', '25', 'Eaoron 肉毒面膜 5片/盒', 'Eaoron Ultimate Botox Mask', '金面膜', '澳洲医学美容品牌', 'Eaoron 水光针 肉毒面膜 5片 玻尿酸 补水 紧致 抗皱 提亮 抗氧化', '', '', null, '', '0', '21年3月', '10', '12.00', '12.0', '12.0', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('474', '0', '80', '0-7-80-', '0', '', '8', '0', '25', 'Eaoron 微雕V脸面膜 5片/盒', 'Eaoron Ageless Stem Cell Mask', '红面膜', '澳洲医学美容品牌', 'Eaoron 水光针 微雕V脸面膜 5片 玻尿酸 补水 紧致 抗皱 提亮 抗氧化', '', '', null, '', '0', '21年10月', '10', '12.00', '12.0', '12.0', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('475', '0', '80', '0-7-80-', '0', '', '8', '0', '25', 'Eaoron 蓝花楹奇迹面膜 5片/盒', 'Eaoron Jacaranda Miracle Mask', '紫面膜', '澳洲医学美容品牌', 'Eaoron 水光针 蓝花楹奇迹面膜 5片 玻尿酸 补水 紧致 抗皱 提亮 抗氧化', '', '', null, '', '0', '20年12月', '10', '12.00', '12.0', '12.0', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('476', '0', '80', '0-7-80-', '0', '', '8', '0', '25', 'Eaoron 水光霜 50g', 'Eaoron Hyaluronic Cream', '水光霜', '澳洲医学美容品牌', 'Eaoron 水光针 水光霜 50g 平滑 舒缓 弹润 透亮 保湿 补水 面霜 孕妇可用', '', '', null, '', '0', '21年5月', '10', '14.00', '12.0', '12.0', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('477', '0', '80', '0-7-80-', '0', '', '7', '0', '25', 'Eaoron 水光氨基酸洗面奶 100ml', 'Eaoron Hyaluronic Cleanser', '水光洁面', '水光洁面', 'Eaoron 水光针 水光氨基酸洗面奶 100ml 洁面乳 深层清洁 收缩毛孔 控油 敏感肌', '', '', null, '', '0', '21年5月', '10', '9.80', '9.0', '9.0', '0.0', '0.14', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('478', '0', '80', '0-7-80-', '0', '', '8', '0', '25', 'Eaoron 水光乳 120ml', 'Eaoron Hyaluronic Lotion', '水光乳', '澳洲医学美容品牌', 'Eaoron 水光针 水光乳 120ml 乳液 玻尿酸 保湿 滋润 修护 孕妇可用', '', '', null, '', '0', '21年6月', '10', '9.50', '11.8', '11.8', '0.0', '0.27', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('479', '0', '80', '0-7-80-', '0', '', '8', '0', '25', 'Eaoron 水光水 120ml', 'Eaoron Hyaluronic Toner', '水光水', '澳洲医学美容品牌', 'Eaoron 水光针 水光水 120ml 对抗干燥 深层补水 提亮肤色 通透亮泽', '', '', null, '', '0', '21年6月', '10', '9.50', '11.8', '11.8', '0.0', '0.27', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('480', '0', '80', '0-7-80-', '0', '', '8', '0', '25', 'Eaoron 美白面膜（黑）5片/盒', 'Eaoron Instant Whitening Face Mask 25ml 5 Piece', '黑面膜', '澳洲医学美容品牌', 'Eaoron 水光针 美白 面膜（黑）5片 玻尿酸 胶原蛋白 深度补水 超薄 天然 孕妇可用', '', '', null, '', '0', '21年3月', '10', '10.00', '10.5', '10.5', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('481', '0', '80', '0-7-80-', '0', '', '8', '0', '25', 'Eaoron 五代涂抹式水光针 10ml', 'Eaoron Hyaluronic Acid Collagen Essence Generation V 10ml', '水光针', '澳洲医学美容品牌', 'Eaoron 水光针 五代涂抹式水光针 10ml 精华 玻尿酸 原液 美白 淡斑 保湿 修复', '', '', null, '', '0', '21年3月', '10', '13.00', '11.9', '11.9', '0.0', '0.10', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('482', '0', '80', '0-7-80-', '0', '', '8', '0', '25', 'Eaoron水光针防晒素颜霜 50ml', 'Eaoron crystal white moisturiser + spf15 50ml', '水光针防晒素颜霜', '', 'Eaoron 水光针 防晒 素颜霜 滋润 新版 二代', '', '', null, '', '0', '21年4月', '10', '11.70', '12.6', '12.6', '0.0', '0.32', '0.42', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('483', '0', '81', '0-7-81-', '0', '', '8', '0', '47', 'Cemoy 安瓶南极冰川蜂窝黑面膜 5片/盒', 'Cemoy Marine Boost Collagen Face Mask', '安瓶冰川面膜', '澳洲安瓶革新力作', 'Cemoy 安瓶南极冰川蜂窝黑面膜 5片 修复 深层抗皱 美白 亮肤 保湿 紧致 抗氧化', '', '', null, '', '0', '21年6月', '10', '15.00', '14.9', '14.9', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('484', '0', '81', '0-7-81-', '0', '', '8', '0', '47', 'Cemoy 安瓶超级美白面膜 5片/盒', 'Cemoy Super Whitening Facial Mask', '安瓶美白面膜', '澳洲安瓶革新力作', 'Cemoy 安瓶超级美白面膜 5片 修复 深层抗皱 美白 亮肤 保湿 紧致 抗氧化', '', '', null, '', '0', '21年6月', '10', '14.00', '14.5', '14.5', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('485', '0', '81', '0-7-81-', '0', '', '8', '0', '47', 'Cemoy 安瓶海藻修复面膜 5片/盒', 'Cemoy Hydra Ampoule Face Mask', '安瓶修复面膜', '澳洲安瓶革新力作', 'Cemoy 安瓶海藻修复面膜 5片 修复 深层抗皱 美白 亮肤 保湿 紧致 抗氧化', '', '', null, '', '0', '21年6月', '10', '14.00', '14.5', '14.5', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('486', '0', '81', '0-7-81-', '0', '', '8', '0', '47', 'Cemoy 安瓶 白金流明爽肤水 120ml', 'Cemoy LUMEN THE TONER 120ML', '安瓶流明水', '释放肌肤自身的光通量', '安瓶 爽肤水 流明水 白金流明 cemoy', '', '', null, '', '0', '', '10', '19.00', '21.9', '21.9', '0.0', '0.30', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('487', '0', '81', '0-7-81-', '0', '', '8', '0', '47', 'Cemoy 安瓶白金流明洗面奶 100ml', 'Cemoy The Faclal Tratment Cleanser', 'Cemoy洗面奶', '', 'Cemoy 安瓶白金流明洗面奶 100ml Cemoy The Faclal Tratment Cleanser 氨基酸洁面乳抗氧深层清洁毛孔控油', '', '', null, '', '0', '', '10', '19.50', '19.5', '19.5', '0.0', '0.22', '0.28', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('488', '0', '81', '0-7-81-', '0', '', '8', '0', '47', 'Cemoy 安瓶 白金流明乳液 120ml', 'Cemoy LUMEN THE LOTION 120ml', '安瓶流明乳液', '释放肌肤自身的光通量', '安瓶 流明乳 乳液 白金流明', '', '', null, '', '0', '', '10', '20.00', '24.8', '24.8', '0.0', '0.32', '0.42', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('489', '0', '81', '0-7-81-', '0', '', '8', '0', '47', 'Cemoy 安瓶（5ML*2支） 1盒', 'Cemoy Placenta Serum（5ML*2）', '安瓶', '澳洲安瓶革新力作', 'Cemoy 安瓶 5ML 肌底液 补水 紧致 收缩毛孔 抗氧化 延衰老', '', '', null, '', '0', '21年1月', '10', '19.50', '18.9', '18.9', '0.0', '0.10', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('490', '0', '81', '0-7-81-', '0', '', '8', '0', '47', 'Cemoy 安瓶21天极光精华 2ml*21包/盒', 'Cemoy 21 Renew Serum', '安瓶极光精华', '澳洲安瓶革新力作', 'Cemoy 安瓶21天极光精华 2ml*21包 修复 深层抗皱 美白 亮肤 保湿 紧致 抗氧化', '', '', null, '', '0', '21年11月', '10', '22.00', '26.0', '26.0', '0.0', '0.30', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('491', '0', '82', '0-7-82-', '0', '', '8', '0', '46', 'Royal Nectar 蜂毒精华 20ml', 'Royal Nectar Rejuvenating Serum 20ml', '蜂毒精华', '皇室御用 邂逅蜂毒', 'Royal Nectar 蜂毒 精华 20ml 提拉 紧致 美肤 细纹 干燥 淡化 抗皱', '', '', null, '', '0', '', '10', '28.00', '24.5', '24.5', '0.0', '0.14', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('492', '0', '82', '0-7-82-', '0', '', '8', '0', '46', 'Royal Nectar 蜂毒眼霜 15ml', 'Royal Nectar Bee Venom Eye Cream 15ml', '蜂毒眼霜', '皇室御用 邂逅蜂毒', 'Royal Nectar 蜂毒 眼霜 15ml 提拉 紧致 美肤 细纹 干燥 淡化 抗皱', '', '', null, '', '0', '', '10', '22.00', '17.6', '17.6', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('493', '0', '82', '0-7-82-', '0', '', '8', '0', '46', 'Royal Nectar 蜂毒面霜 50ml', 'Royal Nectar Moisturising Face Lift 50ml', '蜂毒面霜', '皇室御用 邂逅蜂毒', 'Royal Nectar 蜂毒 面霜 50ml 提拉 紧致 美肤 细纹 干燥 淡化 抗皱', '', '', null, '', '0', '', '10', '33.70', '22.0', '22.0', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('494', '0', '82', '0-7-82-', '0', '', '8', '0', '46', 'Royal Nectar 蜂毒面膜 50ml', 'Royal Nectar Original Face Mask 50ml', '蜂毒面膜', '皇室御用 邂逅蜂毒', 'Royal Nectar 蜂毒 面膜 50ml 保湿 补水 收缩 毛孔 深层补水', '', '', null, '', '0', '', '10', '35.00', '32.8', '32.8', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('495', '0', '83', '0-7-83-', '106', '0-9-106-', '10', '0', '45', 'Red seal 红印儿童牙膏 100g', 'Red Seal Toothpaste 75g Kids', '红印儿童牙膏', '牙龈专业“护理师”', 'Red seal 红印 儿童 牙膏 100g 护龈 去渍 亮白 清新 口气 上火', '', '', null, '', '0', '19年11月', '10', '2.40', '0.5', '0.5', '0.0', '0.10', '0.12', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('496', '0', '83', '0-7-83-', '0', '', '10', '0', '45', 'Red seal 红印草本牙膏 120g', 'Red Seal Toothpaste 120g  Herbal', '红印草本牙膏', '牙龈专业“护理师”', 'Red seal 红印 草本 牙膏 120g 护龈 去渍 亮白 清新 口气 上火', '', '', null, '', '0', '20年4月', '10', '2.40', '2.5', '2.5', '0.0', '0.13', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('497', '0', '83', '0-7-83-', '0', '', '10', '0', '45', 'Red seal 红印去烟渍牙膏 120g', 'Red Seal Toothpaste 120g Smokers', '红印吸烟牙膏', '牙龈专业“护理师”', 'Red seal 红印 去烟渍 牙膏 120g 护龈 去渍 亮白 清新 口气 上火', '', '', null, '', '0', '21年3月', '10', '2.40', '2.5', '2.5', '0.0', '0.13', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('498', '0', '83', '0-7-83-', '0', '', '10', '0', '45', 'Red seal 红印苏打牙膏 120g', 'Red Seal Toothpaste 120g Baking Soda', '红印苏打牙膏', '牙龈专业“护理师”', 'Red seal 红印 苏打 牙膏 120g 护龈 去渍 亮白 清新 口气 上火', '', '', null, '', '0', '21年3月', '10', '2.40', '2.5', '2.5', '0.0', '0.13', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('499', '0', '83', '0-7-83-', '0', '', '10', '0', '45', 'Red seal 红印柠檬牙膏 120g', 'Red Seal Toothpaste 120g Lemon', '红印柠檬牙膏', '牙龈专业“护理师”', 'Red seal 红印 柠檬 牙膏 120g 护龈 去渍 亮白 清新 口气 上火', '', '', null, '', '0', '21年3月', '10', '2.40', '2.5', '2.5', '0.0', '0.13', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('500', '0', '83', '0-7-83-', '0', '', '10', '0', '45', 'Red seal 红印天然矿物牙膏 120g', 'Red Seal Toothpaste 120g Natural', '红印天然牙膏', '牙龈专业“护理师”', 'Red seal 红印 天然矿物 牙膏 120g 护龈 去渍 亮白 清新 口气 上火', '', '', null, '', '0', '20年4月', '10', '2.40', '2.5', '2.5', '0.0', '0.13', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('501', '0', '83', '0-7-83-', '0', '', '10', '0', '45', 'Red seal 红印蜂胶牙膏 120g', 'Red Seal Toothpaste 120g  Propolis', '红印蜂胶牙膏', '牙龈专业“护理师”', 'Red seal 红印 蜂胶 牙膏 120g 护龈 去渍 亮白 清新 口气 上火', '', '', null, '', '0', '21年11月', '10', '2.40', '2.5', '2.5', '0.0', '0.13', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('502', '0', '84', '0-7-84-', '0', '', '8', '0', '44', 'Antipodes 麦努卡蜂蜜亮白日霜 60ml', 'Antipodes Manuka Honey Skin-Brightening Light Day Cream 60mL', 'Anti蜂蜜日霜', '青春的一日之“剂”', 'Antipodes 麦努卡 蜂蜜 亮白 日霜 60ml 保湿 平衡 抗菌 抗敏 抗氧化 弹嫩', '', '', null, '', '0', '20年7月', '10', '25.00', '21.8', '21.8', '0.0', '0.16', '0.19', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('503', '0', '84', '0-7-84-', '0', '', '8', '0', '44', 'Antipodes 牛油果晚霜 60ml', 'Antipodes Avocado Pear Nourishing Night Cream  60mL', 'Anti晚霜', '青春的一日之“剂”', 'Antipodes 牛油果 晚霜 60ml 修护 保湿 面霜 滋养 抗皱 紧致', '', '', null, '', '0', '20年7月', '10', '25.00', '20.5', '20.5', '0.0', '0.16', '0.19', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('504', '0', '84', '0-7-84-', '0', '', '8', '0', '44', 'Antipodes 香草补水日霜 60ml', 'Antipodes Natural Vanilla Pod Hydrating Day Cream  60mL', 'Anti香草日霜', '青春的一日之“剂”', 'Antipodes 香草 补水 日霜 60ml 面霜 乳液 保湿 滋养 抗皱 紧致', '', '', null, '', '0', '20年5月', '10', '25.00', '21.8', '21.8', '0.0', '0.16', '0.19', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('505', '0', '84', '0-7-84-', '0', '', '8', '0', '44', 'Antipodes 补水精华 30ml', 'Antipodes Hosanna H2O Intensive Skin-Plumping Serum 30ml', 'Anti补水精华', '青春的一日之“剂”', 'Antipodes 补水 精华 30ml 修护 保湿 面霜 滋养 抗皱 紧致', '', '', null, '', '0', '21年1月', '10', '22.00', '21.7', '21.7', '0.0', '0.15', '0.19', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('506', '0', '84', '0-7-84-', '0', '', '8', '0', '44', 'Antipodes 亮白美白精华 30ml', 'Antipodes Apostle Skin-Brightening Serum 30ml', 'Anti美白精华', '青春的一日之“剂”', 'Antipodes 亮白 美白 精华 30ml 修护 保湿 面霜 滋养 抗皱 紧致', '', '', null, '', '0', '20年11月', '10', '24.00', '21.7', '21.7', '0.0', '0.10', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('507', '0', '84', '0-7-84-', '0', '', '8', '0', '44', 'Antipodes 奇异果眼霜 30ml', 'Antipodes Kiwi Seed Eye Cream 30ml', 'Anti kiwi眼霜', '青春的一日之“剂”', 'Antipodes 奇异果kiwi 眼霜 30ml 修护 保湿 面霜 滋养 抗皱 紧致', '', '', null, '', '0', '21年1月', '10', '21.00', '21.0', '21.0', '0.0', '0.10', '0.12', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('508', '0', '85', '0-7-85-', '79', '0-7-79-', '10', '0', '22', 'Healthy Care VE绵羊油 100g', 'Healthy Care Lanolin Cream with Vitamin E  100g', 'HC绵羊油100g', '澳洲纯正绵羊油', 'Healthy Care VE绵羊油 100g 面霜 护肤 身体乳 补水 滋润 维生素e霜  HC', '', '', null, '', '0', '22年5月', '10', '2.90', '3.2', '3.2', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('509', '0', '86', '0-7-86-', '0', '', '17', '0', '46', '包邮！Anthogenol冻龄面部精华 30ml', 'Antholgenol Anti-ageing facial serum 30ml', '露华浓粉底液30ml', '', '月光宝盒 精华 面部精华 抗衰老 冻龄', '', '', null, '', '0', '21年8月', '10', '83.00', '91.0', '91.0', '0.0', '0.12', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('510', '0', '86', '0-7-86-', '98', '0-69-98-', '17', '0', '46', '（包邮）8分钟 眼膜X2盒 赠8分钟 eye roller眼部按摩仪', '8+ Eye MaskX2+Eye Roller', '8分钟眼膜（2+1）三件套', '买眼膜X2 送按摩仪X1', '8分钟 眼膜买二 送8分钟 eye roller仪器  8分钟眼膜三件套 8+ Eye MaskX2+Eye Roller 眼霜 眼部按摩仪 赠品 送 买二送一', '', '', null, '', '0', '', '10', '22.00', '30.0', '30.0', '0.0', '0.25', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('511', '0', '86', '0-7-86-', '0', '', '17', '0', '52', '（包邮）Unichi Forty Fathoms 深海四十噚乳液+面霜套装', 'Unichi Forty Fathoms 2 Pieces Package', '深海乳+霜套装', '人鱼才懂深海的秘密', 'Unichi Forty Fathoms 深海四十噚乳液 50g 修复 紫外线 晒伤 肌肤 滋润 保湿 深海四十噚面霜 50ml 神奇面霜 修复 敏感肌 孕妇可用 套装', '', '', null, '', '0', '', '10', '63.00', '70.9', '70.9', '0.0', '1.00', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('512', '0', '86', '0-7-86-', '70', '0-70-', '10', '0', '46', 'Konjac 洗脸海绵 颜色随机', 'Konjac', '洗脸海绵球', '天然魔芋 全新体验', 'Konjac 洗脸海绵 海绵球 魔芋 洁面球 洗脸神器 搓澡棉 天然 洗脸球', '', '', null, '', '0', '', '10', '2.00', '2.5', '2.5', '0.0', '0.02', '0.03', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('513', '0', '86', '0-7-86-', '70', '0-70-', '10', '0', '32', 'Lucas 木瓜膏 25g', 'Lucas Papaw Ointment 25g', '木瓜膏25g', '一支在手 肌肤无忧', 'Lucas 木瓜膏 唇膏 万用膏 万能膏 25g 保湿 滋润 补水 防干裂 婴儿 手霜 烫伤膏', '', '', null, '', '0', '21年9月', '10', '3.68', '3.5', '3.5', '0.0', '0.03', '0.05', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('514', '0', '86', '0-7-86-', '106', '0-9-106-', '7', '0', '46', 'Vicks 婴儿通鼻膏 50g', 'Vicks BabyBalsam 50g', '通鼻膏', 'vicks 让全家so happy', 'Vicks 通鼻膏 50g 鼻塞 宝宝 婴幼儿 天然 舒缓 感冒', '', '', null, '', '0', '', '10', '5.00', '5.9', '5.9', '0.0', '0.08', '0.10', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('515', '0', '86', '0-7-86-', '106', '0-9-106-', '10', '0', '32', 'Lucas 木瓜膏 75g', 'Lucas Papaw Ointment 75g', '木瓜膏75g', '一支在手 肌肤无忧', 'Lucas 木瓜膏 唇膏 万用膏 万能膏  75g 保湿 滋润 补水 防干裂 婴儿 手霜 烫伤膏', '', '', null, '', '0', '21年8月', '10', '7.80', '7.5', '7.5', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('516', '0', '86', '0-7-86-', '14', '0-14-', '11', '0', '46', 'Bubba Blue 除螨喷雾 125ml', 'Bubba Blue Linen & Mattress Spray  125ML', '除螨喷雾', '天然除螨不伤人', 'Bubba Blue 除螨喷雾 125ml 去螨虫 喷雾剂 母婴 家用', '', '', null, '', '0', '21年6月', '10', '5.40', '7.5', '7.5', '0.0', '0.16', '0.19', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('517', '0', '86', '0-7-86-', '0', '', '11', '0', '46', 'Nair 脱毛膏 75g', 'Nair Hair Removing Cream Sensitive Skin 75g', 'Nair脱毛膏', '夏日必备', 'Nair 脱毛膏  Nair Hair Removing Cream Sensitive Skin 75g', '', '', null, '', '0', '23年3月', '10', '2.00', '3.0', '3.0', '0.0', '0.10', '0.15', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('518', '0', '86', '0-7-86-', '0', '', '11', '0', '54', 'Morning Fresh 超级浓缩洗洁精 400ml 柠檬味', 'Morning fresh Cleanser (Super Lemon) 400ml', '洗洁精灰盖柠檬', '', '​ Morning Fresh 超级浓缩洗洁精 400ml 柠檬味 易冲洗 呵护双手 洗碗 Morning fresh Cleanser (Super Lemon)400ml', '', '', null, '', '0', '', '10', '1.80', '2.0', '2.0', '0.0', '0.55', '0.62', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('519', '0', '86', '0-7-86-', '0', '', '11', '0', '54', 'Morning Fresh 浓缩洗洁精 400ml 橘香味', 'Morning fresh Cleanser (Orange&Tea Tree) 400ml', '洗洁精灰盖橘子', '', 'Morning Fresh 浓缩 洗洁精 400ml 橘香味橘子和茶树味 易冲洗 呵护双手 洗碗 Morning fresh Cleanser (Orange&Tea Tree) 400ml', '', '', null, '', '0', '', '10', '1.80', '2.0', '2.0', '0.0', '0.55', '0.62', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('520', '0', '86', '0-7-86-', '0', '', '7', '0', '24', '星期四农庄芦荟凝胶100g', 'Thursday Plantation Aloe Vera Gel 100g', '芦荟胶100g', '万用凝胶，不刺激', '星期四 农庄 芦荟胶 凝胶 25g 祛痘 淡化 晒后修复100g 保湿 滋润 补水 Aloe Vera Gel', '', '', null, '', '0', '23年12月', '10', '6.00', '5.9', '5.9', '0.0', '0.13', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('521', '0', '86', '0-7-86-', '0', '', '11', '0', '54', 'Aerogard驱蚊水250ml', 'Aerogard Odourless Insect Repellent 250ml Pump', 'SW喷雾250ml', '舒适夏日 全家必备', 'Aerogard 驱蚊水 250ml 夏日 夏天 驱蚊液 蚊子 虫子', '', '', null, '', '0', '', '10', '6.00', '6.0', '6.0', '0.0', '0.30', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('522', '0', '86', '0-7-86-', '0', '', '11', '0', '54', 'Aerogard驱蚊水175ml', 'Aerogard Odourless Insect Repellant 175ml Pump', 'SW喷雾175ml', '舒适夏日 全家必备', 'Aerogard 驱蚊水 175ml 夏日 夏天 驱蚊液 蚊子 虫子', '', '', null, '', '0', '', '10', '5.50', '6.0', '6.0', '0.0', '0.20', '0.28', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('523', '0', '86', '0-7-86-', '0', '', '10', '0', '54', 'Dettol 滴露药皂 3个装 375g/盒', 'Dettol Sapoderm Hygienic Soap for Acne Oily Skin 3 Pack', '滴露药皂', '一皂多用 妙处多多', 'Dettol 滴露 药皂 375g 香皂 肥皂', '', '', null, '', '0', '', '10', '3.80', '3.6', '3.6', '0.0', '0.40', '0.50', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('524', '0', '86', '0-7-86-', '0', '', '10', '0', '54', 'Gamophen 药皂 100g', 'Gamophen Antibacterial Medicated Soap 100g', '药皂', '医师一致推荐抗菌药皂', 'Gamophen 药皂 100g 抗菌 香皂 肥皂', '', '', null, '', '0', '21年6月', '10', '1.50', '1.4', '1.4', '0.0', '0.11', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('525', '0', '86', '0-7-86-', '0', '', '11', '0', '54', 'Morning Fresh 浓缩洗洁精 400ml 柠檬味', 'Morning fresh Cleanser (Lemon) 400ml', '洗洁精黄盖柠檬', '', 'Morning Fresh 浓缩 洗洁精 400ml 柠檬味 易冲洗 呵护双手 洗碗', '', '', null, '', '0', '', '10', '1.80', '2.0', '2.0', '0.0', '0.55', '0.62', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('526', '0', '86', '0-7-86-', '0', '', '11', '0', '54', 'Morning Fresh 浓缩洗洁精 400ml 原味', 'Morning fresh Cleanser (Original) 400ml', '洗洁精绿盖原味', '', 'Morning Fresh 浓缩 洗洁精 400ml 原味 易冲洗 呵护双手 洗碗', '', '', null, '', '0', '', '10', '1.80', '2.0', '2.0', '0.0', '0.55', '0.62', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('527', '0', '86', '0-7-86-', '0', '', '11', '0', '54', 'Gumption 万用清洁膏 500g', 'Gumption Mulyi-purpose cleanser （Green）500g', '清洁膏绿色', '轻轻一抹 污渍全无', 'Gumption 万用清洁膏 500g 厨房 厕所 清洁剂 多功能 去污膏 绿色', '', '', null, '', '0', '', '10', '4.20', '4.5', '4.5', '0.0', '0.60', '0.66', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('528', '0', '86', '0-7-86-', '0', '', '11', '0', '54', 'Gumption 万用清洁膏 500g', 'Gumption Multi-purpose Cleanser （Yellow） 500g', '清洁膏黄色', '轻轻一抹 污渍全无', 'Gumption 万用清洁膏 500g 厨房 厕所 清洁剂 多功能 去污膏 黄色', '', '', null, '', '0', '', '10', '4.20', '4.5', '4.5', '0.0', '0.60', '0.66', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('529', '0', '86', '0-7-86-', '0', '', '10', '0', '54', 'Refresh 抗疲劳眼药水 人工眼泪 0.4ml*30支', 'Refresh Eye Drops 0.4mL*30', '滴眼液', '今天你 “滴”了吗', 'Refresh 抗疲劳 滴眼液 眼药水 人工眼泪 0.4ml 干涩 缓解疲劳 视力 隐形', '', '', null, '', '0', '20年5月', '10', '9.00', '9.0', '9.0', '0.0', '0.05', '0.08', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('530', '0', '86', '0-7-86-', '0', '', '10', '0', '26', 'Comvita 蜂胶牙膏120g', 'Comvita Propolis Toothpaste with Tea Tree Oil And Xylitol 100g', '康维他牙膏', '全球罕有纯净好蜜', 'Comvita 麦卢卡 蜂胶牙膏120g  天然美白 淡斑 养胃 免疫力 抗衰老 促吸收 排毒', '', '', null, '', '0', '20年12月', '10', '3.50', '3.3', '3.3', '0.0', '0.12', '0.16', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('531', '0', '86', '0-7-86-', '0', '', '9', '0', '46', 'Syrene 黄金乳 100ml', 'Syrene  AQUA HYDATION DUO LOTION', 'Syrene 乳', '', 'Syrene 黄金 乳 海洋', '', '', null, '', '0', '', '10', '52.00', '53.0', '53.0', '0.0', '0.16', '0.21', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('532', '0', '86', '0-7-86-', '0', '', '9', '0', '54', 'Syrene 黄金水 150ml', 'Syrene  AQUA HYDATION DUO TONER', 'Syrene 水', '', 'Syrene 黄金 水 海洋', '', '', null, '', '0', '', '10', '52.00', '53.0', '53.0', '0.0', '0.22', '0.27', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('533', '0', '86', '0-7-86-', '70', '0-70-', '7', '0', '25', 'Vierra 胜肽洗面奶', 'Vierra Cleanser', '胜肽洗面奶', '', 'Vierra 胜肽洗面奶 洁面', '', '', null, '', '0', '', '10', '1.00', '6.2', '6.2', '0.0', '0.11', '0.16', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('534', '0', '86', '0-7-86-', '70', '0-70-', '7', '0', '25', 'Vierra 胜肽卸妆水', 'Vierra makeup remover', '胜肽卸妆水', '', 'Vierra 胜肽卸妆水', '', '', null, '', '0', '', '10', '1.00', '6.2', '6.2', '0.0', '0.26', '0.32', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('535', '0', '86', '0-7-86-', '59', '0-9-59-', '8', '0', '46', 'Sudocrem 250g 屁屁乐 护臀霜', 'Sudocrem 250g', '屁屁乐250g', '神奇屁屁霜赶走红pp', 'Sudocrem 250g 屁屁乐 护臀霜 新生儿 宝宝 pp膏 屁屁膏', '', '', null, '', '0', '20年2月', '10', '12.00', '11.8', '11.8', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('536', '0', '86', '0-7-86-', '59', '0-9-59-', '7', '0', '46', 'Sudocrem 125g 屁屁乐 护臀霜', 'Sudocrem 125g', '屁屁乐125g', '神奇屁屁霜赶走红pp', 'Sudocrem 125g 屁屁乐 护臀霜 新生儿 宝宝 pp膏 屁屁膏', '', '', null, '', '0', '21年1月', '10', '7.00', '6.9', '6.9', '0.0', '0.15', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('537', '0', '86', '0-7-86-', '59', '0-9-59-', '7', '0', '46', 'Bepanthen 拜耳万能膏 100g 19年11月到期', 'Bepanthen Antiseptic Cream 100g', '拜耳万能膏（深蓝19.11）', '不止护臀 更能万用抗菌', 'Bepanthen 拜耳万能膏 100g 婴儿 孕妇 抗菌 护臀 乳头膏 湿疹膏 晒后修复霜 屁屁膏 护臀膏', '', '', null, '', '0', '19年11月', '10', '7.50', '6.9', '6.9', '0.0', '0.13', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('538', '0', '86', '0-7-86-', '59', '0-9-59-', '7', '0', '46', 'Bepanthen 拜耳护臀膏 100g', 'Bepanthen Ointment 100g', '拜耳护臀霜（浅蓝）', '强力防护盾 守卫小屁屁', 'Bepanthen 拜耳护臀膏 100g 婴儿 红屁屁 尿布疹 湿疹 保湿 滋润 宝宝霜 pp乐 屁屁膏', '', '', null, '', '0', '19年11月', '10', '6.50', '6.3', '6.3', '0.0', '0.13', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('539', '0', '86', '0-7-86-', '122', '0-10-122-', '7', '0', '23', 'Bio-oil 百洛油 60ml', 'Bio Oil 60ml', '百洛油60ml', '修复妈咪痕迹 改善痘印', 'Bio-oil 百洛油 60ml 按摩油 妊娠纹 孕妇专用 肚子 肚皮', '', '', null, '', '0', '', '10', '9.50', '9.6', '9.6', '0.0', '0.10', '0.13', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('540', '0', '86', '0-7-86-', '122', '0-10-122-', '8', '0', '23', 'Bio-oil 百洛油 200ml', 'Bio Oil 200ml', '百洛油200ml', '修复妈咪痕迹 改善痘印', 'Bio-oil 百洛油 120ml 按摩油 妊娠纹 孕妇专用 肚子 肚皮', '', '', null, '', '0', '23年11月', '10', '21.00', '20.5', '20.5', '0.0', '0.25', '0.28', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('541', '0', '86', '0-7-86-', '0', '', '11', '0', '46', 'Banana Boat After Sun Aloe Gel 香蕉船芦荟晒后修复凝胶 250g', 'Banana Boat After Sun Aloe Gel', '香蕉船芦荟胶防晒', '晒后修复我擅长', 'Banana Boat After Sun Aloe Gel 香蕉船 芦荟胶 晒后 修复 凝胶 250g 防晒', '', '', null, '', '0', '', '10', '4.50', '4.5', '4.5', '0.0', '0.36', '0.45', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('542', '0', '86', '0-7-86-', '0', '', '7', '0', '46', 'Du\'it 脚膜 150g', 'Du\'it Tough Hand Cream 150g', 'Du\'it脚膜', '', 'Du\'it 急救 脚膜 Foot & Heel Balm Plus 50g duit', '', '', null, '', '0', '21年10月', '10', '7.80', '7.5', '7.5', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('543', '0', '86', '0-7-86-', '0', '', '7', '0', '46', 'Du\'it 手膜 150g', 'Du\'it Tough Hand Cream 150g', 'Du\'it手膜', '', 'Du\'it Tough Hand 急救手膜手霜 150g duit', '', '', null, '', '0', '22年2月', '10', '7.80', '7.5', '7.5', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('544', '0', '86', '0-7-86-', '0', '', '8', '0', '52', 'Unichi Forty Fathoms 深海四十噚眼霜 15ml', 'Unichi Skin Regenerator Eye Cream 15ml', '深海四十眼霜', '', 'Unichi Forty Fathoms 深海四十噚眼霜 15ml 修复 鱼尾纹 细纹 眼睛  肌肤 滋润 保湿 脂肪粒 黑眼圈', '', '', null, '', '0', '22年1月', '10', '20.00', '19.0', '19.0', '0.0', '0.11', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('545', '0', '86', '0-7-86-', '0', '', '8', '0', '46', 'SIKIRIE 小粉瓶3合1面部精华 50ml', 'Sikirie 3In1 Micro Essence 50ml', 'SIKIRIE小粉瓶', '樱萃微囊补水保湿', 'SIKIRIE 小粉瓶3合1面部精华 50ml樱桃天然保湿滋润补水三合一 高效保湿 提亮肤色 紧致修复 樱萃微囊补水保湿凝珠面部精华液 50ml', '', '', null, '', '0', '', '10', '15.00', '15.2', '15.2', '0.0', '0.17', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('546', '0', '86', '0-7-86-', '0', '', '8', '0', '52', 'Unichi 11 Pearls™ 极轻透白防晒乳 SPF 50+ 60ml', 'Unichi Pearls  Sun Lotion  SPF 50+  60ml', 'unichi珍珠防晒', '20秒速成膜 防黑老', 'Unichi 11 Pearls™ 十一珠 极轻美白防晒乳 spf 50+ 60ml  美容 胶原蛋白 维生素c 亮肤 美白淡斑 防晒 紫外线 防黑老', '', '', null, '', '0', '22年2月', '10', '10.00', '12.0', '12.0', '0.0', '0.09', '0.13', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('547', '0', '86', '0-7-86-', '0', '', '8', '0', '52', 'Unichi 11 Pearls™ 珍珠美白原液精华 50ml', 'Unichi 11 Pearls™ Brightening Vaccine 50ml', 'unichi珍珠精华', '透亮“珍珠肌”', 'Unichi 11 Pearls™ 十一珠 珍珠美白原液精华 50ml  美容 胶原蛋白 维生素c 亮肤 美白淡斑', '', '', null, '', '0', '21年2月', '10', '13.00', '11.9', '11.9', '0.0', '0.16', '0.21', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('548', '0', '86', '0-7-86-', '0', '', '7', '0', '46', 'SIKIRIE 唇膜20g', 'Sikirie Crystal Cherry Lip Mask 20G', 'SIKIRIE唇膜', '水嫩双唇睡出来', '樱桃淡化唇纹干裂天然保湿滋润补水嘴巴嘴唇', '', '', null, '', '0', '', '10', '6.50', '6.2', '6.2', '0.0', '0.10', '0.15', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('549', '0', '86', '0-7-86-', '0', '', '7', '0', '50', 'Lellure 玲珑冻膜 30ml*5', 'Lellure Illumination Gel Mask 30ml*5', '小冻膜', '越夜越有“肌”', 'Lellure 冻膜 30ml 熬夜 补水 保湿 收缩毛孔 涂抹式 面膜', '', '', null, '', '0', '20年1月', '10', '10.00', '9.5', '9.5', '0.0', '0.12', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('550', '0', '86', '0-7-86-', '0', '', '7', '0', '46', 'BeanBody 咖啡磨砂膏 蜂蜜味 220g', 'BeanBody  220g', '咖啡磨砂膏', '冰冰同款 好皮肤“磨”出来', 'BeanBody 磨砂膏 蜂蜜味 220g 去鸡皮 去角质 清洁肌肤 冰冰推荐 网红磨砂膏', '', '', null, '', '0', '21年5月', '10', '11.00', '10.2', '10.2', '0.0', '0.23', '0.27', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('551', '0', '86', '0-7-86-', '0', '', '11', '0', '60', 'Femfresh 女性洗液 弱酸性 敏感 250ml', 'Femfresh Sensitive Wash 250ml', '女士洗液蓝色', '呵护自己 让美持续更久', 'Femfresh 女性洗液 敏感 250ml 护理 私处 杀菌 止痒 去异味 炎症', '', '', null, '', '0', '21年8月', '10', '3.70', '3.7', '3.7', '0.0', '0.30', '0.33', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('552', '0', '86', '0-7-86-', '0', '', '11', '0', '60', 'Femfresh 女性洗液 弱酸性 加强型 （百合）250ml', 'Femfresh Deodorising Wash 250ml', '女士洗液白色', '呵护自己 让美持续更久', 'Femfresh 女性洗液 加强型 （百合）250ml 护理 私处 杀菌 止痒 去异味 炎症', '', '', null, '', '0', '21年1月', '10', '3.60', '3.9', '3.9', '0.0', '0.30', '0.33', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('553', '0', '86', '0-7-86-', '0', '', '11', '0', '60', 'Femfresh 女性洗液 弱酸性 日常性（洋甘菊） 250ml', 'Femfresh Daily Wash 250ml', '女士洗液透明', '呵护自己 让美持续更久', 'Femfresh 女性洗液 日常性（洋甘菊） 250ml 护理 私处 杀菌 止痒 去异味 炎症', '', '', null, '', '0', '21年6月', '10', '4.00', '3.7', '3.7', '0.0', '0.30', '0.33', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('554', '0', '86', '0-7-86-', '0', '', '8', '0', '49', 'Trilogy 有机玫瑰果油 20ml', 'Trilogy Rosehip Oil 20ml', '玫瑰果油20ml', '英国凯特王妃御用', 'Trilogy 有机玫瑰果油 20ml 保湿 补水 面部 精华 抗氧化', '', '', null, '', '0', '20年7月', '10', '13.20', '12.0', '12.0', '0.0', '0.10', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('555', '0', '86', '0-7-86-', '0', '', '8', '0', '49', 'Trilogy 有机玫瑰果油抗氧化 30ml', 'Trilogy Rosehip Oil Antioxidant + 30ml', '玫瑰果油30ml', '英国凯特王妃御用', 'Trilogy 有机玫瑰果油抗氧化 30ml 保湿 补水 面部 精华 抗氧化', '', '', null, '', '0', '20年8月', '10', '17.60', '18.0', '18.0', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('556', '0', '86', '0-7-86-', '0', '', '8', '0', '49', 'Trilogy 有机玫瑰果油 45ml', 'Trilogy Rosehip Oil 45ml', '玫瑰果油45ml', '英国凯特王妃御用', 'Trilogy 有机玫瑰果油 45ml 保湿 补水 面部 精华 抗氧化', '', '', null, '', '0', '21年1月', '10', '20.00', '20.5', '20.5', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('557', '0', '86', '0-7-86-', '0', '', '11', '0', '46', 'Banana Boat SPF 50+ 香蕉船儿童滚珠防晒霜（蓝） 75ml', 'Banana Boat SPF 50+ Kids 75ml Roll On', '香蕉船kids蓝盖', '宝宝专用防晒', 'Banana Boat SPF 50+ 香蕉船 儿童 滚珠 防晒霜（蓝）75ml', '', '', null, '', '0', '21年3月', '10', '5.00', '6.5', '6.5', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('558', '0', '86', '0-7-86-', '0', '', '11', '0', '46', 'Banana Boat SPF 50+ 香蕉船婴儿滚珠防晒霜（粉） 75ml', 'Banana Boat SPF 50+ Baby 75ml Roll On', '香蕉船baby粉盖', '宝宝专用防晒', 'Banana Boat SPF 50+ 香蕉船婴儿滚珠防晒霜（粉） 75ml', '', '', null, '', '0', '21年3月', '10', '5.00', '6.5', '6.5', '0.0', '0.15', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('559', '0', '86', '0-7-86-', '0', '', '7', '0', '46', '8分钟 蓝色补水去油面膜 7片装', 'Jema Rose 8+ Facial Mask (Replenishing Hydration)', '8分钟面膜蓝', '8 mins ago？', '8分钟面膜 蓝色 补水 面膜 7片装 紧致 抗皱 提亮 抗氧化 蓝面膜', '', '', null, '', '0', '21年8月', '10', '7.90', '7.9', '7.9', '0.0', '0.26', '0.34', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('560', '0', '86', '0-7-86-', '0', '', '7', '0', '46', '8分钟 光彩美白面膜 7片装', 'Jema Rose 8+ Facial Mask (Whitening)', '8分钟面膜白', '8 mins ago？', '8分钟面膜 白色 补水 美白 提亮 面膜 7片装 紧致 抗皱 提亮 抗氧化 白面膜', '', '', null, '', '0', '21年8月', '10', '7.90', '7.9', '7.9', '0.0', '0.26', '0.34', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('561', '0', '86', '0-7-86-', '0', '', '7', '0', '46', '8分钟 粉色羊奶焕肤面膜 10片装', 'Jema Rose 8+ Facial Mask (Gost Milk)', '8分钟面膜粉', '8 mins ago？', '8分钟面膜 粉色 补水 山羊奶 面膜 10片装 紧致 抗皱 提亮 抗氧化 粉面膜', '', '', null, '', '0', '21年8月', '10', '7.90', '7.9', '7.9', '0.0', '0.36', '0.43', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('562', '0', '86', '0-7-86-', '0', '', '7', '0', '24', '星期四农庄祛痘凝胶25g', 'Thursday Plantation Tea Tree Medicated Gel For Acne 25g', '祛痘凝胶', '战痘实力派 祛痘不留痕', '星期四 农庄 祛痘 凝胶 25g 茶树 精油 祛痘 淡化', '', '', null, '', '0', '23年12月', '10', '6.20', '6.4', '6.4', '0.0', '0.05', '0.08', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('563', '0', '86', '0-7-86-', '96', '0-69-96-', '8', '0', '46', 'TheraLady 24K纳米黄金精华液 大金瓶 100ML', 'TheraLady 24K Pure Gold Ampoule  100ML', '大金瓶', '黄金亢皱 金箔养护', 'TheraLady 24K 纳米黄金精华液 大金瓶 100ML 补水 透亮 紧致 全能王', '', '', null, '', '0', '', '10', '16.00', '14.0', '14.0', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('564', '0', '86', '0-7-86-', '10', '0-10-', '8', '0', '46', 'KarenMurrell 口红套装 3支/套 色号1/5/17', 'KarenMurrell 1/5/17', 'KM口红套装1/5/17', '一支可以吃的口红', 'KM口红 可食用 套装 孕妇可用 纯天然 润唇', '', '', null, '', '0', '', '10', '23.00', '22.0', '22.0', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('565', '0', '86', '0-7-86-', '122', '0-10-122-', '8', '0', '46', 'Dermatix 祛疤膏 疤痕膏 15g', 'Dermatix Scar Reduction Gel 15g', '祛疤膏', '澳洲Dermatix 伤痕克星', 'Dermatix 祛疤膏 疤痕膏 15g 烫伤 剖腹产疤 痘印 擦伤 手术伤痕 刀疤 修复', '', '', null, '', '0', '21年7月', '10', '26.50', '27.5', '27.5', '0.0', '0.03', '0.04', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('566', '0', '86', '0-7-86-', '0', '', '8', '0', '46', '8分钟 新西兰热玛吉眼膜', '8+ Eye Mask', '8分钟眼膜', '', '8分钟 眼膜  8分钟 眼膜 8分钟眼霜 8分钟 新西兰热玛吉眼膜', '', '', null, '', '0', '', '10', '11.00', '12.0', '12.0', '0.0', '0.09', '0.12', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('567', '0', '86', '0-7-86-', '0', '', '8', '0', '46', 'Lellure 玲珑果冻面霜 50g', 'Lellure ILLUMINATION JELLY CREAM 50g', 'Lellure面霜', '修仙更修肌', 'Lellure ILLUMINATION JELLY CREAM 玲珑焕颜果冻面霜 50g 保湿 抗皱 修复 滋润 补水', '', '', null, '', '0', '22年2月', '10', '25.00', '24.0', '24.0', '0.0', '0.34', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('568', '0', '86', '0-7-86-', '0', '', '8', '0', '46', 'Lellure 玲珑V脸线雕精华 40ml', 'Lellure MICRO RADIANCE SERUM 40ml', 'LellureV精华', 'V你而来', 'Lellure MICRO RADIANCE SERUM 玲珑V脸线雕精华 40ml 颜紧致精华 遇见 LELLURE玲珑塑颜紧致精华', '', '', null, '', '0', '20年2月', '10', '28.00', '27.4', '27.4', '0.0', '0.25', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('569', '0', '86', '0-7-86-', '0', '', '8', '0', '36', 'BIO-E酵母精华原液 50ml', 'Bio-E Ferment Filtrate Power Essence 50ml', 'bio-e小金瓶', '平价sk兔神仙水', 'BIO-E酵母原液 50ml bio-e小金瓶 浓缩VC精华补水保湿提亮秦岚同款', '', '', null, '', '0', '22年2月', '10', '21.00', '19.9', '19.9', '0.0', '0.25', '0.32', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('570', '0', '86', '0-7-86-', '0', '', '8', '0', '46', 'Skin Nutrient 硅胶洗面奶', 'Skin Nutrient Cleanser', 'SN硅胶洗面奶', '亮白魔法泡泡 卸妆/洁面/亮白/护肤/ 多效合一', 'Skin Nutrient Cleanser 硅胶洗面奶 洁面 敏感肌 SN', '', '', null, '', '0', '', '10', '16.00', '17.6', '17.6', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('571', '0', '86', '0-7-86-', '0', '', '8', '0', '46', 'Lellure 玲珑冻膜 30ml*10', 'Lellure Illumination Gel Mask  30ml*10ml', '大冻膜', '越夜越有“肌”', 'Lellure 冻膜 30ml 熬夜 补水 保湿 收缩毛孔 涂抹式 面膜', '', '', null, '', '0', '20年1月', '10', '28.00', '26.0', '26.0', '0.0', '0.17', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('572', '0', '86', '0-7-86-', '0', '', '8', '0', '52', 'Unichi Forty Fathoms 深海四十噚颈霜 60ML', 'Unichi Forty Fathoms Skin Regenerator Neck Cream 60ml', '深海颈霜', '人鱼才懂深海的秘密', 'Unichi Forty Fathoms 深海四十噚颈霜 60ML 修复 颈纹 细纹 提拉 祛皱', '', '', null, '', '0', '21年8月', '10', '29.00', '27.5', '27.5', '0.0', '0.10', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('573', '0', '86', '0-7-86-', '0', '', '8', '0', '46', 'Sikirie 大白球纳米记忆面霜', 'Sikirie white ball', '大白球', '护肤黑科技', 'Sikirie 大白球 纳米 记忆面霜', '', '', null, '', '0', '', '10', '20.00', '19.0', '19.0', '0.0', '0.22', '0.32', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('574', '0', '86', '0-7-86-', '98', '0-69-98-', '17', '0', '46', 'Chantelle 香娜露儿羊胎素原液 10ml*6', 'Chantelle Bio-Placenta 10ml*6', '香娜露儿羊胎素精华', '逆龄法宝 美丽定格', 'Chantelle Bio-Placenta 香娜露儿 金色系列复合羊胎素原液 10ml*6', '', '', null, '', '0', '', '10', '50.00', '54.0', '54.0', '0.0', '0.60', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('575', '0', '86', '0-7-86-', '0', '', '9', '0', '46', 'Avene 雅漾活泉水喷雾 300ml', 'Avene Eau Thermale Spring Water 300ml', '雅漾喷雾', '“我是水、但我不是一般的水，我是雅漾活泉水”', 'Avene 雅漾 喷雾 300ml 大喷 补水 爽肤水 镇定舒缓敏感', '', '', null, '', '0', '', '10', '11.50', '12.0', '12.0', '0.0', '0.38', '0.44', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('576', '0', '86', '0-7-86-', '0', '', '14', '0', '20', 'Sukin 三件套（泡沫洁面125ml+保湿喷雾125ml+保湿乳液125ml）', 'Sukin 3 Pieces Package', 'Sukin套装', '基础护肤三部曲', 'Sukin 三件套 泡沫洁面125ml 保湿喷雾125ml 保湿乳液125ml', '', '', null, '', '0', '', '10', '12.54', '14.0', '14.0', '0.0', '0.60', '0.77', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('577', '0', '86', '0-7-86-', '0', '', '9', '0', '46', 'Syrene 海洋凝胶保湿睡眠面膜 果冻睡眠面膜 100ml', 'Syrene Aqua Hydrating Masque 100ml', 'SYRENE面膜', '赶通告前的神级面膜', 'Syrene 凝胶 面膜 果冻 100ml 亮白 补水 保湿 修复 紧致', '', '', null, '', '0', '', '10', '45.00', '49.3', '49.3', '0.0', '0.40', '0.45', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('578', '0', '86', '0-7-86-', '0', '', '9', '0', '46', 'Unichi Forty Fathoms 深海四十噚乳液 50g', 'Unichi Forty Fathoms Skin Regenerator Lotion 50ml ', '深海乳液', '人鱼才懂深海的秘密', 'Unichi Forty Fathoms 深海四十噚乳液 50g 修复 紫外线 晒伤 肌肤 滋润 保湿', '', '', null, '', '0', '21年4月', '10', '38.50', '39.0', '39.0', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('579', '0', '86', '0-7-86-', '0', '', '9', '0', '46', 'Unichi Forty Fathoms 海四十噚面霜 50ml', 'Unichi Forty Fathoms Skin Regenerator Cream 50ml ', '深海面霜', '人鱼才懂深海的秘密', 'Unichi Forty Fathoms 深海四十噚面霜 50ml 神奇面霜 修复 敏感肌 孕妇可用', '', '', null, '', '0', '20年9月', '10', '40.00', '37.9', '37.9', '0.0', '0.16', '0.19', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('580', '0', '86', '0-7-86-', '70', '0-70-', '4', '0', '50', 'BeneBliss 夜间果蔬酵素', 'BeneBliss Night Enzyme Rich 60 Counts', 'BeneBliss果蔬酵素', '酵醒你的美', 'BeneBliss 夜间果蔬酵素 BeneBliss Night Enzyme Rich 减肥 瘦身 轻体', '', '', null, '', '0', '21年5月', '10', '10.00', '16.5', '16.5', '0.0', '0.07', '0.10', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('581', '0', '86', '0-7-86-', '14', '0-14-', '4', '0', '46', 'Bonzer 考拉安睡宝 天然清除螨虫蜱虫助睡眠2片/包', 'Bonzer Koala Sachet', '除螨片', '睡的安心 妈妈省心', 'BonZer 考拉 天然 除螨虫 蜱虫 助睡眠 2片', '', '', null, '', '0', '', '10', '8.00', '8.5', '8.5', '0.0', '0.05', '0.06', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('582', '0', '87', '0-7-87-', '0', '', '8', '0', '46', 'Koehl 龙珠洁面球（紫）魔法蓝花楹', 'Koehl Cleanser（Purple）', '龙珠紫', '果冻龙珠洁面球', 'Koehl 龙珠 洁面球（紫）魔法蓝花楹 洗面奶 果冻 泡沫', '', '', null, '', '0', '20年3月', '10', '16.80', '21.0', '21.0', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('583', '0', '87', '0-7-87-', '0', '', '8', '0', '46', 'Koehl 龙珠洁面球（黑）魔法死海泥', 'Koehl Cleanser（Black）', '龙珠黑', '果冻龙珠洁面球', 'Koehl 龙珠洁面球（黑）魔法死海泥 洗面奶 果冻 泡沫', '', '', null, '', '0', '20年3月', '10', '16.80', '21.0', '21.0', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('584', '0', '87', '0-7-87-', '0', '', '8', '0', '46', 'Koehl 龙珠洁面球（白）魔法羊奶', 'Koehl Cleanser（White）', '龙珠白', '果冻龙珠洁面球', 'Koehl 龙珠洁面球（白）魔法羊奶 洗面奶 果冻 泡沫', '', '', null, '', '0', '20年3月', '10', '16.80', '21.0', '21.0', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('585', '0', '87', '0-7-87-', '0', '', '8', '0', '46', 'Koehl 龙珠洁面球（蓝）冰肌', 'Koehl Cleanser（Blue）', '龙珠蓝', '果冻龙珠洁面球', 'Koehl 龙珠洁面球（蓝）冰肌 洗面奶 果冻 泡沫', '', '', null, '', '0', '20年3月', '10', '16.80', '21.0', '21.0', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('586', '0', '87', '0-7-87-', '0', '', '8', '0', '46', 'Koehl 龙珠洁面球（粉）魔法嫩白', 'Koehl Cleanser（Pink）', '龙珠粉', '果冻龙珠洁面球', 'Koehl 龙珠洁面球（粉）魔法嫩白 洗面奶 果冻 泡沫', '', '', null, '', '0', '20年3月', '10', '16.80', '21.0', '21.0', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('587', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7009 ugg 雪地靴 豆豆鞋 暮色粉', 'nk 7009 nude pink', 'nk7009暮色粉', '', 'nk nock 7009 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.63', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('588', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7009 ugg 雪地靴 豆豆鞋 巧克力', 'nk 7009 chocolate', 'nk7009巧克力', '', 'nk nock 7009 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.63', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('589', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7009 ugg 雪地靴 豆豆鞋 薰衣草紫', 'nk 7009 light purple', 'nk7009薰衣草紫', '', 'nk nock 7009 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.63', '0.63', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('590', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7009 ugg 雪地靴 豆豆鞋 黑色', 'nk 7009 black', 'nk7009黑色', '', 'nk nock 7009 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.63', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('591', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7006 ugg 雪地靴 豆豆鞋 栗色', 'nk 7006 Chestnut', 'nk 7006栗色', '', 'nk nock 7006 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.86', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('592', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7006 ugg 雪地靴 豆豆鞋 栗色', 'nk 7006 Chestnut', 'nk 7006栗色', '', 'nk nock 7006 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.86', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('593', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7006 ugg 雪地靴 豆豆鞋 粉橘色', 'nk 7006 Light pink', 'nk 7006粉橘色', '', 'nk nock 7006 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.86', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('594', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7006 ugg 雪地靴 豆豆鞋 黑色', 'nk 7006 Black', 'nk 7006黑色', '', 'nk nock 7006 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.86', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('595', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7006 ugg 雪地靴 豆豆鞋 灰色', 'nk 7006 Grey', 'nk 7006灰色', '', 'nk nock 7006 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.86', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('596', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7006 ugg 雪地靴 豆豆鞋 灰色', 'nk 7006 Grey', 'nk 7006灰色', '', 'nk nock 7006 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.86', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('597', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7009 ugg 雪地靴 豆豆鞋 栗色', 'nk 7009 chestnut', 'nk7009栗色', '', 'nk nock 7009 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.63', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('598', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7009 ugg 雪地靴 豆豆鞋 栗色', 'nk 7009 chestnut', 'nk7009栗色', '', 'nk nock 7009 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.63', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('599', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7009 ugg 雪地靴 豆豆鞋 山羊灰', 'nk 7009 grey', 'nk7009灰色', '', 'nk nock 7009 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.63', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('600', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7007 ugg 雪地靴 豆豆鞋 深蓝色', 'nk 7007 navy', 'nk7007 深蓝色', '', 'nk nock 7007 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.70', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('601', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7005 ugg 雪地靴 豆豆鞋 粉色', 'nk 7005 pink', 'nk7005粉色', '', 'nk nock 7005 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '50.0', '50.0', '0.0', '0.70', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('602', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7005 ugg 雪地靴 豆豆鞋 栗色', 'nk 7005 chestnut', 'nk7005栗色', '', 'nk nock 7005 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '50.0', '50.0', '0.0', '0.70', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('603', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7005 ugg 雪地靴 豆豆鞋 暮色粉', 'nk 7005 nude pink', 'nk7005暮色粉', '', 'nk nock 7005 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '50.0', '50.0', '0.0', '0.70', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('604', '0', '88', '0-13-88-', '0', '', '17', '0', '54', '包邮！「澳洲现货直邮」NK 7005 ugg 雪地靴 豆豆鞋 蓝色', 'nk 7005 blue', 'nk7005蓝色', '', 'nk nock 7005 豆豆鞋 雪地靴 ugg', '', '', null, '', '0', '', '10', '0.00', '50.0', '50.0', '0.0', '0.70', '1.00', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568617180');
INSERT INTO `pm_goods` VALUES ('605', '0', '89', '0-13-89-', '0', '', '17', '0', '54', '（包邮）YPL 星空围巾 两色', 'YPL Scarf', 'YPL围巾', '一条围出“不凡感”', 'YPL星空羊驼绒围巾200cm*70cm保暖意大利朱一龙同款百搭长款披肩正品变色', '', '', null, '', '0', '', '10', '42.00', '39.9', '39.9', '0.0', '0.12', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('606', '0', '90', '0-13-90-', '96', '0-69-96-', '17', '0', '54', '一个包邮！YPL蜜桃翘臀短裤 均码', 'YPL Slim Peach Short free size', 'ypl蜜桃短裤', '', 'ypl 蜜桃 短裤 内裤 翘臀', '', '', null, '', '0', '', '10', '12.50', '23.0', '23.0', '0.0', '0.13', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('607', '0', '90', '0-13-90-', '0', '', '14', '0', '54', 'YPL 美肩运动背心 内衣 1盒', 'YPL Crossback Sport Bralette', 'YPL运动背心', '', '（包邮）YPL 美肩运动背心 内衣 1盒  YPL Crossback Sport Bralette YPL运动背心 减肥 瘦身 塑身 塑形衣', '', '', null, '', '0', '', '10', '0.00', '11.6', '11.6', '0.0', '0.21', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('608', '0', '90', '0-13-90-', '0', '', '14', '0', '54', 'YPL 光速束腰收腹裤 1条', 'YPL Abdominal Shaping Short', 'YPL收腹裤', '', '（包邮）YPL 光速束腰收腹裤 1条 YPL Abdominal Shaping Short  裤子 短裤 减肥裤 瘦身裤', '', '', null, '', '0', '', '10', '0.00', '17.3', '17.3', '0.0', '0.12', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('609', '0', '90', '0-13-90-', '0', '', '14', '0', '54', 'YPL 内裤（1条） 均码', 'YPL briefs', 'YPL内裤', '', 'YPL 内裤 均码 三角裤 内内 内衣 塑形', '', '', null, '', '0', '', '10', '1.00', '2.5', '2.5', '0.0', '0.11', '0.15', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('610', '0', '90', '0-13-90-', '0', '', '14', '0', '54', 'YPL 纤体瘦身袜', 'YPL SLIM SANDY MASSAGE SOCKS', 'YPL纤体瘦身袜', '', 'YPL纤体瘦身袜 高弹力 运动 不起球 瘦身 袜子', '', '', null, '', '0', '', '10', '0.00', '2.5', '2.5', '0.0', '0.13', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('611', '0', '90', '0-13-90-', '0', '', '17', '0', '54', '（包邮）YPL3D塑身瑜伽裤 YOGA', 'YPL Slim （YOGA）', '瑜伽瘦身裤', '', 'slim燃脂瘦腿裤（包邮）YPL3D塑身瑜伽裤 YOGA美腿裤高腰裤高弹力运动打底裤不起球薄款发热瘦身裤重塑曲线瘦腰细腰提臀 重塑曲线 逆转人生', '', '', null, '', '0', '', '10', '25.00', '31.8', '31.8', '0.0', '0.19', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('612', '0', '90', '0-13-90-', '0', '', '17', '0', '54', '（包邮）YPL光速瘦身裤 猫步款', 'YPL Slim （CAT WALK）', '猫步瘦身裤', '', 'slim燃脂瘦腿裤YPL光速瘦身裤 猫步款美腿裤高腰裤高弹力运动打底裤不起球薄款发热瘦身裤重塑曲线瘦腰细腰提臀 重塑曲线 逆转人生', '', '', null, '', '0', '', '10', '23.00', '30.0', '30.0', '0.0', '0.19', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('613', '0', '90', '0-13-90-', '0', '', '17', '0', '54', '（包邮）YPL瘦腿裤 薄', 'YPL Slim （THIN）', '瘦腿裤 薄', '', 'slim燃脂瘦腿裤YPL美腿裤高腰裤高弹力运动打底裤不起球薄款发热瘦身裤重塑曲线瘦腰细腰提臀 重塑曲线 逆转人生', '', '', null, '', '0', '', '10', '22.00', '30.0', '30.0', '0.0', '0.19', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('614', '0', '90', '0-13-90-', '0', '', '17', '0', '54', '（包邮）YPL瘦腿裤 厚', 'YPL Slim（THK）', '瘦腿裤 厚', '重塑曲线 逆转人生', 'slim燃脂瘦腿裤YPL美腿裤高腰裤高弹力运动打底裤不起球厚款发热瘦身裤重塑曲线瘦腰细腰提臀', '', '', null, '', '0', '', '10', '19.00', '31.8', '31.8', '0.0', '0.28', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('615', '0', '90', '0-13-90-', '96', '0-69-96-', '16', '0', '54', 'UGG反季特价！「国内发货」人民币¥1680包邮！大爆款牛仔皮草外套三色入 懒兔毛+狐狸毛', 'coat', '大衣', '', '皮草 大衣 ugg 狐狸毛 懒兔毛 牛仔外套 衣服 coat', '', '', null, '', '0', '', '10', '250.00', '375.0', '375.0', '0.0', '0.00', '0.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('616', '0', '91', '0-66-91-', '0', '', '16', '0', '28', '（国内现货）Penfolds rwt X6瓶', 'Penfolds rwt', '奔富rwt', '', '奔富  澳洲进口 红酒 干红 葡萄酒 rwt 西拉子', '', '', null, '', '0', '', '10', '876.00', '928.0', '928.0', '0.0', '1.00', '1.00', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618351');
INSERT INTO `pm_goods` VALUES ('617', '0', '91', '0-66-91-', '0', '', '16', '0', '28', '（国内现货）Penfolds st henri X6瓶', 'Penfolds st henri', '奔富st henri', '', '奔富  澳洲进口 红酒 干红 葡萄酒 st henri 西拉子', '', '', null, '', '0', '', '10', '618.00', '654.0', '654.0', '0.0', '1.00', '1.00', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618363');
INSERT INTO `pm_goods` VALUES ('618', '0', '91', '0-66-91-', '0', '', '16', '0', '28', '(国内现货) Penfolds Bin150X6瓶', 'Penfolds Bin150', '奔富Bin150', '', '奔富  澳洲进口 红酒 干红 葡萄酒 Bin150 西拉子', '', '', null, '', '0', '', '10', '564.00', '592.0', '592.0', '0.0', '1.00', '1.00', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618373');
INSERT INTO `pm_goods` VALUES ('619', '0', '91', '0-66-91-', '0', '', '16', '0', '28', '（国内现货）Penfolds Bin407X6瓶 巨缺 按照付款顺序到货发', 'Penfolds Bin407', '奔富Bin407', '巨缺 按照付款顺序到货发', '奔富  澳洲进口 红酒 干红 葡萄酒 Bin407 赤霞珠', '', '', null, '', '0', '', '10', '712.00', '754.0', '754.0', '0.0', '1.00', '1.00', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618382');
INSERT INTO `pm_goods` VALUES ('620', '0', '91', '0-66-91-', '0', '', '16', '0', '28', '（国内现货）Penfolds Bin389X6瓶', 'Penfolds Bin389', '奔富Bin389', '', '奔富  澳洲进口 红酒 干红 葡萄酒 Bin389 赤霞珠西拉子', '', '', null, '', '0', '', '10', '552.00', '594.0', '594.0', '0.0', '1.00', '1.00', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618391');
INSERT INTO `pm_goods` VALUES ('621', '0', '91', '0-66-91-', '0', '', '16', '0', '28', '（国内现货）Penfolds B128X6瓶', 'Penfolds B128', '奔富Bin128', '', '奔富  澳洲进口 红酒 干红 葡萄酒 Bin128 西拉子', '', '', null, '', '0', '', '10', '342.00', '372.0', '372.0', '0.0', '1.00', '1.00', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618331');
INSERT INTO `pm_goods` VALUES ('622', '0', '91', '0-66-91-', '0', '', '16', '0', '28', '（国内现货）Penfolds Bin28X6瓶', 'Penfolds Bin28', '奔富B28', '', '奔富  澳洲进口 红酒 干红 葡萄酒 B28 西拉子', '', '', null, '', '0', '', '10', '273.00', '316.0', '316.0', '0.0', '1.00', '1.00', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618323');
INSERT INTO `pm_goods` VALUES ('623', '0', '91', '0-66-91-', '0', '', '16', '0', '28', '（国内现货）Penfolds Bin8X6瓶', 'Penfolds Bin8', '奔富Bin8', '', '奔富  澳洲进口 红酒 干红 葡萄酒 Bin8 赤霞珠 西拉子 设拉子', '', '', null, '', '0', '', '10', '270.00', '304.0', '304.0', '0.0', '1.00', '1.00', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618316');
INSERT INTO `pm_goods` VALUES ('624', '0', '91', '0-66-91-', '0', '', '16', '0', '28', '（国内现货）Penfolds Bin2X6瓶', 'Penfolds Bin2', '奔富Bin2', '', '奔富  澳洲进口 红酒 干红 葡萄酒 Bin2 西拉子蒙塔罗', '', '', null, '', '0', '', '10', '318.00', '348.0', '348.0', '0.0', '1.00', '1.00', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618305');
INSERT INTO `pm_goods` VALUES ('625', '0', '91', '0-66-91-', '0', '', '16', '0', '28', '（国内现货）Penfolds max\'sX6瓶', 'Penfolds max\'s', '奔富max', '', '奔富  澳洲进口 红酒 干红 葡萄酒 max 西拉子', '', '', null, '', '0', '', '10', '216.00', '240.0', '240.0', '0.0', '1.00', '1.00', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568618294');
INSERT INTO `pm_goods` VALUES ('626', '0', '96', '0-69-96-', '0', '', '9', '0', '43', 'Natio水买三赠洗面奶一个', 'natio mask pack', 'natio水x3赠洁面', '', 'natio 面膜 去皱 保湿 洗面奶', '', '', null, '', '0', '', '10', '24.00', '24.0', '24.0', '0.0', '1.10', '1.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('627', '0', '96', '0-69-96-', '98', '0-69-98-', '17', '0', '50', '（包邮）Anthogenol 月光宝盒 100粒', 'Anthogenol 100 Capsules', '月光宝盒', '葡萄籽中的爱马仕', 'Anthogenol 月光宝盒 100粒 花青素 葡萄籽精华 美白 抗氧化 花青素 美白淡斑 防辐射', '', '', null, '', '0', '22年11月', '10', '94.50', '96.5', '96.5', '0.0', '0.10', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('628', '0', '96', '0-69-96-', '0', '', '9', '0', '43', 'Natio面膜买二赠洗面奶一个', 'natio mask pack', 'natio面膜x2赠洁面', '', 'natio 面膜 去皱 保湿 洗面奶', '', '', null, '', '0', '', '10', '19.80', '19.8', '19.8', '0.0', '0.45', '0.55', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('629', '0', '96', '0-69-96-', '122', '0-10-122-', '4', '0', '45', 'Red seal 红印黑糖 500g', 'Red Seal Blackstrap Molasses 500g', '红印黑糖', '排毒养颜 暖宫补血', 'Red seal 红印 黑糖 500g 暖宫 调经 糖浆 补铁 舒缓 化瘀 排毒养颜 红糖', '', '', null, '', '0', '21年2月', '10', '3.00', '2.9', '2.9', '0.0', '0.60', '0.65', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('630', '0', '96', '0-69-96-', '97', '0-69-97-', '7', '0', '46', '赠品 需拍下！kisea眼膜六片装', 'kisea eye mask', 'kisea眼膜', '赠品 需拍下！', 'kisea 眼膜', '', '', null, '', '0', '', '10', '0.00', '0.0', '0.0', '0.0', '0.10', '0.10', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('631', '0', '96', '0-69-96-', '122', '0-10-122-', '7', '0', '46', 'Palmer\'s 帕玛氏按摩霜 125g', 'Palmer\'s Massage Cream for Stretch Marks 125g', '帕玛氏霜125g', '', 'Palmer\'s  帕玛氏 妊娠霜  按摩霜 125g 产后修复 预防 妊娠纹 按摩乳肚子 肚皮', '', '', null, '', '0', '', '10', '9.50', '10.5', '10.5', '0.0', '0.17', '0.20', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('632', '0', '96', '0-69-96-', '122', '0-10-122-', '7', '0', '46', 'Palmer\'s 帕玛氏妊娠霜 250ml', 'Palmer\'s Stretch Marks  250ml', '帕玛氏霜250ml', '孕期无痕 美丽加分', 'Palmer\'s  帕玛氏 妊娠霜 250ml 产后修复 预防 妊娠纹 按摩乳肚子 肚皮', '', '', null, '', '0', '', '10', '8.00', '11.4', '11.4', '0.0', '0.32', '0.37', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('633', '0', '96', '0-69-96-', '21', '0-4-21-', '4', '0', '8', 'Swisse 卵磷脂1200mg 300粒', 'Swisse Ultiboost Lecithin 1200mg 300 Capsules', 'SW卵磷脂300粒', '血管清道夫', 'Swisse 卵磷脂1200mg 300粒 清理血管 高血糖 高血压 高血脂 记忆力 糖尿病  SW', '', '', null, '', '0', '21年8月', '10', '20.00', '19.5', '19.5', '0.0', '0.63', '0.83', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('634', '0', '96', '0-69-96-', '0', '', '4', '0', '50', 'BIO-FERMENTED 殷桃酵素果冻', 'BIO-FERMENTED', '樱桃酵素果冻', 'Q弹的酵素', '樱桃酵素果冻BIO-FERMENTED', '', '', null, '', '0', '', '10', '1.00', '1.5', '1.5', '0.0', '0.19', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('635', '0', '96', '0-69-96-', '0', '', '4', '0', '50', '单笔订单满$50 赠品专拍 需拍下发货！', 'BIO-FERMENTED gift', '赠品酵素果冻', '赠酵素果冻散装10支', '单笔订单满$50 赠品专拍赠品樱桃酵素BIO-FERMENTED  gift樱桃酵素果冻散装10支', '', '', null, '', '0', '', '10', '0.00', '0.0', '0.0', '0.0', '0.18', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('636', '0', '98', '0-69-98-', '82', '0-7-82-', '9', '0', '46', 'Royal Nectar 蜂毒四件套', 'Royal Nectar 4 set', '蜂毒四件套', '面膜精华眼霜面霜', 'Royal Nectar 蜂毒面膜 50ml 保湿 补水 收缩 毛孔 深层补水  蜂毒面霜 50ml  蜂毒眼霜 15ml  蜂毒 精华 20ml  提拉 紧致 美肤 细纹 干燥 淡化 抗皱', '', '', null, '', '0', '', '10', '0.00', '106.0', '106.0', '0.0', '1.00', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('637', '0', '107', '0-5-107-', '70', '0-70-', '17', '0', '58', '（包邮）jellycat兔子中号 米棕 纯色', 'Medium 31cm Beige', 'Jellycat中兔 米棕', '', '（包邮）jellycat兔子中号 米棕色 纯色 Medium 31cm Beige 英国 兔兔 bunnies bunny 邦尼兔 米色 棕色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('638', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 松露色 纯色', 'Medium 31cm Truffle', 'Jellycat中兔 松露色', '', '（包邮）jellycat兔子中号 松露色色 纯色 Medium 31cmTruffle 英国 兔兔 bunnies bunny 邦尼兔 深棕色 棕色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('639', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 浅紫色 纯色', 'Medium 31cm Hyacinth', 'Jellycat中兔 浅紫色', '', '（包邮）jellycat兔子中号 浅紫色 纯色 Medium 31cm Sorbet 英国 兔兔 bunnies bunny 邦尼兔 紫色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('640', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 水蓝色 纯色', 'Medium 31cm Aqua', 'Jellycat中兔 水蓝色', '', '（包邮）jellycat兔子中号 水蓝色 薄荷绿 绿色 蓝色 纯色 Medium 31cm Sorbet 英国 兔兔 bunnies bunny 邦尼兔', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('641', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 杏色 纯色', 'Medium 31cm Apricot', 'Jellycat中兔 杏色', '', '（包邮）jellycat兔子中号 杏色 纯色 Medium 31cm Sorbet 英国 兔兔 bunnies bunny 邦尼兔 浅橘色 橙色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('642', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 奶白色 星星耳朵款', 'Medium 31cm Twinkle Cream', 'jellycat中兔 奶白星星耳朵款', '', '（包邮）jellycat兔子中号 奶白 纯色 Medium 31cm Cream 英国 兔兔 bunnies bunny 邦尼兔 白色 奶白色 星星耳朵 花耳朵', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('643', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 蓝紫色 花耳朵款', 'Medium 31cm Blossom Bashful Bluebell', 'jellycat中兔 蓝紫色花耳朵款', '', '（包邮）jellycat兔子中号 蓝紫色 花耳朵 Medium 31cm Bluebell 英国 兔兔 bunnies bunny 邦尼兔 蓝色 紫色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('644', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 银灰色 条纹耳朵款', 'Medium 31cm Blake Bunny', 'jellycat中兔 银灰条纹耳朵', '', '（包邮）jellycat兔子中号 银灰色 条纹耳朵款 Medium 31cm Blake Bunny jellycat中兔 银灰条纹耳朵 Silver 英国 兔兔 bunnies bunny 邦尼兔 银色 灰色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('645', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 银灰色 花耳朵款', 'Medium 31cm Blossom Bashful Silver', 'jellycat中兔 银灰花耳朵款', '', '（包邮）jellycat兔子中号 银灰色 花耳朵 Medium 31cm Silver 英国 兔兔 bunnies bunny 邦尼兔 银色 灰色 花耳朵款', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('646', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 郁金香粉 花耳朵款', 'Medium 31cm Blossom Bashful Tulip pink', 'jellycat中兔 郁金香粉花耳朵款', '', '（包邮）jellycat兔子中号 郁金香粉 花耳朵款 Medium 31cm Tulip pink 02 英国 兔兔 bunnies bunny 邦尼兔 粉色 郁金香粉 花耳朵', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('647', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 奶白色 花耳朵款', 'Medium 31cm Blossom Bashful Cream', 'jellycat中兔 奶白花耳朵款', '', '（包邮）jellycat兔子中号 奶白 纯色 Medium 31cm Cream 英国 兔兔 bunnies bunny 邦尼兔 白色 奶白色 花耳朵', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('648', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 米棕色 花耳朵款', 'Medium 31cm Blossom Bashful Beige', 'Jellycat中兔 米棕花耳朵', '', '（包邮）jellycat兔子中号 米棕色 纯色 Medium 31cm Beige 英国 兔兔 bunnies bunny 邦尼兔 米色 棕色 花耳朵', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('649', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 柠檬黄 纯色', 'Medium 31cm Lemon', 'jellycat中兔 柠檬黄', '', '（包邮）jellycat兔子中号 柠檬黄色 纯色 Medium 31cm Lemon 英国 兔兔 bunnies bunny 邦尼兔', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('650', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 银灰色 纯色', 'Medium 31cm Silver', 'jellycat中兔 银灰', '', '（包邮）jellycat兔子中号 银灰色 纯色 Medium 31cm Silver 英国 兔兔 bunnies bunny 邦尼兔 银色 灰色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('651', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 蓝紫色 纯色', 'Medium 31cm Bluebell', 'jellycat中兔 蓝紫', '', '（包邮）jellycat兔子中号 蓝紫色 纯色 Medium 31cm Bluebell 英国 兔兔 bunnies bunny 邦尼兔 蓝色 紫色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('652', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 郁金香粉 纯色', 'Medium 31cm Tulip pink', 'jellycat中兔 郁金香粉', '', '（包邮）jellycat兔子中号 郁金香粉 纯色 Medium 31cm Sorbet 英国 兔兔 bunnies bunny 邦尼兔 粉色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('653', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 浅粉 纯色', 'Medium 31cm Pink', 'Jellycat中兔 浅粉', '', '（包邮）jellycat兔子中号 浅粉 纯色 Medium 31cm Pink 英国 兔兔 bunnies bunny 邦尼兔 粉色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('654', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 奶白 纯色', 'Medium 31cm Cream', 'Jellycat中兔 奶白', '', '（包邮）jellycat兔子中号 奶白 纯色 Medium 31cm Cream 英国 兔兔 bunnies bunny 邦尼兔 白色 奶白色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('655', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 浅蓝 纯色', 'Medium 31cm Blue', 'jellycat中兔 浅蓝', '', '（包邮）jellycat兔子中号 浅蓝色 纯色 Medium 31cm Blue 英国 兔兔 bunnies bunny 邦尼兔 蓝色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('656', '0', '107', '0-5-107-', '0', '', '17', '0', '58', '（包邮）jellycat兔子中号 果冻粉 纯色', 'Medium 31cm Sorbet', 'Jellycat中兔 果冻粉', '', '（包邮）jellycat兔子中号 果冻粉 纯色 Medium 31cm Sorbet 英国 兔兔 bunnies bunny 邦尼兔 粉色', '', '', null, '', '0', '', '10', '32.00', '32.0', '32.0', '0.0', '0.20', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('657', '0', '108', '0-5-108-', '0', '', '17', '0', '58', '（包邮）jellycat兔子L号 米棕色 花耳朵款', 'Medium 36cm Blossom Bashful Beige', 'jellycat大号 米棕花耳朵', '36cm', '（包邮）jellycat兔子L号 大号 米棕色 纯色 Medium 36cm Blossom Bashful Beige 英国 兔兔 bunnies bunny 邦尼兔 米色 棕色 花耳朵', '', '', null, '', '0', '', '10', '42.00', '44.0', '44.0', '0.0', '0.35', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('658', '0', '108', '0-5-108-', '0', '', '17', '0', '58', '（包邮）jellycat兔子L号 郁金香粉 纯色', 'Medium 36cm Tulip pink', 'jellycat大号兔郁金香粉', '36cm', 'jellycat大号兔郁金香粉 粉色   Medium 36cm Tulip pink（包邮）jellycat兔子L号 纯色 英国 兔兔 bunnies bunny 邦尼兔', '', '', null, '', '0', '', '10', '42.00', '44.0', '44.0', '0.0', '0.35', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('659', '0', '108', '0-5-108-', '0', '', '17', '0', '58', '（包邮）jellycat兔子L号 浅蓝 纯色', 'Medium 36cm Blue', 'jellycat大号兔浅蓝', '36cm', 'jellycat大号兔蓝色 浅蓝色  Medium 36cm Blue （包邮）jellycat兔子L号 纯色 英国 兔兔 bunnies bunny 邦尼兔', '', '', null, '', '0', '', '10', '42.00', '44.0', '44.0', '0.0', '0.35', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('660', '0', '108', '0-5-108-', '0', '', '17', '0', '58', '（包邮）jellycat兔子L号 浅粉 纯色', 'Medium 36cm Pink', 'jellycat大号兔浅粉', '36cm', 'jellycat大号兔粉色 浅粉色  Medium 36cm Pink （包邮）jellycat兔子L号 纯色 英国 兔兔 bunnies bunny 邦尼兔', '', '', null, '', '0', '', '10', '42.00', '44.0', '44.0', '0.0', '0.35', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('661', '0', '108', '0-5-108-', '0', '', '17', '0', '58', '（包邮）jellycat兔子L号 奶白色 纯色', 'Medium 36cm Cream', 'jellycat大号兔奶白色', '36cm', 'jellycat大号兔奶白色  Medium 36cm Cream （包邮）jellycat兔子L号 奶白 纯色 英国 兔兔 bunnies bunny 邦尼兔 白色', '', '', null, '', '0', '', '10', '42.00', '44.0', '44.0', '0.0', '0.35', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('662', '0', '108', '0-5-108-', '0', '', '17', '0', '58', '（包邮）jellycat兔子L号 米棕 纯色', 'Medium 36cm Beige', 'jellycat大号兔米棕色', '36cm', 'jellycat大号兔米棕色  Medium 36cm Beige （包邮）jellycat兔子L号 米棕 纯色 英国 兔兔 bunnies bunny 邦尼兔 米色 棕色 深棕 浅棕', '', '', null, '', '0', '', '10', '42.00', '44.0', '44.0', '0.0', '0.35', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('663', '0', '111', '0-5-111-', '0', '', '17', '0', '58', '（包邮）jellycat兔子XXXL 米棕 纯色', 'Medium 118cm Beige', 'Jellycat兔XXXL号米棕色', '巨大号118cm', '（包邮）jellycat兔子XXXL 巨大 最大 118cm 米棕色 纯色 Medium 31cm Beige 英国 兔兔 bunnies bunny 邦尼兔 米色 棕色', '', '', null, '', '0', '', '10', '220.00', '260.0', '260.0', '0.0', '3.20', '3.80', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('664', '0', '112', '0-5-112-', '0', '', '17', '0', '58', '（包邮）jellycat 呲牙恐龙 36cm', 'jellycat 36cm Toothy T Rex', 'jellycat呲牙恐龙', '', '（包邮）jellycat 呲牙恐龙 36cm  绿色 jellycat 36cm Toothy T Rex 大牙', '', '', null, '', '0', '', '10', '39.00', '48.0', '48.0', '0.0', '0.30', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('665', '0', '112', '0-5-112-', '0', '', '17', '0', '58', '（包邮）jellycat 呲牙河马 36cm', 'jellycat 36cm Toothy Hippo', 'jellycat呲牙河马', '', '（包邮）jellycat 呲牙河马 36cm  粉色  jellycat 36cm Toothy Hippo 大牙', '', '', null, '', '0', '', '10', '39.00', '48.0', '48.0', '0.0', '0.30', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('666', '0', '112', '0-5-112-', '0', '', '17', '0', '58', '（包邮）jellycat 呲牙粉猪 36cm', 'jellycat 36cm Toothy Pig', 'jellycat呲牙猪', '', '（包邮）jellycat 呲牙粉猪 36cm jellycat 36cm Toothy Pig 大牙', '', '', null, '', '0', '', '10', '39.00', '48.0', '48.0', '0.0', '0.30', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('667', '0', '112', '0-5-112-', '0', '', '17', '0', '58', '（包邮）jellycat 呲牙鲨鱼 36cm', 'jellycat 36cm Toothy Shark', 'jellycat呲牙鲨鱼', '', '（包邮）jellycat 呲牙鲨鱼 36cm 蓝色 jellycat 36cm Toothy Shark 大牙', '', '', null, '', '0', '', '10', '39.00', '48.0', '48.0', '0.0', '0.30', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('668', '0', '112', '0-5-112-', '0', '', '17', '0', '58', '（包邮）jellycat 呲牙飞龙 36cm', 'jellycat 36cm Toothy Dragon', 'jellycat呲牙飞龙', '', '红色 （包邮）jellycat 呲牙飞龙 36cm jellycat 36cm Toothy Dragon 大牙', '', '', null, '', '0', '', '10', '39.00', '48.0', '48.0', '0.0', '0.30', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('669', '0', '112', '0-5-112-', '0', '', '17', '0', '58', '（包邮）jellycat 呲牙驴子 36cm', 'jellycat 36cm Toothy Donkey', 'jellycat呲牙驴', '', 'cat 36cm Toothy Donkey  （包邮）jellycat 呲牙驴子 36cm 灰色 毛驴 大牙', '', '', null, '', '0', '', '10', '39.00', '48.0', '48.0', '0.0', '0.30', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('670', '0', '113', '0-5-113-', '0', '', '17', '0', '58', '（包邮）扁扁熊 29cm 棕色', 'BB Bear 29cm beige', '扁扁熊（棕色）', '', '（包邮）扁扁熊 29cm 棕色 深棕色 浅棕色 小熊 大熊 考拉熊 树袋熊', '', '', null, '', '0', '', '10', '55.00', '55.0', '55.0', '0.0', '0.30', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('671', '0', '113', '0-5-113-', '0', '', '17', '0', '58', '（包邮）扁扁熊 29cm 灰色', 'BB Bear 29cm grey', '扁扁熊（灰色）', '', '（包邮）扁扁熊 29cm 灰色 深灰色 浅灰色 小熊 大熊 考拉熊 树袋熊', '', '', null, '', '0', '', '10', '55.00', '55.0', '55.0', '0.0', '0.30', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('672', '0', '113', '0-5-113-', '0', '', '17', '0', '58', '（包邮）扁扁熊 29cm 浅蓝', 'BB Bear 29cm blue', '扁扁熊（浅蓝色）', '', '（包邮）扁扁熊 29cm 浅蓝 浅蓝色 小熊 大熊 考拉熊 树袋熊', '', '', null, '', '0', '', '10', '55.00', '55.0', '55.0', '0.0', '0.30', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('673', '0', '113', '0-5-113-', '0', '', '17', '0', '54', '（包邮）扁扁熊 29cm 6色可选', 'Jellycat', '扁扁熊', '让你爱不释手', 'jellycat娃娃扁扁熊布偶玩偶卡哇伊毛绒玩具', '', '', null, '', '0', '', '10', '0.00', '55.0', '55.0', '0.0', '0.30', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('674', '0', '113', '0-5-113-', '0', '', '17', '0', '58', '（包邮）Jellycat 特别款', 'Jellycat', 'Jellycat', '', '', '', '', null, '', '0', '', '10', '0.00', '80.0', '80.0', '0.0', '0.70', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('675', '0', '113', '0-5-113-', '0', '', '17', '0', '58', '（包邮）Jellycat 经典款', 'Jellycat', 'jellycat', '', '', '', '', null, '', '0', '', '10', '0.00', '48.0', '48.0', '0.0', '0.50', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('676', '0', '113', '0-5-113-', '0', '', '17', '0', '58', '（包邮）Jellycat宝宝鞋', 'Jellycat', 'Jellyc宝宝鞋', '小萌娃必备', 'Jellycat宝宝鞋兔子兔兔独角兽软底鞋', '', '', null, '', '0', '', '10', '0.00', '30.0', '30.0', '0.0', '0.10', '1.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('677', '0', '113', '0-5-113-', '0', '', '17', '0', '58', '（包邮）Jellycat小动物款 中号31cm', 'Jellycat', 'Jellyc小动物', '款式太多点开看哦', 'Jellycat小动物中号31cm兔子狗狮子恐龙独角兽企鹅猴子小天鹅大象长颈鹿考拉章鱼青蛙小鸡小羊白羊白熊小熊水波纹', '', '', null, '', '0', '', '10', '0.00', '34.0', '34.0', '0.0', '0.30', '1.00', '', '0', '1000', '1', '0', '0', '0', '1', '0', '0', '0', '50', '1567741018', '1568790425');
INSERT INTO `pm_goods` VALUES ('678', '0', '113', '0-5-113-', '0', '', '17', '0', '58', '（包邮）Jellycat 超大号兔子 73cm', 'Jellycat', 'really big', '暖心大兔抱回家', 'Jellycat 超大号兔子 73cm really big 兔兔', '', '', null, '', '0', '', '10', '0.00', '128.0', '128.0', '0.0', '1.25', '1.90', '', '0', '1000', '1', '0', '0', '0', '1', '0', '0', '0', '50', '1567741018', '1568790418');
INSERT INTO `pm_goods` VALUES ('679', '0', '113', '0-5-113-', '0', '', '17', '0', '58', '（包邮）jellycat兔子 纯色 花耳朵色 31cm-51cm', 'Jellycat', 'Jellyc兔子中号', '明星产品', 'jellycat兔子31cm36cm51cm', '', '', null, '', '0', '', '10', '0.00', '32.0', '32.0', '0.0', '0.50', '1.00', '', '0', '1000', '1', '0', '0', '0', '1', '0', '0', '0', '50', '1567741018', '1568790411');
INSERT INTO `pm_goods` VALUES ('680', '0', '115', '0-114-115-', '70', '0-70-', '7', '0', '8', 'Swisse 蜂蜜清洁面膜 70g', 'Swisse Manuka Honey Detoxifying Facial Mask 70g', 'SW面膜70g', '真正的排毒面膜', 'Swisse 麦努卡 排毒 清洁 面膜 70g 蜂蜜面膜 清洁 温和 去角质 修复 控油 保湿 舒缓 SW 蜂毒面膜 蜂胶面膜 蜂蜜清洁面膜', '', '', null, '', '0', '', '10', '9.00', '9.9', '9.9', '0.0', '0.19', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('681', '0', '115', '0-114-115-', '86', '0-7-86-', '7', '0', '8', 'Swisse 小黄瓜卸妆水 300ml', 'Swisse Face Micellar Water Make Up Remover 300ml', 'SW黄瓜水300ml', '纯天然的水', 'Swisse 小黄瓜卸妆水 300ml 脸部 面部 温和 不刺激 清爽 肌肤水嫩 敏感肌 SW', '', '', null, '', '0', '', '10', '6.00', '5.5', '5.5', '0.0', '0.35', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('682', '0', '115', '0-114-115-', '0', '', '7', '0', '8', 'Swisse 抹茶舒缓排毒矿物泥面膜 70g', 'Swisse Matcha Tea Anti-Pollution Clay Mask', 'Swisse 抹茶面膜', '', 'Sw Swisse 抹茶 舒缓 排毒 矿物泥 面膜', '', '', null, '', '0', '', '10', '11.88', '11.9', '11.9', '0.0', '0.18', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('706', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 叶绿素片 100粒', 'Swisse Chlorophyll+ 100 Tablets', 'SW叶绿素100粒', '开启绿色轻体能量', 'Swisse 叶绿素片 100粒 润肠 塑体 调理肠胃 免疫力 天然 排毒 抗氧化  SW', '', '', null, '', '0', '20年11月', '10', '13.50', '13.0', '13.0', '0.0', '0.10', '0.14', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('707', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 高倍叶绿素片1000mg 200粒', 'Swisse High Strength Chlorophyll+ 1000mg 200 Tablets', 'SW叶绿素200粒', '开启绿色轻体能量', 'Swisse 高倍叶绿素片1000mg 200粒 润肠 塑体 调理肠胃 免疫力 天然 排毒 抗氧化 SW', '', '', null, '', '0', '21年4月', '10', '26.00', '24.9', '24.9', '0.0', '0.24', '0.28', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('708', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 叶绿素液 原味 500ml 19年11月', 'Swisse Chlorophyll Spearmint 500ml', 'SW叶绿素液原味500ml', '开启绿色轻体能量', 'Swisse 叶绿素液 原味 500ml 润肠 塑体 调理肠胃 免疫力 天然 排毒 抗氧化 SW', '', '', null, '', '0', '19年11月', '10', '9.50', '3.0', '3.0', '0.0', '0.60', '0.65', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('709', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 叶绿素液 梅子味 500ml', 'Swisse Chlorophyll Mixed Berry 500ml', 'SW叶绿素梅子500ml', '开启绿色轻体能量', 'Swisse 叶绿素液 梅子味 500ml 润肠 塑体 调理肠胃 免疫力 天然 排毒 抗氧化 SW', '', '', null, '', '0', '20年4月', '10', '11.40', '11.5', '11.5', '0.0', '0.60', '0.70', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('710', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 月见草油 200粒', 'Swisse Ultiboost Evening Primrose Oil 200 Capsules', 'SW月见草200粒', '美丽由内而外', 'Swisse 月见草油 200粒 调节 内分泌 保养 卵巢 改善 痛经 淡斑 排毒 SW', '', '', null, '', '0', '20年11月', '10', '16.50', '14.5', '14.5', '0.0', '0.35', '0.45', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('711', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 清肺片 90粒', 'Swisse Ultiboost Lung Health Support 90 Tablets', 'SW清肺90粒', '天然草本清肺片', 'Swisse 清肺片 90粒 护肺片 润肺 粉尘 灰尘 雾霾 排毒 缓解 呼吸 止痰 天然  SW', '', '', null, '', '0', '21年10月', '10', '23.80', '23.2', '23.2', '0.0', '0.20', '0.24', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('712', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 记忆力片 50粒', 'Swisse Ultiboost Memory + Focus 50 Tablets', 'SW记忆力片50粒', '让大脑高速运转', 'Swisse 记忆力片 50粒 银杏叶 维生素 缓解 疲劳 增强记忆 vb 健脑 SW', '', '', null, '', '0', '20年7月', '10', '13.90', '12.5', '12.5', '0.0', '0.07', '0.10', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('713', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 睡眠片 100粒', 'Swisse Ultiboost Sleep 100 Tablets', 'SW睡眠100粒', '像宝宝一样安睡', 'Swisse 睡眠片 100粒 助眠 舒缓 压力 抵抗力 免疫力 安睡 镇定  SW', '', '', null, '', '0', '20年11月', '10', '14.80', '14.2', '14.2', '0.0', '0.18', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('714', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 胶原蛋白片 100粒', 'Swisse Ultiboost Hair Skin Nails+ 100 Tablets', 'SW胶原片100粒', '破除岁月“皱”语', 'Swisse 胶原蛋白片 100粒 护发 生甲 美容 胶原蛋白 排毒 亮肤 美白 淡斑 抗皱 SW', '', '', null, '', '0', '21年5月', '10', '16.00', '15.0', '15.0', '0.0', '0.14', '0.19', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('715', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 蔓越莓25000mg 90粒', 'Swisse Ultiboost High Strength Cranberry 90 Capsules', 'SW蔓越莓90粒', '女人好闺蜜', 'Swisse 蔓越莓25000mg 90粒 保养 内分泌 卵巢 泌尿系统 健康  SW', '', '', null, '', '0', '21年8月', '10', '29.20', '26.5', '26.5', '0.0', '0.18', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('716', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 蔓越莓25000mg 30粒', 'Swisse Ultiboost High Strength Cranberry 25,000mg 30 Capsules', 'SW蔓越莓30粒', '女人好闺蜜', 'Swisse 蔓越莓25000mg 30粒 保养 内分泌 卵巢 泌尿系统 健康  SW', '', '', null, '', '0', '20年11月', '10', '11.70', '12.0', '12.0', '0.0', '0.08', '0.12', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('717', '0', '115', '0-114-115-', '0', '', '4', '0', '8', 'Swisse 葡萄籽14250mg 180粒', 'Swisse Grape Seed 14,250mg 180 Tablets', 'SW葡萄籽180粒', '在不保养 我们就老啦', 'Swisse 葡萄籽14250mg 180粒 美白 抗氧化 花青素 美白淡斑 防辐射  SW', '', '', null, '', '0', '21年5月', '10', '16.50', '16.5', '16.5', '0.0', '0.17', '0.21', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('718', '0', '116', '0-114-116-', '70', '0-70-', '7', '0', '9', 'Blackmores澳佳宝 VE面霜 50g', 'Blackmores Natural Vitamin E Cream 50g', 'BMve面霜', '澳洲断货王', 'Blackmores澳佳宝 VE面霜 50g 面霜 护肤 身体乳 补水 滋润 维生素e霜 冰冰霜 BM', '', '', null, '', '0', '21年10月', '10', '6.00', '5.4', '5.4', '0.0', '0.07', '0.09', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('719', '0', '116', '0-114-116-', '29', '0-4-29-', '4', '0', '9', 'Blackmores澳佳宝 血糖平衡片 90粒', 'Blackmores Sugar Balance 90 Tablets', 'BM血糖90粒', '放肆吃 不惧血糖', 'Blackmores澳佳宝 血糖 平衡片 90粒 胆固醇 血糖 平衡 新陈代谢 胰岛素 维生素 体重 BM', '', '', null, '', '0', '21年10月', '10', '8.99', '9.5', '9.5', '0.0', '0.20', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('720', '0', '116', '0-114-116-', '29', '0-4-29-', '4', '0', '9', 'Blackmores澳佳宝 西芹籽 3000 50粒', 'Blackmores Celery 3000mg  50 Tablets', 'BM西芹50粒', '排毒利尿 缓解痛风', 'Blackmores澳佳宝 西芹籽 3000 50粒 关节 缓解 痛风 神经系统 尿酸 风湿  BM', '', '', null, '', '0', '21年9月', '10', '8.80', '8.8', '8.8', '0.0', '0.17', '0.22', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('721', '0', '116', '0-114-116-', '22', '0-4-22-', '4', '0', '9', 'Blackmores澳佳宝 加强维骨力 120粒', 'Blackmores Joint Formula Advanced 120 Tablets', 'BM加强维骨力120粒', '高端关节养护', 'Blackmores澳佳宝 加强维骨力 120粒 软骨素 氨糖 骨骼 强健 关节灵 风湿性关节炎 骨质增生 肩周炎 BM', '', '', null, '', '0', '20年11月', '10', '30.00', '32.5', '32.5', '0.0', '0.45', '0.55', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('722', '0', '116', '0-114-116-', '29', '0-4-29-', '4', '0', '9', 'Blackmores澳佳宝 CoQ10心脏宝150mg 30粒', 'Blackmores Co Q10 150mg  30 Tablets', 'BM Q10 30粒', '让心脏活力倍增', 'Blackmores澳佳宝 CoQ10心脏宝150mg 30粒 保护心脏 延缓衰老 畅通 血管 增强活力 BM', '', '', null, '', '0', '21年3月', '10', '11.50', '11.0', '11.0', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('723', '0', '116', '0-114-116-', '122', '0-10-122-', '4', '0', '9', 'Blackmores澳佳宝 叶酸片500mcg 90粒', 'Blackmores Folate 500mcg 90 Tablets', 'BM叶酸90粒', '孕期好伴侣', 'Blackmores澳佳宝 叶酸片500mcg 90粒 怀孕 备孕 补充胎儿营养 预防畸形 提高受孕 BM', '', '', null, '', '0', '21年6月', '10', '4.84', '4.5', '4.5', '0.0', '0.12', '0.17', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('724', '0', '116', '0-114-116-', '0', '', '4', '0', '9', 'Blackmores澳佳宝 圣洁莓 40粒 21年6月', 'Blackmores Vitex Angus Castus 40 Tablets', 'BM圣洁莓40粒', '平衡女性内分泌', 'Blackmores澳佳宝 圣洁莓 40粒 舒缓 痛经 平衡 内分泌 延缓 衰老 排毒 新陈代谢 BM', '', '', null, '', '0', '21年9月', '10', '7.99', '7.5', '7.5', '0.0', '0.13', '0.18', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('725', '0', '116', '0-114-116-', '0', '', '4', '0', '9', 'Blackmores澳佳宝 青少年复合维生素女孩 60粒', 'Blackmores Teen Multi + Brain Nutrients for Girls 60 Capsules', 'BM女孩补脑片', '给小公主最好呵护', 'Blackmores澳佳宝 青少年复合维生素男孩 60粒 补脑片 脑残片 BM', '', '', null, '', '0', '20年3月', '10', '14.00', '12.9', '12.9', '0.0', '0.24', '0.32', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('726', '0', '116', '0-114-116-', '0', '', '4', '0', '9', 'Blackmores澳佳宝 青少年复合维生素男孩 60粒', 'Blackmores Teen Multi + Brain Nutrients for Guys 60 Capsules', 'BM男孩补脑片', '神童专享', 'Blackmores澳佳宝 青少年复合维生素男孩 60粒 补脑片 脑残片 BM', '', '', null, '', '0', '20年6月', '10', '14.00', '12.5', '12.5', '0.0', '0.24', '0.32', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('727', '0', '116', '0-114-116-', '0', '', '4', '0', '9', 'Blackmores澳佳宝 维生素B VB 175粒', 'Blackmores VB 175 Tablets', 'BM VB175粒', '释放压力 做回自己', 'Blackmores澳佳宝 维生素B VB 175粒 免疫力 维生素 缓解疲劳 提高精力 延衰老 平衡营养 BM', '', '', null, '', '0', '21年5月', '10', '26.60', '27.0', '27.0', '0.0', '0.50', '0.60', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('728', '0', '116', '0-114-116-', '0', '', '4', '0', '9', 'Blackmores澳佳宝 维E胶囊1000IU 100粒', 'Blackmores Natural Vitamin E 500IU 150 Capsules', 'BMve胶囊100粒', 'E直这样美下去', 'Blackmores澳佳宝 维E胶囊1000IU 100粒 心脏健康 美肤 养颜 抗衰老 免疫力 抵抗力 BM', '', '', null, '', '0', '22年8月', '10', '27.17', '26.6', '26.6', '0.0', '0.35', '0.45', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('729', '0', '116', '0-114-116-', '0', '', '4', '0', '9', 'Blackmores澳佳宝 越桔护眼 30粒', 'Blackmores Bilberry Eye Support Advanced 30 Tablets', 'BM护眼30粒', '改善视力 明亮双眼', 'Blackmores澳佳宝 越桔护眼 30粒 保护 视力 缓解 疲劳 眼涩  BM', '', '', null, '', '0', '20年12月', '10', '10.56', '10.5', '10.5', '0.0', '0.12', '0.16', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('730', '0', '116', '0-114-116-', '0', '', '4', '0', '9', 'Blackmores澳佳宝 月见草油 190粒', 'Blackmores Evening Primrose Oil 190 Capsules', 'BM月见草190粒', '拯救经期不适', 'Blackmores澳佳宝 月见草油 190粒 调节 内分泌 保养 卵巢 改善 痛经 淡斑 排毒 BM', '', '', null, '', '0', '20年4月', '10', '15.30', '11.9', '11.9', '0.0', '0.35', '0.45', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('731', '0', '116', '0-114-116-', '0', '', '4', '0', '9', 'Blackmores澳佳宝 叶黄素 60粒', 'Blackmores Lutein Defence 60 Tablets', 'BM叶黄素60粒', '守护研究的叶黄素', 'Blackmores澳佳宝 叶黄素 60粒 缓解 视力 疲劳 视网膜病变 失明 BM', '', '', null, '', '0', '20年7月', '10', '18.30', '17.8', '17.8', '0.0', '0.12', '0.16', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('732', '0', '116', '0-114-116-', '0', '', '4', '0', '9', 'Blackmores澳佳宝 护眼宁 150粒', 'Blackmores Macu Vision 150 Tablets', 'BM护眼宁150粒', '保护视力从现在做起', 'Blackmores澳佳宝 护眼宁 150粒 保护视力 缓解 眼部 疲劳 抗氧化 干涩  BM', '', '', null, '', '0', '21年3月', '10', '27.50', '26.5', '26.5', '0.0', '0.30', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('733', '0', '116', '0-114-116-', '0', '', '4', '0', '9', 'Blackmores澳佳宝 Bio C 1000mg 150粒', 'Blackmores Bio C 1000mg 150 Tablets Vitamin C', 'BM VC片150粒', '维c找回最好的你', 'Blackmores澳佳宝 Bio C 1000mg 150粒 美白 淡斑 免疫力 抗氧化 新陈代谢 排毒 BM', '', '', null, '', '0', '22年7月', '10', '19.25', '18.3', '18.3', '0.0', '0.47', '0.57', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('734', '0', '117', '0-114-117-', '85', '0-7-85-', '7', '0', '22', 'Healthy Care 抗氧化爽肤水 315ml', 'Healthy Care OPC Antioxidant Facial Toner 315ml', 'HC爽肤水315ml', '抗氧化爽肤水', 'Healthy Care 抗氧化爽肤水 315ml 抗氧化 补水 保湿 收缩毛孔 深层清洁  洁面 美白  HC', '', '', null, '', '0', '22年1月', '10', '9.74', '8.9', '8.9', '0.0', '0.38', '0.43', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('735', '0', '117', '0-114-117-', '85', '0-7-85-', '7', '0', '22', 'Healthy Care 金箔 羊胎素精华 50ml', 'Healthy Care Anti Ageing Gold Flake Face Serum 50ml', 'HC金箔50ml', '奢华脸部体验', 'Healthy Care 金箔 羊胎素 精华 50ml 面部 补水 保湿 毛孔收缩 提拉 紧致 抗氧化 修复 HC', '', '', null, '', '0', '22年8月', '10', '8.80', '8.9', '8.9', '0.0', '0.15', '0.17', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('736', '0', '117', '0-114-117-', '96', '0-69-96-', '4', '0', '22', 'Healthy Care 鱼油1000mg 400粒', 'Healthy Care Fish Oil 1000mg Omega 3 400 Capsules', 'HC鱼油400粒', '续写健康传奇', 'Healthy Care 鱼油1000mg 400粒 控血压 降血脂 保护心血管 改善眼疲劳 免疫力 HC', '', '', null, '', '0', '21年3月', '10', '7.50', '7.3', '7.3', '0.0', '0.70', '0.90', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('737', '0', '117', '0-114-117-', '29', '0-4-29-', '4', '0', '22', 'Healthy Care 蜂王浆胶囊1000 365粒', 'Healthy Care Royal Jelly 1000 365 Capsules', 'HC蜂王浆365粒', '青春保鲜的秘密', 'Healthy Care 蜂王浆胶囊1000 365粒 提高 免疫力 延缓 衰老 改善 睡眠 营养补充 养颜 排毒 HC', '', '', null, '', '0', '21年2月', '10', '26.00', '24.7', '24.7', '0.0', '0.70', '0.90', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('738', '0', '117', '0-114-117-', '24', '0-4-24-', '4', '0', '22', 'Healthy Care 牛初乳粉 300g', 'Healthy Care Colostrum Powder 300g', 'HC牛初乳粉300g', '守护全家健康', 'Healthy Care 牛初乳粉 300g  儿童 免疫力 促发育 蛋白质 肠胃 调理 体质 缓解疲劳 HC', '', '', null, '', '0', '21年8月', '10', '9.99', '9.2', '9.2', '0.0', '0.40', '0.55', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('739', '0', '117', '0-114-117-', '22', '0-4-22-', '4', '0', '22', 'Healthy Care 鲨鱼软骨素 750mg 200粒', 'Healthy Care Shark Cartilage 750mg 200 Tablets', 'HC鲨软骨素200粒', '骨关节的守护', 'Healthy Care 鲨鱼软骨素 750mg 200粒 舒缓 关节 骨密度 骨质 中老年 HC', '', '', null, '', '0', '21年6月', '10', '13.00', '12.3', '12.3', '0.0', '0.38', '0.58', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('740', '0', '117', '0-114-117-', '22', '0-4-22-', '4', '0', '22', 'Healthy Care 角鲨烯 200粒 1000mg', 'Healthy Care Squalene 1000mg 200 Capsules', 'HC角鲨烯200粒', '提高缺氧耐受力 告别疲劳', 'Healthy Care 角鲨烯 200粒 1000mg 提神 抗疲劳 精神 保护心脑 排毒 提高氧含量 净化血液 HC', '', '', null, '', '0', '21年7月', '10', '21.50', '21.5', '21.5', '0.0', '0.40', '0.50', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('741', '0', '117', '0-114-117-', '21', '0-4-21-', '4', '0', '22', 'Healthy Care 高倍蜂胶 3800mg 200粒', 'Healthy Care Ultra Premium Propolis 3800mg 200 Capsules', 'HC高倍蜂胶200粒', '澳洲瑰宝 绿色黄金', 'Healthy Care 高倍蜂胶 3800mg 200粒 增强体质 控制 三高 健康 肠胃 免疫力 排毒养颜  HC', '', '', null, '', '0', '21年1月', '10', '15.30', '14.6', '14.6', '0.0', '0.23', '0.33', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('742', '0', '117', '0-114-117-', '85', '0-7-85-', '4', '0', '22', 'Healthy Care 蜂胶牙膏 120g', 'Healthy Care Propolis Toothpaste 120g', 'HC牙膏120g', '天然蜂胶牙膏', 'Healthy Care 蜂胶 牙膏 120g 护龈 去渍 亮白 清新 口气 上火  HC', '', '', null, '', '0', '21年9月', '10', '2.00', '2.0', '2.0', '0.0', '0.15', '0.19', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('743', '0', '117', '0-114-117-', '97', '0-69-97-', '4', '0', '22', 'Healthy Care 羊奶咀嚼片 巧克力味 300粒 19年11月到期', 'Healthy Care Goat Milk Chocolate 300 Tablets', 'HC巧克力羊奶片19/11', '宝宝爱吃 妈妈放心', 'Healthy Care 羊奶咀嚼片 巧克力味 300粒 儿童 免疫力 促发育 蛋白质 肠胃 调理 体质 HC 特价 19年11月到期 临期', '', '', null, '', '0', '19年11月', '10', '6.50', '2.0', '2.0', '0.0', '0.25', '0.31', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('744', '0', '117', '0-114-117-', '0', '', '4', '0', '22', 'Healthy Care 高倍葡萄籽 200粒', 'Healthy Care Grape Seed 58000 200 Capsules', 'HC高葡萄籽200粒', '', 'Healthy Care 葡萄籽 200粒 美白 抗氧化 花青素 美白淡斑 防辐射  HC', '', '', null, '', '0', '21年8月', '10', '19.50', '18.1', '18.1', '0.0', '0.19', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('745', '0', '117', '0-114-117-', '0', '', '4', '0', '22', 'Healthy Care VC咀嚼片 500mg 500粒', 'Healthy Care Vitamin C 500mg Chewable 500 Tablets', 'HC VC500粒', '活力鲜橙 全家分享', 'Healthy Care VC咀嚼片 500mg 500粒 抗氧化 免疫力 维生素 美白 淡斑 HC', '', '', null, '', '0', '21年7月', '10', '11.80', '11.3', '11.3', '0.0', '0.65', '0.85', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('746', '0', '117', '0-114-117-', '0', '', '4', '0', '22', 'Healthy Care 葡萄籽 300粒', 'Healthy Care Grape Seed Extract 12000 Gold Jar 300 Capsules', 'HC葡萄籽300粒', '肌肤年轻的秘密', 'Healthy Care 葡萄籽 300粒 美白 抗氧化 花青素 美白淡斑 防辐射  HC', '', '', null, '', '0', '21年1月', '10', '15.00', '14.2', '14.2', '0.0', '0.25', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('747', '0', '117', '0-114-117-', '0', '', '4', '0', '22', 'Healthy Care 蔓越莓 90粒', 'Healthy Care Super Cranberry 25000 90 Capsules', 'HC蔓越莓90粒', '水果中的红宝石', 'Healthy Care 蔓越莓 90粒 泌尿健康 抗氧化  卵巢 保养 保健 呵护 肠胃感染  HC', '', '', null, '', '0', '21年8月', '10', '8.00', '7.8', '7.8', '0.0', '0.13', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('748', '0', '117', '0-114-117-', '0', '', '4', '0', '22', 'Healthy Care 牛初乳咀嚼片 400mg 200粒', 'Healthy Care Super Colostrum 400mg 200 Chewable Tablets', 'HC牛初乳片200粒', '守护全家健康', 'Healthy Care 牛初乳咀嚼片 400mg 200粒 儿童 免疫力 促发育 蛋白质 肠胃 调理 体质 HC', '', '', null, '', '0', '21年11月', '10', '15.60', '14.9', '14.9', '0.0', '0.30', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('749', '0', '117', '0-114-117-', '0', '', '4', '0', '22', 'Healthy Care 羊奶咀嚼片 香草味 300粒', 'Healthy Care Goat Milk Vanilla Flavour Chewable 300 Tablets', 'HC羊奶片香草300粒', '宝宝爱吃 妈妈放心', 'Healthy Care 羊奶咀嚼片 香草味 300粒 儿童 免疫力 促发育 蛋白质 肠胃 调理 体质 HC', '', '', null, '', '0', '21年6月', '10', '6.50', '6.2', '6.2', '0.0', '0.25', '0.31', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('750', '0', '117', '0-114-117-', '0', '', '4', '0', '22', 'Healthy Care 羊奶咀嚼片 巧克力味 300粒', 'Healthy Care Goat Milk Chocolate 300 Tablets', 'HC羊奶片巧克力300粒', '宝宝爱吃 妈妈放心', 'Healthy Care 羊奶咀嚼片 巧克力味 300粒 儿童 免疫力 促发育 蛋白质 肠胃 调理 体质 HC', '', '', null, '', '0', '21年1月', '10', '6.50', '6.2', '6.2', '0.0', '0.25', '0.31', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('751', '0', '117', '0-114-117-', '0', '', '4', '0', '22', 'Healthy Care 叶黄素 越桔护眼 120粒', 'Healthy Care Bilberry & Lutein 120 Capsules', 'HC护眼120粒', '唤醒疲劳双眼', 'Healthy Care 叶黄素 越桔护眼 120粒 保护 视力 缓解 疲劳 眼涩  HC 蓝莓护眼', '', '', null, '', '0', '21年3月', '10', '14.95', '14.2', '14.2', '0.0', '0.15', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('752', '0', '118', '0-114-118-', '55', '0-9-55-', '4', '0', '18', 'Bio Island 赖氨酸助长粉 长高素一段 150g', 'Bio Island Lysine Starter for Kids 150g Oral Powder', 'Bio助长素1段', '长高即可出发！Gogogo！', 'Bio Island 生物岛 赖氨酸 助长粉 长高素一段 150g 长身高 提智力 促增长 食欲 免疫力', '', '', null, '', '0', '', '10', '17.90', '16.9', '16.9', '0.0', '0.22', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('753', '0', '118', '0-114-118-', '55', '0-9-55-', '4', '0', '18', 'Bio Island 赖氨酸助长片 长高素二段 60粒', 'Bio Island Lysine Step Up for Youth 60 Chewable tablets', 'Bio助长素2段', '长高即可出发！Gogogo！', 'Bio Island 生物岛 赖氨酸 助长片 长高素二段 60粒 长身高 提智力 促增长 食欲 免疫力', '', '', null, '', '0', '', '10', '13.00', '12.2', '12.2', '0.0', '0.10', '0.20', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('754', '0', '118', '0-114-118-', '0', '', '4', '0', '18', 'Bio Island 袋鼠精 90粒', 'Bio Island Kangaroo Essence 50000 90 Vege Capsules', 'Bio袋鼠精', '天然健康 冲展雄风', 'Bio Island 生物岛 袋鼠精 90粒 补充体力 生殖健康 雄性激素 免疫力 提高精子活力', '', '', null, '', '0', '', '10', '13.40', '13.9', '13.9', '0.0', '0.13', '0.16', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('755', '0', '118', '0-114-118-', '0', '', '4', '0', '18', 'Bio Island 成人乳钙 150粒', 'Bio Island Milk Calcium Bone Care 150 Softgel Capsules', 'Bio成人乳钙', '天然液体乳钙', 'Bio Island 生物岛 成人乳钙 150粒 青少年 中老年 成人钙 孕妇补钙 钙片液体钙 易吸收 milk calcium', '', '', null, '', '0', '', '10', '17.00', '15.9', '15.9', '0.0', '0.35', '0.45', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('756', '0', '119', '0-114-119-', '0', '', '17', '0', '58', '（包邮）Jellycat兔子XL号 米棕 纯色', 'Medium XL73cm Beige', 'Jellycat rellybig 米棕', '', 'Jellycat 超大号兔子 73cm really big 兔兔 XL号 米棕色 纯色 Medium XL73cm Beige really big', '', '', null, '', '0', '', '10', '124.00', '128.0', '128.0', '0.0', '1.30', '1.90', '', '0', '1000', '1', '0', '0', '0', '1', '0', '0', '0', '50', '1567741018', '1568790406');
INSERT INTO `pm_goods` VALUES ('757', '0', '119', '0-114-119-', '0', '', '17', '0', '58', '（包邮）Jellycat兔子XL号 奶白 纯色', 'Medium XL73cm Cream', 'Jellycat rellybig 奶白', '', 'Jellycat 超大号兔子 73cm really big 兔兔 XL号 奶白 纯色 Medium XL73cm Cream really big', '', '', null, '', '0', '', '10', '124.00', '128.0', '128.0', '0.0', '1.30', '1.90', '', '0', '1000', '1', '0', '0', '0', '1', '0', '0', '0', '50', '1567741018', '1568790392');
INSERT INTO `pm_goods` VALUES ('758', '0', '119', '0-114-119-', '70', '0-70-', '4', '0', '34', 'Life Space 孕妇 哺乳期益生菌 60粒', 'Life Space Pregnancy & Breastfeeding Probiotic 60 Capsules', '孕妇益生菌', '完善母婴免疫系统', 'Life Space 孕妇 哺乳期 益生菌 60粒 调整 肠胃 便秘 益生元 腹胀 pregnancy', '', '', null, '', '0', '20年4月', '10', '20.00', '20.0', '20.0', '0.0', '0.18', '0.21', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('759', '0', '119', '0-114-119-', '70', '0-70-', '4', '0', '34', 'Life Space 成人益生菌 60粒', 'Life Space Broad Spectrum Probiotic 60 Capsules', '成人益生菌', '守护胃肠道健康', 'Life Space 成人 益生菌 60粒 抗过敏 肠胃 便秘 免疫力 腹胀 消化不良', '', '', null, '', '0', '20年5月', '10', '20.00', '20.0', '20.0', '0.0', '0.18', '0.21', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('760', '0', '119', '0-114-119-', '70', '0-70-', '4', '0', '34', 'Life Space 婴儿益生菌 6个月-3岁 60g', 'Life Space Probiotic Powder For Baby 60g', 'BABY益生菌', '万千妈妈的选择', 'Life Space 婴儿 益生菌 6个月 3岁 60g 抗过敏 肠胃 便秘 免疫力 腹胀 baby', '', '', null, '', '0', '20年6月', '10', '20.00', '20.0', '20.0', '0.0', '0.22', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('761', '0', '119', '0-114-119-', '29', '0-4-29-', '4', '0', '34', 'Life Space 女士益生菌含蔓越莓 60粒', 'Life Space Urogen Probiotic For Women 60 Capsules', '女士益生菌', '呵护泌尿系统健康', 'Life Space 女士益生菌 蔓越莓 60粒 保养 内分泌 卵巢 泌尿系统 健康 woman', '', '', null, '', '0', '20年2月', '10', '20.00', '20.0', '20.0', '0.0', '0.18', '0.21', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('762', '0', '119', '0-114-119-', '106', '0-9-106-', '4', '0', '34', 'Life Space 儿童益生菌 3岁-12岁 60g', 'Life Space Probiotic Powder For Children 60g', '儿童益生菌', '万千妈妈的选择', 'Life Space 儿童 益生菌 3岁 12岁 60g 抗过敏 肠胃 便秘 免疫力 腹胀 children', '', '', null, '', '0', '20年6月', '10', '20.00', '20.0', '20.0', '0.0', '0.22', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('763', '0', '119', '0-114-119-', '0', '', '4', '0', '34', 'Life Space 老年人益生菌 60岁以上 60粒', 'Life Space Probiotic For 60+ Years 60 Capsules', '老人益生菌', '关爱爸妈更年期', 'Life Space 老年人 益生菌 60+ 60粒 调整 肠胃 便秘 益生元 腹胀 消化不良', '', '', null, '', '0', '20年4月', '10', '20.00', '20.0', '20.0', '0.0', '0.18', '0.21', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('764', '0', '119', '0-114-119-', '0', '', '4', '0', '34', 'Life Space 新生儿益生菌 1个月-6个月 60g', 'Life Space Probiotic Powder For Infant 60g', '新生儿益生菌', '万千妈妈的选择', 'Life Space 新生儿 益生菌 1个月 6个月 60g 抗过敏 肠胃 便秘 免疫力 腹胀 infant', '', '', null, '', '0', '20年6月', '10', '12.25', '13.5', '13.5', '0.0', '0.22', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('765', '0', '119', '0-114-119-', '0', '', '4', '0', '34', 'Life Space 瘦身减肥塑形益生菌 60粒', 'Life Space Shape B420 Probiotic 60 Capsules', '瘦身益生菌', '会甩肉的益生菌', 'Life Space 瘦身 减肥 塑形 益生菌 60粒 抗过敏 肠胃 便秘 免疫力 腹胀 b420', '', '', null, '', '0', '20年5月', '10', '19.90', '20.0', '20.0', '0.0', '0.18', '0.21', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('766', '0', '120', '0-114-120-', '96', '0-69-96-', '4', '0', '3', '赠品！拍下发货! Nature\'s Way 儿童综合+Omega3软糖 50粒 19年8月', 'Nature\'s Way Kids Smart Vita Gummies Multi + Omega 50 Pastilles', '下单就送！NW综合软糖8月', '聪明嚼出来', 'Nature\'s Way 佳思敏 儿童综合+Omega3软糖 50粒 dha 发育 聪明 维生素 免疫力  NW', '', '', null, '', '0', '19年8月', '10', '7.50', '0.0', '0.0', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('767', '0', '120', '0-114-120-', '24', '0-4-24-', '4', '0', '3', 'Nature\'s Way 蛋白粉 巧克力味 375g', 'Nature\'s Way Chocolate Protein Powder 375g', 'NW蛋白粉巧克力', '没有蛋白质哪来的生命', 'Nature\'s Way 佳思敏 蛋白粉 巧克力味 375g 营养 健身 速溶 免疫力 促吸收 易疲劳 内分泌失调 NW', '', '', null, '', '0', '', '10', '10.00', '9.5', '9.5', '0.0', '0.50', '0.63', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('768', '0', '120', '0-114-120-', '24', '0-4-24-', '4', '0', '3', 'Nature\'s Way 蛋白粉 原味 375g', 'Nature\'s Way Instant Natural Protein 375g', 'NW蛋白粉原味', '没有蛋白质哪来的生命', 'Nature\'s Way 佳思敏 蛋白粉 原味 375g 营养 健身 速溶 免疫力 促吸收 易疲劳 内分泌失调 NW', '', '', null, '', '0', '', '10', '10.00', '9.8', '9.8', '0.0', '0.50', '0.63', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('769', '0', '120', '0-114-120-', '24', '0-4-24-', '4', '0', '3', 'Nature\'s Way 蛋白粉 香草味 375g', 'Nature\'s Way Protein Vanilla 375g', 'NW蛋白粉香草', '没有蛋白质哪来的生命', 'Nature\'s Way 佳思敏 蛋白粉 香草味 375g 营养 健身 速溶 免疫力 促吸收 易疲劳 内分泌失调 NW', '', '', null, '', '0', '', '10', '10.00', '9.8', '9.8', '0.0', '0.50', '0.63', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('770', '0', '120', '0-114-120-', '57', '0-9-57-', '4', '0', '3', 'Nature\'s Way 儿童厌食综合维生素软糖 60粒 20年5月', 'Nature\'s Way Kids Smart Vita Gummies Multi Vitamin for Fussy Eaters 60 Pastilles', 'NW挑食软糖', '专为挑食儿童定制', 'Nature\'s Way 佳思敏 儿童厌食综合维生素软糖 60粒 复合营养 挑食 食欲 维生素 免疫力 NW', '', '', null, '', '0', '20年5月', '10', '7.50', '6.7', '6.7', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('771', '0', '120', '0-114-120-', '57', '0-9-57-', '4', '0', '3', 'Nature\'s Way 儿童vd钙软糖 21年3月', 'Nature\'s Way Kids Smart Vita Gummies Calcium 60 Pastilles', 'NW钙软糖', '聪明妈妈会选钙', 'Nature\'s Way 佳思敏 儿童vd钙软糖 易吸收 抽筋 发育 挑食 骨骼 长得高 NW', '', '', null, '', '0', '21年3月', '10', '7.50', '7.5', '7.5', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('772', '0', '120', '0-114-120-', '57', '0-9-57-', '4', '0', '3', 'Nature\'s Way 儿童综合+Omega3软糖 50粒 20年1月', 'Nature\'s Way Kids Smart Vita Gummies Multi + Omega 50 Pastilles', 'NW综合软糖', '聪明嚼出来', 'Nature\'s Way 佳思敏 儿童综合+Omega3软糖 50粒 dha 发育 聪明 维生素 免疫力  NW', '', '', null, '', '0', '20年1月', '10', '7.50', '6.7', '6.7', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('773', '0', '120', '0-114-120-', '57', '0-9-57-', '4', '0', '3', 'Nature\'s Way 儿童蓝光护眼软糖 50粒 20年4月', 'Nature\'s Way Kids Smart Vita Gummies Blue Light Eye Defence 50 Pastilles', 'NW护眼软糖', '护眼要趁早', 'Nature\'s Way 佳思敏 儿童 蓝光 护眼 软糖 50粒 保护视神经 防辐射 缓解 疲劳  NW', '', '', null, '', '0', '20年4月', '10', '10.60', '10.9', '10.9', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('774', '0', '120', '0-114-120-', '57', '0-9-57-', '4', '0', '3', 'Nature\'s Way 儿童维他命D软糖 60粒 20年4月', 'Nature\'s Way Kids Smart Vita Gummies Vitamin D 500IU 60 Gummies', 'NWD3软糖', '聪明补钙 孩子更强壮', 'Nature\'s Way 佳思敏 儿童维他命D软糖 60粒 优质钙 吸收 发育 骨骼 牙齿 液体钙 NW', '', '', null, '', '0', '20年4月', '10', '7.13', '6.7', '6.7', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('775', '0', '120', '0-114-120-', '57', '0-9-57-', '4', '0', '3', 'Nature\'s Way 儿童三色鱼油软胶囊 180粒', 'Nature\'s Way Kids Smart Omega3 Fish Oil Trio 180 Capsules', 'NW三色鱼油', '同步发育 赢在起跑线上', 'Nature\'s Way 佳思敏 儿童三色鱼油软胶囊 180粒 宝宝补脑 护眼 记忆力 维生素 促发育 NW', '', '', null, '', '0', '21年10月', '10', '22.50', '22.2', '22.2', '0.0', '0.35', '0.55', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('776', '0', '120', '0-114-120-', '57', '0-9-57-', '4', '0', '3', 'Nature\'s Way 儿童Omega3+鱼油软糖 透明瓶 60粒 19年12月', 'Nature\'s Way Kids Smart Gummies Omega 3 Fish Oil 60 Pastilles', 'NW透明鱼油', '突破潜能更领先', 'Nature\'s Way 佳思敏 儿童Omega3+鱼油软糖 透明瓶 60粒 dha 记忆力 脑力 发育 维生素 免疫力 NW', '', '', null, '', '0', '19年12月', '10', '7.50', '5.9', '5.9', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('777', '0', '120', '0-114-120-', '57', '0-9-57-', '4', '0', '3', 'Nature\'s Way 儿童感冒免疫软糖 60粒 20年4月', 'Nature\'s Way Kids Smart Vita Gummies Immunity 60 Pastilles', 'NW感冒软糖', '加快感冒痊愈', 'Nature\'s Way 佳思敏 儿童感冒免疫软糖 60粒 免疫力 流感 发烧 喉咙痛 NW', '', '', null, '', '0', '20年4月', '10', '7.50', '6.7', '6.7', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('778', '0', '120', '0-114-120-', '57', '0-9-57-', '4', '0', '3', '特价！Nature\'s Way 儿童vd钙软糖 19年11月', 'Nature\'s Way Kids Smart Vita Gummies Calcium 60 Pastilles', 'NW钙软糖特价', '聪明妈妈会选钙', 'Nature\'s Way 佳思敏 儿童vd钙软糖 易吸收 抽筋 发育 挑食 骨骼 长得高 NW', '', '', null, '', '0', '19年11月', '10', '7.50', '6.7', '6.7', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('779', '0', '120', '0-114-120-', '57', '0-9-57-', '4', '0', '3', 'Nature\'s Way 儿童VC软糖 60粒 21年5月', 'Nature\'s Way Kids Smart Vita Gummies Vitamin C 60 Gummies', 'NW VC软糖', '宝宝抢着吃的vc', 'Nature\'s Way 佳思敏 儿童VC软糖 60粒 补锌 免疫力 防流感 营养 维c  NW', '', '', null, '', '0', '21年5月', '10', '7.50', '7.5', '7.5', '0.0', '0.20', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('780', '0', '121', '0-114-121-', '0', '', '16', '0', '54', '耗材', 'bubble', '泡泡袋', '', '耗材 泡泡袋 bubble', '', '', null, '', '0', '', '10', '0.04', '0.1', '0.1', '0.0', '0.00', '0.00', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('781', '0', '121', '0-114-121-', '0', '', '6', '0', '50', '纽瑞优婴幼儿乳铁蛋白粉（蓝罐） 60G', 'Neurio Rikachi Lactoferrin', '乳铁蛋白粉（蓝）', '乳粉黄金 营养好吸收', 'Neurio Rikachi Lactoferrin 纽瑞优婴幼儿乳铁蛋白粉（蓝罐） 60G', '', '', null, '', '0', '', '10', '47.00', '52.3', '52.3', '0.0', '0.20', '0.35', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('782', '0', '121', '0-114-121-', '0', '', '7', '0', '54', 'BEGGI ESSENTIAL OIL NASAL OINTMENT 鼻炎膏麦卢卡精油护鼻膏 3.5g', 'BEGGI ESSENTIAL OIL NASAL OINTMENT', '鼻精灵儿童', '一抹就通 5秒见效', 'BEGGI 鼻精灵 麦卢卡 精油 护鼻膏 外涂式 鼻塞 通鼻 儿童 成人3.5g', '', '', null, '', '0', '2022年3月11日', '10', '10.50', '12.5', '12.5', '0.0', '0.04', '0.12', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('783', '0', '121', '0-114-121-', '0', '', '7', '0', '54', 'BEGGI ESSENTIAL OIL NASAL OINTMENT 成人精油通鼻膏 3.5g', 'BEGGI ESSENTIAL OIL NASAL OINTMENT', '鼻精灵成人', '一抹就通 5秒见效', '鼻精灵 麦卢卡 精油 护鼻膏 外涂式 鼻塞 通鼻儿童 成人3.5g', '', '', null, '', '0', '2022年3月11日', '10', '10.50', '12.5', '12.5', '0.0', '0.04', '0.12', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('784', '0', '121', '0-114-121-', '0', '', '6', '0', '50', 'Vierra 初生沁胶原蛋白口服液 200ml*2/盒', 'Vierra Everyday Marine Collagen 200ml*2', 'Vierra沁胶原', '28天绽放亮白新肌', 'Vierra Everyday Marine Collagen 深海沁胶原蛋白口服液 200ml  美容饮 胜肽美肌', '', '', null, '', '0', '20年10月', '10', '24.50', '23.8', '23.8', '0.0', '0.58', '0.65', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('785', '0', '121', '0-114-121-', '96', '0-69-96-', '5', '0', '50', 'Vierra 抗糖 35ml*7/盒', 'Vierra 55ml*7（Pink）', 'Vierra抗糖', '排毒祛黄 还原好气色', 'Vierra 抗糖 35ml 美肌饮 红石榴多酚 胜肽', '', '', null, '', '0', '20年11月', '10', '28.30', '29.9', '29.9', '0.0', '0.75', '0.90', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('786', '0', '121', '0-114-121-', '96', '0-69-96-', '5', '0', '50', 'Vierra 胜肽 35ml*7/盒', 'Vierra 55ml*7（Yellow）', 'Vierra胜肽', '安神养颜 紧致臻白', 'Vierra 胜肽 35ml 口服精华 胶原蛋白', '', '', null, '', '0', '20年11月', '10', '28.30', '29.9', '29.9', '0.0', '0.75', '0.90', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('787', '0', '121', '0-114-121-', '96', '0-69-96-', '4', '0', '50', 'Blooms 强效护颈丸 60粒', 'Blooms Back Neck&Shoulders 60 Tablets', '护颈丸', '拯救低头族', 'Blooms 护颈丸 颈椎片 60粒 强效 肩背 缓解 修复 保健 强效肩背护颈丸 颈椎片', '', '', null, '', '0', '20年11月', '10', '16.00', '14.4', '14.4', '0.0', '0.12', '0.15', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('788', '0', '121', '0-114-121-', '0', '', '5', '0', '50', 'Vierra 轻体 55ml*7/盒', 'Vierra  55ml*7 （Green）', 'Vierra轻体', '清肠排毒 急速染指', 'Vierra 轻体 55ml 美容饮 左旋肉碱 胜肽', '', '', null, '', '0', '20年7月', '10', '22.60', '19.0', '19.0', '0.0', '0.75', '0.90', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('789', '0', '121', '0-114-121-', '0', '', '4', '0', '25', 'Eaoron 美白淡斑精华胶囊 108粒', 'Eaoron SWF Whitening Capsules Serum', '水光美白胶囊', '澳洲医学美容品牌', 'Eaoron 水光针 美白淡斑精华胶囊 108粒 补水 抗皱 修复 敏感肌 痘印 色斑', '', '', null, '', '0', '21年3月', '10', '35.00', '33.2', '33.2', '0.0', '0.35', '0.40', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('790', '0', '121', '0-114-121-', '70', '0-70-', '6', '0', '50', '️Bio-E 花胶液 14袋/盒', '️Bio-E PHYSMO ESSENCE', '️Bio-E花胶液', '', '️Bio-E PHYSMO ESSENCE花胶液 小仙胶 胶原蛋白 口服液 14袋/盒', '', '', null, '', '0', '', '10', '48.00', '54.0', '54.0', '0.0', '0.64', '0.75', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('791', '0', '121', '0-114-121-', '70', '0-70-', '6', '0', '50', 'VK6 Collagen 胶原蛋白丸 60粒', 'VK6 Collagen', 'VK胶原蛋白丸', '快速破解岁月“皱”语', 'VK6 Collagen 胶原蛋白丸 60粒 胶原蛋白胶囊', '', '', null, '', '0', '', '10', '36.00', '39.0', '39.0', '0.0', '0.07', '0.23', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('792', '0', '121', '0-114-121-', '0', '', '9', '0', '50', 'VK6 BREAST BEAUTY 紧致美胸霜 100ml', 'VK6 BREAST BEAUTY 100ml', 'VK美胸霜100ml', '动人曲线 紧致饱满', 'VK6 BREAST BEAUTY 紧致美胸霜 100ml 改善 坚挺 水润 白皙', '', '', null, '', '0', '2021年4月', '10', '36.00', '39.0', '39.0', '0.0', '0.16', '0.30', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('793', '0', '121', '0-114-121-', '0', '', '6', '0', '50', 'VK6 White Element 美白丸 60粒', 'VK6 White Element', 'VK美白丸 60粒', '轻松颠倒“黑白”', 'VK6 White Element 美白丸 60粒 抗氧化 提亮肤色 黑色素', '', '', null, '', '0', '21年1月', '10', '36.00', '39.0', '39.0', '0.0', '0.08', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('794', '0', '121', '0-114-121-', '0', '', '6', '0', '50', 'VK6 Slim Fit 塑身丸 60粒', 'VK6 Slim Fit', 'VK塑身丸', '清肠排毒 健康纤体', 'VK6 塑身丸 调节 新陈代谢', '', '', null, '', '0', '2021年1月', '10', '36.00', '39.0', '39.0', '0.0', '0.09', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('795', '0', '121', '0-114-121-', '0', '', '6', '0', '50', 'VK6 S-block 抗糖丸 60粒', 'VK6 S-block', 'VK抗糖丸', '重现活力 冻龄秘密', 'VK6 S-Block 抗糖丸 60粒 防早衰 美颜 胶原蛋白', '', '', null, '', '0', '2022年3月', '10', '36.00', '39.0', '39.0', '0.0', '0.13', '0.25', null, '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567741018');
INSERT INTO `pm_goods` VALUES ('796', '0', '121', '0-114-121-', '122', '0-10-122-', '5', '0', '12', 'Menevit 男士爱乐维 90粒', 'Menevit Male Fertility Supplement Capsules 90 pack', '男爱乐维', '爸爸添活力 宝宝更健康', 'Menevit 男士爱乐维 90粒 备孕 男士 提高精子活性 营养素 男维', '', '/uploads/images/20190906/b0041a93dfee3608670af79969ed7c85.JPG', null, '', '0', '21年11月', '10', '56.50', '55.1', '55.1', '0.0', '0.17', '0.20', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755737');
INSERT INTO `pm_goods` VALUES ('797', '0', '121', '0-114-121-', '96', '0-69-96-', '4', '0', '50', 'FatBlaster 红魔水代餐塑体饮料 375ml', 'Naturopathica Fatblaster Raspberry Ketone Shots 375ml', 'FB燃脂饮料', '健康燃脂 越动越轻', 'FatBlaster 红魔水代餐塑体饮料 375ml 饱腹轻断食 fb燃脂饮料覆盆莓酮覆盆子酮', '', '/uploads/images/20190906/be8758f9d0828d51db1d8bfaa56cda5d.png', null, '', '0', '21年10月', '10', '2.00', '6.0', '6.0', '0.0', '0.45', '0.55', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755727');
INSERT INTO `pm_goods` VALUES ('798', '0', '121', '0-114-121-', '96', '0-69-96-', '4', '0', '50', 'MHD 冻龄奶 胶原蛋白奶粉 香草味 400g', 'MHD Hair Skin Nails 400g', 'MHD胶原蛋白粉', '聪明的女人都知道自己需要它', 'MHD 冻龄奶 胶原蛋白奶粉 400g 澳洲进口 嫩白 滋润 衰老 肤色 色斑 延缓', '', '/uploads/images/20190906/4b99b15fdf6686f9a676a3bb5537e98b.JPG', null, '', '0', '21年8月', '10', '12.50', '13.5', '13.5', '0.0', '0.54', '0.70', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755709');
INSERT INTO `pm_goods` VALUES ('799', '0', '121', '0-114-121-', '70', '0-70-', '4', '0', '55', 'Ostelin 儿童钙+vd 90粒 梅子味', 'Ostelin Kids Calcium & Vitamin D3 90 Chewable Tablets', 'ost恐龙钙', '添加D3易吸收', 'Ostelin 儿童钙 90粒 维生素D 咀嚼片 恐龙钙 钙片', '', '/uploads/images/20190906/d8c78fbf44cc9948628e48dd6bfb6b96.JPG', null, '', '0', '21年10月', '10', '8.80', '9.0', '9.0', '0.0', '0.17', '0.20', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755699');
INSERT INTO `pm_goods` VALUES ('800', '0', '121', '0-114-121-', '70', '0-70-', '4', '0', '55', 'Ostelin VD Liquid Kids 20ml 儿童vd滴剂 草莓味', 'Ostelin Kids Vitamin D Liquid 20ml', 'vd滴剂20ml', '妈妈的钙世英雄', 'Ostelin VD滴剂 20ml 草莓味 婴儿 儿童 液体维D 滴剂D3', '', '/uploads/images/20190906/8751fb7a4646695892bdab20a5a70483.JPG', null, '', '0', '20年8月', '10', '5.50', '5.5', '5.5', '0.0', '0.07', '0.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755686');
INSERT INTO `pm_goods` VALUES ('801', '0', '121', '0-114-121-', '29', '0-4-29-', '4', '0', '50', 'Caruso\'s 天然静脉曲张舒缓片 60粒', 'Carusos Natural Health Veins Clear 60 Tablets', '静脉曲张片', '谁说静脉曲张“没”“救”“了”', 'Caruso\'s 天然静脉曲张舒缓片 60粒 缓解 舒缓 改善血液循环', '', '/uploads/images/20190906/f0d5ceb477ba3bfcbf20e1d4ceb8b228.JPG', null, '', '0', '20年9月', '10', '25.00', '22.5', '22.5', '0.0', '0.15', '0.20', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755674');
INSERT INTO `pm_goods` VALUES ('802', '0', '121', '0-114-121-', '56', '0-9-56-', '4', '0', '11', 'Bellamy\'s 贝拉米有机磨牙棒 6个月', 'Bellamy\'s Milk Rusks 6M+', '磨牙棒新版', '妈妈的“哄娃神器”', 'Bellamy\'s 贝拉米 有机 磨牙棒 6个月 婴儿 磨牙饼干 辅食', '', '/uploads/images/20190906/845178f616720ebfb7d198ce6daeb399.JPG', null, '', '0', '20年5月', '10', '3.50', '3.9', '3.9', '0.0', '0.14', '0.17', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755660');
INSERT INTO `pm_goods` VALUES ('803', '0', '121', '0-114-121-', '56', '0-9-56-', '4', '0', '11', 'Bellamy\'s 贝拉米有机意面 蔬菜通心粉 12个月', 'Bellamy\'s Organic Vegi Macaroni 175g', '意面12+蔬菜通心粉', '给宝宝就选健康的！！！', 'Bellamy\'s 贝拉米 有机 蔬菜 通心粉 12个月 婴儿 辅食 意面', '', '/uploads/images/20190906/a1695898e84fbb3ad7b6cc69da1af060.JPG', null, '', '0', '20年6月', '10', '4.00', '3.5', '3.5', '0.0', '0.25', '0.28', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755648');
INSERT INTO `pm_goods` VALUES ('804', '0', '121', '0-114-121-', '106', '0-9-106-', '4', '0', '55', 'Ostelin VD liquid Infant 2.4ml 新生儿滴剂', 'Ostelin Infant Vitamin D3 Drops 2.4ml', 'vd滴剂2.4ml', '无糖无味好添加', 'Ostelin VD滴剂 2.4ml 无糖 婴儿 儿童 液体维D 滴剂D3', '', '/uploads/images/20190906/c048e2b809311cebca737a5b7d5cc309.JPG', null, '', '0', '20年7月', '10', '8.80', '8.4', '8.4', '0.0', '0.07', '0.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755600');
INSERT INTO `pm_goods` VALUES ('805', '0', '121', '0-114-121-', '122', '0-10-122-', '4', '0', '55', 'Ostelin 成人钙+vd 300粒', 'Ostelin Calcium & Vitamin D3 300 Tablets', 'ost成人钙', '强健骨骼 高效补钙', 'Ostelin 成人维生素 D3钙 300粒 青少年 中老年 成人钙 孕妇补钙 钙片', '', '/uploads/images/20190906/a9d37b5d478eb35de60b95af0a7b2023.JPG', null, '', '0', '21年7月', '10', '25.00', '24.5', '24.5', '0.0', '0.60', '0.66', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755587');
INSERT INTO `pm_goods` VALUES ('806', '0', '121', '0-114-121-', '122', '0-10-122-', '4', '0', '50', 'Meta Mucil 膳食纤维粉 橙子味 425g 72次', 'Metamucil Fibre Supplement Smooth Orange 72 Dose 425g', 'meta纤维粉425g', '看，油被吸走了。', 'Meta Mucil 膳食纤维粉 橙子味 425g 果蔬纤维素 低热量 饱腹 代餐 便秘 通便 排毒 润肠', '', '/uploads/images/20190906/03b9bda0bc279f2cd7e12c1e677b9f7a.JPG', null, '', '0', '21年3月', '10', '13.40', '14.0', '14.0', '0.0', '0.55', '0.65', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567755576');
INSERT INTO `pm_goods` VALUES ('807', '0', '121', '0-114-121-', '122', '0-10-122-', '4', '0', '50', 'Meta Mucil 膳食纤维粉 橙子味 673g 114次', 'Metamucil Fibre Supplement Smooth Orange 114 Dose 673g', 'meta纤维粉673g', '看，油被吸走了。', 'Meta Mucil 膳食纤维粉 橙子味 673g 果蔬纤维素 低热量 饱腹 代餐 便秘 通便 排毒 润肠', '', '/uploads/images/20190906/c89188399a4fd74f23e301c4c320b171.JPG', null, '', '0', '21年7月', '10', '17.20', '15.8', '15.8', '0.0', '0.80', '1.05', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755567');
INSERT INTO `pm_goods` VALUES ('808', '0', '121', '0-114-121-', '0', '', '4', '0', '27', 'Nulax 乐康片 西梅味 40粒', 'Nulax Berry Laxative Tablets With Prebiotic Senna + Aloe 40 Tablets', '西梅味乐康片', '轻松消堵拯救不畅快', 'Nulax 乐康片  40粒 果蔬 水果 酵素 纤维 通肠 便秘 排毒 润肠 西梅味', '', '/uploads/images/20190906/76db4732deb8ad14fb06d5ace46eb7e3.jpeg', null, '', '0', '', '10', '6.30', '6.3', '6.3', '0.0', '0.05', '0.08', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755549');
INSERT INTO `pm_goods` VALUES ('809', '0', '121', '0-114-121-', '0', '', '4', '0', '36', 'BIO-E 百里香枇杷酵素 500ml', 'Bio-E Loquat Leaf Manuka Juice', '枇杷酵素', '三重“喝”护 免疫无忧', 'BIO-E 百里香 琵琶 酵素 500ml 免疫力 分解油脂 新城代谢 便秘 肠胃调理 润肠', '', '/uploads/images/20190906/9996c23755113173119c4255b5419d30.gif', null, '', '0', '', '10', '13.00', '13.0', '13.0', '0.0', '0.55', '0.65', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755539');
INSERT INTO `pm_goods` VALUES ('810', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Melrose全能绿瘦子 200g', 'Melrose Essential Greens', '绿瘦子200g', '排毒清肠养颜', '绿瘦子 全能绿瘦子 melrose 大麦草', '', '/uploads/images/20190906/b83193d856706f91ed2eb8506c81e433.jpg', null, '', '0', '23年4月', '10', '20.00', '20.0', '20.0', '0.0', '0.30', '0.40', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755472');
INSERT INTO `pm_goods` VALUES ('811', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Hydrodol 解酒片 40粒', 'Hydrodol Value Pack 40 Capsules', '解酒片40粒', '千杯不醉', '千杯不醉 Hydrodol 解酒片 40粒 Hydrodol 40 Capsules', '', '/uploads/images/20190906/420c7869ed5b1bbf08e5807e6889c106.jpg', null, '', '0', '', '10', '22.00', '21.4', '21.4', '0.0', '0.05', '0.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755454');
INSERT INTO `pm_goods` VALUES ('812', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Hydrodol 解酒片 16粒', 'Hydrodol 16 Capsules', '解酒片16粒', '千杯不醉', '千杯不醉 Hydrodol 解酒片 16粒 Hydrodol 16 Capsules', '', '/uploads/images/20190906/9f5ebbdc8b6efe954be13560e2761b6c.jpg', null, '', '0', '19年12月', '10', '10.78', '10.2', '10.2', '0.0', '0.02', '0.05', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755439');
INSERT INTO `pm_goods` VALUES ('813', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Vierra 胜肽美白丸 30粒', 'Vierra Rosehip White Elixir 30 Tablets', '胜肽美白丸30粒', '玫瑰果美白精华', '玫瑰果 精华胶囊 美白丸 60粒 美容 胶原蛋白 维生素c 亮肤 美白淡斑 Vierra Rosehip White Elixir 玫瑰果美白精华胶囊 美白丸 30粒', '', '/uploads/images/20190906/2269f5c48d93d0c1292c6d2e4804f07e.jpeg', null, '', '0', '', '10', '5.00', '5.0', '5.0', '0.0', '0.07', '0.12', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567755425');
INSERT INTO `pm_goods` VALUES ('814', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'FatBlaster 腰臀溶脂片 60片', 'Naturopathica Fatblaster Clinical 60 Capsules', 'FB腰臀溶脂片', '6倍溶脂 挑战S腰', 'FatBlaster 腰臀溶脂片 60片 FB 极塑小魔盒 6倍X 减重 吉克隽逸同款推荐 6倍溶脂 挑战S腰', '', '/uploads/images/20190906/d5d1c8097497ac608618433dc67bcffd.jpeg', null, '', '0', '21年10月', '10', '35.00', '33.3', '33.3', '0.0', '0.10', '0.13', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755415');
INSERT INTO `pm_goods` VALUES ('815', '0', '121', '0-114-121-', '0', '', '4', '0', '52', 'Unichi 燕窝精华胶囊 60粒', 'Unichi Birds Nest 60 Capsules', 'Unichi燕窝胶囊', '肌龄逆转', 'Unichi 燕窝精华胶囊 60粒 袁咏仪 Bird\'s nest 滋护保养 成人孕妇哺乳期', '', '/uploads/images/20190906/067eb57645a42862f706670fc0152683.png', null, '', '0', '20年3月', '10', '27.00', '26.5', '26.5', '0.0', '0.10', '0.13', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755401');
INSERT INTO `pm_goods` VALUES ('816', '0', '121', '0-114-121-', '0', '', '4', '0', '50', '富康清肺片 60粒', 'Wealthy Health PM-Lung Support 60 Tablets', '富康清肺片60粒', '抗雾霾神器', 'wealthy healthy 富康清肺片 60粒 护肺片 润肺 粉尘 灰尘 雾霾 排毒 缓解 呼吸 止痰 天然  WH wh', '', '/uploads/images/20190906/e6ed3c3e5164febcc2ff3ad1b9788657.jpg', null, '', '0', '', '10', '20.00', '21.0', '21.0', '0.0', '0.16', '0.20', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755386');
INSERT INTO `pm_goods` VALUES ('817', '0', '121', '0-114-121-', '0', '', '4', '0', '3', 'Nature\'s Way 香草味代餐奶昔 375g', 'Nature\'s Way SlimRight Shake Vanilla Flavor 375g', 'NW奶昔香草味', '营养均衡 不反弹', 'Nature\'s Way Slim Right 代餐奶昔 香草味 375g NW 代餐粉 抵抗力 免疫力 低糖', '', '/uploads/images/20190906/82219376a6a132d9f269d3191aafd4ac.jpeg', null, '', '0', '19年12月', '10', '6.00', '5.9', '5.9', '0.0', '0.48', '0.68', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755276');
INSERT INTO `pm_goods` VALUES ('818', '0', '121', '0-114-121-', '0', '', '4', '0', '3', 'Nature\'s Way 覆盆子味代餐奶昔 375g', 'Nature\'s Way SlimRight Shake Raspberry Flavor 376g', 'NW奶昔覆盆子味', '营养均衡 不反弹', 'Nature\'s Way Slim Right 代餐奶昔 覆盆子味 375g NW 代餐粉 抵抗力 免疫力 低糖', '', '/uploads/images/20190906/cd5de345335d25a6b74e40d5bb4241b7.jpeg', null, '', '0', '20年5月', '10', '6.00', '6.9', '6.9', '0.0', '0.48', '0.68', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755264');
INSERT INTO `pm_goods` VALUES ('819', '0', '121', '0-114-121-', '0', '', '4', '0', '3', 'Nature\'s Way 巧克力味代餐奶昔 375g', 'Nature\'s Way SlimRight Shake Chocolate flavor  375g', 'NW奶昔巧克力味', '营养均衡 不反弹', 'Nature\'s Way Slim Right 代餐奶昔 巧克力味 375g NW 代餐粉 抵抗力 免疫力 低糖', '', '/uploads/images/20190906/428ea74afd122d3628572a8d54de54a1.jpeg', null, '', '0', '20年5月', '10', '6.00', '6.9', '6.9', '0.0', '0.48', '0.68', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755250');
INSERT INTO `pm_goods` VALUES ('820', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Sambucol 小黑果儿童免疫软糖 50粒', 'Sambucol Kids Immunity 50 Gummies', '小黑果软糖', '神奇的小黑果', 'Sambucol 小黑果  黑接骨木 儿童 免疫软糖  50粒', '', '/uploads/images/20190906/71722953959e0a6c5a691822146e5021.JPG', null, '', '0', '20年8月', '10', '9.00', '9.7', '9.7', '0.0', '0.20', '0.23', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755236');
INSERT INTO `pm_goods` VALUES ('821', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Sambucol 小黑果成人感冒糖浆 120ml', 'Sambucol Cold & Flu Syrup 120ml', '小黑果成人感冒糖浆', '神奇的小黑果', 'Sambucol 小黑果 黑接骨木 成人 感冒糖浆 120ml', '', '/uploads/images/20190906/4edcf717f74d39a95af2f327281ee779.JPG', null, '', '0', '21年1月', '10', '13.00', '14.0', '14.0', '0.0', '0.20', '0.24', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755214');
INSERT INTO `pm_goods` VALUES ('822', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Sambucol 小黑果抗感冒喉糖 20粒', 'Sambucol Throat Lozenges 20', '小黑果感冒喉糖', '神奇的小黑果', 'Sambucol 小黑果 黑接骨木 抗感冒 喉糖 20粒', '', '/uploads/images/20190906/61a0196d8e6e9665ad02ffa7cf1c6d21.JPG', null, '', '0', '20年12月', '10', '7.20', '7.8', '7.8', '0.0', '0.06', '0.09', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755192');
INSERT INTO `pm_goods` VALUES ('823', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Sambucol 小黑果儿童感冒糖浆 120ml', 'Sambucol Cold & Flu Kids Liquid 120ml', '小黑果儿童感冒糖浆', '神奇的小黑果', 'Sambucol 小黑果 黑接骨木 儿童 感冒糖浆 120ml', '', '/uploads/images/20190906/ab2174165b28b61f67ca901181d04b91.JPG', null, '', '0', '20年11月', '10', '12.20', '13.1', '13.1', '0.0', '0.20', '0.24', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755175');
INSERT INTO `pm_goods` VALUES ('824', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Sambucol 小黑果儿童止咳糖浆 120ml', 'Sambucol  Cough  Kids Liquid 120ml', '小黑果儿童止咳糖浆', '神奇的小黑果', 'Sambucol 小黑果 黑接骨木 儿童 止咳糖浆 120ml', '', '/uploads/images/20190906/5d1f9fe206723f2c83dd0cd887a0fe91.JPG', null, '', '0', '21年3月', '10', '12.20', '13.2', '13.2', '0.0', '0.20', '0.24', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755156');
INSERT INTO `pm_goods` VALUES ('825', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'NC 控糖片 90粒', 'Nutrition Care GlucoControl 90 Tablets', 'NC控糖片', '控糖能手 血糖不玩“跳高”', 'NC 澳洲控糖片 90粒 胰岛素 调节血糖平衡 糖尿病 抗糖', '', '/uploads/images/20190906/684e9c8c14c34cbf66680d2ac79d6987.JPG', null, '', '0', '20年11月', '10', '24.00', '29.0', '29.0', '0.0', '0.10', '0.13', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755125');
INSERT INTO `pm_goods` VALUES ('826', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'FatBlaster 减肥代餐奶昔 430g 咖啡味', 'Naturo Pathica Fatblaster Weight Loss Mocha Shake 430g', 'FB奶昔咖啡', '“从XXL到XS的蜕变”', 'FatBlaster 澳洲减肥奶昔 430g 咖啡味 代餐 饱腹 FB', '', '/uploads/images/20190906/5609e6a9638f767f794c09471526eea8.jpg', null, '', '0', '', '10', '10.50', '11.8', '11.8', '0.0', '0.55', '0.75', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755114');
INSERT INTO `pm_goods` VALUES ('827', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'FatBlaster 减肥代餐奶昔 430g 树莓味', 'Naturo Pathica Fatblaster Weight Loss Rasberry Shake 430g', 'FB奶昔树莓', '“从XXL到XS的蜕变”', 'FatBlaster 澳洲减肥奶昔 430g 树莓味 代餐 饱腹 FB', '', '/uploads/images/20190906/fb918a4d793d1f52cf52f2fea3fcf37c.JPG', null, '', '0', '', '10', '10.50', '11.8', '11.8', '0.0', '0.55', '0.75', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755101');
INSERT INTO `pm_goods` VALUES ('828', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'FatBlaster 减肥代餐奶昔 430g 香草味', 'Naturo Pathica Fatblaster Weight Loss Vanilla Shake 430g', 'FB奶昔香草', '“从XXL到XS的蜕变”', 'FatBlaster 澳洲减肥奶昔 430g 香草味 代餐 饱腹 FB', '', '/uploads/images/20190906/3b0296baa5a3c4cbdbe52ba6bf03723a.JPG', null, '', '0', '21年8月', '10', '10.50', '11.8', '11.8', '0.0', '0.55', '0.75', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755087');
INSERT INTO `pm_goods` VALUES ('829', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'FatBlaster 减肥代餐奶昔 430g 巧克力味', 'Naturo Pathica Fatblaster Weight Loss Chocolate Shake  430g', 'FB奶昔巧克力', '“从XXL到XS的蜕变”', 'FatBlaster 澳洲减肥奶昔 430g 巧克力味 代餐 饱腹 FB', '', '/uploads/images/20190906/47d62131e09e28450eaea252d053099c.JPG', null, '', '0', '21年12月', '10', '10.50', '11.8', '11.8', '0.0', '0.55', '0.75', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755074');
INSERT INTO `pm_goods` VALUES ('830', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Prospan 小青蛙止咳液 200ml', 'Prospan Chesty Cough Children\'s (Ivy Leaf)  200ml', '小青蛙', '清热解毒 舒缓润喉', 'Prospan 小青蛙 止咳液 200ml 纯天然 婴幼儿 儿童 澳洲 感冒', '', '/uploads/images/20190906/2d4ad8dc507fe381ac85418fb0c5b682.JPG', null, '', '0', '20年9月', '10', '10.23', '10.3', '10.3', '0.0', '0.50', '0.60', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755054');
INSERT INTO `pm_goods` VALUES ('831', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Centrum 善存儿童补铁液 200ml', 'Centrum Kids Iron 200ml', '善存补铁', '改善偏食 促吸收 增食欲', 'Centrum 善存 儿童 补铁液 100ml 赖氨酸 樱桃味 小樱桃', '', '/uploads/images/20190906/f3ac1ed45613be6455d869b59a5001e1.JPG', null, '', '0', '20年3月', '10', '11.50', '9.5', '9.5', '0.0', '0.50', '0.60', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755042');
INSERT INTO `pm_goods` VALUES ('832', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'NC 养胃粉 瓶装 150g', 'Nutrition Care Gut Relief  150g', 'nc养胃粉瓶装', '胃，你好吗？', 'NC 养胃粉 150g 保护胃黏膜 养胃食品 调理肠胃胀气 泛酸', '', '/uploads/images/20190906/7863b5c32b493cbc362a1acbd17932eb.jpg', null, '', '0', '20年9月', '10', '23.10', '26.6', '26.6', '0.0', '0.22', '0.25', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755032');
INSERT INTO `pm_goods` VALUES ('833', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'NC 养胃粉 盒装 14*5g', 'Nutrition Care Gut Relief 14*5g', 'nc养胃粉盒装', '胃，你好吗？', 'NC 养胃粉 14*5g 保护胃黏膜 养胃食品 调理肠胃胀气 泛酸', '', '/uploads/images/20190906/7276425fa9205c674172f6ce74e5b0f1.JPG', null, '', '0', '20年11月', '10', '13.00', '16.2', '16.2', '0.0', '0.15', '0.20', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755023');
INSERT INTO `pm_goods` VALUES ('834', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Cenovis 圣诺维无糖VC 500mg 300粒', 'Cenovis Vitamin C 500mg Sugarless 300 Chewable Tablets', 'cenovis VC', '提高免疫 美白护肤', 'Cenovis VC 500mg 300粒 维c咀嚼片 美白淡斑 无糖vc 免疫力', '', '/uploads/images/20190906/c8958b34f4713dde251c52eb64702038.JPG', null, '', '0', '21年6月', '10', '11.88', '11.8', '11.8', '0.0', '0.32', '0.42', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567755011');
INSERT INTO `pm_goods` VALUES ('835', '0', '121', '0-114-121-', '0', '', '4', '0', '27', 'NU-LAX 扛饿粉 苹果梨子味 15包/盒', 'Nulax Platinum Daily Prebiotic Fruit Fibre Powder 15x5.5g Sachets', '扛饿粉', '营养饱腹 悦享新体验', 'NU-LAX 扛饿粉 苹果梨子味 15包/盒 乐康 果蔬粉 膳食纤维粉 早餐代餐 nulax', '', '/uploads/images/20190906/853c6d37e8fe14722e7cb0c4bf945f5a.JPG', null, '', '0', '20年5月', '10', '9.50', '9.2', '9.2', '0.0', '0.13', '0.20', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754996');
INSERT INTO `pm_goods` VALUES ('836', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Hairdresser\'s Formula 男士生发片养发营养片 60粒', 'Hairdresser\'s Formula Hair Nutrition For Men 60 Tablets', '男生发大', '【型男】头等大事！', 'Hairdresser\'s Formula 男士生发片养发营养片 60粒 护发 防脱发 养发 快速生发', '', '/uploads/images/20190906/f1a7642d895f8d818f16726e05bc88cf.JPG', null, '', '0', '', '10', '30.50', '33.0', '33.0', '0.0', '0.15', '0.20', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741018', '1567754976');
INSERT INTO `pm_goods` VALUES ('837', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Hairdresser\'s Formula 男士生发片养发营养片 30粒', 'Hairdresser\'s Formula Hair Nutrition For Men 30 Tablets', '男生发小', '【型男】头等大事！', 'Hairdresser\'s Formula 男士生发片养发营养片 30粒 护发 防脱发 养发 快速生发', '', '/uploads/images/20190906/66b01b392d00390230f7e2ca8ba3872b.JPG', null, '', '0', '21年7月', '10', '19.50', '19.0', '19.0', '0.0', '0.07', '0.11', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754941');
INSERT INTO `pm_goods` VALUES ('838', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Hairdresser\'s Formula 女士生发片养发营养片 60片', 'Hairdresser\'s Formula Hair Nutrition For Women 60 Tablets', '女生发大', '秀发浓密 让男人爱不释手', 'Hairdresser\'s Formula 女士生发片养发营养片 60片 护发 防脱发 养发 快速生发', '', '/uploads/images/20190906/0acc2cb57188676f795857da2e22dfec.jpg', null, '', '0', '', '10', '30.50', '33.0', '33.0', '0.0', '0.15', '0.20', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754928');
INSERT INTO `pm_goods` VALUES ('839', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Hairdresser\'s Formula 女士生发片养发营养片 30粒', 'Hairdresser\'s Formula Hair Nutrition For Women 30 Tablets', '女生发小', '秀发浓密 让男人爱不释手', 'Hairdresser\'s Formula 女士生发片养发营养片 30粒 护发 防脱发 养发 快速生发', '', '/uploads/images/20190906/f48b4dad5dc261964469ce1e7c5c4d11.JPG', null, '', '0', '21年7月', '10', '19.50', '19.0', '19.0', '0.0', '0.07', '0.11', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754917');
INSERT INTO `pm_goods` VALUES ('840', '0', '121', '0-114-121-', '0', '', '4', '0', '52', 'Unichi 玫瑰果美白口服液 10*30ML', 'Unichi Rosehip Extract Complex Liquid 10X30ml', '美白液', '白里透红“玫瑰肌”', 'Unichi 玫瑰果 美白口服液 30ML 美容 胶原蛋白 维生素c 亮肤 美白淡斑', '', '/uploads/images/20190906/30586fbcd441fce00032f03b2723633f.JPG', null, '', '0', '20年7月', '10', '43.80', '43.5', '43.5', '0.0', '1.00', '1.12', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754901');
INSERT INTO `pm_goods` VALUES ('841', '0', '121', '0-114-121-', '0', '', '4', '0', '52', 'Unichi 丹拿葡萄籽精华胶囊 60粒', 'Unichi Tannat Grape Seed 26000mg 60 Capsules', 'unichi葡萄籽', '抗氧化 守住年轻的秘密', 'Unichi 葡萄籽精华胶囊 60粒 美白 抗氧化 花青素 美白淡斑 防辐射', '', '/uploads/images/20190906/f34db2da6fabf424810b54b7adafe62e.JPG', null, '', '0', '21年1月', '10', '20.00', '19.5', '19.5', '0.0', '0.10', '0.13', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754889');
INSERT INTO `pm_goods` VALUES ('842', '0', '121', '0-114-121-', '0', '', '4', '0', '52', 'Unichi 牛油果精华胶囊 60粒', 'Unichi Avocado Extract Complex 60 Capsules', 'unichi牛油果', '平衡女性健康的贴身管家', 'Unichi 牛油果精华胶囊 60粒 补充维生素 皮肤 生殖 健康 荷尔蒙平衡 守护子宫', '', '/uploads/images/20190906/8e260b89be4874bd93ebb50292960e6d.JPG', null, '', '0', '21年5月', '10', '20.00', '16.9', '16.9', '0.0', '0.10', '0.13', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754877');
INSERT INTO `pm_goods` VALUES ('843', '0', '121', '0-114-121-', '0', '', '4', '0', '52', 'Unichi 生蚝精胶囊 60粒', 'Unichi Zinc Plus Oyster 60 Capsules', 'unichi黑生蚝精', '升级你的巅峰时刻！', 'Unichi 生蚝精胶囊 60粒 男性 补充体力 生殖健康 雄性激素 免疫力 提高精子活力', '', '/uploads/images/20190906/04c8bb391014a0a88d0141aa450cc336.JPG', null, '', '0', '20年11月', '10', '23.50', '16.5', '16.5', '0.0', '0.10', '0.15', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754866');
INSERT INTO `pm_goods` VALUES ('844', '0', '121', '0-114-121-', '0', '', '4', '0', '52', 'Unichi 玫瑰果精华胶囊 美白丸 60粒', 'Unichi Rosehip Extract Complex 60 Capsules', 'unichi美白丸', '全身美白淡斑', 'Unichi 玫瑰果 精华胶囊 美白丸 60粒 美容 胶原蛋白 维生素c 亮肤 美白淡斑', '', '/uploads/images/20190906/6fdd90435cad776b2a506e5086543db5.JPG', null, '', '0', '21年7月', '10', '18.50', '17.9', '17.9', '0.0', '0.10', '0.13', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754852');
INSERT INTO `pm_goods` VALUES ('845', '0', '121', '0-114-121-', '0', '', '4', '0', '50', 'Breath Pearls 口气清新胶囊 50粒', 'Breath Pearls Natural Capsules 50', '口气丸', 'kiss 根本停不下来', 'Breath Pearls 口气清新胶囊 50粒 香口丸 天然清新 口气珠 排胀气 去口臭', '', '/uploads/images/20190906/f93c23d82236c362679961f043715eea.JPG', null, '', '0', '21年4月', '10', '6.50', '6.2', '6.2', '0.0', '0.03', '0.05', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754840');
INSERT INTO `pm_goods` VALUES ('846', '0', '121', '0-114-121-', '0', '', '4', '0', '52', 'Saffronia 藏红花 素颜丸 60粒', 'Unichi Saffronia 60 Tablets', 'unichi素颜丸', '好心情 好睡眠 好气色', 'Saffronia 藏红花 素颜丸 60粒 补气血 改善睡眠 缓解经期疼痛 淡化痘印', '', '/uploads/images/20190906/b7b5415d01ed27045158653d41934ed2.JPG', null, '', '0', '21年10月', '10', '30.50', '30.4', '30.4', '0.0', '0.08', '0.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754826');
INSERT INTO `pm_goods` VALUES ('847', '0', '121', '0-114-121-', '0', '', '4', '0', '27', 'Nulax 乐康片 原味 40粒', 'Nulax Natural Laxative Tablets With Prebiotic Senna + Aloe 40 Tablets', '原味乐康片', '轻松消堵拯救不畅快', 'Nulax 乐康片 原味 40粒 果蔬 水果 酵素 纤维 通肠 便秘 排毒 润肠', '', '/uploads/images/20190906/853245e672f5cf3658a0f0881069fe44.JPG', null, '', '0', '20年9月', '10', '4.95', '5.3', '5.3', '0.0', '0.05', '0.08', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754811');
INSERT INTO `pm_goods` VALUES ('848', '0', '121', '0-114-121-', '0', '', '4', '0', '27', 'Nulax 乐康膏 蔬果膏 500g', 'Nulax Fruit Laxative 500g', '乐康膏500g', '轻松消堵拯救不畅快', 'Nulax 乐康膏 蔬果膏 500g 水果 酵素 纤维 通肠 便秘 排毒 润肠', '', '/uploads/images/20190906/66236edbfbec19d5e6d3a5ddec3ec7bd.JPG', null, '', '0', '20年5月', '10', '10.00', '9.9', '9.9', '0.0', '0.55', '0.60', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754791');
INSERT INTO `pm_goods` VALUES ('849', '0', '121', '0-114-121-', '0', '', '4', '0', '36', 'BIO-E 酵素粉瘦身粉 28包/盒', 'Bio-E Super Green Powder 28 Sachets', '酵素粉', '你管吃 我管瘦！', 'BIO-E 酵素粉 瘦身粉 28包 益生菌 分解油脂 新城代谢 便秘 肠胃调理 润肠', '', '/uploads/images/20190906/48c60c98f9f55d6ee3fa9ffa7ffb1132.jpg', null, '', '0', '20年9月', '10', '23.50', '24.7', '24.7', '0.0', '0.50', '0.65', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1567754779');
INSERT INTO `pm_goods` VALUES ('850', '0', '121', '0-114-121-', '0', '', '4', '0', '36', 'BIO-E 柠檬酵素 500ml', 'Bio-E Lemon Manuka Juice 500ml', '柠檬酵素', '你管吃 我管瘦！', 'BIO-E 柠檬 酵素 500ml 益生菌 分解油脂 新城代谢 便秘 肠胃调理 润肠', '', '/uploads/images/20190906/528b5c9b09f8b9b224a90999ae4d6539.JPG', null, '<p><img src=\"https://img.alicdn.com/imgextra/i3/21162158/O1CN01MAiJ1A1RoPGKJFd1M_!!21162158.jpg\" /></p>', '0', '21年8月', '10', '16.80', '17.0', '17.0', '0.0', '0.60', '0.70', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567741018', '1568282763');
INSERT INTO `pm_goods` VALUES ('859', '0', '86', '0-7-86-', '63', '0-9-63-', '7', '0', '46', 'QV 护手霜 50g', 'Ego QV Hand Cream 50g Tube', 'QV护手霜50g', '保湿滋润 孕妇可用', 'QV 护手霜 100g 润肤 护肤 滋润 防干燥 补水 保湿 温和 Ego 孕妇可用', '', '/uploads/images/20190906/4e34d1139bc0cb880fd7f291c2464cdc.jpg', null, '', '0', '20年4月', '10', '2.00', '2.5', '2.5', '0.0', '0.75', '0.10', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '0', '50', '1567741015', '1567754730');
INSERT INTO `pm_goods` VALUES ('858', '0', '122', '0-10-122-', '121', '0-114-121-', '4', '0', '50', 'floradix 铁片 84片', 'Floradix Iron 84 Tablets', 'floradix铁片', '补铁益气 缓解疲劳', 'floradix 德国铁元 铁元片 84片 老人 孕妇 补铁 补血 液体', '', '/uploads/images/20190906/1048084c68e2a031205bfe2da3038986.jpg', null, '', '0', '21年11月', '10', '15.50', '15.8', '15.8', '0.0', '0.10', '0.12', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567740797', '1567754741');
INSERT INTO `pm_goods` VALUES ('857', '0', '122', '0-10-122-', '121', '0-114-121-', '4', '0', '50', 'floradix德国铁元500ml', 'Floradix Iron Form  500ml', '大铁元', '补铁益气 缓解疲劳', 'floradix 德国铁元 大铁元 500ml 老人 孕妇 补铁 补血 液体', '', '/uploads/images/20190906/69c94a4d41b0ca7c43ae923c19ca6476.jpeg', null, '', '0', '21年1月', '10', '23.50', '23.3', '23.3', '0.0', '1.10', '1.30', '', '0', '1000', '1', '0', '0', '0', '0', '0', '0', '1', '50', '1567740797', '1567754756');

-- ----------------------------
-- Table structure for `pm_goods_cate`
-- ----------------------------
DROP TABLE IF EXISTS `pm_goods_cate`;
CREATE TABLE `pm_goods_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '9999',
  `path` varchar(200) NOT NULL,
  `picname` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `num` int(11) NOT NULL,
  `comm` tinyint(4) NOT NULL,
  `comm1` tinyint(4) NOT NULL,
  `keyword` text NOT NULL,
  `description` text NOT NULL,
  `createTime` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_goods_cate
-- ----------------------------
INSERT INTO `pm_goods_cate` VALUES ('1', '0', '婴儿奶粉', '', '1', '0-1-', '/uploads/images/20190729/b96302dd748bd16420f18181664fd85d.jpg', '', '0', '1', '0', '', '', '1561185748', '1567492375');
INSERT INTO `pm_goods_cate` VALUES ('4', '0', '中老年区', '', '5', '0-4-', '/uploads/images/20190729/4c6aecdd4dcb5eeb7f146e7f53942c4d.jpg', '', '0', '1', '0', '', '', '1564111190', '1567643682');
INSERT INTO `pm_goods_cate` VALUES ('5', '0', 'Jellycat', '', '12', '0-5-', '/uploads/images/20190903/fb64284fb43d8758c36883d8d83e2c39.jpg', '', '0', '1', '1', '', '', '1564111296', '1568284234');
INSERT INTO `pm_goods_cate` VALUES ('7', '0', '日用美容护肤', '', '50', '0-7-', '/uploads/images/20190729/a13c35609ae92b6ccd5730e7b0f47348.jpg', '', '0', '1', '0', '', '', '1564112889', '1567643657');
INSERT INTO `pm_goods_cate` VALUES ('13', '0', 'ugg/羊毛制品', '', '11', '0-13-', '/uploads/images/20190729/01bba9d4c089764f30fc43442cf6b761.jpg', '', '0', '1', '0', '', '', '1564387478', '1567489883');
INSERT INTO `pm_goods_cate` VALUES ('9', '0', '婴幼儿区', '', '4', '0-9-', '/uploads/images/20190729/34b07f95d337a98b359b2c08a490de2c.jpg', '', '0', '1', '0', '', '', '1564370609', '1567489233');
INSERT INTO `pm_goods_cate` VALUES ('10', '0', '孕妈专区', '', '3', '0-10-', '/uploads/images/20190729/9edbb30978db4002909f71c1d02e082a.jpg', '', '0', '1', '0', '', '', '1564370628', '1567489185');
INSERT INTO `pm_goods_cate` VALUES ('11', '0', '天然蜂蜜', '', '6', '0-11-', '/uploads/images/20190729/b1bc5976dd2cd196063045398168df2f.jpg', '', '0', '1', '0', '', '', '1564370646', '1567489645');
INSERT INTO `pm_goods_cate` VALUES ('12', '0', '美味零食', '', '10', '0-12-', '/uploads/images/20190729/e6235c84686995d02e222cb12bf0d61f.jpg', '', '0', '1', '0', '', '', '1564370660', '1567489856');
INSERT INTO `pm_goods_cate` VALUES ('14', '0', '小东西', '', '8', '0-14-', '', '', '0', '0', '0', '', '', '1564390647', '1567489832');
INSERT INTO `pm_goods_cate` VALUES ('15', '1', 'A2', '', '1', '0-1-15-', '', '', '0', '0', '1', '', '', '1564394407', '1567091544');
INSERT INTO `pm_goods_cate` VALUES ('16', '1', '爱他美白金装', '', '3', '0-1-16-', '', '', '0', '0', '0', '', '', '1564394504', '1567492182');
INSERT INTO `pm_goods_cate` VALUES ('17', '1', '贝拉米', '', '4', '0-1-17-', '', '', '0', '0', '0', '', '', '1564394515', '1567091639');
INSERT INTO `pm_goods_cate` VALUES ('37', '0', '网红药品', '', '9', '0-37-', '/uploads/images/20190729/6edf57b15a72ec9a6555c1718f9c21c6.jpg', '', '0', '1', '0', '', '', '1564399897', '1567489842');
INSERT INTO `pm_goods_cate` VALUES ('56', '9', '贝拉米', '', '2', '0-9-56-', '', '', '0', '0', '0', '', '', '1567489283', '1567489283');
INSERT INTO `pm_goods_cate` VALUES ('57', '9', 'Nature’s Way', '', '3', '0-9-57-', '', '', '0', '0', '0', '', '', '1567489311', '1567489311');
INSERT INTO `pm_goods_cate` VALUES ('55', '9', 'Bio Island', '', '1', '0-9-55-', '', '', '0', '0', '1', '', '', '1567489265', '1568284168');
INSERT INTO `pm_goods_cate` VALUES ('21', '4', '三高类', '', '1', '0-4-21-', '', '', '0', '0', '0', '', '', '1564394814', '1567490925');
INSERT INTO `pm_goods_cate` VALUES ('22', '4', '关节类', '', '2', '0-4-22-', '', '', '0', '0', '0', '', '', '1564394830', '1567492113');
INSERT INTO `pm_goods_cate` VALUES ('24', '4', '补品类', '', '3', '0-4-24-', '', '', '0', '0', '0', '', '', '1564394853', '1567490960');
INSERT INTO `pm_goods_cate` VALUES ('72', '11', 'Streamland', '', '1', '0-11-72-', '', '', '0', '0', '0', '', '', '1567491044', '1567491044');
INSERT INTO `pm_goods_cate` VALUES ('73', '11', 'Comvita', '', '2', '0-11-73-', '', '', '0', '0', '0', '', '', '1567491059', '1567491059');
INSERT INTO `pm_goods_cate` VALUES ('29', '4', '其他类', '', '4', '0-4-29-', '', '', '0', '0', '0', '', '', '1564394911', '1567490998');
INSERT INTO `pm_goods_cate` VALUES ('109', '5', '51cm 邦尼兔', '', '3', '0-5-109-', '', '', '0', '0', '0', '', '', '1567492832', '1567778739');
INSERT INTO `pm_goods_cate` VALUES ('108', '5', '36cm 邦尼兔', '', '2', '0-5-108-', '', '', '0', '0', '0', '', '', '1567492810', '1567778726');
INSERT INTO `pm_goods_cate` VALUES ('107', '5', '31cm 邦尼兔', '', '1', '0-5-107-', '', '', '0', '0', '0', '', '', '1567492789', '1567778714');
INSERT INTO `pm_goods_cate` VALUES ('38', '1', '可瑞康', '', '5', '0-1-38-', '', '', '0', '0', '0', '', '', '1567091184', '1567091654');
INSERT INTO `pm_goods_cate` VALUES ('39', '1', '惠氏S26', '', '6', '0-1-39-', '', '', '0', '0', '0', '', '', '1567091233', '1567091662');
INSERT INTO `pm_goods_cate` VALUES ('40', '1', '草饲奶粉', '', '7', '0-1-40-', '', '', '0', '0', '0', '', '', '1567091281', '1567091680');
INSERT INTO `pm_goods_cate` VALUES ('41', '1', '雀巢', '', '8', '0-1-41-', '', '', '0', '0', '0', '', '', '1567091295', '1567091695');
INSERT INTO `pm_goods_cate` VALUES ('42', '1', 'Oli羊奶粉', '', '9', '0-1-42-', '', '', '0', '0', '0', '', '', '1567091306', '1567091705');
INSERT INTO `pm_goods_cate` VALUES ('43', '1', 'Bubs羊奶粉', '', '10', '0-1-43-', '', '', '0', '0', '0', '', '', '1567091317', '1567091716');
INSERT INTO `pm_goods_cate` VALUES ('44', '1', '特殊奶粉', '', '11', '0-1-44-', '', '', '0', '0', '0', '', '', '1567091333', '1567091724');
INSERT INTO `pm_goods_cate` VALUES ('45', '1', '爱他美金装', '', '2', '0-1-45-', '', '', '0', '0', '1', '', '', '1567091577', '1568284117');
INSERT INTO `pm_goods_cate` VALUES ('106', '9', '其他', '', '50', '0-9-106-', '', '', '0', '0', '0', '', '', '1567492621', '1567492621');
INSERT INTO `pm_goods_cate` VALUES ('46', '0', '其他奶粉', '', '2', '0-46-', '', '', '0', '0', '0', '', '', '1567148253', '1567153292');
INSERT INTO `pm_goods_cate` VALUES ('47', '46', 'a2', '', '1', '0-46-47-', '', '', '0', '0', '0', '', '', '1567148424', '1567148424');
INSERT INTO `pm_goods_cate` VALUES ('48', '46', '德运', '', '2', '0-46-48-', '', '', '0', '0', '0', '', '', '1567148442', '1567148450');
INSERT INTO `pm_goods_cate` VALUES ('49', '46', '雅培', '', '3', '0-46-49-', '', '', '0', '0', '0', '', '', '1567148466', '1567148474');
INSERT INTO `pm_goods_cate` VALUES ('50', '46', '美可卓', '', '4', '0-46-50-', '', '', '0', '0', '0', '', '', '1567148493', '1567148501');
INSERT INTO `pm_goods_cate` VALUES ('51', '46', 'oz farm', '', '5', '0-46-51-', '', '', '0', '0', '0', '', '', '1567148520', '1567148520');
INSERT INTO `pm_goods_cate` VALUES ('52', '46', '雀巢', '', '6', '0-46-52-', '', '', '0', '0', '0', '', '', '1567148536', '1567148536');
INSERT INTO `pm_goods_cate` VALUES ('53', '46', 'Caprilac', '', '7', '0-46-53-', '', '', '0', '0', '0', '', '', '1567148560', '1567148560');
INSERT INTO `pm_goods_cate` VALUES ('54', '46', '其他奶粉', '', '8', '0-46-54-', '', '', '0', '0', '0', '', '', '1567148572', '1567148572');
INSERT INTO `pm_goods_cate` VALUES ('58', '9', 'B-box', '', '4', '0-9-58-', '', '', '0', '0', '0', '', '', '1567489329', '1567489329');
INSERT INTO `pm_goods_cate` VALUES ('59', '9', '屁屁膏', '', '5', '0-9-59-', '', '', '0', '0', '0', '', '', '1567489355', '1567489355');
INSERT INTO `pm_goods_cate` VALUES ('60', '9', 'Jack&Jill', '', '6', '0-9-60-', '', '', '0', '0', '0', '', '', '1567489376', '1567489376');
INSERT INTO `pm_goods_cate` VALUES ('61', '9', 'Gaia', '', '7', '0-9-61-', '', '', '0', '0', '0', '', '', '1567489403', '1567489403');
INSERT INTO `pm_goods_cate` VALUES ('62', '9', 'Aveeno', '', '8', '0-9-62-', '', '', '0', '0', '0', '', '', '1567489417', '1567489417');
INSERT INTO `pm_goods_cate` VALUES ('63', '9', 'Qv', '', '9', '0-9-63-', '', '', '0', '0', '0', '', '', '1567489433', '1567489433');
INSERT INTO `pm_goods_cate` VALUES ('64', '9', 'Goat', '', '10', '0-9-64-', '', '', '0', '0', '0', '', '', '1567489447', '1567489447');
INSERT INTO `pm_goods_cate` VALUES ('65', '1', '其他', '', '11', '0-1-65-', '', '', '0', '0', '0', '', '', '1567489457', '1567489457');
INSERT INTO `pm_goods_cate` VALUES ('122', '10', '孕妈必备', '', '50', '0-10-122-', '', '', '0', '0', '0', '', '', '1567738401', '1567738401');
INSERT INTO `pm_goods_cate` VALUES ('66', '0', '澳洲红酒', '', '13', '0-66-', '', '', '0', '0', '0', '', '', '1567489971', '1567489971');
INSERT INTO `pm_goods_cate` VALUES ('67', '0', '生鲜食品', '', '14', '0-67-', '', '', '0', '0', '0', '', '', '1567489994', '1567489994');
INSERT INTO `pm_goods_cate` VALUES ('68', '0', '现货区', '', '15', '0-68-', '', '', '0', '0', '0', '', '', '1567490012', '1567490012');
INSERT INTO `pm_goods_cate` VALUES ('69', '0', '本周特价', '', '16', '0-69-', '', '', '0', '0', '0', '', '', '1567490027', '1567490027');
INSERT INTO `pm_goods_cate` VALUES ('70', '0', '热销产品', '', '17', '0-70-', '', '', '0', '0', '0', '', '', '1567490040', '1567490040');
INSERT INTO `pm_goods_cate` VALUES ('111', '5', '118cm 邦尼兔', '', '5', '0-5-111-', '', '', '0', '0', '0', '', '', '1567492934', '1567778765');
INSERT INTO `pm_goods_cate` VALUES ('74', '7', 'natio', '', '1', '0-7-74-', '', '', '0', '0', '0', '', '', '1567491118', '1567491900');
INSERT INTO `pm_goods_cate` VALUES ('75', '7', 'goat', '', '2', '0-7-75-', '', '', '0', '0', '0', '', '', '1567491128', '1567491909');
INSERT INTO `pm_goods_cate` VALUES ('76', '7', 'freezeframe', '', '3', '0-7-76-', '', '', '0', '0', '0', '', '', '1567491146', '1567491924');
INSERT INTO `pm_goods_cate` VALUES ('77', '7', '美发', '', '50', '0-7-77-', '', '', '0', '0', '0', '', '', '1567491164', '1567491164');
INSERT INTO `pm_goods_cate` VALUES ('78', '7', '瘦身纤体', '', '50', '0-7-78-', '', '', '0', '0', '0', '', '', '1567491186', '1568284136');
INSERT INTO `pm_goods_cate` VALUES ('79', '7', '绵羊油', '', '50', '0-7-79-', '', '', '0', '0', '0', '', '', '1567491198', '1567491198');
INSERT INTO `pm_goods_cate` VALUES ('80', '7', 'Eaoron', '', '50', '0-7-80-', '', '', '0', '0', '0', '', '', '1567491222', '1567491222');
INSERT INTO `pm_goods_cate` VALUES ('81', '7', 'Cemoy', '', '50', '0-7-81-', '', '', '0', '0', '0', '', '', '1567491239', '1567491239');
INSERT INTO `pm_goods_cate` VALUES ('82', '7', 'Royal Nectar', '', '50', '0-7-82-', '', '', '0', '0', '0', '', '', '1567491251', '1567491251');
INSERT INTO `pm_goods_cate` VALUES ('83', '7', 'Red seal', '', '50', '0-7-83-', '', '', '0', '0', '0', '', '', '1567491267', '1567491267');
INSERT INTO `pm_goods_cate` VALUES ('84', '7', 'Antipodes', '', '50', '0-7-84-', '', '', '0', '0', '0', '', '', '1567491279', '1567491279');
INSERT INTO `pm_goods_cate` VALUES ('85', '7', 'Healthy Care', '', '50', '0-7-85-', '', '', '0', '0', '0', '', '', '1567491289', '1567491289');
INSERT INTO `pm_goods_cate` VALUES ('86', '7', '其他', '', '51', '0-7-86-', '', '', '0', '0', '0', '', '', '1567491309', '1567491938');
INSERT INTO `pm_goods_cate` VALUES ('87', '7', 'Koehl龙珠洁面', '', '52', '0-7-87-', '', '', '0', '0', '0', '', '', '1567491342', '1567491947');
INSERT INTO `pm_goods_cate` VALUES ('88', '13', 'UGG鞋', '', '1', '0-13-88-', '', '', '0', '0', '0', '', '', '1567491378', '1567491378');
INSERT INTO `pm_goods_cate` VALUES ('89', '13', '围巾', '', '2', '0-13-89-', '', '', '0', '0', '0', '', '', '1567491399', '1567491399');
INSERT INTO `pm_goods_cate` VALUES ('90', '13', '服饰', '', '3', '0-13-90-', '', '', '0', '0', '0', '', '', '1567491411', '1567491411');
INSERT INTO `pm_goods_cate` VALUES ('91', '66', 'Penfolds奔富红酒', '', '1', '0-66-91-', '', '', '0', '0', '0', '', '', '1567491442', '1568284220');
INSERT INTO `pm_goods_cate` VALUES ('92', '66', '其它', '', '2', '0-66-92-', '', '', '0', '0', '0', '', '', '1567491459', '1567491459');
INSERT INTO `pm_goods_cate` VALUES ('93', '67', '肉类', '', '1', '0-67-93-', '', '', '0', '0', '0', '', '', '1567491479', '1567491479');
INSERT INTO `pm_goods_cate` VALUES ('94', '67', '果蔬', '', '2', '0-67-94-', '', '', '0', '0', '0', '', '', '1567491491', '1567491491');
INSERT INTO `pm_goods_cate` VALUES ('95', '67', '饮品', '', '3', '0-67-95-', '', '', '0', '0', '0', '', '', '1567491503', '1567491503');
INSERT INTO `pm_goods_cate` VALUES ('96', '69', '本周特价', '', '1', '0-69-96-', '', '', '0', '0', '0', '', '', '1567491532', '1567491532');
INSERT INTO `pm_goods_cate` VALUES ('97', '69', '清仓处理', '', '2', '0-69-97-', '', '', '0', '0', '0', '', '', '1567491557', '1567491557');
INSERT INTO `pm_goods_cate` VALUES ('98', '69', '包邮套餐', '', '3', '0-69-98-', '', '', '0', '0', '0', '', '', '1567491573', '1567491573');
INSERT INTO `pm_goods_cate` VALUES ('117', '114', 'Healthy Care', '', '3', '0-114-117-', '', '', '0', '0', '0', '', '', '1567494923', '1567494923');
INSERT INTO `pm_goods_cate` VALUES ('116', '114', 'Blackmores', '', '2', '0-114-116-', '', '', '0', '0', '0', '', '', '1567494911', '1567494911');
INSERT INTO `pm_goods_cate` VALUES ('113', '5', '扁扁熊 29cm', '', '50', '0-5-113-', '', '', '0', '0', '0', '', '', '1567492983', '1567492983');
INSERT INTO `pm_goods_cate` VALUES ('115', '114', 'Swisse', '', '1', '0-114-115-', '', '', '0', '0', '0', '', '', '1567494899', '1567494899');
INSERT INTO `pm_goods_cate` VALUES ('114', '0', '所有保健品', '', '18', '0-114-', '', '', '0', '0', '0', '', '', '1567494807', '1567494881');
INSERT INTO `pm_goods_cate` VALUES ('112', '5', '36cm 呲牙系列', '', '6', '0-5-112-', '', '', '0', '0', '0', '', '', '1567492952', '1567778775');
INSERT INTO `pm_goods_cate` VALUES ('110', '5', '73cm 邦尼兔', '', '4', '0-5-110-', '', '', '0', '0', '0', '', '', '1567492917', '1567778751');
INSERT INTO `pm_goods_cate` VALUES ('118', '114', 'Bio Island', '', '4', '0-114-118-', '', '', '0', '0', '0', '', '', '1567494935', '1567494935');
INSERT INTO `pm_goods_cate` VALUES ('119', '114', 'Life Space', '', '5', '0-114-119-', '', '', '0', '0', '0', '', '', '1567494949', '1567494949');
INSERT INTO `pm_goods_cate` VALUES ('120', '114', 'Nature‘s Way', '', '6', '0-114-120-', '', '', '0', '0', '0', '', '', '1567494962', '1567494962');
INSERT INTO `pm_goods_cate` VALUES ('121', '114', '其他品牌', '', '7', '0-114-121-', '', '', '0', '0', '0', '', '', '1567494981', '1567494981');
INSERT INTO `pm_goods_cate` VALUES ('123', '14', '小东西', '', '50', '0-14-123-', '', '', '0', '0', '0', '', '', '1567739233', '1567739233');
INSERT INTO `pm_goods_cate` VALUES ('124', '37', '网红药品', '', '50', '0-37-124-', '', '', '0', '0', '0', '', '', '1567739252', '1567739252');
INSERT INTO `pm_goods_cate` VALUES ('125', '12', '美味零食', '', '50', '0-12-125-', '', '', '0', '0', '0', '', '', '1567739267', '1567739267');
INSERT INTO `pm_goods_cate` VALUES ('126', '68', '国内现货', '', '50', '0-68-126-', '', '', '0', '0', '0', '', '', '1567739805', '1567739805');

-- ----------------------------
-- Table structure for `pm_goods_model`
-- ----------------------------
DROP TABLE IF EXISTS `pm_goods_model`;
CREATE TABLE `pm_goods_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_goods_model
-- ----------------------------
INSERT INTO `pm_goods_model` VALUES ('1', '鞋子', '1562989209', '1562989209');

-- ----------------------------
-- Table structure for `pm_goods_push`
-- ----------------------------
DROP TABLE IF EXISTS `pm_goods_push`;
CREATE TABLE `pm_goods_push` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cateID` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `goodsID` int(11) NOT NULL,
  `goodsName` varchar(200) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_goods_push
-- ----------------------------
INSERT INTO `pm_goods_push` VALUES ('18', '3', '1', '42', 'Oli羊奶 二段', '1567494127');
INSERT INTO `pm_goods_push` VALUES ('17', '3', '1', '44', 'Oli羊奶 四段', '1567494127');
INSERT INTO `pm_goods_push` VALUES ('16', '1', '1', '47', 'Bubs羊奶 三段', '1567494114');
INSERT INTO `pm_goods_push` VALUES ('13', '1', '46', '63', '雅培小安素奶粉（香草味）', '1567494114');
INSERT INTO `pm_goods_push` VALUES ('14', '1', '46', '58', '德运成人全脂奶粉', '1567494114');
INSERT INTO `pm_goods_push` VALUES ('15', '1', '1', '53', '爱他美De Lact无乳糖防乳糖不耐受腹泻婴儿奶粉900g', '1567494114');
INSERT INTO `pm_goods_push` VALUES ('19', '3', '1', '40', '雀巢半水解奶粉 三段', '1567494127');
INSERT INTO `pm_goods_push` VALUES ('20', '3', '1', '39', '雀巢半水解奶粉 二段', '1567494127');
INSERT INTO `pm_goods_push` VALUES ('21', '3', '1', '35', '雀巢能恩A2 一段', '1567494127');
INSERT INTO `pm_goods_push` VALUES ('22', '2', '1', '105', 'A2铂金 三段', '1567494139');
INSERT INTO `pm_goods_push` VALUES ('23', '2', '1', '100', '满趣健草饲 二段', '1567494139');
INSERT INTO `pm_goods_push` VALUES ('24', '2', '46', '73', 'Diploma学生奶粉', '1567494139');
INSERT INTO `pm_goods_push` VALUES ('25', '2', '46', '70', 'Ozfarm 老年奶粉', '1567494139');
INSERT INTO `pm_goods_push` VALUES ('26', '2', '1', '110', '贝拉米 四段', '1567494150');
INSERT INTO `pm_goods_push` VALUES ('27', '2', '1', '107', '贝拉米 一段', '1567494150');
INSERT INTO `pm_goods_push` VALUES ('28', '2', '46', '71', '雀巢儿童营养成长奶粉', '1567494150');
INSERT INTO `pm_goods_push` VALUES ('29', '2', '46', '67', '美可卓蓝胖子成人脱脂奶粉', '1567494150');
INSERT INTO `pm_goods_push` VALUES ('30', '3', '1', '127', 'S26白金装 三段', '1567494162');
INSERT INTO `pm_goods_push` VALUES ('31', '3', '1', '125', 'S26金装 三段', '1567494162');
INSERT INTO `pm_goods_push` VALUES ('32', '3', '1', '117', '爱他美白金 三段', '1567494162');
INSERT INTO `pm_goods_push` VALUES ('33', '3', '1', '116', '爱他美白金 二段', '1567494162');
INSERT INTO `pm_goods_push` VALUES ('34', '3', '1', '113', '爱他美金装 三段', '1567494162');
INSERT INTO `pm_goods_push` VALUES ('35', '1', '1', '45', 'Bubs羊奶 一段', '1567494178');
INSERT INTO `pm_goods_push` VALUES ('36', '1', '1', '43', 'Oli羊奶 三段', '1567494178');
INSERT INTO `pm_goods_push` VALUES ('37', '1', '1', '42', 'Oli羊奶 二段', '1567494178');
INSERT INTO `pm_goods_push` VALUES ('38', '1', '1', '41', 'Oli羊奶 一段', '1567494178');
INSERT INTO `pm_goods_push` VALUES ('39', '1', '1', '37', '雀巢能恩A2 三段', '1567494178');
INSERT INTO `pm_goods_push` VALUES ('40', '1', '1', '35', '雀巢能恩A2 一段', '1567494178');
INSERT INTO `pm_goods_push` VALUES ('41', '1', '1', '34', '雀巢能恩有机 三段', '1567494178');
INSERT INTO `pm_goods_push` VALUES ('42', '1', '1', '106', 'A2铂金 四段', '1567852775');
INSERT INTO `pm_goods_push` VALUES ('43', '2', '1', '106', 'A2铂金 四段', '1567852783');
INSERT INTO `pm_goods_push` VALUES ('44', '3', '1', '106', 'A2铂金 四段', '1567852789');

-- ----------------------------
-- Table structure for `pm_goods_spec_price`
-- ----------------------------
DROP TABLE IF EXISTS `pm_goods_spec_price`;
CREATE TABLE `pm_goods_spec_price` (
  `item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格商品id',
  `goods_id` int(11) DEFAULT '0' COMMENT '商品id',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '规格键名',
  `key_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '规格键名中文',
  `price` decimal(10,1) DEFAULT NULL COMMENT '价格',
  `cutPrice` decimal(10,1) DEFAULT NULL,
  `store_count` int(11) unsigned DEFAULT '10' COMMENT '库存数量',
  `bar_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '商品条形码',
  `weight` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '重量',
  `isBaoyou` tinyint(4) DEFAULT NULL COMMENT '0不包邮 1包邮',
  `spec_img` varchar(255) DEFAULT NULL COMMENT '规格商品主图',
  `prom_id` int(10) DEFAULT '0' COMMENT '活动id',
  `prom_type` tinyint(2) DEFAULT '0' COMMENT '参加活动类型',
  PRIMARY KEY (`item_id`),
  KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_goods_spec_price
-- ----------------------------

-- ----------------------------
-- Table structure for `pm_link`
-- ----------------------------
DROP TABLE IF EXISTS `pm_link`;
CREATE TABLE `pm_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `path` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `picname` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL,
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_link
-- ----------------------------
INSERT INTO `pm_link` VALUES ('5', '8', '0-8-', '百度', '/uploads/images/20190427/e57487e412ec8e2c85699a82af1d4907.jpg', 'http://www.baidu.com', '50', '1556365666', '1556366588');

-- ----------------------------
-- Table structure for `pm_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `pm_login_log`;
CREATE TABLE `pm_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '1手机 2微信',
  `memberID` int(11) NOT NULL,
  `account` varchar(100) NOT NULL,
  `loginTime` int(11) NOT NULL,
  `loginIP` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=356 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_login_log
-- ----------------------------
INSERT INTO `pm_login_log` VALUES ('1', '0', '1', '13500000000', '1557043064', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('2', '0', '5', '13500000002', '1557123132', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('3', '0', '5', '13500000002', '1557200159', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('4', '0', '5', '13500000002', '1557200801', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('5', '0', '5', '13500000002', '1557200994', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('6', '0', '5', '13500000002', '1557208325', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('7', '0', '5', '13500000002', '1557214386', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('8', '0', '8', '13510000003', '1557902554', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('9', '0', '5', '13500000002', '1558054528', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('10', '0', '5', '13500000002', '1558065129', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('11', '0', '1', '13500000000', '1558171198', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('12', '0', '1', '13500000000', '1558400932', '61.158.152.187');
INSERT INTO `pm_login_log` VALUES ('13', '0', '1', '13500000000', '1558402110', '61.158.152.187');
INSERT INTO `pm_login_log` VALUES ('14', '0', '1', '13500000000', '1558416536', '123.55.156.176');
INSERT INTO `pm_login_log` VALUES ('15', '0', '1', '13500000000', '1558662552', '117.158.110.78');
INSERT INTO `pm_login_log` VALUES ('16', '0', '1', '13500000000', '1560243253', '223.104.108.12');
INSERT INTO `pm_login_log` VALUES ('17', '0', '1', '1212121212', '1563767536', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('18', '0', '1', '1212121212', '1563767569', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('19', '0', '1', '1212121212', '1563767606', '127.0.0.1');
INSERT INTO `pm_login_log` VALUES ('20', '0', '10006', '11111333', '1566551126', '123.55.157.124');
INSERT INTO `pm_login_log` VALUES ('21', '0', '10005', '111111', '1566551153', '1.193.37.149');
INSERT INTO `pm_login_log` VALUES ('22', '0', '10005', '111111', '1566552408', '1.193.37.149');
INSERT INTO `pm_login_log` VALUES ('23', '0', '10005', '111111', '1566552576', '1.193.37.149');
INSERT INTO `pm_login_log` VALUES ('24', '0', '10005', '111111', '1566553032', '1.193.37.149');
INSERT INTO `pm_login_log` VALUES ('25', '0', '10005', '111111', '1566553850', '1.193.37.149');
INSERT INTO `pm_login_log` VALUES ('26', '0', '10005', '111111', '1566554037', '1.193.37.149');
INSERT INTO `pm_login_log` VALUES ('27', '0', '10005', '111111', '1566554204', '1.193.37.149');
INSERT INTO `pm_login_log` VALUES ('28', '0', '10005', '111111', '1566554381', '1.193.37.149');
INSERT INTO `pm_login_log` VALUES ('29', '0', '10005', '111111', '1566554408', '1.193.37.149');
INSERT INTO `pm_login_log` VALUES ('30', '0', '10011', '111111', '1567153019', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('31', '0', '10011', '111111', '1567153110', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('32', '0', '10011', '111111', '1567153438', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('33', '0', '10011', '111111', '1567154543', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('34', '0', '10011', '111111', '1567154943', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('35', '0', '10011', '111111', '1567154969', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('36', '0', '10011', '111111', '1567155098', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('37', '0', '10011', '111111', '1567155164', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('38', '0', '10011', '111111', '1567155248', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('39', '0', '10011', '111111', '1567155435', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('40', '0', '10011', '111111', '1567155893', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('41', '0', '10011', '111111', '1567213134', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('42', '0', '10011', '111111', '1567218901', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('43', '0', '10011', '111111', '1567219103', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('44', '0', '10011', '111111', '1567221399', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('45', '0', '10011', '111111', '1567222663', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('46', '0', '10011', '111111', '1567233327', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('47', '0', '10011', '111111', '1567233602', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('48', '0', '10011', '111111', '1567234169', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('49', '0', '10011', '111111', '1567234722', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('50', '0', '10011', '111111', '1567234777', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('51', '0', '10011', '111111', '1567235040', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('52', '0', '10011', '111111', '1567235632', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('53', '0', '10011', '111111', '1567237799', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('54', '0', '10011', '111111', '1567238736', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('55', '0', '10011', '111111', '1567238946', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('56', '0', '10011', '111111', '1567239184', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('57', '0', '10011', '111111', '1567239293', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('58', '0', '10011', '111111', '1567240402', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('59', '0', '10011', '111111', '1567240499', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('60', '0', '10011', '111111', '1567240521', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('61', '0', '10011', '111111', '1567323617', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('62', '0', '10011', '111111', '1567323771', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('63', '0', '10011', '111111', '1567323842', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('64', '0', '10011', '111111', '1567323989', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('65', '0', '10011', '111111', '1567324438', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('66', '0', '10011', '111111', '1567324579', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('67', '0', '10011', '111111', '1567325054', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('68', '0', '10011', '111111', '1567329219', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('69', '0', '10011', '111111', '1567329281', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('70', '0', '10011', '111111', '1567331132', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('71', '0', '10011', '111111', '1567331546', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('72', '0', '10011', '111111', '1567332445', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('73', '0', '10011', '111111', '1567332561', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('74', '0', '10011', '111111', '1567332617', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('75', '0', '10011', '111111', '1567332681', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('76', '0', '10011', '111111', '1567333783', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('77', '0', '10011', '111111', '1567333946', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('78', '0', '10011', '111111', '1567334017', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('79', '0', '10011', '111111', '1567334144', '1.193.56.47');
INSERT INTO `pm_login_log` VALUES ('80', '0', '10011', '111111', '1567415849', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('81', '0', '10011', '111111', '1567416814', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('82', '0', '10011', '111111', '1567416850', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('83', '0', '10011', '111111', '1567417551', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('84', '0', '10011', '111111', '1567417697', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('85', '0', '10011', '111111', '1567418429', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('86', '0', '10011', '111111', '1567473664', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('87', '0', '10011', '111111', '1567475304', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('88', '0', '10011', '111111', '1567475369', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('89', '0', '10011', '111111', '1567476995', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('90', '0', '10011', '111111', '1567478251', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('91', '0', '10011', '111111', '1567480236', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('92', '0', '10011', '111111', '1567481794', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('93', '0', '10011', '111111', '1567482300', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('94', '0', '10011', '111111', '1567482641', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('95', '0', '10011', '111111', '1567482880', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('96', '0', '10011', '111111', '1567491738', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('97', '0', '10011', '111111', '1567492619', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('98', '0', '10011', '111111', '1567493760', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('99', '0', '10011', '111111', '1567494131', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('100', '0', '10011', '111111', '1567494532', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('101', '0', '10011', '111111', '1567494866', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('102', '0', '10011', '111111', '1567566644', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('103', '0', '10011', '111111', '1567567281', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('104', '0', '10011', '111111', '1567568384', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('105', '0', '10011', '111111', '1567568517', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('106', '0', '10011', '111111', '1567579370', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('107', '0', '10011', '111111', '1567579506', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('108', '0', '10011', '111111', '1567580053', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('109', '0', '10011', '111111', '1567580102', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('110', '0', '10011', '111111', '1567580194', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('111', '0', '10011', '111111', '1567580240', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('112', '0', '10011', '111111', '1567580328', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('113', '0', '10011', '111111', '1567582705', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('114', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567583237', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('115', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567583367', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('116', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567586628', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('117', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567590415', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('118', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567595883', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('119', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567596051', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('120', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567596277', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('121', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567599123', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('122', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567600604', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('123', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567601068', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('124', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567601090', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('125', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567647008', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('126', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567647178', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('127', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567648597', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('128', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567650960', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('129', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567651061', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('130', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567651272', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('131', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567651332', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('132', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567651657', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('133', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567652707', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('134', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567652771', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('135', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567652849', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('136', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567653177', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('137', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567655421', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('138', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567664446', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('139', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567664860', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('140', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567665256', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('141', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567665395', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('142', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567666269', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('143', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567666560', '1.193.57.195');
INSERT INTO `pm_login_log` VALUES ('144', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567668017', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('145', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567668027', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('146', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567668120', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('147', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567670375', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('148', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567670559', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('149', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567671144', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('150', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567671180', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('151', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567672143', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('152', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567673119', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('153', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567673634', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('154', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567674677', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('155', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567675330', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('156', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567675557', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('157', '0', '10011', '111111', '1567676226', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('158', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567676254', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('159', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567676505', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('160', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567676543', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('161', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567676645', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('162', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567676712', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('163', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567676825', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('164', '0', '10011', '111111', '1567677700', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('165', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1567677972', '112.65.48.90');
INSERT INTO `pm_login_log` VALUES ('166', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1567733168', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('167', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567733359', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('168', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1567733562', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('169', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1567733698', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('170', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1567733819', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('171', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1567734087', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('172', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1567734424', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('173', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567735586', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('174', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567738706', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('175', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567738787', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('176', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567739456', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('177', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567740914', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('178', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567741665', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('179', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567741693', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('180', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567752776', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('181', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567752947', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('182', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567754173', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('183', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567754336', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('184', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567754501', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('185', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567754688', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('186', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567755121', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('187', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567755390', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('188', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567755856', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('189', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567756423', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('190', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567756562', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('191', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567764928', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('192', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567770783', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('193', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567770893', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('194', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567771111', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('195', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567771807', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('196', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567772809', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('197', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567772924', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('198', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567773887', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('199', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567774190', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('200', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567774237', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('201', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567774428', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('202', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567774450', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('203', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567775489', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('204', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567775534', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('205', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567775559', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('206', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567775899', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('207', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567776369', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('208', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567776487', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('209', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567777320', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('210', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567777373', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('211', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567777385', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('212', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567777814', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('213', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567777924', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('214', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567779334', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('215', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567779373', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('216', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567780267', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('217', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567819889', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('218', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567820090', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('219', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567820103', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('220', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567820204', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('221', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567820320', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('222', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567820343', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('223', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567821599', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('224', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567821953', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('225', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567822706', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('226', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567823032', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('227', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567823716', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('228', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567824114', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('229', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567824314', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('230', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567825911', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('231', '0', '10009', 'oZOhw1WYrM3fkSUX_KrNI6XCAaUA', '1567826920', '120.20.58.40');
INSERT INTO `pm_login_log` VALUES ('232', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567827716', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('233', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567827733', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('234', '0', '10010', 'oZOhw1SCfoFx2aRuJlE5ZjHHISVY', '1567828361', '223.104.20.53');
INSERT INTO `pm_login_log` VALUES ('235', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1567828838', '112.64.68.188');
INSERT INTO `pm_login_log` VALUES ('236', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567829252', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('237', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567829452', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('238', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1567829787', '123.53.39.78');
INSERT INTO `pm_login_log` VALUES ('239', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1567830243', '112.64.68.188');
INSERT INTO `pm_login_log` VALUES ('240', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1567832842', '120.20.58.40');
INSERT INTO `pm_login_log` VALUES ('241', '0', '10018', 'oZOhw1WPz4F1hFrUw0MRFNEJk6P8', '1567837741', '1.194.130.191');
INSERT INTO `pm_login_log` VALUES ('242', '0', '10018', 'oZOhw1WPz4F1hFrUw0MRFNEJk6P8', '1567838522', '1.194.130.191');
INSERT INTO `pm_login_log` VALUES ('243', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1567851022', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('244', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1567855546', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('245', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1567903592', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('246', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1567987374', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('247', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568030896', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('248', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568030902', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('249', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568030917', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('250', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568030937', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('251', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568030946', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('252', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568031478', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('253', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568032405', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('254', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568032441', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('255', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568032489', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('256', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568033103', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('257', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568033418', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('258', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568033720', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('259', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568033863', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('260', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568034302', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('261', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568034689', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('262', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568034738', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('263', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568034788', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('264', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568034819', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('265', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568034878', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('266', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568034936', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('267', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568036376', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('268', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568036401', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('269', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568036434', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('270', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568038018', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('271', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568038162', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('272', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568038864', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('273', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568038986', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('274', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568039030', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('275', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568071031', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('276', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568115031', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('277', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568168771', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('278', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568169203', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('279', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568173784', '129.127.147.167');
INSERT INTO `pm_login_log` VALUES ('280', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568174015', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('281', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568185548', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('282', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568185693', '1.193.56.230');
INSERT INTO `pm_login_log` VALUES ('283', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568186100', '120.17.42.155');
INSERT INTO `pm_login_log` VALUES ('284', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568186292', '1.193.59.197');
INSERT INTO `pm_login_log` VALUES ('285', '0', '10012', 'oZOhw1YIbTdUU4tloZQsWMYuxGR0', '1568190506', '140.207.23.60');
INSERT INTO `pm_login_log` VALUES ('286', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568190745', '1.193.59.197');
INSERT INTO `pm_login_log` VALUES ('287', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568191371', '1.193.59.197');
INSERT INTO `pm_login_log` VALUES ('288', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568191644', '1.193.59.197');
INSERT INTO `pm_login_log` VALUES ('289', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568191896', '1.193.59.197');
INSERT INTO `pm_login_log` VALUES ('290', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568192112', '1.193.59.197');
INSERT INTO `pm_login_log` VALUES ('291', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568259231', '112.64.68.179');
INSERT INTO `pm_login_log` VALUES ('292', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568259852', '112.64.68.179');
INSERT INTO `pm_login_log` VALUES ('293', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568259930', '112.64.68.179');
INSERT INTO `pm_login_log` VALUES ('294', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568260294', '112.64.68.179');
INSERT INTO `pm_login_log` VALUES ('295', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568260575', '112.64.68.179');
INSERT INTO `pm_login_log` VALUES ('296', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568268694', '112.64.68.179');
INSERT INTO `pm_login_log` VALUES ('297', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568270977', '140.207.23.38');
INSERT INTO `pm_login_log` VALUES ('298', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568271121', '140.207.23.38');
INSERT INTO `pm_login_log` VALUES ('299', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568271511', '120.17.106.16');
INSERT INTO `pm_login_log` VALUES ('300', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568272783', '140.207.23.38');
INSERT INTO `pm_login_log` VALUES ('301', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568273093', '140.207.23.38');
INSERT INTO `pm_login_log` VALUES ('302', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568274613', '140.207.23.38');
INSERT INTO `pm_login_log` VALUES ('303', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568276148', '140.207.23.38');
INSERT INTO `pm_login_log` VALUES ('304', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568276539', '140.207.23.38');
INSERT INTO `pm_login_log` VALUES ('305', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568276732', '140.207.23.38');
INSERT INTO `pm_login_log` VALUES ('306', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568279016', '140.207.23.38');
INSERT INTO `pm_login_log` VALUES ('307', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568279154', '140.207.23.38');
INSERT INTO `pm_login_log` VALUES ('308', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568279666', '140.207.23.38');
INSERT INTO `pm_login_log` VALUES ('309', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568279809', '140.207.23.38');
INSERT INTO `pm_login_log` VALUES ('310', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568283701', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('311', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568284266', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('312', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568333865', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('313', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568349577', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('314', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568373499', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('315', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568421907', '182.120.20.134');
INSERT INTO `pm_login_log` VALUES ('316', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568460794', '58.170.234.196');
INSERT INTO `pm_login_log` VALUES ('317', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568596630', '120.17.210.28');
INSERT INTO `pm_login_log` VALUES ('318', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568604939', '1.193.36.26');
INSERT INTO `pm_login_log` VALUES ('319', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568606664', '1.193.36.26');
INSERT INTO `pm_login_log` VALUES ('320', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568606743', '1.193.36.26');
INSERT INTO `pm_login_log` VALUES ('321', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568614173', '1.193.36.26');
INSERT INTO `pm_login_log` VALUES ('322', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568617317', '1.193.36.26');
INSERT INTO `pm_login_log` VALUES ('323', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568621948', '1.193.36.26');
INSERT INTO `pm_login_log` VALUES ('324', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568623495', '1.193.36.26');
INSERT INTO `pm_login_log` VALUES ('325', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568623634', '1.193.36.26');
INSERT INTO `pm_login_log` VALUES ('326', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568623987', '1.193.36.26');
INSERT INTO `pm_login_log` VALUES ('327', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568624034', '1.193.36.26');
INSERT INTO `pm_login_log` VALUES ('328', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568624155', '1.193.36.26');
INSERT INTO `pm_login_log` VALUES ('329', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568624190', '1.193.36.26');
INSERT INTO `pm_login_log` VALUES ('330', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568771938', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('331', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568775129', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('332', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568776002', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('333', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568776105', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('334', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568779131', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('335', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568779440', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('336', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568786803', '129.127.146.65');
INSERT INTO `pm_login_log` VALUES ('337', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568787424', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('338', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568787679', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('339', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568789261', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('340', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568789326', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('341', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568790706', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('342', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568791506', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('343', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568792561', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('344', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568792584', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('345', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568793895', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('346', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568794277', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('347', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568794354', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('348', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568795860', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('349', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568795888', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('350', '0', '10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '1568797192', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('351', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568797958', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('352', '0', '10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '1568798063', '1.193.59.1');
INSERT INTO `pm_login_log` VALUES ('353', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568852968', '58.170.65.217');
INSERT INTO `pm_login_log` VALUES ('354', '0', '10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '1568876921', '120.17.179.186');
INSERT INTO `pm_login_log` VALUES ('355', '0', '10009', 'oZOhw1WYrM3fkSUX_KrNI6XCAaUA', '1568887119', '58.170.65.217');

-- ----------------------------
-- Table structure for `pm_member`
-- ----------------------------
DROP TABLE IF EXISTS `pm_member`;
CREATE TABLE `pm_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL COMMENT '登录密码',
  `nickname` varchar(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sn` varchar(50) NOT NULL,
  `wechat` varchar(50) NOT NULL,
  `headimg` varchar(200) NOT NULL,
  `disable` tinyint(4) NOT NULL COMMENT '0正常 1禁用',
  `token` varchar(200) NOT NULL,
  `token_out` int(11) NOT NULL,
  `createTime` int(11) NOT NULL COMMENT '注册时间',
  `createIP` varchar(20) NOT NULL COMMENT '注册IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10023 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_member
-- ----------------------------
INSERT INTO `pm_member` VALUES ('10008', 'oZOhw1QMNn1tpeMKAOchbVOMy_ek', '', '', '東', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epIE0Triahcy3sibOuQFGTJFc2qu5FS4HiaXN17RUQM5qKZjibTS7I3MicvA9pIxfct56cM5e9rpsfKXBA/132', '0', 'bc5e1d3f2461a460c2eeab2e17e17e4c5e2ff51b', '1571240907', '1566957039', '1.194.131.35');
INSERT INTO `pm_member` VALUES ('10009', 'oZOhw1WYrM3fkSUX_KrNI6XCAaUA', '', '', '', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erdO85GBCZcf0ImfqZaR9d7TpVnm3cbcpNpyxZHBVTXT7WxUSsJt0uwS55CLUXFYoo1tLz7LBg3tA/132', '0', 'ecf442d56b713fc166fdabd9bcfce7efa31dbbc1', '1571761563', '1566957377', '101.103.1.124');
INSERT INTO `pm_member` VALUES ('10010', 'oZOhw1SCfoFx2aRuJlE5ZjHHISVY', '', '', 'Zzzz、', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqDaibsddU1MuXxKBZf9jAvtKMj4njhqYcQfuPKGgvicm8QGibxGJwP5VN9NxiaFk3YqT4DPXYHL8ktAg/132', '0', '92d809073e59288308ff8c48b546fa34e3f27e0d', '1571380355', '1566957845', '111.175.59.78');
INSERT INTO `pm_member` VALUES ('10011', '111111', '', '', '张橦橦', '张超123456', '', 'exchat', 'http://www.aumaria.com/uploads/20190901/d438655dfa8c643e1aecc66a8bee074e.jpeg', '0', '9c01705f481b0d6cc4bd758a8ca206ef690659d9', '1570269705', '1567152304', '1.193.56.47');
INSERT INTO `pm_member` VALUES ('10012', 'oZOhw1YIbTdUU4tloZQsWMYuxGR0', '18621185412', '', '张小黑', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEIxcv9wiaUP4WWuWyQtnO2LPfhdOic4OqO10zXl6VibJ4z8j3ExJLUVH5Y80oLkwcsZ4tcNPtibykK3lw/132', '0', 'a89b1c7c3d59690525a1fa584952be6c98616b1f', '1571390103', '1567223281', '1.193.56.47');
INSERT INTO `pm_member` VALUES ('10013', 'oZOhw1dbOF9gGbSbIFgg3GP_DfVQ', '', '', 'Christie-xzx', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqHYPmibkkzyia7Nk8IZ8Ey1jFtsmCA6eibHLIr2kXdpeTQRYW6aDjkOxZ3QsXvkw6urfzCIgJTl17sw/132', '0', '4acbf21c40edc9c28935edbc26580499dd4c8598', '1570874250', '1567344323', '27.18.39.253');
INSERT INTO `pm_member` VALUES ('10014', 'oKTjivsBgPwvhkNBwCHyxtX-Iba0', '', '', '玫瑰客服', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/MDGnUapIZJHtSzgybA3ac8v5qaFPDXVRoycpwc0yicoMjBLIVVKLFCKfsJx57JpUJ53VpQnd90JTbOQS7h8rqjA/132', '0', '53ab9b71f11484c8171a3ad16330f2cae0e7c96d', '1571390090', '1567581315', '1.193.57.195');
INSERT INTO `pm_member` VALUES ('10015', 'oKTjivi2AkF3cEthfqv6qQCYtyvE', '', '', '张小黑', '智能', '', '', '/uploads/20190906/3a82d1085fab4611a611a955d583d4ea.jpeg', '0', 'd67055f3fe958f43335fc503152d0cbef16021ac', '1571389259', '1567677933', '112.65.48.90');
INSERT INTO `pm_member` VALUES ('10016', 'oZOhw1Ru23rIxnV3e0y8CIFXAhkU', '', '', 'Ellen', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/AcJM5WNhE04cLIiapEQV3aksrhrT4CseIiapqYbm3xGIQ1C2wAcH1IVg8JSsF0dwuqoKSQjSnJ5b5cv6IjiaGQklQ/132', '0', '61785186f98affbaceca734d3b5d7f64508c0139', '1571479826', '1567827200', '1.125.111.196');
INSERT INTO `pm_member` VALUES ('10017', 'oZOhw1fNNQtOjsGBNrHGOdc587Vg', '', '', 'Minna_赵敏', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/2tC0fXopfOpxvW5Gib2MONsLX0BBEiagichmJd1PibvPNYrMbErcmvasRfrZicBeicA9G6m3BaNiaBKM29ZDTDVc0yVow/132', '0', '7fc51feacdbd8fb3566a5bcfffc518e108199d9f', '1570420841', '1567828703', '117.188.27.99');
INSERT INTO `pm_member` VALUES ('10018', 'oZOhw1WPz4F1hFrUw0MRFNEJk6P8', '', '', '月明', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/aS6CsxCTmb6olg4VqmLZVPl4UaoSicC2KkHEWDkzflM9YESQkRwzsDd8TtgFgIt3I2YR8IiaLCdIicn91v5FS0oZQ/132', '0', 'c85096250d0612ef947b4f90b929dd767c83097b', '1570430967', '1567828725', '1.194.130.191');
INSERT INTO `pm_member` VALUES ('10019', 'oZOhw1eVOAZkMffrXde3DRCBXG-0', '', '', '熊枫', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ahKPj9vjTDBCld3XCWibUo7XUhR3TQfTOoELWsIjOU3zYC2fNO1XQAWicyRkvV6Xj5LRRYcEnqLcUNp2FrjGPIQ/132', '0', '08d3316590033605ab6bc712569e3b8c1234ae50', '1570422870', '1567830850', '1.124.109.76');
INSERT INTO `pm_member` VALUES ('10020', 'oKTjivpaCjsQYFaqU6PWdsG2YHY4', '', '', '', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqGic7jW4zZ2hvDO3icSqaxlnPqYfu5jwd6pZ4UR07Pial8t8v1Kic5MOZylC4AmtAe2FIbcEEyhRcwxA/132', '0', '47d5cbf90fbc715b79c078dd978a8ecaa0f8eb52', '1571483372', '1567832280', '120.20.58.40');
INSERT INTO `pm_member` VALUES ('10021', 'oKTjivgwRYNDAydG9nLW8sCPMjag', '', '', '朝生暮死', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/eOFawBicfyknXG3l6PZ3V3JVq8g3dblcQrGMbHYdX7ADsOkVib5TPkd7AS8nTbWnAF7ibLHu5zEHT5R0NbMfJ9Dww/132', '0', '9159c7aa4e64685e4eb2418171b8b8113abbcc47', '1570632389', '1568039577', '58.170.234.196');
INSERT INTO `pm_member` VALUES ('10022', 'oZOhw1ZmMLHDRj4qwfBxQ050OOK4', '', '', '苍耳', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q3auHgzwzM5273dSqicggmFmn09egSmqhiaGPupbXDSwnOiaE2D1NtwB5qEnJLOoZicM4K8QeSuEAbtrYyTyZ5icibZw/132', '0', 'aa7a325c6cc4697221c1d27e31aa3cf0212fe38a', '1570966128', '1568373494', '112.97.59.166');

-- ----------------------------
-- Table structure for `pm_member_code`
-- ----------------------------
DROP TABLE IF EXISTS `pm_member_code`;
CREATE TABLE `pm_member_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(30) NOT NULL,
  `regcode` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_member_code
-- ----------------------------
INSERT INTO `pm_member_code` VALUES ('1', '18621185412', '6804', '1', '1567223346');
INSERT INTO `pm_member_code` VALUES ('2', '18621185412', '1755', '0', '1567223737');
INSERT INTO `pm_member_code` VALUES ('3', '18621185412', '4179', '0', '1567332708');

-- ----------------------------
-- Table structure for `pm_message`
-- ----------------------------
DROP TABLE IF EXISTS `pm_message`;
CREATE TABLE `pm_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(300) NOT NULL,
  `read` tinyint(4) NOT NULL,
  `createTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_message
-- ----------------------------

-- ----------------------------
-- Table structure for `pm_model_spec`
-- ----------------------------
DROP TABLE IF EXISTS `pm_model_spec`;
CREATE TABLE `pm_model_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格表',
  `mID` int(11) DEFAULT '0' COMMENT '规格类型',
  `name` varchar(55) DEFAULT NULL COMMENT '规格名称',
  `sort` int(11) DEFAULT '50' COMMENT '排序',
  `values` varchar(500) DEFAULT NULL,
  `search_index` tinyint(1) DEFAULT '1' COMMENT '是否需要检索：1是，0否',
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_model_spec
-- ----------------------------
INSERT INTO `pm_model_spec` VALUES ('1', '1', '颜色', '50', '红色\n蓝色\n白色', '1', '0', '0');
INSERT INTO `pm_model_spec` VALUES ('2', '1', '尺码', '50', '35码\n40码\n42码\n43码', '1', '0', '0');

-- ----------------------------
-- Table structure for `pm_model_spec_item`
-- ----------------------------
DROP TABLE IF EXISTS `pm_model_spec_item`;
CREATE TABLE `pm_model_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规格项id',
  `specID` int(11) DEFAULT NULL COMMENT '规格id',
  `item` varchar(54) DEFAULT NULL COMMENT '规格项',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_model_spec_item
-- ----------------------------
INSERT INTO `pm_model_spec_item` VALUES ('1', '2', '35码');
INSERT INTO `pm_model_spec_item` VALUES ('2', '2', '40码');
INSERT INTO `pm_model_spec_item` VALUES ('3', '2', '42码');
INSERT INTO `pm_model_spec_item` VALUES ('4', '2', '43码');
INSERT INTO `pm_model_spec_item` VALUES ('5', '1', '红色');
INSERT INTO `pm_model_spec_item` VALUES ('6', '1', '蓝色');
INSERT INTO `pm_model_spec_item` VALUES ('7', '1', '白色');

-- ----------------------------
-- Table structure for `pm_node`
-- ----------------------------
DROP TABLE IF EXISTS `pm_node`;
CREATE TABLE `pm_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '节点名称',
  `value` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(100) NOT NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `icon` varchar(20) NOT NULL COMMENT '图标',
  `default` tinyint(4) NOT NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单',
  PRIMARY KEY (`id`),
  KEY `level` (`level`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_node
-- ----------------------------
INSERT INTO `pm_node` VALUES ('1', '主页', '', '1', '', '0', '1', 'layui-icon-home', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('2', '内容管理', '', '1', '', '0', '1', 'layui-icon-app', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('3', '控制台', 'index', '1', '', '1', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('4', '分类管理', 'category', '1', '', '2', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('5', '文章管理', 'article', '1', '', '2', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('6', '设置', '', '1', '', '0', '1', 'layui-icon-set', '0', '100', '1');
INSERT INTO `pm_node` VALUES ('7', '应用设置', 'setting', '1', '', '6', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('8', '节点管理', 'node', '1', '', '6', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('9', '查看信息', 'setting/index', '1', '', '7', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('10', '查看', 'node/index', '1', '', '8', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('11', '发布', 'node/pub', '1', '', '8', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('12', '删除', 'node/del', '1', '', '8', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('13', '控制台', 'index/console', '1', '', '3', '3', '', '1', '50', '0');
INSERT INTO `pm_node` VALUES ('14', '用户', '', '1', '', '0', '1', 'layui-icon-user', '0', '90', '1');
INSERT INTO `pm_node` VALUES ('15', '后台管理员', 'user', '1', '', '14', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('16', '用户组管理', 'role', '1', '', '14', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('17', '单页面管理', 'onepage', '1', '', '2', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('18', '广告管理', 'ad', '1', '', '2', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('19', '友情链接', 'link', '1', '', '2', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('20', '文章列表', 'article/index', '1', '', '5', '3', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('21', '回收站', 'article/trash', '1', '', '5', '3', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('22', '文章列表', 'article/index', '1', '', '5', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('23', '发布', 'article/pub', '1', '', '5', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('24', '删除', 'article/del', '1', '', '5', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('25', '清除回收站', 'article/truedel', '1', '', '5', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('26', '还原', 'article/restore', '1', '', '5', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('27', '移动', 'article/move', '1', '', '5', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('28', '更改状态', 'article/status', '1', '', '5', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('29', '列表', 'category/index', '1', '', '4', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('30', '发布', 'category/pub', '1', '', '4', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('31', '删除', 'category/del', '1', '', '4', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('32', '列表', 'onepage/index', '1', '', '17', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('33', '发布', 'onepage/pub', '1', '', '17', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('34', '删除', 'onepage/del', '1', '', '17', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('35', '列表', 'ad/index', '1', '', '18', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('36', '发布', 'ad/pub', '1', '', '18', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('37', '删除', 'ad/del', '1', '', '18', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('38', '列表', 'link/index', '1', '', '19', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('39', '发布', 'link/pub', '1', '', '19', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('40', '删除', 'link/del', '1', '', '19', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('41', '成员列表', 'user/index', '1', '', '15', '3', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('42', '登录日志', 'user/log', '1', '', '15', '3', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('43', '发布', 'user/pub', '1', '', '15', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('44', '删除', 'user/del', '1', '', '15', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('45', '删除日志', 'user/delog', '1', '', '15', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('46', '列表', 'role/index', '1', '', '16', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('47', '发布', 'role/pub', '1', '', '16', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('48', '删除', 'role/del', '1', '', '16', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('49', '权限设置', 'role/access', '1', '', '16', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('50', '清除缓存', 'index/clearcache', '1', '', '3', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('51', '会员管理', '', '1', '', '0', '1', 'layui-icon-username', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('52', '会员列表', 'member', '1', '', '51', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('53', '列表', 'member/index', '1', '', '52', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('54', '发布', 'member/pub', '1', '', '52', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('84', '会员充值', 'chongzhi', '1', '', '73', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('87', '配货中', 'order/peing', '1', '', '83', '3', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('85', '全部', 'order/index', '1', '', '83', '3', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('86', '待配货', 'order/peihuo', '1', '', '83', '3', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('82', '选项设置', 'option', '1', '', '6', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('65', '商品管理', '', '1', '', '0', '1', 'layui-icon-cart', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('66', '商品列表', 'goods', '1', '', '65', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('83', '订单管理', 'order', '1', '', '73', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('69', '推送列表', 'goodsPush', '1', '', '65', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('70', '商品分类', 'GoodsCate', '1', '', '65', '2', '', '0', '30', '1');
INSERT INTO `pm_node` VALUES ('72', '促销活动', '', '1', '', '0', '1', 'layui-icon-star', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('73', '财务管理', '', '1', '', '0', '1', 'layui-icon-dollar', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('74', '优惠券', 'coupon', '1', '', '72', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('75', '今日抢购', 'flash', '1', '', '72', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('76', '团购', 'tuan', '1', '', '72', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('77', '商品模型', 'goodsModel', '1', '', '65', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('78', '模型列表', 'goodsModel/index', '1', '', '77', '3', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('79', '参数规格', 'goodsModel/spec', '1', '', '77', '3', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('80', '品牌管理', 'brand', '1', '', '65', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('88', '已发货', 'order/fahuo', '1', '', '83', '3', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('89', '交易关闭', 'order/close', '1', '', '83', '3', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('90', '包裹定位', 'baoguo', '1', '', '73', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('91', '基金返利', 'fund', '1', '', '73', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('92', '财务明细', 'finance', '1', '', '73', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('93', '每日结算', 'jiesuan', '1', '', '73', '2', '', '0', '50', '1');

-- ----------------------------
-- Table structure for `pm_onepage`
-- ----------------------------
DROP TABLE IF EXISTS `pm_onepage`;
CREATE TABLE `pm_onepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `description` varchar(500) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `updateTime` int(10) NOT NULL,
  `createTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_onepage
-- ----------------------------
INSERT INTO `pm_onepage` VALUES ('1', '关于我们', '<p>关于我们</p>', '', '', '1567906398', '1567867693');
INSERT INTO `pm_onepage` VALUES ('2', '购物须知', '<p>购物须知</p>', '', '', '1567906409', '1567906409');

-- ----------------------------
-- Table structure for `pm_option_cate`
-- ----------------------------
DROP TABLE IF EXISTS `pm_option_cate`;
CREATE TABLE `pm_option_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(20) NOT NULL,
  `sort` int(11) NOT NULL,
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_option_cate
-- ----------------------------
INSERT INTO `pm_option_cate` VALUES ('1', '商品推送', '', '50', '1563769874', '1563769874');
INSERT INTO `pm_option_cate` VALUES ('2', '产品功效', '', '50', '1563897789', '1563897789');
INSERT INTO `pm_option_cate` VALUES ('3', '商品标签', '', '50', '1563898269', '1563898269');
INSERT INTO `pm_option_cate` VALUES ('4', '品牌分类', '', '50', '1564556522', '1564556522');

-- ----------------------------
-- Table structure for `pm_option_item`
-- ----------------------------
DROP TABLE IF EXISTS `pm_option_item`;
CREATE TABLE `pm_option_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `picname` varchar(200) NOT NULL,
  `value` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL,
  `pinyin` varchar(4) NOT NULL,
  `ext` varchar(100) NOT NULL,
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_option_item
-- ----------------------------
INSERT INTO `pm_option_item` VALUES ('1', '1', '每日精品', '', '3', '50', 'M', '大家都在买', '1563769911', '1564155971');
INSERT INTO `pm_option_item` VALUES ('2', '1', '国内现货', '', '2', '50', 'G', '大家都在囤', '1563770010', '1564155988');
INSERT INTO `pm_option_item` VALUES ('3', '1', '特惠推荐', '', '1', '50', 'T', '大家都在买', '1563770054', '1564155992');
INSERT INTO `pm_option_item` VALUES ('4', '2', '美白', '', '', '50', 'M', '', '1563898010', '1563898010');
INSERT INTO `pm_option_item` VALUES ('5', '2', '降压', '', '', '50', 'J', '', '1563898053', '1563898053');
INSERT INTO `pm_option_item` VALUES ('6', '2', '改善贫血', '', '', '50', 'G', '', '1563898075', '1563898075');
INSERT INTO `pm_option_item` VALUES ('7', '4', '美容彩妆', '', '', '50', 'M', '', '1564556543', '1564556543');
INSERT INTO `pm_option_item` VALUES ('8', '4', '个人洗护', '', '', '50', 'G', '', '1564556560', '1564556560');
INSERT INTO `pm_option_item` VALUES ('9', '4', '宝宝奶粉', '', '', '50', 'B', '', '1564992927', '1564992927');
INSERT INTO `pm_option_item` VALUES ('10', '4', '婴儿必备', '', '', '50', 'Y', '', '1564992968', '1564992968');
INSERT INTO `pm_option_item` VALUES ('11', '4', '孕妈必备', '', '', '50', 'Y', '', '1564992979', '1564992979');
INSERT INTO `pm_option_item` VALUES ('12', '4', '天然保健', '', '', '50', 'T', '', '1564992987', '1564992987');
INSERT INTO `pm_option_item` VALUES ('13', '4', '网红药品', '', '', '50', 'W', '', '1564993009', '1564993009');
INSERT INTO `pm_option_item` VALUES ('14', '4', '纯净蜂蜜', '', '', '50', 'C', '', '1564993023', '1564993023');
INSERT INTO `pm_option_item` VALUES ('15', '4', '围巾&Ugg', '', '', '50', 'W', '', '1564993055', '1564993055');
INSERT INTO `pm_option_item` VALUES ('16', '4', '成人奶粉', '', '', '50', 'C', '', '1564993378', '1564993378');
INSERT INTO `pm_option_item` VALUES ('17', '4', '美味零食', '', '', '50', 'M', '', '1564993595', '1564993595');
INSERT INTO `pm_option_item` VALUES ('18', '4', '居家日用', '', '', '50', 'J', '', '1564993603', '1564993603');

-- ----------------------------
-- Table structure for `pm_order`
-- ----------------------------
DROP TABLE IF EXISTS `pm_order`;
CREATE TABLE `pm_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) NOT NULL,
  `couponID` int(11) NOT NULL COMMENT '优惠券ID',
  `order_no` varchar(50) NOT NULL,
  `total` decimal(8,2) NOT NULL COMMENT '订单总金额(商品金额+快递费-优惠金额)',
  `point` int(11) NOT NULL,
  `fund` decimal(8,2) NOT NULL,
  `goodsMoney` decimal(8,2) NOT NULL COMMENT '商品总金额',
  `isCut` tinyint(4) NOT NULL COMMENT '0不予许砍价 1可以砍价',
  `maxGoodsMoney` decimal(8,2) NOT NULL,
  `minGoodsMoney` decimal(8,2) NOT NULL COMMENT '商品最小金额',
  `discount` varchar(10) DEFAULT NULL COMMENT '优惠金额',
  `money` decimal(8,2) NOT NULL COMMENT '在线支付金额',
  `wallet` decimal(8,2) NOT NULL COMMENT '余额支付金额',
  `inprice` decimal(8,2) NOT NULL COMMENT '总成本',
  `payment` decimal(8,2) NOT NULL COMMENT '运费总金额',
  `addressID` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `sn` varchar(30) DEFAULT NULL,
  `front` varchar(200) DEFAULT NULL,
  `back` varchar(200) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `addressDetail` varchar(100) DEFAULT NULL,
  `sender` varchar(20) DEFAULT NULL,
  `senderTel` varchar(30) DEFAULT NULL,
  `intr` varchar(300) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  `print` tinyint(4) NOT NULL COMMENT '0未打印 1已打印',
  `payType` tinyint(11) NOT NULL COMMENT '1omi支付 2余额支付',
  `payStatus` tinyint(11) NOT NULL COMMENT '0未支付 1已支付',
  `status` tinyint(4) NOT NULL COMMENT '0待支付 1待配货 2配货中 3已发货 99交易关闭',
  `hide` tinyint(4) NOT NULL,
  `cancel` tinyint(4) NOT NULL COMMENT '取消订单',
  `createTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL COMMENT '砍价结束/团购结束时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_order
-- ----------------------------
INSERT INTO `pm_order` VALUES ('2', '10009', '0', '19090216431998', '5.00', '10', '5.00', '5.00', '0', '0.00', '5.00', '0', '5.00', '0.00', '5.00', '0.00', '3', '测试', '13203801035', '', '', '', '北京市', '北京市', '东城区', '测试', '测试', '0410867533', '', null, '0', '1', '1', '1', '0', '0', '1567413799', '1567413799');
INSERT INTO `pm_order` VALUES ('7', '10012', '0', '19090411462956', '29.00', '10', '0.00', '29.00', '1', '29.00', '14.00', '0', '0.00', '0.00', '25.50', '0.00', '9', '支持', '18213141421', '', '', '', '北京市', '北京市', '东城区', '地址', '张超', '10086', '', null, '0', '0', '0', '0', '0', '0', '1567568789', '1568892241');
INSERT INTO `pm_order` VALUES ('32', '10015', '0', '19090712011568', '5.00', '10', '0.00', '5.00', '1', '5.00', '1.00', '0', '0.00', '0.00', '5.00', '0.00', '14', '张超', '10086', '110', '/uploads/20190906/71a5a3721a79937c92f62d7c2b7fd595.jpeg', '/uploads/20190906/0ae83396dca96e23da3814cc5c745cc1.jpeg', '北京市', '北京城区', '东城区', '地址', '纪家庙', '580', null, null, '0', '0', '0', '0', '0', '0', '1567828875', '1568892241');
INSERT INTO `pm_order` VALUES ('30', '10009', '0', '19090711590054', '5.00', '10', '5.00', '5.00', '0', '0.00', '5.00', '0', '4.75', '0.25', '5.00', '0.00', '3', '测试', '13203801035', '', '', '', '北京市', '北京市', '东城区', '测试', '测试', '0410867533', '', null, '0', '1', '0', '0', '0', '0', '1567828740', '1567828740');
INSERT INTO `pm_order` VALUES ('11', '10014', '0', '19090415520848', '29.00', '10', '0.00', '29.00', '1', '29.00', '14.00', '0', '0.00', '0.00', '25.50', '0.00', '12', '张超', '10086', '10086', 'http://www.aumaria.com/uploads/20190904/42ebff7f93d3d13df81c21692030ab2c.jpeg', 'http://www.aumaria.com/uploads/20190904/d2f79a0301d7f342b015fcbcda9d5274.jpeg', '北京市', '北京城区', '东城区', '详细地址', '张超', '188', null, null, '0', '0', '0', '0', '0', '0', '1567583528', '1568892241');
INSERT INTO `pm_order` VALUES ('19', '10014', '0', '19090514411826', '29.00', '10', '0.00', '29.00', '1', '29.00', '14.00', '0', '0.00', '0.00', '25.50', '0.00', '12', '张超', '10086', '10086', 'http://www.aumaria.com/uploads/20190905/e2029c88271b52ab281ebaed1395bf57.jpeg', 'http://www.aumaria.com/uploads/20190904/d2f79a0301d7f342b015fcbcda9d5274.jpeg', '北京市', '北京城区', '东城区', '详细地址', '张超', '188', null, null, '0', '0', '0', '0', '0', '0', '1567665678', '1568892241');
INSERT INTO `pm_order` VALUES ('46', '10014', '0', '19091811084349', '3.00', '10', '3.00', '3.00', '0', '3.00', '3.00', '0', '3.00', '0.00', '5.00', '0.00', '15', '收件人', '10099999999', '100', '/uploads/20190906/540dd7faadf7fe17d9b2057fe16452bb.jpeg', '/uploads/20190906/cd0733b04a44935ed93e474f0e685cb2.jpeg', '北京市', '北京城区', '东城区', '地址是', '寄件人', '8888888', null, null, '0', '0', '0', '0', '0', '0', '1568776123', '1568776123');
INSERT INTO `pm_order` VALUES ('45', '10014', '0', '19091810084182', '30.20', '20', '30.20', '26.00', '0', '30.20', '26.00', '0', '30.20', '0.00', '24.00', '4.20', '15', '收件人', '10099999999', '100', '/uploads/20190906/540dd7faadf7fe17d9b2057fe16452bb.jpeg', '/uploads/20190906/cd0733b04a44935ed93e474f0e685cb2.jpeg', '北京市', '北京城区', '东城区', '地址是', '寄件人', '8888888', '', null, '0', '0', '0', '0', '0', '0', '1568772521', '1568772521');
INSERT INTO `pm_order` VALUES ('28', '10014', '0', '19090621324473', '1.00', '10', '0.00', '5.00', '1', '5.00', '1.00', '0', '0.00', '0.00', '5.00', '0.00', '15', '收件人', '10099999999', '100', '/uploads/20190906/540dd7faadf7fe17d9b2057fe16452bb.jpeg', '/uploads/20190906/cd0733b04a44935ed93e474f0e685cb2.jpeg', '北京市', '北京城区', '东城区', '地址是', '寄件人', '8888888', null, null, '0', '0', '0', '0', '0', '0', '1567776764', '1568892241');
INSERT INTO `pm_order` VALUES ('43', '10009', '0', '19091217481198', '24.70', '10', '24.70', '19.90', '0', '24.70', '19.90', '0', '24.70', '0.00', '19.90', '4.80', '3', '测试', '13203801035', '', '', '', '北京市', '北京市', '东城区', '测试', '测试', '0410867533', '', null, '0', '1', '1', '1', '0', '0', '1568281691', '1568281691');
INSERT INTO `pm_order` VALUES ('38', '10014', '0', '19091115190576', '5.00', '10', '0.00', '5.00', '1', '5.00', '1.00', '0', '0.00', '0.00', '5.00', '0.00', '15', '收件人', '10099999999', '100', '/uploads/20190906/540dd7faadf7fe17d9b2057fe16452bb.jpeg', '/uploads/20190906/cd0733b04a44935ed93e474f0e685cb2.jpeg', '北京市', '北京城区', '东城区', '地址是', '寄件人', '8888888', '备注下问题', null, '0', '0', '0', '0', '0', '0', '1568186345', '1568892241');
INSERT INTO `pm_order` VALUES ('22', '10012', '0', '19090516583525', '29.00', '10', '0.00', '29.00', '1', '29.00', '14.00', '0', '0.00', '0.00', '25.50', '0.00', '9', '支持', '18213141421', '', '', '', '北京市', '北京市', '东城区', '地址', '张超', '10086', '', null, '0', '0', '0', '0', '0', '0', '1567673915', '1568892241');
INSERT INTO `pm_order` VALUES ('33', '10008', '0', '19090714233728', '4.46', '10', '0.00', '5.00', '1', '5.00', '1.00', '0', '0.00', '0.00', '5.00', '0.00', '2', '张三', '13500000000', '', '', '', '浙江省', '杭州市', '江干区', '默默地址', '李四', '18533333333', '', null, '0', '0', '0', '0', '0', '0', '1567837417', '1568892241');
INSERT INTO `pm_order` VALUES ('47', '10012', '0', '19091811255581', '4.00', '10', '4.00', '4.00', '0', '4.00', '4.00', '0', '4.00', '0.00', '5.00', '0.00', '9', '支持', '18213141421', '', '', '', '北京市', '北京市', '东城区', '地址', '张超', '10086', '', null, '0', '1', '0', '0', '0', '0', '1568777155', '1568777155');
INSERT INTO `pm_order` VALUES ('42', '10015', '0', '19091216263971', '5.00', '10', '0.00', '5.00', '1', '5.00', '1.00', '0', '0.00', '0.00', '5.00', '0.00', '14', '张超', '10086', '110', '/uploads/20190906/71a5a3721a79937c92f62d7c2b7fd595.jpeg', '/uploads/20190906/0ae83396dca96e23da3814cc5c745cc1.jpeg', '北京市', '北京城区', '东城区', '地址', '纪家庙', '580', null, null, '0', '0', '0', '0', '0', '0', '1568276799', '1568892241');

-- ----------------------------
-- Table structure for `pm_order_baoguo`
-- ----------------------------
DROP TABLE IF EXISTS `pm_order_baoguo`;
CREATE TABLE `pm_order_baoguo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) NOT NULL COMMENT '用户订单号',
  `memberID` int(11) NOT NULL,
  `order_no` varchar(50) NOT NULL COMMENT '商家订单号',
  `type` tinyint(4) NOT NULL COMMENT '1，2奶粉类 7鞋子，剩余其他类',
  `payment` decimal(8,2) NOT NULL COMMENT '物流费',
  `wuliuInprice` decimal(8,2) NOT NULL,
  `weight` decimal(8,2) NOT NULL COMMENT '总价格',
  `kuaidi` varchar(50) NOT NULL COMMENT '物流公司',
  `kdNo` varchar(500) NOT NULL COMMENT '物流号',
  `eimg` varchar(1000) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(20) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `addressDetail` varchar(200) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `senderTel` varchar(50) NOT NULL,
  `status` tinyint(1) unsigned zerofill NOT NULL COMMENT '0未支付 1已支付',
  `snStatus` tinyint(4) NOT NULL COMMENT '身份证0未上传，1已上传',
  `flag` tinyint(4) NOT NULL COMMENT '0未导出 1已导出',
  `print` tinyint(4) NOT NULL DEFAULT '0',
  `cancel` tinyint(4) NOT NULL COMMENT '取消订单',
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_order_baoguo
-- ----------------------------
INSERT INTO `pm_order_baoguo` VALUES ('2', '2', '10009', '19090216431998', '1', '0.00', '4.55', '1.30', '澳邮', '', '', '', '测试', '13203801035', '北京市', '北京市', '东城区', '测试', '测试', '0410867533', '1', '0', '0', '0', '0', '1567413799', '0');
INSERT INTO `pm_order_baoguo` VALUES ('7', '7', '10012', '19090411462956', '13', '0.00', '0.00', '1.30', '面单专邮($0/kg)', '', '', '', '支持', '18213141421', '北京市', '北京市', '东城区', '地址', '张超', '10086', '0', '0', '0', '0', '0', '1567568789', '0');
INSERT INTO `pm_order_baoguo` VALUES ('11', '11', '10014', '19090415520848', '13', '0.00', '0.00', '1.30', '面单专邮($0/kg)', '', '', '', '张超', '10086', '北京市', '北京城区', '东城区', '详细地址', '张超', '188', '0', '0', '0', '0', '0', '1567583528', '0');
INSERT INTO `pm_order_baoguo` VALUES ('22', '19', '10014', '19090514411826', '13', '0.00', '0.00', '1.30', '面单专邮($0/kg)', '', '', '', '张超', '10086', '北京市', '北京城区', '东城区', '详细地址', '张超', '188', '0', '0', '0', '0', '0', '1567665678', '0');
INSERT INTO `pm_order_baoguo` VALUES ('25', '22', '10012', '19090516583525', '13', '0.00', '0.00', '1.30', '面单专邮($0/kg)', '', '', '', '支持', '18213141421', '北京市', '北京市', '东城区', '地址', '张超', '10086', '0', '0', '0', '0', '0', '1567673915', '0');
INSERT INTO `pm_order_baoguo` VALUES ('32', '28', '10014', '19090621324473', '1', '0.00', '4.55', '1.30', '澳邮', '', '', '', '收件人', '10099999999', '北京市', '北京城区', '东城区', '地址是', '寄件人', '8888888', '0', '0', '0', '0', '0', '1567776764', '0');
INSERT INTO `pm_order_baoguo` VALUES ('34', '30', '10009', '19090711590054', '1', '0.00', '4.55', '1.30', '澳邮', '', '', '', '测试', '13203801035', '北京市', '北京市', '东城区', '测试', '测试', '0410867533', '0', '0', '0', '0', '0', '1567828740', '0');
INSERT INTO `pm_order_baoguo` VALUES ('36', '32', '10015', '19090712011568', '1', '0.00', '4.55', '1.30', '澳邮', '', '', '', '张超', '10086', '北京市', '北京城区', '东城区', '地址', '纪家庙', '580', '0', '0', '0', '0', '0', '1567828875', '0');
INSERT INTO `pm_order_baoguo` VALUES ('37', '33', '10008', '19090714233728', '1', '0.00', '4.55', '1.30', '澳邮', '', '', '', '张三', '13500000000', '浙江省', '杭州市', '江干区', '默默地址', '李四', '18533333333', '0', '0', '0', '0', '0', '1567837417', '0');
INSERT INTO `pm_order_baoguo` VALUES ('43', '38', '10014', '19091115190576', '1', '0.00', '4.55', '1.30', '澳邮', '', '', '', '收件人', '10099999999', '北京市', '北京城区', '东城区', '地址是', '寄件人', '8888888', '0', '0', '0', '0', '0', '1568186345', '0');
INSERT INTO `pm_order_baoguo` VALUES ('47', '42', '10015', '19091216263971', '1', '0.00', '4.55', '1.30', '澳邮', '', '', '', '张超', '10086', '北京市', '北京城区', '东城区', '地址', '纪家庙', '580', '0', '0', '0', '0', '0', '1568276799', '0');
INSERT INTO `pm_order_baoguo` VALUES ('48', '43', '10009', '19091217481198', '4', '4.80', '1.12', '0.20', '中环($6/kg)', '', '', '', '测试', '13203801035', '北京市', '北京市', '东城区', '测试', '测试', '0410867533', '1', '0', '0', '0', '0', '1568281691', '0');
INSERT INTO `pm_order_baoguo` VALUES ('50', '45', '10014', '19091810084182', '4', '4.20', '1.68', '0.30', '中环', '', '', '', '收件人', '10099999999', '北京市', '北京城区', '东城区', '地址是', '寄件人', '8888888', '0', '0', '0', '0', '0', '1568772521', '0');
INSERT INTO `pm_order_baoguo` VALUES ('51', '46', '10014', '19091811084349', '1', '0.00', '4.55', '1.30', '澳邮', '', '', '', '收件人', '10099999999', '北京市', '北京城区', '东城区', '地址是', '寄件人', '8888888', '0', '0', '0', '0', '0', '1568776123', '0');
INSERT INTO `pm_order_baoguo` VALUES ('52', '47', '10012', '19091811255581', '1', '0.00', '4.55', '1.30', '澳邮', '', '', '', '支持', '18213141421', '北京市', '北京市', '东城区', '地址', '张超', '10086', '0', '0', '0', '0', '0', '1568777155', '0');

-- ----------------------------
-- Table structure for `pm_order_cart`
-- ----------------------------
DROP TABLE IF EXISTS `pm_order_cart`;
CREATE TABLE `pm_order_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `goodsID` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `specID` int(11) NOT NULL COMMENT '商品规格',
  `name` varchar(200) NOT NULL,
  `picname` varchar(200) NOT NULL,
  `spec` varchar(200) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `number` int(11) NOT NULL,
  `trueNumber` int(11) NOT NULL COMMENT '真实商品数量比如2个3件的套餐就显示6',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_order_cart
-- ----------------------------
INSERT INTO `pm_order_cart` VALUES ('2', '10009', '2', '103', '0', '0', 'A2铂金 一段', '/uploads/images/20190901/4b1870d291a7bef525603a050db40de4.jpg', '', '5.00', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('52', '10014', '38', '65', '0', '0', 'Ensure 大安素', '/uploads/images/20190901/d3f77fff4f4c44e8876e5c871b90ec81.jpeg', '', '5.00', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('7', '10012', '7', '856', '0', '0', 'Ensure大安素', '', '', '29.00', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('62', '10012', '47', '133', '0', '0', '雀巢半水解奶粉 四段', '/uploads/images/20190901/6acca0d8083d305487d0564b878bd1dc.jpeg', '', '4.00', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('11', '10014', '11', '856', '0', '0', 'Ensure大安素', '', '', '29.00', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('26', '10014', '19', '856', '0', '0', 'Ensure大安素', '', '', '29.00', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('56', '10015', '42', '65', '0', '0', 'Ensure 大安素', '/uploads/images/20190901/d3f77fff4f4c44e8876e5c871b90ec81.jpeg', '', '5.00', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('45', '10008', '33', '65', '0', '0', 'Ensure 大安素', '/uploads/images/20190901/d3f77fff4f4c44e8876e5c871b90ec81.jpeg', '', '5.00', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('44', '10015', '32', '65', '0', '0', 'Ensure 大安素', '/uploads/images/20190901/d3f77fff4f4c44e8876e5c871b90ec81.jpeg', '', '5.00', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('57', '10009', '43', '864', '0', '0', 'Bio Island 孕妇DHA 60粒', '/uploads/images/20190906/a5fa643e38160e11053673a410057b6d.JPG', '', '19.90', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('42', '10009', '30', '103', '0', '0', 'A2铂金 一段', '/uploads/images/20190901/4b1870d291a7bef525603a050db40de4.jpg', '', '5.00', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('59', '10014', '45', '176', '0', '0', 'Proctosedyl Ointment痔疮膏30g', '', '', '14.50', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('60', '10014', '45', '177', '0', '0', 'Naprogesic拜耳痛经神器24粒', '', '', '11.50', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('40', '10014', '28', '65', '0', '0', 'Ensure 大安素', '/uploads/images/20190901/d3f77fff4f4c44e8876e5c871b90ec81.jpeg', '', '5.00', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('29', '10012', '22', '856', '0', '0', 'Ensure大安素', '', '', '29.00', '1', '1');
INSERT INTO `pm_order_cart` VALUES ('61', '10014', '46', '124', '0', '0', 'S26金装 二段', '/uploads/images/20190901/9ab03fafda718e3643463ed2a32377fb.png', '', '3.00', '1', '1');

-- ----------------------------
-- Table structure for `pm_order_cut`
-- ----------------------------
DROP TABLE IF EXISTS `pm_order_cut`;
CREATE TABLE `pm_order_cut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `nickname` varchar(200) DEFAULT NULL,
  `headimg` varchar(200) DEFAULT NULL,
  `money` decimal(4,2) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_order_cut
-- ----------------------------
INSERT INTO `pm_order_cut` VALUES ('1', '28', 'oZOhw1QMNn1tpeMKAOchbVOMy_ek', '東', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epIE0Triahcy3sibOuQFGTJFc2qu5FS4HiaXN17RUQM5qKZjibTS7I3MicvA9pIxfct56cM5e9rpsfKXBA/132', '1.10', '1567828456');
INSERT INTO `pm_order_cut` VALUES ('2', '28', 'oZOhw1WPz4F1hFrUw0MRFNEJk6P8', '月明', 'http://thirdwx.qlogo.cn/mmopen/vi_32/aS6CsxCTmb6olg4VqmLZVPl4UaoSicC2KkHEWDkzflM9YESQkRwzsDd8TtgFgIt3I2YR8IiaLCdIicn91v5FS0oZQ/132', '0.70', '1567828741');
INSERT INTO `pm_order_cut` VALUES ('3', '28', 'oZOhw1WYrM3fkSUX_KrNI6XCAaUA', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erdO85GBCZcf0ImfqZaR9d7TpVnm3cbcpNpyxZHBVTXT7WxUSsJt0uwS55CLUXFYoo1tLz7LBg3tA/132', '1.03', '1567829556');
INSERT INTO `pm_order_cut` VALUES ('4', '28', 'oZOhw1eVOAZkMffrXde3DRCBXG-0', '熊枫', 'http://thirdwx.qlogo.cn/mmopen/vi_32/6ahKPj9vjTDBCld3XCWibUo7XUhR3TQfTOoELWsIjOU3zYC2fNO1XQAWicyRkvV6Xj5LRRYcEnqLcUNp2FrjGPIQ/132', '1.17', '1567830870');
INSERT INTO `pm_order_cut` VALUES ('5', '33', 'oZOhw1WYrM3fkSUX_KrNI6XCAaUA', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erdO85GBCZcf0ImfqZaR9d7TpVnm3cbcpNpyxZHBVTXT7WxUSsJt0uwS55CLUXFYoo1tLz7LBg3tA/132', '0.54', '1567839168');

-- ----------------------------
-- Table structure for `pm_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `pm_order_detail`;
CREATE TABLE `pm_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `baoguoID` int(50) NOT NULL,
  `goodsID` int(11) NOT NULL,
  `specID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `short` varchar(200) NOT NULL,
  `number` int(11) NOT NULL COMMENT '单品的数量',
  `price` decimal(8,2) NOT NULL,
  `cancel` tinyint(4) NOT NULL COMMENT '取消订单',
  `createTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_order_detail
-- ----------------------------
INSERT INTO `pm_order_detail` VALUES ('2', '2', '10009', '2', '103', '0', 'A2铂金 一段', 'A1', '1', '5.00', '0', '1567413799');
INSERT INTO `pm_order_detail` VALUES ('7', '7', '10012', '7', '856', '0', 'Ensure大安素', 'ensure奶粉', '1', '29.00', '0', '1567568789');
INSERT INTO `pm_order_detail` VALUES ('11', '11', '10014', '11', '856', '0', 'Ensure大安素', 'ensure奶粉', '1', '29.00', '0', '1567583528');
INSERT INTO `pm_order_detail` VALUES ('27', '19', '10014', '22', '856', '0', 'Ensure大安素', 'ensure奶粉', '1', '29.00', '0', '1567665678');
INSERT INTO `pm_order_detail` VALUES ('30', '22', '10012', '25', '856', '0', 'Ensure大安素', 'ensure奶粉', '1', '29.00', '0', '1567673915');
INSERT INTO `pm_order_detail` VALUES ('41', '28', '10014', '32', '65', '0', 'Ensure 大安素', 'Ensure大安素', '1', '5.00', '0', '1567776764');
INSERT INTO `pm_order_detail` VALUES ('43', '30', '10009', '34', '103', '0', 'A2铂金 一段', 'A1', '1', '5.00', '0', '1567828740');
INSERT INTO `pm_order_detail` VALUES ('45', '32', '10015', '36', '65', '0', 'Ensure 大安素', 'Ensure大安素', '1', '5.00', '0', '1567828875');
INSERT INTO `pm_order_detail` VALUES ('46', '33', '10008', '37', '65', '0', 'Ensure 大安素', 'Ensure大安素', '1', '5.00', '0', '1567837417');
INSERT INTO `pm_order_detail` VALUES ('54', '38', '10014', '43', '65', '0', 'Ensure 大安素', 'Ensure大安素', '1', '5.00', '0', '1568186345');
INSERT INTO `pm_order_detail` VALUES ('58', '42', '10015', '47', '65', '0', 'Ensure 大安素', 'Ensure大安素', '1', '5.00', '0', '1568276799');
INSERT INTO `pm_order_detail` VALUES ('59', '43', '10009', '48', '864', '0', 'Bio Island 孕妇DHA 60粒', 'Bio孕妇DHA', '1', '19.90', '0', '1568281691');
INSERT INTO `pm_order_detail` VALUES ('61', '45', '10014', '50', '176', '0', 'Proctosedyl Ointment痔疮膏30g', '痔疮膏30g', '1', '14.50', '0', '1568772521');
INSERT INTO `pm_order_detail` VALUES ('62', '45', '10014', '50', '177', '0', 'Naprogesic拜耳痛经神器24粒', '痛经神器24粒', '1', '11.50', '0', '1568772521');
INSERT INTO `pm_order_detail` VALUES ('63', '46', '10014', '51', '124', '0', 'S26金装 二段', 'S26金装-2', '1', '5.00', '0', '1568776123');
INSERT INTO `pm_order_detail` VALUES ('64', '47', '10012', '52', '133', '0', '雀巢半水解奶粉 四段', '雀巢半水解4段', '1', '5.00', '0', '1568777155');

-- ----------------------------
-- Table structure for `pm_role`
-- ----------------------------
DROP TABLE IF EXISTS `pm_role`;
CREATE TABLE `pm_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_role
-- ----------------------------
INSERT INTO `pm_role` VALUES ('1', '超级管理员', null, '1', '拥有所有权限');
INSERT INTO `pm_role` VALUES ('2', '查看报告组', null, '1', '查看报告组');

-- ----------------------------
-- Table structure for `pm_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `pm_role_user`;
CREATE TABLE `pm_role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`role_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for `pm_sender`
-- ----------------------------
DROP TABLE IF EXISTS `pm_sender`;
CREATE TABLE `pm_sender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_sender
-- ----------------------------
INSERT INTO `pm_sender` VALUES ('1', '10008', '李四', '18533333333');
INSERT INTO `pm_sender` VALUES ('10', '10011', '超', '10086');
INSERT INTO `pm_sender` VALUES ('3', '10012', '张超', '10086');
INSERT INTO `pm_sender` VALUES ('4', '10009', '测试', '0410867533');
INSERT INTO `pm_sender` VALUES ('13', '10014', '张超', '188');
INSERT INTO `pm_sender` VALUES ('12', '10011', '这个就是异地咯哦', '18755655446');
INSERT INTO `pm_sender` VALUES ('14', '10015', '纪家庙', '580');
INSERT INTO `pm_sender` VALUES ('15', '10014', '寄件人', '8888888');
INSERT INTO `pm_sender` VALUES ('16', '10020', '测试卷四', '689765899');

-- ----------------------------
-- Table structure for `pm_server`
-- ----------------------------
DROP TABLE IF EXISTS `pm_server`;
CREATE TABLE `pm_server` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `short` varchar(20) NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `sort` int(3) unsigned NOT NULL DEFAULT '50',
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_server
-- ----------------------------
INSERT INTO `pm_server` VALUES ('1', '奶粉默认包泡泡，无需备注，免费！', '', '0.00', '50', '1540991368', '1544578530');
INSERT INTO `pm_server` VALUES ('2', '+ 奶粉标记（0.3刀/个），送打包照片！', '签名', '0.30', '50', '1540991387', '1556629370');
INSERT INTO `pm_server` VALUES ('5', '+ 锡纸 按件计价', '锡纸', '0.25', '50', '1540991449', '1556264805');
INSERT INTO `pm_server` VALUES ('6', '+ 奶粉爆罐/袋保险（每罐/袋3刀，限代发）', '保险', '3.00', '50', '1540991468', '1556264798');
INSERT INTO `pm_server` VALUES ('17', '+铁元破损保险（每瓶3刀，限代发）', '保险', '3.00', '50', '1553674823', '1556264899');

-- ----------------------------
-- Table structure for `pm_sign`
-- ----------------------------
DROP TABLE IF EXISTS `pm_sign`;
CREATE TABLE `pm_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `signDate` varchar(20) NOT NULL,
  `createTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_sign
-- ----------------------------
INSERT INTO `pm_sign` VALUES ('1', '2', '10', '2019-07-23', '1563892114');
INSERT INTO `pm_sign` VALUES ('2', '2', '10', '2019-08-06', '1565097687');
INSERT INTO `pm_sign` VALUES ('3', '10003', '10', '2019-08-23', '1566550045');
INSERT INTO `pm_sign` VALUES ('4', '10001', '10', '2019-08-25', '1566747027');
INSERT INTO `pm_sign` VALUES ('5', '10008', '10', '2019-08-28', '1566957267');
INSERT INTO `pm_sign` VALUES ('6', '10009', '10', '2019-08-28', '1566957408');
INSERT INTO `pm_sign` VALUES ('7', '10010', '10', '2019-08-28', '1566957852');
INSERT INTO `pm_sign` VALUES ('8', '10008', '10', '2019-08-30', '1567128150');
INSERT INTO `pm_sign` VALUES ('9', '10012', '10', '2019-09-01', '1567308921');
INSERT INTO `pm_sign` VALUES ('10', '10011', '10', '2019-09-01', '1567334035');
INSERT INTO `pm_sign` VALUES ('11', '10011', '10', '2019-09-02', '1567415884');
INSERT INTO `pm_sign` VALUES ('12', '10015', '10', '2019-09-06', '1567734216');
INSERT INTO `pm_sign` VALUES ('13', '10009', '10', '2019-09-07', '1567826942');
INSERT INTO `pm_sign` VALUES ('14', '10020', '10', '2019-09-07', '1567832858');
INSERT INTO `pm_sign` VALUES ('15', '10020', '10', '2019-09-09', '1567987517');
INSERT INTO `pm_sign` VALUES ('16', '10008', '10', '2019-09-09', '1568032664');
INSERT INTO `pm_sign` VALUES ('17', '10014', '10', '2019-09-09', '1568032949');
INSERT INTO `pm_sign` VALUES ('18', '10015', '10', '2019-09-09', '1568034325');
INSERT INTO `pm_sign` VALUES ('19', '10021', '10', '2019-09-09', '1568039590');
INSERT INTO `pm_sign` VALUES ('20', '10020', '10', '2019-09-10', '1568115096');
INSERT INTO `pm_sign` VALUES ('21', '10014', '10', '2019-09-11', '1568169468');
INSERT INTO `pm_sign` VALUES ('22', '10015', '10', '2019-09-12', '1568271853');
INSERT INTO `pm_sign` VALUES ('23', '10020', '10', '2019-09-12', '1568288505');
INSERT INTO `pm_sign` VALUES ('24', '10020', '10', '2019-09-13', '1568333949');
INSERT INTO `pm_sign` VALUES ('25', '10022', '10', '2019-09-13', '1568373547');
INSERT INTO `pm_sign` VALUES ('26', '10020', '10', '2019-09-14', '1568461017');
INSERT INTO `pm_sign` VALUES ('27', '10012', '10', '2019-09-18', '1568777540');
INSERT INTO `pm_sign` VALUES ('28', '10014', '10', '2019-09-18', '1568779308');
INSERT INTO `pm_sign` VALUES ('29', '10015', '10', '2019-09-18', '1568797201');
INSERT INTO `pm_sign` VALUES ('30', '10020', '10', '2019-09-19', '1568853027');

-- ----------------------------
-- Table structure for `pm_user`
-- ----------------------------
DROP TABLE IF EXISTS `pm_user`;
CREATE TABLE `pm_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `createTime` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_out` int(11) DEFAULT NULL,
  `group` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_user
-- ----------------------------
INSERT INTO `pm_user` VALUES ('1', 'admin', '64def183c8846acf3f9e13799e627a17', '管理员', '', '1400117147', '1490074945', '567c4928987b5d4669b90e9ceb32a98c02fe21a8', '1555749200', '1', '1');

-- ----------------------------
-- Table structure for `pm_user_log`
-- ----------------------------
DROP TABLE IF EXISTS `pm_user_log`;
CREATE TABLE `pm_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `loginTime` int(10) NOT NULL,
  `loginIP` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_user_log
-- ----------------------------

-- ----------------------------
-- Table structure for `pm_version`
-- ----------------------------
DROP TABLE IF EXISTS `pm_version`;
CREATE TABLE `pm_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '1安卓2ios',
  `version` varchar(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `desc` text,
  `url` varchar(300) DEFAULT NULL,
  `createTime` int(11) DEFAULT NULL,
  `updateTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pm_version
-- ----------------------------
INSERT INTO `pm_version` VALUES ('2', '0', '1.01', '0', '123123', '3123123123', '1567305075', '1567305181');

-- ----------------------------
-- Table structure for `pm_wuliu`
-- ----------------------------
DROP TABLE IF EXISTS `pm_wuliu`;
CREATE TABLE `pm_wuliu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '品牌表',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '品牌名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌地址',
  `price` decimal(8,2) NOT NULL,
  `otherPrice` decimal(8,2) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `sort` int(3) unsigned NOT NULL DEFAULT '50' COMMENT '排序',
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_wuliu
-- ----------------------------
INSERT INTO `pm_wuliu` VALUES ('3', '澳邮', 'www.baidu.com', '6.00', '2.00', '3.00', '50', '1541251318', '1556197553');
