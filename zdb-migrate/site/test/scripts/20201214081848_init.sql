-- // init
-- Migration SQL that makes the change goes here.
delete from tb_change_log where id = 20201207074124;
delete from tb_change_log where id = 20201207074619;
delete from tb_change_log where id = 20201207074858;
delete from tb_change_log where id = 20201207074909;
delete from tb_change_log where id = 20201207075542;
delete from tb_change_log where id = 20201207080402;
delete from tb_change_log where id = 20201213043046;

drop table if exists tb_yx_call_202012_0;
drop table if exists tb_yx_call_202012_1;
drop table if exists tb_yx_call_202012_2;
drop table if exists tb_yx_call_202101_0;
drop table if exists tb_yx_call_202101_1;
drop table if exists tb_yx_call_202101_2;
drop table if exists tb_yx_call_unifos_202012_0;
drop table if exists tb_yx_call_unifos_202012_1;
drop table if exists tb_yx_call_unifos_202012_2;
drop table if exists tb_yx_call_unifos_202101_0;
drop table if exists tb_yx_call_unifos_202101_1;
drop table if exists tb_yx_call_unifos_202101_2;
drop table if exists tb_yx_msg_attach_202012_0;
drop table if exists tb_yx_msg_attach_202012_1;
drop table if exists tb_yx_msg_attach_202012_2;
drop table if exists tb_yx_msg_attach_202101_0;
drop table if exists tb_yx_msg_attach_202101_1;
drop table if exists tb_yx_msg_attach_202101_2;
drop table if exists tb_yx_msg_batch_attach_202012;
drop table if exists tb_yx_msg_batch_attach_202101;
drop table if exists tb_yx_msg_batch_attach_202102;
drop table if exists tb_yx_msg_batch_attach_202103;
drop table if exists tb_yx_msg_batch_attach_202104;
drop table if exists tb_yx_msg_batch_attach_202105;
drop table if exists tb_yx_msg_batch_nomal202012;
drop table if exists tb_yx_msg_batch_nomal202101;
drop table if exists tb_yx_msg_batch_nomal202102;
drop table if exists tb_yx_msg_batch_nomal202103;
drop table if exists tb_yx_msg_batch_nomal202104;
drop table if exists tb_yx_msg_batch_nomal202105;
drop table if exists tb_yx_msg_nomal_202012_0;
drop table if exists tb_yx_msg_nomal_202012_1;
drop table if exists tb_yx_msg_nomal_202012_2;
drop table if exists tb_yx_msg_nomal_202101_0;
drop table if exists tb_yx_msg_nomal_202101_1;
drop table if exists tb_yx_msg_nomal_202101_2;


-- //@UNDO
-- SQL to undo the change goes here.


