-- // create tb_app_info
-- Migration SQL that makes the change goes here.
-- 调用方app信息
CREATE TABLE `tb_app_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `app_name` varchar(64) NOT NULL DEFAULT '' COMMENT '调用方APP名称',
  `app_cn_name` varchar(128) NOT NULL DEFAULT '' COMMENT '代用app中文名称',
  `secret` varchar(255) NOT NULL DEFAULT '' COMMENT '调用方secret',
  `callback_url` varchar(255) NOT NULL DEFAULT '' COMMENT 'app回调url',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- //@UNDO
-- SQL to undo the change goes here.


