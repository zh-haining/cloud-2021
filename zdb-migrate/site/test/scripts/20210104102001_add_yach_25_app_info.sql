-- // add yach_25 app info
-- Migration SQL that makes the change goes here.
INSERT INTO `tb_app_info`( `app_name`, `app_cn_name`, `secret`, `callback_url`, `create_time`, `update_time`)
 VALUES ( 'yach_25_document_api', '25_在线文档后端服务', 'vxkgf3iwj70kdagthmxgqv7sy3kvqcri', '', '2021-01-04 17:47:37', '2021-01-04 17:47:37');
-- //@UNDO
-- SQL to undo the change goes here.


