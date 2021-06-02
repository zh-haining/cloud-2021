-- // create_callback_extra_retry
-- Migration SQL that makes the change goes here.

CREATE TABLE `tb_callback_extra_retry` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `app` varchar(32) NOT NULL DEFAULT '' COMMENT '消息来源app方',
  `request_id` varchar(32) NOT NULL DEFAULT '' COMMENT '请求流水号',
  `status` varchar(32) NOT NULL DEFAULT 'DEFALUT' COMMENT '推送结果：枚举',
  `valid_time` bigint(20) NOT NULL DEFAULT '-1' COMMENT '消息有效截止时间戳',
  `callback_msg` varchar(2048) NOT NULL DEFAULT '' COMMENT '回调内容',
  `topic_name` varchar(32) NOT NULL DEFAULT '' COMMENT 'CMQ队列topic',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- //@UNDO
-- SQL to undo the change goes here.


