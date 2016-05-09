select * from admin_user;
delete from ADMIN_USER a where a.user_id=202;
select * from sys_org;
select seq_sys_org;

--select sequence
SELECT NEXT VALUE FOR seq_admin_user_id;

select NEXT VALUE FOR seq_admin_user_id from SYSIBM.SYSDUMMY1;

SELECT USER_ID userId,                    USER_NAME userName,                    USER_PWD userPwd,                    pwd_err_cnt pwdErrCnt,                    lock_flag  lockFlag,                    create_time createTime,                    modify_time modifyTime,                    last_login_time lastLoginTime              from admin_user              where USER_NAME='admin'

SELECT NEXT VALUE FOR seq_admin_user_id