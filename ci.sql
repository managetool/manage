-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 09 月 02 日 01:49
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `activity`
--

INSERT INTO `activity` (`id`, `name`, `byuser`, `address`, `desc`, `dateline`) VALUES
(2, '联康软件系统（上海）有限公司', 'nihao', '成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401', '成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401', 1377734400),
(3, '联康软件系统（上海）有限公司', 'nihao', '成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401', '成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401\r\n成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401\r\n成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401\r\n', 2013),
(4, '联康软件系统（上海）有限公司', 'admin', '成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401', '成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401\r\n', 1377475200),
(5, '联康软件系统有限公司', 'nihao', '成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦', '成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401', 1377734400),
(6, '联康软件系统（上海）有限公司', 'nihao', '成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401', '成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401', 0),
(7, '联康软件系统（上海）有限公司', 'nihao', '成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401', '成都市高新区益州大道中段1800号天府软件园G区G1移动互联创业大厦1401', 1377734400),
(8, '联康软件系统（上海）有限公司', 'admin', '23423432', '', 1377475200),
(9, 'temp_by_qin', 'admin', '成都', '', 1377648000);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `agent`
--

INSERT INTO `agent` (`id`, `name`, `from`, `fromid`, `contact`, `address`, `email`, `tel`, `phone`, `homepage`, `dateline`) VALUES
(1, '联康软件系统有限公司', 'activity', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1377674357),
(3, '联康软件系统（上海）有限公司', 'activity', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1377674233),
(4, 'tmp_qin2', 'plan', NULL, '', '', '', '', '', '', 1377850151);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `customer`
--

INSERT INTO `customer` (`id`, `name`, `from`, `fromid`, `dateline`) VALUES
(1, '成都市政府', NULL, NULL, NULL),
(2, '中国新华通讯社', NULL, NULL, NULL),
(3, '所得税', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

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
  `analysis` text,
  `byuser` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `homepage` varchar(200) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  `solution` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- 转存表中的数据 `development`
--

INSERT INTO `development` (`id`, `name`, `product`, `industry`, `analysis`, `byuser`, `contact`, `address`, `email`, `tel`, `phone`, `homepage`, `dateline`, `solution`, `status`) VALUES
(8, '上海尹捷网络科技有限公司（点击互联）', '淘宝版APP、企业版APP', '展示宣传', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376623180, 1, 1),
(14, '深圳市创新飞网络科技有限公司', '生成平台类行业应用', '生成平台类', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1376582400, 0, 1),
(15, '深圳市谷美品牌设计有限公司', '行业应用', '无', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1376582400, 1, 1),
(17, '深圳天络科技有限公司', '提供多种解决方案和终端设备的应用', '全行业', '提供多种解决方案和终端设备的应用。涉及行业包括政府、购物商场、网店、商业社区、证?金融、期刊杂志、企业产品宣传等。', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1376582400, 1, 1),
(19, '上海绽曙信息技术有限公司', 'iPad开发、iPhone开发、Android开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(20, '成都初唐网络科技有限公司', '微信通', '微信推广', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(21, '成都西奎科技有限公司', '幸福瞬间\\时尚手机杂志、水星家纺 APP', '展示宣传', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(22, '广州寅维信息科技有限公司', 'APP全行业解决方案', 'APP全行业开发', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(23, '广州智品网络科技有限公司', '易管理', '地产行业 旅游行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(24, '哈尔滨优智科技有限公司', 'iPhone本地优惠App、iPad在线教育App、iPad建筑工业App', '生成平台', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(25, '上海金仕达卫宁软件有限公司', '移动临床助手', '医疗行业', '为医疗卫生行业信息化提供整体解决方案', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(26, '上海科匠信息科技有限公司（蓝色互动）', '移动金融、远程医疗、智慧旅游', 'APP全行业开发', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(27, '启汇网络有限公司', 'APP开发+推广', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(28, '北京指动乾坤网络科技有限公司', 'APP定制开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(29, '三道科技上海子公司', 'APP定制开发', '医疗行业、餐饮娱乐、教育行业解决方案', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(30, '深圳市生晟科技有限公司', '全行业解决方案', '美发行业、婚纱摄影行业、餐饮美食行业', '全行业解决方案', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(100, '北京爱图腾科技有限公司', '智慧深圳、城市昆山', 'app开发、智慧城市', '', 'luodehao', '', '', '', '1828109782', '18280196872', '', 1377388800, 1, 1),
(101, '深圳市创新易联网络技术有限公司', '定制开发、UI设计', '全行业', '', 'pengyueyi', '', '', '', '', '18280196872', '', 1377388800, 0, 1),
(31, '北京辕帆创想信息技术有限公司', '标准化产品', '企业宣传', '企业宣传APP解决方案', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(32, '北京掌上通网络技术股份有限公司', '移动商务通', '移动商务', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(33, '彩程设计', 'tower.im', '项目协作工具', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(34, '创软科技', 'APP定制开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(35, '上海优辉网络有限公司', 'APP定制开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(45, '北京掌动乾坤科技有限公司', '汽车（BMW MINI高级定制、起亚）、服装（HM、韩都衣舍、唯品会）', '汽车、服装', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(42, '广州火鹰信息科技有限公司', '协会app、电商app', 'app开发+行业解决方案', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(43, '上海乐搜信息科技有限公司', '外包服务', '定制开发', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(44, '广州市酷蜂教育科技有限公司', '智能医疗系统、ERP管理系统、三维数码动画制作、手机广告投放', '智能医疗系统、ERP管理系统', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(39, '沈阳德铭源科技', '定制开发', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1376582400, 0, 1),
(40, '上海尹捷网', '请问请问', '请问请问', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1368979200, 1, 1),
(41, '上海机锋信息科技有限公司', 'APP定制开发', 'APP定制开发', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(46, '安徽开源软件', '微博型企业内部社交系统 、Anhui OSS 开源解决方案', '社交系统', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(47, '北京天智通达信息技术有限公司', 'appstore  top10电子杂志', '电子杂志', '电子杂志生成平台', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(48, '北京金山', '金山云', '云服务', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(49, '成都海顿软件技术有限责任公司', '棋牌游戏、3D益智游戏、AR现实增强、体感平台、移动办公系统方面', '游戏开发', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(50, '成都视腾科技有限公司', '全行业解决方案', 'app开发+系统集成', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(61, '成都睿峰科技有限公司', '工行ipad系统', '移动银行系统、金融、app开发', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, 1, 1),
(51, '深圳工作家网络科技有限公司', 'iworker', '企业管理', '', 'luodehao', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(52, '联康软件系统（上海）有限公司', '金融、基金ERP系统', '银行、保险等金融行业、手机旅游平台', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(54, '上海爱读信息技术有限公司', '爱读平台', '电子阅读', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(55, '上海叮铃铃信息技术有限公司', '手机电商平台', '电商', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(56, '成都金元卓科技有限公司', '全案解决', '定制开发', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(57, '上海未星网络科技有限公司', '全案解决', '定制开发', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(58, '上海悦点信息科技有限公司', '全案解决', '定制开发', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(59, '上海移品信息技术有限公司', '品牌会员互动App', '品牌展示', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 1, 1),
(60, '中联信通科技有限公司', '银联手机支付平台、卡卡联', '小额支付', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1376841600, 0, 1),
(62, '百度用户产品市场部', '百度云', '企业级云服务', '一直有跟电信合同的期望，没有确切的切入点。', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, 0, 1),
(63, '重庆软媒科技有限公司', '医院，出版社APP', '医院，出版社', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, 0, 1),
(64, '广州市联科软件有限公司', '', '', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, 0, 1),
(65, '企讯恒通(北京)科技有限公司', 'APP开发', '全行业', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, 0, 1),
(66, '北京亿美软通科技有限公司', '企信通', '通讯产品，企业OA', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, 0, 1),
(67, 'Aim', 'APP定制开发', '全行业', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, 0, 1),
(68, '931app工厂', 'APP开发', '全行业', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377187200, 0, 1),
(69, '天翼优加', 'APP孵化器', '全案解决', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 1, 1),
(70, '成都易迅通信息技术发展有限公司', '360°全景展示', '全案解决', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(71, '天津易商互动软件技术咨询有限公司', '电子商务解决方案', '电子商务', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(72, '西安弈聪信息技术有限公司', '移动OA整体解决方案', '移动OA办公', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(73, '西部世纪软件股份有限公司（西安总公司）', '石油化工行业解决方案', '石油、化工重工业', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(74, '行绿科技', '航空方面OA', '航空', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(75, '汇思软件（上海）有限公司广州分公司', '在线培训解决方案', '培训教育', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 0),
(76, '英诺APP', '产品开发', '全案解决', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(77, '无锡曼荼罗软件有限公司', '移动医疗信息解决方案', '医疗', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 0),
(78, '苏州华冠科技有限公司', '外包开发、软件测试', '全案解决', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(79, '成都天际锐思科技有限责任公司', '室内导航', '基于LBS全案解决', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(80, '上海即富信息技术服务有限公司', '即付宝', '金融小额支付', '', 'liuzhongqiu', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(82, '深圳市专购科技有限公司', '定制开发', '企业、学校、政府、骑车、家居、教育、房地产、物业', '企业形象客户端,校园形象客户端,政府形象客户端,汽车销售展示客户端,家居展示客户端,教育培训客户端,房地产楼盘客户端,物业服务公司客户端,平板/手机办公客户端,平板/手机办公系统,以上业务的开发系统(含ios /Android /Windows phone)不限，可根据客户的需求定制开发.', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(83, '深圳市联芯嵌入式软件有限公司', 'AR虚拟增强现实技术服务类', '汽车智能终端技术解决方案、工业平板及手持终端技术解决方案', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(84, '唐宋中国', '品牌策划、创意设计以及互联网数字行销解决方案。', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(85, '东莞市东信网络技术有限公司', '移动营销应用推广服务、APP开发', '地产/服装行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 1, 1),
(86, '上海微创软件有限公司', '企业客户管理类、企业协同办公类', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 0),
(87, '顶呱呱集团', '定制开发', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(88, '深圳市华移科技有限公司', '移动电子政务类、移动电子商务与支付类、app软件外包开发服务', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 1, 1),
(89, '西安泰为软件有限公司', '定制开发', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(90, '西安华宏软件有限公司', '节能、安防、面部识别、消防、防雷产品', '节能、安防、面部识别、消防、防雷', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377360000, 0, 1),
(102, '上海森域信息技术有限公司', '移动解决方案、电子杂志', '全行业', '', 'pengyueyi', '', '', '', '', '18280196872', '', 1377388800, 0, 1),
(92, '成都思远网络技术有限公司', 'APP定制开发', 'APP全行业', '', 'fangchao', '', '', '', '1828109782', '', '', 1377388800, 0, 1),
(93, '四川联盛咨询有限公司', 'APP定制开发', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, 0, 1),
(94, '上海百微科技有限公司', '移动办公\\移动执法\\电子点餐系统', 'APP全行业', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, 0, 1),
(95, '风华正茂科技（北京）有限', '网页建站，APP定制开发，网站推广', '全行业（中小企业）', '', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, 0, 1),
(96, '北京润乾软件技术有限公司', '报表系统软件', '全行业（中小企业）', '全行业（中小企业）报表系统软件开发商，目前进入移动端产品的开发阶段。', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, 0, 1),
(97, '北京北大软件工程发展有限公司', '大型企业，党政机关系统软件开发', '全行业(大型企业)', '客户产品设计多个大型企业和党政机关', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, 0, 1),
(98, '安卓联航软件科技（北京）有限公司', '定制开发', '办公，保险，车载，图像，多媒体，即时通信', '手机行业，智能电视，企业级APP定制开发', 'liyuting', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, 0, 1),
(99, '成都定制通软件', 'AR虚拟增强现实技术服务类', '为中小企业专门打造的移动办公平台', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, 1, 1),
(103, '广州聆科网络技术有限公司', '定制开发、微信营销', '全行业', '', 'pengyueyi', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, 0, 1),
(104, '广州市飞旭软件开发有限公司', 'iPad点菜通、IPAD展销系统（珠宝行业、首饰、头饰行业）', '展示宣传', '', 'fangchao', NULL, NULL, NULL, NULL, NULL, NULL, 1377446400, 0, 1),
(105, '联康软件系统（上海）有限公司', 'sdfdf', 'sdfsdf', '', 'liuzhongqiu', '', '23423432', '', '1828109782', '', '', 1377475200, 0, 0),
(106, 'dsfdsf', 'dsffds', 'dsfdsf', '', 'luodehao', '234234', '', '', '', '', '', 1377475200, 0, 0),
(108, '百度一下', '度娘', '百度一下，你就知道', '是谁在敲打我窗\r\n\r\n是谁把你送来我身边\r\n\r\n是谁在唱歌，温暖了寂寞\r\n\r\n', 'fangchao', '度娘', '四川省成都市高新区中和大道上东街包江桥神仙树', 'baidu@qq.com', '18212122989', '', '', 1377475200, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `expand`
--

CREATE TABLE IF NOT EXISTS `expand` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `share` tinyint(1) NOT NULL DEFAULT '0',
  `nameid` int(10) NOT NULL,
  `wish` tinyint(1) NOT NULL DEFAULT '0',
  `schedule` int(2) NOT NULL,
  `result` varchar(200) DEFAULT NULL,
  `finishtime` int(10) DEFAULT '0',
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- 转存表中的数据 `expand`
--

INSERT INTO `expand` (`id`, `username`, `type`, `share`, `nameid`, `wish`, `schedule`, `result`, `finishtime`, `dateline`) VALUES
(2, 'fangchao', 'APP开发', 0, 26, 1, 20, '', 0, 1376582400),
(4, 'pengyueyi', '定制开发', 0, 15, 1, 100, '电子流程中', 1375286400, 1376582400),
(5, 'pengyueyi', '定制开发', 0, 17, 0, 20, '等对方决策者出差回来', 0, 1376582400),
(6, 'pengyueyi', '定制开发', 0, 18, 1, 80, '认同合作模式，沟通框架协议中', 0, 1376582400),
(7, 'pengyueyi', '定制开发和标准产品', 0, 14, 1, 80, '框架协议沟通中', 0, 1377248384),
(8, 'liuzhongqiu', 'APP定制开发', 0, 41, 1, 100, '合作协议正在走电子流程', 1375286400, 1376582400),
(9, 'liuzhongqiu', '外包服务', 0, 43, 1, 100, '服务商正在准备企业资质信息', 0, 1376582400),
(10, 'luodehao', '电子杂志', 1, 47, 1, 50, '协议需要审批', 0, 1376582400),
(11, 'luodehao', '集成系统', 0, 46, 1, 50, '协议需要审批', 0, 1376582400),
(13, 'luodehao', 'app开发', 0, 44, 0, 20, '', 0, 1376582400),
(14, 'luodehao', 'app开发', 1, 42, 1, 20, '', 0, 1376582400),
(15, 'luodehao', '云服务', 1, 48, 1, 90, '确定价格6折。但是，最后的协议内容协调不能达成一致。', 0, 1376582400),
(16, 'luodehao', 'app开发', 1, 49, 1, 80, '', 0, 1376582400),
(17, 'luodehao', 'app开发+系统集成', 1, 50, 1, 90, '以新注册公司进行签订，准备协议内容', 0, 1376582400),
(18, 'luodehao', '企业产品服务', 0, 51, 1, 50, '我们这边进行产品测试阶段，对方有pc端后台。', 0, 1376582400),
(19, 'liuzhongqiu', '针对日本市场做外包', 0, 53, 1, 5, '对合作无兴趣', 0, 1376582400),
(20, 'liuzhongqiu', '产品运营', 0, 54, 1, 50, '服务商合作协议沟通中', 0, 1376582400),
(21, 'liuzhongqiu', '手机平台开发', 0, 55, 0, 20, '', 0, 1376582400),
(22, 'liuzhongqiu', '外包服务', 0, 56, 0, 20, '', 0, 1376582400),
(23, 'liuzhongqiu', '移动全营销、全案代运营', 1, 57, 0, 20, '', 0, 1376582400),
(24, 'liuzhongqiu', '外包服务', 0, 58, 0, 20, '', 0, 1376582400),
(25, 'liuzhongqiu', '定制开发', 0, 59, 0, 20, '沟通合作协议', 0, 1376582400),
(26, 'liuzhongqiu', '平台运营', 0, 60, 1, 80, '沟通合作细节', 0, 1376582400),
(27, 'luodehao', 'app开发', 1, 61, 1, 100, '', 0, 1377248539),
(28, 'pengyueyi', '', 1, 64, 0, 5, '', 0, 1377248808),
(29, 'liyuting', '服务商', 0, 63, 1, 20, '', 0, 1377249150),
(30, 'liuzhongqiu', 'APP快速生成', 0, 69, 1, 100, '', 0, 1377421820),
(31, 'liuzhongqiu', '产品开发', 0, 70, 1, 100, '', 0, 1377422012),
(32, 'liuzhongqiu', '企业级电子商务解决方案', 0, 71, 0, 5, '', 0, 1377422168),
(33, 'liuzhongqiu', '定制开发', 0, 72, 0, 5, '', 0, 1377422292),
(34, 'liuzhongqiu', '定制开发', 0, 73, 0, 5, '', 0, 1377422417),
(35, 'liuzhongqiu', '定制开发', 0, 74, 0, 5, '', 0, 1377422487),
(37, 'liuzhongqiu', '定制开发', 1, 76, 0, 5, '', 0, 1377422662),
(38, 'liuzhongqiu', '自有产品销售', 0, 77, 0, 20, '', 0, 1377422752),
(39, 'liuzhongqiu', '外包服务', 0, 78, 0, 5, '', 0, 1377422821),
(40, 'liuzhongqiu', '平台运营', 0, 79, 1, 20, '', 0, 1377422921),
(41, 'liuzhongqiu', '自有产品销售', 0, 80, 1, 100, '', 0, 1377423472),
(42, 'pengyueyi', '', 0, 90, 0, 5, '不合作', 0, 1377441866),
(43, 'pengyueyi', '', 0, 89, 0, 20, '不做国内开发', 0, 1377442178),
(44, 'pengyueyi', '', 0, 88, 0, 20, '无合作意向', 0, 1377441935),
(45, 'pengyueyi', '', 0, 87, 0, 20, '无合作意向', 0, 1377441953),
(46, 'pengyueyi', '', 0, 86, 0, 20, '无合作意向', 0, 1377441969),
(47, 'pengyueyi', '', 0, 85, 0, 20, '', 0, 1377442023),
(48, 'pengyueyi', '', 0, 84, 0, 5, '初次接触', 0, 1377442043),
(49, 'pengyueyi', '', 0, 83, 0, 20, '有需求再找我们', 0, 1377442065),
(50, 'pengyueyi', '', 0, 82, 0, 20, '持续跟进中', 0, 1377442081),
(85, 'pengyueyi', '定制开发、UI设计', 0, 101, 0, 5, '初次洽谈，已发送相关资料，等对方反馈。', 0, 1377500400),
(84, 'luodehao', 'app开发', 0, 100, 1, 50, '', 0, 1377494679),
(53, 'fangchao', '标准版APP开发', 0, 8, 1, 90, '等对方资质等相关资料', 0, 1377481801),
(54, 'fangchao', '软件开发，网站开发', 0, 35, 0, 5, '', 0, 1377481488),
(55, 'fangchao', 'APP开发', 0, 19, 1, 5, '', 0, 1377481623),
(56, 'fangchao', 'APP开发、推广', 0, 20, 0, 20, '', 0, 1377481726),
(57, 'fangchao', 'App定制开发', 0, 21, 0, 5, '', 0, 1377481767),
(58, 'fangchao', '软件销售、APP开发', 0, 22, 0, 5, '', 0, 1377481889),
(59, 'liyuting', '有企业通讯软件', 1, 66, 0, 5, '', 0, 1377481968),
(60, 'fangchao', 'App定制开发及销售成熟APP产品', 0, 23, 0, 20, '', 0, 1377481979),
(61, 'liyuting', '云服务能力提供商', 0, 62, 1, 50, '', 0, 1377482035),
(62, 'fangchao', '以APP外包为主，卖模板化产品为辅', 0, 24, 0, 20, '领导出差，等领导回来后确定', 0, 1377482070),
(63, 'liyuting', '全行业（传统企业和互联网企业都有）', 1, 68, 1, 20, '', 0, 1377482134),
(64, 'fangchao', '为医疗卫生行业信息化提供整体解决方案', 0, 25, 1, 20, '', 0, 1377482167),
(65, 'liyuting', '全行业APP开发', 0, 67, 1, 5, '', 0, 1377482189),
(66, 'fangchao', 'App定制开发', 0, 27, 0, 5, '', 0, 1377482238),
(67, 'liyuting', '全行业APP开发', 0, 65, 0, 20, '', 0, 1377482255),
(68, 'fangchao', 'App定制开发', 0, 28, 1, 20, '', 0, 1377482288),
(69, 'fangchao', 'APP开发', 0, 29, 0, 5, '', 0, 1377482345),
(70, 'fangchao', '软件开发', 0, 94, 0, 5, '', 0, 1377482700),
(71, 'fangchao', '软件开发、网站建设', 0, 93, 0, 5, '', 0, 1377482732),
(72, 'fangchao', '软件开发', 0, 92, 0, 5, '', 0, 1377482765),
(73, 'fangchao', '软件开发', 0, 91, 0, 5, '', 0, 1377482797),
(74, 'fangchao', 'APP开发', 0, 32, 0, 5, '', 0, 1377482846),
(75, 'liyuting', '服务商', 1, 97, 0, 5, '客户自有客户群体已经足够大，对我们的平台级持观望状态。', 0, 1377482955),
(76, 'fangchao', 'APP标准化、定制化开发', 0, 31, 0, 5, '', 0, 1377482905),
(78, 'fangchao', 'APP开发', 0, 30, 0, 5, '', 0, 1377482954),
(79, 'fangchao', '软件开发', 0, 34, 0, 5, '', 0, 1377482983),
(80, 'liyuting', '系统报表软件提供长', 0, 96, 0, 5, '', 0, 1377483040),
(81, 'liyuting', 'tower办公软件的合作', 0, 33, 1, 50, '', 0, 1377483067),
(82, 'liyuting', '中小企业网站开发，和ＡＰＰ定制开发', 0, 95, 0, 5, '', 0, 1377483127),
(83, 'pengyueyi', '定制开发', 0, 99, 0, 20, '无合作意向', 0, 1377483704),
(87, 'fangchao', '软件开发\\代理产品', 0, 104, 0, 5, '', 0, 1377508520),
(88, 'pengyueyi', '定制开发、微信营销', 0, 103, 0, 20, '已发资料，等对方反馈', 0, 1377509953);

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
  `byuser` varchar(100) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `order`
--

INSERT INTO `order` (`id`, `name`, `customerid`, `fangan_agentid`, `jieshao_agentid`, `status`, `money`, `byuser`, `dateline`) VALUES
(5, '梅泰诺 （客户资源待定）', 1, 1, 1, 0, 0.00, 'dengzhi', 1377067537),
(7, '梅泰诺 （客户资源待定）', 1, 1, 1, 0, 0.00, 'dengzhi', 1377068434),
(8, '省企联(200+)', 1, 1, 1, 0, 0.00, 'liuzhongqiu', 1377068455),
(9, '都江堰市云新汽车运输队', 2, 1, 1, 0, 0.00, 'fangchao', 1377068488),
(12, '成都市政府', 1, 1, 1, 7, 35000.00, 'taizhennan', 1377483373),
(13, '昌荣(客户:“新记录”影视公司App)', 1, 1, 1, 6, 200000.00, 'wangyin', 1377483406),
(14, '昌荣(客户：中央新影集团长城美术展App)', 1, 1, 1, 6, 30000.00, 'wangyin', 1377483819),
(15, '昌荣（客户：真旅网App）', 1, 1, 1, 5, 0.00, 'wangyin', 1377483982),
(16, '华邑东方（客户：安利）', 1, 1, 1, 5, 0.00, 'wangyin', 1377484129),
(17, '华邑东方（客户：泸州老窖移动酒城App）', 1, 1, 1, 6, 928900.00, 'wangyin', 1377484883),
(18, '成都香格里拉', 2, 1, 1, 7, 0.00, 'taizhennan', 1377484926),
(19, '成都波尔菲特酒店', 2, 1, 1, 7, 0.00, 'taizhennan', 1377484957),
(20, '昌荣（客户：CCTV央视有礼App）', 1, 1, 1, 6, 1040000.00, 'wangyin', 1377485242),
(21, '昌荣（客户：PICC保险综合类App）', 1, 1, 1, 4, 0.00, 'wangyin', 1377485381),
(22, '昌荣（客户：BTV6台网互动APP）', 1, 1, 1, 2, 0.00, 'wangyin', 1377485712),
(23, '会思', 3, 4, 1, 0, 0.00, 'liuzhongqiu', 1377827673);

-- --------------------------------------------------------

--
-- 表的结构 `order_feed`
--

CREATE TABLE IF NOT EXISTS `order_feed` (
  `id` int(10) NOT NULL DEFAULT '0',
  `feed` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `plan`
--

CREATE TABLE IF NOT EXISTS `plan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `prolongation`
--

CREATE TABLE IF NOT EXISTS `prolongation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) DEFAULT NULL,
  `value` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `setting`
--

INSERT INTO `setting` (`id`, `name`, `value`) VALUES
(1, 'development', 'a:2:{s:9:"unso_wish";a:6:{i:7;s:2:"12";i:8;s:2:"20";i:9;s:2:"19";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"1";}s:7:"so_wish";a:6:{i:7;s:2:"12";i:8;s:2:"15";i:9;s:2:"10";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}}'),
(2, 'order', 'a:6:{s:5:"start";a:6:{i:7;s:1:"0";i:8;s:3:"450";i:9;s:1:"0";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}s:6:"detail";a:6:{i:7;s:1:"0";i:8;s:3:"234";i:9;s:1:"0";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}s:4:"sure";a:6:{i:7;s:1:"0";i:8;s:3:"210";i:9;s:1:"0";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}s:5:"quote";a:6:{i:7;s:1:"0";i:8;s:3:"180";i:9;s:1:"0";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}s:5:"offer";a:6:{i:7;s:1:"0";i:8;s:3:"120";i:9;s:1:"0";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}s:5:"total";a:6:{i:7;s:1:"0";i:8;s:3:"212";i:9;s:1:"0";i:10;s:1:"0";i:11;s:1:"0";i:12;s:1:"0";}}');

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
  `addtime` int(10) DEFAULT NULL,
  `modytime` int(10) DEFAULT NULL,
  `departmentid` varchar(10) DEFAULT NULL,
  `departmentname` varchar(50) DEFAULT NULL,
  `fuze` char(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `userinfo`
--

INSERT INTO `userinfo` (`id`, `userid`, `userpwd`, `username`, `xingb`, `usertel`, `usermail`, `addtime`, `modytime`, `departmentid`, `departmentname`, `fuze`) VALUES
(1, 'admin', 'crm_admin', '管理员', '男', '1231231', '233@sina.c', 2009, 2009, '18', '方案团队', '1'),
(31, 'pengyueyi', 'pengyueyi', '彭月易', '女', '18108040307', '18108040307@189.cn', 2013, 2013, '02', '拓展团队', ''),
(32, 'fangchao', 'fangchao', '方超', '男', '18108299358', '18108299358@189.cn', 2013, 2013, '02', '拓展团队', ''),
(33, 'liuzhongqiu', 'liuzhongqiu', '刘忠秋', '男', '18981883443', '18981883443@189.cn', 2013, 2013, '02', '拓展团队', ''),
(34, 'liyuting', 'liyuting', '李玉婷', '女', '13320947099', '13320947099@189.cn', 2013, 2013, '02', '拓展团队', ''),
(35, 'luodehao', 'luodehao', '罗德浩', '男', '18981766817', '18981766817@189.cn', 2013, 2013, '02', '拓展团队', ''),
(37, 'yuchenyan', 'yuchenyan', '余沉彦', '女', '18140040283', '18140040283@189.cn', 2013, NULL, '02', '拓展团队', '0'),
(38, 'dengzhi', 'dengzhi', '邓智', '男', '13628009330', '13628009330@163.cn', 2013, NULL, '01', '方案团队', '0'),
(39, 'scott', 'scott', '曾轶', '男', '18030613161', '18030613161@189.cn', 2013, NULL, '02', '拓展团队', '1'),
(40, 'wangyin', 'wangyin', '王寅', '男', '18048580827', '18048580827@189.cn', 2013, NULL, '01', '方案团队', '0'),
(41, 'taizhennan', 'qinaide521', '邰振南', '男', '15291489140', '18010508405@189.cn', 2013, NULL, '01', '方案团队', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
