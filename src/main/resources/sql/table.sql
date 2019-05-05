------------------------------------------
-- Export file for user ECC@ORCL        --
-- Created by fxf on 2019/5/5, 17:54:36 --
------------------------------------------

set define off
spool ecc.log

prompt
prompt Creating table COM_DICT
prompt =======================
prompt
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
  is '共同代码表';
comment on column COM_DICT.dict_id
  is '编码';
comment on column COM_DICT.code
  is '代码';
comment on column COM_DICT.label
  is '标签名';
comment on column COM_DICT.type
  is '分类';
comment on column COM_DICT.remark
  is '描述';
comment on column COM_DICT.sort
  is '排序';
comment on column COM_DICT.create_by
  is '创建人';
comment on column COM_DICT.create_date
  is '创建日期';
comment on column COM_DICT.update_by
  is '更新人';
comment on column COM_DICT.update_date
  is '更新日期';
comment on column COM_DICT.del_flag
  is '删除标识';
alter table COM_DICT
  add constraint PK_COM_DICT primary key (DICT_ID);

prompt
prompt Creating table COM_FILE
prompt =======================
prompt
create table COM_FILE
(
  file_id        VARCHAR2(100) not null,
  file_name      VARCHAR2(100),
  file_size      VARCHAR2(100),
  file_path      VARCHAR2(100),
  file_dir       VARCHAR2(100),
  file_name_orig VARCHAR2(100),
  create_by      VARCHAR2(10),
  create_date    DATE not null,
  update_by      VARCHAR2(10),
  update_date    DATE
)
;
comment on table COM_FILE
  is '附件表';
comment on column COM_FILE.file_id
  is '文件名id';
comment on column COM_FILE.file_name
  is '文件名';
comment on column COM_FILE.file_size
  is '文件大小';
comment on column COM_FILE.file_path
  is '文件路径';
comment on column COM_FILE.file_dir
  is '文件夹路径';
comment on column COM_FILE.file_name_orig
  is '原始文件名';
comment on column COM_FILE.create_by
  is '创建者';
comment on column COM_FILE.create_date
  is '创建日期';
comment on column COM_FILE.update_by
  is '更新者';
comment on column COM_FILE.update_date
  is '更新日期';
alter table COM_FILE
  add constraint PK_COM_FILE primary key (FILE_ID);

prompt
prompt Creating table COM_MENU
prompt =======================
prompt
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
  is '菜单表';
comment on column COM_MENU.menu_id
  is '编号';
comment on column COM_MENU.parent_id
  is '父级编号';
comment on column COM_MENU.parent_ids
  is '所有父级编号';
comment on column COM_MENU.name
  is '名称';
comment on column COM_MENU.sort
  is '排序';
comment on column COM_MENU.href
  is '链接';
comment on column COM_MENU.target
  is '目标';
comment on column COM_MENU.icon
  is '图标';
comment on column COM_MENU.is_show
  is '是否在菜单中显示';
comment on column COM_MENU.permission
  is '权限标识';
comment on column COM_MENU.create_by
  is '创建人';
comment on column COM_MENU.create_date
  is '创建日期';
comment on column COM_MENU.update_by
  is '更新人';
comment on column COM_MENU.update_date
  is '更新日期';
comment on column COM_MENU.del_flag
  is '删除标识';
alter table COM_MENU
  add constraint PK_COM_MENU primary key (MENU_ID);

prompt
prompt Creating table COM_MENU_PERMISSION
prompt ==================================
prompt
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
  is '菜单权限表';
comment on column COM_MENU_PERMISSION.menu_permission_id
  is '权限编号';
comment on column COM_MENU_PERMISSION.menu_id
  is '菜单ID';
comment on column COM_MENU_PERMISSION.permission_code
  is '权限编码';
comment on column COM_MENU_PERMISSION.permission_name
  is '权限名称';
comment on column COM_MENU_PERMISSION.create_by
  is '创建人';
comment on column COM_MENU_PERMISSION.create_date
  is '创建日期';
comment on column COM_MENU_PERMISSION.update_by
  is '更新人';
comment on column COM_MENU_PERMISSION.update_date
  is '更新日期';
comment on column COM_MENU_PERMISSION.del_flag
  is '删除标识';
alter table COM_MENU_PERMISSION
  add constraint PK_COM_MENU_PERMISSION primary key (MENU_PERMISSION_ID);

prompt
prompt Creating table COM_NATIONCODE
prompt =============================
prompt
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
  is '国家代码表';
comment on column COM_NATIONCODE.nation_code
  is '代码';
comment on column COM_NATIONCODE.nation_name
  is '国家';
comment on column COM_NATIONCODE.nation_en_name
  is '英文名';
comment on column COM_NATIONCODE.del_flag
  is '删除标识';
comment on column COM_NATIONCODE.create_by
  is '创建者';
comment on column COM_NATIONCODE.create_date
  is '创建日期';
comment on column COM_NATIONCODE.update_by
  is '更新者';
comment on column COM_NATIONCODE.update_date
  is '更新日期';
alter table COM_NATIONCODE
  add constraint PK_COM_NATIONCODE primary key (NATION_CODE);

prompt
prompt Creating table COM_ROLE
prompt =======================
prompt
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
  is '角色表';
comment on column COM_ROLE.role_id
  is '编号';
comment on column COM_ROLE.role_name
  is '角色名称';
comment on column COM_ROLE.role_enname
  is '英文名称';
comment on column COM_ROLE.role_type
  is '角色类型';
comment on column COM_ROLE.data_scope
  is '数据范围';
comment on column COM_ROLE.is_sys
  is '是否系统数据';
alter table COM_ROLE
  add constraint PK_COM_ROLE primary key (ROLE_ID);

prompt
prompt Creating table COM_ROLE_MENU
prompt ============================
prompt
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
  is '角色菜单分配表';
comment on column COM_ROLE_MENU.role_id
  is '角色编号';
comment on column COM_ROLE_MENU.menu_id
  is '菜单编号';
comment on column COM_ROLE_MENU.remarks
  is '备注';
comment on column COM_ROLE_MENU.create_by
  is '创建人';
comment on column COM_ROLE_MENU.create_date
  is '创建日期';
comment on column COM_ROLE_MENU.update_by
  is '更新人';
comment on column COM_ROLE_MENU.update_date
  is '更新日期';
comment on column COM_ROLE_MENU.permission_code
  is '权限编码,多个PERMISSION_CODE以逗号分隔';
comment on column COM_ROLE_MENU.del_flag
  is '删除标识';
alter table COM_ROLE_MENU
  add constraint PK_COM_ROLE_MENU primary key (ROLE_ID, MENU_ID);

prompt
prompt Creating table COM_ROLE_USER
prompt ============================
prompt
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
  is '角色编号';
comment on column COM_ROLE_USER.user_id
  is '用户编号';
alter table COM_ROLE_USER
  add constraint PK_COM_ROLE_USER primary key (ROLE_ID, USER_ID);

prompt
prompt Creating table COM_USER
prompt =======================
prompt
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
  is '用户信息表';
comment on column COM_USER.user_id
  is '用户名';
comment on column COM_USER.office_id
  is '部门ID';
comment on column COM_USER.login_name
  is '登录名';
comment on column COM_USER.password
  is '登录密码';
comment on column COM_USER.user_name
  is '用户姓名';
comment on column COM_USER.email
  is '邮箱';
comment on column COM_USER.phone_no
  is '座机';
comment on column COM_USER.mobile_no
  is '手机';
comment on column COM_USER.user_type
  is '用户分类';
comment on column COM_USER.login_ip
  is '登录IP';
comment on column COM_USER.login_date
  is '登录日期';
comment on column COM_USER.create_by
  is '创建人';
comment on column COM_USER.create_date
  is '创建日期';
comment on column COM_USER.update_by
  is '更新人';
comment on column COM_USER.update_date
  is '更新日期';
comment on column COM_USER.del_flag
  is '删除标识';
comment on column COM_USER.login_flag
  is '是否允许登录';
comment on column COM_USER.remarks
  is '备注';
comment on column COM_USER.employee_id
  is '与SAP同步用户ID时使用';
comment on column COM_USER.org_id
  is '公司/医院ID';
alter table COM_USER
  add constraint PK_COM_USER primary key (USER_ID);

prompt
prompt Creating table TB_ECC_AGR_CARBONCON
prompt ===================================
prompt
create table TB_ECC_AGR_CARBONCON
(
  countrycode VARCHAR2(50),
  countryname VARCHAR2(50),
  tea         VARCHAR2(50),
  beans       VARCHAR2(50),
  nuts        VARCHAR2(50),
  coffee      VARCHAR2(50),
  cocoa       VARCHAR2(50),
  hemp        VARCHAR2(50),
  cotton      VARCHAR2(50),
  othergrains VARCHAR2(50),
  vegetables  VARCHAR2(50),
  potato      VARCHAR2(50),
  rice        VARCHAR2(50),
  sugar       VARCHAR2(50),
  wheat       VARCHAR2(50),
  tobacco     VARCHAR2(50),
  corn        VARCHAR2(50),
  oil         VARCHAR2(50),
  palm        VARCHAR2(50)
)
;
comment on table TB_ECC_AGR_CARBONCON
  is '农业生产碳含量转换系数表';
comment on column TB_ECC_AGR_CARBONCON.countrycode
  is '国家代码';
comment on column TB_ECC_AGR_CARBONCON.countryname
  is '国家名称';
comment on column TB_ECC_AGR_CARBONCON.tea
  is '茶';
comment on column TB_ECC_AGR_CARBONCON.beans
  is '豆类';
comment on column TB_ECC_AGR_CARBONCON.nuts
  is '坚果';
comment on column TB_ECC_AGR_CARBONCON.coffee
  is '咖啡';
comment on column TB_ECC_AGR_CARBONCON.cocoa
  is '可可';
comment on column TB_ECC_AGR_CARBONCON.hemp
  is '麻类';
comment on column TB_ECC_AGR_CARBONCON.cotton
  is '棉花';
comment on column TB_ECC_AGR_CARBONCON.othergrains
  is '其它谷物';
comment on column TB_ECC_AGR_CARBONCON.vegetables
  is '蔬果';
comment on column TB_ECC_AGR_CARBONCON.potato
  is '薯类';
comment on column TB_ECC_AGR_CARBONCON.rice
  is '水稻';
comment on column TB_ECC_AGR_CARBONCON.sugar
  is '糖料';
comment on column TB_ECC_AGR_CARBONCON.wheat
  is '小麦';
comment on column TB_ECC_AGR_CARBONCON.tobacco
  is '烟草';
comment on column TB_ECC_AGR_CARBONCON.corn
  is '玉米';
comment on column TB_ECC_AGR_CARBONCON.oil
  is '油料';
comment on column TB_ECC_AGR_CARBONCON.palm
  is '棕榈';

prompt
prompt Creating table TB_ECC_AGR_HARVESTINDEX
prompt ======================================
prompt
create table TB_ECC_AGR_HARVESTINDEX
(
  countrycode VARCHAR2(50),
  countryname VARCHAR2(50),
  tea         VARCHAR2(50),
  beans       VARCHAR2(50),
  nuts        VARCHAR2(50),
  coffee      VARCHAR2(50),
  cocoa       VARCHAR2(50),
  hemp        VARCHAR2(50),
  cotton      VARCHAR2(50),
  othergrains VARCHAR2(50),
  vegetables  VARCHAR2(50),
  potato      VARCHAR2(50),
  rice        VARCHAR2(50),
  sugar       VARCHAR2(50),
  wheat       VARCHAR2(50),
  tobacco     VARCHAR2(50),
  corn        VARCHAR2(50),
  oil         VARCHAR2(50),
  palm        VARCHAR2(50)
)
;
comment on table TB_ECC_AGR_HARVESTINDEX
  is '农业生产收获指数表';
comment on column TB_ECC_AGR_HARVESTINDEX.countrycode
  is '国家代码';
comment on column TB_ECC_AGR_HARVESTINDEX.countryname
  is '国家名称';
comment on column TB_ECC_AGR_HARVESTINDEX.tea
  is '茶';
comment on column TB_ECC_AGR_HARVESTINDEX.beans
  is '豆类';
comment on column TB_ECC_AGR_HARVESTINDEX.nuts
  is '坚果';
comment on column TB_ECC_AGR_HARVESTINDEX.coffee
  is '咖啡';
comment on column TB_ECC_AGR_HARVESTINDEX.cocoa
  is '可可';
comment on column TB_ECC_AGR_HARVESTINDEX.hemp
  is '麻类';
comment on column TB_ECC_AGR_HARVESTINDEX.cotton
  is '棉花';
comment on column TB_ECC_AGR_HARVESTINDEX.othergrains
  is '其它谷物';
comment on column TB_ECC_AGR_HARVESTINDEX.vegetables
  is '蔬果';
comment on column TB_ECC_AGR_HARVESTINDEX.potato
  is '薯类';
comment on column TB_ECC_AGR_HARVESTINDEX.rice
  is '水稻';
comment on column TB_ECC_AGR_HARVESTINDEX.sugar
  is '糖料';
comment on column TB_ECC_AGR_HARVESTINDEX.wheat
  is '小麦';
comment on column TB_ECC_AGR_HARVESTINDEX.tobacco
  is '烟草';
comment on column TB_ECC_AGR_HARVESTINDEX.corn
  is '玉米';
comment on column TB_ECC_AGR_HARVESTINDEX.oil
  is '油料';
comment on column TB_ECC_AGR_HARVESTINDEX.palm
  is '棕榈';

prompt
prompt Creating table TB_ECC_AGR_IMPORTANDEXPORT
prompt =========================================
prompt
create table TB_ECC_AGR_IMPORTANDEXPORT
(
  country_code               VARCHAR2(50),
  country_name               VARCHAR2(50),
  product_type               VARCHAR2(50),
  imports                    VARCHAR2(50),
  exports                    VARCHAR2(50),
  unit_con_coe               VARCHAR2(50),
  water_content              VARCHAR2(50),
  dis_coefficient            VARCHAR2(50),
  bio_car                    VARCHAR2(50),
  utilization_rate           VARCHAR2(50),
  harvest_index              VARCHAR2(50),
  trade_waste_rate           VARCHAR2(50),
  trade_waste_rate_increases VARCHAR2(50),
  import_consumption         VARCHAR2(50),
  export_consumption         VARCHAR2(50)
)
;
comment on table TB_ECC_AGR_IMPORTANDEXPORT
  is '农业进出口表';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.country_code
  is '国家代码';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.country_name
  is '国家名称';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.product_type
  is '农产品种类';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.imports
  is '农产品进口量';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.exports
  is '农产品出口量';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.unit_con_coe
  is '单位转换系数';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.water_content
  is '作物含水量';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.dis_coefficient
  is '折粮系数';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.bio_car
  is '生物量与碳含量转换系数';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.utilization_rate
  is '农业资源利用率';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.harvest_index
  is '收获指数';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.trade_waste_rate
  is '农业贸易浪费率';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.trade_waste_rate_increases
  is '农业贸易浪费率提升率';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.import_consumption
  is '农业进口消耗量';
comment on column TB_ECC_AGR_IMPORTANDEXPORT.export_consumption
  is '农业出口消耗量';

prompt
prompt Creating table TB_ECC_AGR_PROCON
prompt ================================
prompt
create table TB_ECC_AGR_PROCON
(
  countrycode VARCHAR2(50),
  countryname VARCHAR2(50),
  tea         VARCHAR2(50),
  beans       VARCHAR2(50),
  nuts        VARCHAR2(50),
  coffee      VARCHAR2(50),
  cocoa       VARCHAR2(50),
  hemp        VARCHAR2(50),
  cotton      VARCHAR2(50),
  othergrains VARCHAR2(50),
  vegetables  VARCHAR2(50),
  potato      VARCHAR2(50),
  rice        VARCHAR2(50),
  sugar       VARCHAR2(50),
  wheat       VARCHAR2(50),
  tobacco     VARCHAR2(50),
  corn        VARCHAR2(50),
  oil         VARCHAR2(50),
  palm        VARCHAR2(50),
  prores      VARCHAR2(50),
  wlr         VARCHAR2(50)
)
;
comment on table TB_ECC_AGR_PROCON
  is '农业生产消耗量表';
comment on column TB_ECC_AGR_PROCON.countrycode
  is '国家代码';
comment on column TB_ECC_AGR_PROCON.countryname
  is '国家名称';
comment on column TB_ECC_AGR_PROCON.tea
  is '茶';
comment on column TB_ECC_AGR_PROCON.beans
  is '豆类';
comment on column TB_ECC_AGR_PROCON.nuts
  is '坚果';
comment on column TB_ECC_AGR_PROCON.coffee
  is '咖啡';
comment on column TB_ECC_AGR_PROCON.cocoa
  is '可可';
comment on column TB_ECC_AGR_PROCON.hemp
  is '麻类';
comment on column TB_ECC_AGR_PROCON.cotton
  is '棉花';
comment on column TB_ECC_AGR_PROCON.othergrains
  is '其它谷物';
comment on column TB_ECC_AGR_PROCON.vegetables
  is '蔬果';
comment on column TB_ECC_AGR_PROCON.potato
  is '薯类';
comment on column TB_ECC_AGR_PROCON.rice
  is '水稻';
comment on column TB_ECC_AGR_PROCON.sugar
  is '糖料';
comment on column TB_ECC_AGR_PROCON.wheat
  is '小麦';
comment on column TB_ECC_AGR_PROCON.tobacco
  is '烟草';
comment on column TB_ECC_AGR_PROCON.corn
  is '玉米';
comment on column TB_ECC_AGR_PROCON.oil
  is '油料';
comment on column TB_ECC_AGR_PROCON.palm
  is '棕榈';
comment on column TB_ECC_AGR_PROCON.prores
  is '农业生产资源利用率';
comment on column TB_ECC_AGR_PROCON.wlr
  is '农业生产浪费率提升率';

prompt
prompt Creating table TB_ECC_AGR_PRODUCTION
prompt ====================================
prompt
create table TB_ECC_AGR_PRODUCTION
(
  countrycode VARCHAR2(50),
  countryname VARCHAR2(50),
  tea         VARCHAR2(50),
  beans       VARCHAR2(50),
  nuts        VARCHAR2(50),
  coffee      VARCHAR2(50),
  cocoa       VARCHAR2(50),
  hemp        VARCHAR2(50),
  cotton      VARCHAR2(50),
  othergrains VARCHAR2(50),
  vegetables  VARCHAR2(50),
  potato      VARCHAR2(50),
  rice        VARCHAR2(50),
  sugar       VARCHAR2(50),
  wheat       VARCHAR2(50),
  tobacco     VARCHAR2(50),
  corn        VARCHAR2(50),
  oil         VARCHAR2(50),
  palm        VARCHAR2(50)
)
;
comment on table TB_ECC_AGR_PRODUCTION
  is '农业生产表';
comment on column TB_ECC_AGR_PRODUCTION.countrycode
  is '国家代码';
comment on column TB_ECC_AGR_PRODUCTION.countryname
  is '国家名称';
comment on column TB_ECC_AGR_PRODUCTION.tea
  is '茶';
comment on column TB_ECC_AGR_PRODUCTION.beans
  is '豆类';
comment on column TB_ECC_AGR_PRODUCTION.nuts
  is '坚果';
comment on column TB_ECC_AGR_PRODUCTION.coffee
  is '咖啡';
comment on column TB_ECC_AGR_PRODUCTION.cocoa
  is '可可';
comment on column TB_ECC_AGR_PRODUCTION.hemp
  is '麻类';
comment on column TB_ECC_AGR_PRODUCTION.cotton
  is '棉花';
comment on column TB_ECC_AGR_PRODUCTION.othergrains
  is '其它谷物';
comment on column TB_ECC_AGR_PRODUCTION.vegetables
  is '蔬果';
comment on column TB_ECC_AGR_PRODUCTION.potato
  is '薯类';
comment on column TB_ECC_AGR_PRODUCTION.rice
  is '水稻';
comment on column TB_ECC_AGR_PRODUCTION.sugar
  is '糖料';
comment on column TB_ECC_AGR_PRODUCTION.wheat
  is '小麦';
comment on column TB_ECC_AGR_PRODUCTION.tobacco
  is '烟草';
comment on column TB_ECC_AGR_PRODUCTION.corn
  is '玉米';
comment on column TB_ECC_AGR_PRODUCTION.oil
  is '油料';
comment on column TB_ECC_AGR_PRODUCTION.palm
  is '棕榈';

prompt
prompt Creating table TB_ECC_AGR_UNITCONVER
prompt ====================================
prompt
create table TB_ECC_AGR_UNITCONVER
(
  countrycode VARCHAR2(50),
  countryname VARCHAR2(50),
  tea         VARCHAR2(50),
  beans       VARCHAR2(50),
  nuts        VARCHAR2(50),
  coffee      VARCHAR2(50),
  cocoa       VARCHAR2(50),
  hemp        VARCHAR2(50),
  cotton      VARCHAR2(50),
  othergrains VARCHAR2(50),
  vegetables  VARCHAR2(50),
  potato      VARCHAR2(50),
  rice        VARCHAR2(50),
  sugar       VARCHAR2(50),
  wheat       VARCHAR2(50),
  tobacco     VARCHAR2(50),
  corn        VARCHAR2(50),
  oil         VARCHAR2(50),
  palm        VARCHAR2(50)
)
;
comment on table TB_ECC_AGR_UNITCONVER
  is '农业单位转换系数表';
comment on column TB_ECC_AGR_UNITCONVER.countrycode
  is '国家代码';
comment on column TB_ECC_AGR_UNITCONVER.countryname
  is '国家名称';
comment on column TB_ECC_AGR_UNITCONVER.tea
  is '茶';
comment on column TB_ECC_AGR_UNITCONVER.beans
  is '豆类';
comment on column TB_ECC_AGR_UNITCONVER.nuts
  is '坚果';
comment on column TB_ECC_AGR_UNITCONVER.coffee
  is '咖啡';
comment on column TB_ECC_AGR_UNITCONVER.cocoa
  is '可可';
comment on column TB_ECC_AGR_UNITCONVER.hemp
  is '麻类';
comment on column TB_ECC_AGR_UNITCONVER.cotton
  is '棉花';
comment on column TB_ECC_AGR_UNITCONVER.othergrains
  is '其它谷物';
comment on column TB_ECC_AGR_UNITCONVER.vegetables
  is '蔬果';
comment on column TB_ECC_AGR_UNITCONVER.potato
  is '薯类';
comment on column TB_ECC_AGR_UNITCONVER.rice
  is '水稻';
comment on column TB_ECC_AGR_UNITCONVER.sugar
  is '糖料';
comment on column TB_ECC_AGR_UNITCONVER.wheat
  is '小麦';
comment on column TB_ECC_AGR_UNITCONVER.tobacco
  is '烟草';
comment on column TB_ECC_AGR_UNITCONVER.corn
  is '玉米';
comment on column TB_ECC_AGR_UNITCONVER.oil
  is '油料';
comment on column TB_ECC_AGR_UNITCONVER.palm
  is '棕榈';

prompt
prompt Creating table TB_ECC_AGR_WASTERATE
prompt ===================================
prompt
create table TB_ECC_AGR_WASTERATE
(
  countrycode VARCHAR2(50),
  countryname VARCHAR2(50),
  tea         VARCHAR2(50),
  beans       VARCHAR2(50),
  nuts        VARCHAR2(50),
  coffee      VARCHAR2(50),
  cocoa       VARCHAR2(50),
  hemp        VARCHAR2(50),
  cotton      VARCHAR2(50),
  othergrains VARCHAR2(50),
  vegetables  VARCHAR2(50),
  potato      VARCHAR2(50),
  rice        VARCHAR2(50),
  sugar       VARCHAR2(50),
  wheat       VARCHAR2(50),
  tobacco     VARCHAR2(50),
  corn        VARCHAR2(50),
  oil         VARCHAR2(50),
  palm        VARCHAR2(50)
)
;
comment on table TB_ECC_AGR_WASTERATE
  is '农业生产浪费率表';
comment on column TB_ECC_AGR_WASTERATE.countrycode
  is '国家代码';
comment on column TB_ECC_AGR_WASTERATE.countryname
  is '国家名称';
comment on column TB_ECC_AGR_WASTERATE.tea
  is '茶';
comment on column TB_ECC_AGR_WASTERATE.beans
  is '豆类';
comment on column TB_ECC_AGR_WASTERATE.nuts
  is '坚果';
comment on column TB_ECC_AGR_WASTERATE.coffee
  is '咖啡';
comment on column TB_ECC_AGR_WASTERATE.cocoa
  is '可可';
comment on column TB_ECC_AGR_WASTERATE.hemp
  is '麻类';
comment on column TB_ECC_AGR_WASTERATE.cotton
  is '棉花';
comment on column TB_ECC_AGR_WASTERATE.othergrains
  is '其它谷物';
comment on column TB_ECC_AGR_WASTERATE.vegetables
  is '蔬果';
comment on column TB_ECC_AGR_WASTERATE.potato
  is '薯类';
comment on column TB_ECC_AGR_WASTERATE.rice
  is '水稻';
comment on column TB_ECC_AGR_WASTERATE.sugar
  is '糖料';
comment on column TB_ECC_AGR_WASTERATE.wheat
  is '小麦';
comment on column TB_ECC_AGR_WASTERATE.tobacco
  is '烟草';
comment on column TB_ECC_AGR_WASTERATE.corn
  is '玉米';
comment on column TB_ECC_AGR_WASTERATE.oil
  is '油料';
comment on column TB_ECC_AGR_WASTERATE.palm
  is '棕榈';

prompt
prompt Creating table TB_ECC_AGR_WATERCONTENT
prompt ======================================
prompt
create table TB_ECC_AGR_WATERCONTENT
(
  countrycode VARCHAR2(50),
  countryname VARCHAR2(50),
  tea         VARCHAR2(50),
  beans       VARCHAR2(50),
  nuts        VARCHAR2(50),
  coffee      VARCHAR2(50),
  cocoa       VARCHAR2(50),
  hemp        VARCHAR2(50),
  cotton      VARCHAR2(50),
  othergrains VARCHAR2(50),
  vegetables  VARCHAR2(50),
  potato      VARCHAR2(50),
  rice        VARCHAR2(50),
  sugar       VARCHAR2(50),
  wheat       VARCHAR2(50),
  tobacco     VARCHAR2(50),
  corn        VARCHAR2(50),
  oil         VARCHAR2(50),
  palm        VARCHAR2(50)
)
;
comment on table TB_ECC_AGR_WATERCONTENT
  is '农业生产含水量表';
comment on column TB_ECC_AGR_WATERCONTENT.countrycode
  is '国家代码';
comment on column TB_ECC_AGR_WATERCONTENT.countryname
  is '国家名称';
comment on column TB_ECC_AGR_WATERCONTENT.tea
  is '茶';
comment on column TB_ECC_AGR_WATERCONTENT.beans
  is '豆类';
comment on column TB_ECC_AGR_WATERCONTENT.nuts
  is '坚果';
comment on column TB_ECC_AGR_WATERCONTENT.coffee
  is '咖啡';
comment on column TB_ECC_AGR_WATERCONTENT.cocoa
  is '可可';
comment on column TB_ECC_AGR_WATERCONTENT.hemp
  is '麻类';
comment on column TB_ECC_AGR_WATERCONTENT.cotton
  is '棉花';
comment on column TB_ECC_AGR_WATERCONTENT.othergrains
  is '其它谷物';
comment on column TB_ECC_AGR_WATERCONTENT.vegetables
  is '蔬果';
comment on column TB_ECC_AGR_WATERCONTENT.potato
  is '薯类';
comment on column TB_ECC_AGR_WATERCONTENT.rice
  is '水稻';
comment on column TB_ECC_AGR_WATERCONTENT.sugar
  is '糖料';
comment on column TB_ECC_AGR_WATERCONTENT.wheat
  is '小麦';
comment on column TB_ECC_AGR_WATERCONTENT.tobacco
  is '烟草';
comment on column TB_ECC_AGR_WATERCONTENT.corn
  is '玉米';
comment on column TB_ECC_AGR_WATERCONTENT.oil
  is '油料';
comment on column TB_ECC_AGR_WATERCONTENT.palm
  is '棕榈';

prompt
prompt Creating table TB_ECC_ECOSUPPLY
prompt ===============================
prompt
create table TB_ECC_ECOSUPPLY
(
  countrycode     VARCHAR2(50),
  countryname     VARCHAR2(50),
  ecosupplynumber VARCHAR2(50),
  onlinenumber    VARCHAR2(50),
  suitablenumber  VARCHAR2(50),
  onlinepara      VARCHAR2(50),
  suitablepara    VARCHAR2(50)
)
;
comment on table TB_ECC_ECOSUPPLY
  is '生态供给表';
comment on column TB_ECC_ECOSUPPLY.countrycode
  is '国家代码';
comment on column TB_ECC_ECOSUPPLY.countryname
  is '国家名称';
comment on column TB_ECC_ECOSUPPLY.ecosupplynumber
  is '生态供给量';
comment on column TB_ECC_ECOSUPPLY.onlinenumber
  is '生态供给上限量';
comment on column TB_ECC_ECOSUPPLY.suitablenumber
  is '生态供给适宜量';
comment on column TB_ECC_ECOSUPPLY.onlinepara
  is '上限参数';
comment on column TB_ECC_ECOSUPPLY.suitablepara
  is '适宜参数';

prompt
prompt Creating sequence SEQ_COM_DICT
prompt ==============================
prompt
create sequence SEQ_COM_DICT
minvalue 1000000
maxvalue 9999999
start with 1000300
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_COM_MENU
prompt ==============================
prompt
create sequence SEQ_COM_MENU
minvalue 1000000
maxvalue 9999999
start with 1000280
increment by 1
cache 20;


spool off
