-- // create tb_fail_record
-- Migration SQL that makes the change goes here.
CREATE TABLE `tb_fail_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `app` varchar(32) NOT NULL DEFAULT '' COMMENT '消息来源app方',
  `request_id` varchar(32) NOT NULL DEFAULT '' COMMENT '请求流水号',
  `status` varchar(32) NOT NULL DEFAULT 'DEFALUT' COMMENT '消息状态：枚举',
  `valid_time` bigint(20) NOT NULL DEFAULT '-1' COMMENT '消息有效截止时间戳',
  `resp_code` varchar(16) NOT NULL DEFAULT '' COMMENT '第三方响应码',
  `resp_msg` varchar(1024) NOT NULL DEFAULT '' COMMENT '第三方响应信息',
  `send_time` bigint(20) NOT NULL DEFAULT '-1' COMMENT '开始发送给第三方时间戳',
  `resp_time` bigint(20) NOT NULL DEFAULT '-1' COMMENT '第三方响应时间戳',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `app_resid_idx` (`app`,`request_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- //@UNDO
-- SQL to undo the change goes here.


