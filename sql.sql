ALTER TABLE `expand`
CHANGE COLUMN `nameid` `developmentid`  int(10) NOT NULL AFTER `orderflow_status`;

ALTER TABLE `orderflow`
CHANGE COLUMN `development_id` `developmentid`  int(11) NOT NULL AFTER `name`;

DROP TABLE IF EXISTS `expand_feed`;
CREATE TABLE `expand_feed` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `expandid` int(10) DEFAULT NULL,
  `feed` varchar(200) DEFAULT NULL,
  `schedule` int(2) DEFAULT NULL,
  `dateline` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `order_service`;
CREATE TABLE `order_service` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT NULL,
  `service_type_id` int(10) DEFAULT NULL,
  `developmentid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

ALTER TABLE `order_feed`
CHANGE COLUMN `id` `orderid`  int(10) NOT NULL DEFAULT 0 ;

ALTER TABLE `order_feed`
DROP PRIMARY KEY;

ALTER TABLE `order_feed`
ADD COLUMN `id`  int(10) NULL AUTO_INCREMENT FIRST ,
ADD PRIMARY KEY (`id`);

ALTER TABLE `order_feed`
ADD COLUMN `status`  int(2) NULL DEFAULT 0 AFTER `feed`;

ALTER TABLE `order_feed`
ADD COLUMN `dateline`  int(10) NULL DEFAULT 0 AFTER `status`;

ALTER TABLE `order`
ADD COLUMN `developmentcount`  int(2) NULL DEFAULT 0 AFTER `developmentid`;