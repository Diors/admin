--CREATE TABLE ADMIN_USER
CREATE SEQUENCE SEQ_ADMIN_USER_ID AS BIGINT START WITH 1 NO CYCLE ;
CREATE TABLE ADMIN_USER (
USER_ID BIGINT NOT NULL,
USER_NAME VARCHAR(64) NOT NULL,
USER_PWD VARCHAR(64) NOT NULL,
PWD_ERR_CNT INT DEFAULT 0,
LOCK_FLAG INT DEFAULT 0,
CREATE_TIME TIMESTAMP DEFAULT CURRENT TIMESTAMP,
MODIFY_TIME TIMESTAMP,
LAST_LOGIN_TIME TIMESTAMP,
CONSTRAINT ADMIN_USER_PK PRIMARY KEY (USER_ID)
);

INSERT INTO ADMIN_USER (USER_ID,USER_NAME,USER_PWD,CREATE_TIME) 
VALUES (0,'admin','D033E22AE348AEB5660FC2140AEC35850C4DA997',CURRENT_TIMESTAMP);




CREATE SEQUENCE SEQ_ADMIN_COUNTRY_ID AS  BIGINT START WITH 1 NO CYCLE ;
CREATE TABLE ADMIN_COUNTRY(
COUNTRY_ID BIGINT NOT NULL,
COUNTRY_NAME VARCHAR(64) NOT NULL,
CONSTRAINT ADMIN_COUNTRY_PK PRIMARY KEY (COUNTRY_ID)
);
INSERT INTO ADMIN_COUNTRY (COUNTRY_ID,COUNTRY_NAME) VALUES (1,'Senegal');

CREATE SEQUENCE SEQ_ADMIN_SERVICE_MODULE_ID AS  BIGINT START WITH 1 NO CYCLE ;
--DROP TABLE ADMIN_SERVICE_MODULE;
CREATE TABLE ADMIN_SERVICE_MODULE(
SERVICE_MODULE_ID BIGINT NOT NULL,
SERVICE_MODULE_NAME VARCHAR(64) NOT NULL,
SERVICE_MODULE_DESC VARCHAR(256),
COUNTRY_ID BIGINT NOT NULL,
CONSTRAINT ADMIN_SERVICE_MODULE_PK PRIMARY KEY (SERVICE_MODULE_ID),
CONSTRAINT SERVICE_MODULE_COUNTRY_FK
	FOREIGN KEY (COUNTRY_ID)
	REFERENCES ADMIN_COUNTRY (COUNTRY_ID)
);
INSERT INTO ADMIN_SERVICE_MODULE (SERVICE_MODULE_ID,SERVICE_MODULE_NAME,COUNTRY_ID) VALUES (1,'IN',1);
INSERT INTO ADMIN_SERVICE_MODULE (SERVICE_MODULE_ID,SERVICE_MODULE_NAME,COUNTRY_ID) VALUES (2,'VAS',1);

CREATE SEQUENCE SEQ_ADMIN_SITE_ID AS  BIGINT START WITH 0 NO CYCLE ;
--DROP TABLE ADMIN_SITE;
CREATE TABLE ADMIN_SITE(
SITE_ID BIGINT NOT NULL,
SITE_NAME VARCHAR(64) NOT NULL,
SITE_TYPE CHAR(2) NOT NULL,   --'PR' 'DR'
SERVICE_MODULE_ID BIGINT NOT NULL,
CONSTRAINT ADMIN_SITE_PK PRIMARY KEY (SITE_ID),
CONSTRAINT ADMIN_SITE_SERVICE_ID_FK
	FOREIGN KEY (SERVICE_MODULE_ID)
	REFERENCES ADMIN_SERVICE_MODULE (SERVICE_MODULE_ID)
);


CREATE TABLE ADMIN_NE_GROUP(
NE_GROUP_ID BIGINT NOT NULL,
NE_GROUP_NAME VARCHAR(64) NOT NULL,
NE_GROUP_DESC VARCHAR(256),
CONSTRAINT ADMIN_NE_GROUP_PK PRIMARY KEY (NE_GROUP_ID)
);

CREATE TABLE ADMIN_NE(
NE_ID BIGINT NOT NULL,
NE_NAME VARCHAR(64) NOT NULL,
NE_DESC VARCHAR(256),
CONSTRAINT ADMIN_NE_PK PRIMARY KEY (NE_ID)
);

CREATE TABLE ADMIN_NE_ATTR_TYPE(
NE_ATTR_TYPE CHAR(1),
NE_ATTR_DESC VARCHAR(32),
CONSTRAINT ADMIN_NE_ATTR_TYPE_PK PRIMARY KEY (NE_ATTR_TYPE)
);
INSERT INTO ADMIN_NE_ATTR_TYPE (NE_ATTR_TYPE,NE_ATTR_DESC) VALUES ('I','IP Address');
INSERT INTO ADMIN_NE_ATTR_TYPE (NE_ATTR_TYPE,NE_ATTR_DESC) VALUES ('S','String');
INSERT INTO ADMIN_NE_ATTR_TYPE (NE_ATTR_TYPE,NE_ATTR_DESC) VALUES ('N','Number');
INSERT INTO ADMIN_NE_ATTR_TYPE (NE_ATTR_TYPE,NE_ATTR_DESC) VALUES ('H','Hex');


CREATE TABLE ADMIN_NE_ATTR(
NE_ATTR_ID INT NOT NULL,
NE_ATTR_CODE VARCHAR(32) NOT NULL,
NE_ATTR_TYPE CHAR(1) NOT NULL,
NE_ATTR_DESC VARCHAR(256),
CONSTRAINT ADMIN_NE_ATTR_PK PRIMARY KEY (NE_ATTR_ID)
);
INSERT INTO ADMIN_NE_ATTR(NE_ATTR_ID,NE_ATTR_CODE,NE_ATTR_TYPE,NE_ATTR_DESC) VALUES (1,'SERVICE_IP','I','Service IP');
INSERT INTO ADMIN_NE_ATTR(NE_ATTR_ID,NE_ATTR_CODE,NE_ATTR_TYPE,NE_ATTR_DESC) VALUES (2,'OAM_IP','I','OAM IP');
INSERT INTO ADMIN_NE_ATTR(NE_ATTR_ID,NE_ATTR_CODE,NE_ATTR_TYPE,NE_ATTR_DESC) VALUES (3,'FLOAT_IP','I','Float IP');
INSERT INTO ADMIN_NE_ATTR(NE_ATTR_ID,NE_ATTR_CODE,NE_ATTR_TYPE,NE_ATTR_DESC) VALUES (4,'MODEL','S','Hardware Model');
INSERT INTO ADMIN_NE_ATTR(NE_ATTR_ID,NE_ATTR_CODE,NE_ATTR_TYPE,NE_ATTR_DESC) VALUES (5,'OS','S','Operation System');

CREATE TABLE ADMIN_NE_ATTR_VALUE(
NE_ATTR_VALUE_ID BIGINT NOT NULL,
NE_ATTR_VALUE    VARCHAR(256) ,
NE_ID BIGINT NOT NULL,
CONSTRAINT ADMIN_NE_ATTR_VALUE_PK PRIMARY KEY (NE_ATTR_VALUE_ID)
);
CREATE INDEX IDX_NE_ATTR_VALUE ON ADMIN_NE_ATTR_VALUE(NE_ID);




----------------------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE SEQ_MANAGER_ISSUE_ID AS BIGINT START WITH 1 NO CYCLE ;
--DROP SEQUENCE SEQ_MANAGER_ISSUE RESTRICT
CREATE TABLE MANAGER_ISSUE(
ISSUE_ID BIGINT NOT NULL, 
ISSUE_DESC VARCHAR(256),
ISSUE_SOLUTION VARCHAR(256),
CREATE_DATE TIMESTAMP DEFAULT CURRENT TIMESTAMP,
EXPECT_CLOSE_DATE TIMESTAMP,
PROGRESS VARCHAR(256),
RESPONSE_HUAWEI VARCHAR(256),
STATUS CHAR(1),
OWNER VARCHAR(32),
SERVICE_AFFECT CHAR(1),
SR_NO VARCHAR(128),
CREATE_USER_ID BIGINT,
CONSTRAINT MANAGER_ISSUE_PK PRIMARY KEY (ISSUE_ID)
);



----------------------------------------------------------------------------------------------
--statistic
----------------------------------------------------------------------------------------------
/**********************************
 * KPI
***********************************/
CREATE SEQUENCE SEQ_STATISTIC_KPI_TYPE_ID AS INT START WITH 1 NO CYCLE ;
--DROP TABLE STATISTIC_KPI_TYPE;
CREATE TABLE STATISTIC_KPI_TYPE(
KPI_TYPE_ID INT NOT NULL,
KPI_NAME    VARCHAR(32),
KPI_CATEGORY INT,
BREACH_VALUE NUMERIC(9,9),
TARGET_VALUE NUMERIC(9,9),
KPI_TYPE_DESC VARCHAR(256),
COUNTRY_ID BIGINT NOT NULL,
SERVICE_MODULE_ID BIGINT NOT NULL,
CONSTRAINT STATISTIC_KPI_TYPE_PK PRIMARY KEY (KPI_TYPE_ID),
CONSTRAINT KPI_COUNTRY_FK
	FOREIGN KEY (COUNTRY_ID)
	REFERENCES ADMIN_COUNTRY (COUNTRY_ID),
CONSTRAINT KPI_SERVICE_MODEL_FK
	FOREIGN KEY (SERVICE_MODULE_ID)
	REFERENCES ADMIN_SERVICE_MODULE (SERVICE_MODULE_ID)
);


--DROP TABLE STATISTIC_DAILY_KPI_VALUE;
CREATE TABLE STATISTIC_DAILY_KPI_VALUE(
KPI_TYPE_ID INT,
KPI_VALUE NUMERIC(9,9),
VALUE_DATE DATE,
CONSTRAINT KPI_VALUE_TYPE_FK
	FOREIGN KEY (KPI_TYPE_ID)
	REFERENCES STATISTIC_KPI_TYPE (KPI_TYPE_ID)
);
CREATE INDEX IDX_DAILY_KPI_VALUE ON STATISTIC_DAILY_KPI_VALUE(VALUE_DATE);





