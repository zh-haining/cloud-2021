-- // add tb payment
-- Migration SQL that makes the change goes here.
create table payment(
id bigint(20) not null auto_increment comment '逻辑主键',
serial varchar(200) default '',
primary key (id)
);


-- //@UNDO
-- SQL to undo the change goes here.


