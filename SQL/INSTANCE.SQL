set schema app;
insert into SYS_USER (id,username,userpwd) values (next value for seq_sys_user_id,'admin','admin');
select * from sys_user;