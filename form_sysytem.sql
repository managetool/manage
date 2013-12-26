-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 09 月 05 日 06:46
-- 服务器版本: 5.1.66-community
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `form_sysytem`
--

-- --------------------------------------------------------

--
-- 表的结构 `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `byuser` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `desc` text,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `from` varchar(15) DEFAULT NULL,
  `fromid` int(10) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `homepage` varchar(200) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `from` varchar(15) DEFAULT NULL,
  `fromid` int(10) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentname` varchar(20) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `department`
--

INSERT INTO `department` (`id`, `departmentname`) VALUES
(18, '方案团队'),
(19, '拓展团队'),
(22, '市场团队');

-- --------------------------------------------------------

--
-- 表的结构 `development`
--

CREATE TABLE IF NOT EXISTS `development` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `product` varchar(150) DEFAULT NULL,
  `industry` varchar(150) CHARACTER SET gb2312 DEFAULT NULL,
  `analysis` text CHARACTER SET utf8,
  `byuser` varchar(100) DEFAULT NULL,
  `contact` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `homepage` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  `from` varchar(10) CHARACTER SET utf8 DEFAULT '0',
  `fromid` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=135 ;

--
-- 转存表中的数据 `development`
--

INSERT INTO `development` (`id`, `name`, `product`, `industry`, `analysis`, `byuser`, `contact`, `address`, `email`, `tel`, `phone`, `homepage`, `dateline`, `from`, `fromid`, `status`) VALUES
(8, '上海尹捷网络科技有限公司（点击互联）', '淘宝版APP、企业版APP', '展示宣传', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376623180, '1', NULL, 1),
(14, '深圳市创新飞网络科技有限公司', '生成平台类行业应用', '生成平台类', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1376582400, '0', NULL, 1),
(15, '深圳市谷美品牌设计有限公司', '行业应用', '无', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1376582400, '1', NULL, 1),
(17, '深圳天络科技有限公司', '提供多种解决方案和终端设备的应用', '全行业', '提供多种解决方案和终端设备的应用。涉及行业包括政府、购物商场、网店、商业社区、证?金融、期刊杂志、企业产品宣传等。', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1376582400, '1', NULL, 1),
(19, '上海绽曙信息技术有限公司', 'iPad开发、iPhone开发、Android开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(20, '成都初唐网络科技有限公司', '微信通', '微信推广', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(21, '成都西奎科技有限公司', '幸福瞬间\\时尚手机杂志、水星家纺 APP', '展示宣传', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(22, '广州寅维信息科技有限公司', 'APP全行业解决方案', 'APP全行业开发', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(23, '广州智品网络科技有限公司', '易管理', '地产行业 旅游行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(24, '哈尔滨优智科技有限公司', 'iPhone本地优惠App、iPad在线教育App、iPad建筑工业App', '生成平台', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(25, '上海金仕达卫宁软件有限公司', '移动临床助手', '医疗行业', '为医疗卫生行业信息化提供整体解决方案', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(26, '上海科匠信息科技有限公司（蓝色互动）', '移动金融、远程医疗、智慧旅游', 'APP全行业开发', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(27, '启汇网络有限公司', 'APP开发+推广', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(28, '北京指动乾坤网络科技有限公司', 'APP定制开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(29, '三道科技上海子公司', 'APP定制开发', '医疗行业、餐饮娱乐、教育行业解决方案', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(30, '深圳市生晟科技有限公司', '全行业解决方案', '美发行业、婚纱摄影行业、餐饮美食行业', '全行业解决方案', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(100, '北京爱图腾科技有限公司', '智慧深圳、城市昆山', 'app开发、智慧城市', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '1', NULL, 1),
(101, '深圳市创新易联网络技术有限公司', '定制开发、UI设计', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '0', NULL, 1),
(31, '北京辕帆创想信息技术有限公司', '标准化产品', '企业宣传', '企业宣传APP解决方案', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(32, '北京掌上通网络技术股份有限公司', '移动商务通', '移动商务', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(33, '彩程设计', 'tower.im', '项目协作工具', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(34, '创软科技', 'APP定制开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(35, '上海优辉网络有限公司', 'APP定制开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(45, '北京掌动乾坤科技有限公司', '汽车（BMW MINI高级定制、起亚）、服装（HM、韩都衣舍、唯品会）', '汽车、服装', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(42, '广州火鹰信息科技有限公司', '协会app、电商app', 'app开发+行业解决方案', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(43, '上海乐搜信息科技有限公司', '外包服务', '定制开发', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(44, '广州市酷蜂教育科技有限公司', '智能医疗系统、ERP管理系统、三维数码动画制作、手机广告投放', '智能医疗系统、ERP管理系统', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(39, '沈阳德铭源科技', '定制开发', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1376582400, '0', NULL, 1),
(40, '上海尹捷网', '请问请问', '请问请问', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1368979200, '1', NULL, 1),
(41, '上海机锋信息科技有限公司', 'APP定制开发', 'APP定制开发', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(46, '安徽开源软件', '微博型企业内部社交系统 、Anhui OSS 开源解决方案', '社交系统', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(47, '北京天智通达信息技术有限公司', 'appstore  top10电子杂志', '电子杂志', '电子杂志生成平台', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(48, '北京金山', '金山云', '云服务', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(49, '成都海顿软件技术有限责任公司', '棋牌游戏、3D益智游戏、AR现实增强、体感平台、移动办公系统方面', '游戏开发', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(50, '成都视腾科技有限公司', '全行业解决方案', 'app开发+系统集成', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(61, '成都睿峰科技有限公司', '工行ipad系统', '移动银行系统、金融、app开发', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, '1', NULL, 1),
(51, '深圳工作家网络科技有限公司', 'iworker', '企业管理', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(52, '联康软件系统（上海）有限公司', '金融、基金ERP系统', '银行、保险等金融行业、手机旅游平台', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 0),
(53, '联康软件系统（上海）有限公司', '金融、基金ERP系统', '银行、保险等金融行业、手机旅游平台', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(54, '上海爱读信息技术有限公司', '爱读平台', '电子阅读', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(55, '上海叮铃铃信息技术有限公司', '手机电商平台', '电商', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(56, '成都金元卓科技有限公司', '全案解决', '定制开发', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(57, '上海未星网络科技有限公司', '全案解决', '定制开发', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(58, '上海悦点信息科技有限公司', '全案解决', '定制开发', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(59, '上海移品信息技术有限公司', '品牌会员互动App', '品牌展示', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '1', NULL, 1),
(60, '中联信通科技有限公司', '银联手机支付平台、卡卡联', '小额支付', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, '0', NULL, 1),
(62, '百度用户产品市场部', '百度云', '企业级云服务', '一直有跟电信合同的期望，没有确切的切入点。', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, '0', NULL, 1),
(63, '重庆软媒科技有限公司', '医院，出版社APP', '医院，出版社', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, '0', NULL, 1),
(64, '广州市联科软件有限公司', '', '', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, '0', NULL, 1),
(65, '企讯恒通(北京)科技有限公司', 'APP开发', '全行业', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, '0', NULL, 1),
(66, '北京亿美软通科技有限公司', '企信通', '通讯产品，企业OA', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, '0', NULL, 1),
(67, 'Aim', 'APP定制开发', '全行业', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, '0', NULL, 1),
(68, '931app工厂', 'APP开发', '全行业', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, '0', NULL, 1),
(69, '天翼优加', 'APP孵化器', '全案解决', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '1', NULL, 1),
(70, '成都易迅通信息技术发展有限公司', '360°全景展示', '全案解决', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(71, '天津易商互动软件技术咨询有限公司', '电子商务解决方案', '电子商务', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(72, '西安弈聪信息技术有限公司', '移动OA整体解决方案', '移动OA办公', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(73, '西部世纪软件股份有限公司（西安总公司）', '石油化工行业解决方案', '石油、化工重工业', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(74, '行绿科技', '航空方面OA', '航空', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(75, '汇思软件（上海）有限公司广州分公司', '在线培训解决方案', '培训教育', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(76, '英诺APP', '产品开发', '全案解决', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(77, '无锡曼荼罗软件有限公司', '移动医疗信息解决方案', '医疗', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(78, '苏州华冠科技有限公司', '外包开发、软件测试', '全案解决', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(79, '成都天际锐思科技有限责任公司', '室内导航', '基于LBS全案解决', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(80, '上海即富信息技术服务有限公司', '即付宝', '金融小额支付', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(82, '深圳市专购科技有限公司', '定制开发', '企业、学校、政府、骑车、家居、教育、房地产、物业', '企业形象客户端,校园形象客户端,政府形象客户端,汽车销售展示客户端,家居展示客户端,教育培训客户端,房地产楼盘客户端,物业服务公司客户端,平板/手机办公客户端,平板/手机办公系统,以上业务的开发系统(含ios /Android /Windows phone)不限，可根据客户的需求定制开发.', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(83, '深圳市联芯嵌入式软件有限公司', 'AR虚拟增强现实技术服务类', '汽车智能终端技术解决方案、工业平板及手持终端技术解决方案', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(84, '唐宋中国', '品牌策划、创意设计以及互联网数字行销解决方案。', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(85, '东莞市东信网络技术有限公司', '移动营销应用推广服务、APP开发', '地产/服装行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '1', NULL, 1),
(86, '上海微创软件有限公司', '企业客户管理类、企业协同办公类', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(87, '顶呱呱集团', '定制开发', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(88, '深圳市华移科技有限公司', '移动电子政务类、移动电子商务与支付类、app软件外包开发服务', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '1', NULL, 1),
(89, '西安泰为软件有限公司', '定制开发', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(90, '西安华宏软件有限公司', '节能、安防、面部识别、消防、防雷产品', '节能、安防、面部识别、消防、防雷', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, '0', NULL, 1),
(102, '上海森域信息技术有限公司', '移动解决方案、电子杂志', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '0', NULL, 1),
(91, '成都勇创软件有限公司', 'APP定制开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '0', NULL, 1),
(92, '成都思远网络技术有限公司', 'APP定制开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '0', NULL, 1),
(93, '四川联盛咨询有限公司', 'APP定制开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '0', NULL, 1),
(94, '上海百微科技有限公司', '移动办公\\移动执法\\电子点餐系统', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '0', NULL, 1),
(95, '风华正茂科技（北京）有限', '网页建站，APP定制开发，网站推广', '全行业（中小企业）', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '0', NULL, 1),
(96, '北京润乾软件技术有限公司', '报表系统软件', '全行业（中小企业）', '全行业（中小企业）报表系统软件开发商，目前进入移动端产品的开发阶段。', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '0', NULL, 1),
(97, '北京北大软件工程发展有限公司', '大型企业，党政机关系统软件开发', '全行业(大型企业)', '客户产品设计多个大型企业和党政机关', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '0', NULL, 1),
(98, '安卓联航软件科技（北京）有限公司', '定制开发', '办公，保险，车载，图像，多媒体，即时通信', '手机行业，智能电视，企业级APP定制开发', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '0', NULL, 1),
(99, '成都定制通软件', 'AR虚拟增强现实技术服务类', '为中小企业专门打造的移动办公平台', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '1', NULL, 1),
(103, '广州聆科网络技术有限公司', '定制开发、微信营销', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '0', NULL, 1),
(104, '广州市飞旭软件开发有限公司', 'iPad点菜通、IPAD展销系统（珠宝行业、首饰、头饰行业）', '展示宣传', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, '0', NULL, 1),
(105, '成都都会文化传播有限公司', '运营服务', '运营服务', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377619200, '0', NULL, 1),
(106, '北京达盈星联科技有限公司', '微信营销', '营销', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377619200, '0', NULL, 1),
(107, '深圳市飞天网景通讯有限公司', '产品开发', '全案解决', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377619200, '0', NULL, 1),
(108, '成都光合视效文化传媒有限公司', 'APP定制开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1377619200, '0', NULL, 1),
(109, '深圳市画晨通科技有限公司', '定制开发', '全行业', '官网 http://www.zwmob.com/index.html   移动电商（B2C）解决方案、移动视频解决方案、无线城市解决方案、移动金融解决方案、移动博物馆解决方案、超市掌尚购解决方案', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377619200, '0', NULL, 1),
(110, '江苏省在这里数字科技有限公司', '政府应用合作 | 行业平台合作 | 企业商务合作 |', '3D技术应用', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1377619200, '0', NULL, 1),
(111, '成都佳诺广告有限公司', '旺铺助手', '全行业（中小企业）', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377705600, '0', NULL, 1),
(112, '上海帝森网络科技有限公司', '汽车检测APP（T-eCRM）', '汽车检测APP', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1375891200, '0', NULL, 1),
(113, '四川启网科技有限公司', '企业营销服务', '全行业（中小企业）', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377705600, '0', NULL, 1),
(114, '深圳赛美无限科技有限公司', '摇摇免费', '移动营销', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377619200, '0', NULL, 1),
(115, '武大吉奥信息技术有限公司', '基于LBS产品', '基于LBS全案解决', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377619200, '0', NULL, 0),
(116, '海南天涯在线网络科技有限公司', '推广服务', '应用推广', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377705600, '0', NULL, 1),
(117, '网龙网络有限公司', '移动游戏产品', '网络游戏', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377619200, '0', NULL, 0),
(118, '昌荣传媒', '综合广告和媒体服务', '全行业', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1376496000, '0', NULL, 1),
(119, '上海新致软件', '全行业解决方案', 'app开发+系统集成', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1377705600, '1', NULL, 1),
(122, '北京掌阔移动传媒科技有限公司(安沃传媒)', '移动广告解决方案', '移动广告', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1377014400, '0', NULL, 1),
(121, '深圳市合强创华科技有限公司', '企业移动门户、地产客户端、智慧城市客户端、电子商务、旅游客户端、掌中智能体验厅', '平台产品、定制开发', 'http://www.unitepower.net/', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377705600, '0', NULL, 1),
(125, '深圳蓝叶软件开发有限公司', '定制开发', '电商', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1378051200, '0', NULL, 1),
(126, '深圳移商动力电子商务有限公司', 'APP开发', '', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1378137600, '0', NULL, 1),
(127, '传承盛世信息科技有限公司', '产品开发', '企事业组织、电商、媒体', '商户&企业APP开发解决方案方案对象客户：\r\n- 商户/企业/非盈利性机构\r\n\r\n淘宝网店导购APP解决方案对象客户：\r\n-淘宝卖家/各类电子商务平台卖家\r\n- 传统卖家\r\n\r\nWeMedia+自媒体手机客户端解决方案对象客户：\r\n- 媒体机构/内容出版商\r\n- 名人/媒体人/博客博主', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1378137600, '0', NULL, 0),
(128, '杭州天迈网络有限公司', '旅游产品开发', '旅游', '杭州天迈网络有限公司成立于2009年，是一家专注于iPhone、Android智能手机旅游类应用开发的移动互联网企业，具有国内领先的技术、自有知识产权、自主创新 产品，全国首推“云导游”概念。', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1378137600, '0', NULL, 1),
(129, 'csdn', 'APP定制开发', '全行业', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1378137600, '0', NULL, 1),
(130, '精度天下科技', '模块产品、定制开发', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1378224000, '0', NULL, 1),
(131, '深圳艾腾生科技有限公司', '定制开发', '', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1378224000, '0', NULL, 0),
(132, 'EVE design', 'UI/UE', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1378224000, '0', NULL, 0),
(133, '四川金明科技发展有限公司', 'APP定制开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1378310400, '0', NULL, 0),
(134, '成都锐杰', 'IPAD虚拟展示', 'APP全行业开发', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1378310400, '0', NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `expand`
--

CREATE TABLE IF NOT EXISTS `expand` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `share` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL,
  `nameid` int(10) NOT NULL,
  `wish` tinyint(1) NOT NULL DEFAULT '0',
  `schedule` int(2) NOT NULL,
  `result` varchar(200) DEFAULT NULL,
  `finishtime` int(10) DEFAULT '0',
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=109 ;

--
-- 转存表中的数据 `expand`
--

INSERT INTO `expand` (`id`, `username`, `type`, `share`, `name`, `nameid`, `wish`, `schedule`, `result`, `finishtime`, `dateline`) VALUES
(2, 'fangchao', 'APP开发', 0, '上海科匠信息科技有限公司（蓝色互动）', 26, 1, 20, '', 0, 1376582400),
(4, 'pengyueyi', '定制开发', 0, '深圳市谷美品牌设计有限公司', 15, 1, 100, '电子流程中', 1375286400, 1376582400),
(5, 'pengyueyi', '定制开发', 0, '深圳天络科技有限公司', 17, 0, 20, '等对方决策者出差回来', 0, 1376582400),
(6, 'pengyueyi', '定制开发', 0, '沈阳德铭源科技', 18, 1, 80, '认同合作模式，沟通框架协议中', 0, 1376582400),
(7, 'pengyueyi', '定制开发和标准产品', 0, '深圳市创新飞网络科技有限公司', 14, 1, 80, '框架协议沟通中', 0, 1377248384),
(8, 'liuzhongqiu', 'APP定制开发', 0, '上海机锋信息科技有限公司', 41, 1, 100, '合作协议正在走电子流程', 1375286400, 1376582400),
(9, 'liuzhongqiu', '外包服务', 0, '上海乐搜信息科技有限公司', 43, 1, 100, '服务商正在准备企业资质信息', 0, 1376582400),
(10, 'luodehao', '电子杂志', 1, '北京天智通达信息技术有限公司', 47, 1, 50, '协议需要审批', 0, 1376582400),
(11, 'luodehao', '集成系统', 0, '安徽开源软件', 46, 1, 100, '已给', 0, 1377766953),
(12, 'luodehao', 'app开发', 0, '北京掌动乾坤科技有限公司', 45, 1, 50, '', 0, 1377570160),
(13, 'luodehao', 'app开发', 0, '广州市酷蜂教育科技有限公司', 44, 0, 20, '', 0, 1376582400),
(14, 'luodehao', 'app开发', 1, '广州火鹰信息科技有限公司', 42, 1, 20, '', 0, 1376582400),
(15, 'luodehao', '云服务', 1, '北京金山', 48, 1, 90, '确定价格6折。但是，最后的协议内容协调不能达成一致。', 0, 1376582400),
(16, 'luodehao', 'app开发', 1, '成都海顿软件技术有限责任公司', 49, 1, 80, '', 0, 1376582400),
(17, 'luodehao', 'app开发+系统集成', 1, '成都视腾科技有限公司', 50, 1, 90, '以新注册公司进行签订，准备协议内容', 0, 1376582400),
(18, 'luodehao', '企业产品服务', 0, '深圳工作家网络科技有限公司', 51, 1, 80, '我们这边进行产品测试阶段，对方有pc端后台。', 0, 1377682545),
(19, 'liuzhongqiu', '针对日本市场做外包', 0, '联康软件系统（上海）有限公司', 53, 1, 5, '对合作无兴趣', 0, 1376582400),
(20, 'liuzhongqiu', '产品运营', 0, '上海爱读信息技术有限公司', 54, 1, 50, '服务商合作协议沟通中', 0, 1376582400),
(21, 'liuzhongqiu', '手机平台开发', 0, '上海叮铃铃信息技术有限公司', 55, 0, 20, '', 0, 1376582400),
(22, 'liuzhongqiu', '外包服务', 0, '成都金元卓科技有限公司', 56, 0, 20, '', 0, 1376582400),
(23, 'liuzhongqiu', '移动全营销、全案代运营', 1, '上海未星网络科技有限公司', 57, 0, 20, '', 0, 1376582400),
(24, 'liuzhongqiu', '外包服务', 0, '上海悦点信息科技有限公司', 58, 0, 20, '', 0, 1376582400),
(25, 'liuzhongqiu', '定制开发', 0, '上海移品信息技术有限公司', 59, 0, 20, '沟通合作协议', 0, 1376582400),
(26, 'liuzhongqiu', '平台运营', 0, '中联信通科技有限公司', 60, 1, 80, '沟通合作细节', 0, 1376582400),
(99, 'luodehao', '集成系统', 1, '上海新致软件', 119, 1, 100, '', 0, 1377767065),
(27, 'luodehao', 'app开发', 1, '成都睿峰科技有限公司', 61, 1, 100, '', 0, 1377248539),
(28, 'pengyueyi', '', 1, '广州市联科软件有限公司', 64, 0, 5, '', 0, 1377744469),
(29, 'liyuting', '服务商', 0, '重庆软媒科技有限公司', 63, 1, 20, '', 0, 1377249150),
(30, 'liuzhongqiu', 'APP快速生成', 0, '天翼优加', 69, 1, 100, '', 0, 1377421820),
(31, 'liuzhongqiu', '产品开发', 0, '成都易迅通信息技术发展有限公司', 70, 1, 100, '', 0, 1377422012),
(32, 'liuzhongqiu', '企业级电子商务解决方案', 0, '天津易商互动软件技术咨询有限公司', 71, 0, 5, '', 0, 1377422168),
(33, 'liuzhongqiu', '定制开发', 0, '西安弈聪信息技术有限公司', 72, 0, 5, '', 0, 1377422292),
(34, 'liuzhongqiu', '定制开发', 0, '西部世纪软件股份有限公司（西安总公司）', 73, 0, 5, '', 0, 1377422417),
(35, 'liuzhongqiu', '定制开发', 0, '行绿科技', 74, 0, 5, '', 0, 1377422487),
(36, 'liuzhongqiu', '自有产品销售', 0, '汇思软件（上海）有限公司广州分公司', 75, 0, 5, '', 0, 1377422569),
(37, 'liuzhongqiu', '定制开发', 1, '英诺APP', 76, 0, 5, '', 0, 1377422662),
(38, 'liuzhongqiu', '自有产品销售', 0, '无锡曼荼罗软件有限公司', 77, 0, 20, '', 0, 1377826262),
(39, 'liuzhongqiu', '外包服务', 0, '苏州华冠科技有限公司', 78, 0, 5, '', 0, 1377422821),
(40, 'liuzhongqiu', '平台运营', 0, '成都天际锐思科技有限责任公司', 79, 1, 20, '', 0, 1377422921),
(41, 'liuzhongqiu', '自有产品销售', 0, '上海即富信息技术服务有限公司', 80, 1, 100, '', 0, 1377423472),
(42, 'pengyueyi', '', 0, '西安华宏软件有限公司', 90, 0, 5, '不合作', 0, 1377441866),
(43, 'pengyueyi', '', 0, '西安泰为软件有限公司', 89, 0, 20, '不做国内开发', 0, 1377442178),
(44, 'pengyueyi', '', 0, '深圳市华移科技有限公司', 88, 0, 20, '无合作意向', 0, 1377441935),
(45, 'pengyueyi', '', 0, '顶呱呱集团', 87, 0, 20, '无合作意向', 0, 1377441953),
(46, 'pengyueyi', '', 0, '上海微创软件有限公司', 86, 0, 20, '无合作意向', 0, 1377441969),
(47, 'pengyueyi', '', 0, '东莞市东信网络技术有限公司', 85, 0, 20, '', 0, 1377442023),
(48, 'pengyueyi', '', 0, '唐宋中国', 84, 0, 5, '初次接触', 0, 1377442043),
(49, 'pengyueyi', '', 0, '深圳市联芯嵌入式软件有限公司', 83, 0, 20, '有需求再找我们', 0, 1377442065),
(50, 'pengyueyi', '', 0, '深圳市专购科技有限公司', 82, 0, 20, '持续跟进中', 0, 1377442081),
(85, 'pengyueyi', '定制开发、UI设计', 0, '深圳市创新易联网络技术有限公司', 101, 0, 20, '合作意愿度低，有需求再合作', 0, 1378282197),
(84, 'luodehao', 'app开发', 0, '北京爱图腾科技有限公司', 100, 1, 80, '', 0, 1377682616),
(53, 'fangchao', '标准版APP开发', 0, '上海尹捷网络科技有限公司（点击互联）', 8, 1, 90, '等对方资质等相关资料', 0, 1377481801),
(54, 'fangchao', '软件开发，网站开发', 0, '上海优辉网络有限公司', 35, 0, 5, '', 0, 1377481488),
(55, 'fangchao', 'APP开发', 0, '上海绽曙信息技术有限公司', 19, 1, 5, '', 0, 1377481623),
(56, 'fangchao', 'APP开发、推广', 0, '成都初唐网络科技有限公司', 20, 0, 20, '已拒绝', 0, 1377674482),
(57, 'fangchao', 'App定制开发', 0, '成都西奎科技有限公司', 21, 0, 5, '', 0, 1377481767),
(58, 'fangchao', '软件销售、APP开发', 0, '广州寅维信息科技有限公司', 22, 0, 5, '', 0, 1377481889),
(59, 'liyuting', '有企业通讯软件', 1, '北京亿美软通科技有限公司', 66, 0, 5, '', 0, 1377481968),
(60, 'fangchao', 'App定制开发及销售成熟APP产品', 0, '广州智品网络科技有限公司', 23, 0, 80, '', 0, 1377765892),
(61, 'liyuting', '云服务能力提供商', 0, '百度用户产品市场部', 62, 1, 50, '', 0, 1377482035),
(62, 'fangchao', '以APP外包为主，卖模板化产品为辅', 0, '哈尔滨优智科技有限公司', 24, 0, 20, '领导出差，等领导回来后确定', 0, 1377482070),
(63, 'liyuting', '全行业（传统企业和互联网企业都有）', 1, '931app工厂', 68, 1, 20, '', 0, 1377482134),
(64, 'fangchao', '为医疗卫生行业信息化提供整体解决方案', 0, '上海金仕达卫宁软件有限公司', 25, 1, 20, '', 0, 1377482167),
(65, 'liyuting', '全行业APP开发', 0, 'Aim', 67, 1, 5, '', 0, 1377482189),
(66, 'fangchao', 'App定制开发', 0, '启汇网络有限公司', 27, 0, 5, '', 0, 1377482238),
(67, 'liyuting', '全行业APP开发', 0, '企讯恒通(北京)科技有限公司', 65, 0, 20, '', 0, 1377482255),
(68, 'fangchao', 'App定制开发', 0, '北京指动乾坤网络科技有限公司', 28, 1, 20, '', 0, 1377482288),
(69, 'fangchao', 'APP开发', 0, '三道科技上海子公司', 29, 0, 5, '', 0, 1377482345),
(70, 'fangchao', '软件开发', 0, '上海百微科技有限公司', 94, 0, 5, '', 0, 1377482700),
(71, 'fangchao', '软件开发、网站建设', 0, '四川联盛咨询有限公司', 93, 0, 5, '', 0, 1377482732),
(72, 'fangchao', '软件开发', 0, '成都思远网络技术有限公司', 92, 0, 5, '', 0, 1377482765),
(73, 'fangchao', '软件开发', 0, '成都勇创软件有限公司', 91, 0, 5, '', 0, 1377482797),
(74, 'fangchao', 'APP开发', 0, '北京掌上通网络技术股份有限公司', 32, 0, 5, '', 0, 1377482846),
(75, 'liyuting', '服务商', 1, '北京北大软件工程发展有限公司', 97, 0, 5, '客户自有客户群体已经足够大，对我们的平台级持观望状态。', 0, 1377482955),
(76, 'fangchao', 'APP标准化、定制化开发', 0, '北京辕帆创想信息技术有限公司', 31, 0, 5, '', 0, 1377482905),
(77, 'liyuting', '服务商', 0, '安卓联航软件科技（北京）有限公司', 98, 0, 20, '对平台能提供的资源敢兴趣，保持进一步沟通。', 0, 1377482969),
(78, 'fangchao', 'APP开发', 0, '深圳市生晟科技有限公司', 30, 0, 5, '', 0, 1377482954),
(79, 'fangchao', '软件开发', 0, '创软科技', 34, 0, 5, '', 0, 1377482983),
(80, 'liyuting', '系统报表软件提供长', 0, '北京润乾软件技术有限公司', 96, 0, 5, '', 0, 1377483040),
(81, 'liyuting', 'tower办公软件的合作', 0, '彩程设计', 33, 1, 80, '', 0, 1377678285),
(82, 'liyuting', '中小企业网站开发，和ＡＰＰ定制开发', 0, '风华正茂科技（北京）有限', 95, 0, 5, '', 0, 1377483127),
(83, 'pengyueyi', '定制开发', 0, '成都定制通软件', 99, 0, 20, '无合作意向', 0, 1377483704),
(86, 'pengyueyi', '解决方案、电子杂志', 0, '上海森域信息技术有限公司', 102, 0, 90, '协议洽谈中', 0, 1377675353),
(87, 'fangchao', '软件开发\\代理产品', 0, '广州市飞旭软件开发有限公司', 104, 0, 80, '', 0, 1378258449),
(88, 'pengyueyi', '定制开发、微信营销', 0, '广州聆科网络技术有限公司', 103, 0, 50, '协议沟通中', 0, 1377678516),
(89, 'liuzhongqiu', 'APP运营', 0, '成都都会文化传播有限公司', 105, 1, 100, '', 0, 1377654555),
(90, 'liuzhongqiu', '产品开发', 0, '北京达盈星联科技有限公司', 106, 1, 90, '', 0, 1377766659),
(91, 'liuzhongqiu', '产品外包开发', 0, '深圳市飞天网景通讯有限公司', 107, 1, 80, '', 0, 1377654999),
(92, 'fangchao', 'APP开发', 0, '成都光合视效文化传媒有限公司', 108, 1, 80, '', 0, 1377673811),
(93, 'pengyueyi', '定制开发、解决方案', 0, '深圳市画晨通科技有限公司', 109, 0, 50, '沟通合同内容，准备公司资质信息', 0, 1378263012),
(94, 'luodehao', '3D技术应用', 0, '江苏省在这里数字科技有限公司', 110, 1, 50, '', 0, 1377767088),
(95, 'liyuting', '旺铺助手的合作', 0, '成都佳诺广告有限公司', 111, 1, 80, '', 0, 1377755916),
(96, 'liuzhongqiu', '自有产品销售', 0, '上海帝森网络科技有限公司', 112, 1, 80, '', 0, 1377756388),
(97, 'liyuting', '企业营销服务提供商', 0, '四川启网科技有限公司', 113, 1, 80, '', 0, 1377756439),
(98, 'liyuting', '综合广告和媒体服务提供', 1, '昌荣传媒', 118, 1, 80, '', 0, 1377764835),
(100, 'pengyueyi', '平台产品、定制开发', 0, '深圳市合强创华科技有限公司', 121, 0, 50, '转交同事负责，等反馈。', 0, 1378107358),
(101, 'pengyueyi', '定制开发', 0, '深圳蓝叶软件开发有限公司', 125, 0, 20, '初步洽谈合作模式，对方找领导反馈', 0, 1378106450),
(102, 'liuzhongqiu', '平台产品运营', 0, '深圳赛美无限科技有限公司', 114, 1, 50, '正在完善合作协议信息，准备公司资质信息。', 0, 1378175837),
(103, 'pengyueyi', '定制开发', 0, '深圳移商动力电子商务有限公司', 126, 1, 20, '', 0, 1378191979),
(104, 'liuzhongqiu', '旅游定制开发', 0, '杭州天迈网络有限公司', 128, 1, 5, '', 0, 1378198244),
(105, 'liyuting', '服务商', 0, 'csdn', 129, 0, 50, '', 0, 1378259876),
(106, 'fangchao', '移动传媒', 0, '北京掌阔移动传媒科技有限公司(安沃传媒)', 122, 1, 5, '', 0, 1378280105),
(107, 'pengyueyi', '模块产品、定制开发', 0, '精度天下科技', 130, 0, 20, '合作意愿低，有需求再找我们。', 0, 1378281911),
(108, 'liuzhongqiu', '推广服务', 0, '海南天涯在线网络科技有限公司', 116, 0, 5, '初次接触', 0, 1378360891);

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `customerid` int(10) DEFAULT NULL,
  `fangan_agentid` int(10) DEFAULT NULL,
  `jieshao_agentid` int(10) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `money` float(10,2) DEFAULT '0.00',
  `income` float(10,2) DEFAULT NULL,
  `byuser` varchar(100) DEFAULT NULL,
  `desc` text,
  `beiz` text,
  `industry` varchar(150) DEFAULT NULL,
  `developmentid` varchar(100) DEFAULT NULL,
  `area` int(10) DEFAULT NULL,
  `startime` int(10) DEFAULT NULL,
  `endtime` int(10) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- 转存表中的数据 `order`
--

INSERT INTO `order` (`id`, `name`, `customerid`, `fangan_agentid`, `jieshao_agentid`, `status`, `money`, `income`, `byuser`, `desc`, `beiz`, `industry`, `developmentid`, `area`, `startime`, `endtime`, `dateline`) VALUES
(5, '梅泰诺 （客户资源待定）', NULL, NULL, NULL, 0, 0.00, NULL, 'dengzhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377067537),
(7, '梅泰诺 （客户资源待定）', NULL, NULL, NULL, 0, 0.00, NULL, 'dengzhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377068434),
(8, '省企联(200+)', NULL, NULL, NULL, 0, 0.00, NULL, 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377068455),
(9, '都江堰市云新汽车运输队', NULL, NULL, NULL, 0, 0.00, NULL, 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377068488),
(11, '中国新华通讯社', NULL, NULL, NULL, 0, 1.00, NULL, 'taizhennan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377483227),
(12, '成都市政府', NULL, NULL, NULL, 0, 35000.00, NULL, 'taizhennan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377483373),
(13, '昌荣(客户:“新记录”影视公司App)', NULL, NULL, NULL, 0, 200000.00, NULL, 'wangyin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377483406),
(14, '昌荣(客户：中央新影集团长城美术展App)', NULL, NULL, NULL, 0, 30000.00, NULL, 'wangyin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377483819),
(15, '昌荣（客户：真旅网App）', NULL, NULL, NULL, 0, 0.00, NULL, 'wangyin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377483982),
(16, '华邑东方（客户：安利）', NULL, NULL, NULL, 0, 0.00, NULL, 'wangyin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377484129),
(17, '华邑东方（客户：泸州老窖移动酒城App）', NULL, NULL, NULL, 0, 928900.00, NULL, 'wangyin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377484883),
(18, '成都香格里拉', NULL, NULL, NULL, 0, 0.00, NULL, 'taizhennan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377484926),
(19, '成都波尔菲特酒店', NULL, NULL, NULL, 0, 0.00, NULL, 'taizhennan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377484957),
(20, '昌荣（客户：CCTV央视有礼App）', NULL, NULL, NULL, 0, 1040000.00, NULL, 'wangyin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377485242),
(21, '昌荣（客户：PICC保险综合类App）', NULL, NULL, NULL, 0, 0.00, NULL, 'wangyin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377485381),
(22, '昌荣（客户：BTV6台网互动APP）', NULL, NULL, NULL, 0, 0.00, NULL, 'wangyin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1377485712),
(23, '好逸酒店移动客户端项目', NULL, NULL, NULL, 0, 1.00, NULL, 'dengzhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1378112269),
(24, '益友橱柜产品展示', NULL, NULL, NULL, 0, 0.00, NULL, 'dengzhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1378112340),
(25, '特丽达吊顶APP定制', NULL, NULL, NULL, 0, 0.00, NULL, 'dengzhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1378112422),
(26, '蓉易贷APP', NULL, NULL, NULL, 0, 0.00, NULL, 'dengzhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1378112511),
(27, '四川省科技馆', NULL, NULL, NULL, 0, 0.00, NULL, 'dengzhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1378112577),
(28, 'AMC Live', NULL, NULL, NULL, 0, 0.00, NULL, 'dengzhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1378112707),
(29, '南京金盛百货', NULL, NULL, NULL, 0, 200000.00, NULL, 'taizhennan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1378346857);

-- --------------------------------------------------------

--
-- 表的结构 `order_feed`
--

CREATE TABLE IF NOT EXISTS `order_feed` (
  `id` int(10) NOT NULL DEFAULT '0',
  `feed` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `order_feed`
--

INSERT INTO `order_feed` (`id`, `feed`) VALUES
(5, 'a:1:{i:0;s:10:"1377067537";}'),
(7, 'a:1:{i:0;s:10:"1377068434";}'),
(8, 'a:1:{i:0;s:10:"1377068455";}'),
(9, 'a:1:{i:0;s:10:"1377068488";}'),
(11, 'a:1:{i:0;s:10:"1377483227";}'),
(12, 'a:1:{i:0;s:10:"1377483373";}'),
(13, 'a:1:{i:0;s:10:"1377483406";}'),
(14, 'a:1:{i:0;s:10:"1377483819";}'),
(15, 'a:1:{i:0;s:10:"1377483982";}'),
(16, 'a:1:{i:0;s:10:"1377484129";}'),
(17, 'a:1:{i:0;s:10:"1377484883";}'),
(18, 'a:1:{i:0;s:10:"1377484926";}'),
(19, 'a:1:{i:0;s:10:"1377484957";}'),
(20, 'a:1:{i:0;s:10:"1377485242";}'),
(21, 'a:1:{i:0;s:10:"1377485381";}'),
(22, 'a:1:{i:0;s:10:"1377485712";}'),
(23, 'a:1:{i:0;s:10:"1378112269";}'),
(24, 'a:1:{i:0;s:10:"1378112340";}'),
(25, 'a:1:{i:0;s:10:"1378112422";}'),
(26, 'a:1:{i:0;s:10:"1378112511";}'),
(27, 'a:1:{i:0;s:10:"1378112577";}'),
(28, 'a:1:{i:0;s:10:"1378112707";}'),
(29, 'a:1:{i:0;s:10:"1378346857";}');

-- --------------------------------------------------------

--
-- 表的结构 `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `type` tinyint(4) NOT NULL,
  `typename` varchar(150) NOT NULL,
  `status` int(2) DEFAULT NULL,
  `money` float(10,2) DEFAULT '0.00',
  `byuser` varchar(100) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=gbk AUTO_INCREMENT=30 ;

--
-- 转存表中的数据 `project`
--

INSERT INTO `project` (`id`, `name`, `type`, `typename`, `status`, `money`, `byuser`, `dateline`) VALUES
(5, '梅泰诺 （客户资源待定）', 0, '', 0, 0.00, 'dengzhi', 1377067537),
(7, '梅泰诺 （客户资源待定）', 0, '', 0, 0.00, 'dengzhi', 1377068434),
(8, '省企联(200+)', 0, '', 0, 0.00, 'liuzhongqiu', 1377068455),
(9, '都江堰市云新汽车运输队', 2, '国信安', 0, 0.00, 'fangchao', 1377068488),
(11, '中国新华通讯社', 0, '', 7, 1.00, 'taizhennan', 1377483227),
(12, '成都市政府', 0, '', 7, 35000.00, 'taizhennan', 1377483373),
(13, '昌荣(客户:“新记录”影视公司App)', 1, '昌荣', 6, 200000.00, 'wangyin', 1377483406),
(14, '昌荣(客户：中央新影集团长城美术展App)', 1, '昌荣', 6, 30000.00, 'wangyin', 1377483819),
(15, '昌荣（客户：真旅网App）', 1, '昌荣', 5, 0.00, 'wangyin', 1377483982),
(16, '华邑东方（客户：安利）', 1, '华邑东方', 5, 0.00, 'wangyin', 1377484129),
(17, '华邑东方（客户：泸州老窖移动酒城App）', 1, '华邑东方', 6, 928900.00, 'wangyin', 1377484883),
(18, '成都香格里拉', 2, '成都英飞越科技有限公司', 7, 0.00, 'taizhennan', 1377484926),
(19, '成都波尔菲特酒店', 2, '成都英飞越科技有限公司', 7, 0.00, 'taizhennan', 1377484957),
(20, '昌荣（客户：CCTV央视有礼App）', 1, '昌荣', 6, 1040000.00, 'wangyin', 1377485242),
(21, '昌荣（客户：PICC保险综合类App）', 1, '昌荣', 4, 0.00, 'wangyin', 1377485381),
(22, '昌荣（客户：BTV6台网互动APP）', 1, '昌荣', 2, 0.00, 'wangyin', 1377485712),
(23, '好逸酒店移动客户端项目', 2, '拓普泰普', 4, 1.00, 'dengzhi', 1378112269),
(24, '益友橱柜产品展示', 2, '拓普泰普', 4, 0.00, 'dengzhi', 1378112340),
(25, '特丽达吊顶APP定制', 2, '拓普泰普', 5, 0.00, 'dengzhi', 1378112422),
(26, '蓉易贷APP', 2, '拓普泰普', 3, 0.00, 'dengzhi', 1378112511),
(27, '四川省科技馆', 1, '都汇传播', 1, 0.00, 'dengzhi', 1378112577),
(28, 'AMC Live', 2, '拓普泰普', 2, 0.00, 'dengzhi', 1378112707),
(29, '南京金盛百货', 0, '', 4, 200000.00, 'taizhennan', 1378346857);

-- --------------------------------------------------------

--
-- 表的结构 `project_feed`
--

CREATE TABLE IF NOT EXISTS `project_feed` (
  `id` int(10) NOT NULL DEFAULT '0',
  `feed` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- --------------------------------------------------------

--
-- 表的结构 `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) CHARACTER SET gbk DEFAULT NULL,
  `value` varchar(600) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `setting`
--

INSERT INTO `setting` (`id`, `name`, `value`) VALUES
(1, 'development', 'a:3:{s:8:"activity";a:6:{i:7;s:1:"0";i:8;s:2:"10";i:9;s:1:"9";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}s:4:"plan";a:6:{i:7;s:1:"0";i:8;s:2:"15";i:9;s:2:"10";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}s:12:"prolongation";a:6:{i:7;s:1:"0";i:8;s:2:"10";i:9;s:2:"10";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}}'),
(2, 'order', 'a:6:{s:5:"start";a:6:{i:7;s:1:"0";i:8;s:3:"450";i:9;s:2:"34";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}s:6:"detail";a:6:{i:7;s:1:"0";i:8;s:3:"234";i:9;s:2:"23";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}s:4:"sure";a:6:{i:7;s:1:"0";i:8;s:3:"210";i:9;s:2:"12";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}s:5:"quote";a:6:{i:7;s:1:"0";i:8;s:3:"180";i:9;s:2:"12";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}s:5:"offer";a:6:{i:7;s:1:"0";i:8;s:3:"120";i:9;s:2:"10";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}s:5:"total";a:6:{i:7;s:1:"0";i:8;s:3:"212";i:9;s:2:"23";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}}');

-- --------------------------------------------------------

--
-- 表的结构 `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) DEFAULT NULL,
  `userpwd` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `xingb` varchar(5) DEFAULT NULL,
  `usertel` varchar(11) DEFAULT NULL,
  `usermail` varchar(50) DEFAULT NULL,
  `addtime` varchar(50) DEFAULT NULL,
  `modytime` varchar(50) DEFAULT NULL,
  `departmentid` varchar(10) DEFAULT NULL,
  `departmentname` varchar(50) DEFAULT NULL,
  `fuze` char(1) DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=42 ;

--
-- 转存表中的数据 `userinfo`
--

INSERT INTO `userinfo` (`id`, `userid`, `userpwd`, `username`, `xingb`, `usertel`, `usermail`, `addtime`, `modytime`, `departmentid`, `departmentname`, `fuze`) VALUES
(1, 'admin', 'crm_admin', '管理员', '男', '1231231', '233@sina.c', '2009-05-30 11:40:24', '2009-06-17 08:05:14', '01', '销售部', '1'),
(31, 'pengyueyi', 'pengyueyi', '彭月易', '女', '18108040307', '18108040307@189.cn', '2013-08-16 11:06:52', '2013-08-19 13:54:39', '19', '拓展团队', ''),
(32, 'fangchao', 'fangchao', '方超', '男', '18108299358', '18108299358@189.cn', '2013-08-16 11:07:46', '2013-08-19 13:54:27', '19', '拓展团队', ''),
(33, 'liuzhongqiu', 'liuzhongqiu', '刘忠秋', '男', '18981883443', '18981883443@189.cn', '2013-08-16 11:08:45', '2013-08-19 13:54:18', '19', '拓展团队', ''),
(34, 'liyuting', 'liyuting', '李玉婷', '女', '13320947099', '13320947099@189.cn', '2013-08-16 11:10:13', '2013-08-19 13:54:09', '19', '拓展团队', ''),
(35, 'luodehao', 'luodehao', '罗德浩', '男', '18981766817', '18981766817@189.cn', '2013-08-16 11:11:17', '2013-08-19 13:54:01', '19', '拓展团队', ''),
(37, 'yuchenyan', 'yuchenyan', '余沉彦', '女', '18140040283', '18140040283@189.cn', '2013-08-19 13:53:05', NULL, '19', '拓展团队', '0'),
(38, 'dengzhi', 'dengzhi', '邓智', '男', '13628009330', '13628009330@163.cn', '2013-08-19 15:54:09', NULL, '01', '方案团队', '0'),
(39, 'scott', 'scott', '曾轶', '男', '18030613161', '18030613161@189.cn', '2013-08-21 15:39:09', NULL, '19', '拓展团队', '1'),
(40, 'wangyin', 'wangyin', '王寅', '男', '18048580827', '18048580827@189.cn', '2013-08-26 10:01:25', NULL, '01', '方案团队', '0'),
(41, 'taizhennan', 'qinaide521', '邰振南', '男', '15291489140', '18010508405@189.cn', '2013-08-26 10:04:20', NULL, '01', '方案团队', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
