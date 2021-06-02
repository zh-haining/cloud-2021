-- // create templete table tb_yxmsg
-- Migration SQL that makes the change goes here.
CREATE TABLE `tb_yxmsg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `data_date` varchar(8) NOT NULL DEFAULT '' COMMENT '数据日期：固定8位长度，精确到日：20200131',
  `app` varchar(32) NOT NULL DEFAULT '' COMMENT '消息来源app方',
  `request_id` varchar(32) NOT NULL DEFAULT '' COMMENT '请求流水号',
  `priority` int(11) NOT NULL DEFAULT '1' COMMENT '消息优先级 1-中 ； 2-高',
  `valid_time` bigint(20) NOT NULL DEFAULT '-1' COMMENT '消息有效截止时间戳',
  `async` varchar(16) NOT NULL DEFAULT 'DEFAULT' COMMENT '消息同步还是异步发送；枚举',
  `retry_count` int(11) NOT NULL DEFAULT '0' COMMENT '消息重试次数',
  `status` varchar(32) NOT NULL DEFAULT 'DEFALUT' COMMENT '消息状态：枚举',
  `resp_code` varchar(16) NOT NULL DEFAULT '' COMMENT '第三方响应码',
  `resp_desc` varchar(1024) NOT NULL DEFAULT '' COMMENT '第三方响应信息描述',
  `request_uri` varchar(255) NOT NULL DEFAULT '' COMMENT '请求接口',
  `app_time` bigint(20) NOT NULL DEFAULT '-1' COMMENT 'app发下请求时间戳',
  `receive_time` bigint(20) NOT NULL DEFAULT '-1' COMMENT '接受到请求时间戳',
  `send_time` bigint(20) NOT NULL DEFAULT '-1' COMMENT '开始发送给第三方时间戳',
  `resp_time` bigint(20) NOT NULL DEFAULT '-1' COMMENT '第三方响应时间戳',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `app_req_idx` (`app`,`request_id`) USING BTREE,
  KEY `data_date_idx` (`data_date`) USING BTREE,
  KEY `create_time_idx` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='云信消息发送模块逻辑表';


-- //@UNDO
-- SQL to undo the change goes here.


