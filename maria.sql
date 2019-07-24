/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : maria

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-07-24 21:37:51
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_ad
-- ----------------------------
INSERT INTO `pm_ad` VALUES ('1', '1', '0-1-', '11', '/uploads/images/20190722/c22a332d54e89b386bb5e3101ddfe730.png', '111', '50', '1563768353', '1563768353');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_address
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_brand
-- ----------------------------
INSERT INTO `pm_brand` VALUES ('10', '0', '可瑞康', '/uploads/images/20190220/477de32020af429bfe6919daf392ff60.jpg', '', '', '4', '0', '0', 'K', '1538452189', '1550636521');
INSERT INTO `pm_brand` VALUES ('3', '0', '佳思敏', '/uploads/images/20181026/2eab1ca102d0dc1a7b827aeade63482f.jpg', '', '', '7', '1', '0', 'J', '1534769273', '1550310320');
INSERT INTO `pm_brand` VALUES ('4', '0', 'A2', '/uploads/images/20181024/703740029fcee5ee52d2e7602b3b0843.jpg', '', '', '1', '0', '0', 'A', '1534912117', '1550632574');
INSERT INTO `pm_brand` VALUES ('5', '0', '爱他美', '/uploads/images/20181024/937348f760f65d59129c8c4eb615386a.jpg', '', '', '2', '0', '0', 'A', '1534944898', '1550632602');
INSERT INTO `pm_brand` VALUES ('8', '0', 'Swisse', '/uploads/images/20190220/61ba27923f83e298aeba0d25b1dab350.jpg', '', '', '1', '1', '1', 'S', '1536034392', '1552270486');
INSERT INTO `pm_brand` VALUES ('9', '0', '澳佳宝', '/uploads/images/20181026/82471cb0f61635dad80d884c83df8a07.jpg', '', '', '2', '1', '1', 'A', '1536034458', '1552270503');
INSERT INTO `pm_brand` VALUES ('11', '0', '贝拉米', '/uploads/images/20181026/cd09dc4d2b10232ded443c30a2907403.jpg', '', '', '3', '0', '0', 'B', '1538452869', '1550632619');
INSERT INTO `pm_brand` VALUES ('12', '0', '爱乐维', '/uploads/images/20181026/46a00f9ca6a2131752928078f70e5a1a.jpg', '', '', '10', '0', '0', 'A', '1538467354', '1552271902');
INSERT INTO `pm_brand` VALUES ('13', '5', '德运', '/uploads/images/20190220/7007cf8fce36da99f61f74e7b1b5695b.jpg', '', '', '15', '0', '0', 'D', '1538473320', '1550636685');
INSERT INTO `pm_brand` VALUES ('14', '5', 'GAIA', '/uploads/images/20190220/3b5949eb55cf514a2a05167fb35714a8.jpg', '', '', '17', '1', '1', 'G', '1538564972', '1552272239');
INSERT INTO `pm_brand` VALUES ('15', '3', 'QV', '/uploads/images/20181026/df2ef3b72b96d4d4011630ed57c11f43.jpg', '', '', '18', '1', '1', 'Q', '1538565237', '1552271036');
INSERT INTO `pm_brand` VALUES ('16', '0', '美可卓', '/uploads/images/20181026/978f004a7e7b4ddc7539624d7e0b43b5.jpg', '', '', '9', '0', '1', 'M', '1540639709', '1551942155');
INSERT INTO `pm_brand` VALUES ('17', '0', '雅培', '/uploads/images/20181028/789a84dc53863c69fb73833265de7849.png', '', '', '11', '0', '0', 'Y', '1540639801', '1550632650');
INSERT INTO `pm_brand` VALUES ('18', '0', '生物岛', '/uploads/images/20190311/db09f0f60a2f0ffc9ddfe786529e9bd3.jpg', '', '', '4', '1', '1', 'S', '1540639875', '1552270833');
INSERT INTO `pm_brand` VALUES ('19', '0', '茱莉蔻', '/uploads/images/20181026/ec3db505c4d475ea88468d9d01a477d8.jpg', '', '', '20', '0', '0', 'Z', '1540639898', '1551945228');
INSERT INTO `pm_brand` VALUES ('20', '0', '苏芊', '/uploads/images/20181026/0584de61e82a933cf2a418faeffb6ca7.jpg', '', '', '21', '0', '1', 'S', '1540639923', '1551942222');
INSERT INTO `pm_brand` VALUES ('46', '0', '其他护肤品', '/uploads/images/20190220/6bcde67667030c6f45aaba1fb26b5379.jpg', '', '', '50', '0', '0', 'Q', '1547187665', '1550635431');
INSERT INTO `pm_brand` VALUES ('47', '0', '安瓶', '/uploads/images/20190220/87c73ae8fb961496a59a992ffd970eff.png', '', '', '50', '0', '1', 'A', '1547428823', '1551942257');
INSERT INTO `pm_brand` VALUES ('22', '0', 'Healthy Care', '/uploads/images/20181028/d63ece806e3243a2d8f736cc2d168bec.png', '', '', '3', '1', '1', 'H', '1540639967', '1552270515');
INSERT INTO `pm_brand` VALUES ('23', '0', '百洛油', '/uploads/images/20181026/e05a3f12d1af4888876e898cfba91a9d.jpg', '', '', '28', '0', '1', 'B', '1540639992', '1551942248');
INSERT INTO `pm_brand` VALUES ('24', '0', '星期四', '/uploads/images/20181026/b5821e0ca53a4b6255f3a970d5be71b0.jpg', '', '', '22', '0', '1', 'X', '1540640023', '1551942230');
INSERT INTO `pm_brand` VALUES ('25', '0', '水光针', '/uploads/images/20190220/936bff224c59b040d526d22de6015c55.jpg', '', '', '9', '1', '1', 'S', '1540640037', '1552270857');
INSERT INTO `pm_brand` VALUES ('26', '0', '康维他', '/uploads/images/20181026/cc6e854ff48f0d1d58e8128cf2fcf43a.jpg', '', '', '17', '0', '0', 'K', '1540640117', '1552271974');
INSERT INTO `pm_brand` VALUES ('27', '0', '乐康膏', '/uploads/images/20181026/10ad165896fee374798c7491cda80fb7.jpg', '', '', '16', '0', '1', 'L', '1540640200', '1551942191');
INSERT INTO `pm_brand` VALUES ('28', '0', '奔富', '/uploads/images/20190210/3ddadc149b05540c85f67aa433fcb6b2.jpeg', '', '', '23', '0', '0', 'B', '1540640223', '1552272103');
INSERT INTO `pm_brand` VALUES ('29', '0', '雅乐思', '/uploads/images/20181026/6e8e20ce8bdfa76b3a66f056260ab057.jpg', '', '', '50', '0', '1', 'Y', '1540640268', '1551942264');
INSERT INTO `pm_brand` VALUES ('31', '0', 'Jack n’jill', '/uploads/images/20181028/90167588c46b52b9e3c2dedb0fa1fb66.png', '', '', '26', '0', '1', 'J', '1540640341', '1551942239');
INSERT INTO `pm_brand` VALUES ('32', '0', '木瓜膏', '/uploads/images/20181026/b63d433122aeb2b61bdef49bd78d0ddd.jpg', '', '', '5', '1', '1', 'M', '1540640364', '1552270781');
INSERT INTO `pm_brand` VALUES ('33', '0', '贝博士', '/uploads/images/20190311/1931702915f440ae3fd0c558d7a6e84c.jpg', '', '', '12', '1', '1', 'B', '1540698631', '1552272175');
INSERT INTO `pm_brand` VALUES ('34', '0', '益生菌', '/uploads/images/20181028/015905a109705a2207cea4aba3eb413c.jpg', '', '', '6', '1', '0', 'Y', '1540698792', '1552270804');
INSERT INTO `pm_brand` VALUES ('35', '0', '澳美滋', '/uploads/images/20181028/19cb22705b119b0a495816176c3151b0.jpg', '', '', '12', '0', '0', 'A', '1540698983', '1550632661');
INSERT INTO `pm_brand` VALUES ('36', '0', '酵素', '/uploads/images/20181028/3ea8980eb2f833abe1bc89745f297b0e.jpg', '', '', '18', '0', '1', 'J', '1540699142', '1551942204');
INSERT INTO `pm_brand` VALUES ('37', '0', '惠氏', '/uploads/images/20190220/dbc6e2b9278a4df3c7ed0a9e8ba68f33.jpg', '', '', '50', '0', '0', 'H', '1544592863', '1550634623');
INSERT INTO `pm_brand` VALUES ('38', '0', '满趣健 草饲', '/uploads/images/20181212/c21547cd1a5503ac1f600ac54ef8f5e4.jpg', '', '', '50', '0', '0', 'M', '1544595668', '1558423337');
INSERT INTO `pm_brand` VALUES ('39', '0', 'CapriLac', '/uploads/images/20190220/2ee3ee1e287632b0316d79a238f001c3.png', '', '', '50', '0', '0', 'C', '1544605520', '1550633776');
INSERT INTO `pm_brand` VALUES ('40', '0', '雀巢', '/uploads/images/20181212/82ac02ea1266ac6bb02592641a54fb92.jpg', '', '', '50', '0', '0', 'Q', '1544605982', '1550310597');
INSERT INTO `pm_brand` VALUES ('41', '0', '艾维诺', '/uploads/images/20181215/b429b7ffec6b3822914e7110d0dc66d0.jpg', '', '', '50', '0', '0', 'A', '1544845875', '1552272036');
INSERT INTO `pm_brand` VALUES ('42', '0', '新溪岛', '/uploads/images/20190220/9cc8c49b7960691bca20d75f1b04bd35.jpg', '', '', '50', '0', '0', 'X', '1544850429', '1552272043');
INSERT INTO `pm_brand` VALUES ('43', '0', 'NATIO', '/uploads/images/20190220/53565607b9dae62e32f3787a2f073508.jpg', '', '', '16', '1', '1', 'N', '1544852395', '1552272226');
INSERT INTO `pm_brand` VALUES ('44', '0', 'Antipodes', '/uploads/images/20181215/4a8446b39138301ed3a5ceba7254780f.jpg', '', '', '50', '0', '0', 'A', '1544853044', '1552272050');
INSERT INTO `pm_brand` VALUES ('45', '0', '红印', '/uploads/images/20190220/c4d6e3e568a2251dc4817035091a0081.jpg', '', '', '50', '0', '0', 'H', '1545378010', '1552272057');
INSERT INTO `pm_brand` VALUES ('48', '0', 'Goat 羊奶系列', '/uploads/images/20190220/bf4e19f872122840c6a1e96e4682f152.jpg', '', '', '10', '1', '1', 'G', '1547430101', '1552270892');
INSERT INTO `pm_brand` VALUES ('49', '0', 'Trilogy', '/uploads/images/20190114/2647ee99bf548e6199829949e22bcdd3.png', '', '', '50', '0', '0', 'T', '1547430311', '1552272026');
INSERT INTO `pm_brand` VALUES ('50', '0', '其他保健品', '/uploads/images/20190220/1624a067359cd1bc26e19e0d8bddafd7.jpg', '', '', '50', '0', '0', 'Q', '1547430357', '1550635528');
INSERT INTO `pm_brand` VALUES ('51', '0', 'Freezeframe', '/uploads/images/20190220/0ded43041674b5a01cbbd72d8352b453.jpg', '', '', '15', '1', '1', 'F', '1547430592', '1552270995');
INSERT INTO `pm_brand` VALUES ('52', '0', 'UNICHI', '/uploads/images/20190220/ae1e9a2f3c8c074ea04548dd70b96be8.jpg', '', '', '14', '1', '1', 'U', '1547431459', '1552270983');
INSERT INTO `pm_brand` VALUES ('53', '0', '食品类', '/uploads/images/20190220/09ff83ee05089d423e0089a2b610df57.jpg', '', '', '50', '0', '0', 'S', '1547431743', '1550635628');
INSERT INTO `pm_brand` VALUES ('54', '0', '其他日用品', '/uploads/images/20190220/87fd24a1c271352d532297d0eca15c6a.jpg', '', '', '50', '0', '0', 'Q', '1547432489', '1550635580');
INSERT INTO `pm_brand` VALUES ('55', '0', '奥斯特林', '/uploads/images/20190114/6bd874babd464dd6eec45cde850191f6.jpg', '', '', '8', '1', '1', 'A', '1547432656', '1552270840');
INSERT INTO `pm_brand` VALUES ('56', '0', '康迪克', '/uploads/images/20190220/f11c7ba1afc61149e2e69e17eb8ad8ae.jpg', '', '', '50', '0', '0', 'K', '1547432782', '1552272064');
INSERT INTO `pm_brand` VALUES ('57', '0', 'Oral-B', '/uploads/images/20190220/ee299e065b30f2b668e0008e14eb208f.jpg', '', '', '50', '0', '0', 'O', '1547432908', '1552272073');
INSERT INTO `pm_brand` VALUES ('58', '0', 'Jellycat', '/uploads/images/20190220/d83139d5eceddb8e575d32b7b1ce3ebf.jpg', '', '', '19', '1', '1', 'J', '1550234263', '1552271050');
INSERT INTO `pm_brand` VALUES ('61', '0', 'OLI羊奶粉', '/uploads/images/20190319/106176e8899bf343759f76f422020fba.jpg', '', '', '50', '0', '0', 'O', '1552970449', '1552970570');
INSERT INTO `pm_brand` VALUES ('59', '0', 'GM', '/uploads/images/20190311/3ccc54b6fe08ab8c88c17da70e99365b.jpg', '', '', '11', '1', '1', 'G', '1552271717', '1552271717');
INSERT INTO `pm_brand` VALUES ('60', '0', 'Femfresh', '/uploads/images/20190311/79122cf49ef11dd15116a931d87b694c.jpg', '', '', '13', '1', '1', 'F', '1552271764', '1552271764');
INSERT INTO `pm_brand` VALUES ('62', '0', 'Bubs贝儿羊奶粉', '/uploads/images/20190411/c58f9269a6c67e89d144339e312efa39.jpeg', '', '', '50', '0', '0', 'B', '1554945914', '1554945914');
INSERT INTO `pm_brand` VALUES ('63', '0', 'Diploma学生奶粉', '/uploads/images/20190411/5df7828a3cf65205d6f0b9de88885be7.jpg', '', '', '50', '0', '0', 'D', '1554947900', '1554947991');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_cart
-- ----------------------------
INSERT INTO `pm_cart` VALUES ('3', '2', '4', '0', '4', '4', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_category
-- ----------------------------
INSERT INTO `pm_category` VALUES ('1', '6', '0', '首页广告', '', '50', '0-1-', '', '', '0', '', '', '1563116411', '1563116411');

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
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_config
-- ----------------------------
INSERT INTO `pm_config` VALUES ('1', 'name', '玛利亚商城', 'basic', '');
INSERT INTO `pm_config` VALUES ('2', 'logo', '', 'basic', '');
INSERT INTO `pm_config` VALUES ('3', 'isClose', '0', 'basic', '');
INSERT INTO `pm_config` VALUES ('4', 'closeInfo', '系统维护中', 'basic', '');
INSERT INTO `pm_config` VALUES ('5', 'domain', 'http://127.0.0.1', 'basic', '');
INSERT INTO `pm_config` VALUES ('6', 'copyright', '玛利亚商城', 'basic', '');
INSERT INTO `pm_config` VALUES ('7', 'email', '#', 'basic', '');
INSERT INTO `pm_config` VALUES ('8', 'weixin', '#', 'basic', '');
INSERT INTO `pm_config` VALUES ('9', 'weibo', '#', 'basic', '');
INSERT INTO `pm_config` VALUES ('10', 'description', '玛利亚商城', 'basic', '');
INSERT INTO `pm_config` VALUES ('11', 'qrcode', '', 'basic', '');
INSERT INTO `pm_config` VALUES ('19', 'mobile', '#', 'basic', '');
INSERT INTO `pm_config` VALUES ('12', 'address', '#', 'basic', '');
INSERT INTO `pm_config` VALUES ('13', 'tel', '0371-23190228', 'basic', '');
INSERT INTO `pm_config` VALUES ('15', 'qq', '1826366140', 'basic', '');
INSERT INTO `pm_config` VALUES ('16', 'keywords', '玛利亚商城', 'basic', '');
INSERT INTO `pm_config` VALUES ('18', 'title', '玛利亚商城', 'basic', '');
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
INSERT INTO `pm_config` VALUES ('39', 'sms_name', 'xinfeidianqi', 'sms', '');
INSERT INTO `pm_config` VALUES ('40', 'sms_pwd', 'kf01888', 'sms', '');
INSERT INTO `pm_config` VALUES ('41', 'sms_sign', '奥讯', 'sms', '');
INSERT INTO `pm_config` VALUES ('42', 'out_time', '10', 'sms', '');
INSERT INTO `pm_config` VALUES ('43', 'diffTime', '1', 'sms', '');
INSERT INTO `pm_config` VALUES ('44', 'dayNumber', '5', 'sms', '');
INSERT INTO `pm_config` VALUES ('93', 'jifen4', '9000', 'member', null);
INSERT INTO `pm_config` VALUES ('94', 'back4', '20', 'member', null);
INSERT INTO `pm_config` VALUES ('95', 'jifen5', '12000', 'member', null);
INSERT INTO `pm_config` VALUES ('50', 'APP_TOKEN', '2', 'weixin', null);
INSERT INTO `pm_config` VALUES ('51', 'APP_ID', '3', 'weixin', null);
INSERT INTO `pm_config` VALUES ('52', 'APP_SECRET', '4', 'weixin', null);
INSERT INTO `pm_config` VALUES ('53', 'MCH_KEY', '5', 'weixin', null);
INSERT INTO `pm_config` VALUES ('54', 'MCH_ID', '6', 'weixin', null);
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
INSERT INTO `pm_config` VALUES ('102', 'hotkey', '', 'member', null);
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
  `updateTime` int(11) NOT NULL,
  `createTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pm_coupon
-- ----------------------------
INSERT INTO `pm_coupon` VALUES ('3', '新手券', '立减50元', '1', '0', '50', '1', '1', '30', '212,222', '1563102923', '1551964995');

-- ----------------------------
-- Table structure for `pm_fav`
-- ----------------------------
DROP TABLE IF EXISTS `pm_fav`;
CREATE TABLE `pm_fav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_fav
-- ----------------------------

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
  `msg` varchar(300) NOT NULL,
  `extend1` int(11) NOT NULL,
  `extend2` int(11) NOT NULL,
  `createTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_finance
-- ----------------------------
INSERT INTO `pm_finance` VALUES ('1', '2', '1', '2', '2', '10.00', '07-23签到，奖励10积分。', '0', '0', '1563892114');

-- ----------------------------
-- Table structure for `pm_flash`
-- ----------------------------
DROP TABLE IF EXISTS `pm_flash`;
CREATE TABLE `pm_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
INSERT INTO `pm_flash` VALUES ('3', '7', '某某奶粉', '9', 'a:0:{}', 'a:0:{}', '1562342400', '1564848000', '999', '1563709506');
INSERT INTO `pm_flash` VALUES ('6', '4', '测试商品', '30', 'a:12:{i:0;a:3:{s:6:\"specID\";s:1:\"4\";s:4:\"name\";s:26:\"尺码:35码 颜色:白色\";s:5:\"price\";s:2:\"30\";}i:1;a:3:{s:6:\"specID\";s:1:\"3\";s:4:\"name\";s:26:\"尺码:35码 颜色:蓝色\";s:5:\"price\";s:2:\"30\";}i:2;a:3:{s:6:\"specID\";s:1:\"5\";s:4:\"name\";s:26:\"尺码:42码 颜色:蓝色\";s:5:\"price\";s:2:\"30\";}i:3;a:3:{s:6:\"specID\";s:1:\"6\";s:4:\"name\";s:26:\"尺码:42码 颜色:白色\";s:5:\"price\";s:2:\"30\";}i:4;a:3:{s:6:\"specID\";s:1:\"7\";s:4:\"name\";s:26:\"尺码:35码 颜色:蓝色\";s:5:\"price\";s:2:\"30\";}i:5;a:3:{s:6:\"specID\";s:1:\"8\";s:4:\"name\";s:26:\"尺码:35码 颜色:白色\";s:5:\"price\";s:2:\"30\";}i:6;a:3:{s:6:\"specID\";s:1:\"9\";s:4:\"name\";s:26:\"尺码:42码 颜色:蓝色\";s:5:\"price\";s:2:\"30\";}i:7;a:3:{s:6:\"specID\";s:2:\"10\";s:4:\"name\";s:26:\"尺码:42码 颜色:白色\";s:5:\"price\";s:2:\"30\";}i:8;a:3:{s:6:\"specID\";s:2:\"11\";s:4:\"name\";s:26:\"尺码:35码 颜色:蓝色\";s:5:\"price\";s:2:\"30\";}i:9;a:3:{s:6:\"specID\";s:2:\"12\";s:4:\"name\";s:26:\"尺码:35码 颜色:白色\";s:5:\"price\";s:2:\"30\";}i:10;a:3:{s:6:\"specID\";s:2:\"13\";s:4:\"name\";s:26:\"尺码:42码 颜色:蓝色\";s:5:\"price\";s:2:\"30\";}i:11;a:3:{s:6:\"specID\";s:2:\"14\";s:4:\"name\";s:26:\"尺码:42码 颜色:白色\";s:5:\"price\";s:2:\"30\";}}', 'a:2:{i:0;a:3:{s:6:\"packID\";s:1:\"5\";s:4:\"name\";s:12:\"三罐套餐\";s:5:\"price\";s:3:\"230\";}i:1;a:3:{s:6:\"packID\";s:1:\"6\";s:4:\"name\";s:12:\"六罐套餐\";s:5:\"price\";s:3:\"450\";}}', '1563811200', '1564588799', '999', '1563860124');

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
  `inprice` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `marketPrice` decimal(10,2) NOT NULL,
  `minPrice` decimal(10,2) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `wuliuWeight` decimal(10,2) NOT NULL,
  `linkIds` varchar(500) DEFAULT NULL,
  `sellNumber` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `number` int(11) NOT NULL COMMENT '单品的数量，如果是3件s商品的套餐，就填写3',
  `tag` tinyint(4) NOT NULL,
  `empty` tinyint(4) NOT NULL COMMENT '是否清仓',
  `comm` tinyint(4) NOT NULL COMMENT '是否推荐',
  `show` tinyint(11) NOT NULL COMMENT '是否显示',
  `sort` int(11) NOT NULL,
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_goods
-- ----------------------------
INSERT INTO `pm_goods` VALUES ('4', '0', '2', '0-1-2-', '0', '', '1', '1', '12', '测试商品', '111', '22', '11', '', '', '', null, '', '0', '', '28.00', '39.00', '48.00', '37.00', '0.50', '0.80', '', '0', '999', '1', '0', '0', '0', '1', '50', '1563702780', '1563938687');
INSERT INTO `pm_goods` VALUES ('5', '4', '2', '0-1-2-', '0', '', '1', '1', '12', '三罐套餐', '111', '22', '11', '', '', '', null, '', '0', '', '28.00', '250.00', '48.00', '37.00', '0.50', '0.80', '', '0', '999', '3', '0', '0', '0', '1', '50', '1563702780', '1563938687');
INSERT INTO `pm_goods` VALUES ('6', '4', '2', '0-1-2-', '0', '', '1', '1', '12', '六罐套餐', '111', '22', '11', '', '', '', null, '', '0', '', '28.00', '480.00', '48.00', '37.00', '0.50', '0.80', '', '0', '999', '6', '0', '0', '0', '1', '50', '1563702780', '1563938687');
INSERT INTO `pm_goods` VALUES ('7', '0', '2', '0-1-2-', '0', '', '1', '0', '12', '某某奶粉', '121212', '11', '11', '', '', '', null, '', '0', '1', '11.00', '11.00', '0.00', '11.00', '11.00', '1.00', '', '0', '999', '1', '0', '0', '1', '1', '50', '1563703331', '1563899568');
INSERT INTO `pm_goods` VALUES ('8', '0', '2', '0-1-2-', '0', '', '3', '1', '5', '11111111', '22222222', '1', '2', '', '', '', null, '', '0', '', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '', '1', '999', '1', '0', '0', '0', '1', '50', '1563938779', '1563938811');

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
  `keyword` text NOT NULL,
  `description` text NOT NULL,
  `createTime` int(10) NOT NULL,
  `updateTime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_goods_cate
-- ----------------------------
INSERT INTO `pm_goods_cate` VALUES ('1', '0', '奶粉', '', '50', '0-1-', '', '', '0', '1', '', '', '1561185748', '1563769278');
INSERT INTO `pm_goods_cate` VALUES ('2', '1', 'A2', '', '50', '0-1-2-', '', '', '0', '0', '', '', '1561185758', '1561185758');
INSERT INTO `pm_goods_cate` VALUES ('3', '2', '方法', '', '50', '0-1-2-3-', '', '', '0', '0', '', '', '1561185766', '1561185888');

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
  `goodsID` int(11) NOT NULL,
  `goodsName` varchar(200) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_goods_push
-- ----------------------------
INSERT INTO `pm_goods_push` VALUES ('3', '1', '4', '测试商品', '1563771843');
INSERT INTO `pm_goods_push` VALUES ('4', '2', '7', '某某奶粉', '1563771870');

-- ----------------------------
-- Table structure for `pm_goods_spec_price`
-- ----------------------------
DROP TABLE IF EXISTS `pm_goods_spec_price`;
CREATE TABLE `pm_goods_spec_price` (
  `item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格商品id',
  `goods_id` int(11) DEFAULT '0' COMMENT '商品id',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '规格键名',
  `key_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '规格键名中文',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `minPrice` decimal(10,2) DEFAULT NULL,
  `store_count` int(11) unsigned DEFAULT '10' COMMENT '库存数量',
  `bar_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '商品条形码',
  `weight` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '重量',
  `isBaoyou` tinyint(4) DEFAULT NULL COMMENT '0不包邮 1包邮',
  `spec_img` varchar(255) DEFAULT NULL COMMENT '规格商品主图',
  `prom_id` int(10) DEFAULT '0' COMMENT '活动id',
  `prom_type` tinyint(2) DEFAULT '0' COMMENT '参加活动类型',
  PRIMARY KEY (`item_id`),
  KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_goods_spec_price
-- ----------------------------
INSERT INTO `pm_goods_spec_price` VALUES ('1', '4', '1_6', '尺码:35码 颜色:蓝色', '39.00', '38.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('2', '4', '1_7', '尺码:35码 颜色:白色', '39.00', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('3', '4', '3_6', '尺码:42码 颜色:蓝色', '39.00', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('4', '4', '3_7', '尺码:42码 颜色:白色', '39.00', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('9', '8', '2_6', '尺码:40码 颜色:蓝色', '1.00', '1.00', '0', '', '', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('10', '8', '2_7', '尺码:40码 颜色:白色', '1.00', '1.00', '0', '', '', null, null, '0', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_member
-- ----------------------------
INSERT INTO `pm_member` VALUES ('1', '1212121212', '', '', '张小黑1', '', '', '', '111111111', '0', 'f1e1e857c5d3cb398dbef234f465320bdcba2ef7', '1566359606', '1563767300', '127.0.0.1');
INSERT INTO `pm_member` VALUES ('2', 'dsfsdfsdfsdfsdf', '', '', '张小黑', '张黑', '', '', '111111111', '0', '7f92012aaa7c2d71d3415968311effaa0c923e45', '1566566414', '1563767631', '127.0.0.1');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_member_code
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

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
INSERT INTO `pm_node` VALUES ('55', '部门管理', 'depart', '1', '', '51', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('56', '消防救援衔', 'junxian', '1', '', '51', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('57', '列表', 'depart/index', '1', '', '55', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('58', '发布', 'depart/pub', '1', '', '55', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('59', '列表', 'junxian/index', '1', '', '56', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('60', '发布', 'junxian/pub', '1', '', '56', '3', '', '0', '50', '0');
INSERT INTO `pm_node` VALUES ('82', '选项设置', 'option', '1', '', '6', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('65', '商品管理', '', '1', '', '0', '1', 'layui-icon-cart', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('66', '商品列表', 'goods', '1', '', '65', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('67', '站内消息', 'message', '1', '', '51', '2', '', '0', '50', '1');
INSERT INTO `pm_node` VALUES ('68', '列表', 'message/index', '1', '', '67', '3', '', '0', '50', '0');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_onepage
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_option_cate
-- ----------------------------
INSERT INTO `pm_option_cate` VALUES ('1', '商品推送', '', '50', '1563769874', '1563769874');
INSERT INTO `pm_option_cate` VALUES ('2', '产品功效', '', '50', '1563897789', '1563897789');
INSERT INTO `pm_option_cate` VALUES ('3', '商品标签', '', '50', '1563898269', '1563898269');

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
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_option_item
-- ----------------------------
INSERT INTO `pm_option_item` VALUES ('1', '1', '每日精品', '', '3', '50', 'M', '1563769911', '1563771185');
INSERT INTO `pm_option_item` VALUES ('2', '1', '国内现货', '', '2', '50', 'G', '1563770010', '1563771181');
INSERT INTO `pm_option_item` VALUES ('3', '1', '特惠推荐', '', '1', '50', 'T', '1563770054', '1563771177');
INSERT INTO `pm_option_item` VALUES ('4', '2', '美白', '', '', '50', 'M', '1563898010', '1563898010');
INSERT INTO `pm_option_item` VALUES ('5', '2', '降压', '', '', '50', 'J', '1563898053', '1563898053');
INSERT INTO `pm_option_item` VALUES ('6', '2', '改善贫血', '', '', '50', 'G', '1563898075', '1563898075');

-- ----------------------------
-- Table structure for `pm_order`
-- ----------------------------
DROP TABLE IF EXISTS `pm_order`;
CREATE TABLE `pm_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) NOT NULL,
  `order_no` varchar(50) NOT NULL,
  `totalMoney` decimal(8,2) NOT NULL COMMENT '订单总金额(商品金额+快递费)',
  `discount` varchar(10) DEFAULT NULL COMMENT '优惠金额',
  `money` decimal(8,2) NOT NULL COMMENT '应支付的总金额(订单总金额-优惠金额)',
  `wallet` decimal(8,2) NOT NULL COMMENT '余额支付金额',
  `inprice` decimal(8,2) NOT NULL COMMENT '商品总成本',
  `payment` decimal(8,2) NOT NULL COMMENT '运费总金额',
  `wuliuInprice` decimal(8,2) NOT NULL COMMENT '运费成本',
  `remark` varchar(300) DEFAULT NULL,
  `cardID` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `print` tinyint(4) NOT NULL COMMENT '0未打印 1已打印',
  `payType` tinyint(11) NOT NULL COMMENT '1omi支付 2余额支付',
  `payStatus` tinyint(11) NOT NULL COMMENT '0未支付 1已支付',
  `status` tinyint(4) NOT NULL COMMENT '0待支付 1待配货 2配货中 3已发货 99交易关闭',
  `cancel` tinyint(4) NOT NULL COMMENT '取消订单',
  `sendTime` int(11) NOT NULL,
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_order
-- ----------------------------

-- ----------------------------
-- Table structure for `pm_order_baoguo`
-- ----------------------------
DROP TABLE IF EXISTS `pm_order_baoguo`;
CREATE TABLE `pm_order_baoguo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) NOT NULL COMMENT '用户订单号',
  `personID` int(11) NOT NULL,
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
  `mobile` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `senderMobile` varchar(50) NOT NULL,
  `sign` varchar(30) DEFAULT NULL COMMENT '货物签名',
  `serverIds` varchar(30) NOT NULL,
  `status` tinyint(1) unsigned zerofill NOT NULL COMMENT '0未支付 1已支付',
  `snStatus` tinyint(4) NOT NULL COMMENT '身份证0未上传，1已上传',
  `flag` tinyint(4) NOT NULL COMMENT '0未导出 1已导出',
  `print` tinyint(4) NOT NULL DEFAULT '0',
  `del` tinyint(4) DEFAULT NULL COMMENT '0正常 1临时订单（多人模式）',
  `cancel` tinyint(4) NOT NULL COMMENT '取消订单',
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_order_baoguo
-- ----------------------------

-- ----------------------------
-- Table structure for `pm_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `pm_order_detail`;
CREATE TABLE `pm_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `baoguoID` int(50) NOT NULL,
  `goodsID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `short` varchar(200) NOT NULL,
  `number` int(11) NOT NULL COMMENT '商品数量，并非实际单品的数量',
  `trueNumber` int(11) NOT NULL COMMENT '真实商品数量比如套餐就显示3，单品就显示1',
  `price` decimal(8,2) NOT NULL,
  `server` varchar(100) DEFAULT '',
  `del` tinyint(4) DEFAULT NULL COMMENT '0正常 1临时订单（多人模式）',
  `cancel` tinyint(4) NOT NULL COMMENT '取消订单',
  `extends` varchar(100) DEFAULT NULL,
  `createTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `pm_order_person`
-- ----------------------------
DROP TABLE IF EXISTS `pm_order_person`;
CREATE TABLE `pm_order_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `addressID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `senderMobile` varchar(50) NOT NULL,
  `sign` varchar(20) DEFAULT NULL COMMENT '货物签名',
  `intr` varchar(500) DEFAULT NULL,
  `remark` varchar(500) NOT NULL,
  `front` varchar(255) NOT NULL,
  `back` varchar(255) NOT NULL,
  `sn` varchar(50) NOT NULL,
  `kid` tinyint(4) NOT NULL COMMENT '快递ID',
  `payment` decimal(10,2) NOT NULL COMMENT '运费',
  `wuliuInprice` decimal(8,2) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0未支付 1已支付',
  `del` tinyint(4) NOT NULL COMMENT '0正常 1临时订单（多人模式）',
  `cancel` tinyint(4) NOT NULL COMMENT '取消订单',
  `sendTime` int(11) NOT NULL,
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_order_person
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_sender
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_sign
-- ----------------------------
INSERT INTO `pm_sign` VALUES ('1', '2', '10', '2019-07-23', '1563892114');

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
