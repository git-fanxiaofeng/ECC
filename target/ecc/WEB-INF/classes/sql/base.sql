prompt PL/SQL Developer import file
prompt Created on 2019��3��30�� by fxf
set feedback off
set define off
prompt Creating COM_DICT...
create table COM_DICT
(
  dict_id     NUMBER(10) not null,
  code        VARCHAR2(100),
  label       VARCHAR2(100),
  type        VARCHAR2(100),
  remark      VARCHAR2(100),
  sort        NUMBER,
  create_by   VARCHAR2(50),
  create_date DATE,
  update_by   VARCHAR2(50),
  update_date DATE,
  del_flag    VARCHAR2(1) default 'N'
)
;
comment on table COM_DICT
  is '��ͬ�����';
comment on column COM_DICT.dict_id
  is '����';
comment on column COM_DICT.code
  is '����';
comment on column COM_DICT.label
  is '��ǩ��';
comment on column COM_DICT.type
  is '����';
comment on column COM_DICT.remark
  is '����';
comment on column COM_DICT.sort
  is '����';
comment on column COM_DICT.create_by
  is '������';
comment on column COM_DICT.create_date
  is '��������';
comment on column COM_DICT.update_by
  is '������';
comment on column COM_DICT.update_date
  is '��������';
comment on column COM_DICT.del_flag
  is 'ɾ����ʶ';
alter table COM_DICT
  add constraint PK_COM_DICT primary key (DICT_ID);

prompt Creating COM_MENU...
create table COM_MENU
(
  menu_id     VARCHAR2(10) not null,
  parent_id   VARCHAR2(10) not null,
  parent_ids  VARCHAR2(2000),
  name        VARCHAR2(255),
  sort        NUMBER,
  href        VARCHAR2(2000),
  target      VARCHAR2(255),
  icon        VARCHAR2(500),
  is_show     VARCHAR2(1) default 'Y',
  permission  VARCHAR2(200),
  create_by   VARCHAR2(50),
  create_date DATE,
  update_by   VARCHAR2(50),
  update_date DATE,
  remarks     VARCHAR2(500),
  del_flag    VARCHAR2(1) default 'N'
)
;
comment on table COM_MENU
  is '�˵���';
comment on column COM_MENU.menu_id
  is '���';
comment on column COM_MENU.parent_id
  is '�������';
comment on column COM_MENU.parent_ids
  is '���и������';
comment on column COM_MENU.name
  is '����';
comment on column COM_MENU.sort
  is '����';
comment on column COM_MENU.href
  is '����';
comment on column COM_MENU.target
  is 'Ŀ��';
comment on column COM_MENU.icon
  is 'ͼ��';
comment on column COM_MENU.is_show
  is '�Ƿ��ڲ˵�����ʾ';
comment on column COM_MENU.permission
  is 'Ȩ�ޱ�ʶ';
comment on column COM_MENU.create_by
  is '������';
comment on column COM_MENU.create_date
  is '��������';
comment on column COM_MENU.update_by
  is '������';
comment on column COM_MENU.update_date
  is '��������';
comment on column COM_MENU.del_flag
  is 'ɾ����ʶ';
alter table COM_MENU
  add constraint PK_COM_MENU primary key (MENU_ID);

prompt Creating COM_MENU_PERMISSION...
create table COM_MENU_PERMISSION
(
  menu_permission_id VARCHAR2(10) not null,
  menu_id            VARCHAR2(10),
  permission_code    VARCHAR2(50),
  permission_name    VARCHAR2(255) not null,
  create_by          VARCHAR2(50),
  create_date        DATE,
  update_by          VARCHAR2(50),
  update_date        DATE,
  del_flag           VARCHAR2(1) default 'N'
)
;
comment on table COM_MENU_PERMISSION
  is '�˵�Ȩ�ޱ�';
comment on column COM_MENU_PERMISSION.menu_permission_id
  is 'Ȩ�ޱ��';
comment on column COM_MENU_PERMISSION.menu_id
  is '�˵�ID';
comment on column COM_MENU_PERMISSION.permission_code
  is 'Ȩ�ޱ���';
comment on column COM_MENU_PERMISSION.permission_name
  is 'Ȩ������';
comment on column COM_MENU_PERMISSION.create_by
  is '������';
comment on column COM_MENU_PERMISSION.create_date
  is '��������';
comment on column COM_MENU_PERMISSION.update_by
  is '������';
comment on column COM_MENU_PERMISSION.update_date
  is '��������';
comment on column COM_MENU_PERMISSION.del_flag
  is 'ɾ����ʶ';
alter table COM_MENU_PERMISSION
  add constraint PK_COM_MENU_PERMISSION primary key (MENU_PERMISSION_ID);

prompt Creating COM_NATIONCODE...
create table COM_NATIONCODE
(
  nation_code    VARCHAR2(50) not null,
  nation_name    VARCHAR2(500),
  nation_en_name VARCHAR2(500),
  del_flag       VARCHAR2(1) default 'N',
  create_by      VARCHAR2(10),
  create_date    DATE,
  update_by      VARCHAR2(10),
  update_date    DATE
)
;
comment on table COM_NATIONCODE
  is '���Ҵ����';
comment on column COM_NATIONCODE.nation_code
  is '����';
comment on column COM_NATIONCODE.nation_name
  is '����';
comment on column COM_NATIONCODE.nation_en_name
  is 'Ӣ����';
comment on column COM_NATIONCODE.del_flag
  is 'ɾ����ʶ';
comment on column COM_NATIONCODE.create_by
  is '������';
comment on column COM_NATIONCODE.create_date
  is '��������';
comment on column COM_NATIONCODE.update_by
  is '������';
comment on column COM_NATIONCODE.update_date
  is '��������';
alter table COM_NATIONCODE
  add constraint PK_COM_NATIONCODE primary key (NATION_CODE);

prompt Creating COM_ROLE...
create table COM_ROLE
(
  role_id     VARCHAR2(10) not null,
  role_name   VARCHAR2(100) not null,
  role_enname VARCHAR2(100) not null,
  role_type   VARCHAR2(255),
  data_scope  VARCHAR2(1),
  is_sys      VARCHAR2(1),
  remarks     VARCHAR2(255),
  create_by   VARCHAR2(50),
  create_date DATE,
  update_by   VARCHAR2(50),
  update_date DATE,
  del_flag    VARCHAR2(1) default 'N'
)
;
comment on table COM_ROLE
  is '��ɫ��';
comment on column COM_ROLE.role_id
  is '���';
comment on column COM_ROLE.role_name
  is '��ɫ����';
comment on column COM_ROLE.role_enname
  is 'Ӣ������';
comment on column COM_ROLE.role_type
  is '��ɫ����';
comment on column COM_ROLE.data_scope
  is '���ݷ�Χ';
comment on column COM_ROLE.is_sys
  is '�Ƿ�ϵͳ����';
alter table COM_ROLE
  add constraint PK_COM_ROLE primary key (ROLE_ID);

prompt Creating COM_ROLE_MENU...
create table COM_ROLE_MENU
(
  role_id         VARCHAR2(10) not null,
  menu_id         VARCHAR2(10) not null,
  remarks         VARCHAR2(255),
  create_by       VARCHAR2(50),
  create_date     DATE,
  update_by       VARCHAR2(50),
  update_date     DATE,
  permission_code VARCHAR2(500),
  del_flag        VARCHAR2(1) default 'N'
)
;
comment on table COM_ROLE_MENU
  is '��ɫ�˵������';
comment on column COM_ROLE_MENU.role_id
  is '��ɫ���';
comment on column COM_ROLE_MENU.menu_id
  is '�˵����';
comment on column COM_ROLE_MENU.remarks
  is '��ע';
comment on column COM_ROLE_MENU.create_by
  is '������';
comment on column COM_ROLE_MENU.create_date
  is '��������';
comment on column COM_ROLE_MENU.update_by
  is '������';
comment on column COM_ROLE_MENU.update_date
  is '��������';
comment on column COM_ROLE_MENU.permission_code
  is 'Ȩ�ޱ���,���PERMISSION_CODE�Զ��ŷָ�';
comment on column COM_ROLE_MENU.del_flag
  is 'ɾ����ʶ';
alter table COM_ROLE_MENU
  add constraint PK_COM_ROLE_MENU primary key (ROLE_ID, MENU_ID);

prompt Creating COM_ROLE_USER...
create table COM_ROLE_USER
(
  role_id     VARCHAR2(10) not null,
  user_id     VARCHAR2(50) not null,
  remarks     VARCHAR2(255),
  create_by   VARCHAR2(50),
  create_date DATE,
  update_by   VARCHAR2(50),
  update_date DATE,
  del_flag    VARCHAR2(1) default 'N'
)
;
comment on column COM_ROLE_USER.role_id
  is '��ɫ���';
comment on column COM_ROLE_USER.user_id
  is '�û����';
alter table COM_ROLE_USER
  add constraint PK_COM_ROLE_USER primary key (ROLE_ID, USER_ID);

prompt Creating COM_USER...
create table COM_USER
(
  user_id     VARCHAR2(15) not null,
  office_id   VARCHAR2(64),
  login_name  VARCHAR2(64),
  password    VARCHAR2(64),
  user_name   VARCHAR2(100),
  email       VARCHAR2(100),
  phone_no    VARCHAR2(50),
  mobile_no   VARCHAR2(50),
  user_type   VARCHAR2(2),
  login_ip    VARCHAR2(50),
  login_date  DATE,
  create_by   VARCHAR2(50),
  create_date DATE,
  update_by   VARCHAR2(50),
  update_date DATE,
  del_flag    VARCHAR2(1) default 'N',
  login_flag  VARCHAR2(1) default 'Y',
  remarks     VARCHAR2(500),
  employee_id VARCHAR2(50),
  org_id      VARCHAR2(64)
)
;
comment on table COM_USER
  is '�û���Ϣ��';
comment on column COM_USER.user_id
  is '�û���';
comment on column COM_USER.office_id
  is '����ID';
comment on column COM_USER.login_name
  is '��¼��';
comment on column COM_USER.password
  is '��¼����';
comment on column COM_USER.user_name
  is '�û�����';
comment on column COM_USER.email
  is '����';
comment on column COM_USER.phone_no
  is '����';
comment on column COM_USER.mobile_no
  is '�ֻ�';
comment on column COM_USER.user_type
  is '�û�����';
comment on column COM_USER.login_ip
  is '��¼IP';
comment on column COM_USER.login_date
  is '��¼����';
comment on column COM_USER.create_by
  is '������';
comment on column COM_USER.create_date
  is '��������';
comment on column COM_USER.update_by
  is '������';
comment on column COM_USER.update_date
  is '��������';
comment on column COM_USER.del_flag
  is 'ɾ����ʶ';
comment on column COM_USER.login_flag
  is '�Ƿ������¼';
comment on column COM_USER.remarks
  is '��ע';
comment on column COM_USER.employee_id
  is '��SAPͬ���û�IDʱʹ��';
comment on column COM_USER.org_id
  is '��˾/ҽԺID';
alter table COM_USER
  add constraint PK_COM_USER primary key (USER_ID);

prompt Loading COM_DICT...
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000280, '1', '����', 'producedArea', '����', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000281, '2', '�۰�̨', 'producedArea', '����', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000282, '3', '����', 'producedArea', '����', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000330, '01', '�����¼', 'loginStatus', '��¼״̬', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000331, '02', '��ֹ��¼', 'loginStatus', '��¼״̬', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000332, 'liability_owned', '�������ι�˾����Ȼ�˶��ʻ�عɣ�', 'companyType', '��˾����', 10, null, null, '10000001', to_date('15-02-2017 16:26:47', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000350, '08', '���Ʒ�ɹ�', 'emtDelStatus', '��������', 1, null, null, 'system', to_date('16-11-2016 15:20:01', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000356, '01', '�����¼', 'loginStatus', '��¼״̬', 1, 'System', to_date('15-12-2016 15:34:54', 'dd-mm-yyyy hh24:mi:ss'), 'System', to_date('15-12-2016 15:34:54', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000357, '02', '��ֹ��¼', 'loginStatus', '��¼״̬', 2, 'System', to_date('15-12-2016 15:35:32', 'dd-mm-yyyy hh24:mi:ss'), 'System', to_date('15-12-2016 15:35:32', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000358, 'taxId', '˰��ǼǺ�', 'certificateType', '����֤����', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000359, 'orgCode', '��֯������', 'certificateType', '����֤����', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000360, 'instruRegLicense', '��еע��֤', 'certificateType', '����֤����', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000361, 'businessCert', '��Ӫ���֤', 'certificateType', '����֤����', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000362, 'productLicense', '�������֤', 'certificateType', '����֤����', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000363, 'salesmanAuthor', 'ҵ��Ա��Ȩ', 'certificateType', '����֤����', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000364, 'agencyAuthor', '������Ȩ��', 'certificateType', '����֤����', 8, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000365, 'merge', '��֤��һ', 'certificateType', '����֤����', 9, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000366, 'merge51', '��֤��һ', 'certificateType', '����֤����', 10, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000367, 'securityAuthentication', '��ȫ��֤�飨������', 'certificateType', '����֤����', 11, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000368, 'other', '����֤��', 'certificateType', '����֤����', 12, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000369, 'businessLicense', 'Ӫҵִ��', 'certificateType', '����֤����', 1, '10000001', to_date('04-01-2017 16:14:47', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('04-01-2017 16:14:47', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000380, '02', '�˻����', 'revokeType', '�˻�״̬', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000381, '03', '��ȡ���˻�', 'revokeType', '�˻�״̬', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000382, '05', '������', 'revokeType', '�˻�״̬', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000383, '07', '������ȡ��', 'purchaseType', '�ɹ�����״̬', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000400, 'superUserID', 'admin', 'dataConfigType', '������������-�����û��˻�', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000420, '04', '���ύ', 'approveStatus', '�ݴ棬��Ʒά��״̬', 4, '10000001', to_date('20-04-2017 11:03:22', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('20-04-2017 11:03:37', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000421, null, '�������ι�˾����Ȼ�˶��ʻ�عɣ�', null, '��˾����', 10, 'System', to_date('15-02-2017 16:29:37', 'dd-mm-yyyy hh24:mi:ss'), 'System', to_date('15-02-2017 16:29:37', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000460, '05', '���ύ', 'invoiceStatus', '���ύ', 5, '10000001', to_date('06-05-2017 21:39:00', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('06-05-2017 21:39:00', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000484, '1', 'һ��', 'emtRisk', '���շ���', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000485, '2', '����', 'emtRisk', '���շ���', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000486, '3', '����', 'emtRisk', '���շ���', 3, null, null, '10000001', to_date('27-10-2016 09:39:39', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000500, 'vendor', '��Ӧ������', 'certCategory', '����֤����', 1, '10000001', to_date('25-05-2017 16:47:51', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('25-05-2017 16:47:51', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000501, 'manufacture', '������������', 'certCategory', '����֤����', 2, '10000001', to_date('25-05-2017 16:49:06', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('25-05-2017 16:49:06', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000502, 'authorization', '��Ȩ����', 'certCategory', '����֤����', 3, '10000001', to_date('25-05-2017 16:50:48', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('25-05-2017 16:50:48', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001304, '01', 'ֱ�Ӳɹ�', 'negotiationWay', '̸�з�ʽ', 1, '10000001', to_date('10-01-2017', 'dd-mm-yyyy'), '10000001', to_date('10-01-2017', 'dd-mm-yyyy'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001305, '02', 'Ժ�ڴ���', 'negotiationWay', '̸�з�ʽ', 2, '10000001', to_date('10-01-2017', 'dd-mm-yyyy'), '10000001', to_date('10-01-2017', 'dd-mm-yyyy'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001306, '03', '�����б�', 'negotiationWay', '̸�з�ʽ', 3, '10000001', to_date('10-01-2017', 'dd-mm-yyyy'), '10000001', to_date('10-01-2017', 'dd-mm-yyyy'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001453, '01', '�쵼�ó�', 'emtUse', '������;', 1, '10000001', to_date('21-04-2017 15:58:33', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('21-04-2017 15:58:33', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001454, '02', '�����ó�', 'emtUse', '������;', 2, '10000001', to_date('21-04-2017 15:59:47', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('21-04-2017 15:59:47', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001455, '03', 'רҵ�ó�', 'emtUse', '������;', 3, '10000001', to_date('21-04-2017 16:00:17', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('21-04-2017 16:00:17', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001456, '04', '�����ó�', 'emtUse', '������;', 4, '10000001', to_date('21-04-2017 16:00:49', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('21-04-2017 16:00:49', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001457, '05', '�Ӵ��ó�', 'emtUse', '������;', 5, '10000001', to_date('21-04-2017 16:01:30', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('21-04-2017 16:01:30', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001458, '06', '�����ó�', 'emtUse', '������;', 6, '10000001', to_date('21-04-2017 16:05:52', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('21-04-2017 16:09:51', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000002, '01', 'ʹ����', 'arithmeticType', '�㷨����', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000003, '02', '������', 'arithmeticType', '�㷨����', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000004, '03', '�̶�ֵ', 'arithmeticType', '�㷨����', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000005, '04', 'Ԥ�ⶩ��', 'arithmeticType', '�㷨����', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000014, 'vendor', '��Ӧ������', 'certificateName', '����֤��� ', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000015, 'manufacture', '������������', 'certificateName', '����֤���', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000016, 'author', '��Ȩ����', 'certificateName', '����֤���', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000017, '01', '�����շ�', 'chargeType', '�����շ�����', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000018, '02', '�����շ�', 'chargeType', '�����շ�����', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000019, '03', '����շ�', 'chargeType', '�����շ�����', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000020, 'soe', '������ҵ', 'companyType', '��˾����', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000021, 'collective', '������ҵ', 'companyType', '��˾����', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000022, 'stock', '�ɷ��ƺ�������ҵ', 'companyType', '��˾����', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000023, 'private', '˽Ӫ��ҵ', 'companyType', '��˾����', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000024, 'liability', '�������ι�˾', 'companyType', '��˾����', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000025, 'limited', '�ɷ����޹�˾', 'companyType', '��˾����', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000026, 'joint', '��Ӫ��ҵ', 'companyType', '��˾����', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000027, 'foreign-owned', '���̶���', 'companyType', '��˾����', 8, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000028, 'self-employed', '����', 'companyType', '��˾����', 9, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000032, '04', '�Ѵ�ӡ', 'contractStatus', '��ͬ״̬', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000033, '05', '����ͨ��', 'contractStatus', '��ͬ״̬', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000034, '06', '���˾ܾ�', 'contractStatus', '��ͬ״̬', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000035, '07', '�����', 'contractStatus', '��ͬ״̬', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000037, '02', '��ֵ�Ĳĺ�ͬ', 'contractType', '��ͬ����', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000038, '03', '��ֵ�Ĳĺ�ͬ', 'contractType', '��ͬ����', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000039, 'RMB', '�����', 'currency', '����', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000040, 'GBP', 'Ӣ��', 'currency', '����', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000041, 'HKD', '�۱�', 'currency', '����', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000042, 'USD', '��Ԫ', 'currency', '����', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000043, 'CHF', '��ʿ����', 'currency', '����', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000044, 'SGD', '�¼���Ԫ', 'currency', '����', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000045, 'NLG', '������', 'currency', '����', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000046, 'BEF', '����ʱ����', 'currency', '����', 8, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000047, 'ITL', '���������', 'currency', '����', 9, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000048, 'JPY', '��Ԫ', 'currency', '����', 10, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000049, 'CAD', '���ô�Ԫ', 'currency', '����', 11, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000050, 'AUD', '�Ĵ�����Ԫ', 'currency', '����', 12, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000051, 'ESP', '������������', 'currency', '����', 13, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000052, 'EUR', 'ŷԪ', 'currency', '����', 14, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000053, 'FIM', '�������', 'currency', '����', 15, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000054, 'NZD', '������Ԫ', 'currency', '����', 16, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000055, 'ATS', '�µ�������', 'currency', '����', 17, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000056, 'NOK', 'Ų������', 'currency', '����', 18, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000057, 'THB', '̩����', 'currency', '����', 19, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000058, 'DKK', '�������', 'currency', '����', 20, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000059, 'PHP', '���ɱ�����', 'currency', '����', 21, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000060, 'SEK', '��ʿ����', 'currency', '����', 22, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000061, 'MOP', '����Ԫ', 'currency', '����', 23, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000062, 'AFA', '��������', 'currency', '����', 24, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000063, 'DZD', '���������ǵ��ɶ�', 'currency', '����', 25, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000064, 'ANG', '������˹Ⱥ����', 'currency', '����', 26, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000065, 'ATS', '�µ�������', 'currency', '����', 27, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000066, 'AWF', '��³�͵�������', 'currency', '����', 28, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000067, 'BAK', '��˹���Ǻͺ�����ά��', 'currency', '����', 29, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000068, 'BBD', '�ͰͶ�˹Ԫ', 'currency', '����', 30, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000069, 'BEF', '����ʱ����', 'currency', '����', 31, null, null, null, null, 'N');
commit;
prompt 100 records committed...
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000070, 'AZM', '�����ݽ�', 'currency', '����', 32, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000071, 'XCD', '����ϺͰͲ��ﵺ�����ձȺ�Ԫ', 'currency', '����', 33, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000072, 'XCD', '�����������ձȺ�Ԫ', 'currency', '����', 34, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000073, 'ARP', '����͢����', 'currency', '����', 35, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000074, 'AON', '������', 'currency', '����', 36, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000075, 'AMD', '��������', 'currency', '����', 37, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000076, 'FRF', '����������', 'currency', '����', 38, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000077, 'AED', '����������ķ', 'currency', '����', 39, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000078, 'ALL', '����������', 'currency', '����', 40, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000079, '01', '����', 'instrumentType', '��е����ȼ�', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000080, '02', '����', 'instrumentType', '��е����ȼ�', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000081, '03', '����', 'instrumentType', '��е����ȼ�', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000082, '01', '���̵�', 'inventoryStatus', '�̵�״̬', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000083, '02', '�̵���', 'inventoryStatus', '�̵�״̬', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000084, '03', '��ȷ�Ͻ��', 'inventoryStatus', '�̵�״̬', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000085, '04', '�ѹر�', 'inventoryStatus', '�̵�״̬', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000086, '05', '�̵����', 'inventoryStatus', '�̵�״̬', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000087, '06', 'ȷ����', 'inventoryStatus', '�̵�״̬', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000088, '07', 'ȷ������', 'inventoryStatus', '�̵�״̬', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000089, '01', 'δУ��', 'invoiceStatus', '��Ʊ״̬', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000090, '02', 'У��ͨ��', 'invoiceStatus', '��Ʊ״̬', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000091, '03', 'У���쳣', 'invoiceStatus', '��Ʊ״̬', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000092, '04', '����', 'invoiceStatus', '��Ʊ״̬', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000093, 'vat', '��ֵ˰ר�÷�Ʊ', 'invoiceType', '��Ʊ����', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000094, 'general', '��ֵ˰��ͨ��Ʊ', 'invoiceType', '��Ʊ����', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000125, '01', '��ѡ', 'materialUseType', '�Ĳ��ú�����', 1, null, null, '10000001', to_date('02-11-2017 16:47:00', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000126, '02', 'ֲ��', 'materialUseType', '�Ĳ��ú�����', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000127, '03', '����', 'materialUseType', '�Ĳ��ú�����', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000128, '#', '����:��������֧��', 'payment', '֧����ʽ', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000129, 'C', '����:ת��֧Ʊ', 'payment', '֧����ʽ', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000130, 'I', '����:T/T���', 'payment', '֧����ʽ', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000131, 'J', '����:�ֽ�֧Ʊ', 'payment', '֧����ʽ', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000132, 'L', '����:����ƾ֤', 'payment', '֧����ʽ', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000133, 'M', '����:����', 'payment', '֧����ʽ', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000134, 'N', '����:�Ż�', 'payment', '֧����ʽ', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000135, 'O', '����:���л�Ʊ', 'payment', '֧����ʽ', 8, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000136, 'P', '����:���ճи�', 'payment', '֧����ʽ', 9, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000137, 'Q', '����:ί�и���', 'payment', '֧����ʽ', 10, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000138, 'R', '����:���б�Ʊ', 'payment', '֧����ʽ', 11, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000139, 'S', '����:�ֽ�', 'payment', '֧����ʽ', 12, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000140, 'T', '����:�ڲ�����', 'payment', '֧����ʽ', 13, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000141, 'U', '����:�紫', 'payment', '֧����ʽ', 14, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000142, 'V', '����:L/C����֤ ', 'payment', '֧����ʽ', 15, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000143, 'W', '����:���ÿ� ', 'payment', '֧����ʽ', 16, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000144, 'X', '����:֪ͨ����', 'payment', '֧����ʽ', 17, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000145, 'Y', '����:���гжһ�Ʊ', 'payment', '֧����ʽ', 18, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000146, 'Z', '����:��ҵ��Ʊ', 'payment', '֧����ʽ', 19, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000147, '{', '����:D/A�жҽ���Ʊ ', 'payment', '֧����ʽ', 20, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000148, '}', '����:D/P�����', 'payment', '֧����ʽ', 21, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000149, '~', '����:����', 'payment', '֧����ʽ', 22, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000150, '01', 'ȫ���', 'paymentMethod', '���ʽ', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000151, '02', '�������� ', 'paymentMethod', '���ʽ', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000173, '02', '��ͬ', 'noticeClassify', '�������', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000174, '03', '����', 'noticeClassify', '�������', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000175, '04', '����', 'noticeClassify', '�������', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000176, '110', '����', 'state', '����', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000177, '120', '���', 'state', '����', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000178, '130', '�ӱ�', 'state', '����', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000179, '140', 'ɽ��', 'state', '����', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000180, '150', '���ɹ�', 'state', '����', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000181, '210', '����', 'state', '����', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000182, '220', '����', 'state', '����', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000183, '230', '������', 'state', '����', 8, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000184, '240', '����', 'state', '����', 9, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000185, '310', '�Ϻ�', 'state', '����', 10, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000186, '320', '����', 'state', '����', 11, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000187, '330', '�㽭', 'state', '����', 12, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000188, '340', '����', 'state', '����', 13, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000189, '350', '����', 'state', '����', 14, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000190, '360', '����', 'state', '����', 15, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000191, '370', 'ɽ��', 'state', '����', 16, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000192, '410', '����', 'state', '����', 17, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000193, '420', '����', 'state', '����', 18, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000194, '430', '����', 'state', '����', 19, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000195, '440', '�㶫', 'state', '����', 20, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000196, '450', '����', 'state', '����', 21, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000197, '460', '����', 'state', '����', 22, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000198, '500', '����', 'state', '����', 23, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000199, '510', '�Ĵ�', 'state', '����', 24, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000200, '520', '����', 'state', '����', 25, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000201, '530', '����', 'state', '����', 26, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000202, '540', '����', 'state', '����', 27, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000203, '610', '����', 'state', '����', 28, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000204, '620', '����', 'state', '����', 29, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000205, '630', '�ຣ', 'state', '����', 30, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000206, '640', '����', 'state', '����', 31, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000207, '650', '�½�', 'state', '����', 32, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000208, '710', '̨��', 'state', '����', 33, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000209, '810', '���', 'state', '����', 34, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000210, '820', '����', 'state', '����', 35, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000211, 'T001', '����Ӧ���� ������', 'paymentCondition', '��������', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000212, 'T002', '2 ��֮�� ������', 'paymentCondition', '��������', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000213, 'T003', '3 ��֮�� ������', 'paymentCondition', '��������', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000214, 'T004', '4 ��֮�� ������', 'paymentCondition', '��������', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000215, 'T005', '5 ��֮�� ������', 'paymentCondition', '��������', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000216, 'T006', '6��֮�� ������', 'paymentCondition', '��������', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000217, 'T007', '7��֮�� ������', 'paymentCondition', '��������', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000218, 'T010', '10 ��֮�� ������', 'paymentCondition', '��������', 8, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000219, 'T012', '12 ��֮�� ������', 'paymentCondition', '��������', 9, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000220, 'T014', '14 ��֮�� ������', 'paymentCondition', '��������', 10, null, null, null, null, 'N');
commit;
prompt 200 records committed...
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000221, 'T015', '15 ��֮�� ������', 'paymentCondition', '��������', 11, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000222, 'T018', '18 ��֮�� ������', 'paymentCondition', '��������', 12, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000223, 'T020', '20 ��֮�� ������', 'paymentCondition', '��������', 13, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000224, 'T022', '22 ��֮�� ������', 'paymentCondition', '��������', 14, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000225, 'T025', '25 ��֮�� ������', 'paymentCondition', '��������', 15, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000226, 'T027', '27 ��֮�� ������', 'paymentCondition', '��������', 16, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000227, 'T028', '28 ��֮�� ������', 'paymentCondition', '��������', 17, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000228, 'T029', '29 ��֮�� ������', 'paymentCondition', '��������', 18, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000229, 'T030', '30 ��֮�� ������', 'paymentCondition', '��������', 19, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000230, 'T034', '34 ��֮�� ������', 'paymentCondition', '��������', 20, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000231, 'T040', '40 ��֮�� ������', 'paymentCondition', '��������', 21, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000232, 'T045', '45 ��֮�� ������', 'paymentCondition', '��������', 22, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000233, 'T050', '50 ��֮�� ������', 'paymentCondition', '��������', 23, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000234, 'T055', '55 ��֮�� ������', 'paymentCondition', '��������', 24, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000235, 'T060', '60 ��֮�� ������', 'paymentCondition', '��������', 25, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000236, 'T090', '90 ��֮�� ������', 'paymentCondition', '��������', 26, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000237, 'T100', '100 ��֮�� ������', 'paymentCondition', '��������', 27, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000238, 'T120', '120 ��֮�� ������', 'paymentCondition', '��������', 28, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000239, 'T150', '150 ��֮�� ������', 'paymentCondition', '��������', 29, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000240, 'T180', '180 ��֮�� ������', 'paymentCondition', '��������', 30, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000241, 'T210', '210 ��֮�� ������', 'paymentCondition', '��������', 31, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000242, 'T240', '240 ��֮�� ������', 'paymentCondition', '��������', 32, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000243, 'T270', '270 ��֮�� ������', 'paymentCondition', '��������', 33, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000244, 'T365', '365 ��', 'paymentCondition', '��������', 34, null, null, null, null, 'N');
commit;
prompt 224 records loaded
prompt Loading COM_MENU...
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000000', '-1', '-1', 'ϵͳ����', 1, null, null, null, 'Y', null, null, null, null, null, null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000001', '1000000', '1000000,', 'ϵͳ����', 1, null, null, 'fa fa-list', 'Y', null, null, null, null, null, null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000006', '1000001', '1000000,1000001', '���ݹ���', 5, '/dbBackup', null, null, 'Y', null, null, null, '10000001', to_date('11-04-2016 10:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000007', '1000001', '1000000,1000001', '�û�����', 6, '/user', null, null, 'Y', null, null, null, '10000001', to_date('11-04-2016 10:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000002', '1000001', '1000000,1000001', '�˵�����', 1, '/menu', null, null, 'Y', null, null, null, null, null, null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000003', '1000001', '1000000,1000001', 'Ȩ�޹���', 2, '/role', null, null, 'Y', null, null, null, '10000001', to_date('28-04-2016 20:56:43', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000004', '1000001', '1000000,1000001', '�������', 3, '/notice', null, null, 'Y', null, null, null, '10000001', to_date('30-03-2019 11:54:30', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000008', '1000001', '1000000,1000001', '���ô���', 7, '/comCode', null, null, 'Y', null, null, null, '10000001', to_date('20-07-2016 16:34:23', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
commit;
prompt 8 records loaded
prompt Loading COM_MENU_PERMISSION...
insert into COM_MENU_PERMISSION (menu_permission_id, menu_id, permission_code, permission_name, create_by, create_date, update_by, update_date, del_flag)
values ('1000006', '1000110', 'create', '����', null, to_date('12-12-2016 13:57:46', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('30-03-2019 11:50:25', 'dd-mm-yyyy hh24:mi:ss'), 'Y');
insert into COM_MENU_PERMISSION (menu_permission_id, menu_id, permission_code, permission_name, create_by, create_date, update_by, update_date, del_flag)
values ('1000007', '1000107', 'create', '����', null, null, '10000001', to_date('30-03-2019 11:50:28', 'dd-mm-yyyy hh24:mi:ss'), 'Y');
insert into COM_MENU_PERMISSION (menu_permission_id, menu_id, permission_code, permission_name, create_by, create_date, update_by, update_date, del_flag)
values ('1000011', '1000101', 'create', '����', null, null, '10000001', to_date('30-03-2019 11:50:21', 'dd-mm-yyyy hh24:mi:ss'), 'Y');
insert into COM_MENU_PERMISSION (menu_permission_id, menu_id, permission_code, permission_name, create_by, create_date, update_by, update_date, del_flag)
values ('1000102', '1000111', 'create', '����', null, to_date('25-03-2019 12:09:09', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('30-03-2019 11:50:21', 'dd-mm-yyyy hh24:mi:ss'), 'Y');
commit;
prompt 4 records loaded
prompt Loading COM_NATIONCODE...
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AC', '��ɭ�ɵ� ', 'Ascension Island', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AD', '������', 'Andorra', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AE', '����������������', 'United Arab Emirates', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AF', '������', 'Afghanistan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AG', '����ϺͰͲ���', 'Antigua and Barbuda', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AI', '��������', 'Anguilla', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AL', '����������', 'Albania', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AM', '��������', 'Armenia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AN', '����������˹Ⱥ��', 'Netherlands Antilles', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AO', '������', 'Angola', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AQ', '�ϼ���', 'Antarctica', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AR', '����͢', 'Argentina', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AS', '������Ħ��', 'American Samoa', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AT', '�µ���', 'Austria', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AU', '�Ĵ�����', 'Australia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AW', '��³��', 'Aruba', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AX', '����Ⱥ��(������)', 'Aland Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AZ', '�����ݽ�', 'Azerbaijan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BA', '��˹���Ǻͺ�����ά��', 'Bosnia and Herzegovina', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BB', '�ͰͶ�˹', 'Barbados', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BD', '�ϼ�����', 'Bangladesh', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BE', '����ʱ', 'Belgium', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BF', '�����ɷ���', 'Burkina Faso', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BG', '��������', 'Bulgaria', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BH', '����', 'Bahrain', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BI', '��¡��', 'Burundi', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BJ', '����', 'Benin', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BM', '��Ľ��Ⱥ��', 'Bermuda', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BN', '����', 'Brunei Darussalam', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BO', '����ά��', 'Bolivia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BR', '����', 'Brazil', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BS', '�͹���', 'Bahamas', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BT', '����', 'Bhutan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BV', '��Τ��', 'Bouvet Island', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BW', '��������', 'Botswana', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BY', '�׶���˹', 'Belarus', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BZ', '������', 'Belize', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CA', '���ô�', 'Canada', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CC', '�ƿ�˹Ⱥ��������Ⱥ����', 'Cocos (Keeling) Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CD', '�չ��������͹�', 'Congo, The Democratic Republic Of The', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CF', '�зǹ��͹�', 'Central African Republic', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CG', '�չ�', 'Congo, Republic of the', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CH', '��ʿ', 'Switzerland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CI', '���ص���', 'Cote d''Ivoire', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CK', '���Ⱥ��', 'Cook Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CL', '����', 'Chile', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CM', '����¡', 'Cameroon', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CN', '�й�', 'China, People''s Republic of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CO', '���ױ���', 'Colombia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CR', '��˹�����', 'Costa Rica', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CS', '����ά�Ǻͺ�ɽ ', 'Serbia and Montenegro', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CU', '�Ű�', 'Cuba', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CV', '��ý�', 'Cape Verde', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CX', 'ʥ����', 'Christmas Island', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CY', '����·˹', 'Cyprus', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CZ', '�ݿ˹��͹�', 'Czech Republic', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('DE', '�¹�', 'Germany', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('DJ', '������', 'Djibouti', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('DK', '����', 'Denmark', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('DM', '�������', 'Dominica', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('DO', '������ӹ��͹�', 'Dominican Republic', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('DZ', '����������', 'Algeria', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('EC', '��϶��', 'Ecuador', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('EE', '��ɳ����', 'Estonia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('EG', '����', 'Egypt', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('EH', '�������� ', 'Western Sahara', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ER', '����������', 'Eritrea', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ES', '������', 'Spain', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ET', '���������', 'Ethiopia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('EU', 'ŷ��', 'European Union', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('FI', '����', 'Finland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('FJ', '쳼�Ⱥ��', 'Fiji', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('FK', '������Ⱥ��(���ά��˹Ⱥ��)', 'Falkland Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('FM', '�ܿ���������', 'Micronesia, Federated States of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('FO', '����Ⱥ��', 'Faroe Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('FR', '����', 'France', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GA', '����', 'Gabon', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GD', '�����ɴ�', 'Grenada', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GE', '������', 'Georgia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GF', '����������', 'French Guiana', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GG', '�����', 'Guernsey', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GH', '����', 'Ghana', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GI', 'ֱ������', 'Gibraltar', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GL', '������', 'Greenland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GM', '�Ա���', 'Gambia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GN', '������', 'Guinea', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GP', '�ϵ����յ�', 'Guadeloupe', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GQ', '���������', 'Equatorial Guinea', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GR', 'ϣ��', 'Greece', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GS', '�������Ǻ���ɣ������Ⱥ��', 'South Georgia and the South Sandwich Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GT', 'Σ������', 'Guatemala', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GU', '�ص�', 'Guam', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GW', '�����Ǳ���', 'Guinea-Bissau', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GY', '������', 'Guyana', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('HK', '�й����', 'Hong Kong', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('HM', '�յº��������Ⱥ��', 'Heard Island and McDonald Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('HN', '�鶼��˹', 'Honduras', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('HR', '���޵���', 'Croatia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('HT', '����', 'Haiti', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('HU', '������', 'Hungary', 'N', null, null, null, null);
commit;
prompt 100 records committed...
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ID', 'ӡ��������', 'Indonesia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IE', '������', 'Ireland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IL', '��ɫ��', 'Israel', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IM', '�����', 'Isle of Man', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IN', 'ӡ��', 'India', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IO', '���е�ӡ��������', 'British Indian Ocean Territory', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IQ', '������', 'Iraq', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IR', '����', 'Iran, Islamic Republic of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IS', '����', 'Iceland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IT', '�����', 'Italy', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('JE', '����', 'Jersey', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('JM', '�����', 'Jamaica', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('JO', 'Լ��', 'Jordan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('JP', '�ձ�', 'Japan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KE', '������', 'Kenya', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KG', '������˹˹̹', 'Kyrgyzstan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KH', '����կ', 'Cambodia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KI', '�����˹', 'Kiribati', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KM', '��Ħ��', 'Comoros', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KN', 'ʥ���ĺ���ά˹', 'Saint Kitts and Nevis', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KP', '����', 'Korea, Democratic People''s Republic of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KR', '����', 'Korea, Republic of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KW', '������', 'Kuwait', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KY', '����Ⱥ��', 'Cayman Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KZ', '������˹̹', 'Kazakhstan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LA', '����', 'Lao People''s Democratic Republic', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LB', '�����', 'Lebanon', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LC', 'ʥ¬����', 'Saint Lucia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LI', '��֧��ʿ��', 'Liechtenstein', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LK', '˹������', 'Sri Lanka', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LR', '��������', 'Liberia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LS', '������', 'Lesotho', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LT', '������', 'Lithuania', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LU', '¬ɭ��', 'Luxembourg', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LV', '����ά��', 'Latvia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LY', '������', 'Libyan Arab Jamahiriya', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MA', 'Ħ���', 'Morocco', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MC', 'Ħ�ɸ�', 'Monaco', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MD', 'Ħ������', 'Moldova, Republic of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MG', '����˹��', 'Madagascar', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MH', '���ܶ�Ⱥ��', 'Marshall Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MK', '�����,ǰ��˹���򹲺͹�', 'Macedonia, The Former Yugoslav Republic of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ML', '����', 'Mali', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MM', '���', 'Myanmar', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MN', '�ɹ�', 'Mongolia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MO', '�й�����', 'Macao', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MP', '����������Ⱥ��', 'Northern Mariana Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MQ', '������˵�', 'Martinique', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MR', 'ë��������', 'Mauritania', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MS', '����������', 'Montserrat', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MT', '�����', 'Malta', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MU', 'ë����˹', 'Mauritius', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MV', '�������', 'Maldives', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MW', '����ά', 'Malawi', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MX', 'ī����', 'Mexico', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MY', '��������', 'Malaysia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MZ', 'Īɣ�ȿ�', 'Mozambique', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NA', '���ױ���', 'Namibia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NC', '�¿��������', 'New Caledonia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NE', '���ն�', 'Niger', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NF', 'ŵ���˵�', 'Norfolk Island', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NG', '��������', 'Nigeria', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NI', '�������', 'Nicaragua', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NL', '����', 'Netherlands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NO', 'Ų��', 'Norway', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NP', '�Ჴ��', 'Nepal', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NR', '�³', 'Nauru', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NU', 'Ŧ��', 'Niue', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NZ', '������', 'New Zealand', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('OM', '����', 'Oman', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PA', '������', 'Panama', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PE', '��³', 'Peru', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PF', '��������������', 'French Polynesia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PG', '�Ͳ����¼�����', 'Papua New Guinea', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PH', '���ɱ�', 'Philippines', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PK', '�ͻ�˹̹', 'Pakistan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PL', '����', 'Poland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PM', 'ʥƤ���������ܿ�¡��', 'Saint-Pierre and Miquelon', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PN', 'Ƥ�ؿ˶�Ⱥ��', 'Pitcairn', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PR', '�������', 'Puerto Rico', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PS', '����˹̹����', 'Palestinian Territory, Occupied', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PT', '������', 'Portugal', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PW', '����Ⱥ��', 'Palau', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PY', '������', 'Paraguay', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('QA', '������', 'Qatar', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('RE', '��������', 'Reunion', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('RO', '��������', 'Romania', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('RU', '����˹', 'Russian Federation', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('RW', '¬����', 'Rwanda', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SA', 'ɳ�ذ�����', 'Saudi Arabia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SB', '������Ⱥ��', 'Solomon Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SC', '�����', 'Seychelles', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SD', '�յ�', 'Sudan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SE', '���', 'Sweden', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SG', '�¼���', 'Singapore', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SH', 'ʥ�����õ�', 'Saint Helena', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SI', '˹��������', 'Slovenia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SJ', '˹�߶���Ⱥ����������', 'Svalbard and Jan Mayen', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SK', '˹�工��', 'Slovakia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SL', '��������', 'Sierra Leone', 'N', null, null, null, null);
commit;
prompt 200 records committed...
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SM', 'ʥ����ŵ', 'San Marino', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SN', '���ڼӶ�', 'Senegal', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SO', '������', 'Somalia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SR', '������', 'Suriname', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ST', 'ʥ��������������', 'São Tomé and Príncipe', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SV', '�����߶�', 'El Salvador', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SY', '������', 'Syrian Arab Republic', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SZ', '˹��ʿ��', 'Swaziland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TC', '�ؿ�˹Ⱥ���Ϳ���˹Ⱥ��', 'Turks and Caicos Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TD', 'է��', 'Chad', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TF', '�����ϼ�����', 'French Southern Territories', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TG', '���', 'Togo', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TH', '̩��', 'Thailand', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TJ', '������˹̹', 'Tajikistan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TK', '�п���', 'Tokelau', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TL', '������ ', 'Timor-Leste', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TM', '������˹̹', 'Turkmenistan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TN', 'ͻ��˹', 'Tunisia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TO', '����', 'Tonga', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TP', '������', 'East Timor', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TR', '������', 'Turkey', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TT', '�������Ͷ�͸�', 'Trinidad and Tobago', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TV', 'ͼ��¬', 'Tuvalu', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TW', '�й�̨��', 'Taiwan (TAIWAN, Province of China)', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TZ', '̹ɣ����', 'Tanzania, United Republic Of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('UA', '�ڿ���', 'Ukraine', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('UG', '�ڸɴ�', 'Uganda', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('UK', 'Ӣ��', 'United Kingdom', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('UM', '����С������Ⱥ��', 'United States Minor Outlying Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('US', '����', 'United States', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('UY', '������', 'Uruguay', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('UZ', '���ȱ��˹̹', 'Uzbekistan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VA', '��ٸԳ�', 'Vatican City State', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VC', 'ʥ��ɭ�غ͸����ɶ�˹', 'Saint Vincent and the Grenadines', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VE', 'ί������', 'Venezuela', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VG', 'ά����Ⱥ����Ӣ����', 'Virgin Islands, British', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VI', 'ά����Ⱥ��', 'Virgin Islands, U.S.', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VN', 'Խ��', 'Viet Nam', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VU', '��Ŭ��ͼ', 'Vanuatu', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('WF', '����˹Ⱥ���͸�ͼ��Ⱥ��', 'Wallis and Futuna', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('WS', '��Ħ��', 'Samoa', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('YE', 'Ҳ��', 'Yemen', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('YT', '��Լ�ص�', 'Mayotte', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('YU', '����ά�Ǻ��ŵ��ڸ���', 'Yugoslavia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ZA', '�Ϸ�', 'South Africa', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ZM', '�ޱ���', 'Zambia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ZW', '��Ͳ�Τ', 'Zimbabwe', 'N', null, null, null, null);
commit;
prompt 247 records loaded
prompt Loading COM_ROLE...
insert into COM_ROLE (role_id, role_name, role_enname, role_type, data_scope, is_sys, remarks, create_by, create_date, update_by, update_date, del_flag)
values ('10000001', 'ϵͳ����Ա', 'admin', 'admin', '1', 'Y', null, null, null, '10000001', to_date('17-10-2018 19:02:47', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_ROLE (role_id, role_name, role_enname, role_type, data_scope, is_sys, remarks, create_by, create_date, update_by, update_date, del_flag)
values ('10000003', '��ͨ�û�', 'General User', null, null, null, '��ͨ�û�', '10000001', to_date('08-07-2016 22:02:07', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('26-01-2018 14:05:25', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_ROLE (role_id, role_name, role_enname, role_type, data_scope, is_sys, remarks, create_by, create_date, update_by, update_date, del_flag)
values ('10000120', '��ʱ�û�', 'casual user', null, null, null, 'ע�ᵫδ�ύ�������û�', '10000001', to_date('16-07-2018 11:33:59', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('17-10-2018 19:02:55', 'dd-mm-yyyy hh24:mi:ss'), 'N');
commit;
prompt 3 records loaded
prompt Loading COM_ROLE_MENU...
prompt Table is empty
prompt Loading COM_ROLE_USER...
insert into COM_ROLE_USER (role_id, user_id, remarks, create_by, create_date, update_by, update_date, del_flag)
values ('10000001', '1001400', null, null, null, null, null, 'N');
commit;
prompt 1 records loaded
prompt Loading COM_USER...
insert into COM_USER (user_id, office_id, login_name, password, user_name, email, phone_no, mobile_no, user_type, login_ip, login_date, create_by, create_date, update_by, update_date, del_flag, login_flag, remarks, employee_id, org_id)
values ('10000001', '1', 'admin', '823ef22bc2c1d8978b3949f8212c349a4140b52e7a6e4a70ec1cb0bf', 'ϵͳ����Ա', null, null, null, null, '0:0:0:0:0:0:0:1', to_date('30-03-2019 12:08:36', 'dd-mm-yyyy hh24:mi:ss'), '10000001', null, '10000001', to_date('30-03-2019 11:17:08', 'dd-mm-yyyy hh24:mi:ss'), 'N', 'Y', null, null, '1000');
commit;
prompt 1 records loaded
set feedback on
set define on
prompt Done.
