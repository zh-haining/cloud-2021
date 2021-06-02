-- // create templete table tb_yxuser_uinfos
-- Migration SQL that makes the change goes here.
CREATE TABLE `tb_yxuser_uinfos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
  `data_date` varchar(8) NOT NULL DEFAULT '' COMMENT '数据日期：固定8位长度，精确到日：20200131',
  `app` varchar(32) NOT NULL DEFAULT '' COMMENT '消息来源app方',
  `request_id` varchar(32) NOT NULL DEFAULT '' COMMENT '请求流水号',
  `status` varchar(32) NOT NULL DEFAULT 'DEFALUT' COMMENT '状态：枚举',
  `resp_code` varchar(16) NOT NULL DEFAULT '' COMMENT '第三方响应码',
  `resp_msg` varchar(1024) NOT NULL DEFAULT '' COMMENT '第三方响应信息',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='云信用户模块-获取用户信息接口调用逻辑表';


-- //@UNDO
-- SQL to undo the change goes here.


