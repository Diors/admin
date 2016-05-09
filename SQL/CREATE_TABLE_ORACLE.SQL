ALTER TABLE ADMIN_USER_ATTR_VALUE
   DROP CONSTRAINT FK_ATTR_VALUE_USER_ATTR_TYPE;

ALTER TABLE ADMIN_USER_ATTR_VALUE
   DROP CONSTRAINT FK_ATTR_VALUE_USER;

ALTER TABLE OAM_MODULE
   DROP CONSTRAINT FK_MODU_COUNTRY;

ALTER TABLE OAM_NE
   DROP CONSTRAINT FK_NE_MODULE;

ALTER TABLE OAM_NE
   DROP CONSTRAINT FK_NE_SITE;

ALTER TABLE OAM_NE
   DROP CONSTRAINT FK_NE_USER;

ALTER TABLE OAM_NE_ATTR_VALUE
   DROP CONSTRAINT FK_NE_ATTR_VALUE_NE;

ALTER TABLE OAM_NE_ATTR_VALUE
   DROP CONSTRAINT FK_NE_ATTR_VALUE_NE_ATTR_TYPE;

ALTER TABLE OAM_SITE
   DROP CONSTRAINT FK_SITE_COUNTRY;

ALTER TABLE STATISTIC_KPI_SRC_KEY
   DROP CONSTRAINT FK_KPI_SRC_KEY_TYPE;

ALTER TABLE STATISTIC_KPI_SRC_VALUE
   DROP CONSTRAINT FK_STATISTI_REFERENCE_STATISTI;

ALTER TABLE STATISTIC_KPI_VALUE
   DROP CONSTRAINT FK_KPI_VALUE_TYPE;

DROP INDEX IDX_CREATE_DATE;

DROP INDEX IDX_KPI_VALUE_DATE;

DROP SEQUENCE SEQ_ADMIN_USER_ID;

DROP SEQUENCE SEQ_OAM_COUNTRY_ID;

DROP SEQUENCE SEQ_OAM_MODULE_ID;

DROP SEQUENCE SEQ_OAM_NE_ID;

DROP SEQUENCE SEQ_OAM_SITE_ID;

DROP SEQUENCE SEQ_STATISTIC_KPI_TYPE_ID;

/*==============================================================*/
/* Database: "DATABASE_1"                                       */
/*==============================================================*/
CREATE DATABASE "DATABASE_1";

CREATE SEQUENCE SEQ_ADMIN_USER_ID
INCREMENT BY 1
START WITH 1
NOCYCLE
 MAXVALUE 999999999;

CREATE SEQUENCE SEQ_OAM_COUNTRY_ID
INCREMENT BY 1
START WITH 1
 MAXVALUE 999999999;

CREATE SEQUENCE SEQ_OAM_MODULE_ID
INCREMENT BY 1
START WITH 1
 MAXVALUE 999999999;

CREATE SEQUENCE SEQ_OAM_NE_ID
INCREMENT BY 1
START WITH 1
 MAXVALUE 999999999;

CREATE SEQUENCE SEQ_OAM_SITE_ID
INCREMENT BY 1
START WITH 1
 MAXVALUE 999999999;

CREATE SEQUENCE SEQ_STATISTIC_KPI_TYPE_ID
INCREMENT BY 1
START WITH 1
 MAXVALUE 999999999;

/*==============================================================*/
/* Table: ADMIN_ROLE                                            */
/*==============================================================*/
CREATE TABLE ADMIN_ROLE;

/*==============================================================*/
/* Table: ADMIN_USER                                            */
/*==============================================================*/
CREATE TABLE ADMIN_USER 
(
   USER_ID              NUMBER(9)            NOT NULL,
   USER_NAME            VARCHAR2(32)         NOT NULL,
   USER_PWD             VARCHAR2(64)         NOT NULL,
   PWD_ERR_CNT          INTEGER,
   LOCK_FLAG            INTEGER,
   CREATE_TIME          DATE                 DEFAULT SYSDATE NOT NULL,
   MODIFY_TIME          DATE,
   LAST_LOGIN_TIME      DATE,
   CONSTRAINT PK_ADMIN_USER PRIMARY KEY (USER_ID)
);

/*==============================================================*/
/* Table: ADMIN_USER_ATTR_TYPE                                  */
/*==============================================================*/
CREATE TABLE ADMIN_USER_ATTR_TYPE 
(
   ATTR_ID              NUMBER(9)            NOT NULL,
   ATTR_CODE            VARCHAR2(32)         NOT NULL,
   ATTR_NAME            VARCHAR2(64)         NOT NULL,
   ATTR_DESC            VARCHAR2(256),
   CONSTRAINT PK_ADMIN_USER_ATTR_TYPE PRIMARY KEY (ATTR_ID)
);

/*==============================================================*/
/* Table: ADMIN_USER_ATTR_VALUE                                 */
/*==============================================================*/
CREATE TABLE ADMIN_USER_ATTR_VALUE 
(
   ATTR_ID              NUMBER(9),
   USER_ID              NUMBER(9),
   ATTR_VALUE           VARCHAR2(128)
);

/*==============================================================*/
/* Table: OAM_COUNTRY                                           */
/*==============================================================*/
CREATE TABLE OAM_COUNTRY 
(
   COUNTRY_ID           NUMBER(9),
   COUNTRY_NAME         VARCHAR2(64),
   COUNTRY_DES          VARCHAR2(256),
   CREATE_DATE          DATE                 DEFAULT SYSDATE
);

/*==============================================================*/
/* Table: OAM_MODULE                                            */
/*==============================================================*/
CREATE TABLE OAM_MODULE 
(
   MODULE_ID            NUMBER(9)            NOT NULL,
   MODULE_NAME          VARCHAR(32)          NOT NULL,
   MODULE_DESC          VARCHAR2(256),
   COUNTRY_ID           NUMBER(9)            NOT NULL,
   CONSTRAINT PK_OAM_MODULE PRIMARY KEY (MODULE_ID)
);

/*==============================================================*/
/* Table: OAM_NE                                                */
/*==============================================================*/
CREATE TABLE OAM_NE 
(
   NE_ID                NUMBER(9)            NOT NULL,
   MODULE_ID            NUMBER(9),
   SITE_ID              NUMBER(9),
   NE_NAME              VARCHAR2(32)         NOT NULL,
   NE_TYPE              CHAR(1)              NOT NULL,
   CREATE_DATE          DATE                 DEFAULT SYSDATE,
   MODIFY_DATE          DATE,
   MODIFY_USER          NUMBER(9),
   NE_DESC              VARCHAR2(256),
   CONSTRAINT PK_OAM_NE PRIMARY KEY (NE_ID)
);

/*==============================================================*/
/* Table: OAM_NE_ATTR_TYPE                                      */
/*==============================================================*/
CREATE TABLE OAM_NE_ATTR_TYPE 
(
   ATTR_TYPE_ID         NUMBER(9)            NOT NULL,
   ATTR_TYPE_CODE       VARCHAR2(32)         NOT NULL,
   ATTR_TYPE_NAME       VARCHAR(128)         NOT NULL,
   ATTR_TYPE_DATA       CHAR(1)              NOT NULL,
   CONSTRAINT PK_OAM_NE_ATTR_TYPE PRIMARY KEY (ATTR_TYPE_ID)
);

/*==============================================================*/
/* Table: OAM_NE_ATTR_VALUE                                     */
/*==============================================================*/
CREATE TABLE OAM_NE_ATTR_VALUE 
(
   ATTR_TYPE_ID         NUMBER(9),
   NE_ID                NUMBER(9),
   ATTR_VALUE           VARCHAR(128)
);

/*==============================================================*/
/* Table: OAM_SITE                                              */
/*==============================================================*/
CREATE TABLE OAM_SITE 
(
   SITE_ID              NUMBER(9)            NOT NULL,
   SITE_NAME            VARCHAR2(32)         NOT NULL,
   SITE_DES             VARCHAR2(256),
   COUNTRY_ID           NUMBER(9)            NOT NULL,
   CONSTRAINT PK_OAM_SITE PRIMARY KEY (SITE_ID)
);

/*==============================================================*/
/* Table: STATISTIC_KPI_SRC_KEY                                 */
/*==============================================================*/
CREATE TABLE STATISTIC_KPI_SRC_KEY 
(
   KPI_SRC_KEY_ID       NUMBER(9)            NOT NULL,
   SRC_KEY_CODE         VARCHAR(32)          NOT NULL,
   SRC_KEY_NAME         VARCHAR(64)          NOT NULL,
   KPI_TYPE_ID          NUMBER(9),
   CONSTRAINT PK_STATISTIC_KPI_SRC_KEY PRIMARY KEY (KPI_SRC_KEY_ID)
);

/*==============================================================*/
/* Table: STATISTIC_KPI_SRC_VALUE                               */
/*==============================================================*/
CREATE TABLE STATISTIC_KPI_SRC_VALUE 
(
   KPI_SRC_KEY_ID       NUMBER(9),
   KPI_SRC_VALUE        NUMBER(9.9)          NOT NULL,
   CREATE_DATE          DATE                 NOT NULL
);

/*==============================================================*/
/* Index: IDX_CREATE_DATE                                       */
/*==============================================================*/
CREATE INDEX IDX_CREATE_DATE ON STATISTIC_KPI_SRC_VALUE (
   CREATE_DATE ASC
);

/*==============================================================*/
/* Table: STATISTIC_KPI_TYPE                                    */
/*==============================================================*/
CREATE TABLE STATISTIC_KPI_TYPE 
(
   KPI_TYPE_ID          NUMBER(9)            NOT NULL,
   KPI_CODE             VARCHAR(128)         NOT NULL,
   KPI_CALC_TYPE        CHAR(1)              NOT NULL,
   KPI_CALC_FORMULA     VARCHAR(256),
   BREACH_VALUE         NUMBER(9,9)          NOT NULL,
   TARGET_VALUE         NUMBER(9,9)          NOT NULL,
   KPI_TYPE_DESC        VARCHAR(128),
   COUNTRY_ID           NUMBER(9)            NOT NULL,
   MODULE_ID            NUMBER(9)            NOT NULL,
   CREATE_DATE          DATE                 NOT NULL,
   MODIRY_DATE          DATE,
   MODIFY_USER          NUMBER(9),
   CONSTRAINT PK_STATISTIC_KPI_TYPE PRIMARY KEY (KPI_TYPE_ID)
);

COMMENT ON COLUMN STATISTIC_KPI_TYPE.KPI_CALC_TYPE IS
'A - AUTOMATIC
M - MANUAL';

/*==============================================================*/
/* Table: STATISTIC_KPI_VALUE                                   */
/*==============================================================*/
CREATE TABLE STATISTIC_KPI_VALUE 
(
   KPI_TYPE_ID          NUMBER(9)            NOT NULL,
   KPI_VALUE            NUMBER(9,9)          NOT NULL,
   KPI_DATE             DATE                 NOT NULL,
   MODIFY_DATE          DATE,
   MODIFY_USER          NUMBER(9),
   COUNTRY_ID           NUMBER(9)            NOT NULL,
   MODULE_ID            NUMBER(9)            NOT NULL,
   CONSTRAINT PK_STATISTIC_KPI_VALUE PRIMARY KEY ()
);

/*==============================================================*/
/* Index: IDX_KPI_VALUE_DATE                                    */
/*==============================================================*/
CREATE INDEX IDX_KPI_VALUE_DATE ON STATISTIC_KPI_VALUE (
   KPI_DATE ASC
);

/*==============================================================*/
/* Table: "PERF_CPU"                                            */
/*==============================================================*/
CREATE TABLE "PERF_CPU";

/*==============================================================*/
/* Table: "PERF_DISK"                                           */
/*==============================================================*/
CREATE TABLE "PERF_DISK";

/*==============================================================*/
/* Table: "PERF_IO"                                             */
/*==============================================================*/
CREATE TABLE "PERF_IO";

/*==============================================================*/
/* Table: "PERF_MEMORY"                                         */
/*==============================================================*/
CREATE TABLE "PERF_MEMORY";

/*==============================================================*/
/* Table: "PERF_SERVICE_TYPE"                                   */
/*==============================================================*/
CREATE TABLE "PERF_SERVICE_TYPE";

/*==============================================================*/
/* Table: "PERF_SERVICE_VALUE"                                  */
/*==============================================================*/
CREATE TABLE "PERF_SERVICE_VALUE";

ALTER TABLE ADMIN_USER_ATTR_VALUE
   ADD CONSTRAINT FK_ATTR_VALUE_USER_ATTR_TYPE FOREIGN KEY (ATTR_ID)
      REFERENCES ADMIN_USER_ATTR_TYPE (ATTR_ID);

ALTER TABLE ADMIN_USER_ATTR_VALUE
   ADD CONSTRAINT FK_ATTR_VALUE_USER FOREIGN KEY (USER_ID)
      REFERENCES ADMIN_USER (USER_ID);

ALTER TABLE OAM_MODULE
   ADD CONSTRAINT FK_MODU_COUNTRY FOREIGN KEY (COUNTRY_ID)
      REFERENCES OAM_COUNTRY (COUNTRY_ID);

ALTER TABLE OAM_NE
   ADD CONSTRAINT FK_NE_MODULE FOREIGN KEY (MODULE_ID)
      REFERENCES OAM_MODULE (MODULE_ID);

ALTER TABLE OAM_NE
   ADD CONSTRAINT FK_NE_SITE FOREIGN KEY (SITE_ID)
      REFERENCES OAM_SITE (SITE_ID);

ALTER TABLE OAM_NE
   ADD CONSTRAINT FK_NE_USER FOREIGN KEY (MODIFY_USER)
      REFERENCES ADMIN_USER (USER_ID);

ALTER TABLE OAM_NE_ATTR_VALUE
   ADD CONSTRAINT FK_NE_ATTR_VALUE_NE FOREIGN KEY (NE_ID)
      REFERENCES OAM_NE (NE_ID);

ALTER TABLE OAM_NE_ATTR_VALUE
   ADD CONSTRAINT FK_NE_ATTR_VALUE_NE_ATTR_TYPE FOREIGN KEY (ATTR_TYPE_ID)
      REFERENCES OAM_NE_ATTR_TYPE (ATTR_TYPE_ID);

ALTER TABLE OAM_SITE
   ADD CONSTRAINT FK_SITE_COUNTRY FOREIGN KEY (COUNTRY_ID)
      REFERENCES OAM_COUNTRY (COUNTRY_ID);

ALTER TABLE STATISTIC_KPI_SRC_KEY
   ADD CONSTRAINT FK_KPI_SRC_KEY_TYPE FOREIGN KEY (KPI_TYPE_ID)
      REFERENCES STATISTIC_KPI_TYPE (KPI_TYPE_ID);

ALTER TABLE STATISTIC_KPI_SRC_VALUE
   ADD CONSTRAINT FK_STATISTI_REFERENCE_STATISTI FOREIGN KEY (KPI_SRC_KEY_ID)
      REFERENCES STATISTIC_KPI_SRC_KEY (KPI_SRC_KEY_ID);

ALTER TABLE STATISTIC_KPI_VALUE
   ADD CONSTRAINT FK_KPI_VALUE_TYPE FOREIGN KEY (KPI_TYPE_ID)
      REFERENCES STATISTIC_KPI_TYPE (KPI_TYPE_ID);
