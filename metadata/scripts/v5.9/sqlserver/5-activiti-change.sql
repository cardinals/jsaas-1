alter table ACT_RU_TASK add CREATE_BY_ varchar(64) null;
alter table ACT_RU_TASK add UPDATE_BY_ varchar(64) null ;
alter table ACT_RU_TASK add UPDATE_TIME_ datetime null ;
alter table ACT_RU_TASK add SOL_ID_ varchar(64) null ;
alter table ACT_RU_TASK add AGENT_USER_ID_ varchar(64) null ;

alter table ACT_RU_TASK add ENABLE_MOBILE_  integer default 0;

alter table ACT_RU_TASK  add RC_TASK_ID_ varchar(64) ;  
alter table ACT_RU_TASK add CM_LEVEL_ INTEGER ;
alter table ACT_RU_TASK add TASK_TYPE_ varchar(20) ;
alter table ACT_RU_TASK add GEN_CM_TASK_ varchar(20) ;
alter table act_ru_task add CM_FUSRID_ varchar(64) ;
alter table ACT_RU_TASK add CM_TASK_ID_ varchar(64) null ;

alter table ACT_RU_TASK add TOKEN_ varchar(64) ;
alter table ACT_RU_TASK add URGENT_TIMES_ int default 0 ;

alter table ACT_RU_TASK add SOL_KEY_ varchar(100) null ;
alter table ACT_RU_TASK add INST_ID_ varchar(100) null ;

alter table act_ru_task add RUN_PATH_ID_ varchar(64) ;

alter table act_ru_task add timeout_status_ varchar(20);

alter table act_ru_task add OVERTIME_ varchar(1024) null ;

alter table ACT_RU_TASK add LOCKED_ int default null ;



CREATE INDEX IDX_BPMINST_ACTINSTID ON BPM_INST (ACT_INST_ID_);

CREATE INDEX IDX_INSTDATA_INSTID ON BPM_INST_DATA(INST_ID_);

CREATE INDEX IDX_OPINIONTEMP_INSTID ON BPM_OPINION_TEMP(INST_ID_,TYPE_);

CREATE INDEX IDX_RUPATH_ACTINSTID ON BPM_RU_PATH(ACT_INST_ID_);


-- 数据库索引优化 --------
CREATE INDEX IDX_NODEJUMP_TASKID ON bpm_node_jump (TASK_ID_);
CREATE INDEX IDX_RUTASK_PARENTTASKID ON ACT_RU_TASK (PARENT_TASK_ID_);
CREATE INDEX IDX_OSUSER_USER_NO_ ON OS_USER (USER_NO_);
CREATE INDEX IDX_INSTUSER_UID_ ON os_inst_users (USER_ID_);
CREATE INDEX IDX_RELINST_PART1 ON OS_REL_INST (PARTY1_);
CREATE INDEX IDX_RELINST_PART2 ON OS_REL_INST (PARTY2_);
CREATE INDEX IDX_SOLFV_SOLDEF ON BPM_SOL_FV (SOL_ID_,ACT_DEF_ID_,NODE_ID_);
CREATE INDEX IDX_USERGROUP_SOLDEF ON BPM_SOL_USERGROUP (SOL_ID_,ACT_DEF_ID_,NODE_ID_);
CREATE INDEX IDX_REMINDDEF_SOLDEF ON BPM_REMIND_DEF (SOL_ID_,ACT_DEF_ID_,NODE_ID_);
CREATE INDEX IDX_SOLUSER_GROUPID ON BPM_SOL_USER (GROUP_ID_);
CREATE INDEX IDX_BPMAGENT_USER ON BPM_AGENT (AGENT_USER_ID_);
CREATE INDEX IDX_BPMAGENTSOL_SOL ON bpm_agent_sol (AGENT_ID_,SOL_ID_);
CREATE INDEX IDX_SOLVAR_SOL ON BPM_SOL_VAR (SOL_ID_,ACT_DEF_ID_);
CREATE INDEX IDX_SEQID_ALIAS_ ON sys_seq_id (ALIAS_,TENANT_ID_);
CREATE INDEX IDX_LOGMODULE_MODULE_ ON LOG_MODULE (MODULE_,SUB_MODULE);
CREATE INDEX IDX_BPMDEF_ACTDEF ON BPM_DEF (ACT_DEF_ID_);
CREATE INDEX IDX_SYSINST_DOMAIN ON SYS_INST (DOMAIN_);
CREATE INDEX IDX_BORELATION_ENT ON SYS_BO_RELATION (BO_ENTID_);
CREATE INDEX IDX_BORELATION_BODEF ON SYS_BO_RELATION (BO_DEFID_);

CREATE INDEX IDX_NODEJUMP_HANDLER ON bpm_node_jump (HANDLER_ID_);
CREATE INDEX IDX_TASK_ASIGNEE ON act_ru_task (ASSIGNEE_);
CREATE INDEX IDX_TASK_AGENT ON act_ru_task (AGENT_USER_ID_);