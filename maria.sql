/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : maria

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-07-23 17:50:20
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_cart
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

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
INSERT INTO `pm_config` VALUES ('102', 'hotkey', '补水面膜', 'member', null);

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
  `articleID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_goods
-- ----------------------------
INSERT INTO `pm_goods` VALUES ('4', '0', '2', '0-1-2-', '0', '', '1', '1', '12', '测试商品', '111', '22', '11', '', '', '', null, '', '0', '', '28.00', '39.00', '48.00', '0.50', '0.80', '', '0', '999', '1', '0', '0', '0', '1', '50', '1563702780', '1563773873');
INSERT INTO `pm_goods` VALUES ('5', '4', '2', '0-1-2-', '0', '', '1', '1', '12', '三罐套餐', '111', '22', '11', '', '', '', null, '', '0', '', '28.00', '250.00', '48.00', '0.50', '0.80', '', '0', '999', '3', '0', '0', '0', '1', '50', '1563702780', '1563773873');
INSERT INTO `pm_goods` VALUES ('6', '4', '2', '0-1-2-', '0', '', '1', '1', '12', '六罐套餐', '111', '22', '11', '', '', '', null, '', '0', '', '28.00', '480.00', '48.00', '0.50', '0.80', '', '0', '999', '6', '0', '0', '0', '1', '50', '1563702780', '1563773873');
INSERT INTO `pm_goods` VALUES ('7', '0', '2', '0-1-2-', '0', '', '1', '0', '12', '某某奶粉', '121212', '11', '11', '', '', '', null, '', '0', '1', '11.00', '11.00', '0.00', '11.00', '1.00', '', '0', '999', '1', '0', '0', '1', '1', '50', '1563703331', '1563774143');

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
  `store_count` int(11) unsigned DEFAULT '10' COMMENT '库存数量',
  `bar_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '商品条形码',
  `weight` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '重量',
  `isBaoyou` tinyint(4) DEFAULT NULL COMMENT '0不包邮 1包邮',
  `spec_img` varchar(255) DEFAULT NULL COMMENT '规格商品主图',
  `prom_id` int(10) DEFAULT '0' COMMENT '活动id',
  `prom_type` tinyint(2) DEFAULT '0' COMMENT '参加活动类型',
  PRIMARY KEY (`item_id`),
  KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_goods_spec_price
-- ----------------------------
INSERT INTO `pm_goods_spec_price` VALUES ('4', '4', '1_7', '尺码:35码 颜色:白色', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('3', '4', '1_6', '尺码:35码 颜色:蓝色', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('5', '4', '3_6', '尺码:42码 颜色:蓝色', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('6', '4', '3_7', '尺码:42码 颜色:白色', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('7', '4', '1_6', '尺码:35码 颜色:蓝色', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('8', '4', '1_7', '尺码:35码 颜色:白色', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('9', '4', '3_6', '尺码:42码 颜色:蓝色', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('10', '4', '3_7', '尺码:42码 颜色:白色', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('11', '4', '1_6', '尺码:35码 颜色:蓝色', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('12', '4', '1_7', '尺码:35码 颜色:白色', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('13', '4', '3_6', '尺码:42码 颜色:蓝色', '39.00', '0', '', '0.8', null, null, '0', '0');
INSERT INTO `pm_goods_spec_price` VALUES ('14', '4', '3_7', '尺码:42码 颜色:白色', '39.00', '0', '', '0.8', null, null, '0', '0');

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
INSERT INTO `pm_member` VALUES ('2', 'dsfsdfsdfsdfsdf', '', '', '张小黑', '', '', '', '111111111', '0', '7f92012aaa7c2d71d3415968311effaa0c923e45', '1566458100', '1563767631', '127.0.0.1');

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
INSERT INTO `pm_node` VALUES ('71', '物流管理', 'wuliu', '1', '', '65', '2', '', '0', '50', '1');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_option_cate
-- ----------------------------
INSERT INTO `pm_option_cate` VALUES ('1', '商品推送', '', '50', '1563769874', '1563769874');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_option_item
-- ----------------------------
INSERT INTO `pm_option_item` VALUES ('1', '1', '每日精品', '', '3', '50', 'M', '1563769911', '1563771185');
INSERT INTO `pm_option_item` VALUES ('2', '1', '国内现货', '', '2', '50', 'G', '1563770010', '1563771181');
INSERT INTO `pm_option_item` VALUES ('3', '1', '特惠推荐', '', '1', '50', 'T', '1563770054', '1563771177');

-- ----------------------------
-- Table structure for `pm_order`
-- ----------------------------
DROP TABLE IF EXISTS `pm_order`;
CREATE TABLE `pm_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` int(11) NOT NULL,
  `memberMobile` varchar(50) NOT NULL COMMENT '会员手机号码',
  `order_no` varchar(50) NOT NULL,
  `total` decimal(8,2) NOT NULL COMMENT '订单总金额',
  `discount` varchar(10) DEFAULT NULL,
  `serverMoney` decimal(8,2) NOT NULL COMMENT '贴心服务总金额',
  `goodsMoney` decimal(8,2) NOT NULL COMMENT '商品价格',
  `rmb` decimal(8,2) NOT NULL COMMENT '暂时没用',
  `money` decimal(8,2) NOT NULL COMMENT '应支付的总金额',
  `wallet` decimal(8,2) NOT NULL COMMENT '余额支付金额',
  `inprice` decimal(8,2) NOT NULL COMMENT '商品总成本',
  `payment` decimal(8,2) NOT NULL COMMENT '运费总金额',
  `wuliuInprice` decimal(8,2) NOT NULL COMMENT '运费成本',
  `remark` varchar(300) DEFAULT NULL,
  `cardID` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `print` tinyint(4) NOT NULL COMMENT '0未打印 1已打印',
  `payType` tinyint(11) NOT NULL COMMENT '1下线支付 2预存款支付 3omi支付 4银行卡支付',
  `payStatus` tinyint(11) NOT NULL COMMENT '0未支付 1已支付',
  `status` tinyint(4) NOT NULL COMMENT '0待发货 1已发货 2已收货',
  `cancel` tinyint(4) NOT NULL COMMENT '取消订单',
  `sendTime` int(11) NOT NULL,
  `createTime` int(11) NOT NULL,
  `updateTime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2479 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_order
-- ----------------------------
INSERT INTO `pm_order` VALUES ('1207', '8757', '', '94218235', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556983569', '1556983569');
INSERT INTO `pm_order` VALUES ('1208', '8757', '', '43663384', '254.00', '', '0.00', '254.00', '0.00', '254.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556983909', '1556983909');
INSERT INTO `pm_order` VALUES ('1209', '8687', '', '42339975', '41.00', '', '0.00', '29.00', '0.00', '41.00', '0.00', '25.00', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556986129', '1556986129');
INSERT INTO `pm_order` VALUES ('1210', '9007', '13098050809', '20365247', '120.20', '', '0.00', '107.20', '0.00', '120.20', '0.00', '98.50', '13.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556990085', '1556990085');
INSERT INTO `pm_order` VALUES ('1316', '8898', '', '63103052', '204.00', '', '0.00', '204.00', '0.00', '0.00', '204.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557097464', '1557097464');
INSERT INTO `pm_order` VALUES ('1212', '8771', '', '86637273', '29.80', '', '0.00', '23.80', '0.00', '29.80', '0.00', '24.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557016623', '1557016623');
INSERT INTO `pm_order` VALUES ('1200', '8973', '', '36004899', '55.22', '', '0.00', '47.10', '0.00', '0.00', '55.22', '48.30', '8.12', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1556980902', '1556980902');
INSERT INTO `pm_order` VALUES ('1201', '8757', '', '19905377', '127.00', '', '0.00', '127.00', '0.00', '127.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556982530', '1556982530');
INSERT INTO `pm_order` VALUES ('1202', '8757', '', '70149767', '105.00', '', '0.00', '105.00', '0.00', '105.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556982739', '1556982739');
INSERT INTO `pm_order` VALUES ('1203', '8757', '', '33270119', '117.00', '', '0.00', '117.00', '0.00', '117.00', '0.00', '100.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556982916', '1556982916');
INSERT INTO `pm_order` VALUES ('1204', '8757', '', '92329785', '105.00', '', '0.00', '105.00', '0.00', '105.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556983129', '1556983129');
INSERT INTO `pm_order` VALUES ('1311', '8807', '', '17163878', '351.00', '', '0.00', '351.00', '0.00', '351.00', '0.00', '292.50', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1557070433', '1557070433');
INSERT INTO `pm_order` VALUES ('1206', '8757', '', '73526459', '105.00', '', '0.00', '105.00', '0.00', '105.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556983299', '1556983299');
INSERT INTO `pm_order` VALUES ('588', '8690', '17723080131', '67963296', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556115770', '1556115770');
INSERT INTO `pm_order` VALUES ('1218', '8954', '', '94767459', '118.60', '', '0.00', '101.80', '0.00', '118.60', '0.00', '101.70', '16.80', '11.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557020208', '1557020208');
INSERT INTO `pm_order` VALUES ('1219', '8697', '', '28860098', '302.40', '', '0.00', '295.20', '0.00', '302.40', '0.00', '147.40', '7.20', '28.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557020266', '1557020266');
INSERT INTO `pm_order` VALUES ('1220', '8697', '', '29376659', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '201.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557020596', '1557020596');
INSERT INTO `pm_order` VALUES ('1217', '8889', '', '90224900', '96.16', '', '0.00', '77.76', '0.00', '96.16', '0.00', '83.50', '18.40', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557019594', '1557019594');
INSERT INTO `pm_order` VALUES ('1216', '8660', '', '51591443', '173.50', '', '0.00', '173.50', '0.00', '0.00', '173.50', '147.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557018626', '1557018626');
INSERT INTO `pm_order` VALUES ('1215', '8901', '', '72488591', '83.10', '', '0.00', '77.10', '0.00', '83.10', '0.00', '76.48', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557018024', '1557018024');
INSERT INTO `pm_order` VALUES ('1214', '8660', '', '77528290', '111.24', '', '0.00', '100.80', '0.00', '0.00', '111.24', '104.40', '10.44', '7.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557017790', '1557017790');
INSERT INTO `pm_order` VALUES ('562', '8754', '', '41426166', '87.40', '', '0.00', '62.60', '0.00', '87.40', '0.00', '27.60', '24.80', '15.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556092293', '1556092293');
INSERT INTO `pm_order` VALUES ('1187', '8769', '', '98973106', '105.00', '', '0.00', '105.00', '0.00', '105.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556967576', '1556967576');
INSERT INTO `pm_order` VALUES ('1289', '9086', '', '89746758', '154.60', '', '0.00', '135.40', '0.00', '154.60', '0.00', '136.00', '19.20', '12.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557054590', '1557054590');
INSERT INTO `pm_order` VALUES ('1189', '9040', '', '26984033', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556968346', '1556968346');
INSERT INTO `pm_order` VALUES ('1190', '8655', '0424080930', '76260518', '17.80', '', '0.00', '12.00', '0.00', '17.80', '0.00', '10.00', '5.80', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556969175', '1556969175');
INSERT INTO `pm_order` VALUES ('1193', '8882', '', '55029051', '235.80', '', '1.80', '235.80', '0.00', '235.80', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556972509', '1556972509');
INSERT INTO `pm_order` VALUES ('1194', '8943', '', '64561718', '351.00', '', '0.00', '351.00', '0.00', '351.00', '0.00', '292.50', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1556972701', '1556972701');
INSERT INTO `pm_order` VALUES ('1195', '8901', '', '11324169', '51.30', '', '0.00', '45.30', '0.00', '51.30', '0.00', '47.70', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556975599', '1556975599');
INSERT INTO `pm_order` VALUES ('1196', '8780', '', '73954360', '104.50', '', '0.00', '104.50', '0.00', '104.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556976251', '1556976251');
INSERT INTO `pm_order` VALUES ('1197', '8703', '', '27793845', '313.50', '', '0.00', '313.50', '0.00', '313.50', '0.00', '0.00', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1556977096', '1556977096');
INSERT INTO `pm_order` VALUES ('1198', '8726', '', '97715551', '36.90', '', '0.00', '30.90', '0.00', '36.90', '0.00', '25.55', '6.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556978182', '1556978182');
INSERT INTO `pm_order` VALUES ('1199', '8806', '', '88613808', '98.80', '', '0.00', '74.20', '0.00', '98.80', '0.00', '63.50', '24.60', '16.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556980537', '1556980537');
INSERT INTO `pm_order` VALUES ('953', '8741', '0449109488', '16334631', '112.20', '', '0.00', '102.00', '0.00', '112.20', '0.00', '104.50', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556620095', '1556620095');
INSERT INTO `pm_order` VALUES ('954', '8928', '13927740088', '80523186', '124.00', '', '0.00', '124.00', '0.00', '0.00', '124.00', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1556620573', '1556620573');
INSERT INTO `pm_order` VALUES ('956', '8928', '13927740088', '64063724', '519.50', '', '4.50', '519.50', '0.00', '0.00', '519.50', '438.00', '0.00', '58.50', '', '0', '', '0', '2', '4', '0', '0', '0', '1556624234', '1556624234');
INSERT INTO `pm_order` VALUES ('957', '8784', '15908948968', '78226787', '250.00', '', '0.00', '250.00', '0.00', '250.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556627950', '1556627950');
INSERT INTO `pm_order` VALUES ('959', '8782', '', '68916541', '125.50', '', '0.00', '112.50', '0.00', '125.50', '0.00', '0.00', '13.00', '11.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556631394', '1556631394');
INSERT INTO `pm_order` VALUES ('960', '8673', '', '46366957', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556631648', '1556631648');
INSERT INTO `pm_order` VALUES ('561', '8721', '', '45279952', '87.72', '', '0.00', '87.72', '0.00', '87.72', '0.00', '75.00', '0.00', '11.28', '', '0', '', '0', '3', '4', '0', '0', '0', '1556091902', '1556091902');
INSERT INTO `pm_order` VALUES ('961', '8657', '18802783840', '53488550', '71.60', '', '0.00', '59.60', '0.00', '71.60', '0.00', '0.00', '12.00', '7.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556633078', '1556633078');
INSERT INTO `pm_order` VALUES ('560', '8721', '', '54251820', '114.70', '', '0.00', '108.10', '0.00', '114.70', '0.00', '113.90', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556091738', '1556091738');
INSERT INTO `pm_order` VALUES ('1269', '8757', '', '82642846', '125.00', '', '0.00', '103.40', '0.00', '125.00', '0.00', '91.13', '21.60', '14.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557043245', '1557043245');
INSERT INTO `pm_order` VALUES ('559', '8684', '', '13786763', '34.00', '', '0.00', '16.00', '0.00', '34.00', '0.00', '27.60', '18.00', '12.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556090396', '1556090396');
INSERT INTO `pm_order` VALUES ('1222', '8882', '', '15705035', '106.00', '', '0.00', '99.40', '0.00', '106.00', '0.00', '103.50', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557021375', '1557021375');
INSERT INTO `pm_order` VALUES ('1221', '8928', '13927740088', '87867114', '125.90', '', '0.90', '125.90', '0.00', '0.00', '125.90', '0.00', '0.00', '11.25', '', '0', '', '0', '2', '4', '0', '0', '0', '1557021081', '1557021081');
INSERT INTO `pm_order` VALUES ('558', '8742', '', '85299892', '147.00', '', '0.00', '147.00', '0.00', '147.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556089733', '1556089733');
INSERT INTO `pm_order` VALUES ('557', '8801', '', '30067138', '280.74', '', '0.00', '233.94', '0.00', '280.74', '0.00', '235.10', '46.80', '31.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556087880', '1556087880');
INSERT INTO `pm_order` VALUES ('1270', '8665', '', '48622880', '79.14', '', '0.00', '71.60', '0.00', '79.14', '0.00', '70.40', '7.54', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557043507', '1557043507');
INSERT INTO `pm_order` VALUES ('1271', '8816', '', '16209670', '58.36', '', '0.00', '48.76', '0.00', '58.36', '0.00', '49.50', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557043552', '1557043552');
INSERT INTO `pm_order` VALUES ('1213', '8660', '', '80033343', '156.00', '', '0.00', '156.00', '0.00', '0.00', '156.00', '127.50', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557017055', '1557017055');
INSERT INTO `pm_order` VALUES ('556', '8757', '', '44117891', '357.00', '', '0.00', '357.00', '0.00', '357.00', '0.00', '292.50', '0.00', '35.10', 'ZA02818058299已退款', '0', '', '0', '3', '4', '0', '0', '0', '1556086757', '1556086757');
INSERT INTO `pm_order` VALUES ('965', '8982', '', '39931750', '24.60', '', '0.00', '24.60', '0.00', '24.60', '0.00', '18.00', '0.00', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556634240', '1556634240');
INSERT INTO `pm_order` VALUES ('963', '8982', '', '80777298', '88.20', '', '0.00', '82.20', '0.00', '88.20', '0.00', '80.40', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556633784', '1556633784');
INSERT INTO `pm_order` VALUES ('964', '8665', '', '93549350', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556633871', '1556633871');
INSERT INTO `pm_order` VALUES ('966', '8657', '18802783840', '64263309', '16.70', '', '0.00', '10.90', '0.00', '16.70', '0.00', '10.50', '5.80', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556634986', '1556634986');
INSERT INTO `pm_order` VALUES ('967', '8682', '', '76782611', '100.00', '', '0.00', '100.00', '0.00', '100.00', '0.00', '0.00', '0.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556637100', '1556637100');
INSERT INTO `pm_order` VALUES ('968', '8854', '', '27046632', '31.40', '', '0.00', '31.40', '0.00', '31.40', '0.00', '23.00', '0.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556669137', '1556669137');
INSERT INTO `pm_order` VALUES ('969', '8984', '', '28664957', '105.90', '', '0.90', '105.90', '0.00', '105.90', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556671736', '1556671736');
INSERT INTO `pm_order` VALUES ('970', '8756', '', '12596920', '117.67', '', '0.00', '102.07', '0.00', '117.67', '0.00', '95.04', '15.60', '10.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556672008', '1556672008');
INSERT INTO `pm_order` VALUES ('971', '8808', '', '60491826', '105.20', '', '0.00', '99.20', '0.00', '105.20', '0.00', '102.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556673043', '1556673043');
INSERT INTO `pm_order` VALUES ('972', '8678', '', '59735153', '29.60', '', '0.00', '23.60', '0.00', '29.60', '0.00', '25.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556675013', '1556675013');
INSERT INTO `pm_order` VALUES ('973', '8727', '0450300513', '78090743', '87.50', '', '0.00', '80.30', '0.00', '87.50', '0.00', '71.30', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556675381', '1556675381');
INSERT INTO `pm_order` VALUES ('974', '8964', '', '26675825', '258.64', '', '0.00', '225.00', '0.00', '0.00', '258.64', '230.00', '33.64', '23.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1556675623', '1556675623');
INSERT INTO `pm_order` VALUES ('975', '8861', '', '62334838', '211.80', '', '1.80', '211.80', '0.00', '211.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556676007', '1556676007');
INSERT INTO `pm_order` VALUES ('977', '8694', '', '97036058', '254.00', '', '0.00', '254.00', '0.00', '254.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556679181', '1556679181');
INSERT INTO `pm_order` VALUES ('978', '8864', '', '78953045', '312.00', '', '0.00', '312.00', '0.00', '312.00', '0.00', '255.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556679664', '1556679664');
INSERT INTO `pm_order` VALUES ('979', '8825', '', '60924377', '94.00', '', '0.00', '94.00', '0.00', '94.00', '0.00', '0.00', '0.00', '21.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556680124', '1556680124');
INSERT INTO `pm_order` VALUES ('980', '8864', '', '56642219', '242.00', '', '0.00', '242.00', '0.00', '242.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556681972', '1556681972');
INSERT INTO `pm_order` VALUES ('981', '8883', '', '57674592', '12.40', '', '0.00', '6.40', '0.00', '12.40', '0.00', '6.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556682330', '1556682330');
INSERT INTO `pm_order` VALUES ('982', '8906', '', '11436645', '204.00', '', '0.00', '204.00', '0.00', '0.00', '204.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556683159', '1556683159');
INSERT INTO `pm_order` VALUES ('983', '8692', '', '62404047', '37.50', '', '0.00', '27.90', '0.00', '37.50', '0.00', '28.80', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556685351', '1556685351');
INSERT INTO `pm_order` VALUES ('984', '8768', '', '15785518', '178.00', '', '0.00', '178.00', '0.00', '178.00', '0.00', '141.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556685519', '1556685519');
INSERT INTO `pm_order` VALUES ('985', '8768', '', '18792410', '88.60', '', '0.00', '81.40', '0.00', '88.60', '0.00', '85.20', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556685942', '1556685942');
INSERT INTO `pm_order` VALUES ('986', '8709', '', '94637233', '127.70', '', '0.00', '116.90', '0.00', '127.70', '0.00', '115.30', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556686412', '1556686412');
INSERT INTO `pm_order` VALUES ('987', '8825', '', '87490976', '54.50', '', '0.00', '46.70', '0.00', '54.50', '0.00', '50.50', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556688250', '1556688250');
INSERT INTO `pm_order` VALUES ('988', '8831', '', '12572781', '162.70', '', '0.00', '150.10', '0.00', '162.70', '0.00', '149.60', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556688571', '1556688571');
INSERT INTO `pm_order` VALUES ('989', '8943', '', '21986621', '308.45', '', '0.00', '301.25', '0.00', '308.45', '0.00', '85.20', '7.20', '28.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556688711', '1556688711');
INSERT INTO `pm_order` VALUES ('990', '8690', '17723080131', '62673912', '46.20', '', '0.00', '36.00', '0.00', '46.20', '0.00', '33.00', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556689935', '1556689935');
INSERT INTO `pm_order` VALUES ('991', '8725', '', '18820183', '120.20', '', '0.00', '107.20', '0.00', '120.20', '0.00', '98.50', '13.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556691466', '1556691466');
INSERT INTO `pm_order` VALUES ('992', '8725', '', '21386020', '50.30', '', '0.00', '41.30', '0.00', '50.30', '0.00', '40.46', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556692305', '1556692305');
INSERT INTO `pm_order` VALUES ('993', '8906', '', '41446897', '234.00', '', '0.00', '234.00', '0.00', '0.00', '234.00', '201.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556693946', '1556693946');
INSERT INTO `pm_order` VALUES ('997', '8906', '', '63955945', '228.00', '', '0.00', '228.00', '0.00', '0.00', '228.00', '0.00', '0.00', '50.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556694751', '1556694751');
INSERT INTO `pm_order` VALUES ('995', '8678', '', '85952378', '117.00', '', '0.00', '117.00', '0.00', '117.00', '0.00', '97.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556694505', '1556694505');
INSERT INTO `pm_order` VALUES ('996', '8832', '', '33397398', '420.00', '', '0.00', '420.00', '0.00', '420.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556694543', '1556694543');
INSERT INTO `pm_order` VALUES ('998', '8808', '', '21359459', '33.30', '', '0.00', '27.30', '0.00', '33.30', '0.00', '26.70', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556695466', '1556695466');
INSERT INTO `pm_order` VALUES ('1000', '8687', '', '11233957', '188.40', '', '0.00', '160.20', '0.00', '188.40', '0.00', '165.40', '28.20', '18.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556696596', '1556696596');
INSERT INTO `pm_order` VALUES ('1001', '8726', '', '72361792', '46.00', '', '0.00', '40.00', '0.00', '46.00', '0.00', '29.90', '6.00', '4.00', '', '0', '', '0', '3', '99', '0', '1', '0', '1556697678', '1556697678');
INSERT INTO `pm_order` VALUES ('1002', '8895', '18677236919', '25526646', '42.20', '', '0.00', '36.20', '0.00', '0.00', '42.20', '32.50', '6.00', '3.90', '', '0', '', '0', '2', '4', '0', '0', '0', '1556703791', '1556703791');
INSERT INTO `pm_order` VALUES ('1003', '8771', '', '67965308', '62.20', '', '0.00', '46.60', '0.00', '62.20', '0.00', '47.00', '15.60', '10.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556705715', '1556705715');
INSERT INTO `pm_order` VALUES ('1004', '8973', '', '62736983', '107.60', '', '0.00', '101.80', '0.00', '0.00', '107.60', '100.72', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1556706205', '1556706205');
INSERT INTO `pm_order` VALUES ('1005', '8979', '', '67784711', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556708682', '1556708682');
INSERT INTO `pm_order` VALUES ('1006', '8703', '', '53459107', '32.30', '', '0.00', '26.30', '0.00', '32.30', '0.00', '25.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556709306', '1556709306');
INSERT INTO `pm_order` VALUES ('1007', '8999', '', '81242041', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556709936', '1556709936');
INSERT INTO `pm_order` VALUES ('1008', '8979', '', '70089518', '80.10', '', '0.00', '74.10', '0.00', '80.10', '0.00', '73.40', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556710713', '1556710713');
INSERT INTO `pm_order` VALUES ('1009', '8752', '', '93697452', '171.20', '', '0.00', '165.20', '0.00', '171.20', '0.00', '0.00', '6.00', '15.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556711266', '1556711266');
INSERT INTO `pm_order` VALUES ('1010', '8962', '', '28657118', '61.80', '', '0.00', '55.80', '0.00', '61.80', '0.00', '55.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556712013', '1556712013');
INSERT INTO `pm_order` VALUES ('1011', '8690', '17723080131', '27625133', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556713530', '1556713530');
INSERT INTO `pm_order` VALUES ('1012', '8969', '', '98161417', '58.00', '', '0.00', '58.00', '0.00', '0.00', '58.00', '32.64', '0.00', '17.28', '', '0', '', '0', '2', '4', '0', '0', '0', '1556714348', '1556714348');
INSERT INTO `pm_order` VALUES ('1013', '8687', '', '93043005', '96.40', '', '0.00', '75.40', '0.00', '96.40', '0.00', '80.28', '21.00', '14.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556714981', '1556714981');
INSERT INTO `pm_order` VALUES ('1014', '8969', '', '57346438', '79.98', '', '0.00', '72.44', '0.00', '0.00', '79.98', '63.20', '7.54', '9.04', '', '0', '', '0', '2', '4', '0', '0', '0', '1556715382', '1556715382');
INSERT INTO `pm_order` VALUES ('1015', '8703', '', '96766928', '29.90', '', '0.00', '23.30', '0.00', '29.90', '0.00', '21.80', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556715626', '1556715626');
INSERT INTO `pm_order` VALUES ('1016', '8791', '', '63827322', '46.90', '', '0.00', '39.10', '0.00', '46.90', '0.00', '40.18', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556716160', '1556716160');
INSERT INTO `pm_order` VALUES ('1017', '8709', '', '67493413', '457.00', '', '0.00', '451.00', '0.00', '457.00', '0.00', '33.00', '6.00', '50.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556717756', '1556717756');
INSERT INTO `pm_order` VALUES ('1018', '8847', '', '93356962', '420.00', '', '0.00', '420.00', '0.00', '420.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556720842', '1556720842');
INSERT INTO `pm_order` VALUES ('1019', '8689', '', '18458384', '57.90', '', '0.90', '57.90', '0.00', '57.90', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556720898', '1556720898');
INSERT INTO `pm_order` VALUES ('1020', '8807', '', '28258782', '115.20', '', '0.00', '108.60', '0.00', '115.20', '0.00', '115.00', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556724473', '1556724473');
INSERT INTO `pm_order` VALUES ('1021', '8666', '', '93760514', '255.80', '', '1.80', '255.80', '0.00', '255.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556748543', '1556748543');
INSERT INTO `pm_order` VALUES ('1022', '8666', '', '41810106', '105.90', '', '0.90', '105.90', '0.00', '105.90', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556749564', '1556749564');
INSERT INTO `pm_order` VALUES ('1086', '8979', '', '99468382', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556842734', '1556842734');
INSERT INTO `pm_order` VALUES ('1024', '8934', '', '12723029', '125.00', '', '0.00', '125.00', '0.00', '0.00', '125.00', '0.00', '0.00', '11.25', '', '0', '', '0', '2', '4', '0', '0', '0', '1556756548', '1556756548');
INSERT INTO `pm_order` VALUES ('1025', '9001', '', '51740965', '819.00', '', '0.00', '819.00', '0.00', '819.00', '0.00', '703.50', '0.00', '81.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1556758140', '1556758140');
INSERT INTO `pm_order` VALUES ('1026', '8703', '', '55892930', '73.20', '', '0.00', '63.00', '0.00', '73.20', '0.00', '61.70', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556758337', '1556758337');
INSERT INTO `pm_order` VALUES ('1027', '8764', '0452578087', '86806845', '92.00', '', '0.00', '84.20', '0.00', '92.00', '0.00', '75.90', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556758355', '1556758355');
INSERT INTO `pm_order` VALUES ('1028', '8974', '', '97706048', '209.00', '', '0.00', '209.00', '0.00', '209.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556760951', '1556760951');
INSERT INTO `pm_order` VALUES ('1029', '8673', '', '67541177', '127.00', '', '0.00', '127.00', '0.00', '127.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556762018', '1556762018');
INSERT INTO `pm_order` VALUES ('1030', '8745', '', '22731489', '56.50', '', '0.00', '56.50', '0.00', '56.50', '0.00', '0.00', '0.00', '11.25', '', '0', '', '0', '3', '4', '0', '0', '0', '1556762548', '1556762548');
INSERT INTO `pm_order` VALUES ('1031', '8726', '', '10205283', '51.80', '', '0.00', '45.80', '0.00', '51.80', '0.00', '43.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556762633', '1556762633');
INSERT INTO `pm_order` VALUES ('1032', '8690', '17723080131', '12053381', '141.60', '', '0.00', '129.60', '0.00', '141.60', '0.00', '119.00', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556762859', '1556762859');
INSERT INTO `pm_order` VALUES ('1033', '8716', '', '99672931', '500.00', '', '0.00', '500.00', '0.00', '500.00', '0.00', '0.00', '0.00', '45.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556764634', '1556764634');
INSERT INTO `pm_order` VALUES ('1034', '8756', '', '22985946', '38.00', '', '0.00', '32.00', '0.00', '38.00', '0.00', '39.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556766109', '1556766109');
INSERT INTO `pm_order` VALUES ('1035', '9001', '', '51044938', '44.20', '', '0.00', '38.20', '0.00', '44.20', '0.00', '38.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556766118', '1556766118');
INSERT INTO `pm_order` VALUES ('1036', '8825', '', '34796354', '35.20', '', '0.00', '29.20', '0.00', '35.20', '0.00', '0.00', '6.00', '3.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556766188', '1556766188');
INSERT INTO `pm_order` VALUES ('1037', '9001', '', '74952075', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556766346', '1556766346');
INSERT INTO `pm_order` VALUES ('1038', '8916', '', '34642281', '113.00', '', '0.00', '101.40', '0.00', '0.00', '113.00', '102.80', '11.60', '8.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1556766899', '1556766899');
INSERT INTO `pm_order` VALUES ('1039', '8916', '', '58201424', '95.16', '', '0.00', '79.50', '0.00', '0.00', '95.16', '81.50', '15.66', '10.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1556767051', '1556767051');
INSERT INTO `pm_order` VALUES ('1040', '8916', '', '70697911', '209.00', '', '0.00', '209.00', '0.00', '0.00', '209.00', '0.00', '0.00', '23.40', '70697911重新下单', '0', '', '0', '2', '99', '0', '1', '0', '1556767295', '1556767295');
INSERT INTO `pm_order` VALUES ('1041', '8823', '', '43472394', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556767430', '1556767430');
INSERT INTO `pm_order` VALUES ('1042', '8916', '', '75719801', '43.20', '', '0.00', '37.20', '0.00', '0.00', '43.20', '0.00', '6.00', '3.90', '', '0', '', '0', '2', '4', '0', '0', '0', '1556767761', '1556767761');
INSERT INTO `pm_order` VALUES ('1043', '8756', '', '13255540', '80.40', '', '0.00', '72.60', '0.00', '80.40', '0.00', '68.00', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556768042', '1556768042');
INSERT INTO `pm_order` VALUES ('1044', '8756', '', '39071754', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '44.00', '0.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556768323', '1556768323');
INSERT INTO `pm_order` VALUES ('1045', '8663', 'admin1', '96939573', '103.00', '', '0.00', '103.00', '0.00', '103.00', '0.00', '0.00', '0.00', '11.25', '', '0', '', '0', '3', '4', '0', '0', '0', '1556769448', '1556769448');
INSERT INTO `pm_order` VALUES ('1046', '8756', '', '82490193', '88.40', '', '0.00', '76.40', '0.00', '88.40', '0.00', '0.00', '12.00', '7.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556770291', '1556770291');
INSERT INTO `pm_order` VALUES ('1047', '8970', '', '87455786', '81.23', '', '0.00', '74.85', '0.00', '0.00', '81.23', '74.78', '6.38', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556770352', '1556770352');
INSERT INTO `pm_order` VALUES ('1048', '8970', '', '96816947', '70.00', '', '0.00', '70.00', '0.00', '0.00', '70.00', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1556770382', '1556770382');
INSERT INTO `pm_order` VALUES ('1049', '8756', '', '69352895', '128.70', '', '0.00', '122.10', '0.00', '128.70', '0.00', '115.60', '6.60', '10.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556771189', '1556771189');
INSERT INTO `pm_order` VALUES ('1050', '8921', '', '88086138', '35.20', '', '0.00', '29.20', '0.00', '35.20', '0.00', '0.00', '6.00', '3.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556771634', '1556771634');
INSERT INTO `pm_order` VALUES ('1051', '9009', '', '46191193', '107.50', '', '0.00', '107.50', '0.00', '107.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556772295', '1556772295');
INSERT INTO `pm_order` VALUES ('1052', '8944', '', '60663956', '49.80', '', '0.00', '44.00', '0.00', '0.00', '49.80', '46.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1556773027', '1556773027');
INSERT INTO `pm_order` VALUES ('1053', '8792', '', '71363829', '176.00', '', '0.00', '152.00', '0.00', '176.00', '0.00', '153.00', '24.00', '16.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556773385', '1556773385');
INSERT INTO `pm_order` VALUES ('1054', '8916', '', '72866614', '210.80', '', '1.80', '210.80', '0.00', '0.00', '210.80', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556773815', '1556773815');
INSERT INTO `pm_order` VALUES ('1055', '9011', '', '63984890', '78.00', '', '0.00', '78.00', '0.00', '0.00', '78.00', '63.75', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1556774547', '1556774547');
INSERT INTO `pm_order` VALUES ('1056', '8808', '', '46001516', '72.36', '', '0.00', '66.36', '0.00', '72.36', '0.00', '67.40', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556777195', '1556777195');
INSERT INTO `pm_order` VALUES ('1057', '9014', '', '39083626', '155.40', '', '0.00', '135.00', '0.00', '155.40', '0.00', '138.00', '20.40', '13.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556777397', '1556777397');
INSERT INTO `pm_order` VALUES ('1058', '8969', '', '63789111', '25.80', '', '0.00', '25.80', '0.00', '0.00', '25.80', '19.00', '0.00', '5.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1556777836', '1556777836');
INSERT INTO `pm_order` VALUES ('1059', '8969', '', '68492234', '51.58', '', '0.00', '42.88', '0.00', '0.00', '51.58', '44.00', '8.70', '6.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1556778439', '1556778439');
INSERT INTO `pm_order` VALUES ('1060', '8906', '', '97318829', '61.00', '', '0.00', '61.00', '0.00', '0.00', '61.00', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1556780454', '1556780454');
INSERT INTO `pm_order` VALUES ('1061', '8927', '', '40702190', '120.50', '', '0.00', '113.90', '0.00', '120.50', '0.00', '111.20', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556782280', '1556782280');
INSERT INTO `pm_order` VALUES ('1062', '8895', '18677236919', '74577603', '14.70', '', '0.00', '6.00', '0.00', '0.00', '14.70', '6.00', '8.70', '6.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1556783208', '1556783208');
INSERT INTO `pm_order` VALUES ('1063', '8959', '', '62629143', '89.00', '', '0.00', '89.00', '0.00', '89.00', '0.00', '70.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556783281', '1556783281');
INSERT INTO `pm_order` VALUES ('1064', '8906', '', '46853214', '337.58', '', '0.00', '319.60', '0.00', '0.00', '337.58', '334.00', '17.98', '12.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556785400', '1556785400');
INSERT INTO `pm_order` VALUES ('1065', '8997', '', '73746379', '228.30', '', '0.00', '222.30', '0.00', '228.30', '0.00', '186.30', '6.00', '29.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556787573', '1556787573');
INSERT INTO `pm_order` VALUES ('1066', '8697', '', '24104451', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '44.00', '0.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556789625', '1556789625');
INSERT INTO `pm_order` VALUES ('1067', '8665', '', '41840299', '205.80', '', '1.80', '205.80', '0.00', '205.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556790070', '1556790070');
INSERT INTO `pm_order` VALUES ('1068', '8921', '', '35875897', '57.80', '', '0.00', '51.80', '0.00', '57.80', '0.00', '53.30', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556795300', '1556795300');
INSERT INTO `pm_order` VALUES ('1069', '8921', '', '88566699', '90.60', '', '0.00', '74.40', '0.00', '90.60', '0.00', '72.58', '16.20', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556795773', '1556795773');
INSERT INTO `pm_order` VALUES ('1070', '8692', '', '98816701', '70.00', '', '0.00', '64.00', '0.00', '70.00', '0.00', '65.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556796590', '1556796590');
INSERT INTO `pm_order` VALUES ('1071', '8727', '0450300513', '23252568', '105.00', '', '0.00', '105.00', '0.00', '105.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556796957', '1556796957');
INSERT INTO `pm_order` VALUES ('1072', '8727', '0450300513', '20801909', '40.40', '', '0.00', '32.00', '0.00', '40.40', '0.00', '31.60', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556797088', '1556797088');
INSERT INTO `pm_order` VALUES ('1073', '8694', '', '90147071', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '201.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556798350', '1556798350');
INSERT INTO `pm_order` VALUES ('1074', '8935', '', '80929520', '204.00', '', '0.00', '204.00', '0.00', '0.00', '204.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556800504', '1556800504');
INSERT INTO `pm_order` VALUES ('1075', '8928', '13927740088', '80332055', '36.20', '', '0.00', '30.20', '0.00', '0.00', '36.20', '0.00', '6.00', '3.90', '', '0', '', '0', '2', '4', '0', '0', '0', '1556803500', '1556803500');
INSERT INTO `pm_order` VALUES ('1076', '8730', '', '42014601', '127.00', '', '0.00', '127.00', '0.00', '127.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556804368', '1556804368');
INSERT INTO `pm_order` VALUES ('1077', '8956', '', '70950742', '423.60', '', '3.60', '423.60', '0.00', '423.60', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556805873', '1556805873');
INSERT INTO `pm_order` VALUES ('1078', '9014', '', '64665753', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556805966', '1556805966');
INSERT INTO `pm_order` VALUES ('1079', '8687', '', '22285363', '77.70', '', '0.00', '71.70', '0.00', '77.70', '0.00', '75.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556808546', '1556808546');
INSERT INTO `pm_order` VALUES ('1146', '8954', '', '33806746', '86.90', '', '0.00', '63.50', '0.00', '86.90', '0.00', '64.20', '23.40', '15.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556899086', '1556899086');
INSERT INTO `pm_order` VALUES ('1081', '9005', '', '78885799', '30.00', '', '0.00', '30.00', '0.00', '30.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556809264', '1556809264');
INSERT INTO `pm_order` VALUES ('1083', '9005', '', '62494726', '11.00', '', '0.00', '5.00', '0.00', '11.00', '0.00', '11.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556810069', '1556810069');
INSERT INTO `pm_order` VALUES ('1084', '8932', '', '91874553', '254.00', '', '0.00', '254.00', '0.00', '254.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556812186', '1556812186');
INSERT INTO `pm_order` VALUES ('1085', '8658', 'admin', '80373040', '70.32', '', '0.00', '62.20', '0.00', '0.00', '70.32', '64.70', '8.12', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1556815018', '1556815018');
INSERT INTO `pm_order` VALUES ('1087', '8740', '', '64110573', '630.00', '', '0.00', '630.00', '0.00', '630.00', '0.00', '0.00', '0.00', '70.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556845016', '1556845016');
INSERT INTO `pm_order` VALUES ('1088', '8813', '', '23902958', '41.40', '', '0.00', '29.40', '0.00', '41.40', '0.00', '0.00', '12.00', '7.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1556848178', '1556848178');
INSERT INTO `pm_order` VALUES ('1089', '8687', '', '19213958', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556849471', '1556849471');
INSERT INTO `pm_order` VALUES ('1090', '8655', '0424080930', '23025887', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556850460', '1556850460');
INSERT INTO `pm_order` VALUES ('1091', '9017', '', '73372348', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556850625', '1556850625');
INSERT INTO `pm_order` VALUES ('1092', '8677', 'admin3', '80154393', '102.00', '', '0.00', '102.00', '0.00', '102.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556852102', '1556852102');
INSERT INTO `pm_order` VALUES ('1093', '8677', 'admin3', '78124696', '312.00', '', '0.00', '312.00', '0.00', '312.00', '0.00', '255.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556852374', '1556852374');
INSERT INTO `pm_order` VALUES ('1094', '8898', '', '28151064', '57.00', '', '0.00', '57.00', '0.00', '0.00', '57.00', '0.00', '0.00', '12.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1556852814', '1556852814');
INSERT INTO `pm_order` VALUES ('1095', '8677', 'admin3', '49432940', '46.60', '', '0.00', '33.60', '0.00', '46.60', '0.00', '0.00', '13.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556852927', '1556852927');
INSERT INTO `pm_order` VALUES ('1096', '8854', '', '50386713', '134.70', '', '0.00', '114.90', '0.00', '134.70', '0.00', '117.00', '19.80', '13.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556853096', '1556853096');
INSERT INTO `pm_order` VALUES ('1097', '8677', 'admin3', '59290024', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556853222', '1556853222');
INSERT INTO `pm_order` VALUES ('1098', '8666', '', '63823196', '353.70', '', '2.70', '353.70', '0.00', '353.70', '0.00', '295.50', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1556853281', '1556853281');
INSERT INTO `pm_order` VALUES ('1099', '8677', 'admin3', '56070784', '117.00', '', '0.00', '117.00', '0.00', '117.00', '0.00', '100.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556853539', '1556853539');
INSERT INTO `pm_order` VALUES ('1100', '8854', '', '89771879', '155.40', '', '0.00', '155.40', '0.00', '155.40', '0.00', '144.00', '0.00', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556853572', '1556853572');
INSERT INTO `pm_order` VALUES ('1104', '8677', 'admin3', '48936776', '510.00', '', '0.00', '510.00', '0.00', '510.00', '0.00', '0.00', '0.00', '58.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1556854561', '1556854561');
INSERT INTO `pm_order` VALUES ('1102', '8677', 'admin3', '39213987', '612.00', '', '0.00', '612.00', '0.00', '612.00', '0.00', '0.00', '0.00', '70.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556853960', '1556853960');
INSERT INTO `pm_order` VALUES ('1103', '8677', 'admin3', '46768155', '204.00', '', '0.00', '204.00', '0.00', '204.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556854203', '1556854203');
INSERT INTO `pm_order` VALUES ('1105', '8782', '', '74403806', '35.00', '', '0.00', '29.00', '0.00', '35.00', '0.00', '29.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556855551', '1556855551');
INSERT INTO `pm_order` VALUES ('1106', '8898', '', '61973952', '57.00', '', '0.00', '57.00', '0.00', '0.00', '57.00', '0.00', '0.00', '12.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1556856344', '1556856344');
INSERT INTO `pm_order` VALUES ('1107', '8898', '', '80279659', '61.68', '', '0.00', '46.60', '0.00', '0.00', '61.68', '47.00', '15.08', '10.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556856712', '1556856712');
INSERT INTO `pm_order` VALUES ('1108', '8663', 'admin1', '78587499', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556857667', '1556857667');
INSERT INTO `pm_order` VALUES ('1111', '8898', '', '66192683', '71.60', '', '0.00', '59.60', '0.00', '0.00', '71.60', '0.00', '12.00', '7.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1556860689', '1556860689');
INSERT INTO `pm_order` VALUES ('1110', '8955', '', '79266168', '24.00', '', '0.00', '18.00', '0.00', '24.00', '0.00', '15.30', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556860155', '1556860155');
INSERT INTO `pm_order` VALUES ('1112', '8898', '', '25399289', '84.10', '', '1.50', '78.30', '0.00', '0.00', '84.10', '78.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1556861254', '1556861254');
INSERT INTO `pm_order` VALUES ('1113', '8898', '', '57205120', '100.30', '', '1.50', '94.50', '0.00', '0.00', '100.30', '99.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1556861370', '1556861370');
INSERT INTO `pm_order` VALUES ('1114', '8741', '0449109488', '97260045', '226.40', '', '0.00', '218.00', '0.00', '226.40', '0.00', '185.50', '8.40', '29.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556862091', '1556862091');
INSERT INTO `pm_order` VALUES ('1115', '8677', 'admin3', '52260860', '351.00', '', '0.00', '351.00', '0.00', '351.00', '0.00', '301.50', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1556862238', '1556862238');
INSERT INTO `pm_order` VALUES ('1116', '8901', '', '43392339', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556862498', '1556862498');
INSERT INTO `pm_order` VALUES ('1118', '8684', '', '97265352', '89.20', '', '0.00', '83.20', '0.00', '89.20', '0.00', '86.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556864215', '1556864215');
INSERT INTO `pm_order` VALUES ('1119', '8677', 'admin3', '19088927', '418.00', '', '0.00', '418.00', '0.00', '418.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556865264', '1556865264');
INSERT INTO `pm_order` VALUES ('1120', '9000', '0478889876', '69319551', '101.08', '', '0.00', '88.90', '0.00', '0.00', '101.08', '95.00', '12.18', '8.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556865401', '1556865401');
INSERT INTO `pm_order` VALUES ('1121', '9000', '0478889876', '32495835', '127.74', '', '0.00', '108.60', '0.00', '0.00', '127.74', '102.95', '19.14', '13.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1556865719', '1556865719');
INSERT INTO `pm_order` VALUES ('1122', '8769', '', '73538013', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556865809', '1556865809');
INSERT INTO `pm_order` VALUES ('1123', '9000', '0478889876', '70301247', '115.22', '', '0.00', '104.20', '0.00', '0.00', '115.22', '107.36', '11.02', '7.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1556866649', '1556866649');
INSERT INTO `pm_order` VALUES ('1124', '8666', '', '76110479', '423.60', '', '3.60', '423.60', '0.00', '423.60', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556866722', '1556866722');
INSERT INTO `pm_order` VALUES ('1125', '9000', '0478889876', '38880843', '137.50', '', '0.00', '125.90', '0.00', '0.00', '137.50', '125.10', '11.60', '8.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1556866954', '1556866954');
INSERT INTO `pm_order` VALUES ('1126', '9000', '0478889876', '50214923', '99.28', '', '0.00', '81.30', '0.00', '0.00', '99.28', '80.48', '17.98', '12.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556867294', '1556867294');
INSERT INTO `pm_order` VALUES ('1127', '8938', '', '55669756', '117.00', '', '0.00', '117.00', '0.00', '117.00', '0.00', '97.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556868635', '1556868635');
INSERT INTO `pm_order` VALUES ('1128', '8898', '', '47677420', '92.92', '', '0.00', '84.80', '0.00', '0.00', '92.92', '84.80', '8.12', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1556869685', '1556869685');
INSERT INTO `pm_order` VALUES ('1129', '8895', '18677236919', '97400964', '204.00', '', '0.00', '204.00', '0.00', '0.00', '204.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556871753', '1556871753');
INSERT INTO `pm_order` VALUES ('1130', '8930', '', '15665469', '104.50', '', '0.00', '104.50', '0.00', '0.00', '104.50', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1556872640', '1556872640');
INSERT INTO `pm_order` VALUES ('1131', '8666', '', '14779331', '127.90', '', '0.90', '127.90', '0.00', '127.90', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556872949', '1556872949');
INSERT INTO `pm_order` VALUES ('1132', '8774', '', '20311271', '119.40', '', '0.00', '101.40', '0.00', '119.40', '0.00', '0.00', '18.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556874584', '1556874584');
INSERT INTO `pm_order` VALUES ('1133', '8673', '', '10708468', '117.00', '', '0.00', '117.00', '0.00', '117.00', '0.00', '97.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556877874', '1556877874');
INSERT INTO `pm_order` VALUES ('1134', '8807', '', '25286933', '111.90', '', '0.00', '105.90', '0.00', '111.90', '0.00', '111.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556878058', '1556878058');
INSERT INTO `pm_order` VALUES ('1135', '8673', '', '88128207', '55.10', '', '0.00', '46.10', '0.00', '55.10', '0.00', '48.00', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556878230', '1556878230');
INSERT INTO `pm_order` VALUES ('1136', '8673', '', '50333230', '44.00', '', '0.00', '38.00', '0.00', '44.00', '0.00', '35.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556879994', '1556879994');
INSERT INTO `pm_order` VALUES ('1137', '9036', '', '98245852', '89.00', '', '0.00', '89.00', '0.00', '89.00', '0.00', '70.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556882259', '1556882259');
INSERT INTO `pm_order` VALUES ('1138', '8898', '', '45761608', '121.58', '', '2.00', '115.20', '0.00', '0.00', '121.58', '118.00', '6.38', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556887190', '1556887190');
INSERT INTO `pm_order` VALUES ('1139', '8898', '', '65878703', '243.16', '', '4.00', '230.40', '0.00', '0.00', '243.16', '236.00', '12.76', '8.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1556887350', '1556887350');
INSERT INTO `pm_order` VALUES ('1140', '8666', '', '42157709', '121.70', '', '0.00', '115.70', '0.00', '121.70', '0.00', '96.50', '6.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556888538', '1556888538');
INSERT INTO `pm_order` VALUES ('1141', '8757', '', '76766399', '86.00', '', '0.00', '86.00', '0.00', '86.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556890401', '1556890401');
INSERT INTO `pm_order` VALUES ('1142', '8973', '', '36267256', '82.16', '', '0.00', '69.40', '0.00', '0.00', '82.16', '70.40', '12.76', '8.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1556890934', '1556890934');
INSERT INTO `pm_order` VALUES ('1143', '8757', '', '24503035', '63.60', '', '0.00', '55.20', '0.00', '63.60', '0.00', '50.75', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556891575', '1556891575');
INSERT INTO `pm_order` VALUES ('1144', '8930', '', '19024384', '88.00', '', '0.00', '88.00', '0.00', '0.00', '88.00', '0.00', '0.00', '21.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1556893206', '1556893206');
INSERT INTO `pm_order` VALUES ('1145', '8923', '', '98758947', '100.70', '', '0.00', '83.30', '0.00', '0.00', '100.70', '84.40', '17.40', '12.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1556893724', '1556893724');
INSERT INTO `pm_order` VALUES ('1147', '8822', '', '78370214', '83.64', '', '0.00', '77.64', '0.00', '83.64', '0.00', '79.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556927766', '1556927766');
INSERT INTO `pm_order` VALUES ('1148', '8771', '', '99545164', '42.50', '', '0.00', '36.50', '0.00', '42.50', '0.00', '39.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556929103', '1556929103');
INSERT INTO `pm_order` VALUES ('1149', '8673', '', '33506223', '127.00', '', '0.00', '127.00', '0.00', '127.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556931619', '1556931619');
INSERT INTO `pm_order` VALUES ('1150', '8690', '17723080131', '23551489', '93.40', '', '0.00', '67.60', '0.00', '93.40', '0.00', '68.80', '25.80', '17.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556933232', '1556933232');
INSERT INTO `pm_order` VALUES ('1151', '8895', '18677236919', '63227571', '44.00', '', '0.00', '44.00', '0.00', '0.00', '44.00', '0.00', '0.00', '10.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1556933433', '1556933433');
INSERT INTO `pm_order` VALUES ('1191', '8883', '', '79870657', '42.50', '', '0.00', '36.50', '0.00', '42.50', '0.00', '39.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556969563', '1556969563');
INSERT INTO `pm_order` VALUES ('1153', '8655', '0424080930', '85013358', '17.80', '', '0.00', '12.00', '0.00', '17.80', '0.00', '10.00', '5.80', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556935701', '1556935701');
INSERT INTO `pm_order` VALUES ('1154', '8655', '0424080930', '72440248', '46.70', '', '0.00', '38.00', '0.00', '46.70', '0.00', '38.80', '8.70', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556935871', '1556935871');
INSERT INTO `pm_order` VALUES ('1155', '8813', '', '39085542', '153.90', '', '0.00', '137.10', '0.00', '153.90', '0.00', '136.37', '16.80', '11.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556937285', '1556937285');
INSERT INTO `pm_order` VALUES ('1156', '8677', 'admin3', '46389874', '117.00', '', '0.00', '117.00', '0.00', '117.00', '0.00', '97.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556937537', '1556937537');
INSERT INTO `pm_order` VALUES ('1157', '8677', 'admin3', '48980974', '204.00', '', '0.00', '204.00', '0.00', '204.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556937702', '1556937702');
INSERT INTO `pm_order` VALUES ('1158', '8677', 'admin3', '17576851', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556937818', '1556937818');
INSERT INTO `pm_order` VALUES ('1231', '8882', '', '57980834', '210.80', '', '1.80', '210.80', '0.00', '210.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557025255', '1557025255');
INSERT INTO `pm_order` VALUES ('1160', '8785', '', '88497330', '254.00', '', '0.00', '254.00', '0.00', '254.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556938379', '1556938379');
INSERT INTO `pm_order` VALUES ('1161', '9000', '0478889876', '50786570', '87.50', '', '0.00', '87.50', '0.00', '0.00', '87.50', '75.00', '0.00', '11.28', '', '0', '', '0', '2', '4', '0', '0', '0', '1556939772', '1556939772');
INSERT INTO `pm_order` VALUES ('1162', '9038', '', '15349361', '127.40', '', '0.00', '106.40', '0.00', '127.40', '0.00', '110.80', '21.00', '14.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556940385', '1556940385');
INSERT INTO `pm_order` VALUES ('1163', '8924', '', '17782845', '165.50', '', '0.00', '131.30', '0.00', '165.50', '0.00', '129.10', '34.20', '22.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556940769', '1556940769');
INSERT INTO `pm_order` VALUES ('1164', '8921', '', '33298204', '261.00', '', '0.00', '261.00', '0.00', '261.00', '0.00', '130.50', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1556941282', '1556941282');
INSERT INTO `pm_order` VALUES ('1165', '8808', '', '66770578', '80.70', '', '0.00', '74.70', '0.00', '80.70', '0.00', '73.29', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556942088', '1556942088');
INSERT INTO `pm_order` VALUES ('1166', '8898', '', '35277275', '46.60', '', '0.00', '33.60', '0.00', '0.00', '46.60', '0.00', '13.00', '10.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1556943106', '1556943106');
INSERT INTO `pm_order` VALUES ('1167', '8898', '', '72671848', '46.00', '', '0.00', '46.00', '0.00', '0.00', '46.00', '0.00', '0.00', '10.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1556943192', '1556943192');
INSERT INTO `pm_order` VALUES ('1168', '8769', '', '81578882', '63.00', '', '0.00', '57.00', '0.00', '63.00', '0.00', '56.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556946617', '1556946617');
INSERT INTO `pm_order` VALUES ('1169', '8660', '', '34578590', '372.00', '', '0.00', '372.00', '0.00', '0.00', '372.00', '0.00', '0.00', '35.10', '', '0', '', '0', '2', '4', '0', '0', '0', '1556947028', '1556947028');
INSERT INTO `pm_order` VALUES ('1170', '8688', '0452066651', '93631698', '94.00', '', '0.00', '94.00', '0.00', '94.00', '0.00', '0.00', '0.00', '21.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556948624', '1556948624');
INSERT INTO `pm_order` VALUES ('1171', '8687', '', '97385653', '45.30', '', '0.00', '39.30', '0.00', '45.30', '0.00', '22.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556948870', '1556948870');
INSERT INTO `pm_order` VALUES ('1172', '8757', '', '84835447', '105.00', '', '0.00', '105.00', '0.00', '105.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556949059', '1556949059');
INSERT INTO `pm_order` VALUES ('1173', '8677', 'admin3', '54537286', '408.00', '', '0.00', '408.00', '0.00', '408.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556949222', '1556949222');
INSERT INTO `pm_order` VALUES ('1174', '8677', 'admin3', '48531467', '209.00', '', '0.00', '209.00', '0.00', '209.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556949452', '1556949452');
INSERT INTO `pm_order` VALUES ('1175', '8677', 'admin3', '20027300', '121.00', '', '0.00', '121.00', '0.00', '121.00', '0.00', '97.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556949807', '1556949807');
INSERT INTO `pm_order` VALUES ('1176', '8677', 'admin3', '81739473', '468.00', '', '0.00', '468.00', '0.00', '468.00', '0.00', '390.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556949930', '1556949930');
INSERT INTO `pm_order` VALUES ('1177', '8687', '', '44892069', '250.00', '', '0.00', '250.00', '0.00', '250.00', '0.00', '0.00', '0.00', '22.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1556950275', '1556950275');
INSERT INTO `pm_order` VALUES ('1179', '8694', '', '88834293', '49.60', '', '0.00', '43.60', '0.00', '49.60', '0.00', '46.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556951437', '1556951437');
INSERT INTO `pm_order` VALUES ('1180', '8906', '', '61813297', '408.00', '', '0.00', '408.00', '0.00', '0.00', '408.00', '0.00', '0.00', '46.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1556953397', '1556953397');
INSERT INTO `pm_order` VALUES ('1181', '8792', '', '85353946', '21.80', '', '0.00', '14.80', '0.00', '21.80', '0.00', '0.00', '7.00', '4.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556955639', '1556955639');
INSERT INTO `pm_order` VALUES ('1182', '8792', '', '94557734', '71.60', '', '0.00', '65.60', '0.00', '71.60', '0.00', '63.30', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556955939', '1556955939');
INSERT INTO `pm_order` VALUES ('1183', '8921', '', '66786693', '54.70', '', '0.00', '48.70', '0.00', '54.70', '0.00', '40.80', '6.00', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556960162', '1556960162');
INSERT INTO `pm_order` VALUES ('1184', '8898', '', '79691767', '57.00', '', '0.00', '57.00', '0.00', '0.00', '57.00', '0.00', '0.00', '12.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1556961311', '1556961311');
INSERT INTO `pm_order` VALUES ('1185', '8898', '', '89376680', '204.00', '', '0.00', '204.00', '0.00', '0.00', '204.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556962771', '1556962771');
INSERT INTO `pm_order` VALUES ('1186', '8769', '', '85509264', '105.00', '', '0.00', '105.00', '0.00', '105.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556967430', '1556967430');
INSERT INTO `pm_order` VALUES ('555', '8714', '', '57227535', '147.00', '', '0.00', '147.00', '0.00', '147.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556086208', '1556086208');
INSERT INTO `pm_order` VALUES ('1252', '8916', '', '65581461', '42.20', '', '0.00', '36.20', '0.00', '39.04', '3.16', '32.50', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1557037657', '1557037657');
INSERT INTO `pm_order` VALUES ('1253', '8677', 'admin3', '43223839', '510.00', '', '0.00', '510.00', '0.00', '510.00', '0.00', '0.00', '0.00', '58.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1557037703', '1557037703');
INSERT INTO `pm_order` VALUES ('1251', '8916', '', '54994709', '33.62', '', '0.00', '25.50', '0.00', '0.00', '33.62', '25.10', '8.12', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557037604', '1557037604');
INSERT INTO `pm_order` VALUES ('554', '8731', '', '44188735', '22.10', '', '0.00', '16.10', '0.00', '22.10', '0.00', '15.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556085317', '1556085317');
INSERT INTO `pm_order` VALUES ('553', '8688', '0452066651', '40547503', '260.70', '', '0.00', '254.70', '0.00', '260.70', '0.00', '80.90', '6.00', '26.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1556084222', '1556084222');
INSERT INTO `pm_order` VALUES ('1268', '8757', '', '20136695', '77.50', '', '0.00', '71.50', '0.00', '77.50', '0.00', '72.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557042163', '1557042163');
INSERT INTO `pm_order` VALUES ('1267', '8914', '0431471764', '25858437', '70.80', '', '0.00', '65.00', '0.00', '0.00', '70.80', '65.90', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557041968', '1557041968');
INSERT INTO `pm_order` VALUES ('1266', '8903', '', '56136094', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '201.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557041714', '1557041714');
INSERT INTO `pm_order` VALUES ('1258', '8727', '0450300513', '57259153', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557038501', '1557038501');
INSERT INTO `pm_order` VALUES ('1257', '8677', 'admin3', '80078013', '204.00', '', '0.00', '204.00', '0.00', '204.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557038217', '1557038217');
INSERT INTO `pm_order` VALUES ('1256', '8970', '', '64368991', '70.80', '', '0.00', '65.00', '0.00', '0.00', '70.80', '68.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557038141', '1557038141');
INSERT INTO `pm_order` VALUES ('1246', '9060', '', '24772478', '100.00', '', '0.00', '87.40', '0.00', '100.00', '0.00', '83.30', '12.60', '8.40', '', '3', '/uploads/20190505/cc4ef1e847b7246f89d2386fdc2e87e4.jpg', '0', '4', '4', '0', '0', '0', '1557035493', '1557035493');
INSERT INTO `pm_order` VALUES ('1247', '9060', '', '48567063', '71.80', '', '0.00', '62.20', '0.00', '71.80', '0.00', '60.40', '9.60', '6.40', '', '3', '/uploads/20190505/c4e5c48c701db40d656c38fbfdce598a.jpg', '0', '4', '4', '0', '0', '0', '1557035899', '1557035899');
INSERT INTO `pm_order` VALUES ('1248', '8944', '', '36095677', '258.70', '', '2.70', '258.70', '0.00', '0.00', '258.70', '204.75', '0.00', '35.10', '', '0', '', '0', '2', '4', '0', '0', '0', '1557036450', '1557036450');
INSERT INTO `pm_order` VALUES ('1249', '8777', '', '18671984', '383.70', '', '2.70', '383.70', '0.00', '383.70', '0.00', '0.00', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1557036534', '1557036534');
INSERT INTO `pm_order` VALUES ('448', '8666', '', '38841819', '46.80', '', '0.00', '40.80', '0.00', '46.80', '0.00', '39.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1555572719', '1555572719');
INSERT INTO `pm_order` VALUES ('1261', '8727', '0450300513', '44050911', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '65.25', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557039063', '1557039063');
INSERT INTO `pm_order` VALUES ('552', '8797', '', '58388518', '18.00', '', '0.00', '12.00', '0.00', '18.00', '0.00', '12.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556083033', '1556083033');
INSERT INTO `pm_order` VALUES ('1254', '8677', 'admin3', '89220632', '306.00', '', '0.00', '306.00', '0.00', '306.00', '0.00', '0.00', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1557037833', '1557037833');
INSERT INTO `pm_order` VALUES ('1255', '9008', '', '87795201', '65.00', '', '0.00', '53.00', '0.00', '65.00', '0.00', '49.50', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557037983', '1557037983');
INSERT INTO `pm_order` VALUES ('551', '8677', 'admin3', '66430726', '222.00', '', '0.00', '222.00', '0.00', '222.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556078450', '1556078450');
INSERT INTO `pm_order` VALUES ('550', '8678', '', '74285907', '58.20', '', '0.00', '51.60', '0.00', '58.20', '0.00', '49.70', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556078251', '1556078251');
INSERT INTO `pm_order` VALUES ('1262', '8935', '', '40023961', '135.56', '', '0.00', '125.70', '0.00', '0.00', '135.56', '92.80', '9.86', '6.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557039499', '1557039499');
INSERT INTO `pm_order` VALUES ('611', '8721', '', '75081985', '48.50', '', '0.00', '48.50', '0.00', '48.50', '0.00', '0.00', '0.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556164778', '1556164778');
INSERT INTO `pm_order` VALUES ('1242', '8725', '', '71438222', '29.50', '', '0.00', '23.50', '0.00', '29.50', '0.00', '24.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557034365', '1557034365');
INSERT INTO `pm_order` VALUES ('1243', '8725', '', '92829719', '17.40', '', '0.00', '11.40', '0.00', '17.40', '0.00', '11.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557034574', '1557034574');
INSERT INTO `pm_order` VALUES ('1244', '8962', '', '30145996', '47.30', '', '0.00', '41.30', '0.00', '47.30', '0.00', '42.90', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557034781', '1557034781');
INSERT INTO `pm_order` VALUES ('1245', '9060', '', '92635252', '106.70', '', '0.00', '93.50', '0.00', '106.70', '0.00', '88.40', '13.20', '8.80', '', '3', '/uploads/20190505/bc57f62d6df6907db0c6d0b9197c732a.jpg', '0', '4', '4', '0', '0', '0', '1557035255', '1557035255');
INSERT INTO `pm_order` VALUES ('1250', '8677', 'admin3', '17537864', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '65.25', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557037538', '1557037538');
INSERT INTO `pm_order` VALUES ('1241', '8665', '', '52169811', '433.24', '', '0.00', '393.80', '0.00', '433.24', '0.00', '289.46', '39.44', '38.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1557033561', '1557033561');
INSERT INTO `pm_order` VALUES ('1240', '8665', '', '95614243', '65.70', '', '0.00', '54.10', '0.00', '65.70', '0.00', '55.30', '11.60', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557033123', '1557033123');
INSERT INTO `pm_order` VALUES ('1239', '8929', '', '13471344', '242.00', '', '0.00', '242.00', '0.00', '242.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557031337', '1557031337');
INSERT INTO `pm_order` VALUES ('1238', '8831', '', '64034925', '37.50', '', '0.00', '25.50', '0.00', '37.50', '0.00', '13.59', '12.00', '7.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557030154', '1557030154');
INSERT INTO `pm_order` VALUES ('1235', '8692', '', '36944269', '23.50', '', '0.00', '23.50', '0.00', '23.50', '0.00', '19.50', '0.00', '2.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557028265', '1557028265');
INSERT INTO `pm_order` VALUES ('1236', '8898', '', '86746086', '51.92', '', '0.00', '40.90', '0.00', '0.00', '51.92', '39.59', '11.02', '7.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557028809', '1557028809');
INSERT INTO `pm_order` VALUES ('1237', '9000', '0478889876', '68478170', '104.76', '', '0.00', '89.10', '0.00', '0.00', '104.76', '86.27', '15.66', '10.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557029370', '1557029370');
INSERT INTO `pm_order` VALUES ('1265', '8757', '', '50699392', '83.80', '', '0.00', '70.00', '0.00', '83.80', '0.00', '70.60', '13.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557041593', '1557041593');
INSERT INTO `pm_order` VALUES ('1264', '8757', '', '23889267', '83.80', '', '0.00', '70.00', '0.00', '83.80', '0.00', '70.60', '13.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557041383', '1557041383');
INSERT INTO `pm_order` VALUES ('1233', '8658', 'admin', '69303943', '139.62', '', '0.00', '132.66', '0.00', '0.00', '139.62', '121.80', '6.96', '4.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557027675', '1557027675');
INSERT INTO `pm_order` VALUES ('1234', '8678', '', '31940387', '89.00', '', '0.00', '89.00', '0.00', '89.00', '0.00', '70.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557027900', '1557027900');
INSERT INTO `pm_order` VALUES ('1230', '8677', 'admin3', '31864254', '216.00', '', '0.00', '216.00', '0.00', '216.00', '0.00', '169.80', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557024207', '1557024207');
INSERT INTO `pm_order` VALUES ('1232', '9047', '', '69817785', '107.50', '', '0.00', '107.50', '0.00', '107.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557027101', '1557027101');
INSERT INTO `pm_order` VALUES ('1229', '8691', '', '42378405', '24.80', '', '0.00', '18.80', '0.00', '24.80', '0.00', '20.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557023783', '1557023783');
INSERT INTO `pm_order` VALUES ('1228', '8677', 'admin3', '45534204', '103.88', '', '0.00', '89.96', '0.00', '103.88', '0.00', '91.20', '13.92', '9.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557023701', '1557023701');
INSERT INTO `pm_order` VALUES ('1227', '9046', '', '94669101', '180.20', '', '0.00', '169.40', '0.00', '180.20', '0.00', '171.70', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557023538', '1557023538');
INSERT INTO `pm_order` VALUES ('1223', '8882', '', '43969116', '21.00', '', '0.30', '15.00', '0.00', '21.00', '0.00', '0.00', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1557021592', '1557021592');
INSERT INTO `pm_order` VALUES ('1224', '8954', '', '83541538', '111.20', '', '0.00', '105.20', '0.00', '111.20', '0.00', '112.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557022275', '1557022275');
INSERT INTO `pm_order` VALUES ('1225', '8895', '18677236919', '57794626', '44.00', '', '0.00', '44.00', '0.00', '0.00', '44.00', '0.00', '0.00', '10.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557022333', '1557022333');
INSERT INTO `pm_order` VALUES ('1226', '8765', '0414382865', '63929927', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557022619', '1557022619');
INSERT INTO `pm_order` VALUES ('451', '8678', '', '47722959', '216.00', '', '0.00', '216.00', '0.00', '216.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1555641057', '1555641057');
INSERT INTO `pm_order` VALUES ('453', '8663', 'admin1', '26228020', '204.00', '', '0.00', '204.00', '0.00', '204.00', '0.00', '169.80', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1555807581', '1555807581');
INSERT INTO `pm_order` VALUES ('455', '8663', 'admin1', '31804974', '236.00', '', '0.00', '236.00', '0.00', '236.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1555808280', '1555808280');
INSERT INTO `pm_order` VALUES ('456', '8666', '', '47496356', '97.00', '', '0.00', '97.00', '0.00', '97.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1555836106', '1555836106');
INSERT INTO `pm_order` VALUES ('457', '8666', '', '83086796', '86.00', '', '0.00', '86.00', '0.00', '86.00', '0.00', '70.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1555837115', '1555837115');
INSERT INTO `pm_order` VALUES ('1263', '8791', '', '23863662', '57.20', '', '0.00', '50.00', '0.00', '57.20', '0.00', '49.50', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557039928', '1557039928');
INSERT INTO `pm_order` VALUES ('950', '8780', '', '73095750', '93.40', '', '0.00', '87.40', '0.00', '93.40', '0.00', '92.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556617726', '1556617726');
INSERT INTO `pm_order` VALUES ('461', '8666', '', '34945524', '97.10', '', '0.00', '88.70', '0.00', '97.10', '0.00', '87.69', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1555899448', '1555899448');
INSERT INTO `pm_order` VALUES ('462', '8660', '', '36291431', '216.96', '', '0.00', '216.96', '0.00', '0.00', '216.96', '103.50', '0.00', '16.26', '', '0', '', '0', '2', '4', '0', '0', '0', '1555900892', '1555900892');
INSERT INTO `pm_order` VALUES ('463', '8660', '', '83516301', '30.00', '', '0.00', '24.00', '0.00', '0.00', '30.00', '40.00', '6.00', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1555902452', '1555902452');
INSERT INTO `pm_order` VALUES ('464', '8682', '', '24162368', '108.80', '', '0.00', '82.80', '0.00', '108.80', '0.00', '0.00', '26.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1555902964', '1555902964');
INSERT INTO `pm_order` VALUES ('465', '8676', '', '98616363', '248.00', '', '0.00', '248.00', '0.00', '248.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1555907770', '1555907770');
INSERT INTO `pm_order` VALUES ('466', '8692', '', '41904635', '51.60', '', '0.00', '45.00', '0.00', '51.60', '0.00', '46.00', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1555908486', '1555908486');
INSERT INTO `pm_order` VALUES ('467', '8691', '', '21140312', '61.20', '', '0.00', '54.00', '0.00', '61.20', '0.00', '44.00', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1555912398', '1555912398');
INSERT INTO `pm_order` VALUES ('468', '8658', 'admin', '72803174', '120.20', '', '0.00', '111.80', '0.00', '120.20', '0.00', '117.50', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1555912559', '1555912559');
INSERT INTO `pm_order` VALUES ('469', '8691', '', '29189442', '103.20', '', '0.00', '90.00', '0.00', '103.20', '0.00', '92.00', '13.20', '8.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1555913941', '1555913941');
INSERT INTO `pm_order` VALUES ('474', '8665', '', '61312336', '99.40', '', '0.00', '99.40', '0.00', '99.40', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1555916870', '1555916870');
INSERT INTO `pm_order` VALUES ('471', '8665', '', '40120727', '229.20', '', '0.00', '217.20', '0.00', '229.20', '0.00', '230.00', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1555915588', '1555915588');
INSERT INTO `pm_order` VALUES ('472', '8665', '', '94483279', '126.00', '', '0.00', '126.00', '0.00', '126.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1555915711', '1555915711');
INSERT INTO `pm_order` VALUES ('473', '8665', '', '68494452', '99.40', '', '0.00', '99.40', '0.00', '99.40', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1555916565', '1555916565');
INSERT INTO `pm_order` VALUES ('475', '8694', '', '16018350', '248.00', '', '0.00', '248.00', '0.00', '248.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1555918425', '1555918425');
INSERT INTO `pm_order` VALUES ('476', '8704', '', '31453945', '180.00', '', '0.00', '174.00', '0.00', '180.00', '0.00', '174.00', '6.00', '4.00', '', '3', '/uploads/20190422/ed6e8de2731ba25c310b6da17769f89b.jpg', '0', '4', '4', '0', '0', '0', '1555918914', '1555918914');
INSERT INTO `pm_order` VALUES ('477', '8706', '', '88870598', '339.70', '', '0.00', '319.90', '0.00', '339.70', '0.00', '318.30', '19.80', '13.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1555919821', '1555919821');
INSERT INTO `pm_order` VALUES ('478', '8673', '', '29508551', '216.00', '', '0.00', '216.00', '0.00', '216.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1555926358', '1555926358');
INSERT INTO `pm_order` VALUES ('548', '8765', '0414382865', '16175799', '101.80', '', '0.00', '78.40', '0.00', '101.80', '0.00', '79.60', '23.40', '15.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556076165', '1556076165');
INSERT INTO `pm_order` VALUES ('480', '8719', '', '25279624', '155.40', '', '0.00', '135.00', '0.00', '155.40', '0.00', '138.00', '20.40', '13.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1555928891', '1555928891');
INSERT INTO `pm_order` VALUES ('481', '8660', '', '24096913', '376.50', '', '0.00', '370.50', '0.00', '0.00', '376.50', '48.80', '6.00', '39.10', '', '0', '', '0', '2', '4', '0', '0', '0', '1555929462', '1555929462');
INSERT INTO `pm_order` VALUES ('482', '8666', '', '26512342', '98.50', '', '0.00', '98.50', '0.00', '98.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1555929540', '1555929540');
INSERT INTO `pm_order` VALUES ('483', '8666', '', '50710002', '34.00', '', '0.00', '28.00', '0.00', '34.00', '0.00', '23.10', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1555930187', '1555930187');
INSERT INTO `pm_order` VALUES ('485', '8703', '', '37939673', '52.30', '', '0.00', '46.30', '0.00', '52.30', '0.00', '47.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1555938773', '1555938773');
INSERT INTO `pm_order` VALUES ('486', '8703', '', '76154976', '53.60', '', '0.00', '47.60', '0.00', '53.60', '0.00', '48.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1555975653', '1555975653');
INSERT INTO `pm_order` VALUES ('487', '8703', '', '62528773', '100.00', '', '0.00', '100.00', '0.00', '100.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1555977642', '1555977642');
INSERT INTO `pm_order` VALUES ('488', '8717', '', '75772134', '147.00', '', '0.00', '147.00', '0.00', '147.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1555978371', '1555978371');
INSERT INTO `pm_order` VALUES ('489', '8692', '', '22891970', '106.70', '', '0.00', '97.70', '0.00', '106.70', '0.00', '100.90', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1555980810', '1555980810');
INSERT INTO `pm_order` VALUES ('490', '8744', '', '29248936', '81.20', '', '0.00', '68.60', '0.00', '81.20', '0.00', '71.00', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1555985395', '1555985395');
INSERT INTO `pm_order` VALUES ('491', '8742', '', '69860455', '47.00', '', '0.00', '47.00', '0.00', '47.00', '0.00', '37.00', '0.00', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1555985677', '1555985677');
INSERT INTO `pm_order` VALUES ('514', '8769', '', '50150306', '182.00', '', '0.00', '182.00', '0.00', '182.00', '0.00', '147.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556005939', '1556005939');
INSERT INTO `pm_order` VALUES ('493', '8665', '', '71812903', '42.00', '', '0.00', '31.80', '0.00', '42.00', '0.00', '33.00', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1555988501', '1555988501');
INSERT INTO `pm_order` VALUES ('494', '8703', '', '62583963', '42.20', '', '0.00', '36.20', '0.00', '42.20', '0.00', '38.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1555988556', '1555988556');
INSERT INTO `pm_order` VALUES ('495', '8694', '', '97009444', '85.80', '', '0.00', '79.80', '0.00', '85.80', '0.00', '79.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1555988643', '1555988643');
INSERT INTO `pm_order` VALUES ('496', '8748', '', '52016131', '59.92', '', '0.00', '48.52', '0.00', '59.92', '0.00', '48.60', '11.40', '7.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1555988681', '1555988681');
INSERT INTO `pm_order` VALUES ('497', '8681', '', '76498116', '247.20', '', '0.00', '207.00', '0.00', '247.20', '0.00', '210.13', '40.20', '26.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1555992809', '1555992809');
INSERT INTO `pm_order` VALUES ('498', '8712', '', '76261011', '16.40', '', '0.00', '10.40', '0.00', '16.40', '0.00', '9.68', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1555994842', '1555994842');
INSERT INTO `pm_order` VALUES ('499', '8752', '', '81708615', '97.20', '', '0.00', '84.20', '0.00', '97.20', '0.00', '79.50', '13.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1555995159', '1555995159');
INSERT INTO `pm_order` VALUES ('500', '8690', '17723080131', '37999501', '22.20', '', '0.00', '16.20', '0.00', '22.20', '0.00', '16.48', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1555998037', '1555998037');
INSERT INTO `pm_order` VALUES ('501', '8734', '', '22851729', '71.30', '', '0.00', '63.50', '0.00', '71.30', '0.00', '71.80', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1555998517', '1555998517');
INSERT INTO `pm_order` VALUES ('502', '8722', '', '13441668', '79.90', '', '0.00', '66.70', '0.00', '79.90', '0.00', '69.30', '13.20', '8.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1555998785', '1555998785');
INSERT INTO `pm_order` VALUES ('503', '8757', '', '39608841', '29.30', '', '0.00', '29.30', '0.00', '29.30', '0.00', '23.00', '0.00', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1555999872', '1555999872');
INSERT INTO `pm_order` VALUES ('504', '8687', '', '70345238', '76.50', '', '0.00', '65.70', '0.00', '76.50', '0.00', '52.71', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556000727', '1556000727');
INSERT INTO `pm_order` VALUES ('505', '8757', '', '29728546', '94.10', '', '0.00', '86.30', '0.00', '94.10', '0.00', '82.45', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556000998', '1556000998');
INSERT INTO `pm_order` VALUES ('506', '8687', '', '69173745', '80.00', '', '0.00', '70.40', '0.00', '80.00', '0.00', '73.60', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556001726', '1556001726');
INSERT INTO `pm_order` VALUES ('507', '8761', '', '84385859', '162.00', '', '0.00', '151.20', '0.00', '162.00', '0.00', '160.00', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556001932', '1556001932');
INSERT INTO `pm_order` VALUES ('508', '8742', '', '84440228', '216.00', '', '0.00', '216.00', '0.00', '216.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556002415', '1556002415');
INSERT INTO `pm_order` VALUES ('509', '8745', '', '92227276', '30.00', '', '0.00', '24.00', '0.00', '30.00', '0.00', '20.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556002895', '1556002895');
INSERT INTO `pm_order` VALUES ('510', '8663', 'admin1', '48755575', '228.00', '', '0.00', '228.00', '0.00', '228.00', '0.00', '201.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556003174', '1556003174');
INSERT INTO `pm_order` VALUES ('511', '8687', '', '67512726', '51.00', '', '0.00', '44.40', '0.00', '51.00', '0.00', '46.17', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556005186', '1556005186');
INSERT INTO `pm_order` VALUES ('512', '8725', '', '46604648', '62.95', '', '0.00', '55.15', '0.00', '62.95', '0.00', '56.20', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556005781', '1556005781');
INSERT INTO `pm_order` VALUES ('513', '8709', '', '42560045', '139.60', '', '0.00', '113.00', '0.00', '139.60', '0.00', '72.00', '26.60', '16.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556005851', '1556005851');
INSERT INTO `pm_order` VALUES ('515', '8768', '', '99899105', '98.52', '', '0.00', '91.92', '0.00', '98.52', '0.00', '93.10', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556005983', '1556005983');
INSERT INTO `pm_order` VALUES ('516', '8709', '', '19953776', '64.60', '', '0.00', '57.40', '0.00', '64.60', '0.00', '58.30', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556006356', '1556006356');
INSERT INTO `pm_order` VALUES ('517', '8740', '', '65302219', '75.80', '', '0.00', '69.80', '0.00', '75.80', '0.00', '74.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556007378', '1556007378');
INSERT INTO `pm_order` VALUES ('518', '8740', '', '16346893', '187.00', '', '0.00', '174.40', '0.00', '187.00', '0.00', '184.00', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556007684', '1556007684');
INSERT INTO `pm_order` VALUES ('519', '8760', '', '95714333', '180.00', '', '0.00', '158.40', '0.00', '180.00', '0.00', '134.40', '21.60', '14.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556008189', '1556008189');
INSERT INTO `pm_order` VALUES ('520', '8687', '', '46347490', '49.00', '', '0.00', '41.20', '0.00', '49.00', '0.00', '37.36', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556008370', '1556008370');
INSERT INTO `pm_order` VALUES ('521', '8771', '', '66053138', '60.20', '', '0.00', '54.20', '0.00', '60.20', '0.00', '52.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556008921', '1556008921');
INSERT INTO `pm_order` VALUES ('522', '8724', '', '16400003', '116.00', '', '0.00', '93.80', '0.00', '116.00', '0.00', '99.50', '22.20', '14.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556009039', '1556009039');
INSERT INTO `pm_order` VALUES ('523', '8771', '', '28302428', '72.50', '', '0.00', '58.10', '0.00', '72.50', '0.00', '56.20', '14.40', '9.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556010174', '1556010174');
INSERT INTO `pm_order` VALUES ('524', '8665', '', '29349056', '315.00', '', '0.00', '315.00', '0.00', '315.00', '0.00', '0.00', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1556011796', '1556011796');
INSERT INTO `pm_order` VALUES ('525', '8780', '', '27498424', '125.80', '', '0.00', '112.80', '0.00', '125.80', '0.00', '0.00', '13.00', '11.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556012904', '1556012904');
INSERT INTO `pm_order` VALUES ('526', '8778', '', '88014842', '196.30', '', '0.00', '174.70', '0.00', '196.30', '0.00', '176.40', '21.60', '14.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556014461', '1556014461');
INSERT INTO `pm_order` VALUES ('547', '8787', '', '65274434', '93.10', '', '0.00', '85.30', '0.00', '93.10', '0.00', '89.23', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556074338', '1556074338');
INSERT INTO `pm_order` VALUES ('528', '8742', '', '40185154', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556021162', '1556021162');
INSERT INTO `pm_order` VALUES ('529', '8694', '', '44385831', '85.80', '', '0.00', '79.80', '0.00', '85.80', '0.00', '79.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556028852', '1556028852');
INSERT INTO `pm_order` VALUES ('530', '8791', '', '51359107', '45.20', '', '0.00', '33.80', '0.00', '45.20', '0.00', '34.40', '11.40', '7.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556047193', '1556047193');
INSERT INTO `pm_order` VALUES ('531', '8791', '', '11824858', '22.90', '', '0.00', '16.90', '0.00', '22.90', '0.00', '17.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556052291', '1556052291');
INSERT INTO `pm_order` VALUES ('532', '8791', '', '80647019', '22.90', '', '0.00', '16.90', '0.00', '22.90', '0.00', '17.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556052456', '1556052456');
INSERT INTO `pm_order` VALUES ('533', '8791', '', '19874770', '22.90', '', '0.00', '16.90', '0.00', '22.90', '0.00', '17.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556052606', '1556052606');
INSERT INTO `pm_order` VALUES ('536', '8666', '', '67880181', '21.80', '', '0.00', '15.80', '0.00', '21.80', '0.00', '19.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556063461', '1556063461');
INSERT INTO `pm_order` VALUES ('535', '8692', '', '73510868', '118.06', '', '0.00', '111.46', '0.00', '118.06', '0.00', '96.80', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556062194', '1556062194');
INSERT INTO `pm_order` VALUES ('537', '8692', '', '39306984', '115.20', '', '0.00', '108.60', '0.00', '115.20', '0.00', '115.00', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556065499', '1556065499');
INSERT INTO `pm_order` VALUES ('538', '8757', '', '51780503', '21.50', '', '0.00', '15.50', '0.00', '21.50', '0.00', '0.00', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1556068205', '1556068205');
INSERT INTO `pm_order` VALUES ('539', '8757', '', '68358640', '53.70', '', '0.00', '47.10', '0.00', '53.70', '0.00', '53.50', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556068581', '1556068581');
INSERT INTO `pm_order` VALUES ('540', '8776', '', '35031885', '68.70', '', '0.00', '62.10', '0.00', '68.70', '0.00', '62.23', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556068715', '1556068715');
INSERT INTO `pm_order` VALUES ('541', '8740', '', '91509712', '248.00', '', '0.00', '248.00', '0.00', '248.00', '0.00', '216.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556068886', '1556068886');
INSERT INTO `pm_order` VALUES ('542', '8660', '', '36816380', '210.00', '', '0.00', '210.00', '0.00', '0.00', '210.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556069082', '1556069082');
INSERT INTO `pm_order` VALUES ('543', '8740', '', '10962365', '197.00', '', '0.00', '197.00', '0.00', '197.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556069260', '1556069260');
INSERT INTO `pm_order` VALUES ('544', '8752', '', '66641183', '105.50', '', '0.00', '99.50', '0.00', '105.50', '0.00', '99.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556071486', '1556071486');
INSERT INTO `pm_order` VALUES ('545', '8752', '', '95869813', '124.00', '', '0.00', '124.00', '0.00', '124.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556071584', '1556071584');
INSERT INTO `pm_order` VALUES ('603', '8825', '', '90350958', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '201.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556160610', '1556160610');
INSERT INTO `pm_order` VALUES ('564', '8677', 'admin3', '52832537', '222.00', '', '0.00', '222.00', '0.00', '222.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556093332', '1556093332');
INSERT INTO `pm_order` VALUES ('565', '8806', '', '73995885', '252.00', '', '0.00', '252.00', '0.00', '252.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556093457', '1556093457');
INSERT INTO `pm_order` VALUES ('566', '8677', 'admin3', '37966993', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556093652', '1556093652');
INSERT INTO `pm_order` VALUES ('567', '8677', 'admin3', '49577975', '67.70', '', '0.00', '58.70', '0.00', '67.70', '0.00', '58.02', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556094050', '1556094050');
INSERT INTO `pm_order` VALUES ('568', '8806', '', '54162672', '52.16', '', '0.00', '46.16', '0.00', '52.16', '0.00', '45.70', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556094177', '1556094177');
INSERT INTO `pm_order` VALUES ('569', '8807', '', '25688251', '228.00', '', '0.00', '228.00', '0.00', '228.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556094204', '1556094204');
INSERT INTO `pm_order` VALUES ('570', '8677', 'admin3', '35140436', '420.00', '', '0.00', '420.00', '0.00', '420.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556094400', '1556094400');
INSERT INTO `pm_order` VALUES ('634', '8847', '', '59025842', '124.00', '', '0.00', '124.00', '0.00', '124.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556181136', '1556181136');
INSERT INTO `pm_order` VALUES ('572', '8677', 'admin3', '37659781', '172.00', '', '0.00', '172.00', '0.00', '172.00', '0.00', '141.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556094644', '1556094644');
INSERT INTO `pm_order` VALUES ('573', '8677', 'admin3', '59093151', '228.00', '', '0.00', '228.00', '0.00', '228.00', '0.00', '201.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556095038', '1556095038');
INSERT INTO `pm_order` VALUES ('574', '8730', '', '15917777', '84.42', '', '0.00', '71.22', '0.00', '84.42', '0.00', '72.90', '13.20', '8.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556095156', '1556095156');
INSERT INTO `pm_order` VALUES ('575', '8792', '', '10838890', '147.00', '', '0.00', '147.00', '0.00', '147.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556095565', '1556095565');
INSERT INTO `pm_order` VALUES ('576', '8677', 'admin3', '57059219', '86.00', '', '0.00', '86.00', '0.00', '86.00', '0.00', '70.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556097319', '1556097319');
INSERT INTO `pm_order` VALUES ('577', '8677', 'admin3', '39375072', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556097472', '1556097472');
INSERT INTO `pm_order` VALUES ('578', '8677', 'admin3', '98546163', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '65.25', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556097757', '1556097757');
INSERT INTO `pm_order` VALUES ('579', '8677', 'admin3', '75469927', '222.00', '', '0.00', '222.00', '0.00', '222.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556098390', '1556098390');
INSERT INTO `pm_order` VALUES ('580', '8768', '', '30730606', '216.00', '', '0.00', '216.00', '0.00', '216.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556105222', '1556105222');
INSERT INTO `pm_order` VALUES ('581', '8814', '', '19806413', '31.40', '', '0.00', '31.40', '0.00', '31.40', '0.00', '23.00', '0.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556106209', '1556106209');
INSERT INTO `pm_order` VALUES ('582', '8666', '', '62479560', '37.00', '', '0.00', '31.00', '0.00', '37.00', '0.00', '33.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556106668', '1556106668');
INSERT INTO `pm_order` VALUES ('583', '8687', '', '39510078', '47.20', '', '0.00', '41.20', '0.00', '47.20', '0.00', '40.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556106690', '1556106690');
INSERT INTO `pm_order` VALUES ('584', '8811', '', '29251829', '176.40', '', '0.00', '170.40', '0.00', '176.40', '0.00', '164.25', '6.00', '15.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556106910', '1556106910');
INSERT INTO `pm_order` VALUES ('585', '8756', '', '41447866', '150.90', '', '0.00', '143.10', '0.00', '150.90', '0.00', '85.00', '7.80', '13.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556108096', '1556108096');
INSERT INTO `pm_order` VALUES ('586', '8813', '', '41999659', '21.50', '', '0.00', '15.50', '0.00', '21.50', '0.00', '0.00', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1556108521', '1556108521');
INSERT INTO `pm_order` VALUES ('587', '8756', '', '13504441', '98.20', '', '0.00', '92.20', '0.00', '98.20', '0.00', '92.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556108715', '1556108715');
INSERT INTO `pm_order` VALUES ('590', '8791', '', '18826714', '22.90', '', '0.00', '16.90', '0.00', '22.90', '0.00', '17.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556124111', '1556124111');
INSERT INTO `pm_order` VALUES ('591', '8787', '', '42007316', '16.90', '', '0.00', '10.90', '0.00', '16.90', '0.00', '10.23', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556139507', '1556139507');
INSERT INTO `pm_order` VALUES ('592', '8787', '', '16610108', '21.50', '', '0.00', '15.50', '0.00', '21.50', '0.00', '16.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556139577', '1556139577');
INSERT INTO `pm_order` VALUES ('593', '8687', '', '87192091', '28.00', '', '0.00', '20.80', '0.00', '28.00', '0.00', '25.40', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556150449', '1556150449');
INSERT INTO `pm_order` VALUES ('594', '8687', '', '10334829', '132.90', '', '0.00', '113.70', '0.00', '132.90', '0.00', '121.17', '19.20', '12.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556151917', '1556151917');
INSERT INTO `pm_order` VALUES ('595', '8757', '', '59002512', '42.27', '', '0.00', '35.07', '0.00', '42.27', '0.00', '32.15', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556152927', '1556152927');
INSERT INTO `pm_order` VALUES ('596', '8820', '', '72859139', '97.00', '', '0.00', '97.00', '0.00', '97.00', '0.00', '0.00', '0.00', '21.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556154472', '1556154472');
INSERT INTO `pm_order` VALUES ('597', '8822', '', '32895721', '64.50', '', '0.00', '58.50', '0.00', '64.50', '0.00', '61.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556157929', '1556157929');
INSERT INTO `pm_order` VALUES ('598', '8757', '', '25881213', '34.90', '', '0.00', '28.90', '0.00', '34.90', '0.00', '26.48', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556158503', '1556158503');
INSERT INTO `pm_order` VALUES ('599', '8757', '', '63715466', '31.40', '', '0.00', '25.40', '0.00', '31.40', '0.00', '24.98', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556158634', '1556158634');
INSERT INTO `pm_order` VALUES ('600', '8822', '', '73921106', '77.20', '', '0.00', '63.40', '0.00', '77.20', '0.00', '65.20', '13.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556158690', '1556158690');
INSERT INTO `pm_order` VALUES ('601', '8822', '', '86141181', '98.00', '', '0.00', '72.00', '0.00', '98.00', '0.00', '0.00', '26.00', '21.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556159166', '1556159166');
INSERT INTO `pm_order` VALUES ('602', '8799', '', '24671944', '212.60', '', '0.00', '195.20', '0.00', '212.60', '0.00', '201.10', '17.40', '11.60', '', '3', '/uploads/20190425/16397f1ba96e636ba359001adca2c3d9.jpg', '0', '4', '4', '0', '0', '0', '1556159746', '1556159746');
INSERT INTO `pm_order` VALUES ('604', '8825', '', '22829209', '64.14', '', '0.00', '54.54', '0.00', '64.14', '0.00', '52.18', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556160928', '1556160928');
INSERT INTO `pm_order` VALUES ('605', '8677', 'admin3', '34878110', '107.09', '', '0.00', '96.89', '0.00', '107.09', '0.00', '98.50', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556161635', '1556161635');
INSERT INTO `pm_order` VALUES ('606', '8677', 'admin3', '55880769', '458.00', '', '0.00', '458.00', '0.00', '458.00', '0.00', '390.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556161865', '1556161865');
INSERT INTO `pm_order` VALUES ('607', '8677', 'admin3', '89550969', '50.76', '', '0.00', '50.76', '0.00', '50.76', '0.00', '36.00', '0.00', '8.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556162103', '1556162103');
INSERT INTO `pm_order` VALUES ('608', '8677', 'admin3', '36358764', '50.76', '', '0.00', '50.76', '0.00', '50.76', '0.00', '36.00', '0.00', '8.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556162450', '1556162450');
INSERT INTO `pm_order` VALUES ('609', '8694', '', '98406486', '82.30', '', '0.00', '72.70', '0.00', '82.30', '0.00', '77.90', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556162719', '1556162719');
INSERT INTO `pm_order` VALUES ('610', '8669', '', '63078527', '25.90', '', '0.00', '19.90', '0.00', '25.90', '0.00', '19.90', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556162795', '1556162795');
INSERT INTO `pm_order` VALUES ('612', '8721', '', '87919218', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556165154', '1556165154');
INSERT INTO `pm_order` VALUES ('613', '8769', '', '99489789', '216.00', '', '0.00', '216.00', '0.00', '216.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556165417', '1556165417');
INSERT INTO `pm_order` VALUES ('614', '8769', '', '85120140', '11.70', '', '0.00', '5.70', '0.00', '11.70', '0.00', '3.12', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556165803', '1556165803');
INSERT INTO `pm_order` VALUES ('615', '8769', '', '61120290', '11.70', '', '0.00', '5.70', '0.00', '11.70', '0.00', '3.12', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556166136', '1556166136');
INSERT INTO `pm_order` VALUES ('616', '8769', '', '70204565', '80.88', '', '0.00', '68.28', '0.00', '80.88', '0.00', '70.00', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556166472', '1556166472');
INSERT INTO `pm_order` VALUES ('617', '8791', '', '11719505', '76.70', '', '0.00', '67.70', '0.00', '76.70', '0.00', '69.10', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556167543', '1556167543');
INSERT INTO `pm_order` VALUES ('618', '8817', '', '78072158', '165.00', '', '0.00', '153.00', '0.00', '165.00', '0.00', '165.00', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556167786', '1556167786');
INSERT INTO `pm_order` VALUES ('619', '8703', '', '62618580', '269.70', '', '0.00', '260.70', '0.00', '269.70', '0.00', '46.60', '9.00', '29.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556167919', '1556167919');
INSERT INTO `pm_order` VALUES ('623', '8798', '', '43086771', '155.40', '', '0.00', '155.40', '0.00', '155.40', '0.00', '144.00', '0.00', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556172960', '1556172960');
INSERT INTO `pm_order` VALUES ('621', '8665', '', '19517063', '118.50', '', '0.00', '110.10', '0.00', '118.50', '0.00', '115.38', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556172410', '1556172410');
INSERT INTO `pm_order` VALUES ('622', '8725', '', '21446655', '54.30', '', '0.00', '47.70', '0.00', '54.30', '0.00', '45.68', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556172640', '1556172640');
INSERT INTO `pm_order` VALUES ('624', '8792', '', '40866274', '115.50', '', '0.00', '107.70', '0.00', '115.50', '0.00', '111.00', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556173676', '1556173676');
INSERT INTO `pm_order` VALUES ('625', '8792', '', '82564924', '23.60', '', '0.00', '16.40', '0.00', '23.60', '0.00', '18.80', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556174008', '1556174008');
INSERT INTO `pm_order` VALUES ('626', '8769', '', '66761042', '67.00', '', '0.00', '60.40', '0.00', '67.00', '0.00', '47.36', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556174460', '1556174460');
INSERT INTO `pm_order` VALUES ('627', '8798', '', '69245905', '190.00', '', '0.00', '180.40', '0.00', '190.00', '0.00', '176.90', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556176898', '1556176898');
INSERT INTO `pm_order` VALUES ('628', '8687', '', '35729532', '86.80', '', '0.00', '77.80', '0.00', '86.80', '0.00', '74.07', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556177567', '1556177567');
INSERT INTO `pm_order` VALUES ('629', '8801', '', '78097734', '112.70', '', '0.00', '86.30', '0.00', '112.70', '0.00', '87.40', '26.40', '17.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556177760', '1556177760');
INSERT INTO `pm_order` VALUES ('630', '8653', '0449861130', '54284971', '88.00', '', '0.00', '56.00', '0.00', '0.00', '88.00', '92.00', '32.00', '16.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1556179250', '1556179250');
INSERT INTO `pm_order` VALUES ('631', '8844', '', '88683967', '140.40', '', '0.00', '114.00', '0.00', '140.40', '0.00', '116.40', '26.40', '17.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556179815', '1556179815');
INSERT INTO `pm_order` VALUES ('632', '8847', '', '71914418', '48.50', '', '0.00', '48.50', '0.00', '48.50', '0.00', '0.00', '0.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556180050', '1556180050');
INSERT INTO `pm_order` VALUES ('633', '8822', '', '44175987', '147.60', '', '0.00', '147.60', '0.00', '147.60', '0.00', '128.00', '0.00', '11.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556180384', '1556180384');
INSERT INTO `pm_order` VALUES ('635', '8660', '', '67827722', '37.80', '', '0.00', '28.20', '0.00', '0.00', '37.80', '28.40', '9.60', '6.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556181793', '1556181793');
INSERT INTO `pm_order` VALUES ('636', '8759', '', '41923110', '60.25', '', '0.00', '54.25', '0.00', '60.25', '0.00', '51.29', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556182415', '1556182415');
INSERT INTO `pm_order` VALUES ('637', '8660', '', '13392013', '472.00', '', '0.00', '472.00', '0.00', '0.00', '472.00', '390.00', '0.00', '46.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1556187349', '1556187349');
INSERT INTO `pm_order` VALUES ('639', '8742', '', '47573203', '206.20', '', '0.00', '191.80', '0.00', '206.20', '0.00', '189.00', '14.40', '14.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556187842', '1556187842');
INSERT INTO `pm_order` VALUES ('640', '8663', 'admin1', '29502871', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556190237', '1556190237');
INSERT INTO `pm_order` VALUES ('641', '8742', '', '73798756', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556190491', '1556190491');
INSERT INTO `pm_order` VALUES ('700', '8874', '', '37148565', '78.80', '', '0.00', '71.60', '0.00', '78.80', '0.00', '73.80', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556281514', '1556281514');
INSERT INTO `pm_order` VALUES ('643', '8845', '', '25322345', '125.00', '', '0.00', '125.00', '0.00', '125.00', '0.00', '112.50', '0.00', '11.70', '', '3', '/uploads/20190425/f85853abf4160205821e05393e3a41a9.jpg', '0', '4', '4', '0', '0', '0', '1556191125', '1556191125');
INSERT INTO `pm_order` VALUES ('644', '8761', '', '22067073', '89.06', '', '0.00', '75.26', '0.00', '89.06', '0.00', '89.80', '13.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556192241', '1556192241');
INSERT INTO `pm_order` VALUES ('645', '8742', '', '34785365', '100.10', '', '0.00', '82.10', '0.00', '100.10', '0.00', '83.94', '18.00', '12.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556193857', '1556193857');
INSERT INTO `pm_order` VALUES ('646', '8822', '', '43440007', '48.50', '', '0.00', '48.50', '0.00', '48.50', '0.00', '0.00', '0.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556195865', '1556195865');
INSERT INTO `pm_order` VALUES ('647', '8742', '', '18242019', '69.65', '', '0.00', '58.25', '0.00', '69.65', '0.00', '62.73', '11.40', '7.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556199144', '1556199144');
INSERT INTO `pm_order` VALUES ('648', '8742', '', '65574364', '77.70', '', '0.00', '67.50', '0.00', '77.70', '0.00', '69.00', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556201548', '1556201548');
INSERT INTO `pm_order` VALUES ('649', '8687', '', '35860743', '26.20', '', '0.00', '16.00', '0.00', '26.20', '0.00', '20.00', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556204743', '1556204743');
INSERT INTO `pm_order` VALUES ('650', '8760', '', '59476581', '96.10', '', '0.00', '89.50', '0.00', '96.10', '0.00', '78.30', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556205887', '1556205887');
INSERT INTO `pm_order` VALUES ('651', '8742', '', '27100273', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556228797', '1556228797');
INSERT INTO `pm_order` VALUES ('652', '8742', '', '30675403', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556229959', '1556229959');
INSERT INTO `pm_order` VALUES ('653', '8666', '', '38563252', '73.50', '', '0.00', '73.50', '0.00', '73.50', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556232388', '1556232388');
INSERT INTO `pm_order` VALUES ('654', '8740', '', '42863055', '248.00', '', '0.00', '248.00', '0.00', '248.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '99', '0', '1', '0', '1556238245', '1556238245');
INSERT INTO `pm_order` VALUES ('655', '8740', '', '68960225', '216.00', '', '0.00', '216.00', '0.00', '216.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556238826', '1556238826');
INSERT INTO `pm_order` VALUES ('656', '8855', '', '63530201', '73.00', '', '0.00', '65.80', '0.00', '73.00', '0.00', '69.60', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556243052', '1556243052');
INSERT INTO `pm_order` VALUES ('657', '8690', '17723080131', '20390394', '50.20', '', '0.00', '40.60', '0.00', '50.20', '0.00', '43.80', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556243634', '1556243634');
INSERT INTO `pm_order` VALUES ('658', '8857', '', '27491895', '117.00', '', '0.00', '117.00', '0.00', '117.00', '0.00', '100.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556244660', '1556244660');
INSERT INTO `pm_order` VALUES ('660', '8833', '', '95329674', '110.90', '', '0.90', '110.90', '0.00', '110.90', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556245285', '1556245285');
INSERT INTO `pm_order` VALUES ('661', '8740', '', '51053367', '216.00', '', '0.00', '216.00', '0.00', '216.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556245793', '1556245793');
INSERT INTO `pm_order` VALUES ('662', '8854', '', '98475236', '52.40', '', '0.00', '32.00', '0.00', '52.40', '0.00', '40.00', '20.40', '13.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556245977', '1556245977');
INSERT INTO `pm_order` VALUES ('663', '8690', '17723080131', '33695406', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556246392', '1556246392');
INSERT INTO `pm_order` VALUES ('664', '8677', 'admin3', '60491933', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556246957', '1556246957');
INSERT INTO `pm_order` VALUES ('665', '8726', '', '98062400', '33.80', '', '0.00', '27.80', '0.00', '33.80', '0.00', '28.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556247106', '1556247106');
INSERT INTO `pm_order` VALUES ('666', '8676', '', '74832982', '114.90', '', '0.00', '102.90', '0.00', '114.90', '0.00', '106.52', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556247127', '1556247127');
INSERT INTO `pm_order` VALUES ('667', '8677', 'admin3', '89535752', '73.50', '', '0.00', '73.50', '0.00', '73.50', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556247168', '1556247168');
INSERT INTO `pm_order` VALUES ('668', '8859', '', '25438579', '49.60', '', '0.00', '43.60', '0.00', '49.60', '0.00', '46.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556247277', '1556247277');
INSERT INTO `pm_order` VALUES ('669', '8825', '', '99485101', '105.50', '', '0.00', '99.50', '0.00', '105.50', '0.00', '99.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556247328', '1556247328');
INSERT INTO `pm_order` VALUES ('670', '8677', 'admin3', '54935403', '73.50', '', '0.00', '73.50', '0.00', '73.50', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556247393', '1556247393');
INSERT INTO `pm_order` VALUES ('671', '8677', 'admin3', '67477587', '105.00', '', '0.00', '105.00', '0.00', '105.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556247831', '1556247831');
INSERT INTO `pm_order` VALUES ('672', '8677', 'admin3', '90584867', '147.00', '', '0.00', '147.00', '0.00', '147.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556248113', '1556248113');
INSERT INTO `pm_order` VALUES ('673', '8857', '', '18864208', '88.00', '', '0.00', '88.00', '0.00', '88.00', '0.00', '0.00', '0.00', '21.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556248434', '1556248434');
INSERT INTO `pm_order` VALUES ('674', '8859', '', '26892246', '27.00', '', '0.00', '27.00', '0.00', '27.00', '0.00', '20.90', '0.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556248604', '1556248604');
INSERT INTO `pm_order` VALUES ('675', '8677', 'admin3', '16623244', '102.00', '', '0.00', '102.00', '0.00', '102.00', '0.00', '84.90', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556248825', '1556248825');
INSERT INTO `pm_order` VALUES ('676', '8769', '', '51671167', '216.00', '', '0.00', '216.00', '0.00', '216.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556249364', '1556249364');
INSERT INTO `pm_order` VALUES ('677', '8853', '', '22088358', '184.40', '', '0.00', '171.20', '0.00', '184.40', '0.00', '67.60', '13.20', '20.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1556251465', '1556251465');
INSERT INTO `pm_order` VALUES ('678', '8687', '', '68640722', '55.70', '', '0.00', '49.70', '0.00', '55.70', '0.00', '53.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556251874', '1556251874');
INSERT INTO `pm_order` VALUES ('679', '8860', '', '94123685', '75.90', '', '0.50', '66.30', '0.00', '75.90', '0.00', '68.00', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556255013', '1556255013');
INSERT INTO `pm_order` VALUES ('680', '8854', '', '98315070', '72.60', '', '0.00', '58.80', '0.00', '72.60', '0.00', '66.00', '13.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556257054', '1556257054');
INSERT INTO `pm_order` VALUES ('681', '8860', '', '80625686', '52.63', '', '0.25', '44.83', '0.00', '52.63', '0.00', '50.80', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556257603', '1556257603');
INSERT INTO `pm_order` VALUES ('682', '8687', '', '33293252', '39.90', '', '0.00', '33.90', '0.00', '39.90', '0.00', '34.60', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556258772', '1556258772');
INSERT INTO `pm_order` VALUES ('683', '8864', '', '92346490', '258.90', '', '0.00', '239.70', '0.00', '258.90', '0.00', '215.60', '19.20', '12.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556259108', '1556259108');
INSERT INTO `pm_order` VALUES ('684', '8864', '', '78609687', '248.00', '', '0.00', '248.00', '0.00', '248.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556259655', '1556259655');
INSERT INTO `pm_order` VALUES ('685', '8690', '17723080131', '18568808', '96.30', '', '0.00', '79.50', '0.00', '96.30', '0.00', '82.50', '16.80', '11.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556260612', '1556260612');
INSERT INTO `pm_order` VALUES ('686', '8692', '', '64093935', '59.10', '', '0.00', '52.50', '0.00', '59.10', '0.00', '58.80', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556261017', '1556261017');
INSERT INTO `pm_order` VALUES ('688', '8658', 'admin', '61111393', '242.00', '', '0.00', '242.00', '0.00', '0.00', '242.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556262837', '1556262837');
INSERT INTO `pm_order` VALUES ('689', '8745', '', '42598082', '69.00', '', '0.00', '51.00', '0.00', '69.00', '0.00', '42.20', '18.00', '11.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556263067', '1556263067');
INSERT INTO `pm_order` VALUES ('690', '8687', '', '49525323', '197.20', '', '0.00', '175.60', '0.00', '197.20', '0.00', '179.00', '21.60', '14.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556263111', '1556263111');
INSERT INTO `pm_order` VALUES ('737', '8723', '0426690846', '33012699', '53.70', '', '0.00', '46.50', '0.00', '53.70', '0.00', '48.80', '7.20', '4.80', '', '3', '/uploads/20190427/b2c36733dee7b488502a0b8a7a9e0503.jpg', '0', '4', '4', '0', '0', '0', '1556350763', '1556350763');
INSERT INTO `pm_order` VALUES ('692', '8854', '', '12386639', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556263794', '1556263794');
INSERT INTO `pm_order` VALUES ('693', '8870', '', '59316084', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556266203', '1556266203');
INSERT INTO `pm_order` VALUES ('694', '8825', '', '15520146', '122.60', '', '0.00', '116.00', '0.00', '122.60', '0.00', '116.80', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556266213', '1556266213');
INSERT INTO `pm_order` VALUES ('695', '8752', '', '50486834', '197.00', '', '0.00', '197.00', '0.00', '197.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556266419', '1556266419');
INSERT INTO `pm_order` VALUES ('696', '8870', '', '76730477', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556266623', '1556266623');
INSERT INTO `pm_order` VALUES ('697', '8808', '', '53165129', '29.60', '', '0.00', '23.60', '0.00', '29.60', '0.00', '25.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556268365', '1556268365');
INSERT INTO `pm_order` VALUES ('698', '8742', '', '66023731', '73.50', '', '0.00', '73.50', '0.00', '73.50', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556269146', '1556269146');
INSERT INTO `pm_order` VALUES ('699', '8847', '', '93582458', '20.08', '', '0.00', '14.08', '0.00', '20.08', '0.00', '12.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556274665', '1556274665');
INSERT INTO `pm_order` VALUES ('701', '8807', '', '69586524', '135.70', '', '0.00', '123.70', '0.00', '135.70', '0.00', '118.48', '12.00', '13.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556283608', '1556283608');
INSERT INTO `pm_order` VALUES ('702', '8660', '', '53000968', '86.00', '', '0.00', '86.00', '0.00', '0.00', '86.00', '70.50', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1556292967', '1556292967');
INSERT INTO `pm_order` VALUES ('703', '8756', '', '34059909', '64.20', '', '0.00', '58.20', '0.00', '64.20', '0.00', '56.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556323521', '1556323521');
INSERT INTO `pm_order` VALUES ('704', '8787', '', '77877560', '44.70', '', '0.00', '37.50', '0.00', '44.70', '0.00', '34.30', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556326040', '1556326040');
INSERT INTO `pm_order` VALUES ('705', '8738', '', '63727809', '38.73', '', '0.00', '32.73', '0.00', '38.73', '0.00', '33.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556326317', '1556326317');
INSERT INTO `pm_order` VALUES ('706', '8692', '', '10502137', '33.86', '', '0.00', '27.86', '0.00', '33.86', '0.00', '30.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556328962', '1556328962');
INSERT INTO `pm_order` VALUES ('707', '8879', '', '17648698', '85.30', '', '0.00', '74.50', '0.00', '85.30', '0.00', '78.00', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556330575', '1556330575');
INSERT INTO `pm_order` VALUES ('708', '8727', '0450300513', '90119706', '204.00', '', '0.00', '204.00', '0.00', '204.00', '0.00', '169.80', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556331814', '1556331814');
INSERT INTO `pm_order` VALUES ('709', '8725', '', '20791536', '52.40', '', '0.00', '41.60', '0.00', '52.40', '0.00', '30.56', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556331854', '1556331854');
INSERT INTO `pm_order` VALUES ('710', '8756', '', '11982147', '43.20', '', '0.00', '37.20', '0.00', '43.20', '0.00', '0.00', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1556332539', '1556332539');
INSERT INTO `pm_order` VALUES ('711', '8677', 'admin3', '60625791', '121.00', '', '0.00', '121.00', '0.00', '121.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556333425', '1556333425');
INSERT INTO `pm_order` VALUES ('712', '8692', '', '21604759', '81.20', '', '0.00', '68.60', '0.00', '81.20', '0.00', '71.00', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556333601', '1556333601');
INSERT INTO `pm_order` VALUES ('713', '8692', '', '80304356', '78.80', '', '0.00', '68.00', '0.00', '78.80', '0.00', '68.00', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556333731', '1556333731');
INSERT INTO `pm_order` VALUES ('714', '8692', '', '12638989', '65.60', '', '0.00', '65.60', '0.00', '65.60', '0.00', '54.00', '0.00', '5.28', '', '0', '', '0', '3', '4', '0', '0', '0', '1556333897', '1556333897');
INSERT INTO `pm_order` VALUES ('715', '8694', '', '67045578', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '201.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556334207', '1556334207');
INSERT INTO `pm_order` VALUES ('716', '8822', '', '23381723', '45.30', '', '0.00', '38.70', '0.00', '45.30', '0.00', '36.60', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556334425', '1556334425');
INSERT INTO `pm_order` VALUES ('717', '8822', '', '81767792', '54.60', '', '0.00', '48.60', '0.00', '54.60', '0.00', '44.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556334829', '1556334829');
INSERT INTO `pm_order` VALUES ('718', '8822', '', '98705635', '54.60', '', '0.00', '48.60', '0.00', '54.60', '0.00', '44.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556335312', '1556335312');
INSERT INTO `pm_order` VALUES ('719', '8677', 'admin3', '39945725', '102.00', '', '0.00', '102.00', '0.00', '102.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556336065', '1556336065');
INSERT INTO `pm_order` VALUES ('720', '8822', '', '83968610', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556336071', '1556336071');
INSERT INTO `pm_order` VALUES ('721', '8663', 'admin1', '71025555', '209.00', '', '0.00', '209.00', '0.00', '209.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556338193', '1556338193');
INSERT INTO `pm_order` VALUES ('722', '8769', '', '11501720', '85.10', '', '0.00', '72.50', '0.00', '85.10', '0.00', '18.00', '12.60', '19.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556340137', '1556340137');
INSERT INTO `pm_order` VALUES ('723', '8760', '', '28487787', '31.40', '', '0.00', '31.40', '0.00', '31.40', '0.00', '23.00', '0.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556341113', '1556341113');
INSERT INTO `pm_order` VALUES ('724', '8769', '', '23556070', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556341538', '1556341538');
INSERT INTO `pm_order` VALUES ('725', '8769', '', '19778139', '36.60', '', '0.00', '24.00', '0.00', '36.60', '0.00', '18.00', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556341852', '1556341852');
INSERT INTO `pm_order` VALUES ('726', '8871', '', '53639648', '119.60', '', '0.00', '98.00', '0.00', '119.60', '0.00', '101.85', '21.60', '14.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556342453', '1556342453');
INSERT INTO `pm_order` VALUES ('727', '8806', '', '51392002', '27.40', '', '0.00', '21.40', '0.00', '27.40', '0.00', '23.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556342610', '1556342610');
INSERT INTO `pm_order` VALUES ('728', '8792', '', '37453152', '150.00', '', '0.00', '150.00', '0.00', '150.00', '0.00', '130.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556342633', '1556342633');
INSERT INTO `pm_order` VALUES ('729', '8806', '', '42511014', '29.60', '', '0.00', '23.60', '0.00', '29.60', '0.00', '25.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556343052', '1556343052');
INSERT INTO `pm_order` VALUES ('786', '8727', '0450300513', '91248985', '73.50', '', '0.00', '73.50', '0.00', '73.50', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556430777', '1556430777');
INSERT INTO `pm_order` VALUES ('731', '8792', '', '51651116', '56.50', '', '0.00', '50.50', '0.00', '56.50', '0.00', '48.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556343909', '1556343909');
INSERT INTO `pm_order` VALUES ('732', '8792', '', '86879876', '30.70', '', '0.00', '24.70', '0.00', '30.70', '0.00', '26.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556344728', '1556344728');
INSERT INTO `pm_order` VALUES ('733', '8673', '', '68750491', '147.00', '', '0.00', '147.00', '0.00', '147.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556345651', '1556345651');
INSERT INTO `pm_order` VALUES ('734', '8673', '', '37330637', '73.50', '', '0.00', '73.50', '0.00', '73.50', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556345962', '1556345962');
INSERT INTO `pm_order` VALUES ('736', '8882', '', '44503410', '253.80', '', '1.80', '253.80', '0.00', '253.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556348389', '1556348389');
INSERT INTO `pm_order` VALUES ('738', '8687', '', '69561456', '95.90', '', '0.00', '82.90', '0.00', '95.90', '0.00', '82.00', '13.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556351029', '1556351029');
INSERT INTO `pm_order` VALUES ('739', '8666', '', '95340441', '74.40', '', '0.90', '74.40', '0.00', '74.40', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556353974', '1556353974');
INSERT INTO `pm_order` VALUES ('740', '8723', '0426690846', '26505661', '40.90', '', '0.00', '34.30', '0.00', '40.90', '0.00', '35.50', '6.60', '4.40', '', '3', '/uploads/20190427/7d3dc8c84db3fb78995b8707aad51b06.jpg', '0', '4', '4', '0', '0', '0', '1556355858', '1556355858');
INSERT INTO `pm_order` VALUES ('741', '8791', '', '70674212', '56.00', '', '0.00', '47.60', '0.00', '56.00', '0.00', '48.40', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556356751', '1556356751');
INSERT INTO `pm_order` VALUES ('742', '8787', '', '62247684', '40.80', '', '0.00', '34.80', '0.00', '40.80', '0.00', '33.50', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1556357763', '1556357763');
INSERT INTO `pm_order` VALUES ('743', '8863', '', '79044399', '64.50', '', '0.00', '56.70', '0.00', '64.50', '0.00', '56.09', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556359774', '1556359774');
INSERT INTO `pm_order` VALUES ('744', '8740', '', '74854650', '375.00', '', '0.00', '375.00', '0.00', '375.00', '0.00', '337.50', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1556360288', '1556360288');
INSERT INTO `pm_order` VALUES ('745', '8873', '', '90252431', '81.80', '', '0.00', '64.40', '0.00', '81.80', '0.00', '66.10', '17.40', '11.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556361927', '1556361927');
INSERT INTO `pm_order` VALUES ('747', '8860', '', '45603049', '89.00', '', '0.00', '66.80', '0.00', '89.00', '0.00', '67.60', '22.20', '14.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556366841', '1556366841');
INSERT INTO `pm_order` VALUES ('748', '8658', 'admin', '39287102', '228.00', '', '0.00', '228.00', '0.00', '0.00', '228.00', '201.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556375629', '1556375629');
INSERT INTO `pm_order` VALUES ('749', '8684', '', '27964124', '56.90', '', '0.00', '49.10', '0.00', '56.90', '0.00', '48.50', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556376608', '1556376608');
INSERT INTO `pm_order` VALUES ('750', '8663', 'admin1', '59509641', '76.80', '', '0.00', '70.20', '0.00', '76.80', '0.00', '67.80', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556381866', '1556381866');
INSERT INTO `pm_order` VALUES ('751', '8663', 'admin1', '35001263', '76.80', '', '0.00', '70.20', '0.00', '76.80', '0.00', '67.80', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556381947', '1556381947');
INSERT INTO `pm_order` VALUES ('752', '8663', 'admin1', '73135683', '102.00', '', '0.00', '102.00', '0.00', '102.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556382229', '1556382229');
INSERT INTO `pm_order` VALUES ('753', '8692', '', '67521913', '62.40', '', '0.00', '56.40', '0.00', '62.40', '0.00', '59.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556407363', '1556407363');
INSERT INTO `pm_order` VALUES ('824', '8915', '', '40935831', '630.00', '', '0.00', '630.00', '0.00', '630.00', '0.00', '0.00', '0.00', '70.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556498783', '1556498783');
INSERT INTO `pm_order` VALUES ('755', '8833', '', '57052320', '50.40', '', '0.00', '41.40', '0.00', '50.40', '0.00', '45.40', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556411497', '1556411497');
INSERT INTO `pm_order` VALUES ('756', '8764', '0452578087', '65402209', '111.00', '', '0.00', '96.00', '0.00', '111.00', '0.00', '96.00', '15.00', '10.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556414728', '1556414728');
INSERT INTO `pm_order` VALUES ('757', '8806', '', '72710223', '41.80', '', '0.00', '35.80', '0.00', '41.80', '0.00', '30.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556415749', '1556415749');
INSERT INTO `pm_order` VALUES ('758', '8806', '', '11890563', '79.60', '', '0.00', '53.60', '0.00', '79.60', '0.00', '0.00', '26.00', '15.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556416199', '1556416199');
INSERT INTO `pm_order` VALUES ('761', '8677', 'admin3', '21436840', '98.50', '', '0.00', '98.50', '0.00', '98.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556416526', '1556416526');
INSERT INTO `pm_order` VALUES ('760', '8673', '', '31474406', '89.50', '', '0.00', '83.50', '0.00', '89.50', '0.00', '83.70', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556416444', '1556416444');
INSERT INTO `pm_order` VALUES ('762', '8828', '0413375919', '44773094', '70.50', '', '0.00', '49.50', '0.00', '70.50', '0.00', '46.50', '21.00', '14.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556416576', '1556416576');
INSERT INTO `pm_order` VALUES ('763', '8658', 'admin', '80022950', '122.50', '', '0.00', '115.90', '0.00', '0.00', '122.50', '121.50', '6.60', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556416756', '1556416756');
INSERT INTO `pm_order` VALUES ('764', '8677', 'admin3', '64618655', '147.00', '', '0.00', '147.00', '0.00', '147.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556416875', '1556416875');
INSERT INTO `pm_order` VALUES ('765', '8727', '0450300513', '21795212', '73.50', '', '0.00', '73.50', '0.00', '73.50', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556417032', '1556417032');
INSERT INTO `pm_order` VALUES ('766', '8677', 'admin3', '55191731', '102.00', '', '0.00', '102.00', '0.00', '102.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556417275', '1556417275');
INSERT INTO `pm_order` VALUES ('767', '8658', 'admin', '24364668', '228.00', '', '0.00', '228.00', '0.00', '0.00', '228.00', '195.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556417611', '1556417611');
INSERT INTO `pm_order` VALUES ('768', '8752', '', '61204636', '59.40', '', '0.00', '53.40', '0.00', '59.40', '0.00', '52.80', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556418250', '1556418250');
INSERT INTO `pm_order` VALUES ('769', '8850', '', '58395206', '146.70', '', '0.90', '140.10', '0.00', '146.70', '0.00', '118.50', '6.60', '16.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1556420004', '1556420004');
INSERT INTO `pm_order` VALUES ('770', '8885', '', '33225423', '43.50', '', '0.00', '32.70', '0.00', '43.50', '0.00', '30.69', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556420113', '1556420113');
INSERT INTO `pm_order` VALUES ('771', '8693', '', '54918768', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556420246', '1556420246');
INSERT INTO `pm_order` VALUES ('772', '8850', '', '25414206', '114.90', '', '0.90', '114.90', '0.00', '114.90', '0.00', '97.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556420653', '1556420653');
INSERT INTO `pm_order` VALUES ('773', '8687', '', '88117233', '57.60', '', '0.00', '51.60', '0.00', '57.60', '0.00', '52.30', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556421141', '1556421141');
INSERT INTO `pm_order` VALUES ('774', '8889', '', '59113959', '73.70', '', '0.00', '65.90', '0.00', '73.70', '0.00', '57.20', '7.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556422612', '1556422612');
INSERT INTO `pm_order` VALUES ('776', '8890', '', '66431492', '216.80', '', '1.80', '216.80', '0.00', '216.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556422853', '1556422853');
INSERT INTO `pm_order` VALUES ('777', '8806', '', '33184469', '67.80', '', '0.00', '55.80', '0.00', '67.80', '0.00', '53.80', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556424239', '1556424239');
INSERT INTO `pm_order` VALUES ('843', '8790', '', '85986236', '34.68', '', '0.00', '34.68', '0.00', '34.68', '0.00', '20.40', '0.00', '7.92', '', '0', '', '0', '3', '4', '0', '0', '0', '1556510848', '1556510848');
INSERT INTO `pm_order` VALUES ('779', '8694', '', '10722845', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '201.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556425326', '1556425326');
INSERT INTO `pm_order` VALUES ('780', '8892', '', '51998044', '103.00', '', '0.00', '103.00', '0.00', '103.00', '0.00', '0.00', '0.00', '11.25', '', '0', '', '0', '3', '4', '0', '0', '0', '1556426538', '1556426538');
INSERT INTO `pm_order` VALUES ('781', '8807', '', '33322992', '30.90', '', '0.00', '24.90', '0.00', '30.90', '0.00', '22.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556426693', '1556426693');
INSERT INTO `pm_order` VALUES ('851', '8929', '', '59986571', '228.00', '', '0.00', '228.00', '0.00', '228.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556514334', '1556514334');
INSERT INTO `pm_order` VALUES ('783', '8687', '', '41781803', '167.00', '', '0.00', '161.00', '0.00', '167.00', '0.00', '62.50', '6.00', '15.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556428464', '1556428464');
INSERT INTO `pm_order` VALUES ('784', '8782', '', '29140205', '130.70', '', '0.00', '115.10', '0.00', '130.70', '0.00', '115.80', '15.60', '10.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556428491', '1556428491');
INSERT INTO `pm_order` VALUES ('785', '8867', '', '73587789', '23.60', '', '0.00', '16.40', '0.00', '23.60', '0.00', '18.80', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556429272', '1556429272');
INSERT INTO `pm_order` VALUES ('859', '8901', '', '57036184', '74.80', '', '0.00', '68.80', '0.00', '74.80', '0.00', '81.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556518221', '1556518221');
INSERT INTO `pm_order` VALUES ('806', '8749', '18637179598', '62966424', '126.00', '', '0.00', '126.00', '0.00', '126.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556444668', '1556444668');
INSERT INTO `pm_order` VALUES ('789', '8897', '', '23459562', '62.80', '', '0.00', '56.80', '0.00', '62.80', '0.00', '56.84', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556434054', '1556434054');
INSERT INTO `pm_order` VALUES ('790', '8901', '', '81216868', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556434733', '1556434733');
INSERT INTO `pm_order` VALUES ('791', '8805', '', '17672651', '420.00', '', '0.00', '420.00', '0.00', '420.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556436946', '1556436946');
INSERT INTO `pm_order` VALUES ('792', '8894', '', '31158388', '105.00', '', '0.00', '105.00', '0.00', '105.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556437205', '1556437205');
INSERT INTO `pm_order` VALUES ('793', '8894', '', '38839097', '127.00', '', '0.00', '127.00', '0.00', '127.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556437376', '1556437376');
INSERT INTO `pm_order` VALUES ('794', '8902', '', '41771304', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556437712', '1556437712');
INSERT INTO `pm_order` VALUES ('795', '8689', '', '62895221', '115.80', '', '1.80', '115.80', '0.00', '115.80', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556438627', '1556438627');
INSERT INTO `pm_order` VALUES ('796', '8735', '', '24386414', '220.50', '', '0.00', '220.50', '0.00', '220.50', '0.00', '191.25', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1556439009', '1556439009');
INSERT INTO `pm_order` VALUES ('797', '8820', '', '55009687', '147.00', '', '0.00', '147.00', '0.00', '147.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556440145', '1556440145');
INSERT INTO `pm_order` VALUES ('798', '8883', '', '39925130', '147.00', '', '0.00', '147.00', '0.00', '147.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556440166', '1556440166');
INSERT INTO `pm_order` VALUES ('799', '8895', '18677236919', '75957595', '77.58', '', '0.00', '68.30', '0.00', '0.00', '77.58', '57.59', '9.28', '10.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556441293', '1556441293');
INSERT INTO `pm_order` VALUES ('800', '8872', '', '10408849', '57.80', '', '0.00', '51.80', '0.00', '57.80', '0.00', '50.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556441647', '1556441647');
INSERT INTO `pm_order` VALUES ('802', '8773', '', '70201039', '67.60', '', '0.00', '55.60', '0.00', '67.60', '0.00', '49.10', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556443606', '1556443606');
INSERT INTO `pm_order` VALUES ('803', '8872', '', '48997252', '423.60', '', '3.60', '423.60', '0.00', '423.60', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556443774', '1556443774');
INSERT INTO `pm_order` VALUES ('804', '8814', '', '32058820', '124.20', '', '0.00', '113.40', '0.00', '124.20', '0.00', '129.00', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556444040', '1556444040');
INSERT INTO `pm_order` VALUES ('805', '8666', '', '91771776', '148.80', '', '1.80', '148.80', '0.00', '148.80', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556444598', '1556444598');
INSERT INTO `pm_order` VALUES ('807', '8915', '', '17822154', '117.00', '', '0.00', '117.00', '0.00', '117.00', '0.00', '100.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556445180', '1556445180');
INSERT INTO `pm_order` VALUES ('808', '8673', '', '74587189', '147.00', '', '0.00', '147.00', '0.00', '147.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556445976', '1556445976');
INSERT INTO `pm_order` VALUES ('810', '8726', '', '91845917', '34.60', '', '0.00', '28.00', '0.00', '34.60', '0.00', '26.90', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556449326', '1556449326');
INSERT INTO `pm_order` VALUES ('812', '8666', '', '52073943', '211.80', '', '1.80', '211.80', '0.00', '211.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556449677', '1556449677');
INSERT INTO `pm_order` VALUES ('813', '8740', '', '26525936', '126.00', '', '0.00', '126.00', '0.00', '126.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556451019', '1556451019');
INSERT INTO `pm_order` VALUES ('814', '8703', '', '25152440', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556452358', '1556452358');
INSERT INTO `pm_order` VALUES ('815', '8689', '', '11558984', '124.00', '', '0.00', '124.00', '0.00', '124.00', '0.00', '108.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556452831', '1556452831');
INSERT INTO `pm_order` VALUES ('816', '8792', '', '83046724', '135.50', '', '0.00', '115.90', '0.00', '135.50', '0.00', '100.64', '19.60', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556454322', '1556454322');
INSERT INTO `pm_order` VALUES ('817', '8723', '0426690846', '44396668', '71.60', '', '0.00', '62.60', '0.00', '71.60', '0.00', '65.00', '9.00', '6.00', '', '3', '/uploads/20190428/6ee21142e9778754e305e0a7fcc58c73.jpg', '0', '4', '4', '0', '0', '0', '1556454456', '1556454456');
INSERT INTO `pm_order` VALUES ('818', '8792', '', '61741136', '34.10', '', '0.00', '28.10', '0.00', '34.10', '0.00', '29.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556454798', '1556454798');
INSERT INTO `pm_order` VALUES ('819', '8792', '', '99857361', '73.00', '', '0.00', '66.40', '0.00', '73.00', '0.00', '64.41', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556455056', '1556455056');
INSERT INTO `pm_order` VALUES ('893', '8821', '', '48690984', '24.60', '', '0.00', '18.60', '0.00', '24.60', '0.00', '18.00', '6.00', '4.00', '', '3', '/uploads/20190429/02c78eb681070f5f92c840715ef2ce17.jpg', '0', '4', '4', '0', '0', '0', '1556542923', '1556542923');
INSERT INTO `pm_order` VALUES ('821', '8879', '', '55688405', '36.00', '', '0.00', '30.00', '0.00', '36.00', '0.00', '27.18', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556456693', '1556456693');
INSERT INTO `pm_order` VALUES ('822', '8808', '', '86458060', '188.00', '', '0.00', '188.00', '0.00', '188.00', '0.00', '159.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556461028', '1556461028');
INSERT INTO `pm_order` VALUES ('823', '8882', '', '74037272', '36.00', '', '0.00', '30.00', '0.00', '36.00', '0.00', '25.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556488928', '1556488928');
INSERT INTO `pm_order` VALUES ('850', '8860', '', '58273621', '19.50', '', '0.00', '13.50', '0.00', '19.50', '0.00', '21.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556514073', '1556514073');
INSERT INTO `pm_order` VALUES ('826', '8860', '', '55225604', '64.50', '', '0.00', '58.50', '0.00', '64.50', '0.00', '60.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556503956', '1556503956');
INSERT INTO `pm_order` VALUES ('827', '8764', '0452578087', '44090099', '55.80', '', '0.00', '48.00', '0.00', '55.80', '0.00', '48.00', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556504303', '1556504303');
INSERT INTO `pm_order` VALUES ('828', '8756', '', '69150852', '45.80', '', '0.00', '39.80', '0.00', '45.80', '0.00', '39.80', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556504958', '1556504958');
INSERT INTO `pm_order` VALUES ('829', '8666', '', '34715132', '63.40', '', '0.00', '49.60', '0.00', '63.40', '0.00', '45.00', '13.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556505074', '1556505074');
INSERT INTO `pm_order` VALUES ('830', '8677', 'admin3', '43778387', '456.00', '', '0.00', '456.00', '0.00', '456.00', '0.00', '402.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556505075', '1556505075');
INSERT INTO `pm_order` VALUES ('831', '8691', '', '55509487', '101.50', '', '0.00', '101.50', '0.00', '101.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556505284', '1556505284');
INSERT INTO `pm_order` VALUES ('832', '8677', 'admin3', '89532092', '203.00', '', '0.00', '203.00', '0.00', '203.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556505407', '1556505407');
INSERT INTO `pm_order` VALUES ('833', '8660', '', '22149274', '102.90', '', '0.90', '102.90', '0.00', '0.00', '102.90', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1556505465', '1556505465');
INSERT INTO `pm_order` VALUES ('834', '8660', '', '83940151', '102.90', '', '0.90', '102.90', '0.00', '0.00', '102.90', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1556505536', '1556505536');
INSERT INTO `pm_order` VALUES ('835', '8660', '', '85641703', '204.00', '', '0.00', '204.00', '0.00', '49.48', '154.52', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556505580', '1556505580');
INSERT INTO `pm_order` VALUES ('836', '8880', '', '98834399', '108.40', '', '0.00', '97.60', '0.00', '108.40', '0.00', '102.80', '10.80', '7.20', '', '3', '/uploads/20190429/1d21423d0db4a8d45ea37f53de91fc75.jpg', '0', '4', '4', '0', '0', '0', '1556505691', '1556505691');
INSERT INTO `pm_order` VALUES ('837', '8677', 'admin3', '77918353', '209.06', '', '0.00', '193.40', '0.00', '209.06', '0.00', '196.60', '15.66', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556505791', '1556505791');
INSERT INTO `pm_order` VALUES ('838', '8825', '', '45110152', '127.00', '', '0.00', '127.00', '0.00', '127.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556507883', '1556507883');
INSERT INTO `pm_order` VALUES ('839', '8756', '', '87265382', '143.10', '', '0.00', '130.50', '0.00', '143.10', '0.00', '130.10', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556509358', '1556509358');
INSERT INTO `pm_order` VALUES ('840', '8790', '', '20981125', '96.30', '', '0.00', '90.30', '0.00', '96.30', '0.00', '87.80', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556509912', '1556509912');
INSERT INTO `pm_order` VALUES ('841', '8892', '', '65437750', '315.00', '', '0.00', '315.00', '0.00', '315.00', '0.00', '0.00', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1556510547', '1556510547');
INSERT INTO `pm_order` VALUES ('842', '8790', '', '63220359', '23.00', '', '0.00', '23.00', '0.00', '23.00', '0.00', '17.05', '0.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556510557', '1556510557');
INSERT INTO `pm_order` VALUES ('844', '8660', '', '41556443', '204.00', '', '0.00', '204.00', '0.00', '0.00', '204.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556511045', '1556511045');
INSERT INTO `pm_order` VALUES ('845', '8791', '', '80605766', '44.50', '', '0.00', '31.50', '0.00', '44.50', '0.00', '0.00', '13.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556511236', '1556511236');
INSERT INTO `pm_order` VALUES ('846', '8791', '', '17096129', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '201.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556511523', '1556511523');
INSERT INTO `pm_order` VALUES ('847', '8687', '', '26967000', '99.90', '', '0.00', '93.90', '0.00', '99.90', '0.00', '94.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556512686', '1556512686');
INSERT INTO `pm_order` VALUES ('848', '8833', '', '39962295', '51.80', '', '0.00', '45.80', '0.00', '51.80', '0.00', '45.25', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556512863', '1556512863');
INSERT INTO `pm_order` VALUES ('849', '8703', '', '27855842', '63.80', '', '0.00', '51.20', '0.00', '63.80', '0.00', '53.80', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556513157', '1556513157');
INSERT INTO `pm_order` VALUES ('852', '8695', '', '32553266', '114.82', '', '0.00', '103.80', '0.00', '0.00', '114.82', '114.90', '11.02', '7.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1556515050', '1556515050');
INSERT INTO `pm_order` VALUES ('853', '8879', '', '54828208', '166.40', '', '0.00', '137.60', '0.00', '166.40', '0.00', '132.78', '28.80', '19.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556515316', '1556515316');
INSERT INTO `pm_order` VALUES ('854', '8932', '', '47992192', '630.00', '', '0.00', '630.00', '0.00', '630.00', '0.00', '0.00', '0.00', '70.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556515341', '1556515341');
INSERT INTO `pm_order` VALUES ('1272', '9076', '', '84265470', '337.00', '', '0.00', '337.00', '0.00', '337.00', '0.00', '0.00', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1557044231', '1557044231');
INSERT INTO `pm_order` VALUES ('856', '8817', '', '19705396', '54.20', '', '0.00', '47.00', '0.00', '54.20', '0.00', '47.80', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556516624', '1556516624');
INSERT INTO `pm_order` VALUES ('857', '8921', '', '21516568', '32.00', '', '0.00', '20.00', '0.00', '32.00', '0.00', '40.00', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556517068', '1556517068');
INSERT INTO `pm_order` VALUES ('858', '8901', '', '52253093', '76.10', '', '0.00', '70.10', '0.00', '76.10', '0.00', '71.40', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556517664', '1556517664');
INSERT INTO `pm_order` VALUES ('860', '8906', '', '64155390', '204.00', '', '0.00', '204.00', '0.00', '0.00', '204.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556518520', '1556518520');
INSERT INTO `pm_order` VALUES ('861', '8906', '', '45808930', '204.00', '', '0.00', '204.00', '0.00', '0.00', '204.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556518558', '1556518558');
INSERT INTO `pm_order` VALUES ('862', '8927', '', '19048218', '392.60', '', '0.00', '353.00', '0.00', '392.60', '0.00', '344.00', '39.60', '26.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556518822', '1556518822');
INSERT INTO `pm_order` VALUES ('863', '8881', '', '72662357', '128.70', '', '0.00', '116.70', '0.00', '128.70', '0.00', '113.90', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556519115', '1556519115');
INSERT INTO `pm_order` VALUES ('877', '8673', '', '92606043', '44.00', '', '0.00', '38.00', '0.00', '44.00', '0.00', '35.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556527518', '1556527518');
INSERT INTO `pm_order` VALUES ('865', '8906', '', '55044712', '79.25', '', '0.00', '79.25', '0.00', '0.00', '79.25', '52.50', '0.00', '12.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1556520395', '1556520395');
INSERT INTO `pm_order` VALUES ('866', '8817', '', '94307802', '52.80', '', '0.00', '46.80', '0.00', '52.80', '0.00', '51.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556520604', '1556520604');
INSERT INTO `pm_order` VALUES ('867', '8906', '', '72206387', '183.76', '', '0.00', '161.72', '0.00', '0.00', '183.76', '166.20', '22.04', '15.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1556521468', '1556521468');
INSERT INTO `pm_order` VALUES ('868', '8864', '', '47487846', '34.40', '', '0.00', '27.80', '0.00', '34.40', '0.00', '27.00', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556522732', '1556522732');
INSERT INTO `pm_order` VALUES ('875', '8687', '', '48962462', '101.60', '', '0.00', '56.00', '0.00', '101.60', '0.00', '59.00', '45.60', '30.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556526897', '1556526897');
INSERT INTO `pm_order` VALUES ('876', '8941', '', '41418850', '38.80', '', '0.00', '28.60', '0.00', '38.80', '0.00', '30.00', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556527026', '1556527026');
INSERT INTO `pm_order` VALUES ('871', '8906', '', '17395921', '228.00', '', '0.00', '228.00', '0.00', '0.00', '228.00', '201.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556523856', '1556523856');
INSERT INTO `pm_order` VALUES ('872', '8825', '', '52549246', '96.60', '', '0.00', '76.80', '0.00', '96.60', '0.00', '80.30', '19.80', '13.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556524261', '1556524261');
INSERT INTO `pm_order` VALUES ('873', '8660', '', '36446549', '248.56', '', '0.00', '206.22', '0.00', '0.00', '248.56', '224.57', '42.34', '29.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1556524883', '1556524883');
INSERT INTO `pm_order` VALUES ('874', '8906', '', '97537952', '204.00', '', '0.00', '204.00', '0.00', '0.00', '204.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556524996', '1556524996');
INSERT INTO `pm_order` VALUES ('878', '8934', '', '34443761', '204.00', '', '0.00', '204.00', '0.00', '0.00', '204.00', '0.00', '0.00', '23.40', '下错段数 客户要求取消订单', '0', '', '0', '2', '99', '0', '1', '0', '1556527807', '1556527807');
INSERT INTO `pm_order` VALUES ('879', '8927', '', '69108869', '157.70', '', '0.00', '119.90', '0.00', '157.70', '0.00', '120.40', '37.80', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556528593', '1556528593');
INSERT INTO `pm_order` VALUES ('880', '8906', '', '91990240', '204.00', '', '0.00', '204.00', '0.00', '0.00', '204.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1556528671', '1556528671');
INSERT INTO `pm_order` VALUES ('881', '8927', '', '26994676', '85.50', '', '0.00', '75.90', '0.00', '85.50', '0.00', '82.80', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556529172', '1556529172');
INSERT INTO `pm_order` VALUES ('882', '8792', '', '90251179', '33.33', '', '0.00', '24.93', '0.00', '33.33', '0.00', '24.30', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556529177', '1556529177');
INSERT INTO `pm_order` VALUES ('883', '8658', 'admin', '59454753', '43.84', '', '0.00', '33.40', '0.00', '0.00', '43.84', '33.80', '10.44', '7.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1556529345', '1556529345');
INSERT INTO `pm_order` VALUES ('884', '8927', '', '82142603', '76.20', '', '0.00', '67.80', '0.00', '76.20', '0.00', '68.40', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556529576', '1556529576');
INSERT INTO `pm_order` VALUES ('885', '8921', '', '14118725', '41.20', '', '0.00', '31.60', '0.00', '41.20', '0.00', '39.00', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556533773', '1556533773');
INSERT INTO `pm_order` VALUES ('886', '8950', '', '18711259', '120.60', '', '0.00', '114.00', '0.00', '120.60', '0.00', '112.00', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556533824', '1556533824');
INSERT INTO `pm_order` VALUES ('887', '8820', '', '48264532', '303.00', '', '0.00', '291.60', '0.00', '303.00', '0.00', '75.60', '11.40', '31.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556535343', '1556535343');
INSERT INTO `pm_order` VALUES ('1259', '8917', '', '82617436', '82.72', '', '0.00', '76.72', '0.00', '82.72', '0.00', '73.80', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557038531', '1557038531');
INSERT INTO `pm_order` VALUES ('892', '8955', '', '27553274', '64.50', '', '0.00', '64.50', '0.00', '64.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556542446', '1556542446');
INSERT INTO `pm_order` VALUES ('891', '8719', '18723486111', '14103906', '48.50', '', '0.00', '48.50', '0.00', '48.50', '0.00', '0.00', '0.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556537480', '1556537480');
INSERT INTO `pm_order` VALUES ('894', '8703', '', '57785175', '33.30', '', '0.00', '27.30', '0.00', '33.30', '0.00', '26.30', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556543453', '1556543453');
INSERT INTO `pm_order` VALUES ('895', '8956', '', '56918072', '111.80', '', '1.80', '111.80', '0.00', '111.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556550294', '1556550294');
INSERT INTO `pm_order` VALUES ('896', '8957', '', '79846273', '53.60', '', '0.00', '47.60', '0.00', '53.60', '0.00', '48.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556553737', '1556553737');
INSERT INTO `pm_order` VALUES ('897', '8692', '', '62455192', '57.60', '', '0.00', '51.60', '0.00', '57.60', '0.00', '52.30', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556576162', '1556576162');
INSERT INTO `pm_order` VALUES ('898', '8959', '', '90978152', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556577870', '1556577870');
INSERT INTO `pm_order` VALUES ('899', '8959', '', '58649320', '74.50', '', '0.00', '74.50', '0.00', '74.50', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556578913', '1556578913');
INSERT INTO `pm_order` VALUES ('900', '8688', '0452066651', '34848979', '108.00', '', '0.00', '108.00', '0.00', '108.00', '0.00', '84.90', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556582104', '1556582104');
INSERT INTO `pm_order` VALUES ('901', '8796', '', '14675480', '87.80', '', '0.00', '66.80', '0.00', '87.80', '0.00', '67.60', '21.00', '14.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556585578', '1556585578');
INSERT INTO `pm_order` VALUES ('902', '8726', '', '26054358', '24.60', '', '0.00', '18.60', '0.00', '24.60', '0.00', '18.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556585836', '1556585836');
INSERT INTO `pm_order` VALUES ('903', '8962', '', '86004876', '34.00', '', '0.00', '28.00', '0.00', '34.00', '0.00', '26.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556587371', '1556587371');
INSERT INTO `pm_order` VALUES ('904', '8895', '18677236919', '82640428', '68.64', '', '0.00', '61.10', '0.00', '0.00', '68.64', '62.50', '7.54', '5.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1556588394', '1556588394');
INSERT INTO `pm_order` VALUES ('905', '8769', '', '30937769', '18.00', '', '0.00', '11.40', '0.00', '18.00', '0.00', '6.24', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556589675', '1556589675');
INSERT INTO `pm_order` VALUES ('976', '8727', '0450300513', '71948850', '214.00', '', '0.00', '214.00', '0.00', '214.00', '0.00', '169.80', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556677397', '1556677397');
INSERT INTO `pm_order` VALUES ('907', '8958', '', '62479935', '78.80', '', '0.00', '70.40', '0.00', '78.80', '0.00', '67.49', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556590471', '1556590471');
INSERT INTO `pm_order` VALUES ('908', '8823', '', '70327070', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1556590617', '1556590617');
INSERT INTO `pm_order` VALUES ('909', '8825', '', '96349290', '254.00', '', '0.00', '254.00', '0.00', '254.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556590630', '1556590630');
INSERT INTO `pm_order` VALUES ('910', '8824', '', '27858913', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556591173', '1556591173');
INSERT INTO `pm_order` VALUES ('911', '8732', '', '94402396', '159.50', '', '0.00', '134.50', '0.00', '159.50', '0.00', '97.40', '25.00', '19.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556592095', '1556592095');
INSERT INTO `pm_order` VALUES ('912', '8824', '', '33384971', '107.50', '', '0.00', '93.70', '0.00', '107.50', '0.00', '98.80', '13.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556592870', '1556592870');
INSERT INTO `pm_order` VALUES ('913', '8677', 'admin3', '13085435', '248.00', '', '0.00', '248.00', '0.00', '248.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556594145', '1556594145');
INSERT INTO `pm_order` VALUES ('914', '8677', 'admin3', '53414087', '21.30', '', '0.00', '15.50', '0.00', '21.30', '0.00', '16.00', '5.80', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556594378', '1556594378');
INSERT INTO `pm_order` VALUES ('915', '8896', '', '13513356', '311.00', '', '0.00', '305.00', '0.00', '311.00', '0.00', '300.00', '6.00', '12.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556594506', '1556594506');
INSERT INTO `pm_order` VALUES ('916', '8677', 'admin3', '16260167', '248.00', '', '0.00', '248.00', '0.00', '248.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556594550', '1556594550');
INSERT INTO `pm_order` VALUES ('917', '8963', '', '15519106', '251.60', '', '0.00', '225.60', '0.00', '251.60', '0.00', '0.00', '26.00', '22.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556594921', '1556594921');
INSERT INTO `pm_order` VALUES ('918', '8677', 'admin3', '75300417', '408.00', '', '0.00', '408.00', '0.00', '408.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556595195', '1556595195');
INSERT INTO `pm_order` VALUES ('919', '8853', '', '46131445', '107.50', '', '0.00', '107.50', '0.00', '107.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556595213', '1556595213');
INSERT INTO `pm_order` VALUES ('921', '8677', 'admin3', '11751545', '700.00', '', '0.00', '700.00', '0.00', '700.00', '0.00', '0.00', '0.00', '70.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556595424', '1556595424');
INSERT INTO `pm_order` VALUES ('922', '8677', 'admin3', '61935146', '204.00', '', '0.00', '204.00', '0.00', '204.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556595599', '1556595599');
INSERT INTO `pm_order` VALUES ('923', '8677', 'admin3', '52573661', '204.00', '', '0.00', '204.00', '0.00', '204.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556595741', '1556595741');
INSERT INTO `pm_order` VALUES ('924', '8677', 'admin3', '65750100', '204.00', '', '0.00', '204.00', '0.00', '204.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556595921', '1556595921');
INSERT INTO `pm_order` VALUES ('925', '8853', '', '55871217', '467.60', '', '3.60', '467.60', '0.00', '467.60', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556596152', '1556596152');
INSERT INTO `pm_order` VALUES ('926', '8677', 'admin3', '55823381', '510.00', '', '0.00', '510.00', '0.00', '510.00', '0.00', '0.00', '0.00', '58.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1556596250', '1556596250');
INSERT INTO `pm_order` VALUES ('927', '8921', '', '60669176', '34.50', '', '0.00', '28.50', '0.00', '34.50', '0.00', '30.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556596714', '1556596714');
INSERT INTO `pm_order` VALUES ('928', '8970', '', '58136772', '16.90', '', '0.00', '10.90', '0.00', '16.90', '0.00', '8.10', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556597408', '1556597408');
INSERT INTO `pm_order` VALUES ('929', '8942', '', '82064233', '52.50', '', '0.00', '46.50', '0.00', '52.50', '0.00', '48.40', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556599469', '1556599469');
INSERT INTO `pm_order` VALUES ('930', '8943', '', '36619481', '234.80', '', '0.00', '208.80', '0.00', '234.80', '0.00', '201.00', '26.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556599655', '1556599655');
INSERT INTO `pm_order` VALUES ('931', '8975', '', '58340011', '254.00', '', '0.00', '254.00', '0.00', '254.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556599977', '1556599977');
INSERT INTO `pm_order` VALUES ('932', '8943', '', '47692624', '125.40', '', '0.00', '119.40', '0.00', '125.40', '0.00', '119.40', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556600111', '1556600111');
INSERT INTO `pm_order` VALUES ('933', '8943', '', '10914409', '195.10', '', '0.00', '175.30', '0.00', '195.10', '0.00', '179.20', '19.80', '13.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556600646', '1556600646');
INSERT INTO `pm_order` VALUES ('934', '8903', '', '48331236', '105.00', '', '0.00', '105.00', '0.00', '105.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556601069', '1556601069');
INSERT INTO `pm_order` VALUES ('935', '8879', '', '27591906', '58.00', '', '0.00', '52.00', '0.00', '58.00', '0.00', '52.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1556601352', '1556601352');
INSERT INTO `pm_order` VALUES ('937', '8853', '', '21673759', '433.60', '', '3.60', '433.60', '0.00', '433.60', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1556602068', '1556602068');
INSERT INTO `pm_order` VALUES ('938', '8970', '', '71436174', '74.50', '', '0.00', '74.50', '0.00', '0.00', '74.50', '63.75', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1556603565', '1556603565');
INSERT INTO `pm_order` VALUES ('939', '8677', 'admin3', '45731411', '248.00', '', '0.00', '248.00', '0.00', '248.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556604505', '1556604505');
INSERT INTO `pm_order` VALUES ('940', '8854', '', '37592848', '24.60', '', '0.00', '24.60', '0.00', '24.60', '0.00', '18.00', '0.00', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556604861', '1556604861');
INSERT INTO `pm_order` VALUES ('941', '8677', 'admin3', '38664167', '149.00', '', '0.00', '149.00', '0.00', '149.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556605251', '1556605251');
INSERT INTO `pm_order` VALUES ('942', '8798', '', '87575204', '118.60', '', '0.00', '107.80', '0.00', '118.60', '0.00', '110.40', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1556606184', '1556606184');
INSERT INTO `pm_order` VALUES ('943', '8687', '', '74311064', '117.00', '', '0.00', '99.00', '0.00', '117.00', '0.00', '120.00', '18.00', '12.00', 'ZH02818030142缺货退款', '0', '', '0', '3', '4', '0', '0', '0', '1556606429', '1556606429');
INSERT INTO `pm_order` VALUES ('944', '8677', 'admin3', '37142635', '125.00', '', '0.00', '125.00', '0.00', '125.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556607693', '1556607693');
INSERT INTO `pm_order` VALUES ('945', '8695', '', '56562393', '102.62', '', '0.00', '85.80', '0.00', '0.00', '102.62', '81.60', '16.82', '11.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1556607893', '1556607893');
INSERT INTO `pm_order` VALUES ('1260', '8935', '', '18897975', '31.50', '', '0.00', '25.50', '0.00', '0.00', '31.50', '23.50', '6.00', '3.90', '', '0', '', '0', '2', '4', '0', '0', '0', '1557038847', '1557038847');
INSERT INTO `pm_order` VALUES ('947', '8939', '', '35899475', '24.60', '', '0.00', '24.60', '0.00', '24.60', '0.00', '18.00', '0.00', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1556608785', '1556608785');
INSERT INTO `pm_order` VALUES ('948', '8955', '', '87075262', '127.00', '', '0.00', '127.00', '0.00', '127.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1556608793', '1556608793');
INSERT INTO `pm_order` VALUES ('949', '8970', '', '46305402', '74.50', '', '0.00', '74.50', '0.00', '0.00', '74.50', '63.75', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1556609592', '1556609592');
INSERT INTO `pm_order` VALUES ('1273', '8854', '', '54311986', '29.60', '', '0.00', '22.40', '0.00', '29.60', '0.00', '20.30', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557044423', '1557044423');
INSERT INTO `pm_order` VALUES ('1274', '8811', '', '48436963', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557044685', '1557044685');
INSERT INTO `pm_order` VALUES ('1275', '8687', '', '72116955', '134.20', '', '0.00', '128.20', '0.00', '134.20', '0.00', '132.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557047101', '1557047101');
INSERT INTO `pm_order` VALUES ('1276', '8757', '', '21459742', '93.90', '', '0.00', '83.70', '0.00', '93.90', '0.00', '81.03', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557047284', '1557047284');
INSERT INTO `pm_order` VALUES ('1277', '8757', '', '23173598', '81.20', '', '0.00', '69.80', '0.00', '81.20', '0.00', '66.43', '11.40', '7.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557048278', '1557048278');
INSERT INTO `pm_order` VALUES ('1278', '8768', '', '39188655', '64.50', '', '0.00', '55.50', '0.00', '64.50', '0.00', '60.00', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557048592', '1557048592');
INSERT INTO `pm_order` VALUES ('1279', '8769', '', '25303352', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '201.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557049209', '1557049209');
INSERT INTO `pm_order` VALUES ('1280', '8769', '', '10165276', '209.00', '', '0.00', '209.00', '0.00', '209.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557049565', '1557049565');
INSERT INTO `pm_order` VALUES ('1281', '8780', '', '61443524', '75.40', '', '0.00', '69.40', '0.00', '75.40', '0.00', '73.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557049740', '1557049740');
INSERT INTO `pm_order` VALUES ('1282', '8769', '', '17924761', '43.50', '', '0.00', '37.50', '0.00', '43.50', '0.00', '0.00', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1557050632', '1557050632');
INSERT INTO `pm_order` VALUES ('1284', '8806', '', '90294712', '104.10', '', '0.00', '97.50', '0.00', '104.10', '0.00', '100.00', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557052126', '1557052126');
INSERT INTO `pm_order` VALUES ('1285', '8916', '', '34614840', '258.50', '', '0.00', '241.10', '0.00', '258.50', '0.00', '230.60', '17.40', '12.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557052215', '1557052215');
INSERT INTO `pm_order` VALUES ('1447', '9111', '0449880908', '12348772', '151.40', '', '0.00', '131.00', '0.00', '151.40', '0.00', '130.90', '20.40', '13.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557139292', '1557139292');
INSERT INTO `pm_order` VALUES ('1287', '8916', '', '89004728', '51.58', '', '0.00', '39.40', '0.00', '51.58', '0.00', '40.30', '12.18', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557052970', '1557052970');
INSERT INTO `pm_order` VALUES ('1288', '8693', '', '18762069', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557053754', '1557053754');
INSERT INTO `pm_order` VALUES ('1290', '8938', '', '89948290', '57.93', '', '0.00', '51.93', '0.00', '57.93', '0.00', '55.54', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557056182', '1557056182');
INSERT INTO `pm_order` VALUES ('1291', '9088', '', '93660200', '420.00', '', '0.00', '420.00', '0.00', '420.00', '0.00', '0.00', '0.00', '46.80', '', '3', '/uploads/20190505/7c8095f3265640ff73ede9ad495cb503.jpg', '0', '4', '4', '0', '0', '0', '1557058275', '1557058275');
INSERT INTO `pm_order` VALUES ('1292', '9088', '', '79355885', '31.50', '', '0.00', '25.50', '0.00', '31.50', '0.00', '25.00', '6.00', '4.00', '', '3', '/uploads/20190505/120f923d1d54a725b705f7f2b23bebc1.jpg', '0', '4', '4', '0', '0', '0', '1557058651', '1557058651');
INSERT INTO `pm_order` VALUES ('1294', '8934', '', '79218986', '351.00', '', '0.00', '351.00', '0.00', '0.00', '351.00', '298.50', '0.00', '35.10', '', '0', '', '0', '2', '4', '0', '0', '0', '1557059378', '1557059378');
INSERT INTO `pm_order` VALUES ('1295', '8690', '17723080131', '51899645', '164.30', '', '0.00', '148.70', '0.00', '164.30', '0.00', '150.20', '15.60', '10.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557059382', '1557059382');
INSERT INTO `pm_order` VALUES ('1296', '8716', '', '52591435', '228.00', '', '0.00', '228.00', '0.00', '228.00', '0.00', '0.00', '0.00', '50.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557059627', '1557059627');
INSERT INTO `pm_order` VALUES ('1297', '8807', '', '38668658', '570.00', '', '0.00', '537.60', '0.00', '570.00', '0.00', '564.00', '32.40', '21.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557059895', '1557059895');
INSERT INTO `pm_order` VALUES ('1298', '8692', '', '85227720', '55.50', '', '0.00', '47.70', '0.00', '55.50', '0.00', '52.10', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557060230', '1557060230');
INSERT INTO `pm_order` VALUES ('1299', '8694', '', '67200843', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '201.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557060864', '1557060864');
INSERT INTO `pm_order` VALUES ('1300', '8710', '', '65984016', '63.00', '', '0.00', '54.60', '0.00', '63.00', '0.00', '53.40', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557060937', '1557060937');
INSERT INTO `pm_order` VALUES ('1301', '8666', '', '56534641', '233.30', '', '0.00', '221.30', '0.00', '233.30', '0.00', '222.70', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557061468', '1557061468');
INSERT INTO `pm_order` VALUES ('1302', '9046', '', '92850023', '50.00', '', '0.00', '44.00', '0.00', '50.00', '0.00', '43.60', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557062102', '1557062102');
INSERT INTO `pm_order` VALUES ('1303', '8690', '17723080131', '25766126', '72.40', '', '0.00', '60.40', '0.00', '72.40', '0.00', '22.33', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557062134', '1557062134');
INSERT INTO `pm_order` VALUES ('1304', '8877', '', '65100827', '75.00', '', '0.00', '69.00', '0.00', '75.00', '0.00', '70.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557062560', '1557062560');
INSERT INTO `pm_order` VALUES ('1305', '8769', '', '65561318', '254.00', '', '0.00', '254.00', '0.00', '254.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557063663', '1557063663');
INSERT INTO `pm_order` VALUES ('1306', '8692', '', '89815046', '66.96', '', '0.00', '59.76', '0.00', '66.96', '0.00', '57.90', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557063711', '1557063711');
INSERT INTO `pm_order` VALUES ('1307', '8660', '', '41096931', '234.00', '', '0.00', '234.00', '0.00', '0.00', '234.00', '195.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557063720', '1557063720');
INSERT INTO `pm_order` VALUES ('1308', '8716', '', '15371632', '802.74', '', '0.00', '728.50', '0.00', '802.74', '0.00', '735.70', '74.24', '51.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557064009', '1557064009');
INSERT INTO `pm_order` VALUES ('1309', '8687', '', '24662798', '25.80', '', '0.00', '19.80', '0.00', '25.80', '0.00', '18.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557065377', '1557065377');
INSERT INTO `pm_order` VALUES ('1310', '8969', '', '79409247', '93.30', '', '0.00', '84.60', '0.00', '0.00', '93.30', '85.80', '8.70', '6.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557068460', '1557068460');
INSERT INTO `pm_order` VALUES ('1312', '8914', '0431471764', '67415746', '250.00', '', '0.00', '250.00', '0.00', '0.00', '250.00', '0.00', '0.00', '22.50', '', '0', '', '0', '2', '4', '0', '0', '0', '1557080402', '1557080402');
INSERT INTO `pm_order` VALUES ('1313', '8914', '0431471764', '87676341', '250.00', '', '0.00', '250.00', '0.00', '0.00', '250.00', '0.00', '0.00', '22.50', '', '0', '', '0', '2', '4', '0', '0', '0', '1557080666', '1557080666');
INSERT INTO `pm_order` VALUES ('1314', '8898', '', '63857657', '113.20', '', '0.00', '105.08', '0.00', '0.00', '113.20', '107.50', '8.12', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557094223', '1557094223');
INSERT INTO `pm_order` VALUES ('1470', '8914', '0431471764', '83669139', '204.00', '', '0.00', '204.00', '0.00', '0.00', '204.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557184696', '1557184696');
INSERT INTO `pm_order` VALUES ('1317', '8898', '', '27289315', '192.00', '', '0.00', '192.00', '0.00', '0.00', '192.00', '162.00', '0.00', '18.72', '', '0', '', '0', '2', '4', '0', '0', '0', '1557097800', '1557097800');
INSERT INTO `pm_order` VALUES ('1318', '8684', '', '15959848', '40.40', '', '0.00', '32.00', '0.00', '40.40', '0.00', '31.60', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557098061', '1557098061');
INSERT INTO `pm_order` VALUES ('1319', '8895', '18677236919', '97088187', '65.30', '', '0.00', '59.50', '0.00', '0.00', '65.30', '60.70', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557098877', '1557098877');
INSERT INTO `pm_order` VALUES ('1320', '8914', '0431471764', '20862970', '88.68', '', '0.00', '79.40', '0.00', '0.00', '88.68', '82.00', '9.28', '6.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557099225', '1557099225');
INSERT INTO `pm_order` VALUES ('1321', '8914', '0431471764', '63488167', '44.80', '', '0.00', '39.00', '0.00', '0.00', '44.80', '41.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557099451', '1557099451');
INSERT INTO `pm_order` VALUES ('1322', '8914', '0431471764', '55996899', '54.72', '', '0.00', '43.70', '0.00', '0.00', '54.72', '42.86', '11.02', '7.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557100303', '1557100303');
INSERT INTO `pm_order` VALUES ('1323', '8914', '0431471764', '76738093', '83.00', '', '0.00', '83.00', '0.00', '0.00', '83.00', '0.00', '0.00', '11.70', '因为没货取消，已退款', '0', '', '0', '2', '99', '0', '1', '0', '1557100557', '1557100557');
INSERT INTO `pm_order` VALUES ('1324', '8914', '0431471764', '73394395', '125.50', '', '0.00', '112.50', '0.00', '0.00', '125.50', '0.00', '13.00', '11.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557100819', '1557100819');
INSERT INTO `pm_order` VALUES ('1325', '8914', '0431471764', '53454395', '59.30', '', '0.00', '53.50', '0.00', '0.00', '59.30', '53.59', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557101547', '1557101547');
INSERT INTO `pm_order` VALUES ('1326', '8969', '', '63656274', '60.74', '', '0.00', '53.20', '0.00', '0.00', '60.74', '54.00', '7.54', '5.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557102262', '1557102262');
INSERT INTO `pm_order` VALUES ('1327', '8771', '', '39002052', '96.30', '', '0.00', '88.50', '0.00', '96.30', '0.00', '93.70', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557102331', '1557102331');
INSERT INTO `pm_order` VALUES ('1328', '8924', '', '86729760', '127.60', '', '0.00', '114.60', '0.00', '127.60', '0.00', '0.00', '13.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557102701', '1557102701');
INSERT INTO `pm_order` VALUES ('1329', '8969', '', '49668661', '39.50', '', '0.00', '32.54', '0.00', '0.00', '39.50', '33.80', '6.96', '4.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557102766', '1557102766');
INSERT INTO `pm_order` VALUES ('1330', '8969', '', '60447061', '60.00', '', '0.00', '60.00', '0.00', '0.00', '60.00', '38.00', '0.00', '8.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557102926', '1557102926');
INSERT INTO `pm_order` VALUES ('1331', '8740', '', '71483774', '254.00', '', '0.00', '254.00', '0.00', '254.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557103030', '1557103030');
INSERT INTO `pm_order` VALUES ('1332', '8924', '', '24625109', '82.60', '', '0.00', '82.60', '0.00', '82.60', '0.00', '18.00', '0.00', '14.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557103988', '1557103988');
INSERT INTO `pm_order` VALUES ('1333', '8974', '', '38801163', '401.00', '', '0.00', '401.00', '0.00', '401.00', '0.00', '325.50', '0.00', '58.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1557104982', '1557104982');
INSERT INTO `pm_order` VALUES ('1334', '8914', '0431471764', '57512384', '56.00', '', '0.00', '56.00', '0.00', '0.00', '56.00', '0.00', '0.00', '11.25', '', '0', '', '0', '2', '4', '0', '0', '0', '1557105028', '1557105028');
INSERT INTO `pm_order` VALUES ('1335', '8898', '', '40880914', '62.96', '', '0.00', '56.00', '0.00', '0.00', '62.96', '56.50', '6.96', '4.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557105659', '1557105659');
INSERT INTO `pm_order` VALUES ('1336', '8764', '0452578087', '22643149', '25.70', '', '0.00', '19.70', '0.00', '25.70', '0.00', '18.18', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557107344', '1557107344');
INSERT INTO `pm_order` VALUES ('1337', '8785', '', '84842013', '65.00', '', '0.00', '53.00', '0.00', '65.00', '0.00', '49.50', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557107660', '1557107660');
INSERT INTO `pm_order` VALUES ('1338', '8690', '17723080131', '64520083', '46.20', '', '0.00', '36.00', '0.00', '46.20', '0.00', '33.00', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557107915', '1557107915');
INSERT INTO `pm_order` VALUES ('1339', '8955', '', '44303742', '47.00', '', '0.00', '47.00', '0.00', '47.00', '0.00', '0.00', '0.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557108272', '1557108272');
INSERT INTO `pm_order` VALUES ('1340', '8663', 'admin1', '87698051', '63.36', '', '0.00', '56.40', '0.00', '63.36', '0.00', '59.50', '6.96', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557108325', '1557108325');
INSERT INTO `pm_order` VALUES ('1341', '8777', '', '93996384', '255.80', '', '1.80', '255.80', '0.00', '255.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557108877', '1557108877');
INSERT INTO `pm_order` VALUES ('1342', '8990', '', '95486876', '186.40', '', '0.00', '158.20', '0.00', '186.40', '0.00', '162.32', '28.20', '18.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557108954', '1557108954');
INSERT INTO `pm_order` VALUES ('1343', '9042', '', '34888086', '178.40', '', '0.00', '156.80', '0.00', '178.40', '0.00', '157.68', '21.60', '14.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557108958', '1557108958');
INSERT INTO `pm_order` VALUES ('1344', '8914', '0431471764', '75515742', '125.00', '', '0.00', '125.00', '0.00', '0.00', '125.00', '0.00', '0.00', '11.25', '', '0', '', '0', '2', '4', '0', '0', '0', '1557109268', '1557109268');
INSERT INTO `pm_order` VALUES ('1345', '8660', '', '88976159', '46.00', '', '0.00', '46.00', '0.00', '0.00', '46.00', '0.00', '0.00', '10.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557110467', '1557110467');
INSERT INTO `pm_order` VALUES ('1346', '8883', '', '90118622', '121.80', '', '0.00', '115.80', '0.00', '121.80', '0.00', '108.25', '6.00', '15.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557110534', '1557110534');
INSERT INTO `pm_order` VALUES ('1347', '8677', 'admin3', '29031360', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557110630', '1557110630');
INSERT INTO `pm_order` VALUES ('1348', '8914', '0431471764', '85622877', '79.88', '', '0.00', '73.50', '0.00', '0.00', '79.88', '74.50', '6.38', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557111049', '1557111049');
INSERT INTO `pm_order` VALUES ('1349', '8934', '', '68366761', '125.00', '', '0.00', '125.00', '0.00', '0.00', '125.00', '0.00', '0.00', '11.70', '口味拍错，已重新下单，已退款', '0', '', '0', '2', '99', '0', '1', '0', '1557111630', '1557111630');
INSERT INTO `pm_order` VALUES ('1350', '8914', '0431471764', '19068379', '43.50', '', '0.00', '37.50', '0.00', '0.00', '43.50', '0.00', '6.00', '3.90', '', '0', '', '0', '2', '4', '0', '0', '0', '1557111840', '1557111840');
INSERT INTO `pm_order` VALUES ('1351', '8936', '', '44530605', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557111872', '1557111872');
INSERT INTO `pm_order` VALUES ('1352', '8934', '', '82948858', '125.00', '', '0.00', '125.00', '0.00', '0.00', '125.00', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557111965', '1557111965');
INSERT INTO `pm_order` VALUES ('1353', '8893', '', '58744765', '22.20', '', '0.00', '16.20', '0.00', '22.20', '0.00', '15.80', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557112002', '1557112002');
INSERT INTO `pm_order` VALUES ('1354', '8727', '0450300513', '31261212', '58.70', '', '0.00', '51.50', '0.00', '58.70', '0.00', '53.80', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557112051', '1557112051');
INSERT INTO `pm_order` VALUES ('1355', '8914', '0431471764', '15936711', '109.40', '', '0.00', '97.80', '0.00', '0.00', '109.40', '96.98', '11.60', '8.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557112293', '1557112293');
INSERT INTO `pm_order` VALUES ('1356', '8944', '', '71810045', '210.80', '', '1.80', '210.80', '0.00', '0.00', '210.80', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557112653', '1557112653');
INSERT INTO `pm_order` VALUES ('1357', '8934', '', '24767301', '56.12', '', '0.00', '48.00', '0.00', '0.00', '56.12', '43.08', '8.12', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557112933', '1557112933');
INSERT INTO `pm_order` VALUES ('1358', '8690', '17723080131', '26347763', '84.00', '', '0.00', '78.00', '0.00', '84.00', '0.00', '80.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557113752', '1557113752');
INSERT INTO `pm_order` VALUES ('1359', '8944', '', '31884267', '91.30', '', '0.00', '85.50', '0.00', '0.00', '91.30', '87.60', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557114344', '1557114344');
INSERT INTO `pm_order` VALUES ('1360', '8925', '', '44650620', '47.80', '', '0.00', '41.80', '0.00', '47.80', '0.00', '44.10', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557114417', '1557114417');
INSERT INTO `pm_order` VALUES ('1361', '8914', '0431471764', '69396876', '56.10', '', '0.00', '44.50', '0.00', '0.00', '56.10', '43.55', '11.60', '8.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557114637', '1557114637');
INSERT INTO `pm_order` VALUES ('1362', '8864', '', '89678472', '400.00', '', '0.00', '400.00', '0.00', '400.00', '0.00', '0.00', '0.00', '43.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557114805', '1557114805');
INSERT INTO `pm_order` VALUES ('1363', '8892', '', '39887562', '87.90', '', '0.00', '68.10', '0.00', '87.90', '0.00', '68.80', '19.80', '13.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557114897', '1557114897');
INSERT INTO `pm_order` VALUES ('1364', '8984', '', '99077456', '57.90', '', '0.90', '57.90', '0.00', '57.90', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557114920', '1557114920');
INSERT INTO `pm_order` VALUES ('1366', '8892', '', '97385634', '120.00', '', '0.00', '112.80', '0.00', '120.00', '0.00', '123.00', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557115050', '1557115050');
INSERT INTO `pm_order` VALUES ('1367', '9099', '', '21224657', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '130.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557115073', '1557115073');
INSERT INTO `pm_order` VALUES ('1368', '8942', '', '20105426', '125.00', '', '0.00', '125.00', '0.00', '125.00', '0.00', '0.00', '0.00', '11.25', '', '0', '', '0', '3', '4', '0', '0', '0', '1557115668', '1557115668');
INSERT INTO `pm_order` VALUES ('1369', '8959', '', '69581091', '89.00', '', '0.00', '89.00', '0.00', '89.00', '0.00', '70.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557115883', '1557115883');
INSERT INTO `pm_order` VALUES ('1370', '8769', '', '23817707', '78.00', '', '0.00', '71.40', '0.00', '78.00', '0.00', '72.00', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557115891', '1557115891');
INSERT INTO `pm_order` VALUES ('1376', '8867', '', '82180477', '30.60', '', '0.00', '23.40', '0.00', '30.60', '0.00', '21.00', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557116342', '1557116342');
INSERT INTO `pm_order` VALUES ('1372', '8914', '0431471764', '40592049', '117.00', '', '0.00', '117.00', '0.00', '0.00', '117.00', '100.50', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557115970', '1557115970');
INSERT INTO `pm_order` VALUES ('1373', '8732', '13429413356', '94028713', '68.30', '', '0.00', '61.10', '0.00', '68.30', '0.00', '60.58', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557115995', '1557115995');
INSERT INTO `pm_order` VALUES ('1374', '8666', '', '52021542', '125.90', '', '0.90', '125.90', '0.00', '125.90', '0.00', '0.00', '0.00', '11.25', '', '0', '', '0', '3', '4', '0', '0', '0', '1557116007', '1557116007');
INSERT INTO `pm_order` VALUES ('1375', '8871', '', '55294554', '529.50', '', '4.50', '529.50', '0.00', '529.50', '0.00', '0.00', '0.00', '58.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1557116105', '1557116105');
INSERT INTO `pm_order` VALUES ('1377', '9105', '', '32241969', '254.00', '', '0.00', '254.00', '0.00', '254.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557116512', '1557116512');
INSERT INTO `pm_order` VALUES ('1378', '9107', '', '99948432', '91.00', '', '0.00', '91.00', '0.00', '91.00', '0.00', '73.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557116808', '1557116808');
INSERT INTO `pm_order` VALUES ('1379', '8914', '0431471764', '45659584', '250.00', '', '0.00', '250.00', '0.00', '0.00', '250.00', '0.00', '0.00', '22.50', '', '0', '', '0', '2', '4', '0', '0', '0', '1557116820', '1557116820');
INSERT INTO `pm_order` VALUES ('1380', '8867', '', '93833090', '46.40', '', '0.00', '33.80', '0.00', '46.40', '0.00', '34.40', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557116835', '1557116835');
INSERT INTO `pm_order` VALUES ('1381', '8914', '0431471764', '35325839', '92.00', '', '0.00', '92.00', '0.00', '0.00', '92.00', '0.00', '0.00', '21.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557117246', '1557117246');
INSERT INTO `pm_order` VALUES ('1382', '8914', '0431471764', '48438012', '125.00', '', '0.00', '125.00', '0.00', '0.00', '125.00', '0.00', '0.00', '11.25', '', '0', '', '0', '2', '4', '0', '0', '0', '1557117513', '1557117513');
INSERT INTO `pm_order` VALUES ('1383', '9108', '', '24646886', '240.90', '', '0.00', '220.50', '0.00', '240.90', '0.00', '237.80', '20.40', '13.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557117530', '1557117530');
INSERT INTO `pm_order` VALUES ('1384', '9038', '', '26024148', '103.80', '', '0.00', '90.00', '0.00', '103.80', '0.00', '92.00', '13.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557117648', '1557117648');
INSERT INTO `pm_order` VALUES ('1385', '8914', '0431471764', '35951435', '125.00', '', '0.00', '125.00', '0.00', '0.00', '125.00', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557117731', '1557117731');
INSERT INTO `pm_order` VALUES ('1386', '8914', '0431471764', '92151581', '92.00', '', '0.00', '92.00', '0.00', '0.00', '92.00', '0.00', '0.00', '21.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557117958', '1557117958');
INSERT INTO `pm_order` VALUES ('1387', '9110', '', '13058851', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '65.25', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557118237', '1557118237');
INSERT INTO `pm_order` VALUES ('1388', '9079', '', '85648646', '204.20', '', '0.00', '179.60', '0.00', '204.20', '0.00', '187.80', '24.60', '16.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557118388', '1557118388');
INSERT INTO `pm_order` VALUES ('1389', '9111', '', '76351184', '88.00', '', '0.00', '88.00', '0.00', '88.00', '0.00', '0.00', '0.00', '21.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557118737', '1557118737');
INSERT INTO `pm_order` VALUES ('1390', '9111', '', '60525518', '21.90', '', '0.00', '14.70', '0.00', '21.90', '0.00', '15.50', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557118915', '1557118915');
INSERT INTO `pm_order` VALUES ('1391', '8921', '', '33268577', '62.80', '', '0.00', '55.00', '0.00', '62.80', '0.00', '47.00', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557119237', '1557119237');
INSERT INTO `pm_order` VALUES ('1392', '8778', '', '39362678', '382.80', '', '0.00', '343.80', '0.00', '382.80', '0.00', '0.00', '39.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1557119480', '1557119480');
INSERT INTO `pm_order` VALUES ('1393', '9001', '0449596969', '55498756', '105.00', '', '0.00', '105.00', '0.00', '105.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557119674', '1557119674');
INSERT INTO `pm_order` VALUES ('1394', '9111', '', '67714966', '57.30', '', '0.00', '47.10', '0.00', '57.30', '0.00', '47.72', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557120407', '1557120407');
INSERT INTO `pm_order` VALUES ('1395', '8895', '18677236919', '13460214', '24.34', '', '0.00', '16.80', '0.00', '0.00', '24.34', '18.00', '7.54', '5.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557120800', '1557120800');
INSERT INTO `pm_order` VALUES ('1396', '8786', '', '96132110', '202.50', '', '0.00', '189.50', '0.00', '202.50', '0.00', '204.00', '13.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557121233', '1557121233');
INSERT INTO `pm_order` VALUES ('1397', '8690', '17723080131', '54761755', '31.50', '', '0.00', '19.50', '0.00', '31.50', '0.00', '18.00', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557121742', '1557121742');
INSERT INTO `pm_order` VALUES ('1398', '8769', '', '39708141', '105.40', '', '0.00', '82.60', '0.00', '105.40', '0.00', '83.87', '22.80', '15.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557121911', '1557121911');
INSERT INTO `pm_order` VALUES ('1399', '8944', '', '27540781', '68.30', '', '0.00', '62.50', '0.00', '0.00', '68.30', '59.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557122134', '1557122134');
INSERT INTO `pm_order` VALUES ('1400', '8906', '', '50703169', '408.00', '', '0.00', '408.00', '0.00', '0.00', '408.00', '0.00', '0.00', '46.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557122154', '1557122154');
INSERT INTO `pm_order` VALUES ('1401', '9054', '', '49729733', '211.80', '', '1.80', '211.80', '0.00', '211.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557122169', '1557122169');
INSERT INTO `pm_order` VALUES ('1402', '8917', '', '69940035', '70.30', '', '0.00', '64.30', '0.00', '70.30', '0.00', '63.70', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557122339', '1557122339');
INSERT INTO `pm_order` VALUES ('1403', '8944', '', '46350200', '62.80', '', '0.00', '57.00', '0.00', '0.00', '62.80', '54.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557122596', '1557122596');
INSERT INTO `pm_order` VALUES ('1404', '8665', '', '80137631', '124.90', '', '0.90', '124.90', '0.00', '124.90', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557122942', '1557122942');
INSERT INTO `pm_order` VALUES ('1405', '9009', '', '28068431', '60.40', '', '0.00', '48.40', '0.00', '60.40', '0.00', '49.16', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557123333', '1557123333');
INSERT INTO `pm_order` VALUES ('1406', '8677', 'admin3', '38150916', '95.28', '', '0.00', '86.00', '0.00', '95.28', '0.00', '88.00', '9.28', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557123574', '1557123574');
INSERT INTO `pm_order` VALUES ('1407', '8677', 'admin3', '56507745', '85.40', '', '0.00', '79.60', '0.00', '85.40', '0.00', '79.60', '5.80', '4.00', '客户下错单 需要取消', '0', '', '0', '3', '99', '0', '1', '0', '1557123756', '1557123756');
INSERT INTO `pm_order` VALUES ('1408', '9041', '', '33778480', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557124386', '1557124386');
INSERT INTO `pm_order` VALUES ('1409', '8792', '', '25703365', '134.90', '', '9.90', '134.90', '0.00', '134.90', '0.00', '0.00', '0.00', '11.25', '', '0', '', '0', '3', '4', '0', '0', '0', '1557124456', '1557124456');
INSERT INTO `pm_order` VALUES ('1410', '8970', '', '41059715', '141.94', '', '0.00', '128.60', '0.00', '0.00', '141.94', '129.50', '13.34', '9.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557125114', '1557125114');
INSERT INTO `pm_order` VALUES ('1411', '9098', '', '43277916', '67.39', '', '0.00', '57.19', '0.00', '67.39', '0.00', '60.00', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557125289', '1557125289');
INSERT INTO `pm_order` VALUES ('1412', '8658', 'admin', '54017440', '94.80', '', '0.00', '94.80', '0.00', '0.00', '94.80', '90.00', '0.00', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557125551', '1557125551');
INSERT INTO `pm_order` VALUES ('1413', '8882', '', '40612051', '85.00', '', '0.00', '75.40', '0.00', '85.00', '0.00', '75.98', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557125701', '1557125701');
INSERT INTO `pm_order` VALUES ('1414', '8771', '', '15211784', '40.80', '', '0.00', '34.80', '0.00', '40.80', '0.00', '33.50', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1557125918', '1557125918');
INSERT INTO `pm_order` VALUES ('1415', '8882', '', '25494046', '86.00', '', '0.00', '78.20', '0.00', '86.00', '0.00', '79.59', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557125953', '1557125953');
INSERT INTO `pm_order` VALUES ('1416', '8832', '', '16096700', '420.00', '', '0.00', '420.00', '0.00', '420.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557127037', '1557127037');
INSERT INTO `pm_order` VALUES ('1417', '8914', '0431471764', '24934123', '125.00', '', '0.00', '125.00', '0.00', '0.00', '125.00', '0.00', '0.00', '11.25', '', '0', '', '0', '2', '4', '0', '0', '0', '1557127411', '1557127411');
INSERT INTO `pm_order` VALUES ('1418', '8780', '', '31067419', '125.00', '', '0.00', '125.00', '0.00', '125.00', '0.00', '0.00', '0.00', '11.25', '', '0', '', '0', '3', '4', '0', '0', '0', '1557127620', '1557127620');
INSERT INTO `pm_order` VALUES ('1419', '8882', '', '17621180', '67.60', '', '0.00', '55.60', '0.00', '67.60', '0.00', '54.79', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557127762', '1557127762');
INSERT INTO `pm_order` VALUES ('1420', '8780', '', '63007966', '41.00', '', '0.00', '31.40', '0.00', '41.00', '0.00', '33.00', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557127791', '1557127791');
INSERT INTO `pm_order` VALUES ('1421', '8727', '0450300513', '38484340', '39.52', '', '0.00', '31.12', '0.00', '39.52', '0.00', '30.80', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557128183', '1557128183');
INSERT INTO `pm_order` VALUES ('1422', '9078', '', '11219268', '135.64', '', '0.00', '117.04', '0.00', '135.64', '0.00', '88.40', '18.60', '16.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557128790', '1557128790');
INSERT INTO `pm_order` VALUES ('1423', '8703', '', '84668019', '129.60', '', '0.00', '114.00', '0.00', '129.60', '0.00', '113.60', '15.60', '10.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557128834', '1557128834');
INSERT INTO `pm_order` VALUES ('1424', '8807', '', '88394098', '53.80', '', '0.00', '47.80', '0.00', '53.80', '0.00', '47.60', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557129448', '1557129448');
INSERT INTO `pm_order` VALUES ('1425', '8807', '', '46671288', '121.90', '', '0.00', '115.30', '0.00', '121.90', '0.00', '121.50', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557130142', '1557130142');
INSERT INTO `pm_order` VALUES ('1426', '8678', '', '21703549', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '65.25', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557130415', '1557130415');
INSERT INTO `pm_order` VALUES ('1427', '8825', '', '38718665', '44.40', '', '0.00', '38.40', '0.00', '44.40', '0.00', '40.36', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557130543', '1557130543');
INSERT INTO `pm_order` VALUES ('1430', '8660', '', '22333436', '102.00', '', '0.00', '102.00', '0.00', '0.00', '102.00', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557132375', '1557132375');
INSERT INTO `pm_order` VALUES ('1429', '8890', '', '46569113', '255.80', '', '1.80', '255.80', '0.00', '255.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557131819', '1557131819');
INSERT INTO `pm_order` VALUES ('1431', '8966', '', '39553126', '30.00', '', '0.00', '24.00', '0.00', '30.00', '0.00', '20.59', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557132542', '1557132542');
INSERT INTO `pm_order` VALUES ('1432', '8773', '', '50766189', '56.70', '', '0.00', '40.50', '0.00', '56.70', '0.00', '41.40', '16.20', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557133765', '1557133765');
INSERT INTO `pm_order` VALUES ('1433', '8739', '', '14957953', '209.00', '', '0.00', '209.00', '0.00', '0.00', '209.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557134001', '1557134001');
INSERT INTO `pm_order` VALUES ('1434', '8966', '', '95047148', '52.40', '', '0.00', '32.00', '0.00', '52.40', '0.00', '40.00', '20.40', '13.60', '', '0', '', '0', '3', '99', '0', '1', '0', '1557134071', '1557134071');
INSERT INTO `pm_order` VALUES ('1435', '8883', '', '35457840', '180.76', '', '0.00', '164.56', '0.00', '180.76', '0.00', '152.02', '16.20', '13.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557134271', '1557134271');
INSERT INTO `pm_order` VALUES ('1436', '8925', '', '69122308', '125.00', '', '0.00', '125.00', '0.00', '125.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557135404', '1557135404');
INSERT INTO `pm_order` VALUES ('1437', '8739', '', '67672733', '257.79', '', '0.00', '242.71', '0.00', '0.00', '257.79', '240.20', '15.08', '10.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557135891', '1557135891');
INSERT INTO `pm_order` VALUES ('1438', '8739', '', '88437738', '24.38', '', '0.00', '24.38', '0.00', '0.00', '24.38', '18.00', '0.00', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557136317', '1557136317');
INSERT INTO `pm_order` VALUES ('1439', '8918', '', '94747869', '85.88', '', '0.00', '85.88', '0.00', '0.00', '85.88', '75.00', '0.00', '11.28', '', '0', '', '0', '2', '4', '0', '0', '0', '1557136380', '1557136380');
INSERT INTO `pm_order` VALUES ('1440', '9111', '0449880908', '94883539', '53.40', '', '0.00', '44.40', '0.00', '53.40', '0.00', '43.90', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557136397', '1557136397');
INSERT INTO `pm_order` VALUES ('1441', '9125', '', '70003994', '128.40', '', '0.00', '116.40', '0.00', '128.40', '0.00', '95.10', '12.00', '8.00', '', '0', '', '0', '3', '99', '0', '1', '0', '1557136831', '1557136831');
INSERT INTO `pm_order` VALUES ('1442', '9111', '0449880908', '83150524', '75.30', '', '0.00', '66.90', '0.00', '75.30', '0.00', '67.80', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557137027', '1557137027');
INSERT INTO `pm_order` VALUES ('1443', '8853', '', '19895705', '28.50', '', '0.00', '28.50', '0.00', '28.50', '0.00', '21.99', '0.00', '5.60', '无货退款', '0', '', '0', '3', '99', '0', '1', '0', '1557137203', '1557137203');
INSERT INTO `pm_order` VALUES ('1444', '8687', '', '38445804', '115.00', '', '0.00', '109.00', '0.00', '115.00', '0.00', '111.80', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557137646', '1557137646');
INSERT INTO `pm_order` VALUES ('1445', '8739', '', '37492732', '287.06', '', '0.00', '265.60', '0.00', '0.00', '287.06', '277.40', '21.46', '14.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557138207', '1557138207');
INSERT INTO `pm_order` VALUES ('1446', '9111', '0449880908', '98124474', '62.40', '', '0.00', '55.80', '0.00', '62.40', '0.00', '53.25', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557138536', '1557138536');
INSERT INTO `pm_order` VALUES ('1448', '8959', '', '51411199', '127.00', '', '0.00', '127.00', '0.00', '127.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557139382', '1557139382');
INSERT INTO `pm_order` VALUES ('1449', '8768', '', '20212350', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557140401', '1557140401');
INSERT INTO `pm_order` VALUES ('1450', '8739', '', '50446447', '212.86', '', '0.00', '182.70', '0.00', '0.00', '212.86', '186.15', '30.16', '20.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557140513', '1557140513');
INSERT INTO `pm_order` VALUES ('1451', '8739', '', '87195582', '79.74', '', '0.00', '69.30', '0.00', '0.00', '79.74', '70.00', '10.44', '7.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557140574', '1557140574');
INSERT INTO `pm_order` VALUES ('1452', '9036', '', '55806507', '420.00', '', '0.00', '420.00', '0.00', '420.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557141388', '1557141388');
INSERT INTO `pm_order` VALUES ('1453', '8955', '', '83645751', '101.80', '', '0.00', '86.80', '0.00', '101.80', '0.00', '89.30', '15.00', '10.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557141935', '1557141935');
INSERT INTO `pm_order` VALUES ('1454', '8692', '', '79739757', '33.00', '', '0.00', '21.00', '0.00', '33.00', '0.00', '0.00', '12.00', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557143073', '1557143073');
INSERT INTO `pm_order` VALUES ('1455', '8730', '', '70864606', '312.00', '', '0.00', '312.00', '0.00', '312.00', '0.00', '261.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557143877', '1557143877');
INSERT INTO `pm_order` VALUES ('1456', '8660', '', '83489769', '816.00', '', '0.00', '816.00', '0.00', '0.00', '816.00', '0.00', '0.00', '93.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557144196', '1557144196');
INSERT INTO `pm_order` VALUES ('1457', '8955', '', '20794895', '52.20', '', '0.00', '45.00', '0.00', '52.20', '0.00', '46.00', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557145997', '1557145997');
INSERT INTO `pm_order` VALUES ('1458', '9111', '0449880908', '66277920', '114.70', '', '0.00', '104.50', '0.00', '114.70', '0.00', '105.90', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557146592', '1557146592');
INSERT INTO `pm_order` VALUES ('1459', '9000', '0478889876', '72124717', '89.48', '', '0.00', '80.20', '0.00', '0.00', '89.48', '83.40', '9.28', '6.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557147385', '1557147385');
INSERT INTO `pm_order` VALUES ('1460', '8791', '', '49914603', '49.00', '', '0.00', '49.00', '0.00', '49.00', '0.00', '39.00', '0.00', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557148637', '1557148637');
INSERT INTO `pm_order` VALUES ('1461', '8791', '', '64985245', '23.50', '', '0.00', '16.90', '0.00', '23.50', '0.00', '17.20', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557148915', '1557148915');
INSERT INTO `pm_order` VALUES ('1462', '8791', '', '79448115', '30.00', '', '0.00', '21.60', '0.00', '30.00', '0.00', '22.80', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557149398', '1557149398');
INSERT INTO `pm_order` VALUES ('1463', '8707', '', '27398346', '242.00', '', '0.00', '242.00', '0.00', '242.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557154616', '1557154616');
INSERT INTO `pm_order` VALUES ('1464', '8749', '18637179598', '43231403', '315.00', '', '0.00', '315.00', '0.00', '315.00', '0.00', '0.00', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1557154763', '1557154763');
INSERT INTO `pm_order` VALUES ('1465', '8707', '', '77251905', '121.00', '', '0.00', '121.00', '0.00', '121.00', '0.00', '97.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557155090', '1557155090');
INSERT INTO `pm_order` VALUES ('1466', '8707', '', '22493781', '130.40', '', '0.00', '123.20', '0.00', '130.40', '0.00', '132.00', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557155791', '1557155791');
INSERT INTO `pm_order` VALUES ('1467', '8658', 'admin', '95299238', '94.80', '', '0.00', '94.80', '0.00', '0.00', '94.80', '90.00', '0.00', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557158694', '1557158694');
INSERT INTO `pm_order` VALUES ('1468', '8739', '', '52201271', '25.28', '', '0.00', '18.90', '0.00', '0.00', '25.28', '19.20', '6.38', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557160639', '1557160639');
INSERT INTO `pm_order` VALUES ('1469', '8914', '0431471764', '60386532', '92.00', '', '0.00', '92.00', '0.00', '0.00', '92.00', '0.00', '0.00', '21.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557170030', '1557170030');
INSERT INTO `pm_order` VALUES ('1471', '8937', '', '56404799', '105.00', '', '0.00', '105.00', '0.00', '105.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557186008', '1557186008');
INSERT INTO `pm_order` VALUES ('1472', '8787', '', '49159607', '30.60', '', '0.00', '23.40', '0.00', '30.60', '0.00', '21.00', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557187478', '1557187478');
INSERT INTO `pm_order` VALUES ('1473', '8677', 'admin3', '79994756', '95.28', '', '0.00', '86.00', '0.00', '95.28', '0.00', '88.00', '9.28', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557189238', '1557189238');
INSERT INTO `pm_order` VALUES ('1474', '8666', '', '61494838', '50.20', '', '0.30', '38.20', '0.00', '50.20', '0.00', '36.55', '12.00', '7.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1557190005', '1557190005');
INSERT INTO `pm_order` VALUES ('1475', '8963', '', '94119254', '125.50', '', '0.00', '112.50', '0.00', '125.50', '0.00', '0.00', '13.00', '11.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557190275', '1557190275');
INSERT INTO `pm_order` VALUES ('1476', '9130', '', '65992222', '208.60', '', '0.00', '177.60', '0.00', '208.60', '0.00', '19.50', '31.00', '23.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1557191285', '1557191285');
INSERT INTO `pm_order` VALUES ('1477', '9094', '', '67510244', '64.40', '', '0.00', '58.40', '0.00', '64.40', '0.00', '57.90', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557191598', '1557191598');
INSERT INTO `pm_order` VALUES ('1478', '8692', '', '36287774', '24.00', '', '0.00', '15.60', '0.00', '24.00', '0.00', '15.60', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557192238', '1557192238');
INSERT INTO `pm_order` VALUES ('1479', '8787', '', '33620730', '21.50', '', '0.00', '15.50', '0.00', '21.50', '0.00', '16.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557192445', '1557192445');
INSERT INTO `pm_order` VALUES ('1480', '9131', '', '69606364', '31.20', '', '0.00', '25.20', '0.00', '31.20', '0.00', '26.10', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557193752', '1557193752');
INSERT INTO `pm_order` VALUES ('1481', '9094', '', '22289158', '68.90', '', '0.00', '62.90', '0.00', '68.90', '0.00', '64.80', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557195405', '1557195405');
INSERT INTO `pm_order` VALUES ('1482', '8692', '', '19339725', '20.00', '', '0.00', '14.00', '0.00', '20.00', '0.00', '12.54', '6.00', '4.00', '', '0', '', '0', '3', '99', '0', '1', '0', '1557196396', '1557196396');
INSERT INTO `pm_order` VALUES ('1483', '8881', '', '37520451', '116.10', '', '0.00', '103.50', '0.00', '116.10', '0.00', '105.30', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557196701', '1557196701');
INSERT INTO `pm_order` VALUES ('1484', '9093', '', '89991049', '216.00', '', '0.00', '216.00', '0.00', '216.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557196868', '1557196868');
INSERT INTO `pm_order` VALUES ('1485', '8660', '', '39338971', '457.00', '', '0.00', '457.00', '0.00', '0.00', '457.00', '0.00', '0.00', '46.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557197213', '1557197213');
INSERT INTO `pm_order` VALUES ('1486', '9133', '', '34735661', '251.90', '', '0.00', '223.10', '0.00', '251.90', '0.00', '228.50', '28.80', '19.20', '', '3', '/uploads/20190507/4525f3eae094aae8173f61c26babaa3e.jpg', '0', '4', '4', '0', '0', '0', '1557197938', '1557197938');
INSERT INTO `pm_order` VALUES ('1487', '8847', '', '14629663', '60.06', '', '0.00', '52.86', '0.00', '60.06', '0.00', '51.76', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557198172', '1557198172');
INSERT INTO `pm_order` VALUES ('1488', '8898', '', '17858090', '23.00', '', '0.00', '23.00', '0.00', '0.00', '23.00', '17.05', '0.00', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557199121', '1557199121');
INSERT INTO `pm_order` VALUES ('1489', '9093', '', '96764328', '76.74', '', '0.00', '65.34', '0.00', '76.74', '0.00', '65.70', '11.40', '7.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557199253', '1557199253');
INSERT INTO `pm_order` VALUES ('1490', '8830', '', '10075878', '216.00', '', '0.00', '216.00', '0.00', '216.00', '0.00', '169.80', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557199361', '1557199361');
INSERT INTO `pm_order` VALUES ('1491', '8692', '', '42059936', '63.50', '', '0.00', '56.90', '0.00', '63.50', '0.00', '58.50', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557199424', '1557199424');
INSERT INTO `pm_order` VALUES ('1492', '8867', '', '28232544', '86.40', '', '0.00', '86.40', '0.00', '86.40', '0.00', '75.00', '0.00', '11.28', '', '0', '', '0', '3', '4', '0', '0', '0', '1557199860', '1557199860');
INSERT INTO `pm_order` VALUES ('1493', '8867', '', '35894715', '127.00', '', '0.00', '127.00', '0.00', '127.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557200504', '1557200504');
INSERT INTO `pm_order` VALUES ('1494', '8663', 'admin1', '31198426', '210.00', '', '0.00', '210.00', '0.00', '210.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557200616', '1557200616');
INSERT INTO `pm_order` VALUES ('1495', '8867', '', '19487398', '72.00', '', '0.00', '72.00', '0.00', '72.00', '0.00', '49.84', '0.00', '10.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557201023', '1557201023');
INSERT INTO `pm_order` VALUES ('1496', '8653', '0449861130', '69602109', '239.78', '', '0.00', '224.70', '0.00', '0.00', '239.78', '125.20', '15.08', '33.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557201063', '1557201063');
INSERT INTO `pm_order` VALUES ('1497', '8867', '', '78009317', '188.00', '', '0.00', '169.40', '0.00', '188.00', '0.00', '171.99', '18.60', '12.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557201454', '1557201454');
INSERT INTO `pm_order` VALUES ('1498', '8769', '', '73101202', '178.00', '', '0.00', '178.00', '0.00', '178.00', '0.00', '141.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557201629', '1557201629');
INSERT INTO `pm_order` VALUES ('1499', '8740', '', '42660829', '62.40', '', '0.00', '44.40', '0.00', '62.40', '0.00', '0.00', '18.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557202005', '1557202005');
INSERT INTO `pm_order` VALUES ('1500', '8740', '', '62737513', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557202191', '1557202191');
INSERT INTO `pm_order` VALUES ('1501', '8660', '', '76620012', '105.30', '', '0.00', '99.50', '0.00', '0.00', '105.30', '99.50', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557202239', '1557202239');
INSERT INTO `pm_order` VALUES ('1502', '8695', '', '86803860', '88.28', '', '0.00', '82.48', '0.00', '0.00', '88.28', '76.50', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557202494', '1557202494');
INSERT INTO `pm_order` VALUES ('1503', '8830', '', '41409417', '43.20', '', '0.00', '35.40', '0.00', '43.20', '0.00', '35.64', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557202628', '1557202628');
INSERT INTO `pm_order` VALUES ('1504', '8830', '', '37045057', '35.00', '', '0.00', '23.00', '0.00', '35.00', '0.00', '0.00', '12.00', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557202748', '1557202748');
INSERT INTO `pm_order` VALUES ('1505', '8964', '', '13676433', '46.60', '', '0.00', '40.80', '0.00', '0.00', '46.60', '39.20', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557203088', '1557203088');
INSERT INTO `pm_order` VALUES ('1506', '8782', '', '19475925', '250.00', '', '0.00', '250.00', '0.00', '250.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557203280', '1557203280');
INSERT INTO `pm_order` VALUES ('1507', '8713', '', '18966249', '40.90', '', '0.00', '34.30', '0.00', '40.90', '0.00', '35.50', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557203459', '1557203459');
INSERT INTO `pm_order` VALUES ('1508', '9142', '', '33472682', '12.40', '', '0.00', '6.40', '0.00', '12.40', '0.00', '5.80', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557203526', '1557203526');
INSERT INTO `pm_order` VALUES ('1509', '8678', '', '41681988', '156.00', '', '0.00', '139.20', '0.00', '156.00', '0.00', '40.00', '16.80', '22.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557203546', '1557203546');
INSERT INTO `pm_order` VALUES ('1510', '9118', '', '71704669', '164.23', '', '0.00', '130.03', '0.00', '164.23', '0.00', '135.25', '34.20', '22.80', 'ZH02818030927已退款+已取消订单', '0', '', '0', '3', '4', '0', '0', '0', '1557203682', '1557203682');
INSERT INTO `pm_order` VALUES ('1511', '8798', '', '78773851', '158.60', '', '0.00', '144.80', '0.00', '158.60', '0.00', '146.30', '13.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557203987', '1557203987');
INSERT INTO `pm_order` VALUES ('1512', '8864', '', '84144448', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557204200', '1557204200');
INSERT INTO `pm_order` VALUES ('1513', '8690', '17723080131', '42660235', '216.00', '', '0.00', '216.00', '0.00', '216.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557204807', '1557204807');
INSERT INTO `pm_order` VALUES ('1514', '8935', '', '31605302', '44.00', '', '0.00', '44.00', '0.00', '0.00', '44.00', '0.00', '0.00', '10.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557206273', '1557206273');
INSERT INTO `pm_order` VALUES ('1515', '8935', '', '44677872', '46.00', '', '0.00', '46.00', '0.00', '0.00', '46.00', '0.00', '0.00', '10.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557206405', '1557206405');
INSERT INTO `pm_order` VALUES ('1516', '8935', '', '84729076', '46.00', '', '0.00', '46.00', '0.00', '0.00', '46.00', '0.00', '0.00', '10.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557206525', '1557206525');
INSERT INTO `pm_order` VALUES ('1517', '8964', '', '36310929', '38.52', '', '0.00', '30.40', '0.00', '0.00', '38.52', '34.96', '8.12', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557206687', '1557206687');
INSERT INTO `pm_order` VALUES ('1518', '9146', '', '88623743', '32.00', '', '0.00', '32.00', '0.00', '32.00', '0.00', '0.00', '0.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557206950', '1557206950');
INSERT INTO `pm_order` VALUES ('1519', '9146', '', '79527391', '32.00', '', '0.00', '32.00', '0.00', '32.00', '0.00', '0.00', '0.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557207072', '1557207072');
INSERT INTO `pm_order` VALUES ('1520', '8687', '', '85760666', '49.10', '', '0.00', '43.10', '0.00', '49.10', '0.00', '45.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557207127', '1557207127');
INSERT INTO `pm_order` VALUES ('1521', '9149', '', '43027379', '209.00', '', '0.00', '209.00', '0.00', '209.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557207698', '1557207698');
INSERT INTO `pm_order` VALUES ('1522', '9150', '', '49944939', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '130.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557207942', '1557207942');
INSERT INTO `pm_order` VALUES ('1523', '8914', '0431471764', '28255687', '60.10', '', '0.00', '54.30', '0.00', '0.00', '60.10', '56.50', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557208101', '1557208101');
INSERT INTO `pm_order` VALUES ('1524', '9150', '', '12362174', '214.50', '', '0.00', '201.90', '0.00', '214.50', '0.00', '213.50', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557208398', '1557208398');
INSERT INTO `pm_order` VALUES ('1525', '8860', '', '26512323', '88.00', '', '0.00', '88.00', '0.00', '88.00', '0.00', '0.00', '0.00', '21.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557208403', '1557208403');
INSERT INTO `pm_order` VALUES ('1526', '8914', '0431471764', '48254313', '114.30', '', '0.00', '108.50', '0.00', '0.00', '114.30', '103.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557208410', '1557208410');
INSERT INTO `pm_order` VALUES ('1527', '9005', '', '54314179', '108.00', '', '0.00', '108.00', '0.00', '108.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557209168', '1557209168');
INSERT INTO `pm_order` VALUES ('1528', '8918', '', '48474411', '104.00', '', '0.00', '104.00', '0.00', '0.00', '104.00', '99.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557209206', '1557209206');
INSERT INTO `pm_order` VALUES ('1529', '8918', '', '45573753', '105.40', '', '0.90', '105.40', '0.00', '0.00', '105.40', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557209489', '1557209489');
INSERT INTO `pm_order` VALUES ('1530', '9005', '', '33895709', '125.00', '', '0.00', '125.00', '0.00', '125.00', '0.00', '112.50', '0.00', '11.70', '客户要求取消', '0', '', '0', '3', '99', '0', '1', '0', '1557209495', '1557209495');
INSERT INTO `pm_order` VALUES ('1531', '8918', '', '30683786', '423.60', '', '3.60', '423.60', '0.00', '0.00', '423.60', '0.00', '0.00', '46.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557209707', '1557209707');
INSERT INTO `pm_order` VALUES ('1532', '8921', '', '75432297', '111.30', '', '0.00', '95.30', '0.00', '111.30', '0.00', '98.30', '16.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557209976', '1557209976');
INSERT INTO `pm_order` VALUES ('1533', '8918', '', '63513532', '78.90', '', '0.90', '78.90', '0.00', '0.00', '78.90', '63.75', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557210009', '1557210009');
INSERT INTO `pm_order` VALUES ('1534', '8918', '', '25051540', '136.68', '', '0.00', '121.60', '0.00', '0.00', '136.68', '124.80', '15.08', '10.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557210557', '1557210557');
INSERT INTO `pm_order` VALUES ('1535', '8860', '', '30689766', '62.20', '', '0.00', '55.00', '0.00', '62.20', '0.00', '55.80', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557210627', '1557210627');
INSERT INTO `pm_order` VALUES ('1536', '8935', '', '23336258', '103.70', '', '0.00', '92.10', '0.00', '0.00', '103.70', '99.50', '11.60', '8.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557211245', '1557211245');
INSERT INTO `pm_order` VALUES ('1537', '8918', '', '68237706', '423.60', '', '3.60', '423.60', '0.00', '0.00', '423.60', '0.00', '0.00', '46.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557211572', '1557211572');
INSERT INTO `pm_order` VALUES ('1538', '8914', '0431471764', '24757582', '49.40', '', '0.00', '43.60', '0.00', '0.00', '49.40', '46.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557211663', '1557211663');
INSERT INTO `pm_order` VALUES ('1539', '8914', '0431471764', '32377962', '49.48', '', '0.00', '43.10', '0.00', '0.00', '49.48', '35.56', '6.38', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557211970', '1557211970');
INSERT INTO `pm_order` VALUES ('1540', '9148', '', '65979176', '645.00', '', '0.00', '645.00', '0.00', '645.00', '0.00', '0.00', '0.00', '70.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557212050', '1557212050');
INSERT INTO `pm_order` VALUES ('1541', '8914', '0431471764', '51309615', '75.98', '', '0.00', '69.60', '0.00', '0.00', '75.98', '69.04', '6.38', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557212404', '1557212404');
INSERT INTO `pm_order` VALUES ('1542', '8914', '0431471764', '33868037', '114.98', '', '0.00', '108.60', '0.00', '0.00', '114.98', '115.00', '6.38', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557212497', '1557212497');
INSERT INTO `pm_order` VALUES ('1543', '9132', '', '91169738', '57.60', '', '0.00', '51.60', '0.00', '57.60', '0.00', '52.30', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557213147', '1557213147');
INSERT INTO `pm_order` VALUES ('1544', '8677', 'admin3', '86594267', '125.20', '', '0.00', '119.40', '0.00', '125.20', '0.00', '119.40', '5.80', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557213709', '1557213709');
INSERT INTO `pm_order` VALUES ('1545', '9144', '', '93248815', '36.96', '', '0.00', '30.96', '0.00', '36.96', '0.00', '32.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557214162', '1557214162');
INSERT INTO `pm_order` VALUES ('1550', '8882', '', '66987754', '89.90', '', '0.90', '89.90', '0.00', '89.90', '0.00', '70.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557217502', '1557217502');
INSERT INTO `pm_order` VALUES ('1547', '9139', '', '57342599', '108.00', '', '0.00', '108.00', '0.00', '108.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557215409', '1557215409');
INSERT INTO `pm_order` VALUES ('1548', '8687', '', '89060703', '85.13', '', '0.00', '71.93', '0.00', '85.13', '0.00', '72.48', '13.20', '8.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557216386', '1557216386');
INSERT INTO `pm_order` VALUES ('1657', '8785', '', '95610179', '134.70', '', '0.00', '119.70', '0.00', '134.70', '0.00', '126.68', '15.00', '10.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557303092', '1557303092');
INSERT INTO `pm_order` VALUES ('1551', '8690', '17723080131', '35802493', '209.00', '', '0.00', '209.00', '0.00', '209.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557217720', '1557217720');
INSERT INTO `pm_order` VALUES ('1552', '8880', '', '65442901', '46.28', '', '0.00', '39.08', '0.00', '46.28', '0.00', '41.10', '7.20', '4.80', '', '3', '/uploads/20190507/09c14b6b143207bbb1fbb34e56f34edf.jpg', '0', '4', '4', '0', '0', '0', '1557218524', '1557218524');
INSERT INTO `pm_order` VALUES ('1553', '9158', '', '11725984', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557218789', '1557218789');
INSERT INTO `pm_order` VALUES ('1554', '8867', '', '40711604', '35.00', '', '0.00', '29.00', '0.00', '35.00', '0.00', '29.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557218896', '1557218896');
INSERT INTO `pm_order` VALUES ('1555', '8739', '', '70748722', '24.38', '', '0.00', '24.38', '0.00', '0.00', '24.38', '18.00', '0.00', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557219123', '1557219123');
INSERT INTO `pm_order` VALUES ('1556', '8880', '', '18899599', '46.28', '', '0.00', '39.08', '0.00', '46.28', '0.00', '41.10', '7.20', '4.80', '', '3', '/uploads/20190507/d4a9d04882cad16b1ecdfcc53088d09a.jpg', '0', '4', '4', '0', '0', '0', '1557219150', '1557219150');
INSERT INTO `pm_order` VALUES ('1557', '8756', '', '68328011', '55.50', '', '0.00', '49.50', '0.00', '55.50', '0.00', '44.68', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557219360', '1557219360');
INSERT INTO `pm_order` VALUES ('1558', '8665', '', '42349943', '182.50', '', '0.00', '182.50', '0.00', '182.50', '0.00', '63.75', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557223033', '1557223033');
INSERT INTO `pm_order` VALUES ('1559', '8790', '', '39100730', '53.00', '', '0.00', '44.00', '0.00', '53.00', '0.00', '46.50', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557225714', '1557225714');
INSERT INTO `pm_order` VALUES ('1560', '8769', '', '77905114', '37.80', '', '0.00', '31.80', '0.00', '37.80', '0.00', '0.00', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1557226621', '1557226621');
INSERT INTO `pm_order` VALUES ('1561', '9115', '', '24195377', '798.00', '', '0.00', '785.40', '0.00', '798.00', '0.00', '36.00', '12.60', '90.30', '', '0', '', '0', '3', '4', '0', '0', '0', '1557227571', '1557227571');
INSERT INTO `pm_order` VALUES ('1562', '8687', '', '60620385', '271.20', '', '0.00', '271.20', '0.00', '271.20', '0.00', '216.00', '0.00', '21.12', '', '0', '', '0', '3', '4', '0', '0', '0', '1557227628', '1557227628');
INSERT INTO `pm_order` VALUES ('1563', '9115', '', '16580956', '215.50', '', '0.00', '215.50', '0.00', '215.50', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557228219', '1557228219');
INSERT INTO `pm_order` VALUES ('1564', '9125', '', '34503482', '128.40', '', '0.00', '116.40', '0.00', '128.40', '0.00', '95.10', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557228283', '1557228283');
INSERT INTO `pm_order` VALUES ('1565', '9078', '', '68179380', '45.40', '', '0.00', '39.40', '0.00', '45.40', '0.00', '39.90', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557228529', '1557228529');
INSERT INTO `pm_order` VALUES ('1566', '9078', '', '65491036', '254.00', '', '0.00', '254.00', '0.00', '254.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557228947', '1557228947');
INSERT INTO `pm_order` VALUES ('1567', '8935', '', '17574119', '89.00', '', '0.00', '89.00', '0.00', '0.00', '89.00', '70.50', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557229296', '1557229296');
INSERT INTO `pm_order` VALUES ('1568', '8735', '', '89783830', '22.80', '', '0.00', '16.20', '0.00', '22.80', '0.00', '14.40', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557231456', '1557231456');
INSERT INTO `pm_order` VALUES ('1569', '8658', 'admin', '62003502', '125.50', '', '0.00', '112.50', '0.00', '0.00', '125.50', '0.00', '13.00', '11.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557234275', '1557234275');
INSERT INTO `pm_order` VALUES ('1570', '8814', '', '82828451', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '130.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557234479', '1557234479');
INSERT INTO `pm_order` VALUES ('1571', '8829', '', '93062260', '125.00', '', '0.00', '125.00', '0.00', '125.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557234692', '1557234692');
INSERT INTO `pm_order` VALUES ('1574', '8739', '', '36026804', '68.64', '', '0.00', '55.30', '0.00', '0.00', '68.64', '71.55', '13.34', '9.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557235891', '1557235891');
INSERT INTO `pm_order` VALUES ('1573', '9005', '', '48694550', '87.00', '', '0.00', '75.00', '0.00', '87.00', '0.00', '75.00', '12.00', '7.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557235613', '1557235613');
INSERT INTO `pm_order` VALUES ('1575', '8739', '', '78901144', '79.78', '', '0.00', '73.40', '0.00', '0.00', '79.78', '78.50', '6.38', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557236383', '1557236383');
INSERT INTO `pm_order` VALUES ('1576', '8980', '', '85052552', '68.80', '', '0.00', '62.80', '0.00', '68.80', '0.00', '68.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557237084', '1557237084');
INSERT INTO `pm_order` VALUES ('1577', '8851', '', '98216328', '46.98', '', '0.00', '37.70', '0.00', '0.00', '46.98', '39.80', '9.28', '6.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557237115', '1557237115');
INSERT INTO `pm_order` VALUES ('1578', '8980', '', '86232100', '47.00', '', '0.00', '47.00', '0.00', '47.00', '0.00', '0.00', '0.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557237741', '1557237741');
INSERT INTO `pm_order` VALUES ('1681', '8980', '', '53582130', '30.90', '', '0.00', '30.90', '0.00', '0.00', '30.90', '23.00', '0.00', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557320991', '1557320991');
INSERT INTO `pm_order` VALUES ('1580', '8791', '', '63616625', '44.00', '', '0.00', '44.00', '0.00', '44.00', '0.00', '0.00', '0.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557241894', '1557241894');
INSERT INTO `pm_order` VALUES ('1581', '8666', '', '75988122', '75.20', '', '0.00', '69.20', '0.00', '75.20', '0.00', '72.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557269809', '1557269809');
INSERT INTO `pm_order` VALUES ('1582', '8692', '', '80910848', '23.50', '', '0.00', '23.50', '0.00', '23.50', '0.00', '18.00', '0.00', '2.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557276831', '1557276831');
INSERT INTO `pm_order` VALUES ('1583', '8918', '', '88743479', '52.60', '', '0.00', '46.80', '0.00', '0.00', '52.60', '44.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557277867', '1557277867');
INSERT INTO `pm_order` VALUES ('1584', '8918', '', '77615252', '215.80', '', '1.80', '215.80', '0.00', '0.00', '215.80', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557278311', '1557278311');
INSERT INTO `pm_order` VALUES ('1585', '8778', '', '94823020', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557279842', '1557279842');
INSERT INTO `pm_order` VALUES ('1586', '8757', '', '40866992', '93.00', '', '0.00', '82.20', '0.00', '93.00', '0.00', '82.60', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557279883', '1557279883');
INSERT INTO `pm_order` VALUES ('1587', '8657', '18802783840', '55636554', '107.00', '', '0.00', '107.00', '0.00', '107.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557280760', '1557280760');
INSERT INTO `pm_order` VALUES ('1588', '8657', '18802783840', '12493780', '57.86', '', '0.00', '50.90', '0.00', '57.86', '0.00', '53.00', '6.96', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557280847', '1557280847');
INSERT INTO `pm_order` VALUES ('1589', '9040', '', '29949504', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557281113', '1557281113');
INSERT INTO `pm_order` VALUES ('1591', '8898', '', '33597715', '80.30', '', '0.00', '74.50', '0.00', '0.00', '80.30', '71.80', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557284128', '1557284128');
INSERT INTO `pm_order` VALUES ('1592', '8925', '', '39219658', '237.00', '', '0.00', '219.00', '0.00', '237.00', '0.00', '207.00', '18.00', '12.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557284250', '1557284250');
INSERT INTO `pm_order` VALUES ('1593', '8657', '18802783840', '71928142', '214.00', '', '0.00', '214.00', '0.00', '214.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557284375', '1557284375');
INSERT INTO `pm_order` VALUES ('1594', '8920', '', '19605890', '24.60', '', '0.00', '24.60', '0.00', '24.60', '0.00', '18.00', '0.00', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557284386', '1557284386');
INSERT INTO `pm_order` VALUES ('1595', '8898', '', '55584676', '70.09', '', '0.25', '59.65', '0.00', '0.00', '70.09', '64.50', '10.44', '7.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557284566', '1557284566');
INSERT INTO `pm_order` VALUES ('1596', '8769', '', '42238063', '16.90', '', '0.00', '10.90', '0.00', '16.90', '0.00', '10.23', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557284584', '1557284584');
INSERT INTO `pm_order` VALUES ('1597', '8898', '', '87291219', '82.00', '', '0.00', '82.00', '0.00', '0.00', '82.00', '63.00', '0.00', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557285216', '1557285216');
INSERT INTO `pm_order` VALUES ('1598', '8658', 'admin', '98359995', '96.44', '', '0.00', '88.90', '0.00', '0.00', '96.44', '85.86', '7.54', '5.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557285315', '1557285315');
INSERT INTO `pm_order` VALUES ('1599', '8703', '', '56525361', '175.60', '', '0.00', '133.60', '0.00', '175.60', '0.00', '135.20', '42.00', '28.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557285751', '1557285751');
INSERT INTO `pm_order` VALUES ('1600', '8918', '', '15638528', '145.70', '', '1.20', '139.70', '0.00', '0.00', '145.70', '0.00', '6.00', '15.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557286228', '1557286228');
INSERT INTO `pm_order` VALUES ('1601', '8927', '', '86034306', '73.80', '', '0.00', '73.80', '0.00', '73.80', '0.00', '64.00', '0.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557286936', '1557286936');
INSERT INTO `pm_order` VALUES ('1602', '8927', '', '78861682', '73.80', '', '0.00', '73.80', '0.00', '73.80', '0.00', '64.00', '0.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557287308', '1557287308');
INSERT INTO `pm_order` VALUES ('1603', '8918', '', '27109475', '21.00', '', '0.30', '15.00', '0.00', '0.00', '21.00', '0.00', '6.00', '3.90', '', '0', '', '0', '2', '4', '0', '0', '0', '1557287364', '1557287364');
INSERT INTO `pm_order` VALUES ('1604', '8687', '', '86955905', '35.30', '', '0.00', '12.50', '0.00', '35.30', '0.00', '34.50', '22.80', '15.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557287536', '1557287536');
INSERT INTO `pm_order` VALUES ('1605', '8660', '', '90188833', '104.50', '', '0.00', '104.50', '0.00', '0.00', '104.50', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557288089', '1557288089');
INSERT INTO `pm_order` VALUES ('1606', '8921', '', '74473711', '80.00', '', '0.00', '74.00', '0.00', '80.00', '0.00', '74.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557288298', '1557288298');
INSERT INTO `pm_order` VALUES ('1607', '9171', '', '94571399', '88.00', '', '0.00', '88.00', '0.00', '88.00', '0.00', '0.00', '0.00', '21.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557289195', '1557289195');
INSERT INTO `pm_order` VALUES ('1734', '8938', '', '66586033', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '65.25', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557375876', '1557375876');
INSERT INTO `pm_order` VALUES ('1609', '8918', '', '27038212', '215.80', '', '1.80', '215.80', '0.00', '0.00', '215.80', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557289439', '1557289439');
INSERT INTO `pm_order` VALUES ('1610', '9170', '', '84078050', '117.40', '', '0.00', '105.40', '0.00', '117.40', '0.00', '106.70', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557289617', '1557289617');
INSERT INTO `pm_order` VALUES ('1611', '8687', '', '39388183', '62.60', '', '0.00', '56.60', '0.00', '62.60', '0.00', '59.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557289626', '1557289626');
INSERT INTO `pm_order` VALUES ('1612', '8687', '', '92995689', '27.10', '', '0.00', '19.90', '0.00', '27.10', '0.00', '19.80', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557290084', '1557290084');
INSERT INTO `pm_order` VALUES ('1613', '8964', '', '57209038', '234.00', '', '0.00', '234.00', '0.00', '0.00', '234.00', '195.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557290646', '1557290646');
INSERT INTO `pm_order` VALUES ('1614', '8690', '17723080131', '25593635', '62.20', '', '0.00', '47.20', '0.00', '62.20', '0.00', '48.50', '15.00', '10.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557290908', '1557290908');
INSERT INTO `pm_order` VALUES ('1615', '8686', '', '40267953', '57.20', '', '0.00', '50.00', '0.00', '0.00', '57.20', '50.80', '7.20', '4.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557291025', '1557291025');
INSERT INTO `pm_order` VALUES ('1616', '8862', '', '80595668', '36.00', '', '0.00', '30.00', '0.00', '36.00', '0.00', '27.18', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557291472', '1557291472');
INSERT INTO `pm_order` VALUES ('1617', '9113', '', '70137190', '110.00', '', '0.00', '110.00', '0.00', '110.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557291792', '1557291792');
INSERT INTO `pm_order` VALUES ('1618', '8701', '', '89547942', '123.40', '', '0.00', '102.40', '0.00', '123.40', '0.00', '102.16', '21.00', '14.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557291930', '1557291930');
INSERT INTO `pm_order` VALUES ('1619', '8740', '', '51262054', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557292403', '1557292403');
INSERT INTO `pm_order` VALUES ('1620', '8660', '', '61646182', '214.00', '', '0.00', '214.00', '0.00', '0.00', '214.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557292493', '1557292493');
INSERT INTO `pm_order` VALUES ('1621', '8660', '', '79930739', '209.00', '', '0.00', '209.00', '0.00', '0.00', '209.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557292653', '1557292653');
INSERT INTO `pm_order` VALUES ('1622', '8813', '', '59985662', '54.60', '', '0.00', '46.20', '0.00', '54.60', '0.00', '43.49', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557292833', '1557292833');
INSERT INTO `pm_order` VALUES ('1623', '8869', '', '71615191', '117.00', '', '0.00', '107.40', '0.00', '117.00', '0.00', '110.79', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557292998', '1557292998');
INSERT INTO `pm_order` VALUES ('1624', '9182', '', '62729302', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '130.50', '0.00', '23.40', '拍错段数 扫码退款 重新拍', '0', '', '0', '3', '99', '0', '1', '0', '1557293108', '1557293108');
INSERT INTO `pm_order` VALUES ('1625', '8769', '', '90152099', '21.50', '', '0.00', '15.50', '0.00', '21.50', '0.00', '15.80', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557293729', '1557293729');
INSERT INTO `pm_order` VALUES ('1626', '9182', '', '95674897', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557294111', '1557294111');
INSERT INTO `pm_order` VALUES ('1627', '9178', '', '78741406', '418.00', '', '0.00', '418.00', '0.00', '418.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557294309', '1557294309');
INSERT INTO `pm_order` VALUES ('1628', '8918', '', '34439567', '42.00', '', '0.60', '30.00', '0.00', '0.00', '42.00', '0.00', '12.00', '7.50', '', '0', '', '0', '2', '4', '0', '0', '0', '1557294519', '1557294519');
INSERT INTO `pm_order` VALUES ('1629', '9185', '', '63030781', '252.00', '', '0.00', '252.00', '0.00', '252.00', '0.00', '0.00', '0.00', '23.40', '', '3', '/uploads/20190508/e78ed5a52bacf568c7a63c8cf144ca77.jpg', '0', '4', '4', '0', '0', '0', '1557295184', '1557295184');
INSERT INTO `pm_order` VALUES ('1630', '8854', '', '49233113', '126.80', '', '0.00', '116.60', '0.00', '126.80', '0.00', '119.80', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557295754', '1557295754');
INSERT INTO `pm_order` VALUES ('1631', '9184', '', '60338395', '56.40', '', '0.00', '50.40', '0.00', '56.40', '0.00', '52.20', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557296458', '1557296458');
INSERT INTO `pm_order` VALUES ('1632', '8684', '', '33974505', '95.50', '', '0.00', '95.50', '0.00', '95.50', '0.00', '90.00', '0.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557296552', '1557296552');
INSERT INTO `pm_order` VALUES ('1633', '8882', '', '71486328', '23.20', '', '0.00', '17.20', '0.00', '23.20', '0.00', '17.60', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557296769', '1557296769');
INSERT INTO `pm_order` VALUES ('1634', '8724', '', '65892168', '209.80', '', '0.00', '175.00', '0.00', '209.80', '0.00', '176.49', '34.80', '23.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557297005', '1557297005');
INSERT INTO `pm_order` VALUES ('1635', '8687', '', '54150603', '75.90', '', '0.00', '62.10', '0.00', '75.90', '0.00', '70.70', '13.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557298101', '1557298101');
INSERT INTO `pm_order` VALUES ('1636', '8879', '', '52778909', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557298322', '1557298322');
INSERT INTO `pm_order` VALUES ('1637', '8730', '', '43822191', '140.00', '', '0.00', '140.00', '0.00', '140.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557298623', '1557298623');
INSERT INTO `pm_order` VALUES ('1638', '9151', '', '89810830', '57.60', '', '0.00', '41.40', '0.00', '57.60', '0.00', '40.92', '16.20', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557299315', '1557299315');
INSERT INTO `pm_order` VALUES ('1639', '8658', 'admin', '81203063', '54.26', '', '0.00', '47.30', '0.00', '0.00', '54.26', '48.48', '6.96', '4.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557299327', '1557299327');
INSERT INTO `pm_order` VALUES ('1640', '8742', '', '72288482', '228.00', '', '0.00', '228.00', '0.00', '228.00', '0.00', '0.00', '0.00', '50.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557299458', '1557299458');
INSERT INTO `pm_order` VALUES ('1641', '8854', '', '11196934', '141.00', '', '0.00', '127.20', '0.00', '141.00', '0.00', '129.86', '13.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557299912', '1557299912');
INSERT INTO `pm_order` VALUES ('1642', '8782', '', '51865084', '79.00', '', '0.00', '73.00', '0.00', '79.00', '0.00', '69.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557300089', '1557300089');
INSERT INTO `pm_order` VALUES ('1643', '8665', '', '18251769', '141.36', '', '0.00', '125.70', '0.00', '141.36', '0.00', '125.57', '15.66', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557300117', '1557300117');
INSERT INTO `pm_order` VALUES ('1644', '8742', '', '96401625', '171.00', '', '0.00', '171.00', '0.00', '171.00', '0.00', '0.00', '0.00', '37.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557300133', '1557300133');
INSERT INTO `pm_order` VALUES ('1645', '8742', '', '76217418', '171.00', '', '0.00', '171.00', '0.00', '171.00', '0.00', '0.00', '0.00', '37.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557300274', '1557300274');
INSERT INTO `pm_order` VALUES ('1646', '8742', '', '46989149', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557300440', '1557300440');
INSERT INTO `pm_order` VALUES ('1647', '8782', '', '83963458', '225.70', '', '0.00', '219.70', '0.00', '225.70', '0.00', '155.70', '6.00', '15.25', '', '0', '', '0', '3', '4', '0', '0', '0', '1557300506', '1557300506');
INSERT INTO `pm_order` VALUES ('1650', '8909', '13914494821', '81182507', '126.00', '', '0.00', '126.00', '0.00', '126.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557301482', '1557301482');
INSERT INTO `pm_order` VALUES ('1651', '9041', '', '94597961', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '65.25', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557301635', '1557301635');
INSERT INTO `pm_order` VALUES ('1652', '9191', '', '60866844', '70.60', '', '0.00', '64.60', '0.00', '70.60', '0.00', '66.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557301638', '1557301638');
INSERT INTO `pm_order` VALUES ('1655', '9193', '', '57163268', '117.00', '', '0.00', '117.00', '0.00', '0.00', '117.00', '97.50', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557302152', '1557302152');
INSERT INTO `pm_order` VALUES ('1656', '9191', '', '67772704', '114.10', '', '0.00', '102.10', '0.00', '114.10', '0.00', '103.18', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557302857', '1557302857');
INSERT INTO `pm_order` VALUES ('1654', '8900', '', '96759847', '73.60', '', '0.00', '59.20', '0.00', '73.60', '0.00', '59.76', '14.40', '9.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557301673', '1557301673');
INSERT INTO `pm_order` VALUES ('1658', '9192', '', '70096318', '209.00', '', '0.00', '209.00', '0.00', '209.00', '0.00', '0.00', '0.00', '23.40', '', '3', '/uploads/20190508/5e484ad79412732a6bd9151b31aad860.jpg', '0', '4', '4', '0', '0', '0', '1557303143', '1557303143');
INSERT INTO `pm_order` VALUES ('1659', '9191', '', '27217695', '126.30', '', '0.00', '110.70', '0.00', '126.30', '0.00', '114.34', '15.60', '10.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557303226', '1557303226');
INSERT INTO `pm_order` VALUES ('1660', '9141', '', '29811188', '93.50', '', '0.00', '87.50', '0.00', '93.50', '0.00', '79.08', '6.00', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557303387', '1557303387');
INSERT INTO `pm_order` VALUES ('1661', '8816', '', '60325273', '49.70', '', '0.00', '37.10', '0.00', '49.70', '0.00', '36.16', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557303942', '1557303942');
INSERT INTO `pm_order` VALUES ('1662', '9135', '', '38941519', '202.40', '', '0.00', '186.80', '0.00', '202.40', '0.00', '185.40', '15.60', '10.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557304273', '1557304273');
INSERT INTO `pm_order` VALUES ('1665', '9198', '', '77419987', '107.50', '', '0.00', '107.50', '0.00', '107.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557306163', '1557306163');
INSERT INTO `pm_order` VALUES ('1664', '9088', '', '53605798', '11.80', '', '0.00', '5.80', '0.00', '11.80', '0.00', '5.44', '6.00', '4.00', '', '3', '/uploads/20190508/a7a136ef67c8bc46c173058c5cf0f16b.jpg', '0', '4', '4', '0', '0', '0', '1557305175', '1557305175');
INSERT INTO `pm_order` VALUES ('1666', '8817', '', '32748444', '94.00', '', '0.00', '94.00', '0.00', '94.00', '0.00', '0.00', '0.00', '21.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557309850', '1557309850');
INSERT INTO `pm_order` VALUES ('1667', '8973', '', '98189602', '103.28', '', '0.00', '96.90', '0.00', '0.00', '103.28', '101.04', '6.38', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557309992', '1557309992');
INSERT INTO `pm_order` VALUES ('1668', '9135', '', '13804613', '100.90', '', '0.00', '87.90', '0.00', '100.90', '0.00', '65.00', '13.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557310062', '1557310062');
INSERT INTO `pm_order` VALUES ('1669', '8773', '', '31958243', '21.60', '', '0.00', '15.60', '0.00', '21.60', '0.00', '14.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557310538', '1557310538');
INSERT INTO `pm_order` VALUES ('1670', '8910', '', '72539048', '1118.00', '', '0.00', '1118.00', '0.00', '0.00', '1118.00', '0.00', '0.00', '48.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557313251', '1557313251');
INSERT INTO `pm_order` VALUES ('1671', '9167', '', '81592118', '77.36', '', '0.00', '67.50', '0.00', '0.00', '77.36', '69.00', '9.86', '6.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557313806', '1557313806');
INSERT INTO `pm_order` VALUES ('1672', '9189', '0426994836', '80493100', '34.94', '', '0.00', '24.50', '0.00', '0.00', '34.94', '27.00', '10.44', '7.20', '想取消订单 余额支付已返还', '0', '', '0', '2', '99', '0', '1', '0', '1557313956', '1557313956');
INSERT INTO `pm_order` VALUES ('1673', '9189', '0426994836', '31492826', '37.20', '', '0.00', '31.40', '0.00', '0.00', '37.20', '31.60', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557314413', '1557314413');
INSERT INTO `pm_order` VALUES ('1788', '8666', '', '25200340', '88.40', '', '0.00', '82.40', '0.00', '88.40', '0.00', '87.36', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557404769', '1557404769');
INSERT INTO `pm_order` VALUES ('1787', '9208', '0452607667', '31597030', '55.00', '', '0.00', '55.00', '0.00', '0.00', '55.00', '44.00', '0.00', '8.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557404543', '1557404543');
INSERT INTO `pm_order` VALUES ('1676', '9127', '', '38258135', '224.76', '', '0.00', '206.76', '0.00', '224.76', '0.00', '116.60', '18.00', '33.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557318585', '1557318585');
INSERT INTO `pm_order` VALUES ('1677', '9205', '', '61860454', '45.00', '', '0.00', '39.00', '0.00', '45.00', '0.00', '39.90', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557318712', '1557318712');
INSERT INTO `pm_order` VALUES ('1678', '9127', '', '24841205', '104.50', '', '0.00', '104.50', '0.00', '104.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557319959', '1557319959');
INSERT INTO `pm_order` VALUES ('1679', '8787', '', '62850568', '25.50', '', '0.00', '19.50', '0.00', '25.50', '0.00', '17.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557320562', '1557320562');
INSERT INTO `pm_order` VALUES ('1680', '8980', '', '39303250', '24.38', '', '0.00', '24.38', '0.00', '0.00', '24.38', '18.00', '0.00', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557320765', '1557320765');
INSERT INTO `pm_order` VALUES ('1682', '8980', '', '94090245', '24.38', '', '0.00', '24.38', '0.00', '0.00', '24.38', '18.00', '0.00', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557321046', '1557321046');
INSERT INTO `pm_order` VALUES ('1683', '9189', '0426994836', '50766440', '216.00', '', '0.00', '216.00', '0.00', '0.00', '216.00', '0.00', '0.00', '47.25', '', '0', '', '0', '2', '4', '0', '0', '0', '1557321195', '1557321195');
INSERT INTO `pm_order` VALUES ('1684', '8980', '', '53680053', '30.36', '', '0.00', '23.40', '0.00', '0.00', '30.36', '21.00', '6.96', '4.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557321291', '1557321291');
INSERT INTO `pm_order` VALUES ('1685', '8666', '', '19331020', '77.50', '', '0.00', '69.10', '0.00', '77.50', '0.00', '69.70', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557321318', '1557321318');
INSERT INTO `pm_order` VALUES ('1686', '8980', '', '99947909', '79.40', '', '0.00', '64.90', '0.00', '0.00', '79.40', '68.00', '14.50', '10.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557322156', '1557322156');
INSERT INTO `pm_order` VALUES ('1687', '8666', '', '33200370', '51.40', '', '0.00', '45.40', '0.00', '51.40', '0.00', '47.36', '6.00', '4.00', '还要加东西要求退款 扫码已退款', '0', '', '0', '3', '99', '0', '1', '0', '1557322681', '1557322681');
INSERT INTO `pm_order` VALUES ('1688', '8666', '', '33673399', '110.90', '', '0.90', '110.90', '0.00', '110.90', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557323188', '1557323188');
INSERT INTO `pm_order` VALUES ('1689', '8807', '', '40032088', '70.60', '', '0.00', '64.60', '0.00', '70.60', '0.00', '66.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557323397', '1557323397');
INSERT INTO `pm_order` VALUES ('1690', '8918', '', '70058809', '80.58', '', '0.00', '59.70', '0.00', '0.00', '80.58', '59.40', '20.88', '14.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557325181', '1557325181');
INSERT INTO `pm_order` VALUES ('1691', '8943', '', '71502176', '77.10', '', '0.00', '71.10', '0.00', '77.10', '0.00', '72.30', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557325377', '1557325377');
INSERT INTO `pm_order` VALUES ('1692', '8918', '', '55562090', '272.02', '', '0.00', '232.00', '0.00', '0.00', '272.02', '207.10', '40.02', '27.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557325669', '1557325669');
INSERT INTO `pm_order` VALUES ('1693', '8918', '', '85445919', '210.80', '', '1.80', '210.80', '0.00', '0.00', '210.80', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557325870', '1557325870');
INSERT INTO `pm_order` VALUES ('1694', '8980', '', '50132482', '117.82', '', '0.00', '106.80', '0.00', '0.00', '117.82', '107.80', '11.02', '7.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557326170', '1557326170');
INSERT INTO `pm_order` VALUES ('1695', '8980', '', '19924307', '24.38', '', '0.00', '24.38', '0.00', '0.00', '24.38', '18.00', '0.00', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557326301', '1557326301');
INSERT INTO `pm_order` VALUES ('1696', '8742', '', '41330947', '43.60', '', '0.00', '37.60', '0.00', '43.60', '0.00', '36.30', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557326544', '1557326544');
INSERT INTO `pm_order` VALUES ('1697', '8739', '', '22424737', '121.00', '', '0.00', '121.00', '0.00', '0.00', '121.00', '97.50', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557327104', '1557327104');
INSERT INTO `pm_order` VALUES ('1698', '8822', '', '44760746', '101.00', '', '0.00', '95.00', '0.00', '101.00', '0.00', '98.70', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557328469', '1557328469');
INSERT INTO `pm_order` VALUES ('1699', '8822', '', '71733262', '65.98', '', '0.00', '59.98', '0.00', '65.98', '0.00', '61.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557328929', '1557328929');
INSERT INTO `pm_order` VALUES ('1700', '8918', '', '67218183', '210.80', '', '1.80', '210.80', '0.00', '0.00', '210.80', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557329778', '1557329778');
INSERT INTO `pm_order` VALUES ('1701', '9115', '', '69063025', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557329787', '1557329787');
INSERT INTO `pm_order` VALUES ('1702', '8791', '', '99211489', '59.50', '', '0.00', '52.30', '0.00', '59.50', '0.00', '55.00', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557332224', '1557332224');
INSERT INTO `pm_order` VALUES ('1703', '8959', '', '54492453', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557352645', '1557352645');
INSERT INTO `pm_order` VALUES ('1705', '8885', '', '68078902', '47.00', '', '0.00', '47.00', '0.00', '47.00', '0.00', '0.00', '0.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557355382', '1557355382');
INSERT INTO `pm_order` VALUES ('1706', '8914', '0431471764', '68060509', '125.70', '', '0.00', '117.00', '0.00', '0.00', '125.70', '120.00', '8.70', '6.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557358903', '1557358903');
INSERT INTO `pm_order` VALUES ('1707', '8914', '0431471764', '43177607', '103.32', '', '0.00', '95.20', '0.00', '0.00', '103.32', '96.00', '8.12', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557360213', '1557360213');
INSERT INTO `pm_order` VALUES ('1708', '8914', '0431471764', '66246548', '21.80', '', '0.00', '14.80', '0.00', '0.00', '21.80', '0.00', '7.00', '4.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557360664', '1557360664');
INSERT INTO `pm_order` VALUES ('1709', '8914', '0431471764', '49123257', '57.00', '', '0.00', '57.00', '0.00', '0.00', '57.00', '0.00', '0.00', '12.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557361042', '1557361042');
INSERT INTO `pm_order` VALUES ('1710', '8909', '13914494821', '36617305', '119.70', '', '0.00', '94.50', '0.00', '119.70', '0.00', '93.58', '25.20', '16.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557361071', '1557361071');
INSERT INTO `pm_order` VALUES ('1711', '8898', '', '27814502', '110.96', '', '0.00', '104.00', '0.00', '0.00', '110.96', '105.90', '6.96', '4.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557361280', '1557361280');
INSERT INTO `pm_order` VALUES ('1834', '8929', '', '20777220', '252.00', '', '0.00', '252.00', '0.00', '252.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557450948', '1557450948');
INSERT INTO `pm_order` VALUES ('1713', '9174', '', '71625785', '111.76', '', '0.00', '104.80', '0.00', '0.00', '111.76', '112.00', '6.96', '4.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557364337', '1557364337');
INSERT INTO `pm_order` VALUES ('1714', '9161', '', '58035330', '41.50', '', '0.00', '35.50', '0.00', '41.50', '0.00', '35.80', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557364389', '1557364389');
INSERT INTO `pm_order` VALUES ('1715', '8687', '', '75198658', '68.00', '', '0.00', '56.60', '0.00', '68.00', '0.00', '56.60', '11.40', '7.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557364443', '1557364443');
INSERT INTO `pm_order` VALUES ('1716', '8917', '', '27585563', '171.00', '', '0.00', '159.00', '0.00', '171.00', '0.00', '124.00', '12.00', '12.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557364942', '1557364942');
INSERT INTO `pm_order` VALUES ('1717', '9001', '0449596969', '44732652', '228.00', '', '0.00', '228.00', '0.00', '228.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557366009', '1557366009');
INSERT INTO `pm_order` VALUES ('1718', '8844', '', '29715180', '103.80', '', '0.00', '90.00', '0.00', '103.80', '0.00', '92.00', '13.80', '9.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557366691', '1557366691');
INSERT INTO `pm_order` VALUES ('1719', '8938', '', '53609211', '135.60', '', '0.00', '123.60', '0.00', '135.60', '0.00', '128.59', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557367411', '1557367411');
INSERT INTO `pm_order` VALUES ('1720', '8676', '', '67654746', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557367479', '1557367479');
INSERT INTO `pm_order` VALUES ('1721', '8921', '', '39414953', '80.00', '', '0.00', '74.00', '0.00', '80.00', '0.00', '74.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557367708', '1557367708');
INSERT INTO `pm_order` VALUES ('1722', '8676', '', '78567128', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557368117', '1557368117');
INSERT INTO `pm_order` VALUES ('1723', '8944', '', '34231832', '534.00', '', '0.00', '534.00', '0.00', '0.00', '534.00', '423.00', '0.00', '70.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557369226', '1557369226');
INSERT INTO `pm_order` VALUES ('1724', '8914', '0431471764', '65619728', '76.00', '', '0.00', '76.00', '0.00', '0.00', '76.00', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557369574', '1557369574');
INSERT INTO `pm_order` VALUES ('1725', '9189', '0426994836', '59946218', '33.80', '', '0.00', '28.00', '0.00', '0.00', '33.80', '26.50', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557369922', '1557369922');
INSERT INTO `pm_order` VALUES ('1726', '8944', '', '20160276', '22.88', '', '0.00', '16.50', '0.00', '0.00', '22.88', '17.20', '6.38', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557370008', '1557370008');
INSERT INTO `pm_order` VALUES ('1727', '8774', '', '55662086', '112.00', '', '0.00', '103.00', '0.00', '112.00', '0.00', '100.20', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557372510', '1557372510');
INSERT INTO `pm_order` VALUES ('1728', '8955', '', '92882425', '59.40', '', '0.00', '53.40', '0.00', '59.40', '0.00', '52.80', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557372984', '1557372984');
INSERT INTO `pm_order` VALUES ('1729', '8740', '', '48851707', '88.00', '', '0.00', '88.00', '0.00', '88.00', '0.00', '0.00', '0.00', '21.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557373497', '1557373497');
INSERT INTO `pm_order` VALUES ('1730', '8727', '0450300513', '39265723', '318.00', '', '0.00', '318.00', '0.00', '318.00', '0.00', '254.70', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1557373580', '1557373580');
INSERT INTO `pm_order` VALUES ('1731', '8727', '0450300513', '17763282', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557373708', '1557373708');
INSERT INTO `pm_order` VALUES ('1732', '9136', '', '33819237', '191.00', '', '0.00', '191.00', '0.00', '191.00', '0.00', '180.00', '0.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557373817', '1557373817');
INSERT INTO `pm_order` VALUES ('1733', '8740', '', '14496513', '127.70', '', '0.00', '120.50', '0.00', '127.70', '0.00', '116.50', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557374220', '1557374220');
INSERT INTO `pm_order` VALUES ('1735', '8721', '', '19866232', '209.00', '', '0.00', '209.00', '0.00', '209.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557376099', '1557376099');
INSERT INTO `pm_order` VALUES ('1736', '9011', '', '76639142', '246.00', '', '0.00', '246.00', '0.00', '0.00', '246.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557376202', '1557376202');
INSERT INTO `pm_order` VALUES ('1737', '8906', '', '96005870', '234.00', '', '0.00', '234.00', '0.00', '0.00', '234.00', '201.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557377388', '1557377388');
INSERT INTO `pm_order` VALUES ('1738', '9193', '', '99377337', '59.07', '', '0.00', '53.27', '0.00', '0.00', '59.07', '52.20', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557377449', '1557377449');
INSERT INTO `pm_order` VALUES ('1739', '8665', '', '76940037', '105.40', '', '0.90', '105.40', '0.00', '105.40', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557377912', '1557377912');
INSERT INTO `pm_order` VALUES ('1740', '8742', '', '60928933', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557379114', '1557379114');
INSERT INTO `pm_order` VALUES ('1741', '8895', '18677236919', '37690752', '55.86', '', '0.00', '43.10', '0.00', '0.00', '55.86', '45.20', '12.76', '8.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557379188', '1557379188');
INSERT INTO `pm_order` VALUES ('1742', '9186', '', '88090903', '50.00', '', '0.00', '39.80', '0.00', '50.00', '0.00', '40.00', '10.20', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557379698', '1557379698');
INSERT INTO `pm_order` VALUES ('1743', '8745', '', '27646488', '378.00', '', '0.00', '378.00', '0.00', '378.00', '0.00', '0.00', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1557380370', '1557380370');
INSERT INTO `pm_order` VALUES ('1744', '8687', '', '68290907', '62.30', '', '0.00', '56.30', '0.00', '62.30', '0.00', '57.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557382110', '1557382110');
INSERT INTO `pm_order` VALUES ('1745', '8769', '', '63139618', '42.70', '', '0.00', '36.70', '0.00', '42.70', '0.00', '35.09', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557382482', '1557382482');
INSERT INTO `pm_order` VALUES ('1746', '8910', '', '51734402', '150.98', '', '0.00', '132.42', '0.00', '0.00', '150.98', '136.40', '18.56', '12.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557382579', '1557382579');
INSERT INTO `pm_order` VALUES ('1747', '8881', '', '14255467', '93.20', '', '0.00', '87.20', '0.00', '93.20', '0.00', '92.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557382764', '1557382764');
INSERT INTO `pm_order` VALUES ('1748', '9029', '', '74948140', '120.05', '', '0.00', '102.05', '0.00', '120.05', '0.00', '103.58', '18.00', '12.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557383051', '1557383051');
INSERT INTO `pm_order` VALUES ('1749', '8840', '', '58072147', '368.50', '', '0.00', '362.50', '0.00', '368.50', '0.00', '0.00', '6.00', '39.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557383280', '1557383280');
INSERT INTO `pm_order` VALUES ('1750', '9217', '', '88172271', '43.50', '', '0.00', '37.50', '0.00', '43.50', '0.00', '37.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557383283', '1557383283');
INSERT INTO `pm_order` VALUES ('1751', '8840', '', '22161088', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557383744', '1557383744');
INSERT INTO `pm_order` VALUES ('1752', '8742', '', '53544025', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557383966', '1557383966');
INSERT INTO `pm_order` VALUES ('1753', '8701', '', '19678290', '126.60', '', '0.00', '118.20', '0.00', '126.60', '0.00', '137.30', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557384876', '1557384876');
INSERT INTO `pm_order` VALUES ('1754', '8701', '', '17994359', '36.60', '', '0.00', '36.60', '0.00', '36.60', '0.00', '29.44', '0.00', '1.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557385143', '1557385143');
INSERT INTO `pm_order` VALUES ('1885', '9229', '', '57951524', '185.40', '', '0.00', '179.40', '0.00', '185.40', '0.00', '172.20', '6.00', '9.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557472031', '1557472031');
INSERT INTO `pm_order` VALUES ('1756', '8760', '', '35950484', '245.80', '', '0.00', '226.00', '0.00', '245.80', '0.00', '183.00', '19.80', '13.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557385694', '1557385694');
INSERT INTO `pm_order` VALUES ('1757', '9171', '', '19586585', '252.00', '', '0.00', '252.00', '0.00', '252.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557385871', '1557385871');
INSERT INTO `pm_order` VALUES ('1758', '8982', '', '92309761', '113.36', '', '0.00', '106.40', '0.00', '0.00', '113.36', '108.80', '6.96', '4.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557386118', '1557386118');
INSERT INTO `pm_order` VALUES ('1759', '8760', '', '94407263', '33.30', '', '0.00', '25.50', '0.00', '33.30', '0.00', '24.00', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557386242', '1557386242');
INSERT INTO `pm_order` VALUES ('1760', '9097', '', '44290307', '12.50', '', '0.00', '12.50', '0.00', '0.00', '12.50', '0.00', '0.00', '3.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557386550', '1557386550');
INSERT INTO `pm_order` VALUES ('1761', '9230', '', '27217475', '370.93', '', '0.00', '364.93', '0.00', '370.93', '0.00', '307.50', '6.00', '39.10', '', '3', '/uploads/20190509/451771296d66ae813b87fb698be71bd0.jpg', '0', '4', '4', '0', '0', '0', '1557386626', '1557386626');
INSERT INTO `pm_order` VALUES ('1762', '8982', '', '47373257', '39.40', '', '0.00', '33.60', '0.00', '0.00', '39.40', '34.44', '5.80', '4.00', '订单取消 余额已充回账户', '0', '', '0', '2', '99', '0', '1', '0', '1557386643', '1557386643');
INSERT INTO `pm_order` VALUES ('1763', '8658', '123456', '90993621', '58.00', '', '0.00', '52.20', '0.00', '0.00', '58.00', '54.50', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557386758', '1557386758');
INSERT INTO `pm_order` VALUES ('1764', '9136', '', '54322542', '191.00', '', '0.00', '191.00', '0.00', '191.00', '0.00', '180.00', '0.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557386959', '1557386959');
INSERT INTO `pm_order` VALUES ('1765', '8757', '', '48515849', '351.00', '', '0.00', '351.00', '0.00', '351.00', '0.00', '292.50', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1557388914', '1557388914');
INSERT INTO `pm_order` VALUES ('1766', '9043', '', '33808269', '123.70', '', '0.00', '112.30', '0.00', '123.70', '0.00', '96.08', '11.40', '7.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557391009', '1557391009');
INSERT INTO `pm_order` VALUES ('1767', '9242', '', '56459422', '182.19', '', '0.00', '161.79', '0.00', '182.19', '0.00', '172.50', '20.40', '13.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557391415', '1557391415');
INSERT INTO `pm_order` VALUES ('1768', '8695', '', '69461425', '55.36', '', '0.00', '45.50', '0.00', '0.00', '55.36', '43.45', '9.86', '6.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557391488', '1557391488');
INSERT INTO `pm_order` VALUES ('1776', '8883', '', '88033818', '83.90', '', '0.00', '67.10', '0.00', '83.90', '0.00', '56.00', '16.80', '11.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557394673', '1557394673');
INSERT INTO `pm_order` VALUES ('1770', '8722', '', '10714555', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557391886', '1557391886');
INSERT INTO `pm_order` VALUES ('1771', '9246', '', '23214236', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557392606', '1557392606');
INSERT INTO `pm_order` VALUES ('1772', '8773', '', '32904128', '74.40', '', '0.00', '62.40', '0.00', '74.40', '0.00', '56.60', '12.00', '7.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557392629', '1557392629');
INSERT INTO `pm_order` VALUES ('1773', '9246', '', '24475618', '124.00', '', '0.00', '124.00', '0.00', '124.00', '0.00', '0.00', '0.00', '11.25', '', '0', '', '0', '3', '4', '0', '0', '0', '1557392916', '1557392916');
INSERT INTO `pm_order` VALUES ('1774', '8690', '17723080131', '35970092', '347.00', '', '0.00', '347.00', '0.00', '347.00', '0.00', '294.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557393411', '1557393411');
INSERT INTO `pm_order` VALUES ('1777', '8739', '', '20647590', '248.00', '', '0.00', '248.00', '0.00', '73.62', '174.38', '0.00', '0.00', '22.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1557397173', '1557397173');
INSERT INTO `pm_order` VALUES ('1778', '9248', '', '96375545', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '195.00', '0.00', '23.40', '', '3', '/uploads/20190509/00f0b33241401f7bf34a89f83fad36f5.jpg', '0', '4', '4', '0', '0', '0', '1557398419', '1557398419');
INSERT INTO `pm_order` VALUES ('1779', '9250', '', '74000851', '138.80', '', '0.00', '129.20', '0.00', '138.80', '0.00', '132.00', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557398588', '1557398588');
INSERT INTO `pm_order` VALUES ('1780', '8973', '', '40341171', '132.60', '', '0.00', '126.80', '0.00', '0.00', '132.60', '126.76', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557399854', '1557399854');
INSERT INTO `pm_order` VALUES ('1781', '8660', '', '64862998', '107.00', '', '0.00', '107.00', '0.00', '0.00', '107.00', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557400152', '1557400152');
INSERT INTO `pm_order` VALUES ('1782', '8677', '12456', '13244660', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557400637', '1557400637');
INSERT INTO `pm_order` VALUES ('1783', '8677', '12456', '50813284', '178.00', '', '0.00', '178.00', '0.00', '178.00', '0.00', '141.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557401892', '1557401892');
INSERT INTO `pm_order` VALUES ('1784', '8677', '12456', '51142964', '77.30', '', '0.00', '71.50', '0.00', '77.30', '0.00', '72.20', '5.80', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557402181', '1557402181');
INSERT INTO `pm_order` VALUES ('1785', '8973', '', '93237638', '46.00', '', '0.00', '46.00', '0.00', '0.00', '46.00', '0.00', '0.00', '10.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557402392', '1557402392');
INSERT INTO `pm_order` VALUES ('1786', '9254', '', '59820200', '43.00', '', '0.00', '37.00', '0.00', '43.00', '0.00', '38.60', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557403291', '1557403291');
INSERT INTO `pm_order` VALUES ('1789', '9208', '0452607667', '14606253', '103.90', '', '0.00', '103.90', '0.00', '0.00', '103.90', '70.00', '0.00', '16.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557405587', '1557405587');
INSERT INTO `pm_order` VALUES ('1790', '9228', '', '87345741', '296.70', '', '0.00', '269.70', '0.00', '296.70', '0.00', '165.40', '27.00', '29.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557405608', '1557405608');
INSERT INTO `pm_order` VALUES ('1791', '8742', '', '47413736', '63.50', '', '0.00', '56.90', '0.00', '63.50', '0.00', '57.00', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557405890', '1557405890');
INSERT INTO `pm_order` VALUES ('1792', '8822', '', '58529678', '52.70', '', '0.00', '44.90', '0.00', '52.70', '0.00', '43.80', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557406011', '1557406011');
INSERT INTO `pm_order` VALUES ('1793', '9250', '', '36984854', '20.20', '', '0.00', '14.20', '0.00', '20.20', '0.00', '0.00', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1557406039', '1557406039');
INSERT INTO `pm_order` VALUES ('1794', '8980', '', '54131026', '59.80', '', '0.00', '54.00', '0.00', '0.00', '59.80', '56.50', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557407499', '1557407499');
INSERT INTO `pm_order` VALUES ('1795', '8725', '', '30222518', '78.00', '', '0.00', '71.40', '0.00', '78.00', '0.00', '72.00', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557407601', '1557407601');
INSERT INTO `pm_order` VALUES ('1796', '9257', '', '70279809', '68.60', '', '0.00', '56.60', '0.00', '68.60', '0.00', '62.00', '12.00', '7.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1557408586', '1557408586');
INSERT INTO `pm_order` VALUES ('1797', '9208', '0452607667', '53451841', '56.00', '', '0.00', '56.00', '0.00', '0.00', '56.00', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557409642', '1557409642');
INSERT INTO `pm_order` VALUES ('1798', '8807', '', '71145245', '100.00', '', '0.00', '100.00', '0.00', '100.00', '0.00', '0.00', '0.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557410131', '1557410131');
INSERT INTO `pm_order` VALUES ('1799', '8898', '', '49457945', '127.54', '', '0.00', '120.00', '0.00', '0.00', '127.54', '120.60', '7.54', '5.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557410269', '1557410269');
INSERT INTO `pm_order` VALUES ('1800', '8666', '', '73084476', '43.50', '', '0.00', '37.50', '0.00', '43.50', '0.00', '38.68', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557410324', '1557410324');
INSERT INTO `pm_order` VALUES ('1801', '8898', '', '80594312', '38.40', '', '0.00', '29.70', '0.00', '0.00', '38.40', '29.40', '8.70', '6.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557410366', '1557410366');
INSERT INTO `pm_order` VALUES ('1802', '8923', '', '58744931', '214.00', '', '0.00', '214.00', '0.00', '0.00', '214.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557410373', '1557410373');
INSERT INTO `pm_order` VALUES ('1803', '9001', '0449596969', '50145465', '56.70', '', '0.00', '40.50', '0.00', '56.70', '0.00', '41.40', '16.20', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557410508', '1557410508');
INSERT INTO `pm_order` VALUES ('1804', '9013', '', '63093324', '94.18', '', '0.00', '87.80', '0.00', '0.00', '94.18', '89.68', '6.38', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557412001', '1557412001');
INSERT INTO `pm_order` VALUES ('1805', '8666', '', '68254956', '94.70', '', '0.00', '83.30', '0.00', '94.70', '0.00', '81.57', '11.40', '7.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557412054', '1557412054');
INSERT INTO `pm_order` VALUES ('1806', '8725', '', '35431841', '54.30', '', '0.00', '47.70', '0.00', '54.30', '0.00', '47.60', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557412233', '1557412233');
INSERT INTO `pm_order` VALUES ('1807', '8677', '12456', '70688143', '123.00', '', '0.00', '123.00', '0.00', '123.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557412377', '1557412377');
INSERT INTO `pm_order` VALUES ('1808', '9131', '', '11140760', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '130.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557412437', '1557412437');
INSERT INTO `pm_order` VALUES ('1809', '8677', '12456', '17420888', '246.00', '', '0.00', '246.00', '0.00', '246.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557412646', '1557412646');
INSERT INTO `pm_order` VALUES ('1810', '9131', '', '79472206', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '130.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557412859', '1557412859');
INSERT INTO `pm_order` VALUES ('1811', '8677', '12456', '35526294', '123.00', '', '0.00', '123.00', '0.00', '123.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557413004', '1557413004');
INSERT INTO `pm_order` VALUES ('1812', '8677', '12456', '67725779', '123.00', '', '0.00', '123.00', '0.00', '123.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557413249', '1557413249');
INSERT INTO `pm_order` VALUES ('1813', '8677', '12456', '84978472', '123.00', '', '0.00', '123.00', '0.00', '123.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557413573', '1557413573');
INSERT INTO `pm_order` VALUES ('1814', '8677', '12456', '81708698', '40.48', '', '0.00', '31.20', '0.00', '40.48', '0.00', '28.00', '9.28', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557414368', '1557414368');
INSERT INTO `pm_order` VALUES ('1815', '8800', '', '73131547', '106.16', '', '0.00', '93.56', '0.00', '106.16', '0.00', '77.50', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557414380', '1557414380');
INSERT INTO `pm_order` VALUES ('1816', '8802', '', '71592343', '101.80', '', '0.00', '86.80', '0.00', '101.80', '0.00', '91.60', '15.00', '10.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557414509', '1557414509');
INSERT INTO `pm_order` VALUES ('1817', '8725', '', '74193248', '59.30', '', '0.00', '50.90', '0.00', '59.30', '0.00', '51.00', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557417979', '1557417979');
INSERT INTO `pm_order` VALUES ('1818', '8898', '', '59836755', '114.00', '', '0.00', '114.00', '0.00', '0.00', '114.00', '0.00', '0.00', '25.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557433961', '1557433961');
INSERT INTO `pm_order` VALUES ('1819', '9157', '', '90005961', '129.00', '', '0.00', '111.00', '0.00', '129.00', '0.00', '120.00', '18.00', '12.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557444968', '1557444968');
INSERT INTO `pm_order` VALUES ('1820', '9038', '', '99856476', '188.60', '', '0.00', '171.80', '0.00', '188.60', '0.00', '191.60', '16.80', '11.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557447021', '1557447021');
INSERT INTO `pm_order` VALUES ('1821', '8914', '0431471764', '86230299', '47.84', '', '0.00', '40.30', '0.00', '0.00', '47.84', '39.50', '7.54', '5.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557447523', '1557447523');
INSERT INTO `pm_order` VALUES ('1822', '8666', '', '68751665', '78.50', '', '0.00', '67.70', '0.00', '78.50', '0.00', '70.90', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557447635', '1557447635');
INSERT INTO `pm_order` VALUES ('1823', '8914', '0431471764', '96186101', '104.00', '', '0.00', '104.00', '0.00', '0.00', '104.00', '99.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557447661', '1557447661');
INSERT INTO `pm_order` VALUES ('1824', '8964', '', '81543270', '61.86', '', '0.00', '52.00', '0.00', '0.00', '61.86', '47.30', '9.86', '6.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557447870', '1557447870');
INSERT INTO `pm_order` VALUES ('1825', '8914', '0431471764', '77524596', '41.80', '', '0.00', '36.00', '0.00', '0.00', '41.80', '35.20', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557447980', '1557447980');
INSERT INTO `pm_order` VALUES ('1826', '8914', '0431471764', '56170562', '32.20', '', '0.00', '26.40', '0.00', '0.00', '32.20', '15.84', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557448100', '1557448100');
INSERT INTO `pm_order` VALUES ('1827', '9176', '', '78611195', '418.00', '', '0.00', '418.00', '0.00', '418.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557448426', '1557448426');
INSERT INTO `pm_order` VALUES ('1828', '8914', '0431471764', '95379512', '49.60', '', '0.00', '43.80', '0.00', '0.00', '49.60', '46.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557449091', '1557449091');
INSERT INTO `pm_order` VALUES ('1829', '9000', '0478889876', '48099623', '153.08', '', '0.00', '138.00', '0.00', '0.00', '153.08', '139.98', '15.08', '10.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557449243', '1557449243');
INSERT INTO `pm_order` VALUES ('1830', '9000', '0478889876', '66168084', '175.20', '', '0.00', '163.60', '0.00', '0.00', '175.20', '175.80', '11.60', '8.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557449483', '1557449483');
INSERT INTO `pm_order` VALUES ('1831', '9174', '', '19880261', '165.76', '', '0.00', '155.90', '0.00', '0.00', '165.76', '151.60', '9.86', '6.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557449803', '1557449803');
INSERT INTO `pm_order` VALUES ('1832', '9227', '', '11713445', '156.00', '', '0.00', '156.00', '0.00', '0.00', '156.00', '130.50', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557449811', '1557449811');
INSERT INTO `pm_order` VALUES ('1833', '9000', '0478889876', '29359059', '149.86', '', '0.00', '137.10', '0.00', '0.00', '149.86', '132.78', '12.76', '8.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557449821', '1557449821');
INSERT INTO `pm_order` VALUES ('1931', '8665', '', '71849732', '102.04', '', '0.00', '94.50', '0.00', '102.04', '0.00', '99.90', '7.54', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557537628', '1557537628');
INSERT INTO `pm_order` VALUES ('1836', '8798', '', '40609607', '86.40', '', '0.00', '86.40', '0.00', '86.40', '0.00', '75.00', '0.00', '11.28', '', '0', '', '0', '3', '4', '0', '0', '0', '1557451411', '1557451411');
INSERT INTO `pm_order` VALUES ('1837', '8929', '', '54866309', '181.20', '', '0.00', '169.20', '0.00', '181.20', '0.00', '174.30', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557451613', '1557451613');
INSERT INTO `pm_order` VALUES ('1838', '8709', '', '64687806', '169.10', '', '0.00', '152.30', '0.00', '169.10', '0.00', '127.09', '16.80', '11.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557451904', '1557451904');
INSERT INTO `pm_order` VALUES ('1839', '8914', '0431471764', '35568628', '52.00', '', '0.00', '52.00', '0.00', '0.00', '52.00', '0.00', '0.00', '11.25', '', '0', '', '0', '2', '4', '0', '0', '0', '1557452534', '1557452534');
INSERT INTO `pm_order` VALUES ('1840', '8962', '', '95055689', '129.80', '', '0.00', '119.00', '0.00', '129.80', '0.00', '120.00', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557453057', '1557453057');
INSERT INTO `pm_order` VALUES ('1841', '8954', '', '76705069', '114.00', '', '0.00', '114.00', '0.00', '114.00', '0.00', '0.00', '0.00', '25.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557453144', '1557453144');
INSERT INTO `pm_order` VALUES ('1842', '8982', '', '90540505', '124.00', '', '0.00', '124.00', '0.00', '0.00', '124.00', '0.00', '0.00', '11.25', '', '0', '', '0', '2', '4', '0', '0', '0', '1557453191', '1557453191');
INSERT INTO `pm_order` VALUES ('1843', '8666', '', '28349809', '62.10', '', '0.00', '50.70', '0.00', '62.10', '0.00', '48.33', '11.40', '7.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557453445', '1557453445');
INSERT INTO `pm_order` VALUES ('1844', '9174', '', '75881526', '468.00', '', '0.00', '468.00', '0.00', '0.00', '468.00', '390.00', '0.00', '46.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557453519', '1557453519');
INSERT INTO `pm_order` VALUES ('1845', '8954', '', '77738797', '83.89', '', '0.00', '66.49', '0.00', '83.89', '0.00', '67.47', '17.40', '11.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557453628', '1557453628');
INSERT INTO `pm_order` VALUES ('1846', '8669', '', '47382493', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557454158', '1557454158');
INSERT INTO `pm_order` VALUES ('1847', '9011', '', '55744162', '82.40', '', '0.00', '73.70', '0.00', '0.00', '82.40', '73.03', '8.70', '6.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557455346', '1557455346');
INSERT INTO `pm_order` VALUES ('1848', '8944', '', '90602816', '214.00', '', '0.00', '214.00', '0.00', '0.00', '214.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557456817', '1557456817');
INSERT INTO `pm_order` VALUES ('1849', '9174', '', '60355699', '178.00', '', '0.00', '178.00', '0.00', '0.00', '178.00', '141.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557457286', '1557457286');
INSERT INTO `pm_order` VALUES ('1850', '8944', '', '23091454', '156.00', '', '0.00', '156.00', '0.00', '0.00', '156.00', '130.50', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557457737', '1557457737');
INSERT INTO `pm_order` VALUES ('1851', '8785', '', '59344971', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557458129', '1557458129');
INSERT INTO `pm_order` VALUES ('1852', '9174', '', '72003018', '123.00', '', '0.00', '123.00', '0.00', '0.00', '123.00', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557458270', '1557458270');
INSERT INTO `pm_order` VALUES ('1853', '8905', '', '86291317', '214.00', '', '0.00', '214.00', '0.00', '0.00', '214.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557458331', '1557458331');
INSERT INTO `pm_order` VALUES ('1854', '9108', '', '64674743', '315.60', '', '3.60', '315.60', '0.00', '315.60', '0.00', '261.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557458586', '1557458586');
INSERT INTO `pm_order` VALUES ('1855', '8885', '', '56557697', '82.20', '', '0.60', '70.20', '0.00', '82.20', '0.00', '67.00', '12.00', '7.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557459090', '1557459090');
INSERT INTO `pm_order` VALUES ('1856', '9142', '', '26171566', '34.20', '', '0.00', '25.80', '0.00', '34.20', '0.00', '26.40', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557459210', '1557459210');
INSERT INTO `pm_order` VALUES ('1857', '9108', '', '84659254', '65.60', '', '0.60', '53.60', '0.00', '65.60', '0.00', '53.00', '12.00', '7.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557459604', '1557459604');
INSERT INTO `pm_order` VALUES ('1858', '8885', '', '32031497', '89.90', '', '0.90', '89.90', '0.00', '89.90', '0.00', '70.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557459631', '1557459631');
INSERT INTO `pm_order` VALUES ('1859', '8663', '12356', '42646882', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557459708', '1557459708');
INSERT INTO `pm_order` VALUES ('1860', '9265', '', '10151429', '171.00', '', '0.00', '171.00', '0.00', '171.00', '0.00', '0.00', '0.00', '35.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1557459788', '1557459788');
INSERT INTO `pm_order` VALUES ('1861', '8885', '', '81507801', '28.10', '', '0.30', '22.10', '0.00', '28.10', '0.00', '21.25', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1557459971', '1557459971');
INSERT INTO `pm_order` VALUES ('1862', '8905', '', '66635976', '35.20', '', '0.00', '29.20', '0.00', '0.00', '35.20', '0.00', '6.00', '3.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557460045', '1557460045');
INSERT INTO `pm_order` VALUES ('1863', '8780', '', '24415891', '89.00', '', '0.00', '79.40', '0.00', '89.00', '0.00', '80.20', '9.60', '6.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557460138', '1557460138');
INSERT INTO `pm_order` VALUES ('1864', '8687', '', '31731261', '41.80', '', '0.00', '31.00', '0.00', '41.80', '0.00', '31.60', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557460822', '1557460822');
INSERT INTO `pm_order` VALUES ('1865', '8727', '0450300513', '61830552', '429.00', '', '0.00', '429.00', '0.00', '429.00', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557460969', '1557460969');
INSERT INTO `pm_order` VALUES ('1866', '8970', '', '16746044', '52.12', '', '0.00', '44.00', '0.00', '0.00', '52.12', '43.68', '8.12', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557461093', '1557461093');
INSERT INTO `pm_order` VALUES ('1867', '9126', '', '56941587', '182.24', '', '0.00', '164.24', '0.00', '182.24', '0.00', '162.00', '18.00', '12.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557461147', '1557461147');
INSERT INTO `pm_order` VALUES ('1868', '8687', '', '43994816', '252.00', '', '0.00', '252.00', '0.00', '252.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557461335', '1557461335');
INSERT INTO `pm_order` VALUES ('1869', '8970', '', '86443326', '45.36', '', '0.00', '38.40', '0.00', '0.00', '45.36', '42.78', '6.96', '4.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557461938', '1557461938');
INSERT INTO `pm_order` VALUES ('1871', '8914', '0431471764', '10827486', '34.44', '', '0.00', '26.90', '0.00', '0.00', '34.44', '26.25', '7.54', '5.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557464859', '1557464859');
INSERT INTO `pm_order` VALUES ('1872', '8780', '', '17970624', '110.00', '', '0.00', '110.00', '0.00', '110.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557465041', '1557465041');
INSERT INTO `pm_order` VALUES ('1873', '8984', '', '76332920', '157.80', '', '1.80', '157.80', '0.00', '157.80', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557465828', '1557465828');
INSERT INTO `pm_order` VALUES ('1874', '8984', '', '30322273', '103.60', '', '0.00', '91.60', '0.00', '103.60', '0.00', '93.70', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557466651', '1557466651');
INSERT INTO `pm_order` VALUES ('1875', '9217', '', '69823478', '55.80', '', '0.00', '48.00', '0.00', '55.80', '0.00', '48.00', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557466661', '1557466661');
INSERT INTO `pm_order` VALUES ('1876', '8739', '', '71591670', '67.50', '', '0.00', '61.70', '0.00', '39.36', '28.14', '63.80', '5.80', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557467319', '1557467319');
INSERT INTO `pm_order` VALUES ('1877', '8914', '0431471764', '34923978', '92.00', '', '0.00', '92.00', '0.00', '0.00', '92.00', '0.00', '0.00', '21.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557467801', '1557467801');
INSERT INTO `pm_order` VALUES ('1878', '9268', '', '69622132', '215.00', '', '0.00', '215.00', '0.00', '215.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557468210', '1557468210');
INSERT INTO `pm_order` VALUES ('1879', '9118', '', '56431391', '101.03', '', '0.00', '87.83', '0.00', '101.03', '0.00', '93.60', '13.20', '8.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557468255', '1557468255');
INSERT INTO `pm_order` VALUES ('1880', '8898', '', '89076037', '58.28', '', '0.00', '49.00', '0.00', '0.00', '58.28', '44.00', '9.28', '6.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557470617', '1557470617');
INSERT INTO `pm_order` VALUES ('1881', '9169', '', '73169644', '178.00', '', '0.00', '178.00', '0.00', '178.00', '0.00', '141.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557470940', '1557470940');
INSERT INTO `pm_order` VALUES ('1882', '8757', '', '47033897', '26.80', '', '0.00', '20.80', '0.00', '26.80', '0.00', '19.90', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557470941', '1557470941');
INSERT INTO `pm_order` VALUES ('1883', '8757', '', '32129435', '65.50', '', '0.00', '56.50', '0.00', '65.50', '0.00', '54.40', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557471550', '1557471550');
INSERT INTO `pm_order` VALUES ('1884', '8819', '', '90231014', '110.00', '', '0.00', '110.00', '0.00', '110.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557471563', '1557471563');
INSERT INTO `pm_order` VALUES ('1886', '9000', '0478889876', '37667730', '95.00', '', '0.00', '83.40', '0.00', '0.00', '95.00', '80.46', '11.60', '8.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557472526', '1557472526');
INSERT INTO `pm_order` VALUES ('1887', '8778', '', '80299603', '104.80', '', '0.00', '92.20', '0.00', '104.80', '0.00', '89.80', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557473385', '1557473385');
INSERT INTO `pm_order` VALUES ('1888', '8682', '', '47473494', '93.20', '', '0.00', '87.20', '0.00', '93.20', '0.00', '92.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557473388', '1557473388');
INSERT INTO `pm_order` VALUES ('1889', '9251', '', '66670651', '75.00', '', '0.00', '75.00', '0.00', '75.00', '0.00', '0.00', '0.00', '11.70', '', '3', '/uploads/20190510/d278487b4db772295b2f4e93259f5343.jpg', '0', '4', '4', '0', '0', '0', '1557473512', '1557473512');
INSERT INTO `pm_order` VALUES ('1890', '9161', '', '63344340', '31.50', '', '0.00', '25.50', '0.00', '31.50', '0.00', '23.50', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1557474099', '1557474099');
INSERT INTO `pm_order` VALUES ('1891', '8677', '12456', '91181316', '153.86', '', '0.00', '135.30', '0.00', '153.86', '0.00', '142.50', '18.56', '12.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557475779', '1557475779');
INSERT INTO `pm_order` VALUES ('1892', '8769', '', '95257052', '45.50', '', '0.00', '39.50', '0.00', '45.50', '0.00', '39.80', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557475780', '1557475780');
INSERT INTO `pm_order` VALUES ('1893', '8677', '12456', '17104403', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '130.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557475947', '1557475947');
INSERT INTO `pm_order` VALUES ('1894', '8677', '12456', '48028696', '66.00', '', '0.00', '66.00', '0.00', '66.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557476474', '1557476474');
INSERT INTO `pm_order` VALUES ('1895', '8974', '', '59362032', '125.40', '', '0.00', '119.40', '0.00', '125.40', '0.00', '119.40', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557476893', '1557476893');
INSERT INTO `pm_order` VALUES ('1896', '8703', '', '94659891', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557477813', '1557477813');
INSERT INTO `pm_order` VALUES ('1897', '8780', '', '96864135', '29.60', '', '0.00', '23.60', '0.00', '29.60', '0.00', '25.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557478563', '1557478563');
INSERT INTO `pm_order` VALUES ('1898', '8803', '', '69869513', '168.00', '', '0.00', '153.60', '0.00', '168.00', '0.00', '156.80', '14.40', '9.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557480761', '1557480761');
INSERT INTO `pm_order` VALUES ('1899', '9274', '', '72750006', '122.50', '', '0.00', '89.10', '0.00', '122.50', '0.00', '59.50', '33.40', '25.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557481081', '1557481081');
INSERT INTO `pm_order` VALUES ('1900', '9012', '', '18921558', '138.00', '', '0.00', '138.00', '0.00', '138.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557481120', '1557481120');
INSERT INTO `pm_order` VALUES ('1901', '8898', '', '30406340', '39.60', '', '0.00', '33.80', '0.00', '0.00', '39.60', '35.80', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557483207', '1557483207');
INSERT INTO `pm_order` VALUES ('1902', '9273', '', '42885104', '660.00', '', '0.00', '660.00', '0.00', '660.00', '0.00', '0.00', '0.00', '70.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557483614', '1557483614');
INSERT INTO `pm_order` VALUES ('1903', '9280', '', '19481643', '104.50', '', '0.00', '104.50', '0.00', '104.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557485154', '1557485154');
INSERT INTO `pm_order` VALUES ('1904', '8673', '', '96947672', '236.00', '', '0.00', '236.00', '0.00', '236.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557488342', '1557488342');
INSERT INTO `pm_order` VALUES ('1905', '9276', '', '77605315', '100.00', '', '0.00', '100.00', '0.00', '100.00', '0.00', '0.00', '0.00', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557488904', '1557488904');
INSERT INTO `pm_order` VALUES ('1906', '8849', '', '23693942', '110.00', '', '0.00', '110.00', '0.00', '110.00', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557489603', '1557489603');
INSERT INTO `pm_order` VALUES ('1907', '8853', '', '92237306', '110.90', '', '0.90', '110.90', '0.00', '110.90', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557491811', '1557491811');
INSERT INTO `pm_order` VALUES ('1908', '8853', '', '28113676', '104.10', '', '0.00', '85.50', '0.00', '104.10', '0.00', '96.00', '18.60', '12.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557492302', '1557492302');
INSERT INTO `pm_order` VALUES ('1909', '8895', '18677236919', '45969846', '62.40', '', '0.00', '56.60', '0.00', '0.00', '62.40', '45.90', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557492669', '1557492669');
INSERT INTO `pm_order` VALUES ('1910', '9038', '', '90008697', '92.14', '', '0.00', '86.14', '0.00', '92.14', '0.00', '82.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557493283', '1557493283');
INSERT INTO `pm_order` VALUES ('1911', '8816', '', '56940099', '132.90', '', '0.00', '120.90', '0.00', '132.90', '0.00', '136.50', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557494073', '1557494073');
INSERT INTO `pm_order` VALUES ('1912', '8769', '', '43816738', '52.20', '', '0.00', '45.00', '0.00', '52.20', '0.00', '40.35', '7.20', '4.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557494663', '1557494663');
INSERT INTO `pm_order` VALUES ('1913', '8769', '', '69054615', '252.00', '', '0.00', '252.00', '0.00', '252.00', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557494864', '1557494864');
INSERT INTO `pm_order` VALUES ('1914', '9092', '', '68546649', '83.78', '', '0.00', '68.70', '0.00', '0.00', '83.78', '65.40', '15.08', '10.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557495271', '1557495271');
INSERT INTO `pm_order` VALUES ('1915', '9005', '', '48837751', '46.20', '', '0.00', '35.40', '0.00', '46.20', '0.00', '35.80', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557496039', '1557496039');
INSERT INTO `pm_order` VALUES ('1916', '9167', '', '30538818', '41.28', '', '0.00', '29.10', '0.00', '0.00', '41.28', '34.00', '12.18', '8.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557496261', '1557496261');
INSERT INTO `pm_order` VALUES ('1917', '8686', '', '64621483', '118.14', '', '0.00', '107.70', '0.00', '0.00', '118.14', '101.00', '10.44', '7.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557499130', '1557499130');
INSERT INTO `pm_order` VALUES ('1918', '8742', '', '72769467', '25.20', '', '0.00', '18.60', '0.00', '25.20', '0.00', '15.38', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557500410', '1557500410');
INSERT INTO `pm_order` VALUES ('1919', '8693', '', '92697723', '56.30', '', '0.00', '50.30', '0.00', '56.30', '0.00', '50.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557501091', '1557501091');
INSERT INTO `pm_order` VALUES ('1920', '8693', '', '25660562', '124.80', '', '0.00', '124.80', '0.00', '124.80', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557501585', '1557501585');
INSERT INTO `pm_order` VALUES ('1921', '9040', '', '24741937', '217.80', '', '0.00', '217.80', '0.00', '217.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557502295', '1557502295');
INSERT INTO `pm_order` VALUES ('1922', '8739', '', '43954702', '29.40', '', '0.00', '23.60', '0.00', '29.40', '0.00', '25.00', '5.80', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557505274', '1557505274');
INSERT INTO `pm_order` VALUES ('1923', '8678', '', '27695161', '217.80', '', '0.00', '217.80', '0.00', '217.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557509742', '1557509742');
INSERT INTO `pm_order` VALUES ('1924', '9208', '0452607667', '76712632', '30.15', '', '0.00', '30.15', '0.00', '0.00', '30.15', '16.32', '0.00', '8.64', '', '0', '', '0', '2', '4', '0', '0', '0', '1557523851', '1557523851');
INSERT INTO `pm_order` VALUES ('1925', '8740', '', '58976667', '106.50', '', '0.00', '106.50', '0.00', '106.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557528744', '1557528744');
INSERT INTO `pm_order` VALUES ('1926', '8740', '', '69844806', '217.80', '', '0.00', '217.80', '0.00', '217.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557529106', '1557529106');
INSERT INTO `pm_order` VALUES ('1927', '9069', '', '12020600', '76.00', '', '0.00', '70.00', '0.00', '76.00', '0.00', '66.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557532891', '1557532891');
INSERT INTO `pm_order` VALUES ('1928', '8701', '', '68195824', '115.50', '', '0.00', '115.50', '0.00', '115.50', '0.00', '80.50', '0.00', '17.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557534111', '1557534111');
INSERT INTO `pm_order` VALUES ('1929', '8690', '17723080131', '31547987', '87.00', '', '0.00', '78.00', '0.00', '87.00', '0.00', '77.50', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557536514', '1557536514');
INSERT INTO `pm_order` VALUES ('1930', '8969', '', '16447917', '129.38', '', '0.00', '114.30', '0.00', '0.00', '129.38', '119.00', '15.08', '10.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557536643', '1557536643');
INSERT INTO `pm_order` VALUES ('1932', '8969', '', '57985875', '51.70', '', '0.00', '45.90', '0.00', '0.00', '51.70', '45.80', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557537910', '1557537910');
INSERT INTO `pm_order` VALUES ('1933', '8969', '', '78135821', '46.32', '', '0.00', '38.20', '0.00', '0.00', '46.32', '40.00', '8.12', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557540095', '1557540095');
INSERT INTO `pm_order` VALUES ('1934', '8660', '', '80883641', '91.10', '', '0.00', '91.10', '0.00', '0.00', '91.10', '79.50', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557540412', '1557540412');
INSERT INTO `pm_order` VALUES ('1935', '9284', '', '59154766', '105.20', '', '0.00', '98.60', '0.00', '105.20', '0.00', '102.00', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557542547', '1557542547');
INSERT INTO `pm_order` VALUES ('1936', '8822', '', '76087281', '87.20', '', '0.00', '87.20', '0.00', '87.20', '0.00', '0.00', '0.00', '21.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557543360', '1557543360');
INSERT INTO `pm_order` VALUES ('1937', '9012', '', '28792545', '136.80', '', '0.00', '136.80', '0.00', '136.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557544489', '1557544489');
INSERT INTO `pm_order` VALUES ('1938', '9285', '', '94128927', '206.00', '', '0.00', '206.00', '0.00', '206.00', '0.00', '198.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557544631', '1557544631');
INSERT INTO `pm_order` VALUES ('1939', '9285', '', '29479843', '245.60', '', '0.00', '245.60', '0.00', '245.60', '0.00', '0.00', '0.00', '22.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1557544983', '1557544983');
INSERT INTO `pm_order` VALUES ('1940', '8921', '', '49034785', '249.80', '', '1.80', '249.80', '0.00', '249.80', '0.00', '195.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557546509', '1557546509');
INSERT INTO `pm_order` VALUES ('1941', '8806', '', '35987479', '56.50', '', '0.00', '56.50', '0.00', '56.50', '0.00', '0.00', '0.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557546586', '1557546586');
INSERT INTO `pm_order` VALUES ('1942', '8921', '', '43208849', '32.00', '', '0.00', '26.00', '0.00', '32.00', '0.00', '30.60', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557546886', '1557546886');
INSERT INTO `pm_order` VALUES ('1943', '9189', '0426994836', '80318153', '56.50', '', '0.00', '56.50', '0.00', '0.00', '56.50', '0.00', '0.00', '12.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557547479', '1557547479');
INSERT INTO `pm_order` VALUES ('1944', '8922', '', '81276430', '108.90', '', '0.00', '108.90', '0.00', '108.90', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557547768', '1557547768');
INSERT INTO `pm_order` VALUES ('1945', '8964', '', '71124669', '163.20', '', '0.00', '163.20', '0.00', '0.00', '163.20', '135.60', '0.00', '14.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557548087', '1557548087');
INSERT INTO `pm_order` VALUES ('1946', '9186', '', '99666527', '152.00', '', '0.00', '141.80', '0.00', '152.00', '0.00', '40.00', '10.20', '18.05', '', '0', '', '0', '3', '4', '0', '0', '0', '1557548544', '1557548544');
INSERT INTO `pm_order` VALUES ('1947', '9185', '', '88786538', '290.90', '', '0.00', '277.90', '0.00', '290.90', '0.00', '63.75', '13.00', '45.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557548865', '1557548865');
INSERT INTO `pm_order` VALUES ('1948', '9285', '', '54955884', '245.60', '', '0.00', '245.60', '0.00', '245.60', '0.00', '0.00', '0.00', '22.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1557549062', '1557549062');
INSERT INTO `pm_order` VALUES ('1949', '8895', '18677236919', '29478428', '330.10', '', '0.00', '317.10', '0.00', '0.00', '330.10', '0.00', '13.00', '35.10', '', '0', '', '0', '2', '4', '0', '0', '0', '1557549438', '1557549438');
INSERT INTO `pm_order` VALUES ('1950', '8918', '', '18160353', '89.10', '', '0.90', '89.10', '0.00', '0.00', '89.10', '70.50', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557550109', '1557550109');
INSERT INTO `pm_order` VALUES ('1951', '8920', '', '37846348', '122.80', '', '0.00', '122.80', '0.00', '122.80', '0.00', '0.00', '0.00', '11.25', '', '0', '', '0', '3', '4', '0', '0', '0', '1557550799', '1557550799');
INSERT INTO `pm_order` VALUES ('1952', '8851', '', '90691277', '112.06', '', '0.00', '93.50', '0.00', '0.00', '112.06', '95.30', '18.56', '12.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557551751', '1557551751');
INSERT INTO `pm_order` VALUES ('1953', '8829', '', '75419739', '100.10', '', '0.00', '94.10', '0.00', '100.10', '0.00', '100.50', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557551799', '1557551799');
INSERT INTO `pm_order` VALUES ('1954', '8740', '', '28204306', '217.80', '', '0.00', '217.80', '0.00', '217.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557551882', '1557551882');
INSERT INTO `pm_order` VALUES ('1955', '8829', '', '41641693', '42.50', '', '0.00', '36.50', '0.00', '42.50', '0.00', '36.23', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557551971', '1557551971');
INSERT INTO `pm_order` VALUES ('2048', '8727', '0450300513', '12378170', '154.60', '', '0.00', '154.60', '0.00', '154.60', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557638440', '1557638440');
INSERT INTO `pm_order` VALUES ('1957', '8666', '', '83685043', '53.80', '', '0.00', '47.20', '0.00', '53.80', '0.00', '45.50', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557552371', '1557552371');
INSERT INTO `pm_order` VALUES ('1958', '8851', '', '99568250', '33.20', '', '0.00', '27.40', '0.00', '0.00', '33.20', '27.80', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557552379', '1557552379');
INSERT INTO `pm_order` VALUES ('1959', '8660', '', '50184613', '212.00', '', '0.00', '212.00', '0.00', '0.00', '212.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557552867', '1557552867');
INSERT INTO `pm_order` VALUES ('1960', '8964', '', '76216590', '106.00', '', '0.00', '106.00', '0.00', '0.00', '106.00', '0.00', '0.00', '11.70', '', '0', '', '0', '2', '4', '0', '0', '0', '1557553191', '1557553191');
INSERT INTO `pm_order` VALUES ('1961', '8780', '', '30224719', '99.00', '', '0.00', '93.00', '0.00', '99.00', '0.00', '99.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557553880', '1557553880');
INSERT INTO `pm_order` VALUES ('1962', '8918', '', '63202474', '56.50', '', '0.00', '56.50', '0.00', '0.00', '56.50', '0.00', '0.00', '12.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557554024', '1557554024');
INSERT INTO `pm_order` VALUES ('1963', '8918', '', '73378273', '169.50', '', '0.00', '169.50', '0.00', '0.00', '169.50', '0.00', '0.00', '37.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557554142', '1557554142');
INSERT INTO `pm_order` VALUES ('1964', '8851', '', '88600666', '58.78', '', '0.00', '52.40', '0.00', '0.00', '58.78', '58.00', '6.38', '4.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557554142', '1557554142');
INSERT INTO `pm_order` VALUES ('1965', '8851', '', '53466358', '43.54', '', '0.00', '36.00', '0.00', '0.00', '43.54', '37.20', '7.54', '5.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557554263', '1557554263');
INSERT INTO `pm_order` VALUES ('1966', '8918', '', '55416881', '45.60', '', '0.00', '45.60', '0.00', '0.00', '45.60', '0.00', '0.00', '10.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557554292', '1557554292');
INSERT INTO `pm_order` VALUES ('1967', '8771', '', '23342430', '11.80', '', '0.00', '5.80', '0.00', '11.80', '0.00', '5.44', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557554469', '1557554469');
INSERT INTO `pm_order` VALUES ('1968', '8851', '', '79720369', '79.80', '', '0.00', '74.00', '0.00', '0.00', '79.80', '74.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557554587', '1557554587');
INSERT INTO `pm_order` VALUES ('1969', '8969', '', '79046066', '31.40', '', '0.00', '31.40', '0.00', '0.00', '31.40', '23.00', '0.00', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557554882', '1557554882');
INSERT INTO `pm_order` VALUES ('1970', '8920', '', '54756557', '61.80', '', '0.00', '54.00', '0.00', '61.80', '0.00', '44.00', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557554979', '1557554979');
INSERT INTO `pm_order` VALUES ('1971', '8771', '', '35767966', '238.00', '', '0.00', '238.00', '0.00', '238.00', '0.00', '201.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557555217', '1557555217');
INSERT INTO `pm_order` VALUES ('1972', '9000', '0478889876', '11349282', '83.84', '', '0.00', '70.50', '0.00', '0.00', '83.84', '73.78', '13.34', '9.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557556151', '1557556151');
INSERT INTO `pm_order` VALUES ('1973', '8900', '', '46908198', '217.80', '', '0.00', '217.80', '0.00', '217.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557557213', '1557557213');
INSERT INTO `pm_order` VALUES ('1974', '8792', '', '96006364', '101.25', '', '0.75', '86.25', '0.00', '101.25', '0.00', '84.50', '15.00', '10.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557557566', '1557557566');
INSERT INTO `pm_order` VALUES ('1975', '8792', '', '58577008', '48.40', '', '0.00', '40.60', '0.00', '48.40', '0.00', '41.90', '7.80', '5.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557557888', '1557557888');
INSERT INTO `pm_order` VALUES ('1976', '8869', '', '47024399', '70.00', '', '0.00', '64.00', '0.00', '70.00', '0.00', '65.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557558082', '1557558082');
INSERT INTO `pm_order` VALUES ('1977', '8723', '0426690846', '17812983', '54.80', '', '0.00', '44.00', '0.00', '54.80', '0.00', '48.00', '10.80', '7.20', '', '3', '/uploads/20190511/5db3d3cf4bf7e06bf122569deb27a8ee.jpg', '0', '4', '4', '0', '0', '0', '1557558632', '1557558632');
INSERT INTO `pm_order` VALUES ('2068', '8916', '', '86596737', '124.00', '', '0.00', '124.00', '0.00', '124.00', '0.00', '97.50', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557645604', '1557645604');
INSERT INTO `pm_order` VALUES ('1979', '9013', '13960844907', '46545724', '249.40', '', '1.80', '249.40', '0.00', '0.00', '249.40', '225.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557559507', '1557559507');
INSERT INTO `pm_order` VALUES ('1980', '8791', '', '70175095', '81.90', '', '0.00', '71.10', '0.00', '81.90', '0.00', '72.50', '10.80', '7.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557562807', '1557562807');
INSERT INTO `pm_order` VALUES ('1981', '9101', '', '98994568', '239.80', '', '1.80', '239.80', '0.00', '155.66', '84.14', '201.00', '0.00', '23.40', '', '3', '/uploads/20190511/fd96608283ae531e20ed329e954f25e6.jpg', '0', '4', '4', '0', '0', '0', '1557564837', '1557564837');
INSERT INTO `pm_order` VALUES ('1982', '8739', '', '79521182', '29.40', '', '0.00', '23.60', '0.00', '29.40', '0.00', '25.00', '5.80', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557566319', '1557566319');
INSERT INTO `pm_order` VALUES ('1983', '9101', '', '72070305', '240.30', '', '2.70', '240.30', '0.00', '0.00', '240.30', '195.75', '0.00', '35.10', '', '0', '', '0', '2', '4', '0', '0', '0', '1557566736', '1557566736');
INSERT INTO `pm_order` VALUES ('1984', '9101', '', '27255334', '75.60', '', '0.00', '69.80', '0.00', '0.00', '75.60', '73.00', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557567034', '1557567034');
INSERT INTO `pm_order` VALUES ('1985', '8739', '', '45662487', '83.82', '', '0.00', '67.00', '0.00', '83.82', '0.00', '69.60', '16.82', '11.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557567084', '1557567084');
INSERT INTO `pm_order` VALUES ('1986', '9192', '', '75008651', '219.60', '', '1.80', '219.60', '0.00', '219.60', '0.00', '0.00', '0.00', '23.40', '', '3', '/uploads/20190511/8eb00dfe37172f0b021ad44e09f376a0.jpg', '0', '4', '4', '0', '0', '0', '1557569211', '1557569211');
INSERT INTO `pm_order` VALUES ('1987', '8741', '0449109488', '10029189', '217.80', '', '0.00', '217.80', '0.00', '217.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557571456', '1557571456');
INSERT INTO `pm_order` VALUES ('1988', '8688', '0452066651', '75609168', '139.36', '', '0.00', '124.96', '0.00', '139.36', '0.00', '85.05', '14.40', '9.50', '两个面单取消 益生菌重新拍 扫码已退款', '0', '', '0', '3', '99', '0', '1', '0', '1557572096', '1557572096');
INSERT INTO `pm_order` VALUES ('1989', '9153', '', '10131297', '154.60', '', '0.00', '154.60', '0.00', '154.60', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557572344', '1557572344');
INSERT INTO `pm_order` VALUES ('1990', '8917', '', '68255916', '79.20', '', '0.00', '79.20', '0.00', '79.20', '0.00', '65.25', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557573336', '1557573336');
INSERT INTO `pm_order` VALUES ('1991', '8885', '', '38907237', '78.20', '', '0.90', '78.20', '0.00', '78.20', '0.00', '63.75', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557573446', '1557573446');
INSERT INTO `pm_order` VALUES ('1992', '9005', '', '44461888', '56.60', '', '0.00', '35.60', '0.00', '56.60', '0.00', '12.16', '21.00', '13.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557573794', '1557573794');
INSERT INTO `pm_order` VALUES ('1993', '8917', '', '86717511', '108.90', '', '0.00', '108.90', '0.00', '108.90', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557573810', '1557573810');
INSERT INTO `pm_order` VALUES ('1994', '8688', '0452066651', '76651837', '245.60', '', '0.00', '245.60', '0.00', '245.60', '0.00', '0.00', '0.00', '22.50', '', '0', '', '0', '3', '4', '0', '0', '0', '1557573956', '1557573956');
INSERT INTO `pm_order` VALUES ('1995', '8885', '', '94390896', '119.90', '', '0.90', '119.90', '0.00', '119.90', '0.00', '100.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557574045', '1557574045');
INSERT INTO `pm_order` VALUES ('1996', '9130', '', '58654619', '28.00', '', '0.00', '19.60', '0.00', '28.00', '0.00', '20.00', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557574485', '1557574485');
INSERT INTO `pm_order` VALUES ('1997', '8849', '', '74792738', '40.80', '', '0.00', '32.40', '0.00', '40.80', '0.00', '31.30', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557578133', '1557578133');
INSERT INTO `pm_order` VALUES ('1998', '8693', '', '87795410', '30.30', '', '0.00', '23.70', '0.00', '30.30', '0.00', '33.00', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557579122', '1557579122');
INSERT INTO `pm_order` VALUES ('1999', '9228', '', '99135025', '103.50', '', '0.00', '103.50', '0.00', '103.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557579665', '1557579665');
INSERT INTO `pm_order` VALUES ('2000', '8677', '12456', '55729055', '61.68', '', '0.00', '46.60', '0.00', '61.68', '0.00', '47.00', '15.08', '10.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557583014', '1557583014');
INSERT INTO `pm_order` VALUES ('2003', '8778', '', '56569458', '89.40', '', '0.00', '75.80', '0.00', '89.40', '0.00', '63.00', '13.60', '8.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557583825', '1557583825');
INSERT INTO `pm_order` VALUES ('2002', '8964', '', '72069702', '89.22', '', '0.00', '76.46', '0.00', '0.00', '89.22', '78.00', '12.76', '8.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557583753', '1557583753');
INSERT INTO `pm_order` VALUES ('2004', '8807', '', '51633016', '70.00', '', '0.00', '64.00', '0.00', '70.00', '0.00', '65.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557584322', '1557584322');
INSERT INTO `pm_order` VALUES ('2005', '8703', '', '67482179', '30.90', '', '0.00', '30.90', '0.00', '30.90', '0.00', '23.00', '0.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557585203', '1557585203');
INSERT INTO `pm_order` VALUES ('2006', '8677', '12456', '45173065', '122.40', '', '0.00', '116.60', '0.00', '122.40', '0.00', '117.80', '5.80', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557585215', '1557585215');
INSERT INTO `pm_order` VALUES ('2007', '8660', '', '55029456', '124.20', '', '0.00', '111.20', '0.00', '0.00', '124.20', '0.00', '13.00', '11.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557585462', '1557585462');
INSERT INTO `pm_order` VALUES ('2008', '8677', '12456', '76587503', '176.40', '', '0.00', '176.40', '0.00', '176.40', '0.00', '141.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557585729', '1557585729');
INSERT INTO `pm_order` VALUES ('2009', '8973', '', '10825269', '103.40', '', '0.00', '94.70', '0.00', '0.00', '103.40', '97.70', '8.70', '6.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557586408', '1557586408');
INSERT INTO `pm_order` VALUES ('2010', '8739', '', '41072442', '152.82', '', '0.00', '141.80', '0.00', '152.82', '0.00', '144.30', '11.02', '7.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557587160', '1557587160');
INSERT INTO `pm_order` VALUES ('2011', '8697', '', '78433481', '217.80', '', '0.00', '217.80', '0.00', '217.80', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557589836', '1557589836');
INSERT INTO `pm_order` VALUES ('2012', '9250', '', '89920328', '32.70', '', '0.00', '26.70', '0.00', '32.70', '0.00', '27.58', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557591538', '1557591538');
INSERT INTO `pm_order` VALUES ('2013', '8914', '0431471764', '96903215', '25.50', '', '0.00', '25.50', '0.00', '0.00', '25.50', '17.00', '0.00', '5.20', '', '0', '', '0', '2', '4', '0', '0', '0', '1557610892', '1557610892');
INSERT INTO `pm_order` VALUES ('2014', '8833', '', '88455319', '74.63', '', '0.00', '66.23', '0.00', '74.63', '0.00', '69.35', '8.40', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557619252', '1557619252');
INSERT INTO `pm_order` VALUES ('2015', '9224', '', '49692558', '105.38', '', '0.00', '87.40', '0.00', '0.00', '105.38', '91.18', '17.98', '12.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557621279', '1557621279');
INSERT INTO `pm_order` VALUES ('2016', '9011', '', '92062949', '424.00', '', '0.00', '424.00', '0.00', '0.00', '424.00', '0.00', '0.00', '46.80', '', '0', '', '0', '2', '4', '0', '0', '0', '1557626218', '1557626218');
INSERT INTO `pm_order` VALUES ('2017', '8845', '', '80526468', '171.80', '', '0.00', '171.80', '0.00', '171.80', '0.00', '147.00', '0.00', '11.70', '', '3', '/uploads/20190512/27f66d035c6b769fd690883ab0f1f333.jpg', '0', '4', '4', '0', '0', '0', '1557627268', '1557627268');
INSERT INTO `pm_order` VALUES ('2018', '9287', '', '49602220', '247.60', '', '0.00', '247.60', '0.00', '247.60', '0.00', '225.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557627670', '1557627670');
INSERT INTO `pm_order` VALUES ('2019', '9287', '', '42384023', '26.00', '', '0.00', '26.00', '0.00', '26.00', '0.00', '0.00', '0.00', '5.10', '', '0', '', '0', '3', '4', '0', '0', '0', '1557628307', '1557628307');
INSERT INTO `pm_order` VALUES ('2020', '9287', '', '58224606', '120.00', '', '0.00', '120.00', '0.00', '120.00', '0.00', '97.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557629103', '1557629103');
INSERT INTO `pm_order` VALUES ('2021', '8686', '', '22613886', '102.00', '', '0.00', '102.00', '0.00', '0.00', '102.00', '0.00', '0.00', '11.25', '', '0', '', '0', '2', '4', '0', '0', '0', '1557629179', '1557629179');
INSERT INTO `pm_order` VALUES ('2022', '8709', '', '34785694', '65.10', '', '0.00', '52.50', '0.00', '65.10', '0.00', '50.40', '12.60', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557630735', '1557630735');
INSERT INTO `pm_order` VALUES ('2023', '8906', '', '78496540', '238.00', '', '0.00', '238.00', '0.00', '0.00', '238.00', '201.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557631461', '1557631461');
INSERT INTO `pm_order` VALUES ('2024', '9000', '0478889876', '27693082', '107.18', '', '0.00', '95.00', '0.00', '0.00', '107.18', '99.74', '12.18', '8.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557632175', '1557632175');
INSERT INTO `pm_order` VALUES ('2025', '9000', '0478889876', '63517622', '155.58', '', '0.00', '143.40', '0.00', '0.00', '155.58', '143.90', '12.18', '8.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557633859', '1557633859');
INSERT INTO `pm_order` VALUES ('2026', '9167', '', '65974587', '65.50', '', '0.00', '59.70', '0.00', '0.00', '65.50', '59.70', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557633962', '1557633962');
INSERT INTO `pm_order` VALUES ('2027', '8692', '', '36930630', '38.50', '', '0.00', '32.50', '0.00', '38.50', '0.00', '0.00', '6.00', '3.90', '', '0', '', '0', '3', '4', '0', '0', '0', '1557634099', '1557634099');
INSERT INTO `pm_order` VALUES ('2028', '8901', '', '81495160', '124.80', '', '0.00', '118.20', '0.00', '124.80', '0.00', '125.00', '6.60', '4.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557634203', '1557634203');
INSERT INTO `pm_order` VALUES ('2029', '8850', '', '77199559', '160.20', '', '1.80', '160.20', '0.00', '160.20', '0.00', '130.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557634240', '1557634240');
INSERT INTO `pm_order` VALUES ('2030', '8901', '', '16504651', '62.40', '', '0.00', '44.40', '0.00', '62.40', '0.00', '0.00', '18.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557634593', '1557634593');
INSERT INTO `pm_order` VALUES ('2031', '8769', '', '18178922', '30.40', '', '0.00', '24.40', '0.00', '30.40', '0.00', '26.00', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557634987', '1557634987');
INSERT INTO `pm_order` VALUES ('2032', '8850', '', '46481908', '219.60', '', '1.80', '219.60', '0.00', '219.60', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557634994', '1557634994');
INSERT INTO `pm_order` VALUES ('2180', '8921', '', '38487711', '57.80', '', '0.00', '51.80', '0.00', '57.80', '0.00', '53.30', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557721523', '1557721523');
INSERT INTO `pm_order` VALUES ('2034', '8927', '', '90559627', '164.80', '', '0.00', '148.60', '0.00', '164.80', '0.00', '152.30', '16.20', '10.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557635752', '1557635752');
INSERT INTO `pm_order` VALUES ('2035', '8850', '', '73190931', '439.20', '', '3.60', '439.20', '0.00', '439.20', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557635768', '1557635768');
INSERT INTO `pm_order` VALUES ('2036', '8677', '12456', '70402539', '154.60', '', '0.00', '154.60', '0.00', '154.60', '0.00', '127.50', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557635807', '1557635807');
INSERT INTO `pm_order` VALUES ('2037', '8752', '', '69586618', '69.80', '', '0.00', '56.60', '0.00', '69.80', '0.00', '60.00', '13.20', '8.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557635808', '1557635808');
INSERT INTO `pm_order` VALUES ('2038', '8927', '', '28865339', '59.00', '', '0.00', '59.00', '0.00', '59.00', '0.00', '49.50', '0.00', '6.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557635873', '1557635873');
INSERT INTO `pm_order` VALUES ('2039', '8927', '', '72339549', '73.80', '', '0.00', '73.80', '0.00', '73.80', '0.00', '64.00', '0.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557635969', '1557635969');
INSERT INTO `pm_order` VALUES ('2040', '8850', '', '39171268', '235.50', '', '1.80', '235.50', '0.00', '235.50', '0.00', '0.00', '0.00', '23.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557636009', '1557636009');
INSERT INTO `pm_order` VALUES ('2041', '8850', '', '70354166', '43.60', '', '0.00', '29.60', '0.00', '43.60', '0.00', '0.00', '14.00', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557636428', '1557636428');
INSERT INTO `pm_order` VALUES ('2042', '8677', '12456', '98437084', '62.40', '', '0.00', '44.40', '0.00', '62.40', '0.00', '0.00', '18.00', '12.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557636436', '1557636436');
INSERT INTO `pm_order` VALUES ('2043', '8709', '', '85765237', '70.20', '', '0.00', '58.20', '0.00', '70.20', '0.00', '60.00', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557636846', '1557636846');
INSERT INTO `pm_order` VALUES ('2044', '8677', '12456', '32247373', '103.50', '', '0.00', '103.50', '0.00', '103.50', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557636975', '1557636975');
INSERT INTO `pm_order` VALUES ('2189', '8914', '0431471764', '35877091', '72.96', '', '0.00', '66.00', '0.00', '0.00', '72.96', '86.00', '6.96', '6.72', '', '0', '', '0', '2', '4', '0', '0', '0', '1557724166', '1557724166');
INSERT INTO `pm_order` VALUES ('2046', '8695', '', '65679206', '58.22', '', '0.00', '47.20', '0.00', '0.00', '58.22', '50.00', '11.02', '7.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557637927', '1557637927');
INSERT INTO `pm_order` VALUES ('2047', '8895', '18677236919', '11142570', '207.00', '', '0.00', '207.00', '0.00', '0.00', '207.00', '0.00', '0.00', '23.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557637961', '1557637961');
INSERT INTO `pm_order` VALUES ('2049', '8726', '', '83275521', '91.10', '', '0.00', '79.10', '0.00', '91.10', '0.00', '79.00', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557638449', '1557638449');
INSERT INTO `pm_order` VALUES ('2050', '8926', '', '91835622', '67.20', '', '0.00', '58.20', '0.00', '67.20', '0.00', '63.70', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557638494', '1557638494');
INSERT INTO `pm_order` VALUES ('2051', '8840', '', '86601947', '476.00', '', '0.00', '476.00', '0.00', '476.00', '0.00', '402.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557639625', '1557639625');
INSERT INTO `pm_order` VALUES ('2052', '8977', '', '45128542', '105.92', '', '0.00', '93.92', '0.00', '105.92', '0.00', '93.50', '12.00', '8.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557639860', '1557639860');
INSERT INTO `pm_order` VALUES ('2053', '9257', '', '69824476', '119.00', '', '0.00', '119.00', '0.00', '119.00', '0.00', '100.50', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557640027', '1557640027');
INSERT INTO `pm_order` VALUES ('2054', '8874', '', '64007897', '435.60', '', '0.00', '435.60', '0.00', '435.60', '0.00', '0.00', '0.00', '46.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557640293', '1557640293');
INSERT INTO `pm_order` VALUES ('2055', '8937', '', '98642583', '124.80', '', '0.00', '124.80', '0.00', '124.80', '0.00', '0.00', '0.00', '11.70', '', '0', '', '0', '3', '4', '0', '0', '0', '1557640433', '1557640433');
INSERT INTO `pm_order` VALUES ('2056', '8660', '', '54288912', '56.20', '', '0.00', '50.40', '0.00', '0.00', '56.20', '52.20', '5.80', '4.00', '', '0', '', '0', '2', '4', '0', '0', '0', '1557641120', '1557641120');
INSERT INTO `pm_order` VALUES ('2057', '9261', '', '10176788', '70.50', '', '0.00', '61.50', '0.00', '70.50', '0.00', '67.50', '9.00', '6.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557641402', '1557641402');
INSERT INTO `pm_order` VALUES ('2058', '9146', '', '76368225', '102.50', '', '0.00', '96.50', '0.00', '102.50', '0.00', '85.10', '6.00', '4.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557642104', '1557642104');
INSERT INTO `pm_order` VALUES ('2059', '9291', '', '89724542', '108.76', '', '0.00', '87.30', '0.00', '0.00', '108.76', '88.10', '21.46', '20.72', '', '0', '', '0', '2', '4', '0', '0', '0', '1557642618', '1557642618');
INSERT INTO `pm_order` VALUES ('2060', '9294', '', '53836084', '217.80', '', '0.00', '217.80', '0.00', '217.80', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557642789', '1557642789');
INSERT INTO `pm_order` VALUES ('2061', '9056', '', '89979655', '46.60', '', '0.00', '38.20', '0.00', '46.60', '0.00', '40.00', '8.40', '7.84', '', '0', '', '0', '3', '4', '0', '0', '0', '1557643307', '1557643307');
INSERT INTO `pm_order` VALUES ('2062', '9297', '', '46592694', '307.20', '', '0.00', '301.20', '0.00', '307.20', '0.00', '84.20', '6.00', '31.34', '', '0', '', '0', '3', '4', '0', '0', '0', '1557643323', '1557643323');
INSERT INTO `pm_order` VALUES ('2063', '9289', '', '81776275', '213.00', '', '0.00', '213.00', '0.00', '213.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557643422', '1557643422');
INSERT INTO `pm_order` VALUES ('2064', '9012', '', '91761691', '136.80', '', '0.00', '136.80', '0.00', '136.80', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557643716', '1557643716');
INSERT INTO `pm_order` VALUES ('2065', '8918', '', '71232418', '85.88', '', '0.00', '85.88', '0.00', '0.00', '85.88', '75.00', '0.00', '15.79', '', '0', '', '0', '2', '4', '0', '0', '0', '1557643826', '1557643826');
INSERT INTO `pm_order` VALUES ('2071', '9000', '0478889876', '44759896', '147.04', '', '0.00', '133.70', '0.00', '0.00', '147.04', '136.90', '13.34', '12.88', '', '0', '', '0', '2', '4', '0', '0', '0', '1557645924', '1557645924');
INSERT INTO `pm_order` VALUES ('2067', '9054', '', '63341836', '106.10', '', '0.00', '83.90', '0.00', '106.10', '0.00', '81.30', '22.20', '20.72', '', '0', '', '0', '3', '4', '0', '0', '0', '1557644497', '1557644497');
INSERT INTO `pm_order` VALUES ('2069', '8978', '', '67134981', '106.50', '', '0.00', '106.50', '0.00', '106.50', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557645649', '1557645649');
INSERT INTO `pm_order` VALUES ('2070', '9289', '', '80676087', '219.60', '', '1.80', '219.60', '0.00', '219.60', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557645739', '1557645739');
INSERT INTO `pm_order` VALUES ('2072', '8658', '123456', '74284182', '243.60', '', '0.00', '243.60', '0.00', '0.00', '243.60', '0.00', '0.00', '25.74', '', '0', '', '0', '2', '4', '0', '0', '0', '1557646562', '1557646562');
INSERT INTO `pm_order` VALUES ('2073', '9012', '', '93616067', '124.80', '', '0.00', '96.00', '0.00', '124.80', '0.00', '91.00', '28.80', '26.88', '', '0', '', '0', '3', '4', '0', '0', '0', '1557646716', '1557646716');
INSERT INTO `pm_order` VALUES ('2074', '8971', '', '64980434', '52.00', '', '0.00', '46.00', '0.00', '52.00', '0.00', '48.30', '6.00', '5.60', '', '3', '/uploads/20190512/cec64419b9fb93953715eaeed83c9c53.jpg', '0', '4', '4', '0', '0', '0', '1557646806', '1557646806');
INSERT INTO `pm_order` VALUES ('2102', '8705', '', '25866941', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557662998', '1557662998');
INSERT INTO `pm_order` VALUES ('2076', '8726', '', '98007080', '46.40', '', '0.00', '33.80', '0.00', '46.40', '0.00', '34.40', '12.60', '11.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557647221', '1557647221');
INSERT INTO `pm_order` VALUES ('2077', '9005', '', '17289698', '96.00', '', '0.00', '84.00', '0.00', '96.00', '0.00', '84.00', '12.00', '11.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557647243', '1557647243');
INSERT INTO `pm_order` VALUES ('2078', '8971', '', '43897851', '51.40', '', '0.00', '43.00', '0.00', '51.40', '0.00', '48.30', '8.40', '7.84', '', '3', '/uploads/20190512/94acf955847e4138bae02392efba97df.jpg', '0', '4', '4', '0', '0', '0', '1557647257', '1557647257');
INSERT INTO `pm_order` VALUES ('2079', '9070', '', '76385871', '426.00', '', '0.00', '426.00', '0.00', '426.00', '0.00', '0.00', '0.00', '51.48', '', '0', '', '0', '3', '4', '0', '0', '0', '1557647362', '1557647362');
INSERT INTO `pm_order` VALUES ('2097', '9302', '', '86997690', '94.00', '', '0.00', '94.00', '0.00', '94.00', '0.00', '0.00', '0.00', '23.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557660354', '1557660354');
INSERT INTO `pm_order` VALUES ('2081', '9302', '', '10293669', '93.10', '', '0.00', '93.10', '0.00', '93.10', '0.00', '0.00', '0.00', '23.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557647918', '1557647918');
INSERT INTO `pm_order` VALUES ('2082', '8971', '', '86887140', '54.50', '', '0.00', '54.50', '0.00', '54.50', '0.00', '0.00', '0.00', '12.38', '', '0', '', '0', '3', '4', '0', '0', '0', '1557648055', '1557648055');
INSERT INTO `pm_order` VALUES ('2083', '8853', '', '89081691', '194.10', '', '0.90', '173.10', '0.00', '194.10', '0.00', '61.47', '21.00', '32.47', '', '0', '', '0', '3', '4', '0', '0', '0', '1557649153', '1557649153');
INSERT INTO `pm_order` VALUES ('2084', '9292', '', '67483330', '121.60', '', '0.00', '114.40', '0.00', '121.60', '0.00', '122.00', '7.20', '6.72', '', '0', '', '0', '3', '4', '0', '0', '0', '1557649386', '1557649386');
INSERT INTO `pm_order` VALUES ('2085', '9280', '', '83563461', '207.00', '', '0.00', '207.00', '0.00', '207.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557651178', '1557651178');
INSERT INTO `pm_order` VALUES ('2086', '8894', '', '98777315', '560.40', '', '0.00', '560.40', '0.00', '560.40', '0.00', '0.00', '0.00', '64.35', '', '0', '', '0', '3', '4', '0', '0', '0', '1557651339', '1557651339');
INSERT INTO `pm_order` VALUES ('2087', '9306', '', '37778946', '63.00', '', '0.00', '55.20', '0.00', '63.00', '0.00', '55.80', '7.80', '7.28', '', '0', '', '0', '3', '4', '0', '0', '0', '1557651663', '1557651663');
INSERT INTO `pm_order` VALUES ('2088', '9308', '', '93950377', '124.00', '', '0.00', '124.00', '0.00', '124.00', '0.00', '0.00', '0.00', '12.38', '', '0', '', '0', '3', '4', '0', '0', '0', '1557651833', '1557651833');
INSERT INTO `pm_order` VALUES ('2089', '9160', '', '64087408', '46.90', '', '0.00', '40.90', '0.00', '46.90', '0.00', '37.05', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557652685', '1557652685');
INSERT INTO `pm_order` VALUES ('2090', '9307', '', '58352581', '72.50', '', '0.00', '59.30', '0.00', '72.50', '0.00', '65.35', '13.20', '12.32', '', '0', '', '0', '3', '4', '0', '0', '0', '1557656435', '1557656435');
INSERT INTO `pm_order` VALUES ('2091', '9311', '', '46725521', '64.52', '', '0.00', '58.52', '0.00', '64.52', '0.00', '56.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557656506', '1557656506');
INSERT INTO `pm_order` VALUES ('2092', '8925', '', '24735238', '105.10', '', '0.00', '96.70', '0.00', '105.10', '0.00', '98.30', '8.40', '7.84', '', '0', '', '0', '3', '4', '0', '0', '0', '1557656814', '1557656814');
INSERT INTO `pm_order` VALUES ('2093', '9313', '', '60858278', '33.30', '', '0.00', '27.30', '0.00', '33.30', '0.00', '26.70', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557657312', '1557657312');
INSERT INTO `pm_order` VALUES ('2094', '8901', '', '38517377', '76.80', '', '0.00', '66.60', '0.00', '76.80', '0.00', '67.50', '10.20', '9.52', '', '0', '', '0', '3', '4', '0', '0', '0', '1557657381', '1557657381');
INSERT INTO `pm_order` VALUES ('2095', '9110', '', '50032521', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557658360', '1557658360');
INSERT INTO `pm_order` VALUES ('2096', '8791', '', '77563767', '23.50', '', '0.00', '16.90', '0.00', '23.50', '0.00', '17.20', '6.60', '6.16', '', '0', '', '0', '3', '4', '0', '0', '0', '1557659390', '1557659390');
INSERT INTO `pm_order` VALUES ('2098', '8739', '', '17964910', '96.80', '', '0.00', '83.60', '0.00', '96.80', '0.00', '84.40', '13.20', '12.32', '', '0', '', '0', '3', '4', '0', '0', '0', '1557660856', '1557660856');
INSERT INTO `pm_order` VALUES ('2100', '8677', '12456', '15584886', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557661140', '1557661140');
INSERT INTO `pm_order` VALUES ('2101', '9302', '', '43318256', '24.60', '', '0.00', '18.60', '0.00', '24.60', '0.00', '19.50', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557662607', '1557662607');
INSERT INTO `pm_order` VALUES ('2103', '9101', '', '46458533', '107.90', '', '0.90', '107.90', '0.00', '0.00', '107.90', '0.00', '0.00', '12.87', '', '0', '', '0', '2', '4', '0', '0', '0', '1557663009', '1557663009');
INSERT INTO `pm_order` VALUES ('2104', '8742', '', '80151055', '23.30', '', '0.00', '17.30', '0.00', '23.30', '0.00', '16.36', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557663212', '1557663212');
INSERT INTO `pm_order` VALUES ('2247', '8933', '', '53177487', '51.40', '', '0.00', '51.40', '0.00', '0.00', '51.40', '55.00', '0.00', '9.52', '', '0', '', '0', '2', '4', '0', '0', '0', '1557752228', '1557752228');
INSERT INTO `pm_order` VALUES ('2106', '9061', '', '14505505', '106.00', '', '0.00', '106.00', '0.00', '106.00', '0.00', '84.90', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557664336', '1557664336');
INSERT INTO `pm_order` VALUES ('2246', '8703', '', '81457059', '37.80', '', '0.00', '31.80', '0.00', '37.80', '0.00', '34.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557751662', '1557751662');
INSERT INTO `pm_order` VALUES ('2108', '8660', '', '68442565', '17.20', '', '0.00', '11.20', '0.00', '0.00', '17.20', '0.00', '6.00', '3.96', '', '0', '', '0', '2', '4', '0', '0', '0', '1557665262', '1557665262');
INSERT INTO `pm_order` VALUES ('2109', '8677', '12456', '50247267', '119.00', '', '0.00', '119.00', '0.00', '119.00', '0.00', '97.50', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557665415', '1557665415');
INSERT INTO `pm_order` VALUES ('2110', '8739', '', '65118809', '76.80', '', '0.00', '66.60', '0.00', '76.80', '0.00', '67.50', '10.20', '9.52', '', '0', '', '0', '3', '4', '0', '0', '0', '1557665832', '1557665832');
INSERT INTO `pm_order` VALUES ('2111', '8677', '12456', '13304718', '119.00', '', '0.00', '119.00', '0.00', '119.00', '0.00', '97.50', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557665960', '1557665960');
INSERT INTO `pm_order` VALUES ('2112', '8807', '', '86160287', '476.00', '', '0.00', '476.00', '0.00', '476.00', '0.00', '390.00', '0.00', '51.48', '', '0', '', '0', '3', '4', '0', '0', '0', '1557667085', '1557667085');
INSERT INTO `pm_order` VALUES ('2113', '8742', '', '38970686', '56.70', '', '0.00', '50.70', '0.00', '56.70', '0.00', '50.70', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557667366', '1557667366');
INSERT INTO `pm_order` VALUES ('2114', '8695', '', '10973288', '209.00', '', '0.00', '209.00', '0.00', '0.00', '209.00', '0.00', '0.00', '25.74', '', '0', '', '0', '2', '4', '0', '0', '0', '1557667878', '1557667878');
INSERT INTO `pm_order` VALUES ('2115', '9013', '13960844907', '61010110', '57.00', '', '0.00', '57.00', '0.00', '0.00', '57.00', '0.00', '0.00', '13.86', '', '0', '', '0', '2', '4', '0', '0', '0', '1557668690', '1557668690');
INSERT INTO `pm_order` VALUES ('2117', '8780', '', '74723416', '85.40', '', '0.00', '72.80', '0.00', '85.40', '0.00', '76.00', '12.60', '11.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557671229', '1557671229');
INSERT INTO `pm_order` VALUES ('2118', '9150', '', '85618205', '56.50', '', '0.00', '50.50', '0.00', '56.50', '0.00', '53.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557671293', '1557671293');
INSERT INTO `pm_order` VALUES ('2119', '9013', '13960844907', '18657157', '57.00', '', '0.00', '57.00', '0.00', '0.00', '57.00', '0.00', '0.00', '13.86', '', '0', '', '0', '2', '4', '0', '0', '0', '1557671689', '1557671689');
INSERT INTO `pm_order` VALUES ('2120', '8928', '13927740088', '21177979', '217.53', '', '6.25', '190.27', '0.00', '0.00', '217.53', '184.60', '27.26', '26.32', '', '0', '', '0', '2', '4', '0', '0', '0', '1557672020', '1557672020');
INSERT INTO `pm_order` VALUES ('2121', '9189', '0426994836', '69675166', '635.20', '', '0.00', '558.06', '0.00', '0.00', '635.20', '589.58', '77.14', '85.01', '', '0', '', '0', '2', '4', '0', '0', '0', '1557672391', '1557672391');
INSERT INTO `pm_order` VALUES ('2122', '9189', '0426994836', '67154301', '166.73', '', '0.00', '131.35', '0.00', '0.00', '166.73', '138.73', '35.38', '34.16', '', '0', '', '0', '2', '4', '0', '0', '0', '1557672882', '1557672882');
INSERT INTO `pm_order` VALUES ('2123', '8928', '13927740088', '46472075', '34.40', '', '0.00', '22.40', '0.00', '0.00', '34.40', '0.00', '12.00', '7.92', '', '0', '', '0', '2', '4', '0', '0', '0', '1557672971', '1557672971');
INSERT INTO `pm_order` VALUES ('2124', '8928', '13927740088', '55310326', '46.50', '', '3.30', '40.50', '0.00', '0.00', '46.50', '0.00', '6.00', '4.29', '', '0', '', '0', '2', '4', '0', '0', '0', '1557673890', '1557673890');
INSERT INTO `pm_order` VALUES ('2125', '8769', '', '30535925', '121.20', '', '0.00', '121.20', '0.00', '121.20', '0.00', '101.70', '0.00', '15.12', '', '0', '', '0', '3', '4', '0', '0', '0', '1557674170', '1557674170');
INSERT INTO `pm_order` VALUES ('2126', '8692', '', '85062326', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557702576', '1557702576');
INSERT INTO `pm_order` VALUES ('2127', '8691', '', '27836057', '31.20', '', '0.00', '25.20', '0.00', '31.20', '0.00', '26.10', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557704159', '1557704159');
INSERT INTO `pm_order` VALUES ('2128', '9282', '', '72237760', '118.60', '', '0.00', '112.00', '0.00', '118.60', '0.00', '112.00', '6.60', '6.16', '', '0', '', '0', '3', '4', '0', '0', '0', '1557705459', '1557705459');
INSERT INTO `pm_order` VALUES ('2129', '9282', '', '89330092', '178.00', '', '0.00', '178.00', '0.00', '178.00', '0.00', '141.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557706709', '1557706709');
INSERT INTO `pm_order` VALUES ('2131', '8726', '', '78223310', '39.10', '', '0.00', '33.10', '0.00', '39.10', '0.00', '33.50', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557707072', '1557707072');
INSERT INTO `pm_order` VALUES ('2132', '8917', '', '16298225', '56.10', '', '0.00', '50.10', '0.00', '56.10', '0.00', '51.68', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557707727', '1557707727');
INSERT INTO `pm_order` VALUES ('2133', '8756', '', '16337125', '30.90', '', '0.00', '23.70', '0.00', '30.90', '0.00', '30.50', '7.20', '6.72', '', '0', '', '0', '3', '4', '0', '0', '0', '1557707898', '1557707898');
INSERT INTO `pm_order` VALUES ('2134', '9308', '', '22754040', '32.60', '', '0.00', '26.60', '0.00', '32.60', '0.00', '27.18', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557708155', '1557708155');
INSERT INTO `pm_order` VALUES ('2135', '9000', '0478889876', '45156338', '92.00', '', '0.00', '92.00', '0.00', '0.00', '92.00', '0.00', '0.00', '23.76', '', '0', '', '0', '2', '4', '0', '0', '0', '1557708258', '1557708258');
INSERT INTO `pm_order` VALUES ('2136', '9153', '', '56707604', '44.00', '', '0.00', '44.00', '0.00', '44.00', '0.00', '0.00', '0.00', '11.88', '', '0', '', '0', '3', '4', '0', '0', '0', '1557709174', '1557709174');
INSERT INTO `pm_order` VALUES ('2137', '8684', '', '93706700', '104.50', '', '0.00', '104.50', '0.00', '104.50', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557709360', '1557709360');
INSERT INTO `pm_order` VALUES ('2140', '8684', '', '22641596', '209.00', '', '0.00', '209.00', '0.00', '209.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557710068', '1557710068');
INSERT INTO `pm_order` VALUES ('2139', '8739', '', '45854350', '30.30', '', '0.00', '30.30', '0.00', '30.30', '0.00', '23.00', '0.00', '7.84', '', '0', '', '0', '3', '4', '0', '0', '0', '1557709940', '1557709940');
INSERT INTO `pm_order` VALUES ('2141', '8917', '', '33913033', '61.80', '', '0.00', '55.80', '0.00', '61.80', '0.00', '49.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557710203', '1557710203');
INSERT INTO `pm_order` VALUES ('2142', '9090', '', '13087350', '106.00', '', '0.00', '106.00', '0.00', '106.00', '0.00', '84.90', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557710723', '1557710723');
INSERT INTO `pm_order` VALUES ('2143', '8739', '', '48710948', '91.50', '', '0.00', '82.50', '0.00', '91.50', '0.00', '107.50', '9.00', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557710884', '1557710884');
INSERT INTO `pm_order` VALUES ('2144', '8730', '', '66115092', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '13.86', '', '0', '', '0', '3', '4', '0', '0', '0', '1557711706', '1557711706');
INSERT INTO `pm_order` VALUES ('2145', '8688', '0452066651', '55927332', '141.36', '', '0.00', '126.96', '0.00', '141.36', '0.00', '85.05', '14.40', '12.13', '', '0', '', '0', '3', '4', '0', '0', '0', '1557712060', '1557712060');
INSERT INTO `pm_order` VALUES ('2146', '8690', '17723080131', '59226477', '26.00', '', '0.00', '26.00', '0.00', '26.00', '0.00', '0.00', '0.00', '5.61', '', '0', '', '0', '3', '4', '0', '0', '0', '1557712340', '1557712340');
INSERT INTO `pm_order` VALUES ('2147', '8825', '', '56469556', '66.25', '', '0.00', '57.85', '0.00', '66.25', '0.00', '41.00', '8.40', '7.84', '', '0', '', '0', '3', '4', '0', '0', '0', '1557713156', '1557713156');
INSERT INTO `pm_order` VALUES ('2148', '8825', '', '73277469', '38.00', '', '0.00', '32.00', '0.00', '38.00', '0.00', '33.18', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557713397', '1557713397');
INSERT INTO `pm_order` VALUES ('2149', '8926', '', '13696483', '47.00', '', '0.00', '47.00', '0.00', '47.00', '0.00', '0.00', '0.00', '11.88', '', '0', '', '0', '3', '4', '0', '0', '0', '1557713541', '1557713541');
INSERT INTO `pm_order` VALUES ('2150', '8918', '', '21898388', '161.80', '', '1.80', '161.80', '0.00', '0.00', '161.80', '130.50', '0.00', '25.74', '', '0', '', '0', '2', '4', '0', '0', '0', '1557713673', '1557713673');
INSERT INTO `pm_order` VALUES ('2151', '8809', '', '25115585', '209.00', '', '0.00', '209.00', '0.00', '209.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557713851', '1557713851');
INSERT INTO `pm_order` VALUES ('2152', '8687', '', '57725544', '149.10', '', '0.00', '137.10', '0.00', '149.10', '0.00', '131.00', '12.00', '11.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557714053', '1557714053');
INSERT INTO `pm_order` VALUES ('2153', '9192', '', '57744690', '209.00', '', '0.00', '209.00', '0.00', '209.00', '0.00', '0.00', '0.00', '25.74', '', '3', '/uploads/20190513/d0cf2059dc4b57d6b44241638ccccdac.jpg', '0', '4', '4', '0', '0', '0', '1557714931', '1557714931');
INSERT INTO `pm_order` VALUES ('2154', '8658', '123456', '72648960', '104.84', '', '0.00', '97.30', '0.00', '0.00', '104.84', '118.00', '7.54', '7.28', '', '0', '', '0', '2', '4', '0', '0', '0', '1557715079', '1557715079');
INSERT INTO `pm_order` VALUES ('2155', '9192', '', '88486996', '28.40', '', '0.00', '21.20', '0.00', '28.40', '0.00', '21.00', '7.20', '6.72', '', '3', '/uploads/20190513/d09e87b6e74233cb7f35a991ad5ad8ba.jpg', '0', '4', '4', '0', '0', '0', '1557715207', '1557715207');
INSERT INTO `pm_order` VALUES ('2156', '8825', '', '49357403', '252.00', '', '0.00', '252.00', '0.00', '252.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557715438', '1557715438');
INSERT INTO `pm_order` VALUES ('2157', '8666', '', '45556414', '74.50', '', '0.00', '64.90', '0.00', '74.50', '0.00', '64.03', '9.60', '8.96', '', '0', '', '0', '3', '4', '0', '0', '0', '1557715861', '1557715861');
INSERT INTO `pm_order` VALUES ('2158', '8677', '12456', '98476733', '124.00', '', '0.00', '124.00', '0.00', '124.00', '0.00', '97.50', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557716010', '1557716010');
INSERT INTO `pm_order` VALUES ('2159', '8816', '', '78191945', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557716060', '1557716060');
INSERT INTO `pm_order` VALUES ('2160', '9189', '0426994836', '10249620', '59.70', '', '0.00', '53.70', '0.00', '0.00', '59.70', '49.00', '6.00', '4.29', '', '0', '', '0', '2', '4', '0', '0', '0', '1557716667', '1557716667');
INSERT INTO `pm_order` VALUES ('2161', '8997', '', '24238247', '97.10', '', '0.00', '90.50', '0.00', '97.10', '0.00', '83.30', '6.60', '9.24', '', '0', '', '0', '3', '4', '0', '0', '0', '1557716999', '1557716999');
INSERT INTO `pm_order` VALUES ('2162', '8955', '', '72827499', '33.70', '', '0.00', '25.30', '0.00', '33.70', '0.00', '26.30', '8.40', '7.84', '', '0', '', '0', '3', '4', '0', '0', '0', '1557717049', '1557717049');
INSERT INTO `pm_order` VALUES ('2163', '8984', '', '98898997', '44.10', '', '0.30', '38.10', '0.00', '44.10', '0.00', '0.00', '6.00', '4.29', '', '0', '', '0', '3', '4', '0', '0', '0', '1557717176', '1557717176');
INSERT INTO `pm_order` VALUES ('2164', '9309', '', '85428775', '115.80', '', '0.00', '109.80', '0.00', '115.80', '0.00', '109.90', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557717272', '1557717272');
INSERT INTO `pm_order` VALUES ('2165', '8766', '', '65248031', '25.30', '', '0.00', '14.50', '0.00', '25.30', '0.00', '13.60', '10.80', '10.08', '', '0', '', '0', '3', '4', '0', '0', '0', '1557717488', '1557717488');
INSERT INTO `pm_order` VALUES ('2166', '9309', '', '64782501', '78.90', '', '0.90', '78.90', '0.00', '78.90', '0.00', '63.75', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557717506', '1557717506');
INSERT INTO `pm_order` VALUES ('2167', '8918', '', '64372252', '125.20', '', '0.00', '119.40', '0.00', '0.00', '125.20', '119.40', '5.80', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557718703', '1557718703');
INSERT INTO `pm_order` VALUES ('2168', '8695', '', '66228831', '27.08', '', '0.00', '20.70', '0.00', '0.00', '27.08', '20.68', '6.38', '6.16', '', '0', '', '0', '2', '4', '0', '0', '0', '1557718958', '1557718958');
INSERT INTO `pm_order` VALUES ('2169', '8687', '', '63953263', '49.20', '', '0.00', '43.20', '0.00', '49.20', '0.00', '60.10', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557719256', '1557719256');
INSERT INTO `pm_order` VALUES ('2170', '8660', '', '38076963', '234.00', '', '0.00', '234.00', '0.00', '0.00', '234.00', '191.25', '0.00', '38.61', '', '0', '', '0', '2', '4', '0', '0', '0', '1557719407', '1557719407');
INSERT INTO `pm_order` VALUES ('2172', '8867', '', '16797762', '65.00', '', '0.00', '53.00', '0.00', '65.00', '0.00', '53.00', '12.00', '8.58', '', '0', '', '0', '3', '4', '0', '0', '0', '1557719844', '1557719844');
INSERT INTO `pm_order` VALUES ('2173', '8716', '', '18970291', '230.31', '', '0.00', '217.55', '0.00', '230.31', '0.00', '161.00', '12.76', '46.14', '', '0', '', '0', '3', '4', '0', '0', '0', '1557719877', '1557719877');
INSERT INTO `pm_order` VALUES ('2174', '8707', '', '15209422', '125.40', '', '0.00', '119.40', '0.00', '125.40', '0.00', '119.40', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557720022', '1557720022');
INSERT INTO `pm_order` VALUES ('2175', '8707', '', '79735795', '125.40', '', '0.00', '119.40', '0.00', '125.40', '0.00', '119.40', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557720315', '1557720315');
INSERT INTO `pm_order` VALUES ('2176', '8716', '', '44297622', '572.92', '', '0.00', '521.30', '0.00', '572.92', '0.00', '535.20', '51.62', '49.84', '', '0', '', '0', '3', '4', '0', '0', '0', '1557720347', '1557720347');
INSERT INTO `pm_order` VALUES ('2177', '8829', '', '62074727', '61.44', '', '0.00', '50.04', '0.00', '61.44', '0.00', '48.50', '11.40', '10.64', '', '0', '', '0', '3', '4', '0', '0', '0', '1557720586', '1557720586');
INSERT INTO `pm_order` VALUES ('2178', '8706', '', '58818937', '54.80', '', '0.00', '48.80', '0.00', '54.80', '0.00', '52.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557721118', '1557721118');
INSERT INTO `pm_order` VALUES ('2179', '8678', '', '81622517', '124.00', '', '0.00', '124.00', '0.00', '124.00', '0.00', '97.50', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557721138', '1557721138');
INSERT INTO `pm_order` VALUES ('2181', '8921', '', '38110221', '57.80', '', '0.00', '51.80', '0.00', '57.80', '0.00', '53.30', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557721828', '1557721828');
INSERT INTO `pm_order` VALUES ('2182', '9322', '', '10462443', '47.20', '', '0.00', '38.50', '0.00', '0.00', '47.20', '38.00', '8.70', '8.40', '', '0', '', '0', '2', '4', '0', '0', '0', '1557721955', '1557721955');
INSERT INTO `pm_order` VALUES ('2183', '9328', '', '49294940', '67.76', '', '0.00', '53.36', '0.00', '67.76', '0.00', '56.00', '14.40', '13.44', '', '0', '', '0', '3', '4', '0', '0', '0', '1557722429', '1557722429');
INSERT INTO `pm_order` VALUES ('2184', '8724', '', '44716937', '156.90', '', '0.00', '137.70', '0.00', '156.90', '0.00', '132.40', '19.20', '17.92', '', '0', '', '0', '3', '3', '0', '0', '0', '1557722565', '1557722565');
INSERT INTO `pm_order` VALUES ('2185', '8921', '', '19960134', '88.00', '', '0.00', '88.00', '0.00', '88.00', '0.00', '0.00', '0.00', '23.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557722907', '1557722907');
INSERT INTO `pm_order` VALUES ('2186', '8665', '', '73216040', '655.50', '', '0.00', '655.50', '0.00', '655.50', '0.00', '0.00', '0.00', '77.22', '', '0', '', '0', '3', '4', '0', '0', '0', '1557723041', '1557723041');
INSERT INTO `pm_order` VALUES ('2187', '8921', '', '18427043', '41.70', '', '0.00', '29.10', '0.00', '41.70', '0.00', '34.00', '12.60', '11.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557723220', '1557723220');
INSERT INTO `pm_order` VALUES ('2188', '9321', '', '78806198', '39.50', '', '0.00', '33.50', '0.00', '39.50', '0.00', '28.00', '6.00', '11.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557723636', '1557723636');
INSERT INTO `pm_order` VALUES ('2192', '8921', '', '23902427', '45.30', '', '0.00', '36.90', '0.00', '45.30', '0.00', '57.20', '8.40', '7.84', '', '0', '', '0', '3', '4', '0', '0', '0', '1557724920', '1557724920');
INSERT INTO `pm_order` VALUES ('2193', '8921', '', '89585760', '52.00', '', '0.00', '46.00', '0.00', '52.00', '0.00', '46.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557725530', '1557725530');
INSERT INTO `pm_order` VALUES ('2312', '8677', '12456', '52760109', '214.00', '', '0.00', '214.00', '0.00', '214.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557813088', '1557813088');
INSERT INTO `pm_order` VALUES ('2195', '8854', '', '32321670', '168.10', '', '0.00', '147.70', '0.00', '168.10', '0.00', '152.28', '20.40', '19.04', '', '0', '', '0', '3', '4', '0', '0', '0', '1557726686', '1557726686');
INSERT INTO `pm_order` VALUES ('2196', '8921', '', '90063185', '125.20', '', '0.00', '112.20', '0.00', '125.20', '0.00', '0.00', '13.00', '12.54', '', '0', '', '0', '3', '4', '0', '0', '0', '1557727176', '1557727176');
INSERT INTO `pm_order` VALUES ('2197', '9219', '', '95076154', '29.40', '', '0.00', '20.40', '0.00', '29.40', '0.00', '60.36', '9.00', '8.40', '', '0', '', '0', '3', '3', '0', '0', '0', '1557727394', '1557727394');
INSERT INTO `pm_order` VALUES ('2198', '8732', '13429413356', '25982324', '118.50', '', '0.00', '106.50', '0.00', '118.50', '0.00', '108.68', '12.00', '11.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557729395', '1557729395');
INSERT INTO `pm_order` VALUES ('2199', '9064', '', '91601004', '126.40', '', '0.00', '113.40', '0.00', '126.40', '0.00', '97.50', '13.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557729551', '1557729551');
INSERT INTO `pm_order` VALUES ('2200', '8732', '13429413356', '47496398', '55.00', '', '0.00', '55.00', '0.00', '55.00', '0.00', '0.00', '0.00', '12.38', '', '0', '', '0', '3', '4', '0', '0', '0', '1557729585', '1557729585');
INSERT INTO `pm_order` VALUES ('2201', '9064', '', '85843073', '126.40', '', '0.00', '113.40', '0.00', '126.40', '0.00', '97.50', '13.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557729732', '1557729732');
INSERT INTO `pm_order` VALUES ('2326', '8703', '', '26241294', '60.46', '', '0.00', '54.46', '0.00', '60.46', '0.00', '54.90', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557815222', '1557815222');
INSERT INTO `pm_order` VALUES ('2203', '8921', '', '91190849', '26.00', '', '0.00', '20.00', '0.00', '26.00', '0.00', '40.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557731194', '1557731194');
INSERT INTO `pm_order` VALUES ('2204', '9341', '15959517311', '71978191', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '63.75', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557731993', '1557731993');
INSERT INTO `pm_order` VALUES ('2205', '8769', '', '33342884', '45.00', '', '0.00', '39.00', '0.00', '45.00', '0.00', '32.40', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557732653', '1557732653');
INSERT INTO `pm_order` VALUES ('2206', '8921', '', '32454799', '26.00', '', '0.00', '20.00', '0.00', '26.00', '0.00', '40.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557732803', '1557732803');
INSERT INTO `pm_order` VALUES ('2207', '8892', '', '68193778', '71.10', '', '0.00', '64.50', '0.00', '71.10', '0.00', '65.00', '6.60', '6.16', '', '0', '', '0', '3', '4', '0', '0', '0', '1557733739', '1557733739');
INSERT INTO `pm_order` VALUES ('2208', '8890', '', '59502639', '221.80', '', '1.80', '221.80', '0.00', '221.80', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557733753', '1557733753');
INSERT INTO `pm_order` VALUES ('2209', '8825', '', '99818612', '20.00', '', '0.00', '14.00', '0.00', '20.00', '0.00', '12.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557733786', '1557733786');
INSERT INTO `pm_order` VALUES ('2210', '8970', '', '67507678', '64.30', '', '0.00', '58.50', '0.00', '0.00', '64.30', '60.00', '5.80', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557733838', '1557733838');
INSERT INTO `pm_order` VALUES ('2211', '9057', '', '58221448', '35.85', '', '0.00', '35.85', '0.00', '35.85', '0.00', '22.50', '0.00', '10.92', '', '0', '', '0', '3', '4', '0', '0', '0', '1557735312', '1557735312');
INSERT INTO `pm_order` VALUES ('2212', '9041', '', '38708952', '37.94', '', '0.00', '31.94', '0.00', '37.94', '0.00', '34.80', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557735623', '1557735623');
INSERT INTO `pm_order` VALUES ('2213', '9057', '', '19983715', '460.00', '', '0.00', '460.00', '0.00', '460.00', '0.00', '0.00', '0.00', '0.00', '', '0', '', '0', '3', '2', '0', '0', '0', '1557735656', '1557735656');
INSERT INTO `pm_order` VALUES ('2214', '8971', '', '10257181', '72.40', '', '0.00', '66.40', '0.00', '72.40', '0.00', '63.30', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557736606', '1557736606');
INSERT INTO `pm_order` VALUES ('2215', '8971', '', '68248681', '64.00', '', '0.00', '58.00', '0.00', '64.00', '0.00', '55.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557736831', '1557736831');
INSERT INTO `pm_order` VALUES ('2216', '8969', '', '99962402', '28.80', '', '0.00', '23.00', '0.00', '0.00', '28.80', '22.00', '5.80', '5.60', '', '0', '', '0', '2', '4', '0', '0', '0', '1557737179', '1557737179');
INSERT INTO `pm_order` VALUES ('2355', '8980', '', '82710111', '63.28', '', '0.00', '56.90', '0.00', '0.00', '63.28', '58.50', '6.38', '6.16', '', '0', '', '0', '2', '3', '0', '0', '0', '1557825334', '1557825334');
INSERT INTO `pm_order` VALUES ('2218', '9348', '', '64241106', '248.00', '', '0.00', '248.00', '0.00', '248.00', '0.00', '195.00', '0.00', '25.74', '', '0', '', '0', '3', '99', '0', '1', '0', '1557737525', '1557737525');
INSERT INTO `pm_order` VALUES ('2219', '8677', '12456', '93653180', '116.56', '', '0.00', '109.60', '0.00', '116.56', '0.00', '117.00', '6.96', '6.72', '', '0', '', '0', '3', '4', '0', '0', '0', '1557738065', '1557738065');
INSERT INTO `pm_order` VALUES ('2220', '8677', '12456', '51647491', '85.88', '', '0.00', '85.88', '0.00', '85.88', '0.00', '75.00', '0.00', '15.79', '', '0', '', '0', '3', '4', '0', '0', '0', '1557738267', '1557738267');
INSERT INTO `pm_order` VALUES ('2221', '8687', '', '46398751', '75.46', '', '0.00', '68.26', '0.00', '75.46', '0.00', '70.00', '7.20', '6.72', '', '0', '', '0', '3', '4', '0', '0', '0', '1557738572', '1557738572');
INSERT INTO `pm_order` VALUES ('2222', '8921', '', '79510006', '16.00', '', '0.00', '10.00', '0.00', '16.00', '0.00', '8.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557738667', '1557738667');
INSERT INTO `pm_order` VALUES ('2223', '9348', '', '60966490', '212.00', '', '0.00', '212.00', '0.00', '212.00', '0.00', '169.80', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557738883', '1557738883');
INSERT INTO `pm_order` VALUES ('2224', '8921', '', '16034046', '53.70', '', '0.00', '47.70', '0.00', '53.70', '0.00', '45.90', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557738928', '1557738928');
INSERT INTO `pm_order` VALUES ('2225', '8692', '', '92926085', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557740141', '1557740141');
INSERT INTO `pm_order` VALUES ('2226', '8921', '', '53520772', '26.00', '', '0.00', '20.00', '0.00', '26.00', '0.00', '40.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557740578', '1557740578');
INSERT INTO `pm_order` VALUES ('2227', '9006', '0433756767', '26609095', '171.00', '', '0.00', '171.00', '0.00', '171.00', '0.00', '0.00', '0.00', '41.58', '', '0', '', '0', '3', '4', '0', '0', '0', '1557740788', '1557740788');
INSERT INTO `pm_order` VALUES ('2228', '9177', '', '96011102', '67.00', '', '0.00', '53.80', '0.00', '67.00', '0.00', '52.90', '13.20', '12.32', '', '0', '', '0', '3', '4', '0', '0', '0', '1557741651', '1557741651');
INSERT INTO `pm_order` VALUES ('2229', '8752', '', '95239174', '114.50', '', '0.00', '108.50', '0.00', '114.50', '0.00', '103.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557741759', '1557741759');
INSERT INTO `pm_order` VALUES ('2230', '8677', '12456', '88046125', '80.00', '', '0.00', '80.00', '0.00', '80.00', '0.00', '65.25', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557741961', '1557741961');
INSERT INTO `pm_order` VALUES ('2231', '8752', '', '66044007', '30.30', '', '0.00', '30.30', '0.00', '30.30', '0.00', '23.00', '0.00', '7.84', '', '0', '', '0', '3', '4', '0', '0', '0', '1557742132', '1557742132');
INSERT INTO `pm_order` VALUES ('2232', '8825', '', '62851433', '95.50', '', '0.00', '95.50', '0.00', '95.50', '0.00', '90.00', '0.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557742468', '1557742468');
INSERT INTO `pm_order` VALUES ('2233', '9068', '', '77394436', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '13.86', '', '0', '', '0', '3', '4', '0', '0', '0', '1557742666', '1557742666');
INSERT INTO `pm_order` VALUES ('2234', '8885', '', '66188321', '19.00', '', '0.00', '13.00', '0.00', '19.00', '0.00', '10.80', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557744021', '1557744021');
INSERT INTO `pm_order` VALUES ('2235', '8975', '', '84502077', '177.90', '', '0.00', '165.30', '0.00', '177.90', '0.00', '165.90', '12.60', '11.76', '', '0', '', '0', '3', '3', '0', '0', '0', '1557744338', '1557744338');
INSERT INTO `pm_order` VALUES ('2236', '8925', '', '37064376', '102.00', '', '0.00', '84.00', '0.00', '102.00', '0.00', '79.20', '18.00', '16.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557744776', '1557744776');
INSERT INTO `pm_order` VALUES ('2237', '9148', '', '10463440', '207.60', '', '0.00', '189.00', '0.00', '207.60', '0.00', '193.50', '18.60', '17.36', '', '0', '', '0', '3', '4', '0', '0', '0', '1557744899', '1557744899');
INSERT INTO `pm_order` VALUES ('2238', '8925', '', '87871080', '128.00', '', '0.00', '128.00', '0.00', '128.00', '0.00', '108.00', '0.00', '17.47', '', '0', '', '0', '3', '4', '0', '0', '0', '1557745019', '1557745019');
INSERT INTO `pm_order` VALUES ('2239', '9068', '', '89649289', '212.00', '', '0.00', '212.00', '0.00', '212.00', '0.00', '169.80', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557745887', '1557745887');
INSERT INTO `pm_order` VALUES ('2240', '8703', '', '20295925', '108.30', '', '0.00', '100.50', '0.00', '108.30', '0.00', '100.50', '7.80', '7.28', '', '0', '', '0', '3', '4', '0', '0', '0', '1557746539', '1557746539');
INSERT INTO `pm_order` VALUES ('2241', '9142', '', '33397734', '199.50', '', '0.00', '199.50', '0.00', '199.50', '0.00', '153.00', '0.00', '5.88', '', '0', '', '0', '3', '4', '0', '0', '0', '1557746573', '1557746573');
INSERT INTO `pm_order` VALUES ('2242', '8829', '', '46772683', '22.90', '', '0.00', '16.90', '0.00', '22.90', '0.00', '17.90', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557748569', '1557748569');
INSERT INTO `pm_order` VALUES ('2243', '8910', '', '54422424', '60.58', '', '0.00', '54.20', '0.00', '0.00', '60.58', '54.80', '6.38', '6.16', '', '0', '', '0', '2', '3', '0', '0', '0', '1557748969', '1557748969');
INSERT INTO `pm_order` VALUES ('2244', '9127', '', '19570347', '72.50', '', '0.00', '59.90', '0.00', '72.50', '0.00', '62.40', '12.60', '11.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557750307', '1557750307');
INSERT INTO `pm_order` VALUES ('2245', '8694', '', '32377416', '76.50', '', '0.00', '58.50', '0.00', '76.50', '0.00', '52.50', '18.00', '16.80', '', '0', '', '0', '3', '4', '0', '0', '0', '1557750436', '1557750436');
INSERT INTO `pm_order` VALUES ('2248', '8733', '', '49283530', '57.00', '', '0.00', '57.00', '0.00', '0.00', '57.00', '0.00', '0.00', '13.86', '', '0', '', '0', '2', '4', '0', '0', '0', '1557753051', '1557753051');
INSERT INTO `pm_order` VALUES ('2249', '9013', '13960844907', '50868516', '43.50', '', '0.30', '37.50', '0.00', '0.00', '43.50', '32.50', '6.00', '4.29', '', '0', '', '0', '2', '4', '0', '0', '0', '1557753250', '1557753250');
INSERT INTO `pm_order` VALUES ('2250', '8733', '', '11382368', '37.06', '', '0.00', '27.20', '0.00', '0.00', '37.06', '25.36', '9.86', '9.52', '', '0', '', '0', '2', '4', '0', '0', '0', '1557753426', '1557753426');
INSERT INTO `pm_order` VALUES ('2251', '8735', '', '39088505', '74.10', '', '0.00', '57.90', '0.00', '74.10', '0.00', '88.70', '16.20', '15.12', '', '0', '', '0', '3', '4', '0', '0', '0', '1557754092', '1557754092');
INSERT INTO `pm_order` VALUES ('2252', '8933', '', '20980628', '46.00', '', '0.00', '46.00', '0.00', '0.00', '46.00', '0.00', '0.00', '11.88', '', '0', '', '0', '2', '4', '0', '0', '0', '1557754134', '1557754134');
INSERT INTO `pm_order` VALUES ('2253', '8778', '', '26419335', '57.60', '', '0.00', '51.60', '0.00', '57.60', '0.00', '52.30', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557756250', '1557756250');
INSERT INTO `pm_order` VALUES ('2254', '9029', '', '88743094', '92.00', '', '0.00', '92.00', '0.00', '0.00', '92.00', '0.00', '0.00', '23.76', '', '0', '', '0', '2', '4', '0', '0', '0', '1557756529', '1557756529');
INSERT INTO `pm_order` VALUES ('2255', '9029', '', '68227733', '107.00', '', '0.00', '107.00', '0.00', '0.00', '107.00', '0.00', '0.00', '12.87', '', '0', '', '0', '2', '4', '0', '0', '0', '1557756757', '1557756757');
INSERT INTO `pm_order` VALUES ('2256', '9352', '', '55171848', '66.56', '', '0.00', '56.96', '0.00', '66.56', '0.00', '47.00', '9.60', '8.96', '', '0', '', '0', '3', '4', '0', '0', '0', '1557758762', '1557758762');
INSERT INTO `pm_order` VALUES ('2392', '9183', '', '36906748', '78.00', '', '0.00', '78.00', '0.00', '0.00', '78.00', '63.75', '0.00', '12.87', '', '0', '', '0', '2', '4', '0', '0', '0', '1557846266', '1557846266');
INSERT INTO `pm_order` VALUES ('2258', '9001', '0449596969', '69538534', '90.53', '', '0.00', '78.53', '0.00', '90.53', '0.00', '83.30', '12.00', '11.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557760714', '1557760714');
INSERT INTO `pm_order` VALUES ('2396', '9090', '', '45712645', '126.00', '', '0.00', '126.00', '0.00', '126.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557851090', '1557851090');
INSERT INTO `pm_order` VALUES ('2260', '8666', '', '13811797', '242.00', '', '1.80', '229.00', '0.00', '242.00', '0.00', '200.00', '13.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557788582', '1557788582');
INSERT INTO `pm_order` VALUES ('2261', '8735', '', '50650439', '57.20', '', '0.00', '48.20', '0.00', '57.20', '0.00', '86.20', '9.00', '8.40', '', '0', '', '0', '3', '4', '0', '0', '0', '1557789198', '1557789198');
INSERT INTO `pm_order` VALUES ('2262', '8898', '', '74547980', '144.00', '', '0.00', '144.00', '0.00', '0.00', '144.00', '0.00', '0.00', '25.74', '', '0', '', '0', '2', '4', '0', '0', '0', '1557789389', '1557789389');
INSERT INTO `pm_order` VALUES ('2264', '9353', '', '82181128', '152.10', '', '0.00', '131.70', '0.00', '152.10', '0.00', '131.40', '20.40', '19.04', '', '0', '', '0', '3', '4', '0', '0', '0', '1557790258', '1557790258');
INSERT INTO `pm_order` VALUES ('2265', '8814', '', '99337472', '84.00', '', '0.00', '78.00', '0.00', '84.00', '0.00', '80.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557790982', '1557790982');
INSERT INTO `pm_order` VALUES ('2266', '9312', '', '65802070', '95.38', '', '0.00', '89.00', '0.00', '0.00', '95.38', '87.50', '6.38', '6.16', '', '0', '', '0', '2', '4', '0', '0', '0', '1557791480', '1557791480');
INSERT INTO `pm_order` VALUES ('2267', '8806', '', '83876408', '49.80', '', '0.00', '42.60', '0.00', '49.80', '0.00', '43.98', '7.20', '6.72', '', '0', '', '0', '3', '4', '0', '0', '0', '1557791600', '1557791600');
INSERT INTO `pm_order` VALUES ('2268', '8731', '', '66155910', '44.10', '', '0.00', '36.30', '0.00', '44.10', '0.00', '37.24', '7.80', '7.28', '', '0', '', '0', '3', '4', '0', '0', '0', '1557793521', '1557793521');
INSERT INTO `pm_order` VALUES ('2269', '9325', '', '47414962', '110.00', '', '0.00', '110.00', '0.00', '110.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '99', '0', '1', '0', '1557794538', '1557794538');
INSERT INTO `pm_order` VALUES ('2270', '8979', '', '56670114', '177.30', '', '0.00', '157.30', '0.00', '177.30', '0.00', '151.50', '20.00', '14.00', '', '0', '', '0', '3', '4', '0', '0', '0', '1557794936', '1557794936');
INSERT INTO `pm_order` VALUES ('2271', '9126', '', '95393490', '63.50', '', '0.00', '56.90', '0.00', '63.50', '0.00', '57.70', '6.60', '6.16', '', '0', '', '0', '3', '4', '0', '0', '0', '1557796978', '1557796978');
INSERT INTO `pm_order` VALUES ('2272', '8660', '', '57560187', '214.00', '', '0.00', '214.00', '0.00', '0.00', '214.00', '0.00', '0.00', '25.74', '', '0', '', '0', '2', '4', '0', '0', '0', '1557797825', '1557797825');
INSERT INTO `pm_order` VALUES ('2273', '8673', '', '93655913', '88.50', '', '0.00', '76.50', '0.00', '88.50', '0.00', '75.00', '12.00', '11.20', '', '0', '', '0', '3', '4', '0', '0', '0', '1557797924', '1557797924');
INSERT INTO `pm_order` VALUES ('2274', '8705', '', '23403170', '84.70', '', '0.00', '76.90', '0.00', '84.70', '0.00', '67.05', '7.80', '7.28', '', '0', '', '0', '3', '4', '0', '0', '0', '1557798135', '1557798135');
INSERT INTO `pm_order` VALUES ('2275', '9243', '', '25284493', '74.18', '', '0.00', '62.00', '0.00', '0.00', '74.18', '15.80', '12.18', '11.76', '', '0', '', '0', '2', '4', '0', '0', '0', '1557798191', '1557798191');
INSERT INTO `pm_order` VALUES ('2276', '9332', '', '35437897', '125.40', '', '0.00', '119.40', '0.00', '125.40', '0.00', '119.40', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557798303', '1557798303');
INSERT INTO `pm_order` VALUES ('2277', '8692', '', '22944445', '25.70', '', '0.00', '19.70', '0.00', '25.70', '0.00', '18.18', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557798309', '1557798309');
INSERT INTO `pm_order` VALUES ('2278', '8740', '', '92795805', '94.00', '', '0.00', '94.00', '0.00', '94.00', '0.00', '0.00', '0.00', '23.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557798641', '1557798641');
INSERT INTO `pm_order` VALUES ('2279', '8921', '', '98262113', '26.00', '', '0.00', '20.00', '0.00', '26.00', '0.00', '40.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557798934', '1557798934');
INSERT INTO `pm_order` VALUES ('2280', '8964', '', '78301353', '209.00', '', '0.00', '209.00', '0.00', '0.00', '209.00', '0.00', '0.00', '25.74', '', '0', '', '0', '2', '4', '0', '0', '0', '1557800146', '1557800146');
INSERT INTO `pm_order` VALUES ('2281', '8722', '', '80616643', '110.76', '', '0.00', '104.76', '0.00', '110.76', '0.00', '101.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557800690', '1557800690');
INSERT INTO `pm_order` VALUES ('2282', '9329', '', '45153660', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '63.75', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557801202', '1557801202');
INSERT INTO `pm_order` VALUES ('2283', '8722', '', '92275685', '47.00', '', '0.00', '47.00', '0.00', '47.00', '0.00', '0.00', '0.00', '11.88', '', '0', '', '0', '3', '4', '0', '0', '0', '1557801314', '1557801314');
INSERT INTO `pm_order` VALUES ('2284', '9001', '0449596969', '72257557', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '13.86', '', '0', '', '0', '3', '4', '0', '0', '0', '1557801552', '1557801552');
INSERT INTO `pm_order` VALUES ('2285', '8722', '', '61717398', '65.00', '', '0.00', '46.00', '0.00', '65.00', '0.00', '0.00', '19.00', '15.84', '', '0', '', '0', '3', '4', '0', '0', '0', '1557801611', '1557801611');
INSERT INTO `pm_order` VALUES ('2286', '8780', '', '34200754', '125.20', '', '0.00', '112.20', '0.00', '125.20', '0.00', '0.00', '13.00', '12.54', '', '0', '', '0', '3', '99', '0', '1', '0', '1557802193', '1557802193');
INSERT INTO `pm_order` VALUES ('2287', '9000', '0478889876', '46496843', '51.96', '', '0.00', '45.00', '0.00', '0.00', '51.96', '46.00', '6.96', '6.72', '', '0', '', '0', '2', '4', '0', '0', '0', '1557802541', '1557802541');
INSERT INTO `pm_order` VALUES ('2288', '8726', '', '33687006', '29.60', '', '0.00', '23.60', '0.00', '29.60', '0.00', '25.00', '6.00', '5.60', '', '0', '', '0', '3', '4', '0', '0', '0', '1557802729', '1557802729');
INSERT INTO `pm_order` VALUES ('2289', '8825', '', '91512002', '51.70', '', '0.00', '43.30', '0.00', '51.70', '0.00', '42.00', '8.40', '7.84', '', '0', '', '0', '3', '4', '0', '0', '0', '1557803052', '1557803052');
INSERT INTO `pm_order` VALUES ('2290', '8850', '', '38640313', '348.70', '', '2.70', '348.70', '0.00', '348.70', '0.00', '0.00', '0.00', '38.61', '', '0', '', '0', '3', '3', '0', '0', '0', '1557803089', '1557803089');
INSERT INTO `pm_order` VALUES ('2291', '9092', '', '65165712', '321.00', '', '0.00', '321.00', '0.00', '0.00', '321.00', '0.00', '0.00', '38.61', '', '0', '', '0', '2', '4', '0', '0', '0', '1557804116', '1557804116');
INSERT INTO `pm_order` VALUES ('2292', '9355', '', '76112196', '97.45', '', '0.00', '81.25', '0.00', '97.45', '0.00', '82.24', '16.20', '15.12', '', '3', '/uploads/20190514/a5a7eaa00107237e214061a1b2938559.jpg', '0', '4', '1', '0', '0', '0', '1557804133', '1557804133');
INSERT INTO `pm_order` VALUES ('2293', '8785', '', '73844000', '126.00', '', '0.00', '126.00', '0.00', '126.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557804431', '1557804431');
INSERT INTO `pm_order` VALUES ('2294', '8787', '', '54293510', '80.00', '', '0.00', '74.00', '0.00', '80.00', '0.00', '74.00', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557805100', '1557805100');
INSERT INTO `pm_order` VALUES ('2295', '8913', '', '19993988', '75.00', '', '0.00', '75.00', '0.00', '75.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557805653', '1557805653');
INSERT INTO `pm_order` VALUES ('2296', '9199', '', '23586385', '57.00', '', '0.00', '57.00', '0.00', '0.00', '57.00', '0.00', '0.00', '13.86', '', '0', '', '0', '2', '4', '0', '0', '0', '1557806015', '1557806015');
INSERT INTO `pm_order` VALUES ('2298', '8913', '', '88023807', '81.30', '', '0.00', '71.10', '0.00', '81.30', '0.00', '69.80', '10.20', '9.52', '', '0', '', '0', '3', '3', '0', '0', '0', '1557806436', '1557806436');
INSERT INTO `pm_order` VALUES ('2299', '9358', '', '72946716', '248.00', '', '0.00', '248.00', '0.00', '248.00', '0.00', '0.00', '0.00', '24.75', '', '0', '', '0', '3', '4', '0', '0', '0', '1557806802', '1557806802');
INSERT INTO `pm_order` VALUES ('2300', '8963', '', '55825249', '73.50', '', '0.00', '67.50', '0.00', '73.50', '0.00', '75.00', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557806843', '1557806843');
INSERT INTO `pm_order` VALUES ('2301', '9199', '', '12565745', '57.00', '', '0.00', '57.00', '0.00', '0.00', '57.00', '0.00', '0.00', '13.86', '', '0', '', '0', '2', '4', '0', '0', '0', '1557806908', '1557806908');
INSERT INTO `pm_order` VALUES ('2302', '9000', '0478889876', '47572674', '58.72', '', '0.00', '47.70', '0.00', '0.00', '58.72', '44.90', '11.02', '10.64', '', '0', '', '0', '2', '3', '0', '0', '0', '1557807121', '1557807121');
INSERT INTO `pm_order` VALUES ('2303', '9227', '', '85539060', '245.70', '', '0.00', '239.70', '0.00', '0.00', '245.70', '0.00', '6.00', '30.03', '', '0', '', '0', '2', '4', '0', '0', '0', '1557807476', '1557807476');
INSERT INTO `pm_order` VALUES ('2304', '9359', '', '56145344', '418.00', '', '0.00', '418.00', '0.00', '418.00', '0.00', '336.75', '0.00', '64.35', '', '0', '', '0', '3', '4', '0', '0', '0', '1557807551', '1557807551');
INSERT INTO `pm_order` VALUES ('2305', '9092', '', '54477149', '321.00', '', '0.00', '321.00', '0.00', '0.00', '321.00', '0.00', '0.00', '38.61', '', '0', '', '0', '2', '4', '0', '0', '0', '1557808022', '1557808022');
INSERT INTO `pm_order` VALUES ('2306', '8735', '', '20786958', '52.90', '', '0.00', '42.10', '0.00', '52.90', '0.00', '59.70', '10.80', '10.08', '', '0', '', '0', '3', '3', '0', '0', '0', '1557808070', '1557808070');
INSERT INTO `pm_order` VALUES ('2307', '9171', '', '50175625', '358.20', '', '0.00', '358.20', '0.00', '358.20', '0.00', '282.70', '0.00', '47.57', '', '0', '', '0', '3', '3', '0', '0', '0', '1557808536', '1557808536');
INSERT INTO `pm_order` VALUES ('2309', '8676', '', '81646334', '94.00', '', '0.00', '94.00', '0.00', '94.00', '0.00', '0.00', '0.00', '23.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557810618', '1557810618');
INSERT INTO `pm_order` VALUES ('2310', '8910', '', '52227199', '40.80', '', '0.00', '35.00', '0.00', '0.00', '40.80', '38.00', '5.80', '5.60', '', '0', '', '0', '2', '3', '0', '0', '0', '1557810897', '1557810897');
INSERT INTO `pm_order` VALUES ('2311', '9363', '', '19790595', '24.50', '', '0.00', '18.50', '0.00', '24.50', '0.00', '18.40', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557811499', '1557811499');
INSERT INTO `pm_order` VALUES ('2313', '9290', '', '48916565', '209.00', '', '0.00', '209.00', '0.00', '209.00', '0.00', '192.00', '0.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557813266', '1557813266');
INSERT INTO `pm_order` VALUES ('2314', '9155', '', '95308180', '493.10', '', '0.00', '453.50', '0.00', '493.10', '0.00', '379.36', '39.60', '50.02', '', '0', '', '0', '3', '3', '0', '0', '0', '1557813394', '1557813394');
INSERT INTO `pm_order` VALUES ('2315', '8660', '', '56708706', '428.00', '', '0.00', '428.00', '0.00', '0.00', '428.00', '0.00', '0.00', '51.48', '', '0', '', '0', '2', '4', '0', '0', '0', '1557813404', '1557813404');
INSERT INTO `pm_order` VALUES ('2316', '9174', '', '66243232', '347.00', '', '0.00', '347.00', '0.00', '0.00', '347.00', '294.00', '0.00', '25.74', '', '0', '', '0', '2', '4', '0', '0', '0', '1557813653', '1557813653');
INSERT INTO `pm_order` VALUES ('2317', '8677', '12456', '22630686', '214.00', '', '0.00', '214.00', '0.00', '214.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557813667', '1557813667');
INSERT INTO `pm_order` VALUES ('2318', '8944', '', '30032991', '246.00', '', '0.00', '246.00', '0.00', '0.00', '246.00', '0.00', '0.00', '25.74', '', '0', '', '0', '2', '4', '0', '0', '0', '1557813715', '1557813715');
INSERT INTO `pm_order` VALUES ('2319', '8987', '', '47987287', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557813759', '1557813759');
INSERT INTO `pm_order` VALUES ('2320', '8760', '', '47414449', '58.90', '', '0.00', '46.30', '0.00', '58.90', '0.00', '54.00', '12.60', '11.76', '', '0', '', '0', '3', '3', '0', '0', '0', '1557813783', '1557813783');
INSERT INTO `pm_order` VALUES ('2321', '8916', '', '31968638', '178.00', '', '0.00', '178.00', '0.00', '178.00', '0.00', '141.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557813852', '1557813852');
INSERT INTO `pm_order` VALUES ('2325', '8864', '', '42804634', '234.00', '', '0.00', '234.00', '0.00', '234.00', '0.00', '0.00', '0.00', '25.25', '', '0', '', '0', '3', '4', '0', '0', '0', '1557815190', '1557815190');
INSERT INTO `pm_order` VALUES ('2323', '9325', '', '48485398', '126.00', '', '0.00', '126.00', '0.00', '126.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557814970', '1557814970');
INSERT INTO `pm_order` VALUES ('2332', '8954', '', '78946577', '150.40', '', '0.00', '127.60', '0.00', '150.40', '0.00', '127.75', '22.80', '21.28', '', '0', '', '0', '3', '3', '0', '0', '0', '1557817267', '1557817267');
INSERT INTO `pm_order` VALUES ('2327', '8708', '', '28482553', '57.72', '', '0.00', '46.70', '0.00', '0.00', '57.72', '44.70', '11.02', '10.64', '', '0', '', '0', '2', '3', '0', '0', '0', '1557815333', '1557815333');
INSERT INTO `pm_order` VALUES ('2328', '8708', '', '99166391', '60.50', '', '0.00', '54.50', '0.00', '0.00', '60.50', '0.00', '6.00', '15.84', '', '0', '', '0', '2', '4', '0', '0', '0', '1557815504', '1557815504');
INSERT INTO `pm_order` VALUES ('2329', '8708', '', '46058193', '34.70', '', '0.00', '28.90', '0.00', '0.00', '34.70', '28.00', '5.80', '5.60', '', '0', '', '0', '2', '3', '0', '0', '0', '1557815869', '1557815869');
INSERT INTO `pm_order` VALUES ('2330', '8708', '', '35669550', '88.32', '', '0.00', '80.20', '0.00', '0.00', '88.32', '67.75', '8.12', '7.84', '', '0', '', '0', '2', '3', '0', '0', '0', '1557816093', '1557816093');
INSERT INTO `pm_order` VALUES ('2331', '8780', '', '26397065', '125.00', '', '0.00', '125.00', '0.00', '125.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557816270', '1557816270');
INSERT INTO `pm_order` VALUES ('2333', '8901', '', '28045976', '55.50', '', '0.00', '47.10', '0.00', '55.50', '0.00', '47.37', '8.40', '7.84', '', '0', '', '0', '3', '3', '0', '0', '0', '1557817479', '1557817479');
INSERT INTO `pm_order` VALUES ('2334', '8944', '', '83581704', '221.60', '', '1.80', '208.60', '0.00', '0.00', '221.60', '0.00', '13.00', '25.74', '', '0', '', '0', '2', '3', '0', '0', '0', '1557817483', '1557817483');
INSERT INTO `pm_order` VALUES ('2335', '8954', '', '44284191', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '13.86', '', '0', '', '0', '3', '4', '0', '0', '0', '1557817574', '1557817574');
INSERT INTO `pm_order` VALUES ('2336', '9368', '', '93858382', '97.00', '', '0.00', '88.00', '0.00', '97.00', '0.00', '91.00', '9.00', '8.40', '', '0', '', '0', '3', '3', '0', '0', '0', '1557818376', '1557818376');
INSERT INTO `pm_order` VALUES ('2337', '8944', '', '59272052', '78.90', '', '0.00', '78.90', '0.00', '0.00', '78.90', '72.00', '0.00', '8.40', '', '0', '', '0', '2', '3', '0', '0', '0', '1557818649', '1557818649');
INSERT INTO `pm_order` VALUES ('2338', '8935', '', '48220070', '66.76', '', '0.00', '54.00', '0.00', '0.00', '66.76', '54.00', '12.76', '12.32', '', '0', '', '0', '2', '3', '0', '0', '0', '1557818886', '1557818886');
INSERT INTO `pm_order` VALUES ('2339', '8935', '', '94231097', '42.80', '', '0.00', '36.80', '0.00', '0.00', '42.80', '0.00', '6.00', '4.29', '', '0', '', '0', '2', '4', '0', '0', '0', '1557819134', '1557819134');
INSERT INTO `pm_order` VALUES ('2340', '8769', '', '57180249', '21.60', '', '0.00', '15.60', '0.00', '21.60', '0.00', '14.00', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557819204', '1557819204');
INSERT INTO `pm_order` VALUES ('2341', '8935', '', '70236590', '107.00', '', '0.00', '107.00', '0.00', '0.00', '107.00', '0.00', '0.00', '12.87', '', '0', '', '0', '2', '4', '0', '0', '0', '1557819335', '1557819335');
INSERT INTO `pm_order` VALUES ('2342', '8935', '', '51760983', '40.32', '', '0.00', '29.30', '0.00', '0.00', '40.32', '33.70', '11.02', '10.64', '', '0', '', '0', '2', '3', '0', '0', '0', '1557819502', '1557819502');
INSERT INTO `pm_order` VALUES ('2343', '8693', '', '14189188', '57.00', '', '0.00', '57.00', '0.00', '57.00', '0.00', '0.00', '0.00', '13.86', '', '0', '', '0', '3', '4', '0', '0', '0', '1557819824', '1557819824');
INSERT INTO `pm_order` VALUES ('2344', '9366', '', '44657090', '86.40', '', '0.00', '86.40', '0.00', '86.40', '0.00', '75.00', '0.00', '15.79', '', '0', '', '0', '3', '3', '0', '0', '0', '1557819856', '1557819856');
INSERT INTO `pm_order` VALUES ('2345', '8677', '12456', '97967040', '107.00', '', '0.00', '107.00', '0.00', '107.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557821161', '1557821161');
INSERT INTO `pm_order` VALUES ('2346', '8760', '', '12157897', '40.03', '', '0.00', '34.03', '0.00', '40.03', '0.00', '31.40', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557821284', '1557821284');
INSERT INTO `pm_order` VALUES ('2347', '8677', '12456', '46897732', '214.00', '', '0.00', '214.00', '0.00', '214.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557821471', '1557821471');
INSERT INTO `pm_order` VALUES ('2348', '8677', '12456', '35730089', '214.00', '', '0.00', '214.00', '0.00', '214.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557822339', '1557822339');
INSERT INTO `pm_order` VALUES ('2349', '8677', '12456', '52243026', '123.00', '', '0.00', '123.00', '0.00', '123.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557822589', '1557822589');
INSERT INTO `pm_order` VALUES ('2350', '8677', '12456', '75584873', '123.00', '', '0.00', '123.00', '0.00', '123.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557822780', '1557822780');
INSERT INTO `pm_order` VALUES ('2351', '9371', '', '79280754', '126.00', '', '0.00', '126.00', '0.00', '126.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557823313', '1557823313');
INSERT INTO `pm_order` VALUES ('2352', '8881', '', '23104396', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557823583', '1557823583');
INSERT INTO `pm_order` VALUES ('2353', '8760', '', '37434767', '475.90', '', '0.00', '451.90', '0.00', '475.90', '0.00', '431.88', '24.00', '22.40', '', '0', '', '0', '3', '3', '0', '0', '0', '1557823617', '1557823617');
INSERT INTO `pm_order` VALUES ('2354', '8944', '', '89874693', '54.46', '', '0.00', '44.60', '0.00', '0.00', '54.46', '44.46', '9.86', '9.52', '', '0', '', '0', '2', '3', '0', '0', '0', '1557823650', '1557823650');
INSERT INTO `pm_order` VALUES ('2356', '8678', '', '45108827', '48.40', '', '0.00', '37.60', '0.00', '48.40', '0.00', '37.00', '10.80', '10.08', '', '0', '', '0', '3', '3', '0', '0', '0', '1557825344', '1557825344');
INSERT INTO `pm_order` VALUES ('2357', '9344', '0444506826', '88277063', '160.00', '', '0.00', '160.00', '0.00', '160.00', '0.00', '130.50', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557826500', '1557826500');
INSERT INTO `pm_order` VALUES ('2358', '8765', '0414382865', '68826200', '220.00', '', '0.00', '220.00', '0.00', '220.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557827316', '1557827316');
INSERT INTO `pm_order` VALUES ('2359', '8762', '', '10144086', '208.00', '', '0.00', '208.00', '0.00', '208.00', '0.00', '198.00', '0.00', '25.74', '', '3', '/uploads/20190514/af8cd632e0a17e5e7aeb31d0bdc58347.jpg', '0', '4', '1', '0', '0', '0', '1557827536', '1557827536');
INSERT INTO `pm_order` VALUES ('2360', '8762', '', '89447753', '94.00', '', '0.00', '94.00', '0.00', '94.00', '0.00', '0.00', '0.00', '23.76', '', '3', '/uploads/20190514/efe6d178031396a94d4453f448bbe5cf.jpg', '0', '4', '1', '0', '0', '0', '1557827933', '1557827933');
INSERT INTO `pm_order` VALUES ('2361', '9183', '', '40443538', '103.70', '', '0.00', '89.20', '0.00', '0.00', '103.70', '87.68', '14.50', '14.00', '', '0', '', '0', '2', '3', '0', '0', '0', '1557828538', '1557828538');
INSERT INTO `pm_order` VALUES ('2362', '8980', '', '53622835', '64.00', '', '0.00', '58.20', '0.00', '0.00', '64.00', '25.30', '5.80', '5.60', '', '0', '', '0', '2', '3', '0', '0', '0', '1557828700', '1557828700');
INSERT INTO `pm_order` VALUES ('2363', '8979', '', '39317858', '88.00', '', '0.00', '88.00', '0.00', '88.00', '0.00', '0.00', '0.00', '23.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557829201', '1557829201');
INSERT INTO `pm_order` VALUES ('2364', '8829', '', '42578911', '47.20', '', '0.00', '47.20', '0.00', '47.20', '0.00', '36.00', '0.00', '12.32', '', '0', '', '0', '3', '3', '0', '0', '0', '1557829245', '1557829245');
INSERT INTO `pm_order` VALUES ('2365', '8980', '', '19626982', '25.60', '', '0.00', '19.80', '0.00', '0.00', '25.60', '19.60', '5.80', '5.60', '', '0', '', '0', '2', '3', '0', '0', '0', '1557829484', '1557829484');
INSERT INTO `pm_order` VALUES ('2366', '8836', '', '76193560', '212.00', '', '0.00', '212.00', '0.00', '212.00', '0.00', '169.80', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557829565', '1557829565');
INSERT INTO `pm_order` VALUES ('2367', '8980', '', '86918446', '92.18', '', '0.00', '85.80', '0.00', '0.00', '92.18', '90.00', '6.38', '6.16', '', '0', '', '0', '2', '3', '0', '0', '0', '1557830128', '1557830128');
INSERT INTO `pm_order` VALUES ('2368', '8980', '', '68646440', '75.20', '', '0.00', '69.40', '0.00', '75.20', '0.00', '74.00', '5.80', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557830265', '1557830265');
INSERT INTO `pm_order` VALUES ('2369', '8752', '', '39649225', '26.80', '', '0.00', '26.80', '0.00', '26.80', '0.00', '19.00', '0.00', '7.28', '', '0', '', '0', '3', '3', '0', '0', '0', '1557830407', '1557830407');
INSERT INTO `pm_order` VALUES ('2370', '9088', '', '41791332', '215.00', '', '0.00', '215.00', '0.00', '215.00', '0.00', '0.00', '0.00', '25.74', '', '3', '/uploads/20190514/e4bd1790c9187484e683602f132ef097.jpg', '0', '4', '1', '0', '0', '0', '1557831988', '1557831988');
INSERT INTO `pm_order` VALUES ('2371', '9343', '', '44444186', '469.50', '', '0.00', '469.50', '0.00', '469.50', '0.00', '0.00', '0.00', '51.48', '', '0', '', '0', '3', '4', '0', '0', '0', '1557833774', '1557833774');
INSERT INTO `pm_order` VALUES ('2372', '9083', '', '20360113', '64.50', '', '0.00', '55.50', '0.00', '64.50', '0.00', '60.00', '9.00', '8.40', '', '0', '', '0', '3', '3', '0', '0', '0', '1557833836', '1557833836');
INSERT INTO `pm_order` VALUES ('2373', '8808', '', '88043525', '55.00', '', '0.00', '55.00', '0.00', '55.00', '0.00', '0.00', '0.00', '12.38', '', '0', '', '0', '3', '4', '0', '0', '0', '1557834269', '1557834269');
INSERT INTO `pm_order` VALUES ('2374', '8913', '', '22647288', '34.40', '', '0.00', '27.80', '0.00', '34.40', '0.00', '27.00', '6.60', '6.16', '', '0', '', '0', '3', '3', '0', '0', '0', '1557837132', '1557837132');
INSERT INTO `pm_order` VALUES ('2375', '8697', '', '77673781', '126.00', '', '0.00', '126.00', '0.00', '126.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557837531', '1557837531');
INSERT INTO `pm_order` VALUES ('2376', '8943', '', '49724736', '29.80', '', '0.00', '23.80', '0.00', '29.80', '0.00', '23.76', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557837613', '1557837613');
INSERT INTO `pm_order` VALUES ('2377', '8727', '0450300513', '29265278', '106.00', '', '0.00', '106.00', '0.00', '106.00', '0.00', '84.90', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557838214', '1557838214');
INSERT INTO `pm_order` VALUES ('2378', '8792', '', '50625431', '32.00', '', '0.00', '26.00', '0.00', '32.00', '0.00', '24.30', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557838784', '1557838784');
INSERT INTO `pm_order` VALUES ('2379', '8703', '', '59439622', '81.20', '', '0.00', '71.60', '0.00', '81.20', '0.00', '73.17', '9.60', '8.96', '', '0', '', '0', '3', '3', '0', '0', '0', '1557839554', '1557839554');
INSERT INTO `pm_order` VALUES ('2380', '8742', '', '48030432', '43.80', '', '0.00', '37.80', '0.00', '43.80', '0.00', '0.00', '6.00', '4.29', '', '0', '', '0', '3', '4', '0', '0', '0', '1557840377', '1557840377');
INSERT INTO `pm_order` VALUES ('2381', '8768', '', '95958323', '110.00', '', '0.00', '110.00', '0.00', '110.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557840385', '1557840385');
INSERT INTO `pm_order` VALUES ('2382', '8917', '', '73771393', '21.80', '', '0.00', '14.80', '0.00', '21.80', '0.00', '0.00', '7.00', '4.62', '', '0', '', '0', '3', '4', '0', '0', '0', '1557840515', '1557840515');
INSERT INTO `pm_order` VALUES ('2383', '8740', '', '72648050', '88.00', '', '0.00', '88.00', '0.00', '88.00', '0.00', '0.00', '0.00', '23.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557840607', '1557840607');
INSERT INTO `pm_order` VALUES ('2384', '8768', '', '23114942', '114.50', '', '0.00', '108.50', '0.00', '114.50', '0.00', '103.00', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557840673', '1557840673');
INSERT INTO `pm_order` VALUES ('2385', '9046', '', '67527934', '76.90', '', '0.00', '70.30', '0.00', '76.90', '0.00', '72.10', '6.60', '6.16', '', '0', '', '0', '3', '3', '0', '0', '0', '1557840859', '1557840859');
INSERT INTO `pm_order` VALUES ('2386', '8928', '13927740088', '19839197', '252.00', '', '0.00', '252.00', '0.00', '0.00', '252.00', '195.00', '0.00', '25.74', '', '0', '', '0', '2', '4', '0', '0', '0', '1557842558', '1557842558');
INSERT INTO `pm_order` VALUES ('2387', '8726', '', '58577609', '37.60', '', '0.00', '31.60', '0.00', '37.60', '0.00', '33.80', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557843229', '1557843229');
INSERT INTO `pm_order` VALUES ('2388', '8726', '', '39561660', '49.90', '', '0.00', '43.90', '0.00', '49.90', '0.00', '42.72', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557843566', '1557843566');
INSERT INTO `pm_order` VALUES ('2389', '8873', '', '53657036', '252.00', '', '0.00', '252.00', '0.00', '252.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557843707', '1557843707');
INSERT INTO `pm_order` VALUES ('2390', '9185', '', '94430522', '67.60', '', '0.00', '57.40', '0.00', '67.60', '0.00', '56.84', '10.20', '9.52', '', '0', '', '0', '3', '3', '0', '0', '0', '1557844258', '1557844258');
INSERT INTO `pm_order` VALUES ('2391', '9183', '', '97482499', '504.04', '', '0.00', '477.70', '0.00', '0.00', '504.04', '51.80', '26.34', '64.36', '', '0', '', '0', '2', '3', '0', '0', '0', '1557845446', '1557845446');
INSERT INTO `pm_order` VALUES ('2393', '9185', '', '54095181', '160.00', '', '0.00', '160.00', '0.00', '160.00', '0.00', '130.50', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557846588', '1557846588');
INSERT INTO `pm_order` VALUES ('2394', '8925', '', '45098870', '44.68', '', '0.00', '32.68', '0.00', '44.68', '0.00', '29.50', '12.00', '11.20', '', '0', '', '0', '3', '3', '0', '0', '0', '1557847023', '1557847023');
INSERT INTO `pm_order` VALUES ('2395', '9185', '', '96434149', '76.20', '', '0.00', '64.20', '0.00', '76.20', '0.00', '0.00', '12.00', '8.58', '', '0', '', '0', '3', '4', '0', '0', '0', '1557847410', '1557847410');
INSERT INTO `pm_order` VALUES ('2467', '8768', '', '53915035', '178.00', '', '0.00', '178.00', '0.00', '178.00', '0.00', '141.00', '0.00', '25.74', '', '0', '', '0', '3', '2', '0', '0', '0', '1557904940', '1557904940');
INSERT INTO `pm_order` VALUES ('2398', '8769', '', '53633756', '43.50', '', '0.00', '37.50', '0.00', '43.50', '0.00', '36.00', '6.00', '4.29', '', '0', '', '0', '3', '4', '0', '0', '0', '1557859916', '1557859916');
INSERT INTO `pm_order` VALUES ('2399', '8739', '', '26002261', '36.00', '', '0.00', '30.00', '0.00', '36.00', '0.00', '24.50', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557860886', '1557860886');
INSERT INTO `pm_order` VALUES ('2400', '8806', '', '37680950', '126.00', '', '0.00', '126.00', '0.00', '126.00', '0.00', '97.50', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557871063', '1557871063');
INSERT INTO `pm_order` VALUES ('2401', '8806', '', '66032695', '75.20', '', '0.00', '69.20', '0.00', '75.20', '0.00', '69.88', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557872156', '1557872156');
INSERT INTO `pm_order` VALUES ('2402', '8739', '', '13535684', '31.50', '', '0.00', '25.50', '0.00', '31.50', '0.00', '25.00', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557873242', '1557873242');
INSERT INTO `pm_order` VALUES ('2403', '8914', '0431471764', '67896752', '200.00', '', '0.00', '200.00', '0.00', '0.00', '200.00', '0.00', '0.00', '23.76', '', '0', '', '0', '2', '4', '0', '0', '0', '1557873286', '1557873286');
INSERT INTO `pm_order` VALUES ('2404', '8973', '0488855533', '86143737', '39.28', '', '0.00', '30.00', '0.00', '0.00', '39.28', '33.50', '9.28', '8.96', '', '0', '', '0', '2', '3', '0', '0', '0', '1557877356', '1557877356');
INSERT INTO `pm_order` VALUES ('2405', '8927', '', '28948305', '104.70', '', '0.00', '104.70', '0.00', '104.70', '0.00', '100.80', '0.00', '8.06', '', '0', '', '0', '3', '3', '0', '0', '0', '1557879253', '1557879253');
INSERT INTO `pm_order` VALUES ('2406', '9090', '', '82497568', '83.60', '', '0.00', '62.00', '0.00', '83.60', '0.00', '63.20', '21.60', '20.16', '', '0', '', '0', '3', '3', '0', '0', '0', '1557879995', '1557879995');
INSERT INTO `pm_order` VALUES ('2407', '8927', '', '22239276', '61.13', '', '0.00', '52.73', '0.00', '61.13', '0.00', '51.80', '8.40', '7.84', '', '0', '', '0', '3', '3', '0', '0', '0', '1557880770', '1557880770');
INSERT INTO `pm_order` VALUES ('2408', '8677', '12456', '85951316', '46.60', '', '0.00', '46.60', '0.00', '46.60', '0.00', '39.00', '0.00', '6.16', '', '0', '', '0', '3', '3', '0', '0', '0', '1557880806', '1557880806');
INSERT INTO `pm_order` VALUES ('2409', '8677', '12456', '73631199', '89.00', '', '0.00', '89.00', '0.00', '89.00', '0.00', '70.50', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557881088', '1557881088');
INSERT INTO `pm_order` VALUES ('2410', '8677', '12456', '55396222', '123.00', '', '0.00', '123.00', '0.00', '123.00', '0.00', '0.00', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557881326', '1557881326');
INSERT INTO `pm_order` VALUES ('2411', '8757', '', '90497286', '33.00', '', '0.00', '21.00', '0.00', '33.00', '0.00', '0.00', '12.00', '7.92', '', '0', '', '0', '3', '4', '0', '0', '0', '1557881460', '1557881460');
INSERT INTO `pm_order` VALUES ('2412', '8881', '', '75936415', '252.00', '', '0.00', '252.00', '0.00', '252.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557881994', '1557881994');
INSERT INTO `pm_order` VALUES ('2413', '8780', '', '43158719', '119.00', '', '0.00', '119.00', '0.00', '119.00', '0.00', '100.50', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557882014', '1557882014');
INSERT INTO `pm_order` VALUES ('2414', '9192', '', '71492601', '339.00', '', '0.00', '339.00', '0.00', '339.00', '0.00', '0.00', '0.00', '38.61', '', '3', '/uploads/20190515/7b99403ef5e8ba54c7ab11ed41cc8275.jpg', '0', '4', '1', '0', '0', '0', '1557882489', '1557882489');
INSERT INTO `pm_order` VALUES ('2415', '9159', '', '70757110', '94.00', '', '0.00', '94.00', '0.00', '94.00', '0.00', '0.00', '0.00', '23.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557882804', '1557882804');
INSERT INTO `pm_order` VALUES ('2416', '8673', '', '82006797', '122.00', '', '0.00', '116.00', '0.00', '122.00', '0.00', '116.80', '6.00', '5.60', '', '0', '', '0', '3', '2', '0', '0', '0', '1557882981', '1557882981');
INSERT INTO `pm_order` VALUES ('2417', '8693', '', '27822915', '47.00', '', '0.00', '47.00', '0.00', '47.00', '0.00', '0.00', '0.00', '11.88', '', '0', '', '0', '3', '4', '0', '0', '0', '1557883188', '1557883188');
INSERT INTO `pm_order` VALUES ('2418', '8687', '', '73862564', '62.40', '', '0.00', '56.40', '0.00', '62.40', '0.00', '59.00', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557884153', '1557884153');
INSERT INTO `pm_order` VALUES ('2419', '9184', '', '80037559', '94.00', '', '0.00', '94.00', '0.00', '94.00', '0.00', '0.00', '0.00', '23.76', '', '0', '', '0', '3', '4', '0', '0', '0', '1557884508', '1557884508');
INSERT INTO `pm_order` VALUES ('2420', '8982', '', '22933185', '34.40', '', '0.00', '22.40', '0.00', '0.00', '34.40', '0.00', '12.00', '7.92', '', '0', '', '0', '2', '4', '0', '0', '0', '1557884889', '1557884889');
INSERT INTO `pm_order` VALUES ('2421', '8660', '', '51135070', '104.50', '', '0.00', '104.50', '0.00', '0.00', '104.50', '0.00', '0.00', '12.87', '', '0', '', '0', '2', '4', '0', '0', '0', '1557884997', '1557884997');
INSERT INTO `pm_order` VALUES ('2422', '9327', '', '95571615', '47.00', '', '0.00', '47.00', '0.00', '47.00', '0.00', '0.00', '0.00', '11.88', '', '0', '', '0', '3', '4', '0', '0', '0', '1557885762', '1557885762');
INSERT INTO `pm_order` VALUES ('2423', '9360', '', '17994438', '84.00', '', '0.00', '78.00', '0.00', '84.00', '0.00', '82.00', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557885958', '1557885958');
INSERT INTO `pm_order` VALUES ('2424', '8807', '', '67587643', '80.00', '', '0.00', '80.00', '0.00', '80.00', '0.00', '65.25', '0.00', '12.87', '', '0', '', '0', '3', '4', '0', '0', '0', '1557886091', '1557886091');
INSERT INTO `pm_order` VALUES ('2425', '9360', '', '66638037', '44.00', '', '0.00', '44.00', '0.00', '44.00', '0.00', '0.00', '0.00', '11.88', '', '0', '', '0', '3', '4', '0', '0', '0', '1557886286', '1557886286');
INSERT INTO `pm_order` VALUES ('2426', '9360', '', '31689223', '50.20', '', '0.00', '37.00', '0.00', '50.20', '0.00', '36.60', '13.20', '12.32', '', '0', '', '0', '3', '3', '0', '0', '0', '1557886461', '1557886461');
INSERT INTO `pm_order` VALUES ('2427', '9153', '', '23133554', '23.40', '', '0.00', '17.40', '0.00', '23.40', '0.00', '15.00', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557886563', '1557886563');
INSERT INTO `pm_order` VALUES ('2428', '8895', '18677236919', '99633640', '220.00', '', '0.00', '220.00', '0.00', '0.00', '220.00', '0.00', '0.00', '25.74', '', '0', '', '0', '2', '4', '0', '0', '0', '1557887922', '1557887922');
INSERT INTO `pm_order` VALUES ('2429', '8869', '', '25519658', '66.50', '', '0.00', '58.10', '0.00', '66.50', '0.00', '59.50', '8.40', '7.84', '', '0', '', '0', '3', '3', '0', '0', '0', '1557888284', '1557888284');
INSERT INTO `pm_order` VALUES ('2430', '8881', '', '42061234', '36.50', '', '0.00', '30.50', '0.00', '36.50', '0.00', '33.00', '6.00', '4.29', '', '0', '', '0', '3', '4', '0', '0', '0', '1557888326', '1557888326');
INSERT INTO `pm_order` VALUES ('2431', '9295', '', '35561371', '146.60', '', '0.00', '119.60', '0.00', '146.60', '0.00', '115.50', '27.00', '25.20', '', '0', '', '0', '3', '3', '0', '0', '0', '1557888554', '1557888554');
INSERT INTO `pm_order` VALUES ('2432', '9361', '0450637717', '10814479', '212.00', '', '0.00', '212.00', '0.00', '0.00', '212.00', '169.80', '0.00', '25.74', '', '0', '', '0', '2', '4', '0', '0', '0', '1557889355', '1557889355');
INSERT INTO `pm_order` VALUES ('2433', '8894', '', '66913437', '156.00', '', '0.00', '156.00', '0.00', '156.00', '0.00', '127.50', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557889466', '1557889466');
INSERT INTO `pm_order` VALUES ('2434', '8816', '', '91850965', '44.00', '', '0.00', '44.00', '0.00', '44.00', '0.00', '0.00', '0.00', '11.88', '', '0', '', '0', '3', '4', '0', '0', '0', '1557889584', '1557889584');
INSERT INTO `pm_order` VALUES ('2435', '8883', '', '56732916', '34.00', '', '0.00', '28.00', '0.00', '34.00', '0.00', '23.10', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557891068', '1557891068');
INSERT INTO `pm_order` VALUES ('2436', '9097', '', '27801461', '114.28', '', '0.00', '107.90', '0.00', '0.00', '114.28', '108.60', '6.38', '6.16', '', '0', '', '0', '2', '3', '0', '0', '0', '1557891725', '1557891725');
INSERT INTO `pm_order` VALUES ('2437', '9395', '', '95503025', '90.10', '', '0.00', '84.10', '0.00', '90.10', '0.00', '86.00', '6.00', '5.60', '', '0', '', '0', '3', '3', '0', '0', '0', '1557891987', '1557891987');
INSERT INTO `pm_order` VALUES ('2438', '9394', '', '93178407', '160.00', '', '0.00', '160.00', '0.00', '160.00', '0.00', '130.50', '0.00', '25.74', '', '0', '', '0', '3', '2', '0', '0', '0', '1557892286', '1557892286');
INSERT INTO `pm_order` VALUES ('2440', '8930', '', '35968482', '111.42', '', '0.00', '103.30', '0.00', '0.00', '111.42', '109.40', '8.12', '7.84', '', '0', '', '0', '2', '3', '0', '0', '0', '1557892359', '1557892359');
INSERT INTO `pm_order` VALUES ('2441', '9388', '', '51037976', '41.80', '', '0.00', '31.00', '0.00', '41.80', '0.00', '31.60', '10.80', '10.08', '', '0', '', '0', '3', '3', '0', '0', '0', '1557892561', '1557892561');
INSERT INTO `pm_order` VALUES ('2442', '8880', '', '47163026', '104.00', '', '0.00', '104.00', '0.00', '104.00', '0.00', '99.00', '0.00', '12.87', '', '3', '/uploads/20190515/391f531e7f0c986ad28ad83188c2517a.jpg', '0', '4', '1', '0', '0', '0', '1557893258', '1557893258');
INSERT INTO `pm_order` VALUES ('2443', '9310', '', '42249301', '46.00', '', '0.00', '46.00', '0.00', '46.00', '0.00', '0.00', '0.00', '11.88', '', '0', '', '0', '3', '4', '0', '0', '0', '1557894201', '1557894201');
INSERT INTO `pm_order` VALUES ('2444', '9275', '', '68428173', '110.00', '', '0.00', '84.00', '0.00', '110.00', '0.00', '0.00', '26.00', '25.08', '', '0', '', '0', '3', '4', '0', '0', '0', '1557894411', '1557894411');
INSERT INTO `pm_order` VALUES ('2445', '9390', '', '53348056', '200.40', '', '0.00', '194.40', '0.00', '200.40', '0.00', '64.40', '6.00', '18.47', '', '0', '', '0', '3', '3', '0', '0', '0', '1557894975', '1557894975');
INSERT INTO `pm_order` VALUES ('2446', '8678', '', '66112056', '378.00', '', '0.00', '378.00', '0.00', '378.00', '0.00', '292.50', '0.00', '38.61', '', '0', '', '0', '3', '4', '0', '0', '0', '1557895378', '1557895378');
INSERT INTO `pm_order` VALUES ('2447', '8801', '', '24794037', '256.00', '', '0.00', '256.00', '0.00', '256.00', '0.00', '204.75', '0.00', '38.61', '', '0', '', '0', '3', '4', '0', '0', '0', '1557895409', '1557895409');
INSERT INTO `pm_order` VALUES ('2448', '8769', '', '94549167', '55.80', '', '0.00', '48.00', '0.00', '55.80', '0.00', '48.00', '7.80', '7.28', '', '0', '', '0', '3', '3', '0', '0', '0', '1557895745', '1557895745');
INSERT INTO `pm_order` VALUES ('2449', '8816', '', '36656010', '252.00', '', '0.00', '252.00', '0.00', '252.00', '0.00', '0.00', '0.00', '25.74', '', '0', '', '0', '3', '4', '0', '0', '0', '1557895807', '1557895807');
INSERT INTO `pm_order` VALUES ('2450', '9322', '', '83664738', '66.22', '', '0.00', '58.10', '0.00', '0.00', '66.22', '59.50', '8.12', '7.84', '', '0', '', '0', '2', '2', '0', '0', '0', '1557896600', '1557896600');
INSERT INTO `pm_order` VALUES ('2451', '9155', '', '82380003', '476.00', '', '0.00', '476.00', '0.00', '476.00', '0.00', '402.00', '0.00', '51.48', '', '0', '', '0', '3', '2', '0', '0', '0', '1557896637', '1557896637');
INSERT INTO `pm_order` VALUES ('2452', '9097', '', '41160646', '25.00', '', '0.00', '25.00', '0.00', '0.00', '25.00', '17.00', '0.00', '7.28', '', '0', '', '0', '2', '2', '0', '0', '0', '1557896728', '1557896728');
INSERT INTO `pm_order` VALUES ('2453', '9378', '', '58157829', '78.00', '', '0.00', '78.00', '0.00', '78.00', '0.00', '63.75', '0.00', '12.87', '', '0', '', '0', '3', '2', '0', '0', '0', '1557897269', '1557897269');
INSERT INTO `pm_order` VALUES ('2454', '8935', '', '70859697', '43.60', '', '0.00', '29.60', '0.00', '0.00', '43.60', '0.00', '14.00', '9.24', '', '0', '', '0', '2', '2', '0', '0', '0', '1557897889', '1557897889');
INSERT INTO `pm_order` VALUES ('2455', '8935', '', '44305099', '21.80', '', '0.00', '14.80', '0.00', '0.00', '21.80', '0.00', '7.00', '4.62', '', '0', '', '0', '2', '2', '0', '0', '0', '1557898064', '1557898064');
INSERT INTO `pm_order` VALUES ('2456', '8973', '0488855533', '48104841', '168.50', '', '0.00', '162.70', '0.00', '0.00', '168.50', '80.50', '5.80', '16.80', '', '0', '', '0', '2', '2', '0', '0', '0', '1557899228', '1557899228');
INSERT INTO `pm_order` VALUES ('2457', '8678', '', '12533175', '100.00', '', '0.00', '94.00', '0.00', '100.00', '0.00', '95.10', '6.00', '5.60', '', '0', '', '0', '3', '2', '0', '0', '0', '1557899559', '1557899559');
INSERT INTO `pm_order` VALUES ('2458', '8880', '', '88755850', '104.90', '', '0.90', '104.90', '0.00', '104.90', '0.00', '99.00', '0.00', '12.87', '', '3', '/uploads/20190515/730d17859cefc0ad7989cd7a21f751d1.jpg', '0', '4', '1', '0', '0', '0', '1557900694', '1557900694');
INSERT INTO `pm_order` VALUES ('2459', '8933', '', '95199567', '78.90', '', '0.00', '78.90', '0.00', '0.00', '78.90', '72.00', '0.00', '8.40', '', '0', '', '0', '2', '2', '0', '0', '0', '1557900975', '1557900975');
INSERT INTO `pm_order` VALUES ('2460', '9015', '', '60825921', '21.50', '', '0.00', '15.50', '0.00', '21.50', '0.00', '15.00', '6.00', '5.60', '', '0', '', '0', '3', '2', '0', '0', '0', '1557901972', '1557901972');
INSERT INTO `pm_order` VALUES ('2461', '8825', '', '10982018', '83.70', '', '0.00', '83.70', '0.00', '83.70', '0.00', '0.00', '0.00', '12.38', '', '0', '', '0', '3', '2', '0', '0', '0', '1557902213', '1557902213');
INSERT INTO `pm_order` VALUES ('2462', '8935', '', '44473931', '82.00', '', '0.00', '82.00', '0.00', '0.00', '82.00', '63.00', '0.00', '5.60', '', '0', '', '0', '2', '2', '0', '0', '0', '1557902223', '1557902223');
INSERT INTO `pm_order` VALUES ('2463', '8692', '', '32223317', '70.60', '', '0.00', '64.00', '0.00', '70.60', '0.00', '64.29', '6.60', '6.16', '', '0', '', '0', '3', '2', '0', '0', '0', '1557903740', '1557903740');
INSERT INTO `pm_order` VALUES ('2464', '8732', '13429413356', '31428705', '101.70', '', '0.00', '85.50', '0.00', '101.70', '0.00', '86.10', '16.20', '15.12', '', '0', '', '0', '3', '2', '0', '0', '0', '1557904053', '1557904053');
INSERT INTO `pm_order` VALUES ('2465', '8745', '', '21030849', '126.77', '', '0.00', '109.37', '0.00', '126.77', '0.00', '106.60', '17.40', '16.24', '', '0', '', '0', '3', '2', '0', '0', '0', '1557904065', '1557904065');
INSERT INTO `pm_order` VALUES ('2466', '8692', '', '28204734', '43.00', '', '0.00', '35.20', '0.00', '43.00', '0.00', '35.30', '7.80', '7.28', '', '0', '', '0', '3', '2', '0', '0', '0', '1557904208', '1557904208');
INSERT INTO `pm_order` VALUES ('2468', '9179', '13795334772', '30389499', '427.10', '', '3.60', '427.10', '0.00', '0.00', '427.10', '0.00', '0.00', '51.48', '', '0', '', '0', '2', '2', '0', '0', '0', '1557905127', '1557905127');

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
