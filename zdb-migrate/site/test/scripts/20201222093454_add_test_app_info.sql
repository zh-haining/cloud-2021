-- // add test_app_info
-- Migration SQL that makes the change goes here.
INSERT INTO `tb_app_info`( `app_name`, `app_cn_name`, `secret`, `callback_url`, `create_time`, `update_time`)
 VALUES ( 'yach-test-01', 'yach-测试专用', '4zkbttbaqgk3h4vv98wtu359omfg8nee', '', '2020-12-22 17:47:37', '2020-12-22 17:47:43');


-- //@UNDO
-- SQL to undo the change goes here.


