/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     2017/3/6 10:42:01                            */
/*==============================================================*/


/*==============================================================*/
/* Table: BPM_AGENT                                             */
/*==============================================================*/
CREATE TABLE BPM_AGENT  (
   AGENT_ID_            VARCHAR2(64)                    NOT NULL,
   SUBJECT_             VARCHAR2(100)                   NOT NULL,
   TO_USER_ID_          VARCHAR2(64)                    NOT NULL,
   AGENT_USER_ID_       VARCHAR2(64)                    NOT NULL,
   START_TIME_          DATE                            NOT NULL,
   END_TIME_            DATE                            NOT NULL,
   TYPE_                VARCHAR2(20)                    NOT NULL,
   STATUS_              VARCHAR2(20)                    NOT NULL,
   DESCP_               VARCHAR2(300),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_AGENT PRIMARY KEY (AGENT_ID_)
);

COMMENT ON TABLE BPM_AGENT IS
'���̷�������';

COMMENT ON COLUMN BPM_AGENT.AGENT_ID_ IS
'����ID';

COMMENT ON COLUMN BPM_AGENT.TO_USER_ID_ IS
'������ID';

COMMENT ON COLUMN BPM_AGENT.AGENT_USER_ID_ IS
'��������ID';

COMMENT ON COLUMN BPM_AGENT.START_TIME_ IS
'��ʼʱ��';

COMMENT ON COLUMN BPM_AGENT.END_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_AGENT.TYPE_ IS
'��������
ALL=ȫ������
PART=���ִ���';

COMMENT ON COLUMN BPM_AGENT.STATUS_ IS
'״̬
ENABLED
DISABLED';

COMMENT ON COLUMN BPM_AGENT.DESCP_ IS
'����';

COMMENT ON COLUMN BPM_AGENT.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_AGENT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_AGENT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_AGENT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_AGENT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_AGENT_SOL                                         */
/*==============================================================*/
CREATE TABLE BPM_AGENT_SOL  (
   AS_ID_               VARCHAR2(64)                    NOT NULL,
   AGENT_ID_            VARCHAR2(64),
   SOL_ID_              VARCHAR2(64)                    NOT NULL,
   SOL_NAME_            VARCHAR2(100)                   NOT NULL,
   AGENT_TYPE_          VARCHAR2(20),
   CONDITION_           CLOB,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_AGENT_SOL PRIMARY KEY (AS_ID_)
);

COMMENT ON TABLE BPM_AGENT_SOL IS
'���ִ�������̷���';

COMMENT ON COLUMN BPM_AGENT_SOL.AS_ID_ IS
'������ID';

COMMENT ON COLUMN BPM_AGENT_SOL.AGENT_ID_ IS
'����ID';

COMMENT ON COLUMN BPM_AGENT_SOL.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_AGENT_SOL.SOL_NAME_ IS
'�����������';

COMMENT ON COLUMN BPM_AGENT_SOL.AGENT_TYPE_ IS
'��������
ȫ��=ALL
��������=PART';

COMMENT ON COLUMN BPM_AGENT_SOL.CONDITION_ IS
'��������';

COMMENT ON COLUMN BPM_AGENT_SOL.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_AGENT_SOL.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_AGENT_SOL.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_AGENT_SOL.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_AGENT_SOL.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_AUTH_DEF                                          */
/*==============================================================*/
CREATE TABLE BPM_AUTH_DEF  (
   ID_                  VARCHAR2(50),
   SOL_ID_              VARCHAR2(50),
   RIGHT_JSON_          VARCHAR2(1000),
   SETTING_ID_          VARCHAR2(50)
);

COMMENT ON TABLE BPM_AUTH_DEF IS
'��Ȩ���̶���';

COMMENT ON COLUMN BPM_AUTH_DEF.ID_ IS
'����';

COMMENT ON COLUMN BPM_AUTH_DEF.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_AUTH_DEF.RIGHT_JSON_ IS
'Ȩ��JSON';

/*==============================================================*/
/* Table: BPM_AUTH_RIGHTS                                       */
/*==============================================================*/
CREATE TABLE BPM_AUTH_RIGHTS  (
   ID_                  VARCHAR2(50),
   RIGHT_TYPE_          VARCHAR2(50),
   TYPE_                VARCHAR2(50),
   AUTH_ID_             VARCHAR2(50),
   AUTH_NAME_           VARCHAR2(50),
   SETTING_ID_          VARCHAR2(50)
);

COMMENT ON TABLE BPM_AUTH_RIGHTS IS
'���̶�����Ȩ';

COMMENT ON COLUMN BPM_AUTH_RIGHTS.ID_ IS
'����';

COMMENT ON COLUMN BPM_AUTH_RIGHTS.RIGHT_TYPE_ IS
'Ȩ������(def,���̶���,inst,����ʵ��,task,��������,start,��������)';

COMMENT ON COLUMN BPM_AUTH_RIGHTS.TYPE_ IS
'��Ȩ����(all,ȫ��,user,�û�,group,�û���)';

COMMENT ON COLUMN BPM_AUTH_RIGHTS.AUTH_ID_ IS
'��Ȩ����ID';

COMMENT ON COLUMN BPM_AUTH_RIGHTS.AUTH_NAME_ IS
'��Ȩ��������';

/*==============================================================*/
/* Table: BPM_AUTH_SETTING                                      */
/*==============================================================*/
CREATE TABLE BPM_AUTH_SETTING  (
   ID_                  VARCHAR2(50)                    NOT NULL,
   NAME_                VARCHAR2(50),
   ENABLE_              VARCHAR2(10),
   TENANT_ID_           VARCHAR2(50),
   CREATE_TIME_         DATE,
   UPDATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(50),
   UPDATE_BY_           VARCHAR2(50),
   CONSTRAINT PK_BPM_AUTH_SETTING PRIMARY KEY (ID_)
);

COMMENT ON TABLE BPM_AUTH_SETTING IS
'���̶�����Ȩ';

COMMENT ON COLUMN BPM_AUTH_SETTING.ID_ IS
'����';

COMMENT ON COLUMN BPM_AUTH_SETTING.NAME_ IS
'��Ȩ����';

COMMENT ON COLUMN BPM_AUTH_SETTING.ENABLE_ IS
'�Ƿ�����';

COMMENT ON COLUMN BPM_AUTH_SETTING.TENANT_ID_ IS
'�⻧ID';

COMMENT ON COLUMN BPM_AUTH_SETTING.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_AUTH_SETTING.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_AUTH_SETTING.CREATE_BY_ IS
'������';

COMMENT ON COLUMN BPM_AUTH_SETTING.UPDATE_BY_ IS
'������';

/*==============================================================*/
/* Table: BPM_BUS_LINK                                          */
/*==============================================================*/
CREATE TABLE BPM_BUS_LINK  (
   BPM_BUS_LINK_ID_     VARCHAR2(64)                    NOT NULL,
   FORM_INST_ID_        VARCHAR2(64),
   INST_ID_             VARCHAR2(64),
   LINK_PK_             VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_BUS_LINK PRIMARY KEY (BPM_BUS_LINK_ID_)
);

COMMENT ON TABLE BPM_BUS_LINK IS
'BPM_BUS_LINK������ҵ�����ӱ�';

COMMENT ON COLUMN BPM_BUS_LINK.BPM_BUS_LINK_ID_ IS
'����';

COMMENT ON COLUMN BPM_BUS_LINK.FORM_INST_ID_ IS
'��ʵ��ID';

COMMENT ON COLUMN BPM_BUS_LINK.INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN BPM_BUS_LINK.LINK_PK_ IS
'���������������ID';

COMMENT ON COLUMN BPM_BUS_LINK.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN BPM_BUS_LINK.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_BUS_LINK.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_BUS_LINK.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_BUS_LINK.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_CHECK_FILE                                        */
/*==============================================================*/
CREATE TABLE BPM_CHECK_FILE  (
   FILE_ID_             VARCHAR2(64)                    NOT NULL,
   FILE_NAME_           VARCHAR2(255),
   JUMP_ID_             VARCHAR2(64)                    NOT NULL,
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_BPM_CHECK_FILE PRIMARY KEY (FILE_ID_, JUMP_ID_)
);

COMMENT ON TABLE BPM_CHECK_FILE IS
'�����������';

COMMENT ON COLUMN BPM_CHECK_FILE.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_CHECK_FILE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_CHECK_FILE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_CHECK_FILE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_CHECK_FILE.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: BPM_DEF                                               */
/*==============================================================*/
CREATE TABLE BPM_DEF  (
   DEF_ID_              VARCHAR2(64)                    NOT NULL,
   "TREE_ID_"           VARCHAR2(64),
   SUBJECT_             VARCHAR2(255)                   NOT NULL,
   DESCP_               VARCHAR2(1024),
   KEY_                 VARCHAR2(255)                   NOT NULL,
   ACT_DEF_ID_          VARCHAR2(255),
   ACT_DEP_ID_          VARCHAR2(255),
   STATUS_              VARCHAR2(20)                    NOT NULL,
   VERSION_             INTEGER                         NOT NULL,
   IS_MAIN_             VARCHAR2(20),
   SETTING_             CLOB,
   MODEL_ID_            VARCHAR2(64)                    NOT NULL,
   MAIN_DEF_ID_         VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_DEF PRIMARY KEY (DEF_ID_)
);

COMMENT ON TABLE BPM_DEF IS
'���̶���';

COMMENT ON COLUMN BPM_DEF."TREE_ID_" IS
'����Id';

COMMENT ON COLUMN BPM_DEF.SUBJECT_ IS
'����';

COMMENT ON COLUMN BPM_DEF.DESCP_ IS
'����';

COMMENT ON COLUMN BPM_DEF.KEY_ IS
'��ʶKey';

COMMENT ON COLUMN BPM_DEF.ACT_DEF_ID_ IS
'Activiti���̶���ID';

COMMENT ON COLUMN BPM_DEF.ACT_DEP_ID_ IS
'ACT���̷���ID';

COMMENT ON COLUMN BPM_DEF.STATUS_ IS
'״̬';

COMMENT ON COLUMN BPM_DEF.VERSION_ IS
'�汾��';

COMMENT ON COLUMN BPM_DEF.IS_MAIN_ IS
'���汾';

COMMENT ON COLUMN BPM_DEF.SETTING_ IS
'������������';

COMMENT ON COLUMN BPM_DEF.MODEL_ID_ IS
'���ģ��ID
����Activiti�е�ACT_RE_MODEL������';

COMMENT ON COLUMN BPM_DEF.MAIN_DEF_ID_ IS
'������ID';

COMMENT ON COLUMN BPM_DEF.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_DEF.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_DEF.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_DEF.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_DEF.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_FM_ATT                                            */
/*==============================================================*/
CREATE TABLE BPM_FM_ATT  (
   ATT_ID_              VARCHAR2(64)                    NOT NULL,
   TITLE_               VARCHAR2(64)                    NOT NULL,
   KEY_                 VARCHAR2(100)                   NOT NULL,
   DATA_TYPE_           VARCHAR2(64)                    NOT NULL,
   TYPE_                VARCHAR2(64),
   DEF_VAL_             VARCHAR2(255),
   REQUIRED_            VARCHAR2(20)                    NOT NULL,
   LEN_                 INTEGER,
   PREC_                INTEGER,
   SN_                  INTEGER                         NOT NULL,
   GROUP_TITLE_         VARCHAR2(100),
   REMARK_              VARCHAR2(512),
   CTL_TYPE_            VARCHAR2(50),
   CTL_CONFIG_          VARCHAR2(512),
   REF_FM_ID_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_FM_ATT PRIMARY KEY (ATT_ID_)
);

COMMENT ON TABLE BPM_FM_ATT IS
'����ģ�����Զ���';

COMMENT ON COLUMN BPM_FM_ATT.TITLE_ IS
'���Ա�ǩ';

COMMENT ON COLUMN BPM_FM_ATT.KEY_ IS
'���Ա�ʶ';

COMMENT ON COLUMN BPM_FM_ATT.DATA_TYPE_ IS
'������������
String
Date
Float
Double

Ԫ�������ͻ��ⲿģ��ID';

COMMENT ON COLUMN BPM_FM_ATT.TYPE_ IS
'��������
Ԫ����=META
����=COLLECTION-MODEL
�ⲿ����ģ��=EXT_MODEL';

COMMENT ON COLUMN BPM_FM_ATT.DEF_VAL_ IS
'Ĭ��ֵ';

COMMENT ON COLUMN BPM_FM_ATT.REQUIRED_ IS
'�Ƿ����';

COMMENT ON COLUMN BPM_FM_ATT.LEN_ IS
'����';

COMMENT ON COLUMN BPM_FM_ATT.PREC_ IS
'����(С��λ)';

COMMENT ON COLUMN BPM_FM_ATT.SN_ IS
'���';

COMMENT ON COLUMN BPM_FM_ATT.GROUP_TITLE_ IS
'�������';

COMMENT ON COLUMN BPM_FM_ATT.REMARK_ IS
'���԰�������';

COMMENT ON COLUMN BPM_FM_ATT.CTL_TYPE_ IS
'�ؼ�����
����󶨵Ŀؼ�����';

COMMENT ON COLUMN BPM_FM_ATT.CTL_CONFIG_ IS
'�ؼ����ò���(JSON����)';

COMMENT ON COLUMN BPM_FM_ATT.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN BPM_FM_ATT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_FM_ATT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_FM_ATT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_FM_ATT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_FORM_INST                                         */
/*==============================================================*/
CREATE TABLE BPM_FORM_INST  (
   FORM_INST_ID_        VARCHAR2(64)                    NOT NULL,
   SUBJECT_             VARCHAR2(127)                   ,
   INST_ID_             VARCHAR2(64)                    ,
   ACT_INST_ID_         VARCHAR2(64),
   ACT_DEF_ID_          VARCHAR2(64)                    ,
   DEF_ID_              VARCHAR2(64)                    ,
   SOL_ID_              VARCHAR2(64),
   FM_ID_               VARCHAR2(64),
   FM_VIEW_ID_          VARCHAR2(64),
   STATUS_              VARCHAR2(20)                    ,
   JSON_DATA_           CLOB,
   IS_PERSIST_          VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_FORM_INST PRIMARY KEY (FORM_INST_ID_)
);

COMMENT ON TABLE BPM_FORM_INST IS
'��������ģ��ʵ��';

COMMENT ON COLUMN BPM_FORM_INST.SUBJECT_ IS
'ʵ������';

COMMENT ON COLUMN BPM_FORM_INST.INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN BPM_FORM_INST.ACT_INST_ID_ IS
'ACTʵ��ID';

COMMENT ON COLUMN BPM_FORM_INST.ACT_DEF_ID_ IS
'ACT����ID';

COMMENT ON COLUMN BPM_FORM_INST.DEF_ID_ IS
'���̶���ID';

COMMENT ON COLUMN BPM_FORM_INST.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_FORM_INST.FM_ID_ IS
'����ģ��ID';

COMMENT ON COLUMN BPM_FORM_INST.FM_VIEW_ID_ IS
'����ͼID';

COMMENT ON COLUMN BPM_FORM_INST.STATUS_ IS
'״̬';

COMMENT ON COLUMN BPM_FORM_INST.JSON_DATA_ IS
'����JSON';

COMMENT ON COLUMN BPM_FORM_INST.IS_PERSIST_ IS
'�Ƿ�־û�';

COMMENT ON COLUMN BPM_FORM_INST.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN BPM_FORM_INST.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_FORM_INST.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_FORM_INST.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_FORM_INST.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_FORM_TEMPLATE                                     */
/*==============================================================*/
CREATE TABLE BPM_FORM_TEMPLATE  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(50),
   ALIAS_               VARCHAR2(50),
   TEMPLATE_            CLOB,
   TYPE_                VARCHAR2(50),
   INIT_                SMALLINT,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CATEGORY_            VARCHAR2(50),
   CONSTRAINT PK_BPM_FORM_TEMPLATE PRIMARY KEY (ID_)
);

COMMENT ON TABLE BPM_FORM_TEMPLATE IS
'��ģ��';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.ID_ IS
'����';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.NAME_ IS
'ģ������';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.ALIAS_ IS
'����';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.TEMPLATE_ IS
'ģ��';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.TYPE_ IS
'ģ������ (pc,mobile)';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.INIT_ IS
'��ʼ��ӵ�(1��,0��)';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.TENANT_ID_ IS
'�⻧ID';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.CREATE_BY_ IS
'������';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.UPDATE_BY_ IS
'������';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.CATEGORY_ IS
'���';

/*==============================================================*/
/* Table: BPM_FORM_VIEW                                         */
/*==============================================================*/
CREATE TABLE BPM_FORM_VIEW  (
   VIEW_ID_             VARCHAR2(64)                    NOT NULL,
   TREE_ID_             VARCHAR2(64),
   NAME_                VARCHAR2(255)                   NOT NULL,
   KEY_                 VARCHAR2(100)                   NOT NULL,
   TYPE_                VARCHAR2(50)                    NOT NULL,
   RENDER_URL_          VARCHAR2(255),
   VERSION_             INTEGER                         NOT NULL,
   IS_MAIN_             VARCHAR2(20)                    NOT NULL,
   MAIN_VIEW_ID_        VARCHAR2(64),
   DESCP_               CLOB,
   STATUS_              VARCHAR2(20)                    NOT NULL,
   IS_BIND_MD_          VARCHAR2(20),
   TEMPLATE_VIEW_       CLOB,
   TEMPLATE_ID_         VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   BO_DEFID_            VARCHAR2(20),
   TITLE_            VARCHAR2(255),
   CONSTRAINT PK_BPM_FORM_VIEW PRIMARY KEY (VIEW_ID_)
);

COMMENT ON TABLE BPM_FORM_VIEW IS
'ҵ�����ͼ';

COMMENT ON COLUMN BPM_FORM_VIEW.TREE_ID_ IS
'����Id';

COMMENT ON COLUMN BPM_FORM_VIEW.NAME_ IS
'����';

COMMENT ON COLUMN BPM_FORM_VIEW.KEY_ IS
'��ʶ��';

COMMENT ON COLUMN BPM_FORM_VIEW.TYPE_ IS
'����
ONLINE=���߱�
URL=���¶��Ʊ�';

COMMENT ON COLUMN BPM_FORM_VIEW.RENDER_URL_ IS
'��չʾURL';

COMMENT ON COLUMN BPM_FORM_VIEW.IS_MAIN_ IS
'�Ƿ�Ϊ���汾';

COMMENT ON COLUMN BPM_FORM_VIEW.MAIN_VIEW_ID_ IS
'�������汾��ͼID';

COMMENT ON COLUMN BPM_FORM_VIEW.DESCP_ IS
'��ͼ˵��';

COMMENT ON COLUMN BPM_FORM_VIEW.STATUS_ IS
'״̬';

COMMENT ON COLUMN BPM_FORM_VIEW.IS_BIND_MD_ IS
'�Ƿ��ҵ��ģ��
YES=��
NO=��';

COMMENT ON COLUMN BPM_FORM_VIEW.TEMPLATE_VIEW_ IS
'ģ������ID
����������ͼ��ģ������ID';

COMMENT ON COLUMN BPM_FORM_VIEW.TEMPLATE_ID_ IS
'ģ������';

COMMENT ON COLUMN BPM_FORM_VIEW.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN BPM_FORM_VIEW.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_FORM_VIEW.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_FORM_VIEW.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_FORM_VIEW.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_FORM_VIEW.BO_DEFID_ IS
'BO����ID';

COMMENT ON COLUMN BPM_FORM_VIEW.TITLE_ IS
'������';

/*==============================================================*/
/* Table: BPM_FV_RIGHT                                          */
/*==============================================================*/
CREATE TABLE BPM_FV_RIGHT  (
   RIGHT_ID_            VARCHAR2(64)                    NOT NULL,
   VIEW_ID_             VARCHAR2(64)                    NOT NULL,
   FIELD_NAME_          VARCHAR2(255)                   NOT NULL,
   FIELD_LABEL_         VARCHAR2(255)                   NOT NULL,
   EDIT_                CLOB,
   EDIT_DF_             CLOB,
   READ_                CLOB,
   READ_DF_             CLOB,
   HIDE_                CLOB,
   HIDE_DF_             CLOB,
   SN_                  INTEGER,
   NODE_ID_             VARCHAR2(64),
   SOL_ID_              VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_FV_RIGHT PRIMARY KEY (RIGHT_ID_)
);

COMMENT ON TABLE BPM_FV_RIGHT IS
'����ͼ�ֶ�Ȩ��';

COMMENT ON COLUMN BPM_FV_RIGHT.RIGHT_ID_ IS
'Ȩ��ID';

COMMENT ON COLUMN BPM_FV_RIGHT.VIEW_ID_ IS
'ҵ�����ͼID';

COMMENT ON COLUMN BPM_FV_RIGHT.FIELD_NAME_ IS
'�ֶ�·��';

COMMENT ON COLUMN BPM_FV_RIGHT.EDIT_ IS
'�༭Ȩ������';

COMMENT ON COLUMN BPM_FV_RIGHT.EDIT_DF_ IS
'�༭Ȩ��
��ʽ��
{
all:false,
userIds:'''',
unames:'''',
groupIds:'''',
gnames:''''
}';

COMMENT ON COLUMN BPM_FV_RIGHT.READ_ IS
'ֻ��Ȩ��';

COMMENT ON COLUMN BPM_FV_RIGHT.READ_DF_ IS
'ֻ��Ȩ������';

COMMENT ON COLUMN BPM_FV_RIGHT.HIDE_ IS
'����Ȩ��';

COMMENT ON COLUMN BPM_FV_RIGHT.HIDE_DF_ IS
'����Ȩ������';

COMMENT ON COLUMN BPM_FV_RIGHT.SN_ IS
'���';

COMMENT ON COLUMN BPM_FV_RIGHT.NODE_ID_ IS
'���̽ڵ�ID';

COMMENT ON COLUMN BPM_FV_RIGHT.SOL_ID_ IS
'���̽������Id';

COMMENT ON COLUMN BPM_FV_RIGHT.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN BPM_FV_RIGHT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_FV_RIGHT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_FV_RIGHT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_FV_RIGHT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_INST                                              */
/*==============================================================*/
CREATE TABLE BPM_INST  (
   INST_ID_             VARCHAR2(64)                    NOT NULL,
   DEF_ID_              VARCHAR2(64)                    NOT NULL,
   ACT_INST_ID_         VARCHAR2(64),
   ACT_DEF_ID_          VARCHAR2(64)                    NOT NULL,
   SOL_ID_              VARCHAR2(64),
   INST_NO_             VARCHAR2(50),
   IS_USE_BMODEL_       VARCHAR2(20),
   SUBJECT_             VARCHAR2(255),
   STATUS_              VARCHAR2(20),
   VERSION_             INTEGER,
   BUS_KEY_             VARCHAR2(64)                    NOT NULL,
   CHECK_FILE_ID_       VARCHAR2(64),
   FORM_INST_ID_        VARCHAR2(64),
   IS_TEST_             VARCHAR2(20),
   ERRORS_              CLOB,
   END_TIME_            DATE,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   DATA_SAVE_MODE_      VARCHAR2(10),
   BO_DEF_ID_           VARCHAR2(20),
   CONSTRAINT PK_BPM_INST PRIMARY KEY (INST_ID_)
);

COMMENT ON TABLE BPM_INST IS
'����ʵ��';

COMMENT ON COLUMN BPM_INST.DEF_ID_ IS
'���̶���ID';

COMMENT ON COLUMN BPM_INST.ACT_INST_ID_ IS
'Activitiʵ��ID';

COMMENT ON COLUMN BPM_INST.ACT_DEF_ID_ IS
'Activiti����ID';

COMMENT ON COLUMN BPM_INST.SOL_ID_ IS
'�������ID_';

COMMENT ON COLUMN BPM_INST.INST_NO_ IS
'����ʵ��������';

COMMENT ON COLUMN BPM_INST.IS_USE_BMODEL_ IS
'����ʹ��ҵ��ģ��
YES=��ʾ�����κα���ͼ';

COMMENT ON COLUMN BPM_INST.SUBJECT_ IS
'����';

COMMENT ON COLUMN BPM_INST.STATUS_ IS
'����״̬';

COMMENT ON COLUMN BPM_INST.VERSION_ IS
'�汾';

COMMENT ON COLUMN BPM_INST.BUS_KEY_ IS
'ҵ���ID';

COMMENT ON COLUMN BPM_INST.CHECK_FILE_ID_ IS
'������������ID';

COMMENT ON COLUMN BPM_INST.FORM_INST_ID_ IS
'ҵ�������ID';

COMMENT ON COLUMN BPM_INST.IS_TEST_ IS
'�Ƿ�Ϊ����';

COMMENT ON COLUMN BPM_INST.END_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_INST.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_INST.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_INST.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_INST.DATA_SAVE_MODE_ IS
'���ݱ���ģʽ(all,json,db)';

COMMENT ON COLUMN BPM_INST.BO_DEF_ID_ IS
'BO����ID';

/*==============================================================*/
/* Table: BPM_INST_ATTACH                                       */
/*==============================================================*/
CREATE TABLE BPM_INST_ATTACH  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   INST_ID_             VARCHAR2(64)                    NOT NULL,
   FILE_ID_             VARCHAR2(64)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_INST_ATTACH PRIMARY KEY (ID_)
);

COMMENT ON TABLE BPM_INST_ATTACH IS
'����ʵ������';

COMMENT ON COLUMN BPM_INST_ATTACH.INST_ID_ IS
'ʵ��Id';

COMMENT ON COLUMN BPM_INST_ATTACH.FILE_ID_ IS
'�ļ�ID';

COMMENT ON COLUMN BPM_INST_ATTACH.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_INST_ATTACH.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_ATTACH.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_INST_ATTACH.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_ATTACH.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_INST_CC                                           */
/*==============================================================*/
CREATE TABLE BPM_INST_CC  (
   CC_ID_               VARCHAR2(64)                    NOT NULL,
   INST_ID_             VARCHAR2(64)                    NOT NULL,
   SUBJECT_             VARCHAR2(255)                   NOT NULL,
   NODE_ID_             VARCHAR2(255),
   NODE_NAME_           VARCHAR2(255),
   FROM_USER_           VARCHAR2(50),
   FROM_USER_ID_        VARCHAR2(255),
   SOL_ID_              VARCHAR2(64),
   TREE_ID_             VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_INST_CC PRIMARY KEY (CC_ID_)
);

COMMENT ON TABLE BPM_INST_CC IS
'���̳���';

COMMENT ON COLUMN BPM_INST_CC.INST_ID_ IS
'ʵ��Id';

COMMENT ON COLUMN BPM_INST_CC.SUBJECT_ IS
'���ͱ���';

COMMENT ON COLUMN BPM_INST_CC.NODE_ID_ IS
'�ڵ�ID';

COMMENT ON COLUMN BPM_INST_CC.NODE_NAME_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_INST_CC.FROM_USER_ IS
'������';

COMMENT ON COLUMN BPM_INST_CC.FROM_USER_ID_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_CC.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_INST_CC.TREE_ID_ IS
'����ID';

COMMENT ON COLUMN BPM_INST_CC.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_INST_CC.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_CC.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_INST_CC.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_CC.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_INST_CP                                           */
/*==============================================================*/
CREATE TABLE BPM_INST_CP  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   USER_ID_             VARCHAR2(64),
   GROUP_ID_            VARCHAR2(64),
   IS_READ_             VARCHAR2(10),
   CC_ID_               VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_INST_CP PRIMARY KEY (ID_)
);

COMMENT ON TABLE BPM_INST_CP IS
'���̳�����Ա';

COMMENT ON COLUMN BPM_INST_CP.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN BPM_INST_CP.GROUP_ID_ IS
'�û���Id';

COMMENT ON COLUMN BPM_INST_CP.CC_ID_ IS
'����ID';

COMMENT ON COLUMN BPM_INST_CP.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_INST_CP.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_CP.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_INST_CP.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_CP.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_INST_CTL                                          */
/*==============================================================*/
CREATE TABLE BPM_INST_CTL  (
   CTL_ID               VARCHAR2(64)                    NOT NULL,
   BPM_INST_ID_         VARCHAR2(64),
   INST_ID_             VARCHAR2(64),
   TYPE_                VARCHAR2(50),
   RIGHT_               VARCHAR2(60),
   ALLOW_ATTEND_        VARCHAR2(20),
   ALLOW_STARTOR_       VARCHAR2(20),
   GROUP_IDS_           CLOB,
   USER_IDS_            CLOB,
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_BPM_INST_CTL PRIMARY KEY (CTL_ID)
);

COMMENT ON TABLE BPM_INST_CTL IS
'���̸���Ȩ��';

COMMENT ON COLUMN BPM_INST_CTL.INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN BPM_INST_CTL.TYPE_ IS
'READ=�Ķ�Ȩ��
FILE=����Ȩ��';

COMMENT ON COLUMN BPM_INST_CTL.RIGHT_ IS
'ALL=ȫ��Ȩ��
EDIT=�༭
DEL=ɾ��
PRINT=��ӡ
DOWN=����';

COMMENT ON COLUMN BPM_INST_CTL.ALLOW_STARTOR_ IS
'��������
YES';

COMMENT ON COLUMN BPM_INST_CTL.GROUP_IDS_ IS
'�û���Ids������û���Id�á������ָ';

COMMENT ON COLUMN BPM_INST_CTL.USER_IDS_ IS
'�û�Ids������û�Id�á������ָ';

COMMENT ON COLUMN BPM_INST_CTL.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_INST_CTL.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_CTL.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_INST_CTL.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_CTL.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: BPM_INST_READ                                         */
/*==============================================================*/
CREATE TABLE BPM_INST_READ  (
   READ_ID_             VARCHAR2(64)                    NOT NULL,
   INST_ID_             VARCHAR2(64),
   USER_ID_             VARCHAR2(64),
   STATE_               VARCHAR2(50),
   DEP_ID_              VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_INST_READ PRIMARY KEY (READ_ID_)
);

COMMENT ON TABLE BPM_INST_READ IS
'����ʵ���Ķ�';

COMMENT ON COLUMN BPM_INST_READ.INST_ID_ IS
'ʵ��ID';

COMMENT ON COLUMN BPM_INST_READ.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN BPM_INST_READ.STATE_ IS
'���̽׶�';

COMMENT ON COLUMN BPM_INST_READ.DEP_ID_ IS
'����ID';

COMMENT ON COLUMN BPM_INST_READ.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_INST_READ.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_READ.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_INST_READ.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_READ.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_INST_TMP                                          */
/*==============================================================*/
CREATE TABLE BPM_INST_TMP  (
   TMP_ID_              VARCHAR2(64)                    NOT NULL,
   BUS_KEY_             VARCHAR2(64),
   INST_ID_             VARCHAR2(64)                    NOT NULL,
   FORM_JSON_           CLOB                            NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_INST_TMP PRIMARY KEY (TMP_ID_)
);

COMMENT ON TABLE BPM_INST_TMP IS
'����ʵ��������ʱ��';

COMMENT ON COLUMN BPM_INST_TMP.TMP_ID_ IS
'��ʱID';

COMMENT ON COLUMN BPM_INST_TMP.INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN BPM_INST_TMP.FORM_JSON_ IS
'����JSON';

COMMENT ON COLUMN BPM_INST_TMP.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_INST_TMP.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_TMP.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_INST_TMP.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_INST_TMP.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_LIB                                               */
/*==============================================================*/
CREATE TABLE BPM_LIB  (
   LIB_ID_              VARCHAR2(64)                    NOT NULL,
   SOL_ID_              VARCHAR2(64)                    NOT NULL,
   TREE_ID_             VARCHAR2(64),
   NAME_                VARCHAR2(255)                   NOT NULL,
   STATUS_              VARCHAR2(20)                    NOT NULL,
   DESCP_               VARCHAR2(1024),
   HELP_ID              VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_LIB PRIMARY KEY (LIB_ID_)
);

COMMENT ON TABLE BPM_LIB IS
'ҵ�����̽�����������';

COMMENT ON COLUMN BPM_LIB.LIB_ID_ IS
'�����ID';

COMMENT ON COLUMN BPM_LIB.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_LIB.TREE_ID_ IS
'������������ID';

COMMENT ON COLUMN BPM_LIB.NAME_ IS
'�����������';

COMMENT ON COLUMN BPM_LIB.STATUS_ IS
'״̬';

COMMENT ON COLUMN BPM_LIB.DESCP_ IS
'����';

COMMENT ON COLUMN BPM_LIB.HELP_ID IS
'����ID';

COMMENT ON COLUMN BPM_LIB.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_LIB.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_LIB.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_LIB.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_LIB.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_LIB_CMT                                           */
/*==============================================================*/
CREATE TABLE BPM_LIB_CMT  (
   CMT_ID_              VARCHAR2(64)                    NOT NULL,
   LIB_ID_              VARCHAR2(64),
   CONTENT_             VARCHAR2(512)                   NOT NULL,
   LEVEL_               INTEGER                         NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_LIB_CMT PRIMARY KEY (CMT_ID_)
);

COMMENT ON TABLE BPM_LIB_CMT IS
'���������';

COMMENT ON COLUMN BPM_LIB_CMT.LIB_ID_ IS
'�����ID';

COMMENT ON COLUMN BPM_LIB_CMT.CONTENT_ IS
'��������';

COMMENT ON COLUMN BPM_LIB_CMT.LEVEL_ IS
'����(0-100)';

COMMENT ON COLUMN BPM_LIB_CMT.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_LIB_CMT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_LIB_CMT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_LIB_CMT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_LIB_CMT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_LOG                                               */
/*==============================================================*/
CREATE TABLE BPM_LOG  (
   LOG_ID_              VARCHAR2(64)                    NOT NULL,
   SOL_ID_              VARCHAR2(64),
   INST_ID_             VARCHAR2(64),
   TASK_ID_             VARCHAR2(64),
   LOG_TYPE_            VARCHAR2(50)                    NOT NULL,
   OP_TYPE_             VARCHAR2(50)                    NOT NULL,
   OP_CONTENT_          VARCHAR2(512)                   NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_LOG PRIMARY KEY (LOG_ID_)
);

COMMENT ON TABLE BPM_LOG IS
'���̸�����־
��������������־�����̽�������ĸ��£�����ʵ���ĸ�����־�ȡ�';

COMMENT ON COLUMN BPM_LOG.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_LOG.INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN BPM_LOG.TASK_ID_ IS
'��������ID';

COMMENT ON COLUMN BPM_LOG.LOG_TYPE_ IS
'��־����

����������Ϣ����
ҵ��ģ��
���̱�
����

����ʵ��
��������';

COMMENT ON COLUMN BPM_LOG.OP_TYPE_ IS
'��������

����
ɾ��
��ע
��ͨ
';

COMMENT ON COLUMN BPM_LOG.OP_CONTENT_ IS
'��������';

COMMENT ON COLUMN BPM_LOG.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_LOG.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_LOG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_LOG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_LOG.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_MOBILE_FORM                                       */
/*==============================================================*/
CREATE TABLE BPM_MOBILE_FORM  (
   ID_                  VARCHAR2(64),
   VIEW_ID_             VARCHAR2(64),
   NAME_                VARCHAR2(50),
   ALIAS_               VARCHAR2(50),
   FORM_HTML            CLOB,
   TENANT_ID_           VARCHAR2(64),
   TREE_ID_             VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE
);

COMMENT ON TABLE BPM_MOBILE_FORM IS
'�ֻ������ñ�';

COMMENT ON COLUMN BPM_MOBILE_FORM.ID_ IS
'����';

COMMENT ON COLUMN BPM_MOBILE_FORM.VIEW_ID_ IS
'������ID';

COMMENT ON COLUMN BPM_MOBILE_FORM.NAME_ IS
'����';

COMMENT ON COLUMN BPM_MOBILE_FORM.ALIAS_ IS
'����';

COMMENT ON COLUMN BPM_MOBILE_FORM.FORM_HTML IS
'��ģ��';

COMMENT ON COLUMN BPM_MOBILE_FORM.TENANT_ID_ IS
'�⻧ID';

COMMENT ON COLUMN BPM_MOBILE_FORM.TREE_ID_ IS
'������ID';

COMMENT ON COLUMN BPM_MOBILE_FORM.CREATE_BY_ IS
'������';

COMMENT ON COLUMN BPM_MOBILE_FORM.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_MOBILE_FORM.UPDATE_BY_ IS
'������';

COMMENT ON COLUMN BPM_MOBILE_FORM.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_MODULE_BIND                                       */
/*==============================================================*/
CREATE TABLE BPM_MODULE_BIND  (
   BIND_ID_             VARCHAR2(64)                    NOT NULL,
   MODULE_NAME_         VARCHAR2(50)                    NOT NULL,
   MODULE_KEY_          VARCHAR2(80)                    NOT NULL,
   SOL_ID_              VARCHAR2(64),
   SOL_KEY_             VARCHAR2(60),
   SOL_NAME_            VARCHAR2(100),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_MODULE_BIND PRIMARY KEY (BIND_ID_)
);

COMMENT ON TABLE BPM_MODULE_BIND IS
'����ģ�鷽����';

COMMENT ON COLUMN BPM_MODULE_BIND.MODULE_NAME_ IS
'ģ������';

COMMENT ON COLUMN BPM_MODULE_BIND.MODULE_KEY_ IS
'ģ��Key';

COMMENT ON COLUMN BPM_MODULE_BIND.SOL_ID_ IS
'���̽������ID';

COMMENT ON COLUMN BPM_MODULE_BIND.SOL_KEY_ IS
'���̽������Key';

COMMENT ON COLUMN BPM_MODULE_BIND.SOL_NAME_ IS
'���̽����������';

COMMENT ON COLUMN BPM_MODULE_BIND.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_MODULE_BIND.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_MODULE_BIND.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_MODULE_BIND.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_MODULE_BIND.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_NODE_JUMP                                         */
/*==============================================================*/
CREATE TABLE BPM_NODE_JUMP  (
   JUMP_ID_             VARCHAR2(64)                    NOT NULL,
   ACT_DEF_ID_          VARCHAR2(64),
   ACT_INST_ID_         VARCHAR2(64),
   NODE_NAME_           VARCHAR2(255),
   NODE_ID_             VARCHAR2(255)                   NOT NULL,
   TASK_ID_             VARCHAR2(64),
   COMPLETE_TIME_       DATE,
   DURATION_            INTEGER,
   DURATION_VAL_        INTEGER,
   OWNER_ID_            VARCHAR2(64),
   HANDLER_ID_          VARCHAR2(64),
   AGENT_USER_ID_       VARCHAR2(64),
   CHECK_STATUS_        VARCHAR2(50),
   JUMP_TYPE_           VARCHAR2(50),
   REMARK_              VARCHAR2(512),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   ENABLE_MOBILE_       SMALLINT,
   CONSTRAINT PK_BPM_NODE_JUMP PRIMARY KEY (JUMP_ID_)
);

COMMENT ON TABLE BPM_NODE_JUMP IS
'������ת��¼';

COMMENT ON COLUMN BPM_NODE_JUMP.ACT_DEF_ID_ IS
'ACT���̶���ID';

COMMENT ON COLUMN BPM_NODE_JUMP.ACT_INST_ID_ IS
'ACT����ʵ��ID';

COMMENT ON COLUMN BPM_NODE_JUMP.NODE_NAME_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_NODE_JUMP.NODE_ID_ IS
'�ڵ�Key';

COMMENT ON COLUMN BPM_NODE_JUMP.TASK_ID_ IS
'����ID';

COMMENT ON COLUMN BPM_NODE_JUMP.COMPLETE_TIME_ IS
'���ʱ��';

COMMENT ON COLUMN BPM_NODE_JUMP.DURATION_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_NODE_JUMP.DURATION_VAL_ IS
'��Ч����ʱ��';

COMMENT ON COLUMN BPM_NODE_JUMP.OWNER_ID_ IS
'����������ID';

COMMENT ON COLUMN BPM_NODE_JUMP.HANDLER_ID_ IS
'������ID';

COMMENT ON COLUMN BPM_NODE_JUMP.AGENT_USER_ID_ IS
'��������';

COMMENT ON COLUMN BPM_NODE_JUMP.CHECK_STATUS_ IS
'����״̬';

COMMENT ON COLUMN BPM_NODE_JUMP.JUMP_TYPE_ IS
'��ת����';

COMMENT ON COLUMN BPM_NODE_JUMP.REMARK_ IS
'�����ע';

COMMENT ON COLUMN BPM_NODE_JUMP.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_NODE_JUMP.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_NODE_JUMP.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_NODE_JUMP.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_NODE_JUMP.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_NODE_JUMP.ENABLE_MOBILE_ IS
'�Ƿ�֧���ֻ�';

/*==============================================================*/
/* Table: BPM_NODE_SET                                          */
/*==============================================================*/
CREATE TABLE BPM_NODE_SET  (
   SET_ID_              VARCHAR2(128)                   NOT NULL,
   SOL_ID_              VARCHAR2(64)                    NOT NULL,
   NODE_ID_             VARCHAR2(255)                   NOT NULL,
   NAME_                VARCHAR2(255),
   DESCP_               VARCHAR2(255),
   NODE_TYPE_           VARCHAR2(100)                   NOT NULL,
   NODE_CHECK_TIP_      VARCHAR2(1024),
   SETTINGS_            CLOB,
   PRE_HANDLE_          VARCHAR2(255),
   AFTER_HANDLE_        VARCHAR2(255),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_NODE_SET PRIMARY KEY (SET_ID_)
);

COMMENT ON TABLE BPM_NODE_SET IS
'���̶���ڵ�����';

COMMENT ON COLUMN BPM_NODE_SET.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_NODE_SET.NODE_ID_ IS
'�ڵ�ID';

COMMENT ON COLUMN BPM_NODE_SET.NAME_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_NODE_SET.DESCP_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_NODE_SET.NODE_TYPE_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_NODE_SET.SETTINGS_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_NODE_SET.PRE_HANDLE_ IS
'ǰ�ô�����';

COMMENT ON COLUMN BPM_NODE_SET.AFTER_HANDLE_ IS
'���ô�����';

COMMENT ON COLUMN BPM_NODE_SET.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_NODE_SET.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_NODE_SET.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_NODE_SET.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_NODE_SET.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_OPINION_LIB                                       */
/*==============================================================*/
CREATE TABLE BPM_OPINION_LIB  (
   OP_ID_               VARCHAR2(64)                    NOT NULL,
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   OP_TEXT_             VARCHAR2(512)                   NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_OPINION_LIB PRIMARY KEY (OP_ID_)
);

COMMENT ON TABLE BPM_OPINION_LIB IS
'����ղر�';

COMMENT ON COLUMN BPM_OPINION_LIB.USER_ID_ IS
'�û�ID��Ϊ0��������';

COMMENT ON COLUMN BPM_OPINION_LIB.OP_TEXT_ IS
'�������';

COMMENT ON COLUMN BPM_OPINION_LIB.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_OPINION_LIB.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_OPINION_LIB.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_OPINION_LIB.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_OPINION_LIB.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_PH_TABLE                                          */
/*==============================================================*/
CREATE TABLE BPM_PH_TABLE  (
   BPM_PH_TABLE_ID_     VARCHAR2(64)                    NOT NULL,
   VIEW_ID_             VARCHAR2(64),
   FM_TREE_ID_          VARCHAR2(64),
   FM_ID_               VARCHAR2(64),
   STATUS_              VARCHAR2(64),
   DS_ID_               VARCHAR2(64),
   DS_NAME_             VARCHAR2(256),
   JSON_DATA_           CLOB,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_PH_TABLE PRIMARY KEY (BPM_PH_TABLE_ID_)
);

COMMENT ON TABLE BPM_PH_TABLE IS
'BPM_PH_TABLE�����';

COMMENT ON COLUMN BPM_PH_TABLE.BPM_PH_TABLE_ID_ IS
'����';

COMMENT ON COLUMN BPM_PH_TABLE.VIEW_ID_ IS
'����ͼID';

COMMENT ON COLUMN BPM_PH_TABLE.FM_TREE_ID_ IS
'ҵ��ģ��������ID';

COMMENT ON COLUMN BPM_PH_TABLE.FM_ID_ IS
'ģ��ID';

COMMENT ON COLUMN BPM_PH_TABLE.STATUS_ IS
'״̬';

COMMENT ON COLUMN BPM_PH_TABLE.DS_ID_ IS
'����ԴID';

COMMENT ON COLUMN BPM_PH_TABLE.DS_NAME_ IS
'����Դ����';

COMMENT ON COLUMN BPM_PH_TABLE.JSON_DATA_ IS
'����JSONӳ��
';

COMMENT ON COLUMN BPM_PH_TABLE.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN BPM_PH_TABLE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_PH_TABLE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_PH_TABLE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_PH_TABLE.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_REMIND_DEF                                        */
/*==============================================================*/
CREATE TABLE BPM_REMIND_DEF  (
   ID_                  VARCHAR2(50)                    NOT NULL,
   SOL_ID_              VARCHAR2(50),
   NODE_ID_             VARCHAR2(50),
   NAME_                VARCHAR2(50),
   ACTION_              VARCHAR2(50),
   REL_NODE_            VARCHAR2(50),
   EVENT_               VARCHAR2(50),
   DATE_TYPE_           VARCHAR2(50),
   EXPIRE_DATE_         VARCHAR2(50),
   CONDITION_           VARCHAR2(1000),
   SCRIPT_              VARCHAR2(1000),
   NOTIFY_TYPE_         VARCHAR2(50),
   TIME_TO_SEND_        VARCHAR2(50),
   SEND_TIMES_          INTEGER,
   SEND_INTERVAL_       VARCHAR2(50),
   SOLUTION_NAME_       VARCHAR2(50),
   NODE_NAME_           VARCHAR2(50),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_BPM_REMIND_DEF PRIMARY KEY (ID_)
);

COMMENT ON TABLE BPM_REMIND_DEF IS
'�߰춨��';

COMMENT ON COLUMN BPM_REMIND_DEF.ID_ IS
'����';

COMMENT ON COLUMN BPM_REMIND_DEF.SOL_ID_ IS
'����ID';

COMMENT ON COLUMN BPM_REMIND_DEF.NODE_ID_ IS
'�ڵ�ID';

COMMENT ON COLUMN BPM_REMIND_DEF.NAME_ IS
'����';

COMMENT ON COLUMN BPM_REMIND_DEF.ACTION_ IS
'���ڶ���';

COMMENT ON COLUMN BPM_REMIND_DEF.REL_NODE_ IS
'��Խڵ�';

COMMENT ON COLUMN BPM_REMIND_DEF.EVENT_ IS
'�¼�';

COMMENT ON COLUMN BPM_REMIND_DEF.DATE_TYPE_ IS
'��������';

COMMENT ON COLUMN BPM_REMIND_DEF.EXPIRE_DATE_ IS
'����';

COMMENT ON COLUMN BPM_REMIND_DEF.CONDITION_ IS
'����';

COMMENT ON COLUMN BPM_REMIND_DEF.SCRIPT_ IS
'����ִ�нű�';

COMMENT ON COLUMN BPM_REMIND_DEF.NOTIFY_TYPE_ IS
'֪ͨ����';

COMMENT ON COLUMN BPM_REMIND_DEF.TIME_TO_SEND_ IS
'��ʼ������Ϣʱ���';

COMMENT ON COLUMN BPM_REMIND_DEF.SEND_TIMES_ IS
'���ʹ���';

COMMENT ON COLUMN BPM_REMIND_DEF.SEND_INTERVAL_ IS
'����ʱ����';

COMMENT ON COLUMN BPM_REMIND_DEF.SOLUTION_NAME_ IS
'�����������';

COMMENT ON COLUMN BPM_REMIND_DEF.NODE_NAME_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_REMIND_DEF.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_REMIND_DEF.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_REMIND_DEF.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_REMIND_DEF.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_REMIND_DEF.TENANT_ID_ IS
'�����û�Id';

/*==============================================================*/
/* Table: BPM_REMIND_HISTORY                                    */
/*==============================================================*/
CREATE TABLE BPM_REMIND_HISTORY  (
   ID_                  VARCHAR2(50)                    NOT NULL,
   REMINDER_INST_ID_    VARCHAR2(50),
   REMIND_TYPE_         VARCHAR2(50),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_BPM_REMIND_HISTORY PRIMARY KEY (ID_)
);

COMMENT ON TABLE BPM_REMIND_HISTORY IS
'�߰���ʷ';

COMMENT ON COLUMN BPM_REMIND_HISTORY.ID_ IS
'����';

COMMENT ON COLUMN BPM_REMIND_HISTORY.REMINDER_INST_ID_ IS
'�߰�ʵ��ID';

COMMENT ON COLUMN BPM_REMIND_HISTORY.REMIND_TYPE_ IS
'�߰�����';

COMMENT ON COLUMN BPM_REMIND_HISTORY.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_REMIND_HISTORY.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_REMIND_HISTORY.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_REMIND_HISTORY.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_REMIND_HISTORY.TENANT_ID_ IS
'�����û�Id';

/*==============================================================*/
/* Table: BPM_REMIND_INST                                       */
/*==============================================================*/
CREATE TABLE BPM_REMIND_INST  (
   ID_                  VARCHAR2(50)                    NOT NULL,
   SOL_ID_              VARCHAR2(50),
   NODE_ID_             VARCHAR2(50),
   TASK_ID_             VARCHAR2(50),
   NAME_                VARCHAR2(50),
   ACTION_              VARCHAR2(50),
   EXPIRE_DATE_         DATE,
   SCRIPT_              VARCHAR2(1000),
   NOTIFY_TYPE_         VARCHAR2(50),
   TIME_TO_SEND_        DATE,
   SEND_TIMES_          INTEGER,
   SEND_INTERVAL_       INTEGER,
   STATUS_              VARCHAR2(10),
   SOLUTION_NAME_       VARCHAR2(50),
   NODE_NAME_           VARCHAR2(50),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_BPM_REMIND_INST PRIMARY KEY (ID_)
);

COMMENT ON TABLE BPM_REMIND_INST IS
'�߰�ʵ����';

COMMENT ON COLUMN BPM_REMIND_INST.ID_ IS
'����';

COMMENT ON COLUMN BPM_REMIND_INST.SOL_ID_ IS
'����ID';

COMMENT ON COLUMN BPM_REMIND_INST.NODE_ID_ IS
'�ڵ�ID';

COMMENT ON COLUMN BPM_REMIND_INST.TASK_ID_ IS
'����ID';

COMMENT ON COLUMN BPM_REMIND_INST.NAME_ IS
'����';

COMMENT ON COLUMN BPM_REMIND_INST.ACTION_ IS
'���ڶ���';

COMMENT ON COLUMN BPM_REMIND_INST.EXPIRE_DATE_ IS
'����';

COMMENT ON COLUMN BPM_REMIND_INST.SCRIPT_ IS
'����ִ�нű�';

COMMENT ON COLUMN BPM_REMIND_INST.NOTIFY_TYPE_ IS
'֪ͨ����';

COMMENT ON COLUMN BPM_REMIND_INST.TIME_TO_SEND_ IS
'��ʼ������Ϣʱ���';

COMMENT ON COLUMN BPM_REMIND_INST.SEND_TIMES_ IS
'���ʹ���';

COMMENT ON COLUMN BPM_REMIND_INST.SEND_INTERVAL_ IS
'����ʱ����';

COMMENT ON COLUMN BPM_REMIND_INST.STATUS_ IS
'״̬(2,���,0,����,1,������)';

COMMENT ON COLUMN BPM_REMIND_INST.SOLUTION_NAME_ IS
'��������';

COMMENT ON COLUMN BPM_REMIND_INST.NODE_NAME_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_REMIND_INST.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_REMIND_INST.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_REMIND_INST.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_REMIND_INST.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_REMIND_INST.TENANT_ID_ IS
'�����û�Id';

/*==============================================================*/
/* Table: BPM_RU_PATH                                           */
/*==============================================================*/
CREATE TABLE BPM_RU_PATH  (
   PATH_ID_             VARCHAR2(64)                    NOT NULL,
   INST_ID_             VARCHAR2(64)                    NOT NULL,
   ACT_DEF_ID_          VARCHAR2(64)                    NOT NULL,
   ACT_INST_ID_         VARCHAR2(64)                    NOT NULL,
   SOL_ID_              VARCHAR2(64)                    NOT NULL,
   NODE_ID_             VARCHAR2(255)                   NOT NULL,
   NODE_NAME_           VARCHAR2(255),
   NODE_TYPE_           VARCHAR2(50),
   START_TIME_          DATE                            NOT NULL,
   END_TIME_            DATE,
   DURATION_            INTEGER,
   DURATION_VAL_        INTEGER,
   ASSIGNEE_            VARCHAR2(64),
   TO_USER_ID_          VARCHAR2(64),
   IS_MULTIPLE_         VARCHAR2(20),
   EXECUTION_ID_        VARCHAR2(64),
   USER_IDS_            VARCHAR2(300),
   PARENT_ID_           VARCHAR2(64),
   LEVEL_               INTEGER,
   OUT_TRAN_ID_         VARCHAR2(255),
   TOKEN_               VARCHAR2(255),
   JUMP_TYPE_           VARCHAR2(50),
   NEXT_JUMP_TYPE_      VARCHAR2(50),
   OPINION_             VARCHAR2(500),
   REF_PATH_ID_         VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_RU_PATH PRIMARY KEY (PATH_ID_)
);

COMMENT ON TABLE BPM_RU_PATH IS
'����ʵ������·��';

COMMENT ON COLUMN BPM_RU_PATH.INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN BPM_RU_PATH.ACT_DEF_ID_ IS
'Act����ID';

COMMENT ON COLUMN BPM_RU_PATH.ACT_INST_ID_ IS
'Actʵ��ID';

COMMENT ON COLUMN BPM_RU_PATH.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_RU_PATH.NODE_ID_ IS
'�ڵ�ID';

COMMENT ON COLUMN BPM_RU_PATH.NODE_NAME_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_RU_PATH.NODE_TYPE_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_RU_PATH.START_TIME_ IS
'��ʼʱ��';

COMMENT ON COLUMN BPM_RU_PATH.END_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_RU_PATH.DURATION_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_RU_PATH.DURATION_VAL_ IS
'��Ч����ʱ��';

COMMENT ON COLUMN BPM_RU_PATH.ASSIGNEE_ IS
'������ID';

COMMENT ON COLUMN BPM_RU_PATH.TO_USER_ID_ IS
'������ID';

COMMENT ON COLUMN BPM_RU_PATH.IS_MULTIPLE_ IS
'�Ƿ�Ϊ��ʵ��';

COMMENT ON COLUMN BPM_RU_PATH.EXECUTION_ID_ IS
'�ִ��ID';

COMMENT ON COLUMN BPM_RU_PATH.USER_IDS_ IS
'ԭִ����IDS';

COMMENT ON COLUMN BPM_RU_PATH.PARENT_ID_ IS
'��ID';

COMMENT ON COLUMN BPM_RU_PATH.LEVEL_ IS
'���';

COMMENT ON COLUMN BPM_RU_PATH.OUT_TRAN_ID_ IS
'����·��ID';

COMMENT ON COLUMN BPM_RU_PATH.TOKEN_ IS
'·������';

COMMENT ON COLUMN BPM_RU_PATH.JUMP_TYPE_ IS
'�����ýڵ�ķ�ʽ
������ת
������ת
������ת';

COMMENT ON COLUMN BPM_RU_PATH.NEXT_JUMP_TYPE_ IS
'��һ����ת��ʽ';

COMMENT ON COLUMN BPM_RU_PATH.OPINION_ IS
'�������';

COMMENT ON COLUMN BPM_RU_PATH.REF_PATH_ID_ IS
'����·��ID
������ʱ���������ɵĽ�㣬��Ҫ��¼���õĻ��˽ڵ㣬���������ɵ�·���ٴλ��ˡ�';

COMMENT ON COLUMN BPM_RU_PATH.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_RU_PATH.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_RU_PATH.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_RU_PATH.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_RU_PATH.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_SIGN_DATA                                         */
/*==============================================================*/
CREATE TABLE BPM_SIGN_DATA  (
   DATA_ID_             VARCHAR2(64)                    NOT NULL,
   ACT_DEF_ID_          VARCHAR2(64)                    NOT NULL,
   ACT_INST_ID_         VARCHAR2(64)                    NOT NULL,
   NODE_ID_             VARCHAR2(255)                   NOT NULL,
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   VOTE_STATUS_         VARCHAR2(50)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_SIGN_DATA PRIMARY KEY (DATA_ID_)
);

COMMENT ON TABLE BPM_SIGN_DATA IS
'�����ǩ����
���й����л���ոñ�һ��Ϊ����ʵ�����й��������';

COMMENT ON COLUMN BPM_SIGN_DATA.DATA_ID_ IS
'����';

COMMENT ON COLUMN BPM_SIGN_DATA.ACT_DEF_ID_ IS
'���̶���ID';

COMMENT ON COLUMN BPM_SIGN_DATA.ACT_INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN BPM_SIGN_DATA.NODE_ID_ IS
'���̽ڵ�Id';

COMMENT ON COLUMN BPM_SIGN_DATA.USER_ID_ IS
'ͶƱ��ID';

COMMENT ON COLUMN BPM_SIGN_DATA.VOTE_STATUS_ IS
'ͶƱ״̬
ͬ��
����
��Ȩ
';

COMMENT ON COLUMN BPM_SIGN_DATA.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_SIGN_DATA.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SIGN_DATA.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_SIGN_DATA.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SIGN_DATA.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_SOLUTION                                          */
/*==============================================================*/
CREATE TABLE BPM_SOLUTION  (
   SOL_ID_              VARCHAR2(64)                    NOT NULL,
   "TREE_ID_"           VARCHAR2(64),
   TREE_PATH_           VARCHAR2(512),
   NAME_                VARCHAR2(100)                   NOT NULL,
   KEY_                 VARCHAR2(100)                   NOT NULL,
   DEF_KEY_             VARCHAR2(255),
   DESCP_               VARCHAR2(512),
   STEP_                INTEGER                         NOT NULL,
   IS_USE_BMODEL_       VARCHAR2(20),
   STATUS_              VARCHAR2(64)                    NOT NULL,
   SUBJECT_RULE_        VARCHAR2(255),
   HELP_ID_             VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   GRANT_TYPE_          SMALLINT,
   CONSTRAINT PK_BPM_SOLUTION PRIMARY KEY (SOL_ID_)
);

COMMENT ON TABLE BPM_SOLUTION IS
'ҵ�����̷�������';

COMMENT ON COLUMN BPM_SOLUTION."TREE_ID_" IS
'����Id';

COMMENT ON COLUMN BPM_SOLUTION.TREE_PATH_ IS
'�Ƿ�������һ����
���������������Ƿ�������һ��';

COMMENT ON COLUMN BPM_SOLUTION.NAME_ IS
'�����������';

COMMENT ON COLUMN BPM_SOLUTION.KEY_ IS
'��ʶ��';

COMMENT ON COLUMN BPM_SOLUTION.DEF_KEY_ IS
'������KEY';

COMMENT ON COLUMN BPM_SOLUTION.DESCP_ IS
'�����������';

COMMENT ON COLUMN BPM_SOLUTION.STEP_ IS
'��ɵĲ���';

COMMENT ON COLUMN BPM_SOLUTION.IS_USE_BMODEL_ IS
'����ʹ��ҵ��ģ��
YES=��ʾ�����κα���ͼ';

COMMENT ON COLUMN BPM_SOLUTION.STATUS_ IS
'״̬';

COMMENT ON COLUMN BPM_SOLUTION.SUBJECT_RULE_ IS
'ҵ��������';

COMMENT ON COLUMN BPM_SOLUTION.HELP_ID_ IS
'����ID';

COMMENT ON COLUMN BPM_SOLUTION.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_SOLUTION.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SOLUTION.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_SOLUTION.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SOLUTION.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_SOLUTION.GRANT_TYPE_ IS
'��Ȩ����
0=ȫ��
1=������Ȩ';

/*==============================================================*/
/* Table: BPM_SOL_CTL                                           */
/*==============================================================*/
CREATE TABLE BPM_SOL_CTL  (
   RIGHT_ID_            VARCHAR2(64)                    NOT NULL,
   SOL_ID_              VARCHAR2(64),
   USER_IDS_            CLOB,
   GROUP_IDS_           CLOB,
   ALLOW_STARTOR_       VARCHAR2(20),
   ALLOW_ATTEND_        VARCHAR2(20),
   RIGHT_               VARCHAR2(60),
   TYPE_                VARCHAR2(50),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_SOL_CTL PRIMARY KEY (RIGHT_ID_)
);

COMMENT ON TABLE BPM_SOL_CTL IS
'���̽��������Դ����Ȩ�޿���';

COMMENT ON COLUMN BPM_SOL_CTL.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_SOL_CTL.USER_IDS_ IS
'�û�Ids������û�Id�á������ָ';

COMMENT ON COLUMN BPM_SOL_CTL.GROUP_IDS_ IS
'�û���Ids������û���Id�á������ָ';

COMMENT ON COLUMN BPM_SOL_CTL.ALLOW_STARTOR_ IS
'��������
YES';

COMMENT ON COLUMN BPM_SOL_CTL.RIGHT_ IS
'ALL=ȫ��Ȩ��
EDIT=�༭
DEL=ɾ��
PRINT=��ӡ
DOWN=����';

COMMENT ON COLUMN BPM_SOL_CTL.TYPE_ IS
'READ=�Ķ�Ȩ��
FILE=����Ȩ��';

COMMENT ON COLUMN BPM_SOL_CTL.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_SOL_CTL.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SOL_CTL.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_SOL_CTL.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SOL_CTL.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_SOL_FM                                            */
/*==============================================================*/
CREATE TABLE BPM_SOL_FM  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   SOL_ID_              VARCHAR2(64)                    NOT NULL,
   MOD_KEY_             VARCHAR2(100)                   NOT NULL,
   IS_MAIN_             VARCHAR2(20)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_BY_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_SOL_FM PRIMARY KEY (ID_)
);

COMMENT ON TABLE BPM_SOL_FM IS
'�������������ҵ��ģ��';

COMMENT ON COLUMN BPM_SOL_FM.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_SOL_FM.MOD_KEY_ IS
'ҵ��ģ�ͱ�ʶ��';

COMMENT ON COLUMN BPM_SOL_FM.IS_MAIN_ IS
'�Ƿ�Ϊ��ģ��';

COMMENT ON COLUMN BPM_SOL_FM.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN BPM_SOL_FM.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SOL_FM.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SOL_FM.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_SOL_FM.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_SOL_FV                                            */
/*==============================================================*/
CREATE TABLE BPM_SOL_FV  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   SOL_ID_              VARCHAR2(64)                    NOT NULL,
   NODE_ID_             VARCHAR2(255)                   NOT NULL,
   NODE_TEXT_           VARCHAR2(255),
   FORM_TYPE_           VARCHAR2(30),
   FORM_URI_            VARCHAR2(255),
   FORM_NAME_           VARCHAR2(255),
   PRINT_URI_           VARCHAR2(255),
   PRINT_NAME_          VARCHAR2(255),
   SN_                  INTEGER,
   MOBILE_NAME_         VARCHAR2(50),
   MOBILE_ALIAS_        VARCHAR2(50),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_BY_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_SOL_FV PRIMARY KEY (ID_)
);

COMMENT ON TABLE BPM_SOL_FV IS
'������������ı���ͼ';

COMMENT ON COLUMN BPM_SOL_FV.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_SOL_FV.NODE_ID_ IS
'�ڵ�ID';

COMMENT ON COLUMN BPM_SOL_FV.NODE_TEXT_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_SOL_FV.FORM_TYPE_ IS
'������
ONLINE-DESIGN=���߱�
SEL-DEV=�Զ����URL��';

COMMENT ON COLUMN BPM_SOL_FV.FORM_URI_ IS
'����ַ';

COMMENT ON COLUMN BPM_SOL_FV.FORM_NAME_ IS
'������';

COMMENT ON COLUMN BPM_SOL_FV.PRINT_URI_ IS
'��ӡ����ַ';

COMMENT ON COLUMN BPM_SOL_FV.PRINT_NAME_ IS
'��ӡ������';

COMMENT ON COLUMN BPM_SOL_FV.SN_ IS
'���';

COMMENT ON COLUMN BPM_SOL_FV.MOBILE_NAME_ IS
'�ֻ�������';

COMMENT ON COLUMN BPM_SOL_FV.MOBILE_ALIAS_ IS
'�ֻ�������';

COMMENT ON COLUMN BPM_SOL_FV.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN BPM_SOL_FV.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SOL_FV.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SOL_FV.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_SOL_FV.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_SOL_USER                                          */
/*==============================================================*/
CREATE TABLE BPM_SOL_USER  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   SOL_ID_              VARCHAR2(64),
   NODE_ID_             VARCHAR2(255)                   NOT NULL,
   NODE_NAME_           VARCHAR2(255),
   USER_TYPE_           VARCHAR2(50)                    NOT NULL,
   USER_TYPE_NAME_      VARCHAR2(100),
   CONFIG_DESCP_        VARCHAR2(512),
   CONFIG_              VARCHAR2(512),
   IS_CAL_              VARCHAR2(20)                    NOT NULL,
   CAL_LOGIC_           VARCHAR2(20)                    NOT NULL,
   SN_                  INTEGER,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_BY_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_TIME_         DATE,
   CATEGORY_            VARCHAR2(20),
   GROUP_ID_            VARCHAR2(50),
   CONSTRAINT PK_BPM_SOL_USER PRIMARY KEY (ID_)
);

COMMENT ON TABLE BPM_SOL_USER IS
'���������������Ա����';

COMMENT ON COLUMN BPM_SOL_USER.SOL_ID_ IS
'ҵ�����̽������ID';

COMMENT ON COLUMN BPM_SOL_USER.NODE_ID_ IS
'�ڵ�ID';

COMMENT ON COLUMN BPM_SOL_USER.NODE_NAME_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_SOL_USER.USER_TYPE_ IS
'�û�����';

COMMENT ON COLUMN BPM_SOL_USER.USER_TYPE_NAME_ IS
'�û���������';

COMMENT ON COLUMN BPM_SOL_USER.CONFIG_DESCP_ IS
'������ʾ��Ϣ';

COMMENT ON COLUMN BPM_SOL_USER.CONFIG_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_SOL_USER.IS_CAL_ IS
'�Ƿ�����û�';

COMMENT ON COLUMN BPM_SOL_USER.CAL_LOGIC_ IS
'���ϵ���Ա����';

COMMENT ON COLUMN BPM_SOL_USER.SN_ IS
'���';

COMMENT ON COLUMN BPM_SOL_USER.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN BPM_SOL_USER.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SOL_USER.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SOL_USER.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_SOL_USER.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_SOL_USER.CATEGORY_ IS
'���';

/*==============================================================*/
/* Table: BPM_SOL_USERGROUP                                     */
/*==============================================================*/
CREATE TABLE BPM_SOL_USERGROUP  (
   ID_                  VARCHAR2(50)                    NOT NULL,
   GROUP_NAME_          VARCHAR2(50),
   SOL_ID_              VARCHAR2(50),
   GROUP_TYPE_          VARCHAR2(50),
   NODE_ID_             VARCHAR2(50),
   NODE_NAME_           VARCHAR2(50),
   TENANT_ID_           VARCHAR2(50),
   SETTING_             VARCHAR2(2000),
   SN_                  INTEGER,
   NOTIFY_TYPE_         VARCHAR2(50),
   CREATE_BY_           VARCHAR2(50),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(50),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_SOL_USERGROUP PRIMARY KEY (ID_)
);

COMMENT ON TABLE BPM_SOL_USERGROUP IS
'���������û���';

COMMENT ON COLUMN BPM_SOL_USERGROUP.ID_ IS
'����';

COMMENT ON COLUMN BPM_SOL_USERGROUP.GROUP_NAME_ IS
'����';

COMMENT ON COLUMN BPM_SOL_USERGROUP.SOL_ID_ IS
'����ID';

COMMENT ON COLUMN BPM_SOL_USERGROUP.GROUP_TYPE_ IS
'��������(flow,copyto)';

COMMENT ON COLUMN BPM_SOL_USERGROUP.NODE_ID_ IS
'�ڵ�ID';

COMMENT ON COLUMN BPM_SOL_USERGROUP.NODE_NAME_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_SOL_USERGROUP.TENANT_ID_ IS
'�⻧ID';

COMMENT ON COLUMN BPM_SOL_USERGROUP.SETTING_ IS
'����';

COMMENT ON COLUMN BPM_SOL_USERGROUP.SN_ IS
'���';

COMMENT ON COLUMN BPM_SOL_USERGROUP.CREATE_BY_ IS
'������';

COMMENT ON COLUMN BPM_SOL_USERGROUP.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_SOL_USERGROUP.UPDATE_BY_ IS
'������';

COMMENT ON COLUMN BPM_SOL_USERGROUP.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_SOL_VAR                                           */
/*==============================================================*/
CREATE TABLE BPM_SOL_VAR  (
   VAR_ID_              VARCHAR2(64)                    NOT NULL,
   SOL_ID_              VARCHAR2(64),
   KEY_                 VARCHAR2(255)                   NOT NULL,
   NAME_                VARCHAR2(255)                   NOT NULL,
   TYPE_                VARCHAR2(50)                    NOT NULL,
   SCOPE_               VARCHAR2(128)                   NOT NULL,
   NODE_NAME_           VARCHAR2(255),
   DEF_VAL_             VARCHAR2(100),
   EXPRESS_             VARCHAR2(512),
   IS_REQ_              VARCHAR2(20),
   SN_                  INTEGER,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_BY_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_SOL_VAR PRIMARY KEY (VAR_ID_)
);

COMMENT ON TABLE BPM_SOL_VAR IS
'���̽����������';

COMMENT ON COLUMN BPM_SOL_VAR.VAR_ID_ IS
'����ID';

COMMENT ON COLUMN BPM_SOL_VAR.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_SOL_VAR.KEY_ IS
'����Key';

COMMENT ON COLUMN BPM_SOL_VAR.NAME_ IS
'��������';

COMMENT ON COLUMN BPM_SOL_VAR.TYPE_ IS
'����';

COMMENT ON COLUMN BPM_SOL_VAR.SCOPE_ IS
'������
ȫ��Ϊ_PROCESS
�ڵ㷶Χʱ�洢�ڵ�ID
';

COMMENT ON COLUMN BPM_SOL_VAR.NODE_NAME_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_SOL_VAR.DEF_VAL_ IS
'ȱʡֵ';

COMMENT ON COLUMN BPM_SOL_VAR.EXPRESS_ IS
'������ʽ';

COMMENT ON COLUMN BPM_SOL_VAR.IS_REQ_ IS
'�Ƿ����';

COMMENT ON COLUMN BPM_SOL_VAR.SN_ IS
'���';

COMMENT ON COLUMN BPM_SOL_VAR.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN BPM_SOL_VAR.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SOL_VAR.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SOL_VAR.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_SOL_VAR.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_SQL_NODE                                          */
/*==============================================================*/
CREATE TABLE BPM_SQL_NODE  (
   BPM_SQL_NODE_ID_     VARCHAR2(64)                    NOT NULL,
   SOL_ID_              VARCHAR2(64),
   NODE_ID_             VARCHAR2(64),
   NODE_TEXT_           VARCHAR2(256),
   SQL_                 CLOB,
   DS_ID_               VARCHAR2(64),
   DS_NAME_             VARCHAR2(256),
   JSON_DATA_           CLOB,
   JSON_TABLE_          CLOB,
   SQL_TYPE_            SMALLINT,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_SQL_NODE PRIMARY KEY (BPM_SQL_NODE_ID_)
);

COMMENT ON TABLE BPM_SQL_NODE IS
'BPM_SQL_NODE�м��';

COMMENT ON COLUMN BPM_SQL_NODE.BPM_SQL_NODE_ID_ IS
'����';

COMMENT ON COLUMN BPM_SQL_NODE.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_SQL_NODE.NODE_ID_ IS
'�ڵ�ID';

COMMENT ON COLUMN BPM_SQL_NODE.NODE_TEXT_ IS
'�ڵ�����';

COMMENT ON COLUMN BPM_SQL_NODE.SQL_ IS
'SQL���';

COMMENT ON COLUMN BPM_SQL_NODE.DS_ID_ IS
'����ԴID';

COMMENT ON COLUMN BPM_SQL_NODE.DS_NAME_ IS
'����Դ����';

COMMENT ON COLUMN BPM_SQL_NODE.JSON_DATA_ IS
'����JSONӳ��
';

COMMENT ON COLUMN BPM_SQL_NODE.JSON_TABLE_ IS
'��ӳ������';

COMMENT ON COLUMN BPM_SQL_NODE.SQL_TYPE_ IS
'SQL����';

COMMENT ON COLUMN BPM_SQL_NODE.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN BPM_SQL_NODE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SQL_NODE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_SQL_NODE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_SQL_NODE.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_TEST_CASE                                         */
/*==============================================================*/
CREATE TABLE BPM_TEST_CASE  (
   TEST_ID_             VARCHAR2(64)                    NOT NULL,
   TEST_SOL_ID_         VARCHAR2(64)                    NOT NULL,
   CASE_NAME_           VARCHAR2(20)                    NOT NULL,
   PARAMS_CONF_         CLOB,
   START_USER_ID_       VARCHAR2(64),
   USER_CONF_           CLOB,
   INST_ID_             VARCHAR2(64),
   LAST_STATUS_         VARCHAR2(20),
   EXE_EXCEPTIONS_      CLOB,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_TEST_CASE PRIMARY KEY (TEST_ID_)
);

COMMENT ON TABLE BPM_TEST_CASE IS
'��������';

COMMENT ON COLUMN BPM_TEST_CASE.TEST_ID_ IS
'��������ID';

COMMENT ON COLUMN BPM_TEST_CASE.TEST_SOL_ID_ IS
'���Է���ID';

COMMENT ON COLUMN BPM_TEST_CASE.CASE_NAME_ IS
'��������';

COMMENT ON COLUMN BPM_TEST_CASE.PARAMS_CONF_ IS
'��������';

COMMENT ON COLUMN BPM_TEST_CASE.START_USER_ID_ IS
'������';

COMMENT ON COLUMN BPM_TEST_CASE.USER_CONF_ IS
'�û���Ԥ����';

COMMENT ON COLUMN BPM_TEST_CASE.INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN BPM_TEST_CASE.LAST_STATUS_ IS
'ִ������״̬';

COMMENT ON COLUMN BPM_TEST_CASE.EXE_EXCEPTIONS_ IS
'ִ���쳣';

COMMENT ON COLUMN BPM_TEST_CASE.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_TEST_CASE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_TEST_CASE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_TEST_CASE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_TEST_CASE.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: BPM_TEST_SOL                                          */
/*==============================================================*/
CREATE TABLE BPM_TEST_SOL  (
   TEST_SOL_ID_         VARCHAR2(64)                    NOT NULL,
   TEST_NO_             VARCHAR2(64)                    NOT NULL,
   SOL_ID_              VARCHAR2(64)                    NOT NULL,
   MEMO_                VARCHAR2(1024),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_BPM_TEST_SOL PRIMARY KEY (TEST_SOL_ID_)
);

COMMENT ON TABLE BPM_TEST_SOL IS
'���̲��Է���';

COMMENT ON COLUMN BPM_TEST_SOL.TEST_SOL_ID_ IS
'���Է���ID';

COMMENT ON COLUMN BPM_TEST_SOL.TEST_NO_ IS
'�������';

COMMENT ON COLUMN BPM_TEST_SOL.SOL_ID_ IS
'�������ID';

COMMENT ON COLUMN BPM_TEST_SOL.MEMO_ IS
'���Է�������';

COMMENT ON COLUMN BPM_TEST_SOL.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN BPM_TEST_SOL.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_TEST_SOL.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_TEST_SOL.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN BPM_TEST_SOL.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: CAL_CALENDAR                                          */
/*==============================================================*/
CREATE TABLE CAL_CALENDAR  (
   CALENDER_ID_         VARCHAR2(64)                    NOT NULL,
   SETTING_ID_          VARCHAR2(64),
   START_TIME_          DATE,
   END_TIME_            DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_CAL_CALENDAR PRIMARY KEY (CALENDER_ID_)
);

COMMENT ON TABLE CAL_CALENDAR IS
'������������';

COMMENT ON COLUMN CAL_CALENDAR.CALENDER_ID_ IS
'����Id';

COMMENT ON COLUMN CAL_CALENDAR.SETTING_ID_ IS
'�趨ID';

COMMENT ON COLUMN CAL_CALENDAR.START_TIME_ IS
'��ʼʱ��';

COMMENT ON COLUMN CAL_CALENDAR.END_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN CAL_CALENDAR.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN CAL_CALENDAR.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN CAL_CALENDAR.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN CAL_CALENDAR.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN CAL_CALENDAR.TENANT_ID_ IS
'���û���Id';

/*==============================================================*/
/* Table: CAL_GRANT                                             */
/*==============================================================*/
CREATE TABLE CAL_GRANT  (
   GRANT_ID_            VARCHAR2(64)                    NOT NULL,
   SETTING_ID_          VARCHAR2(64),
   GRANT_TYPE_          VARCHAR2(64),
   BELONG_WHO_          VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_CAL_GRANT PRIMARY KEY (GRANT_ID_)
);

COMMENT ON TABLE CAL_GRANT IS
'��������';

COMMENT ON COLUMN CAL_GRANT.GRANT_TYPE_ IS
'�������� USER/GROUP';

/*==============================================================*/
/* Table: CAL_SETTING                                           */
/*==============================================================*/
CREATE TABLE CAL_SETTING  (
   SETTING_ID_          VARCHAR2(64)                    NOT NULL,
   CAL_NAME_            VARCHAR2(64),
   IS_COMMON_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_CAL_SETTING PRIMARY KEY (SETTING_ID_)
);

COMMENT ON TABLE CAL_SETTING IS
'�����趨';

COMMENT ON COLUMN CAL_SETTING.SETTING_ID_ IS
'�趨ID';

COMMENT ON COLUMN CAL_SETTING.CAL_NAME_ IS
'��������';

COMMENT ON COLUMN CAL_SETTING.IS_COMMON_ IS
'Ĭ��';

COMMENT ON COLUMN CAL_SETTING.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN CAL_SETTING.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN CAL_SETTING.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN CAL_SETTING.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN CAL_SETTING.TENANT_ID_ IS
'���û���Id';

/*==============================================================*/
/* Table: CAL_TIME_BLOCK                                        */
/*==============================================================*/
CREATE TABLE CAL_TIME_BLOCK  (
   SETTING_ID_          VARCHAR2(64)                    NOT NULL,
   SETTING_NAME_        VARCHAR2(128),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   TIME_INTERVALS_      VARCHAR2(1024),
   CONSTRAINT PK_CAL_TIME_BLOCK PRIMARY KEY (SETTING_ID_)
);

COMMENT ON TABLE CAL_TIME_BLOCK IS
'����ʱ����趨';

/*==============================================================*/
/* Table: CRM_PROVIDER                                          */
/*==============================================================*/
CREATE TABLE CRM_PROVIDER  (
   PRO_ID_              VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(80)                    NOT NULL,
   SHORT_DESC_          VARCHAR2(100)                   NOT NULL,
   CMP_LEVEL_           VARCHAR2(20),
   CMP_TYPE_            VARCHAR2(20),
   CREDIT_TYPE_         VARCHAR2(20),
   CREDIT_LIMIT_        INTEGER,
   CREDIT_PERIOD_       INTEGER,
   WEB_SITE_            VARCHAR2(200),
   ADDRESS_             VARCHAR2(200),
   ZIP_                 VARCHAR2(20),
   CONTACTOR_           VARCHAR2(32),
   MOBILE_              VARCHAR2(20),
   PHONE_               VARCHAR2(20),
   WEIXIN_              VARCHAR2(50),
   WEIBO_               VARCHAR2(80),
   MEMO_                CLOB,
   ADDTION_FIDS_        VARCHAR2(512),
   CHARGE_ID_           VARCHAR2(64),
   STATUS_              VARCHAR2(20),
   ACT_INST_ID_         VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_CRM_PROVIDER PRIMARY KEY (PRO_ID_)
);

COMMENT ON TABLE CRM_PROVIDER IS
'��Ӧ�̹���';

COMMENT ON COLUMN CRM_PROVIDER.PRO_ID_ IS
'��Ӧ��ID';

COMMENT ON COLUMN CRM_PROVIDER.NAME_ IS
'��Ӧ����';

COMMENT ON COLUMN CRM_PROVIDER.SHORT_DESC_ IS
'��Ӧ�̼��';

COMMENT ON COLUMN CRM_PROVIDER.CMP_LEVEL_ IS
'��λ����';

COMMENT ON COLUMN CRM_PROVIDER.CMP_TYPE_ IS
'��λ����

���������ֵ�';

COMMENT ON COLUMN CRM_PROVIDER.CREDIT_TYPE_ IS
'���ü���
AAAA
AAA
AA
A';

COMMENT ON COLUMN CRM_PROVIDER.CREDIT_LIMIT_ IS
'���ö��
Ԫ
';

COMMENT ON COLUMN CRM_PROVIDER.CREDIT_PERIOD_ IS
'�������� 
 ��
';

COMMENT ON COLUMN CRM_PROVIDER.WEB_SITE_ IS
'��վ';

COMMENT ON COLUMN CRM_PROVIDER.ADDRESS_ IS
'��ַ';

COMMENT ON COLUMN CRM_PROVIDER.ZIP_ IS
'�ʱ�';

COMMENT ON COLUMN CRM_PROVIDER.CONTACTOR_ IS
'��ϵ����';

COMMENT ON COLUMN CRM_PROVIDER.MOBILE_ IS
'��ϵ���ֻ�';

COMMENT ON COLUMN CRM_PROVIDER.PHONE_ IS
'�̶��绰';

COMMENT ON COLUMN CRM_PROVIDER.WEIXIN_ IS
'΢�ź�';

COMMENT ON COLUMN CRM_PROVIDER.WEIBO_ IS
'΢����';

COMMENT ON COLUMN CRM_PROVIDER.MEMO_ IS
'��ע';

COMMENT ON COLUMN CRM_PROVIDER.ADDTION_FIDS_ IS
'����IDS';

COMMENT ON COLUMN CRM_PROVIDER.CHARGE_ID_ IS
'������ID';

COMMENT ON COLUMN CRM_PROVIDER.STATUS_ IS
'״̬';

COMMENT ON COLUMN CRM_PROVIDER.ACT_INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN CRM_PROVIDER.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN CRM_PROVIDER.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN CRM_PROVIDER.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN CRM_PROVIDER.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN CRM_PROVIDER.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: HR_DUTY_INST                                          */
/*==============================================================*/
CREATE TABLE HR_DUTY_INST  (
   DUTY_INST_ID_        VARCHAR2(64)                    NOT NULL,
   HOLIDAY_ID_          VARCHAR2(64),
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   USER_NAME_           VARCHAR2(64),
   DEP_ID_              VARCHAR2(64),
   DEP_NAME_            VARCHAR2(64),
   SECTION_ID_          VARCHAR2(64),
   SECTION_NAME_        VARCHAR2(16),
   SECTION_SHORT_NAME_  VARCHAR2(4),
   SYSTEM_ID_           VARCHAR2(64),
   SYSTEM_NAME_         VARCHAR2(100),
   TYPE_                VARCHAR2(10),
   DATE_                DATE,
   VAC_APP_             CLOB,
   OT_APP_              CLOB,
   TR_APP_              CLOB,
   OUT_APP_             CLOB,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_DUTY_INST PRIMARY KEY (DUTY_INST_ID_)
);

COMMENT ON TABLE HR_DUTY_INST IS
'�Ű�ʵ��';

COMMENT ON COLUMN HR_DUTY_INST.DUTY_INST_ID_ IS
'�Ű�ʵ��ID';

COMMENT ON COLUMN HR_DUTY_INST.HOLIDAY_ID_ IS
'����ID';

COMMENT ON COLUMN HR_DUTY_INST.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN HR_DUTY_INST.USER_NAME_ IS
'�û�����';

COMMENT ON COLUMN HR_DUTY_INST.DEP_ID_ IS
'����ID';

COMMENT ON COLUMN HR_DUTY_INST.DEP_NAME_ IS
'��������';

COMMENT ON COLUMN HR_DUTY_INST.SECTION_ID_ IS
'���ID';

COMMENT ON COLUMN HR_DUTY_INST.SECTION_NAME_ IS
'�������';

COMMENT ON COLUMN HR_DUTY_INST.SECTION_SHORT_NAME_ IS
'��μ��';

COMMENT ON COLUMN HR_DUTY_INST.SYSTEM_ID_ IS
'����ID';

COMMENT ON COLUMN HR_DUTY_INST.SYSTEM_NAME_ IS
'��������';

COMMENT ON COLUMN HR_DUTY_INST.TYPE_ IS
'ʵ������';

COMMENT ON COLUMN HR_DUTY_INST.DATE_ IS
'����';

COMMENT ON COLUMN HR_DUTY_INST.VAC_APP_ IS
'�������';

COMMENT ON COLUMN HR_DUTY_INST.OT_APP_ IS
'�Ӱ�����';

COMMENT ON COLUMN HR_DUTY_INST.TR_APP_ IS
'��������';

COMMENT ON COLUMN HR_DUTY_INST.OUT_APP_ IS
'��������';

COMMENT ON COLUMN HR_DUTY_INST.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN HR_DUTY_INST.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN HR_DUTY_INST.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN HR_DUTY_INST.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN HR_DUTY_INST.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: HR_DUTY_INST_EXT                                      */
/*==============================================================*/
CREATE TABLE HR_DUTY_INST_EXT  (
   EXT_ID_              VARCHAR2(64)                    NOT NULL,
   DUTY_INST_ID_        VARCHAR2(64),
   START_SIGN_IN_       INTEGER,
   DUTY_START_TIME_     VARCHAR2(20),
   END_SIGN_IN_         INTEGER,
   EARLY_OFF_TIME_      INTEGER,
   DUTY_END_TIME_       VARCHAR2(20),
   SIGN_OUT_TIME_       INTEGER,
   SECTION_ID_          VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_DUTY_INST_EXT PRIMARY KEY (EXT_ID_)
);

COMMENT ON TABLE HR_DUTY_INST_EXT IS
'�Ű�ʵ����չ��';

COMMENT ON COLUMN HR_DUTY_INST_EXT.EXT_ID_ IS
'�Ű�ʵ����չID';

COMMENT ON COLUMN HR_DUTY_INST_EXT.DUTY_INST_ID_ IS
'�Ű�ʵ��ID';

COMMENT ON COLUMN HR_DUTY_INST_EXT.START_SIGN_IN_ IS
'��ʼǩ��';

COMMENT ON COLUMN HR_DUTY_INST_EXT.DUTY_START_TIME_ IS
'�ϰ�ʱ��';

COMMENT ON COLUMN HR_DUTY_INST_EXT.END_SIGN_IN_ IS
'ǩ������ʱ��';

COMMENT ON COLUMN HR_DUTY_INST_EXT.EARLY_OFF_TIME_ IS
'���˼�ʱ';

COMMENT ON COLUMN HR_DUTY_INST_EXT.DUTY_END_TIME_ IS
'�°�ʱ��';

COMMENT ON COLUMN HR_DUTY_INST_EXT.SIGN_OUT_TIME_ IS
'ǩ�˽���';

COMMENT ON COLUMN HR_DUTY_INST_EXT.SECTION_ID_ IS
'���ID';

COMMENT ON COLUMN HR_DUTY_INST_EXT.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN HR_DUTY_INST_EXT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN HR_DUTY_INST_EXT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN HR_DUTY_INST_EXT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN HR_DUTY_INST_EXT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INF_DOC                                               */
/*==============================================================*/
CREATE TABLE INF_DOC  (
   DOC_ID_              VARCHAR2(64)                    NOT NULL,
   FOLDER_ID_           VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(100)                   NOT NULL,
   CONTENT_             CLOB,
   SUMMARY_             VARCHAR2(512),
   HAS_ATTACH_          VARCHAR2(8),
   IS_SHARE_            VARCHAR2(8)                     NOT NULL,
   AUTHOR_              VARCHAR2(64),
   KEYWORDS_            VARCHAR2(256),
   DOC_TYPE_            VARCHAR2(64),
   DOC_PATH_            VARCHAR2(255),
   SWF_PATH_            VARCHAR2(256),
   USER_ID_             VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INF_DOC PRIMARY KEY (DOC_ID_)
);

COMMENT ON TABLE INF_DOC IS
'�ĵ�';

COMMENT ON COLUMN INF_DOC.DOC_ID_ IS
'�ĵ�ID';

COMMENT ON COLUMN INF_DOC.FOLDER_ID_ IS
'�ļ���ID';

COMMENT ON COLUMN INF_DOC.NAME_ IS
'�ĵ�����';

COMMENT ON COLUMN INF_DOC.CONTENT_ IS
'����';

COMMENT ON COLUMN INF_DOC.SUMMARY_ IS
'ժҪ';

COMMENT ON COLUMN INF_DOC.HAS_ATTACH_ IS
'�Ƿ��������';

COMMENT ON COLUMN INF_DOC.IS_SHARE_ IS
'�Ƿ���';

COMMENT ON COLUMN INF_DOC.AUTHOR_ IS
'����';

COMMENT ON COLUMN INF_DOC.KEYWORDS_ IS
'�ؼ���';

COMMENT ON COLUMN INF_DOC.DOC_TYPE_ IS
'�ĵ�����';

COMMENT ON COLUMN INF_DOC.DOC_PATH_ IS
'�ĵ�·��';

COMMENT ON COLUMN INF_DOC.SWF_PATH_ IS
'SWF�ļ�f·��';

COMMENT ON COLUMN INF_DOC.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN INF_DOC.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INF_DOC.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_DOC.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_DOC.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_DOC.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INF_DOC_FILE                                          */
/*==============================================================*/
CREATE TABLE INF_DOC_FILE  (
   DOC_ID_              VARCHAR2(64)                    NOT NULL,
   FILE_ID_             VARCHAR2(64)                    NOT NULL,
   CONSTRAINT PK_INF_DOC_FILE PRIMARY KEY (DOC_ID_, FILE_ID_)
);

/*==============================================================*/
/* Table: INF_DOC_FOLDER                                        */
/*==============================================================*/
CREATE TABLE INF_DOC_FOLDER  (
   FOLDER_ID_           VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(128)                   NOT NULL,
   PARENT_              VARCHAR2(64),
   PATH_                VARCHAR2(128),
   DEPTH_               INTEGER                         NOT NULL,
   SN_                  INTEGER,
   SHARE_               VARCHAR2(8)                     NOT NULL,
   DESCP                VARCHAR2(256),
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   TYPE_                VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INF_DOC_FOLDER PRIMARY KEY (FOLDER_ID_)
);

COMMENT ON TABLE INF_DOC_FOLDER IS
'�ĵ��ļ���';

COMMENT ON COLUMN INF_DOC_FOLDER.NAME_ IS
'Ŀ¼����';

COMMENT ON COLUMN INF_DOC_FOLDER.PARENT_ IS
'��Ŀ¼';

COMMENT ON COLUMN INF_DOC_FOLDER.PATH_ IS
'·��';

COMMENT ON COLUMN INF_DOC_FOLDER.DEPTH_ IS
'���';

COMMENT ON COLUMN INF_DOC_FOLDER.SN_ IS
'���';

COMMENT ON COLUMN INF_DOC_FOLDER.SHARE_ IS
'����';

COMMENT ON COLUMN INF_DOC_FOLDER.DESCP IS
'�ĵ�����';

COMMENT ON COLUMN INF_DOC_FOLDER.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN INF_DOC_FOLDER.TYPE_ IS
'�����ĵ��ļ���=PERSONAL
�����ĵ��ļ���=PUBLIC
Ĭ��ΪPERSONAL';

COMMENT ON COLUMN INF_DOC_FOLDER.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INF_DOC_FOLDER.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_DOC_FOLDER.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_DOC_FOLDER.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_DOC_FOLDER.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INF_DOC_RIGHT                                         */
/*==============================================================*/
CREATE TABLE INF_DOC_RIGHT  (
   RIGHT_ID_            VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64),
   FOLDER_ID_           VARCHAR2(64),
   RIGHTS_              INTEGER                         NOT NULL,
   IDENTITY_TYPE_       VARCHAR2(64),
   IDENTITY_ID_         VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INF_DOC_RIGHT PRIMARY KEY (RIGHT_ID_)
);

COMMENT ON TABLE INF_DOC_RIGHT IS
'�ĵ���Ŀ¼��Ȩ�ޣ�ֻҪ����Թ���Ŀ¼�µ��ĵ�������˵��ĵ��Ĺ���

ĳ��Ŀ¼���ĵ���û��ָ��ĳ���Ż�ĳ���ˣ����ڱ�����û�м�¼��
���ʾ���Խ������еĲ���';

COMMENT ON COLUMN INF_DOC_RIGHT.RIGHT_ID_ IS
'Ȩ��ID';

COMMENT ON COLUMN INF_DOC_RIGHT.DOC_ID_ IS
'�ĵ�ID';

COMMENT ON COLUMN INF_DOC_RIGHT.FOLDER_ID_ IS
'�ļ���ID';

COMMENT ON COLUMN INF_DOC_RIGHT.RIGHTS_ IS
'Ȩ��
�ĵ���Ŀ¼�Ķ�д�޸�Ȩ��
1=��
2=�޸�
4=ɾ��

Ȩ��ֵ����Ϊ�����ֵ֮��
�磺3�������ж����޸ĵĲ���


';

COMMENT ON COLUMN INF_DOC_RIGHT.IDENTITY_TYPE_ IS
'��Ȩ����';

COMMENT ON COLUMN INF_DOC_RIGHT.IDENTITY_ID_ IS
'�û�����ID';

COMMENT ON COLUMN INF_DOC_RIGHT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_DOC_RIGHT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_DOC_RIGHT.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INF_DOC_RIGHT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_DOC_RIGHT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INF_INBOX                                             */
/*==============================================================*/
CREATE TABLE INF_INBOX  (
   REC_ID_              VARCHAR2(64)                    NOT NULL,
   MSG_ID_              VARCHAR2(64)                    NOT NULL,
   REC_USER_ID_         VARCHAR2(64),
   REC_TYPE_            VARCHAR2(20)                    NOT NULL,
   FULLNAME_            VARCHAR2(50),
   GROUP_ID_            VARCHAR2(64),
   GROUP_NAME_          VARCHAR2(64),
   IS_READ_             VARCHAR2(20),
   IS_DEL_              VARCHAR2(20),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64)                    NOT NULL,
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_INF_INBOX PRIMARY KEY (REC_ID_)
);

COMMENT ON TABLE INF_INBOX IS
'�ڲ�����Ϣ�ռ���';

COMMENT ON COLUMN INF_INBOX.REC_ID_ IS
'����ID';

COMMENT ON COLUMN INF_INBOX.MSG_ID_ IS
'��ϢID';

COMMENT ON COLUMN INF_INBOX.REC_USER_ID_ IS
'������ID';

COMMENT ON COLUMN INF_INBOX.REC_TYPE_ IS
'����=REC
����=SEND';

COMMENT ON COLUMN INF_INBOX.FULLNAME_ IS
'����������';

COMMENT ON COLUMN INF_INBOX.GROUP_ID_ IS
'�û���ID
0����ȫ��˾';

COMMENT ON COLUMN INF_INBOX.GROUP_NAME_ IS
'����';

COMMENT ON COLUMN INF_INBOX.IS_READ_ IS
'�Ƿ��Ķ�';

COMMENT ON COLUMN INF_INBOX.IS_DEL_ IS
'�Ƿ�ɾ��';

COMMENT ON COLUMN INF_INBOX.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_INBOX.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_INBOX.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_INBOX.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_INBOX.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: INF_INNER_MAIL                                        */
/*==============================================================*/
CREATE TABLE INF_INNER_MAIL  (
   MAIL_ID_             VARCHAR2(64)                    NOT NULL,
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   SENDER_              VARCHAR2(32)                    NOT NULL,
   CC_IDS_              CLOB,
   CC_NAMES_            CLOB,
   SUBJECT_             VARCHAR2(256)                   NOT NULL,
   CONTENT_             CLOB                            NOT NULL,
   SENDER_ID_           VARCHAR2(64)                    NOT NULL,
   URGE_                VARCHAR2(32)                    NOT NULL,
   SENDER_TIME_         DATE                            NOT NULL,
   REC_NAMES_           CLOB                            NOT NULL,
   REC_IDS_             CLOB                            NOT NULL,
   STATUS_              SMALLINT                        NOT NULL,
   FILE_IDS_            VARCHAR2(500),
   FILE_NAMES_          VARCHAR2(500),
   FOLDER_ID_           VARCHAR2(64),
   DEL_FLAG_            VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INF_INNER_MAIL PRIMARY KEY (MAIL_ID_)
);

COMMENT ON TABLE INF_INNER_MAIL IS
'�ڲ��ʼ�';

COMMENT ON COLUMN INF_INNER_MAIL.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN INF_INNER_MAIL.CC_IDS_ IS
'������ID�б�
��'',''�ֿ�';

COMMENT ON COLUMN INF_INNER_MAIL.CC_NAMES_ IS
'�����������б�';

COMMENT ON COLUMN INF_INNER_MAIL.SUBJECT_ IS
'�ʼ�����';

COMMENT ON COLUMN INF_INNER_MAIL.CONTENT_ IS
'�ʼ�����';

COMMENT ON COLUMN INF_INNER_MAIL.URGE_ IS
'1=һ��
2=��Ҫ
3=�ǳ���Ҫ';

COMMENT ON COLUMN INF_INNER_MAIL.REC_NAMES_ IS
'�ռ��������б�';

COMMENT ON COLUMN INF_INNER_MAIL.REC_IDS_ IS
'�ռ���ID�б�
��'',''�ָ�';

COMMENT ON COLUMN INF_INNER_MAIL.STATUS_ IS
'�ʼ�״̬
1=��ʽ�ʼ�
0=�ݸ��ʼ�';

COMMENT ON COLUMN INF_INNER_MAIL.FILE_IDS_ IS
'����Ids�����������ID��ͨ��,�ָ�';

COMMENT ON COLUMN INF_INNER_MAIL.FILE_NAMES_ IS
'���������б�ͨ��,���зָ�';

COMMENT ON COLUMN INF_INNER_MAIL.FOLDER_ID_ IS
'�ļ���ID';

COMMENT ON COLUMN INF_INNER_MAIL.DEL_FLAG_ IS
'ɾ����ʶ
YES
NO';

COMMENT ON COLUMN INF_INNER_MAIL.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INF_INNER_MAIL.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_INNER_MAIL.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_INNER_MAIL.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_INNER_MAIL.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INF_INNER_MSG                                         */
/*==============================================================*/
CREATE TABLE INF_INNER_MSG  (
   MSG_ID_              VARCHAR2(64)                    NOT NULL,
   CONTENT_             VARCHAR2(512)                   NOT NULL,
   LINK_MSG_            VARCHAR2(1024),
   CATEGORY_            VARCHAR2(50),
   SENDER_ID_           BLOB,
   SENDER_              VARCHAR2(50),
   DEL_FLAG_            VARCHAR2(20),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64)                    NOT NULL,
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_INF_INNER_MSG PRIMARY KEY (MSG_ID_)
);

COMMENT ON TABLE INF_INNER_MSG IS
'�ڲ�����Ϣ';

COMMENT ON COLUMN INF_INNER_MSG.MSG_ID_ IS
'��ϢID';

COMMENT ON COLUMN INF_INNER_MSG.CONTENT_ IS
'��Ϣ����';

COMMENT ON COLUMN INF_INNER_MSG.LINK_MSG_ IS
'��ϢЯ������,
���ɵ���Ϣ�������ӣ������ص����Ӳ���contextPath';

COMMENT ON COLUMN INF_INNER_MSG.CATEGORY_ IS
'��Ϣ����';

COMMENT ON COLUMN INF_INNER_MSG.SENDER_ IS
'��������';

COMMENT ON COLUMN INF_INNER_MSG.DEL_FLAG_ IS
'ɾ����ʶ';

COMMENT ON COLUMN INF_INNER_MSG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_INNER_MSG.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_INNER_MSG.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_INNER_MSG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_INNER_MSG.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: INF_MAIL                                              */
/*==============================================================*/
CREATE TABLE INF_MAIL  (
   MAIL_ID_             VARCHAR2(64)                    NOT NULL,
   UID_                 VARCHAR2(512),
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   CONFIG_ID_           VARCHAR2(64)                    NOT NULL,
   FOLDER_ID_           VARCHAR2(64),
   SUBJECT_             VARCHAR2(512)                   NOT NULL,
   CONTENT_             CLOB,
   SENDER_ADDRS_        CLOB                            NOT NULL,
   SENDER_ALIAS_        CLOB,
   REC_ADDRS_           CLOB                            NOT NULL,
   REC_ALIAS_           CLOB,
   CC_ADDRS_            CLOB,
   CC_ALIAS_            CLOB,
   BCC_ADDRS_           CLOB,
   BCC_ALIAS_           CLOB,
   SEND_DATE_           DATE                            NOT NULL,
   READ_FLAG_           VARCHAR2(8)                     NOT NULL,
   REPLY_FLAG_          VARCHAR2(8)                     NOT NULL,
   STATUS_              VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INF_MAIL PRIMARY KEY (MAIL_ID_)
);

COMMENT ON TABLE INF_MAIL IS
'�ⲿ�ʼ�';

COMMENT ON COLUMN INF_MAIL.UID_ IS
'�ⲿ�����ʶID';

COMMENT ON COLUMN INF_MAIL.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN INF_MAIL.CONFIG_ID_ IS
'��������ID';

COMMENT ON COLUMN INF_MAIL.FOLDER_ID_ IS
'�ļ���ID';

COMMENT ON COLUMN INF_MAIL.SUBJECT_ IS
'����';

COMMENT ON COLUMN INF_MAIL.CONTENT_ IS
'����';

COMMENT ON COLUMN INF_MAIL.SENDER_ADDRS_ IS
'�����˵�ַ';

COMMENT ON COLUMN INF_MAIL.SENDER_ALIAS_ IS
'�����˵�ַ����';

COMMENT ON COLUMN INF_MAIL.REC_ADDRS_ IS
'�ռ��˵�ַ';

COMMENT ON COLUMN INF_MAIL.REC_ALIAS_ IS
'�ռ��˵�ַ����';

COMMENT ON COLUMN INF_MAIL.CC_ADDRS_ IS
'�����˵�ַ';

COMMENT ON COLUMN INF_MAIL.CC_ALIAS_ IS
'�����˵�ַ����';

COMMENT ON COLUMN INF_MAIL.BCC_ADDRS_ IS
'�����˵�ַ';

COMMENT ON COLUMN INF_MAIL.BCC_ALIAS_ IS
'�����˵�ַ����';

COMMENT ON COLUMN INF_MAIL.SEND_DATE_ IS
'��������';

COMMENT ON COLUMN INF_MAIL.READ_FLAG_ IS
'0:δ��
1:����';

COMMENT ON COLUMN INF_MAIL.REPLY_FLAG_ IS
'0:δ�ظ�
1;�ѻظ�';

COMMENT ON COLUMN INF_MAIL.STATUS_ IS
'״̬
COMMON ����
DELETED ɾ��';

COMMENT ON COLUMN INF_MAIL.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INF_MAIL.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_MAIL.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_MAIL.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_MAIL.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INF_MAIL_BOX                                          */
/*==============================================================*/
CREATE TABLE INF_MAIL_BOX  (
   BOX_ID_              VARCHAR2(64)                    NOT NULL,
   MAIL_ID_             VARCHAR2(64),
   FOLDER_ID_           VARCHAR2(64),
   USER_ID_             VARCHAR2(64),
   IS_DEL_              VARCHAR2(20)                    NOT NULL,
   IS_READ_             VARCHAR2(20)                    NOT NULL,
   REPLY_               VARCHAR2(20)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INF_MAIL_BOX PRIMARY KEY (BOX_ID_)
);

COMMENT ON TABLE INF_MAIL_BOX IS
'�ڲ��ʼ��ռ���';

COMMENT ON COLUMN INF_MAIL_BOX.MAIL_ID_ IS
'�ʼ�ID';

COMMENT ON COLUMN INF_MAIL_BOX.FOLDER_ID_ IS
'�ļ���ID';

COMMENT ON COLUMN INF_MAIL_BOX.USER_ID_ IS
'Ա��ID';

COMMENT ON COLUMN INF_MAIL_BOX.IS_DEL_ IS
'ɾ����ʶ=YES';

COMMENT ON COLUMN INF_MAIL_BOX.IS_READ_ IS
'�Ķ���ʶ';

COMMENT ON COLUMN INF_MAIL_BOX.REPLY_ IS
'�ظ���ʶ';

COMMENT ON COLUMN INF_MAIL_BOX.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INF_MAIL_BOX.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_MAIL_BOX.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_MAIL_BOX.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_MAIL_BOX.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INF_MAIL_CONFIG                                       */
/*==============================================================*/
CREATE TABLE INF_MAIL_CONFIG  (
   CONFIG_ID_           VARCHAR2(64)                    NOT NULL,
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   USER_NAME_           VARCHAR2(128),
   ACCOUNT_             VARCHAR2(128),
   MAIL_ACCOUNT_        VARCHAR2(128)                   NOT NULL,
   MAIL_PWD_            VARCHAR2(128)                   NOT NULL,
   PROTOCOL_            VARCHAR2(32)                    NOT NULL,
   SSL_                 VARCHAR2(12),
   SMTP_HOST_           VARCHAR2(128)                   NOT NULL,
   SMTP_PORT_           VARCHAR2(64)                    NOT NULL,
   RECP_HOST_           VARCHAR2(128)                   NOT NULL,
   RECP_PORT_           VARCHAR2(64)                    NOT NULL,
   IS_DEFAULT_          VARCHAR2(20)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INF_MAIL_CONFIG PRIMARY KEY (CONFIG_ID_)
);

COMMENT ON TABLE INF_MAIL_CONFIG IS
'�ⲿ��������';

COMMENT ON COLUMN INF_MAIL_CONFIG.CONFIG_ID_ IS
'����ID';

COMMENT ON COLUMN INF_MAIL_CONFIG.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN INF_MAIL_CONFIG.USER_NAME_ IS
'�û�����';

COMMENT ON COLUMN INF_MAIL_CONFIG.ACCOUNT_ IS
'�ʺ�����';

COMMENT ON COLUMN INF_MAIL_CONFIG.MAIL_ACCOUNT_ IS
'�ⲿ�ʼ���ַ';

COMMENT ON COLUMN INF_MAIL_CONFIG.MAIL_PWD_ IS
'�ⲿ�ʼ�����';

COMMENT ON COLUMN INF_MAIL_CONFIG.PROTOCOL_ IS
'Э������
IMAP
POP3';

COMMENT ON COLUMN INF_MAIL_CONFIG.SSL_ IS
'����SSL
true or false';

COMMENT ON COLUMN INF_MAIL_CONFIG.SMTP_HOST_ IS
'�ʼ���������';

COMMENT ON COLUMN INF_MAIL_CONFIG.SMTP_PORT_ IS
'�ʼ����Ͷ˿�';

COMMENT ON COLUMN INF_MAIL_CONFIG.RECP_HOST_ IS
'��������';

COMMENT ON COLUMN INF_MAIL_CONFIG.RECP_PORT_ IS
'���ն˿�';

COMMENT ON COLUMN INF_MAIL_CONFIG.IS_DEFAULT_ IS
'�Ƿ�Ĭ��
YES
NO';

COMMENT ON COLUMN INF_MAIL_CONFIG.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INF_MAIL_CONFIG.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_MAIL_CONFIG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_MAIL_CONFIG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_MAIL_CONFIG.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INF_MAIL_FILE                                         */
/*==============================================================*/
CREATE TABLE INF_MAIL_FILE  (
   FILE_ID_             VARCHAR2(64)                    NOT NULL,
   MAIL_ID_             VARCHAR2(64)                    NOT NULL,
   CONSTRAINT PK_INF_MAIL_FILE PRIMARY KEY (FILE_ID_, MAIL_ID_)
);

COMMENT ON TABLE INF_MAIL_FILE IS
'�ⲿ���丽��';

/*==============================================================*/
/* Table: INF_MAIL_FOLDER                                       */
/*==============================================================*/
CREATE TABLE INF_MAIL_FOLDER  (
   FOLDER_ID_           VARCHAR2(64)                    NOT NULL,
   CONFIG_ID_           VARCHAR2(64),
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(128)                   NOT NULL,
   PARENT_ID_           VARCHAR2(64),
   DEPTH_               INTEGER                         NOT NULL,
   PATH_                VARCHAR2(256),
   TYPE_                VARCHAR2(32)                    NOT NULL,
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   IN_OUT_              VARCHAR2(20),
   CONSTRAINT PK_INF_MAIL_FOLDER PRIMARY KEY (FOLDER_ID_)
);

COMMENT ON TABLE INF_MAIL_FOLDER IS
'�ʼ��ļ���';

COMMENT ON COLUMN INF_MAIL_FOLDER.FOLDER_ID_ IS
'�ļ��б��';

COMMENT ON COLUMN INF_MAIL_FOLDER.CONFIG_ID_ IS
'����ID';

COMMENT ON COLUMN INF_MAIL_FOLDER.USER_ID_ IS
'����';

COMMENT ON COLUMN INF_MAIL_FOLDER.NAME_ IS
'�ļ�������';

COMMENT ON COLUMN INF_MAIL_FOLDER.PARENT_ID_ IS
'��Ŀ¼';

COMMENT ON COLUMN INF_MAIL_FOLDER.DEPTH_ IS
'Ŀ¼��';

COMMENT ON COLUMN INF_MAIL_FOLDER.PATH_ IS
'Ŀ¼·��';

COMMENT ON COLUMN INF_MAIL_FOLDER.TYPE_ IS
'�ļ�������
RECEIVE-FOLDER=������
SENDER-FOLDEr=������
DRAFT-FOLDER=�ݸ���
DEL-FOLDER=ɾ����
OTHER-FOLDER=����';

COMMENT ON COLUMN INF_MAIL_FOLDER.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_MAIL_FOLDER.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_MAIL_FOLDER.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INF_MAIL_FOLDER.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INF_MAIL_FOLDER.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INF_MAIL_FOLDER.IN_OUT_ IS
'�ڲ��ⲿ�����ʶ
IN=�ڲ�
OUT=�ⲿ';

/*==============================================================*/
/* Table: INS_COLUMN                                            */
/*==============================================================*/
CREATE TABLE INS_COLUMN  (
   COL_ID_              VARCHAR2(64)                    NOT NULL,
   TYPE_ID_             VARCHAR2(64),
   NAME_                VARCHAR2(80)                    NOT NULL,
   KEY_                 VARCHAR2(50)                    NOT NULL,
   URL_                 VARCHAR2(255),
   ENABLED_             VARCHAR2(20)                    NOT NULL,
   NUMS_OF_PAGE_        INTEGER,
   ALLOW_CLOSE_         VARCHAR2(20),
   COL_TYPE_            VARCHAR2(50),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INS_COLUMN PRIMARY KEY (COL_ID_)
);

COMMENT ON TABLE INS_COLUMN IS
'��Ϣ��Ŀ';

COMMENT ON COLUMN INS_COLUMN.COL_ID_ IS
'��ĿID';

COMMENT ON COLUMN INS_COLUMN.NAME_ IS
'��Ŀ����';

COMMENT ON COLUMN INS_COLUMN.KEY_ IS
'��ĿKey';

COMMENT ON COLUMN INS_COLUMN.ENABLED_ IS
'�Ƿ�����';

COMMENT ON COLUMN INS_COLUMN.NUMS_OF_PAGE_ IS
'ÿҳ��¼��';

COMMENT ON COLUMN INS_COLUMN.ALLOW_CLOSE_ IS
'�Ƿ�����ر�';

COMMENT ON COLUMN INS_COLUMN.COL_TYPE_ IS
'��Ϣ��Ŀ����
����
��˾��λ����
��������';

COMMENT ON COLUMN INS_COLUMN.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INS_COLUMN.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_COLUMN.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INS_COLUMN.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_COLUMN.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INS_COL_NEW                                           */
/*==============================================================*/
CREATE TABLE INS_COL_NEW  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   COL_ID_              VARCHAR2(64)                    NOT NULL,
   NEW_ID_              VARCHAR2(64)                    NOT NULL,
   SN_                  INTEGER                         NOT NULL,
   START_TIME_          DATE                            NOT NULL,
   END_TIME_            DATE                            NOT NULL,
   IS_LONG_VALID_       VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INS_COL_NEW PRIMARY KEY (ID_)
);

COMMENT ON TABLE INS_COL_NEW IS
'��Ϣ������Ŀ';

COMMENT ON COLUMN INS_COL_NEW.ID_ IS
'ID_';

COMMENT ON COLUMN INS_COL_NEW.COL_ID_ IS
'��ĿID';

COMMENT ON COLUMN INS_COL_NEW.NEW_ID_ IS
'����ID';

COMMENT ON COLUMN INS_COL_NEW.SN_ IS
'���';

COMMENT ON COLUMN INS_COL_NEW.START_TIME_ IS
'��Ч��ʼʱ��';

COMMENT ON COLUMN INS_COL_NEW.END_TIME_ IS
'��Ч����ʱ��';

COMMENT ON COLUMN INS_COL_NEW.IS_LONG_VALID_ IS
'�Ƿ�����Ч';

COMMENT ON COLUMN INS_COL_NEW.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INS_COL_NEW.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_COL_NEW.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INS_COL_NEW.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_COL_NEW.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INS_COL_TYPE                                          */
/*==============================================================*/
CREATE TABLE INS_COL_TYPE  (
   TYPE_ID_             VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(50)                    NOT NULL,
   KEY_                 VARCHAR2(50)                    NOT NULL,
   URL_                 VARCHAR2(100)                   NOT NULL,
   MORE_URL_            VARCHAR2(100),
   LOAD_TYPE_           VARCHAR2(20),
   TEMP_ID_             VARCHAR2(64),
   TEMP_NAME_           VARCHAR2(64),
   ICON_CLS_            VARCHAR2(20),
   MEMO_                VARCHAR2(512),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64)                    NOT NULL,
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_INS_COL_TYPE PRIMARY KEY (TYPE_ID_)
);

COMMENT ON TABLE INS_COL_TYPE IS
'��Ŀ�����';

COMMENT ON COLUMN INS_COL_TYPE.NAME_ IS
'��Ŀ����';

COMMENT ON COLUMN INS_COL_TYPE.KEY_ IS
'��ĿKey';

COMMENT ON COLUMN INS_COL_TYPE.URL_ IS
'��Ŀӳ��URL';

COMMENT ON COLUMN INS_COL_TYPE.LOAD_TYPE_ IS
'��������
URL=URL
TEMPLATE=ģ��';

COMMENT ON COLUMN INS_COL_TYPE.TEMP_ID_ IS
'ģ��ID';

COMMENT ON COLUMN INS_COL_TYPE.TEMP_NAME_ IS
'ģ������';

COMMENT ON COLUMN INS_COL_TYPE.MEMO_ IS
'��Ŀ��������';

COMMENT ON COLUMN INS_COL_TYPE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INS_COL_TYPE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_COL_TYPE.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INS_COL_TYPE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_COL_TYPE.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: INS_NEWS                                              */
/*==============================================================*/
CREATE TABLE INS_NEWS  (
   NEW_ID_              VARCHAR2(64)                    NOT NULL,
   SUBJECT_             VARCHAR2(120)                   NOT NULL,
   TAG_                 VARCHAR2(80),
   KEYWORDS_            VARCHAR2(255),
   CONTENT_             CLOB,
   IS_IMG_              VARCHAR2(20),
   IMG_FILE_ID_         VARCHAR2(64),
   READ_TIMES_          INTEGER                         NOT NULL,
   AUTHOR_              VARCHAR2(50),
   ALLOW_CMT_           VARCHAR2(20),
   STATUS_              VARCHAR2(20)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INS_NEWS PRIMARY KEY (NEW_ID_)
);

COMMENT ON TABLE INS_NEWS IS
'��Ϣ����';

COMMENT ON COLUMN INS_NEWS.SUBJECT_ IS
'����';

COMMENT ON COLUMN INS_NEWS.TAG_ IS
'��ǩ';

COMMENT ON COLUMN INS_NEWS.KEYWORDS_ IS
'�ؼ���';

COMMENT ON COLUMN INS_NEWS.CONTENT_ IS
'����';

COMMENT ON COLUMN INS_NEWS.IS_IMG_ IS
'�Ƿ�ΪͼƬ����';

COMMENT ON COLUMN INS_NEWS.IMG_FILE_ID_ IS
'ͼƬ�ļ�ID';

COMMENT ON COLUMN INS_NEWS.READ_TIMES_ IS
'�Ķ�����';

COMMENT ON COLUMN INS_NEWS.AUTHOR_ IS
'����';

COMMENT ON COLUMN INS_NEWS.ALLOW_CMT_ IS
'�Ƿ���������';

COMMENT ON COLUMN INS_NEWS.STATUS_ IS
'״̬';

COMMENT ON COLUMN INS_NEWS.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INS_NEWS.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_NEWS.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INS_NEWS.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_NEWS.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INS_NEWS_CM                                           */
/*==============================================================*/
CREATE TABLE INS_NEWS_CM  (
   COMM_ID_             VARCHAR2(64)                    NOT NULL,
   NEW_ID_              VARCHAR2(64)                    NOT NULL,
   FULL_NAME_           VARCHAR2(50)                    NOT NULL,
   CONTENT_             VARCHAR2(1024)                  NOT NULL,
   AGREE_NUMS_          INTEGER                         NOT NULL,
   REFUSE_NUMS_         INTEGER                         NOT NULL,
   IS_REPLY_            VARCHAR2(20)                    NOT NULL,
   REP_ID_              VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64)                    NOT NULL,
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INS_NEWS_CM PRIMARY KEY (COMM_ID_)
);

COMMENT ON TABLE INS_NEWS_CM IS
'��˾����������';

COMMENT ON COLUMN INS_NEWS_CM.COMM_ID_ IS
'����ID';

COMMENT ON COLUMN INS_NEWS_CM.NEW_ID_ IS
'��ϢID';

COMMENT ON COLUMN INS_NEWS_CM.FULL_NAME_ IS
'��������';

COMMENT ON COLUMN INS_NEWS_CM.CONTENT_ IS
'��������';

COMMENT ON COLUMN INS_NEWS_CM.AGREE_NUMS_ IS
'��ͬ�붥';

COMMENT ON COLUMN INS_NEWS_CM.REFUSE_NUMS_ IS
'��������Ӵ���';

COMMENT ON COLUMN INS_NEWS_CM.IS_REPLY_ IS
'�Ƿ�Ϊ�ظ�';

COMMENT ON COLUMN INS_NEWS_CM.REP_ID_ IS
'�ظ�����ID';

COMMENT ON COLUMN INS_NEWS_CM.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INS_NEWS_CM.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_NEWS_CM.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INS_NEWS_CM.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_NEWS_CM.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INS_PORTAL                                            */
/*==============================================================*/
CREATE TABLE INS_PORTAL  (
   PORT_ID_             VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(128)                   NOT NULL,
   KEY_                 VARCHAR2(64)                    NOT NULL,
   COL_NUMS_            INTEGER,
   COL_WIDTHS_          VARCHAR2(50),
   IS_DEFAULT_          VARCHAR2(20)                    NOT NULL,
   DESC_                VARCHAR2(512),
   USER_ID_             VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INS_PORTAL PRIMARY KEY (PORT_ID_)
);

COMMENT ON TABLE INS_PORTAL IS
'PORTAL�Ż�����';

COMMENT ON COLUMN INS_PORTAL.NAME_ IS
'�Ż�����';

COMMENT ON COLUMN INS_PORTAL.KEY_ IS
'�Ż�KEY
�����Ż�
��˾�Ż�
�����Ż�
֪ʶ�Ż�';

COMMENT ON COLUMN INS_PORTAL.COL_NUMS_ IS
'����';

COMMENT ON COLUMN INS_PORTAL.COL_WIDTHS_ IS
'��Ŀ��
���и�ʽ��250,100%,400';

COMMENT ON COLUMN INS_PORTAL.IS_DEFAULT_ IS
'�Ƿ�Ϊϵͳȱʡ';

COMMENT ON COLUMN INS_PORTAL.DESC_ IS
'����';

COMMENT ON COLUMN INS_PORTAL.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INS_PORTAL.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_PORTAL.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INS_PORTAL.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_PORTAL.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: INS_PORT_COL                                          */
/*==============================================================*/
CREATE TABLE INS_PORT_COL  (
   CONF_ID_             VARCHAR2(64)                    NOT NULL,
   PORT_ID_             VARCHAR2(64)                    NOT NULL,
   COL_ID_              VARCHAR2(64)                    NOT NULL,
   WIDTH_               INTEGER,
   HEIGHT_              INTEGER                         NOT NULL,
   WIDTH_UNIT_          VARCHAR2(8),
   HEIGHT_UNIT_         VARCHAR2(8)                     NOT NULL,
   COL_NUM_             INTEGER,
   SN_                  INTEGER                         NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_INS_PORT_COL PRIMARY KEY (CONF_ID_)
);

COMMENT ON TABLE INS_PORT_COL IS
'�Ż���Ŀ����';

COMMENT ON COLUMN INS_PORT_COL.PORT_ID_ IS
'�Ż�ID';

COMMENT ON COLUMN INS_PORT_COL.COL_ID_ IS
'��ĿID';

COMMENT ON COLUMN INS_PORT_COL.WIDTH_ IS
'���';

COMMENT ON COLUMN INS_PORT_COL.HEIGHT_ IS
'�߶�';

COMMENT ON COLUMN INS_PORT_COL.WIDTH_UNIT_ IS
'��ȵ�λ
�ٷݱ�=%
����=px';

COMMENT ON COLUMN INS_PORT_COL.HEIGHT_UNIT_ IS
'�߶ȵ�λ
�ٷݱ�=%
����=px';

COMMENT ON COLUMN INS_PORT_COL.COL_NUM_ IS
'�к�';

COMMENT ON COLUMN INS_PORT_COL.SN_ IS
'�������';

COMMENT ON COLUMN INS_PORT_COL.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN INS_PORT_COL.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_PORT_COL.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN INS_PORT_COL.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN INS_PORT_COL.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: KD_DOC                                                */
/*==============================================================*/
CREATE TABLE KD_DOC  (
   DOC_ID_              VARCHAR2(64)                    NOT NULL,
   TREE_ID_             VARCHAR2(64),
   SUBJECT_             VARCHAR2(128)                   NOT NULL,
   TEMP_ID_             VARCHAR2(64),
   IS_ESSENCE_          VARCHAR2(20),
   AUTHOR_              VARCHAR2(64)                    NOT NULL,
   AUTHOR_TYPE_         VARCHAR2(20),
   AUTHOR_POS_          VARCHAR2(64),
   BELONG_DEPID_        VARCHAR2(64),
   KEYWORDS_            VARCHAR2(128),
   APPROVAL_ID_         VARCHAR2(64),
   ISSUED_TIME_         DATE,
   VIEW_TIMES_          INTEGER,
   SUMMARY_             VARCHAR2(512),
   CONTENT_             CLOB,
   COMP_SCORE_          NUMBER(8,2),
   TAGS                 VARCHAR2(200),
   STORE_PEROID_        INTEGER,
   COVER_IMG_ID_        VARCHAR2(64),
   IMG_MAPS_            CLOB,
   BPM_INST_ID_         VARCHAR2(64),
   ATT_FILEIDS_         VARCHAR2(512),
   ARCH_CLASS_          VARCHAR2(20),
   STATUS_              VARCHAR2(20)                    NOT NULL,
   DOC_TYPE_            VARCHAR2(20),
   VERSION_             INTEGER,
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_KD_DOC PRIMARY KEY (DOC_ID_)
);

COMMENT ON TABLE KD_DOC IS
'֪ʶ�ĵ�����ͼ������';

COMMENT ON COLUMN KD_DOC.TREE_ID_ IS
'��������';

COMMENT ON COLUMN KD_DOC.SUBJECT_ IS
'�ĵ�����';

COMMENT ON COLUMN KD_DOC.TEMP_ID_ IS
'������֪ʶģ��ID';

COMMENT ON COLUMN KD_DOC.IS_ESSENCE_ IS
'�Ƿ񾫻�';

COMMENT ON COLUMN KD_DOC.AUTHOR_ IS
'����';

COMMENT ON COLUMN KD_DOC.AUTHOR_TYPE_ IS
'��������
�ڲ�=INNER
�ⲿ=OUTER';

COMMENT ON COLUMN KD_DOC.AUTHOR_POS_ IS
'������λ';

COMMENT ON COLUMN KD_DOC.BELONG_DEPID_ IS
'��������ID';

COMMENT ON COLUMN KD_DOC.KEYWORDS_ IS
'�ؼ���';

COMMENT ON COLUMN KD_DOC.APPROVAL_ID_ IS
'������ID';

COMMENT ON COLUMN KD_DOC.ISSUED_TIME_ IS
'��������';

COMMENT ON COLUMN KD_DOC.VIEW_TIMES_ IS
'�������';

COMMENT ON COLUMN KD_DOC.SUMMARY_ IS
'ժҪ';

COMMENT ON COLUMN KD_DOC.CONTENT_ IS
'֪ʶ����';

COMMENT ON COLUMN KD_DOC.COMP_SCORE_ IS
'�ۺ�����';

COMMENT ON COLUMN KD_DOC.TAGS IS
'��ǩ';

COMMENT ON COLUMN KD_DOC.STORE_PEROID_ IS
'�������
��λΪ��';

COMMENT ON COLUMN KD_DOC.COVER_IMG_ID_ IS
'����ͼ';

COMMENT ON COLUMN KD_DOC.IMG_MAPS_ IS
'֪ʶ��ͼ�����Ϣ';

COMMENT ON COLUMN KD_DOC.BPM_INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN KD_DOC.ATT_FILEIDS_ IS
'�ĵ�����';

COMMENT ON COLUMN KD_DOC.ARCH_CLASS_ IS
'�鵵����
֪ʶ�ĵ�
֪ʶ��ͼ
����';

COMMENT ON COLUMN KD_DOC.STATUS_ IS
'�ĵ�״̬
����=abandon
�ݸ�=draft
����=back
����=pending
����=issued
����=overdue
�鵵=archived';

COMMENT ON COLUMN KD_DOC.DOC_TYPE_ IS
'֪ʶ�ĵ�=KD_DOC
����=KD_WORD
֪ʶ��ͼ=KD_MAP';

COMMENT ON COLUMN KD_DOC.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: KD_DOC_CMMT                                           */
/*==============================================================*/
CREATE TABLE KD_DOC_CMMT  (
   COMMENT_ID_          VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64),
   SCORE_               INTEGER                         NOT NULL,
   CONTENT_             VARCHAR2(1024),
   LEVEL_               VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_KD_DOC_CMMT PRIMARY KEY (COMMENT_ID_)
);

COMMENT ON TABLE KD_DOC_CMMT IS
'֪ʶ�ĵ�����';

COMMENT ON COLUMN KD_DOC_CMMT.COMMENT_ID_ IS
'����ID';

COMMENT ON COLUMN KD_DOC_CMMT.DOC_ID_ IS
'֪ʶID';

COMMENT ON COLUMN KD_DOC_CMMT.SCORE_ IS
'����';

COMMENT ON COLUMN KD_DOC_CMMT.CONTENT_ IS
'��������';

COMMENT ON COLUMN KD_DOC_CMMT.LEVEL_ IS
'�ǳ���
�ܺ�
һ��
��
�ܲ�';

COMMENT ON COLUMN KD_DOC_CMMT.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN KD_DOC_CMMT.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_CMMT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_CMMT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_CMMT.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: KD_DOC_CONTR                                          */
/*==============================================================*/
CREATE TABLE KD_DOC_CONTR  (
   CONT_ID_             VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64),
   MOD_TYPE_            VARCHAR2(50)                    NOT NULL,
   REASON_              VARCHAR2(500),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_KD_DOC_CONTR PRIMARY KEY (CONT_ID_)
);

COMMENT ON TABLE KD_DOC_CONTR IS
'֪ʶ�ĵ�������';

COMMENT ON COLUMN KD_DOC_CONTR.DOC_ID_ IS
'����';

COMMENT ON COLUMN KD_DOC_CONTR.MOD_TYPE_ IS
'��������
��������
ɾ������
Ŀ¼�ṹ
����
������Ϣ��
����
�Ű�
�ο�����
ͼƬ';

COMMENT ON COLUMN KD_DOC_CONTR.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN KD_DOC_CONTR.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_CONTR.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_CONTR.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_CONTR.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: KD_DOC_DIR                                            */
/*==============================================================*/
CREATE TABLE KD_DOC_DIR  (
   DIR_ID_              VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64)                    NOT NULL,
   LEVEL_               VARCHAR2(20)                    NOT NULL,
   SUBJECT_             VARCHAR2(120)                   NOT NULL,
   ANCHOR_              VARCHAR2(255),
   PARENT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_KD_DOC_DIR PRIMARY KEY (DIR_ID_)
);

COMMENT ON TABLE KD_DOC_DIR IS
'�ĵ�����Ŀ¼';

COMMENT ON COLUMN KD_DOC_DIR.DOC_ID_ IS
'�ĵ�ID';

COMMENT ON COLUMN KD_DOC_DIR.LEVEL_ IS
'����ȼ�
1������
2�����';

COMMENT ON COLUMN KD_DOC_DIR.SUBJECT_ IS
'����';

COMMENT ON COLUMN KD_DOC_DIR.ANCHOR_ IS
'��������ê��';

COMMENT ON COLUMN KD_DOC_DIR.PARENT_ID_ IS
'�ϼ�Ŀ¼ID';

COMMENT ON COLUMN KD_DOC_DIR.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_DIR.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_DIR.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_DIR.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_DIR.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: KD_DOC_FAV                                            */
/*==============================================================*/
CREATE TABLE KD_DOC_FAV  (
   FAV_ID_              VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64)                    NOT NULL,
   QUE_ID_              VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_KD_DOC_FAV PRIMARY KEY (FAV_ID_)
);

COMMENT ON TABLE KD_DOC_FAV IS
'�ĵ�֪ʶ�ղ�';

COMMENT ON COLUMN KD_DOC_FAV.DOC_ID_ IS
'�ĵ�ID';

COMMENT ON COLUMN KD_DOC_FAV.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_FAV.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_FAV.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_FAV.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_FAV.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: KD_DOC_HANDLE                                         */
/*==============================================================*/
CREATE TABLE KD_DOC_HANDLE  (
   HANDLE_ID_           VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64),
   TYPE_                VARCHAR2(20),
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   IS_READ_             SMALLINT,
   OPINION_             VARCHAR2(1024),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_KD_DOC_HANDLE PRIMARY KEY (HANDLE_ID_)
);

COMMENT ON TABLE KD_DOC_HANDLE IS
'���İ���';

COMMENT ON COLUMN KD_DOC_HANDLE.HANDLE_ID_ IS
'����ID';

COMMENT ON COLUMN KD_DOC_HANDLE.DOC_ID_ IS
'�շ���ID';

COMMENT ON COLUMN KD_DOC_HANDLE.TYPE_ IS
'��������
�ַ�
����
���
����
�а�
ע��';

COMMENT ON COLUMN KD_DOC_HANDLE.USER_ID_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_HANDLE.IS_READ_ IS
'�Ƿ�����';

COMMENT ON COLUMN KD_DOC_HANDLE.OPINION_ IS
'�������';

COMMENT ON COLUMN KD_DOC_HANDLE.TENANT_ID_ IS
'���� - ����������SAAS ID';

COMMENT ON COLUMN KD_DOC_HANDLE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_HANDLE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_HANDLE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_HANDLE.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: KD_DOC_HIS                                            */
/*==============================================================*/
CREATE TABLE KD_DOC_HIS  (
   HIS_ID_              VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64),
   VERSION_             INTEGER                         NOT NULL,
   SUBJECT_             VARCHAR2(128)                   NOT NULL,
   CONTENT_             CLOB                            NOT NULL,
   AUTHOR_              VARCHAR2(50)                    NOT NULL,
   COVER_FILE_ID_       VARCHAR2(64),
   ATTACH_IDS_          VARCHAR2(512),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_KD_DOC_HIS PRIMARY KEY (HIS_ID_)
);

COMMENT ON TABLE KD_DOC_HIS IS
'֪ʶ�ĵ���ʷ�汾';

COMMENT ON COLUMN KD_DOC_HIS.DOC_ID_ IS
'�ĵ�ID';

COMMENT ON COLUMN KD_DOC_HIS.VERSION_ IS
'�汾��';

COMMENT ON COLUMN KD_DOC_HIS.SUBJECT_ IS
'�ĵ�����';

COMMENT ON COLUMN KD_DOC_HIS.CONTENT_ IS
'�ĵ�����';

COMMENT ON COLUMN KD_DOC_HIS.AUTHOR_ IS
'�ĵ�����';

COMMENT ON COLUMN KD_DOC_HIS.COVER_FILE_ID_ IS
'�ĵ�����';

COMMENT ON COLUMN KD_DOC_HIS.ATTACH_IDS_ IS
'�ĵ�����IDS';

COMMENT ON COLUMN KD_DOC_HIS.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN KD_DOC_HIS.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_HIS.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_HIS.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_HIS.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: KD_DOC_READ                                           */
/*==============================================================*/
CREATE TABLE KD_DOC_READ  (
   READ_ID_             VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64),
   DOC_STATUS_          VARCHAR2(50),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_KD_DOC_READ PRIMARY KEY (READ_ID_)
);

COMMENT ON TABLE KD_DOC_READ IS
'֪ʶ�ĵ��Ķ�';

COMMENT ON COLUMN KD_DOC_READ.READ_ID_ IS
'�Ķ���ID';

COMMENT ON COLUMN KD_DOC_READ.DOC_STATUS_ IS
'�Ķ��ĵ��׶�';

COMMENT ON COLUMN KD_DOC_READ.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN KD_DOC_READ.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_READ.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_READ.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_READ.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: KD_DOC_REM                                            */
/*==============================================================*/
CREATE TABLE KD_DOC_REM  (
   REM_ID_              VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64)                    NOT NULL,
   DEP_ID_              VARCHAR2(64),
   USER_ID_             VARCHAR2(64),
   LEVEL_               INTEGER,
   MEMO_                VARCHAR2(1024),
   REC_TREE_ID_         VARCHAR2(64),
   NOTICE_CREATOR_      VARCHAR2(20),
   NOTICE_TYPE_         VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_KD_DOC_REM PRIMARY KEY (REM_ID_)
);

COMMENT ON TABLE KD_DOC_REM IS
'�ĵ��Ƽ�';

COMMENT ON COLUMN KD_DOC_REM.REM_ID_ IS
'�Ƽ�ID';

COMMENT ON COLUMN KD_DOC_REM.REC_TREE_ID_ IS
'�Ƽ����������ID';

COMMENT ON COLUMN KD_DOC_REM.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN KD_DOC_REM.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_REM.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_REM.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_REM.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: KD_DOC_RIGHT                                          */
/*==============================================================*/
CREATE TABLE KD_DOC_RIGHT  (
   RIGHT_ID_            VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64)                    NOT NULL,
   IDENTITY_TYPE_       VARCHAR2(20)                    NOT NULL,
   IDENTITY_ID_         VARCHAR2(64)                    NOT NULL,
   RIGHT_               VARCHAR2(60),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_KD_DOC_RIGHT PRIMARY KEY (RIGHT_ID_)
);

COMMENT ON TABLE KD_DOC_RIGHT IS
'�ĵ�Ȩ��';

COMMENT ON COLUMN KD_DOC_RIGHT.RIGHT_ID_ IS
'Ȩ��ID';

COMMENT ON COLUMN KD_DOC_RIGHT.DOC_ID_ IS
'�ĵ�ID';

COMMENT ON COLUMN KD_DOC_RIGHT.IDENTITY_TYPE_ IS
'��Ȩ����
USER=�û�
GROUP=�û���';

COMMENT ON COLUMN KD_DOC_RIGHT.IDENTITY_ID_ IS
'�û�����ID';

COMMENT ON COLUMN KD_DOC_RIGHT.RIGHT_ IS
'READ=�ɶ�
EDIT=�ɱ༭
PRINT=��ӡ
DOWN_FILE=�����ظ���';

COMMENT ON COLUMN KD_DOC_RIGHT.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN KD_DOC_RIGHT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_RIGHT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_RIGHT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_RIGHT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: KD_DOC_ROUND                                          */
/*==============================================================*/
CREATE TABLE KD_DOC_ROUND  (
   ROUND_ID_            VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_KD_DOC_ROUND PRIMARY KEY (ROUND_ID_)
);

COMMENT ON TABLE KD_DOC_ROUND IS
'�ĵ�����';

COMMENT ON COLUMN KD_DOC_ROUND.DOC_ID_ IS
'�ĵ�ID';

COMMENT ON COLUMN KD_DOC_ROUND.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_ROUND.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_ROUND.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_ROUND.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN KD_DOC_ROUND.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: KD_DOC_TEMPLATE                                       */
/*==============================================================*/
CREATE TABLE KD_DOC_TEMPLATE  (
   TEMP_ID_             VARCHAR2(64)                    NOT NULL,
   "TREE_ID_"           VARCHAR2(64),
   NAME_                VARCHAR2(80)                    NOT NULL,
   CONTENT_             CLOB,
   TYPE_                VARCHAR2(20),
   STATUS_              VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_KD_DOC_TEMPLATE PRIMARY KEY (TEMP_ID_)
);

COMMENT ON TABLE KD_DOC_TEMPLATE IS
'�ĵ�ģ��';

COMMENT ON COLUMN KD_DOC_TEMPLATE.TEMP_ID_ IS
'ģ��ID';

COMMENT ON COLUMN KD_DOC_TEMPLATE."TREE_ID_" IS
'ģ�����ID';

COMMENT ON COLUMN KD_DOC_TEMPLATE.NAME_ IS
'ģ������';

COMMENT ON COLUMN KD_DOC_TEMPLATE.CONTENT_ IS
'ģ������';

COMMENT ON COLUMN KD_DOC_TEMPLATE.TYPE_ IS
'ģ������
����ģ��
�ĵ�ģ��';

COMMENT ON COLUMN KD_DOC_TEMPLATE.STATUS_ IS
'ģ��״̬';

COMMENT ON COLUMN KD_DOC_TEMPLATE.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN KD_DOC_TEMPLATE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_TEMPLATE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_DOC_TEMPLATE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_DOC_TEMPLATE.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: KD_QUESTION                                           */
/*==============================================================*/
CREATE TABLE KD_QUESTION  (
   QUE_ID_              VARCHAR2(64)                    NOT NULL,
   "TREE_ID_"           VARCHAR2(64),
   SUBJECT_             VARCHAR2(80)                    NOT NULL,
   QUESTION_            CLOB,
   FILE_IDS_            VARCHAR2(512),
   TAGS_                VARCHAR2(128),
   REWARD_SCORE_        INTEGER                         NOT NULL,
   REPLY_TYPE_          VARCHAR2(80),
   REPLIER_ID_          VARCHAR2(64),
   STATUS_              VARCHAR2(20),
   REPLY_COUNTS_        INTEGER                         NOT NULL,
   VIEW_TIMES_          INTEGER,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_KD_QUESTION PRIMARY KEY (QUE_ID_)
);

COMMENT ON TABLE KD_QUESTION IS
'�ĵ�֪ʶ�ղ�';

COMMENT ON COLUMN KD_QUESTION.QUE_ID_ IS
'����ID';

COMMENT ON COLUMN KD_QUESTION."TREE_ID_" IS
'����Id';

COMMENT ON COLUMN KD_QUESTION.SUBJECT_ IS
'��������';

COMMENT ON COLUMN KD_QUESTION.QUESTION_ IS
'��ϸ����';

COMMENT ON COLUMN KD_QUESTION.FILE_IDS_ IS
'����';

COMMENT ON COLUMN KD_QUESTION.TAGS_ IS
'��ǩ';

COMMENT ON COLUMN KD_QUESTION.REWARD_SCORE_ IS
'���ͻ���';

COMMENT ON COLUMN KD_QUESTION.REPLY_TYPE_ IS
'������
ר�Ҹ���
����ר��';

COMMENT ON COLUMN KD_QUESTION.REPLIER_ID_ IS
'�ظ���ID';

COMMENT ON COLUMN KD_QUESTION.STATUS_ IS
'�����=UNSOLVED
�ѽ��=SOLVED';

COMMENT ON COLUMN KD_QUESTION.REPLY_COUNTS_ IS
'�ظ���';

COMMENT ON COLUMN KD_QUESTION.VIEW_TIMES_ IS
'�������';

COMMENT ON COLUMN KD_QUESTION.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN KD_QUESTION.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_QUESTION.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_QUESTION.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_QUESTION.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: KD_QUES_ANSWER                                        */
/*==============================================================*/
CREATE TABLE KD_QUES_ANSWER  (
   ANSWER_ID_           VARCHAR2(64)                    NOT NULL,
   QUE_ID_              VARCHAR2(64)                    NOT NULL,
   REPLY_CONTENT_       CLOB                            NOT NULL,
   IS_BEST_             VARCHAR2(20),
   AUTHOR_ID_           VARCHAR2(64)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_KD_QUES_ANSWER PRIMARY KEY (ANSWER_ID_)
);

COMMENT ON TABLE KD_QUES_ANSWER IS
'�����';

COMMENT ON COLUMN KD_QUES_ANSWER.QUE_ID_ IS
'����ID';

COMMENT ON COLUMN KD_QUES_ANSWER.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN KD_QUES_ANSWER.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_QUES_ANSWER.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_QUES_ANSWER.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_QUES_ANSWER.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: KD_USER                                               */
/*==============================================================*/
CREATE TABLE KD_USER  (
   KUSER_ID             VARCHAR2(64)                    NOT NULL,
   POINT_               INTEGER                         NOT NULL,
   DOC_SCORE_           INTEGER,
   GRADE_               VARCHAR2(20),
   USER_TYPE_           VARCHAR2(20),
   FULLNAME_            VARCHAR2(32),
   SN_                  INTEGER,
   KN_SYS_ID_           VARCHAR2(64),
   REQ_SYS_ID_          VARCHAR2(64),
   SIGN_                VARCHAR2(80),
   PROFILE_             VARCHAR2(100),
   HEAD_ID_             VARCHAR2(64),
   SEX_                 VARCHAR2(64),
   OFFICE_PHONE_        VARCHAR2(20),
   MOBILE_              VARCHAR2(16),
   EMAIL_               VARCHAR2(80),
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_KD_USER PRIMARY KEY (KUSER_ID)
);

COMMENT ON TABLE KD_USER IS
'֪ʶ�û���Ϣ';

COMMENT ON COLUMN KD_USER.KUSER_ID IS
'�û�ID';

COMMENT ON COLUMN KD_USER.POINT_ IS
'����';

COMMENT ON COLUMN KD_USER.USER_TYPE_ IS
'ר�Ҹ���=PERSON
����ר��=DOMAIN

';

COMMENT ON COLUMN KD_USER.SN_ IS
'���';

COMMENT ON COLUMN KD_USER.KN_SYS_ID_ IS
'֪ʶ����';

COMMENT ON COLUMN KD_USER.REQ_SYS_ID_ IS
'��������';

COMMENT ON COLUMN KD_USER.SIGN_ IS
'����ǩ��';

COMMENT ON COLUMN KD_USER.PROFILE_ IS
'���˼��';

COMMENT ON COLUMN KD_USER.HEAD_ID_ IS
'ͷ��';

COMMENT ON COLUMN KD_USER.SEX_ IS
'�Ա�';

COMMENT ON COLUMN KD_USER.OFFICE_PHONE_ IS
'�칫�绰';

COMMENT ON COLUMN KD_USER.MOBILE_ IS
'�ֻ�����';

COMMENT ON COLUMN KD_USER.EMAIL_ IS
'��������';

COMMENT ON COLUMN KD_USER.USER_ID_ IS
'�����û�ID';

COMMENT ON COLUMN KD_USER.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN KD_USER.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_USER.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_USER.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_USER.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: KD_USER_LEVEL                                         */
/*==============================================================*/
CREATE TABLE KD_USER_LEVEL  (
   CONF_ID_             VARCHAR2(32)                    NOT NULL,
   START_VAL_           INTEGER                         NOT NULL,
   END_VAL_             INTEGER                         NOT NULL,
   LEVEL_NAME_          VARCHAR2(100)                   NOT NULL,
   HEADER_ICON_         VARCHAR2(128),
   MEMO_                VARCHAR2(500),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_KD_USER_LEVEL PRIMARY KEY (CONF_ID_)
);

COMMENT ON TABLE KD_USER_LEVEL IS
'�û�֪ʶ�ȼ�����';

COMMENT ON COLUMN KD_USER_LEVEL.CONF_ID_ IS
'����ID';

COMMENT ON COLUMN KD_USER_LEVEL.START_VAL_ IS
'��ʼֵ';

COMMENT ON COLUMN KD_USER_LEVEL.END_VAL_ IS
'����ֵ';

COMMENT ON COLUMN KD_USER_LEVEL.LEVEL_NAME_ IS
'�ȼ�����';

COMMENT ON COLUMN KD_USER_LEVEL.HEADER_ICON_ IS
'ͷ��Icon';

COMMENT ON COLUMN KD_USER_LEVEL.MEMO_ IS
'��ע';

COMMENT ON COLUMN KD_USER_LEVEL.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN KD_USER_LEVEL.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_USER_LEVEL.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN KD_USER_LEVEL.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN KD_USER_LEVEL.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: MI_DB_ID                                              */
/*==============================================================*/
CREATE TABLE MI_DB_ID  (
   ID_                  INTEGER                         NOT NULL,
   START_               NUMBER(20,0)                    NOT NULL,
   MAX_                 NUMBER(20,0)                    NOT NULL,
   MAC_NAME_            VARCHAR2(256)                   NOT NULL,
   CONSTRAINT PK_MI_DB_ID PRIMARY KEY (ID_)
);

COMMENT ON TABLE MI_DB_ID IS
'ϵͳ������������';

COMMENT ON COLUMN MI_DB_ID.ID_ IS
'����ID,
Ĭ��Ϊ1';

COMMENT ON COLUMN MI_DB_ID.START_ IS
'��ʼֵ';

COMMENT ON COLUMN MI_DB_ID.MAX_ IS
'����ֵ';

COMMENT ON COLUMN MI_DB_ID.MAC_NAME_ IS
'�������Ļ������ƣ��ɳ�������ʱ�Զ���ȡ���Ҽ������ݿ�';

/*==============================================================*/
/* Table: MOBILE_TOKEN                                          */
/*==============================================================*/
CREATE TABLE MOBILE_TOKEN  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   ACCOUNT_             VARCHAR2(64)                    NOT NULL,
   USER_ID_             VARCHAR2(64),
   TOKEN                VARCHAR2(64),
   STATUS_              SMALLINT,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   EXPIRED_TIME_        DATE,
   CONSTRAINT PK_MOBILE_TOKEN PRIMARY KEY (ID_)
);

COMMENT ON TABLE MOBILE_TOKEN IS
'�ֻ�������';

COMMENT ON COLUMN MOBILE_TOKEN.ID_ IS
'����';

COMMENT ON COLUMN MOBILE_TOKEN.ACCOUNT_ IS
'ACCOUNT';

COMMENT ON COLUMN MOBILE_TOKEN.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN MOBILE_TOKEN.TOKEN IS
'����';

COMMENT ON COLUMN MOBILE_TOKEN.STATUS_ IS
'״̬';

COMMENT ON COLUMN MOBILE_TOKEN.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN MOBILE_TOKEN.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN MOBILE_TOKEN.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN MOBILE_TOKEN.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN MOBILE_TOKEN.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN MOBILE_TOKEN.EXPIRED_TIME_ IS
'ʧЧʱ��';

/*==============================================================*/
/* Table: OA_ADDR_BOOK                                          */
/*==============================================================*/
CREATE TABLE OA_ADDR_BOOK  (
   ADDR_ID_             VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(50)                    NOT NULL,
   COMPANY_             VARCHAR2(120),
   DEP_                 VARCHAR2(50),
   POS_                 VARCHAR2(50),
   MAIL_                VARCHAR2(255),
   COUNTRY_             VARCHAR2(32),
   SATE_                VARCHAR2(32),
   CITY_                VARCHAR2(32),
   STREET_              VARCHAR2(80),
   ZIP_                 VARCHAR2(20),
   BIRTHDAY_            DATE,
   MOBILE_              VARCHAR2(16),
   PHONE_               VARCHAR2(16),
   WEIXIN_              VARCHAR2(80),
   QQ_                  VARCHAR2(32),
   PHOTO_ID_            VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_OA_ADDR_BOOK PRIMARY KEY (ADDR_ID_)
);

COMMENT ON TABLE OA_ADDR_BOOK IS
'ͨѶ¼��ϵ��';

COMMENT ON COLUMN OA_ADDR_BOOK.ADDR_ID_ IS
'��ϵ��ID';

COMMENT ON COLUMN OA_ADDR_BOOK.NAME_ IS
'����';

COMMENT ON COLUMN OA_ADDR_BOOK.COMPANY_ IS
'��˾';

COMMENT ON COLUMN OA_ADDR_BOOK.DEP_ IS
'����';

COMMENT ON COLUMN OA_ADDR_BOOK.POS_ IS
'ְ��';

COMMENT ON COLUMN OA_ADDR_BOOK.MAIL_ IS
'������';

COMMENT ON COLUMN OA_ADDR_BOOK.COUNTRY_ IS
'����';

COMMENT ON COLUMN OA_ADDR_BOOK.SATE_ IS
'ʡ��';

COMMENT ON COLUMN OA_ADDR_BOOK.CITY_ IS
'����';

COMMENT ON COLUMN OA_ADDR_BOOK.STREET_ IS
'�ֵ�';

COMMENT ON COLUMN OA_ADDR_BOOK.ZIP_ IS
'�ʱ�';

COMMENT ON COLUMN OA_ADDR_BOOK.BIRTHDAY_ IS
'����';

COMMENT ON COLUMN OA_ADDR_BOOK.MOBILE_ IS
'���ֻ�';

COMMENT ON COLUMN OA_ADDR_BOOK.PHONE_ IS
'���绰';

COMMENT ON COLUMN OA_ADDR_BOOK.WEIXIN_ IS
'��΢�ź�';

COMMENT ON COLUMN OA_ADDR_BOOK.QQ_ IS
'QQ';

COMMENT ON COLUMN OA_ADDR_BOOK.PHOTO_ID_ IS
'ͷ���ļ�ID';

COMMENT ON COLUMN OA_ADDR_BOOK.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_ADDR_BOOK.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_ADDR_BOOK.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_ADDR_BOOK.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_ADDR_BOOK.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: OA_ADDR_CONT                                          */
/*==============================================================*/
CREATE TABLE OA_ADDR_CONT  (
   CONT_ID_             VARCHAR2(64)                    NOT NULL,
   ADDR_ID_             VARCHAR2(64),
   TYPE_                VARCHAR2(50)                    NOT NULL,
   CONTACT_             VARCHAR2(255),
   EXT1_                VARCHAR2(100),
   EXT2_                VARCHAR2(100),
   EXT3_                VARCHAR2(100),
   EXT4_                VARCHAR2(100),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_OA_ADDR_CONT PRIMARY KEY (CONT_ID_)
);

COMMENT ON TABLE OA_ADDR_CONT IS
'ͨѶ¼��ϵ��Ϣ';

COMMENT ON COLUMN OA_ADDR_CONT.CONT_ID_ IS
'��ϵ��ϢID';

COMMENT ON COLUMN OA_ADDR_CONT.ADDR_ID_ IS
'��ϵ��ID';

COMMENT ON COLUMN OA_ADDR_CONT.TYPE_ IS
'����
�ֻ���=MOBILE
��ͥ��ַ=HOME_ADDRESS
������ַ=WORK_ADDRESS
QQ=QQ
΢��=WEI_XIN
GoogleTalk=GOOGLE-TALK
����=WORK_INFO
��ע=MEMO';

COMMENT ON COLUMN OA_ADDR_CONT.CONTACT_ IS
'��ϵ����Ϣ';

COMMENT ON COLUMN OA_ADDR_CONT.EXT1_ IS
'��ϵ��չ�ֶ�1';

COMMENT ON COLUMN OA_ADDR_CONT.EXT2_ IS
'��ϵ��չ�ֶ�2';

COMMENT ON COLUMN OA_ADDR_CONT.EXT3_ IS
'��ϵ��չ�ֶ�3';

COMMENT ON COLUMN OA_ADDR_CONT.EXT4_ IS
'��ϵ��չ�ֶ�4';

COMMENT ON COLUMN OA_ADDR_CONT.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_ADDR_CONT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_ADDR_CONT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_ADDR_CONT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_ADDR_CONT.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: OA_ADDR_GPB                                           */
/*==============================================================*/
CREATE TABLE OA_ADDR_GPB  (
   GROUP_ID_            VARCHAR2(64)                    NOT NULL,
   ADDR_ID_             VARCHAR2(64)                    NOT NULL,
   CONSTRAINT PK_OA_ADDR_GPB PRIMARY KEY (GROUP_ID_, ADDR_ID_)
);

COMMENT ON TABLE OA_ADDR_GPB IS
'ͨѶ¼�����µ���ϵ��';

COMMENT ON COLUMN OA_ADDR_GPB.GROUP_ID_ IS
'����ID';

COMMENT ON COLUMN OA_ADDR_GPB.ADDR_ID_ IS
'��ϵ��ID';

/*==============================================================*/
/* Table: OA_ADDR_GRP                                           */
/*==============================================================*/
CREATE TABLE OA_ADDR_GRP  (
   GROUP_ID_            VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(50)                    NOT NULL,
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_OA_ADDR_GRP PRIMARY KEY (GROUP_ID_)
);

COMMENT ON TABLE OA_ADDR_GRP IS
'ͨѶ¼����';

COMMENT ON COLUMN OA_ADDR_GRP.GROUP_ID_ IS
'����ID';

COMMENT ON COLUMN OA_ADDR_GRP.NAME_ IS
'����';

COMMENT ON COLUMN OA_ADDR_GRP.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_ADDR_GRP.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_ADDR_GRP.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_ADDR_GRP.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_ADDR_GRP.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: OA_ASSETS                                             */
/*==============================================================*/
CREATE TABLE OA_ASSETS  (
   ASS_ID_              VARCHAR2(64)                    NOT NULL,
   PROD_DEF_ID_         VARCHAR2(64),
   CODE_                VARCHAR2(64),
   NAME_                VARCHAR2(64),
   JSON_                CLOB,
   DESC_                VARCHAR2(256),
   STATUS_              VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_ASSETS PRIMARY KEY (ASS_ID_)
);

COMMENT ON TABLE OA_ASSETS IS
'�ʲ���Ϣ';

COMMENT ON COLUMN OA_ASSETS.ASS_ID_ IS
'�ʲ�ID';

COMMENT ON COLUMN OA_ASSETS.PROD_DEF_ID_ IS
'��������ID';

COMMENT ON COLUMN OA_ASSETS.CODE_ IS
'�ʲ����';

COMMENT ON COLUMN OA_ASSETS.NAME_ IS
'�ʲ�����';

COMMENT ON COLUMN OA_ASSETS.JSON_ IS
'����JSON';

COMMENT ON COLUMN OA_ASSETS.DESC_ IS
'����';

COMMENT ON COLUMN OA_ASSETS.STATUS_ IS
'״̬';

COMMENT ON COLUMN OA_ASSETS.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN OA_ASSETS.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_ASSETS.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_ASSETS.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_ASSETS.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_ASSETS_BID                                         */
/*==============================================================*/
CREATE TABLE OA_ASSETS_BID  (
   BID_ID_              VARCHAR2(64)                    NOT NULL,
   ASS_ID_              VARCHAR2(64),
   PARA_ID_             VARCHAR2(64),
   START_               DATE                            NOT NULL,
   END_                 DATE                            NOT NULL,
   MEMO_                CLOB,
   USE_MANS_            VARCHAR2(20),
   STATUS_              VARCHAR2(20),
   BPM_INST_ID_         VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_ASSETS_BID PRIMARY KEY (BID_ID_)
);

COMMENT ON TABLE OA_ASSETS_BID IS
'���ʲ����롿';

COMMENT ON COLUMN OA_ASSETS_BID.BID_ID_ IS
'����ID';

COMMENT ON COLUMN OA_ASSETS_BID.ASS_ID_ IS
'�ʲ�ID';

COMMENT ON COLUMN OA_ASSETS_BID.PARA_ID_ IS
'����ID(��������)';

COMMENT ON COLUMN OA_ASSETS_BID.START_ IS
'��ʼʱ��';

COMMENT ON COLUMN OA_ASSETS_BID.END_ IS
'����ʱ��';

COMMENT ON COLUMN OA_ASSETS_BID.MEMO_ IS
'����˵��';

COMMENT ON COLUMN OA_ASSETS_BID.USE_MANS_ IS
'������Ա';

COMMENT ON COLUMN OA_ASSETS_BID.STATUS_ IS
'״̬';

COMMENT ON COLUMN OA_ASSETS_BID.BPM_INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN OA_ASSETS_BID.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN OA_ASSETS_BID.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_ASSETS_BID.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_ASSETS_BID.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_ASSETS_BID.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_ASS_PARAMETER                                      */
/*==============================================================*/
CREATE TABLE OA_ASS_PARAMETER  (
   PARA_ID_             VARCHAR2(64)                    NOT NULL,
   VALUE_ID_            VARCHAR2(64),
   KEY_ID_              VARCHAR2(64),
   ASS_ID_              VARCHAR2(64),
   CUSTOM_VALUE_NAME_   VARCHAR2(255),
   CUSTOM_KEY_NAME_     VARCHAR2(255),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_ASS_PARAMETER PRIMARY KEY (PARA_ID_)
);

COMMENT ON TABLE OA_ASS_PARAMETER IS
'�ʲ�����';

COMMENT ON COLUMN OA_ASS_PARAMETER.PARA_ID_ IS
'����ID';

COMMENT ON COLUMN OA_ASS_PARAMETER.VALUE_ID_ IS
'����VALUE����';

COMMENT ON COLUMN OA_ASS_PARAMETER.KEY_ID_ IS
'����KEY����';

COMMENT ON COLUMN OA_ASS_PARAMETER.ASS_ID_ IS
'�ʲ�ID';

COMMENT ON COLUMN OA_ASS_PARAMETER.CUSTOM_VALUE_NAME_ IS
'�Զ���VALUE��';

COMMENT ON COLUMN OA_ASS_PARAMETER.CUSTOM_KEY_NAME_ IS
'�Զ���KEY��';

COMMENT ON COLUMN OA_ASS_PARAMETER.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN OA_ASS_PARAMETER.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_ASS_PARAMETER.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_ASS_PARAMETER.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_ASS_PARAMETER.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_CAR                                                */
/*==============================================================*/
CREATE TABLE OA_CAR  (
   CAR_ID_              VARCHAR2(64)                    NOT NULL,
   SYS_DIC_ID_          VARCHAR2(64),
   NAME_                VARCHAR2(60)                    NOT NULL,
   CAR_NO_              VARCHAR2(20)                    NOT NULL,
   TRAVEL_MILES_        INTEGER,
   ENGINE_NUM_          VARCHAR2(20),
   FRAME_NO_            VARCHAR2(20),
   BRAND_               VARCHAR2(64),
   MODEL_               VARCHAR2(64),
   WEIGHT_              INTEGER,
   SEATS_               INTEGER,
   BUY_DATE_            DATE,
   PRICE_               NUMBER(18,4),
   ANNUAL_INSP_         CLOB,
   INSURANCE_           CLOB,
   MAINTENS_            CLOB,
   MEMO_                CLOB,
   PHOTO_IDS_           VARCHAR2(512),
   STATUS_              VARCHAR2(20)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_CAR PRIMARY KEY (CAR_ID_)
);

COMMENT ON TABLE OA_CAR IS
'������Ϣ';

COMMENT ON COLUMN OA_CAR.CAR_ID_ IS
'����ID';

COMMENT ON COLUMN OA_CAR.NAME_ IS
'��������';

COMMENT ON COLUMN OA_CAR.CAR_NO_ IS
'���ƺ�';

COMMENT ON COLUMN OA_CAR.TRAVEL_MILES_ IS
'��ʻ���';

COMMENT ON COLUMN OA_CAR.ENGINE_NUM_ IS
'��������';

COMMENT ON COLUMN OA_CAR.FRAME_NO_ IS
'����ʶ�����';

COMMENT ON COLUMN OA_CAR.BRAND_ IS
'Ʒ��';

COMMENT ON COLUMN OA_CAR.MODEL_ IS
'�ͺ�';

COMMENT ON COLUMN OA_CAR.WEIGHT_ IS
'��������';

COMMENT ON COLUMN OA_CAR.SEATS_ IS
'������λ';

COMMENT ON COLUMN OA_CAR.BUY_DATE_ IS
'��������';

COMMENT ON COLUMN OA_CAR.PRICE_ IS
'����۸�';

COMMENT ON COLUMN OA_CAR.ANNUAL_INSP_ IS
'������';

COMMENT ON COLUMN OA_CAR.INSURANCE_ IS
'�������';

COMMENT ON COLUMN OA_CAR.MAINTENS_ IS
'����ά�����';

COMMENT ON COLUMN OA_CAR.MEMO_ IS
'��ע��Ϣ';

COMMENT ON COLUMN OA_CAR.PHOTO_IDS_ IS
'������Ƭ';

COMMENT ON COLUMN OA_CAR.STATUS_ IS
'����״̬
IN_USED=��ʹ��
IN_FREE=����
SCRAP=����';

COMMENT ON COLUMN OA_CAR.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN OA_CAR.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_CAR.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_CAR.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_CAR.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_CAR_APP                                            */
/*==============================================================*/
CREATE TABLE OA_CAR_APP  (
   APP_ID_              VARCHAR2(64)                    NOT NULL,
   CAR_CAT_             VARCHAR2(50)                    NOT NULL,
   CAR_ID_              VARCHAR2(64)                    NOT NULL,
   CAR_NAME_            VARCHAR2(50)                    NOT NULL,
   START_TIME_          DATE                            NOT NULL,
   END_TIME_            DATE                            NOT NULL,
   DRIVER_              VARCHAR2(20),
   CATEGORY_            VARCHAR2(64),
   DEST_LOC_            VARCHAR2(100),
   TRAV_MILES_          INTEGER,
   USE_MANS_            VARCHAR2(20),
   MEMO_                CLOB,
   STATUS_              VARCHAR2(20),
   BPM_INST_            VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_CAR_APP PRIMARY KEY (APP_ID_)
);

COMMENT ON TABLE OA_CAR_APP IS
'��������';

COMMENT ON COLUMN OA_CAR_APP.CAR_CAT_ IS
'�������';

COMMENT ON COLUMN OA_CAR_APP.CAR_ID_ IS
'����ID';

COMMENT ON COLUMN OA_CAR_APP.CAR_NAME_ IS
'��������';

COMMENT ON COLUMN OA_CAR_APP.START_TIME_ IS
'��ʼʱ��';

COMMENT ON COLUMN OA_CAR_APP.END_TIME_ IS
'��ֹʱ��';

COMMENT ON COLUMN OA_CAR_APP.DRIVER_ IS
'��ʻԱ';

COMMENT ON COLUMN OA_CAR_APP.CATEGORY_ IS
'�г����';

COMMENT ON COLUMN OA_CAR_APP.DEST_LOC_ IS
'Ŀ�ĵص�';

COMMENT ON COLUMN OA_CAR_APP.TRAV_MILES_ IS
'��ʻ���';

COMMENT ON COLUMN OA_CAR_APP.USE_MANS_ IS
'ʹ����Ա';

COMMENT ON COLUMN OA_CAR_APP.MEMO_ IS
'ʹ��˵��';

COMMENT ON COLUMN OA_CAR_APP.STATUS_ IS
'����״̬';

COMMENT ON COLUMN OA_CAR_APP.BPM_INST_ IS
'����ʵ��ID';

COMMENT ON COLUMN OA_CAR_APP.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN OA_CAR_APP.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_CAR_APP.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_CAR_APP.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_CAR_APP.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_COM_BOOK                                           */
/*==============================================================*/
CREATE TABLE OA_COM_BOOK  (
   COM_ID_              VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(64)                    NOT NULL,
   FIRST_LETTER_        VARCHAR2(16),
   DEPNAME_             VARCHAR2(64),
   MOBILE_              VARCHAR2(64),
   MOBILE2_             VARCHAR2(64),
   PHONE_               VARCHAR2(64),
   EMAIL_               VARCHAR2(64),
   QQ_                  VARCHAR2(32),
   IS_EMPLOYEE_         VARCHAR2(16)                    NOT NULL,
   REMARK_              VARCHAR2(500),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_COM_BOOK PRIMARY KEY (COM_ID_)
);

COMMENT ON COLUMN OA_COM_BOOK.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN OA_COM_BOOK.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_COM_BOOK.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_COM_BOOK.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_COM_BOOK.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_COM_RIGHT                                          */
/*==============================================================*/
CREATE TABLE OA_COM_RIGHT  (
   RIGHT_ID_            VARCHAR2(64)                    NOT NULL,
   COMBOOK_ID_          VARCHAR2(64)                    NOT NULL,
   IDENTITY_TYPE_       VARCHAR2(20)                    NOT NULL,
   IDENTITY_ID_         VARCHAR2(64)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_COM_RIGHT PRIMARY KEY (RIGHT_ID_)
);

COMMENT ON COLUMN OA_COM_RIGHT.RIGHT_ID_ IS
'Ȩ��ID';

COMMENT ON COLUMN OA_COM_RIGHT.COMBOOK_ID_ IS
'�ĵ�ID';

COMMENT ON COLUMN OA_COM_RIGHT.IDENTITY_TYPE_ IS
'��Ȩ����
USER=�û�
GROUP=�û���';

COMMENT ON COLUMN OA_COM_RIGHT.IDENTITY_ID_ IS
'�û�����ID';

COMMENT ON COLUMN OA_COM_RIGHT.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN OA_COM_RIGHT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_COM_RIGHT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_COM_RIGHT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_COM_RIGHT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_MEETING                                            */
/*==============================================================*/
CREATE TABLE OA_MEETING  (
   MEET_ID_             VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(255)                   NOT NULL,
   DESCP_               CLOB,
   START_               DATE                            NOT NULL,
   END_                 DATE                            NOT NULL,
   LOCATION_            VARCHAR2(255),
   ROOM_ID_             VARCHAR2(64),
   BUDGET_              NUMBER(18,4),
   HOST_UID_            VARCHAR2(64),
   RECORD_UID_          VARCHAR2(64),
   IMP_DEGREE_          VARCHAR2(20),
   STATUS_              VARCHAR2(20),
   SUMMARY_             CLOB,
   BPM_INST_ID_         VARCHAR2(64),
   FILE_IDS_            VARCHAR2(512),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_MEETING PRIMARY KEY (MEET_ID_)
);

COMMENT ON TABLE OA_MEETING IS
'��������';

COMMENT ON COLUMN OA_MEETING.IMP_DEGREE_ IS
'��Ҫ�̶�';

COMMENT ON COLUMN OA_MEETING.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN OA_MEETING.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_MEETING.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_MEETING.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_MEETING.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_MEET_ATT                                           */
/*==============================================================*/
CREATE TABLE OA_MEET_ATT  (
   ATT_ID_              VARCHAR2(64)                    NOT NULL,
   MEET_ID_             VARCHAR2(64)                    NOT NULL,
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   FULLNAME_            VARCHAR2(20),
   SUMMARY_             CLOB,
   STATUS_              VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_MEET_ATT PRIMARY KEY (ATT_ID_)
);

COMMENT ON TABLE OA_MEET_ATT IS
'���������';

COMMENT ON COLUMN OA_MEET_ATT.MEET_ID_ IS
'����ID';

COMMENT ON COLUMN OA_MEET_ATT.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN OA_MEET_ATT.FULLNAME_ IS
'����';

COMMENT ON COLUMN OA_MEET_ATT.SUMMARY_ IS
'�ܽ�';

COMMENT ON COLUMN OA_MEET_ATT.STATUS_ IS
'�ܽ�״̬
INIT
SUBMITED';

COMMENT ON COLUMN OA_MEET_ATT.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN OA_MEET_ATT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_MEET_ATT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_MEET_ATT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_MEET_ATT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_MEET_ROOM                                          */
/*==============================================================*/
CREATE TABLE OA_MEET_ROOM  (
   ROOM_ID_             VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(100)                   NOT NULL,
   LOCATION_            VARCHAR2(255),
   DESCP_               VARCHAR2(512),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_MEET_ROOM PRIMARY KEY (ROOM_ID_)
);

COMMENT ON TABLE OA_MEET_ROOM IS
'������';

COMMENT ON COLUMN OA_MEET_ROOM.NAME_ IS
'����������';

COMMENT ON COLUMN OA_MEET_ROOM.LOCATION_ IS
'��ַ';

COMMENT ON COLUMN OA_MEET_ROOM.DESCP_ IS
'����';

COMMENT ON COLUMN OA_MEET_ROOM.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN OA_MEET_ROOM.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_MEET_ROOM.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_MEET_ROOM.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_MEET_ROOM.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_PLAN_TASK                                          */
/*==============================================================*/
CREATE TABLE OA_PLAN_TASK  (
   PLAN_ID_             VARCHAR2(64)                    NOT NULL,
   PROJECT_ID_          VARCHAR2(64),
   REQ_ID_              VARCHAR2(64),
   VERSION_             VARCHAR2(50),
   SUBJECT_             VARCHAR2(128)                   NOT NULL,
   CONTENT_             CLOB,
   PSTART_TIME_         DATE                            NOT NULL,
   PEND_TIME_           DATE,
   START_TIME_          DATE,
   END_TIME_            DATE,
   STATUS_              VARCHAR2(20),
   LAST_                INTEGER,
   ASSIGN_ID_           VARCHAR2(64),
   OWNER_ID_            VARCHAR2(64),
   EXE_ID_              VARCHAR2(64),
   BPM_DEF_ID_          VARCHAR2(64),
   BPM_INST_ID_         VARCHAR2(64),
   BPM_TASK_ID_         VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_PLAN_TASK PRIMARY KEY (PLAN_ID_)
);

COMMENT ON TABLE OA_PLAN_TASK IS
'�����ƻ�����';

COMMENT ON COLUMN OA_PLAN_TASK.PROJECT_ID_ IS
'��Ŀ���ƷID';

COMMENT ON COLUMN OA_PLAN_TASK.REQ_ID_ IS
'����ID';

COMMENT ON COLUMN OA_PLAN_TASK.VERSION_ IS
'�汾��';

COMMENT ON COLUMN OA_PLAN_TASK.SUBJECT_ IS
'�ƻ�����';

COMMENT ON COLUMN OA_PLAN_TASK.CONTENT_ IS
'�ƻ�����';

COMMENT ON COLUMN OA_PLAN_TASK.PSTART_TIME_ IS
'�ƻ���ʼʱ��';

COMMENT ON COLUMN OA_PLAN_TASK.PEND_TIME_ IS
'�ƻ�����ʱ��';

COMMENT ON COLUMN OA_PLAN_TASK.START_TIME_ IS
'ʵ�ʿ�ʼʱ��';

COMMENT ON COLUMN OA_PLAN_TASK.END_TIME_ IS
'ʵ�ʽ���ʱ��';

COMMENT ON COLUMN OA_PLAN_TASK.STATUS_ IS
'״̬
δ��ʼ
ִ����
�ӳ�
��ͣ
��ֹ
���';

COMMENT ON COLUMN OA_PLAN_TASK.LAST_ IS
'��ʱ(�֣�';

COMMENT ON COLUMN OA_PLAN_TASK.ASSIGN_ID_ IS
'������';

COMMENT ON COLUMN OA_PLAN_TASK.OWNER_ID_ IS
'������';

COMMENT ON COLUMN OA_PLAN_TASK.EXE_ID_ IS
'ִ����';

COMMENT ON COLUMN OA_PLAN_TASK.BPM_DEF_ID_ IS
'���̶���ID';

COMMENT ON COLUMN OA_PLAN_TASK.BPM_INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN OA_PLAN_TASK.BPM_TASK_ID_ IS
'��������ID';

COMMENT ON COLUMN OA_PLAN_TASK.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN OA_PLAN_TASK.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PLAN_TASK.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PLAN_TASK.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PLAN_TASK.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_PRODUCT_DEF                                        */
/*==============================================================*/
CREATE TABLE OA_PRODUCT_DEF  (
   PROD_DEF_ID_         VARCHAR2(64)                    NOT NULL,
   TREE_ID_             VARCHAR2(64),
   NAME_                VARCHAR2(64),
   DESC_                VARCHAR2(256),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_OA_PRODUCT_DEF PRIMARY KEY (PROD_DEF_ID_)
);

COMMENT ON TABLE OA_PRODUCT_DEF IS
'��Ʒ���ඨ��';

COMMENT ON COLUMN OA_PRODUCT_DEF.PROD_DEF_ID_ IS
'��������ID';

COMMENT ON COLUMN OA_PRODUCT_DEF.TREE_ID_ IS
'����Id';

COMMENT ON COLUMN OA_PRODUCT_DEF.NAME_ IS
'����';

COMMENT ON COLUMN OA_PRODUCT_DEF.DESC_ IS
'����';

COMMENT ON COLUMN OA_PRODUCT_DEF.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PRODUCT_DEF.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PRODUCT_DEF.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PRODUCT_DEF.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PRODUCT_DEF.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: OA_PRODUCT_DEF_PARA                                   */
/*==============================================================*/
CREATE TABLE OA_PRODUCT_DEF_PARA  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   KEY_ID_              VARCHAR2(64),
   VALUE_ID_            VARCHAR2(64),
   PROD_DEF_ID_         VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_OA_PRODUCT_DEF_PARA PRIMARY KEY (ID_)
);

COMMENT ON TABLE OA_PRODUCT_DEF_PARA IS
'��Ʒ���������';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA.ID_ IS
'����';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA.KEY_ID_ IS
'����KEY����';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA.VALUE_ID_ IS
'����VALUE����';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA.PROD_DEF_ID_ IS
'��������ID';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: OA_PRODUCT_DEF_PARA_KEY                               */
/*==============================================================*/
CREATE TABLE OA_PRODUCT_DEF_PARA_KEY  (
   KEY_ID_              VARCHAR2(64)                    NOT NULL,
   TREE_ID_             VARCHAR2(64),
   NAME_                VARCHAR2(64),
   CONTROL_TYPE_        VARCHAR2(64),
   DATA_TYPE_           VARCHAR2(20),
   IS_UNIQUE_           SMALLINT,
   DESC_                VARCHAR2(256),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_OA_PRODUCT_DEF_PARA_KEY PRIMARY KEY (KEY_ID_)
);

COMMENT ON TABLE OA_PRODUCT_DEF_PARA_KEY IS
'��Ʒ�������KEY(��Ʒ����)';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_KEY.KEY_ID_ IS
'����KEY����';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_KEY.TREE_ID_ IS
'����Id';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_KEY.NAME_ IS
'����';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_KEY.CONTROL_TYPE_ IS
'����(radio-list checkbox-list textbox number date textarea)';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_KEY.DATA_TYPE_ IS
'��������(string number date ���ı�)';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_KEY.IS_UNIQUE_ IS
'�Ƿ�Ψһ����';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_KEY.DESC_ IS
'����';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_KEY.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_KEY.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_KEY.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_KEY.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_KEY.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: OA_PRODUCT_DEF_PARA_VALUE                             */
/*==============================================================*/
CREATE TABLE OA_PRODUCT_DEF_PARA_VALUE  (
   VALUE_ID_            VARCHAR2(64)                    NOT NULL,
   KEY_ID_              VARCHAR2(64),
   TREE_ID_             VARCHAR2(64),
   NAME_                VARCHAR2(64),
   NUMBER_              BINARY_DOUBLE,
   STRING_              VARCHAR2(20),
   TEXT_                VARCHAR2(4000),
   DATETIME__           DATE,
   DESC_                VARCHAR2(256),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_OA_PRODUCT_DEF_PARA_VALUE PRIMARY KEY (VALUE_ID_)
);

COMMENT ON TABLE OA_PRODUCT_DEF_PARA_VALUE IS
'��Ʒ�������VALUE(��Ʒ����)';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.VALUE_ID_ IS
'����VALUE����';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.KEY_ID_ IS
'����KEY����';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.TREE_ID_ IS
'����Id';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.NAME_ IS
'����';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.NUMBER_ IS
'��������';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.STRING_ IS
'�ַ�������';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.TEXT_ IS
'�ı�����';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.DATETIME__ IS
'ʱ������';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.DESC_ IS
'����';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PRODUCT_DEF_PARA_VALUE.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: OA_PROJECT                                            */
/*==============================================================*/
CREATE TABLE OA_PROJECT  (
   PROJECT_ID_          VARCHAR2(64)                    NOT NULL,
   "TREE_ID_"           VARCHAR2(64),
   PRO_NO_              VARCHAR2(50)                    NOT NULL,
   TAG_                 VARCHAR2(50),
   NAME_                VARCHAR2(100)                   NOT NULL,
   DESCP_               CLOB,
   REPOR_ID_            VARCHAR2(64)                    NOT NULL,
   COSTS_               NUMBER(16,4),
   START_TIME_          DATE,
   END_TIME_            DATE,
   STATUS_              VARCHAR2(20),
   VERSION_             VARCHAR2(50),
   TYPE_                VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_PROJECT PRIMARY KEY (PROJECT_ID_)
);

COMMENT ON TABLE OA_PROJECT IS
'��Ŀ���Ʒ';

COMMENT ON COLUMN OA_PROJECT."TREE_ID_" IS
'����Id';

COMMENT ON COLUMN OA_PROJECT.PRO_NO_ IS
'���';

COMMENT ON COLUMN OA_PROJECT.TAG_ IS
'��ǩ����';

COMMENT ON COLUMN OA_PROJECT.NAME_ IS
'����';

COMMENT ON COLUMN OA_PROJECT.DESCP_ IS
'����';

COMMENT ON COLUMN OA_PROJECT.REPOR_ID_ IS
'������';

COMMENT ON COLUMN OA_PROJECT.COSTS_ IS
'Ԥ�Ʒ���';

COMMENT ON COLUMN OA_PROJECT.START_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PROJECT.END_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PROJECT.STATUS_ IS
'״̬
δ��ʼ=UNSTART
��ͣ��=SUSPEND
���ӳ�=DELAYED
��ȡ��=CANCELED
������=UNDERWAY
�����=FINISHED';

COMMENT ON COLUMN OA_PROJECT.VERSION_ IS
'��ǰ�汾';

COMMENT ON COLUMN OA_PROJECT.TYPE_ IS
'����
PROJECT=��Ŀ
PRODUCT=��Ʒ';

COMMENT ON COLUMN OA_PROJECT.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN OA_PROJECT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PROJECT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PROJECT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PROJECT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_PRO_ATTEND                                         */
/*==============================================================*/
CREATE TABLE OA_PRO_ATTEND  (
   ATT_ID_              VARCHAR2(64)                    NOT NULL,
   PROJECT_ID_          VARCHAR2(64),
   USER_ID_             VARCHAR2(64),
   GROUP_ID_            VARCHAR2(64),
   PART_TYPE_           VARCHAR2(20)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_PRO_ATTEND PRIMARY KEY (ATT_ID_)
);

COMMENT ON TABLE OA_PRO_ATTEND IS
'��Ŀ���Ʒ�����ˡ������ˡ���ע��';

COMMENT ON COLUMN OA_PRO_ATTEND.USER_ID_ IS
'������ID';

COMMENT ON COLUMN OA_PRO_ATTEND.GROUP_ID_ IS
'������ID';

COMMENT ON COLUMN OA_PRO_ATTEND.PART_TYPE_ IS
'��������
Participate

      JOIN=����
      RESPONSE=����
      APPROVE=����
      PAY_ATT=��ע';

COMMENT ON COLUMN OA_PRO_ATTEND.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN OA_PRO_ATTEND.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PRO_ATTEND.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PRO_ATTEND.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PRO_ATTEND.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_PRO_VERS                                           */
/*==============================================================*/
CREATE TABLE OA_PRO_VERS  (
   VERSION_ID_          VARCHAR2(64)                    NOT NULL,
   PROJECT_ID_          VARCHAR2(64),
   START_TIME_          DATE,
   END_TIME_            DATE,
   STATUS_              VARCHAR2(20),
   VERSION_             VARCHAR2(50)                    NOT NULL,
   DESCP_               CLOB,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_PRO_VERS PRIMARY KEY (VERSION_ID_)
);

COMMENT ON TABLE OA_PRO_VERS IS
'��Ŀ���Ʒ�汾';

COMMENT ON COLUMN OA_PRO_VERS.PROJECT_ID_ IS
'��Ŀ���ƷID';

COMMENT ON COLUMN OA_PRO_VERS.START_TIME_ IS
'��ʼʱ��';

COMMENT ON COLUMN OA_PRO_VERS.END_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PRO_VERS.STATUS_ IS
'״̬
DRAFTED=�ݸ�
DEPLOYED=����
RUNNING=������
FINISHED=���
';

COMMENT ON COLUMN OA_PRO_VERS.VERSION_ IS
'�汾��';

COMMENT ON COLUMN OA_PRO_VERS.DESCP_ IS
'����';

COMMENT ON COLUMN OA_PRO_VERS.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN OA_PRO_VERS.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PRO_VERS.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_PRO_VERS.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_PRO_VERS.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_REQ_MGR                                            */
/*==============================================================*/
CREATE TABLE OA_REQ_MGR  (
   REQ_ID_              VARCHAR2(64)                    NOT NULL,
   PROJECT_ID_          VARCHAR2(64),
   REQ_CODE_            VARCHAR2(50)                    NOT NULL,
   SUBJECT_             VARCHAR2(128)                   NOT NULL,
   PATH_                VARCHAR2(512),
   DESCP_               CLOB,
   PARENT_ID_           VARCHAR2(64),
   STATUS_              VARCHAR2(50),
   LEVEL_               INTEGER,
   CHECKER_ID_          VARCHAR2(64),
   REP_ID_              VARCHAR2(64),
   EXE_ID_              VARCHAR2(64),
   VERSION_             VARCHAR2(20)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_REQ_MGR PRIMARY KEY (REQ_ID_)
);

COMMENT ON TABLE OA_REQ_MGR IS
'��Ʒ����Ŀ����';

COMMENT ON COLUMN OA_REQ_MGR.REQ_CODE_ IS
'�������';

COMMENT ON COLUMN OA_REQ_MGR.SUBJECT_ IS
'����';

COMMENT ON COLUMN OA_REQ_MGR.DESCP_ IS
'����';

COMMENT ON COLUMN OA_REQ_MGR.PARENT_ID_ IS
'������ID';

COMMENT ON COLUMN OA_REQ_MGR.STATUS_ IS
'״̬';

COMMENT ON COLUMN OA_REQ_MGR.LEVEL_ IS
'���';

COMMENT ON COLUMN OA_REQ_MGR.CHECKER_ID_ IS
'������';

COMMENT ON COLUMN OA_REQ_MGR.REP_ID_ IS
'������';

COMMENT ON COLUMN OA_REQ_MGR.EXE_ID_ IS
'ִ����';

COMMENT ON COLUMN OA_REQ_MGR.VERSION_ IS
'�汾��';

COMMENT ON COLUMN OA_REQ_MGR.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN OA_REQ_MGR.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_REQ_MGR.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_REQ_MGR.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_REQ_MGR.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_WORK_ATT                                           */
/*==============================================================*/
CREATE TABLE OA_WORK_ATT  (
   ATT_ID_              VARCHAR2(64)                    NOT NULL,
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   ATT_TIME_            DATE,
   NOTICE_TYPE_         VARCHAR2(50)                    NOT NULL,
   TYPE_                VARCHAR2(50)                    NOT NULL,
   TYPE_PK_             VARCHAR2(64)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_WORK_ATT PRIMARY KEY (ATT_ID_)
);

COMMENT ON TABLE OA_WORK_ATT IS
'������̬��ע';

COMMENT ON COLUMN OA_WORK_ATT.USER_ID_ IS
'��ע��ID';

COMMENT ON COLUMN OA_WORK_ATT.ATT_TIME_ IS
'��עʱ��';

COMMENT ON COLUMN OA_WORK_ATT.NOTICE_TYPE_ IS
'֪ͨ��ʽ
Mail,ShortMsg,WeiXin';

COMMENT ON COLUMN OA_WORK_ATT.TYPE_ IS
'��ע����
��Ŀ=PROJECT
�����ƻ�=PLAN
����=REQ';

COMMENT ON COLUMN OA_WORK_ATT.TYPE_PK_ IS
'��������ID
����������Ϊ��������ʱ������������ID';

COMMENT ON COLUMN OA_WORK_ATT.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN OA_WORK_ATT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_WORK_ATT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_WORK_ATT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_WORK_ATT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_WORK_LOG                                           */
/*==============================================================*/
CREATE TABLE OA_WORK_LOG  (
   LOG_ID_              VARCHAR2(64)                    NOT NULL,
   PLAN_ID_             VARCHAR2(64),
   CONTENT_             VARCHAR2(1024)                  NOT NULL,
   START_TIME_          DATE                            NOT NULL,
   END_TIME_            DATE                            NOT NULL,
   STATUS_              VARCHAR2(20),
   LAST_                INTEGER,
   CHECKER_             VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_WORK_LOG PRIMARY KEY (LOG_ID_)
);

COMMENT ON TABLE OA_WORK_LOG IS
'������־';

COMMENT ON COLUMN OA_WORK_LOG.PLAN_ID_ IS
'�ƻ�����ID';

COMMENT ON COLUMN OA_WORK_LOG.CONTENT_ IS
'����';

COMMENT ON COLUMN OA_WORK_LOG.START_TIME_ IS
'��ʼʱ��';

COMMENT ON COLUMN OA_WORK_LOG.END_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_WORK_LOG.STATUS_ IS
'״̬';

COMMENT ON COLUMN OA_WORK_LOG.LAST_ IS
'��ʱ';

COMMENT ON COLUMN OA_WORK_LOG.CHECKER_ IS
'������';

COMMENT ON COLUMN OA_WORK_LOG.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN OA_WORK_LOG.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_WORK_LOG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_WORK_LOG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_WORK_LOG.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OA_WORK_MAT                                           */
/*==============================================================*/
CREATE TABLE OA_WORK_MAT  (
   ACTION_ID_           VARCHAR2(64)                    NOT NULL,
   CONTENT_             VARCHAR2(512)                   NOT NULL,
   TYPE_                VARCHAR2(50)                    NOT NULL,
   TYPE_PK_             VARCHAR2(64)                    NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OA_WORK_MAT PRIMARY KEY (ACTION_ID_)
);

COMMENT ON TABLE OA_WORK_MAT IS
'������̬';

COMMENT ON COLUMN OA_WORK_MAT.CONTENT_ IS
'��������';

COMMENT ON COLUMN OA_WORK_MAT.TYPE_ IS
'����
��Ŀ=PROJECT
�����ƻ�=PLAN
����=REQ';

COMMENT ON COLUMN OA_WORK_MAT.TYPE_PK_ IS
'��������ID
����������Ϊ��������ʱ������������ID';

COMMENT ON COLUMN OA_WORK_MAT.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN OA_WORK_MAT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_WORK_MAT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OA_WORK_MAT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OA_WORK_MAT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OD_DOCUMENT                                           */
/*==============================================================*/
CREATE TABLE OD_DOCUMENT  (
   DOC_ID_              VARCHAR2(64)                    NOT NULL,
   TREE_ID_             VARCHAR2(64),
   ISSUE_NO_            VARCHAR2(100)                   NOT NULL,
   ISSUE_DEP_ID_        VARCHAR2(64),
   IS_JOIN_ISSUE_       VARCHAR2(20),
   JOIN_DEP_IDS_        VARCHAR2(512),
   MAIN_DEP_ID_         VARCHAR2(64),
   CC_DEP_ID_           VARCHAR2(64),
   TAKE_DEP_ID_         VARCHAR2(64),
   ASS_DEP_ID_          VARCHAR2(64),
   SUBJECT_             VARCHAR2(200)                   NOT NULL,
   PRIVACY_LEVEL_       VARCHAR2(50),
   SECRECY_TERM_        INTEGER,
   PRINT_COUNT_         INTEGER,
   KEYWORDS_            VARCHAR2(256),
   URGENT_LEVEL_        VARCHAR2(50),
   SUMMARY_             VARCHAR2(1024),
   BODY_FILE_PATH_      VARCHAR2(255),
   FILE_IDS_            VARCHAR2(512),
   FILE_NAMES_          VARCHAR2(512),
   ISSUE_USR_ID_        VARCHAR2(64),
   ARCH_TYPE_           SMALLINT                        NOT NULL,
   ORG_ARCH_ID_         VARCHAR2(64),
   SELF_NO_             VARCHAR2(100),
   STATUS_              VARCHAR2(256)                   NOT NULL,
   BPM_INST_ID_         VARCHAR2(64),
   BPM_SOL_ID_          VARCHAR2(64),
   DOC_TYPE_            VARCHAR2(20),
   ISSUED_DATE_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OD_DOCUMENT PRIMARY KEY (DOC_ID_)
);

COMMENT ON COLUMN OD_DOCUMENT.TREE_ID_ IS
'���ķ���ID';

COMMENT ON COLUMN OD_DOCUMENT.ISSUE_NO_ IS
'�����ֺ�';

COMMENT ON COLUMN OD_DOCUMENT.ISSUE_DEP_ID_ IS
'���Ļ��ػ���';

COMMENT ON COLUMN OD_DOCUMENT.IS_JOIN_ISSUE_ IS
'�Ƿ����Ϸ��ļ�';

COMMENT ON COLUMN OD_DOCUMENT.JOIN_DEP_IDS_ IS
'���Ϸ��ĵ�λ����';

COMMENT ON COLUMN OD_DOCUMENT.MAIN_DEP_ID_ IS
'���͵�λ';

COMMENT ON COLUMN OD_DOCUMENT.CC_DEP_ID_ IS
'���͵�λ����';

COMMENT ON COLUMN OD_DOCUMENT.TAKE_DEP_ID_ IS
'�а첿��ID';

COMMENT ON COLUMN OD_DOCUMENT.ASS_DEP_ID_ IS
'Э�첿��ID';

COMMENT ON COLUMN OD_DOCUMENT.SUBJECT_ IS
'�ļ�����';

COMMENT ON COLUMN OD_DOCUMENT.PRIVACY_LEVEL_ IS
'���ܵȼ�
��ͨ=COMMON
����=SECURITY
����=MIDDLE-SECURITY
����=TOP SECURITY
';

COMMENT ON COLUMN OD_DOCUMENT.SECRECY_TERM_ IS
'��������(��)
';

COMMENT ON COLUMN OD_DOCUMENT.PRINT_COUNT_ IS
'��ӡ����';

COMMENT ON COLUMN OD_DOCUMENT.KEYWORDS_ IS
'�����';

COMMENT ON COLUMN OD_DOCUMENT.URGENT_LEVEL_ IS
'�����̶�
��ͨ=COMMON
����=URGENT
�ؼ�=URGENTEST
����=MORE_URGENT';

COMMENT ON COLUMN OD_DOCUMENT.SUMMARY_ IS
'���ݼ��';

COMMENT ON COLUMN OD_DOCUMENT.BODY_FILE_PATH_ IS
'����·��';

COMMENT ON COLUMN OD_DOCUMENT.FILE_IDS_ IS
'����IDs';

COMMENT ON COLUMN OD_DOCUMENT.FILE_NAMES_ IS
'��������';

COMMENT ON COLUMN OD_DOCUMENT.ISSUE_USR_ID_ IS
'������ID';

COMMENT ON COLUMN OD_DOCUMENT.ARCH_TYPE_ IS
'0=����
1=����';

COMMENT ON COLUMN OD_DOCUMENT.ORG_ARCH_ID_ IS
'��������ʱʹ�ã�ָ��ԭ����ID';

COMMENT ON COLUMN OD_DOCUMENT.SELF_NO_ IS
'��������ʱ�����Ŷ�����Ĺ����Ա��';

COMMENT ON COLUMN OD_DOCUMENT.STATUS_ IS
'����״̬
0=��塢�޸�״̬
1=����״̬
2=�鵵״̬';

COMMENT ON COLUMN OD_DOCUMENT.BPM_INST_ID_ IS
'��������id
ͨ����id���Բ鿴�ù��ĵ�������ʷ';

COMMENT ON COLUMN OD_DOCUMENT.BPM_SOL_ID_ IS
'���̷���ID';

COMMENT ON COLUMN OD_DOCUMENT.DOC_TYPE_ IS
'���ĵ�����
������
   ����
   ��ʾ
   �鰸
   ǩ��
   
������
   ����
   ����
   ����
   ͨ��
   ֪ͨ
   ͨ��
   ����
   �����Ҫ
����
����
ƽ����
 ��';

COMMENT ON COLUMN OD_DOCUMENT.ISSUED_DATE_ IS
'��������';

COMMENT ON COLUMN OD_DOCUMENT.TENANT_ID_ IS
'���� - ����������SAAS ID';

COMMENT ON COLUMN OD_DOCUMENT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OD_DOCUMENT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OD_DOCUMENT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OD_DOCUMENT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OD_DOC_FLOW                                           */
/*==============================================================*/
CREATE TABLE OD_DOC_FLOW  (
   SCHEME_ID_           VARCHAR2(64)                    NOT NULL,
   DEP_ID_              VARCHAR2(64)                    NOT NULL,
   SEND_SOL_ID_         VARCHAR2(64),
   SEND_SOL_NAME_       VARCHAR2(128),
   REC_SOL_ID_          VARCHAR2(64),
   REC_SOL_NAME_        VARCHAR2(128),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OD_DOC_FLOW PRIMARY KEY (SCHEME_ID_)
);

COMMENT ON TABLE OD_DOC_FLOW IS
'�շ������̷���';

COMMENT ON COLUMN OD_DOC_FLOW.SCHEME_ID_ IS
'����ID';

COMMENT ON COLUMN OD_DOC_FLOW.DEP_ID_ IS
'����ID';

COMMENT ON COLUMN OD_DOC_FLOW.SEND_SOL_ID_ IS
'�������̷���ID';

COMMENT ON COLUMN OD_DOC_FLOW.SEND_SOL_NAME_ IS
'�������̷�������';

COMMENT ON COLUMN OD_DOC_FLOW.REC_SOL_ID_ IS
'�������̷���ID';

COMMENT ON COLUMN OD_DOC_FLOW.REC_SOL_NAME_ IS
'�������̷�������';

COMMENT ON COLUMN OD_DOC_FLOW.TENANT_ID_ IS
'���� - ����������SAAS ID';

COMMENT ON COLUMN OD_DOC_FLOW.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OD_DOC_FLOW.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OD_DOC_FLOW.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OD_DOC_FLOW.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OD_DOC_REC                                            */
/*==============================================================*/
CREATE TABLE OD_DOC_REC  (
   REC_ID_              VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64)                    NOT NULL,
   REC_DEP_ID_          VARCHAR2(64)                    NOT NULL,
   REC_DTYPE_           VARCHAR2(20),
   IS_READ_             VARCHAR2(20),
   READ_TIME_           DATE,
   FEED_BACK_           VARCHAR2(200),
   SIGN_USR_ID_         VARCHAR2(64),
   SIGN_STATUS_         VARCHAR2(20),
   SIGN_TIME_           DATE,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OD_DOC_REC PRIMARY KEY (REC_ID_)
);

COMMENT ON COLUMN OD_DOC_REC.REC_ID_ IS
'����ID';

COMMENT ON COLUMN OD_DOC_REC.DOC_ID_ IS
'�շ���ID';

COMMENT ON COLUMN OD_DOC_REC.REC_DEP_ID_ IS
'���Ĳ���ID';

COMMENT ON COLUMN OD_DOC_REC.REC_DTYPE_ IS
'���ĵ�λ����
���յ�λ
���͵�λ
';

COMMENT ON COLUMN OD_DOC_REC.IS_READ_ IS
'�Ƿ��Ķ�';

COMMENT ON COLUMN OD_DOC_REC.READ_TIME_ IS
'�Ķ�ʱ��';

COMMENT ON COLUMN OD_DOC_REC.FEED_BACK_ IS
'�������';

COMMENT ON COLUMN OD_DOC_REC.SIGN_USR_ID_ IS
'ǩ����ID';

COMMENT ON COLUMN OD_DOC_REC.SIGN_STATUS_ IS
'ǩ��״̬';

COMMENT ON COLUMN OD_DOC_REC.SIGN_TIME_ IS
'ǩ��ʱ��';

COMMENT ON COLUMN OD_DOC_REC.TENANT_ID_ IS
'���� - ����������SAAS ID';

COMMENT ON COLUMN OD_DOC_REC.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OD_DOC_REC.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OD_DOC_REC.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OD_DOC_REC.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OD_DOC_REMIND_                                        */
/*==============================================================*/
CREATE TABLE OD_DOC_REMIND_  (
   REMIND_ID_           VARCHAR2(64)                    NOT NULL,
   DOC_ID_              VARCHAR2(64),
   CONTENT_             VARCHAR2(1024),
   MIND_USR_ID_         VARCHAR2(64),
   TAKE_USR_ID_         VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OD_DOC_REMIND_ PRIMARY KEY (REMIND_ID_)
);

COMMENT ON TABLE OD_DOC_REMIND_ IS
'�շ��İ���߰�';

COMMENT ON COLUMN OD_DOC_REMIND_.DOC_ID_ IS
'�շ���ID';

COMMENT ON COLUMN OD_DOC_REMIND_.CONTENT_ IS
'�߰�����';

COMMENT ON COLUMN OD_DOC_REMIND_.MIND_USR_ID_ IS
'�߰���';

COMMENT ON COLUMN OD_DOC_REMIND_.TAKE_USR_ID_ IS
'�а���';

COMMENT ON COLUMN OD_DOC_REMIND_.TENANT_ID_ IS
'���� - ����������SAAS ID';

COMMENT ON COLUMN OD_DOC_REMIND_.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OD_DOC_REMIND_.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OD_DOC_REMIND_.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OD_DOC_REMIND_.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OD_DOC_TEMPLATE                                       */
/*==============================================================*/
CREATE TABLE OD_DOC_TEMPLATE  (
   TEMP_ID_             VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(20)                    NOT NULL,
   DESCP_               VARCHAR2(512),
   STATUS_              VARCHAR2(20)                    NOT NULL,
   TREE_ID_             VARCHAR2(64),
   FILE_ID_             VARCHAR2(64),
   FILE_PATH_           VARCHAR2(255),
   TEMP_TYPE_           VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OD_DOC_TEMPLATE PRIMARY KEY (TEMP_ID_)
);

COMMENT ON TABLE OD_DOC_TEMPLATE IS
'����ģ��';

COMMENT ON COLUMN OD_DOC_TEMPLATE.NAME_ IS
'ģ������';

COMMENT ON COLUMN OD_DOC_TEMPLATE.DESCP_ IS
'ģ������';

COMMENT ON COLUMN OD_DOC_TEMPLATE.STATUS_ IS
'ģ��״̬
����=ENABLED
����=DISABLED';

COMMENT ON COLUMN OD_DOC_TEMPLATE.TREE_ID_ IS
'ģ�����ID';

COMMENT ON COLUMN OD_DOC_TEMPLATE.FILE_ID_ IS
'�ļ�ID';

COMMENT ON COLUMN OD_DOC_TEMPLATE.FILE_PATH_ IS
'ģ���ļ�·��';

COMMENT ON COLUMN OD_DOC_TEMPLATE.TEMP_TYPE_ IS
'�׺�ģ��
���ķ���ģ��
����ģ��';

COMMENT ON COLUMN OD_DOC_TEMPLATE.TENANT_ID_ IS
'���� - ����������SAAS ID';

COMMENT ON COLUMN OD_DOC_TEMPLATE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OD_DOC_TEMPLATE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OD_DOC_TEMPLATE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OD_DOC_TEMPLATE.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OS_DIMENSION                                          */
/*==============================================================*/
CREATE TABLE OS_DIMENSION  (
   DIM_ID_              VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(40)                    NOT NULL,
   DIM_KEY_             VARCHAR2(64)                    NOT NULL,
   IS_COMPOSE_          VARCHAR2(10)                    NOT NULL,
   IS_SYSTEM_           VARCHAR2(10)                    NOT NULL,
   STATUS_              VARCHAR2(40)                    NOT NULL,
   SN_                  INTEGER                         NOT NULL,
   SHOW_TYPE_           VARCHAR2(40)                    NOT NULL,
   IS_GRANT_            VARCHAR2(10),
   DESC_                VARCHAR2(255),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OS_DIMENSION PRIMARY KEY (DIM_ID_)
);

COMMENT ON TABLE OS_DIMENSION IS
'��֯ά��';

COMMENT ON COLUMN OS_DIMENSION.DIM_ID_ IS
'ά��ID';

COMMENT ON COLUMN OS_DIMENSION.NAME_ IS
'ά������';

COMMENT ON COLUMN OS_DIMENSION.DIM_KEY_ IS
'ά��ҵ������';

COMMENT ON COLUMN OS_DIMENSION.IS_COMPOSE_ IS
'�Ƿ����ά��';

COMMENT ON COLUMN OS_DIMENSION.IS_SYSTEM_ IS
'�Ƿ�ϵͳԤ��ά��';

COMMENT ON COLUMN OS_DIMENSION.STATUS_ IS
'״̬
actived �Ѽ��locked ���������ã���deleted ��ɾ��';

COMMENT ON COLUMN OS_DIMENSION.SN_ IS
'�����';

COMMENT ON COLUMN OS_DIMENSION.SHOW_TYPE_ IS
'����չʾ����
tree=�������ݡ�flat=ƽ������';

COMMENT ON COLUMN OS_DIMENSION.IS_GRANT_ IS
'�Ƿ������Ȩ';

COMMENT ON COLUMN OS_DIMENSION.DESC_ IS
'����';

COMMENT ON COLUMN OS_DIMENSION.TENANT_ID_ IS
'����ID';

COMMENT ON COLUMN OS_DIMENSION.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OS_DIMENSION.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OS_DIMENSION.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OS_DIMENSION.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OS_GROUP                                              */
/*==============================================================*/
CREATE TABLE OS_GROUP  (
   GROUP_ID_            VARCHAR2(64)                    NOT NULL,
   DIM_ID_              VARCHAR2(64),
   NAME_                VARCHAR2(64)                    NOT NULL,
   KEY_                 VARCHAR2(64)                    NOT NULL,
   RANK_LEVEL_          INTEGER,
   STATUS_              VARCHAR2(40)                    NOT NULL,
   DESCP_               VARCHAR2(255),
   SN_                  INTEGER                         NOT NULL,
   PARENT_ID_           VARCHAR2(64),
   DEPTH_               INTEGER,
   PATH_                VARCHAR2(1024),
   CHILDS_              INTEGER,
   FORM_                VARCHAR2(20),
   IS_DEFAULT_          VARCHAR2(40),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OS_GROUP PRIMARY KEY (GROUP_ID_)
);

COMMENT ON TABLE OS_GROUP IS
'ϵͳ�û���';

COMMENT ON COLUMN OS_GROUP.GROUP_ID_ IS
'�û���ID';

COMMENT ON COLUMN OS_GROUP.DIM_ID_ IS
'ά��ID';

COMMENT ON COLUMN OS_GROUP.NAME_ IS
'�û�������';

COMMENT ON COLUMN OS_GROUP.KEY_ IS
'�û���ҵ������';

COMMENT ON COLUMN OS_GROUP.RANK_LEVEL_ IS
'�����û���ȼ�ֵ';

COMMENT ON COLUMN OS_GROUP.STATUS_ IS
'״̬
inactive δ���actived �Ѽ��locked ������deleted ��ɾ��';

COMMENT ON COLUMN OS_GROUP.DESCP_ IS
'����';

COMMENT ON COLUMN OS_GROUP.SN_ IS
'�����';

COMMENT ON COLUMN OS_GROUP.PARENT_ID_ IS
'���û���ID';

COMMENT ON COLUMN OS_GROUP.DEPTH_ IS
'���';

COMMENT ON COLUMN OS_GROUP.PATH_ IS
'·��';

COMMENT ON COLUMN OS_GROUP.CHILDS_ IS
'�¼�����';

COMMENT ON COLUMN OS_GROUP.FORM_ IS
'��Դ
sysem,ϵͳ���,import����,grade,�ּ���ӵ�';

COMMENT ON COLUMN OS_GROUP.IS_DEFAULT_ IS
'�Ƿ�Ĭ�ϣ�����ϵͳ�Դ���������ɾ��';

COMMENT ON COLUMN OS_GROUP.TENANT_ID_ IS
'���� - ����������SAAS ID';

COMMENT ON COLUMN OS_GROUP.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OS_GROUP.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OS_GROUP.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OS_GROUP.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OS_GROUP_MENU                                         */
/*==============================================================*/
CREATE TABLE OS_GROUP_MENU  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   "MENU_ID_"           VARCHAR2(64)                    NOT NULL,
   GROUP_ID_            VARCHAR2(64)                    NOT NULL,
   SYS_ID_              VARCHAR2(64)                    NOT NULL,
   CONSTRAINT PK_OS_GROUP_MENU PRIMARY KEY (ID_)
);

COMMENT ON TABLE OS_GROUP_MENU IS
'�û����µ���Ȩ�˵�';

COMMENT ON COLUMN OS_GROUP_MENU."MENU_ID_" IS
'�˵�ID';

COMMENT ON COLUMN OS_GROUP_MENU.GROUP_ID_ IS
'�û���ID';

/*==============================================================*/
/* Table: OS_GROUP_SYS                                          */
/*==============================================================*/
CREATE TABLE OS_GROUP_SYS  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   GROUP_ID_            VARCHAR2(64)                    NOT NULL,
   SYS_ID_              VARCHAR2(64),
   CONSTRAINT PK_OS_GROUP_SYS PRIMARY KEY (ID_)
);

COMMENT ON COLUMN OS_GROUP_SYS.GROUP_ID_ IS
'�û���ID';

/*==============================================================*/
/* Table: OS_RANK_TYPE                                          */
/*==============================================================*/
CREATE TABLE OS_RANK_TYPE  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   DIM_ID_              VARCHAR2(64),
   NAME_                VARCHAR2(255)                   NOT NULL,
   KEY_                 VARCHAR2(64)                    NOT NULL,
   LEVEL_               INTEGER                         NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OS_RANK_TYPE PRIMARY KEY (ID_)
);

COMMENT ON TABLE OS_RANK_TYPE IS
'�û���ȼ����࣬������֯�ĵȼ����ඨ��
�缯�ţ��ֹ�˾�����ŵȼ���';

COMMENT ON COLUMN OS_RANK_TYPE.ID_ IS
'����';

COMMENT ON COLUMN OS_RANK_TYPE.DIM_ID_ IS
'ά��ID';

COMMENT ON COLUMN OS_RANK_TYPE.NAME_ IS
'����';

COMMENT ON COLUMN OS_RANK_TYPE.KEY_ IS
'����ҵ���';

COMMENT ON COLUMN OS_RANK_TYPE.LEVEL_ IS
'������ֵ';

COMMENT ON COLUMN OS_RANK_TYPE.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN OS_RANK_TYPE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OS_RANK_TYPE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OS_RANK_TYPE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OS_RANK_TYPE.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OS_REL_INST                                           */
/*==============================================================*/
CREATE TABLE OS_REL_INST  (
   INST_ID_             VARCHAR2(64)                    NOT NULL,
   REL_TYPE_ID_         VARCHAR2(64),
   REL_TYPE_KEY_        VARCHAR2(64),
   PARTY1_              VARCHAR2(64)                    NOT NULL,
   PARTY2_              VARCHAR2(64)                    NOT NULL,
   DIM1_                VARCHAR2(64),
   DIM2_                VARCHAR2(64),
   IS_MAIN_             VARCHAR2(20)                    NOT NULL,
   STATUS_              VARCHAR2(40)                    NOT NULL,
   ALIAS_               VARCHAR2(80),
   REL_TYPE_            VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_OS_REL_INST PRIMARY KEY (INST_ID_)
);

COMMENT ON TABLE OS_REL_INST IS
'��ϵʵ��';

COMMENT ON COLUMN OS_REL_INST.INST_ID_ IS
'�û����ϵID';

COMMENT ON COLUMN OS_REL_INST.REL_TYPE_ID_ IS
'��ϵ����ID';

COMMENT ON COLUMN OS_REL_INST.REL_TYPE_KEY_ IS
'��ϵ����KEY_
';

COMMENT ON COLUMN OS_REL_INST.PARTY1_ IS
'��ǰ��ID';

COMMENT ON COLUMN OS_REL_INST.PARTY2_ IS
'������ID';

COMMENT ON COLUMN OS_REL_INST.DIM1_ IS
'��ǰ��ά��ID';

COMMENT ON COLUMN OS_REL_INST.DIM2_ IS
'������ά��ID';

COMMENT ON COLUMN OS_REL_INST.IS_MAIN_ IS
'IS_MAIN_';

COMMENT ON COLUMN OS_REL_INST.STATUS_ IS
'״̬
ENABLED
DISABLED';

COMMENT ON COLUMN OS_REL_INST.ALIAS_ IS
'����';

COMMENT ON COLUMN OS_REL_INST.REL_TYPE_ IS
'��ϵ����';

COMMENT ON COLUMN OS_REL_INST.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OS_REL_INST.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OS_REL_INST.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OS_REL_INST.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OS_REL_INST.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: OS_REL_TYPE                                           */
/*==============================================================*/
CREATE TABLE OS_REL_TYPE  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(64)                    NOT NULL,
   KEY_                 VARCHAR2(64)                    NOT NULL,
   REL_TYPE_            VARCHAR2(40)                    NOT NULL,
   CONST_TYPE_          VARCHAR2(40)                    NOT NULL,
   PARTY1_              VARCHAR2(128)                   NOT NULL,
   PARTY2_              VARCHAR2(128)                   NOT NULL,
   DIM_ID1_             VARCHAR2(64),
   DIM_ID2_             VARCHAR2(64),
   STATUS_              VARCHAR2(40)                    NOT NULL,
   IS_SYSTEM_           VARCHAR2(10)                    NOT NULL,
   IS_DEFAULT_          VARCHAR2(10)                    NOT NULL,
   IS_TWO_WAY_          VARCHAR2(10)                    NOT NULL,
   MEMO_                VARCHAR2(255),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OS_REL_TYPE PRIMARY KEY (ID_)
);

COMMENT ON TABLE OS_REL_TYPE IS
'��ϵ���Ͷ���';

COMMENT ON COLUMN OS_REL_TYPE.ID_ IS
'��ϵ����ID';

COMMENT ON COLUMN OS_REL_TYPE.NAME_ IS
'��ϵ��';

COMMENT ON COLUMN OS_REL_TYPE.KEY_ IS
'��ϵҵ������';

COMMENT ON COLUMN OS_REL_TYPE.REL_TYPE_ IS
'��ϵ���͡��û���ϵ=USER-USER���û����ϵ=GROUP-GROUP���û������ϵ=USER-GROUP�������û���ϵ=GROUP-USER';

COMMENT ON COLUMN OS_REL_TYPE.CONST_TYPE_ IS
'��ϵԼ�����͡�1��1=one2one��1�Զ�=one2many�����1=many2one����Զ�=many2many';

COMMENT ON COLUMN OS_REL_TYPE.PARTY1_ IS
'��ϵ��ǰ������';

COMMENT ON COLUMN OS_REL_TYPE.PARTY2_ IS
'��ϵ����������';

COMMENT ON COLUMN OS_REL_TYPE.DIM_ID1_ IS
'��ǰ��ά��ID�������û����ϵ��';

COMMENT ON COLUMN OS_REL_TYPE.DIM_ID2_ IS
'������ά��ID���û���ϵ���Դ�ֵ��';

COMMENT ON COLUMN OS_REL_TYPE.STATUS_ IS
'״̬��actived �Ѽ��locked ������deleted ��ɾ��';

COMMENT ON COLUMN OS_REL_TYPE.IS_SYSTEM_ IS
'�Ƿ�ϵͳԤ��';

COMMENT ON COLUMN OS_REL_TYPE.IS_DEFAULT_ IS
'�Ƿ�Ĭ��';

COMMENT ON COLUMN OS_REL_TYPE.IS_TWO_WAY_ IS
'�Ƿ���˫��';

COMMENT ON COLUMN OS_REL_TYPE.MEMO_ IS
'��ϵ��ע';

COMMENT ON COLUMN OS_REL_TYPE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OS_REL_TYPE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OS_REL_TYPE.TENANT_ID_ IS
'���� - ����������SAAS ID';

COMMENT ON COLUMN OS_REL_TYPE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OS_REL_TYPE.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: OS_USER                                               */
/*==============================================================*/
CREATE TABLE OS_USER  (
   USER_ID_             VARCHAR2(64)                    NOT NULL,
   FULLNAME_            VARCHAR2(64)                    NOT NULL,
   USER_NO_             VARCHAR2(64)                    NOT NULL,
   ENTRY_TIME_          DATE,
   QUIT_TIME_           DATE,
   STATUS_              VARCHAR2(20)                    NOT NULL,
   FROM_                VARCHAR2(20),
   BIRTHDAY_            DATE,
   SEX_                 VARCHAR2(10),
   MOBILE_              VARCHAR2(20),
   EMAIL_               VARCHAR2(100),
   ADDRESS_             VARCHAR2(255),
   URGENT_              VARCHAR2(64),
   URGENT_MOBILE_       VARCHAR2(20),
   QQ_                  VARCHAR2(20),
   PHOTO_               VARCHAR2(255),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_OS_USER PRIMARY KEY (USER_ID_)
);

COMMENT ON TABLE OS_USER IS
'�û���Ϣ��';

COMMENT ON COLUMN OS_USER.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN OS_USER.FULLNAME_ IS
'����';

COMMENT ON COLUMN OS_USER.ENTRY_TIME_ IS
'��ְʱ��';

COMMENT ON COLUMN OS_USER.QUIT_TIME_ IS
'��ְʱ��';

COMMENT ON COLUMN OS_USER.STATUS_ IS
'״̬

��ְ=ON_JOB
��ְ=OUT_JOB
';

COMMENT ON COLUMN OS_USER.FROM_ IS
'��Դ
system,ϵͳ���,import,����,grade,�ּ���ӵ�';

COMMENT ON COLUMN OS_USER.BIRTHDAY_ IS
'��������';

COMMENT ON COLUMN OS_USER.SEX_ IS
'�ձ�';

COMMENT ON COLUMN OS_USER.MOBILE_ IS
'�ֻ�';

COMMENT ON COLUMN OS_USER.EMAIL_ IS
'�ʼ�';

COMMENT ON COLUMN OS_USER.ADDRESS_ IS
'��ַ';

COMMENT ON COLUMN OS_USER.URGENT_ IS
'������ϵ��';

COMMENT ON COLUMN OS_USER.URGENT_MOBILE_ IS
'������ϵ���ֻ�';

COMMENT ON COLUMN OS_USER.QQ_ IS
'QQ��';

COMMENT ON COLUMN OS_USER.PHOTO_ IS
'��Ƭ';

COMMENT ON COLUMN OS_USER.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN OS_USER.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN OS_USER.TENANT_ID_ IS
'����ID';

COMMENT ON COLUMN OS_USER.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN OS_USER.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SMS_MSG_INFO                                          */
/*==============================================================*/
CREATE TABLE SMS_MSG_INFO  (
   SMS_ID_              VARCHAR2(64)                    NOT NULL,
   SEND_USER_           VARCHAR2(64),
   RECEIVE_USER_        VARCHAR2(64),
   MOBILE_              VARCHAR2(20),
   CONTENT_             CLOB,
   TENANT_ID_           VARCHAR2(64),
   STATUS_              SMALLINT,
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_SMS_MSG_INFO PRIMARY KEY (SMS_ID_)
);

COMMENT ON TABLE SMS_MSG_INFO IS
'������Ϣ��';

COMMENT ON COLUMN SMS_MSG_INFO.SMS_ID_ IS
'����';

COMMENT ON COLUMN SMS_MSG_INFO.RECEIVE_USER_ IS
'�û�ID';

COMMENT ON COLUMN SMS_MSG_INFO.MOBILE_ IS
'�ֻ�';

COMMENT ON COLUMN SMS_MSG_INFO.CONTENT_ IS
'����';

COMMENT ON COLUMN SMS_MSG_INFO.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN SMS_MSG_INFO.STATUS_ IS
'1����2δ����3���ͳɹ�4����ʧ��';

COMMENT ON COLUMN SMS_MSG_INFO.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SMS_MSG_INFO.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SMS_MSG_INFO.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SMS_MSG_INFO.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: SMS_MSG_SEND                                          */
/*==============================================================*/
CREATE TABLE SMS_MSG_SEND  (
   SEND_ID_             VARCHAR2(64)                    NOT NULL,
   GATEWAY_ID_          VARCHAR2(64),
   SEND_USER_           VARCHAR2(64),
   RECEIVE_USER_        VARCHAR2(64),
   MOBILE_              VARCHAR2(20),
   MSG_ID_              VARCHAR2(64),
   CONTENT_             CLOB,
   RECEIPT_ID_          VARCHAR2(512),
   STATUS_              SMALLINT,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_SMS_MSG_SEND PRIMARY KEY (SEND_ID_)
);

COMMENT ON TABLE SMS_MSG_SEND IS
'���ŷ��ͱ�';

COMMENT ON COLUMN SMS_MSG_SEND.SEND_ID_ IS
'����';

COMMENT ON COLUMN SMS_MSG_SEND.GATEWAY_ID_ IS
'����Ӧ��ID';

COMMENT ON COLUMN SMS_MSG_SEND.RECEIVE_USER_ IS
'�û�ID';

COMMENT ON COLUMN SMS_MSG_SEND.MOBILE_ IS
'�ֻ�';

COMMENT ON COLUMN SMS_MSG_SEND.CONTENT_ IS
'����';

COMMENT ON COLUMN SMS_MSG_SEND.STATUS_ IS
'1����2δ����3���ͳɹ�4����ʧ��';

COMMENT ON COLUMN SMS_MSG_SEND.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN SMS_MSG_SEND.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SMS_MSG_SEND.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SMS_MSG_SEND.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SMS_MSG_SEND.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: SYS_ACCOUNT                                           */
/*==============================================================*/
CREATE TABLE SYS_ACCOUNT  (
   ACCOUNT_ID_          VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(50)                    NOT NULL,
   PWD_                 VARCHAR2(64)                    NOT NULL,
   ENC_TYPE_            VARCHAR2(20),
   FULLNAME_            VARCHAR2(32)                    NOT NULL,
   USER_ID_             VARCHAR2(64),
   REMARK_              VARCHAR2(200),
   STATUS_              VARCHAR2(20)                    NOT NULL,
   CREAT_ORG_ID_        VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_ACCOUNT PRIMARY KEY (ACCOUNT_ID_)
);

COMMENT ON TABLE SYS_ACCOUNT IS
'��¼�˺�';

COMMENT ON COLUMN SYS_ACCOUNT.NAME_ IS
'�˺�����';

COMMENT ON COLUMN SYS_ACCOUNT.PWD_ IS
'����';

COMMENT ON COLUMN SYS_ACCOUNT.ENC_TYPE_ IS
'�����㷨
MD5
SHA-256
PLAINTEXT';

COMMENT ON COLUMN SYS_ACCOUNT.FULLNAME_ IS
'�û���';

COMMENT ON COLUMN SYS_ACCOUNT.USER_ID_ IS
'���û�ID';

COMMENT ON COLUMN SYS_ACCOUNT.REMARK_ IS
'��ע';

COMMENT ON COLUMN SYS_ACCOUNT.STATUS_ IS
'״̬
ENABLED=����
DISABLED=����
DELETED=ɾ��';

COMMENT ON COLUMN SYS_ACCOUNT.CREAT_ORG_ID_ IS
'��������֯ID';

COMMENT ON COLUMN SYS_ACCOUNT.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_ACCOUNT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_ACCOUNT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_ACCOUNT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_ACCOUNT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_BO_ATTR                                           */
/*==============================================================*/
CREATE TABLE SYS_BO_ATTR  (
   ID_                  VARCHAR2(20)                    NOT NULL,
   ENT_ID_              VARCHAR2(20),
   NAME_                VARCHAR2(64),
   FIELD_NAME_          VARCHAR2(64),
   COMMENT_             VARCHAR2(100),
   DATA_TYPE_           VARCHAR2(10),
   LENGTH_              INTEGER,
   DECIMAL_LENGTH_      INTEGER,
   CONTROL_             VARCHAR2(30),
   EXT_JSON_            VARCHAR2(1000),
   HAS_GEN_             VARCHAR2(10),
   STATUS_              VARCHAR2(10),
   IS_SINGLE_           INTEGER,
   TENANT_ID_           VARCHAR2(20),
   CREATE_BY_           VARCHAR2(20),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(20),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_BO_ATTR PRIMARY KEY (ID_)
);

COMMENT ON TABLE SYS_BO_ATTR IS
'ҵ��ʵ�����Զ���';

COMMENT ON COLUMN SYS_BO_ATTR.ID_ IS
'����';

COMMENT ON COLUMN SYS_BO_ATTR.ENT_ID_ IS
'ʵ��ID';

COMMENT ON COLUMN SYS_BO_ATTR.NAME_ IS
'����';

COMMENT ON COLUMN SYS_BO_ATTR.FIELD_NAME_ IS
'�ֶ���';

COMMENT ON COLUMN SYS_BO_ATTR.COMMENT_ IS
'��ע';

COMMENT ON COLUMN SYS_BO_ATTR.DATA_TYPE_ IS
'����';

COMMENT ON COLUMN SYS_BO_ATTR.LENGTH_ IS
'���ݳ���';

COMMENT ON COLUMN SYS_BO_ATTR.DECIMAL_LENGTH_ IS
'���ݾ���';

COMMENT ON COLUMN SYS_BO_ATTR.CONTROL_ IS
'�ؼ�����';

COMMENT ON COLUMN SYS_BO_ATTR.EXT_JSON_ IS
'��չJSON';

COMMENT ON COLUMN SYS_BO_ATTR.HAS_GEN_ IS
'�Ƿ������ֶ�';

COMMENT ON COLUMN SYS_BO_ATTR.STATUS_ IS
'״̬';

COMMENT ON COLUMN SYS_BO_ATTR.IS_SINGLE_ IS
'�Ƿ񵥸������ֶ�';

COMMENT ON COLUMN SYS_BO_ATTR.TENANT_ID_ IS
'�⻧ID';

COMMENT ON COLUMN SYS_BO_ATTR.CREATE_BY_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_BO_ATTR.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_BO_ATTR.UPDATE_BY_ IS
'������';

COMMENT ON COLUMN SYS_BO_ATTR.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_BO_DEFINITION                                     */
/*==============================================================*/
CREATE TABLE SYS_BO_DEFINITION  (
   ID_                  VARCHAR2(20)                    NOT NULL,
   NAME_                VARCHAR2(64),
   ALAIS_               VARCHAR2(64),
   COMMENT_             VARCHAR2(200),
   SUPPORT_DB_          VARCHAR2(20),
   GEN_MODE_            VARCHAR2(20),
   TREE_ID_             VARCHAR2(20),
   TENANT_ID_           VARCHAR2(20),
   CREATE_BY_           VARCHAR2(20),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(20),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_BO_DEFINITION PRIMARY KEY (ID_)
);

COMMENT ON TABLE SYS_BO_DEFINITION IS
'ҵ�������';

COMMENT ON COLUMN SYS_BO_DEFINITION.ID_ IS
'����';

COMMENT ON COLUMN SYS_BO_DEFINITION.NAME_ IS
'����';

COMMENT ON COLUMN SYS_BO_DEFINITION.ALAIS_ IS
'����';

COMMENT ON COLUMN SYS_BO_DEFINITION.COMMENT_ IS
'��ע';

COMMENT ON COLUMN SYS_BO_DEFINITION.SUPPORT_DB_ IS
'�Ƿ�֧�����ݿ�';

COMMENT ON COLUMN SYS_BO_DEFINITION.GEN_MODE_ IS
'����ģʽ';

COMMENT ON COLUMN SYS_BO_DEFINITION.TREE_ID_ IS
'����ID';

COMMENT ON COLUMN SYS_BO_DEFINITION.TENANT_ID_ IS
'�⻧ID';

COMMENT ON COLUMN SYS_BO_DEFINITION.CREATE_BY_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_BO_DEFINITION.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_BO_DEFINITION.UPDATE_BY_ IS
'������';

COMMENT ON COLUMN SYS_BO_DEFINITION.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_BO_ENTITY                                         */
/*==============================================================*/
CREATE TABLE SYS_BO_ENTITY  (
   ID_                  VARCHAR2(20)                    NOT NULL,
   NAME_                VARCHAR2(64),
   COMMENT_             VARCHAR2(64),
   TABLE_NAME_          VARCHAR2(64),
   DS_NAME_             VARCHAR2(64),
   GEN_TABLE_           VARCHAR2(20),
   TENANT_ID_           VARCHAR2(20),
   CREATE_BY_           VARCHAR2(20),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(20),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_BO_ENTITY PRIMARY KEY (ID_)
);

COMMENT ON TABLE SYS_BO_ENTITY IS
'ҵ��ʵ�����';

COMMENT ON COLUMN SYS_BO_ENTITY.ID_ IS
'����';

COMMENT ON COLUMN SYS_BO_ENTITY.NAME_ IS
'����';

COMMENT ON COLUMN SYS_BO_ENTITY.COMMENT_ IS
'ע��';

COMMENT ON COLUMN SYS_BO_ENTITY.TABLE_NAME_ IS
'����';

COMMENT ON COLUMN SYS_BO_ENTITY.DS_NAME_ IS
'����Դ����';

COMMENT ON COLUMN SYS_BO_ENTITY.GEN_TABLE_ IS
'�Ƿ����������';

COMMENT ON COLUMN SYS_BO_ENTITY.TENANT_ID_ IS
'�⻧ID';

COMMENT ON COLUMN SYS_BO_ENTITY.CREATE_BY_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_BO_ENTITY.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_BO_ENTITY.UPDATE_BY_ IS
'������';

COMMENT ON COLUMN SYS_BO_ENTITY.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_BO_RELATION                                       */
/*==============================================================*/
CREATE TABLE SYS_BO_RELATION  (
   ID_                  VARCHAR2(20)                    NOT NULL,
   BO_DEFID_            VARCHAR2(20),
   RELATION_TYPE_       VARCHAR2(20),
   BO_ENTID_            VARCHAR2(20),
   TENANT_ID_           VARCHAR2(20),
   CREATE_BY_           VARCHAR2(20),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(20),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_BO_RELATION PRIMARY KEY (ID_)
);

COMMENT ON TABLE SYS_BO_RELATION IS
'ҵ�������';

COMMENT ON COLUMN SYS_BO_RELATION.ID_ IS
'����';

COMMENT ON COLUMN SYS_BO_RELATION.BO_DEFID_ IS
'BO����ID';

COMMENT ON COLUMN SYS_BO_RELATION.RELATION_TYPE_ IS
'��ϵ����(main,sub)';

COMMENT ON COLUMN SYS_BO_RELATION.BO_ENTID_ IS
'BOʵ��ID';

COMMENT ON COLUMN SYS_BO_RELATION.TENANT_ID_ IS
'�⻧ID';

COMMENT ON COLUMN SYS_BO_RELATION.CREATE_BY_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_BO_RELATION.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_BO_RELATION.UPDATE_BY_ IS
'������';

COMMENT ON COLUMN SYS_BO_RELATION.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_BUTTON                                            */
/*==============================================================*/
CREATE TABLE SYS_BUTTON  (
   BUTTON_ID_           VARCHAR2(64)                    NOT NULL,
   "MODULE_ID_"         VARCHAR2(64),
   NAME_                VARCHAR2(50)                    NOT NULL,
   ICON_CLS_            VARCHAR2(50),
   GLYPH_               VARCHAR2(50),
   SN_                  INTEGER                         NOT NULL,
   BTN_TYPE_            VARCHAR2(20)                    NOT NULL,
   KEY_                 VARCHAR2(50)                    NOT NULL,
   POS_                 VARCHAR2(50)                    NOT NULL,
   CUSTOM_HANDLER_      CLOB,
   LINK_MODULE_ID_      VARCHAR2(64),
   CONSTRAINT PK_SYS_BUTTON PRIMARY KEY (BUTTON_ID_)
);

COMMENT ON TABLE SYS_BUTTON IS
'ϵͳ���ܰ�ť����
�����б��ͷ�İ�ť�������еİ�ť������ť����ģ�飨��ϸ����ť';

COMMENT ON COLUMN SYS_BUTTON.BUTTON_ID_ IS
'��ťID';

COMMENT ON COLUMN SYS_BUTTON."MODULE_ID_" IS
'ģ��ID';

COMMENT ON COLUMN SYS_BUTTON.NAME_ IS
'��ť����';

COMMENT ON COLUMN SYS_BUTTON.ICON_CLS_ IS
'��ťICONCLS';

COMMENT ON COLUMN SYS_BUTTON.GLYPH_ IS
'GLYPH';

COMMENT ON COLUMN SYS_BUTTON.SN_ IS
'���';

COMMENT ON COLUMN SYS_BUTTON.BTN_TYPE_ IS
'��ť����

��ϸ=DETAIL
�½�=NEW
�޸�=EDIT
ɾ��=DEL
�߼���ѯ=SEARCH_COMPOSE
��������=NEW_ATTACH
��ӡ=PRINT
����=EXPORT
���ֶβ�ѯ=SEARCH_FIELD
����=SAVE
��һ��=PREV
��һ��=NEXT
�Զ���=CUSTOM';

COMMENT ON COLUMN SYS_BUTTON.KEY_ IS
'��ťKey';

COMMENT ON COLUMN SYS_BUTTON.POS_ IS
'��ťλ��
TOP=��ͷ������
MANAGE=������
FORM_BOTTOM=���ײ���ť��
FORM_TOP=����ͷ��
DETAIL_TOP=��ϸ��ͷ��
DETAIL_BOTTOM=���ײ���ϸ

';

COMMENT ON COLUMN SYS_BUTTON.CUSTOM_HANDLER_ IS
'�Զ���ִ�д���';

COMMENT ON COLUMN SYS_BUTTON.LINK_MODULE_ID_ IS
'����ģ��ID';

/*==============================================================*/
/* Table: SYS_CUSTOM_QUERY                                      */
/*==============================================================*/
CREATE TABLE SYS_CUSTOM_QUERY  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(256)                   NOT NULL,
   ALIAS_               VARCHAR2(100),
   IS_MULTI_SELECT_     VARCHAR2(64),
   IS_PAGE_             VARCHAR2(64),
   WIN_WIDTH_           VARCHAR2(64),
   WIN_HEIGHT_          VARCHAR2(64),
   CONDITION_HTML_      CLOB,
   PAGE_SIZE_           CLOB,
   DS_ID_               VARCHAR2(64),
   DS_NAME_             VARCHAR2(256),
   SQL_                 CLOB,
   HEADER_              CLOB                            NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_CUSTOM_QUERY PRIMARY KEY (ID_)
);

COMMENT ON TABLE SYS_CUSTOM_QUERY IS
'�Զ����ѯ';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.NAME_ IS
'����';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.ALIAS_ IS
'����';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.IS_MULTI_SELECT_ IS
'�Ƿ��ѡ';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.IS_PAGE_ IS
'�Ƿ��ҳ';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.WIN_WIDTH_ IS
'�򿪴�??���';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.WIN_HEIGHT_ IS
'�򿪴��ڸ߶�';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.CONDITION_HTML_ IS
'����HTML';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.PAGE_SIZE_ IS
'��ҳ����';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.DS_ID_ IS
'����ԴID';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.DS_NAME_ IS
'����Դ����';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.SQL_ IS
'SQL���';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.HEADER_ IS
'��ͷ��������,��JSON�洢';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.TENANT_ID_ IS
'����ID';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_CUSTOM_QUERY.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_DATASOURCE_DEF                                    */
/*==============================================================*/
CREATE TABLE SYS_DATASOURCE_DEF  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(64),
   ALIAS_               VARCHAR2(64),
   ENABLE_              VARCHAR2(10),
   SETTING_             VARCHAR2(2000),
   DB_TYPE_             VARCHAR2(10),
   INIT_ON_START_       VARCHAR2(10),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_DATASOURCE_DEF PRIMARY KEY (ID_)
);

COMMENT ON TABLE SYS_DATASOURCE_DEF IS
'����Դ�������';

COMMENT ON COLUMN SYS_DATASOURCE_DEF.ID_ IS
'����';

COMMENT ON COLUMN SYS_DATASOURCE_DEF.NAME_ IS
'����Դ����';

COMMENT ON COLUMN SYS_DATASOURCE_DEF.ALIAS_ IS
'����';

COMMENT ON COLUMN SYS_DATASOURCE_DEF.ENABLE_ IS
'�Ƿ�ʹ��';

COMMENT ON COLUMN SYS_DATASOURCE_DEF.SETTING_ IS
'����Դ�趨';

COMMENT ON COLUMN SYS_DATASOURCE_DEF.DB_TYPE_ IS
'���ݿ�����';

COMMENT ON COLUMN SYS_DATASOURCE_DEF.INIT_ON_START_ IS
'����ʱ��ʼ��';

COMMENT ON COLUMN SYS_DATASOURCE_DEF.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_DATASOURCE_DEF.CREATE_BY_ IS
'������';

COMMENT ON COLUMN SYS_DATASOURCE_DEF.UPDATE_BY_ IS
'������';

COMMENT ON COLUMN SYS_DATASOURCE_DEF.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_DB_SQL                                            */
/*==============================================================*/
CREATE TABLE SYS_DB_SQL  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   KEY_                 VARCHAR2(256)                   NOT NULL,
   NAME_                VARCHAR2(256)                   NOT NULL,
   HEADER_              CLOB                            NOT NULL,
   DS_NAME_             VARCHAR2(256),
   DS_ID_               VARCHAR2(64),
   SQL_                 CLOB,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_DB_SQL PRIMARY KEY (ID_)
);

COMMENT ON TABLE SYS_DB_SQL IS
'�Զ���SQL';

COMMENT ON COLUMN SYS_DB_SQL.ID_ IS
'ID_';

COMMENT ON COLUMN SYS_DB_SQL.KEY_ IS
'KEY_';

COMMENT ON COLUMN SYS_DB_SQL.NAME_ IS
'��˾Ӣ����';

COMMENT ON COLUMN SYS_DB_SQL.HEADER_ IS
'��ͷ��������,��JSON�洢';

COMMENT ON COLUMN SYS_DB_SQL.DS_NAME_ IS
'����Դ����';

COMMENT ON COLUMN SYS_DB_SQL.DS_ID_ IS
'����ԴID';

COMMENT ON COLUMN SYS_DB_SQL.SQL_ IS
'SQL���';

COMMENT ON COLUMN SYS_DB_SQL.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_DB_SQL.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_DB_SQL.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_DB_SQL.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_DB_SQL.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_DEF_DIALOG                                        */
/*==============================================================*/
CREATE TABLE SYS_DEF_DIALOG  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(256)                   NOT NULL,
   ALIAS_               VARCHAR2(100),
   IS_MULTI_SELECT_     VARCHAR2(64),
   IS_PAGE_             VARCHAR2(64),
   WIN_WIDTH_           VARCHAR2(64),
   WIN_HEIGHT_          VARCHAR2(64),
   CONDITION_HTML_      CLOB,
   PAGE_SIZE_           CLOB,
   DS_ID_               VARCHAR2(64),
   DS_NAME_             VARCHAR2(256),
   SQL_                 CLOB,
   HEADER_              CLOB                            NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_DEF_DIALOG PRIMARY KEY (ID_)
);

COMMENT ON TABLE SYS_DEF_DIALOG IS
'�Զ���Ի���';

COMMENT ON COLUMN SYS_DEF_DIALOG.NAME_ IS
'����';

COMMENT ON COLUMN SYS_DEF_DIALOG.ALIAS_ IS
'����';

COMMENT ON COLUMN SYS_DEF_DIALOG.IS_MULTI_SELECT_ IS
'�Ƿ��ѡ';

COMMENT ON COLUMN SYS_DEF_DIALOG.IS_PAGE_ IS
'�Ƿ��ҳ';

COMMENT ON COLUMN SYS_DEF_DIALOG.WIN_WIDTH_ IS
'�򿪴�??���';

COMMENT ON COLUMN SYS_DEF_DIALOG.WIN_HEIGHT_ IS
'�򿪴��ڸ߶�';

COMMENT ON COLUMN SYS_DEF_DIALOG.CONDITION_HTML_ IS
'����HTML';

COMMENT ON COLUMN SYS_DEF_DIALOG.PAGE_SIZE_ IS
'��ҳ����';

COMMENT ON COLUMN SYS_DEF_DIALOG.DS_ID_ IS
'����ԴID';

COMMENT ON COLUMN SYS_DEF_DIALOG.DS_NAME_ IS
'����Դ����';

COMMENT ON COLUMN SYS_DEF_DIALOG.SQL_ IS
'SQL���';

COMMENT ON COLUMN SYS_DEF_DIALOG.HEADER_ IS
'��ͷ��������,��JSON�洢';

COMMENT ON COLUMN SYS_DEF_DIALOG.TENANT_ID_ IS
'����ID';

COMMENT ON COLUMN SYS_DEF_DIALOG.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_DEF_DIALOG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_DEF_DIALOG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_DEF_DIALOG.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_DIC                                               */
/*==============================================================*/
CREATE TABLE SYS_DIC  (
   "DIC_ID_"            VARCHAR2(64)                    NOT NULL,
   "TYPE_ID_"           VARCHAR2(64),
   "KEY_"               VARCHAR2(64),
   "NAME_"              VARCHAR2(64)                    NOT NULL,
   "VALUE_"             VARCHAR2(100)                   NOT NULL,
   "DESCP_"             VARCHAR2(256),
   "SN_"                INTEGER,
   "PATH_"              VARCHAR2(256),
   "PARENT_ID_"         VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_DIC PRIMARY KEY ("DIC_ID_")
);

COMMENT ON COLUMN SYS_DIC."DIC_ID_" IS
'����';

COMMENT ON COLUMN SYS_DIC."TYPE_ID_" IS
'����Id';

COMMENT ON COLUMN SYS_DIC."KEY_" IS
'��Key';

COMMENT ON COLUMN SYS_DIC."NAME_" IS
'����';

COMMENT ON COLUMN SYS_DIC."VALUE_" IS
'��ֵ';

COMMENT ON COLUMN SYS_DIC."DESCP_" IS
'����';

COMMENT ON COLUMN SYS_DIC."SN_" IS
'���';

COMMENT ON COLUMN SYS_DIC."PATH_" IS
'·��';

COMMENT ON COLUMN SYS_DIC."PARENT_ID_" IS
'��ID';

COMMENT ON COLUMN SYS_DIC.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_DIC.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_DIC.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_DIC.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_DIC.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_ELEM_RIGHT                                        */
/*==============================================================*/
CREATE TABLE SYS_ELEM_RIGHT  (
   RIGHT_ID_            VARCHAR2(64)                    NOT NULL,
   COMP_ID_             VARCHAR2(64)                    NOT NULL,
   COMP_TYPE_           VARCHAR2(20)                    NOT NULL,
   RIGHT_TYPE_          VARCHAR2(20)                    NOT NULL,
   IDENTITY_ID_         VARCHAR2(64)                    NOT NULL,
   IDENTITY_TYPE_       VARCHAR2(20)                    NOT NULL,
   CONSTRAINT PK_SYS_ELEM_RIGHT PRIMARY KEY (RIGHT_ID_)
);

COMMENT ON TABLE SYS_ELEM_RIGHT IS
'ϵͳԪ��Ȩ��
�����顢�ֶΡ���ťȨ��';

COMMENT ON COLUMN SYS_ELEM_RIGHT.RIGHT_ID_ IS
'Ȩ��ID';

COMMENT ON COLUMN SYS_ELEM_RIGHT.COMP_ID_ IS
'���ID
��ID/��/�ֶ�ID/��ťID';

COMMENT ON COLUMN SYS_ELEM_RIGHT.COMP_TYPE_ IS
'�������
Form=��
Group=��
Field=�ֶ�
Button=��ť
';

COMMENT ON COLUMN SYS_ELEM_RIGHT.RIGHT_TYPE_ IS
'Ȩ������
ReadOnly=ֻ��
Edit=����
Hidden=����';

COMMENT ON COLUMN SYS_ELEM_RIGHT.IDENTITY_ID_ IS
'�û���ʶID';

COMMENT ON COLUMN SYS_ELEM_RIGHT.IDENTITY_TYPE_ IS
'�û�=User
�û���=Group';

/*==============================================================*/
/* Table: SYS_FIELD                                             */
/*==============================================================*/
CREATE TABLE SYS_FIELD  (
   "FIELD_ID_"          VARCHAR2(64)                    NOT NULL,
   "MODULE_ID_"         VARCHAR2(64)                    NOT NULL,
   "TITLE_"             VARCHAR2(50)                    NOT NULL,
   "ATTR_NAME_"         VARCHAR2(50)                    NOT NULL,
   "LINK_MOD_ID_"       VARCHAR2(64),
   "FIELD_TYPE_"        VARCHAR2(50)                    NOT NULL,
   "FIELD_GROUP_"       VARCHAR2(50),
   "FIELD_LENGTH_"      INTEGER,
   "PRECISION_"         INTEGER,
   "SN_"                INTEGER,
   "COLSPAN_"           INTEGER,
   "FIELD_CAT_"         VARCHAR2(20),
   "RELATION_TYPE_"     VARCHAR2(20),
   EDIT_RIGHT_          VARCHAR2(20),
   ADD_RIGHT_           VARCHAR2(20),
   "IS_HIDDEN_"         VARCHAR2(6),
   "IS_READABLE_"       VARCHAR2(6),
   "IS_REQUIRED_"       VARCHAR2(6),
   "IS_DISABLED_"       VARCHAR2(6),
   "ALLOW_GROUP_"       VARCHAR2(6),
   "ALLOW_SORT_"        VARCHAR2(6),
   "ALLOW_SUM_"         VARCHAR2(6),
   "IS_DEFAULT_COL_"    VARCHAR2(8),
   "IS_QUERY_COL_"      VARCHAR2(8),
   "DEF_VALUE_"         VARCHAR2(50),
   "REMARK_"            CLOB,
   "SHOW_NAV_TREE_"     VARCHAR2(6),
   "DB_FIELD_NAME_"     VARCHAR2(50),
   "DB_FIELD_FORMULA_"  CLOB,
   "ALLOW_EXCEL_INSERT_" VARCHAR2(6),
   "ALLOW_EXCEL_EDIT_"  VARCHAR2(6),
   "HAS_ATTACH_"        VARCHAR2(6),
   "IS_CHAR_CAT_"       VARCHAR2(6),
   "RENDERER_"          VARCHAR2(512),
   "IS_USER_DEF_"       VARCHAR2(6),
   "COMP_TYPE_"         VARCHAR2(50),
   "JSON_CONFIG_"       CLOB,
   "LINK_ADD_MODE_"     VARCHAR2(16),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_FIELD PRIMARY KEY ("FIELD_ID_")
);

COMMENT ON TABLE SYS_FIELD IS
'����ģ���ֶ�';

COMMENT ON COLUMN SYS_FIELD."FIELD_ID_" IS
'�ֶ�ID';

COMMENT ON COLUMN SYS_FIELD."MODULE_ID_" IS
'ģ��ID';

COMMENT ON COLUMN SYS_FIELD."TITLE_" IS
'����';

COMMENT ON COLUMN SYS_FIELD."ATTR_NAME_" IS
'�ֶ�����';

COMMENT ON COLUMN SYS_FIELD."LINK_MOD_ID_" IS
'����ģ��ID';

COMMENT ON COLUMN SYS_FIELD."FIELD_TYPE_" IS
'�ֶ�����';

COMMENT ON COLUMN SYS_FIELD."FIELD_GROUP_" IS
'�ֶη���';

COMMENT ON COLUMN SYS_FIELD."FIELD_LENGTH_" IS
'�ֶγ���';

COMMENT ON COLUMN SYS_FIELD."PRECISION_" IS
'�ֶξ���';

COMMENT ON COLUMN SYS_FIELD."SN_" IS
'�ֶ����';

COMMENT ON COLUMN SYS_FIELD."COLSPAN_" IS
'������';

COMMENT ON COLUMN SYS_FIELD."FIELD_CAT_" IS
'�ֶη���
FIELD_COMMON=��ͨ�ֶ�
FIELD_PK=�����ֶ�
FIELD_RELATION=��ϵ�ֶ�
';

COMMENT ON COLUMN SYS_FIELD."RELATION_TYPE_" IS
'OneToMany
ManyToOne
OneToOne
ManyToMany';

COMMENT ON COLUMN SYS_FIELD.EDIT_RIGHT_ IS
'�༭Ȩ��';

COMMENT ON COLUMN SYS_FIELD.ADD_RIGHT_ IS
'���Ȩ��';

COMMENT ON COLUMN SYS_FIELD."IS_HIDDEN_" IS
'�Ƿ�����';

COMMENT ON COLUMN SYS_FIELD."IS_READABLE_" IS
'�Ƿ�ֻ��';

COMMENT ON COLUMN SYS_FIELD."IS_REQUIRED_" IS
'�Ƿ����';

COMMENT ON COLUMN SYS_FIELD."IS_DISABLED_" IS
'�Ƿ����';

COMMENT ON COLUMN SYS_FIELD."ALLOW_GROUP_" IS
'�Ƿ��������';

COMMENT ON COLUMN SYS_FIELD."ALLOW_SUM_" IS
'�Ƿ�����ͳ��';

COMMENT ON COLUMN SYS_FIELD."IS_DEFAULT_COL_" IS
'�Ƿ�ȱʡ��ʾ��';

COMMENT ON COLUMN SYS_FIELD."IS_QUERY_COL_" IS
'�Ƿ�ȱʡ��ѯ��';

COMMENT ON COLUMN SYS_FIELD."DEF_VALUE_" IS
'ȱʡֵ';

COMMENT ON COLUMN SYS_FIELD."REMARK_" IS
'��ע';

COMMENT ON COLUMN SYS_FIELD."SHOW_NAV_TREE_" IS
'�Ƿ��ڵ�������չʾ';

COMMENT ON COLUMN SYS_FIELD."DB_FIELD_NAME_" IS
'���ݿ��ֶ���';

COMMENT ON COLUMN SYS_FIELD."DB_FIELD_FORMULA_" IS
'���ݿ��ֶι�ʽ';

COMMENT ON COLUMN SYS_FIELD."ALLOW_EXCEL_INSERT_" IS
'�Ƿ�����Excel����';

COMMENT ON COLUMN SYS_FIELD."ALLOW_EXCEL_EDIT_" IS
'�Ƿ�����Excel�༭';

COMMENT ON COLUMN SYS_FIELD."HAS_ATTACH_" IS
'�Ƿ������и���';

COMMENT ON COLUMN SYS_FIELD."IS_CHAR_CAT_" IS
'�Ƿ�ͼ�����';

COMMENT ON COLUMN SYS_FIELD."IS_USER_DEF_" IS
'�û������ֶ�
��Ϊ�û������ֶ�ʱ����չʾ��ʽ����JS�ϵ��ֶ�չʾ����';

COMMENT ON COLUMN SYS_FIELD."LINK_ADD_MODE_" IS
'�����ֶ�ֵ������ʽ��ֻ�Թ������ֶβ���Ч
������ֵ��
WINDOW=ͨ�������Ի������������
SELECT=ͨ���������ڽ���ѡ��
INNER=ͨ�����б��н��б༭���Ӵ���';

COMMENT ON COLUMN SYS_FIELD.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_FIELD.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_FIELD.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_FIELD.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_FILE                                              */
/*==============================================================*/
CREATE TABLE SYS_FILE  (
   FILE_ID_             VARCHAR2(64)                    NOT NULL,
   TYPE_ID_             VARCHAR2(64),
   FILE_NAME_           VARCHAR2(100)                   NOT NULL,
   NEW_FNAME_           VARCHAR2(100),
   PATH_                VARCHAR2(255)                   NOT NULL,
   THUMBNAIL_           VARCHAR2(120),
   EXT_                 VARCHAR2(20),
   MINE_TYPE_           VARCHAR2(50),
   DESC_                VARCHAR2(255),
   TOTAL_BYTES_         INTEGER,
   DEL_STATUS_          VARCHAR2(20),
   MODULE_ID_           VARCHAR2(64),
   RECORD_ID_           VARCHAR2(64),
   FROM_                VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_FILE PRIMARY KEY (FILE_ID_)
);

COMMENT ON TABLE SYS_FILE IS
'ϵͳ����';

COMMENT ON COLUMN SYS_FILE.TYPE_ID_ IS
'����ID';

COMMENT ON COLUMN SYS_FILE.FILE_NAME_ IS
'�ļ���';

COMMENT ON COLUMN SYS_FILE.NEW_FNAME_ IS
'���ļ���';

COMMENT ON COLUMN SYS_FILE.PATH_ IS
'�ļ�·��';

COMMENT ON COLUMN SYS_FILE.THUMBNAIL_ IS
'ͼƬ����ͼ';

COMMENT ON COLUMN SYS_FILE.EXT_ IS
'��չ��';

COMMENT ON COLUMN SYS_FILE.MINE_TYPE_ IS
'��������';

COMMENT ON COLUMN SYS_FILE.DESC_ IS
'˵��';

COMMENT ON COLUMN SYS_FILE.TOTAL_BYTES_ IS
'���ֽ���';

COMMENT ON COLUMN SYS_FILE.DEL_STATUS_ IS
'ɾ����ʶ';

COMMENT ON COLUMN SYS_FILE.MODULE_ID_ IS
'ģ��ID';

COMMENT ON COLUMN SYS_FILE.RECORD_ID_ IS
'��¼ID';

COMMENT ON COLUMN SYS_FILE.FROM_ IS
'��Դ����
APPLICATION=Ӧ�ü��ϴ�����
SELF=�����ϴ�';

COMMENT ON COLUMN SYS_FILE.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_FILE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_FILE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_FILE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_FILE.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_FORM_FIELD                                        */
/*==============================================================*/
CREATE TABLE SYS_FORM_FIELD  (
   FORM_FIELD_ID_       VARCHAR2(64)                    NOT NULL,
   GROUP_ID_            VARCHAR2(64),
   "FIELD_ID_"          VARCHAR2(64),
   "FIELD_NAME_"        VARCHAR2(50)                    NOT NULL,
   "FIELD_LABEL_"       VARCHAR2(64)                    NOT NULL,
   SN_                  INTEGER                         NOT NULL,
   HEIGHT_              INTEGER,
   WIDTH_               INTEGER,
   COLSPAN_             INTEGER,
   JSON_CONF_           CLOB,
   COMP_TYPE_           VARCHAR2(50),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_FORM_FIELD PRIMARY KEY (FORM_FIELD_ID_)
);

COMMENT ON TABLE SYS_FORM_FIELD IS
'�������ֶ�';

COMMENT ON COLUMN SYS_FORM_FIELD.FORM_FIELD_ID_ IS
'���ֶ�ID';

COMMENT ON COLUMN SYS_FORM_FIELD.GROUP_ID_ IS
'����ID';

COMMENT ON COLUMN SYS_FORM_FIELD."FIELD_ID_" IS
'�ֶ�ID';

COMMENT ON COLUMN SYS_FORM_FIELD.SN_ IS
'���';

COMMENT ON COLUMN SYS_FORM_FIELD.HEIGHT_ IS
'��';

COMMENT ON COLUMN SYS_FORM_FIELD.WIDTH_ IS
'��';

COMMENT ON COLUMN SYS_FORM_FIELD.COLSPAN_ IS
'�п��';

COMMENT ON COLUMN SYS_FORM_FIELD.JSON_CONF_ IS
'����JSON����';

COMMENT ON COLUMN SYS_FORM_FIELD.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_FORM_FIELD.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_FORM_FIELD.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_FORM_FIELD.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_FORM_FIELD.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_FORM_GROUP                                        */
/*==============================================================*/
CREATE TABLE SYS_FORM_GROUP  (
   GROUP_ID_            VARCHAR2(64)                    NOT NULL,
   "FORM_SCHEMA_ID_"    VARCHAR2(64),
   "TITLE_"             VARCHAR2(50)                    NOT NULL,
   "SN_"                INTEGER                         NOT NULL,
   "DISPLAY_MODE_"      VARCHAR2(50),
   "COLLAPSIBLE_"       VARCHAR2(8),
   "COLLAPSED_"         VARCHAR2(8),
   "SUB_MODEL_ID_"      VARCHAR2(64),
   "JSON_CONFIG_"       CLOB,
   "COL_NUMS_"          INTEGER,
   CONSTRAINT PK_SYS_FORM_GROUP PRIMARY KEY (GROUP_ID_)
);

COMMENT ON TABLE SYS_FORM_GROUP IS
'ϵͳ���ֶη���';

COMMENT ON COLUMN SYS_FORM_GROUP."FORM_SCHEMA_ID_" IS
'������ID';

COMMENT ON COLUMN SYS_FORM_GROUP."TITLE_" IS
'�����';

COMMENT ON COLUMN SYS_FORM_GROUP."SN_" IS
'���';

COMMENT ON COLUMN SYS_FORM_GROUP."DISPLAY_MODE_" IS
'��ʾģʽ';

COMMENT ON COLUMN SYS_FORM_GROUP."COLLAPSIBLE_" IS
'�Ƿ������';

COMMENT ON COLUMN SYS_FORM_GROUP."COLLAPSED_" IS
'Ĭ������';

COMMENT ON COLUMN SYS_FORM_GROUP."SUB_MODEL_ID_" IS
'��ģ��ID';

COMMENT ON COLUMN SYS_FORM_GROUP."JSON_CONFIG_" IS
'����JSON����';

COMMENT ON COLUMN SYS_FORM_GROUP."COL_NUMS_" IS
'����';

/*==============================================================*/
/* Table: SYS_FORM_SCHEMA                                       */
/*==============================================================*/
CREATE TABLE SYS_FORM_SCHEMA  (
   "FORM_SCHEMA_ID_"    VARCHAR2(64)                    NOT NULL,
   "MODULE_ID_"         VARCHAR2(64),
   "SCHEMA_NAME_"       VARCHAR2(64)                    NOT NULL,
   "TITLE_"             VARCHAR2(50),
   "SN_"                INTEGER                         NOT NULL,
   "IS_SYSTEM_"         VARCHAR2(8)                     NOT NULL,
   "SCHEMA_KEY_"        VARCHAR2(50)                    NOT NULL,
   "WIN_WIDTH_"         INTEGER                         NOT NULL,
   "WIN_HEIGHT_"        INTEGER                         NOT NULL,
   "COL_NUMS_"          INTEGER                         NOT NULL,
   "DISPLAY_MODE_"      VARCHAR2(50)                    NOT NULL,
   "JSON_CONFIG_"       CLOB,
   CONSTRAINT PK_SYS_FORM_SCHEMA PRIMARY KEY ("FORM_SCHEMA_ID_")
);

COMMENT ON TABLE SYS_FORM_SCHEMA IS
'������';

COMMENT ON COLUMN SYS_FORM_SCHEMA."FORM_SCHEMA_ID_" IS
'������ID';

COMMENT ON COLUMN SYS_FORM_SCHEMA."MODULE_ID_" IS
'ģ��ID';

COMMENT ON COLUMN SYS_FORM_SCHEMA."SCHEMA_NAME_" IS
'��������';

COMMENT ON COLUMN SYS_FORM_SCHEMA."TITLE_" IS
'������';

COMMENT ON COLUMN SYS_FORM_SCHEMA."SN_" IS
'��������';

COMMENT ON COLUMN SYS_FORM_SCHEMA."IS_SYSTEM_" IS
'�Ƿ�ΪϵͳĬ��';

COMMENT ON COLUMN SYS_FORM_SCHEMA."SCHEMA_KEY_" IS
'����Key';

COMMENT ON COLUMN SYS_FORM_SCHEMA."WIN_WIDTH_" IS
'���ڿ�';

COMMENT ON COLUMN SYS_FORM_SCHEMA."WIN_HEIGHT_" IS
'���ڸ�';

COMMENT ON COLUMN SYS_FORM_SCHEMA."COL_NUMS_" IS
'����';

COMMENT ON COLUMN SYS_FORM_SCHEMA."DISPLAY_MODE_" IS
'��ʾģʽ';

COMMENT ON COLUMN SYS_FORM_SCHEMA."JSON_CONFIG_" IS
'����JSON����';

/*==============================================================*/
/* Table: SYS_GRID_FIELD                                        */
/*==============================================================*/
CREATE TABLE SYS_GRID_FIELD  (
   "GD_FIELD_ID_"       VARCHAR2(64)                    NOT NULL,
   "FIELD_ID_"          VARCHAR2(64),
   "FIELD_NAME_"        VARCHAR2(50),
   "FIELD_TITLE_"       VARCHAR2(50)                    NOT NULL,
   "GRID_VIEW_ID_"      VARCHAR2(64),
   "PARENT_ID_"         VARCHAR2(64),
   "PATH_"              VARCHAR2(255),
   "ITEM_TYPE_"         VARCHAR2(20),
   "SN_"                INTEGER                         NOT NULL,
   "IS_LOCK_"           VARCHAR2(8),
   "ALLOW_SORT_"        VARCHAR2(8),
   "IS_HIDDEN_"         VARCHAR2(8),
   "ALLOW_SUM_"         VARCHAR2(8),
   "COL_WIDTH_"         INTEGER,
   "IS_EXPORT_"         VARCHAR2(8),
   "FOMART_"            VARCHAR2(250),
   "REMARK_"            CLOB,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_GRID_FIELD PRIMARY KEY ("GD_FIELD_ID_")
);

COMMENT ON TABLE SYS_GRID_FIELD IS
'�б���ͼ���鼰�ֶ�';

COMMENT ON COLUMN SYS_GRID_FIELD."FIELD_ID_" IS
'�ֶ�ID';

COMMENT ON COLUMN SYS_GRID_FIELD."GRID_VIEW_ID_" IS
'����ͼ��ͼID
���������κη���ʱ����Ҫ��д��ֵ';

COMMENT ON COLUMN SYS_GRID_FIELD."ITEM_TYPE_" IS
'������
GROUP=����
FIELD=�ֶ�';

COMMENT ON COLUMN SYS_GRID_FIELD."SN_" IS
'���';

COMMENT ON COLUMN SYS_GRID_FIELD."IS_LOCK_" IS
'�Ƿ�����';

COMMENT ON COLUMN SYS_GRID_FIELD."ALLOW_SORT_" IS
'�Ƿ���������';

COMMENT ON COLUMN SYS_GRID_FIELD."IS_HIDDEN_" IS
'�Ƿ�����';

COMMENT ON COLUMN SYS_GRID_FIELD."ALLOW_SUM_" IS
'�Ƿ������ܼ�';

COMMENT ON COLUMN SYS_GRID_FIELD."COL_WIDTH_" IS
'�п�';

COMMENT ON COLUMN SYS_GRID_FIELD."IS_EXPORT_" IS
'�Ƿ�������';

COMMENT ON COLUMN SYS_GRID_FIELD."FOMART_" IS
'��ʽ��';

COMMENT ON COLUMN SYS_GRID_FIELD."REMARK_" IS
'��ע';

COMMENT ON COLUMN SYS_GRID_FIELD.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_GRID_FIELD.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_GRID_FIELD.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_GRID_FIELD.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_GRID_FIELD.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_GRID_VIEW                                         */
/*==============================================================*/
CREATE TABLE SYS_GRID_VIEW  (
   "GRID_VIEW_ID_"      VARCHAR2(64)                    NOT NULL,
   "MODULE_ID_"         VARCHAR2(64),
   "NAME_"              VARCHAR2(60)                    NOT NULL,
   "IS_SYSTEM_"         VARCHAR2(8),
   "IS_DEFAULT_"        VARCHAR2(8),
   "ALLOW_EDIT_"        VARCHAR2(8),
   "CLICK_ROW_ACTION_"  VARCHAR2(120),
   "DEF_SORT_FIELD_"    VARCHAR2(50),
   "SN_"                INTEGER                         NOT NULL,
   "REMARK_"            CLOB,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_GRID_VIEW PRIMARY KEY ("GRID_VIEW_ID_")
);

COMMENT ON TABLE SYS_GRID_VIEW IS
'�б�չʾ��ͼ';

COMMENT ON COLUMN SYS_GRID_VIEW."MODULE_ID_" IS
'ģ��ID';

COMMENT ON COLUMN SYS_GRID_VIEW."NAME_" IS
'����';

COMMENT ON COLUMN SYS_GRID_VIEW."IS_SYSTEM_" IS
'�Ƿ�ϵͳĬ��';

COMMENT ON COLUMN SYS_GRID_VIEW."ALLOW_EDIT_" IS
'�Ƿ��ڱ���б༭';

COMMENT ON COLUMN SYS_GRID_VIEW."CLICK_ROW_ACTION_" IS
'����ж���';

COMMENT ON COLUMN SYS_GRID_VIEW."DEF_SORT_FIELD_" IS
'Ĭ������';

COMMENT ON COLUMN SYS_GRID_VIEW."SN_" IS
'���';

COMMENT ON COLUMN SYS_GRID_VIEW."REMARK_" IS
'��ע';

COMMENT ON COLUMN SYS_GRID_VIEW.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_GRID_VIEW.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_GRID_VIEW.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_GRID_VIEW.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_GRID_VIEW.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_INST                                              */
/*==============================================================*/
CREATE TABLE SYS_INST  (
   INST_ID_             VARCHAR2(64)                    NOT NULL,
   "NAME_CN_"           VARCHAR2(256)                   NOT NULL,
   "NAME_EN_"           VARCHAR2(256)                   NOT NULL,
   BUS_LICE_NO_         VARCHAR2(50)                    NOT NULL,
   INST_NO_             VARCHAR2(50)                    NOT NULL,
   BUS_LICE_FILE_ID_    VARCHAR2(64),
   "REG_CODE_FILE_ID_"  VARCHAR2(64),
   "DOMAIN_"            VARCHAR2(100)                   NOT NULL,
   "NAME_CN_S_"         VARCHAR2(80),
   "NAME_EN_S_"         VARCHAR2(80),
   "LEGAL_MAN_"         VARCHAR2(64),
   "DESCP_"             CLOB,
   "ADDRESS_"           VARCHAR2(128),
   "PHONE_"             VARCHAR2(30),
   "EMAIL_"             VARCHAR2(255),
   "FAX_"               VARCHAR2(30),
   "CONTRACTOR_"        VARCHAR2(30),
   "STATUS_"            VARCHAR2(30),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_INST PRIMARY KEY (INST_ID_)
);

COMMENT ON TABLE SYS_INST IS
'ע�����';

COMMENT ON COLUMN SYS_INST."NAME_CN_" IS
'��˾������';

COMMENT ON COLUMN SYS_INST."NAME_EN_" IS
'��˾Ӣ����';

COMMENT ON COLUMN SYS_INST.INST_NO_ IS
'��������';

COMMENT ON COLUMN SYS_INST.BUS_LICE_FILE_ID_ IS
'��˾Ӫҵִ��ͼƬ';

COMMENT ON COLUMN SYS_INST."REG_CODE_FILE_ID_" IS
'��֯��������֤ͼ';

COMMENT ON COLUMN SYS_INST."DOMAIN_" IS
'��˾����
Ψһ���û��������˺ž����Դ�Ϊ׺���繫˾������Ϊabc.com,����Ա���˺�Ϊadmin@abc.com';

COMMENT ON COLUMN SYS_INST."NAME_CN_S_" IS
'��˾���(����)';

COMMENT ON COLUMN SYS_INST."NAME_EN_S_" IS
'��˾���(Ӣ��)';

COMMENT ON COLUMN SYS_INST."LEGAL_MAN_" IS
'��˾����';

COMMENT ON COLUMN SYS_INST."DESCP_" IS
'��˾����';

COMMENT ON COLUMN SYS_INST."ADDRESS_" IS
'��ַ';

COMMENT ON COLUMN SYS_INST."PHONE_" IS
'��ϵ�绰';

COMMENT ON COLUMN SYS_INST."FAX_" IS
'����';

COMMENT ON COLUMN SYS_INST."CONTRACTOR_" IS
'��ϵ��';

COMMENT ON COLUMN SYS_INST."STATUS_" IS
'״̬';

COMMENT ON COLUMN SYS_INST.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_INST.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_INST.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_INST.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_INST.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_LDAP_CN                                           */
/*==============================================================*/
CREATE TABLE SYS_LDAP_CN  (
   SYS_LDAP_USER_ID_    VARCHAR2(64)                    NOT NULL,
   USER_ID_             VARCHAR2(64),
   SYS_LDAP_OU_ID_      VARCHAR2(64),
   USER_ACCOUNT_        VARCHAR2(64),
   USER_CODE_           VARCHAR2(64),
   NAME_                VARCHAR2(64),
   TEL_                 VARCHAR2(64),
   MAIL_                VARCHAR2(512),
   USN_CREATED_         VARCHAR2(64),
   USN_CHANGED_         VARCHAR2(64),
   WHEN_CREATED_        VARCHAR2(64),
   WHEN_CHANGED_        VARCHAR2(64),
   STATUS_              VARCHAR2(64),
   USER_PRINCIPAL_NAME_ VARCHAR2(512),
   DN_                  VARCHAR2(512),
   OC_                  VARCHAR2(512),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_SYS_LDAP_CN PRIMARY KEY (SYS_LDAP_USER_ID_)
);

COMMENT ON TABLE SYS_LDAP_CN IS
'SYS_LDAP_CN��LADP�û���';

COMMENT ON COLUMN SYS_LDAP_CN.SYS_LDAP_USER_ID_ IS
'LDAP�û���������';

COMMENT ON COLUMN SYS_LDAP_CN.SYS_LDAP_OU_ID_ IS
'��֯��Ԫ��������';

COMMENT ON COLUMN SYS_LDAP_CN.USER_ACCOUNT_ IS
'�˻�';

COMMENT ON COLUMN SYS_LDAP_CN.USER_CODE_ IS
'�û����';

COMMENT ON COLUMN SYS_LDAP_CN.NAME_ IS
'����';

COMMENT ON COLUMN SYS_LDAP_CN.TEL_ IS
'�绰';

COMMENT ON COLUMN SYS_LDAP_CN.MAIL_ IS
'�ʼ�';

COMMENT ON COLUMN SYS_LDAP_CN.USN_CREATED_ IS
'USN_CREATED';

COMMENT ON COLUMN SYS_LDAP_CN.USN_CHANGED_ IS
'USN_CHANGED';

COMMENT ON COLUMN SYS_LDAP_CN.WHEN_CREATED_ IS
'LDAP����ʱ��';

COMMENT ON COLUMN SYS_LDAP_CN.WHEN_CHANGED_ IS
'LDAP����ʱ��';

COMMENT ON COLUMN SYS_LDAP_CN.STATUS_ IS
'״̬';

COMMENT ON COLUMN SYS_LDAP_CN.USER_PRINCIPAL_NAME_ IS
'�û���Ҫ����';

COMMENT ON COLUMN SYS_LDAP_CN.DN_ IS
'������';

COMMENT ON COLUMN SYS_LDAP_CN.OC_ IS
'��������';

COMMENT ON COLUMN SYS_LDAP_CN.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN SYS_LDAP_CN.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_LDAP_CN.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_LDAP_CN.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_LDAP_CN.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: SYS_LDAP_CONFIG                                       */
/*==============================================================*/
CREATE TABLE SYS_LDAP_CONFIG  (
   SYS_LDAP_CONFIG_ID_  VARCHAR2(64)                    NOT NULL,
   STATUS_              VARCHAR2(64),
   STATUS_CN_           VARCHAR2(64),
   DN_BASE_             VARCHAR2(1024),
   DN_DATUM_            VARCHAR2(1024),
   URL_                 VARCHAR2(1024),
   ACCOUNT_             VARCHAR2(64),
   PASSWORD_            VARCHAR2(64),
   DEPT_FILTER_         VARCHAR2(1024),
   USER_FILTER_         VARCHAR2(1024),
   ATT_USER_NO_         VARCHAR2(64),
   ATT_USER_ACC_        VARCHAR2(64),
   ATT_USER_NAME_       VARCHAR2(64),
   ATT_USER_PWD_        VARCHAR2(1024),
   ATT_USER_TEL_        VARCHAR2(64),
   ATT_USER_MAIL_       VARCHAR2(64),
   ATT_DEPT_NAME_       VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_SYS_LDAP_CONFIG PRIMARY KEY (SYS_LDAP_CONFIG_ID_)
);

COMMENT ON COLUMN SYS_LDAP_CONFIG.SYS_LDAP_CONFIG_ID_ IS
'LDAP����(����)';

COMMENT ON COLUMN SYS_LDAP_CONFIG.STATUS_ IS
'״̬';

COMMENT ON COLUMN SYS_LDAP_CONFIG.STATUS_CN_ IS
'״̬';

COMMENT ON COLUMN SYS_LDAP_CONFIG.DN_BASE_ IS
'����DN';

COMMENT ON COLUMN SYS_LDAP_CONFIG.DN_DATUM_ IS
'��׼DN';

COMMENT ON COLUMN SYS_LDAP_CONFIG.URL_ IS
'��ַ';

COMMENT ON COLUMN SYS_LDAP_CONFIG.ACCOUNT_ IS
'�˺�����';

COMMENT ON COLUMN SYS_LDAP_CONFIG.PASSWORD_ IS
'����';

COMMENT ON COLUMN SYS_LDAP_CONFIG.DEPT_FILTER_ IS
'���Ź�����';

COMMENT ON COLUMN SYS_LDAP_CONFIG.USER_FILTER_ IS
'�û�������';

COMMENT ON COLUMN SYS_LDAP_CONFIG.ATT_USER_NO_ IS
'�û��������';

COMMENT ON COLUMN SYS_LDAP_CONFIG.ATT_USER_ACC_ IS
'�û��˻�����';

COMMENT ON COLUMN SYS_LDAP_CONFIG.ATT_USER_NAME_ IS
'�û���������';

COMMENT ON COLUMN SYS_LDAP_CONFIG.ATT_USER_PWD_ IS
'�û���������';

COMMENT ON COLUMN SYS_LDAP_CONFIG.ATT_USER_TEL_ IS
'�û��绰����';

COMMENT ON COLUMN SYS_LDAP_CONFIG.ATT_USER_MAIL_ IS
'�û��ʼ�����';

COMMENT ON COLUMN SYS_LDAP_CONFIG.ATT_DEPT_NAME_ IS
'������������';

COMMENT ON COLUMN SYS_LDAP_CONFIG.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN SYS_LDAP_CONFIG.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_LDAP_CONFIG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_LDAP_CONFIG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_LDAP_CONFIG.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: SYS_LDAP_LOG                                          */
/*==============================================================*/
CREATE TABLE SYS_LDAP_LOG  (
   LOG_ID_              VARCHAR2(64)                    NOT NULL,
   LOG_NAME_            VARCHAR2(256),
   CONTENT_             CLOB,
   START_TIME_          DATE,
   END_TIME_            DATE,
   RUN_TIME_            INTEGER,
   STATUS_              VARCHAR2(64),
   SYNC_TYPE_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_SYS_LDAP_LOG PRIMARY KEY (LOG_ID_)
);

COMMENT ON TABLE SYS_LDAP_LOG IS
'SYS_LDAP_LOG��LDAPͬ����־��
';

COMMENT ON COLUMN SYS_LDAP_LOG.LOG_ID_ IS
'��־����';

COMMENT ON COLUMN SYS_LDAP_LOG.LOG_NAME_ IS
'��־����';

COMMENT ON COLUMN SYS_LDAP_LOG.CONTENT_ IS
'��־����';

COMMENT ON COLUMN SYS_LDAP_LOG.START_TIME_ IS
'��ʼʱ��';

COMMENT ON COLUMN SYS_LDAP_LOG.END_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_LDAP_LOG.RUN_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_LDAP_LOG.STATUS_ IS
'״̬';

COMMENT ON COLUMN SYS_LDAP_LOG.SYNC_TYPE_ IS
'ͬ������';

COMMENT ON COLUMN SYS_LDAP_LOG.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN SYS_LDAP_LOG.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_LDAP_LOG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_LDAP_LOG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_LDAP_LOG.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: SYS_LDAP_OU                                           */
/*==============================================================*/
CREATE TABLE SYS_LDAP_OU  (
   SYS_LDAP_OU_ID_      VARCHAR2(64)                    NOT NULL,
   GROUP_ID_            VARCHAR2(64),
   SN_                  INTEGER,
   DEPTH_               INTEGER,
   PATH_                VARCHAR2(1024),
   PARENT_ID_           VARCHAR2(64),
   STATUS_              VARCHAR2(64),
   OU_                  VARCHAR2(512),
   NAME_                VARCHAR2(512),
   DN_                  VARCHAR2(512),
   OC_                  VARCHAR2(512),
   USN_CREATED_         VARCHAR2(64),
   USN_CHANGED_         VARCHAR2(64),
   WHEN_CREATED_        VARCHAR2(64),
   WHEN_CHANGED_        VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_SYS_LDAP_OU PRIMARY KEY (SYS_LDAP_OU_ID_)
);

COMMENT ON TABLE SYS_LDAP_OU IS
'SYS_LDAP_OU��LDAP��֯��Ԫ��';

COMMENT ON COLUMN SYS_LDAP_OU.SYS_LDAP_OU_ID_ IS
'��֯��Ԫ��������';

COMMENT ON COLUMN SYS_LDAP_OU.GROUP_ID_ IS
'�û���ID';

COMMENT ON COLUMN SYS_LDAP_OU.SN_ IS
'���';

COMMENT ON COLUMN SYS_LDAP_OU.DEPTH_ IS
'���';

COMMENT ON COLUMN SYS_LDAP_OU.PATH_ IS
'·��';

COMMENT ON COLUMN SYS_LDAP_OU.PARENT_ID_ IS
'��Ŀ¼';

COMMENT ON COLUMN SYS_LDAP_OU.STATUS_ IS
'״̬';

COMMENT ON COLUMN SYS_LDAP_OU.OU_ IS
'��֯��Ԫ';

COMMENT ON COLUMN SYS_LDAP_OU.NAME_ IS
'��֯��Ԫ����';

COMMENT ON COLUMN SYS_LDAP_OU.DN_ IS
'������';

COMMENT ON COLUMN SYS_LDAP_OU.OC_ IS
'��������';

COMMENT ON COLUMN SYS_LDAP_OU.USN_CREATED_ IS
'USN_CREATED';

COMMENT ON COLUMN SYS_LDAP_OU.USN_CHANGED_ IS
'USN_CHANGED';

COMMENT ON COLUMN SYS_LDAP_OU.WHEN_CREATED_ IS
'LDAP����ʱ��';

COMMENT ON COLUMN SYS_LDAP_OU.WHEN_CHANGED_ IS
'LDAP����ʱ��';

COMMENT ON COLUMN SYS_LDAP_OU.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN SYS_LDAP_OU.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_LDAP_OU.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_LDAP_OU.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_LDAP_OU.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: SYS_LOG                                               */
/*==============================================================*/
CREATE TABLE SYS_LOG  (
   LOG_ID_              VARCHAR2(64)                    NOT NULL,
   OP_SUBJECT_          VARCHAR2(256)                   NOT NULL,
   OP_DESCP_            CLOB,
   OP_USID_             VARCHAR2(64)                    NOT NULL,
   EXE_CLS_METHOD_      VARCHAR2(256)                   NOT NULL,
   ERR_LOG_             CLOB                            NOT NULL,
   CREATE_TIME_         DATE                            NOT NULL,
   CONSTRAINT PK_SYS_LOG PRIMARY KEY (LOG_ID_)
);

COMMENT ON TABLE SYS_LOG IS
'ϵͳ��־';

COMMENT ON COLUMN SYS_LOG.LOG_ID_ IS
'��־ID';

COMMENT ON COLUMN SYS_LOG.OP_SUBJECT_ IS
'��������';

COMMENT ON COLUMN SYS_LOG.OP_DESCP_ IS
'��������';

COMMENT ON COLUMN SYS_LOG.OP_USID_ IS
'������ID';

COMMENT ON COLUMN SYS_LOG.EXE_CLS_METHOD_ IS
'ִ�е���ϸ�༰����';

COMMENT ON COLUMN SYS_LOG.ERR_LOG_ IS
'������ϸ��־';

COMMENT ON COLUMN SYS_LOG.CREATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_LOG_CONF                                          */
/*==============================================================*/
CREATE TABLE SYS_LOG_CONF  (
   CONF_ID_             VARCHAR2(64)                    NOT NULL,
   LEVEL_               VARCHAR2(30)                    NOT NULL,
   PATH_                VARCHAR2(255)                   NOT NULL,
   IS_ENABLED_          VARCHAR2(20)                    NOT NULL,
   CAT_                 VARCHAR2(100)                   NOT NULL,
   CONSTRAINT PK_SYS_LOG_CONF PRIMARY KEY (CONF_ID_)
);

COMMENT ON TABLE SYS_LOG_CONF IS
'��־����';

COMMENT ON COLUMN SYS_LOG_CONF.CONF_ID_ IS
'����ID';

COMMENT ON COLUMN SYS_LOG_CONF.LEVEL_ IS
'�ȼ�';

COMMENT ON COLUMN SYS_LOG_CONF.PATH_ IS
'����·��';

COMMENT ON COLUMN SYS_LOG_CONF.IS_ENABLED_ IS
'�Ƿ���';

COMMENT ON COLUMN SYS_LOG_CONF.CAT_ IS
'��־����';

/*==============================================================*/
/* Table: SYS_MENU                                              */
/*==============================================================*/
CREATE TABLE SYS_MENU  (
   "MENU_ID_"           VARCHAR2(64)                    NOT NULL,
   "SYS_ID_"            VARCHAR2(64),
   "NAME_"              VARCHAR2(60)                    NOT NULL,
   "KEY_"               VARCHAR2(80),
   "FORM_"              VARCHAR2(80),
   "ENTITY_NAME_"       VARCHAR2(100),
   "MODULE_ID_"         VARCHAR2(64),
   "ICON_CLS_"          VARCHAR2(32),
   "IMG_"               VARCHAR2(50),
   "PARENT_ID_"         VARCHAR2(64)                    NOT NULL,
   "DEPTH_"             INTEGER,
   "PATH_"              VARCHAR2(256),
   "SN_"                INTEGER,
   "IS_MGR_"            VARCHAR2(10)                    NOT NULL,
   "URL_"               VARCHAR2(256),
   "SHOW_TYPE_"         VARCHAR2(20),
   "IS_BTN_MENU_"       VARCHAR2(20)                    NOT NULL,
   "CHILDS_"            INTEGER,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_MENU PRIMARY KEY ("MENU_ID_")
);

COMMENT ON TABLE SYS_MENU IS
'�˵���Ŀ';

COMMENT ON COLUMN SYS_MENU."SYS_ID_" IS
'������ϵͳ';

COMMENT ON COLUMN SYS_MENU."NAME_" IS
'�˵�����';

COMMENT ON COLUMN SYS_MENU."KEY_" IS
'�˵�Key';

COMMENT ON COLUMN SYS_MENU."FORM_" IS
'ʵ���';

COMMENT ON COLUMN SYS_MENU."ENTITY_NAME_" IS
'ģ��ʵ����';

COMMENT ON COLUMN SYS_MENU."MODULE_ID_" IS
'ģ��ID';

COMMENT ON COLUMN SYS_MENU."ICON_CLS_" IS
'ͼ����ʽ';

COMMENT ON COLUMN SYS_MENU."IMG_" IS
'ͼ��';

COMMENT ON COLUMN SYS_MENU."PARENT_ID_" IS
'�ϼ���ID';

COMMENT ON COLUMN SYS_MENU."DEPTH_" IS
'���';

COMMENT ON COLUMN SYS_MENU."PATH_" IS
'·��';

COMMENT ON COLUMN SYS_MENU."SN_" IS
'���';

COMMENT ON COLUMN SYS_MENU."IS_MGR_" IS
'�Ƿ�Ϊ����˵���
NO=Ϊ�⻧�ɷ��ʵĲ˵� 
YES=Ϊƽ̨����Ա�ɷ��ʵĲ˵�';

COMMENT ON COLUMN SYS_MENU."URL_" IS
'���ʵ�ַURL';

COMMENT ON COLUMN SYS_MENU."SHOW_TYPE_" IS
'���ʷ�ʽ
 ȱʡ��
���´��ڴ�';

COMMENT ON COLUMN SYS_MENU."IS_BTN_MENU_" IS
'��ʾ�Ƿ�Ϊ��ť�˵�
YES=Ϊ��ť�˵�
NO=�ǰ�ť�˵�';

COMMENT ON COLUMN SYS_MENU.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_MENU.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_MENU.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_MENU.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_MENU.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_MODULE                                            */
/*==============================================================*/
CREATE TABLE SYS_MODULE  (
   "MODULE_ID_"         VARCHAR2(64)                    NOT NULL,
   "TITLE_"             VARCHAR2(50)                    NOT NULL,
   "DESCP_"             VARCHAR2(50),
   "REQ_URL_"           VARCHAR2(150),
   "ICON_CLS_"          VARCHAR2(20),
   "SHORT_NAME_"        VARCHAR2(20),
   "SYS_ID_"            VARCHAR2(64),
   "TABLE_NAME_"        VARCHAR2(50),
   "ENTITY_NAME_"       VARCHAR2(100),
   "NAMESPACE_"         VARCHAR2(100),
   "PK_FIELD_"          VARCHAR2(50)                    NOT NULL,
   "PK_DB_FIELD_"       VARCHAR2(50),
   "CODE_FIELD_"        VARCHAR2(50),
   "ORDER_FIELD_"       VARCHAR2(50),
   "DATE_FIELD_"        VARCHAR2(50),
   "YEAR_FIELD_"        VARCHAR2(50),
   "MONTH_FIELD_"       VARCHAR2(50),
   "SENSON_FIELD_"      VARCHAR2(50),
   "FILE_FIELD_"        VARCHAR2(50),
   "IS_ENABLED_"        VARCHAR2(6)                     NOT NULL,
   "ALLOW_AUDIT_"       VARCHAR2(6)                     NOT NULL,
   "ALLOW_APPROVE_"     VARCHAR2(6)                     NOT NULL,
   "HAS_ATTACHS_"       VARCHAR2(6)                     NOT NULL,
   "DEF_ORDER_FIELD_"   VARCHAR2(50),
   "SEQ_CODE_"          VARCHAR2(50),
   "HAS_CHART_"         VARCHAR2(6)                     NOT NULL,
   "HELP_HTML_"         CLOB,
   IS_DEFAULT_          VARCHAR2(8),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_MODULE PRIMARY KEY ("MODULE_ID_")
);

COMMENT ON TABLE SYS_MODULE IS
'ϵͳ����ģ��';

COMMENT ON COLUMN SYS_MODULE."MODULE_ID_" IS
'ģ��ID';

COMMENT ON COLUMN SYS_MODULE."TITLE_" IS
'ģ�����';

COMMENT ON COLUMN SYS_MODULE."DESCP_" IS
'����';

COMMENT ON COLUMN SYS_MODULE."REQ_URL_" IS
'ӳ��URL��ַ';

COMMENT ON COLUMN SYS_MODULE."ICON_CLS_" IS
'icon��ַ��ʽ';

COMMENT ON COLUMN SYS_MODULE."SHORT_NAME_" IS
'���';

COMMENT ON COLUMN SYS_MODULE."SYS_ID_" IS
'������ϵͳ';

COMMENT ON COLUMN SYS_MODULE."TABLE_NAME_" IS
'����';

COMMENT ON COLUMN SYS_MODULE."ENTITY_NAME_" IS
'ʵ����';

COMMENT ON COLUMN SYS_MODULE."NAMESPACE_" IS
'�����ռ�';

COMMENT ON COLUMN SYS_MODULE."PK_FIELD_" IS
'�����ֶ���';

COMMENT ON COLUMN SYS_MODULE."CODE_FIELD_" IS
'�����ֶ���';

COMMENT ON COLUMN SYS_MODULE."ORDER_FIELD_" IS
'�����ֶ���';

COMMENT ON COLUMN SYS_MODULE."DATE_FIELD_" IS
'�����ֶ�';

COMMENT ON COLUMN SYS_MODULE."YEAR_FIELD_" IS
'����ֶ�';

COMMENT ON COLUMN SYS_MODULE."MONTH_FIELD_" IS
'�·��ֶ�';

COMMENT ON COLUMN SYS_MODULE."SENSON_FIELD_" IS
'�����ֶ�';

COMMENT ON COLUMN SYS_MODULE."FILE_FIELD_" IS
'�ļ��ֶ�';

COMMENT ON COLUMN SYS_MODULE."IS_ENABLED_" IS
'�Ƿ�����';

COMMENT ON COLUMN SYS_MODULE."ALLOW_AUDIT_" IS
'�Ƿ����ִ���ռ�';

COMMENT ON COLUMN SYS_MODULE."ALLOW_APPROVE_" IS
'�Ƿ���������';

COMMENT ON COLUMN SYS_MODULE."HAS_ATTACHS_" IS
'�Ƿ��и���';

COMMENT ON COLUMN SYS_MODULE."DEF_ORDER_FIELD_" IS
'ȱʡ�����ֶ�';

COMMENT ON COLUMN SYS_MODULE."SEQ_CODE_" IS
'������ˮ��';

COMMENT ON COLUMN SYS_MODULE."HAS_CHART_" IS
'�Ƿ���ͼ��';

COMMENT ON COLUMN SYS_MODULE."HELP_HTML_" IS
'��������';

COMMENT ON COLUMN SYS_MODULE.IS_DEFAULT_ IS
'�Ƿ�ϵͳĬ��
YES
NO';

COMMENT ON COLUMN SYS_MODULE.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_MODULE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_MODULE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_MODULE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_MODULE.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_QUARTZ_LOG                                        */
/*==============================================================*/
CREATE TABLE SYS_QUARTZ_LOG  (
   LOG_ID_              VARCHAR2(64)                    NOT NULL,
   ALIAS_               VARCHAR2(256),
   JOB_NAME_            VARCHAR2(256),
   TRIGGER_NAME_        VARCHAR2(256),
   CONTENT_             CLOB,
   START_TIME_          DATE,
   END_TIME_            DATE,
   RUN_TIME_            INTEGER,
   STATUS_              VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_QUARTZ_LOG PRIMARY KEY (LOG_ID_)
);

COMMENT ON TABLE SYS_QUARTZ_LOG IS
'��ʱ����־
';

COMMENT ON COLUMN SYS_QUARTZ_LOG.LOG_ID_ IS
'��־??��ID';

COMMENT ON COLUMN SYS_QUARTZ_LOG.ALIAS_ IS
'�������';

COMMENT ON COLUMN SYS_QUARTZ_LOG.JOB_NAME_ IS
'��������';

COMMENT ON COLUMN SYS_QUARTZ_LOG.TRIGGER_NAME_ IS
'�ƻ�����';

COMMENT ON COLUMN SYS_QUARTZ_LOG.CONTENT_ IS
'��־����';

COMMENT ON COLUMN SYS_QUARTZ_LOG.START_TIME_ IS
'��ʼʱ��';

COMMENT ON COLUMN SYS_QUARTZ_LOG.END_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_QUARTZ_LOG.RUN_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_QUARTZ_LOG.STATUS_ IS
'״̬STATUS_';

COMMENT ON COLUMN SYS_QUARTZ_LOG.TENANT_ID_ IS
'����ID';

COMMENT ON COLUMN SYS_QUARTZ_LOG.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_QUARTZ_LOG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_QUARTZ_LOG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_QUARTZ_LOG.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_REPORT                                            */
/*==============================================================*/
CREATE TABLE SYS_REPORT  (
   REP_ID_              VARCHAR2(64)                    NOT NULL,
   "TREE_ID_"           VARCHAR2(64),
   SUBJECT_             VARCHAR2(128)                   NOT NULL,
   KEY_                 VARCHAR2(128),
   DESCP_               VARCHAR2(500)                   NOT NULL,
   FILE_PATH_           VARCHAR2(128)                   NOT NULL,
   SELF_HANDLE_BEAN_    VARCHAR2(100),
   FILE_ID_             VARCHAR2(64),
   IS_DEFAULT_          VARCHAR2(20),
   PARAM_CONFIG_        CLOB,
   ENGINE_              VARCHAR2(30),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   DS_ALIAS_            VARCHAR2(64),
   CONSTRAINT PK_SYS_REPORT PRIMARY KEY (REP_ID_)
);

COMMENT ON TABLE SYS_REPORT IS
'ϵͳ����';

COMMENT ON COLUMN SYS_REPORT.REP_ID_ IS
'����ID';

COMMENT ON COLUMN SYS_REPORT."TREE_ID_" IS
'����Id';

COMMENT ON COLUMN SYS_REPORT.SUBJECT_ IS
'����';

COMMENT ON COLUMN SYS_REPORT.KEY_ IS
'��ʶkey';

COMMENT ON COLUMN SYS_REPORT.DESCP_ IS
'����';

COMMENT ON COLUMN SYS_REPORT.FILE_PATH_ IS
'����ģ���jasper�ļ���·��';

COMMENT ON COLUMN SYS_REPORT.SELF_HANDLE_BEAN_ IS
'��������Զ��崦��Bean';

COMMENT ON COLUMN SYS_REPORT.IS_DEFAULT_ IS
'�Ƿ�ȱʡ
1=ȱʡ
0=��ȱʡ';

COMMENT ON COLUMN SYS_REPORT.PARAM_CONFIG_ IS
'��������';

COMMENT ON COLUMN SYS_REPORT.ENGINE_ IS
'����������棬��ͬʱ֧�ֶ��ֱ����������ͣ���
JasperReport
FineReport';

COMMENT ON COLUMN SYS_REPORT.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_REPORT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_REPORT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_REPORT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_REPORT.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_REPORT.DS_ALIAS_ IS
'����Դ';

/*==============================================================*/
/* Table: SYS_RES_AUTH                                          */
/*==============================================================*/
CREATE TABLE SYS_RES_AUTH  (
   AUTH_ID_             VARCHAR2(64)                    NOT NULL,
   RES_ID_              VARCHAR2(64)                    NOT NULL,
   GROUP_ID_            VARCHAR2(64)                    NOT NULL,
   RES_TYPE_            VARCHAR2(80)                    NOT NULL,
   RIGHT_               VARCHAR2(20)                    NOT NULL,
   VISIT_SUB_           VARCHAR2(20),
   CONSTRAINT PK_SYS_RES_AUTH PRIMARY KEY (AUTH_ID_)
);

COMMENT ON TABLE SYS_RES_AUTH IS
'ϵͳ��ԴȨ�ޱ�';

COMMENT ON COLUMN SYS_RES_AUTH.AUTH_ID_ IS
'��ȨID';

COMMENT ON COLUMN SYS_RES_AUTH.RES_ID_ IS
'��Դ��������ֵΪ��ͬ�������';

COMMENT ON COLUMN SYS_RES_AUTH.GROUP_ID_ IS
'�û���ID';

COMMENT ON COLUMN SYS_RES_AUTH.RES_TYPE_ IS
'��Դ����
��ʱʹ�ñ���';

COMMENT ON COLUMN SYS_RES_AUTH.RIGHT_ IS
'Ȩ��
ALL=����Ȩ��
GET=�鿴
DEL=ɾ��
EDIT=�༭
QERY=��ѯ
';

COMMENT ON COLUMN SYS_RES_AUTH.VISIT_SUB_ IS
'YES
NO';

/*==============================================================*/
/* Table: SYS_SEARCH                                            */
/*==============================================================*/
CREATE TABLE SYS_SEARCH  (
   SEARCH_ID_           VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(100)                   NOT NULL,
   ENTITY_NAME_         VARCHAR2(100)                   NOT NULL,
   ENABLED_             VARCHAR2(8)                     NOT NULL,
   IS_DEFAULT_          VARCHAR2(8),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_SEARCH PRIMARY KEY (SEARCH_ID_)
);

COMMENT ON TABLE SYS_SEARCH IS
'�߼�����';

COMMENT ON COLUMN SYS_SEARCH.NAME_ IS
'��������';

COMMENT ON COLUMN SYS_SEARCH.ENTITY_NAME_ IS
'ʵ������';

COMMENT ON COLUMN SYS_SEARCH.ENABLED_ IS
'�Ƿ�����';

COMMENT ON COLUMN SYS_SEARCH.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_SEARCH.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_SEARCH.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_SEARCH.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_SEARCH.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_SEARCH_ITEM                                       */
/*==============================================================*/
CREATE TABLE SYS_SEARCH_ITEM  (
   ITEM_ID_             VARCHAR2(64)                    NOT NULL,
   SEARCH_ID_           VARCHAR2(64)                    NOT NULL,
   NODE_TYPE_           VARCHAR2(20)                    NOT NULL,
   NODE_TYPE_LABEL_     VARCHAR2(20),
   PARENT_ID_           VARCHAR2(64)                    NOT NULL,
   PATH_                VARCHAR2(256),
   SN_                  INTEGER,
   FIELD_TYPE_          VARCHAR2(20),
   LABEL_               VARCHAR2(100)                   NOT NULL,
   FIELD_OP_            VARCHAR2(20),
   FIELD_OP_LABEL_      VARCHAR2(32),
   FIELD_TITLE_         VARCHAR2(50),
   FIELD_ID_            VARCHAR2(64),
   FIELD_NAME_          VARCHAR2(64),
   FIELD_VAL_           VARCHAR2(80),
   CTL_TYPE_            VARCHAR2(50),
   FORMAT_              VARCHAR2(50),
   PRE_HANDLE_          CLOB,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_SEARCH_ITEM PRIMARY KEY (ITEM_ID_)
);

COMMENT ON TABLE SYS_SEARCH_ITEM IS
'����������';

COMMENT ON COLUMN SYS_SEARCH_ITEM.NODE_TYPE_ IS
'��������';

COMMENT ON COLUMN SYS_SEARCH_ITEM.PARENT_ID_ IS
'��ID';

COMMENT ON COLUMN SYS_SEARCH_ITEM.PATH_ IS
'·��';

COMMENT ON COLUMN SYS_SEARCH_ITEM.FIELD_TYPE_ IS
'�ֶ�����';

COMMENT ON COLUMN SYS_SEARCH_ITEM.LABEL_ IS
'������ǩ';

COMMENT ON COLUMN SYS_SEARCH_ITEM.FIELD_TITLE_ IS
'�ֶα�ǩ';

COMMENT ON COLUMN SYS_SEARCH_ITEM.FIELD_ID_ IS
'�ֶ�ID';

COMMENT ON COLUMN SYS_SEARCH_ITEM.FIELD_NAME_ IS
'�ֶ�����';

COMMENT ON COLUMN SYS_SEARCH_ITEM.FIELD_VAL_ IS
'�ֶ�ֵ';

COMMENT ON COLUMN SYS_SEARCH_ITEM.CTL_TYPE_ IS
'�ؼ�����';

COMMENT ON COLUMN SYS_SEARCH_ITEM.FORMAT_ IS
'ֵ��ʽ';

COMMENT ON COLUMN SYS_SEARCH_ITEM.PRE_HANDLE_ IS
'Ԥ����';

COMMENT ON COLUMN SYS_SEARCH_ITEM.TENANT_ID_ IS
'����ID';

COMMENT ON COLUMN SYS_SEARCH_ITEM.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_SEARCH_ITEM.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_SEARCH_ITEM.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_SEARCH_ITEM.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_SEQ_ID                                            */
/*==============================================================*/
CREATE TABLE SYS_SEQ_ID  (
   SEQ_ID_              VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(80)                    NOT NULL,
   ALIAS_               VARCHAR2(50),
   CUR_DATE_            DATE,
   RULE_                VARCHAR2(100)                   NOT NULL,
   RULE_CONF_           VARCHAR2(512),
   INIT_VAL_            INTEGER,
   GEN_TYPE_            VARCHAR2(20),
   LEN_                 INTEGER,
   CUR_VAL              INTEGER,
   STEP_                SMALLINT,
   MEMO_                VARCHAR2(512),
   IS_DEFAULT_          VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_SEQ_ID PRIMARY KEY (SEQ_ID_)
);

COMMENT ON TABLE SYS_SEQ_ID IS
'ϵͳ��ˮ��';

COMMENT ON COLUMN SYS_SEQ_ID.SEQ_ID_ IS
'��ˮ��ID';

COMMENT ON COLUMN SYS_SEQ_ID.NAME_ IS
'����';

COMMENT ON COLUMN SYS_SEQ_ID.ALIAS_ IS
'����';

COMMENT ON COLUMN SYS_SEQ_ID.CUR_DATE_ IS
'��ǰ����';

COMMENT ON COLUMN SYS_SEQ_ID.RULE_ IS
'����';

COMMENT ON COLUMN SYS_SEQ_ID.RULE_CONF_ IS
'��������';

COMMENT ON COLUMN SYS_SEQ_ID.INIT_VAL_ IS
'��ʼֵ';

COMMENT ON COLUMN SYS_SEQ_ID.GEN_TYPE_ IS
'���ɷ�ʽ
DAY=ÿ��
WEEK=ÿ��
MONTH=ÿ��
YEAR=ÿ��
AUTO=һֱ����';

COMMENT ON COLUMN SYS_SEQ_ID.LEN_ IS
'��ˮ�ų���';

COMMENT ON COLUMN SYS_SEQ_ID.CUR_VAL IS
'��ǰֵ';

COMMENT ON COLUMN SYS_SEQ_ID.STEP_ IS
'����';

COMMENT ON COLUMN SYS_SEQ_ID.MEMO_ IS
'��ע';

COMMENT ON COLUMN SYS_SEQ_ID.IS_DEFAULT_ IS
'ϵͳȱʡ
YES
NO';

COMMENT ON COLUMN SYS_SEQ_ID.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_SEQ_ID.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_SEQ_ID.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_SEQ_ID.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_SEQ_ID.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_SUBSYS                                            */
/*==============================================================*/
CREATE TABLE SYS_SUBSYS  (
   "SYS_ID_"            VARCHAR2(64)                    NOT NULL,
   "NAME_"              VARCHAR2(80)                    NOT NULL,
   "KEY_"               VARCHAR2(64)                    NOT NULL,
   "LOGO_"              VARCHAR2(120),
   "IS_DEFAULT_"        VARCHAR2(12)                    NOT NULL,
   "HOME_URL_"          VARCHAR2(120),
   "STATUS_"            VARCHAR2(20)                    NOT NULL,
   "DESCP_"             VARCHAR2(256),
   ICON_CLS_            VARCHAR2(50),
   SN_                  INTEGER,
   IS_SAAS_             VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_SUBSYS PRIMARY KEY ("SYS_ID_")
);

COMMENT ON TABLE SYS_SUBSYS IS
'��ϵͳ';

COMMENT ON COLUMN SYS_SUBSYS."NAME_" IS
'ϵͳ����';

COMMENT ON COLUMN SYS_SUBSYS."KEY_" IS
'ϵͳKey';

COMMENT ON COLUMN SYS_SUBSYS."LOGO_" IS
'ϵͳLogo';

COMMENT ON COLUMN SYS_SUBSYS."IS_DEFAULT_" IS
'�Ƿ�ȱʡ';

COMMENT ON COLUMN SYS_SUBSYS."HOME_URL_" IS
'��ҳ��ַ';

COMMENT ON COLUMN SYS_SUBSYS."STATUS_" IS
'״̬
YES/NO';

COMMENT ON COLUMN SYS_SUBSYS."DESCP_" IS
'����';

COMMENT ON COLUMN SYS_SUBSYS.ICON_CLS_ IS
'ͼ����ʽ';

COMMENT ON COLUMN SYS_SUBSYS.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_SUBSYS.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_SUBSYS.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_SUBSYS.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_SUBSYS.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_TEMPLATE                                          */
/*==============================================================*/
CREATE TABLE SYS_TEMPLATE  (
   TEMP_ID_             VARCHAR2(64)                    NOT NULL,
   "TREE_ID_"           VARCHAR2(64),
   NAME_                VARCHAR2(80)                    NOT NULL,
   KEY_                 VARCHAR2(50)                    NOT NULL,
   CAT_KEY_             VARCHAR2(64)                    NOT NULL,
   IS_DEFAULT_          VARCHAR2(20)                    NOT NULL,
   CONTENT_             CLOB                            NOT NULL,
   DESCP                VARCHAR2(500),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_TEMPLATE PRIMARY KEY (TEMP_ID_)
);

COMMENT ON TABLE SYS_TEMPLATE IS
'ϵͳģ��';

COMMENT ON COLUMN SYS_TEMPLATE.TEMP_ID_ IS
'ģ��ID';

COMMENT ON COLUMN SYS_TEMPLATE."TREE_ID_" IS
'����Id';

COMMENT ON COLUMN SYS_TEMPLATE.NAME_ IS
'ģ������';

COMMENT ON COLUMN SYS_TEMPLATE.KEY_ IS
'ģ��KEY';

COMMENT ON COLUMN SYS_TEMPLATE.CAT_KEY_ IS
'ģ�����Key';

COMMENT ON COLUMN SYS_TEMPLATE.IS_DEFAULT_ IS
'�Ƿ�ϵͳȱʡ';

COMMENT ON COLUMN SYS_TEMPLATE.CONTENT_ IS
'ģ������';

COMMENT ON COLUMN SYS_TEMPLATE.DESCP IS
'ģ������';

COMMENT ON COLUMN SYS_TEMPLATE.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_TEMPLATE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_TEMPLATE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_TEMPLATE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_TEMPLATE.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_TREE                                              */
/*==============================================================*/
CREATE TABLE SYS_TREE  (
   "TREE_ID_"           VARCHAR2(64)                    NOT NULL,
   "NAME_"              VARCHAR2(128)                   NOT NULL,
   "PATH_"              VARCHAR2(1024),
   "DEPTH_"             INTEGER                         NOT NULL,
   "PARENT_ID_"         VARCHAR2(64),
   "KEY_"               VARCHAR2(64)                    NOT NULL,
   "CODE_"              VARCHAR2(50),
   "DESCP_"             VARCHAR2(512),
   "CAT_KEY_"           VARCHAR2(64)                    NOT NULL,
   "SN_"                INTEGER                         NOT NULL,
   "DATA_SHOW_TYPE_"    VARCHAR2(20),
   CHILDS_              INTEGER,
   USER_ID_             VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_TREE PRIMARY KEY ("TREE_ID_")
);

COMMENT ON TABLE SYS_TREE IS
'ϵͳ������
������ʾ����νṹ�ķ���
���������κβ�νṹ';

COMMENT ON COLUMN SYS_TREE."TREE_ID_" IS
'����Id';

COMMENT ON COLUMN SYS_TREE."NAME_" IS
'����';

COMMENT ON COLUMN SYS_TREE."PATH_" IS
'·��';

COMMENT ON COLUMN SYS_TREE."DEPTH_" IS
'���';

COMMENT ON COLUMN SYS_TREE."PARENT_ID_" IS
'���ڵ�';

COMMENT ON COLUMN SYS_TREE."KEY_" IS
'�ڵ�ķ���Key';

COMMENT ON COLUMN SYS_TREE."CODE_" IS
'ͬ������';

COMMENT ON COLUMN SYS_TREE."DESCP_" IS
'����';

COMMENT ON COLUMN SYS_TREE."CAT_KEY_" IS
'ϵͳ������key';

COMMENT ON COLUMN SYS_TREE."SN_" IS
'���';

COMMENT ON COLUMN SYS_TREE."DATA_SHOW_TYPE_" IS
'������չʾ����
Ĭ��Ϊ:FLAT=ƽ������
TREE=������';

COMMENT ON COLUMN SYS_TREE.USER_ID_ IS
'�û�ID
���������û�ID,�ɿ�';

COMMENT ON COLUMN SYS_TREE.TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN SYS_TREE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_TREE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_TREE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_TREE.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: SYS_TREE_CAT                                          */
/*==============================================================*/
CREATE TABLE SYS_TREE_CAT  (
   "CAT_ID_"            VARCHAR2(64)                    NOT NULL,
   "KEY_"               VARCHAR2(64)                    NOT NULL,
   "NAME_"              VARCHAR2(64)                    NOT NULL,
   "SN_"                INTEGER,
   "DESCP_"             VARCHAR2(255),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_SYS_TREE_CAT PRIMARY KEY ("CAT_ID_")
);

COMMENT ON TABLE SYS_TREE_CAT IS
'ϵͳ����������';

COMMENT ON COLUMN SYS_TREE_CAT."KEY_" IS
'����Key';

COMMENT ON COLUMN SYS_TREE_CAT."NAME_" IS
'��������';

COMMENT ON COLUMN SYS_TREE_CAT."SN_" IS
'���';

COMMENT ON COLUMN SYS_TREE_CAT."DESCP_" IS
'����';

COMMENT ON COLUMN SYS_TREE_CAT.TENANT_ID_ IS
'�����û�Id';

COMMENT ON COLUMN SYS_TREE_CAT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_TREE_CAT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN SYS_TREE_CAT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN SYS_TREE_CAT.UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: TASK_NODE_MSG                                         */
/*==============================================================*/
CREATE TABLE TASK_NODE_MSG  (
   MSG_ID_              VARCHAR2(64)                    NOT NULL,
   SUBJECT_             VARCHAR2(128),
   CONTENT_             VARCHAR2(4000),
   LINKED_              VARCHAR2(512),
   TASK_ID_             VARCHAR2(64),
   TASK_NODE_NAME_      VARCHAR2(128),
   DEPLOY_ID_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_TASK_NODE_MSG PRIMARY KEY (MSG_ID_)
);

COMMENT ON TABLE TASK_NODE_MSG IS
'����ڵ���Ϣ��(���ڵ���������)

';

COMMENT ON COLUMN TASK_NODE_MSG.MSG_ID_ IS
'��ϢID';

COMMENT ON COLUMN TASK_NODE_MSG.SUBJECT_ IS
'����';

COMMENT ON COLUMN TASK_NODE_MSG.CONTENT_ IS
'����';

COMMENT ON COLUMN TASK_NODE_MSG.LINKED_ IS
'����';

COMMENT ON COLUMN TASK_NODE_MSG.TASK_ID_ IS
'����ID';

COMMENT ON COLUMN TASK_NODE_MSG.TASK_NODE_NAME_ IS
'����ڵ�����';

COMMENT ON COLUMN TASK_NODE_MSG.DEPLOY_ID_ IS
'����ID';

COMMENT ON COLUMN TASK_NODE_MSG.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN TASK_NODE_MSG.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN TASK_NODE_MSG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN TASK_NODE_MSG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN TASK_NODE_MSG.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: TASK_TIP_MSG                                          */
/*==============================================================*/
CREATE TABLE TASK_TIP_MSG  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   TASK_ID_             VARCHAR2(64),
   SENDER_ID_           VARCHAR2(64),
   SENDER_TIME_         DATE,
   RECEIVER_ID_         VARCHAR2(64),
   SUBJECT_             VARCHAR2(256),
   CONTENT_             VARCHAR2(4000),
   LINKED_              VARCHAR2(512),
   SENDBACK_STATUS_     VARCHAR2(2),
   SHORT_CONTENT_       VARCHAR2(128),
   STATUS_              VARCHAR2(2),
   IMPORTANT_STATUS_    VARCHAR2(2),
   MSG_STATUS_          VARCHAR2(32),
   READ_TIME_           DATE,
   GEN_TIME_            DATE,
   ISINVALID_           VARCHAR2(64),
   INCALID_TIME_        DATE,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_TASK_TIP_MSG PRIMARY KEY (ID_)
);

COMMENT ON TABLE TASK_TIP_MSG IS
'������ʾ��Ϣ��(���ڵ���������)

';

COMMENT ON COLUMN TASK_TIP_MSG.ID_ IS
'��ʾID';

COMMENT ON COLUMN TASK_TIP_MSG.TASK_ID_ IS
'����ID';

COMMENT ON COLUMN TASK_TIP_MSG.SENDER_ID_ IS
'������ID';

COMMENT ON COLUMN TASK_TIP_MSG.SENDER_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN TASK_TIP_MSG.RECEIVER_ID_ IS
'������ID';

COMMENT ON COLUMN TASK_TIP_MSG.SUBJECT_ IS
'����';

COMMENT ON COLUMN TASK_TIP_MSG.CONTENT_ IS
'����';

COMMENT ON COLUMN TASK_TIP_MSG.LINKED_ IS
'����';

COMMENT ON COLUMN TASK_TIP_MSG.SENDBACK_STATUS_ IS
'����״̬';

COMMENT ON COLUMN TASK_TIP_MSG.SHORT_CONTENT_ IS
'���';

COMMENT ON COLUMN TASK_TIP_MSG.STATUS_ IS
'״̬';

COMMENT ON COLUMN TASK_TIP_MSG.IMPORTANT_STATUS_ IS
'��Ҫ״̬';

COMMENT ON COLUMN TASK_TIP_MSG.MSG_STATUS_ IS
'��Ϣ״̬';

COMMENT ON COLUMN TASK_TIP_MSG.READ_TIME_ IS
'�Ķ�ʱ��';

COMMENT ON COLUMN TASK_TIP_MSG.GEN_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN TASK_TIP_MSG.ISINVALID_ IS
'����';

COMMENT ON COLUMN TASK_TIP_MSG.INCALID_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN TASK_TIP_MSG.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN TASK_TIP_MSG.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN TASK_TIP_MSG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN TASK_TIP_MSG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN TASK_TIP_MSG.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_P_ARTICLE                                          */
/*==============================================================*/
CREATE TABLE WX_P_ARTICLE  (
   ARTICLE_ID_          VARCHAR2(64)                    NOT NULL,
   AUTHOR_              VARCHAR2(255),
   TITLE_               VARCHAR2(255),
   CONTENT_SOURCE_URL_  VARCHAR2(255),
   CONTENT_             CLOB,
   DIGEST_              VARCHAR2(255),
   SHOW_COVER_PIC_      VARCHAR2(64),
   MATERIAL_ID_         VARCHAR2(64),
   FILE_ID_             VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_ARTICLE PRIMARY KEY (ARTICLE_ID_)
);

COMMENT ON TABLE WX_P_ARTICLE IS
'��SAAS΢������';

COMMENT ON COLUMN WX_P_ARTICLE.ARTICLE_ID_ IS
'����';

COMMENT ON COLUMN WX_P_ARTICLE.AUTHOR_ IS
'����';

COMMENT ON COLUMN WX_P_ARTICLE.TITLE_ IS
'����';

COMMENT ON COLUMN WX_P_ARTICLE.CONTENT_SOURCE_URL_ IS
'ԭ���µ�ַ';

COMMENT ON COLUMN WX_P_ARTICLE.CONTENT_ IS
'ͼ����Ϣҳ�������';

COMMENT ON COLUMN WX_P_ARTICLE.DIGEST_ IS
'ͼ����Ϣ������';

COMMENT ON COLUMN WX_P_ARTICLE.SHOW_COVER_PIC_ IS
'�Ƿ���ʾ����';

COMMENT ON COLUMN WX_P_ARTICLE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_ARTICLE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_ARTICLE.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_ARTICLE.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_P_ARTICLE.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_P_CONFIG                                           */
/*==============================================================*/
CREATE TABLE WX_P_CONFIG  (
   CONFIG_ID_           VARCHAR2(64)                    NOT NULL,
   INIT_ID_             VARCHAR2(256),
   TENANT_NAME_CN_      VARCHAR2(256),
   APP_TOKEN_           VARCHAR2(256),
   APP_ID_              VARCHAR2(256),
   APP_SECRET_          VARCHAR2(256),
   ACCESS_TOKEN_        VARCHAR2(256),
   EXPIRES_IN_          VARCHAR2(256),
   EXPIRES_TIME_        INTEGER,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_CONFIG PRIMARY KEY (CONFIG_ID_)
);

COMMENT ON COLUMN WX_P_CONFIG.CONFIG_ID_ IS
'����';

COMMENT ON COLUMN WX_P_CONFIG.INIT_ID_ IS
'ԭʼID';

COMMENT ON COLUMN WX_P_CONFIG.TENANT_NAME_CN_ IS
'�⻧����';

COMMENT ON COLUMN WX_P_CONFIG.APP_TOKEN_ IS
'Ӧ��ƾ֤';

COMMENT ON COLUMN WX_P_CONFIG.APP_ID_ IS
'Ӧ��ID';

COMMENT ON COLUMN WX_P_CONFIG.APP_SECRET_ IS
'Ӧ����Կ';

COMMENT ON COLUMN WX_P_CONFIG.ACCESS_TOKEN_ IS
'��ȡ����ƾ֤(����ƾ֤)';

COMMENT ON COLUMN WX_P_CONFIG.EXPIRES_IN_ IS
'ƾ֤��Чʱ�䣬��λ����';

COMMENT ON COLUMN WX_P_CONFIG.EXPIRES_TIME_ IS
'ƾ֤����ʱ��';

COMMENT ON COLUMN WX_P_CONFIG.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_P_CONFIG.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_CONFIG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_CONFIG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_CONFIG.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_P_MATERIAL                                         */
/*==============================================================*/
CREATE TABLE WX_P_MATERIAL  (
   MATERIAL_ID_         VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(64),
   TYPE_                VARCHAR2(128),
   FILE_ID_             VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_MATERIAL PRIMARY KEY (MATERIAL_ID_)
);

COMMENT ON TABLE WX_P_MATERIAL IS
'��SAAS΢���ز�';

COMMENT ON COLUMN WX_P_MATERIAL.MATERIAL_ID_ IS
'����';

COMMENT ON COLUMN WX_P_MATERIAL.NAME_ IS
'����';

COMMENT ON COLUMN WX_P_MATERIAL.TYPE_ IS
'ý���ļ�����';

COMMENT ON COLUMN WX_P_MATERIAL.FILE_ID_ IS
'�ļ�id';

COMMENT ON COLUMN WX_P_MATERIAL.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_P_MATERIAL.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MATERIAL.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_MATERIAL.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MATERIAL.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_P_MENU                                             */
/*==============================================================*/
CREATE TABLE WX_P_MENU  (
   MENU_ID_             VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(64)                    NOT NULL,
   KEY_                 VARCHAR2(80),
   PARENT_ID_           VARCHAR2(64)                    NOT NULL,
   SN_                  INTEGER,
   URL_                 VARCHAR2(256),
   TYPE_                VARCHAR2(20),
   TREE_CODE_           VARCHAR2(256),
   PATH_                VARCHAR2(1000),
   CHILDS_              INTEGER,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_MENU PRIMARY KEY (MENU_ID_)
);

COMMENT ON COLUMN WX_P_MENU.MENU_ID_ IS
'����';

COMMENT ON COLUMN WX_P_MENU.NAME_ IS
'�˵�����';

COMMENT ON COLUMN WX_P_MENU.KEY_ IS
'�˵�Key';

COMMENT ON COLUMN WX_P_MENU.PARENT_ID_ IS
'�ϼ���ID';

COMMENT ON COLUMN WX_P_MENU.SN_ IS
'���';

COMMENT ON COLUMN WX_P_MENU.URL_ IS
'��???��ַURL';

COMMENT ON COLUMN WX_P_MENU.TYPE_ IS
'���ʷ�ʽ\r\n';

COMMENT ON COLUMN WX_P_MENU.TREE_CODE_ IS
'���ı���';

COMMENT ON COLUMN WX_P_MENU.PATH_ IS
'path';

COMMENT ON COLUMN WX_P_MENU.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_P_MENU.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MENU.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_MENU.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MENU.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_P_MO_TEXT                                          */
/*==============================================================*/
CREATE TABLE WX_P_MO_TEXT  (
   TEXT_ID_             VARCHAR2(64)                    NOT NULL,
   TO_USER_NAEM__       VARCHAR2(256),
   FROM_USER_NAME_      VARCHAR2(256),
   MSG_TYPE_            VARCHAR2(256),
   CONTENT_             CLOB,
   MSGID_               VARCHAR2(256),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_MO_TEXT PRIMARY KEY (TEXT_ID_)
);

COMMENT ON COLUMN WX_P_MO_TEXT.TEXT_ID_ IS
'����';

COMMENT ON COLUMN WX_P_MO_TEXT.TO_USER_NAEM__ IS
'����?????��openID';

COMMENT ON COLUMN WX_P_MO_TEXT.FROM_USER_NAME_ IS
'���͵���???openID';

COMMENT ON COLUMN WX_P_MO_TEXT.MSG_TYPE_ IS
'��Ϣ����';

COMMENT ON COLUMN WX_P_MO_TEXT.CONTENT_ IS
'����';

COMMENT ON COLUMN WX_P_MO_TEXT.MSGID_ IS
'��Ϣid';

COMMENT ON COLUMN WX_P_MO_TEXT.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_MO_TEXT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MO_TEXT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_MO_TEXT.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MO_TEXT.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: WX_P_MSG                                              */
/*==============================================================*/
CREATE TABLE WX_P_MSG  (
   MSG_ID_              VARCHAR2(64)                    NOT NULL,
   AGENTID_             VARCHAR2(64),
   USER_ID_             VARCHAR2(64),
   CONTENT_             CLOB,
   STATUS_              SMALLINT,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_MSG PRIMARY KEY (MSG_ID_)
);

COMMENT ON TABLE WX_P_MSG IS
'΢�Ź�������Ϣ';

COMMENT ON COLUMN WX_P_MSG.MSG_ID_ IS
'����';

COMMENT ON COLUMN WX_P_MSG.AGENTID_ IS
'����Ӧ��ID';

COMMENT ON COLUMN WX_P_MSG.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN WX_P_MSG.CONTENT_ IS
'����';

COMMENT ON COLUMN WX_P_MSG.STATUS_ IS
'״̬';

COMMENT ON COLUMN WX_P_MSG.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_P_MSG.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MSG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_MSG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MSG.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_P_MT_ARTICLE                                       */
/*==============================================================*/
CREATE TABLE WX_P_MT_ARTICLE  (
   MT_ARTICLE_ID_       VARCHAR2(64)                    NOT NULL,
   ARTICLE_ID_          VARCHAR2(64),
   THUMB_MEDIA_ID_      VARCHAR2(255),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_MT_ARTICLE PRIMARY KEY (MT_ARTICLE_ID_)
);

COMMENT ON TABLE WX_P_MT_ARTICLE IS
'΢���µ�����';

COMMENT ON COLUMN WX_P_MT_ARTICLE.MT_ARTICLE_ID_ IS
'����';

COMMENT ON COLUMN WX_P_MT_ARTICLE.THUMB_MEDIA_ID_ IS
'�ز�ID';

COMMENT ON COLUMN WX_P_MT_ARTICLE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_MT_ARTICLE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MT_ARTICLE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_MT_ARTICLE.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MT_ARTICLE.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: WX_P_MT_MATERIAL_TEMP                                 */
/*==============================================================*/
CREATE TABLE WX_P_MT_MATERIAL_TEMP  (
   MT_MATERIAL_TEMP_ID_ VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(64),
   TYPE_                VARCHAR2(128),
   MEDIA_ID_            VARCHAR2(512),
   CREATED_AT_          VARCHAR2(256),
   MATERIAL_ID_         VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_MT_MATERIAL_TEMP PRIMARY KEY (MT_MATERIAL_TEMP_ID_)
);

COMMENT ON COLUMN WX_P_MT_MATERIAL_TEMP.MT_MATERIAL_TEMP_ID_ IS
'����';

COMMENT ON COLUMN WX_P_MT_MATERIAL_TEMP.NAME_ IS
'����';

COMMENT ON COLUMN WX_P_MT_MATERIAL_TEMP.TYPE_ IS
'???���ļ�����';

COMMENT ON COLUMN WX_P_MT_MATERIAL_TEMP.MEDIA_ID_ IS
'ý��id';

COMMENT ON COLUMN WX_P_MT_MATERIAL_TEMP.CREATED_AT_ IS
'΢�Ŵ���ʱ��';

COMMENT ON COLUMN WX_P_MT_MATERIAL_TEMP.MATERIAL_ID_ IS
'�ļ�id';

COMMENT ON COLUMN WX_P_MT_MATERIAL_TEMP.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_MT_MATERIAL_TEMP.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MT_MATERIAL_TEMP.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_MT_MATERIAL_TEMP.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MT_MATERIAL_TEMP.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: WX_P_MT_NEWS                                          */
/*==============================================================*/
CREATE TABLE WX_P_MT_NEWS  (
   MT_NEWS_ID_          VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(256),
   MEDIA_ID_            VARCHAR2(256),
   TYPE_                VARCHAR2(128),
   CREATED_AT_          VARCHAR2(256),
   NEWS_ID_             VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_MT_NEWS PRIMARY KEY (MT_NEWS_ID_)
);

COMMENT ON COLUMN WX_P_MT_NEWS.MT_NEWS_ID_ IS
'����';

COMMENT ON COLUMN WX_P_MT_NEWS.NAME_ IS
'����';

COMMENT ON COLUMN WX_P_MT_NEWS.MEDIA_ID_ IS
'ý������ID';

COMMENT ON COLUMN WX_P_MT_NEWS.TYPE_ IS
'����';

COMMENT ON COLUMN WX_P_MT_NEWS.CREATED_AT_ IS
'΢�Ŵ���ʱ��';

COMMENT ON COLUMN WX_P_MT_NEWS.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_MT_NEWS.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MT_NEWS.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_MT_NEWS.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MT_NEWS.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: WX_P_MT_USER_NEWS                                     */
/*==============================================================*/
CREATE TABLE WX_P_MT_USER_NEWS  (
   MT_USER_NEWS_ID_     VARCHAR2(64)                    NOT NULL,
   MEDIA_ID_            VARCHAR2(256),
   USER_NEWS_ID_        VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_MT_USER_NEWS PRIMARY KEY (MT_USER_NEWS_ID_)
);

COMMENT ON COLUMN WX_P_MT_USER_NEWS.MT_USER_NEWS_ID_ IS
'����';

COMMENT ON COLUMN WX_P_MT_USER_NEWS.MEDIA_ID_ IS
'����Ⱥ����??����Ϣ��media_id';

COMMENT ON COLUMN WX_P_MT_USER_NEWS.USER_NEWS_ID_ IS
'Ⱥ������Ϣ����';

COMMENT ON COLUMN WX_P_MT_USER_NEWS.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_P_MT_USER_NEWS.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MT_USER_NEWS.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_MT_USER_NEWS.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_MT_USER_NEWS.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_P_NEWS                                             */
/*==============================================================*/
CREATE TABLE WX_P_NEWS  (
   NEWS_ID_             VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(256),
   TYPE_                VARCHAR2(128),
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CONSTRAINT PK_WX_P_NEWS PRIMARY KEY (NEWS_ID_)
);

COMMENT ON TABLE WX_P_NEWS IS
'��SAAS΢��ͼ��';

COMMENT ON COLUMN WX_P_NEWS.NEWS_ID_ IS
'����';

COMMENT ON COLUMN WX_P_NEWS.NAME_ IS
'??��';

COMMENT ON COLUMN WX_P_NEWS.TYPE_ IS
'����';

COMMENT ON COLUMN WX_P_NEWS.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_NEWS.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_NEWS.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_P_NEWS.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_NEWS.CREATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: WX_P_NEWS_ARTICLE                                     */
/*==============================================================*/
CREATE TABLE WX_P_NEWS_ARTICLE  (
   NEWS_ARTICLE_ID_     VARCHAR2(64)                    NOT NULL,
   SN_                  INTEGER,
   NEWS_ID_             VARCHAR2(64),
   ARTICLE_ID_          VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_NEWS_ARTICLE PRIMARY KEY (NEWS_ARTICLE_ID_)
);

COMMENT ON TABLE WX_P_NEWS_ARTICLE IS
'��SAAS΢��ͼ��������';

COMMENT ON COLUMN WX_P_NEWS_ARTICLE.NEWS_ARTICLE_ID_ IS
'����';

COMMENT ON COLUMN WX_P_NEWS_ARTICLE.SN_ IS
'���';

COMMENT ON COLUMN WX_P_NEWS_ARTICLE.NEWS_ID_ IS
'ͼ��ID';

COMMENT ON COLUMN WX_P_NEWS_ARTICLE.ARTICLE_ID_ IS
'����ID';

COMMENT ON COLUMN WX_P_NEWS_ARTICLE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_NEWS_ARTICLE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_NEWS_ARTICLE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_NEWS_ARTICLE.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_NEWS_ARTICLE.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: WX_P_SAAS_ARTICLE                                     */
/*==============================================================*/
CREATE TABLE WX_P_SAAS_ARTICLE  (
   ARTICLE_ID_          VARCHAR2(64)                    NOT NULL,
   AUTHOR_              VARCHAR2(255),
   TITLE_               VARCHAR2(255),
   CONTENT_SOURCE_URL_  VARCHAR2(255),
   CONTENT_             CLOB,
   DIGEST_              VARCHAR2(255),
   SHOW_COVER_PIC_      VARCHAR2(64),
   MATERIAL_ID_         VARCHAR2(64),
   FILE_ID_             VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_SAAS_ARTICLE PRIMARY KEY (ARTICLE_ID_)
);

COMMENT ON TABLE WX_P_SAAS_ARTICLE IS
'΢������(SAAS����)';

COMMENT ON COLUMN WX_P_SAAS_ARTICLE.ARTICLE_ID_ IS
'����';

COMMENT ON COLUMN WX_P_SAAS_ARTICLE.AUTHOR_ IS
'����';

COMMENT ON COLUMN WX_P_SAAS_ARTICLE.TITLE_ IS
'����';

COMMENT ON COLUMN WX_P_SAAS_ARTICLE.CONTENT_SOURCE_URL_ IS
'ԭ���µ�ַ';

COMMENT ON COLUMN WX_P_SAAS_ARTICLE.CONTENT_ IS
'ͼ����Ϣҳ�������';

COMMENT ON COLUMN WX_P_SAAS_ARTICLE.DIGEST_ IS
'ͼ����Ϣ������';

COMMENT ON COLUMN WX_P_SAAS_ARTICLE.SHOW_COVER_PIC_ IS
'�Ƿ���ʾ����';

COMMENT ON COLUMN WX_P_SAAS_ARTICLE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_SAAS_ARTICLE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_SAAS_ARTICLE.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_SAAS_ARTICLE.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_P_SAAS_ARTICLE.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_P_SAAS_MATERIAL                                    */
/*==============================================================*/
CREATE TABLE WX_P_SAAS_MATERIAL  (
   MATERIAL_ID_         VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(64),
   TYPE_                VARCHAR2(128),
   FILE_ID_             VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_SAAS_MATERIAL PRIMARY KEY (MATERIAL_ID_)
);

COMMENT ON TABLE WX_P_SAAS_MATERIAL IS
'΢���ز�(SAAS����)';

COMMENT ON COLUMN WX_P_SAAS_MATERIAL.MATERIAL_ID_ IS
'����';

COMMENT ON COLUMN WX_P_SAAS_MATERIAL.NAME_ IS
'����';

COMMENT ON COLUMN WX_P_SAAS_MATERIAL.TYPE_ IS
'ý���ļ�����';

COMMENT ON COLUMN WX_P_SAAS_MATERIAL.FILE_ID_ IS
'�ļ�id';

COMMENT ON COLUMN WX_P_SAAS_MATERIAL.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_P_SAAS_MATERIAL.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_SAAS_MATERIAL.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_SAAS_MATERIAL.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_SAAS_MATERIAL.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_P_SAAS_NEWS                                        */
/*==============================================================*/
CREATE TABLE WX_P_SAAS_NEWS  (
   NEWS_ID_             VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(256),
   TYPE_                VARCHAR2(128),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CONSTRAINT PK_WX_P_SAAS_NEWS PRIMARY KEY (NEWS_ID_)
);

COMMENT ON TABLE WX_P_SAAS_NEWS IS
'΢����Ϣ(SAAS����)';

COMMENT ON COLUMN WX_P_SAAS_NEWS.NEWS_ID_ IS
'����';

COMMENT ON COLUMN WX_P_SAAS_NEWS.NAME_ IS
'??��';

COMMENT ON COLUMN WX_P_SAAS_NEWS.TYPE_ IS
'����';

COMMENT ON COLUMN WX_P_SAAS_NEWS.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_P_SAAS_NEWS.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_SAAS_NEWS.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_SAAS_NEWS.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_SAAS_NEWS.CREATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: WX_P_SAAS_NEWS_ARTICLE                                */
/*==============================================================*/
CREATE TABLE WX_P_SAAS_NEWS_ARTICLE  (
   NEWS_ARTICLE_ID_     VARCHAR2(64)                    NOT NULL,
   SN_                  INTEGER,
   NEWS_ID_             VARCHAR2(64),
   ARTICLE_ID_          VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_SAAS_NEWS_ARTICLE PRIMARY KEY (NEWS_ARTICLE_ID_)
);

COMMENT ON TABLE WX_P_SAAS_NEWS_ARTICLE IS
'΢����Ϣ������(SAAS����)';

COMMENT ON COLUMN WX_P_SAAS_NEWS_ARTICLE.NEWS_ARTICLE_ID_ IS
'����';

COMMENT ON COLUMN WX_P_SAAS_NEWS_ARTICLE.SN_ IS
'���';

COMMENT ON COLUMN WX_P_SAAS_NEWS_ARTICLE.NEWS_ID_ IS
'ͼ��ID';

COMMENT ON COLUMN WX_P_SAAS_NEWS_ARTICLE.ARTICLE_ID_ IS
'����ID';

COMMENT ON COLUMN WX_P_SAAS_NEWS_ARTICLE.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_SAAS_NEWS_ARTICLE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_SAAS_NEWS_ARTICLE.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_SAAS_NEWS_ARTICLE.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_SAAS_NEWS_ARTICLE.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: WX_P_SAAS_USER_NEWS                                   */
/*==============================================================*/
CREATE TABLE WX_P_SAAS_USER_NEWS  (
   USER_NEWS_ID_        VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(256),
   IS_MASS_             VARCHAR2(64),
   TOUSER_              CLOB,
   FULLNAME_            VARCHAR2(64),
   NEWS_ID_             VARCHAR2(64),
   MSGTYPE_             VARCHAR2(128),
   ERRCODE_             VARCHAR2(64),
   STATUS_              SMALLINT,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_SAAS_USER_NEWS PRIMARY KEY (USER_NEWS_ID_)
);

COMMENT ON TABLE WX_P_SAAS_USER_NEWS IS
'΢���û���Ϣ(SAAS����)';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.USER_NEWS_ID_ IS
'����';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.NAME_ IS
'ͼ������';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.IS_MASS_ IS
'�Ƿ�Ⱥ��';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.TOUSER_ IS
'��дͼ����Ϣ�Ľ�����';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.FULLNAME_ IS
'����';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.NEWS_ID_ IS
'ͼ��ID';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.MSGTYPE_ IS
'Ⱥ������Ϣ����';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.ERRCODE_ IS
'������';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.STATUS_ IS
'״̬';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_SAAS_USER_NEWS.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_P_USER                                             */
/*==============================================================*/
CREATE TABLE WX_P_USER  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   USER_ID_             VARCHAR2(64),
   FULLNAME_            VARCHAR2(64),
   WEIXIN_ID_           VARCHAR2(64),
   NICK_NAME_           VARCHAR2(64),
   STATUS_              SMALLINT,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_USER PRIMARY KEY (ID_)
);

COMMENT ON TABLE WX_P_USER IS
'΢�Ź��ں��û�';

COMMENT ON COLUMN WX_P_USER.ID_ IS
'����';

COMMENT ON COLUMN WX_P_USER.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN WX_P_USER.FULLNAME_ IS
'����';

COMMENT ON COLUMN WX_P_USER.WEIXIN_ID_ IS
'΢�ź�ID';

COMMENT ON COLUMN WX_P_USER.NICK_NAME_ IS
'΢���û��ǳ�';

COMMENT ON COLUMN WX_P_USER.STATUS_ IS
'״̬';

COMMENT ON COLUMN WX_P_USER.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_P_USER.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_USER.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_USER.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_USER.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_P_USER_NEWS                                        */
/*==============================================================*/
CREATE TABLE WX_P_USER_NEWS  (
   USER_NEWS_ID_        VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(256),
   TOUSER_              CLOB,
   NEWS_ID_             VARCHAR2(64),
   MSGTYPE_             VARCHAR2(128),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   CONSTRAINT PK_WX_P_USER_NEWS PRIMARY KEY (USER_NEWS_ID_)
);

COMMENT ON TABLE WX_P_USER_NEWS IS
'��SAAS΢���û�ͼ��';

COMMENT ON COLUMN WX_P_USER_NEWS.USER_NEWS_ID_ IS
'����';

COMMENT ON COLUMN WX_P_USER_NEWS.NAME_ IS
'ͼ������';

COMMENT ON COLUMN WX_P_USER_NEWS.TOUSER_ IS
'��дͼ����Ϣ�Ľ�����';

COMMENT ON COLUMN WX_P_USER_NEWS.NEWS_ID_ IS
'ͼ��ID';

COMMENT ON COLUMN WX_P_USER_NEWS.MSGTYPE_ IS
'Ⱥ������Ϣ����';

COMMENT ON COLUMN WX_P_USER_NEWS.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_USER_NEWS.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_USER_NEWS.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_P_USER_NEWS.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_P_USER_NEWS.TENANT_ID_ IS
'���û���ID';

/*==============================================================*/
/* Table: WX_QY_AGENT                                           */
/*==============================================================*/
CREATE TABLE WX_QY_AGENT  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   AGENTID_             VARCHAR2(64),
   NAME_                VARCHAR2(64)                    NOT NULL,
   SQUARE_LOGO_URL_     VARCHAR2(512),
   ROUND_LOGO_URL_      VARCHAR2(512)                   NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_QY_AGENT PRIMARY KEY (ID_)
);

COMMENT ON TABLE WX_QY_AGENT IS
'WX_QY_AGENT��΢����ҵ��Ӧ�á�';

COMMENT ON COLUMN WX_QY_AGENT.ID_ IS
'����';

COMMENT ON COLUMN WX_QY_AGENT.AGENTID_ IS
'����Ӧ��ID';

COMMENT ON COLUMN WX_QY_AGENT.NAME_ IS
'����';

COMMENT ON COLUMN WX_QY_AGENT.SQUARE_LOGO_URL_ IS
'SQUARE_LOGO_URL_';

COMMENT ON COLUMN WX_QY_AGENT.ROUND_LOGO_URL_ IS
'ROUND_LOGO_URL_';

COMMENT ON COLUMN WX_QY_AGENT.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_QY_AGENT.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_QY_AGENT.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_QY_AGENT.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_QY_AGENT.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_QY_CONFIG                                          */
/*==============================================================*/
CREATE TABLE WX_QY_CONFIG  (
   CONFIG_ID_           VARCHAR2(64)                    NOT NULL,
   TENANT_NAME_CN_      VARCHAR2(256),
   APP_TOKEN_           VARCHAR2(256),
   CORP_ID_             VARCHAR2(256),
   CORP_SECRET_         VARCHAR2(256),
   ACCESS_TOKEN_        VARCHAR2(256),
   EXPIRES_IN_          VARCHAR2(256),
   EXPIRES_TIME_        INTEGER,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_QY_CONFIG PRIMARY KEY (CONFIG_ID_)
);

COMMENT ON TABLE WX_QY_CONFIG IS
'WX_QY_CONFIG��΢����ҵ�����á�';

COMMENT ON COLUMN WX_QY_CONFIG.CONFIG_ID_ IS
'����';

COMMENT ON COLUMN WX_QY_CONFIG.TENANT_NAME_CN_ IS
'�⻧����';

COMMENT ON COLUMN WX_QY_CONFIG.APP_TOKEN_ IS
'Ӧ��ƾ֤';

COMMENT ON COLUMN WX_QY_CONFIG.CORP_ID_ IS
'Ӧ��ID';

COMMENT ON COLUMN WX_QY_CONFIG.CORP_SECRET_ IS
'Ӧ����Կ';

COMMENT ON COLUMN WX_QY_CONFIG.ACCESS_TOKEN_ IS
'��ȡ����ƾ֤(����ƾ֤)';

COMMENT ON COLUMN WX_QY_CONFIG.EXPIRES_IN_ IS
'ƾ֤��Чʱ�䣬��λ����';

COMMENT ON COLUMN WX_QY_CONFIG.EXPIRES_TIME_ IS
'ƾ֤����ʱ��';

COMMENT ON COLUMN WX_QY_CONFIG.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_QY_CONFIG.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_QY_CONFIG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_QY_CONFIG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_QY_CONFIG.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_QY_MENU                                            */
/*==============================================================*/
CREATE TABLE WX_QY_MENU  (
   MENU_ID_             VARCHAR2(64)                    NOT NULL,
   AGENT_ID_            VARCHAR2(64),
   NAME_                VARCHAR2(64)                    NOT NULL,
   KEY_                 VARCHAR2(80),
   PARENT_ID_           VARCHAR2(64)                    NOT NULL,
   SN_                  INTEGER,
   URL_                 VARCHAR2(256),
   TYPE_                VARCHAR2(20),
   TREE_CODE_           VARCHAR2(256),
   PATH_                VARCHAR2(1000),
   CHILDS_              INTEGER,
   IS_CUSTOM_           VARCHAR2(10),
   IS_MGR_              VARCHAR2(10),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   CONSTRAINT PK_WX_QY_MENU PRIMARY KEY (MENU_ID_)
);

COMMENT ON TABLE WX_QY_MENU IS
'WX_QY_MENU��΢����ҵ�Ų˵���';

COMMENT ON COLUMN WX_QY_MENU.MENU_ID_ IS
'����';

COMMENT ON COLUMN WX_QY_MENU.AGENT_ID_ IS
'����Ӧ��ID';

COMMENT ON COLUMN WX_QY_MENU.NAME_ IS
'�˵�����';

COMMENT ON COLUMN WX_QY_MENU.KEY_ IS
'�˵�Key';

COMMENT ON COLUMN WX_QY_MENU.PARENT_ID_ IS
'�ϼ���ID';

COMMENT ON COLUMN WX_QY_MENU.SN_ IS
'���';

COMMENT ON COLUMN WX_QY_MENU.URL_ IS
'���ʵ�ַURL';

COMMENT ON COLUMN WX_QY_MENU.TYPE_ IS
'���ʷ�ʽ\r\n';

COMMENT ON COLUMN WX_QY_MENU.TREE_CODE_ IS
'���ı���';

COMMENT ON COLUMN WX_QY_MENU.PATH_ IS
'path';

COMMENT ON COLUMN WX_QY_MENU.IS_CUSTOM_ IS
'�Ƿ�Ϊ�Զ���˵�,NO=Ϊ�̶��˵�,YES=Ϊ�Զ���˵�';

COMMENT ON COLUMN WX_QY_MENU.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_QY_MENU.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_QY_MENU.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_QY_MENU.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_QY_MENU.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_QY_MSG                                             */
/*==============================================================*/
CREATE TABLE WX_QY_MSG  (
   MSG_ID_              VARCHAR2(64)                    NOT NULL,
   AGENTID_             VARCHAR2(64),
   USER_ID_             VARCHAR2(64),
   CONTENT_             CLOB,
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   STATUS_              SMALLINT,
   CONSTRAINT PK_WX_QY_MSG PRIMARY KEY (MSG_ID_)
);

COMMENT ON TABLE WX_QY_MSG IS
'΢����ҵ����Ϣ';

COMMENT ON COLUMN WX_QY_MSG.MSG_ID_ IS
'����';

COMMENT ON COLUMN WX_QY_MSG.AGENTID_ IS
'����Ӧ��ID';

COMMENT ON COLUMN WX_QY_MSG.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN WX_QY_MSG.CONTENT_ IS
'����';

COMMENT ON COLUMN WX_QY_MSG.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_QY_MSG.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_QY_MSG.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_QY_MSG.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_QY_MSG.CREATE_BY_ IS
'������ID';

/*==============================================================*/
/* Table: WX_QY_USER                                            */
/*==============================================================*/
CREATE TABLE WX_QY_USER  (
   ID_                  VARCHAR2(64)                    NOT NULL,
   USER_ID_             VARCHAR2(64),
   WEIXIN_ID_           VARCHAR2(64),
   TENANT_ID_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   CREATE_BY_           VARCHAR2(64),
   STATUS_              SMALLINT,
   CONSTRAINT PK_WX_QY_USER PRIMARY KEY (ID_)
);

COMMENT ON TABLE WX_QY_USER IS
'΢����ҵ���û�';

COMMENT ON COLUMN WX_QY_USER.ID_ IS
'����';

COMMENT ON COLUMN WX_QY_USER.USER_ID_ IS
'�û�ID';

COMMENT ON COLUMN WX_QY_USER.WEIXIN_ID_ IS
'΢�ź�ID';

COMMENT ON COLUMN WX_QY_USER.TENANT_ID_ IS
'���û���ID';

COMMENT ON COLUMN WX_QY_USER.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_QY_USER.UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_QY_USER.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN WX_QY_USER.CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN WX_QY_USER.STATUS_ IS
'״̬';

/*==============================================================*/
/* Table: "HR_DUTY"                                             */
/*==============================================================*/
CREATE TABLE "HR_DUTY"  (
   DUTY_ID_             VARCHAR2(64)                    NOT NULL,
   DUTY_NAME_           VARCHAR2(50)                    NOT NULL,
   SYSTEM_ID_           VARCHAR2(64),
   START_TIME_          DATE                            NOT NULL,
   END_TIME_            DATE                            NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   USER_ID_             CLOB,
   GROUP_ID_            CLOB,
   USER_NAME_           CLOB,
   GROUP_NAME_          CLOB,
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_DUTY PRIMARY KEY (DUTY_ID_)
);

COMMENT ON TABLE "HR_DUTY" IS
'�Ű�';

COMMENT ON COLUMN "HR_DUTY".DUTY_ID_ IS
'�Ű�ID';

COMMENT ON COLUMN "HR_DUTY".DUTY_NAME_ IS
'�Ű�����';

COMMENT ON COLUMN "HR_DUTY".SYSTEM_ID_ IS
'���Ʊ��';

COMMENT ON COLUMN "HR_DUTY".START_TIME_ IS
'��ʼʱ��';

COMMENT ON COLUMN "HR_DUTY".END_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN "HR_DUTY".TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN "HR_DUTY".USER_ID_ IS
'ʹ����ID';

COMMENT ON COLUMN "HR_DUTY".GROUP_ID_ IS
'�û���ID';

COMMENT ON COLUMN "HR_DUTY".USER_NAME_ IS
'ʹ��������';

COMMENT ON COLUMN "HR_DUTY".GROUP_NAME_ IS
'�û�������';

COMMENT ON COLUMN "HR_DUTY".CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_DUTY".CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN "HR_DUTY".UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_DUTY".UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: "HR_DUTY_REGISTER"                                    */
/*==============================================================*/
CREATE TABLE "HR_DUTY_REGISTER"  (
   REGISTER_ID_         VARCHAR2(64)                    NOT NULL,
   REGISTER_TIME_       DATE                            NOT NULL,
   REG_FLAG_            SMALLINT                        NOT NULL,
   REG_MINS_            INTEGER                         NOT NULL,
   REASON_              VARCHAR2(128),
   DAYOFWEEK_           INTEGER                         NOT NULL,
   IN_OFF_FLAG_         VARCHAR2(8)                     NOT NULL,
   USER_NAME_           VARCHAR2(64),
   SYSTEM_ID_           VARCHAR2(64),
   SECTION_ID_          VARCHAR2(64),
   DATE_                DATE,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_DUTY_REGISTER PRIMARY KEY (REGISTER_ID_)
);

COMMENT ON TABLE "HR_DUTY_REGISTER" IS
'���ڵǼǼ�¼';

COMMENT ON COLUMN "HR_DUTY_REGISTER".REGISTER_ID_ IS
'�Ǽ�ID';

COMMENT ON COLUMN "HR_DUTY_REGISTER".REGISTER_TIME_ IS
'�Ǽ�ʱ��';

COMMENT ON COLUMN "HR_DUTY_REGISTER".REG_FLAG_ IS
'�ǼǱ�ʶ
1=�����Ǽǣ��ϰ࣬�°ࣩ
2���ٵ�
3=����
4����Ϣ
5������
6=�ż�

';

COMMENT ON COLUMN "HR_DUTY_REGISTER".REG_MINS_ IS
'�ٵ������˷���
�����ϰ�ʱΪ0';

COMMENT ON COLUMN "HR_DUTY_REGISTER".REASON_ IS
'�ٵ�ԭ��';

COMMENT ON COLUMN "HR_DUTY_REGISTER".DAYOFWEEK_ IS
'�ܼ�
1=������
..
7=������';

COMMENT ON COLUMN "HR_DUTY_REGISTER".IN_OFF_FLAG_ IS
'���°��ʶ
1=ǩ��
2=ǩ��';

COMMENT ON COLUMN "HR_DUTY_REGISTER".USER_NAME_ IS
'�û���';

COMMENT ON COLUMN "HR_DUTY_REGISTER".SYSTEM_ID_ IS
'����ID';

COMMENT ON COLUMN "HR_DUTY_REGISTER".SECTION_ID_ IS
'���ID';

COMMENT ON COLUMN "HR_DUTY_REGISTER".TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN "HR_DUTY_REGISTER".CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_DUTY_REGISTER".CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN "HR_DUTY_REGISTER".UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_DUTY_REGISTER".UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: "HR_DUTY_SECTION"                                     */
/*==============================================================*/
CREATE TABLE "HR_DUTY_SECTION"  (
   SECTION_ID_          VARCHAR2(64)                    NOT NULL,
   SECTION_NAME_        VARCHAR2(16)                    NOT NULL,
   SECTION_SHORT_NAME_  VARCHAR2(4)                     NOT NULL,
   START_SIGN_IN_       INTEGER,
   DUTY_START_TIME_     VARCHAR2(20),
   END_SIGN_IN_         INTEGER,
   EARLY_OFF_TIME_      INTEGER,
   DUTY_END_TIME_       VARCHAR2(20),
   SIGN_OUT_TIME_       INTEGER,
   IS_TWO_DAY_          VARCHAR2(8),
   GROUP_LIST_          CLOB,
   IS_GROUP_            VARCHAR2(8)                     NOT NULL,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_DUTY_SECTION PRIMARY KEY (SECTION_ID_)
);

COMMENT ON TABLE "HR_DUTY_SECTION" IS
'���
';

COMMENT ON COLUMN "HR_DUTY_SECTION".SECTION_ID_ IS
'��α��';

COMMENT ON COLUMN "HR_DUTY_SECTION".SECTION_NAME_ IS
'�������';

COMMENT ON COLUMN "HR_DUTY_SECTION".SECTION_SHORT_NAME_ IS
'��μ��';

COMMENT ON COLUMN "HR_DUTY_SECTION".START_SIGN_IN_ IS
'��ʼǩ��';

COMMENT ON COLUMN "HR_DUTY_SECTION".DUTY_START_TIME_ IS
'�ϰ�ʱ��';

COMMENT ON COLUMN "HR_DUTY_SECTION".END_SIGN_IN_ IS
'ǩ������ʱ��';

COMMENT ON COLUMN "HR_DUTY_SECTION".EARLY_OFF_TIME_ IS
'���˼�ʱ';

COMMENT ON COLUMN "HR_DUTY_SECTION".DUTY_END_TIME_ IS
'�°�ʱ��';

COMMENT ON COLUMN "HR_DUTY_SECTION".SIGN_OUT_TIME_ IS
'ǩ�˽���';

COMMENT ON COLUMN "HR_DUTY_SECTION".IS_TWO_DAY_ IS
'�Ƿ����';

COMMENT ON COLUMN "HR_DUTY_SECTION".GROUP_LIST_ IS
'��ϰ���б�';

COMMENT ON COLUMN "HR_DUTY_SECTION".IS_GROUP_ IS
'�Ƿ���ϰ��';

COMMENT ON COLUMN "HR_DUTY_SECTION".TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN "HR_DUTY_SECTION".CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_DUTY_SECTION".CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN "HR_DUTY_SECTION".UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_DUTY_SECTION".UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: "HR_DUTY_SYSTEM"                                      */
/*==============================================================*/
CREATE TABLE "HR_DUTY_SYSTEM"  (
   SYSTEM_ID_           VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(100)                   NOT NULL,
   IS_DEFAULT           VARCHAR2(8)                     NOT NULL,
   TYPE_                VARCHAR2(20),
   WORK_SECTION_        VARCHAR2(64),
   WK_REST_SECTION_     VARCHAR2(64),
   REST_SECTION_        VARCHAR2(100),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_DUTY_SYSTEM PRIMARY KEY (SYSTEM_ID_)
);

COMMENT ON TABLE "HR_DUTY_SYSTEM" IS
'����
';

COMMENT ON COLUMN "HR_DUTY_SYSTEM".SYSTEM_ID_ IS
'���Ʊ��';

COMMENT ON COLUMN "HR_DUTY_SYSTEM".NAME_ IS
'����';

COMMENT ON COLUMN "HR_DUTY_SYSTEM".IS_DEFAULT IS
'�Ƿ�ȱʡ
1��ȱʡ
0����ȱʡ';

COMMENT ON COLUMN "HR_DUTY_SYSTEM".TYPE_ IS
'����
һ��=WEEKLY
������=PERIODIC';

COMMENT ON COLUMN "HR_DUTY_SYSTEM".WORK_SECTION_ IS
'��Ϣ���';

COMMENT ON COLUMN "HR_DUTY_SYSTEM".WK_REST_SECTION_ IS
'��Ϣ�ռӰ���';

COMMENT ON COLUMN "HR_DUTY_SYSTEM".REST_SECTION_ IS
'��Ϣ��';

COMMENT ON COLUMN "HR_DUTY_SYSTEM".TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN "HR_DUTY_SYSTEM".CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_DUTY_SYSTEM".CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN "HR_DUTY_SYSTEM".UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_DUTY_SYSTEM".UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: "HR_ERRANDS_REGISTER"                                 */
/*==============================================================*/
CREATE TABLE "HR_ERRANDS_REGISTER"  (
   ER_ID_               VARCHAR2(64)                    NOT NULL,
   REASON_              VARCHAR2(500),
   START_TIME_          DATE                            NOT NULL,
   END_TIME_            DATE                            NOT NULL,
   FLAG_                SMALLINT,
   BPM_INST_ID_         VARCHAR2(64),
   TYPE_                VARCHAR2(20)                    NOT NULL,
   STATUS_              VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_ERRANDS_REGISTER PRIMARY KEY (ER_ID_)
);

COMMENT ON TABLE "HR_ERRANDS_REGISTER" IS
'��١��Ӱࡢ����Ǽ�';

COMMENT ON COLUMN "HR_ERRANDS_REGISTER".ER_ID_ IS
'erID';

COMMENT ON COLUMN "HR_ERRANDS_REGISTER".START_TIME_ IS
'��ʼ����';

COMMENT ON COLUMN "HR_ERRANDS_REGISTER".END_TIME_ IS
'��������';

COMMENT ON COLUMN "HR_ERRANDS_REGISTER".FLAG_ IS
'��ʶ
0=�Ӱ�
1=���
2=���';

COMMENT ON COLUMN "HR_ERRANDS_REGISTER".BPM_INST_ID_ IS
'����ʵ��ID';

COMMENT ON COLUMN "HR_ERRANDS_REGISTER".TYPE_ IS
'����';

COMMENT ON COLUMN "HR_ERRANDS_REGISTER".TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN "HR_ERRANDS_REGISTER".CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_ERRANDS_REGISTER".CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN "HR_ERRANDS_REGISTER".UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_ERRANDS_REGISTER".UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: "HR_HOLIDAY"                                          */
/*==============================================================*/
CREATE TABLE "HR_HOLIDAY"  (
   HOLIDAY_ID_          VARCHAR2(64)                    NOT NULL,
   NAME_                VARCHAR2(32)                    NOT NULL,
   START_DAY_           DATE                            NOT NULL,
   END_DAY_             DATE                            NOT NULL,
   DESC_                VARCHAR2(512),
   SYSTEM_ID_           CLOB,
   USER_ID_             CLOB,
   USER_NAME_           CLOB,
   GROUP_ID_            CLOB,
   GROUP_NAME_          CLOB,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_HOLIDAY PRIMARY KEY (HOLIDAY_ID_)
);

COMMENT ON TABLE "HR_HOLIDAY" IS
'�żټ�¼';

COMMENT ON COLUMN "HR_HOLIDAY".HOLIDAY_ID_ IS
'����ID';

COMMENT ON COLUMN "HR_HOLIDAY".NAME_ IS
'��������';

COMMENT ON COLUMN "HR_HOLIDAY".START_DAY_ IS
'��ʼ����';

COMMENT ON COLUMN "HR_HOLIDAY".END_DAY_ IS
'��������';

COMMENT ON COLUMN "HR_HOLIDAY".DESC_ IS
'��������';

COMMENT ON COLUMN "HR_HOLIDAY".SYSTEM_ID_ IS
'���ID';

COMMENT ON COLUMN "HR_HOLIDAY".USER_ID_ IS
'�����û�
��ΪĳԱ���ļ��ڣ���ΪԱ���Լ���id';

COMMENT ON COLUMN "HR_HOLIDAY".USER_NAME_ IS
'�û���';

COMMENT ON COLUMN "HR_HOLIDAY".GROUP_ID_ IS
'�����û���';

COMMENT ON COLUMN "HR_HOLIDAY".GROUP_NAME_ IS
'�û�����';

COMMENT ON COLUMN "HR_HOLIDAY".TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN "HR_HOLIDAY".CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_HOLIDAY".CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN "HR_HOLIDAY".UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_HOLIDAY".UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: "HR_OVERTIME_EXT"                                     */
/*==============================================================*/
CREATE TABLE "HR_OVERTIME_EXT"  (
   OT_ID_               VARCHAR2(64)                    NOT NULL,
   ER_ID_               VARCHAR2(64),
   TYPE_                VARCHAR2(20),
   TITLE_               VARCHAR2(50),
   DESC_                VARCHAR2(500),
   PAY_                 VARCHAR2(20),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_OVERTIME_EXT PRIMARY KEY (OT_ID_)
);

COMMENT ON TABLE "HR_OVERTIME_EXT" IS
'�Ӱ�';

COMMENT ON COLUMN "HR_OVERTIME_EXT".OT_ID_ IS
'�Ӱ�ID';

COMMENT ON COLUMN "HR_OVERTIME_EXT".TYPE_ IS
'�Ӱ�����';

COMMENT ON COLUMN "HR_OVERTIME_EXT".TITLE_ IS
'����';

COMMENT ON COLUMN "HR_OVERTIME_EXT".DESC_ IS
'��ע';

COMMENT ON COLUMN "HR_OVERTIME_EXT".PAY_ IS
'����';

COMMENT ON COLUMN "HR_OVERTIME_EXT".TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN "HR_OVERTIME_EXT".CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_OVERTIME_EXT".CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN "HR_OVERTIME_EXT".UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_OVERTIME_EXT".UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: "HR_SECTION_CONFIG"                                   */
/*==============================================================*/
CREATE TABLE "HR_SECTION_CONFIG"  (
   CONFIG_ID_           VARCHAR2(64)                    NOT NULL,
   IN_START_TIME_       INTEGER,
   IN_END_TIME_         INTEGER,
   OUT_START_TIME_      INTEGER,
   OUT_END_TIME_        INTEGER,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_SECTION_CONFIG PRIMARY KEY (CONFIG_ID_)
);

COMMENT ON COLUMN "HR_SECTION_CONFIG".CONFIG_ID_ IS
'�������';

COMMENT ON COLUMN "HR_SECTION_CONFIG".IN_START_TIME_ IS
'�ϰ࿪ʼǩ��ʱ��';

COMMENT ON COLUMN "HR_SECTION_CONFIG".IN_END_TIME_ IS
'�ϰ����ǩ��ʱ��';

COMMENT ON COLUMN "HR_SECTION_CONFIG".OUT_START_TIME_ IS
'�°࿪ʼǩ��ʱ��';

COMMENT ON COLUMN "HR_SECTION_CONFIG".OUT_END_TIME_ IS
'�°����ǩ��ʱ��';

COMMENT ON COLUMN "HR_SECTION_CONFIG".TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN "HR_SECTION_CONFIG".CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_SECTION_CONFIG".CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN "HR_SECTION_CONFIG".UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_SECTION_CONFIG".UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: "HR_SYSTEM_SECTION"                                   */
/*==============================================================*/
CREATE TABLE "HR_SYSTEM_SECTION"  (
   SYSTEM_SECTION_ID_   VARCHAR2(64)                    NOT NULL,
   SECTION_ID_          VARCHAR2(64),
   SYSTEM_ID_           VARCHAR2(64),
   WORKDAY_             INTEGER,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_SYSTEM_SECTION PRIMARY KEY (SYSTEM_SECTION_ID_)
);

COMMENT ON TABLE "HR_SYSTEM_SECTION" IS
'���ư�α�';

COMMENT ON COLUMN "HR_SYSTEM_SECTION".SYSTEM_SECTION_ID_ IS
'����';

COMMENT ON COLUMN "HR_SYSTEM_SECTION".SECTION_ID_ IS
'���ID';

COMMENT ON COLUMN "HR_SYSTEM_SECTION".SYSTEM_ID_ IS
'����ID';

COMMENT ON COLUMN "HR_SYSTEM_SECTION".TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN "HR_SYSTEM_SECTION".CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_SYSTEM_SECTION".CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN "HR_SYSTEM_SECTION".UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_SYSTEM_SECTION".UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: "HR_TRANS_REST_EXT"                                   */
/*==============================================================*/
CREATE TABLE "HR_TRANS_REST_EXT"  (
   TR_ID_               VARCHAR2(64)                    NOT NULL,
   ER_ID_               VARCHAR2(64),
   TYPE_                VARCHAR2(20),
   WORK_                DATE,
   REST_                DATE,
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_TRANS_REST_EXT PRIMARY KEY (TR_ID_)
);

COMMENT ON TABLE "HR_TRANS_REST_EXT" IS
'������չ��';

COMMENT ON COLUMN "HR_TRANS_REST_EXT".TR_ID_ IS
'����ID';

COMMENT ON COLUMN "HR_TRANS_REST_EXT".TYPE_ IS
'��������';

COMMENT ON COLUMN "HR_TRANS_REST_EXT".WORK_ IS
'�ϰ�ʱ��';

COMMENT ON COLUMN "HR_TRANS_REST_EXT".REST_ IS
'��Ϣʱ��';

COMMENT ON COLUMN "HR_TRANS_REST_EXT".TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN "HR_TRANS_REST_EXT".CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_TRANS_REST_EXT".CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN "HR_TRANS_REST_EXT".UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_TRANS_REST_EXT".UPDATE_TIME_ IS
'����ʱ��';

/*==============================================================*/
/* Table: "HR_VACATION_EXT"                                     */
/*==============================================================*/
CREATE TABLE "HR_VACATION_EXT"  (
   VAC_ID_              VARCHAR2(64)                    NOT NULL,
   ER_ID_               VARCHAR2(64),
   TYPE_                VARCHAR2(20),
   WORK_PLAN_           VARCHAR2(500),
   TENANT_ID_           VARCHAR2(64),
   CREATE_BY_           VARCHAR2(64),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(64),
   UPDATE_TIME_         DATE,
   CONSTRAINT PK_HR_VACATION_EXT PRIMARY KEY (VAC_ID_)
);

COMMENT ON TABLE "HR_VACATION_EXT" IS
'�����չ��';

COMMENT ON COLUMN "HR_VACATION_EXT".VAC_ID_ IS
'�����չID';

COMMENT ON COLUMN "HR_VACATION_EXT".TYPE_ IS
'�������';

COMMENT ON COLUMN "HR_VACATION_EXT".WORK_PLAN_ IS
'��������';

COMMENT ON COLUMN "HR_VACATION_EXT".TENANT_ID_ IS
'���û���Id';

COMMENT ON COLUMN "HR_VACATION_EXT".CREATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_VACATION_EXT".CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN "HR_VACATION_EXT".UPDATE_BY_ IS
'������ID';

COMMENT ON COLUMN "HR_VACATION_EXT".UPDATE_TIME_ IS
'����ʱ��';

ALTER TABLE BPM_AGENT_SOL
   ADD CONSTRAINT AGT_SOL_R_AGT FOREIGN KEY (AGENT_ID_)
      REFERENCES BPM_AGENT (AGENT_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_AGENT_SOL
   ADD CONSTRAINT BPM_AGENT_R_BSOL FOREIGN KEY (SOL_ID_)
      REFERENCES BPM_SOLUTION (SOL_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_CHECK_FILE
   ADD CONSTRAINT FK_CKFILE_R_NODE_JUMP FOREIGN KEY (JUMP_ID_)
      REFERENCES BPM_NODE_JUMP (JUMP_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_DEF
   ADD CONSTRAINT BPM_DEF_R_SYSTREE FOREIGN KEY ("TREE_ID_")
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE SET NULL;

ALTER TABLE BPM_FORM_VIEW
   ADD CONSTRAINT BPM_FVIEW_R_SYSTREE FOREIGN KEY (TREE_ID_)
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE SET NULL;

ALTER TABLE BPM_FV_RIGHT
   ADD CONSTRAINT BPM_FVR_R_BFV FOREIGN KEY (VIEW_ID_)
      REFERENCES BPM_FORM_VIEW (VIEW_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_INST
   ADD CONSTRAINT BPM_INST_R_DEF FOREIGN KEY (DEF_ID_)
      REFERENCES BPM_DEF (DEF_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_INST_ATTACH
   ADD CONSTRAINT FK_BPM_INST_ATT_R_BPM_INST FOREIGN KEY (INST_ID_)
      REFERENCES BPM_INST (INST_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_INST_CC
   ADD CONSTRAINT FK_INST_CC_R_BPMINST FOREIGN KEY (INST_ID_)
      REFERENCES BPM_INST (INST_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_INST_CP
   ADD CONSTRAINT FK_INST_CP_R_INSTCC FOREIGN KEY (CC_ID_)
      REFERENCES BPM_INST_CC (CC_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_INST_CTL
   ADD CONSTRAINT FK_BPM_INST_FK_BPM_IN_BPM_INST FOREIGN KEY (BPM_INST_ID_)
      REFERENCES BPM_INST (INST_ID_);

ALTER TABLE BPM_INST_READ
   ADD CONSTRAINT FK_BPM_INS_RD_R_BPM_INST FOREIGN KEY (INST_ID_)
      REFERENCES BPM_INST (INST_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_LIB
   ADD CONSTRAINT BM_LIB_R_SOLUT FOREIGN KEY (SOL_ID_)
      REFERENCES BPM_SOLUTION (SOL_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_LIB
   ADD CONSTRAINT BPM_LIB_R_SYSTREE FOREIGN KEY (TREE_ID_)
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE SET NULL;

ALTER TABLE BPM_LIB_CMT
   ADD CONSTRAINT BPM_LIBCMT_R_LIB FOREIGN KEY (LIB_ID_)
      REFERENCES BPM_LIB (LIB_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_NODE_SET
   ADD CONSTRAINT NODE_SET_R_BPMSOL FOREIGN KEY (SOL_ID_)
      REFERENCES BPM_SOLUTION (SOL_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_SOLUTION
   ADD CONSTRAINT BM_SON_R_SYS_TREE FOREIGN KEY ("TREE_ID_")
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE SET NULL;

ALTER TABLE BPM_SOL_CTL
   ADD CONSTRAINT FK_BPM_SOL_CTL_R_BPM_SOL FOREIGN KEY (SOL_ID_)
      REFERENCES BPM_SOLUTION (SOL_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_SOL_FM
   ADD CONSTRAINT SOL_FM_R_BPM_SOL FOREIGN KEY (SOL_ID_)
      REFERENCES BPM_SOLUTION (SOL_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_SOL_FV
   ADD CONSTRAINT SOL_FV_R_BPM_SOL FOREIGN KEY (SOL_ID_)
      REFERENCES BPM_SOLUTION (SOL_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_SOL_USER
   ADD CONSTRAINT FK_BPM_SOL_USR_R_BPM_SOL FOREIGN KEY (SOL_ID_)
      REFERENCES BPM_SOLUTION (SOL_ID_)
      ON DELETE CASCADE;

ALTER TABLE BPM_SOL_VAR
   ADD CONSTRAINT BPM_SOL_VAR_R_BPMSOL FOREIGN KEY (SOL_ID_)
      REFERENCES BPM_SOLUTION (SOL_ID_)
      ON DELETE SET NULL;

ALTER TABLE BPM_TEST_CASE
   ADD CONSTRAINT FK_TEST_CASE_R_TESTSOL FOREIGN KEY (TEST_SOL_ID_)
      REFERENCES BPM_TEST_SOL (TEST_SOL_ID_)
      ON DELETE CASCADE;

ALTER TABLE CAL_CALENDAR
   ADD CONSTRAINT FK_CAL_CALE_REFERENCE_CAL_SETT FOREIGN KEY (SETTING_ID_)
      REFERENCES CAL_SETTING (SETTING_ID_);

ALTER TABLE CAL_GRANT
   ADD CONSTRAINT FK_CAL_GRAN_REFERENCE_CAL_SETT FOREIGN KEY (SETTING_ID_)
      REFERENCES CAL_SETTING (SETTING_ID_);

ALTER TABLE HR_DUTY_INST
   ADD CONSTRAINT INST_R_HOLIDAY FOREIGN KEY (HOLIDAY_ID_)
      REFERENCES "HR_HOLIDAY" (HOLIDAY_ID_);

ALTER TABLE HR_DUTY_INST_EXT
   ADD CONSTRAINT INSTEXT_R_INST FOREIGN KEY (DUTY_INST_ID_)
      REFERENCES HR_DUTY_INST (DUTY_INST_ID_)
      ON DELETE CASCADE;

ALTER TABLE INF_DOC
   ADD CONSTRAINT FK_INF_DOC_DT_R_DF_INF_DOC_ FOREIGN KEY (FOLDER_ID_)
      REFERENCES INF_DOC_FOLDER (FOLDER_ID_);

ALTER TABLE INF_DOC_FILE
   ADD CONSTRAINT FK_INF_DOC__DF_F_DT_INF_DOC FOREIGN KEY (DOC_ID_)
      REFERENCES INF_DOC (DOC_ID_);

ALTER TABLE INF_DOC_FILE
   ADD CONSTRAINT FK_DOC_FILE_R_SYSFILE FOREIGN KEY (FILE_ID_)
      REFERENCES SYS_FILE (FILE_ID_)
      ON DELETE CASCADE;

ALTER TABLE INF_DOC_RIGHT
   ADD CONSTRAINT FK_INF_DOC__DP_R_DF_INF_DOC_ FOREIGN KEY (FOLDER_ID_)
      REFERENCES INF_DOC_FOLDER (FOLDER_ID_)
      ON DELETE CASCADE;

ALTER TABLE INF_DOC_RIGHT
   ADD CONSTRAINT FK_INF_DOC__DP_R_DT_INF_DOC FOREIGN KEY (DOC_ID_)
      REFERENCES INF_DOC (DOC_ID_)
      ON DELETE CASCADE;

ALTER TABLE INF_INBOX
   ADD CONSTRAINT FK_INF_INBOX_R_INMSG FOREIGN KEY (MSG_ID_)
      REFERENCES INF_INNER_MSG (MSG_ID_)
      ON DELETE CASCADE;

ALTER TABLE INF_MAIL
   ADD CONSTRAINT FK_OUT_MAIL_R_MAIL_CFG FOREIGN KEY (CONFIG_ID_)
      REFERENCES INF_MAIL_CONFIG (CONFIG_ID_)
      ON DELETE CASCADE;

ALTER TABLE INF_MAIL
   ADD CONSTRAINT FK_INF_MAIL_R_FOLDER FOREIGN KEY (FOLDER_ID_)
      REFERENCES INF_MAIL_FOLDER (FOLDER_ID_)
      ON DELETE SET NULL;

ALTER TABLE INF_MAIL_BOX
   ADD CONSTRAINT FK_MAILBOX_R_INMAIL FOREIGN KEY (MAIL_ID_)
      REFERENCES INF_INNER_MAIL (MAIL_ID_)
      ON DELETE CASCADE;

ALTER TABLE INF_MAIL_BOX
   ADD CONSTRAINT FK_MAILBOX_R_MAILFOLDER FOREIGN KEY (FOLDER_ID_)
      REFERENCES INF_MAIL_FOLDER (FOLDER_ID_)
      ON DELETE SET NULL;

ALTER TABLE INF_MAIL_FILE
   ADD CONSTRAINT FK_MAIL_FILE_R_OUT_MAIL FOREIGN KEY (MAIL_ID_)
      REFERENCES INF_MAIL (MAIL_ID_)
      ON DELETE CASCADE;

ALTER TABLE INF_MAIL_FOLDER
   ADD CONSTRAINT FK_MAIL_FO_R_MAIL_CFG FOREIGN KEY (CONFIG_ID_)
      REFERENCES INF_MAIL_CONFIG (CONFIG_ID_)
      ON DELETE SET NULL;

ALTER TABLE INS_COLUMN
   ADD CONSTRAINT COLMN_R_COL_TYPE FOREIGN KEY (TYPE_ID_)
      REFERENCES INS_COL_TYPE (TYPE_ID_)
      ON DELETE CASCADE;

ALTER TABLE INS_COL_NEW
   ADD CONSTRAINT COL_NEW_R_COLMN FOREIGN KEY (COL_ID_)
      REFERENCES INS_COLUMN (COL_ID_)
      ON DELETE CASCADE;

ALTER TABLE INS_COL_NEW
   ADD CONSTRAINT IS_CN_R_NEWS FOREIGN KEY (NEW_ID_)
      REFERENCES INS_NEWS (NEW_ID_)
      ON DELETE CASCADE;

ALTER TABLE INS_NEWS_CM
   ADD CONSTRAINT FK_INS_NEWCM_R_INS_NEW FOREIGN KEY (NEW_ID_)
      REFERENCES INS_NEWS (NEW_ID_)
      ON DELETE CASCADE;

ALTER TABLE INS_PORT_COL
   ADD CONSTRAINT PORT_COL_R_INS_COL FOREIGN KEY (COL_ID_)
      REFERENCES INS_COLUMN (COL_ID_)
      ON DELETE CASCADE;

ALTER TABLE INS_PORT_COL
   ADD CONSTRAINT PORT_COL_R_INS_PORAL FOREIGN KEY (PORT_ID_)
      REFERENCES INS_PORTAL (PORT_ID_)
      ON DELETE CASCADE;

ALTER TABLE KD_DOC
   ADD CONSTRAINT DOC_R_DOC_TMP FOREIGN KEY (TEMP_ID_)
      REFERENCES KD_DOC_TEMPLATE (TEMP_ID_)
      ON DELETE SET NULL;

ALTER TABLE KD_DOC
   ADD CONSTRAINT KD_DOC_R_SYSTREE FOREIGN KEY (TREE_ID_)
      REFERENCES SYS_TREE ("TREE_ID_");

ALTER TABLE KD_DOC_CMMT
   ADD CONSTRAINT DOCMT_R_DOC FOREIGN KEY (DOC_ID_)
      REFERENCES KD_DOC (DOC_ID_)
      ON DELETE CASCADE;

ALTER TABLE KD_DOC_CONTR
   ADD CONSTRAINT DOC_CONT_R_KD_DOC FOREIGN KEY (DOC_ID_)
      REFERENCES KD_DOC (DOC_ID_)
      ON DELETE CASCADE;

ALTER TABLE KD_DOC_DIR
   ADD CONSTRAINT KD_DOCDIR_R_KDDOC FOREIGN KEY (DOC_ID_)
      REFERENCES KD_DOC (DOC_ID_)
      ON DELETE CASCADE;

ALTER TABLE KD_DOC_FAV
   ADD CONSTRAINT DOC_FAV_R_KD_DOC FOREIGN KEY (DOC_ID_)
      REFERENCES KD_DOC (DOC_ID_)
      ON DELETE CASCADE;

ALTER TABLE KD_DOC_FAV
   ADD CONSTRAINT KD_DOC_FAV_R_QUE FOREIGN KEY (QUE_ID_)
      REFERENCES KD_QUESTION (QUE_ID_);

ALTER TABLE KD_DOC_HANDLE
   ADD CONSTRAINT FK_KD_DOC_H_REFERENCE_OD_DOCUM FOREIGN KEY (DOC_ID_)
      REFERENCES OD_DOCUMENT (DOC_ID_);

ALTER TABLE KD_DOC_HIS
   ADD CONSTRAINT DOCVER_R_KDDOC FOREIGN KEY (DOC_ID_)
      REFERENCES KD_DOC (DOC_ID_)
      ON DELETE CASCADE;

ALTER TABLE KD_DOC_READ
   ADD CONSTRAINT DOC_RD_R_KD_DOC FOREIGN KEY (DOC_ID_)
      REFERENCES KD_DOC (DOC_ID_)
      ON DELETE CASCADE;

ALTER TABLE KD_DOC_REM
   ADD CONSTRAINT DOC_REM_R_KD_DOC FOREIGN KEY (DOC_ID_)
      REFERENCES KD_DOC (DOC_ID_)
      ON DELETE CASCADE;

ALTER TABLE KD_DOC_RIGHT
   ADD CONSTRAINT DOC_RHT_R_KD_DOC FOREIGN KEY (DOC_ID_)
      REFERENCES KD_DOC (DOC_ID_)
      ON DELETE CASCADE;

ALTER TABLE KD_DOC_ROUND
   ADD CONSTRAINT DOC_ROUND_R_DOC FOREIGN KEY (DOC_ID_)
      REFERENCES KD_DOC (DOC_ID_)
      ON DELETE CASCADE;

ALTER TABLE KD_DOC_TEMPLATE
   ADD CONSTRAINT DOC_TMPL_R_SYSTREE FOREIGN KEY ("TREE_ID_")
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE SET NULL;

ALTER TABLE KD_QUESTION
   ADD CONSTRAINT QUES_R_SYSTREE FOREIGN KEY ("TREE_ID_")
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE SET NULL;

ALTER TABLE KD_QUES_ANSWER
   ADD CONSTRAINT QUE_AW_R_QUES FOREIGN KEY (QUE_ID_)
      REFERENCES KD_QUESTION (QUE_ID_)
      ON DELETE CASCADE;

ALTER TABLE OA_ADDR_CONT
   ADD CONSTRAINT FK_ADD_CNT_R_ADD_BK FOREIGN KEY (ADDR_ID_)
      REFERENCES OA_ADDR_BOOK (ADDR_ID_)
      ON DELETE CASCADE;

ALTER TABLE OA_ADDR_GPB
   ADD CONSTRAINT FK_ADD_GPB_R_ADD_GRP FOREIGN KEY (GROUP_ID_)
      REFERENCES OA_ADDR_GRP (GROUP_ID_)
      ON DELETE CASCADE;

ALTER TABLE OA_ADDR_GPB
   ADD CONSTRAINT FK_ADD_GPB_R_ADD_BK FOREIGN KEY (ADDR_ID_)
      REFERENCES OA_ADDR_BOOK (ADDR_ID_)
      ON DELETE CASCADE;

ALTER TABLE OA_ASSETS
   ADD CONSTRAINT FK_OA_ASSET_ASSERTS_R_OA_PRODU FOREIGN KEY (PROD_DEF_ID_)
      REFERENCES OA_PRODUCT_DEF (PROD_DEF_ID_);

ALTER TABLE OA_ASSETS_BID
   ADD CONSTRAINT ASSETS_BID_R_ASSETS FOREIGN KEY (ASS_ID_)
      REFERENCES OA_ASSETS (ASS_ID_);

ALTER TABLE OA_ASS_PARAMETER
   ADD CONSTRAINT ASSPARA_R_PK FOREIGN KEY (KEY_ID_)
      REFERENCES OA_PRODUCT_DEF_PARA_KEY (KEY_ID_);

ALTER TABLE OA_ASS_PARAMETER
   ADD CONSTRAINT ASSPARA_R_PV FOREIGN KEY (VALUE_ID_)
      REFERENCES OA_PRODUCT_DEF_PARA_VALUE (VALUE_ID_);

ALTER TABLE OA_ASS_PARAMETER
   ADD CONSTRAINT ASS_PARA_R_ASS FOREIGN KEY (ASS_ID_)
      REFERENCES OA_ASSETS (ASS_ID_);

ALTER TABLE OA_CAR_APP
   ADD CONSTRAINT CAR_APP_R_CAR FOREIGN KEY (CAR_ID_)
      REFERENCES OA_CAR (CAR_ID_)
      ON DELETE CASCADE;

ALTER TABLE OA_COM_RIGHT
   ADD CONSTRAINT COM_RT_R_COM_BK FOREIGN KEY (COMBOOK_ID_)
      REFERENCES OA_COM_BOOK (COM_ID_);

ALTER TABLE OA_MEETING
   ADD CONSTRAINT OA_MET_R_ROOM FOREIGN KEY (ROOM_ID_)
      REFERENCES OA_MEET_ROOM (ROOM_ID_)
      ON DELETE SET NULL;

ALTER TABLE OA_MEET_ATT
   ADD CONSTRAINT MEET_ATT_R_MEET FOREIGN KEY (MEET_ID_)
      REFERENCES OA_MEETING (MEET_ID_)
      ON DELETE CASCADE;

ALTER TABLE OA_PLAN_TASK
   ADD CONSTRAINT PLAN_R_PROJ FOREIGN KEY (PROJECT_ID_)
      REFERENCES OA_PROJECT (PROJECT_ID_)
      ON DELETE SET NULL;

ALTER TABLE OA_PLAN_TASK
   ADD CONSTRAINT PLAN_R_REQ_MGR FOREIGN KEY (REQ_ID_)
      REFERENCES OA_REQ_MGR (REQ_ID_)
      ON DELETE SET NULL;

ALTER TABLE OA_PRODUCT_DEF
   ADD CONSTRAINT PRODUCTDEF_R_SYSTREE FOREIGN KEY (TREE_ID_)
      REFERENCES SYS_TREE ("TREE_ID_");

ALTER TABLE OA_PRODUCT_DEF_PARA
   ADD CONSTRAINT PRODDEFPPARA_R_PRODDEF FOREIGN KEY (PROD_DEF_ID_)
      REFERENCES OA_PRODUCT_DEF (PROD_DEF_ID_);

ALTER TABLE OA_PRODUCT_DEF_PARA
   ADD CONSTRAINT PRODUCTDEFPARA_R_PK FOREIGN KEY (KEY_ID_)
      REFERENCES OA_PRODUCT_DEF_PARA_KEY (KEY_ID_);

ALTER TABLE OA_PRODUCT_DEF_PARA
   ADD CONSTRAINT PRODUCTDEFPARA_R_PV FOREIGN KEY (VALUE_ID_)
      REFERENCES OA_PRODUCT_DEF_PARA_VALUE (VALUE_ID_);

ALTER TABLE OA_PRODUCT_DEF_PARA_KEY
   ADD CONSTRAINT PRODUCTDEF_PK_R_ST FOREIGN KEY (TREE_ID_)
      REFERENCES SYS_TREE ("TREE_ID_");

ALTER TABLE OA_PRODUCT_DEF_PARA_VALUE
   ADD CONSTRAINT FK_OA_PRODU_PRODUCTDE_OA_PRODU FOREIGN KEY (KEY_ID_)
      REFERENCES OA_PRODUCT_DEF_PARA_KEY (KEY_ID_);

ALTER TABLE OA_PRODUCT_DEF_PARA_VALUE
   ADD CONSTRAINT PRODUCTDEF_PV_R_ST FOREIGN KEY (TREE_ID_)
      REFERENCES SYS_TREE ("TREE_ID_");

ALTER TABLE OA_PROJECT
   ADD CONSTRAINT PROJ_R_SYSTREE FOREIGN KEY ("TREE_ID_")
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE SET NULL;

ALTER TABLE OA_PRO_ATTEND
   ADD CONSTRAINT PRO_ATT_R_PROJ FOREIGN KEY (PROJECT_ID_)
      REFERENCES OA_PROJECT (PROJECT_ID_)
      ON DELETE CASCADE;

ALTER TABLE OA_PRO_VERS
   ADD CONSTRAINT PRO_VER_R_PROJECT FOREIGN KEY (PROJECT_ID_)
      REFERENCES OA_PROJECT (PROJECT_ID_)
      ON DELETE CASCADE;

ALTER TABLE OA_REQ_MGR
   ADD CONSTRAINT REQ_MGR_R_PROJECT FOREIGN KEY (PROJECT_ID_)
      REFERENCES OA_PROJECT (PROJECT_ID_)
      ON DELETE SET NULL;

ALTER TABLE OA_WORK_LOG
   ADD CONSTRAINT WORKLOG_R_PLANTASK FOREIGN KEY (PLAN_ID_)
      REFERENCES OA_PLAN_TASK (PLAN_ID_)
      ON DELETE SET NULL;

ALTER TABLE OD_DOCUMENT
   ADD CONSTRAINT FK_OD_DOC_R_SYSTREE FOREIGN KEY (TREE_ID_)
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE SET NULL;

ALTER TABLE OD_DOC_REC
   ADD CONSTRAINT FK_DOC_REC_R_ODDOC FOREIGN KEY (DOC_ID_)
      REFERENCES OD_DOCUMENT (DOC_ID_)
      ON DELETE CASCADE;

ALTER TABLE OD_DOC_REMIND_
   ADD CONSTRAINT FK_DOC_RM_R_ODDOC FOREIGN KEY (DOC_ID_)
      REFERENCES OD_DOCUMENT (DOC_ID_)
      ON DELETE CASCADE;

ALTER TABLE OD_DOC_TEMPLATE
   ADD CONSTRAINT FK_DOC_TMP_R_SYSTREE FOREIGN KEY (TREE_ID_)
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE SET NULL;

ALTER TABLE OS_GROUP
   ADD CONSTRAINT FK_GP_R_DMN FOREIGN KEY (DIM_ID_)
      REFERENCES OS_DIMENSION (DIM_ID_)
      ON DELETE CASCADE;

ALTER TABLE OS_GROUP_MENU
   ADD CONSTRAINT FK_OS_GROUP_FK_GRP_MN_OS_GROUP FOREIGN KEY (GROUP_ID_)
      REFERENCES OS_GROUP (GROUP_ID_)
      ON DELETE CASCADE;

ALTER TABLE OS_GROUP_MENU
   ADD CONSTRAINT FK_GRP_MN_R_SYS_MENU FOREIGN KEY ("MENU_ID_")
      REFERENCES SYS_MENU ("MENU_ID_")
      ON DELETE CASCADE;

ALTER TABLE OS_GROUP_SYS
   ADD CONSTRAINT FK_GRP_SYS_R_GRP FOREIGN KEY (GROUP_ID_)
      REFERENCES OS_GROUP (GROUP_ID_)
      ON DELETE CASCADE;

ALTER TABLE OS_RANK_TYPE
   ADD CONSTRAINT FK_ORK_TYPE_R_OSDIM FOREIGN KEY (DIM_ID_)
      REFERENCES OS_DIMENSION (DIM_ID_)
      ON DELETE CASCADE;

ALTER TABLE OS_REL_INST
   ADD CONSTRAINT FK_OS_REL_I_OS_RIST_R_OS_REL_T FOREIGN KEY (REL_TYPE_ID_)
      REFERENCES OS_REL_TYPE (ID_);

ALTER TABLE OS_REL_TYPE
   ADD CONSTRAINT FK_OS_REL_T_REL_PAR1__OS_DIMEN FOREIGN KEY (DIM_ID1_)
      REFERENCES OS_DIMENSION (DIM_ID_)
      ON DELETE CASCADE;

ALTER TABLE OS_REL_TYPE
   ADD CONSTRAINT FK_OS_REL_T_REFERENCE_OS_DIMEN FOREIGN KEY (DIM_ID2_)
      REFERENCES OS_DIMENSION (DIM_ID_);

ALTER TABLE SYS_BUTTON
   ADD CONSTRAINT SYS_BTN_R_SYS_MOD FOREIGN KEY ("MODULE_ID_")
      REFERENCES SYS_MODULE ("MODULE_ID_")
      ON DELETE CASCADE;

ALTER TABLE SYS_DIC
   ADD CONSTRAINT GL_TP_R_DIC FOREIGN KEY ("TYPE_ID_")
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE CASCADE;

ALTER TABLE SYS_FIELD
   ADD CONSTRAINT FK_SYS_FIEL_SYS_FIELD_SYS_MODU FOREIGN KEY ("MODULE_ID_")
      REFERENCES SYS_MODULE ("MODULE_ID_")
      ON DELETE CASCADE;

ALTER TABLE SYS_FILE
   ADD CONSTRAINT SYS_FILE_TREE FOREIGN KEY (TYPE_ID_)
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE CASCADE;

ALTER TABLE SYS_FORM_FIELD
   ADD CONSTRAINT FORM_FD_R_FORM_GP FOREIGN KEY (GROUP_ID_)
      REFERENCES SYS_FORM_GROUP (GROUP_ID_)
      ON DELETE CASCADE;

ALTER TABLE SYS_FORM_FIELD
   ADD CONSTRAINT ORM_FD_R_FIELD FOREIGN KEY ("FIELD_ID_")
      REFERENCES SYS_FIELD ("FIELD_ID_")
      ON DELETE SET NULL;

ALTER TABLE SYS_FORM_GROUP
   ADD CONSTRAINT FORM_GP_R_FORM_SMA FOREIGN KEY ("FORM_SCHEMA_ID_")
      REFERENCES SYS_FORM_SCHEMA ("FORM_SCHEMA_ID_")
      ON DELETE CASCADE;

ALTER TABLE SYS_FORM_SCHEMA
   ADD CONSTRAINT FORM_SM_R_SYS_MOD FOREIGN KEY ("MODULE_ID_")
      REFERENCES SYS_MODULE ("MODULE_ID_")
      ON DELETE SET NULL;

ALTER TABLE SYS_GRID_FIELD
   ADD CONSTRAINT SGF_R_SFD FOREIGN KEY ("FIELD_ID_")
      REFERENCES SYS_FIELD ("FIELD_ID_")
      ON DELETE CASCADE;

ALTER TABLE SYS_GRID_FIELD
   ADD CONSTRAINT SGF_R_SGV FOREIGN KEY ("GRID_VIEW_ID_")
      REFERENCES SYS_GRID_VIEW ("GRID_VIEW_ID_")
      ON DELETE CASCADE;

ALTER TABLE SYS_GRID_VIEW
   ADD CONSTRAINT GV_R_SM FOREIGN KEY ("MODULE_ID_")
      REFERENCES SYS_MODULE ("MODULE_ID_")
      ON DELETE SET NULL;

ALTER TABLE SYS_LDAP_CN
   ADD CONSTRAINT FK_SYS_LDAP_LDAP_CN_R_SYS_LDAP FOREIGN KEY (SYS_LDAP_OU_ID_)
      REFERENCES SYS_LDAP_OU (SYS_LDAP_OU_ID_)
      ON DELETE SET NULL;

ALTER TABLE SYS_LDAP_CN
   ADD CONSTRAINT FK_SYS_LDAP_SYS_LDAP__OS_USER FOREIGN KEY (USER_ID_)
      REFERENCES OS_USER (USER_ID_)
      ON DELETE SET NULL;

ALTER TABLE SYS_LDAP_OU
   ADD CONSTRAINT LADP_OU_R_OS_GROUP FOREIGN KEY (GROUP_ID_)
      REFERENCES OS_GROUP (GROUP_ID_)
      ON DELETE SET NULL;

ALTER TABLE SYS_MENU
   ADD CONSTRAINT SYS_MENU_R_SUBS FOREIGN KEY ("SYS_ID_")
      REFERENCES SYS_SUBSYS ("SYS_ID_")
      ON DELETE CASCADE;

ALTER TABLE SYS_MODULE
   ADD CONSTRAINT SYS_R_MODULE FOREIGN KEY ("SYS_ID_")
      REFERENCES SYS_SUBSYS ("SYS_ID_")
      ON DELETE SET NULL;

ALTER TABLE SYS_REPORT
   ADD CONSTRAINT REP_R_SYSTREE FOREIGN KEY ("TREE_ID_")
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE SET NULL;

ALTER TABLE SYS_SEARCH_ITEM
   ADD CONSTRAINT SEARCH_ITM_R_SF FOREIGN KEY (FIELD_ID_)
      REFERENCES SYS_FIELD ("FIELD_ID_")
      ON DELETE CASCADE;

ALTER TABLE SYS_SEARCH_ITEM
   ADD CONSTRAINT SFIELD_R_SEARCH FOREIGN KEY (SEARCH_ID_)
      REFERENCES SYS_SEARCH (SEARCH_ID_)
      ON DELETE CASCADE;

ALTER TABLE SYS_TEMPLATE
   ADD CONSTRAINT SYS_TMP_R_SYSTREE FOREIGN KEY ("TREE_ID_")
      REFERENCES SYS_TREE ("TREE_ID_")
      ON DELETE SET NULL;

ALTER TABLE "HR_DUTY"
   ADD CONSTRAINT DUY_R_DS FOREIGN KEY (SYSTEM_ID_)
      REFERENCES "HR_DUTY_SYSTEM" (SYSTEM_ID_);

ALTER TABLE "HR_OVERTIME_EXT"
   ADD CONSTRAINT OTEXT_R_ERRREG FOREIGN KEY (ER_ID_)
      REFERENCES "HR_ERRANDS_REGISTER" (ER_ID_);

ALTER TABLE "HR_SYSTEM_SECTION"
   ADD CONSTRAINT SYSSEC_R_SEC FOREIGN KEY (SECTION_ID_)
      REFERENCES "HR_DUTY_SECTION" (SECTION_ID_);

ALTER TABLE "HR_SYSTEM_SECTION"
   ADD CONSTRAINT SYSSEC_R_SYS FOREIGN KEY (SYSTEM_ID_)
      REFERENCES "HR_DUTY_SYSTEM" (SYSTEM_ID_);

ALTER TABLE "HR_TRANS_REST_EXT"
   ADD CONSTRAINT TSEXT_R_ERRREG FOREIGN KEY (ER_ID_)
      REFERENCES "HR_ERRANDS_REGISTER" (ER_ID_);

ALTER TABLE "HR_VACATION_EXT"
   ADD CONSTRAINT VAC_R_ERRREG FOREIGN KEY (ER_ID_)
      REFERENCES "HR_ERRANDS_REGISTER" (ER_ID_);

