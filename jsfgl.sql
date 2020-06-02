/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.30 : Database - jsfgl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jsfgl` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jsfgl`;

/*Table structure for table `admin` */

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL,
  `upwd` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`uname`,`upwd`,`name`) values (1,'admin','123456',NULL);
insert  into `admin`(`id`,`uname`,`upwd`,`name`) values (2,'admin2','123456',NULL);
insert  into `admin`(`id`,`uname`,`upwd`,`name`) values (8,'admin3','123456',NULL);

/*Table structure for table `coach` */

CREATE TABLE `coach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `upwd` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `age` varchar(4) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `zhuanye` varchar(200) DEFAULT NULL,
  `state` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `coach` */

insert  into `coach`(`id`,`url`,`uname`,`upwd`,`name`,`sex`,`age`,`tel`,`zhuanye`,`state`) values (1,'/upload/1575018015376.jpg','jl001','123456','田亮','男','28','18957865822','塑身美体训练、产后恢复训练、运动康复训练',1);
insert  into `coach`(`id`,`url`,`uname`,`upwd`,`name`,`sex`,`age`,`tel`,`zhuanye`,`state`) values (2,'/upload/1575018029358.jpg','jl002','123456','李婷','女','20','15299998484','塑身美体训练、产后恢复训练、运动康复训练',1);
insert  into `coach`(`id`,`url`,`uname`,`upwd`,`name`,`sex`,`age`,`tel`,`zhuanye`,`state`) values (3,'/upload/1575017905844.jpg','jl003','123456','王芳','女','25','18957865821','塑身美体训练、产后恢复训练、运动康复训练',1);
insert  into `coach`(`id`,`url`,`uname`,`upwd`,`name`,`sex`,`age`,`tel`,`zhuanye`,`state`) values (4,'/upload/1575017951051.jpg','hl004','123456','张强','男','21','18957865823','塑身美体训练、产后恢复训练、运动康复训练',1);
insert  into `coach`(`id`,`url`,`uname`,`upwd`,`name`,`sex`,`age`,`tel`,`zhuanye`,`state`) values (5,'/upload/1575017995185.jpg','jl005','123456','刘德华','男','18','18957865824','塑身美体训练、产后恢复训练、运动康复训练',0);

/*Table structure for table `course` */

CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xmid` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `coachid` int(11) DEFAULT NULL,
  `jiage` varchar(20) DEFAULT NULL,
  `state` int(2) DEFAULT NULL,
  `miaoshu` varchar(500) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`id`,`xmid`,`name`,`time`,`url`,`coachid`,`jiage`,`state`,`miaoshu`,`usertype`) values (1,2,'儿童游泳入门','08:30:00-09:00:00','/upload/1575278985347.jpg',1,'200',1,'儿童游泳入门 快乐呀',0);
insert  into `course`(`id`,`xmid`,`name`,`time`,`url`,`coachid`,`jiage`,`state`,`miaoshu`,`usertype`) values (2,1,'团体操','09:30:00-11:00:00','/upload/1575278704270.jpg',2,'300',1,'年轻就要跳起来',0);
insert  into `course`(`id`,`xmid`,`name`,`time`,`url`,`coachid`,`jiage`,`state`,`miaoshu`,`usertype`) values (4,2,'蛙泳','02:30:00-05:00:00','/upload/1575278937844.jpg',1,'200',1,'蛙泳~游啊游',1);
insert  into `course`(`id`,`xmid`,`name`,`time`,`url`,`coachid`,`jiage`,`state`,`miaoshu`,`usertype`) values (5,4,'热瑜伽','15:30:00-16:30:00','/upload/1575366035877.jpg',3,'500',1,'热瑜伽，也叫高温瑜伽、热力瑜伽，就是在38℃-40℃的高温环境中做瑜伽。它由26种伸展动作组成，属于柔韧性运动，能改善脊椎柔软度，适合办公室一族。同时，它藉由一些扭转弯曲伸展的静态动作，直接刺激神经和肌肉系统，可以减轻体重。这种来自美国的热瑜伽，大约2004年开始风靡中国。\r\n\r\n出汗可以带走体表的毒素，净化神经系统。传统的哈他瑜伽和阿斯汤嘎瑜伽以体位姿势使练习者出大量的汗，从而达到排出体内垃圾的目的。热瑜伽的高温环境代替了大量辛苦的练习，普通人进去之后，即使不做任何练习也会出汗。很多明星都靠热瑜伽减肥，国内尝试这种瑜伽体系的人也越来越多。',0);
insert  into `course`(`id`,`xmid`,`name`,`time`,`url`,`coachid`,`jiage`,`state`,`miaoshu`,`usertype`) values (6,4,'民族舞蹈','08:30:00-09:00:00','/upload/1575442451307.jpg',2,'298',1,'民族舞优美，简单',1);
insert  into `course`(`id`,`xmid`,`name`,`time`,`url`,`coachid`,`jiage`,`state`,`miaoshu`,`usertype`) values (7,1,'原地跑','09:30:00-11:00:00','/upload/1575442728885.jpg',3,'200',1,'燃烧你的卡路里',1);

/*Table structure for table `gonggao` */

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `miaoshu` text,
  `cdate` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `usertype` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`name`,`miaoshu`,`cdate`,`uid`,`usertype`) values (1,'圣诞狂欢季，运动我最红！一兆韦德莱美Q4新课程发布','<p>圣诞狂欢季，运动我最红！一兆韦德莱美Q4新课程发布2<img src=\"/ftnsjs//ueditor/jsp/upload/image/20191203/1575366861274005266.jpg\" title=\"1575366861274005266.jpg\" alt=\"52891543307776932.jpg\"/></p>','2019-11-28',NULL,0);
insert  into `gonggao`(`id`,`name`,`miaoshu`,`cdate`,`uid`,`usertype`) values (2,'报名第5季男神女神挑战赛，赢海洋光谱号游轮双人船票！','<p style=\"margin-top: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ΢���ź�, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; line-height: 26px; color: rgb(255, 255, 255); font-size: medium; white-space: normal; background-color: rgb(25, 25, 25); text-align: center;\">100天，不过三个月加8天，做点什么，不做什么，时间都会过去。</p><p style=\"margin-top: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ΢���ź�, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; line-height: 26px; color: rgb(255, 255, 255); font-size: medium; white-space: normal; background-color: rgb(25, 25, 25); text-align: center;\"><strong style=\"max-width: 100%; box-sizing: border-box !important; overflow-wrap: break-word !important;\"><span style=\"max-width: 100%; box-sizing: border-box !important; overflow-wrap: break-word !important;\"></span></strong>做了，或许会有不一样的效果。</p><p style=\"margin-top: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ΢���ź�, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; line-height: 26px; color: rgb(255, 255, 255); font-size: medium; white-space: normal; background-color: rgb(25, 25, 25); text-align: center;\">是的，你发现了吗？ 你看别人，也是第一眼看身材，再去了解内在，说外在不重要的都是骗人的。</p><p style=\"margin-top: 0px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, ΢���ź�, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; line-height: 26px; color: rgb(255, 255, 255); font-size: medium; white-space: normal; background-color: rgb(25, 25, 25); text-align: center;\">100天，和我们一起，选择最难走的一条路。不吃任何花哨的减肥药，唯有教你自律，早起，运动，饮食打卡。</p><p><br/></p>','2019-11-28',NULL,0);
insert  into `gonggao`(`id`,`name`,`miaoshu`,`cdate`,`uid`,`usertype`) values (3,'新手应该如何练三头肌训练计划，3个阶段轻松锻炼','<h2 style=\"box-sizing: border-box; line-height: 1.18421; color: rgb(230, 230, 230); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; margin-top: 42px; margin-bottom: 17px; font-size: 38px; white-space: normal; background-color: rgb(0, 0, 0);\">1. 第一阶段：俯卧撑</h2><p style=\"box-sizing: border-box; margin-top: 18px; margin-bottom: 18px; color: rgb(255, 255, 255); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(0, 0, 0);\">　　新手进行肱三头肌的锻炼，可以先从徒手锻炼动作开始做起，这样我们的身体能够有一个适应的过程，并且能够保证我们在运动的过程中不容易受伤。我们坚持每天完成俯卧撑动作30个一组，每次进行3~5组，在进行锻炼的时候，我们可以将双手距离拉大一些做宽距俯卧撑，这样锻炼的效果会更好。第一阶段的锻炼我们可以进行半个月。</p><p style=\"box-sizing: border-box; margin-top: 18px; margin-bottom: 18px; color: rgb(255, 255, 255); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(0, 0, 0);\">&nbsp;</p><h2 style=\"box-sizing: border-box; line-height: 1.18421; color: rgb(230, 230, 230); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; margin-top: 42px; margin-bottom: 17px; font-size: 38px; white-space: normal; background-color: rgb(0, 0, 0);\">2. 第二阶段：引体向上</h2><p style=\"box-sizing: border-box; margin-top: 18px; margin-bottom: 18px; color: rgb(255, 255, 255); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(0, 0, 0);\">　　引体向上动作虽然也是徒手锻炼动作，但是锻炼的效果更明显，同样动作的难度也比俯卧撑有所升级。一开始我们双手抓杠，两手距离与肩同宽，此时让我们身体能够离开地面。动作开始，我们双手发力，让我们身体能够向上拉伸，直到我们手臂弯曲，让我们的下巴位置能够超过单杆的位置之后，我们再向下放松手臂，重新进行动作。每次坚持完成15个一组，可以进行3组。因为这个动作需要爆发力完成，所以可以在一开始简单拉伸后就进行。</p><p style=\"box-sizing: border-box; margin-top: 18px; margin-bottom: 18px; color: rgb(255, 255, 255); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(0, 0, 0);\">&nbsp;</p><h2 style=\"box-sizing: border-box; line-height: 1.18421; color: rgb(230, 230, 230); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; margin-top: 42px; margin-bottom: 17px; font-size: 38px; white-space: normal; background-color: rgb(0, 0, 0);\">3. 第三阶段：哑铃卧推</h2><p style=\"box-sizing: border-box; margin-top: 18px; margin-bottom: 18px; color: rgb(255, 255, 255); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(0, 0, 0);\">　　这个动作是我们在长凳上进行的，一开始让我们身体平躺好，此时我们双腿放在长凳两侧，保持我们身体平衡的状态。接下来我们双手各握住一只哑铃在手上，并且将双手放松在我们的胸前位置。此时我们深吸一口气之后，将哑铃向上推举，直到我们的手臂伸直为止，然后我们再慢慢放松手臂，回到原来的位置。每次坚持进行20个一组，可以进行3组。</p><p style=\"box-sizing: border-box; margin-top: 18px; margin-bottom: 18px; color: rgb(255, 255, 255); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(0, 0, 0);\">&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 18px; margin-bottom: 18px; color: rgb(255, 255, 255); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(0, 0, 0);\">　　以上就是关于新手肱三头肌训练计划的介绍，如果能够按计划一步步进行，不仅能够保证我们更快适应动作，也能够保证我们在运动时不容易受伤，同时又有良好的锻炼效果。</p><p><br/></p>','2019-11-28',NULL,0);
insert  into `gonggao`(`id`,`name`,`miaoshu`,`cdate`,`uid`,`usertype`) values (4,'男人应该如何练胸部？练胸大肌的器械有哪些？','<h2 style=\"box-sizing: border-box; line-height: 1.18421; color: rgb(230, 230, 230); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; margin-top: 42px; margin-bottom: 17px; font-size: 38px; white-space: normal; background-color: rgb(0, 0, 0);\">一、杠铃卧推</h2><p style=\"box-sizing: border-box; margin-top: 18px; margin-bottom: 18px; color: rgb(255, 255, 255); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(0, 0, 0);\">　　很多人都将杠铃卧推称作“钻石级”的胸肌训练方式，是健身过程中的三大运动方式之一，十分热门。既然受到这么多人的强烈认可，可见它的运动效果非同一般。在做杠铃卧推的时候，要保持自身稳定，挺胸收腹，，大臂和身体的夹角控制在九十度以内是最好的。经常做杠铃卧推，不仅能够强化胸部肌肉，还对整个上肢力量的提升很有帮助。</p><p><br/></p><h2 style=\"box-sizing: border-box; line-height: 1.18421; color: rgb(230, 230, 230); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; margin-top: 42px; margin-bottom: 17px; font-size: 38px; white-space: normal; background-color: rgb(0, 0, 0);\">二、夹胸</h2><p style=\"box-sizing: border-box; margin-top: 18px; margin-bottom: 18px; color: rgb(255, 255, 255); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(0, 0, 0);\">　　虽然经常做杠铃卧推可以有效训练胸大肌，增强肌肉力量，但是，想要拥有健壮且美观的胸大肌，只单纯做杠铃卧推还是远远不够的，最好配合夹胸，这样能够令胸大肌看起来比较协调。做夹胸能够很好地锻炼胸肌中缝，可以借助坐姿器械夹胸或者是绳索夹胸来完成，长此以往，就可以练就颇具美感的胸肌了。</p><p><br/></p><h2 style=\"box-sizing: border-box; line-height: 1.18421; color: rgb(230, 230, 230); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; margin-top: 42px; margin-bottom: 17px; font-size: 38px; white-space: normal; background-color: rgb(0, 0, 0);\">三、俯卧撑</h2><p style=\"box-sizing: border-box; margin-top: 18px; margin-bottom: 18px; color: rgb(255, 255, 255); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Lantinghei SC&quot;, &quot;Open Sans&quot;, Arial, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;WenQuanYi Micro Hei&quot;, SimSun, sans-serif; font-size: 15px; white-space: normal; background-color: rgb(0, 0, 0);\">　　俯卧撑是一个老生常谈的健身动作了，即便如此，还是要强调一下，这真的是一个很全能的运动方式，不仅可以运动到全身的很多地方，尤其对胸大肌的锻炼十分奏效。只要能够坚持做下来，每组从二十个提升到五十个，之后再增加到一百个，不仅能够练出饱满坚实的胸大肌，腹肌也会呈现。在做俯卧撑的时候切记急躁，要给肌肉适当的休息。</p><p><br/></p>','2019-11-29',1,1);

/*Table structure for table `jilu` */

CREATE TABLE `jilu` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `uid` int(200) DEFAULT NULL,
  `qian` int(11) DEFAULT NULL,
  `cdate` varchar(50) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `jilu` */

insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (1,2,200,'2019-01-01 15:20:31',1);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (2,2,50,'2019-01-02 15:20:31',0);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (9,2,20,'2019-02-19 17:21:35',1);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (8,2,20,'2019-02-19 17:20:13',1);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (10,2,20,'2019-02-19 17:22:24',1);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (11,2,3000,'2019-02-19 22:49:14',1);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (12,2,80,'2019-02-20 00:21:44',0);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (13,2,20,'2019-12-03 17:30:18',1);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (18,2,300,'2019-12-04 15:44:52',0);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (17,29,200,'2019-12-04 15:43:27',0);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (16,29,4000,'2019-12-04 15:20:53',1);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (19,29,20,'2019-12-04 15:49:13',1);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (20,29,20,'2019-12-04 15:53:22',1);
insert  into `jilu`(`id`,`uid`,`qian`,`cdate`,`type`) values (21,29,200,'2019-12-04 15:59:01',0);

/*Table structure for table `qicai` */

CREATE TABLE `qicai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `changjia` varchar(200) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `qicai` */

insert  into `qicai`(`id`,`name`,`changjia`,`time`,`state`) values (2,'跑步机','双星','2019-11-06','使用中');
insert  into `qicai`(`id`,`name`,`changjia`,`time`,`state`) values (3,'动感单车2','凤凰','2019-10-29','维护');
insert  into `qicai`(`id`,`name`,`changjia`,`time`,`state`) values (4,'哑铃','红双喜','2019-01-29','停止使用');
insert  into `qicai`(`id`,`name`,`changjia`,`time`,`state`) values (5,'瑜伽垫','双星','2019-10-31','维护');
insert  into `qicai`(`id`,`name`,`changjia`,`time`,`state`) values (6,'钢管','双星','2019-11-12','使用中');

/*Table structure for table `torder` */

CREATE TABLE `torder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL COMMENT '课程id',
  `coachid` int(11) DEFAULT NULL COMMENT '教练did',
  `feiyong` int(11) DEFAULT NULL,
  `cdate` varchar(50) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `torder` */

insert  into `torder`(`id`,`uid`,`courseid`,`coachid`,`feiyong`,`cdate`,`tel`,`state`) values (2,2,1,1,80,'2019-02-20 00:12:01','15299998484','完成');
insert  into `torder`(`id`,`uid`,`courseid`,`coachid`,`feiyong`,`cdate`,`tel`,`state`) values (3,29,7,3,200,'2019-12-04 15:42:51','18957865829','完成');
insert  into `torder`(`id`,`uid`,`courseid`,`coachid`,`feiyong`,`cdate`,`tel`,`state`) values (4,2,2,2,300,'2019-12-04 15:44:38','15299998484','完成');
insert  into `torder`(`id`,`uid`,`courseid`,`coachid`,`feiyong`,`cdate`,`tel`,`state`) values (5,29,4,1,200,'2019-12-04 15:49:35','18957865829','完成');

/*Table structure for table `user` */

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL,
  `upwd` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `jifen` int(11) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`uname`,`upwd`,`name`,`sex`,`age`,`tel`,`jifen`,`url`) values (1,'bnbn','123456','张小小','女',22,'18192473246',100,NULL);
insert  into `user`(`id`,`uname`,`upwd`,`name`,`sex`,`age`,`tel`,`jifen`,`url`) values (2,'zhangdapang','123456','张学友','男',27,'15299998484',3220,NULL);
insert  into `user`(`id`,`uname`,`upwd`,`name`,`sex`,`age`,`tel`,`jifen`,`url`) values (29,'limeili','123456','李美丽','女',18,'18957865829',4040,NULL);

/*Table structure for table `xiangmu` */

CREATE TABLE `xiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `miaoshu` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `xiangmu` */

insert  into `xiangmu`(`id`,`name`,`miaoshu`) values (1,'跑步','跑步2');
insert  into `xiangmu`(`id`,`name`,`miaoshu`) values (2,'游泳','游泳');
insert  into `xiangmu`(`id`,`name`,`miaoshu`) values (3,'单车','单车');
insert  into `xiangmu`(`id`,`name`,`miaoshu`) values (4,'瑜伽','热瑜伽，普拉提，空中瑜伽');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
