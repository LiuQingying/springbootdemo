-- ----------------------------
-- Table structure for UserInfo
-- ----------------------------

DROP TABLE IF EXISTS `UserInfo`;
-- 创建一个表，指定了4个属性：id、年龄、身高、体重。最后指定了id是唯一不能重复的键值
CREATE TABLE IF NOT EXISTS `UserInfo` (  `id` varchar(20) NOT NULL,  `age` int DEFAULT NULL,  `height` int DEFAULT NULL,  `weight` int DEFAULT NULL,  PRIMARY KEY (`id`) );

DROP  TABLE  IF EXISTS `OrderInfo`;
-- 创建一张订单表
CREATE TABLE IF NOT EXISTS `OrderInfo` ( `id` varchar(20) NOT NULL , `no` varchar(32), PRIMARY KEY (`id`) );

DROP TABLE IF EXISTS `device`;

CREATE TABLE `device` (
                          `id` int(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
                          `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP,
                          `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP,
                          `device_id` varchar(64) DEFAULT NULL,
                          `pos_id` varchar(32) DEFAULT NULL,
                          `auth_code` varchar(64) DEFAULT NULL,
                          `device_type` varchar(32) DEFAULT NULL,
                          `device_version` varchar(64) DEFAULT NULL,
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;